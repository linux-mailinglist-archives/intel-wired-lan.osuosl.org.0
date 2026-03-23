Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AFjNDPG9wWlSWAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 23:25:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DCD2FE383
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 23:25:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A74740D35;
	Mon, 23 Mar 2026 22:25:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gOLE81JUNH9G; Mon, 23 Mar 2026 22:25:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3335B40D37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774304750;
	bh=0/dhRr6VDluE3gW0xLlbaV2NpCjo8FpEUjH2j2oIg6s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M+X/GztZhijVA2s15S4VeBIOlbhKvcwH6O+fiDNcy2DRsdbUTMoHULVUfr8hxRZ05
	 NhmYnGsn60ZDKCXKsToFQ9BmJCCqav6hg+4zqIIej00Dhs6N/TM7JNkbG2wO9EJx8W
	 d0J8DlxbEgw13cyUVWsfXp5x9j6vO1sjtGVCaMddSn8DFjo+kPLMIxBAVzLtwKAdwC
	 ZFRwmHib8462lYFspwZp1SRJiUDarxzT3xyCORjfvNiSr/RYQx+U9/79naFWhtYXXR
	 udyBrWa15u2gcFdKZuE5VIIVy3YRc0D38j6AFhcWWo3dZWfhRQstasMH6oFlK5SK4o
	 T6/Qba+y3fg9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3335B40D37;
	Mon, 23 Mar 2026 22:25:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id EF9C4F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 22:25:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D574640D32
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 22:25:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 57C6ZgColN1E for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 22:25:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CDBCE40D20
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDBCE40D20
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CDBCE40D20
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 22:25:46 +0000 (UTC)
X-CSE-ConnectionGUID: MZZcRG9ISqGfJAI+Sz5+tg==
X-CSE-MsgGUID: ulTKYfdbQeOZitiDiGbGxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="75221908"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="75221908"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 15:25:46 -0700
X-CSE-ConnectionGUID: UMdwLwAmRoWTxG0KWEGwjA==
X-CSE-MsgGUID: JnMhHZWLTG64FXLaaG4wOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="247207439"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by fmviesa002.fm.intel.com with ESMTP; 23 Mar 2026 15:25:41 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Mon, 23 Mar 2026 23:21:30 +0100
Message-Id: <20260323222133.1796997-6-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260323222133.1796997-1-grzegorz.nitka@intel.com>
References: <20260323222133.1796997-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774304746; x=1805840746;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8ceLVs2JsObasP3Lu+oXmghvt3ALk1HbwW5kHqK/T4Q=;
 b=FsOjI9O9nnkx/8g341uS3CDLnDYeQA4rb6Rk+Oq+L+IbhupgERmEWFdc
 E0A6iTQ6Tv9WMT42MKaKZG+dePJBHmrQAv9R3XzZsVWr+ypTgKpmju9/h
 TjJ15WHTw176LNruWblVuWUUgEMwvCWGTZxw0/1kAE9B5tQ+lx2nSzD8c
 GS3ID4sJ8WO6p6FnloWROeXuCrXCto59KVa+uiez9QuU5Zi2KsTFKQO7d
 xwp7IqVhXb3nqFjzqABKyBMzsG1mB8FqYAotdRPcSTu5ODSAgF+J6eLf+
 dUXpo6RIym46eMbzKeybjXLuXMTHQNZx/oAStb39L/as55i0ENAsIMOp9
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FsOjI9O9
Subject: [Intel-wired-lan] [PATCH v3 net-next 5/8] ice: add TX clock (TXC)
 DPLL interface for E825 devices
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
Cc: ivecera@redhat.com, vadim.fedorenko@linux.dev, kuba@kernel.org,
 jiri@resnulli.us, edumazet@google.com, przemyslaw.kitszel@intel.com,
 richardcochran@gmail.com, donald.hunter@gmail.com,
 linux-kernel@vger.kernel.org, arkadiusz.kubalewski@intel.com,
 andrew+netdev@lunn.ch, intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Prathosh.Satish@microchip.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A6DCD2FE383
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce a TX clock DPLL instance and pins for E825-based devices.
The TXC domain exposes two reference pins:
  - EXT_EREF0 (board external electrical reference)
  - SYNCE (port-derived reference, described via fwnode)

