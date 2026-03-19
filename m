Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OP0rIUBivGmLxwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 21:53:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 628362D2660
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 21:53:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40DC36162C;
	Thu, 19 Mar 2026 20:53:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HV9fw7zRzbys; Thu, 19 Mar 2026 20:53:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46B426162E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773953596;
	bh=pDuNk1maIwkM81h0xNfMndhfHmB77PaC4WV88nssjB0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8++BtRdeKc3LhHbBuwU8+wt7rTCpA0RRlg78ay+PzZeM1pLkq71+zDKm4RQgCHOCj
	 UWUsBzyr+ntj80MsISvzWnksFpAKrjtJ1fpgtsSrcT2wRe0cqWoQuh7v6448RlJ3uF
	 pZHyYoInSbYAptjTe9t6Y5nkP7A6ldW+UrjypJoOIB/Q+Uu49DZyDIBfg9ElpAJfo2
	 F+hcEoPlXu5Ukvhg3T8SyV6IvJIr+k4PdvWfKIrRYOPEn/JHYijI37CPV28nyR7JO/
	 zGOLv64i8iHJ438z297vXvSXGfW0y+SlXfT691aKSPSf1372YCRlhTAbTowsfO4EVi
	 4qzHCuUnVjVjA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46B426162E;
	Thu, 19 Mar 2026 20:53:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 539E2265
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 20:53:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 38F57411F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 20:53:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qwQCthPnmlEH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 20:53:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2AB1340DD6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2AB1340DD6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2AB1340DD6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 20:53:12 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-493-pHpjlvk4OxSbyGwG68z_pg-1; Thu,
 19 Mar 2026 16:53:05 -0400
X-MC-Unique: pHpjlvk4OxSbyGwG68z_pg-1
X-Mimecast-MFC-AGG-ID: pHpjlvk4OxSbyGwG68z_pg_1773953583
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 591CD18002C8; Thu, 19 Mar 2026 20:53:03 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.45.224.50])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 627931955F21; Thu, 19 Mar 2026 20:52:59 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 19 Mar 2026 21:52:56 +0100
Message-ID: <20260319205256.998876-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-MFC-PROC-ID: wDvrKEHo9fGRhOskXgxiWYactdY45BqlF0Kcezpj3Os_1773953583
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1773953591;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=pDuNk1maIwkM81h0xNfMndhfHmB77PaC4WV88nssjB0=;
 b=DOASXJJ9cJ9omM/nK13X1VpIsSp+mB0UMxHOwu0uREqwEduuaoIvRAn9xF+pEZl6PnLeFO
 1cjeKFEToZ4cuJBa+rb5qT0dcWrtzfoqb1zyyiEgc2Ax3kygwEQObsVTabYEN3JsYfH9m4
 OWQcZU6+SS4b9oh8mAb0KyVzkrNtvvw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=DOASXJJ9
Subject: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix missing dpll
 notifications for SW pins
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
Cc: ivecera@redhat.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [3.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 628362D2660
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The SMA/U.FL pin redesign (commit 2dd5d03c77e2 ("ice: redesign dpll
sma/u.fl pins control")) introduced software-controlled pins that wrap
backing CGU input/output pins, but never updated the notification and
data paths to propagate pin events to these SW wrappers.

There are three problems:

1) ice_dpll_notify_changes() sends dpll_pin_change_ntf() only for the
   direct CGU input pin stored in d->active_input.  When the active
   input changes, SW pins (SMA/U.FL) that wrap the old or new active
   input never receive a change notification.  As a result, userspace
   consumers such as synce4l that monitor SMA pins via dpll netlink
   never learn when the pin state transitions (e.g. from SELECTABLE to
   CONNECTED).

2) ice_dpll_phase_offset_get() returns p->phase_offset for non-active
   SW pins, but this field is never updated for SW pins.  The PPS phase
   offset monitor updates the backing CGU input's phase_offset
   (p->input->phase_offset), not the SW pin's own field.  As a result
   non-active SW pins always report zero phase offset even when the
   backing CGU input has valid PPS measurements.

3) ice_dpll_pins_notify_mask() does not propagate phase offset change
   notifications to SW pins either.  When a HW CGU pin gets a phase
   offset change notification, the SMA/U.FL pin wrapping it is never
   notified, so userspace consumers (ts2phc, synce4l) monitoring SW
   pins via dpll netlink never receive phase offset updates.

Fix all three by:

 - In ice_dpll_phase_offset_get(), return the backing CGU input's
   phase_offset for input-direction SW pins instead of the SW pin's own
   (always zero) field.

 - Introduce ice_dpll_pin_ntf(), a thin wrapper around
   dpll_pin_change_ntf() that also sends notifications to any
   registered SMA/U.FL pin whose backing CGU input matches.  Replace
   all direct dpll_pin_change_ntf() calls in the periodic notification
   paths with ice_dpll_pin_ntf(), so SW pins are automatically notified
   whenever their backing HW pin is.

Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
Signed-off-by: Petr Oros <poros@redhat.com>
---
v4:
 - expanded scope to also fix phase offset reporting and phase offset
   notifications for SW pins (problems 2 and 3 above)
 - replaced ice_dpll_sw_pin_needs_notify() with ice_dpll_pin_ntf(),
   a unified wrapper that covers all notification paths
 - squashed into a single patch
v3: https://lore.kernel.org/all/20260220140700.2910174-1-poros@redhat.com/
 - added kdoc for ice_dpll_sw_pin_needs_notify() helper
