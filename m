Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 554C827A5DA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 05:42:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 07A088701E;
	Mon, 28 Sep 2020 03:42:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UnkRvyQNLjgj; Mon, 28 Sep 2020 03:42:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A17787028;
	Mon, 28 Sep 2020 03:42:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 522911BF95E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4DED387068
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k0zF8R-Ckjj5 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Sep 2020 19:57:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6030A8707A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:18 +0000 (UTC)
Message-Id: <20200927194920.730139599@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601236636;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=EEFvcB/PwX9I89XLy131RQtWz3cYksfF3sbWg1NgDKQ=;
 b=18wUYjsdKMHJjgk4Us6khomilIdN25/SxDKIyuwyy0mSiSW/AeUP1NyRsE5FG33qrGO7QW
 jAw9J0tpj7pkffmpsb/I2xP+dFW27rpV0wEiciSCAhxQ4lnNpojA/FRCq5TQQMHJs+lphz
 fgNiUXBSNsmvPrgof215OGNS4MuZnGdrVxgP/w3I5rVQS+sGNlkRrVZGKmKgjWg+gIT3ZC
 R3cytjZp8ns5FunZ7qOWr6CiFfel+oq9NIgBWersYnxzOkskjX86LkiuElpQ5nTvA14pAx
 TSOmfZ9AKUnaegaoe9jBxklb5wqP3NKRYyZYH2Da+kRNpZ7XfqbG/dYW5gWETg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601236636;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=EEFvcB/PwX9I89XLy131RQtWz3cYksfF3sbWg1NgDKQ=;
 b=Uk0vLGNob7iKmswDXccCQehW+RKFAsRxN//Pf6BDgW08Dcoqm6jDgpCxycTWKPE0t0GELZ
 tesv+y7MgSj9WRBg==
Date: Sun, 27 Sep 2020 21:48:55 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Sep 2020 03:42:39 +0000
Subject: [Intel-wired-lan] [patch 09/35] net: fec_mpc52xx: Replace
 in_interrupt() usage
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>, linux-doc@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Chris Snook <chris.snook@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Edward Cree <ecree@solarflare.com>, libertas-dev@lists.infradead.org,
 brcm80211-dev-list@cypress.com, brcm80211-dev-list.pdl@broadcom.com,
 Ping-Ke Shih <pkshih@realtek.com>, Johannes Berg <johannes.berg@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Martin Habets <mhabets@solarflare.com>,
 Ulrich Kunitz <kune@deine-taler.de>, Jay Cliburn <jcliburn@gmail.com>,
 Paul McKenney <paulmck@kernel.org>, Stanislaw Gruszka <stf_xl@wp.pl>,
 Jouni Malinen <j@w1.fi>, Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Wright Feng <wright.feng@cypress.com>,
 Daniel Drake <dsd@gentoo.org>, Pensando Drivers <drivers@pensando.io>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Xinming Hu <huxinming820@gmail.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, Jon Mason <jdmason@kudzu.us>,
 Shannon Nelson <snelson@pensando.io>, Dave Miller <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Christian Benvenuti <benve@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

The usage of in_interrupt() in drivers is phased out and Linus clearly
requested that code which changes behaviour depending on context should
either be seperated or the context be conveyed in an argument passed by the
caller, which usually knows the context.

mpc52xx_fec_stop() uses in_interrupt() to check if it is safe to sleep. All
callers run in well defined contexts.

Pass an argument from the callers indicating whether it is safe to sleep.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org

---
 drivers/net/ethernet/freescale/fec_mpc52xx.c |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

--- a/drivers/net/ethernet/freescale/fec_mpc52xx.c
+++ b/drivers/net/ethernet/freescale/fec_mpc52xx.c
@@ -74,7 +74,7 @@ struct mpc52xx_fec_priv {
 static irqreturn_t mpc52xx_fec_interrupt(int, void *);
 static irqreturn_t mpc52xx_fec_rx_interrupt(int, void *);
 static irqreturn_t mpc52xx_fec_tx_interrupt(int, void *);
-static void mpc52xx_fec_stop(struct net_device *dev);
+static void mpc52xx_fec_stop(struct net_device *dev, bool may_sleep);
 static void mpc52xx_fec_start(struct net_device *dev);
 static void mpc52xx_fec_reset(struct net_device *dev);
 
@@ -283,7 +283,7 @@ static int mpc52xx_fec_close(struct net_
 
 	netif_stop_queue(dev);
 
-	mpc52xx_fec_stop(dev);
+	mpc52xx_fec_stop(dev, true);
 
 	mpc52xx_fec_free_rx_buffers(dev, priv->rx_dmatsk);
 
@@ -693,7 +693,7 @@ static void mpc52xx_fec_start(struct net
  *
  * stop all activity on fec and empty dma buffers
  */
-static void mpc52xx_fec_stop(struct net_device *dev)
+static void mpc52xx_fec_stop(struct net_device *dev, bool may_sleep)
 {
 	struct mpc52xx_fec_priv *priv = netdev_priv(dev);
 	struct mpc52xx_fec __iomem *fec = priv->fec;
@@ -706,7 +706,7 @@ static void mpc52xx_fec_stop(struct net_
 	bcom_disable(priv->rx_dmatsk);
 
 	/* Wait for tx queue to drain, but only if we're in process context */
-	if (!in_interrupt()) {
+	if (may_sleep) {
 		timeout = jiffies + msecs_to_jiffies(2000);
 		while (time_before(jiffies, timeout) &&
 				!bcom_queue_empty(priv->tx_dmatsk))
@@ -738,7 +738,7 @@ static void mpc52xx_fec_reset(struct net
 	struct mpc52xx_fec_priv *priv = netdev_priv(dev);
 	struct mpc52xx_fec __iomem *fec = priv->fec;
 
-	mpc52xx_fec_stop(dev);
+	mpc52xx_fec_stop(dev, false);
 
 	out_be32(&fec->rfifo_status, in_be32(&fec->rfifo_status));
 	out_be32(&fec->reset_cntrl, FEC_RESET_CNTRL_RESET_FIFO);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
