Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA52D2CD67B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Dec 2020 14:17:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7037987526;
	Thu,  3 Dec 2020 13:17:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5BGjxov1ANgT; Thu,  3 Dec 2020 13:17:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7E36B87529;
	Thu,  3 Dec 2020 13:17:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D68801BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 13:17:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CE3BE87910
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 13:17:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A70wW+PwXc9d for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Dec 2020 13:17:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9BD0C86FC9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 13:17:29 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id y22so2055995edv.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Dec 2020 05:17:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FTIXK8Mp2m2AMw0jbqYrjv2kNQYnyeKPV4gyIZ7wxG8=;
 b=DHHGScHIEY4eeaYDHRrLaWRaPURzlxOs2Qt3/jxPJ6VJwmbNEg4BXXU0QyM8CcTqwy
 UJpv+4nSRYB/3838yNsBmM2+Smw4c3iQZt7wGNgkcNPDaYAFZV/QMSnmofrgQ1EEw4lK
 /oIPm5GSc0qAFxjydCMzZvqHvEsVtuQZquP5V2+LmxlzBdYDBhUi+3d4lom6WhWA0sjZ
 0e0PBg+VjD97axM4lFdWdvX7qhzzGleU30J0k+KElA8cnB/3QwMORc8WmaTFSK8JQe2p
 jTxrUzTW+HVKKXLl3ALxZUizt+0HUEsGG50JX09tipY40Djp0necYZfByW3MT7kCfv1B
 SXPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FTIXK8Mp2m2AMw0jbqYrjv2kNQYnyeKPV4gyIZ7wxG8=;
 b=LpT3C+p7V4B++E/gRxvW6BM2J5RL3nvb70g/bwdElRiPPlSt90VD/bsf4+LIt6VQzK
 BqaW039JkUulJxblT5jIXPP4NuQnicE3wrHSptZctXpIlqPxxXlKHUq42Anxj4EPU6Gg
 JAaYG3CR7O02UaL25GojD5HYAoVqC30ACoIWxImtRXkNqHkkxnn4c3Cdp/g/u0SOOBZi
 50I3UoiiAIzPjyMUNNqqWTJ92ULesjnHmzgDJlsi2zq4+3X4Sfb6+ry6ndG/gzWXsaub
 OmPPHMQqLlpmuGI8snSoxbBtXr0xoQRZtJDpbOQVY57x6o4fXX+tVglTNQ5UiRx6hjjx
 VzlA==
X-Gm-Message-State: AOAM533JYIgWhCNDpcT228Wj4qpeXdD7qlrAB+Q8j7cOnM8Al3k0aFKC
 TrE4zqz3Rkfky+fknyijLD0ciwWgDvJDPg==
X-Google-Smtp-Source: ABdhPJxn1bvdWXhv3IKmZGiLEM1k3xmR58U7g0UqRt9c+jaSnwAF76IK04kNNB5wYuoxCuQzagpPEA==
X-Received: by 2002:a05:651c:1033:: with SMTP id
 w19mr1201668ljm.55.1606999966900; 
 Thu, 03 Dec 2020 04:52:46 -0800 (PST)
Received: from navi.cosmonova.net.ua ([95.67.24.131])
 by smtp.gmail.com with ESMTPSA id b17sm499891lfc.93.2020.12.03.04.52.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Dec 2020 04:52:46 -0800 (PST)
From: Andrew Melnychenko <andrew@daynix.com>
To: mst@redhat.com
Date: Thu,  3 Dec 2020 15:25:17 +0200
Message-Id: <20201203132517.220811-3-andrew@daynix.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201203132517.220811-1-andrew@daynix.com>
References: <20201203132517.220811-1-andrew@daynix.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4 2/2] hw/virtio-pci Added AER capability.
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
Cc: intel-wired-lan@lists.osuosl.org, qemu-devel@nongnu.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andrew <andrew@daynix.com>

