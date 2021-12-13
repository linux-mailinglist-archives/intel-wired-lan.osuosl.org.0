Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E0947307B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 16:31:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B3BC40386;
	Mon, 13 Dec 2021 15:31:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FlVmP3u0rt-D; Mon, 13 Dec 2021 15:31:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C021640239;
	Mon, 13 Dec 2021 15:31:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 87C691BF371
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 15:31:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 74A6F6F482
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 15:31:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B8f46XNmFb8H for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Dec 2021 15:31:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 94B926F47C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 15:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639409483; x=1670945483;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H7g9iSSe4v6lpuPhngwIAXIU8l1m2PxzKJzB5Ufiyh8=;
 b=FnpqoXdMslFBbHykZTRsmnmS0tnN4KeiIdQ53OjZK6AOzWG56NHo2Bvm
 +zyFimqLecFGjyR7MMsgCdG4CEHipAB+yq1RhKv2NOfzHMSgDaKMosYw7
 Xsh6fjfBd3jOe2PpsWIgDcD1ysHrkbYfYp/vPKwprGBsKUFpH6HHvHshk
 yTwfZhgmUFQ7soUurb1XwZvZU1SpwejLh35VYtpsXLf1t3bVQ1sTk56G+
 LXrLvIW66VeQzFabkvpZ5X5t9JTZmn/NEBjZ4kHEI+kQFXkZPtKhds8k3
 7y6OrU2woXhndtPh43EQ/fjKfOqiNFqh/8735CXfWhF3eZJobvYC+BTIc A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="236286804"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="236286804"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 07:31:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="613864707"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga004.jf.intel.com with ESMTP; 13 Dec 2021 07:31:19 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Dec 2021 16:31:05 +0100
Message-Id: <20211213153111.110877-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 intel-net 0/6] ice: xsk: Rx processing
 fixes
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
Cc: elza.mathew@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 bpf@vger.kernel.org, davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi there,
it seems that previous [0] Rx fix was not enough and there are still
issues with AF_XDP Rx ZC support in ice driver. Elza reported that for
multiple XSK sockets configured on a single netdev, some of them were
becoming dead after a while. We have spotted more things that needed to
be addressed this time. More of information can be found in particular
commit messages.

v2 has a diff around only patch 2:
- use array_size() in memsets (Alexandr)
- remove unnecessary ternary operator from ice_alloc_rx_buf{, _zc}()
  (Alexandr)
- respect RCT in ice_construct_skb_zc() (Alexandr)
- fix kdoc issue (Anthony)

It also carries Alexandr's patch that was sent previously which was
overlapping with this set.

Thanks,
Maciej

[0]: https://lore.kernel.org/bpf/20211129231746.2767739-1-anthony.l.nguyen@intel.com/

Alexander Lobakin (1):
  ice: remove dead store on XSK hotpath

Maciej Fijalkowski (5):
  ice: xsk: return xsk buffers back to pool when cleaning the ring
  ice: xsk: allocate separate memory for XDP SW ring
  ice: xsk: do not clear status_error0 for ntu + nb_buffs descriptor
  ice: xsk: allow empty Rx descriptors on XSK ZC data path
  ice: xsk: fix cleaned_count setting

 drivers/net/ethernet/intel/ice/ice_base.c | 17 ++++++
 drivers/net/ethernet/intel/ice/ice_txrx.c | 19 ++++---
 drivers/net/ethernet/intel/ice/ice_txrx.h |  1 -
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 66 +++++++++++------------
 4 files changed, 62 insertions(+), 41 deletions(-)

-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
