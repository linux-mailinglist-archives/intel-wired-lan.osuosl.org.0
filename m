Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F26D74D9C3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jul 2023 17:22:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 211F460F6B;
	Mon, 10 Jul 2023 15:22:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 211F460F6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689002559;
	bh=fUn9Im1y2TVAnUf+KY84CwlnqZxNAkDhA/YSG0Yz/9s=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=YrHXwx3m0VIg8K8tsNhx4DUHunRrO/rVb+/tdZ8j2eXIq0a6iiZc6SgUq1fch/tLI
	 WJKa+Y9LiPJeqwLxd4536mVN4GNr+sZhbkLEZuy/wB3EunJ0FYr43wg4qc8K7Vuj8P
	 a4IoIw1mrqZSJjcFxViWRAgzxqn4IePGbuYVNf2GwV6FU9IEPDhHU6MmNypiQp4TNT
	 J99sLn02ic1Q1clW2oh/3kLCLCftf1534aXao4hnQajj2K9d2xi3uNcOpCLHLLULxP
	 EVjCIEPY1zNzpyipEvjnZZ3K5gvYnSsiBhPlRzCsUiV3T5vxh5c6v8qyNJAx8rApcd
	 KAHsKRNN/0PPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nTE1E1bcpndT; Mon, 10 Jul 2023 15:22:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E65AD60F5D;
	Mon, 10 Jul 2023 15:22:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E65AD60F5D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D5D261BF475
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 01:04:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AD7DD81764
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 01:04:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD7DD81764
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I8PWL1zOpc37 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jul 2023 01:04:48 +0000 (UTC)
X-Greylist: delayed 00:07:06 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D717181757
Received: from mx-lax3-1.ucr.edu (mx-lax3-1.ucr.edu [169.235.156.35])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D717181757
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 01:04:47 +0000 (UTC)
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by smtp-lax3-1.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 09 Jul 2023 17:57:41 -0700
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-345ceee5a68so13104165ab.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 09 Jul 2023 17:57:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688950660; x=1691542660;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/wAseA0ncrRwgDlHK9AT72liWPmh1dR/ULxlrBgaw0E=;
 b=T7plpYXAP7340ZueA9ZBA8nsh6B9A0jhVcpIBrPA3+2F+i7FajdTGnIf0LcpEFgGBL
 Woz2xiCaFf4NrHqm+eh9qLpwyol5mnfHjaHEmvDy3DnvdXcjo0cA8McaI1WdN8hb3n/A
 JyjEtjxCUIRseCPKtDDx/GuUKTfqkskbQwjbGtZRnEwWCFMzNYuuajLEqiRy1j1JT45C
 lAIUFG/MbmfAmDYlXyMvDNgIklS0+jxI/ONWlVgDjOX3Mto5Wh6XV1S+myMk0cijfmHp
 mAHAsC9EfZSb/jEZMnEqM/8H0h8SB2TnfGd+010dfhHMzjo0LaqzfJx9o1TBtH/RyUPU
 bOuA==
X-Gm-Message-State: ABy/qLbwG2E2KuYtvETMbBjTpl+d7Vxf/OBRMeF7KFt2n+/3Xzk8mfpb
 ilduqH2y2AN6gh8GsndfCwXNO4+P694iguAPzbpq9kpcbZ90Gtn2pqZ4YHbOtLF68cEifCk3Mmc
 gVjkHP3Torfupvh3bZlTFB877Us3FROM=
X-Received: by 2002:a92:cc44:0:b0:346:3554:4d68 with SMTP id
 t4-20020a92cc44000000b0034635544d68mr9878858ilq.17.1688950659903; 
 Sun, 09 Jul 2023 17:57:39 -0700 (PDT)
X-Google-Smtp-Source: APBJJlFCflDL0AvD7yBlFIGgUph6Hoi9nSjWAOdNgwDcpPpYLlABzmbu4jcmo4yCsnaE5mK6ijEVOw==
X-Received: by 2002:a92:cc44:0:b0:346:3554:4d68 with SMTP id
 t4-20020a92cc44000000b0034635544d68mr9878849ilq.17.1688950659634; 
 Sun, 09 Jul 2023 17:57:39 -0700 (PDT)
Received: from yuhao-ms.. ([2600:6c51:4700:3f7c:3e6a:a7ff:fe52:5148])
 by smtp.gmail.com with ESMTPSA id
 d17-20020a92d791000000b0034587c5533fsm3155651iln.51.2023.07.09.17.57.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Jul 2023 17:57:39 -0700 (PDT)
From: Yu Hao <yhao016@ucr.edu>
To: 
Date: Sun,  9 Jul 2023 17:57:35 -0700
Message-Id: <20230710005736.3273464-1-yhao016@ucr.edu>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 10 Jul 2023 15:22:20 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1688951088; x=1720487088;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CfcO7Q8FTml/EPGaN7PkFNGOFbP2iGYa0hUM6yvnJCA=;
 b=nIZhl9AS0MI47gaHTLmgO1nc8Qdrz13raoG1STkXVLRjEdZPhrVTxg8e
 90bt1kl9gP00cvsqDzRt10H5YJsr0Molbbpkm72kua/UwbznTKmlMd7vZ
 RPPvqoYTHVboqkwHQYG1ux9xmuPHJ9f6HkQqTqt9wlIE2YmxLYbgJfM9P
 DBpaiy7KRb6w459JfE0OE/EysIN6IUWqIVrB8uSsvsola3WMFocVLZ2vn
 N1XYjXcwbvIXB22GY98un2HzXiMULvFS4dlfeLpIUEHWGGwj2RtJBfFsh
 3uj6vfg8e3cHeq8MEhM6vaekHF7btKCnufI/PVAaQPtmFwobsyub1kC8N
 w==;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ucr.edu; s=rmail; t=1688950660; x=1691542660;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=/wAseA0ncrRwgDlHK9AT72liWPmh1dR/ULxlrBgaw0E=;
 b=PCZ7tOhGGzN4Lh+QOYtBmRv4JUg9lSnrPJtC8zPsnQl8lx0mMRkBcvC0YBa8hYyvR9
 hCEhGG5qUvP883GIXfCH+81V3jLlSWdkYpcKJCi07FnCqOwv/bcz+e9No9pBf3dcQiy3
 3kAo2ooYvVu5S/XQXUNgj7fMzENSl5aPK3Us8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=ucr.edu header.i=@ucr.edu
 header.a=rsa-sha256 header.s=selector3 header.b=nIZhl9AS; 
 dkim=pass (1024-bit key) header.d=ucr.edu header.i=@ucr.edu
 header.a=rsa-sha256 header.s=rmail header.b=PCZ7tOhG
Subject: [Intel-wired-lan] [PATCH] ethernet: e1000e: Fix possible uninit bug
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
Cc: Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Yu Hao <yhao016@ucr.edu>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The variable phy_data should be initialized in function e1e_rphy.
However, there is not return value check, which means there is a
possible uninit read later for the variable.

Signed-off-by: Yu Hao <yhao016@ucr.edu>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 771a3c909c45..a807358a8174 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6909,7 +6909,7 @@ static int __e1000_resume(struct pci_dev *pdev)
 
 	/* report the system wakeup cause from S3/S4 */
 	if (adapter->flags2 & FLAG2_HAS_PHY_WAKEUP) {
-		u16 phy_data;
+		u16 phy_data = 0;
 
 		e1e_rphy(&adapter->hw, BM_WUS, &phy_data);
 		if (phy_data) {
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
