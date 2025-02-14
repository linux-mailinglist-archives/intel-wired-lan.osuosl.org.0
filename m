Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CA0A3604A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 15:24:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68F6A6FC2B;
	Fri, 14 Feb 2025 14:24:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sAcpAEH9gipX; Fri, 14 Feb 2025 14:24:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C8F96FC30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739543062;
	bh=aulOQ8+pxQwMDVWDQI+B1kOnFbfwVCl5xQCPCYD3Yw8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Nq6pqgp+se2zi+6StLsww2+dmD8nm3UwJ24hnc/ZcLdA2uWlTyoWlR+GnGS27F5W7
	 zxMBVp4dONFVnI11HImrbsHDuuq2UsIjJP6JecuE+yV0EmbHVZaK1J+rlwSjx1eaXz
	 1CZJE0eE4ZM3SEEgK0kVxfKXuX3CbY3Fb7nVgYuaMIjwHY+JOKWJWjN6B+6QWBCZJ1
	 TJwU2sEUvv1LBKHdtS8nQzNASzQYB4+xoXcRylGfCt6rIZHcweNKJJ48P2+yV/7gQ7
	 05/vAKV9xJeJLO3/o+kCP0E6iWo9YvoaCCuC9MheAK/SAXbPFichSX43gQwSiHFH+h
	 OXG3uVIMtnN3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C8F96FC30;
	Fri, 14 Feb 2025 14:24:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9CA49C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 14:24:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9688A40BF6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 14:24:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PPOPW7u0ITUa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 14:24:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1DA8F40BF4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DA8F40BF4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1DA8F40BF4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 14:24:18 +0000 (UTC)
X-CSE-ConnectionGUID: STI3eafsShyLSWtoEuMrPw==
X-CSE-MsgGUID: iHOXnBBCR8eJSK+PFjVS1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="40154922"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="40154922"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:24:17 -0800
X-CSE-ConnectionGUID: qwoD8c+YT7ylGpL6dFc+RQ==
X-CSE-MsgGUID: P4yc6u5ATgm51vHWLiHDHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118093355"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa005.fm.intel.com with ESMTP; 14 Feb 2025 06:24:16 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri, 14 Feb 2025 15:18:34 +0100
Message-Id: <20250214141836.597747-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250214141836.597747-1-arkadiusz.kubalewski@intel.com>
References: <20250214141836.597747-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739543058; x=1771079058;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kAq0Jdtxs4b2b7rtN2jyWh4YR77lVmo69NXwYqr8V5Q=;
 b=RrCA+RzuYo1UWhgkbFGDg6CVIIu2uFUB8ipfmgHeMcNjXy7A+xsqOUFi
 akEOr3HO+QM9VO1cbF4fkgvcYBYO0PMRdJ8ioax7Y84kWpNIuk7w6HmIl
 w8Br1zSSyJL8MtsX/MnLyT0ANBHpAGkov1/1mMKXyfkNMwkFbtLycFGlB
 p30i2Agv4JU7X5HjQPWbfXlU+PydU9M6uLTafIpMLAISQD3d9GHg1k18Z
 ICBq6J9CV9o99gFjxV8bjL152hwDc2fYbRZOEjUXQV+yPm+pkAgoxxGCV
 GdP1zAzQpdvdmWny6LLWEzgaPOqs3mYO+vnQo3FfSO9vQjURJpzThgkS1
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RrCA+Rzu
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: redesign dpll
 sma/u.fl pins control
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DPLL-enabled E810 NIC driver provides user with list of input and output
pins. Hardware internal design impacts user control over SMA and U.FL
pins. Currently end-user view on those dpll pins doesn't provide any layer
of abstraction. On the hardware level SMA and U.FL pins are tied together
due to existence of direction control logic for each pair:
- SMA1 (bi-directional) and U.FL1 (only output)
- SMA2 (bi-directional) and U.FL2 (only input)
The user activity on each pin of the pair may impact the state of the
other.

Previously all the pins were provided to the user as is, without the
control over SMA pins direction.

Introduce a software controlled layer of abstraction over external board
pins, instead of providing the user with access to raw pins connected to
the dpll:
- new software controlled SMA and U.FL pins,
- callback operations directing user requests to corresponding hardware
  pins according to the runtime configuration,
- ability to control SMA pins direction.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v2:
- fix cocci/smatch warnings
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 950 +++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h |  23 +-
 2 files changed, 957 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 8d806d8ad761..7e8c9fb85ddc 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -11,6 +11,28 @@
 #define ICE_DPLL_RCLK_NUM_PER_PF		1
 #define ICE_DPLL_PIN_ESYNC_PULSE_HIGH_PERCENT	25
 #define ICE_DPLL_PIN_GEN_RCLK_FREQ		1953125
+#define ICE_DPLL_PIN_PRIO_OUTPUT		0xff
+#define ICE_DPLL_SW_PIN_INPUT_BASE_SFP		4
+#define ICE_DPLL_SW_PIN_INPUT_BASE_QSFP		6
+#define ICE_DPLL_SW_PIN_OUTPUT_BASE		0
+
+#define ICE_DPLL_PIN_SW_INPUT_ABS(in_idx) \
+	(ICE_DPLL_SW_PIN_INPUT_BASE_SFP + (in_idx))
+
+#define ICE_DPLL_PIN_SW_1_INPUT_ABS_IDX \
+	(ICE_DPLL_PIN_SW_INPUT_ABS(ICE_DPLL_PIN_SW_1_IDX))
+
+#define ICE_DPLL_PIN_SW_2_INPUT_ABS_IDX \
+	(ICE_DPLL_PIN_SW_INPUT_ABS(ICE_DPLL_PIN_SW_2_IDX))
+
+#define ICE_DPLL_PIN_SW_OUTPUT_ABS(out_idx) \
+	(ICE_DPLL_SW_PIN_OUTPUT_BASE + (out_idx))
+
+#define ICE_DPLL_PIN_SW_1_OUTPUT_ABS_IDX \
+	(ICE_DPLL_PIN_SW_OUTPUT_ABS(ICE_DPLL_PIN_SW_1_IDX))
+
+#define ICE_DPLL_PIN_SW_2_OUTPUT_ABS_IDX \
+	(ICE_DPLL_PIN_SW_OUTPUT_ABS(ICE_DPLL_PIN_SW_2_IDX))
 
 /**
  * enum ice_dpll_pin_type - enumerate ice pin types:
@@ -18,24 +40,60 @@
  * @ICE_DPLL_PIN_TYPE_INPUT: input pin
  * @ICE_DPLL_PIN_TYPE_OUTPUT: output pin
  * @ICE_DPLL_PIN_TYPE_RCLK_INPUT: recovery clock input pin
+ * @ICE_DPLL_PIN_TYPE_SOFTWARE: software controlled SMA/U.FL pins
  */
 enum ice_dpll_pin_type {
 	ICE_DPLL_PIN_INVALID,
 	ICE_DPLL_PIN_TYPE_INPUT,
 	ICE_DPLL_PIN_TYPE_OUTPUT,
 	ICE_DPLL_PIN_TYPE_RCLK_INPUT,
+	ICE_DPLL_PIN_TYPE_SOFTWARE,
 };
 
 static const char * const pin_type_name[] = {
 	[ICE_DPLL_PIN_TYPE_INPUT] = "input",
 	[ICE_DPLL_PIN_TYPE_OUTPUT] = "output",
 	[ICE_DPLL_PIN_TYPE_RCLK_INPUT] = "rclk-input",
+	[ICE_DPLL_PIN_TYPE_SOFTWARE] = "software",
 };
 
