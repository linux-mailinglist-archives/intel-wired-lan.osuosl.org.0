Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5B727D9B6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 23:04:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 95AD92001F;
	Tue, 29 Sep 2020 21:04:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lelQTpayGj5r; Tue, 29 Sep 2020 21:04:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EB43A20367;
	Tue, 29 Sep 2020 21:03:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 54E231BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 50BA785F71
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id utnk_cbTNQea for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 20:36:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1770685F6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:21 +0000 (UTC)
Message-Id: <20200929203502.671989314@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601411779;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=EqxozfqBtipmIats65m831JGC3HHr4xn8GBnbPIM4zk=;
 b=l7O2A6/QxYmQLoa0FMbzMhQqersw27HIoh3x7/QHy78RyP03udgI3rgaeFkLJcMQz2WMvF
 ShcBAZMws+vlVzRzozY1+7TEmLsTfXgaQlJA0KJ8XhaaOtDYaYlKj9+hZMRmOfTeKJhfd/
 ZIE7ovtbqO7c6Uqyfpzkhqb8GP8xEXtDLg33xn0MgdwqG2BILZ9cpSbChPrMpXVSpA8bbe
 +1MLwcawS/j+m9gQzapOVOv0CCMyMGDb2x6oMxhV2ascqA8+KFM1onTgk6fBdJvrAV/7Ag
 4KCmGVYHXUxLVgBQyXelXbGrR5flgqEUfrMMf9FnGuvP4M/mXVVZJczPPIoBsw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601411779;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=EqxozfqBtipmIats65m831JGC3HHr4xn8GBnbPIM4zk=;
 b=bLrHMcsXENSLn4pZdy3UNKy0dODEaFHxcqN9oeYQjwQkChw/ngIbRYJ9Di30RP42chl0hh
 9dPs4v2Z0pXbn+AQ==
Date: Tue, 29 Sep 2020 22:25:41 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200929202509.673358734@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 21:03:08 +0000
Subject: [Intel-wired-lan] [patch V2 32/36] net: libertas libertas_tf:
 Remove in_interrupt() from debug macro.
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

The debug macro prints (INT) when in_interrupt() returns true. The value of
this information is dubious as it does not distinguish between the various
contexts which are covered by in_interrupt().

As the usage of in_interrupt() in drivers is phased out and the same
information can be more precisely obtained with tracing, remove the
in_interrupt() conditional from this debug printk.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Acked-by: Kalle Valo <kvalo@codeaurora.org>

---
 drivers/net/wireless/marvell/libertas/defs.h        |    3 +--
 drivers/net/wireless/marvell/libertas_tf/deb_defs.h |    3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

--- a/drivers/net/wireless/marvell/libertas/defs.h
+++ b/drivers/net/wireless/marvell/libertas/defs.h
@@ -50,8 +50,7 @@ extern unsigned int lbs_debug;
 #ifdef DEBUG
 #define LBS_DEB_LL(grp, grpnam, fmt, args...) \
 do { if ((lbs_debug & (grp)) == (grp)) \
-  printk(KERN_DEBUG DRV_NAME grpnam "%s: " fmt, \
-         in_interrupt() ? " (INT)" : "", ## args); } while (0)
+  printk(KERN_DEBUG DRV_NAME grpnam ": " fmt, ## args); } while (0)
 #else
 #define LBS_DEB_LL(grp, grpnam, fmt, args...) do {} while (0)
 #endif
--- a/drivers/net/wireless/marvell/libertas_tf/deb_defs.h
+++ b/drivers/net/wireless/marvell/libertas_tf/deb_defs.h
@@ -48,8 +48,7 @@ extern unsigned int lbtf_debug;
 #ifdef DEBUG
 #define LBTF_DEB_LL(grp, grpnam, fmt, args...) \
 do { if ((lbtf_debug & (grp)) == (grp)) \
-  printk(KERN_DEBUG DRV_NAME grpnam "%s: " fmt, \
-         in_interrupt() ? " (INT)" : "", ## args); } while (0)
+  printk(KERN_DEBUG DRV_NAME grpnam ": " fmt, ## args); } while (0)
 #else
 #define LBTF_DEB_LL(grp, grpnam, fmt, args...) do {} while (0)
 #endif


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
