Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDE33F76B4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Aug 2021 16:00:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C761613A6;
	Wed, 25 Aug 2021 14:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4sSgl6x1IFFc; Wed, 25 Aug 2021 14:00:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C68F1613B6;
	Wed, 25 Aug 2021 14:00:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3EC601BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 10:27:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 392D74074C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 10:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e2QRbLTrUjaI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Aug 2021 10:27:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com
 [IPv6:2607:f8b0:4864:20::530])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B538C4072B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 10:27:05 +0000 (UTC)
Received: by mail-pg1-x530.google.com with SMTP id k24so22616257pgh.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 03:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WDV1qUC/en7sXzyKaLfWNTN+O6Ei1wxbt8/kHxJ7Nac=;
 b=OlIB6gjhsq8yYPg5lX57SFJqImS4PATXnLGMWswrt6rZp1107btprXW6qN2B0S8+7z
 whIy91dBhN0Z5EPdHfgkFY5EdF+SfwiXkaonNMq8ZDz6oug0/lYCUJ+7DMpP7vKsYtvM
 zVg4VLECikYJ5nDiFAusuv3TmtcFzRSo012pphpfD+fOSNjgFUSNB6uKp/cgkoK6lbez
 3oUf2zgO24Q3G7NAg2G5+++9ymk8qMadMMBYixbcQ+jxgVHgps7//siK1yb5TR0aH48l
 GuMh08CVZg6Gm5B3D+QTtsyq7QdxFZr8olC4PexE1a8JMnTrbJoDYqA+ij+OYcuBMq0p
 XgQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WDV1qUC/en7sXzyKaLfWNTN+O6Ei1wxbt8/kHxJ7Nac=;
 b=M6OmzVjwnf1YJjHX/19a2uq9ueM/5zkTbOTqa+rmq2NhAdUsOemZBOwN6XJkf1MLjL
 wZuEbiPo1vAwrDlfKkPEW5emxyUX20XXJQyOfLfP2X4xdkSshvSqbTC/AzlBEenLDlbl
 97KPad56CRszrnLzNfxfad08sCpmUdpMalHE8ES6kC0DsSiiksYnjsQYOJyxOT3WmQeY
 2PkMg/+hIC46PTy/Rt/J6QiBx0QTlFGq0TfSfMp0HgaieGODFlhJDvoLZE3W8Rp6pynw
 4OZqBNGJf0TPEN+XKDlZ5XJj0vhPRMHJAILy3nvfzW4oEQkayhTZj9b5cvnC99lkH+bo
 XsPg==
X-Gm-Message-State: AOAM531lSA7SeLOE1E9PJ5NvZFk4456shdFrkjTpx2TiGL+JlTNyWFFR
 afE2l2DJ8eQ7A/wtd7IRCdM=
X-Google-Smtp-Source: ABdhPJwoB4JHP+QJph4hBP45JoK+b7sKIJJTkg46DEr2Cj0JC5KGVm0w9eUmUDoVldQmVqUWFh/pDw==
X-Received: by 2002:a62:7c08:0:b0:3ee:7bd5:13e1 with SMTP id
 x8-20020a627c08000000b003ee7bd513e1mr6510185pfc.27.1629887225254; 
 Wed, 25 Aug 2021 03:27:05 -0700 (PDT)
Received: from baohua-VirtualBox.localdomain
 (203-173-222-16.dialup.ihug.co.nz. [203.173.222.16])
 by smtp.gmail.com with ESMTPSA id f23sm1786403pfa.94.2021.08.25.03.26.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Aug 2021 03:27:04 -0700 (PDT)
From: Barry Song <21cnbao@gmail.com>
To: bhelgaas@google.com,
	maz@kernel.org,
	tglx@linutronix.de
Date: Wed, 25 Aug 2021 18:26:34 +0800
Message-Id: <20210825102636.52757-2-21cnbao@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210825102636.52757-1-21cnbao@gmail.com>
References: <20210825102636.52757-1-21cnbao@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 25 Aug 2021 14:00:04 +0000
Subject: [Intel-wired-lan] [PATCH v3 1/3] Documentation: ABI: sysfs-bus-pci:
 Add description for IRQ entry
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

/sys/bus/pci/devices/.../irq has been there for many years but it
has never been documented. This patch is trying to document it as
what it is really implemented in the kernel code.

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Barry Song <song.bao.hua@hisilicon.com>
---
 Documentation/ABI/testing/sysfs-bus-pci | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-pci b/Documentation/ABI/testing/sysfs-bus-pci
index 793cbb7..eeacdce 100644
--- a/Documentation/ABI/testing/sysfs-bus-pci
+++ b/Documentation/ABI/testing/sysfs-bus-pci
@@ -96,6 +96,16 @@ Description:
 		This attribute indicates the mode that the irq vector named by
 		the file is in (msi vs. msix)
 
+What:		/sys/bus/pci/devices/.../irq
+Date:		August 2021
+Contact:	Linux PCI developers <linux-pci@vger.kernel.org>
+Description:
+		If a driver has enabled MSI (not MSI-X), "irq" contains the IRQ
+		of the first MSI vector. Otherwise "irq" contains the IRQ of
+		the legacy INTx interrupt.
+		"irq" being set to 0 indicates that the device isn't capable of
+		generating legacy INTx interrupts.
+
 What:		/sys/bus/pci/devices/.../remove
 Date:		January 2009
 Contact:	Linux PCI developers <linux-pci@vger.kernel.org>
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
