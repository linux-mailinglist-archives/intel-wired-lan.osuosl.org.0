Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3024B6434E4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Dec 2022 20:53:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE5954162D;
	Mon,  5 Dec 2022 19:53:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE5954162D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670270022;
	bh=3r2S+6ePthtK1pCnxUN/iv9X3xb77y187a6/E2n0Of0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xB31Qy+/7/Q58VWC5nDwGktX0C1eOeXV1+GuZ3ujoa7HJz2rqyjWAP9gDPt4wu/YL
	 lE1OBNHuqmtlp/1BOBiywD28aF11icS+/EgAK8srl+74NCWm3zjNeXTEg5HWBiX/O2
	 hZtk5tCGqPwAJIp82t/CoOi8qNLOMdzKeC6PQOz0LBFm90yMs0z2u/joIDr987G3hE
	 ovKYo0ELJ+7b8owIETnzCXxaJj/VCbiEOUbAthWBcnmhndVcjGZdNGYWfuJRHEd+Hh
	 MK8QTSeDA3gwXW/7PcNpatgTW4rH5osH3rUStL50NplQp5io3/g6SGP+9xpJRDTXns
	 K9oPNZeBsg0jw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5hpRnwB2Km1e; Mon,  5 Dec 2022 19:53:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3818841673;
	Mon,  5 Dec 2022 19:53:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3818841673
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 590061BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 538AC60E06
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 538AC60E06
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id STFLhcFvEFLf for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Dec 2022 19:53:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7908960E85
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7908960E85
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317592373"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="317592373"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:53:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="709379295"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="709379295"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:53:01 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon,  5 Dec 2022 11:52:43 -0800
Message-Id: <20221205195253.2475492-6-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20221205195253.2475492-1-jacob.e.keller@intel.com>
References: <20221205195253.2475492-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670269983; x=1701805983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cdK+xP4zlnpPnW+2OKOPFEnGhgOCG+I0aoSGqdp29nY=;
 b=MtQ5PokNVPYo60XfwP4HL2drtVMZ9WxiYZ8R99bWf/1CoMDxVQeFYgAB
 qc2CB2WzZXHnDavPJbW16U90JJOiFdTkH+zAfteDmB6LRQS89VK43+8wA
 9ZyuuC0zrp5cxa4w/JU9sPGG8LwELYXHpYBeWNVuDaniXMykOtVmJYgCq
 JzefvqeIEQce+RbcNZCDxYVEbkt1AUc1DMywopAM3vNLEaLPvBh+0sfat
 7kZWPFp8yAyFXJTQNLtFD4YyzjoItrlnmjFZ29HPBCUX0MQjc+PZryC/r
 DN3H7VCEWGleme2RT0gatfkT+/abyWrk4teqeql/SU94PBWp0QIHO4O5Z
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MtQ5PokN
Subject: [Intel-wired-lan] [PATCH net-next v3 05/15] ice: always call
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
Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
No changes since v2.

 drivers/net/ethernet/intel/ice/ice_main.c |  9 +++------
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 24 +++++++++++------------
 drivers/net/ethernet/intel/ice/ice_ptp.h  |  7 ++++---
 3 files changed, 19 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2b23b4714a26..a9a7f8b52140 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1111,8 +1111,7 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 	if (link_up == old_link && link_speed == old_link_speed)
 		return 0;
 
-	if (!ice_is_e810(&pf->hw))
-		ice_ptp_link_change(pf, pf->hw.pf_id, link_up);
+	ice_ptp_link_change(pf, pf->hw.pf_id, link_up);
 
 	if (ice_is_dcb_active(pf)) {
 		if (test_bit(ICE_FLAG_DCB_ENA, pf->flags))
@@ -6340,8 +6339,7 @@ static int ice_up_complete(struct ice_vsi *vsi)
 		ice_print_link_msg(vsi, true);
 		netif_tx_start_all_queues(vsi->netdev);
 		netif_carrier_on(vsi->netdev);
-		if (!ice_is_e810(&pf->hw))
-			ice_ptp_link_change(pf, pf->hw.pf_id, true);
+		ice_ptp_link_change(pf, pf->hw.pf_id, true);
 	}
 
 	/* Perform an initial read of the statistics registers now to
@@ -6773,8 +6771,7 @@ int ice_down(struct ice_vsi *vsi)
 
 	if (vsi->netdev && vsi->type == ICE_VSI_PF) {
 		vlan_err = ice_vsi_del_vlan_zero(vsi);
-		if (!ice_is_e810(&vsi->back->hw))
-			ice_ptp_link_change(vsi->back, vsi->back->hw.pf_id, false);
+		ice_ptp_link_change(vsi->back, vsi->back->hw.pf_id, false);
 		netif_carrier_off(vsi->netdev);
 		netif_tx_disable(vsi->netdev);
 	} else if (vsi->type == ICE_VSI_SWITCHDEV_CTRL) {
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 5607ec578499..1564c72189bf 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1328,33 +1328,33 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
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
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
