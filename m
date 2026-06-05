Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ko+zI6jqImrRfAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Jun 2026 17:26:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9F9649496
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Jun 2026 17:26:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=R501y6Y0;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3194140D39;
	Fri,  5 Jun 2026 15:26:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XBzm-_ONpaLp; Fri,  5 Jun 2026 15:26:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B6E740D51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780673188;
	bh=mYZjA83yNdB09eJBD0N2SLJ7DgDiqGtt5Uf6r7NU2wk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R501y6Y0GbsazQmmlw29iWw6MUwN1lZOhjBA1JPZ9k7HRW+HtwF+VT9EzC3wL7tby
	 LbWwhCvVvvSrwml9RZnFlzhQ55i9pmFkgdDdVnzYbScu6D9T2KeosMNCweAhEkoflR
	 o3fjaaOkGBdPiKQrMyT/Vws9Vw8Wo4sHrWzF+yPxoWThUdJdT1dnWW7X3JA/T/L82A
	 jQuj0ep5HIWHtHHw6Km86K9/E7RGKYPtlSFOzPVZPzI1C9i/U2meQIfJETRUYeCW99
	 hAIW3HH41Ou8gQYuDr6kd0ElHIHlMuLKyBDjnanwe/O2/2N16S9Hrm0rNoiS9UTLGA
	 CmM1ByfNuozRA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B6E740D51;
	Fri,  5 Jun 2026 15:26:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 189F1388
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 15:26:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 09D5E403B8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 15:26:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3vp5hT1W0nOg for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jun 2026 15:26:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 38E14403B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38E14403B6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 38E14403B6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 15:26:24 +0000 (UTC)
X-CSE-ConnectionGUID: M4m3aUJERtCv5ND1GKCq3w==
X-CSE-MsgGUID: /90ztrxoQu6ydDOha7XIuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="106949102"
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="106949102"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 08:26:24 -0700
X-CSE-ConnectionGUID: 98Tsss7DSxi04qypWEYOyA==
X-CSE-MsgGUID: TxuJYdyIRZK/Pbq8SCSsbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="249799001"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa005.jf.intel.com with ESMTP; 05 Jun 2026 08:26:18 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Fri,  5 Jun 2026 17:20:30 +0200
Message-Id: <20260605152030.891570-12-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260605152030.891570-1-grzegorz.nitka@intel.com>
References: <20260605152030.891570-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780673184; x=1812209184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oPoHFEc5ClSSOiyOo4GvnlV4JsSk/yH3RyRKDGOquS4=;
 b=Rc+KrPzY9gY168CvvZ/3vC+Gk9cMSg2AUNKvdidMnM7X09uIgkKJAgCy
 ECbfVgzstY5ucANWB8SVkbyO05LC2QJpqF/cXcQc4BnvR66fr1uAd7Kdq
 Brq1P+K409nFeIUr7DrDvbtL8IgOG5vplLiRRXYEhB9pbBsfFP1d0tgnp
 J3+jvf5HRvw+q7Vfuj7ywF2z/3sB5yaeJaCH3jzyZES5SxPneZcxCBi0U
 k9aqXw/prxCTWcVz2Kx2YAUOXegF/eZ/6/6iWPN2M20DRql5THt2rZ8jp
 nleFDBzUFaO94clDyY+B6kQ+/Z7cpO39rFG+i7/d2TfMKsV6EE9zwl+SX
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rc+KrPzY
Subject: [Intel-wired-lan] [PATCH v13 net-next 11/11] ice: implement E825 TX
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:mid,intel.com:from_mime,intel.com:email];
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
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CB9F9649496

Build on the previously introduced TXC DPLL framework and implement
full TX reference clock control and hardware-backed synchronization
status reporting for E825 devices.

