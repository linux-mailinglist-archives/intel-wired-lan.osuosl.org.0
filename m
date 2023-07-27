Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49985765556
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jul 2023 15:51:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E080841D67;
	Thu, 27 Jul 2023 13:51:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E080841D67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690465892;
	bh=KnDMQKAjQQ5gYqHpKLbO6xmafc/fNoDq11wqmKO+vsc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BJovbBjBmFIMHCthQRCEONzJ66O2L25JIkLL5BSe5r4MCPXGRtNJWTSwYOV8Qo6MG
	 ZwJxxLBLjJ+IuIXvaqHBzwkgjrzzxIL2RbCYvOr6uie0Fa58QcCcksRxbtslus1EpN
	 LaHcH1w9e+FQgCQb7+ap28/8NYgiFPKBxx/V5sYfbLwSBZz3QvDKwK1PkSh0uEoK/L
	 Pzv2WGdaSK2eonARBpbtoL323N5T9NqU9aqjZT5Wpkb/k8SnoA0JM3iV2enYsu81N5
	 ur1wgzpGBWcxmP4mHokJvYBrgkjrvHnTpt8y19B3reNnTJoG5Haiyd8QJFS/1+Z1p0
	 NTgKsx02/MpXQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AXwdVEozYvIp; Thu, 27 Jul 2023 13:51:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6FDA41D62;
	Thu, 27 Jul 2023 13:51:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6FDA41D62
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4F6541BF429
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:51:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 28CF540217
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:51:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28CF540217
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wa7V9dsr6_nc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jul 2023 13:51:20 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 942A0400D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 13:51:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 942A0400D0
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="399249089"
X-IronPort-AV: E=Sophos;i="6.01,235,1684825200"; d="scan'208";a="399249089"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 06:51:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="730271414"
X-IronPort-AV: E=Sophos;i="6.01,235,1684825200"; d="scan'208";a="730271414"
Received: from mmichali-devpc.igk.intel.com ([10.211.235.239])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jul 2023 06:51:18 -0700
From: Michal Michalik <michal.michalik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jul 2023 15:50:34 +0200
Message-Id: <20230727135037.28472-2-michal.michalik@intel.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20230727135037.28472-1-michal.michalik@intel.com>
References: <20230727135037.28472-1-michal.michalik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690465880; x=1722001880;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=TAniUhte5FYMqUQ6mhrR/17iRJubMpa3cOL+Vv4v59c=;
 b=nrhK4JuChdqkaGnQI1QYAC5WvAa0AjvuuHhNT3QNW+H+iF0DkJNx3xSb
 PgjE9pbQOTgA2O16SIaYTR+/KKhSaUDRxGZ6EWASs7vnRL6WcK9jkBvRY
 PZ2Jua4DDDVf2R4lOYvRJP9H3HDtNQOQkJq74i9r6oU9MUUMjVUGG83wk
 VUCJdKe+OB3gWP1t0XncV5UYLiD7KpNLo92EVLNg6Ikk1UgONlmWFNq1T
 GRZ7MHFcb0dwzwSDPxiivZt7wANAgsjIBAs3jMu/akmU84FRzw05/1uPO
 7pzCVIgJf1yQfXO4pRkegr31saZ5gm6NQDA+31bsGMjHmOemNWvl2AWX4
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nrhK4JuC
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/4] ice: Auxbus devices &
 driver for E822 TS
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
Cc: karol.kolacinski@intel.com, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There is a problem in HW in E822-based devices leading to race
condition.
It might happen that, in order:
- PF0 (which owns the PHC) requests few timestamps,
- PF1 requests a timestamp,
- interrupt is being triggered and both PF0 and PF1 threads are woken
up,
- PF0 got one timestamp, still waiting for others so not going to sleep,
- PF1 gets it's timestamp, process it and go to sleep,
- PF1 requests a timestamp again,
- just before PF0 goes to sleep timestamp of PF1 appear,
- PF0 finishes all it's timestamps and go to sleep (PF1 also sleeping).
That leaves PF1 timestamp memory not read, which lead to blocking the
next interrupt from arriving.

Fix it by adding auxiliary devices and only one driver to handle all the
timestamps for all PF's by PHC owner. In the past each PF requested it's
own timestamps and process it from the start till the end which causes
problem described above. Currently each PF requests the timestamps as
before, but the actual reading of the completed timestamps is being done
by the PTP auxiliary driver, which is registered by the PF which owns PHC.

