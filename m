Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D81B3BC0EA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 17:39:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1184D40353;
	Mon,  5 Jul 2021 15:39:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bk68MURKQ12c; Mon,  5 Jul 2021 15:39:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3CD14020A;
	Mon,  5 Jul 2021 15:39:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ECC751BF39A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:39:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DB6A140212
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:39:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D19Om2ecf6OR for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 15:39:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com
 [IPv6:2607:f8b0:4864:20::530])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2CB494020A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:39:07 +0000 (UTC)
Received: by mail-pg1-x530.google.com with SMTP id 62so10537643pgf.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Jul 2021 08:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4/o8vlqLZEYYy4rqyhVYly8UdixL87ijlGfpCwKp2EM=;
 b=Hi1CYnKaJD8B+s1p70zwuRhqyGMqkxTj02hYcpGZ8AUaVA3OeUxSzpu3Q3ODUsEKyT
 bTtilIy+9e1MeC/xB3CwvSy+isDwK1LN+FSlukpUUawJ9/h8vnD4PX22iIh4815c2wE8
 dzvLA8g6SnwQ16Yw4XvjgciUKw5Ds+Efa09UAepBZzxFSyUplFat9e0j4zMdCP6Q1ojH
 oZVl/PA5UJSWDsfGTQfABms9lTSwNQwm33skw8nBsCMrPY8sCEIoYhReUsC0c+zv3F02
 XI3raKQBEmr0f+H60tOpkdYLRaWWeDsCQqUmXU7FJqSN2MeF+wwpQ98GOdiM1vUIlaJ5
 weoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4/o8vlqLZEYYy4rqyhVYly8UdixL87ijlGfpCwKp2EM=;
 b=SdGAEkZe0Vyk3fbMC2J2iK63XNhjpKWcnkg8WyNKWtL2Exa79jqKGJPFKL1u04scby
 aI6AVHdKWFRP2gpOT1lEpyrMXxdb0RnhsSnOBZ98rTT6znuMHRhqHU2r+EsH754sfk2x
 lja8W8AWCDPcneOLkWtU9Djnx18e325Rx4uojNb/jz5WdQjmAfyl9E8TicSxNrMgQf3T
 8kB3LFVVLQ5+Qqz3+6upVKmU/DViCHz3Si7zsM1EDMd7bNXaLau4d7ClP5GShB0kgaCS
 JhgaMpLLcQuL0s9v1glQQ+wKH00rJsFteZTsQTLtSz/QB1tk8Qe5d+GjcKsTQYj4ldDF
 YjmQ==
X-Gm-Message-State: AOAM530qGlV8Zqv0s7vizQQdbGR2TzcKdALsq7YlwuUdmyR6ui/2C1Ge
 HaQ701xUkyEJMFzz01V/I5c=
X-Google-Smtp-Source: ABdhPJxljA3EFgn011+V+dR3d8tS6FvrSWEV3mImCpX2tf4EaXQUMOuBx6QHATtpflJ0KsivCX/OTg==
X-Received: by 2002:a63:4c19:: with SMTP id z25mr16231805pga.160.1625499546611; 
 Mon, 05 Jul 2021 08:39:06 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id k10sm9310353pfp.63.2021.07.05.08.39.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Jul 2021 08:39:06 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, kuba@kernel.org, dsahern@kernel.org,
 netdev@vger.kernel.org, j.vosburgh@gmail.com, vfalico@gmail.com,
 andy@greyhouse.net, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 jarod@redhat.com, intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jul 2021 15:38:14 +0000
Message-Id: <20210705153814.11453-10-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210705153814.11453-1-ap420073@gmail.com>
References: <20210705153814.11453-1-ap420073@gmail.com>
Subject: [Intel-wired-lan] [PATCH net v2 9/9] bonding: fix incorrect return
 value of bond_ipsec_offload_ok()
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
Cc: ap420073@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

bond_ipsec_offload_ok() is called to check whether the interface supports
ipsec offload or not.
bonding interface support ipsec offload only in active-backup mode.
So, if a bond interface is not in active-backup mode, it should return
false but it returns true.

Fixes: a3b658cfb664 ("bonding: allow xfrm offload setup post-module-load")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
v1 -> v2:
 - newly added

 drivers/net/bonding/bond_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
index a9cb06959320..3bc6266ede0e 100644
--- a/drivers/net/bonding/bond_main.c
+++ b/drivers/net/bonding/bond_main.c
@@ -581,7 +581,7 @@ static bool bond_ipsec_offload_ok(struct sk_buff *skb, struct xfrm_state *xs)
 	real_dev = curr_active->dev;
 
 	if (BOND_MODE(bond) != BOND_MODE_ACTIVEBACKUP) {
-		err = true;
+		err = false;
 		goto out;
 	}
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
