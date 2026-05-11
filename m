Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAsaKp+jAWpKhAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 11:38:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1274D50B0E0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 11:38:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 408786085F;
	Mon, 11 May 2026 09:28:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e3jgtrDtPX9z; Mon, 11 May 2026 09:28:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7445C60860
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778491710;
	bh=Kv72Mbez0SOXhYb/Mr5qddZAU79EhK8WBXXFwF/woAA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uik6ZgQtdzoqpJ9zoVdNhHQOfNEPk3EzLtrBixB1XVQYpqqXTL9zT757zR/vbMP2Q
	 alFv6XvObHWl1dWV9hLK8U4kB9A+6nJ2KzUIM7oal5Tr9wTs0Xzdrc6pRJOIW0dzG5
	 CRCRVnVkN0t5OVXiBXdwwPL7/oLwQJvEmsI4GQP1cWHz4V4HdiTuA8/1uqu3Cl5c/E
	 ooZdySXJ68YntlZGGmWLPiJTit0bvNe992hRlLaAc3dyKYXIDnaXFbEVqIm0ZDE8e/
	 5cSQcfyPYhX90FdLllS67vn8OYfY4vswD2qUH1yadS4zP5GZLhnWF79Pg4hJCvDxim
	 MvXKA9D9r7Usg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7445C60860;
	Mon, 11 May 2026 09:28:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 95D18272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:28:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B78440328
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:28:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Z59_fiA075C for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 09:28:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 77E174021E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77E174021E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 77E174021E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:28:27 +0000 (UTC)
X-CSE-ConnectionGUID: OI8Yog1pRgaCCGvqyG9jdA==
X-CSE-MsgGUID: B0YKUo1rQzytGrH29pQPdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="96938072"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="96938072"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 02:28:27 -0700
X-CSE-ConnectionGUID: bNEbyIz+RtaQLValZGH41A==
X-CSE-MsgGUID: ODf/1FnOTwma45PcmNxnTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="234741136"
Received: from gnrd8.igk.intel.com (HELO GNRD8) ([10.123.232.137])
 by fmviesa008.fm.intel.com with ESMTP; 11 May 2026 02:28:26 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 11 May 2026 09:28:23 +0000
Message-ID: <20260511092824.2522188-3-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260511092824.2522188-1-sergey.temerkhanov@intel.com>
References: <20260511092824.2522188-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778491708; x=1810027708;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QWCnSeVZ07cL1mUrQvg+l2bVA9BfmifCo4P7/bK2UF8=;
 b=gQxm7p/flZ5zbj4hp8w564sMPKOS46jGwjwdtEkahKFFS18X+LJnenLm
 PT+UzaC3FFLEJxeuhDmNvYGD89YOY2xJcZ+DOjk4YBE6MzTfacxtnQOVs
 tKLg3+5yUhor0xWJ+WMol0oIg4WdJmXTcUFdGO9ff3nfYReU/qLD92bIb
 haD7NJItoN/rLz8SJFme/HaWP7iSHS2NxWCkEKXh7nB4HEUL3M/wlXqDU
 K0VBjaaMxSnvdg/fi3EtqRNyjdZNCzxpXbPdzhBT/WQuXSNJGbMirE9EA
 uqdWIhNeh6La760ijn2G6C/c9HuxcCWUb0EhdW/vTUjNJwxLNPTIPyjJ1
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gQxm7p/f
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/3] ice: Zero out the PTP
 control PF pointer at ice_adapter cleanup
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
X-Rspamd-Queue-Id: 1274D50B0E0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.89 / 15.00];
	SEM_URIBL(3.50)[indiana.edu:url];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	BAD_REP_POLICIES(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,body];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_SPAM(0.00)[0.506];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,cloudflare.com:email];
	R_SPF_ALLOW(0.00)[+mx:c];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Zero out the ctrl_pf pointer in ice_adapter when the control PF is removed.
This prevents potential dangling pointer dereference when accessing
PTP-related structures from other PFs of the same adapter.

Fixes: e800654e85b5b ("ice: Use ice_adapter for PTP shared data instead of auxdev")

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Reported-by: Frederick Lawler <fred@cloudflare.com>
Closes: https://lkml.indiana.edu/2507.3/01388.html
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Tested-by: Frederick Lawler <fred@cloudflare.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 23d9a826f88b..36a62c26eab7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -3104,6 +3104,18 @@ static void ice_ptp_setup_adapter(struct ice_pf *pf)
 	rcu_assign_pointer(pf->adapter->ctrl_pf, pf);
 }
 
+static void ice_ptp_cleanup_adapter(struct ice_pf *pf)
+{
+	/* Zero out adapter->ctrl_pf pointer when the ctrl_pf itself
+	 * is being removed to prevent any secondary PFs from accessing
+	 * it after it is deleted.
+	 */
+	if (cmpxchg(&pf->adapter->ctrl_pf,
+		    (struct ice_pf __rcu *)pf, NULL) ==
+			(struct ice_pf __rcu *)pf)
+		synchronize_rcu();
+}
+
 static int ice_ptp_setup_pf(struct ice_pf *pf)
 {
 	struct ice_ptp *ptp = &pf->ptp;
@@ -3384,6 +3396,8 @@ void ice_ptp_init(struct ice_pf *pf)
 err_clean_pf:
 	mutex_destroy(&ptp->port.ps_lock);
 	ice_ptp_cleanup_pf(pf);
+
+	ice_ptp_cleanup_adapter(pf);
 err_exit:
 	/* If we registered a PTP clock, release it */
 	if (pf->ptp.clock) {
@@ -3412,6 +3426,7 @@ void ice_ptp_release(struct ice_pf *pf)
 	if (pf->ptp.state != ICE_PTP_READY) {
 		mutex_destroy(&pf->ptp.port.ps_lock);
 		ice_ptp_cleanup_pf(pf);
+		ice_ptp_cleanup_adapter(pf);
 		if (pf->ptp.clock) {
 			ptp_clock_unregister(pf->ptp.clock);
 			pf->ptp.clock = NULL;
@@ -3426,6 +3441,8 @@ void ice_ptp_release(struct ice_pf *pf)
 
 	ice_ptp_cleanup_pf(pf);
 
+	ice_ptp_cleanup_adapter(pf);
+
 	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
 
 	ice_ptp_disable_all_extts(pf);
-- 
2.53.0

