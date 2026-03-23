Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JjaMzd7wWkQTQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 18:41:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3C42FA311
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 18:41:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 744E781DE1;
	Mon, 23 Mar 2026 17:41:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gNjV2Gk5rxZj; Mon, 23 Mar 2026 17:41:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD54181D70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774287667;
	bh=3m3pl7GmB8X2YpKnAA22eW1w+q3LW2LdWCZaoAHM39c=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vaiWdllyhjborDXlu5bwm6tbE+JOZNEca2MqbDmt8u36jOi7n0r4FgOe6yY+Xv+SP
	 ZhK9fW4BeqkQw4OMET2wz/tHqpzCs4KbxkZ6GPqrNeX4w7QCf9zKjC16g92SwVsg5x
	 hXRxCjy9caHWSudsEeYYFt9G0eWVW+2ubNZD0t93YK7Yq7kvKc0xCg31s0FSIr8m9v
	 PknYgqpIqQKjRVNMgXVc/w8o1UTsemlCpCKSKHZrZzI2OBDNLEKB66ca6uZbb5Reat
	 FgEhUxpwrtKKuzVyvcTrc+oNDYlO3vMtSa6YRK+KfcAT+yWoyg4HRW1hMk4SxUUXKC
	 4EX/4DWR17mJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD54181D70;
	Mon, 23 Mar 2026 17:41:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D8D5FF4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 17:41:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF03381D70
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 17:41:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eZj-CbghJeGi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 17:41:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D93C081CD0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D93C081CD0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D93C081CD0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 17:41:04 +0000 (UTC)
X-CSE-ConnectionGUID: SrfE/K7MRnqt1HLp7FPSKg==
X-CSE-MsgGUID: hl3c2ASzRiO63/WiZ4bGsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="75484638"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="75484638"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 10:41:04 -0700
X-CSE-ConnectionGUID: a9Wk8ZiKSr+EJlhxWq/Vwg==
X-CSE-MsgGUID: 2MZEQth2TnSdo90n6AMEmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="228576629"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa004.jf.intel.com with ESMTP; 23 Mar 2026 10:40:58 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4BA40312FA;
 Mon, 23 Mar 2026 17:40:56 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: aleksander.lobakin@intel.com, sridhar.samudrala@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 jayaprakash.shanmugam@intel.com, Jiri Pirko <jiri@resnulli.us>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Richard Cochran <richardcochran@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 23 Mar 2026 18:40:33 +0100
Message-ID: <20260323174052.5355-3-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260323174052.5355-1-larysa.zaremba@intel.com>
References: <20260323174052.5355-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774287665; x=1805823665;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2qax7nco0SWfXRerBGGvC3VwD9pMRUIbeFvXIs1xib8=;
 b=AZp4MAlf6XJ511v2lCwEKr2fWS6ovGobKupRJlmhnD2Lm71g/6j1eHJT
 /FEy/2dqT299lMQ/pvmS/yrEyLTdccbOrLFFmoQsf/twMNfMiB1nabQme
 WCZ26IdABozv86dRJqC6PJcoaLNvyP3gjf76zX7rry1rHe76rxThstHUM
 AaMahHen3PbdrD4aq9evO53HsrsX2fMz178MS2+l8cpq4cz921aRgfbnw
 auky4IMHSxpuR8BnEQHLUjm5Wtww++4WKJ/KByRdqGeBfE45trPWiZWfN
 gaitIl4qvKxjE5/kF7G6ebBunUt5IiYv5J9H22fTbV39N5QEEmcqk7rne
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AZp4MAlf
Subject: [Intel-wired-lan] [PATCH iwl-next v6 02/14] libie: add PCI device
 initialization helpers to libie
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 1E3C42FA311
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Phani R Burra <phani.r.burra@intel.com>

