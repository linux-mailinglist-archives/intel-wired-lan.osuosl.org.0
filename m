Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 093F146C509
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Dec 2021 21:56:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E0A8140943;
	Tue,  7 Dec 2021 20:56:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4bIOzd7nEIk2; Tue,  7 Dec 2021 20:56:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A835A4094C;
	Tue,  7 Dec 2021 20:56:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A5F651BF290
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 20:56:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 93FEF60ECE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 20:56:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RE7wJqASlcY5 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Dec 2021 20:56:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4BDA260EB7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Dec 2021 20:56:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="323941019"
X-IronPort-AV: E=Sophos;i="5.87,295,1631602800"; d="scan'208";a="323941019"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 12:56:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,295,1631602800"; d="scan'208";a="563798551"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 07 Dec 2021 12:56:11 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1B7Ku9kd018910; Tue, 7 Dec 2021 20:56:09 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Dec 2021 21:55:27 +0100
Message-Id: <20211207205536.563550-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 net-next 0/9] net: intel:
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
Cc: Andre Guedes <andre.guedes@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>, bpf@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Vedang Patel <vedang.patel@intel.com>
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

Alexander Lobakin (9):
  i40e: don't reserve excessive XDP_PACKET_HEADROOM on XSK Rx to skb
  i40e: respect metadata on XSK Rx to skb
  ice: respect metadata in legacy-rx/ice_construct_skb()
  ice: don't reserve excessive XDP_PACKET_HEADROOM on XSK Rx to skb
  ice: respect metadata on XSK Rx to skb
  igc: don't reserve excessive XDP_PACKET_HEADROOM on XSK Rx to skb
  ixgbe: pass bi->xdp to ixgbe_construct_skb_zc() directly
  ixgbe: don't reserve excessive XDP_PACKET_HEADROOM on XSK Rx to skb
  i40e: respect metadata on XSK Rx to skb

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
