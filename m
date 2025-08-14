Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 493BAB25D16
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Aug 2025 09:25:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EFE3840F88;
	Thu, 14 Aug 2025 07:25:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dEkyfPPbQjH8; Thu, 14 Aug 2025 07:25:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C07940E95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755156320;
	bh=0qexvMyVvKO7JIvfJiZ5gsRbGAaLyswZVTc3GNXvD2g=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XvpPyDKtBHgEwyaAHGeOw7b3dvL6D99KtxhYAHbDaRFhlEM/uJ7rzUBKjpHbE8R2R
	 msM4HxuDso2es4k49C36WbRGQpcJ4G48w1UQ68e3As+S72dX45kkqSs6BBBtCY6z2D
	 WI2EQkC3gI63S04YelzwBD+nVlxGKkVmHCbspvK8s75YfL3SOmVJ2H0PazgpUUarJo
	 bAYz9sN94pJieQrMwK3zXwd8bxLbbZqj95GUlWe7CANC9sO6aIgpZqNwIL/UuQbrEh
	 YILLxAC+j2lgnqljoT73Z2oJkCdQJUxMCwAox9d1rV9EVhZRBGaAtzTwNVL59LHh0V
	 Upt/ibJIdtYyQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C07940E95;
	Thu, 14 Aug 2025 07:25:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3F22C271
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 07:25:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 312FC81E79
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 07:25:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4p-s3066xtaX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Aug 2025 07:25:17 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 14 Aug 2025 07:25:17 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5847281DFF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5847281DFF
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5847281DFF
 for <intel-wired-lan@osuosl.org>; Thu, 14 Aug 2025 07:25:17 +0000 (UTC)
X-CSE-ConnectionGUID: 3arruA05SxG/lrpmIS5KHA==
X-CSE-MsgGUID: fGzNq8miT8qvogMZ0WDfuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="68918428"
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="68918428"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 00:18:11 -0700
X-CSE-ConnectionGUID: I8jU6OsRTTyWTR13MvWGeA==
X-CSE-MsgGUID: f8CaMErJT5u+N5QrQlEEeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,287,1747724400"; d="scan'208";a="166949831"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 00:18:09 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Mikael Wessel <post@mikaelkw.online>
Date: Thu, 14 Aug 2025 10:18:04 +0300
Message-Id: <20250814071804.1542312-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755156317; x=1786692317;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WwxjH5D1BWMJ/0914BGtu1wo/9LrSLpR0Ah6CoIgbfA=;
 b=hLEAUqKQ4hsDMbIJB2IKit0Wef2pc9ZhvLyakBma0m7eOTUSVun3I7nS
 1pBJtympx72R7StQwM8XKO+cjcb+hHONJMWWcIVyKRTdc0kMXJ/dtYSHI
 ZkYw07BZsuDjbd2AGNB9p8rq4S0irsLKkeRw57ldK3oj3DThxksJt09Aj
 nGqN4ihBpTMHXUQWTYMbtN5EJJA20NVZmMCRNkTHLhjRvROONkQRDYukC
 cJMKmQhdcMx25kQTbhASsz5Bjh6F1T2v8DaadSElLufh6r34Wfu973UWM
 mNJZP9UFBkowaWPiczkCL+i7CrlbljCNpkBZAa/fWAU4AzyDt4ETBi2Cv
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hLEAUqKQ
Subject: [Intel-wired-lan] [PATCH iwl-net v3 1/1] e1000e: fix heap overflow
 in e1000_set_eeprom
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

Fix a possible heap overflow in e1000_set_eeprom function by adding
input validation for the requested length of the change in the EEPROM.
In addition, change the variable type from int to size_t for better
code practices and rearrange declarations to RCT.

Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)")
Co-developed-by: Mikael Wessel <post@mikaelkw.online>
Signed-off-by: Mikael Wessel <post@mikaelkw.online>
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
v3: Change max_len and total_len to size_t
v2: Use check_add_overflow for boundary checking
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 9364bc2b4eb1..d7f25f007e8e 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -549,12 +549,12 @@ static int e1000_set_eeprom(struct net_device *netdev,
 {
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 	struct e1000_hw *hw = &adapter->hw;
+	size_t total_len, max_len;
 	u16 *eeprom_buff;
-	void *ptr;
-	int max_len;
+	int ret_val = 0;
 	int first_word;
 	int last_word;
-	int ret_val = 0;
+	void *ptr;
 	u16 i;
 
 	if (eeprom->len == 0)
@@ -569,6 +569,10 @@ static int e1000_set_eeprom(struct net_device *netdev,
 
 	max_len = hw->nvm.word_size * 2;
 
+	if (check_add_overflow(eeprom->offset, eeprom->len, &total_len) ||
+	    total_len > max_len)
+		return -EINVAL;
+
 	first_word = eeprom->offset >> 1;
 	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
 	eeprom_buff = kmalloc(max_len, GFP_KERNEL);
-- 
2.34.1

