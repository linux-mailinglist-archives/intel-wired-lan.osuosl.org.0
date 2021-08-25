Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7373F76BB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Aug 2021 16:00:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EAE2681010;
	Wed, 25 Aug 2021 14:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D41o6owLv0N7; Wed, 25 Aug 2021 14:00:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF0AC80F43;
	Wed, 25 Aug 2021 14:00:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D9EA1BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 10:27:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D0E681010
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 10:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uN4NTdjgIoZm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Aug 2021 10:27:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1DEB480FC6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 10:27:19 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id mq3so16200546pjb.5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 03:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Hd2Dai++XCp1izyWWai/1zyp7iVlPjRdTg8VyPtehoQ=;
 b=IfUDrOJngZqRfVPJW9NSXmam52kJzeN4voE6qxhiIcc+YlAXAUI0VBPjWM6mhZyMwg
 F0zzq1TNa8OimIIG3dGaJZmDyWuJUR1XP69kww/vbD2TSiBiqHlI43KFQR9awO7NGN4s
 l0ZrpcTSvAlTj9M8eFQxelOInUeORGRax0leaNTv7oBOVbwcJg52o6dvUv6jZHsPzEGs
 puKjQtXseMK854CTFuxPjSENN4OblmQVngvBxAfKj0Y4WsWHj6JcqseqYYTp8PiRxmJQ
 GA3MW93e7pDFOGSNom+RGZpChMkFM/oVEiI8t4Dz565PeIMguVBdExfjeiWbNSXAcK3w
 JAbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hd2Dai++XCp1izyWWai/1zyp7iVlPjRdTg8VyPtehoQ=;
 b=U8hTpKgHDeRwGBDpn6GUFyZgkOPbXQVxJOQvOeaOwsQTbBY/p+n0g+6eRmz/TfBFX9
 /QcP9YPj+It3ZPiqdZnbDuXqWq+e2LCrQ88nxDWeBl3rkbMu9j8YoDt7qeZAwsd+Wo6X
 8ZskJfx7LAHM+Y0FIJgo0pMXPcKtfMsNZ9o5KY2rtMTNdF/H6VLyZ2jhvsxv8r9xjdUm
 00GymVkPf7cCS2mmjF64udMCrx8OoyHTYe7WzM0PsOxM5A2bYMRS72P1kCsQttevG8mI
 Eiy4wo+fTiL0ZRBIf/L8x0kjS0RDn7vFVX+Hk8Akb2VitvhO2JZgtZQ/iiSAU+P7d8aN
 kUBg==
X-Gm-Message-State: AOAM5337VF4BZhanNlwkxEEiQ3Bilz/UHrvSX2taLFM/TIwORxp0vAR8
 iqJqv1pKxGzIj1//TsK452k=
X-Google-Smtp-Source: ABdhPJwgqyBrhi/1S0rX3cyTRL2FVtROfeKKuiE0BADwPgAxsfBnTqK4KGlUdcDxJqvzNbH6ScPtQA==
X-Received: by 2002:a17:902:a710:b029:12b:9b9f:c461 with SMTP id
 w16-20020a170902a710b029012b9b9fc461mr37110846plq.59.1629887238609; 
 Wed, 25 Aug 2021 03:27:18 -0700 (PDT)
Received: from baohua-VirtualBox.localdomain
 (203-173-222-16.dialup.ihug.co.nz. [203.173.222.16])
 by smtp.gmail.com with ESMTPSA id f23sm1786403pfa.94.2021.08.25.03.27.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Aug 2021 03:27:18 -0700 (PDT)
From: Barry Song <21cnbao@gmail.com>
To: bhelgaas@google.com,
	maz@kernel.org,
	tglx@linutronix.de
Date: Wed, 25 Aug 2021 18:26:36 +0800
Message-Id: <20210825102636.52757-4-21cnbao@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210825102636.52757-1-21cnbao@gmail.com>
References: <20210825102636.52757-1-21cnbao@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 25 Aug 2021 14:00:04 +0000
Subject: [Intel-wired-lan] [PATCH v3 3/3] PCI/MSI: remove
 msi_attrib.default_irq in msi_desc
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
Cc: Barry Song <song.bao.hua@hisilicon.com>, leon@kernel.org, corbet@lwn.net,
 mchehab+huawei@kernel.org, gregkh@linuxfoundation.org, schnelle@linux.ibm.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linuxarm@huawei.com,
 Jonathan.Cameron@huawei.com, intel-wired-lan@lists.osuosl.org,
 luzmaximilian@gmail.com, bilbao@vt.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marc Zyngier <maz@kernel.org>