Add support functions for drivers to configure PCI functionality and access
MMIO space.

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Phani R Burra <phani.r.burra@intel.com>
Co-developed-by: Victor Raj <victor.raj@intel.com>
Signed-off-by: Victor Raj <victor.raj@intel.com>
Co-developed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
Tested-by: Bharath R <bharath.r@intel.com>
Tested-by: Samuel Salin <Samuel.salin@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/libie/Kconfig  |   6 +
 drivers/net/ethernet/intel/libie/Makefile |   4 +
 drivers/net/ethernet/intel/libie/pci.c    | 208 ++++++++++++++++++++++
 include/linux/intel/libie/pci.h           |  56 ++++++
 4 files changed, 274 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/libie/pci.c
 create mode 100644 include/linux/intel/libie/pci.h

diff --git a/drivers/net/ethernet/intel/libie/Kconfig b/drivers/net/ethernet/intel/libie/Kconfig
index 70831c7e336e..500a95c944a8 100644
--- a/drivers/net/ethernet/intel/libie/Kconfig
+++ b/drivers/net/ethernet/intel/libie/Kconfig
@@ -23,3 +23,9 @@ config LIBIE_FWLOG
 	  for it. Firmware logging is using admin queue interface to communicate
 	  with the device. Debugfs is a user interface used to config logging
 	  and dump all collected logs.
+
+config LIBIE_PCI
+	tristate
+	help
+	  Helper functions for management of PCI resources belonging
+	  to networking devices.
diff --git a/drivers/net/ethernet/intel/libie/Makefile b/drivers/net/ethernet/intel/libie/Makefile
index db57fc6780ea..a28509cb9086 100644
--- a/drivers/net/ethernet/intel/libie/Makefile
+++ b/drivers/net/ethernet/intel/libie/Makefile
@@ -12,3 +12,7 @@ libie_adminq-y			:= adminq.o
 obj-$(CONFIG_LIBIE_FWLOG) 	+= libie_fwlog.o
 
 libie_fwlog-y			:= fwlog.o