A new pin type (ICE_DPLL_PIN_TYPE_TXCLK) and pin ops are added. The
SYNCE pin is registered when its fwnode becomes available, while
EXT_EREF0 is registered directly. The notifier worker is updated to
register/unregister TXC pins and to ignore notifications that are a
side effect of internal registration by checking the src_id.

A new per-pin attribute tracks the TX reference source
(enum ice_e825c_ref_clk). The TXC DPLL device is created and torn
down alongside existing PPS/EEC devices on E825, with specific init
and deinit flows for the TXC pins.

Current TXC pin state getters return DISCONNECTED as a placeholder;
hardware-backed state reporting will be implemented in a follow-up.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c   | 296 ++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_dpll.h   |   6 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   7 +
 3 files changed, 286 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 62f75701d652..72518fd1398d 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -19,6 +19,11 @@
 #define ICE_DPLL_SW_PIN_INPUT_BASE_QSFP		6
 #define ICE_DPLL_SW_PIN_OUTPUT_BASE		0
 
+#define E825_EXT_EREF_PIN_IDX			0
+#define E825_EXT_SYNCE_PIN_IDX			1
+#define E825_RCLK_PARENT_0_PIN_IDX		0
+#define E825_RCLK_PARENT_1_PIN_IDX		1
+
 #define ICE_DPLL_PIN_SW_INPUT_ABS(in_idx) \
 	(ICE_DPLL_SW_PIN_INPUT_BASE_SFP + (in_idx))
 
@@ -57,6 +62,7 @@
  * @ICE_DPLL_PIN_TYPE_OUTPUT: output pin
  * @ICE_DPLL_PIN_TYPE_RCLK_INPUT: recovery clock input pin
  * @ICE_DPLL_PIN_TYPE_SOFTWARE: software controlled SMA/U.FL pins