E825 firmware may accept or override TX reference clock requests based
on device-wide routing constraints and link conditions. Because the
final selection becomes visible only after a link-up event, the driver
splits the observation into two complementary signals:

  - TXCLK pin state reflects the requested TX reference clock
    (pf->ptp.port.tx_clk_req). After a link-up, the value is reconciled
    against the SERDES reference selector by
    ice_txclk_update_and_notify(); if firmware or auto-negotiation
    selected a different clock, tx_clk_req is overwritten so that pin
    state converges to the actual hardware selection.

  - TXC DPLL lock status reflects hardware synchronization:
      * LOCKED   when an external TX reference is in use
      * UNLOCKED when falling back to ENET/TXCO, or when a requested
        external reference has not (yet) been accepted by hardware.

Userspace observing only pin state therefore sees user intent, while
lock status is the authoritative indicator of whether the requested
clock is actually selected and synchronizing. This matches the DPLL
subsystem model where pin state describes topology and device lock
status describes signal quality.

TX reference selection topology:
  - External references (SYNCE, EREF0) are represented as TXCLK pins
  - The internal ENET/TXCO clock has no pin representation; when
    selected, all TXCLK pins are reported DISCONNECTED

With this change, TX reference clocks on E825 devices can be reliably
selected, observed via standard DPLL interfaces, and monitored for
effective synchronization through TXC DPLL lock status.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile     |   2 +-
 drivers/net/ethernet/intel/ice/ice.h        |  12 +
 drivers/net/ethernet/intel/ice/ice_dpll.c   | 192 ++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h   |  30 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c    |  37 ++-
 drivers/net/ethernet/intel/ice/ice_ptp.h    |   6 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  37 +++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  10 +
 drivers/net/ethernet/intel/ice/ice_txclk.c  | 347 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txclk.h  |  40 +++
 10 files changed, 693 insertions(+), 20 deletions(-)
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
index 725b130dd3a2..f72bb1aa4067 100644
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
index fe9267adc295..673a817ef417 100644
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
 
@@ -2615,6 +2614,82 @@ ice_dpll_rclk_state_on_pin_get(const struct dpll_pin *pin, void *pin_priv,
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
+	struct dpll_pin *old_pin = NULL;
+	struct dpll_pin *new_pin = NULL;
+	enum ice_e825c_ref_clk clk;
+	bool do_switch;
+	int err;
+
+	mutex_lock(&pf->dplls.lock);
+	do_switch = pf->dplls.txclk_switch_requested;
+	clk = pf->ptp.port.tx_clk_req;
+	mutex_unlock(&pf->dplls.lock);
+
+	if (!do_switch)
+		return;
+
+	err = ice_txclk_set_clk(pf, clk);
+
+	mutex_lock(&pf->dplls.lock);
+	/* Only clear the request flag if no newer request arrived while
+	 * the lock was dropped. Otherwise leave it set so the re-queued
+	 * worker run picks up the updated tx_clk_req value.
+	 */
+	if (pf->ptp.port.tx_clk_req == clk)
+		pf->dplls.txclk_switch_requested = false;
+	if (err) {
+		/* Roll back the requested clock to match the current hardware
+		 * state so that ice_txclk_update_and_notify() does not
+		 * misinterpret a future link-up as a failed switch. Only roll
+		 * back if no newer request arrived in the meantime; otherwise
+		 * the re-queued worker run will apply the updated value.
+		 */
+		dev_err(ice_pf_to_dev(pf),
+			"TX clock switch to %u failed, err=%d; reverting\n",
+			clk, err);
+		if (pf->ptp.port.tx_clk_req == clk) {
+			/* Capture pins for post-unlock notification so that
+			 * userspace observes the requested pin flipping back
+			 * to DISCONNECTED and the effective pin to CONNECTED.
+			 */
+			new_pin = ice_txclk_get_pin(pf, clk);
+			old_pin = ice_txclk_get_pin(pf, pf->ptp.port.tx_clk);
+			pf->ptp.port.tx_clk_req = pf->ptp.port.tx_clk;
+		}
+	}
+	mutex_unlock(&pf->dplls.lock);
+
+	if (old_pin)
+		dpll_pin_change_ntf(old_pin);
+	if (new_pin)
+		dpll_pin_change_ntf(new_pin);
+}
+
 /**
  * ice_dpll_txclk_state_on_dpll_set - set a state on TX clk pin
  * @pin: pointer to a pin
@@ -2626,7 +2701,10 @@ ice_dpll_rclk_state_on_pin_get(const struct dpll_pin *pin, void *pin_priv,
  *
  * Dpll subsystem callback, set a state of a Tx reference clock pin
  *
+ * Context: Acquires and releases pf->dplls.txclk_notify_rwsem (read) and
+ *          pf->dplls.lock.
  * Return:
+ * * 0 - success
  * * negative - failure
  */
 static int
