Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFDaFbjVvGkk3gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 06:06:00 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CF12D5E46
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 06:06:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA04A6179C;
	Fri, 20 Mar 2026 05:05:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CTOCvqI3ZGcO; Fri, 20 Mar 2026 05:05:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFEBF617A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773983157;
	bh=xf4eE23Qx/NqgGol3EqzlTHB0Gn9VbtYLJFqmUyeLk0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=EBT+I3eB6+SypQ7OWo8So552iPuYOKHCTUu7gkVXFqDMtFCzMhaM/FE+UD9iItUDB
	 PObcUGDI7TBuCkQ6/W+f89/8D7sDJiZsu7PMRkZxa4H3/69ybgkDNpJIWTB2e8l70L
	 rCkFJK3/cYh+L4b/06h0GM0eyWP2nkGRJ9sl/iJT/wsjaZc/y/fkN3XGkPxQLQdtdU
	 wK6u4DKJOjhd6ddgZDsB5c+kvs7FfdzHSzxbfDhosYotp2Db9truf3LSD90RRSZENF
	 rKml+YWvkzqdumKvrVnp8bRvTJSb7Cc+AnIE47SWSxIvq4WT2viq3MaaNkT09i/Zvh
	 UHkVH/CjQrBaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFEBF617A0;
	Fri, 20 Mar 2026 05:05:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CDFD525C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BFFB441398
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DiNppUct7f1U for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 05:05:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CAAD140176
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CAAD140176
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CAAD140176
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:54 +0000 (UTC)
X-CSE-ConnectionGUID: OcG3wEdiTq2TR4rLfuQ//A==
X-CSE-MsgGUID: 7YI02OPfRmuDiuHrzFghQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="75251821"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="75251821"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 22:05:55 -0700
X-CSE-ConnectionGUID: 0Bonq9lmT4uKSouOENriOA==
X-CSE-MsgGUID: LxlWx0osRNeiuEMkhq0vyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="222399184"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa010.jf.intel.com with ESMTP; 19 Mar 2026 22:05:53 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Paul Greenwalt <paul.greenwalt@intel.com>
Date: Fri, 20 Mar 2026 06:05:52 +0100
Message-ID: <20260320050552.422715-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773983155; x=1805519155;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J/TdUYhUCnswK/mCgN8pCjPl17WB9+oNDkEPXVBSo8Q=;
 b=SYiYxp6oSz7f0lzQJ/9anf62Z8oqF6Zv1Thgj8/RusF/lk493x92vpQU
 Iw+oM+Jd9VLBCngNC9K5XJ81Ae4e4dXBKLisXzsNaZ2iM+N4vcIwadV3C
 hrEGH6waMOECu3SisBJIPlou0ac26f9FL0JrlOPqXBULKkjc2gsZxhUJo
 wL/CJQWpC2tTy6cNevqb6Ifgv8JXUYRvr4+qseIeuZ3xPbDPmtajRGeab
 1x9iX0o0nJsZwdJPd6wLU57CCe3psd8F/cHtFxtz9rTRaD2o1QrtuWpAg
 kwI5KoE3j+o+MUo5suPP5L1TbElyVXlmL/Ukunh42D1T1IFIk8Gb4F3I2
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SYiYxp6o
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: update
 ice_link_mode_str_high() with 200G
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 26CF12D5E46
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Paul Greenwalt <paul.greenwalt@intel.com>

Update ice_link_mode_str_high() with string for 200G PHY types.
Without these entries the ice_dump_phy_type() debug helper prints
nothing for phy_type_high bits [5..15], covering all 200G and
400GBASE-FR8 PHY types supported by E825C hardware.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index ce11fea..7cdd6a0 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -84,6 +84,17 @@ static const char * const ice_link_mode_str_high[] = {
 	[2] = "100G_CAUI2",
 	[3] = "100G_AUI2_AOC_ACC",
 	[4] = "100G_AUI2",
+	[5] = "200G_CR4_PAM4",
+	[6] = "200G_SR4",
+	[7] = "200G_FR4",
+	[8] = "200G_LR4",
+	[9] = "200G_DR4",
+	[10] = "200G_KR4_PAM4",
+	[11] = "200G_AUI4_AOC_ACC",
+	[12] = "200G_AUI4",
+	[13] = "200G_AUI8_AOC_ACC",
+	[14] = "200G_AUI8",
+	[15] = "400GBASE_FR8",
 };
 
 /**
-- 
2.52.0

