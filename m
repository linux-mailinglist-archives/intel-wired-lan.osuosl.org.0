Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDQrOsJOHWrDYgkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Jun 2026 11:20:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7988161C466
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Jun 2026 11:20:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5345A61069;
	Mon,  1 Jun 2026 09:19:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 70F-Bd_NcS_T; Mon,  1 Jun 2026 09:19:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F94E61044
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780305598;
	bh=dCa1bKgB4ymPa1aKfsVCncGKFDf83bH/vTwfaVpCpsI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VxijnOewXRfxKBXzVnq0iQgl9nUD3RxgxCYrHEalXAH/CnvOKjYUDRe3o9MX+jTrZ
	 QdGGrKWNgznSeMvlJz+tvf1tLe7FGUa+nwFApKRZpO5Yh5dDPBxJEWD6fqcmuhQzja
	 t+/Zxf6e21RKS5DliWPYAjZW19MyrLKKEredBG3qo4W/8H1cuFQRh636y+K7Zqs/7a
	 95teThzZ+sD6/pDpQUy2eUIF/BIlqxHPXT/OfCGRFdJwil360yq7MBxW3XI8RjRXic
	 RJo3vL/wJWrnVcs0XZQW1eVH0IzdxxzBS0VRIzX0VNagKN0BXYluOJeEDyuq9msuf+
	 0Lvf3keEn1IkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F94E61044;
	Mon,  1 Jun 2026 09:19:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 27299257
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2026 09:19:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0D0D284983
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2026 09:19:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aoaCCGEPx51f for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jun 2026 09:19:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 18C4484979
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18C4484979
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 18C4484979
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2026 09:19:55 +0000 (UTC)
X-CSE-ConnectionGUID: ax6jqxi1RSe/nQ+3scYHKg==
X-CSE-MsgGUID: 2mFhQMwCRumzpnY7XPOTHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80791629"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80791629"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:19:55 -0700
X-CSE-ConnectionGUID: EkOct+TAR6O++KHoK23M2A==
X-CSE-MsgGUID: qW9VkmLZRDa2MGEbLvkT8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="247802572"
Received: from gnrd8.igk.intel.com (HELO GNRD8) ([10.123.232.137])
 by orviesa004.jf.intel.com with ESMTP; 01 Jun 2026 02:19:55 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Mon,  1 Jun 2026 09:19:50 +0000
Message-ID: <20260601091951.3017848-3-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260601091951.3017848-1-sergey.temerkhanov@intel.com>
References: <20260601091951.3017848-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780305596; x=1811841596;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Icx98AwhzBCEp8Ti51ZHhHCTBbblff8S5UhwQY2RO6g=;
 b=O5svpKeVZh5mZgzBCkbd+d9ls5WWeJjUsiMhKj4b3xU+rtbdAxoIlnHw
 LVjmkmOwiDNnxoDsXQDUjJ1PNFilzy422sB1c3gRwykiaslJ9ZLXnkNtK
 7hzj+GPtHTqkAhmMV1okkBvJdxsr7WQZ7JWshaLIkFndF4hU21cr3iz7a
 bWJOEte6BZtdGvIsiFffYdbPQin7jHEChKlb7fpnrtkj2DHyMLfG4c1a1
 kzsi2xAkUVsgCkLFtQjrP6POHGt30J+dbI59L0U+HpcGhrcgvbg3B7jJq
 P/9s7LwycS+6dH0ItSmHbIlyBgJUm1eBy2/BdCXxNhX6qaw1suRsCh6p9
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O5svpKeV
Subject: [Intel-wired-lan] [PATCH iwl-net v3 2/3] ice: Zero out the PTP
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.793];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,cloudflare.com:email,intel.com:mid,intel.com:email];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7988161C466
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
index 348fc73607b5..5f14f58f4343 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -3107,6 +3107,18 @@ static void ice_ptp_setup_adapter(struct ice_pf *pf)
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