+static const char * const ice_dpll_sw_pin_sma[] = { "SMA1", "SMA2" };
+static const char * const ice_dpll_sw_pin_ufl[] = { "U.FL1", "U.FL2" };
+
 static const struct dpll_pin_frequency ice_esync_range[] = {
 	DPLL_PIN_FREQUENCY_RANGE(0, DPLL_PIN_FREQUENCY_1_HZ),
 };
 
+/**
+ * ice_dpll_is_sw_pin - check if given pin shall be controlled by SW
+ * @pf: private board structure
+ * @index: index of a pin as understood by FW
+ * @input: true for input, false for output
+ *
+ * Check if the pin shall be controlled by SW - instead of providing raw access
+ * for pin control. For E810 NIC with dpll there is additional MUX-related logic
+ * between SMA/U.FL pins/connectors and dpll device, best to give user access
+ * with series of wrapper functions as from user perspective they convey single
+ * functionality rather then separated pins.
+ *
+ * Return:
+ * * true - pin controlled by SW
+ * * false - pin not controlled by SW
+ */
+static bool ice_dpll_is_sw_pin(struct ice_pf *pf, u8 index, bool input)
+{
+	if (input && pf->hw.device_id == ICE_DEV_ID_E810C_QSFP)
+		index -= ICE_DPLL_SW_PIN_INPUT_BASE_QSFP -
+			 ICE_DPLL_SW_PIN_INPUT_BASE_SFP;
+
+	if ((input && (index == ICE_DPLL_PIN_SW_1_INPUT_ABS_IDX ||
+		       index == ICE_DPLL_PIN_SW_2_INPUT_ABS_IDX)) ||
+	    (!input && (index == ICE_DPLL_PIN_SW_1_OUTPUT_ABS_IDX ||
+			index == ICE_DPLL_PIN_SW_2_OUTPUT_ABS_IDX)))
+		return true;
+	return false;
+}
+
 /**
  * ice_dpll_is_reset - check if reset is in progress
  * @pf: private board structure
@@ -279,6 +337,87 @@ ice_dpll_output_frequency_get(const struct dpll_pin *pin, void *pin_priv,
 				      extack, ICE_DPLL_PIN_TYPE_OUTPUT);
 }
 
+/**
+ * ice_dpll_sw_pin_frequency_set - callback to set frequency of SW pin
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: pointer to dpll
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @frequency: on success holds pin's frequency
+ * @extack: error reporting
+ *
+ * Calls set frequency command for corresponding and active input/output pin.
+ *
+ * Context: Calls a function which acquires and releases pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error pin not active or couldn't get from hw
+ */
+static int
+ice_dpll_sw_pin_frequency_set(const struct dpll_pin *pin, void *pin_priv,
+			      const struct dpll_device *dpll, void *dpll_priv,
+			      u64 frequency, struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *sma = pin_priv;
+	int ret;
+
+	if (!sma->active) {
+		NL_SET_ERR_MSG(extack, "pin is not active");
+		return -EINVAL;
+	}
+	if (sma->direction == DPLL_PIN_DIRECTION_INPUT)
+		ret = ice_dpll_input_frequency_set(NULL, sma->input, dpll,
+						   dpll_priv, frequency,
+						   extack);
+	else
+		ret = ice_dpll_output_frequency_set(NULL, sma->output, dpll,
+						    dpll_priv, frequency,
+						    extack);
+
+	return ret;
+}
+
+/**
+ * ice_dpll_sw_pin_frequency_get - callback for get frequency of SW pin
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: pointer to dpll
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @frequency: on success holds pin's frequency
+ * @extack: error reporting
+ *
+ * Calls get frequency command for corresponding active input/output.
+ *
+ * Context: Calls a function which acquires and releases pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error pin not active or couldn't get from hw
+ */
+static int
+ice_dpll_sw_pin_frequency_get(const struct dpll_pin *pin, void *pin_priv,
+			      const struct dpll_device *dpll, void *dpll_priv,
+			      u64 *frequency, struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *sma = pin_priv;
+	int ret;
+
+	if (!sma->active) {
+		*frequency = 0;
+		return 0;
+	}
+	if (sma->direction == DPLL_PIN_DIRECTION_INPUT) {
+		ret = ice_dpll_input_frequency_get(NULL, sma->input, dpll,
+						   dpll_priv, frequency,
+						   extack);
+	} else {
+		ret = ice_dpll_output_frequency_get(NULL, sma->output, dpll,
+						    dpll_priv, frequency,
+						    extack);
+	}
+
+	return ret;
+}
+
 /**
  * ice_dpll_pin_enable - enable a pin on dplls
  * @hw: board private hw structure
@@ -374,6 +513,69 @@ ice_dpll_pin_disable(struct ice_hw *hw, struct ice_dpll_pin *pin,
 	return ret;
 }
 
+/**
+ * ice_dpll_sw_pins_update - update status of all SW pins
+ * @pf: private board struct
+ *
+ * Determine and update pin struct fields (direction/active) of their current
+ * values for all the SW controlled pins.
+ *
+ * Context: Call with pf->dplls.lock held
+ * Return:
+ * * 0 - OK
+ * * negative - error
+ */
+static int
+ice_dpll_sw_pins_update(struct ice_pf *pf)
+{
+	struct ice_dplls *d = &pf->dplls;
+	struct ice_dpll_pin *p;
+	u8 data = 0;
+	int ret;
+
+	ret = ice_read_sma_ctrl(&pf->hw, &data);
+	if (ret)
+		return ret;
+	/* no change since last check */
+	if (d->sma_data == data)
+		return 0;
+
+	/*
+	 * SMA1/U.FL1 vs SMA2/U.FL2 are using different bit scheme to decide
+	 * on their direction and if are active
+	 */
+	p = &d->sma[ICE_DPLL_PIN_SW_1_IDX];
+	p->active = true;
+	if (data & ICE_SMA1_DIR_EN) {
+		p->direction = DPLL_PIN_DIRECTION_OUTPUT;
+		if (data & ICE_SMA1_TX_EN)
+			p->active = false;
+	} else {
+		p->direction = DPLL_PIN_DIRECTION_INPUT;
+	}
+
+	p = &d->sma[ICE_DPLL_PIN_SW_2_IDX];
+	p->active = true;
+	if (data == (ICE_SMA2_DIR_EN | ICE_SMA2_TX_EN))
+		p->active = false;
+	else if (data & ICE_SMA2_DIR_EN)
+		p->direction = DPLL_PIN_DIRECTION_OUTPUT;
+	else
+		p->direction = DPLL_PIN_DIRECTION_INPUT;
+
+	p = &d->ufl[ICE_DPLL_PIN_SW_1_IDX];
+	if (!(data & (ICE_SMA1_DIR_EN | ICE_SMA1_TX_EN)))
+		p->active = true;
+	else
+		p->active = false;
+
+	p = &d->ufl[ICE_DPLL_PIN_SW_2_IDX];
+	p->active = (data & ICE_SMA2_DIR_EN) && !(data & ICE_SMA2_UFL2_RX_DIS);
+	d->sma_data = data;
+
+	return 0;
+}
+
 /**
  * ice_dpll_pin_state_update - update pin's state
  * @pf: private board struct
@@ -471,6 +673,11 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
 					DPLL_PIN_STATE_DISCONNECTED;
 		}
 		break;
+	case ICE_DPLL_PIN_TYPE_SOFTWARE:
+		ret = ice_dpll_sw_pins_update(pf);
+		if (ret)
+			goto err;
+		break;
 	default:
 		return -EINVAL;
 	}
@@ -792,6 +999,269 @@ ice_dpll_input_state_get(const struct dpll_pin *pin, void *pin_priv,
 				      extack, ICE_DPLL_PIN_TYPE_INPUT);
 }
 
+/**
+ * ice_dpll_sma_direction_set - set direction of SMA pin
+ * @p: pointer to a pin
+ * @direction: requested direction of the pin
+ * @extack: error reporting
+ *
+ * Wrapper for dpll subsystem callback. Set direction of a SMA pin.
+ *
+ * Context: Call with pf->dplls.lock held
+ * Return:
+ * * 0 - success
+ * * negative - failed to get state
+ */
+static int ice_dpll_sma_direction_set(struct ice_dpll_pin *p,
+				      enum dpll_pin_direction direction,
+				      struct netlink_ext_ack *extack)
+{
+	u8 data;
+	int ret;
+
+	if (p->direction == direction && p->active)
+		return 0;
+	ret = ice_read_sma_ctrl(&p->pf->hw, &data);
+	if (ret)
+		return ret;
+
+	switch (p->idx) {
+	case ICE_DPLL_PIN_SW_1_IDX:
+		data &= ~ICE_SMA1_MASK;
+		if (direction == DPLL_PIN_DIRECTION_OUTPUT)
+			data |= ICE_SMA1_DIR_EN;
+		break;
+	case ICE_DPLL_PIN_SW_2_IDX:
+		data |= ICE_SMA2_MASK;
+		if (direction == DPLL_PIN_DIRECTION_INPUT)
+			data &= ~ICE_SMA2_DIR_EN;
+		else
+			data &= ~ICE_SMA2_TX_EN;
+		break;
+	default:
+		return -EINVAL;
+	}
+	ret = ice_write_sma_ctrl(&p->pf->hw, data);
+	if (!ret)
+		ret = ice_dpll_pin_state_update(p->pf, p,
+						ICE_DPLL_PIN_TYPE_SOFTWARE,
+						extack);
+
+	return ret;
+}
+
+/**
+ * ice_dpll_ufl_pin_state_set - set U.FL pin state on dpll device
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @state: requested state of the pin
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Set the state of a pin.
+ *
+ * Context: Acquires and releases pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_ufl_pin_state_set(const struct dpll_pin *pin, void *pin_priv,
+			   const struct dpll_device *dpll, void *dpll_priv,
+			   enum dpll_pin_state state,
+			   struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv, *target;
+	struct ice_dpll *d = dpll_priv;
+	enum ice_dpll_pin_type type;
+	struct ice_pf *pf = p->pf;
+	struct ice_hw *hw;
+	bool enable;
+	u8 data;
+	int ret;
+
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
+	mutex_lock(&pf->dplls.lock);
+	hw = &pf->hw;
+	ret = ice_read_sma_ctrl(hw, &data);
+	if (ret)
+		goto unlock;
+
+	ret = -EINVAL;
+	switch (p->idx) {
+	case ICE_DPLL_PIN_SW_1_IDX:
+		if (state == DPLL_PIN_STATE_CONNECTED) {
+			data &= ~ICE_SMA1_MASK;
+			enable = true;
+		} else if (state == DPLL_PIN_STATE_DISCONNECTED) {
+			data |= ICE_SMA1_TX_EN;
+			enable = false;
+		} else {
+			goto unlock;
+		}
+		target = p->output;
+		type = ICE_DPLL_PIN_TYPE_OUTPUT;
+		break;
+	case ICE_DPLL_PIN_SW_2_IDX:
+		if (state == DPLL_PIN_STATE_SELECTABLE) {
+			data |= ICE_SMA2_DIR_EN;
+			data &= ~ICE_SMA2_UFL2_RX_DIS;
+			enable = true;
+		} else if (state == DPLL_PIN_STATE_DISCONNECTED) {
+			data |= ICE_SMA2_UFL2_RX_DIS;
+			enable = false;
+		} else {
+			goto unlock;
+		}
+		target = p->input;
+		type = ICE_DPLL_PIN_TYPE_INPUT;
+		break;
+	default:
+		goto unlock;
+	}
+
+	ret = ice_write_sma_ctrl(hw, data);
+	if (ret)
+		goto unlock;
+	ret = ice_dpll_pin_state_update(pf, p, ICE_DPLL_PIN_TYPE_SOFTWARE,
+					extack);
+	if (ret)
+		goto unlock;
+
+	if (enable)
+		ret = ice_dpll_pin_enable(hw, target, d->dpll_idx, type, extack);
+	else
+		ret = ice_dpll_pin_disable(hw, target, type, extack);
+	if (!ret)
+		ret = ice_dpll_pin_state_update(pf, target, type, extack);
+
+unlock:
+	mutex_unlock(&pf->dplls.lock);
+
+	return ret;
+}
+
+/**
+ * ice_dpll_sw_pin_state_get - get SW pin state
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @state: on success holds state of the pin
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Check state of a SW pin.
+ *
+ * Context: Acquires and releases pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_sw_pin_state_get(const struct dpll_pin *pin, void *pin_priv,
+			  const struct dpll_device *dpll, void *dpll_priv,
+			  enum dpll_pin_state *state,
+			  struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_dpll *d = dpll_priv;
+	struct ice_pf *pf = p->pf;
+	int ret = 0;
+
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+	mutex_lock(&pf->dplls.lock);
+	if (!p->active) {
+		*state = DPLL_PIN_STATE_DISCONNECTED;
+		goto unlock;
+	}
+
+	if (p->direction == DPLL_PIN_DIRECTION_INPUT) {
+		ret = ice_dpll_pin_state_update(pf, p->input,
+						ICE_DPLL_PIN_TYPE_INPUT,
+						extack);
+		if (ret)
+			goto unlock;
+		*state = p->input->state[d->dpll_idx];
+	} else {
+		ret = ice_dpll_pin_state_update(pf, p->output,
+						ICE_DPLL_PIN_TYPE_OUTPUT,
+						extack);
+		if (ret)
+			goto unlock;
+		*state = p->output->state[d->dpll_idx];
+	}
+unlock:
+	mutex_unlock(&pf->dplls.lock);
+
+	return ret;
+}
+
+/**
+ * ice_dpll_sma_pin_state_set - set SMA pin state on dpll device
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @state: requested state of the pin
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Set state of a pin.
+ *
+ * Context: Acquires and releases pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - failed to get state
+ */
+static int
+ice_dpll_sma_pin_state_set(const struct dpll_pin *pin, void *pin_priv,
+			   const struct dpll_device *dpll, void *dpll_priv,
+			   enum dpll_pin_state state,
+			   struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *sma = pin_priv, *target;
+	struct ice_dpll *d = dpll_priv;
+	struct ice_pf *pf = sma->pf;
+	enum ice_dpll_pin_type type;
+	bool enable;
+	int ret;
+
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
+	mutex_lock(&pf->dplls.lock);
+	if (!sma->active) {
+		ret = ice_dpll_sma_direction_set(sma, sma->direction, extack);
+		if (ret)
+			goto unlock;
+	}
+	if (sma->direction == DPLL_PIN_DIRECTION_INPUT) {
+		enable = state == DPLL_PIN_STATE_SELECTABLE;
+		target = sma->input;
+		type = ICE_DPLL_PIN_TYPE_INPUT;
+	} else {
+		enable = state == DPLL_PIN_STATE_CONNECTED;
+		target = sma->output;
+		type = ICE_DPLL_PIN_TYPE_OUTPUT;
+	}
+
+	if (enable)
+		ret = ice_dpll_pin_enable(&pf->hw, target, d->dpll_idx, type,
+					  extack);
+	else
+		ret = ice_dpll_pin_disable(&pf->hw, target, type, extack);
+	if (!ret)
+		ret = ice_dpll_pin_state_update(pf, target, type, extack);
+
+unlock:
+	mutex_unlock(&pf->dplls.lock);
+
+	return ret;
+}
+
 /**
  * ice_dpll_input_prio_get - get dpll's input prio
  * @pin: pointer to a pin
@@ -860,6 +1330,47 @@ ice_dpll_input_prio_set(const struct dpll_pin *pin, void *pin_priv,
 	return ret;
 }
 
+static int
+ice_dpll_sw_input_prio_get(const struct dpll_pin *pin, void *pin_priv,
+			   const struct dpll_device *dpll, void *dpll_priv,
+			   u32 *prio, struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_dpll *d = dpll_priv;
+	struct ice_pf *pf = d->pf;
+
+	mutex_lock(&pf->dplls.lock);
+	if (p->input && p->direction == DPLL_PIN_DIRECTION_INPUT)
+		*prio = d->input_prio[p->input->idx];
+	else
+		*prio = ICE_DPLL_PIN_PRIO_OUTPUT;
+	mutex_unlock(&pf->dplls.lock);
+
+	return 0;
+}
+
+static int
+ice_dpll_sw_input_prio_set(const struct dpll_pin *pin, void *pin_priv,
+			   const struct dpll_device *dpll, void *dpll_priv,
+			   u32 prio, struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_dpll *d = dpll_priv;
+	struct ice_pf *pf = d->pf;
+	int ret;
+
+	if (!p->input || p->direction != DPLL_PIN_DIRECTION_INPUT)
+		return -EINVAL;
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
+	mutex_lock(&pf->dplls.lock);
+	ret = ice_dpll_hw_input_prio_set(pf, d, p->input, prio, extack);
+	mutex_unlock(&pf->dplls.lock);
+
+	return ret;
+}
+
 /**
  * ice_dpll_input_direction - callback for get input pin direction
  * @pin: pointer to a pin
@@ -910,6 +1421,76 @@ ice_dpll_output_direction(const struct dpll_pin *pin, void *pin_priv,
 	return 0;
 }
 
+/**
+ * ice_dpll_pin_sma_direction_set - callback for set SMA pin direction
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @direction: requested pin direction
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Handler for setting direction of a SMA pin.
+ *
+ * Context: Acquires and releases pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_pin_sma_direction_set(const struct dpll_pin *pin, void *pin_priv,
+			       const struct dpll_device *dpll, void *dpll_priv,
+			       enum dpll_pin_direction direction,
+			       struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_pf *pf = p->pf;
+	int ret;
+
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
+	mutex_lock(&pf->dplls.lock);
+	ret = ice_dpll_sma_direction_set(p, direction, extack);
+	mutex_unlock(&pf->dplls.lock);
+
+	return ret;
+}
+
+/**
+ * ice_dpll_pin_sw_direction_get - callback for get SW pin direction
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @direction: on success holds pin direction
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Handler for getting direction of a SMA pin.
+ *
+ * Context: Acquires and releases pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_pin_sw_direction_get(const struct dpll_pin *pin, void *pin_priv,
+			      const struct dpll_device *dpll, void *dpll_priv,
+			      enum dpll_pin_direction *direction,
+			      struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_pf *pf = p->pf;
+
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+	mutex_lock(&pf->dplls.lock);
+	*direction = p->direction;
+	mutex_unlock(&pf->dplls.lock);
+
+	return 0;
+}
+
 /**
  * ice_dpll_pin_phase_adjust_get - callback for get pin phase adjust value
  * @pin: pointer to a pin
@@ -1024,7 +1605,7 @@ ice_dpll_pin_phase_adjust_set(const struct dpll_pin *pin, void *pin_priv,
  * Dpll subsystem callback. Wraps a handler for setting phase adjust on input
  * pin.
  *
- * Context: Calls a function which acquires pf->dplls.lock
+ * Context: Calls a function which acquires and releases pf->dplls.lock
  * Return:
  * * 0 - success
  * * negative - error
@@ -1068,6 +1649,82 @@ ice_dpll_output_phase_adjust_set(const struct dpll_pin *pin, void *pin_priv,
 					     ICE_DPLL_PIN_TYPE_OUTPUT);
 }
 
+/**
+ * ice_dpll_sw_phase_adjust_get - callback for get SW pin phase adjust
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @phase_adjust: on success holds phase adjust value
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Wraps a handler for getting phase adjust on sw
+ * pin.
+ *
+ * Context: Calls a function which acquires and releases pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_sw_phase_adjust_get(const struct dpll_pin *pin, void *pin_priv,
+			     const struct dpll_device *dpll, void *dpll_priv,
+			     s32 *phase_adjust,
+			     struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+
+	if (p->direction == DPLL_PIN_DIRECTION_INPUT)
+		return ice_dpll_pin_phase_adjust_get(p->input->pin, p->input,
+						     dpll, dpll_priv,
+						     phase_adjust, extack);
+	else
+		return ice_dpll_pin_phase_adjust_get(p->output->pin, p->output,
+						     dpll, dpll_priv,
+						     phase_adjust, extack);
+}
+
+/**
+ * ice_dpll_sw_phase_adjust_set - callback for set SW pin phase adjust value
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @phase_adjust: phase_adjust to be set
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Wraps a handler for setting phase adjust on output
+ * pin.
+ *
+ * Context: Calls a function which acquires and releases pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_sw_phase_adjust_set(const struct dpll_pin *pin, void *pin_priv,
+			     const struct dpll_device *dpll, void *dpll_priv,
+			     s32 phase_adjust,
+			     struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+
+	if (!p->active) {
+		NL_SET_ERR_MSG(extack, "pin is not active");
+		return -EINVAL;
+	}
+	if (p->direction == DPLL_PIN_DIRECTION_INPUT)
+		return ice_dpll_pin_phase_adjust_set(p->input->pin, p->input,
+						     dpll, dpll_priv,
+						     phase_adjust, extack,
+						     ICE_DPLL_PIN_TYPE_INPUT);
+	else
+		return ice_dpll_pin_phase_adjust_set(p->output->pin, p->output,
+						     dpll, dpll_priv,
+						     phase_adjust, extack,
+						     ICE_DPLL_PIN_TYPE_OUTPUT);
+}
+
 #define ICE_DPLL_PHASE_OFFSET_DIVIDER	100
 #define ICE_DPLL_PHASE_OFFSET_FACTOR		\
 	(DPLL_PHASE_OFFSET_DIVIDER / ICE_DPLL_PHASE_OFFSET_DIVIDER)
@@ -1314,6 +1971,76 @@ ice_dpll_input_esync_get(const struct dpll_pin *pin, void *pin_priv,
 	return 0;
 }
 
+/**
+ * ice_dpll_sw_esync_set - callback for setting embedded sync on SW pin
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @freq: requested embedded sync frequency
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Handler for setting embedded sync frequency value
+ * on SW pin.
+ *
+ * Context: Calls a function which acquires and releases pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_sw_esync_set(const struct dpll_pin *pin, void *pin_priv,
+		      const struct dpll_device *dpll, void *dpll_priv,
+		      u64 freq, struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+
+	if (!p->active) {
+		NL_SET_ERR_MSG(extack, "pin is not active");
+		return -EINVAL;
+	}
+	if (p->direction == DPLL_PIN_DIRECTION_INPUT)
+		return ice_dpll_input_esync_set(p->input->pin, p->input, dpll,
+						dpll_priv, freq, extack);
+	else
+		return ice_dpll_output_esync_set(p->output->pin, p->output,
+						 dpll, dpll_priv, freq, extack);
+}
+
+/**
+ * ice_dpll_sw_esync_get - callback for getting embedded sync on SW pin
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @esync: on success holds embedded sync frequency and properties
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback. Handler for getting embedded sync frequency value
+ * of SW pin.
+ *
+ * Context: Calls a function which acquires and releases pf->dplls.lock
+ * Return:
+ * * 0 - success
+ * * negative - error
+ */
+static int
+ice_dpll_sw_esync_get(const struct dpll_pin *pin, void *pin_priv,
+		      const struct dpll_device *dpll, void *dpll_priv,
+		      struct dpll_pin_esync *esync,
+		      struct netlink_ext_ack *extack)
+{
+	struct ice_dpll_pin *p = pin_priv;
+
+	if (p->direction == DPLL_PIN_DIRECTION_INPUT)
+		return ice_dpll_input_esync_get(p->input->pin, p->input, dpll,
+						dpll_priv, esync, extack);
+	else
+		return ice_dpll_output_esync_get(p->output->pin, p->output,
+						 dpll, dpll_priv, esync,
+						 extack);
+}
+
 /**
  * ice_dpll_rclk_state_on_pin_set - set a state on rclk pin
  * @pin: pointer to a pin
@@ -1427,6 +2154,33 @@ static const struct dpll_pin_ops ice_dpll_rclk_ops = {
 	.direction_get = ice_dpll_input_direction,
 };
 
+static const struct dpll_pin_ops ice_dpll_pin_sma_ops = {
+	.state_on_dpll_set = ice_dpll_sma_pin_state_set,
+	.state_on_dpll_get = ice_dpll_sw_pin_state_get,
+	.direction_get = ice_dpll_pin_sw_direction_get,
+	.direction_set = ice_dpll_pin_sma_direction_set,
+	.prio_get = ice_dpll_sw_input_prio_get,
+	.prio_set = ice_dpll_sw_input_prio_set,
+	.frequency_get = ice_dpll_sw_pin_frequency_get,
+	.frequency_set = ice_dpll_sw_pin_frequency_set,
+	.phase_adjust_get = ice_dpll_sw_phase_adjust_get,
+	.phase_adjust_set = ice_dpll_sw_phase_adjust_set,
+	.esync_set = ice_dpll_sw_esync_set,
+	.esync_get = ice_dpll_sw_esync_get,
+};
+
+static const struct dpll_pin_ops ice_dpll_pin_ufl_ops = {
+	.state_on_dpll_set = ice_dpll_ufl_pin_state_set,
+	.state_on_dpll_get = ice_dpll_sw_pin_state_get,
+	.direction_get = ice_dpll_pin_sw_direction_get,
+	.frequency_get = ice_dpll_sw_pin_frequency_get,
+	.frequency_set = ice_dpll_sw_pin_frequency_set,
+	.esync_set = ice_dpll_sw_esync_set,
+	.esync_get = ice_dpll_sw_esync_get,
+	.phase_adjust_get = ice_dpll_sw_phase_adjust_get,
+	.phase_adjust_set = ice_dpll_sw_phase_adjust_set,
+};
+
 static const struct dpll_pin_ops ice_dpll_input_ops = {
 	.frequency_get = ice_dpll_input_frequency_get,
 	.frequency_set = ice_dpll_input_frequency_set,
@@ -1503,6 +2257,36 @@ static void ice_dpll_notify_changes(struct ice_dpll *d)
 	}
 }
 
+/**
+ * ice_dpll_input_get - get active input pin
+ * @pf: pf private structure
+ * @input_idx: active input index as returned by firmware
+ *
+ * For SMA/U.FL pins controlled in software, we need extra translation
+ * to find correct active source.
+ *
+ * Return:
+ * Pointer to struct dpll_pin object being currently an active pin.
+ */
+static struct dpll_pin *ice_dpll_input_get(struct ice_pf *pf, u8 input_idx)
+{
+	struct ice_dpll_pin *input;
+
+	if (input_idx == ICE_DPLL_PIN_SW_1_INPUT_ABS_IDX) {
+		input = &pf->dplls.sma[ICE_DPLL_PIN_SW_1_IDX];
+	} else if (input_idx == ICE_DPLL_PIN_SW_2_INPUT_ABS_IDX) {
+		if (pf->dplls.sma[ICE_DPLL_PIN_SW_2_IDX].direction ==
+		    DPLL_PIN_DIRECTION_INPUT)
+			input = &pf->dplls.sma[ICE_DPLL_PIN_SW_2_IDX];
+		else
+			input = &pf->dplls.ufl[ICE_DPLL_PIN_SW_2_IDX];
+	} else {
+		input = &pf->dplls.inputs[input_idx];
+	}
+
+	return input->pin;
+}
+
 /**
  * ice_dpll_update_state - update dpll state
  * @pf: pf private structure
@@ -1540,7 +2324,7 @@ ice_dpll_update_state(struct ice_pf *pf, struct ice_dpll *d, bool init)
 	if (init) {
 		if (d->dpll_state == DPLL_LOCK_STATUS_LOCKED ||
 		    d->dpll_state == DPLL_LOCK_STATUS_LOCKED_HO_ACQ)
-			d->active_input = pf->dplls.inputs[d->input_idx].pin;
+			d->active_input = ice_dpll_input_get(pf, d->input_idx);
 		p = &pf->dplls.inputs[d->input_idx];
 		return ice_dpll_pin_state_update(pf, p,
 						 ICE_DPLL_PIN_TYPE_INPUT, NULL);
@@ -1565,7 +2349,7 @@ ice_dpll_update_state(struct ice_pf *pf, struct ice_dpll *d, bool init)
 		}
 		if (d->input_idx != ICE_DPLL_PIN_IDX_INVALID) {
 			p = &pf->dplls.inputs[d->input_idx];
-			d->active_input = p->pin;
+			d->active_input = ice_dpll_input_get(pf, d->input_idx);
 			ice_dpll_pin_state_update(pf, p,
 						  ICE_DPLL_PIN_TYPE_INPUT,
 						  NULL);
@@ -1689,7 +2473,8 @@ ice_dpll_unregister_pins(struct dpll_device *dpll, struct ice_dpll_pin *pins,
 	int i;
 
 	for (i = 0; i < count; i++)
-		dpll_pin_unregister(dpll, pins[i].pin, ops, &pins[i]);
+		if (!pins[i].hidden)
+			dpll_pin_unregister(dpll, pins[i].pin, ops, &pins[i]);
 }
 
 /**
@@ -1712,16 +2497,19 @@ ice_dpll_register_pins(struct dpll_device *dpll, struct ice_dpll_pin *pins,
 	int ret, i;
 
 	for (i = 0; i < count; i++) {
-		ret = dpll_pin_register(dpll, pins[i].pin, ops, &pins[i]);
-		if (ret)
-			goto unregister_pins;
+		if (!pins[i].hidden) {
+			ret = dpll_pin_register(dpll, pins[i].pin, ops, &pins[i]);
+			if (ret)
+				goto unregister_pins;
+		}
 	}
 
 	return 0;
 
 unregister_pins:
 	while (--i >= 0)
-		dpll_pin_unregister(dpll, pins[i].pin, ops, &pins[i]);
+		if (!pins[i].hidden)
+			dpll_pin_unregister(dpll, pins[i].pin, ops, &pins[i]);
 	return ret;
 }
 
@@ -1909,6 +2697,16 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
 		ice_dpll_unregister_pins(de->dpll, outputs,
 					 &ice_dpll_output_ops, num_outputs);
 		ice_dpll_release_pins(outputs, num_outputs);
+		ice_dpll_deinit_direct_pins(cgu, pf->dplls.ufl,
+					    ICE_DPLL_PIN_SW_NUM,
+					    &ice_dpll_pin_ufl_ops,
+					    pf->dplls.pps.dpll,
+					    pf->dplls.eec.dpll);
+		ice_dpll_deinit_direct_pins(cgu, pf->dplls.sma,
+					    ICE_DPLL_PIN_SW_NUM,
+					    &ice_dpll_pin_sma_ops,
+					    pf->dplls.pps.dpll,
+					    pf->dplls.eec.dpll);
 	}
 }
 
@@ -1926,8 +2724,7 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
  */
 static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 {
-	u32 rclk_idx;
-	int ret;
+	int ret, count;
 
 	ret = ice_dpll_init_direct_pins(pf, cgu, pf->dplls.inputs, 0,
 					pf->dplls.num_inputs,
@@ -1935,23 +2732,56 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 					pf->dplls.eec.dpll, pf->dplls.pps.dpll);
 	if (ret)
 		return ret;
+	count = pf->dplls.num_inputs;
 	if (cgu) {
 		ret = ice_dpll_init_direct_pins(pf, cgu, pf->dplls.outputs,
-						pf->dplls.num_inputs,
+						count,
 						pf->dplls.num_outputs,
 						&ice_dpll_output_ops,
 						pf->dplls.eec.dpll,
 						pf->dplls.pps.dpll);
 		if (ret)
 			goto deinit_inputs;
+		count += pf->dplls.num_outputs;
+		if (!pf->dplls.generic) {
+			ret = ice_dpll_init_direct_pins(pf, cgu, pf->dplls.sma,
+							count,
+							ICE_DPLL_PIN_SW_NUM,
+							&ice_dpll_pin_sma_ops,
+							pf->dplls.eec.dpll,
+							pf->dplls.pps.dpll);
+			if (ret)
+				goto deinit_outputs;
+			count += ICE_DPLL_PIN_SW_NUM;
+			ret = ice_dpll_init_direct_pins(pf, cgu, pf->dplls.ufl,
+							count,
+							ICE_DPLL_PIN_SW_NUM,
+							&ice_dpll_pin_ufl_ops,
+							pf->dplls.eec.dpll,
+							pf->dplls.pps.dpll);
+			if (ret)
+				goto deinit_sma;
+			count += ICE_DPLL_PIN_SW_NUM;
+		}
+	} else {
+		count += pf->dplls.num_outputs + 2 * ICE_DPLL_PIN_SW_NUM;
 	}
-	rclk_idx = pf->dplls.num_inputs + pf->dplls.num_outputs + pf->hw.pf_id;
-	ret = ice_dpll_init_rclk_pins(pf, &pf->dplls.rclk, rclk_idx,
+	ret = ice_dpll_init_rclk_pins(pf, &pf->dplls.rclk, count + pf->hw.pf_id,
 				      &ice_dpll_rclk_ops);
 	if (ret)
-		goto deinit_outputs;
+		goto deinit_ufl;
 
 	return 0;
+deinit_ufl:
+	ice_dpll_deinit_direct_pins(cgu, pf->dplls.ufl,
+				    ICE_DPLL_PIN_SW_NUM,
+				    &ice_dpll_pin_ufl_ops,
+				    pf->dplls.pps.dpll, pf->dplls.eec.dpll);
+deinit_sma:
+	ice_dpll_deinit_direct_pins(cgu, pf->dplls.sma,
+				    ICE_DPLL_PIN_SW_NUM,
+				    &ice_dpll_pin_sma_ops,
+				    pf->dplls.pps.dpll, pf->dplls.eec.dpll);
 deinit_outputs:
 	ice_dpll_deinit_direct_pins(cgu, pf->dplls.outputs,
 				    pf->dplls.num_outputs,
@@ -2184,8 +3014,10 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 	default:
 		return -EINVAL;
 	}
-	if (num_pins != ice_cgu_get_num_pins(hw, input))
+	if (num_pins != ice_cgu_get_num_pins(hw, input)) {
+		pf->dplls.generic = true;
 		return ice_dpll_init_info_pins_generic(pf, input);
+	}
 
 	for (i = 0; i < num_pins; i++) {
 		caps = 0;
@@ -2203,10 +3035,14 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
 				return ret;
 			caps |= (DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE |
 				 DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE);
+			if (ice_dpll_is_sw_pin(pf, i, true))
+				pins[i].hidden = true;
 		} else {
 			ret = ice_cgu_get_output_pin_state_caps(hw, i, &caps);
 			if (ret)
 				return ret;
+			if (ice_dpll_is_sw_pin(pf, i, false))
+				pins[i].hidden = true;
 		}
 		ice_dpll_phase_range_set(&pins[i].prop.phase_range,
 					 phase_adj_max);
@@ -2245,6 +3081,85 @@ static int ice_dpll_init_info_rclk_pin(struct ice_pf *pf)
 					 ICE_DPLL_PIN_TYPE_RCLK_INPUT, NULL);
 }
 
