Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BJtCJg82Gk5aQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 01:56:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3643D0A0C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 01:56:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0808A40D79;
	Thu,  9 Apr 2026 23:56:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lnw1lswFYT28; Thu,  9 Apr 2026 23:56:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8890640BE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775778964;
	bh=mOeIBWpd0PmDsxzKnBiY5GmZ6fuO5SYdv6+VoSvZunE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cKudlOaLafO4JeBYj2w2WgOAWfRpwsGmJhhUSjZZPkgd3jMz/AzJzLdeGS/dvvYVf
	 UnVnowGMEsN3pDqEEHgJCtTTlSm3Hp56dA2Ykno/rhetDci4eZY5Dm/XBuGok2sMeb
	 5heu5gP+gNK/Rkk+omZJcebqzAXnS7HyfuoJIjqwBQMIG9Vlw/AymGaA8+y0KTDImF
	 uApMIhEwzwiRPMQs8PB0Xz1+gfBpdmr3xZ0JlDWnA9xGD4dbRxBU7/6eILZVtg5jUz
	 ES0p69xvM3MnlulE9r9xujQhnzwvPIqT0YVfE1pC9W/wtidQUP4Da5PLURrEeBS5TO
	 kbbG5u2HJGspA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8890640BE8;
	Thu,  9 Apr 2026 23:56:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D9EB1F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 23:56:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43D2D407DB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 23:56:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9dkPCtikngIU for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 23:56:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D06EB40BB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D06EB40BB3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D06EB40BB3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 23:56:01 +0000 (UTC)
X-CSE-ConnectionGUID: GZV2VUzBQGKPeray6YjsFw==
X-CSE-MsgGUID: ojEYqmsTQOyn0qa7alao5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="87424173"
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="87424173"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 16:56:01 -0700
X-CSE-ConnectionGUID: tKxrHSZGQFuwnl7F1GAgnQ==
X-CSE-MsgGUID: aEzNJIrKQ4yLsN+WaVA3tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="228860157"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa008.jf.intel.com with ESMTP; 09 Apr 2026 16:55:56 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 10 Apr 2026 01:51:22 +0200
Message-Id: <20260409235122.436749-9-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260409235122.436749-1-grzegorz.nitka@intel.com>
References: <20260409235122.436749-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775778961; x=1807314961;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q/at1MwFcpntPu/WZuS4dHmabDX6BH41fxG7Y73y48M=;
 b=kgazFNW9I+u0H8EXisl5I7O5bvbMwsy/O9WMwDuaykUCBCRifCsO0kmk
 BopWJNdNLplMEcbn97X8vfm+wYwjPU0FzbHoE3jRhx6laBXEqR2ahlyQ6
 Noo0bJpqRw1XUWk9wn6HFPSFiQ9amycY5Qq9T+IOLHAf5Xx71Dmq3b+7+
 rHldEm057BTAykPyFQVCZ2mJ7LI+wwE3pj5/cP8Ir3w89SM493A0TmdLx
 S2IusGKQ0Nx85grjYXkIrtnAbrCJ8aGjrFNwcSXTxLsvEwpdj8jkBmHJH
 KSS/qNQG7mWQ62IqCt4lRWClU4O8Jd9eLPapLzqsb+oZ6SQOZEU2v8gCT
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kgazFNW9
Subject: [Intel-wired-lan] [PATCH v6 net-next 8/8] ice: implement E825 TX
 ref clock control and TXC hardware sync status
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,intel.com:email,intel.com:mid];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8C3643D0A0C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Build on the previously introduced TXC DPLL framework and implement
full TX reference clock control and hardware-backed synchronization
status reporting for E825 devices.

E825 firmware may accept or override TX reference clock requests based
on device-wide routing constraints and link conditions. For this
reason, TX reference selection and synchronization status must be
observed from hardware rather than inferred from user intent.

This change implements TX reference switching using a deferred worker,
triggered by DPLL TXCLK pin operations. Pin set callbacks express
selection intent and schedule the operation asynchronously; firmware
commands and autonegotiation restarts are executed outside of DPLL
context.

After link-up, the effective TX reference clock is read back from
hardware and software state is reconciled accordingly. TXCLK pin state
reflects only the selected reference clock topology:
- External references (SYNCE, EREF0) are represented as TXCLK pins
- The internal ENET/TXCO clock has no pin representation; when selected,
  all TXCLK pins are reported DISCONNECTED

Actual hardware synchronization result is reported exclusively via the
TXC DPLL lock status:
- LOCKED when an external TX reference is in use
- UNLOCKED when falling back to ENET/TXCO

This separation allows userspace to distinguish between TX reference
selection and successful synchronization, matching the DPLL subsystem
model where pin state describes topology and device lock status
describes signal quality.

