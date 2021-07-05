Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E31C73BC0E7
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 17:39:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94BF5608A2;
	Mon,  5 Jul 2021 15:39:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id stNpi5b3oShK; Mon,  5 Jul 2021 15:39:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A505A60067;
	Mon,  5 Jul 2021 15:39:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 27DC21BF39A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:38:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 17835839E7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:38:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5hlxCMdJz4nC for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 15:38:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E8F438376E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:38:56 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id j199so16504238pfd.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Jul 2021 08:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=T4dhU4vNUYUMAfVdjNq0yBk3ipIhsnfg40hCltrxSNQ=;
 b=g9AjZANKI1igS+w4HK69J8zGtHKAt9N7mTpeFAJqN+JqKAViqng1Wuszbq45xLglOP
 86C4nLehp/oIPsUZgMcljPJVgna782qZdhZnyTry4J0O6sKRpGZ9371rPjtcjQEAfs/K
 GhEJGBS/yIdPT2xlE5eEASu9pyMwNfAksleShLn5/9BwICgRvRJLFP1Tzpig0fzNiNAG
 H2lhF/K47LLgqVN+DsGvRJLdbphgLXhH6YWc++7/qLRGC4BgcV1wYOKMS3wKsyc/m4gi
 zI2ablOF37ALQzaFnPpEK/R2PS9O9gCn8e9AgEzZCNnecF+fs3yKN7F1pyFXTr2J2F0J
 6GPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=T4dhU4vNUYUMAfVdjNq0yBk3ipIhsnfg40hCltrxSNQ=;
 b=cuxmqRxSakbYSahoKMJ0NbqXVzoA1yXjqJbM8WqIrlAM+B/yK7f/Z0hAwiExz3ZMBC
 RmHwtliFxltfR/OgAtXwCihKLbLnN2c/H1kAgWGqVOwA0A5+fw9WctvQY1h+cYuhZlq0
 GjtEYCWAG4SXYlYbSQ2alBWcwKzaUqMP0CCMG3QCGsnNx1GWlXrwmbGvG3g5mGBBUFvg
 NSf95zBs0ODQmgts7bl6SK1BOkXbgHgXXwJXWYG2WFZJ6QMzGIIP2+ji1i8//E/4Gg9k
 7wK0qiTPep69TP3K23wyIyt4xDWfKIviUG6KPaYbRD+9y9Rr1rPE7N6Wvs+7FVn65wUd
 GKXQ==
X-Gm-Message-State: AOAM530Wyf3CI3bouDvw3DafTn5RqH0b6CvDd7k5EOgh692CrsvlMHPS
 deuYn8Y/GQOD+5BH4WKaZWE=
X-Google-Smtp-Source: ABdhPJzv6bT6qCiLVBujxoVeW+4yFJCwanlBmfDWu3/3/Gv7xnM61NnFSiRXhgivVfvYtA7IZ0SiLA==
X-Received: by 2002:a62:8309:0:b029:312:d19:ac8b with SMTP id
 h9-20020a6283090000b02903120d19ac8bmr15771559pfe.63.1625499536445; 
 Mon, 05 Jul 2021 08:38:56 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id k10sm9310353pfp.63.2021.07.05.08.38.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Jul 2021 08:38:55 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, kuba@kernel.org, dsahern@kernel.org,
 netdev@vger.kernel.org, j.vosburgh@gmail.com, vfalico@gmail.com,
 andy@greyhouse.net, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 jarod@redhat.com, intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jul 2021 15:38:11 +0000
Message-Id: <20210705153814.11453-7-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210705153814.11453-1-ap420073@gmail.com>
References: <20210705153814.11453-1-ap420073@gmail.com>
Subject: [Intel-wired-lan] [PATCH net v2 6/9] bonding: disallow setting
 nested bonding + ipsec offload
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

bonding interface can be nested and it supports ipsec offload.
So, it allows setting the nested bonding + ipsec scenario.
But code does not support this scenario.
So, it should be disallowed.

interface graph:
bond2
   |
bond1
   |
eth0

The nested bonding + ipsec offload may not a real usecase.
So, disallowing this scenario is fine.

Fixes: 18cb261afd7b ("bonding: support hardware encryption offload to slaves")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
v1 -> v2:
 - no change

 drivers/net/bonding/bond_main.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
index 7659e1fab19e..f268e67cb2f0 100644
--- a/drivers/net/bonding/bond_main.c
+++ b/drivers/net/bonding/bond_main.c
@@ -419,8 +419,9 @@ static int bond_ipsec_add_sa(struct xfrm_state *xs)
 	xs->xso.real_dev = slave->dev;
 	bond->xs = xs;
 
-	if (!(slave->dev->xfrmdev_ops
-	      && slave->dev->xfrmdev_ops->xdo_dev_state_add)) {
+	if (!slave->dev->xfrmdev_ops ||
+	    !slave->dev->xfrmdev_ops->xdo_dev_state_add ||
+	    netif_is_bond_master(slave->dev)) {
 		slave_warn(bond_dev, slave->dev, "Slave does not support ipsec offload\n");
 		rcu_read_unlock();
 		return -EINVAL;
@@ -453,8 +454,9 @@ static void bond_ipsec_del_sa(struct xfrm_state *xs)
 
 	xs->xso.real_dev = slave->dev;
 
-	if (!(slave->dev->xfrmdev_ops
-	      && slave->dev->xfrmdev_ops->xdo_dev_state_delete)) {
+	if (!slave->dev->xfrmdev_ops ||
+	    !slave->dev->xfrmdev_ops->xdo_dev_state_delete ||
+	    netif_is_bond_master(slave->dev)) {
 		slave_warn(bond_dev, slave->dev, "%s: no slave xdo_dev_state_delete\n", __func__);
 		goto out;
 	}
@@ -479,8 +481,9 @@ static bool bond_ipsec_offload_ok(struct sk_buff *skb, struct xfrm_state *xs)
 	if (BOND_MODE(bond) != BOND_MODE_ACTIVEBACKUP)
 		return true;
 
-	if (!(slave_dev->xfrmdev_ops
-	      && slave_dev->xfrmdev_ops->xdo_dev_offload_ok)) {
+	if (!slave_dev->xfrmdev_ops ||
+	    !slave_dev->xfrmdev_ops->xdo_dev_offload_ok ||
+	    netif_is_bond_master(slave_dev)) {
 		slave_warn(bond_dev, slave_dev, "%s: no slave xdo_dev_offload_ok\n", __func__);
 		return false;
 	}
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
