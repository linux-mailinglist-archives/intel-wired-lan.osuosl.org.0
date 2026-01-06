Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CBABDCF7C28
	for <lists+intel-wired-lan@lfdr.de>; Tue, 06 Jan 2026 11:22:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80A4E81153;
	Tue,  6 Jan 2026 10:22:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hc8li6TSK3eg; Tue,  6 Jan 2026 10:22:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D78281317
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767694925;
	bh=RcfwQVRAgdW7tI5OXgjpT69o7pvSVpaOV1mGAQ3KoIA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M5ilydcffE5yMpO+dC6bMU51Y2OadrYuAiFh1ZeEoH8N1SgfiwGjVBgLljrlr8dba
	 hFNnKwRo461IVILSfWb0dFZSmAazu0exUzkuU9eUyltJUEZh73BQEIoCu413y6m0O6
	 hArYBkNnfj4W6FxAKFo0923a7GpBMlQCRpUouUhvocVDEZW+nsrL5mrjvLgp+HPHsR
	 sxM0CCtaqFBizNE8XHoc3UtUrYZeFLnmTUDpwhi9gDptEpWmQWWqQZpZ8nYJCaizkA
	 bmhBtwVP60I08PklBj2si4hEGkWxwRATOP6Puzn2x9vlw/dV88IDJocn+J/WcdUEvr
	 qtlnPuc6nhlyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D78281317;
	Tue,  6 Jan 2026 10:22:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B7B81E7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 10:22:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA0E160A52
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 10:22:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2pi8gb5fkqcy for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jan 2026 10:22:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B108560782
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B108560782
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B108560782
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 10:22:02 +0000 (UTC)
X-CSE-ConnectionGUID: XxIjOE8/RkexDapcFIlx1g==
X-CSE-MsgGUID: c9LqENPJQQOH4YSMgFWWVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="68966584"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="68966584"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 02:22:02 -0800
X-CSE-ConnectionGUID: UrmAA2WNSnWul1Hh9/z0ZQ==
X-CSE-MsgGUID: OYMnTDqNQd6mZi+OzoU1OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="207175245"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 02:22:02 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Tue,  6 Jan 2026 12:21:53 +0200
Message-Id: <20260106102153.1577396-3-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260106102153.1577396-1-vitaly.lifshits@intel.com>
References: <20260106102153.1577396-1-vitaly.lifshits@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767694922; x=1799230922;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=egYdx9v0IHYUsQryfEIS34QQOYbZb2uivY8ypP1ig/4=;
 b=c5ithYXQmqmpmtkBhmcCPYJTrZr5hSvB9FMb42YGslQmK/ZFOTJH/1ct
 Ygo2+EMwVRKFwgvQZ0vKSWeU5K0MbhR+FxpRBuJ0pJeEyusw/IxfD9Mh+
 H3iNZ7Y2MuhgwyODGhBqWI80lIynRClXpLo04MZM8fOWw26djRsUoqD2Y
 ge6JJuAUQRuZrlV6TfJL3RDNdf7n0HjeZrVEzSemm0KMB0+rulxPVrPnf
 3nvMmdkxwfLKtWbW1mPbE0/e0cgwggpiuIUL7uMYziVib8OWTbYyCUbBU
 oEaMvvFI94rODTZIFPCd9XPfw4V4Rh12rKtTaj/zRgnE4XJv94qzqpTfK
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c5ithYXQ
Subject: [Intel-wired-lan] [PATCH iwl-net v3 2/2] e1000e: clear DPG_EN after
 reset to avoid autonomous power-gating
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

Panther-lake systems introduced autonmous power gating feature for
supporting low power state in shutdown state. As part of it, the
reset value of DPG_EN bit was changed to 1. Therefore to avoid
errors such as Tx/Rx hangs, packet loss and packet corruption
clear this bit after performing hardware reset.

Fixes: 0c9183ce61bc ("e1000e: Add support for the next LOM generation")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
v3: rephrase a comment in the code
v2: fix a typo in a macro
v1: initial version
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index eead80bba6f4..9509157cadd6 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -4932,6 +4932,16 @@ static s32 e1000_reset_hw_ich8lan(struct e1000_hw *hw)
 	reg |= E1000_KABGTXD_BGSQLBIAS;
 	ew32(KABGTXD, reg);
 
+	/*
+	 * The hardware reset value of the DPG_EN bit is 1.
+	 * Clear DPG_EN to prevent unexpected autonomous power gating.
+	 */
+	if (hw->mac.type >= e1000_pch_ptp) {
+		reg = er32(CTRL_EXT);
+		reg &= ~E1000_CTRL_EXT;
+		ew32(CTRL_EXT, reg);
+	}
+
 	return 0;
 }
 
-- 
2.34.1

