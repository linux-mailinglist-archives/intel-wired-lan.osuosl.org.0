Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E51932B907
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Mar 2021 16:49:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B6908356C;
	Wed,  3 Mar 2021 15:49:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ClT9L7BThMoV; Wed,  3 Mar 2021 15:49:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9760A835DF;
	Wed,  3 Mar 2021 15:49:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F7D41BF868
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 15:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 86DF947488
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 15:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e2D7IQEOnyzq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Mar 2021 15:49:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A2EA4998D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 15:49:37 +0000 (UTC)
IronPort-SDR: ZcwoMHGqRAoxIu9j1280TMDho4rlPd0xxF8e6LKZlp7T+wQis6v5Grm6tnuTOFvhLuyh3dAfnC
 F8p/cRHXejxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="248622868"
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="248622868"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 07:49:34 -0800
IronPort-SDR: in3nRTn2+YeQaNshj2mAZcI8R7ZDaCgUCQvsV2v80B1t1MbHPzMGEbAh7syHPJYBUg71osMi9h
 VIRm4ehQTbww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="518322004"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga004.jf.intel.com with ESMTP; 03 Mar 2021 07:49:31 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Mar 2021 16:39:25 +0100
Message-Id: <20210303153928.11764-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 0/3] intel: Rx headroom fixes
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
Cc: netdev@vger.kernel.org, brouer@redhat.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix Rx headroom by calling *_rx_offset() after the build_skb Rx ring
flag is set.

It was reported by Jesper in [0] that XDP_REDIRECT stopped working after
[1] patch in i40e.

Thanks and sorry!
Maciej

[0]: https://lore.kernel.org/netdev/20210301131832.0d765179@carbon/
[1]: https://lore.kernel.org/bpf/20210118151318.12324-10-maciej.fijalkowski@intel.com/

Maciej Fijalkowski (3):
  i40e: move headroom initialization to i40e_configure_rx_ring
  ice: move headroom initialization to ice_setup_rx_ctx
  ixgbe: move headroom initialization to ixgbe_configure_rx_ring

 drivers/net/ethernet/intel/i40e/i40e_main.c   | 13 +++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 12 ------------
 drivers/net/ethernet/intel/ice/ice_base.c     | 18 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 17 -----------------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  3 ++-
 5 files changed, 33 insertions(+), 30 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