The implementation also tracks TX reference usage per PHY across all
PFs to ensure shared TX clock resources are not disabled while still in
use by peer ports.

With this change, TX reference clocks on E825 devices can be reliably
selected, verified against hardware state, and monitored for effective
synchronization via standard DPLL interfaces.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile     |   2 +-
 drivers/net/ethernet/intel/ice/ice.h        |  12 +
 drivers/net/ethernet/intel/ice/ice_dpll.c   | 110 ++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h   |   4 +
 drivers/net/ethernet/intel/ice/ice_ptp.c    |  26 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h    |   7 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  37 +++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  27 +++
 drivers/net/ethernet/intel/ice/ice_txclk.c  | 251 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txclk.h  |  38 +++
 10 files changed, 495 insertions(+), 19 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_txclk.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_txclk.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 38db476ab2ec..95fd0c49800f 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -54,7 +54,7 @@ ice-$(CONFIG_PCI_IOV) +=	\
 	ice_vf_mbx.o		\
 	ice_vf_vsi_vlan_ops.o	\
 	ice_vf_lib.o
-ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o ice_dpll.o ice_tspll.o ice_cpi.o
+ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o ice_dpll.o ice_tspll.o ice_cpi.o ice_txclk.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
 ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index eb3a48330cc1..6edafce4624a 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -1155,4 +1155,16 @@ static inline struct ice_hw *ice_get_primary_hw(struct ice_pf *pf)
 	else
 		return &pf->adapter->ctrl_pf->hw;
 }
+
+/**
+ * ice_get_ctrl_pf - Get pointer to Control PF of the adapter
+ * @pf: pointer to the current PF structure
+ *
+ * Return: A pointer to ice_pf structure which is Control PF,
+ * NULL if it's not initialized yet.
+ */
+static inline struct ice_pf *ice_get_ctrl_pf(struct ice_pf *pf)
+{
+	return !pf->adapter ? NULL : pf->adapter->ctrl_pf;
+}
 #endif /* _ICE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index ab62aac77399..09855f211ed5 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -4,6 +4,7 @@
 #include "ice.h"
 #include "ice_lib.h"
 #include "ice_trace.h"
+#include "ice_txclk.h"
 #include <linux/dpll.h>
 #include <linux/property.h>
 
@@ -19,8 +20,6 @@
 #define ICE_DPLL_SW_PIN_INPUT_BASE_QSFP		6
 #define ICE_DPLL_SW_PIN_OUTPUT_BASE		0
 
-#define E825_EXT_EREF_PIN_IDX			0
-#define E825_EXT_SYNCE_PIN_IDX			1
 #define E825_RCLK_PARENT_0_PIN_IDX		0
 #define E825_RCLK_PARENT_1_PIN_IDX		1
 
@@ -2527,6 +2526,44 @@ ice_dpll_rclk_state_on_pin_get(const struct dpll_pin *pin, void *pin_priv,
 	return ret;
 }
 
+/**
+ * ice_dpll_txclk_work - apply a pending TX reference clock change
+ * @work: work_struct embedded in struct ice_dplls
+ *
+ * This worker executes an outstanding TX reference clock switch request
+ * that was previously queued via the DPLL TXCLK pin set callback.
+ *
+ * The worker performs only the operational part of the switch, issuing
+ * the necessary firmware commands to request a new TX reference clock
+ * selection (e.g. triggering an AN restart). It does not verify whether
+ * the requested clock was ultimately accepted by the hardware.
+ *
+ * Hardware verification, software state reconciliation, pin state
+ * notification, and TXC DPLL lock-status updates are performed later,
+ * after link-up, by ice_txclk_update_and_notify().
+ *
+ * Context:
+ *   - Runs in process context on pf->dplls.wq and may sleep.
+ *   - Serializes access to shared TXCLK state using pf->dplls.lock.
+ */
+static void ice_dpll_txclk_work(struct work_struct *work)
+{
+	struct ice_dplls *dplls =
+		container_of(work, struct ice_dplls, txclk_work);
+	struct ice_pf *pf = container_of(dplls, struct ice_pf, dplls);
+	enum ice_e825c_ref_clk clk;
+	bool do_switch;
+
+	mutex_lock(&pf->dplls.lock);
+	do_switch  = pf->dplls.txclk_switch_requested;
+	clk = pf->ptp.port.tx_clk_req;
+	pf->dplls.txclk_switch_requested  = false;
+	mutex_unlock(&pf->dplls.lock);
+
+	if (do_switch)
+		ice_txclk_set_clk(pf, clk);
+}
+
 /**
  * ice_dpll_txclk_state_on_dpll_set - set a state on TX clk pin
  * @pin: pointer to a pin
@@ -2538,7 +2575,9 @@ ice_dpll_rclk_state_on_pin_get(const struct dpll_pin *pin, void *pin_priv,
  *
  * Dpll subsystem callback, set a state of a Tx reference clock pin
  *
+ * Context: Acquires and releases pf->dplls.lock
  * Return:
+ * * 0 - success
  * * negative - failure
  */
 static int
