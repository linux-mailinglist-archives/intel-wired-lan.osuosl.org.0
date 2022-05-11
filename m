Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E54BB52347C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 May 2022 15:41:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8485B40B7B;
	Wed, 11 May 2022 13:41:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yGaf1Q3m96Yt; Wed, 11 May 2022 13:41:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 827D14052C;
	Wed, 11 May 2022 13:41:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ACDD11BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 09:20:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8FEC0832EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 09:20:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ycMrjO3mlg5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 May 2022 09:20:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EBCA483183
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 09:20:19 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id
 w17-20020a17090a529100b001db302efed6so1527299pjh.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 02:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=VocA58IeyI2uukCAYnVaaxkVzHhnSR0onge4nBYywA0=;
 b=XqBt0TtwzuaJu1nZiOtPdh49FBWJDDoYWZY5kVNyNMaBftTEvlEI3+trcHjyLXe+Gf
 zNTXDW0xtwOq1AVwKN00s0zgWvoUH2oBhgRC9V9ixh8c4fqND+f/Rky4Wpltupz9qUiT
 Skkn7vhhdliUCw9Zeuu7Ozl7EvWH7NLf3n0A3Vmc7EVyA8HfbZr0uyjDGywHOpwrDyXU
 eax65ijUGWyYN4/SuOLe4RsHKdqOSs5fHnQv5MzVyCCeKP9ZHk9PzhmPW3iNQFA6rY5u
 OyGNZMgEG2MbAGtaI+l9oxlRK0Q1tz7qV2KU8W8+w2DVoUyg7JJJF4H+8NLHzqDD+pGP
 9r0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=VocA58IeyI2uukCAYnVaaxkVzHhnSR0onge4nBYywA0=;
 b=qrG7CVTYQXTMsrOjtkZEpSvYOwtCEleWsqGKA2M1DXN5dEv2uiOb60hUSecr7rCwiQ
 To5+QX0ZH9VbGnpEJWS4gp2HDQTpZFIBzaXasqWGUpiHY3H+3Nfax96leCykQDt6v9Cj
 BcnjdXyciS1pS88zFtfZF3L9Cqt9aIaegjgc3bjr/DPpSWPRHuNUNf/zH7pYsPzoRRQX
 KnqLLfXS3VD91s+PUnYRwne9JOb72cjuctVp+r0muXhC4X7fRzDQXj1h18yXQXIzQSTg
 gQ+uad6CPheVxmY1tH5nDhox0ZXhDqICb5y8yO+PlYcf/0KUYXG2utUCquDMsdYOSiJp
 SC8g==
X-Gm-Message-State: AOAM530J99za5HDw4ZHuR6igUJWgbUm3bQ5FjjKvDXWlhvVPnN5poqH5
 fZiS7QkkIfg/ikdGXKTzhe4=
X-Google-Smtp-Source: ABdhPJwqZNBxmRZ2CvD/00FfhB10XL9Q7L5+sAevj7huytOPrUDSY+oZEdFhQcKGK4/9si4qDf1Juw==
X-Received: by 2002:a17:903:240c:b0:153:c8df:7207 with SMTP id
 e12-20020a170903240c00b00153c8df7207mr24186051plo.44.1652260819403; 
 Wed, 11 May 2022 02:20:19 -0700 (PDT)
Received: from localhost.localdomain ([23.91.97.158])
 by smtp.gmail.com with ESMTPSA id
 o10-20020a170903210a00b0015e8d4eb23dsm1229546ple.135.2022.05.11.02.20.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 02:20:19 -0700 (PDT)
From: xiaolinkui <xiaolinkui@gmail.com>
X-Google-Original-From: xiaolinkui <xiaolinkui@kylinos.cn>
To: pmenzel@molgen.mpg.de, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com
Date: Wed, 11 May 2022 17:20:04 +0800
Message-Id: <20220511092004.30173-1-xiaolinkui@kylinos.cn>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Wed, 11 May 2022 13:40:58 +0000
Subject: [Intel-wired-lan] [PATCH] igb: Convert a series of if statements to
 switch case
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
Cc: netdev@vger.kernel.org, Linkui Xiao <xiaolinkui@kylinos.cn>,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Linkui Xiao <xiaolinkui@kylinos.cn>

Convert a series of if statements that handle different events to a switch
case statement to simplify the code.

V2: fix patch description and email format.

Signed-off-by: Linkui Xiao <xiaolinkui@kylinos.cn>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 34b33b21e0dc..4ce0718eeff6 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -4588,13 +4588,17 @@ static inline void igb_set_vf_vlan_strip(struct igb_adapter *adapter,
 	struct e1000_hw *hw = &adapter->hw;
 	u32 val, reg;
 
-	if (hw->mac.type < e1000_82576)
+	switch (hw->mac.type) {
+	case e1000_undefined:
+	case e1000_82575:
 		return;
-
-	if (hw->mac.type == e1000_i350)
+	case e1000_i350:
 		reg = E1000_DVMOLR(vfn);
-	else
+		break;
+	default:
 		reg = E1000_VMOLR(vfn);
+		break;
+	}
 
 	val = rd32(reg);
 	if (enable)
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
