Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD702CD630
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Dec 2020 13:58:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E1F687ACF;
	Thu,  3 Dec 2020 12:58:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TC-RQ5x6G4-8; Thu,  3 Dec 2020 12:58:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7668387AC7;
	Thu,  3 Dec 2020 12:58:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B4FDB1BF344
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 12:58:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AC96187511
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 12:58:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IUId1hKwbSmP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Dec 2020 12:58:10 +0000 (UTC)
X-Greylist: delayed 00:05:24 by SQLgrey-1.7.6
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 642A787477
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 12:58:10 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id o24so2420301ljj.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Dec 2020 04:58:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HEZu0gb15wHkzlu6krDNXkRlzwjgOoNExS8odb0pUVs=;
 b=C3PK5436R2duRbeGqfd4RUm8oIeqruiW3GcOI0gYskJpf8dZHmT0/33q5cryA1yjNn
 9JtN6KyYazq+j54UOUN+Y7LVfYJdJu163Eg033KWtv/AnVG4TYxG7V3gSvoEpghSqOeg
 QlDkKxqnGkHMe0MqRf6qhm6XrEm2PQCGkJGxOLClrjlK+5y0SGo9suEgS00Li8Hc5c16
 821Uzrqdl94AjdsBIZtKdAtGhnzkZbtvikbAtEB9U9XNGWTfLtNWbcvPQ+tY+r3eCEMw
 aTKK2ZG7EFp1cf5B0lbOeNuhmNPJguhHjzokry0XY7J65rLxwT4EacZTSL4anh6kQj/8
 ghww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HEZu0gb15wHkzlu6krDNXkRlzwjgOoNExS8odb0pUVs=;
 b=Pwsh/XPbE8Z9v7721SafxspnS3+2rwkAKXGbI7QxGo/NjvJMvA5ozfG/Z6lDvofTGb
 rGV227Ar3mcXowcZy63BwTszJ0tVSXeWTtMVLwoC+lyrp014q7mlPqIkXlIdvN1HjDKl
 0gMsbTP3pGC7yA5TwmWgLJ4lzGYWs39Ns+IEwmfXtYf/FyQuBOBWLwimp2Wbu5Dcxemu
 RY6AGzsMLC2BAvADT6X9rmQVkdfD7W3xHLtoTjmllKZuhpqB6P+7oIQd0dbJtkXKzjdp
 6RPGFXrIjy5l5BrcztEt5yYOPYRpDvnz78NuJEGJRUMVmW5h39OzmJCoGrymd5v/KkSN
 76wA==
X-Gm-Message-State: AOAM533ZnmTibYfQNCxnsILh3tfUxtkZG1i/WwSLeXw2+THLXlTdWEjI
 awVKCSJMhrtVUBbGB3qYA9D9mTfa8obGgw==
X-Google-Smtp-Source: ABdhPJzdBndgvkAlV1WrXchSYeTzwMyzv1uBTkB6n0wAHhkujRwUxvr45PMFp0wLkWR8DrF0gerjZw==
X-Received: by 2002:a2e:b164:: with SMTP id a4mr1193988ljm.271.1606999964571; 
 Thu, 03 Dec 2020 04:52:44 -0800 (PST)
Received: from navi.cosmonova.net.ua ([95.67.24.131])
 by smtp.gmail.com with ESMTPSA id b17sm499891lfc.93.2020.12.03.04.52.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Dec 2020 04:52:43 -0800 (PST)
From: Andrew Melnychenko <andrew@daynix.com>
To: mst@redhat.com
Date: Thu,  3 Dec 2020 15:25:15 +0200
Message-Id: <20201203132517.220811-1-andrew@daynix.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4 0/2] hw/virtio-pci: AER capability
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

Main motivation:
According to Microsoft driver\device certification requirements
for next version of Window Server, PCIe device must support AER.
"Windows Server PCI Express devices are required to support
Advanced Error Reporting [AER] as defined in
PCI Express Base Specification version 2.1."

AER capability for virtio-pci is disabled by default.
AER capability is only for PCI with PCIe interface on PCIe bus.
During migration - device "realize" should initialize AER
if requested by device properties.
Fixed commit message.

Andrew (2):
  hw/virtio-pci Added counter for pcie capabilities offsets.
  hw/virtio-pci Added AER capability.

 hw/virtio/virtio-pci.c | 20 +++++++++++++++++++-
 hw/virtio/virtio-pci.h |  4 ++++
 2 files changed, 23 insertions(+), 1 deletion(-)

-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
