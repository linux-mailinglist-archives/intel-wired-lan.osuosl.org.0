Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 660C371A56
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 16:28:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C3B98516A;
	Tue, 23 Jul 2019 14:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ldO5rqMXCDml; Tue, 23 Jul 2019 14:28:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2CE7D84E34;
	Tue, 23 Jul 2019 14:28:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 77A1F1BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 14:15:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6D98286F8D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 14:15:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4iNjW8OwLZL1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 14:15:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D743786F74
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 14:15:38 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id g2so19228880pfq.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 07:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t8/tYNsVxDLiBnfPm14iuWNmhM56kmPj2n/HRk6yks8=;
 b=N1YENDNLsN8BAjvWh4jHBgqIidbRRnVoIi6SYOXw+vTl2GHO2Ocurbufia/6kbMdlP
 xhKzKjfaAUuslQdmPNX+0QwHiFzyggi3HQuAwzL0eNUcKj8tIJpjNs3CcNorPsp8uLOX
 MpBJsmTFo7gTDEmZA5Pt/1FFG4KAelDUyTxtl5RTdOt0jEoRgosuNx8TlpGU+6Pvpw9q
 YWGX16b7eMyOHOTdvsHZ2bS8yOvsTwUhe1EQhEYUvGPBFL7q/8dz6Hp+rKSFYDR3ObPT
 ouvLHqXEgInfSVwt3abO9YgrWR/db0rpjlKhvICNbYt6exk5r3UrAWdipm5l38s0bYl7
 ANVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t8/tYNsVxDLiBnfPm14iuWNmhM56kmPj2n/HRk6yks8=;
 b=bLw0AYhwieOtNHYkR+8u89eyTd09LVvTMOyMoBpCf44YZw+DVyeISaQZHJtTzVbMR/
 ucoR+ysDSbR93sq1otGzVQIvkkI+bQvSKj+gfHC+624oMQ5HmyQf9WzViutP7Hg4CQr/
 wHwLzlnYeyvYflDRWfLmA0wISuttJHtPN6jE0kn+CdLj2ocXiJOMhZrxlybGIEbGHarD
 GSaqEpO8c1b0MpKljxhurK90YBWJ3mim0tg/OUH6I9miZViqMdy36+osk5SbV7ZW0ulJ
 q79DpInxS3XBlnpjoOw4JgZyKWu1Htieq87AKmLNihHluOeUL/A3eW4djaFvYKldX6l1
 NQXQ==
X-Gm-Message-State: APjAAAXCqzJc28mfzo19voA5M+X8Rm4uI1aBn1MBbqcqgjE2Fq+n55O4
 PfcD/Igfv5202z5lflVcr9c=
X-Google-Smtp-Source: APXvYqyjee5FJxFzNGCVsaawUAzdmeQOTwBPSjj0kU5hpEjsEX3E5SwZSYWIU/L2KabkoYR+fyfJbw==
X-Received: by 2002:a63:e54f:: with SMTP id z15mr76552521pgj.4.1563891338414; 
 Tue, 23 Jul 2019 07:15:38 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id bg3sm39370448pjb.9.2019.07.23.07.15.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 07:15:37 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Date: Tue, 23 Jul 2019 22:15:33 +0800
Message-Id: <20190723141533.5803-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 23 Jul 2019 14:28:17 +0000
Subject: [Intel-wired-lan] [PATCH] fm10k: Use dev_get_drvdata
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
Cc: netdev@vger.kernel.org, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Instead of using to_pci_dev + pci_get_drvdata,
use dev_get_drvdata to make code simpler.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k_pci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_pci.c b/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
index e49fb51d3613..7bfc8a5b6f55 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
@@ -2352,7 +2352,7 @@ static int fm10k_handle_resume(struct fm10k_intfc *interface)
  **/
 static int __maybe_unused fm10k_resume(struct device *dev)
 {
-	struct fm10k_intfc *interface = pci_get_drvdata(to_pci_dev(dev));
+	struct fm10k_intfc *interface = dev_get_drvdata(dev);
 	struct net_device *netdev = interface->netdev;
 	struct fm10k_hw *hw = &interface->hw;
 	int err;
@@ -2379,7 +2379,7 @@ static int __maybe_unused fm10k_resume(struct device *dev)
  **/
 static int __maybe_unused fm10k_suspend(struct device *dev)
 {
-	struct fm10k_intfc *interface = pci_get_drvdata(to_pci_dev(dev));
+	struct fm10k_intfc *interface = dev_get_drvdata(dev);
 	struct net_device *netdev = interface->netdev;
 
 	netif_device_detach(netdev);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
