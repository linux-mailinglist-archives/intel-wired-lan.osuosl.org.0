Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EA47JN1K4mnx4QAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 16:59:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0863941C549
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 16:59:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26A0C60E02;
	Fri, 17 Apr 2026 14:59:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8K0fat6z678K; Fri, 17 Apr 2026 14:59:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 730C060E03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776437978;
	bh=HEPdyw6AatoRW7dZ87XoM4QrLpIsuCA3Ya6pp2WqSW0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Di3Sydcsr8e5pFA8ksiTfyfyH4Bi/ITYmfdZHBIj54N5dbxd4vG7s6RjiZuQ5tN0b
	 YKzah5w7TFGOAOGEDYjrs/boIYW7KoOveXoIZjW53jIFkhAvlOszsghqjtmrxeLbCg
	 agy4qhYuIiqHqlA/3MDBgLLhehJTIaeQvpg/FWVo8j3OQNpHuuHGdMBQ3m5Y8SJ7Lq
	 t870PKMYoKSkCbwiC8YVvkg2epLac2Oe8yr96G8qMtfLGnvW/3Dr+cHnBRqU1mvuEV
	 eYtNjqcLK/qGKAt86AKOwMze5VMB7kBLKjsIUEMHskeePmt+uI6tyA/stKp3YbL3cK
	 2SbNrA2eC+bkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 730C060E03;
	Fri, 17 Apr 2026 14:59:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id DF42F270
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 14:59:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C4F1F60E00
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 14:59:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2hJ8pez0GLYE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 14:59:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B610F60DFF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B610F60DFF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B610F60DFF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 14:59:35 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-588-ZQ7uMKMdOJO3sSbQVQ9QGQ-1; Fri,
 17 Apr 2026 10:59:31 -0400
X-MC-Unique: ZQ7uMKMdOJO3sSbQVQ9QGQ-1
X-Mimecast-MFC-AGG-ID: ZQ7uMKMdOJO3sSbQVQ9QGQ_1776437969
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 15302195608B; Fri, 17 Apr 2026 14:59:29 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.32.76])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id A8D9E3000C1C; Fri, 17 Apr 2026 14:59:23 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 17 Apr 2026 16:59:06 +0200
Message-ID: <20260417145907.696307-3-poros@redhat.com>
In-Reply-To: <20260417145907.696307-1-poros@redhat.com>
References: <20260417145907.696307-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-MFC-PROC-ID: ARdAaaJH4N2ocSOE7EgF6KqFopky5nhZCZYCfclFql0_1776437969
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1776437974;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HEPdyw6AatoRW7dZ87XoM4QrLpIsuCA3Ya6pp2WqSW0=;
 b=fhz0ROcUFSg0Fq3W/jw0xR7jQItjuTxbXKL8uaoJmSajWc/EDGwOhTwxw+/SKrjReDjU/M
 LvzSvsixFbKVk0OKpmX+qs+WLnnJypeyYVL3O3sNbt0fV1j3KdyM5j9vu0Ok+7RVPJKeuZ
 lIJ8FoLpTAHxzQey3ZlVnKsGyvJWSD8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=fhz0ROcU
Subject: [Intel-wired-lan] [PATCH iwl-net v7 2/3] ice: fix missing dpll
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
Cc: Ivan Vecera <ivecera@redhat.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Jiri Pirko <jiri@resnulli.us>,
 Rinitha S <sx.rinitha@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [3.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:sx.rinitha@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 0863941C549
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The SMA/U.FL pin redesign (commit 2dd5d03c77e2 ("ice: redesign dpll
sma/u.fl pins control")) introduced software-controlled pins that wrap
backing CGU input/output pins, but never updated the notification and
data paths to propagate pin events to these SW wrappers.

The periodic work sends dpll_pin_change_ntf() only for direct CGU input
pins.  SW pins that wrap these inputs never receive change or phase
offset notifications, so userspace consumers such as synce4l monitoring
SMA pins via dpll netlink never learn about state transitions or phase
offset updates.  Similarly, ice_dpll_phase_offset_get() reads the SW
pin's own phase_offset field which is never updated; the PPS monitor
writes to the backing CGU input's field instead.

Fix by introducing ice_dpll_pin_ntf(), a wrapper around
dpll_pin_change_ntf() that also notifies any registered SMA/U.FL pin
whose backing CGU input matches.  Replace all direct
dpll_pin_change_ntf() calls in the periodic notification paths with
this wrapper.  Fix ice_dpll_phase_offset_get() to return the backing
CGU input's phase_offset for input-direction SW pins.

Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
Signed-off-by: Petr Oros <poros@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 47 +++++++++++++++++------
 1 file changed, 36 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 3a90a2940fdc6e..11b942b83500fb 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -1963,7 +1963,10 @@ ice_dpll_phase_offset_get(const struct dpll_pin *pin, void *pin_priv,
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
@@ -2659,6 +2662,27 @@ static u64 ice_generate_clock_id(struct ice_pf *pf)
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
@@ -2667,6 +2691,7 @@ static u64 ice_generate_clock_id(struct ice_pf *pf)
  */
 static void ice_dpll_notify_changes(struct ice_dpll *d)
 {
+	struct ice_dplls *dplls = &d->pf->dplls;
 	bool pin_notified = false;
 
 	if (d->prev_dpll_state != d->dpll_state) {
@@ -2675,17 +2700,17 @@ static void ice_dpll_notify_changes(struct ice_dpll *d)
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
 
@@ -2714,6 +2739,7 @@ static bool ice_dpll_is_pps_phase_monitor(struct ice_pf *pf)
 
 /**
  * ice_dpll_pins_notify_mask - notify dpll subsystem about bulk pin changes
+ * @dplls: pointer to dplls struct
  * @pins: array of ice_dpll_pin pointers registered within dpll subsystem
  * @pin_num: number of pins
  * @phase_offset_ntf_mask: bitmask of pin indexes to notify
@@ -2723,15 +2749,14 @@ static bool ice_dpll_is_pps_phase_monitor(struct ice_pf *pf)
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
@@ -2907,7 +2932,7 @@ static void ice_dpll_periodic_work(struct kthread_work *work)
 	ice_dpll_notify_changes(de);
 	ice_dpll_notify_changes(dp);
 	if (phase_offset_ntf)
-		ice_dpll_pins_notify_mask(d->inputs, d->num_inputs,
+		ice_dpll_pins_notify_mask(d, d->inputs, d->num_inputs,
 					  phase_offset_ntf);
 
 resched:
-- 
2.52.0