Added AER capability for virtio-pci devices.
Also added property for devices, by default AER is disabled.

Signed-off-by: Andrew Melnychenko <andrew@daynix.com>
---
 hw/virtio/virtio-pci.c | 16 ++++++++++++++++
 hw/virtio/virtio-pci.h |  4 ++++
 2 files changed, 20 insertions(+)

diff --git a/hw/virtio/virtio-pci.c b/hw/virtio/virtio-pci.c
index ceaa233129..f863f69ede 100644
--- a/hw/virtio/virtio-pci.c
+++ b/hw/virtio/virtio-pci.c
@@ -1817,6 +1817,12 @@ static void virtio_pci_realize(PCIDevice *pci_dev, Error **errp)
          */
         pci_set_word(pci_dev->config + pos + PCI_PM_PMC, 0x3);
 
+        if (proxy->flags & VIRTIO_PCI_FLAG_AER) {
+            pcie_aer_init(pci_dev, PCI_ERR_VER, last_pcie_cap_offset,
+                          PCI_ERR_SIZEOF, NULL);
+            last_pcie_cap_offset += PCI_ERR_SIZEOF;
+        }
+
         if (proxy->flags & VIRTIO_PCI_FLAG_INIT_DEVERR) {
             /* Init error enabling flags */
             pcie_cap_deverr_init(pci_dev);
@@ -1858,7 +1864,15 @@ static void virtio_pci_realize(PCIDevice *pci_dev, Error **errp)
 
 static void virtio_pci_exit(PCIDevice *pci_dev)
 {
+    VirtIOPCIProxy *proxy = VIRTIO_PCI(pci_dev);
+    bool pcie_port = pci_bus_is_express(pci_get_bus(pci_dev)) &&
+                     !pci_bus_is_root(pci_get_bus(pci_dev));
+
     msix_uninit_exclusive_bar(pci_dev);
+    if (proxy->flags & VIRTIO_PCI_FLAG_AER && pcie_port &&
+        pci_is_express(pci_dev)) {
+        pcie_aer_exit(pci_dev);
+    }
 }
 
 static void virtio_pci_reset(DeviceState *qdev)
@@ -1911,6 +1925,8 @@ static Property virtio_pci_properties[] = {
                     VIRTIO_PCI_FLAG_INIT_PM_BIT, true),
     DEFINE_PROP_BIT("x-pcie-flr-init", VirtIOPCIProxy, flags,
                     VIRTIO_PCI_FLAG_INIT_FLR_BIT, true),
+    DEFINE_PROP_BIT("aer", VirtIOPCIProxy, flags,
+                    VIRTIO_PCI_FLAG_AER_BIT, false),
     DEFINE_PROP_END_OF_LIST(),
 };
 
diff --git a/hw/virtio/virtio-pci.h b/hw/virtio/virtio-pci.h
index 06e2af12de..d7d5d403a9 100644
--- a/hw/virtio/virtio-pci.h
+++ b/hw/virtio/virtio-pci.h
@@ -41,6 +41,7 @@ enum {
     VIRTIO_PCI_FLAG_INIT_LNKCTL_BIT,
     VIRTIO_PCI_FLAG_INIT_PM_BIT,
     VIRTIO_PCI_FLAG_INIT_FLR_BIT,
+    VIRTIO_PCI_FLAG_AER_BIT,
 };
 
 /* Need to activate work-arounds for buggy guests at vmstate load. */
@@ -80,6 +81,9 @@ enum {
 /* Init Function Level Reset capability */
 #define VIRTIO_PCI_FLAG_INIT_FLR (1 << VIRTIO_PCI_FLAG_INIT_FLR_BIT)
 
+/* Advanced Error Reporting capability */
+#define VIRTIO_PCI_FLAG_AER (1 << VIRTIO_PCI_FLAG_AER_BIT)
+
 typedef struct {
     MSIMessage msg;
     int virq;
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
