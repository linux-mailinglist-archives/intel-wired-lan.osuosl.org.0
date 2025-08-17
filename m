Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C23A4B2926C
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 Aug 2025 11:25:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 725A8613EC;
	Sun, 17 Aug 2025 09:25:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G_ju0lpWefiB; Sun, 17 Aug 2025 09:25:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7FD961729
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755422755;
	bh=qTKAboNsyCTTL9us0512krB9IzNg/LcsZlu9OKqZOVc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TICmIqapF0oQYEV8GwRy8gfk/UpILFuBiFnfZQMVhvReSTQsAaKsufSi2uYG4M91R
	 P1ZA7j7ZD/AteD1ivW+RnXoNkdWsI6MnzLfR3Ey2kbqHv96jusZC88Jz9pYBqa8Z1g
	 5mgMeVmQwedcxww2IJN62UQ20+udFttz6OOs4h3CF02XQ0cJOVEYKSRaQK6lqbGTz/
	 vyNQ1u2H90tLQRemhYL5tSGsTygMmqyBl0ypDYYGkZMrrankEErrzoIcTtF3SrrBt2
	 3ydtkxONWsXI9d4/y7S8/03n4+XZoBQ4pMuBZbDCc4+JsLFgv7bDu6wsXWqMe6LEBL
	 Is6XPWTEQY2TQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7FD961729;
	Sun, 17 Aug 2025 09:25:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id ABE9275
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Aug 2025 09:25:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9DB0640A9C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Aug 2025 09:25:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XPSqMwBQuLfZ for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 Aug 2025 09:25:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 13DCE408C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13DCE408C8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 13DCE408C8
 for <intel-wired-lan@osuosl.org>; Sun, 17 Aug 2025 09:25:53 +0000 (UTC)
X-CSE-ConnectionGUID: IwRL8FQMRu+7OJz2klTfJw==
X-CSE-MsgGUID: xNOlcMHRT8qUJqJrmTI9Yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="57746153"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="57746153"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2025 02:25:53 -0700
X-CSE-ConnectionGUID: uCgMFzKBRgayMHJYc3Eszg==
X-CSE-MsgGUID: UDouad6MQm+1r2R3YKDvAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="171590281"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2025 02:25:51 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Mikael Wessel <post@mikaelkw.online>
Date: Sun, 17 Aug 2025 12:25:47 +0300
Message-Id: <20250817092547.2976677-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755422754; x=1786958754;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GhtzGHpHJSBb8LYaAtQlC0m0LmU2neNTzSPM18gr/i8=;
 b=nNys5zf9yo9qwZwUdEKIlotcvDMRF2bEEs3jqOmbKjf1bisc/iw/EFHG
 5tJnwLjI5Dg1QT0lXeepKhfgVUCBeUeHy6zjUE8u1rIw3FmTudbQoTVoG
 X0vDW/lMXcIOJxbiquSBrlCamGXzpOy3cOX6IRPOuQ4+rBlW4BTjt5YPz
 qy4j5Huf7EvhuAifiISz+YxAIQUzQhWgmjc9ixJD+nY00AYeUPmZ0lk0w
 mlT9nGVcG7WSzUNX3D0bcZFhmX3DRXycQci1rPlCtMIaaMEdxhsSBM/Iq
 xmPSWbMgfehv44Iw0xTB0ECAqQqirPs63hZ7fqBAWwfyIONKsP4dSsmG4
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nNys5zf9
Subject: [Intel-wired-lan] [PATCH iwl-net v4 1/1] e1000e: fix heap overflow
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
v3: Change error code to EFBIG
v3: Change max_len and total_len to size_t
v2: Use check_add_overflow for boundary checking
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 9364bc2b4eb1..641a36dd0e60 100644
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
+		return -EFBIG;
+
 	first_word = eeprom->offset >> 1;
 	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
 	eeprom_buff = kmalloc(max_len, GFP_KERNEL);
-- 
2.34.1

