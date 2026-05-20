Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOEbMvWfDWqC0AUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 13:50:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D94EB58CEFE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 13:50:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF8FB6101E;
	Wed, 20 May 2026 11:50:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8WEHxbtN14dq; Wed, 20 May 2026 11:50:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D77EC6100B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779277809;
	bh=oRBqnDXkNfBFw1+zn3MNOzhiYJFQPfr0OgcSbhtxsI4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=A8uEhVZdx6iiVDigkJqTM5Pa6VOosZUXpXDlQejPQmAiwL3uRSlTbTZSW/zSGFDEI
	 D8E8YHzVsJ7i3fv/dvlGi/UhOyceztSlz7YbifJxYJbE5DpxykdauGtVq70ROyhCKp
	 HWZplWoFJ3qLL1Oq8vEJ3jJKjhDmTkWUcIzH7ggJMZjYrBCQp/GYd8M3/f/33eNm9S
	 EO603BfX61siKWJsZ40+tXoRcgV/hpsaqTDxv4xloNZ8C0Ue3lvj0oYybzSQ/E0Utf
	 K+JYXJ4ONDfYFe/U4IkrEVF0jak/NuiPXPfzS6wW8ZoUKlc2SALVbAgrORc4HdPwJ/
	 dNVRB1Ed2610g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D77EC6100B;
	Wed, 20 May 2026 11:50:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A00FC1B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 11:50:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 85C2A4124A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 11:50:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DGclq1O2YRgi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2026 11:50:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 74B864123F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74B864123F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 74B864123F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 11:50:07 +0000 (UTC)
X-CSE-ConnectionGUID: hj/y5ndBTCiDFEaDmPwpKg==
X-CSE-MsgGUID: WTU+bJrYTziuhZdDD95wwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="79320433"
X-IronPort-AV: E=Sophos;i="6.23,244,1770624000"; d="scan'208";a="79320433"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 04:50:06 -0700
X-CSE-ConnectionGUID: D2eCtjfWQZqK2cv1F579lg==
X-CSE-MsgGUID: v2roAv3FR0mTP5wxyx0g+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,244,1770624000"; d="scan'208";a="263948176"
Received: from pae-d-dell-r7525-263.igk.intel.com ([172.28.191.240])
 by fmviesa001.fm.intel.com with ESMTP; 20 May 2026 04:50:04 -0700
From: Przemyslaw Korba <przemyslaw.korba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, aleksandr.loktionov@intel.com,
 arkadiusz.kubalewski@intel.com, horms@kernel.org,
 Przemyslaw Korba <przemyslaw.korba@intel.com>
Date: Wed, 20 May 2026 13:50:06 +0200
Message-ID: <20260520115213.10864-2-przemyslaw.korba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779277807; x=1810813807;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zPj1Z4TXNV7bjfsNs+8ZdzoNcOa6GBLLRh60fYgacQQ=;
 b=WC4F+pPwECrygko6vjqlR+XcqsR0ENrXZ9T0PfPQlAEV7OEbmU+2lSMH
 DtKrLXrk5/BAYejRNyVJtYium43p0jo6BnWEkDAWdR+clboekd7+P34eC
 xv//5KG0RuJfjNqm1S1gmPG7mMRRye8q9L/H0pFi2Mj5XsObxc0b0ez4O
 UYwVGOy8tcsXiW6i6ALs8Fd6+U9O6/gkgvu63mYouRATSvtxVlwdkeFSc
 5NgeNodJvih80gquuRxcCTAILhOlwKEonftSvFCD82Y7NGfKz1gY6oqwL
 vLp1Ss6GX64tueo5sYibmqzRMha5x1uLvR279JVJinJzy81JIagFAz55u
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WC4F+pPw
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: suppress DPLL errors
 during reset recovery
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D94EB58CEFE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

