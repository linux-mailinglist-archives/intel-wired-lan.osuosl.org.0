Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5491671A55
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 16:28:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CBE2785DF5;
	Tue, 23 Jul 2019 14:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fSHf8vblWtdG; Tue, 23 Jul 2019 14:28:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D8EF883E0F;
	Tue, 23 Jul 2019 14:28:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4722A1BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 14:15:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3CEE9844B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 14:15:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LqvfsHidDcCl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 14:15:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 883E6836CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 14:15:21 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id n9so13285087pgc.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 07:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0BVMTUlp2bfNRSz5dz/R36KBXDX+K7L4DCHaXHFSPt8=;
 b=rT8A+1VGxtNVUW8o8mxCW/NcaATjGkEd9EatcSBS5FLLGzx+Qz+YiTn9i2sFqD0/Qd
 BzLZVW3Qg+WCegTSu9Yt9i3UOJlHSP06RinE5r1jIYZX0c+6cuuajA40G+2geW54IL9t
 j9/ZPdwL1i4lND6Spz01YfoiAJxTU7eQB0UdtrgNPMv9L2dj4eJfn50gK2JmHruLQXPc
 4Su2iSG0w+6RJPNzuzEesd5TATN+zbo7iuTbExnfpfZoBS/jKCi8RMHAZfedni4mr7uz
 sWMBRJ4ZswBMrP2DCneVyhcbDHQJey8wkhWefM5+T6cLzyzOIxl9Z/FlVxf9F2c2FGvo
 JZ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0BVMTUlp2bfNRSz5dz/R36KBXDX+K7L4DCHaXHFSPt8=;
 b=hvR6k1yEOoR3Kq0yOsv6Qju0pnw0WRfqgqAaA76UG118PvfA8Sl0if5eUwJwEZleYr
 Qx5zqXdu/gj00vMAbn8Q9dH4nVauk6uU+PYyPaeXdIlGZ0TkqwOOfur7iU/T8Y9Uhp1H
 INmeb0rNrWa0MDmntqvgtSe9hBevhK5wi92TxIS6GVKl2n5OXGVGO8SlGVF4s05vvrqw
 cdEurFgr9GXcyhUBhMRG03CJv54ayRHL4VelrrOyVA00x6VI4SfZRcADede1uQENBFen
 9m/Qu7ePGWQcltsDaIF5PfUD3CV1OUsz7NbTvxS1Eh3R9UEenBT/tEZCwQ0vKJfVCqdb
 sStg==
X-Gm-Message-State: APjAAAWE2ChsJ/Eo4Lv6NSqrZY/fJU+sI0sJ8zwglG79Jb5iX0fhVDfD
 L8R170PML2nnBTE2RvbVyKAzpfTTnRw=
X-Google-Smtp-Source: APXvYqzC27mCAEmKlo9WKJde4cIOGMtKbosyOsAzkOawPbrvyYJwreSVs7qNA6HSigDFyqSXBiw3Pw==
X-Received: by 2002:a17:90a:214e:: with SMTP id
 a72mr41119575pje.0.1563891321169; 
 Tue, 23 Jul 2019 07:15:21 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id q63sm56749233pfb.81.2019.07.23.07.15.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 07:15:20 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Date: Tue, 23 Jul 2019 22:15:13 +0800
Message-Id: <20190723141513.5749-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 23 Jul 2019 14:28:17 +0000
Subject: [Intel-wired-lan] [PATCH] e1000e: Use dev_get_drvdata where possible
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
 drivers/net/ethernet/intel/e1000e/netdev.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index e4baa13b3cda..fa2755849c54 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6297,7 +6297,7 @@ static void e1000e_flush_lpic(struct pci_dev *pdev)
 
 static int e1000e_pm_freeze(struct device *dev)
 {
-	struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
+	struct net_device *netdev = dev_get_drvdata(dev);
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 
 	netif_device_detach(netdev);
@@ -6630,7 +6630,7 @@ static int __e1000_resume(struct pci_dev *pdev)
 #ifdef CONFIG_PM_SLEEP
 static int e1000e_pm_thaw(struct device *dev)
 {
-	struct net_device *netdev = pci_get_drvdata(to_pci_dev(dev));
+	struct net_device *netdev = dev_get_drvdata(dev);
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 
 	e1000e_set_interrupt_capability(adapter);
@@ -6679,8 +6679,7 @@ static int e1000e_pm_resume(struct device *dev)
 
 static int e1000e_pm_runtime_idle(struct device *dev)
 {
-	struct pci_dev *pdev = to_pci_dev(dev);
-	struct net_device *netdev = pci_get_drvdata(pdev);
+	struct net_device *netdev = dev_get_drvdata(dev);
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 	u16 eee_lp;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