Additionally, the newly introduced auxiliary driver/devices for PTP clock
owner will be used for other features in all products (including E810).

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
---
v2 -> v3:
* fix the spelling error in commit message ('auxilary' -> 'auxiliary')
* remove the unnecessary castings
* remove the wrong indentation
* use local dev instead of calculating it again

v1 -> v2:
* fixed duplicated docstring for 'ice_ptp_aux_dev_to_aux_pf'
* forwarded correct error in 'ice_ptp_create_auxbus_device' instead of -1
* simplified the 'ice_ptp_auxbus_probe', 'ice_ptp_auxbus_remove' and
  'ice_ptp_remove_auxbus_device' functions

 drivers/net/ethernet/intel/ice/ice.h            |  14 +
 drivers/net/ethernet/intel/ice/ice_hw_autogen.h |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c       |  11 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c        | 395 +++++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_ptp.h        |  30 ++
 5 files changed, 433 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 5ac0ad1..34be1cb 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -195,6 +195,8 @@
 
 #define ice_pf_to_dev(pf) (&((pf)->pdev->dev))
 
+#define ice_pf_src_tmr_owned(pf) ((pf)->hw.func_caps.ts_func_info.src_tmr_owned)
+
 enum ice_feature {
 	ICE_F_DSCP,
 	ICE_F_PTP_EXTTS,
@@ -668,6 +670,18 @@ static inline bool ice_vector_ch_enabled(struct ice_q_vector *qv)
 }
 
 /**
+ * ice_ptp_pf_handles_tx_interrupt - Check if PF handles Tx interrupt
+ * @pf: Board private structure
+ *
+ * Return true if this PF should respond to the Tx timestamp interrupt
+ * indication in the miscellaneous OICR interrupt handler.
+ */
+static inline bool ice_ptp_pf_handles_tx_interrupt(struct ice_pf *pf)
+{
+	return pf->ptp.tx_interrupt_mode != ICE_PTP_TX_INTERRUPT_NONE;
+}
+
+/**
  * ice_irq_dynamic_ena - Enable default interrupt generation settings
  * @hw: pointer to HW struct
  * @vsi: pointer to VSI struct, can be NULL
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 531cc21..6756f3d 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -231,6 +231,7 @@
 #define PFINT_SB_CTL				0x0016B600
 #define PFINT_SB_CTL_MSIX_INDX_M		ICE_M(0x7FF, 0)
 #define PFINT_SB_CTL_CAUSE_ENA_M		BIT(30)
+#define PFINT_TSYN_MSK				0x0016C980
 #define QINT_RQCTL(_QRX)			(0x00150000 + ((_QRX) * 4))
 #define QINT_RQCTL_MSIX_INDX_S			0
 #define QINT_RQCTL_MSIX_INDX_M			ICE_M(0x7FF, 0)
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0f04347..a738954 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3148,7 +3148,7 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 
 	if (oicr & PFINT_OICR_TSYN_TX_M) {
 		ena_mask &= ~PFINT_OICR_TSYN_TX_M;
-		if (!hw->reset_ongoing)
+		if (!hw->reset_ongoing && ice_ptp_pf_handles_tx_interrupt(pf))
 			set_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread);
 	}
 
@@ -7368,8 +7368,13 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	}
 
 	/* configure PTP timestamping after VSI rebuild */
