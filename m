Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E9627A5E4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 05:42:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8AD8E8560B;
	Mon, 28 Sep 2020 03:42:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1M6cFkGRJRGA; Mon, 28 Sep 2020 03:42:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 23EFD854AF;
	Mon, 28 Sep 2020 03:42:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6E0561BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6A0828707A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IdtvfOruwjcX for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Sep 2020 19:57:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 911E087068
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:37 +0000 (UTC)
Message-Id: <20200927194922.245750969@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601236655;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=Fz/Y8tdPmcPxNZ39xs6OXP7t7GmeJEA09IH+iG5eqPY=;
 b=tqeU52EO2XBZK/ddxUU5a112arkeHUUJxxE9PSVyDXEDKqBLkWy/SqNPHHwWYyb3sGz1JZ
 lGkGMNhtwBDXIrEFaClRwhU7/O0vbRat1U/HPln4Q+oDTdQQBOI3q84qp9pf16Ab5g85pJ
 QlJCaUVOiCLDkYSh2yx2xZN5Noqozpd/Li1JhhqRUGYrArnUjtd0jKAyZYEFp/ajaRPpJD
 eyOmp0cGo2JKISaMxw/wevnANPyTs9dg/RX9PVhj7eacVPKFmZJwmM2GFlq7wE8TYP6JWV
 eiML7z2T/jG7bgMjXY9Xv+i/fNSvkYhHG+xKystktSgzm9NEOxUntE/v+kEGnQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601236655;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=Fz/Y8tdPmcPxNZ39xs6OXP7t7GmeJEA09IH+iG5eqPY=;
 b=wKmY7sgdpiakGLwk3efR391mD4s4Ls4MU5X6793GEBWur5GfvH8AeOH68vsN1rg1N5GERz
 9mCHkioqeemMDuAw==
Date: Sun, 27 Sep 2020 21:49:10 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Sep 2020 03:42:39 +0000
Subject: [Intel-wired-lan] [patch 24/35] net: brcmfmac: Replace
 in_interrupt()
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
 Jay Cliburn <jcliburn@gmail.com>, Govindarajulu Varadarajan <_govind@gmx.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Edward Cree <ecree@solarflare.com>, libertas-dev@lists.infradead.org,
 brcm80211-dev-list@cypress.com, Stanislaw Gruszka <stf_xl@wp.pl>,
 Ping-Ke Shih <pkshih@realtek.com>, Johannes Berg <johannes.berg@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>, Martin Habets <mhabets@solarflare.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Ulrich Kunitz <kune@deine-taler.de>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Paul McKenney <paulmck@kernel.org>, Intel Linux Wireless <linuxwifi@intel.com>,
 Jouni Malinen <j@w1.fi>, Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Wright Feng <wright.feng@cypress.com>,
 Daniel Drake <dsd@gentoo.org>, Pensando Drivers <drivers@pensando.io>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>,
 brcm80211-dev-list.pdl@broadcom.com,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Xinming Hu <huxinming820@gmail.com>, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org,
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

brcmf_sdio_isr() is using in_interrupt() to distinguish if it is called
from a interrupt service routine or from a worker thread.

Passing such information from the calling context is preferred and
requested by Linus, so add an argument `in_isr' to brcmf_sdio_isr() and let
the callers pass the information about the calling context.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Arend van Spriel <arend.vanspriel@broadcom.com>
Cc: Franky Lin <franky.lin@broadcom.com>
Cc: Hante Meuleman <hante.meuleman@broadcom.com>
Cc: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
Cc: Wright Feng <wright.feng@cypress.com>
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: linux-wireless@vger.kernel.org
Cc: brcm80211-dev-list.pdl@broadcom.com
Cc: brcm80211-dev-list@cypress.com
Cc: netdev@vger.kernel.org
---
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c |    4 ++--
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c   |    4 ++--
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.h   |    2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
@@ -73,7 +73,7 @@ static irqreturn_t brcmf_sdiod_oob_irqha
 		sdiodev->irq_en = false;
 	}
 
-	brcmf_sdio_isr(sdiodev->bus);
+	brcmf_sdio_isr(sdiodev->bus, true);
 
 	return IRQ_HANDLED;
 }
@@ -85,7 +85,7 @@ static void brcmf_sdiod_ib_irqhandler(st
 
 	brcmf_dbg(INTR, "IB intr triggered\n");
 
-	brcmf_sdio_isr(sdiodev->bus);
+	brcmf_sdio_isr(sdiodev->bus, false);
 }
 
 /* dummy handler for SDIO function 2 interrupt */
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -3625,7 +3625,7 @@ void brcmf_sdio_trigger_dpc(struct brcmf
 	}
 }
 
-void brcmf_sdio_isr(struct brcmf_sdio *bus)
+void brcmf_sdio_isr(struct brcmf_sdio *bus, bool in_isr)
 {
 	brcmf_dbg(TRACE, "Enter\n");
 
@@ -3636,7 +3636,7 @@ void brcmf_sdio_isr(struct brcmf_sdio *b
 
 	/* Count the interrupt call */
 	bus->sdcnt.intrcount++;
-	if (in_interrupt())
+	if (in_isr)
 		atomic_set(&bus->ipend, 1);
 	else
 		if (brcmf_sdio_intr_rstatus(bus)) {
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.h
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.h
@@ -372,7 +372,7 @@ int brcmf_sdiod_remove(struct brcmf_sdio
 
 struct brcmf_sdio *brcmf_sdio_probe(struct brcmf_sdio_dev *sdiodev);
 void brcmf_sdio_remove(struct brcmf_sdio *bus);
-void brcmf_sdio_isr(struct brcmf_sdio *bus);
+void brcmf_sdio_isr(struct brcmf_sdio *bus, bool in_isr);
 
 void brcmf_sdio_wd_timer(struct brcmf_sdio *bus, bool active);
 void brcmf_sdio_wowl_config(struct device *dev, bool enabled);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
