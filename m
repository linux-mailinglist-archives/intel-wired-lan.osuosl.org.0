Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EA69F66B0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 14:13:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D4EC616C3;
	Wed, 18 Dec 2024 13:13:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LANeR7ouqdQW; Wed, 18 Dec 2024 13:13:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF095616BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734527601;
	bh=2TFSw3iDgPSeWh83+rObmsHvnx1BKKOXsOHonA75BYs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K1xxNJ4krhpuRMkIXfAxs8DaevRPuNKQFogcxc9TC+qSpfUL3B9Jcjel9TppLcqyk
	 R5Z6HgN0/k912fRw1NUee/oCXIjpj2o0zW/I+06aYUOXmo2RGz/abik+5AUE/mqyRH
	 WZANxW26Z3Q2jXmlpAugvf9H4COWjWvc3oqIr+bY97esFoUqlqtBtRDt0zVtV5yoiF
	 FJrMjqVpEC8cTdR9ObrV3ltbaWligO0AEYB9IiEMkr6LhQHkZFR9HwzDBc6IHY1sx9
	 KbkEido/8pTy7J8k0cYgiNOg4tZphxMtOHSntdwWDf4+yzpijqVrEgqHnS8BiBohVY
	 PtE5R8ExWI2gg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF095616BB;
	Wed, 18 Dec 2024 13:13:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 84F1CCE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:13:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 659A2424AC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:13:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TzmkIiV_YvbR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 13:13:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8C5D8424AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C5D8424AD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C5D8424AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:13:18 +0000 (UTC)
X-CSE-ConnectionGUID: 4EEFooY1Q3u1+Js+OycLqg==
X-CSE-MsgGUID: RUuJeOCOQsuOz9HOFWZETg==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="22589660"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="22589660"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 05:13:18 -0800
X-CSE-ConnectionGUID: K4ZH83JEQBO4DtRxWliHTw==
X-CSE-MsgGUID: LO7hICXLSMS/oVO9u4zcHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102471150"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.245.118.127])
 by fmviesa005.fm.intel.com with ESMTP; 18 Dec 2024 05:13:16 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Bjorn Helgaas <bhelgaas@google.com>
Date: Wed, 18 Dec 2024 14:12:37 +0100
Message-ID: <20241218131238.5968-2-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20241218131238.5968-1-piotr.kwapulinski@intel.com>
References: <20241218131238.5968-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734527599; x=1766063599;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RiM0PsOgUFlrINJbsCWgonnbsteTL2ePM2B3IzPf8/w=;
 b=ZOsPmxRGLymaFj40OZaoUmra0Zmk3I7a03AHhqmyM7UvTlEvV0pv4RuC
 clKiMnHki3B+BmS6iPoA9n5nfL0P9otq8Y7DDj0lZ7IKxE0tMWAGNHKTc
 mwQbyXmeCDW0/wBpn0zFCFQcZyIb98Lw8n+tqzOeVkY2cp72W4A2x2jqe
 omk0Xhtfoa0x61V57QlvrsEwwUi+8OffIk35cnShpOM+D3nIdaoc2/D1R
 5y3y55lW+2AfyG+AI2eqv5obqFLeJavOO/IKNeX4YqK6GE7Y0p25zeXpE
 VlrcTpw8OLRAY9NiK6875ZIEJYu6/fIPVt48iukvMkIMNwqOEMrgi6Bdj
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZOsPmxRG
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/2] PCI: Add PCI_VDEVICE_SUB
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
the specific PCI device/subdevice. Private data may follow the
output.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Acked-by: Bjorn Helgaas <bhelgaas@google.com>
---
 include/linux/pci.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index db9b47c..414ee5f 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1046,6 +1046,20 @@ struct pci_driver {
 	.vendor = PCI_VENDOR_ID_##vend, .device = (dev), \
 	.subvendor = PCI_ANY_ID, .subdevice = PCI_ANY_ID, 0, 0
 
+/**
+ * PCI_VDEVICE_SUB - describe a specific PCI device/subdevice in a short form
+ * @vend: the vendor name
+ * @dev: the 16 bit PCI Device ID
+ * @subvend: the 16 bit PCI Subvendor ID
+ * @subdev: the 16 bit PCI Subdevice ID
+ *
+ * Generate the pci_device_id struct layout for the specific PCI
+ * device/subdevice. Private data may follow the output.
+ */
+#define PCI_VDEVICE_SUB(vend, dev, subvend, subdev) \
+	.vendor = PCI_VENDOR_ID_##vend, .device = (dev), \
+	.subvendor = (subvend), .subdevice = (subdev), 0, 0
+
 /**
  * PCI_DEVICE_DATA - macro used to describe a specific PCI device in very short form
  * @vend: the vendor name (without PCI_VENDOR_ID_ prefix)
-- 
2.43.0