-	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
-		ice_ptp_cfg_timestamp(pf, false);
+	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags)) {
+		if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_SELF)
+			ice_ptp_cfg_timestamp(pf, false);
+		else if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_ALL)
+			/* for E82x PHC owner always need to have interrupts */
+			ice_ptp_cfg_timestamp(pf, true);
+	}
 
 	err = ice_vsi_rebuild_by_type(pf, ICE_VSI_SWITCHDEV_CTRL);
 	if (err) {
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ad4ab53..941946e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -256,6 +256,24 @@ ice_verify_pin_e810t(struct ptp_clock_info *info, unsigned int pin,
 }
 
 /**
+ * ice_ptp_configure_tx_tstamp - Enable or disable Tx timestamp interrupt
+ * @pf: The PF pointer to search in
+ * @on: bool value for whether timestamp interrupt is enabled or disabled
+ */
+static void ice_ptp_configure_tx_tstamp(struct ice_pf *pf, bool on)
+{
+	u32 val;
+
+	/* Configure the Tx timestamp interrupt */
+	val = rd32(&pf->hw, PFINT_OICR_ENA);
+	if (on)
+		val |= PFINT_OICR_TSYN_TX_M;
+	else
+		val &= ~PFINT_OICR_TSYN_TX_M;
+	wr32(&pf->hw, PFINT_OICR_ENA, val);
+}
+
+/**
  * ice_set_tx_tstamp - Enable or disable Tx timestamping
  * @pf: The PF pointer to search in
  * @on: bool value for whether timestamps are enabled or disabled
@@ -263,7 +281,6 @@ ice_verify_pin_e810t(struct ptp_clock_info *info, unsigned int pin,
 static void ice_set_tx_tstamp(struct ice_pf *pf, bool on)
 {
 	struct ice_vsi *vsi;
-	u32 val;
 	u16 i;
 
 	vsi = ice_get_main_vsi(pf);
@@ -277,13 +294,8 @@ static void ice_set_tx_tstamp(struct ice_pf *pf, bool on)
 		vsi->tx_rings[i]->ptp_tx = on;
 	}
 
-	/* Configure the Tx timestamp interrupt */
-	val = rd32(&pf->hw, PFINT_OICR_ENA);
-	if (on)
-		val |= PFINT_OICR_TSYN_TX_M;
-	else
-		val &= ~PFINT_OICR_TSYN_TX_M;
-	wr32(&pf->hw, PFINT_OICR_ENA, val);
+	if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_SELF)
+		ice_ptp_configure_tx_tstamp(pf, on);
 
 	pf->ptp.tstamp_config.tx_type = on ? HWTSTAMP_TX_ON : HWTSTAMP_TX_OFF;
 }
@@ -674,9 +686,6 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 	int err;
 	u8 idx;
 
-	if (!tx->init)
-		return;
-
 	ptp_port = container_of(tx, struct ice_ptp_port, tx);
 	pf = ptp_port_to_pf(ptp_port);
 	hw = &pf->hw;
@@ -775,6 +784,39 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 }
 
 /**
+ * ice_ptp_tx_tstamp_owner - Process Tx timestamps for all ports on the device
+ * @pf: Board private structure
+ */
+static enum ice_tx_tstamp_work ice_ptp_tx_tstamp_owner(struct ice_pf *pf)
+{
+	struct ice_ptp_port *port;
+	unsigned int i;
+
+	mutex_lock(&pf->ptp.ports_owner.lock);
+	list_for_each_entry(port, &pf->ptp.ports_owner.ports, list_member) {
+		struct ice_ptp_tx *tx = &port->tx;
+
+		if (!tx || !tx->init)
+			continue;
+
+		ice_ptp_process_tx_tstamp(tx);
+	}
+	mutex_unlock(&pf->ptp.ports_owner.lock);
+
+	for (i = 0; i < ICE_MAX_QUAD; i++) {
+		u64 tstamp_ready;
+		int err;
+
+		/* Read the Tx ready status first */
+		err = ice_get_phy_tx_tstamp_ready(&pf->hw, i, &tstamp_ready);
+		if (err || tstamp_ready)
+			return ICE_TX_TSTAMP_WORK_PENDING;
+	}
+
+	return ICE_TX_TSTAMP_WORK_DONE;
+}
+
+/**
  * ice_ptp_tx_tstamp - Process Tx timestamps for this function.
  * @tx: Tx tracking structure to initialize
  *
@@ -2465,7 +2507,21 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
  */
 enum ice_tx_tstamp_work ice_ptp_process_ts(struct ice_pf *pf)
 {
-	return ice_ptp_tx_tstamp(&pf->ptp.port.tx);
+	switch (pf->ptp.tx_interrupt_mode) {
+	case ICE_PTP_TX_INTERRUPT_NONE:
+		/* This device has the clock owner handle timestamps for it */
+		return ICE_TX_TSTAMP_WORK_DONE;
+	case ICE_PTP_TX_INTERRUPT_SELF:
+		/* This device handles its own timestamps */
+		return ice_ptp_tx_tstamp(&pf->ptp.port.tx);
+	case ICE_PTP_TX_INTERRUPT_ALL:
+		/* This device handles timestamps for all ports */
+		return ice_ptp_tx_tstamp_owner(pf);
+	default:
+		WARN_ONCE(1, "Unexpected Tx timestamp interrupt mode %u\n",
+			  pf->ptp.tx_interrupt_mode);
+		return ICE_TX_TSTAMP_WORK_DONE;
+	}
 }
 
 static void ice_ptp_periodic_work(struct kthread_work *work)