v2: https://lore.kernel.org/all/20260219131500.2271897-1-poros@redhat.com/
 - extracted ice_dpll_sw_pin_needs_notify() helper for readability
 - moved loop variable into for() scope
v1: https://lore.kernel.org/all/20260218211414.1411163-1-poros@redhat.com/
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 47 +++++++++++++++++------
 1 file changed, 36 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 62f75701d65205..5cfa19da099bfc 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -1915,7 +1915,10 @@ ice_dpll_phase_offset_get(const struct dpll_pin *pin, void *pin_priv,
 				       d->active_input == p->input->pin))
 		*phase_offset = d->phase_offset * ICE_DPLL_PHASE_OFFSET_FACTOR;
 	else if (d->phase_offset_monitor_period)
-		*phase_offset = p->phase_offset * ICE_DPLL_PHASE_OFFSET_FACTOR;
+		*phase_offset = (p->input &&
+				 p->direction == DPLL_PIN_DIRECTION_INPUT ?
+				 p->input->phase_offset :
+				 p->phase_offset) * ICE_DPLL_PHASE_OFFSET_FACTOR;
 	else
 		*phase_offset = 0;
 	mutex_unlock(&pf->dplls.lock);
@@ -2609,6 +2612,27 @@ static u64 ice_generate_clock_id(struct ice_pf *pf)
 	return pci_get_dsn(pf->pdev);
 }
 
+/**
+ * ice_dpll_pin_ntf - notify pin change including any SW pin wrappers
+ * @dplls: pointer to dplls struct
+ * @pin: the dpll_pin that changed
+ *
+ * Send a change notification for @pin and for any registered SMA/U.FL pin
+ * whose backing CGU input matches @pin.
+ */
+static void ice_dpll_pin_ntf(struct ice_dplls *dplls, struct dpll_pin *pin)
+{
+	dpll_pin_change_ntf(pin);
+	for (int i = 0; i < ICE_DPLL_PIN_SW_NUM; i++) {
+		if (dplls->sma[i].pin && dplls->sma[i].input &&
+		    dplls->sma[i].input->pin == pin)
+			dpll_pin_change_ntf(dplls->sma[i].pin);
+		if (dplls->ufl[i].pin && dplls->ufl[i].input &&
+		    dplls->ufl[i].input->pin == pin)
+			dpll_pin_change_ntf(dplls->ufl[i].pin);
+	}
+}
+
 /**
  * ice_dpll_notify_changes - notify dpll subsystem about changes
  * @d: pointer do dpll
@@ -2617,6 +2641,7 @@ static u64 ice_generate_clock_id(struct ice_pf *pf)
  */
 static void ice_dpll_notify_changes(struct ice_dpll *d)
 {
+	struct ice_dplls *dplls = &d->pf->dplls;
 	bool pin_notified = false;
 
 	if (d->prev_dpll_state != d->dpll_state) {
@@ -2625,17 +2650,17 @@ static void ice_dpll_notify_changes(struct ice_dpll *d)
 	}
 	if (d->prev_input != d->active_input) {
 		if (d->prev_input)
-			dpll_pin_change_ntf(d->prev_input);
+			ice_dpll_pin_ntf(dplls, d->prev_input);
 		d->prev_input = d->active_input;
 		if (d->active_input) {
-			dpll_pin_change_ntf(d->active_input);
+			ice_dpll_pin_ntf(dplls, d->active_input);
 			pin_notified = true;
 		}
 	}
 	if (d->prev_phase_offset != d->phase_offset) {
 		d->prev_phase_offset = d->phase_offset;
 		if (!pin_notified && d->active_input)
-			dpll_pin_change_ntf(d->active_input);
+			ice_dpll_pin_ntf(dplls, d->active_input);
 	}
 }
 
@@ -2664,6 +2689,7 @@ static bool ice_dpll_is_pps_phase_monitor(struct ice_pf *pf)
 
 /**
  * ice_dpll_pins_notify_mask - notify dpll subsystem about bulk pin changes
+ * @dplls: pointer to dplls struct
  * @pins: array of ice_dpll_pin pointers registered within dpll subsystem
  * @pin_num: number of pins
  * @phase_offset_ntf_mask: bitmask of pin indexes to notify
@@ -2673,15 +2699,14 @@ static bool ice_dpll_is_pps_phase_monitor(struct ice_pf *pf)
  *
  * Context: Must be called while pf->dplls.lock is released.
  */
-static void ice_dpll_pins_notify_mask(struct ice_dpll_pin *pins,
+static void ice_dpll_pins_notify_mask(struct ice_dplls *dplls,
+				      struct ice_dpll_pin *pins,
 				      u8 pin_num,
 				      u32 phase_offset_ntf_mask)
 {
-	int i = 0;
-
-	for (i = 0; i < pin_num; i++)
-		if (phase_offset_ntf_mask & (1 << i))
-			dpll_pin_change_ntf(pins[i].pin);
+	for (int i = 0; i < pin_num; i++)
+		if (phase_offset_ntf_mask & BIT(i))
+			ice_dpll_pin_ntf(dplls, pins[i].pin);
 }
 
 /**
@@ -2857,7 +2882,7 @@ static void ice_dpll_periodic_work(struct kthread_work *work)
 	ice_dpll_notify_changes(de);
 	ice_dpll_notify_changes(dp);
 	if (phase_offset_ntf)
-		ice_dpll_pins_notify_mask(d->inputs, d->num_inputs,
+		ice_dpll_pins_notify_mask(d, d->inputs, d->num_inputs,
 					  phase_offset_ntf);
 
 resched:
-- 
2.52.0

