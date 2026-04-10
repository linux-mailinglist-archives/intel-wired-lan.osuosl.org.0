Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mG/gMJer2GkmgwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 930393D392B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D69360B5B;
	Fri, 10 Apr 2026 07:49:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C4OQy4joeit5; Fri, 10 Apr 2026 07:49:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9463D60BA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775807377;
	bh=6GlKqUmKIlyp2B/krVY2OqYKxCCRjYZs4n+uTIciTmE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5YM26xqpz/8ooN74/7N3Q+kmoF0t5tL9WfeE1pwPaGFngJVS2TszD434l5jeH3ait
	 NZQs96PtggdcTCenRhAMAgPOl4tyLQK5xFhCijCGrMH25xR3vk8iA8JwzFDrGwjUW1
	 vR9M0hO2MaZ42lFkPIOvdEy2n4P7F2PwmOx2LuY1PNSLqVsomcCUHsYWqsVuG6verF
	 9p/KNUZmhj54wUsT9soxoaROruwKv8p4OnTAbSkkcF2SFWrfx6NnsLbBL+3wTyQLGL
	 nWPwOGc1aX2B4165RpPNGnJaDX0wSfIdfTmeXgZHijhCWXIrQkA/CDLCxhG1ThonBr
	 hanbqlfGybTCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9463D60BA7;
	Fri, 10 Apr 2026 07:49:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 44ED7237
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A1AF81A81
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2KX7h03QySt3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 07:49:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1FC0D816EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FC0D816EE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1FC0D816EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:35 +0000 (UTC)
X-CSE-ConnectionGUID: WglRHBMCSZ2cvucURaJ4Qw==
X-CSE-MsgGUID: riFDI2yITJuRlcSjJaU3AA==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="77007939"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="77007939"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 00:49:35 -0700
X-CSE-ConnectionGUID: wN2AYV0USvmh+28PDRlpPw==
X-CSE-MsgGUID: Ps2ZrExOSwiMhINq58Hfag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="228941894"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa008.jf.intel.com with ESMTP; 10 Apr 2026 00:49:34 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Karen Ostrowska <karen.ostrowska@intel.com>
Date: Fri, 10 Apr 2026 09:49:18 +0200
Message-ID: <20260410074921.1254213-8-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775807375; x=1807343375;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vjt6TgEkz+Hi+x04cDH8D9yoeXuxBwErUs8ZL7dPxqw=;
 b=Q5H6lYzaDV588DvFIxHSk8l9AOXejXqA/ItVTlciDRPiWiC/taU0kChU
 vzWLSKRH/4FBDN50DeWZj0ujBNo7sIuCq8fG954tNF+MQ0P1Rq67L1G+/
 hwGG8WlaLlhPMEbXEts8aEohndDcAObd4dWnsn7TEn+Rn++nQ0fhMlg31
 fL0YRK4aU/HZibkOZeSjTHMNcITtwg7cKCuoGDXRx8hmae/n5XZ+42XoF
 RshxDpTt9XRk2FdmDm0WaTsEqrKH0upzVf9RD4Zt0MT5f4ZGUMNZsChgg
 0C1cfa9pK+9KfVEAKDAPkwtiFPOT2nkGRI6Gsdl9DjKuwIABGQ8W3yJsu
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q5H6lYza
Subject: [Intel-wired-lan] [PATCH iwl-next 7/10] ice: emit user-visible info
 message for non-contiguous ETS TC config
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
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 930393D392B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When the remote LLDP peer advertises a non-contiguous TC
mapping the driver silently falls back to a default single-TC
configuration. This leaves the user without any indication of
why their DCB configuration was not honoured.

Print an informational message at the entry of
ice_dcb_noncontig_cfg() so the user knows ETS with
non-contiguous TCs is not supported and that the driver
has fallen back to defaults.

Suggested-by: Karen Ostrowska <karen.ostrowska@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index bd77f1c..1c53b09 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -712,6 +712,8 @@ static int ice_dcb_noncontig_cfg(struct ice_pf *pf)
 	struct device *dev = ice_pf_to_dev(pf);
 	int ret;
 
+	dev_info(dev, "Non-contiguous ETS TC config not supported, falling back to default single TC\n");
+
 	/* Configure SW DCB default with ETS non-willing */
 	ret = ice_dcb_sw_dflt_cfg(pf, false, true);
 	if (ret) {
-- 
2.52.0

