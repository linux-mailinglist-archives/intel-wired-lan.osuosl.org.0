Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0094AB1703C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Jul 2025 13:15:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9ECD1615E1;
	Thu, 31 Jul 2025 11:15:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M0DbMRIi2sU9; Thu, 31 Jul 2025 11:15:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 236B761AF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753960507;
	bh=zS7MuVvuA0Su+FlLUKJKGCqBRBYCSvgUisKqT48SOE4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IC/Y08HgSSCQVqoIAZ/RA5k5qG2UcTcQOsxbnow0U38b/qQftOr1mOQ643BzMW+Tc
	 m+cPC3T4074vfQ3uodU2ikQZpAgvJqvlld6XnxID9rvJchUssNhRxd19strxyxHfdr
	 cVE+wf1NxJYJeySyGtYnZuKknWXGA5o2lVEyM5WUSzH9stgL/U38GWKhh+kDLaONYj
	 uonANMHBhM+aZ3T3WZQ+G+vOz3W1jtX0223/zPw1h44ZAGXjLAejKTgm9HXaR4HcOI
	 6RCQNhubFfCzARnKuWmqZmzQ5FwfPl8DXcO3Zhlz3QByqS4joRNh00R5ybJ0Id9OVq
	 4DHtf7qpc6UrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 236B761AF1;
	Thu, 31 Jul 2025 11:15:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1863F13D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 11:15:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB38E40070
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 11:15:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nvSHIr8OaGwW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Jul 2025 11:15:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5B78A4004A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B78A4004A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B78A4004A
 for <intel-wired-lan@osuosl.org>; Thu, 31 Jul 2025 11:15:04 +0000 (UTC)
X-CSE-ConnectionGUID: R47C7cOXQT+QW7jgM9sVJQ==
X-CSE-MsgGUID: c0VbmOmRS2q8pJIUGzGZDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="60105752"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="60105752"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 04:14:59 -0700
X-CSE-ConnectionGUID: /vPIb04VSvmZZaa0qXhXGw==
X-CSE-MsgGUID: ly4RqufmTtSUxnu4Tr3VBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="163128686"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 04:14:57 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Mikael Wessel <post@mikaelkw.online>
Date: Thu, 31 Jul 2025 14:14:39 +0300
Message-Id: <20250731111439.2039542-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753960505; x=1785496505;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=q1yPvQRw6yadLeJ9G0Fd+thc0L98bgom2S0tobZ+su0=;
 b=YwuhRKrJ+KnG8WHyXmjk/IpcdgxXtopNq52PRZdq/kV3LKqJsLEKsljL
 SNx4Ak9ikme/euUMI0CpVYWuZzwUF2HejnskhoeGkPvrVnSy9Tc8QnsF1
 2xoruBCCUvJq7dsD4/mOzr3WkA2LSQtiaFDVaAqXxJANSMzueWktZPF+L
 XTOAMyFf+Fo1r5NFcLwRRr7TLoyvziXvn+0qV4yF5By2cQtPb+qCC6MkF
 ymgZ04O9IOWaGpGoePxenJGfCcko+QIlVqWSMbe7P36jS3MWvBXrIvSnP
 a0I5HlpTjPcQxjkF6ERP2pcylZ5EP8q1Uzq53JUZTxW+oSGo0Z6Lbd4Um
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YwuhRKrJ
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: fix heap overflow
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
 drivers/net/ethernet/intel/e1000e/ethtool.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 9364bc2b4eb1..a9f5ff047544 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -569,6 +569,10 @@ static int e1000_set_eeprom(struct net_device *netdev,
 
 	max_len = hw->nvm.word_size * 2;
 
+	if (eeprom->len > max_len ||
+	    eeprom->offset + eeprom->len > max_len)
+		return -EINVAL;
+
 	first_word = eeprom->offset >> 1;
 	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
 	eeprom_buff = kmalloc(max_len, GFP_KERNEL);
-- 
2.34.1