@@ -2547,11 +2586,29 @@ ice_dpll_txclk_state_on_dpll_set(const struct dpll_pin *pin, void *pin_priv,
 				 void *dpll_priv, enum dpll_pin_state state,
 				 struct netlink_ext_ack *extack)
 {
-	/*
-	 * TODO: set HW accordingly to selected TX reference clock.
-	 * To be added in the follow up patches.
-	 */
-	return -EOPNOTSUPP;
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_pf *pf = p->pf;
+	enum ice_e825c_ref_clk new_clk;
+
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
+	mutex_lock(&pf->dplls.lock);
+	new_clk = (state == DPLL_PIN_STATE_DISCONNECTED) ? ICE_REF_CLK_ENET :
+			p->tx_ref_src;
+	if (new_clk == pf->ptp.port.tx_clk_req) {
+		NL_SET_ERR_MSG_FMT(extack,
+				   "pin:%u state:%u on parent device already set",
+				   p->idx, state);
+		goto unlock;
+	}
+
+	pf->ptp.port.tx_clk_req = new_clk;
+	pf->dplls.txclk_switch_requested = true;
+	queue_work(pf->dplls.wq, &pf->dplls.txclk_work);
+unlock:
+	mutex_unlock(&pf->dplls.lock);
+	return 0;
 }
 
 /**
@@ -2563,10 +2620,21 @@ ice_dpll_txclk_state_on_dpll_set(const struct dpll_pin *pin, void *pin_priv,
  * @state: on success holds pin state on parent pin
  * @extack: error reporting
  *
- * dpll subsystem callback, get a state of a TX clock reference pin.
+ * TXCLK DPLL pin state is derived and not stored explicitly.
+ *
+ * Only external TX reference clocks (SYNCE, EREF0) are modeled
+ * as DPLL pins. The internal ENET (TXCO) clock has no pin and,
+ * when selected, all TXCLK pins are reported DISCONNECTED.
+ *
+ * During a pending TXCLK switch, the requested pin may be
+ * reported as CONNECTED before hardware verification.
+ * Hardware acceptance and synchronization are reported
+ * exclusively via TXC DPLL lock-status.
  *
+ * Context: Acquires and releases pf->dplls.lock
  * Return:
  * * 0 - success
+ * * negative - failure
  */
 static int
 ice_dpll_txclk_state_on_dpll_get(const struct dpll_pin *pin, void *pin_priv,
@@ -2575,11 +2643,21 @@ ice_dpll_txclk_state_on_dpll_get(const struct dpll_pin *pin, void *pin_priv,
 				 enum dpll_pin_state *state,
 				 struct netlink_ext_ack *extack)
 {
-	/*
-	 * TODO: query HW status to determine if the TX reference is selected.
-	 * To be added in the follow up patches.
-	 */
-	*state = DPLL_PIN_STATE_DISCONNECTED;
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_pf *pf = p->pf;
+
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
+	mutex_lock(&pf->dplls.lock);
+	if (pf->ptp.port.tx_clk_req == p->tx_ref_src)
+		*state = DPLL_PIN_STATE_CONNECTED;
+	else if (pf->ptp.port.tx_clk == p->tx_ref_src &&
+		 pf->ptp.port.tx_clk_req == pf->ptp.port.tx_clk)
+		*state = DPLL_PIN_STATE_CONNECTED;
+	else
+		*state = DPLL_PIN_STATE_DISCONNECTED;
+	mutex_unlock(&pf->dplls.lock);
 
 	return 0;
 }
@@ -4402,6 +4480,8 @@ static int ice_dpll_init_info_e825c(struct ice_pf *pf)
 	if (ret)
 		goto deinit_info;
 
+	INIT_WORK(&pf->dplls.txclk_work, ice_dpll_txclk_work);
+
 	dev_dbg(ice_pf_to_dev(pf),
 		"%s - success, inputs: %u, outputs: %u, rclk-parents: %u\n",
 		 __func__, d->num_inputs, d->num_outputs, d->rclk.num_parents);
@@ -4538,6 +4618,10 @@ void ice_dpll_deinit(struct ice_pf *pf)
 		ice_dpll_deinit_dpll(pf, &pf->dplls.txc, false);
 
 	ice_dpll_deinit_info(pf);
+
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+		flush_work(&pf->dplls.txclk_work);
+
 	mutex_destroy(&pf->dplls.lock);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index 23f9d4da73c5..9a96b905141d 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
@@ -8,6 +8,8 @@
 
 #define ICE_DPLL_RCLK_NUM_MAX	4
 #define ICE_DPLL_TXCLK_NUM_MAX	2
+#define E825_EXT_EREF_PIN_IDX	0
+#define E825_EXT_SYNCE_PIN_IDX	1
 
 /**
  * enum ice_dpll_pin_sw - enumerate ice software pin indices:
@@ -152,6 +154,8 @@ struct ice_dplls {
 	s32 output_phase_adj_max;
 	u32 periodic_counter;
 	bool generic;
+	struct work_struct txclk_work;
+	bool txclk_switch_requested;
 };
 
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 6cb0cf7a9891..31b1ec5cd9a3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -4,6 +4,7 @@
 #include "ice.h"
 #include "ice_lib.h"
 #include "ice_trace.h"
+#include "ice_txclk.h"
 
 static const char ice_pin_names[][64] = {
 	"SDP0",
@@ -54,11 +55,6 @@ static const struct ice_ptp_pin_desc ice_pin_desc_dpll[] = {
 	{  SDP3, {  3, -1 }, { 0, 0 }},
 };
 
-static struct ice_pf *ice_get_ctrl_pf(struct ice_pf *pf)
-{
-	return !pf->adapter ? NULL : pf->adapter->ctrl_pf;
-}
-
 static struct ice_ptp *ice_get_ctrl_ptp(struct ice_pf *pf)
 {
 	struct ice_pf *ctrl_pf = ice_get_ctrl_pf(pf);
@@ -1328,6 +1324,9 @@ void ice_ptp_link_change(struct ice_pf *pf, bool linkup)
 			}
 		}
 		mutex_unlock(&pf->dplls.lock);
+
+		if (linkup)
+			ice_txclk_update_and_notify(pf);
 	}
 
 	switch (hw->mac_type) {
@@ -3081,6 +3080,7 @@ static int ice_ptp_setup_pf(struct ice_pf *pf)
 {
 	struct ice_ptp *ctrl_ptp = ice_get_ctrl_ptp(pf);
 	struct ice_ptp *ptp = &pf->ptp;
+	u8 port_num, phy;
 
 	if (!ctrl_ptp) {
 		dev_info(ice_pf_to_dev(pf),
@@ -3098,6 +3098,10 @@ static int ice_ptp_setup_pf(struct ice_pf *pf)
 		 &pf->adapter->ports.ports);
 	mutex_unlock(&pf->adapter->ports.lock);
 
+	port_num = ptp->port.port_num;
+	phy = port_num / pf->hw.ptp.ports_per_phy;
+	set_bit(port_num, &ctrl_ptp->tx_refclks[phy][pf->ptp.port.tx_clk]);
+
 	return 0;
 }
 
@@ -3298,6 +3302,7 @@ static void ice_ptp_init_tx_interrupt_mode(struct ice_pf *pf)
  */
 void ice_ptp_init(struct ice_pf *pf)
 {
+	enum ice_e825c_ref_clk tx_ref_clk;
 	struct ice_ptp *ptp = &pf->ptp;
 	struct ice_hw *hw = &pf->hw;
 	int err;
@@ -3326,6 +3331,17 @@ void ice_ptp_init(struct ice_pf *pf)
 			goto err_exit;
 	}
 
+	ptp->port.tx_clk = ICE_REF_CLK_ENET;
+	ptp->port.tx_clk_req = ICE_REF_CLK_ENET;
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825) {
+		err = ice_get_serdes_ref_sel_e825c(hw, ptp->port.port_num,
+						   &tx_ref_clk);
+		if (!err) {
+			ptp->port.tx_clk = tx_ref_clk;
+			ptp->port.tx_clk_req = tx_ref_clk;
+		}
+	}
+
 	err = ice_ptp_setup_pf(pf);
 	if (err)
 		goto err_exit;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 8c44bd758a4f..8b385271ab36 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -144,6 +144,8 @@ struct ice_ptp_tx {
  * @link_up: indicates whether the link is up
  * @tx_fifo_busy_cnt: number of times the Tx FIFO was busy
  * @port_num: the port number this structure represents
+ * @tx_clk: currently active Tx reference clock source
+ * @tx_clk_req: requested Tx reference clock source (new target)
  */
 struct ice_ptp_port {
 	struct list_head list_node;
@@ -153,6 +155,8 @@ struct ice_ptp_port {
 	bool link_up;
 	u8 tx_fifo_busy_cnt;
 	u8 port_num;
+	enum ice_e825c_ref_clk tx_clk;
+	enum ice_e825c_ref_clk tx_clk_req;
 };
 
 enum ice_ptp_tx_interrupt {
@@ -236,6 +240,7 @@ struct ice_ptp_pin_desc {
  * @info: structure defining PTP hardware capabilities
  * @clock: pointer to registered PTP clock device
  * @tstamp_config: hardware timestamping configuration
+ * @tx_refclks: bitmaps table to store the information about TX reference clocks
  * @reset_time: kernel time after clock stop on reset
  * @tx_hwtstamp_good: number of completed Tx timestamp requests
  * @tx_hwtstamp_skipped: number of Tx time stamp requests skipped
@@ -261,6 +266,8 @@ struct ice_ptp {
 	struct ptp_clock_info info;
 	struct ptp_clock *clock;
 	struct kernel_hwtstamp_config tstamp_config;
+#define ICE_E825_MAX_PHYS 2
+	unsigned long tx_refclks[ICE_E825_MAX_PHYS][ICE_REF_CLK_MAX];
 	u64 reset_time;
 	u64 tx_hwtstamp_good;
 	u32 tx_hwtstamp_skipped;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 61c0a0d93ea8..c0720525ac49 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -461,6 +461,43 @@ static int ice_read_phy_eth56g(struct ice_hw *hw, u8 port, u32 addr, u32 *val)
 	return err;
 }
 
+/**
+ * ice_get_serdes_ref_sel_e825c - Read current Tx ref clock source
+ * @hw: pointer to the HW struct
+ * @port: port number for which Tx reference clock is read
+ * @clk: Tx reference clock value (output)
+ *
+ * Return: 0 on success, other error codes when failed to read from PHY
+ */
+int ice_get_serdes_ref_sel_e825c(struct ice_hw *hw, u8 port,
+				 enum ice_e825c_ref_clk *clk)
+{
+	u8 lane = port % hw->ptp.ports_per_phy;
+	u32 serdes_rx_nt, serdes_tx_nt;
+	u32 val;
+	int ret;
+
+	ret = ice_read_phy_eth56g(hw, port,
+				  SERDES_IP_IF_LN_FLXM_GENERAL(lane, 0),
+				  &val);
+	if (ret)
+		return ret;
+
+	serdes_rx_nt = FIELD_GET(CFG_ICTL_PCS_REF_SEL_RX_NT, val);
+	serdes_tx_nt = FIELD_GET(CFG_ICTL_PCS_REF_SEL_TX_NT, val);
+
+	if (serdes_tx_nt == REF_SEL_NT_SYNCE &&
+	    serdes_rx_nt == REF_SEL_NT_SYNCE)
+		*clk = ICE_REF_CLK_SYNCE;
+	else if (serdes_tx_nt == REF_SEL_NT_EREF0 &&
+		 serdes_rx_nt == REF_SEL_NT_EREF0)
+		*clk = ICE_REF_CLK_EREF0;
+	else
+		*clk = ICE_REF_CLK_ENET;
+
+	return 0;
+}
+
 /**
  * ice_phy_res_address_eth56g - Calculate a PHY port register address
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index cbc9693179a1..820ba953ea01 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -381,6 +381,8 @@ int ice_stop_phy_timer_eth56g(struct ice_hw *hw, u8 port, bool soft_reset);
 int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port);
 int ice_phy_cfg_intr_eth56g(struct ice_hw *hw, u8 port, bool ena, u8 threshold);
 int ice_phy_cfg_ptp_1step_eth56g(struct ice_hw *hw, u8 port);
+int ice_get_serdes_ref_sel_e825c(struct ice_hw *hw, u8 port,
+				 enum ice_e825c_ref_clk *clk);
 
 #define ICE_ETH56G_NOMINAL_INCVAL	0x140000000ULL
 #define ICE_ETH56G_NOMINAL_PCS_REF_TUS	0x100000000ULL
@@ -790,4 +792,29 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 #define PHY_PTP_1STEP_PD_DELAY_M	GENMASK(30, 1)
 #define PHY_PTP_1STEP_PD_DLY_V_M	BIT(31)
 
+#define SERDES_IP_IF_LN_FLXM_GENERAL(n, m) \
+	(0x32B800 + (m) * 0x100000 + (n) * 0x8000)
+#define CFG_RESERVED0_1                         GENMASK(1, 0)
+#define CFG_ICTL_PCS_MODE_NT                    BIT(2)
+#define CFG_ICTL_PCS_RCOMP_SLAVE_EN_NT          BIT(3)
+#define CFG_ICTL_PCS_CMN_FORCE_PUP_A            BIT(4)
+#define CFG_ICTL_PCS_RCOMP_SLAVE_VALID_A        BIT(5)
+#define CFG_ICTL_PCS_REF_SEL_RX_NT              GENMASK(9, 6)
+#define REF_SEL_NT_ENET                         0
+#define REF_SEL_NT_EREF0                        1
+#define REF_SEL_NT_SYNCE                        2
+#define CFG_IDAT_DFX_OBS_DIG_                   GENMASK(11, 10)
+#define CFG_IRST_APB_MEM_B                      BIT(12)
+#define CFG_ICTL_PCS_DISCONNECT_NT              BIT(13)
+#define CFG_ICTL_PCS_ISOLATE_NT                 BIT(14)
+#define CFG_RESERVED15_15                       BIT(15)
+#define CFG_IRST_PCS_TSTBUS_B_A                 BIT(16)
+#define CFG_ICTL_PCS_REF_TERM_HIZ_EN_NT         BIT(17)
+#define CFG_RESERVED18_19                       GENMASK(19, 18)
+#define CFG_ICTL_PCS_SYNTHLCSLOW_FORCE_PUP_A    BIT(20)
+#define CFG_ICTL_PCS_SYNTHLCFAST_FORCE_PUP_A    BIT(21)
+#define CFG_RESERVED22_24                       GENMASK(24, 22)
+#define CFG_ICTL_PCS_REF_SEL_TX_NT              GENMASK(28, 25)
+#define CFG_RESERVED29_31                       GENMASK(31, 29)
+
 #endif /* _ICE_PTP_HW_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_txclk.c b/drivers/net/ethernet/intel/ice/ice_txclk.c
new file mode 100644
index 000000000000..ba7e83b8952e
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_txclk.c
@@ -0,0 +1,251 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2026 Intel Corporation */
+
+#include "ice.h"
+#include "ice_cpi.h"
+#include "ice_txclk.h"
+
+#define ICE_PHY0	0
+#define ICE_PHY1	1
+
+/**
+ * ice_txclk_get_pin - map TX reference clock to its DPLL pin
+ * @pf: pointer to the PF structure
+ * @ref_clk: TX reference clock selection
+ *
+ * Return the DPLL pin corresponding to a given external TX reference
+ * clock. Only external TX reference clocks (SYNCE and EREF0) are
+ * represented as DPLL pins. The internal ENET (TXCO) clock has no
+ * associated DPLL pin and therefore yields %NULL.
+ *
+ * This helper is used when emitting DPLL pin change notifications
+ * after TX reference clock transitions have been verified.
+ *
+ * Return: Pointer to the corresponding struct dpll_pin, or %NULL if
+ *         the TX reference clock has no DPLL pin representation.
+ */
+static struct dpll_pin *
+ice_txclk_get_pin(struct ice_pf *pf, enum ice_e825c_ref_clk ref_clk)
+{
+	switch (ref_clk) {
+	case ICE_REF_CLK_SYNCE:
+		return pf->dplls.txclks[E825_EXT_SYNCE_PIN_IDX].pin;
+	case ICE_REF_CLK_EREF0:
+		return pf->dplls.txclks[E825_EXT_EREF_PIN_IDX].pin;
+	case ICE_REF_CLK_ENET:
+	default:
+		return NULL;
+	}
+}
+
+/**
+ * ice_txclk_enable_peer - Enable required TX reference clock on peer PHY
+ * @pf: pointer to the PF structure
+ * @clk: TX reference clock that must be enabled
+ *
+ * Some TX reference clocks on E825-class devices (SyncE and EREF0) must
+ * be enabled on both PHY complexes to allow proper routing:
+ *
+ *   - SyncE must be enabled on both PHYs when used by PHY0
+ *   - EREF0 must be enabled on both PHYs when used by PHY1
+ *
+ * If the requested clock is not yet enabled on the peer PHY, enable it.
+ * ENET does not require duplication and is ignored.
+ *
+ * Return: 0 on success or negative error code on failure.
+ */
+static int ice_txclk_enable_peer(struct ice_pf *pf, enum ice_e825c_ref_clk clk)
+{
+	struct ice_pf *ctrl_pf = ice_get_ctrl_pf(pf);
+	bool peer_clk_in_use;
+	u8 port_num, phy;
+	int err;
+
+	if (clk == ICE_REF_CLK_ENET)
+		return 0;
+
+	if (IS_ERR_OR_NULL(ctrl_pf)) {
+		dev_err(ice_pf_to_dev(pf),
+			"Can't enable tx-clk on peer: no controlling PF\n");
+		return -EINVAL;
+	}
+
+	port_num = pf->ptp.port.port_num;
+	phy = port_num / pf->hw.ptp.ports_per_phy;
+	peer_clk_in_use = true;
+	mutex_lock(&ctrl_pf->dplls.lock);
+	if (clk == ICE_REF_CLK_SYNCE && phy == ICE_PHY0)
+		peer_clk_in_use = ice_txclk_any_port_uses(ctrl_pf, ICE_PHY1, clk);
+	else if (clk == ICE_REF_CLK_EREF0 && phy == ICE_PHY1)
+		peer_clk_in_use = ice_txclk_any_port_uses(ctrl_pf, ICE_PHY0, clk);
+	mutex_unlock(&ctrl_pf->dplls.lock);
+
+	if ((clk == ICE_REF_CLK_SYNCE && phy == ICE_PHY0 && !peer_clk_in_use) ||
+	    (clk == ICE_REF_CLK_EREF0 && phy == ICE_PHY1 && !peer_clk_in_use)) {
+		u8 peer_phy = phy ? ICE_PHY0 : ICE_PHY1;
+
+		err = ice_cpi_ena_dis_clk_ref(&pf->hw, peer_phy, clk, true);
+		if (err) {
+			dev_err(ice_hw_to_dev(&pf->hw),
+				"Failed to enable the %u TX clock for the %u PHY\n",
+				clk, peer_phy);
+			return err;
+		}
+	}
+
+	return 0;
+}
+
+#define ICE_REFCLK_USER_TO_AQ_IDX(x) ((x) + 1)
+
+/**
+ * ice_txclk_set_clk - Set Tx reference clock
+ * @pf: pointer to pf structure
+ * @clk: new Tx clock
+ *
+ * Return: 0 on success, negative value otherwise.
+ */
+int ice_txclk_set_clk(struct ice_pf *pf, enum ice_e825c_ref_clk clk)
+{
+	struct ice_pf *ctrl_pf = ice_get_ctrl_pf(pf);
+	struct ice_port_info *port_info;
+	bool clk_in_use;
+	u8 port_num, phy;
+	int err;
+
+	if (pf->ptp.port.tx_clk == clk)
+		return 0;
+
+	if (IS_ERR_OR_NULL(ctrl_pf)) {
+		dev_err(ice_pf_to_dev(pf),
+			"Can't set tx-clk: no controlling PF\n");
+		return -EINVAL;
+	}
+
+	port_num = pf->ptp.port.port_num;
+	phy = port_num / pf->hw.ptp.ports_per_phy;
+	port_info = pf->hw.port_info;
+	mutex_lock(&ctrl_pf->dplls.lock);
+	clk_in_use = ice_txclk_any_port_uses(ctrl_pf, phy, clk);
+	mutex_unlock(&ctrl_pf->dplls.lock);
+
+	/* Check if the TX clk is enabled for this PHY, if not - enable it */
+	if (!clk_in_use) {
+		err = ice_cpi_ena_dis_clk_ref(&pf->hw, phy, clk, true);
+		if (err) {
+			dev_err(ice_pf_to_dev(pf), "Failed to enable the %u TX clock for the %u PHY\n",
+				clk, phy);
+			return err;
+		}
+		err = ice_txclk_enable_peer(pf, clk);
+		if (err)
+			return err;
+	}
+
+	/* We are ready to switch to the new TX clk. */
+	err = ice_aq_set_link_restart_an(port_info, true, NULL,
+					 ICE_REFCLK_USER_TO_AQ_IDX(clk));
+	if (err)
+		dev_err(ice_pf_to_dev(pf),
+			"AN restart AQ command failed with err %d\n",
+			err);
+
+	return err;
+}
+
+/**
+ * ice_txclk_update_and_notify - Validate TX reference clock switching
+ * @pf: pointer to PF structure
+ *
+ * After a link-up event, verify whether the previously requested TX reference
+ * clock transition actually succeeded. The SERDES reference selector reflects
+ * the effective hardware choice, which may differ from the requested clock
+ * when Auto-Negotiation or firmware applies additional policy.
+ *
+ * If the hardware-selected clock differs from the requested one, update the
+ * software state accordingly and stop further processing.
+ *
+ * When the switch is successful, update the per‑PHY usage bitmaps so that the
+ * driver knows which reference clock is currently in use by this port.
+ *
+ * This function does not initiate a clock switch; it only validates the result
+ * of a previously triggered transition and performs cleanup of unused clocks.
+ */
+void ice_txclk_update_and_notify(struct ice_pf *pf)
+{
+	struct ice_ptp_port *ptp_port = &pf->ptp.port;
+	struct ice_pf *ctrl_pf = ice_get_ctrl_pf(pf);
+	struct dpll_pin *old_pin = NULL;
+	struct dpll_pin *new_pin = NULL;
+	struct ice_hw *hw = &pf->hw;
+	enum ice_e825c_ref_clk clk;
+	int err;
+	u8 phy;
+
+	phy = ptp_port->port_num / hw->ptp.ports_per_phy;
+
+	mutex_lock(&pf->dplls.lock);
+	/* no TX clock change requested */
+	if (pf->ptp.port.tx_clk == pf->ptp.port.tx_clk_req) {
+		mutex_unlock(&pf->dplls.lock);
+		return;
+	}
+	/* verify current Tx reference settings */
+	err = ice_get_serdes_ref_sel_e825c(hw,
+					   ptp_port->port_num,
+					   &clk);
+	if (err) {
+		mutex_unlock(&pf->dplls.lock);
+		return;
+	}
+
+	if (clk != pf->ptp.port.tx_clk_req) {
+		dev_warn(ice_pf_to_dev(pf),
+			 "Failed to switch tx-clk for phy %d and clk %u (current: %u)\n",
+			 phy, pf->ptp.port.tx_clk_req, clk);
+		old_pin = ice_txclk_get_pin(pf, pf->ptp.port.tx_clk_req);
+		new_pin = ice_txclk_get_pin(pf, clk);
+		pf->ptp.port.tx_clk = clk;
+		pf->ptp.port.tx_clk_req = clk;
+		goto err_notify;
+	}
+
+	old_pin = ice_txclk_get_pin(pf, pf->ptp.port.tx_clk);
+	pf->ptp.port.tx_clk = clk;
+	pf->ptp.port.tx_clk_req = clk;
+
+	if (IS_ERR_OR_NULL(ctrl_pf)) {
+		dev_err(ice_pf_to_dev(pf),
+			"Can't set tx-clk: no controlling PF\n");
+		goto err_notify;
+	}
+
+	/* update Tx reference clock usage map */
+	for (int i = 0; i < ICE_REF_CLK_MAX; i++)
+		(clk == i) ?
+		 set_bit(ptp_port->port_num,
+			 &ctrl_pf->ptp.tx_refclks[phy][i]) :
+		 clear_bit(ptp_port->port_num,
+			   &ctrl_pf->ptp.tx_refclks[phy][i]);
+
+err_notify:
+	mutex_unlock(&pf->dplls.lock);
+
+	/* Notify TX clk pins state transition */
+	if (old_pin)
+		dpll_pin_change_ntf(old_pin);
+	if (new_pin)
+		dpll_pin_change_ntf(new_pin);
+
+	/* Update TXC DPLL lock status based on effective TX clk */
+	if (!IS_ERR_OR_NULL(pf->dplls.txc.dpll)) {
+		enum dpll_lock_status new_lock;
+
+		new_lock = ice_txclk_lock_status(clk);
+
+		if (pf->dplls.txc.dpll_state != new_lock) {
+			pf->dplls.txc.dpll_state = new_lock;
+			dpll_device_change_ntf(pf->dplls.txc.dpll);
+		}
+	}
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_txclk.h b/drivers/net/ethernet/intel/ice/ice_txclk.h
new file mode 100644
index 000000000000..bdf591ea8f14
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_txclk.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2026 Intel Corporation */
+
+#ifndef _ICE_TXCLK_H_
+#define _ICE_TXCLK_H_
+
+/**
+ * ice_txclk_any_port_uses - check if any port on a PHY uses this TX refclk
+ * @ctrl_pf: control PF (owner of the shared tx_refclks map)
+ * @phy: PHY index
+ * @clk: TX reference clock
+ *
+ * Return: true if any bit (port) is set for this clock on this PHY
+ */
+static inline bool
+ice_txclk_any_port_uses(const struct ice_pf *ctrl_pf, u8 phy,
+			enum ice_e825c_ref_clk clk)
+{
+	return find_first_bit(&ctrl_pf->ptp.tx_refclks[phy][clk],
+			BITS_PER_LONG) < BITS_PER_LONG;
+}
+
+static inline enum dpll_lock_status
+ice_txclk_lock_status(enum ice_e825c_ref_clk clk)
+{
+	switch (clk) {
+	case ICE_REF_CLK_SYNCE:
+	case ICE_REF_CLK_EREF0:
+		return DPLL_LOCK_STATUS_LOCKED;
+	case ICE_REF_CLK_ENET:
+	default:
+		return DPLL_LOCK_STATUS_UNLOCKED;
+	}
+}
+
+int ice_txclk_set_clk(struct ice_pf *pf, enum ice_e825c_ref_clk clk);
+void ice_txclk_update_and_notify(struct ice_pf *pf);
+#endif /* _ICE_TXCLK_H_ */
-- 
2.39.3