+/**
+ * ice_dpll_init_info_sw_pins - initializes software controlled pin information
+ * @pf: board private structure
+ *
+ * Init information for software controlled pins, cache them in
+ * pf->dplls.sma and pf->dplls.ufl.
+ *
+ * Return:
+ * * 0 - success
+ * * negative - init failure reason
+ */
+static int ice_dpll_init_info_sw_pins(struct ice_pf *pf)
+{
+	u8 freq_supp_num, pin_abs_idx, input_idx_offset = 0;
+	struct ice_dplls *d = &pf->dplls;
+	struct ice_dpll_pin *pin;
+	u32 phase_adj_max;
+	int i, ret;
+
+	if (pf->hw.device_id == ICE_DEV_ID_E810C_QSFP)
+		input_idx_offset = ICE_E810_RCLK_PINS_NUM;
+	phase_adj_max = max(d->input_phase_adj_max, d->output_phase_adj_max);
+	for (i = 0; i < ICE_DPLL_PIN_SW_NUM; i++) {
+		pin = &d->sma[i];
+		pin->idx = i;
+		pin->prop.type = DPLL_PIN_TYPE_EXT;
+		pin_abs_idx = ICE_DPLL_PIN_SW_INPUT_ABS(i) + input_idx_offset;
+		pin->prop.freq_supported =
+			ice_cgu_get_pin_freq_supp(&pf->hw, pin_abs_idx,
+						  true, &freq_supp_num);
+		pin->prop.freq_supported_num = freq_supp_num;
+		pin->prop.capabilities |=
+			(DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE |
+			 DPLL_PIN_CAPABILITIES_DIRECTION_CAN_CHANGE);
+		pin->pf = pf;
+		pin->prop.board_label = ice_dpll_sw_pin_sma[i];
+		pin->input = &d->inputs[pin_abs_idx];
+		pin->output = &d->outputs[ICE_DPLL_PIN_SW_OUTPUT_ABS(i)];
+		ice_dpll_phase_range_set(&pin->prop.phase_range, phase_adj_max);
+	}
+	for (i = 0; i < ICE_DPLL_PIN_SW_NUM; i++) {
+		pin = &d->ufl[i];
+		pin->idx = i;
+		pin->prop.type = DPLL_PIN_TYPE_EXT;
+		pin->prop.capabilities |=
+			DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
+		pin->pf = pf;
+		pin->prop.board_label = ice_dpll_sw_pin_ufl[i];
+		if (i == ICE_DPLL_PIN_SW_1_IDX) {
+			pin->direction = DPLL_PIN_DIRECTION_OUTPUT;
+			pin_abs_idx = ICE_DPLL_PIN_SW_OUTPUT_ABS(i);
+			pin->prop.freq_supported =
+				ice_cgu_get_pin_freq_supp(&pf->hw, pin_abs_idx,
+							  false,
+							  &freq_supp_num);
+			pin->prop.freq_supported_num = freq_supp_num;
+			pin->input = NULL;
+			pin->output = &d->outputs[pin_abs_idx];
+		} else if (i == ICE_DPLL_PIN_SW_2_IDX) {
+			pin->direction = DPLL_PIN_DIRECTION_INPUT;
+			pin_abs_idx = ICE_DPLL_PIN_SW_INPUT_ABS(i) +
+				      input_idx_offset;
+			pin->output = NULL;
+			pin->input = &d->inputs[pin_abs_idx];
+			pin->prop.freq_supported =
+				ice_cgu_get_pin_freq_supp(&pf->hw, pin_abs_idx,
+							  true, &freq_supp_num);
+			pin->prop.freq_supported_num = freq_supp_num;
+		}
+		ice_dpll_phase_range_set(&pin->prop.phase_range, phase_adj_max);
+	}
+	ret = ice_dpll_pin_state_update(pf, pin, ICE_DPLL_PIN_TYPE_SOFTWARE,
+					NULL);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 /**
  * ice_dpll_init_pins_info - init pins info wrapper
  * @pf: board private structure
@@ -2265,6 +3180,8 @@ ice_dpll_init_pins_info(struct ice_pf *pf, enum ice_dpll_pin_type pin_type)
 		return ice_dpll_init_info_direct_pins(pf, pin_type);
 	case ICE_DPLL_PIN_TYPE_RCLK_INPUT:
 		return ice_dpll_init_info_rclk_pin(pf);
+	case ICE_DPLL_PIN_TYPE_SOFTWARE:
+		return ice_dpll_init_info_sw_pins(pf);
 	default:
 		return -EINVAL;
 	}
@@ -2351,6 +3268,9 @@ static int ice_dpll_init_info(struct ice_pf *pf, bool cgu)
 		ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_OUTPUT);
 		if (ret)
 			goto deinit_info;
+		ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_SOFTWARE);
+		if (ret)
+			goto deinit_info;
 	}
 
 	ret = ice_get_cgu_rclk_pin_info(&pf->hw, &d->base_rclk_idx,
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index c320f1bf7d6d..6ec4430b196b 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
@@ -8,6 +8,18 @@
 
 #define ICE_DPLL_RCLK_NUM_MAX	4
 
+/**
+ * enum ice_dpll_pin_sw - enumerate ice software pin indices:
+ * @ICE_DPLL_PIN_SW_1_IDX: index of first SW pin
+ * @ICE_DPLL_PIN_SW_2_IDX: index of second SW pin
+ * @ICE_DPLL_PIN_SW_NUM: number of SW pins in pair
+ */
+enum ice_dpll_pin_sw {
+	ICE_DPLL_PIN_SW_1_IDX,
+	ICE_DPLL_PIN_SW_2_IDX,
+	ICE_DPLL_PIN_SW_NUM
+};
+
 /** ice_dpll_pin - store info about pins
  * @pin: dpll pin structure
  * @pf: pointer to pf, which has registered the dpll_pin
@@ -31,7 +43,12 @@ struct ice_dpll_pin {
 	struct dpll_pin_properties prop;
 	u32 freq;
 	s32 phase_adjust;
+	struct ice_dpll_pin *input;
+	struct ice_dpll_pin *output;
+	enum dpll_pin_direction direction;
 	u8 status;
+	bool active;
+	bool hidden;
 };
 
 /** ice_dpll - store info required for DPLL control
@@ -93,14 +110,18 @@ struct ice_dplls {
 	struct ice_dpll pps;
 	struct ice_dpll_pin *inputs;
 	struct ice_dpll_pin *outputs;
+	struct ice_dpll_pin sma[ICE_DPLL_PIN_SW_NUM];
+	struct ice_dpll_pin ufl[ICE_DPLL_PIN_SW_NUM];
 	struct ice_dpll_pin rclk;
 	u8 num_inputs;
 	u8 num_outputs;
-	int cgu_state_acq_err_num;
+	u8 sma_data;
 	u8 base_rclk_idx;
+	int cgu_state_acq_err_num;
 	u64 clock_id;
 	s32 input_phase_adj_max;
 	s32 output_phase_adj_max;
+	bool generic;
 };
 
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
-- 
2.38.1

