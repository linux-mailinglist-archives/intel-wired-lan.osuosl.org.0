Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4AE2CD64B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Dec 2020 14:01:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5AF5787516;
	Thu,  3 Dec 2020 13:01:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EqIIZuWNoN2T; Thu,  3 Dec 2020 13:01:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8604387519;
	Thu,  3 Dec 2020 13:01:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B5B1A1BF344
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 13:01:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AEEA0871E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 13:01:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pWKkY5iGok7q for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Dec 2020 13:00:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0CE99871A5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 13:00:57 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id y7so2404007lji.8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Dec 2020 05:00:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mwUYW1H+JzV3/GtHWdM4HHeVaxmgzWJndCsLs+sl1Ng=;
 b=BgtQsK8CYLko5vgcOxproEXQ+73QQbr4gxZ080r7M9VDB9OnsVvv/yMggb00l9xIJh
 zNtThGLLBVrnx/1zg6n/xQoB5vuWRyY/L1SpPs/mr3lBuTqimQkVdE+1GQNJJE3c7MvU
 4pOY96mx1gfX/XMnhBRGAKpQbGfB7t6PD1jP9DOsJqgmaYSsqN0UpClaj2AC7VBIEQ/G
 mdfiEbU+Qf5C731hM05I4xJdZBRtQPNfk4X8oXvY86cFPFWNTtbAyPJWg8cxgdKIQOYJ
 egr/q/FFnOyjKGOAKRFfJbh+XsmNaAjfV7hc0kBoNC0qH2RXjImLTWTc7zx83sJL9IrN
 tT+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mwUYW1H+JzV3/GtHWdM4HHeVaxmgzWJndCsLs+sl1Ng=;
 b=XpkAEDm5HPTISdwMdKfjpJbJexSKA1b7HLaqYy8bMyok5KATkW8asM72bfL+r/J3N5
 dNgfWFuqddwd+kz9JVNM5Uq8jhl36h2X7BHDA+HnkCATGGM8/0/tZenjXnfFN5Yt9/69
 hm8rtSWmsjXaCN249SL35RFKjQABbrohGzq3tHtAYE/wC5shpXqwRP+BbAQhZ1ipDEEJ
 7s+WPxxPWP4UEI2BJ34jZkiUXi9f/JgBp07KlhDLpU56PVYWSwqFczXsZeESLnLpHZAB
 8nTbgVKM0WCpJ7AA0wAAhl7LoShe9PSMszGA5Fg11bd0p5h3pcIPnyYFYm6VSbVjKE9V
 ZmWQ==
X-Gm-Message-State: AOAM531+Ag5kGn+DT+cFjAkh//aK/I6UE4+OpRvkGOpIfdk+nwtR7Dza
 Cni18GudTlwpeI28cl8i5idZKynDatmSfg==
X-Google-Smtp-Source: ABdhPJyN5qjL2Ch9BCOndJjC6c1/mY97x20lmlcEG6wsT8I74Ek4oUXSdyd+jvXvJIWLoyJD26UxVQ==
X-Received: by 2002:a19:404a:: with SMTP id n71mr1248846lfa.493.1606999965731; 
 Thu, 03 Dec 2020 04:52:45 -0800 (PST)
Received: from navi.cosmonova.net.ua ([95.67.24.131])
 by smtp.gmail.com with ESMTPSA id b17sm499891lfc.93.2020.12.03.04.52.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Dec 2020 04:52:45 -0800 (PST)
From: Andrew Melnychenko <andrew@daynix.com>
To: mst@redhat.com
Date: Thu,  3 Dec 2020 15:25:16 +0200
Message-Id: <20201203132517.220811-2-andrew@daynix.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201203132517.220811-1-andrew@daynix.com>
References: <20201203132517.220811-1-andrew@daynix.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4 1/2] hw/virtio-pci Added counter for
 pcie capabilities offsets.
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

Removed hardcoded offset for ats. Added cap offset counter
for future capabilities like AER.

Signed-off-by: Andrew Melnychenko <andrew@daynix.com>
---
 hw/virtio/virtio-pci.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/hw/virtio/virtio-pci.c b/hw/virtio/virtio-pci.c
index 36524a5728..ceaa233129 100644
--- a/hw/virtio/virtio-pci.c
+++ b/hw/virtio/virtio-pci.c
@@ -1798,6 +1798,7 @@ static void virtio_pci_realize(PCIDevice *pci_dev, Error **errp)
 
     if (pcie_port && pci_is_express(pci_dev)) {
         int pos;
+        uint16_t last_pcie_cap_offset = PCI_CONFIG_SPACE_SIZE;
 
         pos = pcie_endpoint_cap_init(pci_dev, 0);
         assert(pos > 0);
@@ -1833,7 +1834,8 @@ static void virtio_pci_realize(PCIDevice *pci_dev, Error **errp)
         }
 
         if (proxy->flags & VIRTIO_PCI_FLAG_ATS) {
-            pcie_ats_init(pci_dev, 256);
+            pcie_ats_init(pci_dev, last_pcie_cap_offset);
+            last_pcie_cap_offset += PCI_EXT_CAP_ATS_SIZEOF;
         }
 
         if (proxy->flags & VIRTIO_PCI_FLAG_INIT_FLR) {
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
