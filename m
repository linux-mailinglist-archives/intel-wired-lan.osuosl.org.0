Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 925D846D523
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 15:07:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C7D760A46;
	Wed,  8 Dec 2021 14:07:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id upYajjbHlzYy; Wed,  8 Dec 2021 14:07:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F34736070D;
	Wed,  8 Dec 2021 14:07:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 407FD1BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 14:07:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C79783E62
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 14:07:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uZ7kqVipaSIr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Dec 2021 14:07:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 47A9F83E57
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 14:07:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="301218227"
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="301218227"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 06:07:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="479908986"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga002.jf.intel.com with ESMTP; 08 Dec 2021 06:07:28 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1B8E7Quc009548; Wed, 8 Dec 2021 14:07:26 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Dec 2021 15:06:53 +0100
Message-Id: <20211208140702.642741-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4 net-next 0/9] net: intel:
 napi_alloc_skb() vs metadata
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
Cc: Song Liu <songliubraving@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, KP Singh <kpsingh@kernel.org>,
 bpf@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is an interpolation of [0] to other Intel Ethernet drivers
(and is (re)based on its code).
The main aim is to keep XDP metadata not only in case with
build_skb(), but also when we do napi_alloc_skb() + memcpy().

All Intel drivers suffers from the same here:
 - metadata gets lost on XDP_PASS in legacy-rx;
 - excessive headroom allocation on XSK Rx to skbs;
 - metadata gets lost on XSK Rx to skbs.

Those get especially actual in XDP Hints upcoming.
I couldn't have addressed the first one for all Intel drivers due to
that they don't reserve any headroom for now in legacy-rx mode even
with XDP enabled. This is hugely wrong, but requires quite a bunch
of work and a separate series. Luckily, ice doesn't suffer from
that.
igc has 1 and 3 already fixed in [0].

From v3 ([1]):
 - fix driver name and ixgbe_construct_skb() function name in the
   commit message of #9 (Jesper);
 - no functional changes.

From v2 (unreleased upstream):
 - tweaked 007 to pass bi->xdp directly and simplify code (Maciej);
 - picked Michal's Reviewed-by.

From v1 (unreleased upstream):
 - drop "fixes" of legacy-rx for i40e, igb and ixgbe since they have
   another flaw regarding headroom (see above);
 - drop igc cosmetic fixes since they landed upstream incorporated
   into Jesper's commits;
 - picked one Acked-by from Maciej.

[0] https://lore.kernel.org/netdev/163700856423.565980.10162564921347693758.stgit@firesoul
[1] https://lore.kernel.org/netdev/20211207205536.563550-1-alexandr.lobakin@intel.com

Alexander Lobakin (9):
  i40e: don't reserve excessive XDP_PACKET_HEADROOM on XSK Rx to skb
  i40e: respect metadata on XSK Rx to skb
  ice: respect metadata in legacy-rx/ice_construct_skb()
  ice: don't reserve excessive XDP_PACKET_HEADROOM on XSK Rx to skb
  ice: respect metadata on XSK Rx to skb
  igc: don't reserve excessive XDP_PACKET_HEADROOM on XSK Rx to skb
  ixgbe: pass bi->xdp to ixgbe_construct_skb_zc() directly
  ixgbe: don't reserve excessive XDP_PACKET_HEADROOM on XSK Rx to skb
  ixgbe: respect metadata on XSK Rx to skb

 drivers/net/ethernet/intel/i40e/i40e_xsk.c   | 16 +++++++-----
 drivers/net/ethernet/intel/ice/ice_txrx.c    | 15 ++++++++---
 drivers/net/ethernet/intel/ice/ice_xsk.c     | 16 +++++++-----
 drivers/net/ethernet/intel/igc/igc_main.c    | 13 +++++-----
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 27 ++++++++++++--------
 5 files changed, 54 insertions(+), 33 deletions(-)

-- 
Testing hints:

Setup an XDP and AF_XDP program which will prepend metadata at the
front of the frames and return XDP_PASS, then check that metadata
is present after frames reach kernel network stack.
--
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