@@ -2635,11 +2713,49 @@ ice_dpll_txclk_state_on_dpll_set(const struct dpll_pin *pin, void *pin_priv,
 				 void *dpll_priv, enum dpll_pin_state state,
 				 struct netlink_ext_ack *extack)
 {
-	/*
-	 * TODO: set HW accordingly to selected TX reference clock.
-	 * To be added in the follow up patches.
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_pf *pf = p->pf;
+	enum ice_e825c_ref_clk new_clk;
+	int ret = 0;
+
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
+	if (state != DPLL_PIN_STATE_CONNECTED &&
+	    state != DPLL_PIN_STATE_DISCONNECTED) {
+		NL_SET_ERR_MSG(extack,
+			       "unsupported pin state for TX reference clock");
+		return -EINVAL;
+	}
+
+	/* Hold txclk_notify_rwsem for read across the flag test and the
+	 * queue_work() below so that ice_dpll_deinit()'s down_write barrier
+	 * waits for any in-flight queueing to finish before cancel_work_sync()
+	 * runs. Pair with the ICE_FLAG_DPLL gate so a callback arriving after
+	 * teardown bails out without touching freed pins or the workqueue.
 	 */
-	return -EOPNOTSUPP;
+	down_read(&pf->dplls.txclk_notify_rwsem);
+	mutex_lock(&pf->dplls.lock);
+	if (!test_bit(ICE_FLAG_DPLL, pf->flags)) {
+		ret = -ENODEV;
+		goto unlock;
+	}
+	if (state == DPLL_PIN_STATE_DISCONNECTED &&
+	    p->tx_ref_src != pf->ptp.port.tx_clk_req)
+		goto unlock;
+
+	new_clk = (state == DPLL_PIN_STATE_DISCONNECTED) ? ICE_REF_CLK_ENET :
+			p->tx_ref_src;
+	if (new_clk == pf->ptp.port.tx_clk_req)
+		goto unlock;
+
+	pf->ptp.port.tx_clk_req = new_clk;
+	pf->dplls.txclk_switch_requested = true;
+	queue_work(pf->dplls.wq, &pf->dplls.txclk_work);
+unlock:
+	mutex_unlock(&pf->dplls.lock);
+	up_read(&pf->dplls.txclk_notify_rwsem);
+	return ret;
 }
 
 /**
@@ -2651,10 +2767,21 @@ ice_dpll_txclk_state_on_dpll_set(const struct dpll_pin *pin, void *pin_priv,
  * @state: on success holds pin state on parent pin
  * @extack: error reporting
  *
- * dpll subsystem callback, get a state of a TX clock reference pin.
+ * TXCLK DPLL pin state is derived and not stored explicitly.
  *
+ * Only external TX reference clocks (SYNCE, EREF0) are modeled
+ * as DPLL pins. The internal ENET (TXCO) clock has no pin and,
+ * when selected, all TXCLK pins are reported DISCONNECTED.
+ *
+ * During a pending TXCLK switch, the requested pin may be
+ * reported as CONNECTED before hardware verification.
+ * Hardware acceptance and synchronization are reported
+ * exclusively via TXC DPLL lock-status.
+ *
+ * Context: Acquires and releases pf->dplls.lock
  * Return:
  * * 0 - success
+ * * negative - failure
  */
 static int
 ice_dpll_txclk_state_on_dpll_get(const struct dpll_pin *pin, void *pin_priv,
@@ -2663,11 +2790,18 @@ ice_dpll_txclk_state_on_dpll_get(const struct dpll_pin *pin, void *pin_priv,
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
+	else
+		*state = DPLL_PIN_STATE_DISCONNECTED;
+	mutex_unlock(&pf->dplls.lock);
 
 	return 0;
 }
@@ -3659,6 +3793,12 @@ static int ice_dpll_deinit_txclk_pins(struct ice_pf *pf)
 				 &ice_dpll_txclk_ops,
 				 ARRAY_SIZE(pf->dplls.txclks));
 	ice_dpll_release_pins(&pf->dplls.txclks[E825_EXT_EREF_PIN_IDX], 1);
