Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD8A615552
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Nov 2022 23:53:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 801E94067B;
	Tue,  1 Nov 2022 22:53:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 801E94067B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667343227;
	bh=TXkJIkqT2llUVPWvSZox9I0Og5ofw8sxXw7XvA+yCaI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=spBNWFkyEeOUpzMkTZ4XKJAAmJObZBrx5kYLD1dI2aNYOl0OJ2Ki1bqD3XDHVITa0
	 tUefxa/KSOGKlCbm+09BtCN5fYHUa8JySZi4F4PPiTwaTHKfMiIF3OptL715h4/J8P
	 LVyIaTK9t1D1ASlZF4JcAJ6Lq8Vl5cGl+G5yDxmnMAZSInY2dDAxD1kd/yTjUlixfK
	 1WG67d22M1MI4Tfl+BENEdnV5PCZ0Fa8S6w4Gn2OrOo/QKmjedIazdELs4XMEqpQzd
	 bHUcmWYaq2ljcm3QyvnoX2G1Kx72Ck5bhB1B6uwtV4g4U/cOan8+XG/Rpsf0s5+Y/6
	 20gjskiX87Nxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 70gG7J1WqY4S; Tue,  1 Nov 2022 22:53:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 86FC540383;
	Tue,  1 Nov 2022 22:53:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86FC540383
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 341EE1BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EED154098D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EED154098D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F6Al3A74umnr for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Nov 2022 22:53:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CB34410AB
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9CB34410AB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="310362298"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="310362298"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="723324048"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="723324048"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:10 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue,  1 Nov 2022 15:52:35 -0700
Message-Id: <20221101225240.421525-11-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221101225240.421525-1-jacob.e.keller@intel.com>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667343191; x=1698879191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QHBzXyiDRRS+zKjVIs9cXBszhAZxlx1fJHe5r36sVUg=;
 b=bzAq4RtNrybTSX9OyhhroQW2Xi1fwWqppriAUbmGgSneIa7zKXtUUwUy
 VtrG1rdCodJy9tuNFHCWnMCzbZw3ZsewbbEsbtgramsfz3NQ5zOpNP3RT
 mHYBZuXwt7SfzXy5X7VIRXPfL5EyVmfP+fCHjG9jYJ6i80XkQFSmKqoso
 A8h+HK+zo76h/XsfX8RlmxrheX2Qj85PtNwB+t7t2e0kaL7Uo4QY+kETz
 RP4CFyBpfra93wKALpxjg40m+j/Nmg7dMEeuO4qL7Xw5Gjx/M1N3es+lS
 gFrk9a8uWfIVC0ive/VRUKzqYZAVXfEFP7OdKNzdc8S5e6hxTCq5yD5dZ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bzAq4RtN
Subject: [Intel-wired-lan] [PATCH net-next 10/15] ice: disable Tx timestamps
 while link is down
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

Introduce a new link_down field for the Tx tracker which indicates whether
the link is down for a given port.

Use this bit to prevent any Tx timestamp requests from starting while link
is down. This ensures that we do not try to start new timestamp requests
until after link has been restored.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 11 ++++++++++-
 drivers/net/ethernet/intel/ice/ice_ptp.h |  6 ++++--
 2 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 91ee36d3d21f..cfc20e430ff5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -632,7 +632,7 @@ ice_ptp_is_tx_tracker_up(struct ice_ptp_tx *tx)
 {
 	lockdep_assert_held(&tx->lock);
 
-	return tx->init && !tx->calibrating;
+	return tx->init && !tx->calibrating && !tx->link_down;
 }
 
 /**
@@ -829,6 +829,8 @@ ice_ptp_alloc_tx_tracker(struct ice_ptp_tx *tx)
 
 	spin_lock(&tx->lock);
 	tx->init = 1;
+	tx->link_down = 0;
+	tx->calibrating = 0;
 	spin_unlock(&tx->lock);
 
 	return 0;
@@ -1389,6 +1391,13 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 	/* Update cached link status for this port immediately */
 	ptp_port->link_up = linkup;
 
+	/* Set the link status of the Tx tracker. While link is down, all Tx
+	 * timestamp requests will be ignored.
+	 */
+	spin_lock(&ptp_port->tx.lock);
+	ptp_port->tx.link_down = !linkup;
+	spin_unlock(&ptp_port->tx.lock);
+
 	/* E810 devices do not need to reconfigure the PHY */
 	if (ice_is_e810(&pf->hw))
 		return;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 5c7442aa6d88..0fe9826a9a1c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -114,6 +114,7 @@ struct ice_tx_tstamp {
  * @init: if true, the tracker is initialized;
  * @calibrating: if true, the PHY is calibrating the Tx offset. During this
  *               window, timestamps are temporarily disabled.
+ * @link_down: if true, the link is down and timestamp requests are disabled
  */
 struct ice_ptp_tx {
 	spinlock_t lock; /* lock protecting in_use bitmap */
@@ -122,8 +123,9 @@ struct ice_ptp_tx {
 	u8 block;
 	u8 offset;
 	u8 len;
-	u8 init;
-	u8 calibrating;
+	u8 init : 1;
+	u8 calibrating : 1;
+	u8 link_down : 1;
 };
 
 /* Quad and port information for initializing timestamp blocks */
-- 
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
