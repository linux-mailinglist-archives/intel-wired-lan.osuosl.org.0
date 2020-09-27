Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8118827A5DC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 05:42:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3394A84D49;
	Mon, 28 Sep 2020 03:42:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IMh30RXZ2e5Q; Mon, 28 Sep 2020 03:42:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B6A528618E;
	Mon, 28 Sep 2020 03:42:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E5F811BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DEDC885BD3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tjWQoy+egSmk for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Sep 2020 19:57:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CE86785D57
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:15 +0000 (UTC)
Message-Id: <20200927194920.529620472@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601236634;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=EDKBcMIgD/09FuiGSNYHhCF3jDv+nrJ0d2CEBofmw7g=;
 b=snXKYTawQUFS88tiTEow0tXsxP1tLJM9xHT4/iSNgIAGuodQmc9Qp0KQGNZNqlz9QV4M5I
 Rwhti+lRXO9IB8T3AG1+oqCZy8zEWXsIqGQUGjndLp2o/23CsbScRTMQxV1S+kh8QLeOFq
 GhrN/1KMvDQQJRY8cCanEj7G/YgGLxhd8+CicY7yErSGgVrutMDhvDA+2Le5tZEPNrhF92
 HNLfR/nf1tFFd6gkjfLx4iaWWvrDbiiNIpQNQydVKD+szuJ1u60oQehMuNWOmSJiLRtlOZ
 NjsUY5WOXonQTXiJuGxEgPxLSh81hYb/Q/qsEkT8VlOOAQCtaHM8RWF7F0a1IA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601236634;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=EDKBcMIgD/09FuiGSNYHhCF3jDv+nrJ0d2CEBofmw7g=;
 b=dCG7TC8ALt/lqqr+lqrqo16u3cIrM1QEOqBoykQQB7Oqrb7kPbGrYa/ghwEhg4k/GILAkS
 r43l5jfMGGMm/jDA==
Date: Sun, 27 Sep 2020 21:48:53 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Sep 2020 03:42:39 +0000
Subject: [Intel-wired-lan] [patch 07/35] net: cxbg4: Remove pointless
 in_interrupt() check
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

From: Thomas Gleixner <tglx@linutronix.de>

t4_sge_stop() is only ever called from task context and the in_interrupt()
check is presumably a leftover from copying t3_sge_stop().

Aside of in_interrupt() being deprecated because it's not providing what it
claims to provide, this check would paper over illegitimate callers.

The functions invoked from t4_sge_stop() contain already warnings to catch
invocations from invalid contexts.

Remove it.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Vishal Kulkarni <vishal@chelsio.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org


---
 drivers/net/ethernet/chelsio/cxgb4/sge.c |    3 ---
 1 file changed, 3 deletions(-)

--- a/drivers/net/ethernet/chelsio/cxgb4/sge.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/sge.c
@@ -4872,9 +4872,6 @@ void t4_sge_stop(struct adapter *adap)
 	int i;
 	struct sge *s = &adap->sge;
 
-	if (in_interrupt())  /* actions below require waiting */
-		return;
-
 	if (s->rx_timer.function)
 		del_timer_sync(&s->rx_timer);
 	if (s->tx_timer.function)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
