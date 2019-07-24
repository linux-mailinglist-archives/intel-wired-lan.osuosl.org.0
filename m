Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2482D727E2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2019 08:06:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C8B32865A1;
	Wed, 24 Jul 2019 06:06:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8d5aOuSCUSnm; Wed, 24 Jul 2019 06:06:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2ED018610F;
	Wed, 24 Jul 2019 06:06:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CE2D1BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:06:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6919C85D55
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:06:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rtU0nc5dHc5z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2019 06:06:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 038BC85B11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:06:32 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id m9so21470038pls.8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 23:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3uxz/F8fAbkCDFD+nINfvnMjV4IUPu+90Frw3nw53wk=;
 b=sW/w6n2hnTKsqa3uenaBVxUGwEp2jhw3CwcJBYiFkIL1xoT2fQZnygvw28FKspmxYx
 Nz4d0TPzyoi2KUp1tHRWtd8Z3JjGfq3MmVMQQ7HjzvoGxFAApSIWhMswa0/bJwIQhWCU
 WEsall8mS76zHwYsaC73yjVP/7V1GUBKLx6m0MpT4ESx1rpO4dTL/Q0011rP9pWoz5Om
 6vk8whk+6SuNxXI60qIQwPCKTe4BXmWOYJZn05rTsRHvGCoPSm1TZ0s0lRoqisi/QbbK
 lPGwfY25QtkfmLDXBnUFPL4f0HESKSnGuEd1bEguQYY/oqHwdOQy+rJHoOqbGrbOS3x/
 V5Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3uxz/F8fAbkCDFD+nINfvnMjV4IUPu+90Frw3nw53wk=;
 b=JyPoAFV4Q9ltTxvt4xdpTsuB4s7XFtiI8ghPeN/hiVdfT3I/imlGhj8uKpFjWf80e5
 8xOj5PiS2JqRb8uV4V0eDKnBt1Dw3CngPb8AbGT6mjk259cnw2ZoYGRwCbQODRSmWWM0
 /an+Gp9u3flE2325MPY6GwvR9zDc1jKAEQ6OyisvyD9GpO2e6zXhUrtpq07V065DOeit
 Z0mQuux93xWj4nx8bkJZzBqD2KLiC/fcXm60D8xr3ztIYUWK65CNEeFTslld6Ahwc+Yh
 zlY1zeUo5ZOFr0Dp44Xe1gPskoXTEdLK5jruZVBZEISPzE5KB7eq9ksVMRQs8R9tbVx7
 BeQw==
X-Gm-Message-State: APjAAAV/c3kz0Lv2MvfbsDXr3iw/g5ieXFM6MmHRTfOU0IM0/4cPDzsi
 G0JC159+1SbCQA0TmXDk9/k=
X-Google-Smtp-Source: APXvYqwNHriMH8crPUN1Wh3LKQJ2MX1rmYLWHRP5Lq3+ywwtmuQ6uSfFowasvLVuVKiEsKIJWxKtDQ==
X-Received: by 2002:a17:902:2d01:: with SMTP id
 o1mr86095743plb.105.1563948391700; 
 Tue, 23 Jul 2019 23:06:31 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id 64sm46660992pfe.128.2019.07.23.23.06.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 23:06:31 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Date: Wed, 24 Jul 2019 14:06:26 +0800
Message-Id: <20190724060626.24226-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 6/8] i40e: Use dev_get_drvdata
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

 drivers/net/ethernet/intel/i40e/i40e_main.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 9ebbe3da61bb..a83198a0ba51 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -14938,7 +14938,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (is_valid_ether_addr(hw->mac.port_addr))
 		pf->hw_features |= I40E_HW_PORT_ID_VALID;
 
-	pci_set_drvdata(pdev, pf);
+	dev_set_drvdata(&pdev->dev, pf);
 	pci_save_state(pdev);
 
 	dev_info(&pdev->dev,
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
