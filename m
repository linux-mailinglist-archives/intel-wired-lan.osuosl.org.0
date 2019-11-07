Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77838F3B82
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2019 23:35:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0ECC220445;
	Thu,  7 Nov 2019 22:35:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yiCpKxxTQwql; Thu,  7 Nov 2019 22:35:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 000AE2044A;
	Thu,  7 Nov 2019 22:35:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C24CB1BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 22:35:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B928987A30
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 22:35:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y7gbvffVYluO for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2019 22:35:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D1C2E87A2F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 22:35:52 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id z26so4232287wmi.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 07 Nov 2019 14:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TMwoSxT/4GGDyCQoDNcUPurUcdE1c7+EMwGJUkqnzXs=;
 b=Pr0aFrdeeIUogR9T9xynvSArsLkK5HBwUlfII2BYxq1GMUW97cXSwG2h9ZmtdUGCKF
 A8vNOlVE23TGL044HBEUfE25Ngu0JjZh3ll3B/ktVfl36UYXVsndFsQN8XruCuYRLQrm
 RqQBkM7EX3oE0f2HsOTWq5UPpIQA9HiLbaneiuj481XMoq9D/y5wGaGxMu7b9iRak6G1
 VthNWZ32vdljxz+lvDPJ1JywpVoZEYRt0mj5X/9OWNkTc7GIVtBB0+N/SsTf7ldE9434
 7RH4NrA4Nv88zPk9dL35ffxvWcjirR8lZXmBIYIUXVQBcdLCvvzPwMT/XupS3ovnPi/m
 gMkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TMwoSxT/4GGDyCQoDNcUPurUcdE1c7+EMwGJUkqnzXs=;
 b=fsyI1gCPSA9xov+fc6k98vuS5LGUgC/qlKlkycecOJsMOWF8/onpciydRZ2LjgmnaS
 MxdHASSFQDfoq0zuaZYaHV5YyuLsdlv1Xh/OfMpf3tMyuCfzyFSNII7SfTYoYFi9hXvO
 4cpuIdt6aV8HMvgZafQgyb7sVOIEO3LW/tsmpCmbYBH+kn3mK0gAttQIA11+ZmhbhADf
 rD7KonAG530TzyCHcJvxtD/wvM/ZANzuzxLwyWxg6LI85nH1Dp9dwW8hUuLk/L+x+7J7
 QOQ6sFZip2Fbnx34/PQj8QmykRtTnLUDAKKGhuwmoiT3z6iR9k2EHX/mM/kQg45ThcMb
 /+Fw==
X-Gm-Message-State: APjAAAWR3D5tUe3DcZZeJpCYkAMbuhfY+Pp01zao9e5qvBig6N1/R/iS
 f1FIfQOCZoDOIQ6XDzkXYeQ=
X-Google-Smtp-Source: APXvYqx8xScYBJoXlzF05l83tJs3HriXDX4aeugdE/sGwVN+qr0AD4JgYK3ka5ZxR0To9ENvfMuatQ==
X-Received: by 2002:a7b:cc0c:: with SMTP id f12mr5132600wmh.40.1573166150882; 
 Thu, 07 Nov 2019 14:35:50 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id y6sm3667194wrw.6.2019.11.07.14.35.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 14:35:50 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: netdev@vger.kernel.org
Date: Thu,  7 Nov 2019 14:35:37 -0800
Message-Id: <20191107223537.23440-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191107223537.23440-1-f.fainelli@gmail.com>
References: <20191107223537.23440-1-f.fainelli@gmail.com>
Subject: [Intel-wired-lan] [PATCH net-next 2/2] net: qcom/emac: Demote MTU
 change print to debug
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Timur Tabi <timur@kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changing the MTU can be a frequent operation and it is already clear
when (or not) a MTU change is successful, demote prints to debug prints.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/net/ethernet/qualcomm/emac/emac.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/qualcomm/emac/emac.c b/drivers/net/ethernet/qualcomm/emac/emac.c
index c84ab052ef26..98f92268cbaa 100644
--- a/drivers/net/ethernet/qualcomm/emac/emac.c
+++ b/drivers/net/ethernet/qualcomm/emac/emac.c
@@ -213,9 +213,9 @@ static int emac_change_mtu(struct net_device *netdev, int new_mtu)
 {
 	struct emac_adapter *adpt = netdev_priv(netdev);
 
-	netif_info(adpt, hw, adpt->netdev,
-		   "changing MTU from %d to %d\n", netdev->mtu,
-		   new_mtu);
+	netif_dbg(adpt, hw, adpt->netdev,
+		  "changing MTU from %d to %d\n", netdev->mtu,
+		  new_mtu);
 	netdev->mtu = new_mtu;
 
 	if (netif_running(netdev))
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
