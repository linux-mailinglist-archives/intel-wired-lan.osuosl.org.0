Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 525B3A971F1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Apr 2025 18:07:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB9C781EAD;
	Tue, 22 Apr 2025 16:07:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x6t_M-kJBSLX; Tue, 22 Apr 2025 16:07:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11B6281E98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745338066;
	bh=tkzEf8sCGWD9S76TfFN1FFh0yjDRe0tT3Nv4pv6hjbU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FPb1/JGfN4MhmsIcL2zKEFatL0Tv3oNS82Vmt7+IX1w4qMPRoB/jNUyGwSuNG5tcU
	 Du+pt5bgDQ+JvfRJiXY1OWRj4lzjnHqS5iai6ZMJynDe+1o5QndeuQTrFion4GgC1A
	 B1zoRsEBg3Qo0k74qmsHBYas+GSpwvaMD7+0A4VoHd9eAVFnvm+vd9y1d2vxZaeI0c
	 QPW6CWmxYYOWGa+RU60LJ31Rws4DGULjFqlXqKfFceiP6iK+jehSCo98sHrvyNqbhy
	 W/jtKlJBnZWsEote0jj9W1nhCdQ+LapW1rw6HLXTemscoq0AGfR/2iFiB5sJmRc/Nc
	 lg+1F+Fi9n31w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11B6281E98;
	Tue, 22 Apr 2025 16:07:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 81C841BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 16:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 69E6E60BF2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 16:07:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ARm4L21I7Vcx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Apr 2025 16:07:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DD49560BEC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD49560BEC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD49560BEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 16:07:41 +0000 (UTC)
X-CSE-ConnectionGUID: AfbLIXs8T2KHwpSBnPnvUA==
X-CSE-MsgGUID: SytLScD4Tri2uGn3rQgEQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="50709022"
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="50709022"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 09:07:42 -0700
X-CSE-ConnectionGUID: zoiiFagzSsapaXqvEF6Dzw==
X-CSE-MsgGUID: 1IqsGdETS/+B8j1CCrl1lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="132592454"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa007.jf.intel.com with ESMTP; 22 Apr 2025 09:07:40 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 22 Apr 2025 18:01:47 +0200
Message-Id: <20250422160149.1131069-2-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250422160149.1131069-1-arkadiusz.kubalewski@intel.com>
References: <20250422160149.1131069-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745338062; x=1776874062;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oUBuYFONEK9PGJgiC2XWS3Ong/W+RG7zxITmFyFvfFM=;
 b=EriRrVL13yP/FHWWoEgX4MjXJhKzBvKsnbGzNXNCE5yDSVruGiLdPkfQ
 SmuzZU3Ebti9g1a45I5vluKS5VD2EwTmXvu+OMPrA8iPV+D6eMbeu6lJ3
 G3vK5j1G6jV712DfzTl+QOvgGAsiVlr0Grz92U/FNxziAyoCjd7VyVoFm
 nw+r7eiujD8d9C0h6UIqKPYq1tTapqUKC1um/IY/1oo6+1qHVgmOT1T2d
 XpTSiXiCte/libkZySSeI7yqqAHOGjp0usmXyT6xkftAF6kOrk7JkNU/v
 vgWCzaZnF1mPHT5+qe3jaBh+QHHmLwUj8q4Y0jLFMue2NNpM5v7fkkysQ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EriRrVL1
