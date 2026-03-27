Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDCxKH8wxmnzHQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:23:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C5734053E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:23:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 031D561275;
	Fri, 27 Mar 2026 07:23:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uys-M-Jzouiz; Fri, 27 Mar 2026 07:23:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D78961279
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774596221;
	bh=k8ikWol00aqCz0hdMjf9FVKFkIrUTmSfPwoqSvNLh/Y=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4q+hChRtMEnv4hm/ilOrro1dvdeOMBYVpFwgKd0sUiFj/e5iZ8ljs13oCzTPxwzw3
	 Tk4ux7qmAGtCD3RN/eW5tFvGvVMypJbnHhVWd98o7Wi8B0EwsaMq4PtUHt5SgjDCnq
	 m5HyxIo5f16Jb3rcsSIgY02YiyVg6Hvkvof8AkHJpZBFUPmp1SREmE/0KGuxtjxtDO
	 tWFpomqbUFaeMFhemE366LpkFC2C0rZIU/FNycSSIseuHLJk65uIWVNxcoUdgffZFA
	 u0dJPSSBWT0B8904UWB+QgNmQRsjqOUS+WN/zPdhUghbGnsBP4mkVp17IBg1/3bsj0
	 1LcLpqOa1RTsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D78961279;
	Fri, 27 Mar 2026 07:23:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5DA9C2D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5027E415FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cQKXGBifPAOq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 07:23:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B6AC641574
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6AC641574
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6AC641574
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:23:38 +0000 (UTC)
X-CSE-ConnectionGUID: kqQMvxwuQTmeYZMiO9dGtg==
X-CSE-MsgGUID: TTRPHrgtQyiAmzUwv8CRcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75733969"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="75733969"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 00:23:38 -0700
X-CSE-ConnectionGUID: n75L8qjOTGu0+SKFP1n+1g==
X-CSE-MsgGUID: piRAxftQSTGygULDgvOr3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="255739090"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa002.jf.intel.com with ESMTP; 27 Mar 2026 00:23:37 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Paul Greenwalt <paul.greenwalt@intel.com>
Date: Fri, 27 Mar 2026 08:23:26 +0100
Message-ID: <20260327072332.130320-3-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774596218; x=1806132218;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cb0iRpw8DUrofh4A8Mn5ZEEHKUREiiFVzuMgPY67uok=;
 b=lEhhM5n7e/44hG9/kSLHz0pgR45ouN12ExhAmby+KI44G/F0m9/TooMz
 maoiyjNEAbB56gIcsA0GZtHXyhfqSFPNu6S9th/CN+ic5pXWvnun9GVhr
 6Jiqocx8jGW3R4meQuO+I4gsSSxX5kci8dMe03JezS8BitIQw5MSf86+J
 UQNegLbsSDbZQK/U/ST5M5k55RIes0fxHMoyX7cibcTgSjMINvpng3p75
 9rP0ugZ0TKdhv8Xwka8gKIgJvGLpE8u9x6e4/nG5U/hCIbWePyoBt9V2O
 g1CyheluI/iWi3leYJ5VRF4AKhhd5PYM3o7QxZLELXbcXts8CmZ1w15JJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lEhhM5n7
Subject: [Intel-wired-lan] [PATCH net] ice: fix PTP Call Trace during PTP
 release
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 57C5734053E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Paul Greenwalt <paul.greenwalt@intel.com>

If a PF reset occurs when the PTP state is ICE_PTP_UNINIT, then
ice_ptp_rebuild() will update the state to ICE_PTP_ERROR. This will
result in the following PTP release call trace during driver unload:

    kernel BUG at lib/list_debug.c:52!
    ice_ptp_release+0x332/0x3c0 [ice]
    ice_deinit_features.part.0+0x10e/0x120 [ice]
    ice_remove+0x100/0x220 [ice]

This was observed when passing PF1 through to a VM. ice_ptp_init()
fails because ctrl_pf is NULL and sets the state to ICE_PTP_UNINIT.

Fix by detecting the ICE_PTP_UNINIT state in ice_ptp_rebuild() and
returning without error, preventing the invalid state transition to
ICE_PTP_ERROR. The only valid path to ICE_PTP_ERROR is from
ICE_PTP_RESETTING after a failed rebuild.

Fixes: 8293e4cb2ff5 ("ice: introduce PTP state machine")
Cc: stable@vger.kernel.org
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---

 drivers/net/ethernet/intel/ice/ice_ptp.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 094e962..6848b1c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -3041,6 +3041,11 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	struct ice_ptp *ptp = &pf->ptp;
 	int err;
 
+	if (ptp->state == ICE_PTP_UNINIT) {
+		dev_dbg(ice_pf_to_dev(pf), "PTP was not initialized, skipping rebuild\n");
+		return;
+	}
+
 	if (ptp->state == ICE_PTP_READY) {
 		ice_ptp_prepare_for_reset(pf, reset_type);
 	} else if (ptp->state != ICE_PTP_RESETTING) {
-- 
2.52.0

