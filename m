Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D20327D996
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 23:03:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 80D1085692;
	Tue, 29 Sep 2020 21:03:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pi7eslJig8V3; Tue, 29 Sep 2020 21:03:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C690885700;
	Tue, 29 Sep 2020 21:03:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B83461BF989
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AF68187113
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tq0ypdHyikfz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 20:35:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0D72287118
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:45 +0000 (UTC)
Message-Id: <20200929203459.868970918@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601411743;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=AS1ZWbd5j+0/hCYbIZhY/JE+IutzJSfGLOpp28YBBig=;
 b=ygGWo2pdfir7qDPK1e2kUnQc+7bNFcaKkPRyQIwZqh0hU9fhP2LpLZZ94RsBEdcJp3dqGf
 fhjKniHfQmW1i/6Hf3s2krwxZlqsOYkmsRXSvq4OfGO0QdqqCA+9aSis60+H9KoKX2bX29
 /QOr7UAGJJE1Ah+ZS+hQ7PXlGs18DiT9vmwi8txtLrtbS75Hs5SrNqKcKRRyX5SWQNP60s
 q1XK8abAp2RPiCVHSibAn8bUG2bE+qp/KWkjhjvIoE9l7Uvz5Sh6/t28A2nTK2Pjb3J5oM
 MHgWerc1wd4gjdfk1CXutmLAYNxxX6BoP6XHcBjwq0LhsW/+8gm/0An1+Pp3IQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601411743;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=AS1ZWbd5j+0/hCYbIZhY/JE+IutzJSfGLOpp28YBBig=;
 b=GL+HPAY/AW2UtlqVOo/4HOHWBUAdf47RXLQpvs61rL0Ab5me01y9HTgbPdkzwZVtHlzMa1
 JK2bUj1GWaqnruBQ==
Date: Tue, 29 Sep 2020 22:25:13 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200929202509.673358734@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 21:03:08 +0000
Subject: [Intel-wired-lan] [patch V2 04/36] net: caif: Use
 netif_rx_any_context()
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
 Christian Benvenuti <benve@cisco.com>,
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
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Martin Habets <mhabets@solarflare.com>, Ulrich Kunitz <kune@deine-taler.de>,
 Jay Cliburn <jcliburn@gmail.com>, Paul McKenney <paulmck@kernel.org>,
 Stanislaw Gruszka <stf_xl@wp.pl>, Jouni Malinen <j@w1.fi>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>, Amitkumar Karwar <amitkarwar@gmail.com>,
 Wright Feng <wright.feng@cypress.com>, Daniel Drake <dsd@gentoo.org>,
 Pensando Drivers <drivers@pensando.io>, Kalle Valo <kvalo@codeaurora.org>,
 Franky Lin <franky.lin@broadcom.com>,
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
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

The usage of in_interrupt() in non-core code is phased out. Ideally the
information of the calling context should be passed by the callers or the
functions be split as appropriate.

cfhsi_rx_desc() and cfhsi_rx_pld() use in_interrupt() to distinguish if
they should use netif_rx() or netif_rx_ni() for receiving packets.

The attempt to consolidate the code by passing an arguemnt or by
distangling it failed due lack of knowledge about this driver and because
the call chains are hard to follow.

As a stop gap use netif_rx_any_context() which invokes the correct code path
depending on context and confines the in_interrupt() usage to core code.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

---
 drivers/net/caif/caif_hsi.c |   19 ++-----------------
 1 file changed, 2 insertions(+), 17 deletions(-)

--- a/drivers/net/caif/caif_hsi.c
+++ b/drivers/net/caif/caif_hsi.c
@@ -458,15 +458,7 @@ static int cfhsi_rx_desc(struct cfhsi_de
 		skb_reset_mac_header(skb);
 		skb->dev = cfhsi->ndev;
 
-		/*
-		 * We are in a callback handler and
-		 * unfortunately we don't know what context we're
-		 * running in.
-		 */
-		if (in_interrupt())
-			netif_rx(skb);
-		else
-			netif_rx_ni(skb);
+		netif_rx_any_context(skb);
 
 		/* Update network statistics. */
 		cfhsi->ndev->stats.rx_packets++;
@@ -587,14 +579,7 @@ static int cfhsi_rx_pld(struct cfhsi_des
 		skb_reset_mac_header(skb);
 		skb->dev = cfhsi->ndev;
 
-		/*
-		 * We're called in callback from HSI
-		 * and don't know the context we're running in.
-		 */
-		if (in_interrupt())
-			netif_rx(skb);
-		else
-			netif_rx_ni(skb);
+		netif_rx_any_context(skb);
 
 		/* Update network statistics. */
 		cfhsi->ndev->stats.rx_packets++;


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
