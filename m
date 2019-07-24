Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9E6727DB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2019 08:06:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34D6186133;
	Wed, 24 Jul 2019 06:06:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XjzEbsoUZBTL; Wed, 24 Jul 2019 06:06:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C34F86566;
	Wed, 24 Jul 2019 06:06:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFDFB1BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:06:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8336986133
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:06:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TeFnIvys9638 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2019 06:06:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E54EA8610F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:06:14 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id az7so21541928plb.5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 23:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=guFxv22S4JOArjEKN9Dxhy2TAljfranssf7R2KMuN5E=;
 b=ZTKmSpvvsEXCKpAARDgWNlQPMnESR+iob7CQxD1+ohydGxdFzikNctwCkFA2oVR7tl
 vhWkS87ZiFhQzjGAF6sIlX4Vvp74szDJbXg14WXjKIT8jdu5cXZaVfPFKD7KsG1jWtib
 E+YPjwVfnEDnPfRFPQngmzIEIJgm/+2pJxRfNI6VCeGXZPnjVo1xozXyxqzC1gYeTviK
 kRg1eKPKxK7VYfjBHtZIfyKWfQADzb2Uwn1esGUrWaBHyhLqehZ43IEW+ohqKhUegEcn
 jklne6LVA08suiBLtsqrFvUCwV+Ox9XtdBwZd1E1/OQtdTqKfav+6pRBV59ECgmrXaYR
 ctQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=guFxv22S4JOArjEKN9Dxhy2TAljfranssf7R2KMuN5E=;
 b=l9851zJp5g0HQ3hgMm/ITaeYUOlBQcctrX5r9KsQeW9CohrEUGik8lgGvoBxh7X1Fi
 vcWWNa2bsAI0JPIvWZwNphU8EGsjfdEBiP7/H71takiR3Pb1JWcnoInU4kOz6FC8eIeN
 bCY1FMnntY4F4CDq9ME7LVvP5GnIrKE/XGVrbGks67Z5elgHrnGQSe2TVmVF9OJR1XSu
 /k8fMIDtmQnsplCd5+rAETRkmR6/Ow+yubFpW5YY+07BA5UJ2bzBtdTy+QtSbkTQEnwh
 pAykK+JRdck6oVKvxapLucceLlGEl9bpd+k5X/0m+ArWKCxAZjegZ5nPJipKqhTnVF3p
 KiTQ==
X-Gm-Message-State: APjAAAVb+0LPeTUoAGjX0M6zDmPR0oHqUCjl+JL9usD+Y79C7CHtpxLj
 /YBcDoCfuwC2k9F/R33P7Lg=
X-Google-Smtp-Source: APXvYqy/1q7UpsiiVNicCAmywrdgkmPJes/B8K5Uqe0sjcw3wKWzW8+klY0U35P3+v9l1Eh16zs62w==
X-Received: by 2002:a17:902:110b:: with SMTP id
 d11mr87862606pla.213.1563948374625; 
 Tue, 23 Jul 2019 23:06:14 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id a3sm46434953pfo.49.2019.07.23.23.06.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 23:06:14 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Date: Wed, 24 Jul 2019 14:06:09 +0800
Message-Id: <20190724060609.24116-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 4/8] e1000e: Use
 dev_get_drvdata where possible
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
Changes in v2:
  - Change pci_set_drvdata to dev_set_drvdata
    to keep consistency.

 drivers/net/ethernet/intel/e1000e/netdev.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index e4baa13b3cda..ad203a2a64c4 100644
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
 
@@ -7105,7 +7104,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	netdev->irq = pdev->irq;
 
-	pci_set_drvdata(pdev, netdev);
+	dev_set_drvdata(&pdev->dev, netdev);
 	adapter = netdev_priv(netdev);
 	hw = &adapter->hw;
 	adapter->netdev = netdev;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
