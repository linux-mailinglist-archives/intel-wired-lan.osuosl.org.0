Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCq/CAUNl2mTuAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Feb 2026 14:15:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 505F915EF5C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Feb 2026 14:15:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E2D140AA1;
	Thu, 19 Feb 2026 13:15:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lLlaVRI3yXsU; Thu, 19 Feb 2026 13:15:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F41740AAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771506946;
	bh=8d/gcwZgVClPwsFGUuCBPxWwtUzzW80Rcoy/zgCLPmA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=bOrLphiBp0yGLqUiChinxawr8FKPCuRECqAJMpoTYZW2CGp0HMejp2nfBkVaTEfav
	 NYn3ISogeF4nF4DULkzQjW2j5MTbA9RhU6iuBKyZNVTsGdVmIA18GeCSxMyfYABOv/
	 mmegdTyuyN3gHWPKCtwsflzPx0eP/8DocHNoYC7Rw8BvxPMak7UcFtezFt7VmQcznH
	 +Gh2IVN3GCH4QhnaBF5ETBElzmqxstRaCuPotL4BJlKyE2R68Gk1WkiLoBrT9+1GA1
	 qcnYrGyBrlZ1DUGJSV0N9zk3Yuds0CWpywLNqqNvhes6Sa85zqm62eQn4+I2Xgkc9l
	 MmO5t8P8yKj6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F41740AAD;
	Thu, 19 Feb 2026 13:15:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 720E11CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 13:15:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 630EE822B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 13:15:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QutxoSy4ZyBJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Feb 2026 13:15:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4E6A4822AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E6A4822AE
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E6A4822AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 13:15:41 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-517--NOQNMZJOUiwED6UfB8QYA-1; Thu,
 19 Feb 2026 08:15:37 -0500
X-MC-Unique: -NOQNMZJOUiwED6UfB8QYA-1
X-Mimecast-MFC-AGG-ID: -NOQNMZJOUiwED6UfB8QYA_1771506935
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 7443C1956070; Thu, 19 Feb 2026 13:15:35 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.32.59])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 217DD1954111; Thu, 19 Feb 2026 13:15:30 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 19 Feb 2026 14:15:00 +0100
Message-ID: <20260219131500.2271897-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-MFC-PROC-ID: UaHDOa----0tXPZ9nA3F-_aJPiJVTF5DuGu5iyU5HjA_1771506935
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1771506940;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=8d/gcwZgVClPwsFGUuCBPxWwtUzzW80Rcoy/zgCLPmA=;
 b=iWIwbDtmLPDgcOOAArVJzWsNnw7eURBmrmDeoRe9ul7a8jJsTQ5zwzsH5+Qqy2hG+D7GdH
 cgZSVa3T6am7q1UDN+f4OsZCTptQpF3JnNtL65s+JxSr1VtU4BZYP28uHLALAyEp+RknVO
 XJTbB6ZUoHQd14nqKx+4VJsUqHn/TLU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=iWIwbDtm
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix missing dpll
 notification for SW pins
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
Cc: ivecera@redhat.com, piotr.kwapulinski@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:piotr.kwapulinski@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 505F915EF5C
X-Rspamd-Action: no action

ice_dpll_notify_changes() sends dpll_pin_change_ntf() only for the
direct CGU input pin stored in d->active_input. Software-controlled
pins (SMA/U.FL) are separate dpll_pin objects that wrap a backing CGU
input, but they never receive a change notification. As a result,
userspace consumers such as synce4l that monitor SMA pins via dpll
netlink never learn when the pin state transitions (e.g. from
SELECTABLE to CONNECTED), even though 'dpll pin show' reports the
correct state on demand.

When the active input changes, also send dpll_pin_change_ntf() for any
registered SMA/U.FL input pin whose backing CGU input matches the old
or new active input.

v2:
- Extract ice_dpll_sw_pin_needs_notify() helper for readability,
- Move loop variable into for() scope.

Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
Signed-off-by: Petr Oros <poros@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index c2ad39bfe177db..2a505d924fcbae 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -2468,8 +2468,18 @@ static u64 ice_generate_clock_id(struct ice_pf *pf)
  *
  * Once change detected appropriate event is submitted to the dpll subsystem.
  */
+static bool
+ice_dpll_sw_pin_needs_notify(struct ice_dpll_pin *p,
+			     struct dpll_pin *active, struct dpll_pin *old)
+{
+	return p->pin &&
+	       p->direction == DPLL_PIN_DIRECTION_INPUT &&
+	       (p->input->pin == active || p->input->pin == old);
+}
+
 static void ice_dpll_notify_changes(struct ice_dpll *d)
 {
+	struct ice_dplls *dplls = &d->pf->dplls;
 	bool pin_notified = false;
 
 	if (d->prev_dpll_state != d->dpll_state) {
@@ -2477,6 +2487,8 @@ static void ice_dpll_notify_changes(struct ice_dpll *d)
 		dpll_device_change_ntf(d->dpll);
 	}
 	if (d->prev_input != d->active_input) {
+		struct dpll_pin *old = d->prev_input;
+
 		if (d->prev_input)
 			dpll_pin_change_ntf(d->prev_input);
 		d->prev_input = d->active_input;
@@ -2484,6 +2496,14 @@ static void ice_dpll_notify_changes(struct ice_dpll *d)
 			dpll_pin_change_ntf(d->active_input);
 			pin_notified = true;
 		}
+		for (int i = 0; i < ICE_DPLL_PIN_SW_NUM; i++) {
+			if (ice_dpll_sw_pin_needs_notify(&dplls->sma[i],
+							 d->active_input, old))
+				dpll_pin_change_ntf(dplls->sma[i].pin);
+			if (ice_dpll_sw_pin_needs_notify(&dplls->ufl[i],
+							 d->active_input, old))
+				dpll_pin_change_ntf(dplls->ufl[i].pin);
+		}
 	}
 	if (d->prev_phase_offset != d->phase_offset) {
 		d->prev_phase_offset = d->phase_offset;
-- 
2.52.0

