Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B62EC27A5E2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 05:42:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 66CC986180;
	Mon, 28 Sep 2020 03:42:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cfZTjc+TgRyu; Mon, 28 Sep 2020 03:42:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B644D8620B;
	Mon, 28 Sep 2020 03:42:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FDBA1BF95E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2C30585657
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ukIn9_nuA_wL for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Sep 2020 19:57:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 472E28508E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:27 +0000 (UTC)
Message-Id: <20200927194921.454020115@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601236645;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=nEdxrHzmEZ13nc2oNAX4mlZl848es00xkT/DnJHA5RU=;
 b=ibSynXzNFO24Tr+9mg9CXt5EtKiOcQOu6V+70RX3ktyhWeVX/mh8yC4e7VKa9o+57Capkj
 KhAWmT+9NH/kiSAKQWbRNfrwXJSfqUQIIgwqWaNAptujCvdwBy3v9Et11/IKP/zJH5Pclb
 8ZbPidNYRCIECUt2qnjfkf4v2JwYhqC/T8VEOiCeWQRjnIYDMg1Sxb6O0oTFw8zDUFRdUX
 5ikkLCLQod9OvgM8+5f6VGE5fFEBxbjLkAl+jK/BRvgHR+W+1leJSduGhEdpl5a2HbciY1
 ywv3iCDrWrYyuYcB9ZmvZA22aq92oipmto6n+2gX1YQkd5OQjgkNgcDb+QA+Rg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601236645;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=nEdxrHzmEZ13nc2oNAX4mlZl848es00xkT/DnJHA5RU=;
 b=r7tOoEsYPpAyx40OdwJ0cukY0N3wA8XromAerzwrBBcIuUAvAIEt2D90A1YdSbKuPruQ8y
 EaBYrjJM5fK8whAg==
Date: Sun, 27 Sep 2020 21:49:02 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Sep 2020 03:42:39 +0000
Subject: [Intel-wired-lan] [patch 16/35] net: sunbmac: Replace
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

bigmac_init_rings() has an argument signaling if it is called from the
interrupt handler. This is used to decide between GFP_KERNEL and GFP_ATOMIC
for memory allocations.

But it also checks in_interrupt() to handle invocations which come from the
timer callback bigmac_timer() via bigmac_hw_init(), which is invoked with
'in_irq = 0'. While the timer callback is clearly not in hard interrupt
context it is still not sleepable context.

Rename the argument to `non_blocking' and set it to true if invoked from
the timer callback or the interrupt handler which allows to remove the
in_interrupt() check and makes the code consistent.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org

---
 drivers/net/ethernet/sun/sunbmac.c |   18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

--- a/drivers/net/ethernet/sun/sunbmac.c
+++ b/drivers/net/ethernet/sun/sunbmac.c
@@ -209,13 +209,13 @@ static void bigmac_clean_rings(struct bi
 	}
 }
 
-static void bigmac_init_rings(struct bigmac *bp, int from_irq)
+static void bigmac_init_rings(struct bigmac *bp, bool non_blocking)
 {
 	struct bmac_init_block *bb = bp->bmac_block;
 	int i;
 	gfp_t gfp_flags = GFP_KERNEL;
 
-	if (from_irq || in_interrupt())
+	if (non_blocking)
 		gfp_flags = GFP_ATOMIC;
 
 	bp->rx_new = bp->rx_old = bp->tx_new = bp->tx_old = 0;
@@ -489,7 +489,7 @@ static void bigmac_tcvr_init(struct bigm
 	}
 }
 
-static int bigmac_init_hw(struct bigmac *, int);
+static int bigmac_init_hw(struct bigmac *, bool);
 
 static int try_next_permutation(struct bigmac *bp, void __iomem *tregs)
 {
@@ -549,7 +549,7 @@ static void bigmac_timer(struct timer_li
 				if (ret == -1) {
 					printk(KERN_ERR "%s: Link down, cable problem?\n",
 					       bp->dev->name);
-					ret = bigmac_init_hw(bp, 0);
+					ret = bigmac_init_hw(bp, true);
 					if (ret) {
 						printk(KERN_ERR "%s: Error, cannot re-init the "
 						       "BigMAC.\n", bp->dev->name);
@@ -617,7 +617,7 @@ static void bigmac_begin_auto_negotiatio
 	add_timer(&bp->bigmac_timer);
 }
 
-static int bigmac_init_hw(struct bigmac *bp, int from_irq)
+static int bigmac_init_hw(struct bigmac *bp, bool non_blocking)
 {
 	void __iomem *gregs        = bp->gregs;
 	void __iomem *cregs        = bp->creg;
@@ -635,7 +635,7 @@ static int bigmac_init_hw(struct bigmac
 	qec_init(bp);
 
 	/* Alloc and reset the tx/rx descriptor chains. */
-	bigmac_init_rings(bp, from_irq);
+	bigmac_init_rings(bp, non_blocking);
 
 	/* Initialize the PHY. */
 	bigmac_tcvr_init(bp);
@@ -749,7 +749,7 @@ static void bigmac_is_medium_rare(struct
 	}
 
 	printk(" RESET\n");
-	bigmac_init_hw(bp, 1);
+	bigmac_init_hw(bp, true);
 }
 
 /* BigMAC transmit complete service routines. */
@@ -921,7 +921,7 @@ static int bigmac_open(struct net_device
 		return ret;
 	}
 	timer_setup(&bp->bigmac_timer, bigmac_timer, 0);
-	ret = bigmac_init_hw(bp, 0);
+	ret = bigmac_init_hw(bp, false);
 	if (ret)
 		free_irq(dev->irq, bp);
 	return ret;
@@ -945,7 +945,7 @@ static void bigmac_tx_timeout(struct net
 {
 	struct bigmac *bp = netdev_priv(dev);
 
-	bigmac_init_hw(bp, 0);
+	bigmac_init_hw(bp, true);
 	netif_wake_queue(dev);
 }
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
