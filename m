Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DBFDA22A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2019 01:32:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ADEFD8853B;
	Wed, 16 Oct 2019 23:32:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dR1yWobnADSr; Wed, 16 Oct 2019 23:32:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D1FB88525;
	Wed, 16 Oct 2019 23:32:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D08961BF5A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2019 23:32:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B93138786C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2019 23:32:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZHDRcqV5hTmK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2019 23:32:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A592B88525
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2019 23:32:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 16:32:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,305,1566889200"; d="scan'208";a="186310801"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga007.jf.intel.com with ESMTP; 16 Oct 2019 16:32:07 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 16 Oct 2019 08:02:01 -0700
Message-Id: <20191016150201.41597-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016150201.41597-1-anthony.l.nguyen@intel.com>
References: <20191016150201.41597-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S30 v2 9/9] ice: allow 3k MTU for XDP
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

At this point ice driver is able to work on order 1 pages that are split
onto two 3k buffers. Let's reflect that when user is setting new mtu
size and XDP is present on interface.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 66e3b983d94a..88b5941ecf5c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4765,6 +4765,18 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	dev_err(dev, "Rebuild failed, unload and reload driver\n");
 }
 
+/**
+ * ice_max_xdp_frame_size - returns the maximum allowed frame size for XDP
+ * @vsi: Pointer to VSI structure
+ */
+static int ice_max_xdp_frame_size(struct ice_vsi *vsi)
+{
+	if (PAGE_SIZE >= 8192 || test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags))
+		return ICE_RXBUF_2048 - XDP_PACKET_HEADROOM;
+	else
+		return ICE_RXBUF_3072;
+}
+
 /**
  * ice_change_mtu - NDO callback to change the MTU
  * @netdev: network interface device structure
@@ -4786,11 +4798,11 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
 	}
 
 	if (ice_is_xdp_ena_vsi(vsi)) {
-		int frame_size = ICE_RXBUF_2048 - XDP_PACKET_HEADROOM;
+		int frame_size = ice_max_xdp_frame_size(vsi);
 
 		if (new_mtu + ICE_ETH_PKT_HDR_PAD > frame_size) {
 			netdev_err(netdev, "max MTU for XDP usage is %d\n",
-				   frame_size);
+				   frame_size - ICE_ETH_PKT_HDR_PAD);
 			return -EINVAL;
 		}
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
