Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE3033F276
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 15:22:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1D966F85E;
	Wed, 17 Mar 2021 14:22:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Rn46lvIkHr3; Wed, 17 Mar 2021 14:22:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE9616066A;
	Wed, 17 Mar 2021 14:22:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B9CD1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 10:00:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 13DEF6F732
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 10:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VAc9kheTWQRI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 10:00:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 78B816F6C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 10:00:21 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id n79so38244843qke.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 03:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZAsbQNS29RWdCC9XL0/Dl6r/Tgfzn0XQQUMR2GsJUFY=;
 b=dU/zOewyXirtBUuLJ0DlIrl8p8JEQ/Hx15XiYfgkp8T6fBUbobwsEs5dYICZ0y/rcs
 xzCvpIoIacrDm6HvB54W2fHEtZT//7cmltieg3sC1In6YmDtoUm74pbRTwLZIEbnRjow
 jiLYmWGlu3mw97WnWe067xCeXx2UAdrxMZKaxE/Pr8ZR5kQKJ01HnQB3W3BlgT9+pH39
 jTbpRu8j4b0rMmQxEu0tDdqNZjO1/cnzCoy60Kg2Ss2/cwCnYBZ1lJriQC75sTRGrU8T
 CxaIqUYCA+EcSqI71OWlx19kMSSXoN8xnCtuPG2OK/JiWqm23hKbZDBv0WhL0BSb82zO
 P2mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZAsbQNS29RWdCC9XL0/Dl6r/Tgfzn0XQQUMR2GsJUFY=;
 b=jpuCn2+Tebilalkqk60jd8UzwMB+/vt3T1jXiJskhYpgkNw+xjwQ/eFKOtQeFwUEnp
 M2xPFPAPbfW+lEyD4oGj23Hv2KRoDBIgK2PZiX0OgvSxh9GHLJRqUYTUljCvnTmLJmIV
 +TjG7YhpnHEG9b3ECyIG6vxZ0WisxSLn27DpF6aQfrP7U3CRTd69MytNXfUIr1+ivel4
 zMk7dZxbAIb2PFq5hmU+9iPmEylYTrgLKQmupqXDy6Fq7erGJ6EvaBINDGNgtPq+MWN0
 UUGng059Mr00uVtghq7evmLRWLALrZVy30JkMzomtMVCzFEnpYHmJNaSpSrLfa2Z4E6Y
 FAEQ==
X-Gm-Message-State: AOAM5315IC/q5uq5svgyE2U0SlEvFQQK4glbfDb2okviZaBZTIkKkHho
 PD0OgB3k3HbbYuGz2PBgug0=
X-Google-Smtp-Source: ABdhPJzQwKfIs+XgGLc0O+S/sc0kIbyhsPuBqFAUjCWQwH6YWZf5V0ru07v5NU5r0IxELMlerP6FUg==
X-Received: by 2002:a37:96c4:: with SMTP id y187mr3986614qkd.231.1615975220384; 
 Wed, 17 Mar 2021 03:00:20 -0700 (PDT)
Received: from localhost.localdomain ([37.19.198.48])
 by smtp.gmail.com with ESMTPSA id v137sm5161436qkb.109.2021.03.17.03.00.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 03:00:19 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed, 17 Mar 2021 15:30:01 +0530
Message-Id: <20210317100001.2172893-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 17 Mar 2021 14:22:11 +0000
Subject: [Intel-wired-lan] [PATCH] net: ethernet: intel: Fix a typo in the
 file ixgbe_dcb_nl.c
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
Cc: rdunlap@infradead.org, Bhaskar Chowdhury <unixbhaskar@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


s/Reprogam/Reprogram/

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
index c00332d2e02a..72e6ebffea33 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
@@ -361,7 +361,7 @@ static u8 ixgbe_dcbnl_set_all(struct net_device *netdev)
 	}

 #ifdef IXGBE_FCOE
-	/* Reprogam FCoE hardware offloads when the traffic class
+	/* Reprogram FCoE hardware offloads when the traffic class
 	 * FCoE is using changes. This happens if the APP info
 	 * changes or the up2tc mapping is updated.
 	 */
--
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
