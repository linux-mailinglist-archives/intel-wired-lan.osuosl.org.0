Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0574D727E6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2019 08:06:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9343385B11;
	Wed, 24 Jul 2019 06:06:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uUulEbc6E-_v; Wed, 24 Jul 2019 06:06:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F2D2985D59;
	Wed, 24 Jul 2019 06:06:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 914A01BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:06:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1282C85D55
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:06:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j54cZqA2Oopv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2019 06:06:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 912B185B11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 06:06:38 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id t16so20337151pfe.11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 23:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+1HMfJjTxMmt6yq++N5V1yBpZofp5uwv8IyU21fY09c=;
 b=JdS7ifxwE5qDaTMSddnrdpqo9R9gPEQj/gz1fqKljkmbd2SaAplf3F0DSQKVQEO4FS
 QAK4ELOErHgMoo2VKVENGOz9dzr4hHEApog1mJWsE0Bn58E0kOVyhNSf+M3rNiEkdJRc
 fkNctifv/t8AvuNwjL88aNZbbTJT09gAPeprHC28MywLmXm0Aty32f7lQP/b5HdJk79g
 jNpn9GkZ3p7kCNuI28jLl2wP6qv6fMZQeLx/vegsNS9LJ+3Gvh65hQUJuvezhf8LoWvv
 6k/h5/9USe7Y6iLNRmS2H1/fLPtb5CN7Ygea19y1sEhER5TlS65gRL/3/FXBaYjxEznW
 07mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+1HMfJjTxMmt6yq++N5V1yBpZofp5uwv8IyU21fY09c=;
 b=PI/2J1YMV8cXX/a4703jhgwXf5cEUhGOf4VZWaLmIpZknyVYKjkXk3/knsRzzkHgBy
 lhwgIyFs3SMUDcQQ7N3n0V/8aAXOALNClFnfZzPBAxpwUHgHICtE35kklNaJHgT9ePqH
 /fCBNsspsso5sqTvZWh1lcstTGG5ywByqrQQ32Ncn3/zIdpDp3O6oU+o9osZpjpW9NS9
 sNM640pAzmxDrG3q0zPI08CLeZ4qnOFfOZUpZlq06SHis5OmCzmU94S3BGQw5+7UFiCk
 DYEmhvSHRs2SONpYO0i1B9VuongB/DaWh+qTDBoKDBXgfkDto8StrHS1ZlsErpkIv8bh
 Flsg==
X-Gm-Message-State: APjAAAUITf3AyToMwIX2+RZTuCktPmAkgljFj8bQaLnY74B50HzYKIkC
 /sl88yG2PtUN6YTNZWBVoqg=
X-Google-Smtp-Source: APXvYqzOXgXuZYtmgP1MoJxtOZOC9ioO4gK6RyHz2B7lwyoIGdQG/TTs7Wpl4gfJbhuIGrYlQYXzfA==
X-Received: by 2002:a17:90a:258b:: with SMTP id
 k11mr82378025pje.110.1563948398256; 
 Tue, 23 Jul 2019 23:06:38 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id c23sm31909568pgj.62.2019.07.23.23.06.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 23:06:37 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Date: Wed, 24 Jul 2019 14:06:33 +0800
Message-Id: <20190724060633.24280-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 7/8] igb: Use dev_get_drvdata
 where possible
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

 drivers/net/ethernet/intel/igb/igb_main.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index b4df3e319467..ed301428c0ce 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3048,7 +3048,7 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	SET_NETDEV_DEV(netdev, &pdev->dev);
 
-	pci_set_drvdata(pdev, netdev);
+	dev_set_drvdata(&pdev->dev, netdev);
 	adapter = netdev_priv(netdev);
 	adapter->netdev = netdev;
 	adapter->pdev = pdev;
@@ -8879,8 +8879,7 @@ static int __maybe_unused igb_resume(struct device *dev)
 
 static int __maybe_unused igb_runtime_idle(struct device *dev)
 {
-	struct pci_dev *pdev = to_pci_dev(dev);
-	struct net_device *netdev = pci_get_drvdata(pdev);
+	struct net_device *netdev = dev_get_drvdata(dev);
 	struct igb_adapter *adapter = netdev_priv(netdev);
 
 	if (!igb_has_link(adapter))
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
