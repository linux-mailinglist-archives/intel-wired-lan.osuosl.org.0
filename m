Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 610243A1E19
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 22:29:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09E3140580;
	Wed,  9 Jun 2021 20:29:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UstOq_ULe4M0; Wed,  9 Jun 2021 20:29:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22A744056E;
	Wed,  9 Jun 2021 20:29:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B7291BF25F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 20:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 82A6E40580
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 20:29:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id myY0Grje4ObN for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jun 2021 20:29:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6AC5E405A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 20:29:45 +0000 (UTC)
IronPort-SDR: Dub4AoRYRxfBEs5u7I0lZgowWhAI7k9HYVz+2hgCxy/Y+HP7a52FPgb3y/0o2uPIuWlIkQ0k/5
 aIeEfJR6IGyA==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="204975176"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="204975176"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 13:29:44 -0700
IronPort-SDR: nHzbJyC4uq0fOVTH8XV8lrMgEwT18N8RbFuSlQquBNee6aKGO8uYsq0euy2Dxr+JH7V2EsfG6e
 2ybTZ56IldzQ==
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="450077066"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 13:29:43 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed,  9 Jun 2021 13:29:37 -0700
Message-Id: <20210609202937.1135836-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] ice: add support for auxiliary
 input/output pins
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
Cc: Maciej Machnikowski <maciej.machnikowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Maciej Machnikowski <maciej.machnikowski@intel.com>

The E810 device supports programmable pins for enabling both input and
output events related to the PTP hardware clock. This includes both
output signals with programmable period, as well as timestamping of
events on input pins.

Add support for enabling these using the CONFIG_PTP_1588_CLOCK
interface.

This allows programming the software defined pins to take advantage of
the hardware clock features.

Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---

This applies on top of the v2 PTP series that Tony just posted. It adds
support for the basic GPIO pins that the device supports.

 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  18 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |  12 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 292 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp.h      |  43 +++
 4 files changed, 365 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 6989a76c42a7..76021d977b60 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -138,6 +138,10 @@
 #define GLGEN_CLKSTAT_SRC_PSM_CLK_SRC_S		4
 #define GLGEN_CLKSTAT_SRC_PSM_CLK_SRC_M		ICE_M(0x3, 4)
 #define GLGEN_CLKSTAT_SRC			0x000B826C
+#define GLGEN_GPIO_CTL(_i)			(0x000880C8 + ((_i) * 4))
+#define GLGEN_GPIO_CTL_PIN_DIR_M		BIT(4)
+#define GLGEN_GPIO_CTL_PIN_FUNC_S		8
+#define GLGEN_GPIO_CTL_PIN_FUNC_M		ICE_M(0xF, 8)
 #define GLGEN_RSTAT				0x000B8188
 #define GLGEN_RSTAT_DEVSTATE_M			ICE_M(0x3, 0)
 #define GLGEN_RSTCTL				0x000B8180
@@ -203,6 +207,7 @@
 #define PFINT_MBX_CTL_CAUSE_ENA_M		BIT(30)
 #define PFINT_OICR				0x0016CA00
 #define PFINT_OICR_TSYN_TX_M			BIT(11)
+#define PFINT_OICR_TSYN_EVNT_M			BIT(12)
 #define PFINT_OICR_ECC_ERR_M			BIT(16)
 #define PFINT_OICR_MAL_DETECT_M			BIT(19)
 #define PFINT_OICR_GRST_M			BIT(20)
@@ -434,10 +439,18 @@
 #define GLV_UPRCL(_i)				(0x003B2000 + ((_i) * 8))
 #define GLV_UPTCL(_i)				(0x0030A000 + ((_i) * 8))
 #define PRTRPB_RDPC				0x000AC260
+#define GLTSYN_AUX_IN_0(_i)			(0x000889D8 + ((_i) * 4))
+#define GLTSYN_AUX_IN_0_INT_ENA_M		BIT(4)
+#define GLTSYN_AUX_OUT_0(_i)			(0x00088998 + ((_i) * 4))
+#define GLTSYN_AUX_OUT_0_OUT_ENA_M		BIT(0)
+#define GLTSYN_AUX_OUT_0_OUTMOD_M		ICE_M(0x3, 1)
+#define GLTSYN_CLKO_0(_i)			(0x000889B8 + ((_i) * 4))
 #define GLTSYN_CMD				0x00088810
 #define GLTSYN_CMD_SYNC				0x00088814
 #define GLTSYN_ENA(_i)				(0x00088808 + ((_i) * 4))
 #define GLTSYN_ENA_TSYN_ENA_M			BIT(0)
