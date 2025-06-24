Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8C5AE588A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 02:30:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F71180F08;
	Tue, 24 Jun 2025 00:30:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dnhGVpUAB3SX; Tue, 24 Jun 2025 00:30:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77CF281F22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750725010;
	bh=rYI4jC3WqZR0KV410VEl3i21ARASJmJQkDlZVXlQufs=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HxpJ33Iq4Qn4XU0l8386EPPQ1BHclWMt5X2R+blaWQWty8TyuVAJTf9nTIsrxDuF2
	 ln3gZFZMsiip906CMdKuLXS7iPr1/2NjI8jq5PBKkvLamgPfTyJu9jDQXf3DsMam9K
	 jUa9dvQk8xWiFRDeaiAtpiMZlIO/liXzrh7D3gsqOMjEo6gR4Fx6NxZB+jYESjfZbN
	 r6U4bGms+LMfMKDqYngc/JxeR8ows9Qv/eYX2gkrwUtqDOR7b/1YjQVaSzZrOhsovY
	 H28Vd0b4R+jKsJeEObCXXbcEayeSmQ7r2UBkta0Xrrz6RQ2AjOGtJxvezU+A9qD2/1
	 5NzT16cUAlqDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77CF281F22;
	Tue, 24 Jun 2025 00:30:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2BEB112C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 12D36610AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J5C6XLnO50wS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 00:30:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7B69D610A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B69D610A9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7B69D610A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:07 +0000 (UTC)
X-CSE-ConnectionGUID: F3o59CuARz2y35SBoaONAg==
X-CSE-MsgGUID: IWSBnUm5RnO9u4v6oUfW/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="52067910"
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="52067910"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 17:30:06 -0700
X-CSE-ConnectionGUID: Ajz5ZZa/RKqa3sSP8X7U+w==
X-CSE-MsgGUID: GcH285SqR+mlyqSrii4EJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="157534035"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 17:30:05 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 23 Jun 2025 17:29:57 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250623-kk-tspll-improvements-alignment-v1-1-fe9a50620700@intel.com>
References: <20250623-kk-tspll-improvements-alignment-v1-0-fe9a50620700@intel.com>
In-Reply-To: <20250623-kk-tspll-improvements-alignment-v1-0-fe9a50620700@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org, 
 Karol Kolacinski <karol.kolacinski@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750725007; x=1782261007;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=VKI23w560cBcnUtRiEIYqxUcHvJkYoTBhjSEyjjnob0=;
 b=KFoN0sYjZci4X1OEyL/FyCQXU/2jmYjEW2tphzU9O2KF/K5YfIkt32u1
 OndAz2+D//QRmtbtD2Elio896L/pgp9M2iUuKbQbp0+NtSrTxsmhbFoAf
 2pvE7xxj0IAPsGuUiiBG9z/sNgdMB7sLoG9iak8beftckB38u+XjJq6zl
 lcJSN5J1rTmaF+GjDUuzxz07rCA5FdW7vC8dW+i+ZXP8X36+dxJPQJvHo
 6Y6x96PEQTLyCfVrr38kazN0Q5n6jizCiN/0dzx4zmsEvJUk7ZVa2AegM
 J9fhWFsvD5entsKHwuPKl8jhM/bCYlFmLk/GYyntnXRfaBAgSS59Hx+yX
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KFoN0sYj
Subject: [Intel-wired-lan] [PATCH 1/8] ice: clear time_sync_en field for
 E825-C during reprogramming
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

When programming the Clock Generation Unit for E285-C hardware, we need
to clear the time_sync_en bit of the DWORD 9 before we set the
frequency.

Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tspll.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index 08af4ced50eb877dce5944d87a90d0dcdb49ff2e..5a2ddd3feba2f96d14c817a697423219cadc45e6 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -342,6 +342,14 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 			return err;
 	}
 
+	if (dw9.time_sync_en) {
+		dw9.time_sync_en = 0;
+
+		err = ice_write_cgue_reg(hw, ICE_CGU_R9, dw9.val);
+		if (err)
+			return err;
+	}
+
 	/* Set the frequency */
 	dw9.time_ref_freq_sel = clk_freq;
 
@@ -353,6 +361,7 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		dw9.time_ref_en = 1;
 		dw9.clk_eref0_en = 0;
 	}
+	dw9.time_sync_en = 1;
 	err = ice_write_cgu_reg(hw, ICE_CGU_R9, dw9.val);
 	if (err)
 		return err;

-- 
2.48.1.397.gec9d649cc640

