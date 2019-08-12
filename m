Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C3C8A18F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2019 16:52:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D2E9E2152F;
	Mon, 12 Aug 2019 14:52:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l+wV8sXRZkvo; Mon, 12 Aug 2019 14:52:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9019E21544;
	Mon, 12 Aug 2019 14:52:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A8D61BF29F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 05:59:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6C455854E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 05:59:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nf8VdivBB3bJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2019 05:59:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f194.google.com (mail-yb1-f194.google.com
 [209.85.219.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 88219854E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2019 05:59:28 +0000 (UTC)
Received: by mail-yb1-f194.google.com with SMTP id b16so6918996ybq.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2019 22:59:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=N6oSMRPpHGkQ7E+kK6e4vXB5ZZOBX+MrIVovGvsXigg=;
 b=UudQMvinKPFXE55tLONrW5T/sib3WWzTwe6yEKcjsqi9iVjt5cMD8XBQ5QH9U995Fa
 wnpq9UWLPJoJxFjGUVe9Xqjw0KlwpkIsGql68vxeQbIhg3u42V1qcIFodXEcfJT++Syv
 hDgVSLKFDGC2cN3EXHB2dEDhdN/PGfEqVr1YVaPVvzadyPPhfNWktY21dPjfufbbYwAd
 P5ljjaHHg/5T4YJqZbqxA0Pbq6808+Jjtl+GFuWXODmQl7F64LJLR4n47xpwx/+yCaTR
 YF4IZQ8eG3f2DSkLbJM1quBoKcdiphERmv69anm/jAp4ovaPLdmKFLpQbbCdlAfr/yOl
 H62w==
X-Gm-Message-State: APjAAAXeXqfa0wqmrRQwJ2Ceid6HRkF1qhaZw+oHZMsdo48rdBMmB6Pc
 fqNqHBpiTGbFNB07pTsnv9I=
X-Google-Smtp-Source: APXvYqyH7bGaVBWLSU8sEzfL/N45LAWNBbDKUHxF98WHxf0lYev6I/BUIG/ZR/mT8bKm9nE2BGn1Zw==
X-Received: by 2002:a25:d794:: with SMTP id o142mr9107179ybg.384.1565589567579; 
 Sun, 11 Aug 2019 22:59:27 -0700 (PDT)
Received: from localhost.localdomain (24-158-240-219.dhcp.smyr.ga.charter.com.
 [24.158.240.219])
 by smtp.gmail.com with ESMTPSA id e12sm24721471ywe.85.2019.08.11.22.59.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 11 Aug 2019 22:59:26 -0700 (PDT)
From: Wenwen Wang <wenwen@cs.uga.edu>
To: Wenwen Wang <wenwen@cs.uga.edu>
Date: Mon, 12 Aug 2019 00:59:21 -0500
Message-Id: <1565589561-5910-1-git-send-email-wenwen@cs.uga.edu>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Mon, 12 Aug 2019 14:52:11 +0000
Subject: [Intel-wired-lan] [PATCH] e1000: fix memory leaks
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In e1000_set_ringparam(), 'tx_old' and 'rx_old' are not deallocated if
e1000_up() fails, leading to memory leaks. Refactor the code to fix this
issue.

Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
---
 drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
index a410085..2e07ffa 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
@@ -607,6 +607,7 @@ static int e1000_set_ringparam(struct net_device *netdev,
 	for (i = 0; i < adapter->num_rx_queues; i++)
 		rxdr[i].count = rxdr->count;
 
+	err = 0;
 	if (netif_running(adapter->netdev)) {
 		/* Try to get new resources before deleting old */
 		err = e1000_setup_all_rx_resources(adapter);
@@ -627,14 +628,13 @@ static int e1000_set_ringparam(struct net_device *netdev,
 		adapter->rx_ring = rxdr;
 		adapter->tx_ring = txdr;
 		err = e1000_up(adapter);
-		if (err)
-			goto err_setup;
 	}
 	kfree(tx_old);
 	kfree(rx_old);
 
 	clear_bit(__E1000_RESETTING, &adapter->flags);
-	return 0;
+	return err;
+
 err_setup_tx:
 	e1000_free_all_rx_resources(adapter);
 err_setup_rx:
@@ -646,7 +646,6 @@ static int e1000_set_ringparam(struct net_device *netdev,
 err_alloc_tx:
 	if (netif_running(adapter->netdev))
 		e1000_up(adapter);
-err_setup:
 	clear_bit(__E1000_RESETTING, &adapter->flags);
 	return err;
 }
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
