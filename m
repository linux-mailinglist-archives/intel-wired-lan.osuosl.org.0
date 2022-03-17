Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5934DCDBB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Mar 2022 19:37:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 950B3847DE;
	Thu, 17 Mar 2022 18:37:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bJq-NKJNbkfb; Thu, 17 Mar 2022 18:37:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC175847D5;
	Thu, 17 Mar 2022 18:37:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 781D91BF349
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 18:37:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 66DCC60AF2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 18:37:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sSA1-gLOIkDj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Mar 2022 18:37:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D28F860AEC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 18:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647542262; x=1679078262;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+aM5r8r1moVYf5XPT33TV5YGB8tm7BfoYyZ/LZfWi6A=;
 b=OyWI0hMFldKe8NQW+3w8u0dxlrhYbF/Y8xwmK+yBLjW1Wop9CkS0mbaY
 7wFFR7gPXQtPX+lfI0wLAHGXyS3RqL6b0IK+jdiIq4bFNAsasI04trvTH
 WY8/Fj6w+5TdGgVOjjd90klWlNnMZV98uGvUfvqvjz55kSgBS914x41TX
 xxmsLCy96pjJRhV5BzclSzm35RlZCpyqb6+p0YLn+ZA2Jcjklcr/y8eDv
 KyMgtlU8ZiTF+EKcdJFlL/FXFSroDPpwpDDONCmDRpjgULkJB8sVNO+D7
 n8BuIkxSweESKPvbwr3pFkxUOaMhBbHv1HwKGQ2AtHzJDB14HQcl/uJ8f Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="317669472"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="317669472"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:37:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="558057204"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga008.jf.intel.com with ESMTP; 17 Mar 2022 11:37:40 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Mar 2022 19:36:29 +0100
Message-Id: <20220317183629.340350-4-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220317183629.340350-1-maciej.fijalkowski@intel.com>
References: <20220317183629.340350-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 3/3] ice: clear
 cmd_type_offset_bsz for TX rings
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently when XDP rings are created, each descriptor gets its DD bit
set, which turns out to be the wrong approach as it can lead to a
situation where more descriptors get cleaned than it was supposed to,
e.g. when AF_XDP busy poll is run with a large batch size. In this
situation, the driver would request for more buffers than it is able to
handle.

Fix this by not setting the DD bits in ice_xdp_alloc_setup_rings(). They
should be initialized to zero instead.

Fixes: 9610bd988df9 ("ice: optimize XDP_TX workloads")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c3c73a61bfd0..5332bb24001a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2533,7 +2533,7 @@ static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
 		spin_lock_init(&xdp_ring->tx_lock);
 		for (j = 0; j < xdp_ring->count; j++) {
 			tx_desc = ICE_TX_DESC(xdp_ring, j);
-			tx_desc->cmd_type_offset_bsz = cpu_to_le64(ICE_TX_DESC_DTYPE_DESC_DONE);
+			tx_desc->cmd_type_offset_bsz = 0;
 		}
 	}
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