Subject: [Intel-wired-lan] [PATCH iwl-next v5 1/3] ice: redesign dpll
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
v5:
- stop pins unregister for not present SW pins @E810-LOM NIC.
---
 drivers/net/ethernet/intel/ice/ice_dpll.c   | 927 +++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h   |  23 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   1 +
 3 files changed, 936 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index bce3ad6ca2a6..9fc50bb3f35a 100644
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
@@ -374,6 +513,67 @@ ice_dpll_pin_disable(struct ice_hw *hw, struct ice_dpll_pin *pin,
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
+	p->direction = DPLL_PIN_DIRECTION_INPUT;
+	if (data & ICE_SMA1_DIR_EN) {
+		p->direction = DPLL_PIN_DIRECTION_OUTPUT;
+		if (data & ICE_SMA1_TX_EN)
+			p->active = false;
+	}
+
+	p = &d->sma[ICE_DPLL_PIN_SW_2_IDX];
+	p->active = true;
+	p->direction = DPLL_PIN_DIRECTION_INPUT;
+	if ((data & ICE_SMA2_INACTIVE_MASK) == ICE_SMA2_INACTIVE_MASK)
+		p->active = false;
+	else if (data & ICE_SMA2_DIR_EN)
+		p->direction = DPLL_PIN_DIRECTION_OUTPUT;
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
@@ -471,6 +671,11 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
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
@@ -792,6 +997,270 @@ ice_dpll_input_state_get(const struct dpll_pin *pin, void *pin_priv,
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
+		if (direction == DPLL_PIN_DIRECTION_INPUT) {
+			data &= ~ICE_SMA2_DIR_EN;
+		} else {
+			data &= ~ICE_SMA2_TX_EN;
+			data |= ICE_SMA2_DIR_EN;
+		}
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
@@ -860,6 +1329,47 @@ ice_dpll_input_prio_set(const struct dpll_pin *pin, void *pin_priv,
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
@@ -910,6 +1420,76 @@ ice_dpll_output_direction(const struct dpll_pin *pin, void *pin_priv,
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
@@ -1024,7 +1604,7 @@ ice_dpll_pin_phase_adjust_set(const struct dpll_pin *pin, void *pin_priv,
  * Dpll subsystem callback. Wraps a handler for setting phase adjust on input
  * pin.
  *
- * Context: Calls a function which acquires pf->dplls.lock
+ * Context: Calls a function which acquires and releases pf->dplls.lock
  * Return:
  * * 0 - success
  * * negative - error
@@ -1068,6 +1648,82 @@ ice_dpll_output_phase_adjust_set(const struct dpll_pin *pin, void *pin_priv,
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
@@ -1093,11 +1749,13 @@ ice_dpll_phase_offset_get(const struct dpll_pin *pin, void *pin_priv,
 			  const struct dpll_device *dpll, void *dpll_priv,
 			  s64 *phase_offset, struct netlink_ext_ack *extack)
 {
+	struct ice_dpll_pin *p = pin_priv;
 	struct ice_dpll *d = dpll_priv;
 	struct ice_pf *pf = d->pf;
 
 	mutex_lock(&pf->dplls.lock);
-	if (d->active_input == pin)
+	if (d->active_input == pin || (p->input &&
+				       d->active_input == p->input->pin))
 		*phase_offset = d->phase_offset * ICE_DPLL_PHASE_OFFSET_FACTOR;
 	else
 		*phase_offset = 0;
@@ -1314,6 +1972,76 @@ ice_dpll_input_esync_get(const struct dpll_pin *pin, void *pin_priv,
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
@@ -1427,6 +2155,35 @@ static const struct dpll_pin_ops ice_dpll_rclk_ops = {
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
+	.phase_offset_get = ice_dpll_phase_offset_get,
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
+	.phase_offset_get = ice_dpll_phase_offset_get,
+};
+
 static const struct dpll_pin_ops ice_dpll_input_ops = {
 	.frequency_get = ice_dpll_input_frequency_get,
 	.frequency_set = ice_dpll_input_frequency_set,
@@ -1689,7 +2446,8 @@ ice_dpll_unregister_pins(struct dpll_device *dpll, struct ice_dpll_pin *pins,
 	int i;
 
 	for (i = 0; i < count; i++)
-		dpll_pin_unregister(dpll, pins[i].pin, ops, &pins[i]);
+		if (!pins[i].hidden)
+			dpll_pin_unregister(dpll, pins[i].pin, ops, &pins[i]);
 }
 
 /**
@@ -1712,16 +2470,19 @@ ice_dpll_register_pins(struct dpll_device *dpll, struct ice_dpll_pin *pins,
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
 
@@ -1909,6 +2670,18 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
 		ice_dpll_unregister_pins(de->dpll, outputs,
 					 &ice_dpll_output_ops, num_outputs);
 		ice_dpll_release_pins(outputs, num_outputs);
+		if (!pf->dplls.generic) {
+			ice_dpll_deinit_direct_pins(cgu, pf->dplls.ufl,
+						    ICE_DPLL_PIN_SW_NUM,
+						    &ice_dpll_pin_ufl_ops,
+						    pf->dplls.pps.dpll,
+						    pf->dplls.eec.dpll);
+			ice_dpll_deinit_direct_pins(cgu, pf->dplls.sma,
+						    ICE_DPLL_PIN_SW_NUM,
+						    &ice_dpll_pin_sma_ops,
+						    pf->dplls.pps.dpll,
+						    pf->dplls.eec.dpll);
+		}
 	}
 }
 
@@ -1926,8 +2699,7 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
  */
 static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 {
-	u32 rclk_idx;
-	int ret;
+	int ret, count;
 
 	ret = ice_dpll_init_direct_pins(pf, cgu, pf->dplls.inputs, 0,
 					pf->dplls.num_inputs,
@@ -1935,23 +2707,56 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
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
@@ -2184,8 +2989,10 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
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
@@ -2203,10 +3010,14 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
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
@@ -2245,6 +3056,89 @@ static int ice_dpll_init_info_rclk_pin(struct ice_pf *pf)
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
+	u32 phase_adj_max, caps;
+	int i, ret;
+
+	if (pf->hw.device_id == ICE_DEV_ID_E810C_QSFP)
+		input_idx_offset = ICE_E810_RCLK_PINS_NUM;
+	phase_adj_max = max(d->input_phase_adj_max, d->output_phase_adj_max);
+	caps = DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
+	for (i = 0; i < ICE_DPLL_PIN_SW_NUM; i++) {
+		pin = &d->sma[i];
+		pin->idx = i;
+		pin->prop.type = DPLL_PIN_TYPE_EXT;
+		pin_abs_idx = ICE_DPLL_PIN_SW_INPUT_ABS(i) + input_idx_offset;
+		pin->prop.freq_supported =
+			ice_cgu_get_pin_freq_supp(&pf->hw, pin_abs_idx,
+						  true, &freq_supp_num);
+		pin->prop.freq_supported_num = freq_supp_num;
+		pin->prop.capabilities =
+			(DPLL_PIN_CAPABILITIES_DIRECTION_CAN_CHANGE |
+			 DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE |
+			 caps);
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
+		pin->prop.capabilities = caps;
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
+			pin->prop.capabilities =
+				(DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE |
+				 caps);
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
@@ -2265,6 +3159,8 @@ ice_dpll_init_pins_info(struct ice_pf *pf, enum ice_dpll_pin_type pin_type)
 		return ice_dpll_init_info_direct_pins(pf, pin_type);
 	case ICE_DPLL_PIN_TYPE_RCLK_INPUT:
 		return ice_dpll_init_info_rclk_pin(pf);
+	case ICE_DPLL_PIN_TYPE_SOFTWARE:
+		return ice_dpll_init_info_sw_pins(pf);
 	default:
 		return -EINVAL;
 	}
@@ -2351,6 +3247,9 @@ static int ice_dpll_init_info(struct ice_pf *pf, bool cgu)
 		ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_OUTPUT);
 		if (ret)
 			goto deinit_info;
+		ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_SOFTWARE);
+		if (ret)
+			goto deinit_info;
 	}
 
 	ret = ice_get_cgu_rclk_pin_info(&pf->hw, &d->base_rclk_idx,
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index c320f1bf7d6d..10cd12d70972 100644
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
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 83f20fa7ace7..657ca1b3bf70 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -704,6 +704,7 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 #define ICE_SMA1_MASK		(ICE_SMA1_DIR_EN | ICE_SMA1_TX_EN)
 #define ICE_SMA2_MASK		(ICE_SMA2_UFL2_RX_DIS | ICE_SMA2_DIR_EN | \
 				 ICE_SMA2_TX_EN)
+#define ICE_SMA2_INACTIVE_MASK	(ICE_SMA2_DIR_EN | ICE_SMA2_TX_EN)
 #define ICE_ALL_SMA_MASK	(ICE_SMA1_MASK | ICE_SMA2_MASK)
 
 #define ICE_SMA_MIN_BIT		3
-- 
2.38.1

