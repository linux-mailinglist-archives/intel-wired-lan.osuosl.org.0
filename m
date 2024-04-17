Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCDD8A8BCA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Apr 2024 21:03:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFCE2401CD;
	Wed, 17 Apr 2024 19:03:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ltr0C9gBwalS; Wed, 17 Apr 2024 19:03:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDA4E40183
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713380609;
	bh=58egd4cHDGivOdEQDQASS90oGs3tIlYj22kgsEHXwIs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=X31V5d1Kms6dC7BZVwaX8ZiGnvUhbVMlZhJFUwTNn7oo1R+hu3rmjw7xEu+05XAJG
	 A/CbofxP6GSgTjMRVn1QGIuI9PoEMjwb+BLDuRDB8fLOKxZfSKP9s1GOqP8/eKx4hU
	 YHmE/z9QOKYDl7SHJ+lrjG1YEGNxVFn8vQpYh4dBagK08alqnb/wA+u0E/JX8/Aeh5
	 dCmXGAmORyo5GLPiGppAEsMuzwLF5bo8jsw8a16TKR8pUX8XZrg3awvxpl58mJmAGX
	 zCrCaY0AAuQn0czmWU/u4jIP5It5tYph0aNj1i/cojFywQgb3j82CNvtZLCG3Pxr00
	 fdC6k+aJ3UJlg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDA4E40183;
	Wed, 17 Apr 2024 19:03:29 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9EF1A1BF423
 for <intel-wired-lan@osuosl.org>; Wed, 17 Apr 2024 19:03:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 97756606E5
 for <intel-wired-lan@osuosl.org>; Wed, 17 Apr 2024 19:03:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4c4m2E4xrvcS for <intel-wired-lan@osuosl.org>;
 Wed, 17 Apr 2024 19:03:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DB556606D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB556606D6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DB556606D6
 for <intel-wired-lan@osuosl.org>; Wed, 17 Apr 2024 19:03:25 +0000 (UTC)
X-CSE-ConnectionGUID: oFdaekBSR6icjebV2RMaZg==
X-CSE-MsgGUID: /GV5XTmpSLG5zVvFnS/uMA==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8748984"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8748984"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 12:03:25 -0700
X-CSE-ConnectionGUID: Mq5UO9n4RjKFEloUuhf8oA==
X-CSE-MsgGUID: db8uEsm3QrCsH8PgmaRuag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="22781946"
Received: from unknown (HELO ccdlinuxdev11.iil.intel.com) ([143.185.162.51])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 12:03:25 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 17 Apr 2024 22:03:20 +0300
Message-Id: <20240417190320.3159360-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713380606; x=1744916606;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M1uERyI2l5kRwNMPdwjQpYe8BotLfebZJtiQjCIsNt8=;
 b=DXshrIGUo88Eh+aQ0T4LdhMk48wZtMpsmlyCAdx3qaWkVQl+ULJI9Dpq
 z3icMtuojQnMRxMuTfplWlWdvloKeN49TkTePzQRH1pfJSAHwcRBCh5ZO
 KZ2YAmX5DYgSacIqZWWV/F2zMvv/mcYAHh1IUdl2/312UbCl0/ckeAnOP
 7I/RecUYOolrHiOrnMDBK/ymvV0rStaDHHNRitkA2XwIU5psiux44oZ1+
 i1Umd1U0y/K0+SqfIHsamOeDczpNXDrtR9iF3/Wt3UK+IvLEaCvFcJmY2
 PCjk3DmRFLsJKZsOTYv8IIDbwk3GwN+MQXHPsHRMwcKCOl5ZsJORuKEOB
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DXshrIGU
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: change
 usleep_range to udelay in PHY mdic access
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Sasha Neftin <sasha.neftin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a partial revert of commit 6dbdd4de0362 ("e1000e: Workaround
for sporadic MDI error on Meteor Lake systems"). The referenced commit
introduced an issue on vPro systems, where disconnecting and reconnecting
the LAN cable might result in a kernel panic.

This was root caused to the usage of usleep_range in an atomic content
while trying to access the PHY. Change back the usleep_range calls to
udelay.

Fixes: 6dbdd4de0362 ("e1000e: Workaround for sporadic MDI error on Meteor Lake systems")
Co-developed-by: Sasha Neftin <sasha.neftin@intel.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/e1000e/phy.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
index 93544f1cc2a5..f7ae0e0aa4a4 100644
--- a/drivers/net/ethernet/intel/e1000e/phy.c
+++ b/drivers/net/ethernet/intel/e1000e/phy.c
@@ -157,7 +157,7 @@ s32 e1000e_read_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 *data)
 		 * the lower time out
 		 */
 		for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 3); i++) {
-			usleep_range(50, 60);
+			udelay(50);
 			mdic = er32(MDIC);
 			if (mdic & E1000_MDIC_READY)
 				break;
@@ -181,7 +181,7 @@ s32 e1000e_read_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 *data)
 		 * reading duplicate data in the next MDIC transaction.
 		 */
 		if (hw->mac.type == e1000_pch2lan)
-			usleep_range(100, 150);
+			udelay(100);
 
 		if (success) {
 			*data = (u16)mdic;
@@ -237,7 +237,7 @@ s32 e1000e_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data)
 		 * the lower time out
 		 */
 		for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 3); i++) {
-			usleep_range(50, 60);
+			udelay(50);
 			mdic = er32(MDIC);
 			if (mdic & E1000_MDIC_READY)
 				break;
@@ -261,7 +261,7 @@ s32 e1000e_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data)
 		 * reading duplicate data in the next MDIC transaction.
 		 */
 		if (hw->mac.type == e1000_pch2lan)
-			usleep_range(100, 150);
+			udelay(100);
 
 		if (success)
 			return 0;
-- 
2.34.1