@@ -2575,6 +2631,187 @@ void ice_ptp_reset(struct ice_pf *pf)
 }
 
 /**
+ * ice_ptp_aux_dev_to_aux_pf - Get auxiliary PF handle for the auxiliary device
+ * @aux_dev: auxiliary device to get the auxiliary PF for
+ */
+static struct ice_pf *
+ice_ptp_aux_dev_to_aux_pf(struct auxiliary_device *aux_dev)
+{
+	struct ice_ptp_port *aux_port;
+	struct ice_ptp *aux_ptp;
+
+	aux_port = container_of(aux_dev, struct ice_ptp_port, aux_dev);
+	aux_ptp = container_of(aux_port, struct ice_ptp, port);
+
+	return container_of(aux_ptp, struct ice_pf, ptp);
+}
+
+/**
+ * ice_ptp_aux_dev_to_owner_pf - Get PF handle for the auxiliary device
+ * @aux_dev: auxiliary device to get the PF for
+ */
+static struct ice_pf *
+ice_ptp_aux_dev_to_owner_pf(struct auxiliary_device *aux_dev)
+{
+	struct ice_ptp_port_owner *ports_owner;
+	struct auxiliary_driver *aux_drv;
+	struct ice_ptp *owner_ptp;
+
+	if (!aux_dev->dev.driver)
+		return NULL;
+
+	aux_drv = to_auxiliary_drv(aux_dev->dev.driver);
+	ports_owner = container_of(aux_drv, struct ice_ptp_port_owner,
+				   aux_driver);
+	owner_ptp = container_of(ports_owner, struct ice_ptp, ports_owner);
+	return container_of(owner_ptp, struct ice_pf, ptp);
+}
+
+/**
+ * ice_ptp_auxbus_probe - Probe auxiliary devices
+ * @aux_dev: PF's auxiliary device
+ * @id: Auxiliary device ID
+ */
+static int ice_ptp_auxbus_probe(struct auxiliary_device *aux_dev,
+				const struct auxiliary_device_id *id)
+{
+	struct ice_pf *owner_pf = ice_ptp_aux_dev_to_owner_pf(aux_dev);
+	struct ice_pf *aux_pf = ice_ptp_aux_dev_to_aux_pf(aux_dev);
+
+	if (WARN_ON(!owner_pf))
+		return -ENODEV;
+
+	INIT_LIST_HEAD(&aux_pf->ptp.port.list_member);
+	mutex_lock(&owner_pf->ptp.ports_owner.lock);
+	list_add(&aux_pf->ptp.port.list_member,
+		 &owner_pf->ptp.ports_owner.ports);
+	mutex_unlock(&owner_pf->ptp.ports_owner.lock);
+
+	return 0;
+}
+
+/**
+ * ice_ptp_auxbus_remove - Remove auxiliary devices from the bus
+ * @aux_dev: PF's auxiliary device
+ */
+static void ice_ptp_auxbus_remove(struct auxiliary_device *aux_dev)
+{
+	struct ice_pf *owner_pf = ice_ptp_aux_dev_to_owner_pf(aux_dev);
+	struct ice_pf *aux_pf = ice_ptp_aux_dev_to_aux_pf(aux_dev);
+
+	mutex_lock(&owner_pf->ptp.ports_owner.lock);
+	list_del(&aux_pf->ptp.port.list_member);
+	mutex_unlock(&owner_pf->ptp.ports_owner.lock);
+}
+
+/**
+ * ice_ptp_auxbus_shutdown
+ * @aux_dev: PF's auxiliary device
+ */
+static void ice_ptp_auxbus_shutdown(struct auxiliary_device *aux_dev)
+{
+	/* Doing nothing here, but handle to auxbus driver must be satisfied */
+}
+
+/**
+ * ice_ptp_auxbus_suspend
+ * @aux_dev: PF's auxiliary device
+ * @state: power management state indicator
+ */
+static int
+ice_ptp_auxbus_suspend(struct auxiliary_device *aux_dev, pm_message_t state)
+{
+	/* Doing nothing here, but handle to auxbus driver must be satisfied */
+	return 0;
+}
+
+/**
+ * ice_ptp_auxbus_resume
+ * @aux_dev: PF's auxiliary device
+ */
+static int ice_ptp_auxbus_resume(struct auxiliary_device *aux_dev)
+{
+	/* Doing nothing here, but handle to auxbus driver must be satisfied */
+	return 0;
+}
+
+/**
+ * ice_ptp_auxbus_create_id_table - Create auxiliary device ID table
+ * @pf: Board private structure
+ * @name: auxiliary bus driver name
+ */
+static struct auxiliary_device_id *
+ice_ptp_auxbus_create_id_table(struct ice_pf *pf, const char *name)
+{
+	struct auxiliary_device_id *ids;
+
+	/* Second id left empty to terminate the array */
+	ids = devm_kcalloc(ice_pf_to_dev(pf), 2,
+			   sizeof(struct auxiliary_device_id), GFP_KERNEL);
+	if (!ids)
+		return NULL;
+
+	snprintf(ids[0].name, sizeof(ids[0].name), "ice.%s", name);
+
+	return ids;
+}
+
+/**
+ * ice_ptp_register_auxbus_driver - Register PTP auxiliary bus driver
+ * @pf: Board private structure
+ */
+static int ice_ptp_register_auxbus_driver(struct ice_pf *pf)
+{
+	struct auxiliary_driver *aux_driver;
+	struct ice_ptp *ptp;
+	struct device *dev;
+	char *name;
+	int err;
+
+	ptp = &pf->ptp;
+	dev = ice_pf_to_dev(pf);
+	aux_driver = &ptp->ports_owner.aux_driver;
+	INIT_LIST_HEAD(&ptp->ports_owner.ports);
+	mutex_init(&ptp->ports_owner.lock);
+	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
+			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
+			      ice_get_ptp_src_clock_index(&pf->hw));
+
+	aux_driver->name = name;
+	aux_driver->shutdown = ice_ptp_auxbus_shutdown;
+	aux_driver->suspend = ice_ptp_auxbus_suspend;
+	aux_driver->remove = ice_ptp_auxbus_remove;
+	aux_driver->resume = ice_ptp_auxbus_resume;
+	aux_driver->probe = ice_ptp_auxbus_probe;
+	aux_driver->id_table = ice_ptp_auxbus_create_id_table(pf, name);
+	if (!aux_driver->id_table)
+		return -ENOMEM;
+
+	err = auxiliary_driver_register(aux_driver);
+	if (err) {
+		devm_kfree(dev, aux_driver->id_table);
+		dev_err(dev, "Failed registering aux_driver, name <%s>\n",
+			name);
+	}
+
+	return err;
+}
+
+/**
+ * ice_ptp_unregister_auxbus_driver - Unregister PTP auxiliary bus driver
+ * @pf: Board private structure
+ */
+static void ice_ptp_unregister_auxbus_driver(struct ice_pf *pf)
+{
+	struct auxiliary_driver *aux_driver = &pf->ptp.ports_owner.aux_driver;
+
+	auxiliary_driver_unregister(aux_driver);
+	devm_kfree(ice_pf_to_dev(pf), aux_driver->id_table);
+
+	mutex_destroy(&pf->ptp.ports_owner.lock);
+}
+
+/**
  * ice_ptp_prepare_for_reset - Prepare PTP for reset
  * @pf: Board private structure
  */