+	/* ice_dpll_release_pins() puts the pin but does not clear the slot,
+	 * unlike ice_dpll_release_fwnode_pin() used for SYNCE below. NULL it
+	 * so a late ice_txclk_get_pin() returns NULL rather than a dangling
+	 * pointer.
+	 */
+	pf->dplls.txclks[E825_EXT_EREF_PIN_IDX].pin = NULL;
 	ice_dpll_release_fwnode_pin(synce_pin);
 	return 0;
 }
@@ -4532,7 +4672,7 @@ static int ice_dpll_init_info_e825c(struct ice_pf *pf)
 
 	d->clock_id = ice_generate_clock_id(pf);
 	d->num_inputs = ICE_SYNCE_CLK_NUM;
-	dt->dpll_state = DPLL_LOCK_STATUS_UNLOCKED;
+	dt->dpll_state = ice_txclk_lock_status(pf->ptp.port.tx_clk);
 	dt->mode = DPLL_MODE_MANUAL;
 	dt->dpll_idx = pf->ptp.port.port_num;
 
@@ -4679,10 +4819,30 @@ void ice_dpll_deinit(struct ice_pf *pf)
 {
 	bool cgu = ice_is_feature_supported(pf, ICE_F_CGU);
 
+	/* Clear ICE_FLAG_DPLL under the lock so that any new caller of
+	 * ice_txclk_update_and_notify() observes the cleared flag and
+	 * returns early. In-flight callers that already passed the flag
+	 * check hold txclk_notify_rwsem for read across the out-of-lock
+	 * dpll_*_change_ntf() calls; the down_write/up_write barrier
+	 * below waits for them to finish before pins and the TXC DPLL
+	 * device may be freed.
+	 */
+	mutex_lock(&pf->dplls.lock);
 	clear_bit(ICE_FLAG_DPLL, pf->flags);
+	mutex_unlock(&pf->dplls.lock);
+
+	/* Wait for in-flight ice_txclk_update_and_notify() readers */
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
+		down_write(&pf->dplls.txclk_notify_rwsem);
+		up_write(&pf->dplls.txclk_notify_rwsem);
+	}
+
 	if (cgu)
 		ice_dpll_deinit_worker(pf);
 
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825)
+		cancel_work_sync(&pf->dplls.txclk_work);
+
 	ice_dpll_deinit_pins(pf, cgu);
 	if (!IS_ERR_OR_NULL(pf->dplls.pps.dpll))
 		ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu);
@@ -4711,6 +4871,12 @@ static void ice_dpll_init_e825(struct ice_pf *pf)
 	int err;
 
 	mutex_init(&d->lock);
