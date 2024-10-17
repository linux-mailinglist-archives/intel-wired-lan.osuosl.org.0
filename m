Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D16F59A235B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 15:17:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5194A812CB;
	Thu, 17 Oct 2024 13:17:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uXIAky60Skqc; Thu, 17 Oct 2024 13:17:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6567981257
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729171020;
	bh=5iWbF2ALZDGK4mEVAUCL5Vhx68vEZcFgoQoZ1Ghutb8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=LtUeCWqQuqFKCHqCh85FUvzbEqqMWtaeFeTkTKEYdub+FJL9LRkP8TOYw0uubAw6j
	 03fktmJ6O9WBx/1DORNCuooOgGQ78VMargyNoUViNOVGHFQHcgjbBNfNIL/pbBPsxq
	 pzaxWV9KmjBxSt/fgaBpLIPr3zAdIHMd/MQegG3QjrwLUoOnrEDQl180hMBSsj2h93
	 bWEvRWmIlLE87Gl+0qkfpWG4ONBKAYV0i89/8GXjKIAM6XNT6kfLT38vmCmjcj1C3g
	 nHiKwy2RKRa7GrMTJZWuoTvEthJQ3kmYaQ9s6jbD8JbQK9RU36Qt00/GTVi00+zMnG
	 +8sjPe1wkK1/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6567981257;
	Thu, 17 Oct 2024 13:17:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 02E862316
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 13:16:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D7C55605FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 13:16:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TIOAzGp3rGyl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 13:16:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A94A1605D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A94A1605D4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A94A1605D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 13:16:53 +0000 (UTC)
X-CSE-ConnectionGUID: tYrGp0H7SdO98tcYK8qvgg==
X-CSE-MsgGUID: bTJyLPqdRsuXVV0mYcs95A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28607899"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28607899"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 06:16:53 -0700
X-CSE-ConnectionGUID: Af1d6G19SuO/4SUJBJjTLA==
X-CSE-MsgGUID: ZgUqYChbTOSHm5mM+0Cn+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="83189557"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.246.19.66])
 by fmviesa004.fm.intel.com with ESMTP; 17 Oct 2024 06:16:51 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, bhelgaas@google.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Thu, 17 Oct 2024 15:16:47 +0200
Message-ID: <20241017131647.4255-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729171014; x=1760707014;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Qmc9et5egLokLVZtqGU9Qa5U3lkdY/PRXCZKtUwOPg4=;
 b=VAVah3m/4Yl7i6LaHAmHqOOu7OxqZVuYmK42+duiPsSm5yZ1NBURPw+Q
 73W/p4BGDNNbJNrmcG/LgCIhcJxpVXprKdAYuW1RXb3recpK6jvuN52Jl
 FHdkcLA8aXOlysMqoLHT448vLb0fJJqK8T59mKDYcGmFD/3L7TgStJ/Zo
 u2WqySlKlir+pItEtKRptB2IDgYp+R2AGvhgWEtbEdig0/VxK4Xgl+qMv
 aq2zWM5F1dAYRCoCOI1+On0i2j5onqlyZKgtyEtZ6AinqLTTqNLITn5p/
 dzfw2kubKe/eQsAu71hwyaGNSAbSRbvxvkLjCvoRRRbnZj3iPkims/BaX
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VAVah3m/
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] PCI: Add PCI_VDEVICE_SUB
 helper macro
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

PCI_VDEVICE_SUB generates the pci_device_id struct layout for
the specific PCI device/subdevice. The subvendor field is set
to PCI_ANY_ID. Private data may follow the output.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 include/linux/pci.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

This patch is a part of the series from netdev.

diff --git a/include/linux/pci.h b/include/linux/pci.h
index 573b4c4..2b6b2c8 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1050,6 +1050,20 @@ struct pci_driver {
 	.vendor = PCI_VENDOR_ID_##vend, .device = (dev), \
 	.subvendor = PCI_ANY_ID, .subdevice = PCI_ANY_ID, 0, 0
 
+/**
+ * PCI_VDEVICE_SUB - describe a specific PCI device/subdevice in a short form
+ * @vend: the vendor name
+ * @dev: the 16 bit PCI Device ID
+ * @subdev: the 16 bit PCI Subdevice ID
+ *
+ * Generate the pci_device_id struct layout for the specific PCI
+ * device/subdevice. The subvendor field is set to PCI_ANY_ID. Private data
+ * may follow the output.
+ */
+#define PCI_VDEVICE_SUB(vend, dev, subdev) \
+	.vendor = PCI_VENDOR_ID_##vend, .device = (dev), \
+	.subvendor = PCI_ANY_ID, .subdevice = subdev, 0, 0
+
 /**
  * PCI_DEVICE_DATA - macro used to describe a specific PCI device in very short form
  * @vend: the vendor name (without PCI_VENDOR_ID_ prefix)
-- 
2.43.0

