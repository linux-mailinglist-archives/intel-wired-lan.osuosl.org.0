Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D67A3F76B3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Aug 2021 16:00:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A49E342533;
	Wed, 25 Aug 2021 14:00:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Uwk2VX-3LOC; Wed, 25 Aug 2021 14:00:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A35E406FD;
	Wed, 25 Aug 2021 14:00:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4EF7B1BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 10:27:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A5094074D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 10:27:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4AjuEFyvwaG9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Aug 2021 10:26:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12523406DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 10:26:58 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id a21so20846070pfh.5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Aug 2021 03:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YG+Dzwf/L1RyWfZn3OGGZtD61sWCS5iNO92JWdcbSUA=;
 b=a6ZiDE1ytbrMVXAox0M0JJUaisvQ1zhu4rsRv+hyzMeI6VWREGgDKglGLYNd3gRvxK
 N+bZxDcZdSHcGOogm9g4QSvEEc+KSVdgpzATYaTEH0jg+V6hksKzuANDbVuzIWH4Tsex
 Cn7geL6CwVedv6NibDQB3iyHp6rQasXRrYKTOTfZh+BHhBh+T8cYS6goa1zAjYcqHli0
 XnAykK8oezpKEjiUTgbYJUQ0tjIcE2VSLNK81xNos0/ZbqMNG+p90kH4LaYmoWiRbcvh
 bLtZwBrVbWlIDwMOVf5I+OSFNEx6K5tZLj5EdJZ3WTdgIOqsC/vKTUJtGWHXJ7+HFrBZ
 LU0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YG+Dzwf/L1RyWfZn3OGGZtD61sWCS5iNO92JWdcbSUA=;
 b=sKJfGYqE+GBShbG9evM1geiDIOQ6IeQBGio9Ed8mlSUOlJAL9A7kTondo9H/Fe3BBc
 f23xwiM+COQTFSHWaYdN3ZljtsH/3Wdnm7SKLD+IDgPSeep99L12vXNLAJm88liJsL65
 gFqWAaHzHLv99kVgX5SqAkLAK8W8NlBk3y4IPWUDAQtKFOAD7AcWRByo3JeOefzd6ZBQ
 4dSlbdfMeiLMAfpcSDAdVjwBf/y7DtHoBAaC4/tUKdJx8JtqCf/yJw3jlRbXl8EaQz21
 tB8QsKqqbPyW1VYSGwx4a82reW72CH1ZCcM6HHNIYuESrim7aSTLuHIFG5d/pya5klmr
 PfCg==
X-Gm-Message-State: AOAM533q7hbtGODqq0XuyuKbuS3vokob6X3uxOWIpTDj+WCV7jIMb1HX
 8YwBkkDuNkGVKkYcOdMZcEU=
X-Google-Smtp-Source: ABdhPJyziwI7/DFjyV9RRlioGgtF5Bp4ubELXmeRU+Yr/EM5C6Hli5/hsEmCdkI4pmvT04cVVUmP4A==
X-Received: by 2002:a62:16cf:0:b0:3e1:114a:abb6 with SMTP id
 198-20020a6216cf000000b003e1114aabb6mr43720882pfw.80.1629887218547; 
 Wed, 25 Aug 2021 03:26:58 -0700 (PDT)
Received: from baohua-VirtualBox.localdomain
 (203-173-222-16.dialup.ihug.co.nz. [203.173.222.16])
 by smtp.gmail.com with ESMTPSA id f23sm1786403pfa.94.2021.08.25.03.26.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Aug 2021 03:26:58 -0700 (PDT)
From: Barry Song <21cnbao@gmail.com>
To: bhelgaas@google.com,
	maz@kernel.org,
	tglx@linutronix.de
Date: Wed, 25 Aug 2021 18:26:33 +0800
Message-Id: <20210825102636.52757-1-21cnbao@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 25 Aug 2021 14:00:04 +0000
Subject: [Intel-wired-lan] [PATCH v3 0/3] PCI/MSI: Clarify the IRQ sysfs ABI
 for PCI devices
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


/sys/bus/pci/devices/.../irq has been there for many years but it has never
been documented. This patchset is trying to clarify it.

-v3:
  - Don't attempt to modify the current behaviour of IRQ ABI for MSI-X
  - Make MSI IRQ ABI more explicit(return 1st IRQ of the IRQ vector)
  - Add Marc's patch of removing default_irq from the previous comment to
    the series.
  Note patch 3/3 indirectly changed the code of pci_restore_msi_state(),
  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c is the only driver
  calling this API. I would appreciate testing done from this driver's
  maintainers.

-v2:
  - split into two patches according to Bjorn's comments;
  - Add Greg's Acked-by, thanks for reviewing!
  https://lore.kernel.org/lkml/20210820223744.8439-1-21cnbao@gmail.com/

-v1:
  https://lore.kernel.org/lkml/20210813122650.25764-1-21cnbao@gmail.com/#t

Barry Song (2):
  Documentation: ABI: sysfs-bus-pci: Add description for IRQ entry
  PCI/sysfs: Don't depend on pci_dev.irq for IRQ entry

Marc Zyngier (1):
  PCI/MSI: remove msi_attrib.default_irq in msi_desc

 Documentation/ABI/testing/sysfs-bus-pci | 10 ++++++++++
 drivers/pci/msi.c                       | 12 +++++-------
 drivers/pci/pci-sysfs.c                 | 23 ++++++++++++++++++++++-
 include/linux/msi.h                     |  2 --
 4 files changed, 37 insertions(+), 10 deletions(-)

-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
