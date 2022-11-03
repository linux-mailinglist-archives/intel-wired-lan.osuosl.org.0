Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B35618B12
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 23:02:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A433A41885;
	Thu,  3 Nov 2022 22:02:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A433A41885
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667512976;
	bh=M2LYl1yZKXaoHSQTsHHy9OFBKEi7+G5NNWyegAYAXoc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CzxcbY7SXDWyuNXk5xjQN1y8TjFk40S6rI7uAj6Zaz5mFN5eq7zS3tXzPSgiwdz/G
	 Q+QrqxXuTt4IWmeMIs013U5L75rZK9HuXrULRUdY8QrxCN5UnfAuu5uGtOpkqfFtry
	 y2O73+9Gbu6RMNLt0im1ZSQPJ0pfiQt9BRHsm40goY6e7d/6BKhoaGUwacL70loXbe
	 0RQ/0trkkFsk3NBVpJcPBMiWXsChPEPLkUXaPXWSF06vk1AT/lHHuKrOkqNro8C9lx
	 z5D1JEAGoc2t3aGD/FfQEND7zohl9e1bC9yTokj5H0EVSAZjAJy58oGdVofhOetu9C
	 PKOEdwE4+ba2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gcQHT6elhI8k; Thu,  3 Nov 2022 22:02:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 240D341857;
	Thu,  3 Nov 2022 22:02:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 240D341857
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 166E51BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F11AC81EEA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F11AC81EEA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QilNiLyoMDFw for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 22:02:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D707081F61
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D707081F61
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:01:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="297278198"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="297278198"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:01:58 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="777480258"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="777480258"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:01:58 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu,  3 Nov 2022 15:01:35 -0700
Message-Id: <20221103220145.1851114-6-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221103220145.1851114-1-jacob.e.keller@intel.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667512919; x=1699048919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vwk8GOY0g7jByAKQrO1ByoncJ8Evd5I2WMZ8yvbexj0=;
 b=WiZmLiz6AMlQjTDl0QvOCXa23Er8rBM3WAWfDhdQkiTfx2lXvVRe8ELA
 JPNc+Sb7kqiZDoHcHS5zsdnF7fx9w/uQFvnhMUo5f9sjMcnzckarP9yOV
 UDSFkr94nwMVGwUhj/Uiw12AxawIvvPN+7PTsI5Y3gKhfx3qdOg4ggjg7
 9p5z5wfWc1p0YK7n6e/j0R5TLbGbZ5oV1oiwi5maMPP5d6RnawJ7qkbUV
 0I4o7BBH064ynV7qX4tKlzbyKiJF4V18vT6f5EAhaAYD4OnUviJFP83iI
 wUZHl7GCtuxfjo/u6cq+D6ljI/ohd8MSor9p97rucEOBHX776750AbxdL
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WiZmLiz6
Subject: [Intel-wired-lan] [PATCH net-next v2 05/15] ice: always call
 ice_ptp_link_change and make it void
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

The ice_ptp_link_change function is currently only called for E822 based
hardware. Future changes are going to extend this function to perform
additional tasks on link change.

Always call this function, moving the E810 check from the callers down to
just before we call the E822-specific function required to restart the PHY.

This function also returns an error value, but none of the callers actually
check it. In general, the errors it produces are more likely systemic
problems such as invalid or corrupt port numbers. No caller checks these,
and so no warning is logged.

Re-order the flag checks so that ICE_FLAG_PTP is checked first. Drop the
unnecessary check for ICE_FLAG_PTP_SUPPORTED, as ICE_FLAG_PTP will not be
set except when ICE_FLAG_PTP_SUPPORTED is set.

Convert the port checks to WARN_ON_ONCE, in order to generate a kernel
stack trace when they are hit.

Convert the function to void since no caller actually checks these return
values.

Co-developed-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes since v1
* Fixed the commit message to use E810 instead of e810
* Fixed the tags to use Co-developed-by and add Dave's Signed-off-by

 drivers/net/ethernet/intel/ice/ice_main.c |  9 +++------
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 24 +++++++++++------------
 drivers/net/ethernet/intel/ice/ice_ptp.h  |  7 ++++---
 3 files changed, 19 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 84fe01fbd83b..881dc9c29d63 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1125,8 +1125,7 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 	if (link_up == old_link && link_speed == old_link_speed)
 		return 0;
 