@@ -2652,7 +2889,15 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 	/* Release the global hardware lock */
 	ice_ptp_unlock(hw);
 
-	if (!ice_is_e810(hw)) {
+	if (pf->ptp.tx_interrupt_mode == ICE_PTP_TX_INTERRUPT_ALL) {
+		/* The clock owner for this device type handles the timestamp
+		 * interrupt for all ports.
+		 */
+		ice_ptp_configure_tx_tstamp(pf, true);
+
+		/* React on all quads interrupts for E82x */
+		wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x1f);
+
 		/* Enable quad interrupts */
 		err = ice_ptp_tx_ena_intr(pf, true, itr);
 		if (err)
@@ -2667,8 +2912,16 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 	/* Store the PTP clock index for other PFs */
 	ice_set_ptp_clock_index(pf);
 
-	return 0;
+	err = ice_ptp_register_auxbus_driver(pf);
+	if (err) {
+		dev_err(ice_pf_to_dev(pf), "Failed to register PTP auxbus driver");
+		goto err_aux;
+	}
 
+	return 0;
+err_aux:
+	ice_clear_ptp_clock_index(pf);
+	ptp_clock_unregister(pf->ptp.clock);
 err_clk:
 	pf->ptp.clock = NULL;
 err_exit:
@@ -2718,6 +2971,13 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 	case ICE_PHY_E810:
 		return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
 	case ICE_PHY_E822:
+		/* Non-owner PFs don't react to any interrupts on E82x,
+		 * neither on own quad nor on others
+		 */
+		if (!ice_ptp_pf_handles_tx_interrupt(pf)) {
+			ice_ptp_configure_tx_tstamp(pf, false);
+			wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x0);
+		}
 		kthread_init_delayed_work(&ptp_port->ov_work,
 					  ice_ptp_wait_for_offsets);
 
