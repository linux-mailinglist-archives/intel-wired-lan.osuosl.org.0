Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD0345A9F4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Nov 2021 18:24:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 796C680D61;
	Tue, 23 Nov 2021 17:24:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gDrjVS_XtayB; Tue, 23 Nov 2021 17:24:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61ACB80D43;
	Tue, 23 Nov 2021 17:24:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC7691BF29F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 17:24:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E92E44017A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 17:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o6Hl9EjUfBSh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Nov 2021 17:24:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 14D6840027
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 17:24:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="234892526"
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="234892526"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 09:20:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="606890295"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga004.jf.intel.com with ESMTP; 23 Nov 2021 09:20:11 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1ANHK9Qe024401; Tue, 23 Nov 2021 17:20:09 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Nov 2021 18:18:31 +0100
Message-Id: <20211123171840.157471-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 0/9] intel: switch to
 napi_build_skb()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

napi_build_skb() I introduced earlier this year ([0]) aims
to decrease MM pressure and the overhead from in-place
kmem_cache_alloc() on each Rx entry processing by decaching
skbuff_heads from NAPI per-cpu cache filled prior to that by
napi_consume_skb() (so it is sort of a direct shortcut for
free -> mm -> alloc cycle).
Currently, no in-tree drivers use it. Switch all Intel Ethernet
drivers to it to get slight-to-medium perf boosts depending on
the frame size.

ice driver, 50 Gbps link, pktgen + XDP_PASS (local in) sample:

frame_size/nthreads  64/42  128/20  256/8  512/4  1024/2  1532/1

net-next (Kpps)      46062  34654   18248  9830   5343    2714
series               47438  34708   18330  9875   5435    2777
increase             2.9%   0.15%   0.45%  0.46%  1.72%   2.32%

Additionally, e1000's been switched to napi_consume_skb() as it's
safe and works fine there, and there's no point in napi_build_skb()
without paired NAPI cache feeding point.

[0] https://lore.kernel.org/all/20210213141021.87840-1-alobakin@pm.me

Alexander Lobakin (9):
  e1000: switch to napi_consume_skb()
  e1000: switch to napi_build_skb()
  i40e: switch to napi_build_skb()
  iavf: switch to napi_build_skb()
  ice: switch to napi_build_skb()
  igb: switch to napi_build_skb()
  igc: switch to napi_build_skb()
  ixgbe: switch to napi_build_skb()
  ixgbevf: switch to napi_build_skb()

 drivers/net/ethernet/intel/e1000/e1000_main.c     | 14 ++++++++------
 drivers/net/ethernet/intel/i40e/i40e_txrx.c       |  2 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c       |  2 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c         |  2 +-
 drivers/net/ethernet/intel/igb/igb_main.c         |  2 +-
 drivers/net/ethernet/intel/igc/igc_main.c         |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     |  2 +-
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c |  2 +-
 8 files changed, 15 insertions(+), 13 deletions(-)

--
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
