Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 054CB27A5DF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 05:42:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 986B287047;
	Mon, 28 Sep 2020 03:42:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1MIEFcflvJ-D; Mon, 28 Sep 2020 03:42:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71ADC87029;
	Mon, 28 Sep 2020 03:42:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2B4FE1BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D1DB203FA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z6g0Ix6GxRip for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Sep 2020 19:57:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by silver.osuosl.org (Postfix) with ESMTPS id DC11120130
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:24 +0000 (UTC)
Message-Id: <20200927194921.248795602@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601236643;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=Sj3WauQU8mi402/vRACel76kLJxRIV6EoAhfHNnxpZY=;
 b=n0fgVb3Ug96wov56+pRrgznJLENd83NZztxL5cyqW/rVs62U4xh9ED8AyXKo/EjqPo+xBF
 peEpgiPXH9pqfPTHuc8ujx6mE3CqTAmG67DnVLbNpu8RBpazQS1wh901eYwfW/W5rp9T6+
 mQTOLfBSNd9kRiHuwpgIPESkTjF4A0NRGBVdql3pJmsnTAOFj5m6KfoyQOWe6ssNzkS7iT
 eBAMx2FpFw/opevgcSiqx8diP/c/uxdfw1c8BkohEzqYYLzW4BgmEd0QGstEPUth1aG0Q7
 6fZI2on8pqr2ghE5M7Tv3ZHOD6xf+1FjO7XiKcla80cDj1W5WEtQihQWFA0ycA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601236643;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=Sj3WauQU8mi402/vRACel76kLJxRIV6EoAhfHNnxpZY=;
 b=MxuTsE5o1wR/CArNtxLqX7nQvCbFh3lkQwB/tLVdXvBcDOcBMzl1i35xwzuVQpDS6q9W1t
 OM74ajQF8JW2zFDw==
Date: Sun, 27 Sep 2020 21:49:00 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Sep 2020 03:42:39 +0000
Subject: [Intel-wired-lan] [patch 14/35] net: natsemi: Replace
 in_interrupt() usage.
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

The usage of in_interrupt() in drivers is phased out and Linus clearly
requested that code which changes behaviour depending on context should
either be seperated or the context be conveyed in an argument passed by the
caller, which usually knows the context.

sonic_quiesce() uses 'in_interrupt() || irqs_disabled()' to chose either
udelay() or usleep_range() in the wait loop.

In all callchains leading to it the context is well defined and known.

Add a 'may_sleep' argument and pass it through the various callchains
leading to this function.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org

---
 drivers/net/ethernet/natsemi/sonic.c |   24 ++++++++++++------------
 drivers/net/ethernet/natsemi/sonic.h |    2 +-
 2 files changed, 13 insertions(+), 13 deletions(-)

