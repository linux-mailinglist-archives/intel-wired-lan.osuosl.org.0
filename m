Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 498F471A58
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 16:28:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF79B8523B;
	Tue, 23 Jul 2019 14:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OY3MdNfJytoA; Tue, 23 Jul 2019 14:28:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 73EA485161;
	Tue, 23 Jul 2019 14:28:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45F6B1BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 14:15:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 41E022033D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 14:15:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zcQHBwczCc-B for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 14:15:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id AEC6020024
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 14:15:57 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w10so19511397pgj.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 07:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6XuO6jEdHx05hNaMYchqxtP9rqz8cu9SXAHKmnHPUW4=;
 b=tpe1MlDJlx/KgrsWcpqqIwwTnisGHOpqlym5XovKwNxt6Z9O5WJT2J8+uuZnol2LFL
 u7AP6re6/9qe5/3jhH3Zfj1+zy4JJV+c7LqVW97Xs7AaFSW3/aUNyueF0uM5nwzALxW9
 La0GD+KmifTDqYaP/yhMrXHqSgF7wqZs3fAeZg0qzNd39JyZe80prH49hPS3jl+qrECE
 bBEw574vJbzyzbweja65ehqrV/ZQ4KsclI+nd2AO3T8qQgXsm4iCmLmLO/w8uSFg/mnY
 cqoR4DERi2T2zLlUtZVQfdpMNSstyUmuCBukeXYKpPSW8w/hxROGEjLwCzDuZl5pTSE6
 X7pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6XuO6jEdHx05hNaMYchqxtP9rqz8cu9SXAHKmnHPUW4=;
 b=Y3Erl2a0Z99wTvpskYpnsvL3o92SSQ5xekd3+7QuI8jH+ZXZx9SU+RRgQ2f6pImNgz
 jQWUeAQgWvg4Wakd0u4hBiu4gFfwap1/6AJHIwJ5bxg+4kUdINWiu8PmhsqW8cFlpo3w
 YH390s6UzskghGK+Jva/00Kc8FYfReB9tGxCMa13Qgtm9lLAwfVliDsX/b9aW5Zdd0Eq
 7osYEWQifMnhJUnq8H8TWV7N+vtv3JXZqsxtXYcvATFHLFjikHmeAmppM8svEDetIpwU
 jKTXF8SGV8s6zdNxSIUtLdJq8kntr95YvApt+DgSsYlEJiY1lKEmeQZFglRiRyOMm0GB
 j9Lg==
X-Gm-Message-State: APjAAAVSmBLAazOSQtffUFsvq2doGioM+3GdWBDz+tTbkScekB+iDDj8
 V5vDa4054DNKv0NX3XKSSDk=
X-Google-Smtp-Source: APXvYqyU9NQxgncgw/8atoKL9rXa7a2GeD9SYhC5Gww4rgeqRIDg5WSXdJqcQVA0+7+avG6/x8p0ig==
X-Received: by 2002:a63:e907:: with SMTP id i7mr75605559pgh.84.1563891357278; 
 Tue, 23 Jul 2019 07:15:57 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id m4sm53994904pgs.71.2019.07.23.07.15.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 07:15:56 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Date: Tue, 23 Jul 2019 22:15:51 +0800
Message-Id: <20190723141551.5857-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 23 Jul 2019 14:28:17 +0000
Subject: [Intel-wired-lan] [PATCH] i40e: Use dev_get_drvdata
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
 drivers/net/ethernet/intel/i40e/i40e_main.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 9ebbe3da61bb..44da407e0bf9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15605,8 +15605,7 @@ static void i40e_shutdown(struct pci_dev *pdev)
  **/
 static int __maybe_unused i40e_suspend(struct device *dev)
 {
-	struct pci_dev *pdev = to_pci_dev(dev);
-	struct i40e_pf *pf = pci_get_drvdata(pdev);
+	struct i40e_pf *pf = dev_get_drvdata(dev);
 	struct i40e_hw *hw = &pf->hw;
 
 	/* If we're already suspended, then there is nothing to do */
@@ -15656,8 +15655,7 @@ static int __maybe_unused i40e_suspend(struct device *dev)
  **/
 static int __maybe_unused i40e_resume(struct device *dev)
 {
-	struct pci_dev *pdev = to_pci_dev(dev);
-	struct i40e_pf *pf = pci_get_drvdata(pdev);
+	struct i40e_pf *pf = dev_get_drvdata(dev);
 	int err;
 
 	/* If we're not suspended, then there is nothing to do */
@@ -15674,7 +15672,7 @@ static int __maybe_unused i40e_resume(struct device *dev)
 	 */
 	err = i40e_restore_interrupt_scheme(pf);
 	if (err) {
-		dev_err(&pdev->dev, "Cannot restore interrupt scheme: %d\n",
+		dev_err(dev, "Cannot restore interrupt scheme: %d\n",
 			err);
 	}
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
