Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0229471A57
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 16:28:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3D5462036C;
	Tue, 23 Jul 2019 14:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DF2+gOdEvvzm; Tue, 23 Jul 2019 14:28:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E0FA0204D6;
	Tue, 23 Jul 2019 14:28:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0DDA21BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 14:16:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0821F203FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 14:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PEkGGO1Gv3nD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 14:16:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 967362033D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 14:16:30 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id q10so19216028pff.9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 07:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vnMp4KQz5A+KQDSXbk5N3b4UMi/Pfkv+7tT/nF0GEF0=;
 b=lVziAEHMQ5C5tS+95c5MdMdXA7umqy9khg7ApB8F/o4zEhNHi+cHu/GTSOnmgB4WAz
 pq556e+4IcQ3NPrwnnevxiFu/rCOCLETNhX8Z/FDElzdXAxmhlZmUlGs+WhUjj7ad7za
 9CF2OlvkJ5s150aw4pVd0uN3UQYTKcLn4VSEezIeXH9LJqpxiPFglmLtmk0K2ieFiNQa
 Jo3i1iKVF/gva/CFRGTiwS3z0K6VjR71+AuC708lUFqjJTXJ8d3at8/5CxRv0VALIb57
 SN4wgvIXE1V4WudvP8BT3/d+K6ae7DR5huI33T2uICKGQgbi4hMJ8X3+HairVndBob7l
 7IqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vnMp4KQz5A+KQDSXbk5N3b4UMi/Pfkv+7tT/nF0GEF0=;
 b=MuwL67QyjQjNNtslPSE2C71q5lj/61aItoORjs02twoggso527I+5X2W6taSbTqrUI
 JARB6kASiC0EfImVVTHUtFXn7ROwFpUIvn8+78PAFqm/hjSxV4t4Q/DHtxLoRyg9J63v
 t7UcxfU79w7KP1CdM8vS4i/xdFj9n4Cjccy2/B/TWjcSswWbwTfSzNrEIB4d0j2V4iYb
 Uz4csZ4vr9Vri1hLwvhLznSIsnRPOgj14GLDjVuiOvG27TIv7IYQ6kR4xfNlIExOU5Uo
 eHpMUsUoRyPF6MimZMmgT78mH7K4NcdSVH3D//hECPN6AawCKyFZRTlfSCXNHG8NJohz
 mFqg==
X-Gm-Message-State: APjAAAWT06alTDeaTrx+mCCu1PzXU3rUvO1dOoc/0xOF0R29JkvvFyy+
 hm8hAEuqTE/K/b0ZJKxNkmU=
X-Google-Smtp-Source: APXvYqxxoi6imH4gkqFil+us4JdezGtYIycjUbaLAvzxc5zK9SSNRiLSYowqscOtebT+Z39Bh2KCCg==
X-Received: by 2002:aa7:82da:: with SMTP id f26mr6071283pfn.82.1563891390353; 
 Tue, 23 Jul 2019 07:16:30 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id h6sm40857737pfb.20.2019.07.23.07.16.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 07:16:29 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Date: Tue, 23 Jul 2019 22:16:24 +0800
Message-Id: <20190723141624.5911-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 23 Jul 2019 14:28:17 +0000
Subject: [Intel-wired-lan] [PATCH] igb: Use dev_get_drvdata where possible
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
 drivers/net/ethernet/intel/igb/igb_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index b4df3e319467..145f58ee0451 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
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