-	if (!ice_is_e810(&pf->hw))
-		ice_ptp_link_change(pf, pf->hw.pf_id, link_up);
+	ice_ptp_link_change(pf, pf->hw.pf_id, link_up);
 
 	if (ice_is_dcb_active(pf)) {
 		if (test_bit(ICE_FLAG_DCB_ENA, pf->flags))
@@ -6434,8 +6433,7 @@ static int ice_up_complete(struct ice_vsi *vsi)
 		ice_print_link_msg(vsi, true);
 		netif_tx_start_all_queues(vsi->netdev);
 		netif_carrier_on(vsi->netdev);
-		if (!ice_is_e810(&pf->hw))
-			ice_ptp_link_change(pf, pf->hw.pf_id, true);
+		ice_ptp_link_change(pf, pf->hw.pf_id, true);
 	}
 
 	/* Perform an initial read of the statistics registers now to
@@ -6867,8 +6865,7 @@ int ice_down(struct ice_vsi *vsi)
 
 	if (vsi->netdev && vsi->type == ICE_VSI_PF) {
 		vlan_err = ice_vsi_del_vlan_zero(vsi);
-		if (!ice_is_e810(&vsi->back->hw))
-			ice_ptp_link_change(vsi->back, vsi->back->hw.pf_id, false);
+		ice_ptp_link_change(vsi->back, vsi->back->hw.pf_id, false);
 		netif_carrier_off(vsi->netdev);
 		netif_tx_disable(vsi->netdev);
 	} else if (vsi->type == ICE_VSI_SWITCHDEV_CTRL) {
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 6a36256748fe..3b154cdb2a32 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1305,33 +1305,33 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 }
 
 /**
- * ice_ptp_link_change - Set or clear port registers for timestamping
+ * ice_ptp_link_change - Reconfigure PTP after link status change
  * @pf: Board private structure
  * @port: Port for which the PHY start is set
  * @linkup: Link is up or down
  */
-int ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
+void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 {
 	struct ice_ptp_port *ptp_port;
 
-	if (!test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
-		return 0;
+	if (!test_bit(ICE_FLAG_PTP, pf->flags))
+		return;
 
-	if (port >= ICE_NUM_EXTERNAL_PORTS)
-		return -EINVAL;
+	if (WARN_ON_ONCE(port >= ICE_NUM_EXTERNAL_PORTS))
+		return;
 
 	ptp_port = &pf->ptp.port;
-	if (ptp_port->port_num != port)
-		return -EINVAL;
+	if (WARN_ON_ONCE(ptp_port->port_num != port))
+		return;
 
 	/* Update cached link status for this port immediately */
 	ptp_port->link_up = linkup;
 
-	if (!test_bit(ICE_FLAG_PTP, pf->flags))
-		/* PTP is not setup */
-		return -EAGAIN;
+	/* E810 devices do not need to reconfigure the PHY */
+	if (ice_is_e810(&pf->hw))
+		return;
 
-	return ice_ptp_port_phy_restart(ptp_port);
+	ice_ptp_port_phy_restart(ptp_port);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index ca0fbfd71ed2..39cab020f1af 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -257,7 +257,7 @@ void ice_ptp_reset(struct ice_pf *pf);
 void ice_ptp_prepare_for_reset(struct ice_pf *pf);
 void ice_ptp_init(struct ice_pf *pf);
 void ice_ptp_release(struct ice_pf *pf);
-int ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup);
+void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup);
 #else /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
 static inline int ice_ptp_set_ts_config(struct ice_pf *pf, struct ifreq *ifr)
 {
@@ -292,7 +292,8 @@ static inline void ice_ptp_reset(struct ice_pf *pf) { }
 static inline void ice_ptp_prepare_for_reset(struct ice_pf *pf) { }
 static inline void ice_ptp_init(struct ice_pf *pf) { }
 static inline void ice_ptp_release(struct ice_pf *pf) { }
-static inline int ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
-{ return 0; }
+static inline void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
+{
+}
 #endif /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
 #endif /* _ICE_PTP_H_ */
-- 
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
