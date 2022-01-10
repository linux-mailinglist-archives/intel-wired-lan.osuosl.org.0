Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D8B489BA2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jan 2022 15:54:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B398240906;
	Mon, 10 Jan 2022 14:54:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bU4AuL2Qoiax; Mon, 10 Jan 2022 14:54:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC514408B2;
	Mon, 10 Jan 2022 14:54:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D34E81BF40A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 10:47:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CBE9660BBA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 10:47:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NOk0lwHOiG9g for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jan 2022 10:47:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 45C5460B4C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 10:47:02 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id e19so4743008plc.10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 02:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pY10rB3otKHYN/zyCOaytbgVsZbjDHmRjoptsEgakk4=;
 b=DlbdsL4/vcmWrhWDTfRizebiGQUO8oU7YSvF1AMp3Qs6/e9K2xp9Lr6Sd377V7dfzY
 cObPvqBMdHDbUVJVrJc2glnLTAHnKAankmXDYNmkh9KoMH63tG7KHdahXqMHUJqNZ7KB
 988UW3ii7fNuyVuiCH9EibqpkVKB//AXUPLj9vuIf/af7ij00ROK3XW2mjkW0xRgYFR6
 9Sq2tsDbQhmPfgwMSSN2iYXqWstTloqnhGv8a+whKo38TocRRD+BS1GOjEIYSO43kGXz
 JLaa1CEn0GM+c9KwzEkO6BunbcLDXVoX5MYhKABA8VLcdjyq50FQpdWXpovEsHpj+TWu
 r+cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pY10rB3otKHYN/zyCOaytbgVsZbjDHmRjoptsEgakk4=;
 b=CGQsmx3RdPqps2SzP2a2yxeEZjShi8/c8Jq17Z+qhhizrF1W0pb4cplEbDmLQTG15W
 1Zs6Up5fmgiDqZBxfbSYywbr618KgYFtQSWxllGapyG05IkKVs4pEWO//rAYVLAQrErl
 7gieOVAur3bJ6wUFh9DHoH++HpFgOXjyo+ACKC8GIj7HAcPutwYzKx/bQ6LeOKLCVN5U
 1/48XSfsKn2KrpFmjwCVDACXz1fnWDsTrVMZkblA3qOyI47zwnuhGdapK5LHko/AEbjj
 eRJvjvrgw9Ss2szNQQB4AC/NK90556w02GeQ3ps4jU9+MWmRyF/BLp2IMzIqn1ay4jaV
 tbWw==
X-Gm-Message-State: AOAM530LC3KdQWJKljvKVL3piS0E/h2ICUlURpnim/1qkOvCOTmmaWIL
 mUhRrSP2jjehXNCavitoI0I=
X-Google-Smtp-Source: ABdhPJzFJTakr/Mtd3uTh0LT2vS9i9iNtOUr4VcCKhundTvvfs4Uf2zoApHQdOQVvslMbWwJEaeF/A==
X-Received: by 2002:a17:90a:748e:: with SMTP id
 p14mr26973573pjk.231.1641811621723; 
 Mon, 10 Jan 2022 02:47:01 -0800 (PST)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id b11sm5350574pge.84.2022.01.10.02.46.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Jan 2022 02:47:01 -0800 (PST)
From: cgel.zte@gmail.com
X-Google-Original-From: chi.minghao@zte.com.cn
To: jesse.brandeburg@intel.com
Date: Mon, 10 Jan 2022 10:46:56 +0000
Message-Id: <20220110104656.646861-1-chi.minghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 10 Jan 2022 14:54:21 +0000
Subject: [Intel-wired-lan] [PATCH] ethernet/intel: remove redundant ret
 variable
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
Cc: netdev@vger.kernel.org, Zeal Robot <zealci@zte.com.cn>,
 linux-kernel@vger.kernel.org, Minghao Chi <chi.minghao@zte.com.cn>,
 intel-wired-lan@lists.osuosl.org, CGEL ZTE <cgel.zte@gmail.com>,
 kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Minghao Chi <chi.minghao@zte.com.cn>

Return value directly instead of taking this in another redundant
variable.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Minghao Chi <chi.minghao@zte.com.cn>
Signed-off-by: CGEL ZTE <cgel.zte@gmail.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 504fea4e90fb..a138dc64b8b7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1517,7 +1517,6 @@ static void iavf_fill_rss_lut(struct iavf_adapter *adapter)
 static int iavf_init_rss(struct iavf_adapter *adapter)
 {
 	struct iavf_hw *hw = &adapter->hw;
-	int ret;
 
 	if (!RSS_PF(adapter)) {
 		/* Enable PCTYPES for RSS, TCP/UDP with IPv4/IPv6 */
@@ -1533,9 +1532,8 @@ static int iavf_init_rss(struct iavf_adapter *adapter)
 
 	iavf_fill_rss_lut(adapter);
 	netdev_rss_key_fill((void *)adapter->rss_key, adapter->rss_key_size);
-	ret = iavf_config_rss(adapter);
 
-	return ret;
+	return iavf_config_rss(adapter);
 }
 
 /**
@@ -4689,8 +4687,6 @@ static struct pci_driver iavf_driver = {
  **/
 static int __init iavf_init_module(void)
 {
-	int ret;
-
 	pr_info("iavf: %s\n", iavf_driver_string);
 
 	pr_info("%s\n", iavf_copyright);
@@ -4701,8 +4697,7 @@ static int __init iavf_init_module(void)
 		pr_err("%s: Failed to create workqueue\n", iavf_driver_name);
 		return -ENOMEM;
 	}
-	ret = pci_register_driver(&iavf_driver);
-	return ret;
+	return pci_register_driver(&iavf_driver);
 }
 
 module_init(iavf_init_module);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