--- a/drivers/net/ethernet/natsemi/sonic.c
+++ b/drivers/net/ethernet/natsemi/sonic.c
@@ -143,7 +143,7 @@ static int sonic_open(struct net_device
 	/*
 	 * Initialize the SONIC
 	 */
-	sonic_init(dev);
+	sonic_init(dev, true);
 
 	netif_start_queue(dev);
 
@@ -153,7 +153,7 @@ static int sonic_open(struct net_device
 }
 
 /* Wait for the SONIC to become idle. */
-static void sonic_quiesce(struct net_device *dev, u16 mask)
+static void sonic_quiesce(struct net_device *dev, u16 mask, bool may_sleep)
 {
 	struct sonic_local * __maybe_unused lp = netdev_priv(dev);
 	int i;
@@ -163,7 +163,7 @@ static void sonic_quiesce(struct net_dev
 		bits = SONIC_READ(SONIC_CMD) & mask;
 		if (!bits)
 			return;
-		if (irqs_disabled() || in_interrupt())
+		if (!may_sleep)
 			udelay(20);
 		else
 			usleep_range(100, 200);
@@ -187,7 +187,7 @@ static int sonic_close(struct net_device
 	 * stop the SONIC, disable interrupts
 	 */
 	SONIC_WRITE(SONIC_CMD, SONIC_CR_RXDIS);
-	sonic_quiesce(dev, SONIC_CR_ALL);
+	sonic_quiesce(dev, SONIC_CR_ALL, true);
 
 	SONIC_WRITE(SONIC_IMR, 0);
 	SONIC_WRITE(SONIC_ISR, 0x7fff);
@@ -229,7 +229,7 @@ static void sonic_tx_timeout(struct net_
 	 * disable all interrupts before releasing DMA buffers
 	 */
 	SONIC_WRITE(SONIC_CMD, SONIC_CR_RXDIS);
-	sonic_quiesce(dev, SONIC_CR_ALL);
+	sonic_quiesce(dev, SONIC_CR_ALL, false);
 
 	SONIC_WRITE(SONIC_IMR, 0);
 	SONIC_WRITE(SONIC_ISR, 0x7fff);
@@ -246,7 +246,7 @@ static void sonic_tx_timeout(struct net_
 		}
 	}
 	/* Try to restart the adaptor. */
-	sonic_init(dev);
+	sonic_init(dev, false);
 	lp->stats.tx_errors++;
 	netif_trans_update(dev); /* prevent tx timeout */
 	netif_wake_queue(dev);
@@ -692,9 +692,9 @@ static void sonic_multicast_list(struct
 
 			/* LCAM and TXP commands can't be used simultaneously */
 			spin_lock_irqsave(&lp->lock, flags);
-			sonic_quiesce(dev, SONIC_CR_TXP);
+			sonic_quiesce(dev, SONIC_CR_TXP, false);
 			SONIC_WRITE(SONIC_CMD, SONIC_CR_LCAM);
-			sonic_quiesce(dev, SONIC_CR_LCAM);
+			sonic_quiesce(dev, SONIC_CR_LCAM, false);
 			spin_unlock_irqrestore(&lp->lock, flags);
 		}
 	}
@@ -708,7 +708,7 @@ static void sonic_multicast_list(struct
 /*
  * Initialize the SONIC ethernet controller.
  */
-static int sonic_init(struct net_device *dev)
+static int sonic_init(struct net_device *dev, bool may_sleep)
 {
 	struct sonic_local *lp = netdev_priv(dev);
 	int i;
@@ -730,7 +730,7 @@ static int sonic_init(struct net_device
 	 */
 	SONIC_WRITE(SONIC_CMD, 0);
 	SONIC_WRITE(SONIC_CMD, SONIC_CR_RXDIS | SONIC_CR_STP);
-	sonic_quiesce(dev, SONIC_CR_ALL);
+	sonic_quiesce(dev, SONIC_CR_ALL, may_sleep);
 
 	/*
 	 * initialize the receive resource area
@@ -759,7 +759,7 @@ static int sonic_init(struct net_device
 	netif_dbg(lp, ifup, dev, "%s: issuing RRRA command\n", __func__);
 
 	SONIC_WRITE(SONIC_CMD, SONIC_CR_RRRA);
-	sonic_quiesce(dev, SONIC_CR_RRRA);
+	sonic_quiesce(dev, SONIC_CR_RRRA, may_sleep);
 
 	/*
 	 * Initialize the receive descriptors so that they
@@ -834,7 +834,7 @@ static int sonic_init(struct net_device
 	 * load the CAM
 	 */
 	SONIC_WRITE(SONIC_CMD, SONIC_CR_LCAM);
-	sonic_quiesce(dev, SONIC_CR_LCAM);
+	sonic_quiesce(dev, SONIC_CR_LCAM, may_sleep);
 
 	/*
 	 * enable receiver, disable loopback
--- a/drivers/net/ethernet/natsemi/sonic.h
+++ b/drivers/net/ethernet/natsemi/sonic.h
@@ -338,7 +338,7 @@ static void sonic_rx(struct net_device *
 static int sonic_close(struct net_device *dev);
 static struct net_device_stats *sonic_get_stats(struct net_device *dev);
 static void sonic_multicast_list(struct net_device *dev);
-static int sonic_init(struct net_device *dev);
+static int sonic_init(struct net_device *dev, bool may_sleep);
 static void sonic_tx_timeout(struct net_device *dev, unsigned int txqueue);
 static void sonic_msg_init(struct net_device *dev);
 static int sonic_alloc_descriptors(struct net_device *dev);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