+	/* Initialize the txclk worker and its notification rwsem before any
+	 * code path can fail: ice_dpll_deinit() runs unconditionally on
+	 * failure and calls cancel_work_sync() / down_write() on these.
+	 */
+	INIT_WORK(&d->txclk_work, ice_dpll_txclk_work);
+	init_rwsem(&d->txclk_notify_rwsem);
 	init_completion(&d->dpll_init);
 
 	err = ice_dpll_init_info_e825c(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index 85e38752056d..103ba3e49068 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
@@ -8,6 +8,8 @@
 
 #define ICE_DPLL_RCLK_NUM_MAX	4
 #define ICE_DPLL_TXCLK_NUM_MAX	2
+#define E825_EXT_EREF_PIN_IDX	0
+#define E825_EXT_SYNCE_PIN_IDX	1
 
 #define ICE_CGU_R10			0x28
 #define ICE_CGU_R10_SYNCE_CLKO_SEL	GENMASK(8, 5)
@@ -126,7 +128,8 @@ struct ice_dpll {
 /** ice_dplls - store info required for CCU (clock controlling unit)
  * @kworker: periodic worker
  * @work: periodic work
- * @lock: locks access to configuration of a dpll
+ * @wq: workqueue used to schedule DPLL-related deferred work
+ * @lock: protects DPLL configuration (see Locking below)
  * @eec: pointer to EEC dpll dev
  * @pps: pointer to PPS dpll dev
  * @txc: pointer to TXC dpll dev
@@ -142,6 +145,28 @@ struct ice_dpll {
  * @input_phase_adj_max: max phase adjust value for an input pins
  * @output_phase_adj_max: max phase adjust value for an output pins
  * @periodic_counter: counter of periodic work executions
+ * @generic: true when generic DPLL ops are used
+ * @txclk_work: deferred TX reference clock switch worker
+ * @txclk_switch_requested: a TX ref clock switch is queued in @txclk_work
+ * @txclk_notify_rwsem: drains in-flight TXCLK notifications on teardown
+ *
+ * Locking:
+ *   Acquisition order (top to bottom):
+ *
+ *     txclk_notify_rwsem (read)
+ *       -> pf->dplls.lock
+ *         -> ctrl_pf->dplls.lock
+ *
+ *   - @lock serializes all DPLL state mutations on this PF. When the
+ *     controlling PF's lock must also be taken (e.g. updating the shared
+ *     tx_refclks usage map), acquire pf->dplls.lock first, then
+ *     ctrl_pf->dplls.lock. Skip the second acquire when pf == ctrl_pf
+ *     to avoid recursive locking.
+ *   - @txclk_notify_rwsem is held for read across
+ *     ice_txclk_update_and_notify(), including the out-of-lock
+ *     dpll_*_change_ntf() calls. ice_dpll_deinit() takes the write side
+ *     standalone (not nested under any other lock) to drain in-flight
+ *     readers before pins and the TXC DPLL device are freed.
  */
 struct ice_dplls {
 	struct kthread_worker *kworker;
@@ -168,6 +193,9 @@ struct ice_dplls {
 	s32 output_phase_adj_max;
 	u32 periodic_counter;
 	bool generic;
+	struct work_struct txclk_work;
+	bool txclk_switch_requested;
+	struct rw_semaphore txclk_notify_rwsem;
 };
 
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 36df742c326c..380833a24327 100644
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
@@ -3090,6 +3089,21 @@ static int ice_ptp_setup_pf(struct ice_pf *pf)
 		 &pf->adapter->ports.ports);
 	mutex_unlock(&pf->adapter->ports.lock);
 
+	/* Seed the per-PHY Tx reference clock usage map for this port.
+	 * Only meaningful on E825 (other MAC types don't expose tx-clk
+	 * selection). No locking is needed because this runs during
+	 * ice_ptp_init() before pf->dplls.lock exists and before any
+	 * link event or DPLL callback can observe the map.
+	 */
+	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
+		u8 port_num, phy;
+
+		port_num = ptp->port.port_num;
+		phy = port_num / pf->hw.ptp.ports_per_phy;
+		set_bit(port_num,
+			&ctrl_ptp->tx_refclks[phy][pf->ptp.port.tx_clk]);
+	}
+
 	return 0;
 }
 
