Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB55B1D165
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Aug 2025 06:05:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CA0D6F56A;
	Thu,  7 Aug 2025 04:05:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yp4LsuDcoevw; Thu,  7 Aug 2025 04:05:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A18B66F574
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754539513;
	bh=wIjJxHZcE5PPj/tLXjzAMDCYiy8GUwmX2Tn8w4jqHxQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1EJVrHqAO1Ds6QfJI0wGn3unmFZM1TemCjOk57+HaykIg5ncfIZ4m7I1sjP4U0KSh
	 2AcKH7uCfEIdXKkpMUpiplJGDX0qg5YqmzjqSIAteozeTK+mRtv/60Vpocmnkw14lD
	 DPemjhaUHTX2VfQO7yE5v18A/39jALDRWKfuKEycqRuA13AjItXebc0dg/IjtQle3C
	 8NPJKMR7aFJgKyP7HF71kGmoZrztArR68TLMjzAz3R5shNf0hBIWSJwy9fxek5VrlQ
	 zQkpEXokoSI5TdKeoPlj1BKm96VAMvlqPt6VPnk5oqH8SWxIVIuQ2/DgyEkdTJvWvg
	 L86jcE829MSpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A18B66F574;
	Thu,  7 Aug 2025 04:05:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2CE79D79
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 04:05:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1372441D26
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 04:05:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XFHgVOpUEmsd for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Aug 2025 04:05:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 61C3A41D17
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61C3A41D17
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 61C3A41D17
 for <intel-wired-lan@osuosl.org>; Thu,  7 Aug 2025 04:05:11 +0000 (UTC)
X-CSE-ConnectionGUID: 5W2kZ6gzT3G79w+I5muqYQ==
X-CSE-MsgGUID: u0NC7VAeScCoWjkv2/WNZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="55902078"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="55902078"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 21:05:10 -0700
X-CSE-ConnectionGUID: yBTfgLStRkuaOBzeGaMRlw==
X-CSE-MsgGUID: JPzYG18BSNSzwEhnGKbu3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="195788265"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 21:05:09 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Mikael Wessel <post@mikaelkw.online>
Date: Thu,  7 Aug 2025 07:05:05 +0300
Message-Id: <20250807040505.1716056-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754539511; x=1786075511;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FTOmYlEDQxDsnhNCHrEPWH71YH9sa0gMi0lm3ToAiX4=;
 b=PoKq7bGOV/5GHrQu89LdTR9ok5Lc/ob4OwHRM/bAObGq8i7k1pu+aOV8
 5nkc59KQW8c0U0uPmcOAmal1Q1vHdE5mR1cmWLlW1xuUFcPPa5372jkWh
 kruGG7DBC38ohoiSN48wEBvzUabZHx2t+OwS7f7+bZFiXWRavuM07EDTK
 xDY5JG/vQs2fOFaaXoql2cCIrUmQKpOxxDWDu1VqxRlsUiriVOQwA8j3O
 A7osrI12EClVklDYi2RGj3O4hF8rmFxD9JY3crgq2bOnbGlgzx/VWzcTT
 i4b5g32uwBk5+xYje+bbnc4sMo6ej1dxsElKQHiI8Xpg6YFrY2kmOh4+X
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PoKq7bGO
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: fix heap overflow
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

Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)")
Co-developed-by: Mikael Wessel <post@mikaelkw.online>
Signed-off-by: Mikael Wessel <post@mikaelkw.online>
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
v2: Use check_add_overflow for boundary checking
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 9364bc2b4eb1..2bfbc7fd9559 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -550,6 +550,7 @@ static int e1000_set_eeprom(struct net_device *netdev,
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 	struct e1000_hw *hw = &adapter->hw;
 	u16 *eeprom_buff;
+	u32 total_len;
 	void *ptr;
 	int max_len;
 	int first_word;
@@ -569,6 +570,10 @@ static int e1000_set_eeprom(struct net_device *netdev,
 
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