During reset recovery, the admin queue returns EBUSY which is expected
behavior. However, the DPLL subsystem was logging these as errors and
incrementing the error counter, potentially leading to unnecessary
warnings and even disabling the DPLL periodic worker if the threshold
was reached.

Suppress error logging and error counter increments when the admin
queue returns EBUSY, as this is expected during reset recovery and
not a real failure condition.

test case:
- ethtool --reset eth3 irq-shared dma-shared filter-shared offload-shared
mac-shared phy-shared ram-shared
- observe if dmesg EBUSY errors are gone

Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
---
v2:
add missing EBUSY check in ice_dpll_pps_update_phase_offsets()
v1:
https://lore.kernel.org/intel-wired-lan/20260520105311.5336-1-przemyslaw.korba@intel.com/T/#u
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 0704e92ab043..815792567a94 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -784,7 +784,7 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
 				   ret,
 				   libie_aq_str(pf->hw.adminq.sq_last_status),
 				   pin_type_name[pin_type], pin->idx);
-	else
+	else if (pf->hw.adminq.sq_last_status != LIBIE_AQ_RC_EBUSY)
 		dev_err_ratelimited(ice_pf_to_dev(pf),
 				    "err:%d %s failed to update %s pin:%u\n",
 				    ret,
@@ -2821,7 +2821,8 @@ static int ice_dpll_pps_update_phase_offsets(struct ice_pf *pf,
 	*phase_offset_pins_updated = 0;
 	ret = ice_aq_get_cgu_input_pin_measure(&pf->hw, DPLL_TYPE_PPS, meas,
 					       ARRAY_SIZE(meas));
-	if (ret && pf->hw.adminq.sq_last_status == LIBIE_AQ_RC_EAGAIN) {
+	if (ret && (pf->hw.adminq.sq_last_status == LIBIE_AQ_RC_EAGAIN ||
+		    pf->hw.adminq.sq_last_status == LIBIE_AQ_RC_EBUSY)) {
 		return 0;
 	} else if (ret) {
 		dev_err(ice_pf_to_dev(pf),
@@ -2883,10 +2884,12 @@ ice_dpll_update_state(struct ice_pf *pf, struct ice_dpll *d, bool init)
 		d->dpll_idx, d->prev_input_idx, d->input_idx,
 		d->dpll_state, d->prev_dpll_state, d->mode);
 	if (ret) {
-		dev_err(ice_pf_to_dev(pf),
-			"update dpll=%d state failed, ret=%d %s\n",
-			d->dpll_idx, ret,
-			libie_aq_str(pf->hw.adminq.sq_last_status));
+		/* EBUSY is expected during reset recovery, don't log error */
+		if (pf->hw.adminq.sq_last_status != LIBIE_AQ_RC_EBUSY)
+			dev_err(ice_pf_to_dev(pf),
+				"update dpll=%d state failed, ret=%d %s\n",
+				d->dpll_idx, ret,
+				libie_aq_str(pf->hw.adminq.sq_last_status));
 		return ret;
 	}
 	if (init) {
@@ -2955,7 +2958,9 @@ static void ice_dpll_periodic_work(struct kthread_work *work)
 	    d->periodic_counter % dp->phase_offset_monitor_period == 0)
 		ret = ice_dpll_pps_update_phase_offsets(pf, &phase_offset_ntf);
 	if (ret) {
-		d->cgu_state_acq_err_num++;
+		/* EBUSY is expected during reset recovery */
+		if (pf->hw.adminq.sq_last_status != LIBIE_AQ_RC_EBUSY)
+			d->cgu_state_acq_err_num++;
 		/* stop rescheduling this worker */
 		if (d->cgu_state_acq_err_num >
 		    ICE_CGU_STATE_ACQ_ERR_THRESHOLD) {

base-commit: 7fd738d8cf34f46a7ec485426e2a5423ade8a63b
prerequisite-patch-id: 45f595ded339d5f7feea2ea7ff196db3c08e3503
-- 
2.43.0