@@ -2729,6 +2989,101 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 }
 
 /**
+ * ice_ptp_release_auxbus_device
+ * @dev: device that utilizes the auxbus
+ */
+static void ice_ptp_release_auxbus_device(struct device *dev)
+{
+	/* Doing nothing here, but handle to auxbux device must be satisfied */
+}
+
+/**
+ * ice_ptp_create_auxbus_device - Create PTP auxiliary bus device
+ * @pf: Board private structure
+ */
+static int ice_ptp_create_auxbus_device(struct ice_pf *pf)
+{
+	struct auxiliary_device *aux_dev;
+	struct ice_ptp *ptp;
+	struct device *dev;
+	char *name;
+	int err;
+	u32 id;
+
+	ptp = &pf->ptp;
+	id = ptp->port.port_num;
+	dev = ice_pf_to_dev(pf);
+
+	aux_dev = &ptp->port.aux_dev;
+
+	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
+			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
+			      ice_get_ptp_src_clock_index(&pf->hw));
+
+	aux_dev->name = name;
+	aux_dev->id = id;
+	aux_dev->dev.release = ice_ptp_release_auxbus_device;
+	aux_dev->dev.parent = dev;
+
+	err = auxiliary_device_init(aux_dev);
+	if (err)
+		goto aux_err;
+
+	err = auxiliary_device_add(aux_dev);
+	if (err) {
+		auxiliary_device_uninit(aux_dev);
+		goto aux_err;
+	}
+
+	return 0;
+aux_err:
+	dev_err(dev, "Failed to create PTP auxiliary bus device <%s>\n", name);
+	devm_kfree(dev, name);
+	return err;
+}
+
+/**
+ * ice_ptp_remove_auxbus_device - Remove PTP auxiliary bus device
+ * @pf: Board private structure
+ */
+static void ice_ptp_remove_auxbus_device(struct ice_pf *pf)
+{
+	struct auxiliary_device *aux_dev = &pf->ptp.port.aux_dev;
+
+	auxiliary_device_delete(aux_dev);
+	auxiliary_device_uninit(aux_dev);
+
+	memset(aux_dev, 0, sizeof(*aux_dev));
+}
+
+/**
+ * ice_ptp_init_tx_interrupt_mode - Initialize device Tx interrupt mode
+ * @pf: Board private structure
+ *
+ * Initialize the Tx timestamp interrupt mode for this device. For most device
+ * types, each PF processes the interrupt and manages its own timestamps. For
+ * E822-based devices, only the clock owner processes the timestamps. Other
+ * PFs disable the interrupt and do not process their own timestamps.
+ */
+static void ice_ptp_init_tx_interrupt_mode(struct ice_pf *pf)
+{
+	switch (pf->hw.phy_model) {
+	case ICE_PHY_E822:
+		/* E822 based PHY has the clock owner process the interrupt
+		 * for all ports.
+		 */
+		if (ice_pf_src_tmr_owned(pf))
+			pf->ptp.tx_interrupt_mode = ICE_PTP_TX_INTERRUPT_ALL;
+		else
+			pf->ptp.tx_interrupt_mode = ICE_PTP_TX_INTERRUPT_NONE;
+		break;
+	default:
+		/* other PHY types handle their own Tx interrupt */
+		pf->ptp.tx_interrupt_mode = ICE_PTP_TX_INTERRUPT_SELF;
+	}
+}
+
+/**
  * ice_ptp_init - Initialize PTP hardware clock support
  * @pf: Board private structure
  *
@@ -2748,10 +3103,12 @@ void ice_ptp_init(struct ice_pf *pf)
 
 	ice_ptp_init_phy_model(hw);
 
+	ice_ptp_init_tx_interrupt_mode(pf);
+
 	/* If this function owns the clock hardware, it must allocate and
 	 * configure the PTP clock device to represent it.
 	 */
