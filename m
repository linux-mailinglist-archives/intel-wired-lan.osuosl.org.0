Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A59463F76B5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Aug 2021 16:00:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48B0342587;
	Wed, 25 Aug 2021 14:00:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ilnGro0GZzwe; Wed, 25 Aug 2021 14:00:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 592BF4251F;
	Wed, 25 Aug 2021 14:00:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 067B01BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 10:27:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EA40760B5D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 10:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id faL512T-RNxJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Aug 2021 10:27:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 63B4060B58
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 10:27:12 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 oc2-20020a17090b1c0200b00179e56772d6so3825550pjb.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 03:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/Hqnln3HdL0WChaMVZJV3NfQHnyWbPcdyPecsMvr5Us=;
 b=fOILSbqp+awgPaL++axkQEnUahaAtyLCDiX4urN0z2R+EBI/Xfjm7BfwaYI8ko/xhc
 BViZ+JAunCMhIGCV136n0JrrlSuHYIiSPTQRdPOYugQYHmB1mmgyEPTvHlBO2Fy94MnG
 3LK4urvh6THaKPpoQMPtONHXg5uJu5iCkIDiubmIMLTpIJPtr00iSi4TK1Og4hM+pcZr
 R1O5UkGKZU9pqlfCJdTP6KrwjZn2yy2dj+1Z67KmUi3k2GdiuiPnugIKp8Ym2NaF85zb
 LwIXAZ6GNxQM1ePUEhLP5YcV7gmZE2KImrYUwbtt0sjWWTfFyK7M8hpJEABOiFCVAM3H
 PeIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/Hqnln3HdL0WChaMVZJV3NfQHnyWbPcdyPecsMvr5Us=;
 b=dWPdz4vbPEr27hueQOAYpJWKZLZNHcYOi56+M3yF9wcrdaI/bLmeLQPEn33ihumVWM
 cmpT7/89WMusDo6AGncIbcDcuDlY9S1cY/Yn+xiMpXJoZVZFuBtM2MOqRoaXEkaaB6p/
 YCb+APCzgY291J4x/TCwQOWMK3P55OwZZZbvXskji1+2EANkzQwaVWFdJKvYR4jvy0IT
 dDeCE6Xosh+wt8RlQKR2WIf1wDf/tYiXbM/iSlzsMBkIcb9ds9arjh4PjjP8V8nbmuWx
 U3D4Uzx/tXqF4M45Oz5GV1Fjc9YWrG9/VR9TVYKEUQaTHr1cHm51SccH5+q/4mx/58K3
 xKvA==
X-Gm-Message-State: AOAM533aJF6nDY/GYWKOTxCA0g6755xz1ZqCBGMPCjtOsfUV6AVfssAz
 w2buT9auZYAveEs8PShwCu8=
X-Google-Smtp-Source: ABdhPJyXguS1J/c/czIWiobBg3C1WJe0NJ4d50A3Pyb+FXU2dT8FSoGhw/YqB+/uPfL+mAMZ9M1OYg==
X-Received: by 2002:a17:90a:b785:: with SMTP id
 m5mr9976134pjr.213.1629887231933; 
 Wed, 25 Aug 2021 03:27:11 -0700 (PDT)
Received: from baohua-VirtualBox.localdomain
 (203-173-222-16.dialup.ihug.co.nz. [203.173.222.16])
 by smtp.gmail.com with ESMTPSA id f23sm1786403pfa.94.2021.08.25.03.27.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Aug 2021 03:27:11 -0700 (PDT)
From: Barry Song <21cnbao@gmail.com>
To: bhelgaas@google.com,
	maz@kernel.org,
	tglx@linutronix.de
Date: Wed, 25 Aug 2021 18:26:35 +0800
Message-Id: <20210825102636.52757-3-21cnbao@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210825102636.52757-1-21cnbao@gmail.com>
References: <20210825102636.52757-1-21cnbao@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 25 Aug 2021 14:00:04 +0000
Subject: [Intel-wired-lan] [PATCH v3 2/3] PCI/sysfs: Don't depend on
 pci_dev.irq for IRQ entry
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

From: Barry Song <song.bao.hua@hisilicon.com>

Explicitly use IRQ number from MSI list for IRQ sysfs entry. Then sysfs
will decouple with the odd implementation depending on pci_dev.irq.

Signed-off-by: Barry Song <song.bao.hua@hisilicon.com>
---
 drivers/pci/pci-sysfs.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/pci-sysfs.c b/drivers/pci/pci-sysfs.c
index 7bbf2673..f5a06b9 100644
--- a/drivers/pci/pci-sysfs.c
+++ b/drivers/pci/pci-sysfs.c
@@ -26,6 +26,7 @@
 #include <linux/slab.h>
 #include <linux/vgaarb.h>
 #include <linux/pm_runtime.h>
+#include <linux/msi.h>
 #include <linux/of.h>
 #include "pci.h"
 
@@ -49,7 +50,27 @@ static DEVICE_ATTR_RO(field)
 pci_config_attr(subsystem_device, "0x%04x\n");
 pci_config_attr(revision, "0x%02x\n");
 pci_config_attr(class, "0x%06x\n");
-pci_config_attr(irq, "%u\n");
+
+static ssize_t irq_show(struct device *dev,
+			struct device_attribute *attr,
+			char *buf)
+{
+	struct pci_dev *pdev = to_pci_dev(dev);
+#ifdef CONFIG_PCI_MSI
+	/*
+	 * For MSI, return the 1st IRQ in IRQ vector; for all other cases
+	 * including MSI-X, return legacy INTx
+	 */
+	if (pdev->msi_enabled) {
+		struct msi_desc *desc = first_pci_msi_entry(pdev);
+
+		return sysfs_emit(buf, "%u\n", desc->irq);
+	}
+#endif
+
+	return sysfs_emit(buf, "%u\n", pdev->irq);
+}
+static DEVICE_ATTR_RO(irq);
 
 static ssize_t broken_parity_status_show(struct device *dev,
 					 struct device_attribute *attr,
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