+#define GLTSYN_EVNT_H_0(_i)			(0x00088970 + ((_i) * 4))
+#define GLTSYN_EVNT_L_0(_i)			(0x00088968 + ((_i) * 4))
 #define GLTSYN_INCVAL_H(_i)			(0x00088920 + ((_i) * 4))
 #define GLTSYN_INCVAL_L(_i)			(0x00088918 + ((_i) * 4))
 #define GLTSYN_SHADJ_H(_i)			(0x00088910 + ((_i) * 4))
@@ -446,7 +459,12 @@
 #define GLTSYN_SHTIME_H(_i)			(0x000888F0 + ((_i) * 4))
 #define GLTSYN_SHTIME_L(_i)			(0x000888E8 + ((_i) * 4))
 #define GLTSYN_STAT(_i)				(0x000888C0 + ((_i) * 4))
+#define GLTSYN_STAT_EVENT0_M			BIT(0)
+#define GLTSYN_STAT_EVENT1_M			BIT(1)
+#define GLTSYN_STAT_EVENT2_M			BIT(2)
 #define GLTSYN_SYNC_DLAY			0x00088818
+#define GLTSYN_TGT_H_0(_i)			(0x00088930 + ((_i) * 4))
+#define GLTSYN_TGT_L_0(_i)			(0x00088928 + ((_i) * 4))
 #define GLTSYN_TIME_H(_i)			(0x000888D8 + ((_i) * 4))
 #define GLTSYN_TIME_L(_i)			(0x000888D0 + ((_i) * 4))
 #define PFTSYN_SEM				0x00088880
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d0eb158e3e2d..ff057bdc96e2 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2832,6 +2832,18 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 		ice_ptp_process_ts(pf);
 	}
 
