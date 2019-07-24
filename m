Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9752727DF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2019 08:06:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 81A05866A3;
	Wed, 24 Jul 2019 06:06:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RJFvrAvmRktu; Wed, 24 Jul 2019 06:06:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C657E86566;
	Wed, 24 Jul 2019 06:06:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D2BC1BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:06:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 34F038515C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:06:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dasQHUzWua8U for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2019 06:06:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 13D8585096
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:06:23 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id s1so14329690pgr.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 23:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=31L/qG3uJMYvnLAjCarmZ4oT4ALMlS1kE3KgO5pog3g=;
 b=lWplJEeoBfrY353cEV/p5nOjvGIvJVBe59G1UDivAKDjp9N7Vx9h1QWFXs8uVnd5mE
 y2Ca0ZzHo0Y2Xld8sexXiBU/ASfW1KtiisdxnA6Fd77hdCLAwvXuajFvpmmQ3rVK8In2
 t2GA3Z7Blo6tlw2oEj5mNwaSOIXT/7NsYyv+enUc4bXQvQhUt5Yc8qS4/8/gSAGlC/A2
 f2rgndjiwbcRj8jBsKI4VP5AnKSoDht6oef6lGSewxs/wrlXUTl7RoQRs7yMIeLfG7fp
 RNV1JwDQReRgZVjwJzZiBIwBZOXZVIoyd0CWPFIIV0molb4KMcgvesEFoHSW4i340AGS
 Z7Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=31L/qG3uJMYvnLAjCarmZ4oT4ALMlS1kE3KgO5pog3g=;
 b=Q9ALi7cn/5gbQGUyaRXLu3yWf40cRlBZfw8zhqmkVntyZqZw1uvs+ayXk90bc/mYvM
 G7ENrTA6dhjbLa13GnIyBkSXeIutC2t/dXCP8dit8Dsy+L7aSA8IjKSgioeFwm2E0bsP
 9Ulet8XBC7p5TgMGF5ocGGPWQfkQet8K0+BnyxbjP1YKBDalPWs/ndpDkiW7NmEmBjhH
 fysCq56K5V3jN1NQdDPQ015TT588yWYCxuOZkJ6sstuViReR2cAO34x0omGkRWOZy33A
 kBaqr9s7j5pEKwIPg0upmul0q/s8Y4kqgfVhkO9AyU9hEq3HJskMo3WXZTR4ttWbRXXD
 G1dg==
X-Gm-Message-State: APjAAAWP2Cotw1RyMJF15JzzaCaOUhv4yeZCLr/1MBrjejIsJRAG5+nv
 TPB1acSZcFF4O2qQfBTcfOg=
X-Google-Smtp-Source: APXvYqyPJ3BSLpDt4aRKGj8tCni/KPLWD/iSfVWWqh03RP+V5jqQCGaSpJF5CtsYHcWmiJK31+Mziw==
X-Received: by 2002:a63:1749:: with SMTP id 9mr27305810pgx.0.1563948382607;
 Tue, 23 Jul 2019 23:06:22 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id c23sm31908495pgj.62.2019.07.23.23.06.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 23:06:22 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Date: Wed, 24 Jul 2019 14:06:17 +0800
Message-Id: <20190724060617.24170-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 5/8] fm10k: Use dev_get_drvdata
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

 drivers/net/ethernet/intel/fm10k/fm10k_pci.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_pci.c b/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
index e49fb51d3613..b4aa49b53c61 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
@@ -2144,7 +2144,7 @@ static int fm10k_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	SET_NETDEV_DEV(netdev, &pdev->dev);
 
 	interface = netdev_priv(netdev);
-	pci_set_drvdata(pdev, interface);
+	dev_set_drvdata(&pdev->dev, interface);
 
 	interface->netdev = netdev;
 	interface->pdev = pdev;
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
