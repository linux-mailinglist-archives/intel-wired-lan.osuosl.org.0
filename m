Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAAeNweae2nOGAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 18:33:59 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 696ABB2F32
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 18:33:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96E9240C34;
	Thu, 29 Jan 2026 17:33:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EB_RyllBSOzH; Thu, 29 Jan 2026 17:33:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A83340C4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769708037;
	bh=iGrxPtow25DQCg7gYX4cuizprfQXIsgOmTd0n3Na5VQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=johzqvUXQO4QQiqOcjQDvXoYuI98FKqmiaXyGO82omvyguZeEKzsIjr9eVhMlqtog
	 +IgRODIfpbxgyDl+tf35j9X7Mt3k2GbySFLxNhyTotK68CGuMgeMY0LdBDy7Iidfq6
	 SgbvOUpoRPelLsTxzQFFQEEz9Ksah0AM7XMkPmuPpfi0162o7UT/HfaamqPmdGSDly
	 nrID38AUu7yp5NKvPcfGYY2OvtBByINFQnACvBbtUW7TkEdNOyFdEIQfxTuZ8mb1h4
	 OpWFl4mmiWM/HCojakiG+iXeBZS3X95hGqz99dM/Td7VHSnLkuCkB3wgVgZy1Wgxis
	 1Zmi5CrEuqB4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A83340C4A;
	Thu, 29 Jan 2026 17:33:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E4932CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 17:33:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8144683E42
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 17:33:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q0MNDaxhstfV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 17:33:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CCBC683C90
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCBC683C90
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CCBC683C90
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 17:33:53 +0000 (UTC)
X-CSE-ConnectionGUID: PkWPpg5eSdmlGABH0TSTDg==
X-CSE-MsgGUID: hvHgIUSyS2GSl7Jxz7j/4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70669875"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="70669875"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:33:53 -0800
X-CSE-ConnectionGUID: 4X0A2IIfTjq0eptgPZDixw==
X-CSE-MsgGUID: TehO8w2/S227xSzpkeJksQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="212714930"
Received: from amlin-018-252.igk.intel.com ([10.102.18.252])
 by orviesa003.jf.intel.com with ESMTP; 29 Jan 2026 09:33:52 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, dan.carpenter@linaro.org, horms@kernel.org,
 pmenzel@molgen.mpg.de, Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Date: Thu, 29 Jan 2026 18:54:55 +0100
Message-ID: <20260129175455.174241-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769708034; x=1801244034;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wvvhLxpUEzjH/aPyrEvcmEFhPUBwZcBiCHVY0w9yFpE=;
 b=FZdCRG/Gwx14Pd84GDbv8mLeSHsoO8yuMXlBASbV8b8BNsOxLkeFNY+q
 NzdqQa1gBMXGa7RaMs6+kI2HR+XlkhyCgo14S0ymVmOl/1SbxAVnDWCMk
 Bw5wNzfaP3zw24wy+rQl3JmXucTziMqLBuq+6Y/00UXw9dyu61Wp80OoK
 mL2LiwnNq7fPgm0pc8CVfijpXCzTRzvnUBaSY8dB3X+QKi6G9D/8NOW2y
 GerPONdZVhaUm2Svxw3kV6thNGI3qinjh5FbX/j3gd0nOHbD2kFRuYMuL
 msWqCTBdljUw8qy9Glc2g9r4K8xrAMwiU9i/8AquxRSXNWXM1NOu6ftQ6
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FZdCRG/G
Subject: [Intel-wired-lan] [PATCH iwl-next] ixgbe: e610: remove redundant
 assignment
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
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
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,intel.com:mid,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 696ABB2F32
X-Rspamd-Action: no action

Remove unnecessary code. No functional impact.

Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command Interface")
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index c2f8189..6f380fc 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -142,20 +142,14 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
 			  IXGBE_PF_HICR);
 
 	/* Read sync Admin Command response */
-	if ((hicr & IXGBE_PF_HICR_SV)) {
-		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
+	if ((hicr & IXGBE_PF_HICR_SV))
+		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
 			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
-			raw_desc[i] = raw_desc[i];
-		}
-	}
 
 	/* Read async Admin Command response */
-	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
-		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
+	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C))
+		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
 			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
-			raw_desc[i] = raw_desc[i];
-		}
-	}
 
 	/* Handle timeout and invalid state of HICR register */
 	if (hicr & IXGBE_PF_HICR_C)
-- 
2.47.1