+	if (oicr & PFINT_OICR_TSYN_EVNT_M) {
+		u8 tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+		u32 gltsyn_stat = rd32(hw, GLTSYN_STAT(tmr_idx));
+
+		/* Save EVENTs from GTSYN register */
+		pf->ptp.ext_ts_irq |= gltsyn_stat & (GLTSYN_STAT_EVENT0_M |
+						     GLTSYN_STAT_EVENT1_M |
+						     GLTSYN_STAT_EVENT2_M);
+		ena_mask &= ~PFINT_OICR_TSYN_EVNT_M;
+		kthread_queue_work(pf->ptp.kworker, &pf->ptp.extts_work);
+	}
+
 #define ICE_AUX_CRIT_ERR (PFINT_OICR_PE_CRITERR_M | PFINT_OICR_HMC_ERR_M | PFINT_OICR_PE_PUSH_M)
 	if (oicr & ICE_AUX_CRIT_ERR) {
 		struct iidc_event *event;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 0e1e60e3c2a2..af672f23932a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -4,6 +4,8 @@
 #include "ice.h"
 #include "ice_lib.h"
 
+#define E810_OUT_PROP_DELAY_NS 1
+
 /**
  * ice_set_tx_tstamp - Enable or disable Tx timestamping
  * @pf: The PF pointer to search in
@@ -488,6 +490,254 @@ static int ice_ptp_adjfine(struct ptp_clock_info *info, long scaled_ppm)
 	return 0;
 }
 
+/**
+ * ice_ptp_extts_work - Workqueue task function
+ * @work: external timestamp work structure
+ *
+ * Service for PTP external clock event
+ */
+static void ice_ptp_extts_work(struct kthread_work *work)
+{
+	struct ice_ptp *ptp = container_of(work, struct ice_ptp, extts_work);
+	struct ice_pf *pf = container_of(ptp, struct ice_pf, ptp);
+	struct ptp_clock_event event;
+	struct ice_hw *hw = &pf->hw;
+	u8 chan, tmr_idx;
+	u32 hi, lo;
+
+	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+	/* Event time is captured by one of the two matched registers
+	 *      GLTSYN_EVNT_L: 32 LSB of sampled time event
+	 *      GLTSYN_EVNT_H: 32 MSB of sampled time event
+	 * Event is defined in GLTSYN_EVNT_0 register
+	 */
+	for (chan = 0; chan < GLTSYN_EVNT_H_IDX_MAX; chan++) {
+		/* Check if channel is enabled */
+		if (pf->ptp.ext_ts_irq & (1 << chan)) {
+			lo = rd32(hw, GLTSYN_EVNT_L(chan, tmr_idx));
+			hi = rd32(hw, GLTSYN_EVNT_H(chan, tmr_idx));
+			event.timestamp = (((u64)hi) << 32) | lo;
+			event.type = PTP_CLOCK_EXTTS;
+			event.index = chan;
+
+			/* Fire event */
+			ptp_clock_event(pf->ptp.clock, &event);
+			pf->ptp.ext_ts_irq &= ~(1 << chan);
+		}
+	}
+}
+
+/**
+ * ice_ptp_cfg_extts - Configure EXTTS pin and channel
+ * @pf: Board private structure
+ * @ena: true to enable; false to disable
+ * @chan: GPIO channel (0-3)
+ * @gpio_pin: GPIO pin
+ * @extts_flags: request flags from the ptp_extts_request.flags
+ */
+static int
+ice_ptp_cfg_extts(struct ice_pf *pf, bool ena, unsigned int chan, u32 gpio_pin,
+		  unsigned int extts_flags)
+{
+	u32 func, aux_reg, gpio_reg, irq_reg;
+	struct ice_hw *hw = &pf->hw;
+	u8 tmr_idx;
+
+	if (chan > (unsigned int)pf->ptp.info.n_ext_ts)
+		return -EINVAL;
+
+	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+
+	irq_reg = rd32(hw, PFINT_OICR_ENA);
+
+	if (ena) {
+		/* Enable the interrupt */
+		irq_reg |= PFINT_OICR_TSYN_EVNT_M;
+		aux_reg = GLTSYN_AUX_IN_0_INT_ENA_M;
+
+#define GLTSYN_AUX_IN_0_EVNTLVL_RISING_EDGE	BIT(0)
+#define GLTSYN_AUX_IN_0_EVNTLVL_FALLING_EDGE	BIT(1)
+
+		/* set event level to requested edge */
+		if (extts_flags & PTP_FALLING_EDGE)
+			aux_reg |= GLTSYN_AUX_IN_0_EVNTLVL_FALLING_EDGE;
+		if (extts_flags & PTP_RISING_EDGE)
+			aux_reg |= GLTSYN_AUX_IN_0_EVNTLVL_RISING_EDGE;
+
+		/* Write GPIO CTL reg.
+		 * 0x1 is input sampled by EVENT register(channel)
+		 * + num_in_channels * tmr_idx
+		 */
+		func = 1 + chan + (tmr_idx * 3);
+		gpio_reg = ((func << GLGEN_GPIO_CTL_PIN_FUNC_S) &
+			    GLGEN_GPIO_CTL_PIN_FUNC_M);
+		pf->ptp.ext_ts_chan |= (1 << chan);
+	} else {
+		/* clear the values we set to reset defaults */
+		aux_reg = 0;
+		gpio_reg = 0;
+		pf->ptp.ext_ts_chan &= ~(1 << chan);
+		if (!pf->ptp.ext_ts_chan)
+			irq_reg &= ~PFINT_OICR_TSYN_EVNT_M;
+	}
+
+	wr32(hw, PFINT_OICR_ENA, irq_reg);
+	wr32(hw, GLTSYN_AUX_IN(chan, tmr_idx), aux_reg);
+	wr32(hw, GLGEN_GPIO_CTL(gpio_pin), gpio_reg);
+
+	return 0;
+}
+
+/**
+ * ice_ptp_cfg_clkout - Configure clock to generate periodic wave
+ * @pf: Board private structure
+ * @chan: GPIO channel (0-3)
+ * @config: desired periodic clk configuration. NULL will disable channel
+ * @store: If set to true the values will be stored
+ *
+ * Configure the internal clock generator modules to generate the clock wave of
+ * specified period.
+ */
+static int ice_ptp_cfg_clkout(struct ice_pf *pf, unsigned int chan,
+			      struct ice_perout_channel *config, bool store)
+{
+	u64 current_time, period, start_time;
+	struct ice_hw *hw = &pf->hw;
+	u32 func, val, gpio_pin;
+	u8 tmr_idx;
+
+	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
+
+	/* 0. Reset mode & out_en in AUX_OUT */
+	wr32(hw, GLTSYN_AUX_OUT(chan, tmr_idx), 0);
+
+	/* If we're disabling the output, clear out CLKO and TGT and keep
+	 * output level low
+	 */
+	if (!config || !config->ena) {
+		wr32(hw, GLTSYN_CLKO(chan, tmr_idx), 0);
+		wr32(hw, GLTSYN_TGT_L(chan, tmr_idx), 0);
+		wr32(hw, GLTSYN_TGT_H(chan, tmr_idx), 0);
+
+		val = GLGEN_GPIO_CTL_PIN_DIR_M;
+		gpio_pin = pf->ptp.perout_channels[chan].gpio_pin;
+		wr32(hw, GLGEN_GPIO_CTL(gpio_pin), val);
+
+		/* Store the value if requested */
+		if (store)
+			memset(&pf->ptp.perout_channels[chan], 0,
+			       sizeof(struct ice_perout_channel));
+
+		return 0;
+	}
+	period = config->period;
+	start_time = config->start_time;
+	gpio_pin = config->gpio_pin;
+
+	/* 1. Write clkout with half of required period value */
+	if (period & 0x1) {
+		dev_err(ice_pf_to_dev(pf), "CLK Period must be an even value\n");
+		goto err;
+	}
+
+	period >>= 1;
+
+	/* For proper operation, the GLTSYN_CLKO must be larger than clock tick
+	 */
+#define MIN_PULSE 3
+	if (period <= MIN_PULSE || period > U32_MAX) {
+		dev_err(ice_pf_to_dev(pf), "CLK Period must be > %d && < 2^33",
+			MIN_PULSE * 2);
+		goto err;
+	}
+
+	wr32(hw, GLTSYN_CLKO(chan, tmr_idx), lower_32_bits(period));
+
+	/* Allow time for programming before start_time is hit */
+	current_time = ice_ptp_read_src_clk_reg(pf, NULL);
+
+	/* if start time is in the past start the timer at the nearest second
+	 * maintaining phase
+	 */
+	if (start_time < current_time)
+		start_time = roundup(current_time + NSEC_PER_MSEC,
+				     NSEC_PER_SEC) + start_time % NSEC_PER_SEC;
+
+	start_time -= E810_OUT_PROP_DELAY_NS;
+
+	/* 2. Write TARGET time */
+	wr32(hw, GLTSYN_TGT_L(chan, tmr_idx), lower_32_bits(start_time));
+	wr32(hw, GLTSYN_TGT_H(chan, tmr_idx), upper_32_bits(start_time));
+
+	/* 3. Write AUX_OUT register */
+	val = GLTSYN_AUX_OUT_0_OUT_ENA_M | GLTSYN_AUX_OUT_0_OUTMOD_M;
+	wr32(hw, GLTSYN_AUX_OUT(chan, tmr_idx), val);
+
+	/* 4. write GPIO CTL reg */
+	func = 8 + chan + (tmr_idx * 4);
+	val = GLGEN_GPIO_CTL_PIN_DIR_M |
+	      ((func << GLGEN_GPIO_CTL_PIN_FUNC_S) & GLGEN_GPIO_CTL_PIN_FUNC_M);
+	wr32(hw, GLGEN_GPIO_CTL(gpio_pin), val);
+
+	/* Store the value if requested */
+	if (store) {
+		memcpy(&pf->ptp.perout_channels[chan], config,
+		       sizeof(struct ice_perout_channel));
+		pf->ptp.perout_channels[chan].start_time %= NSEC_PER_SEC;
+	}
+
+	return 0;
+err:
+	dev_err(ice_pf_to_dev(pf), "PTP failed to cfg per_clk\n");
+	return -EFAULT;
+}
+
+/**
+ * ice_ptp_gpio_enable_e810 - Enable/disable ancillary features of PHC
+ * @info: the driver's PTP info structure
+ * @rq: The requested feature to change
+ * @on: Enable/disable flag
+ */
+static int
+ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
+			 struct ptp_clock_request *rq, int on)
+{
+	struct ice_pf *pf = ptp_info_to_pf(info);
+	struct ice_perout_channel clk_cfg = {0};
+	unsigned int chan;
+	u32 gpio_pin;
+	int err;
+
+	switch (rq->type) {
+	case PTP_CLK_REQ_PEROUT:
+		chan = rq->perout.index;
+		if (chan == PPS_CLK_GEN_CHAN)
+			clk_cfg.gpio_pin = PPS_PIN_INDEX;
+		else
+			clk_cfg.gpio_pin = chan;
+
+		clk_cfg.period = ((rq->perout.period.sec * NSEC_PER_SEC) +
+				   rq->perout.period.nsec);
+		clk_cfg.start_time = ((rq->perout.start.sec * NSEC_PER_SEC) +
+				       rq->perout.start.nsec);
+		clk_cfg.ena = !!on;
+
+		err = ice_ptp_cfg_clkout(pf, chan, &clk_cfg, true);
+		break;
+	case PTP_CLK_REQ_EXTTS:
+		chan = rq->extts.index;
+		gpio_pin = chan;
+
+		err = ice_ptp_cfg_extts(pf, !!on, chan, gpio_pin,
+					rq->extts.flags);
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	return err;
+}
+
 /**
  * ice_ptp_gettimex64 - Get the time of the clock
  * @info: the driver's PTP info structure
@@ -745,6 +995,34 @@ void ice_ptp_rx_hwtstamp(struct ice_ring *rx_ring,
 	}
 }
 
+/**
+ * ice_ptp_setup_pins_e810 - Setup PTP pins in sysfs
+ * @info: PTP clock capabilities
+ */
+static void ice_ptp_setup_pins_e810(struct ptp_clock_info *info)
+{
+	info->n_per_out = E810_N_PER_OUT;
+	info->n_ext_ts = E810_N_EXT_TS;
+}
+
+/**
+ * ice_ptp_set_funcs_e810 - Set specialized functions for E810 support
+ * @pf: Board private structure
+ * @info: PTP info to fill
+ *
+ * Assign functions to the PTP capabiltiies structure for E810 devices.
+ * Functions which operate across all device families should be set directly
+ * in ice_ptp_set_caps. Only add functions here which are distinct for e810
+ * devices.
+ */
+static void
+ice_ptp_set_funcs_e810(struct ice_pf *pf, struct ptp_clock_info *info)
+{
+	info->enable = ice_ptp_gpio_enable_e810;
+
+	ice_ptp_setup_pins_e810(info);
+}
+
 /**
  * ice_ptp_set_caps - Set PTP capabilities
  * @pf: Board private structure
@@ -762,6 +1040,8 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
 	info->adjfine = ice_ptp_adjfine;
 	info->gettimex64 = ice_ptp_gettimex64;
 	info->settime64 = ice_ptp_settime64;
+
+	ice_ptp_set_funcs_e810(pf, info);
 }
 
 /**
@@ -788,6 +1068,17 @@ static long ice_ptp_create_clock(struct ice_pf *pf)
 	info = &pf->ptp.info;
 	dev = ice_pf_to_dev(pf);
 
+	/* Allocate memory for kernel pins interface */
+	if (info->n_pins) {
+		info->pin_config = devm_kcalloc(dev, info->n_pins,
+						sizeof(*info->pin_config),
+						GFP_KERNEL);
+		if (!info->pin_config) {
+			info->n_pins = 0;
+			return -ENOMEM;
+		}
+	}
+
 	/* Attempt to register the clock before enabling the hardware. */
 	clock = ptp_clock_register(info, dev);
 	if (IS_ERR(clock))
@@ -1208,6 +1499,7 @@ void ice_ptp_init(struct ice_pf *pf)
 
 	/* Initialize work functions */
 	kthread_init_delayed_work(&pf->ptp.work, ice_ptp_periodic_work);
+	kthread_init_work(&pf->ptp.extts_work, ice_ptp_extts_work);
 
 	/* Allocate a kworker for handling work required for the ports
 	 * connected to the PTP hardware clock.
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 30648a00fda5..1205d0ba5800 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -9,6 +9,21 @@
 
 #include "ice_ptp_hw.h"
 
+enum ice_ptp_pin {
+	GPIO_20 = 0,
+	GPIO_21,
+	GPIO_22,
+	GPIO_23,
+	NUM_ICE_PTP_PIN
+};
+
+struct ice_perout_channel {
+	bool ena;
+	u32 gpio_pin;
+	u64 period;
+	u64 start_time;
+};
+
 /* The ice hardware captures Tx hardware timestamps in the PHY. The timestamp
  * is stored in a buffer of registers. Depending on the specific hardware,
  * this buffer might be shared across multiple PHY ports.
@@ -82,12 +97,18 @@ struct ice_ptp_port {
 	struct ice_ptp_tx tx;
 };
 
+#define GLTSYN_TGT_H_IDX_MAX		4
+
 /**
  * struct ice_ptp - data used for integrating with CONFIG_PTP_1588_CLOCK
  * @port: data for the PHY port initialization procedure
  * @work: delayed work function for periodic tasks
+ * @extts_work: work function for handling external Tx timestamps
  * @cached_phc_time: a cached copy of the PHC time for timestamp extension
+ * @ext_ts_chan: the external timestamp channel in use
+ * @ext_ts_irq: the external timestamp IRQ in use
  * @kworker: kwork thread for handling periodic work
+ * @perout_channels: periodic output data
  * @info: structure defining PTP hardware capabilities
  * @clock: pointer to registered PTP clock device
  * @tstamp_config: hardware timestamping configuration
@@ -95,8 +116,12 @@ struct ice_ptp_port {
 struct ice_ptp {
 	struct ice_ptp_port port;
 	struct kthread_delayed_work work;
+	struct kthread_work extts_work;
 	u64 cached_phc_time;
+	u8 ext_ts_chan;
+	u8 ext_ts_irq;
 	struct kthread_worker *kworker;
+	struct ice_perout_channel perout_channels[GLTSYN_TGT_H_IDX_MAX];
 	struct ptp_clock_info info;
 	struct ptp_clock *clock;
 	struct hwtstamp_config tstamp_config;
@@ -115,6 +140,24 @@ struct ice_ptp {
 #define PTP_SHARED_CLK_IDX_VALID	BIT(31)
 #define ICE_PTP_TS_VALID		BIT(0)
 
+/* Per-channel register definitions */
+#define GLTSYN_AUX_OUT(_chan, _idx)	(GLTSYN_AUX_OUT_0(_idx) + ((_chan) * 8))
+#define GLTSYN_AUX_IN(_chan, _idx)	(GLTSYN_AUX_IN_0(_idx) + ((_chan) * 8))
+#define GLTSYN_CLKO(_chan, _idx)	(GLTSYN_CLKO_0(_idx) + ((_chan) * 8))
+#define GLTSYN_TGT_L(_chan, _idx)	(GLTSYN_TGT_L_0(_idx) + ((_chan) * 16))
+#define GLTSYN_TGT_H(_chan, _idx)	(GLTSYN_TGT_H_0(_idx) + ((_chan) * 16))
+#define GLTSYN_EVNT_L(_chan, _idx)	(GLTSYN_EVNT_L_0(_idx) + ((_chan) * 16))
+#define GLTSYN_EVNT_H(_chan, _idx)	(GLTSYN_EVNT_H_0(_idx) + ((_chan) * 16))
+#define GLTSYN_EVNT_H_IDX_MAX		3
+
+/* Pin definitions for PTP PPS out */
+#define PPS_CLK_GEN_CHAN		3
+#define PPS_CLK_SRC_CHAN		2
+#define PPS_PIN_INDEX			5
+#define TIME_SYNC_PIN_INDEX		4
+#define E810_N_EXT_TS			3
+#define E810_N_PER_OUT			4
+
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
 struct ice_pf;
 int ice_ptp_set_ts_config(struct ice_pf *pf, struct ifreq *ifr);

base-commit: afcc4ad3acede542d2b26689f3652b7b43db47f6
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
