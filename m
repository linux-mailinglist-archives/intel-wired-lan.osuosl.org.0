Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDPcLjZdFGqgMwcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 May 2026 16:31:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 270B35CBC11
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 May 2026 16:31:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01FD540F10;
	Mon, 25 May 2026 14:31:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oIwF8_RH8Hgl; Mon, 25 May 2026 14:31:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A42B40F27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779719468;
	bh=EYcP9W9CkLQJA8fszoKK/OsihzYkr8v1rBzU/B2bZTk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ykywHTMZNhf4th3vA/sZdugiq0VKSVAV97OcHreZqrZlDcufdS8/VecG4QRarwAyi
	 ZQ3F2VQo6LU6tnoXn9BcmFfxjciD3GotedfkBbme0nPg3H8cBoJ0GJtIB+mqVRQruH
	 T1oGC0e5UXvPRtgmhwO4z1Gy9Wp37XxY4vCLmBsKtiV0S7/TaRtQ/PIgFnGR5EdmtI
	 0w3lIZTNTvS8dbmk8wGJRtgJf7+268mJnYQqWBM8LCu4vC9Fs8+8bzGr2OFSFHpg/o
	 YtbfxV5BRLEFNd3yho2JEZoj1sv8fb+hoGNUNiyy5i/WVGacJWrgx1fqpoeIJ0MIUL
	 1PXRH6Z3NYKHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A42B40F27;
	Mon, 25 May 2026 14:31:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3ECAD297
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2026 14:31:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BC66A83DB1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2026 14:31:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lIBdO4bBO3iY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 May 2026 14:31:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B76E783506
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B76E783506
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B76E783506
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2026 14:31:04 +0000 (UTC)
X-CSE-ConnectionGUID: YlLdbJBKS6GEeU+nIBGahQ==
X-CSE-MsgGUID: NvTqMpzIQo+zfqHPz7Tu8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="80596725"
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="80596725"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 07:31:04 -0700
X-CSE-ConnectionGUID: ncwv4LK+Qday4YJibI+sxw==
X-CSE-MsgGUID: c8P9fUtvRhy2foWiNnr0lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="237189237"
Received: from gnrd8.igk.intel.com (HELO GNRD8) ([10.123.232.137])
 by fmviesa006.fm.intel.com with ESMTP; 25 May 2026 07:31:03 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Mon, 25 May 2026 14:30:59 +0000
Message-ID: <20260525143100.2758251-3-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260525143100.2758251-1-sergey.temerkhanov@intel.com>
References: <20260525143100.2758251-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779719465; x=1811255465;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ONyXu8YvQ7Y3SvfZEeARqxmes4iIVztw85lvdr0HjNg=;
 b=AJSc8cMzfWYpWJMqjqGYLn9t5/MsnQEw8l8FHX05XUJ9MhdAVarNUUj3
 dG9ZeWIZlI5SzJtjgJ+IMX4jKvng8jYCF0NjW07dGiNotSgnmDugL3zi0
 lNWS7r9amL0oKCJ5ADQVl7If7WcShIH/9BD7wfeYsUW9HSTDbTtcs8PgD
 E2tO9WEFwBr6snNzQfG/xTBK6PckcHWdzRkqXk5LgFbVvw9zzY7OPcwq0
 sykY2K5cCx/NxQfJKF7q3GtEMuXAscJZ08eXGaKLSyjtNY1OA1NehlgCv
 u0DLEpfxeeMKjtfEGdJSzgidweYu7y7BR4yKemG4yRBTihj+QsWA7Masi
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AJSc8cMz
Subject: [Intel-wired-lan] [RESEND PATCH iwl-net v2 2/3] ice: Zero out the
 PTP control PF pointer at ice_adapter cleanup
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.998];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cloudflare.com:email,osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 270B35CBC11
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index 732964fd7c78..7d9c0775fd79 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -3106,6 +3106,18 @@ static void ice_ptp_setup_adapter(struct ice_pf *pf)
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
@@ -3386,6 +3398,8 @@ void ice_ptp_init(struct ice_pf *pf)
 err_clean_pf:
 	mutex_destroy(&ptp->port.ps_lock);
 	ice_ptp_cleanup_pf(pf);
+
+	ice_ptp_cleanup_adapter(pf);
 err_exit:
 	/* If we registered a PTP clock, release it */
 	if (pf->ptp.clock) {
@@ -3414,6 +3428,7 @@ void ice_ptp_release(struct ice_pf *pf)
 	if (pf->ptp.state != ICE_PTP_READY) {
 		mutex_destroy(&pf->ptp.port.ps_lock);
 		ice_ptp_cleanup_pf(pf);
+		ice_ptp_cleanup_adapter(pf);
 		if (pf->ptp.clock) {
 			ptp_clock_unregister(pf->ptp.clock);
 			pf->ptp.clock = NULL;
@@ -3428,6 +3443,8 @@ void ice_ptp_release(struct ice_pf *pf)
 
 	ice_ptp_cleanup_pf(pf);
 
+	ice_ptp_cleanup_adapter(pf);
+
 	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
 
 	ice_ptp_disable_all_extts(pf);
-- 
2.53.0