-	if (hw->func_caps.ts_func_info.src_tmr_owned) {
+	if (ice_pf_src_tmr_owned(pf)) {
 		err = ice_ptp_init_owner(pf);
 		if (err)
 			goto err;
@@ -2770,6 +3127,10 @@ void ice_ptp_init(struct ice_pf *pf)
 	if (err)
 		goto err;
 
+	err = ice_ptp_create_auxbus_device(pf);
+	if (err)
+		goto err;
+
 	dev_info(ice_pf_to_dev(pf), "PTP init successful\n");
 	return;
 
@@ -2798,6 +3159,8 @@ void ice_ptp_release(struct ice_pf *pf)
 	/* Disable timestamping for both Tx and Rx */
 	ice_ptp_cfg_timestamp(pf, false);
 
+	ice_ptp_remove_auxbus_device(pf);
+
 	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
 
 	clear_bit(ICE_FLAG_PTP, pf->flags);
@@ -2821,5 +3184,7 @@ void ice_ptp_release(struct ice_pf *pf)
 	ptp_clock_unregister(pf->ptp.clock);
 	pf->ptp.clock = NULL;
 
+	ice_ptp_unregister_auxbus_driver(pf);
+
 	dev_info(ice_pf_to_dev(pf), "Removed PTP clock\n");
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 995a570..d94c223 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -157,7 +157,9 @@ struct ice_ptp_tx {
  * ready for PTP functionality. It is used to track the port initialization
  * and determine when the port's PHY offset is valid.
  *
+ * @list_member: list member structure of auxiliary device
  * @tx: Tx timestamp tracking for this port
+ * @aux_dev: auxiliary device associated with this port
  * @ov_work: delayed work task for tracking when PHY offset is valid
  * @ps_lock: mutex used to protect the overall PTP PHY start procedure
  * @link_up: indicates whether the link is up
@@ -165,7 +167,9 @@ struct ice_ptp_tx {
  * @port_num: the port number this structure represents
  */
 struct ice_ptp_port {
+	struct list_head list_member;
 	struct ice_ptp_tx tx;
+	struct auxiliary_device aux_dev;
 	struct kthread_delayed_work ov_work;
 	struct mutex ps_lock; /* protects overall PTP PHY start procedure */
 	bool link_up;
@@ -173,11 +177,35 @@ struct ice_ptp_port {
 	u8 port_num;
 };
 
+enum ice_ptp_tx_interrupt {
+	ICE_PTP_TX_INTERRUPT_NONE = 0,
+	ICE_PTP_TX_INTERRUPT_SELF,
+	ICE_PTP_TX_INTERRUPT_ALL,
+};
+
+/**
+ * struct ice_ptp_port_owner - data used to handle the PTP clock owner info
+ *
+ * This structure contains data necessary for the PTP clock owner to correctly
+ * handle the timestamping feature for all attached ports.
+ *
+ * @aux_driver: the structure carring the auxiliary driver information
+ * @ports: list of porst handled by this port owner
+ * @lock: protect access to ports list
+ */
+struct ice_ptp_port_owner {
+	struct auxiliary_driver aux_driver;
+	struct list_head ports;
+	struct mutex lock;
+};
+
 #define GLTSYN_TGT_H_IDX_MAX		4
 
 /**
  * struct ice_ptp - data used for integrating with CONFIG_PTP_1588_CLOCK
+ * @tx_interrupt_mode: the TX interrupt mode for the PTP clock
  * @port: data for the PHY port initialization procedure
+ * @ports_owner: data for the auxiliary driver owner
  * @work: delayed work function for periodic tasks
  * @cached_phc_time: a cached copy of the PHC time for timestamp extension
  * @cached_phc_jiffies: jiffies when cached_phc_time was last updated
@@ -197,7 +225,9 @@ struct ice_ptp_port {
  * @late_cached_phc_updates: number of times cached PHC update is late
  */
 struct ice_ptp {
+	enum ice_ptp_tx_interrupt tx_interrupt_mode;
 	struct ice_ptp_port port;
+	struct ice_ptp_port_owner ports_owner;
 	struct kthread_delayed_work work;
 	u64 cached_phc_time;
 	unsigned long cached_phc_jiffies;
-- 
2.9.5

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
