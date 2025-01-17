Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C47EA14AB0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jan 2025 09:08:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC34F61AEA;
	Fri, 17 Jan 2025 08:08:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vTBzISthlKRR; Fri, 17 Jan 2025 08:08:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 243506119F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737101295;
	bh=2QLQnmyk2zuzbMW8kQBhiPRGU4UfXhcdjSKEsFnpk/E=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GMXkq4kattyRAaonvMloSbLFhNjHJL3zgDs4J7hDUFS2NGunCnJW70wVe86O/kXGX
	 4aKTCQH1uzlsMESujVfedz1p+byvt5bTwO5UsZcRrMzwvR+5/AeOk32bN00IHME/y7
	 b/8MqZrYLgeZvqEV6jA1/FvFJx8r96H7YpVO6Jxr+P2UFynT1s4Nrc8+qZCIpUkxyu
	 1poMUVPDrLq7tzOSVXN0f6yTJMXE1n3lZv2DqKmVQWyQo3JtfXc56reVKNEnbhBdyg
	 EsW7ETwuHd97TZq6xXOR+K2oBtudN72sdHzEbV8X31+fqk9piM2lsJsH49rmKIDN/v
	 L6jHclDU96GzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 243506119F;
	Fri, 17 Jan 2025 08:08:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id EEB3331
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 08:08:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E908F60A9F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 08:08:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tZ94EvOYQTrg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jan 2025 08:08:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D001B6088D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D001B6088D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D001B6088D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 08:08:12 +0000 (UTC)
X-CSE-ConnectionGUID: A0MbmWn2SimUL0SvdxC8og==
X-CSE-MsgGUID: Tbfc8Sp/RtK5oz23jlPyMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="25122740"
X-IronPort-AV: E=Sophos;i="6.13,211,1732608000"; d="scan'208";a="25122740"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 00:08:11 -0800
X-CSE-ConnectionGUID: y1sZW+PHTRGdavo3OoClCA==
X-CSE-MsgGUID: QOewXgDMS1OxdgmhAVwoIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,211,1732608000"; d="scan'208";a="136582898"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 17 Jan 2025 00:08:10 -0800
Received: from metan.igk.intel.com (metan.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 52C3D27BA8;
 Fri, 17 Jan 2025 08:08:08 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Fri, 17 Jan 2025 09:06:32 +0100
Message-Id: <20250117080632.10053-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737101293; x=1768637293;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CAk2sP6hixxAfhzaCRYZ3AnAe0FKOzwh0ciqFvjUOtY=;
 b=Yy1Evh2JZ1eiW0wzEXIyA4Qrqy80SZZI5ekuBSE9BHYOfmO8qiuKk7cw
 IWYseTAWCaXwohg4TBBHO2hJpN+n0F/KPk3vxhagnLOZGBzCTPGqGCItc
 OlJvwRMy78EgVZkWsKXb10+6aL5arihUD5blCoQp9PgRq8R2fmH9FW/ZE
 8HpqBMvio4iCLWW0QJ3bjYaaKxcNZWGseaifyKC9HYGLyII/Vbn6j1jVL
 wGh9nRMkj51ztkj2q8yjYfR090COOYPg3lS0W4kdXbMr66CM5Mco839EM
 txa7K6cxpLivatiTtmAjUrjBLTo17XZsJs8NbMn1PLRrPZwcAaKZZfCB4
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Yy1Evh2J
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: refactor
 ice_fdir_create_dflt_rules() function
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

The Flow Director function ice_fdir_create_dflt_rules() calls few
times function ice_create_init_fdir_rule() each time with different
enum ice_fltr_ptype parameter. Next step is to return error code if
error occurred.

Change the code to store all necessary default rules in constant array
and call ice_create_init_fdir_rule() in the loop. It makes it easy to
extend the list of default rules in the future, without the need of
duplicate code more and more.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 21 ++++++++-----------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index ee9862ddfe15..1d118171de37 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -1605,22 +1605,19 @@ void ice_fdir_replay_fltrs(struct ice_pf *pf)
  */
 int ice_fdir_create_dflt_rules(struct ice_pf *pf)
 {
+	const enum ice_fltr_ptype dflt_rules[] = {
+		ICE_FLTR_PTYPE_NONF_IPV4_TCP, ICE_FLTR_PTYPE_NONF_IPV4_UDP,
+		ICE_FLTR_PTYPE_NONF_IPV6_TCP, ICE_FLTR_PTYPE_NONF_IPV6_UDP,
+	};
 	int err;
 
 	/* Create perfect TCP and UDP rules in hardware. */
-	err = ice_create_init_fdir_rule(pf, ICE_FLTR_PTYPE_NONF_IPV4_TCP);
-	if (err)
-		return err;
-
-	err = ice_create_init_fdir_rule(pf, ICE_FLTR_PTYPE_NONF_IPV4_UDP);
-	if (err)
-		return err;
+	for (int i = 0; i < ARRAY_SIZE(dflt_rules); i++) {
+		err = ice_create_init_fdir_rule(pf, dflt_rules[i]);
 
-	err = ice_create_init_fdir_rule(pf, ICE_FLTR_PTYPE_NONF_IPV6_TCP);
-	if (err)
-		return err;
-
-	err = ice_create_init_fdir_rule(pf, ICE_FLTR_PTYPE_NONF_IPV6_UDP);
+		if (err)
+			break;
+	}
 
 	return err;
 }
-- 
2.38.1