default_irq is hideous as it should be per-device but not per-desc.
On the other hand, MSI-X case doesn't use it at all. Since sysfs
IRQ has moved to use the msi_entry instead of pci_dev.irq, now it
seems it is safe to remove msi_attrib.default_irq.

Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
[Barry: Updated pci_irq_vector and __pci_restore_msi_state]
Signed-off-by: Barry Song <song.bao.hua@hisilicon.com>
---
 drivers/pci/msi.c   | 12 +++++-------
 include/linux/msi.h |  2 --
 2 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/msi.c b/drivers/pci/msi.c
index e5e7533..9434afa 100644
--- a/drivers/pci/msi.c
+++ b/drivers/pci/msi.c
@@ -422,7 +422,7 @@ static void __pci_restore_msi_state(struct pci_dev *dev)
 	if (!dev->msi_enabled)
 		return;
 
-	entry = irq_get_msi_desc(dev->irq);
+	entry = first_pci_msi_entry(dev);
 
 	pci_intx_for_msi(dev, 0);
 	pci_msi_set_enable(dev, 0);
@@ -591,7 +591,6 @@ static int populate_msi_sysfs(struct pci_dev *pdev)
 	entry->msi_attrib.is_virtual    = 0;
 	entry->msi_attrib.entry_nr	= 0;
 	entry->msi_attrib.maskbit	= !!(control & PCI_MSI_FLAGS_MASKBIT);
-	entry->msi_attrib.default_irq	= dev->irq;	/* Save IOAPIC IRQ */
 	entry->msi_attrib.multi_cap	= (control & PCI_MSI_FLAGS_QMASK) >> 1;
 	entry->msi_attrib.multiple	= ilog2(__roundup_pow_of_two(nvec));
 
@@ -682,7 +681,6 @@ static int msi_capability_init(struct pci_dev *dev, int nvec,
 	dev->msi_enabled = 1;
 
 	pcibios_free_irq(dev);
-	dev->irq = entry->irq;
 	return 0;
 }
 
@@ -742,7 +740,6 @@ static int msix_setup_entries(struct pci_dev *dev, void __iomem *base,
 		entry->msi_attrib.is_virtual =
 			entry->msi_attrib.entry_nr >= vec_count;
 
-		entry->msi_attrib.default_irq	= dev->irq;
 		entry->mask_base		= base;
 
 		addr = pci_msix_desc_addr(entry);
@@ -964,8 +961,6 @@ static void pci_msi_shutdown(struct pci_dev *dev)
 	mask = msi_mask(desc->msi_attrib.multi_cap);
 	msi_mask_irq(desc, mask, 0);
 
-	/* Restore dev->irq to its default pin-assertion IRQ */
-	dev->irq = desc->msi_attrib.default_irq;
 	pcibios_alloc_irq(dev);
 }
 
@@ -1301,12 +1296,15 @@ int pci_irq_vector(struct pci_dev *dev, unsigned int nr)
 
 		if (WARN_ON_ONCE(nr >= entry->nvec_used))
 			return -EINVAL;
+
+		return entry->irq + nr;
 	} else {
 		if (WARN_ON_ONCE(nr > 0))
 			return -EINVAL;
 	}
 
-	return dev->irq + nr;
+	/* legacy INTx */
+	return dev->irq;
 }
 EXPORT_SYMBOL(pci_irq_vector);
 
diff --git a/include/linux/msi.h b/include/linux/msi.h
index e8bdcb8..a631664 100644
--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -114,7 +114,6 @@ struct ti_sci_inta_msi_desc {
  * @maskbit:	[PCI MSI/X] Mask-Pending bit supported?
  * @is_64:	[PCI MSI/X] Address size: 0=32bit 1=64bit
  * @entry_nr:	[PCI MSI/X] Entry which is described by this descriptor
- * @default_irq:[PCI MSI/X] The default pre-assigned non-MSI irq
  * @mask_pos:	[PCI MSI]   Mask register position
  * @mask_base:	[PCI MSI-X] Mask register base address
  * @platform:	[platform]  Platform device specific msi descriptor data
@@ -148,7 +147,6 @@ struct msi_desc {
 				u8	is_64		: 1;
 				u8	is_virtual	: 1;
 				u16	entry_nr;
-				unsigned default_irq;
 			} msi_attrib;
 			union {
 				u8	mask_pos;
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