+ * @ICE_DPLL_PIN_TYPE_TXCLK: transmit clock reference input pin
  */
 enum ice_dpll_pin_type {
 	ICE_DPLL_PIN_INVALID,
@@ -64,6 +70,7 @@ enum ice_dpll_pin_type {
 	ICE_DPLL_PIN_TYPE_OUTPUT,
 	ICE_DPLL_PIN_TYPE_RCLK_INPUT,
 	ICE_DPLL_PIN_TYPE_SOFTWARE,
+	ICE_DPLL_PIN_TYPE_TXCLK,
 };
 
 static const char * const pin_type_name[] = {
@@ -71,10 +78,13 @@ static const char * const pin_type_name[] = {
 	[ICE_DPLL_PIN_TYPE_OUTPUT] = "output",
 	[ICE_DPLL_PIN_TYPE_RCLK_INPUT] = "rclk-input",
 	[ICE_DPLL_PIN_TYPE_SOFTWARE] = "software",
+	[ICE_DPLL_PIN_TYPE_TXCLK] = "txclk-input",
 };
 
 static const char * const ice_dpll_sw_pin_sma[] = { "SMA1", "SMA2" };
 static const char * const ice_dpll_sw_pin_ufl[] = { "U.FL1", "U.FL2" };
+static const char * const ice_dpll_ext_eref_pin = "EXT_EREF0";
+static const char * const ice_dpll_fwnode_ext_synce = "clk_ref_synce";
 
 static const struct dpll_pin_frequency ice_esync_range[] = {
 	DPLL_PIN_FREQUENCY_RANGE(0, DPLL_PIN_FREQUENCY_1_HZ),
@@ -2517,12 +2527,75 @@ ice_dpll_rclk_state_on_pin_get(const struct dpll_pin *pin, void *pin_priv,
 	return ret;
 }
 
+/**
+ * ice_dpll_txclk_state_on_dpll_set - set a state on TX clk pin
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @state: state to be set on pin
+ * @extack: error reporting
+ *
+ * Dpll subsystem callback, set a state of a Tx reference clock pin
+ *
+ * Return:
+ * * negative - failure
+ */
+static int
+ice_dpll_txclk_state_on_dpll_set(const struct dpll_pin *pin, void *pin_priv,
+				 const struct dpll_device *dpll,
+				 void *dpll_priv, enum dpll_pin_state state,
+				 struct netlink_ext_ack *extack)
+{
+	/*
+	 * TODO: set HW accordingly to selected TX reference clock.
+	 * To be added in the follow up patches.
+	 */
+	return -EOPNOTSUPP;
+}
+
+/**
+ * ice_dpll_txclk_state_on_dpll_get - get a state of Tx clk reference pin
+ * @pin: pointer to a pin
+ * @pin_priv: private data pointer passed on pin registration
+ * @dpll: registered dpll pointer
+ * @dpll_priv: private data pointer passed on dpll registration
+ * @state: on success holds pin state on parent pin
+ * @extack: error reporting
+ *
+ * dpll subsystem callback, get a state of a TX clock reference pin.
+ *
+ * Return:
+ * * 0 - success
+ */
+static int
+ice_dpll_txclk_state_on_dpll_get(const struct dpll_pin *pin, void *pin_priv,
+				 const struct dpll_device *dpll,
+				 void *dpll_priv,
+				 enum dpll_pin_state *state,
+				 struct netlink_ext_ack *extack)
+{
+	/*
+	 * TODO: query HW status to determine if the TX reference is selected.
+	 * To be added in the follow up patches.
+	 */
+	*state = DPLL_PIN_STATE_DISCONNECTED;
+
+	return 0;
+}
+
 static const struct dpll_pin_ops ice_dpll_rclk_ops = {
 	.state_on_pin_set = ice_dpll_rclk_state_on_pin_set,
 	.state_on_pin_get = ice_dpll_rclk_state_on_pin_get,
 	.direction_get = ice_dpll_input_direction,
 };
 
+static const struct dpll_pin_ops ice_dpll_txclk_ops = {
+	.state_on_dpll_set = ice_dpll_txclk_state_on_dpll_set,
+	.state_on_dpll_get = ice_dpll_txclk_state_on_dpll_get,
+	.direction_get = ice_dpll_input_direction,
+};
+
 static const struct dpll_pin_ops ice_dpll_pin_sma_ops = {
 	.state_on_dpll_set = ice_dpll_sma_pin_state_set,
 	.state_on_dpll_get = ice_dpll_sw_pin_state_get,
@@ -3023,9 +3096,13 @@ ice_dpll_unregister_pins(struct dpll_device *dpll, struct ice_dpll_pin *pins,
 {
 	int i;
 
-	for (i = 0; i < count; i++)
-		if (!pins[i].hidden)
-			dpll_pin_unregister(dpll, pins[i].pin, ops, &pins[i]);
+	for (i = 0; i < count; i++) {
+		if (pins[i].hidden)
+			continue;
+		if (IS_ERR_OR_NULL(pins[i].pin))
+			continue;
+		dpll_pin_unregister(dpll, pins[i].pin, ops, &pins[i]);
+	}
 }
 
 /**
@@ -3199,19 +3276,40 @@ static bool ice_dpll_is_fwnode_pin(struct ice_dpll_pin *pin)
 	return !IS_ERR_OR_NULL(pin->fwnode);
 }
 
+static bool ice_dpll_fwnode_eq(const struct fwnode_handle *a,
+			       const struct fwnode_handle *b)
+{
+	return a && b && a == b;
+}
+
 static void ice_dpll_pin_notify_work(struct work_struct *work)
 {
 	struct ice_dpll_pin_work *w = container_of(work,
 						   struct ice_dpll_pin_work,
 						   work);
 	struct ice_dpll_pin *pin, *parent = w->pin;
+	bool is_tx_synce_parent = false;
 	struct ice_pf *pf = parent->pf;
+	bool is_rclk_parent = false;
 	int ret;
 
 	wait_for_completion(&pf->dplls.dpll_init);
 	if (!test_bit(ICE_FLAG_DPLL, pf->flags))
 		goto out; /* DPLL initialization failed */
 
+	/* Decide which parent we are handling, defensively checking FWNs */
+	is_rclk_parent =
+		ice_dpll_fwnode_eq(parent->fwnode,
+				   pf->dplls.inputs[E825_RCLK_PARENT_0_PIN_IDX].fwnode) ||
+		ice_dpll_fwnode_eq(parent->fwnode,
+				   pf->dplls.inputs[E825_RCLK_PARENT_1_PIN_IDX].fwnode);
+
+	is_tx_synce_parent =
+		ice_dpll_fwnode_eq(parent->fwnode,
+				   pf->dplls.txclks[E825_EXT_SYNCE_PIN_IDX].fwnode);
+	if (!is_rclk_parent && !is_tx_synce_parent)
+		goto out;
+
 	switch (w->action) {
 	case DPLL_PIN_CREATED:
 		if (!IS_ERR_OR_NULL(parent->pin)) {
@@ -3228,16 +3326,28 @@ static void ice_dpll_pin_notify_work(struct work_struct *work)
 			goto out;
 		}
 
-		/* Register rclk pin */
-		pin = &pf->dplls.rclk;
-		ret = dpll_pin_on_pin_register(parent->pin, pin->pin,
-					       &ice_dpll_rclk_ops, pin);
-		if (ret) {
-			dev_err(ice_pf_to_dev(pf),
-				"Failed to register pin: %pe\n", ERR_PTR(ret));
-			dpll_pin_put(parent->pin, &parent->tracker);
-			parent->pin = NULL;
-			goto out;
+		if (is_rclk_parent) {
+			/* Register rclk pin via on-pin relationship */
+			pin = &pf->dplls.rclk;
+			ret = dpll_pin_on_pin_register(parent->pin, pin->pin,
+						       &ice_dpll_rclk_ops, pin);
+			if (ret) {
+				dev_err(ice_pf_to_dev(pf),
+					"RCLK pin register failed: %pe\n",
+					ERR_PTR(ret));
+				goto drop_parent_ref;
+			}
+		} else if (is_tx_synce_parent) {
+			/* Register TX-CLK SYNCE pin directly to TXC DPLL */
+			pin = &pf->dplls.txclks[E825_EXT_SYNCE_PIN_IDX];
+			ret = dpll_pin_register(pf->dplls.txc.dpll, pin->pin,
+						&ice_dpll_txclk_ops, pin);
+			if (ret) {
+				dev_err(ice_pf_to_dev(pf),
+					"TX SYNCE pin register failed: %pe\n",
+					ERR_PTR(ret));
+				goto drop_parent_ref;
+			}
 		}
 		break;
 	case DPLL_PIN_DELETED:
@@ -3246,11 +3356,18 @@ static void ice_dpll_pin_notify_work(struct work_struct *work)
 			goto out;
 		}
 
-		/* Unregister rclk pin */
-		pin = &pf->dplls.rclk;
-		dpll_pin_on_pin_unregister(parent->pin, pin->pin,
-					   &ice_dpll_rclk_ops, pin);
-
+		if (is_rclk_parent) {
+			/* Unregister rclk pin */
+			pin = &pf->dplls.rclk;
+			dpll_pin_on_pin_unregister(parent->pin, pin->pin,
+						   &ice_dpll_rclk_ops, pin);
+		} else if (is_tx_synce_parent) {
+			/* Unregister TX-CLK SYNCE pin from TXC DPLL */
+			pin = &pf->dplls.txclks[E825_EXT_SYNCE_PIN_IDX];
+			dpll_pin_unregister(pf->dplls.txc.dpll, pin->pin,
+					    &ice_dpll_txclk_ops, pin);
+		}
+drop_parent_ref:
 		/* Drop fwnode pin reference */
 		dpll_pin_put(parent->pin, &parent->tracker);
 		parent->pin = NULL;
@@ -3276,6 +3393,12 @@ static int ice_dpll_pin_notify(struct notifier_block *nb, unsigned long action,
 	if (pin->fwnode != info->fwnode)
 		return NOTIFY_DONE; /* Not this pin */
 
+	/* Ignore notification which are the outcome of internal pin
+	 * registration/unregistration calls - synce pin case.
+	 */
+	if (info->src_id == pin->pf->dplls.clock_id)
+		return NOTIFY_DONE;
+
 	work = kzalloc_obj(*work);
 	if (!work)
 		return NOTIFY_DONE;
@@ -3401,6 +3524,19 @@ ice_dpll_deinit_fwnode_pins(struct ice_pf *pf, struct ice_dpll_pin *pins,
 	destroy_workqueue(pf->dplls.wq);
 }
 
+static int ice_dpll_deinit_txclk_pins(struct ice_pf *pf)
+{
+	struct ice_dpll_pin *synce_pin = &pf->dplls.txclks[E825_EXT_SYNCE_PIN_IDX];
+	struct ice_dpll *dt = &pf->dplls.txc;
+
+	ice_dpll_unregister_pins(dt->dpll, pf->dplls.txclks,
+				 &ice_dpll_txclk_ops,
+				 ARRAY_SIZE(pf->dplls.txclks));
+	ice_dpll_release_pins(&pf->dplls.txclks[E825_EXT_EREF_PIN_IDX], 1);
+	ice_dpll_deinit_fwnode_pin(synce_pin);
+	return 0;
+}
+
 /**
  * ice_dpll_deinit_pins - deinitialize direct pins
  * @pf: board private structure
@@ -3420,8 +3556,10 @@ static void ice_dpll_deinit_pins(struct ice_pf *pf, bool cgu)
 	struct ice_dpll *dp = &d->pps;
 
 	ice_dpll_deinit_rclk_pin(pf);
-	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
+		ice_dpll_deinit_txclk_pins(pf);
 		ice_dpll_deinit_fwnode_pins(pf, pf->dplls.inputs, 0);
+	}
 	if (cgu) {
 		ice_dpll_unregister_pins(dp->dpll, inputs, &ice_dpll_input_ops,
 					 num_inputs);
@@ -3552,6 +3690,58 @@ ice_dpll_init_fwnode_pins(struct ice_pf *pf, struct ice_dpll_pin *pins,
 	return ret;
 }
 
+static int ice_dpll_init_txclk_pins(struct ice_pf *pf, int start_idx)
+{
+	struct ice_dpll_pin *ref_pin = pf->dplls.txclks;
+	struct ice_dpll *txc = &pf->dplls.txc;
+	int ret;
+
+	/* Configure EXT_EREF0 pin */
+	ret = ice_dpll_get_pins(pf, ref_pin, start_idx, 1, pf->dplls.clock_id);
+	if (ret)
+		return ret;
+	ret = dpll_pin_register(txc->dpll, ref_pin->pin, &ice_dpll_txclk_ops,
+				ref_pin);
+	if (ret)
+		goto err_release_ext_eref;
+
+	/*
+	 * Configure EXT_SYNCE pin (fwnode-backed).
+	 * The pin may not yet be available; in that case registration
+	 * will be deferred via the notifier path.
+	 */
+	ref_pin++;
+	ret = ice_dpll_init_fwnode_pin(ref_pin, ice_dpll_fwnode_ext_synce);
+	if (ret)
+		goto err_unregister_ext_eref;
+
+	if (IS_ERR_OR_NULL(ref_pin->pin)) {
+		dev_dbg(ice_pf_to_dev(pf),
+			"Tx-clk SYNCE pin not registered yet\n");
+		return 0;
+	}
+
+	ret = dpll_pin_register(txc->dpll, ref_pin->pin, &ice_dpll_txclk_ops,
+				ref_pin);
+	if (ret)
+		goto err_deinit_synce;
+
+	return 0;
+
+err_deinit_synce:
+	ice_dpll_deinit_fwnode_pin(ref_pin);
+err_unregister_ext_eref:
+	dpll_pin_unregister(txc->dpll,
+			    pf->dplls.txclks[E825_EXT_EREF_PIN_IDX].pin,
+			    &ice_dpll_txclk_ops,
+			    &pf->dplls.txclks[E825_EXT_EREF_PIN_IDX]);
+
+err_release_ext_eref:
+	ice_dpll_release_pins(&pf->dplls.txclks[E825_EXT_EREF_PIN_IDX], 1);
+
+	return ret;
+}
+
 /**
  * ice_dpll_init_pins_e825 - init pins and register pins with a dplls
  * @pf: board private structure
@@ -3574,6 +3764,15 @@ static int ice_dpll_init_pins_e825(struct ice_pf *pf)
 
 	ret = ice_dpll_init_rclk_pin(pf, DPLL_PIN_IDX_UNSPEC,
 				     &ice_dpll_rclk_ops);
+
+	if (ret)
+		goto unregister_pins;
+
+	ret = ice_dpll_init_txclk_pins(pf, 0);
+	if (ret)
+		ice_dpll_deinit_rclk_pin(pf);
+
+unregister_pins:
 	if (ret) {
 		/* Inform DPLL notifier works that DPLL init was finished
 		 * unsuccessfully (ICE_DPLL_FLAG not set).
@@ -3692,7 +3891,7 @@ static int ice_dpll_init_pins(struct ice_pf *pf, bool cgu)
 static void
 ice_dpll_deinit_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu)
 {
-	if (cgu)
+	if (cgu || pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
 		dpll_device_unregister(d->dpll, d->ops, d);
 	dpll_device_put(d->dpll, &d->tracker);
 }
@@ -3727,12 +3926,13 @@ ice_dpll_init_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu,
 		return ret;
 	}
 	d->pf = pf;
-	if (cgu) {
+	if (cgu || pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
 		const struct dpll_device_ops *ops = &ice_dpll_ops;
 
 		if (type == DPLL_TYPE_PPS && ice_dpll_is_pps_phase_monitor(pf))
 			ops =  &ice_dpll_pom_ops;
-		ice_dpll_update_state(pf, d, true);
+		if (cgu)
+			ice_dpll_update_state(pf, d, true);
 		ret = dpll_device_register(d->dpll, type, ops, d);
 		if (ret) {
 			dpll_device_put(d->dpll, &d->tracker);
@@ -4081,6 +4281,36 @@ static int ice_dpll_init_info_sw_pins(struct ice_pf *pf)
 	return 0;
 }
 
+/**
+ * ice_dpll_init_info_txclk_pins_e825c - initializes tx-clk pins information
+ * @pf: board private structure
+ *
+ * Init information for tx-clks pin, cache them in pf->dplls.txclks
+ *
+ * Return:
+ * * 0 - success
+ */
+static int ice_dpll_init_info_txclk_pins_e825c(struct ice_pf *pf)
+{
+	struct ice_dpll_pin *tx_pin;
+
+	for (int i = 0; i < ICE_DPLL_TXCLK_NUM_MAX; i++) {
+		tx_pin = &pf->dplls.txclks[i];
+		tx_pin->prop.type = DPLL_PIN_TYPE_EXT;
+		tx_pin->prop.capabilities |=
+				 DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
+		tx_pin->pf = pf;
+		if (i == E825_EXT_EREF_PIN_IDX) {
+			tx_pin->prop.board_label = ice_dpll_ext_eref_pin;
+			tx_pin->tx_ref_src = ICE_REF_CLK_EREF0;
+		} else if (i == E825_EXT_SYNCE_PIN_IDX) {
+			tx_pin->tx_ref_src = ICE_REF_CLK_SYNCE;
+		}
+	}
+
+	return 0;
+}
+
 /**
  * ice_dpll_init_pins_info - init pins info wrapper
  * @pf: board private structure
@@ -4106,6 +4336,9 @@ ice_dpll_init_pins_info(struct ice_pf *pf, enum ice_dpll_pin_type pin_type)
 			return ice_dpll_init_info_rclk_pin(pf);
 	case ICE_DPLL_PIN_TYPE_SOFTWARE:
 		return ice_dpll_init_info_sw_pins(pf);
+
+	case ICE_DPLL_PIN_TYPE_TXCLK:
+		return ice_dpll_init_info_txclk_pins_e825c(pf);
 	default:
 		return -EINVAL;
 	}
@@ -4139,11 +4372,15 @@ static void ice_dpll_deinit_info(struct ice_pf *pf)
 static int ice_dpll_init_info_e825c(struct ice_pf *pf)
 {
 	struct ice_dplls *d = &pf->dplls;
+	struct ice_dpll *dt = &d->txc;
 	int ret = 0;
 	int i;
 
 	d->clock_id = ice_generate_clock_id(pf);
 	d->num_inputs = ICE_SYNCE_CLK_NUM;
+	dt->dpll_state = DPLL_LOCK_STATUS_LOCKED;
+	dt->mode = DPLL_MODE_MANUAL;
+	dt->dpll_idx = pf->ptp.port.port_num;
 
 	d->inputs = kzalloc_objs(*d->inputs, d->num_inputs);
 	if (!d->inputs)
@@ -4160,6 +4397,11 @@ static int ice_dpll_init_info_e825c(struct ice_pf *pf)
 	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_RCLK_INPUT);
 	if (ret)
 		goto deinit_info;
+
+	ret = ice_dpll_init_pins_info(pf, ICE_DPLL_PIN_TYPE_TXCLK);
+	if (ret)
+		goto deinit_info;
+
 	dev_dbg(ice_pf_to_dev(pf),
 		"%s - success, inputs: %u, outputs: %u, rclk-parents: %u\n",
 		 __func__, d->num_inputs, d->num_outputs, d->rclk.num_parents);
@@ -4292,6 +4534,9 @@ void ice_dpll_deinit(struct ice_pf *pf)
 		ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
 	if (!IS_ERR_OR_NULL(pf->dplls.eec.dpll))
 		ice_dpll_deinit_dpll(pf, &pf->dplls.eec, cgu);
+	if (!IS_ERR_OR_NULL(pf->dplls.txc.dpll))
+		ice_dpll_deinit_dpll(pf, &pf->dplls.txc, false);
+
 	ice_dpll_deinit_info(pf);
 	mutex_destroy(&pf->dplls.lock);
 }
@@ -4317,14 +4562,19 @@ static void ice_dpll_init_e825(struct ice_pf *pf)
 	err = ice_dpll_init_info_e825c(pf);
 	if (err)
 		goto err_exit;
-	err = ice_dpll_init_pins_e825(pf);
+	err = ice_dpll_init_dpll(pf, &pf->dplls.txc, false, DPLL_TYPE_TXC);
 	if (err)
 		goto deinit_info;
+	err = ice_dpll_init_pins_e825(pf);
+	if (err)
+		goto deinit_txclk;
 	set_bit(ICE_FLAG_DPLL, pf->flags);
 	complete_all(&d->dpll_init);
 
 	return;
 
+deinit_txclk:
+	ice_dpll_deinit_dpll(pf, &pf->dplls.txc, false);
 deinit_info:
 	ice_dpll_deinit_info(pf);
 err_exit:
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index ae42cdea0ee1..23f9d4da73c5 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
@@ -7,6 +7,7 @@
 #include "ice.h"
 
 #define ICE_DPLL_RCLK_NUM_MAX	4
+#define ICE_DPLL_TXCLK_NUM_MAX	2
 
 /**
  * enum ice_dpll_pin_sw - enumerate ice software pin indices:
@@ -63,6 +64,7 @@ struct ice_dpll_pin {
 	u8 ref_sync;
 	bool active;
 	bool hidden;
+	enum ice_e825c_ref_clk tx_ref_src;
 };
 
 /** ice_dpll - store info required for DPLL control
@@ -111,9 +113,11 @@ struct ice_dpll {
  * @lock: locks access to configuration of a dpll
  * @eec: pointer to EEC dpll dev
  * @pps: pointer to PPS dpll dev
+ * @txc: pointer to TXC dpll dev
  * @inputs: input pins pointer
  * @outputs: output pins pointer
  * @rclk: recovered pins pointer
+ * @txclks: TX clock reference pins pointer
  * @num_inputs: number of input pins available on dpll
  * @num_outputs: number of output pins available on dpll
  * @cgu_state_acq_err_num: number of errors returned during periodic work
@@ -131,11 +135,13 @@ struct ice_dplls {
 	struct completion dpll_init;
 	struct ice_dpll eec;
 	struct ice_dpll pps;
+	struct ice_dpll txc;
 	struct ice_dpll_pin *inputs;
 	struct ice_dpll_pin *outputs;
 	struct ice_dpll_pin sma[ICE_DPLL_PIN_SW_NUM];
 	struct ice_dpll_pin ufl[ICE_DPLL_PIN_SW_NUM];
 	struct ice_dpll_pin rclk;
+	struct ice_dpll_pin txclks[ICE_DPLL_TXCLK_NUM_MAX];
 	u8 num_inputs;
 	u8 num_outputs;
 	u8 sma_data;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 9bfd3e79c580..cbc9693179a1 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -265,6 +265,13 @@ struct ice_cgu_pin_desc {
 	struct dpll_pin_frequency *freq_supp;
 };
 
+enum ice_e825c_ref_clk {
+	ICE_REF_CLK_ENET,
+	ICE_REF_CLK_SYNCE,
+	ICE_REF_CLK_EREF0,
+	ICE_REF_CLK_MAX,
+};
+
 #define E810C_QSFP_C827_0_HANDLE 2
 #define E810C_QSFP_C827_1_HANDLE 3
 
-- 
2.39.3