@@ -3318,6 +3332,19 @@ void ice_ptp_init(struct ice_pf *pf)
 			goto err_exit;
 	}
 
+	ptp->port.tx_clk = ICE_REF_CLK_ENET;
+	ptp->port.tx_clk_req = ICE_REF_CLK_ENET;
+	if (hw->mac_type == ICE_MAC_GENERIC_3K_E825) {
+		enum ice_e825c_ref_clk tx_ref_clk;
+
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
index 8c44bd758a4f..c4b0da7ce20e 100644
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
@@ -261,6 +266,7 @@ struct ice_ptp {
 	struct ptp_clock_info info;
 	struct ptp_clock *clock;
 	struct kernel_hwtstamp_config tstamp_config;
+	unsigned long tx_refclks[ICE_E825_MAX_PHYS][ICE_REF_CLK_MAX];
 	u64 reset_time;
 	u64 tx_hwtstamp_good;
 	u32 tx_hwtstamp_skipped;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 2c18e16fe053..8e5f97835954 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -486,6 +486,43 @@ static int ice_read_phy_eth56g(struct ice_hw *hw, u8 port, u32 addr, u32 *val)
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
index 10795d023f44..16b1988e993d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -383,6 +383,8 @@ int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port);
 int ice_phy_cfg_intr_eth56g(struct ice_hw *hw, u8 port, bool ena, u8 threshold);
 int ice_phy_cfg_ptp_1step_eth56g(struct ice_hw *hw, u8 port);
 int ice_ptp_phy_soft_reset_eth56g(struct ice_hw *hw, u8 port);
+int ice_get_serdes_ref_sel_e825c(struct ice_hw *hw, u8 port,
+				 enum ice_e825c_ref_clk *clk);
 
 #define ICE_ETH56G_NOMINAL_INCVAL	0x140000000ULL
 #define ICE_ETH56G_NOMINAL_PCS_REF_TUS	0x100000000ULL
@@ -795,4 +797,12 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 #define PHY_PTP_1STEP_PD_DELAY_M	GENMASK(30, 1)
 #define PHY_PTP_1STEP_PD_DLY_V_M	BIT(31)
 
+#define SERDES_IP_IF_LN_FLXM_GENERAL(n, m) \
+	(0x32B800 + (m) * 0x100000 + (n) * 0x8000)
+#define CFG_ICTL_PCS_REF_SEL_RX_NT		GENMASK(9, 6)
+#define CFG_ICTL_PCS_REF_SEL_TX_NT		GENMASK(28, 25)
+#define REF_SEL_NT_ENET				0
+#define REF_SEL_NT_EREF0			1
+#define REF_SEL_NT_SYNCE			2
+
 #endif /* _ICE_PTP_HW_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_txclk.c b/drivers/net/ethernet/intel/ice/ice_txclk.c
new file mode 100644
index 000000000000..7630095252e9
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_txclk.c
@@ -0,0 +1,347 @@
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
+struct dpll_pin *
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
+
+	/* Hold ctrl_pf->dplls.lock across both the peer-usage check and
+	 * the enable AQ command so that two PFs racing to enable the same
+	 * peer-PHY clock cannot both observe peer_clk_in_use == false and
+	 * issue duplicate enables.
+	 */
+	mutex_lock(&ctrl_pf->dplls.lock);
+	if (clk == ICE_REF_CLK_SYNCE && phy == ICE_PHY0)
+		peer_clk_in_use = ice_txclk_any_port_uses(ctrl_pf,
+							  ICE_PHY1,
+							  clk);
+	else if (clk == ICE_REF_CLK_EREF0 && phy == ICE_PHY1)
+		peer_clk_in_use = ice_txclk_any_port_uses(ctrl_pf,
+							  ICE_PHY0,
+							  clk);
+
+	if ((clk == ICE_REF_CLK_SYNCE && phy == ICE_PHY0 && !peer_clk_in_use) ||
+	    (clk == ICE_REF_CLK_EREF0 && phy == ICE_PHY1 && !peer_clk_in_use)) {
+		u8 peer_phy = phy ? ICE_PHY0 : ICE_PHY1;
+
+		err = ice_cpi_ena_dis_clk_ref(&pf->hw, peer_phy, clk, true);
+		if (err) {
+			mutex_unlock(&ctrl_pf->dplls.lock);
+			dev_err(ice_pf_to_dev(pf),
+				"Failed to enable the %u TX clock for the %u PHY\n",
+				clk, peer_phy);
+			return err;
+		}
+	}
+	mutex_unlock(&ctrl_pf->dplls.lock);
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
+
+	/* Hold ctrl_pf->dplls.lock across both the usage check and the
+	 * enable AQ command so that two PFs racing to switch to the same
+	 * (phy, clk) cannot both observe clk_in_use == false and issue
+	 * duplicate enables. The tx_refclks bitmap is updated only later
+	 * by ice_txclk_update_and_notify() after link-up, so without this
+	 * the check-then-act window is wide open.
+	 */
+	mutex_lock(&ctrl_pf->dplls.lock);
+	clk_in_use = ice_txclk_any_port_uses(ctrl_pf, phy, clk);
+	if (!clk_in_use) {
+		err = ice_cpi_ena_dis_clk_ref(&pf->hw, phy, clk, true);
+		if (err) {
+			mutex_unlock(&ctrl_pf->dplls.lock);
+			dev_err(ice_pf_to_dev(pf), "Failed to enable the %u TX clock for the %u PHY\n",
+				clk, phy);
+			return err;
+		}
+	}
+	mutex_unlock(&ctrl_pf->dplls.lock);
+
+	if (!clk_in_use) {
+		err = ice_txclk_enable_peer(pf, clk);
+		if (err)
+			return err;
+	}
+
+	/* Clear txclk_switch_requested before the AN restart submission so
+	 * that the post-AN link-up event running ice_txclk_update_and_notify()
+	 * does not bail on a stale "switch still pending" check. The flag's
+	 * contract is "AN restart not yet submitted"; once cleared, the next
+	 * link-up reflects the requested clock or the hardware's response to
+	 * it. Only clear if no newer request has overwritten tx_clk_req while
+	 * we were dropping locks.
+	 */
+	mutex_lock(&pf->dplls.lock);
+	if (pf->ptp.port.tx_clk_req == clk)
+		pf->dplls.txclk_switch_requested = false;
+	mutex_unlock(&pf->dplls.lock);
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
+	bool notify_dpll = false;
+	int err;
+	u8 phy;
+
+	phy = ptp_port->port_num / hw->ptp.ports_per_phy;
+
+	/* Hold txclk_notify_rwsem for read across the entire critical
+	 * region, including the out-of-lock dpll_*_change_ntf() calls
+	 * below. ice_dpll_deinit() takes the write side to wait for all
+	 * in-flight notifications to complete before freeing pins and the
+	 * TXC DPLL device, preventing a use-after-free on rmmod.
+	 */
+	down_read(&pf->dplls.txclk_notify_rwsem);
+	mutex_lock(&pf->dplls.lock);
+	/* Bail out if DPLL subsystem is being torn down. ice_dpll_deinit()
+	 * clears ICE_FLAG_DPLL before freeing pins and the dpll device, so a
+	 * cleared flag under the lock means those objects can no longer be
+	 * safely dereferenced.
+	 */
+	if (!test_bit(ICE_FLAG_DPLL, pf->flags)) {
+		mutex_unlock(&pf->dplls.lock);
+		goto out;
+	}
+	/* If a switch is still pending, the link-up event preceded the
+	 * worker's AN restart. Hardware hasn't applied the new clock yet,
+	 * so reading the SERDES selector now would produce a false failure.
+	 * Let the worker run first; the link-up that follows the AN restart
+	 * will trigger the verification.
+	 */
+	if (pf->dplls.txclk_switch_requested) {
+		mutex_unlock(&pf->dplls.lock);
+		goto out;
+	}
+	/* no TX clock change requested */
+	if (pf->ptp.port.tx_clk == pf->ptp.port.tx_clk_req) {
+		mutex_unlock(&pf->dplls.lock);
+		goto out;
+	}
+	/* verify current Tx reference settings */
+	err = ice_get_serdes_ref_sel_e825c(hw,
+					   ptp_port->port_num,
+					   &clk);
+	if (err) {
+		mutex_unlock(&pf->dplls.lock);
+		goto out;
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
+		/* Update the reference clock bitmap to match the hardware
+		 * clock that was actually accepted, so that
+		 * ice_txclk_any_port_uses() reflects reality even on failure.
+		 * The map is owned by ctrl_pf; take its lock per documented
+		 * order (pf->dplls.lock first, then ctrl_pf->dplls.lock) so
+		 * readers on other PFs observe a consistent snapshot.
+		 */
+		if (!IS_ERR_OR_NULL(ctrl_pf)) {
+			if (ctrl_pf != pf)
+				mutex_lock(&ctrl_pf->dplls.lock);
+			for (int i = 0; i < ICE_REF_CLK_MAX; i++) {
+				if (clk == i)
+					set_bit(ptp_port->port_num,
+						&ctrl_pf->ptp.tx_refclks[phy][i]);
+				else
+					clear_bit(ptp_port->port_num,
+						  &ctrl_pf->ptp.tx_refclks[phy][i]);
+			}
+			if (ctrl_pf != pf)
+				mutex_unlock(&ctrl_pf->dplls.lock);
+		}
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
+	/* update Tx reference clock usage map; map is owned by ctrl_pf,
+	 * take its lock per documented order so readers on other PFs see
+	 * a consistent view.
+	 */
+	if (ctrl_pf != pf)
+		mutex_lock(&ctrl_pf->dplls.lock);
+	for (int i = 0; i < ICE_REF_CLK_MAX; i++)
+		if (clk == i)
+			set_bit(ptp_port->port_num,
+				&ctrl_pf->ptp.tx_refclks[phy][i]);
+		else
+			clear_bit(ptp_port->port_num,
+				  &ctrl_pf->ptp.tx_refclks[phy][i]);
+	if (ctrl_pf != pf)
+		mutex_unlock(&ctrl_pf->dplls.lock);
+
+err_notify:
+	/* Update TXC DPLL lock status based on effective TX clk, while still
+	 * holding the lock to prevent concurrent link-up events from racing
+	 * on dpll_state.
+	 */
+	if (!IS_ERR_OR_NULL(pf->dplls.txc.dpll)) {
+		enum dpll_lock_status new_lock = ice_txclk_lock_status(clk);
+
+		if (pf->dplls.txc.dpll_state != new_lock) {
+			pf->dplls.txc.dpll_state = new_lock;
+			notify_dpll = true;
+		}
+	}
+	mutex_unlock(&pf->dplls.lock);
+
+	/* Notify TX clk pins state transition */
+	if (old_pin)
+		dpll_pin_change_ntf(old_pin);
+	if (new_pin)
+		dpll_pin_change_ntf(new_pin);
+
+	if (notify_dpll && !IS_ERR_OR_NULL(pf->dplls.txc.dpll))
+		dpll_device_change_ntf(pf->dplls.txc.dpll);
+
+out:
+	up_read(&pf->dplls.txclk_notify_rwsem);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_txclk.h b/drivers/net/ethernet/intel/ice/ice_txclk.h
new file mode 100644
index 000000000000..21d97afb2afc
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_txclk.h
@@ -0,0 +1,40 @@
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
+struct dpll_pin *ice_txclk_get_pin(struct ice_pf *pf,
+				   enum ice_e825c_ref_clk ref_clk);
+#endif /* _ICE_TXCLK_H_ */
-- 
2.39.3