+
+obj-$(CONFIG_LIBIE_PCI)		+= libie_pci.o
+
+libie_pci-y			:= pci.o
diff --git a/drivers/net/ethernet/intel/libie/pci.c b/drivers/net/ethernet/intel/libie/pci.c
new file mode 100644
index 000000000000..7276a3533b54
--- /dev/null
+++ b/drivers/net/ethernet/intel/libie/pci.c
@@ -0,0 +1,208 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2025 Intel Corporation */
+
+#include <linux/intel/libie/pci.h>
+
+/**
+ * libie_find_mmio_region - find MMIO region containing a range
+ * @mmio_list: list that contains MMIO region info
+ * @offset: range start offset
+ * @size: range size
+ * @bar_idx: BAR index containing the range to search
+ *
+ * Return: pointer to a MMIO region overlapping with the range in any way or
+ *	   NULL if no such region is mapped.
+ */
+static struct libie_pci_mmio_region *
+libie_find_mmio_region(const struct list_head *mmio_list,
+		       resource_size_t offset, resource_size_t size,
+		       int bar_idx)
+{
+	resource_size_t end_offset = offset + size;
+	struct libie_pci_mmio_region *mr;
+
+	list_for_each_entry(mr, mmio_list, list) {
+		resource_size_t mr_end = mr->offset + mr->size;
+		resource_size_t mr_start = mr->offset;
+
+		if (mr->bar_idx != bar_idx)
+			continue;
+		if (offset < mr_end && end_offset > mr_start)
+			return mr;
+	}
+
+	return NULL;
+}
+
+/**
+ * __libie_pci_get_mmio_addr - get the MMIO virtual address
+ * @mmio_info: contains list of MMIO regions
+ * @offset: register offset to find
+ * @num_args: number of additional arguments present
+ *
+ * This function finds the virtual address of a register offset by iterating
+ * through the non-linear MMIO regions that are mapped by the driver.
+ *
+ * Return: valid MMIO virtual address or NULL.
+ */
+void __iomem *__libie_pci_get_mmio_addr(struct libie_mmio_info *mmio_info,
+					resource_size_t offset,
+					int num_args, ...)
+{
+	struct libie_pci_mmio_region *mr;
+	int bar_idx = 0;
+	va_list args;
+
+	if (num_args) {
+		va_start(args, num_args);
+		bar_idx = va_arg(args, int);
+		va_end(args);
+	}
+
+	list_for_each_entry(mr, &mmio_info->mmio_list, list)
+		if (bar_idx == mr->bar_idx && offset >= mr->offset &&
+		    offset < mr->offset + mr->size) {
+			offset -= mr->offset;
+
+			return mr->addr + offset;
+		}
+
+	return NULL;
+}
+EXPORT_SYMBOL_NS_GPL(__libie_pci_get_mmio_addr, "LIBIE_PCI");
+
+/**
+ * __libie_pci_map_mmio_region - map PCI device MMIO region
+ * @mmio_info: struct to store the mapped MMIO region
+ * @offset: MMIO region start offset
+ * @size: MMIO region size
+ * @num_args: number of additional arguments present
+ *
+ * Return: true on success, false on memory map failure.
+ */
+bool __libie_pci_map_mmio_region(struct libie_mmio_info *mmio_info,
+				 resource_size_t offset,
+				 resource_size_t size, int num_args, ...)
+{
+	struct pci_dev *pdev = mmio_info->pdev;
+	struct libie_pci_mmio_region *mr;
+	resource_size_t pa;
+	void __iomem *va;
+	int bar_idx = 0;
+	va_list args;
+
+	if (num_args) {
+		va_start(args, num_args);
+		bar_idx = va_arg(args, int);
+		va_end(args);
+	}
+
+	if (offset + size > pci_resource_len(pdev, bar_idx))
+		return false;
+
+	mr = libie_find_mmio_region(&mmio_info->mmio_list, offset, size,
+				    bar_idx);
+	if (mr) {
+		pci_warn(pdev,
+			 "Mapping of BAR%u (offset=%llu, size=%llu) intersecting region (offset=%llu, size=%llu) already exists\n",
+			 bar_idx, (unsigned long long)mr->offset,
+			 (unsigned long long)mr->size,
+			 (unsigned long long)offset, (unsigned long long)size);
+		return mr->offset <= offset &&
+		       mr->offset + mr->size >= offset + size;
+	}
+
+	pa = pci_resource_start(pdev, bar_idx) + offset;
+	va = ioremap(pa, size);
+	if (!va) {
+		pci_err(pdev, "Failed to map BAR%u region\n", bar_idx);
+		return false;
+	}
+
+	mr = kvzalloc_obj(*mr);
+	if (!mr) {
+		iounmap(va);
+		return false;
+	}
+
+	mr->addr = va;
+	mr->offset = offset;
+	mr->size = size;
+	mr->bar_idx = bar_idx;
+
+	list_add_tail(&mr->list, &mmio_info->mmio_list);
+
+	return true;
+}
+EXPORT_SYMBOL_NS_GPL(__libie_pci_map_mmio_region, "LIBIE_PCI");
+
+/**
+ * libie_pci_unmap_fltr_regs - unmap selected PCI device MMIO regions
+ * @mmio_info: contains list of MMIO regions to unmap
+ * @fltr: returns true, if region is to be unmapped
+ */
+void libie_pci_unmap_fltr_regs(struct libie_mmio_info *mmio_info,
+			       bool (*fltr)(struct libie_mmio_info *mmio_info,
+					    struct libie_pci_mmio_region *reg))
+{
+	struct libie_pci_mmio_region *mr, *tmp;
+
+	list_for_each_entry_safe(mr, tmp, &mmio_info->mmio_list, list) {
+		if (!fltr(mmio_info, mr))
+			continue;
+		iounmap(mr->addr);
+		list_del(&mr->list);
+		kvfree(mr);
+	}
+}
+EXPORT_SYMBOL_NS_GPL(libie_pci_unmap_fltr_regs, "LIBIE_PCI");
+
+/**
+ * libie_pci_unmap_all_mmio_regions - unmap all PCI device MMIO regions
+ * @mmio_info: contains list of MMIO regions to unmap
+ */
+void libie_pci_unmap_all_mmio_regions(struct libie_mmio_info *mmio_info)
+{
+	struct libie_pci_mmio_region *mr, *tmp;
+
+	list_for_each_entry_safe(mr, tmp, &mmio_info->mmio_list, list) {
+		iounmap(mr->addr);
+		list_del(&mr->list);
+		kvfree(mr);
+	}
+}
+EXPORT_SYMBOL_NS_GPL(libie_pci_unmap_all_mmio_regions, "LIBIE_PCI");
+
+/**
+ * libie_pci_init_dev - enable and reserve PCI regions of the device
+ * @pdev: PCI device information
+ *
+ * Return: %0 on success, -%errno on failure.
+ */
+int libie_pci_init_dev(struct pci_dev *pdev)
+{
+	int err;
+
+	err = pcim_enable_device(pdev);
+	if (err)
+		return err;
+
+	for (int bar = 0; bar < PCI_STD_NUM_BARS; bar++)
+		if (pci_resource_flags(pdev, bar) & IORESOURCE_MEM) {
+			err = pcim_request_region(pdev, bar, pci_name(pdev));
+			if (err)
+				return err;
+		}
+
+	err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
+	if (err)
+		return err;
+
+	pci_set_master(pdev);
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(libie_pci_init_dev, "LIBIE_PCI");
+
+MODULE_DESCRIPTION("Common Ethernet PCI library");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/intel/libie/pci.h b/include/linux/intel/libie/pci.h
new file mode 100644
index 000000000000..effd072c55c8
--- /dev/null
+++ b/include/linux/intel/libie/pci.h
@@ -0,0 +1,56 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2025 Intel Corporation */
+
+#ifndef __LIBIE_PCI_H
+#define __LIBIE_PCI_H
+
+#include <linux/pci.h>
+
+/**
+ * struct libie_pci_mmio_region - structure for MMIO region info
+ * @list: used to add a MMIO region to the list of MMIO regions in
+ *	  libie_mmio_info
+ * @addr: virtual address of MMIO region start
+ * @offset: start offset of the MMIO region
+ * @size: size of the MMIO region
+ * @bar_idx: BAR index to which the MMIO region belongs to
+ */
+struct libie_pci_mmio_region {
+	struct list_head	list;
+	void __iomem		*addr;
+	resource_size_t		offset;
+	resource_size_t		size;
+	u16			bar_idx;
+};
+
+/**
+ * struct libie_mmio_info - contains list of MMIO regions
+ * @pdev: PCI device pointer
+ * @mmio_list: list of MMIO regions
+ */
+struct libie_mmio_info {
+	struct pci_dev		*pdev;
+	struct list_head	mmio_list;
+};
+
+#define libie_pci_map_mmio_region(mmio_info, offset, size, ...)	\
+	__libie_pci_map_mmio_region(mmio_info, offset, size,		\
+				     COUNT_ARGS(__VA_ARGS__), ##__VA_ARGS__)
+
+#define libie_pci_get_mmio_addr(mmio_info, offset, ...)		\
+	__libie_pci_get_mmio_addr(mmio_info, offset,			\
+				   COUNT_ARGS(__VA_ARGS__), ##__VA_ARGS__)
+
+bool __libie_pci_map_mmio_region(struct libie_mmio_info *mmio_info,
+				 resource_size_t offset, resource_size_t size,
+				 int num_args, ...);
+void __iomem *__libie_pci_get_mmio_addr(struct libie_mmio_info *mmio_info,
+					resource_size_t offset,
+					int num_args, ...);
+void libie_pci_unmap_all_mmio_regions(struct libie_mmio_info *mmio_info);
+void libie_pci_unmap_fltr_regs(struct libie_mmio_info *mmio_info,
+			       bool (*fltr)(struct libie_mmio_info *mmio_info,
+					    struct libie_pci_mmio_region *reg));
+int libie_pci_init_dev(struct pci_dev *pdev);
+
+#endif /* __LIBIE_PCI_H */
-- 
2.47.0

