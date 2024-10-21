Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 457789A6CA9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Oct 2024 16:49:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5F9280B2F;
	Mon, 21 Oct 2024 14:49:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mpLk6SQu0_tl; Mon, 21 Oct 2024 14:49:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4690D80C39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729522155;
	bh=Rxt8M/qIJD7QejNWUlnSw0VbRkzI39J6dRpE0IcPFz0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PrC8KrpheZAcowjoauan1R4u044lCjwcfPDEowM0j6R/+Wa5u4n2ByQtV0+1eu7FE
	 mkfjpKfu+wTPg8Y5kX4a4+GHp18Gyzqu8qLXHmgBmR97U7XqloOHRvyMRVR/BnXnyK
	 jf1iBKNXI8v47ruBmelpuwukVEwxcJeeNgCRgilqx3kAl2gKHFYruQTP8nC+DtNNFF
	 lX2Im7rVByiIQi/t63dAPvsSCvlwO2ZH5klOxGKJ9odOREZs7N5Iy6vL0MOFG5ATwx
	 1ibXb602igReThqlsBa5AbOuOtKXKm+A8jP7a2GtXu1dHdph9qcQQNFXn85iQ/kmFH
	 8SWXSPWCw9Qgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4690D80C39;
	Mon, 21 Oct 2024 14:49:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id ACBFE71F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 14:49:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9AC1340363
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 14:49:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zd_nzk28sCXX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Oct 2024 14:49:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9B68840362
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B68840362
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B68840362
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 14:49:12 +0000 (UTC)
X-CSE-ConnectionGUID: IzJxkpJUSJSF0Ice1IZrnQ==
X-CSE-MsgGUID: 4kW30UZxStqBsjH5B7Tmsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46475746"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46475746"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 07:49:12 -0700
X-CSE-ConnectionGUID: 0HD6dPEqQX+GL68JPdBwKQ==
X-CSE-MsgGUID: 97muYvKKRKqhu2eMwsjdnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="79138239"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.246.19.66])
 by fmviesa006.fm.intel.com with ESMTP; 21 Oct 2024 07:49:09 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, bhelgaas@google.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon, 21 Oct 2024 16:46:54 +0200
Message-ID: <20241021144654.5453-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729522153; x=1761058153;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ThQKbnhwyaZ9JOppntHuNBOMJTIU2nFzLYi8fnpCZMc=;
 b=BsLFdLamiXi6aEApdajV7kavJt0QwAf01FTsq1a5K9N94MLk9exS26ly
 QbOcoYSpzPMN9yB5w9Jb5ipLIemCjk5t9FfZtMHJo+UntaDfDzsFPSJvH
 rnM5Yv9fbFiB4EDDmfALzozx6t/OAZ/Q6nfvg7ljHOx8BmahxXhmbvqAI
 UuUMrnKepJOVFlFd5g96KfokgRqd6f6svfULxj3cmZYK3xTEHf4RgRRJU
 mbP3263irEPZweau/FYNpgmkj/HjxQEdLVXvq6lRcRiUmH2WXYy74lZIw
 YWkidorp/ZUT7MAUb2zKZQ8DWokuR9mNOyILgGAre/LCBF5i5a5NmwK0h
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BsLFdLam
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/2] PCI: Add PCI_VDEVICE_SUB
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
---
 include/linux/pci.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index 573b4c4..7d1359e 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1050,6 +1050,20 @@ struct pci_driver {
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

