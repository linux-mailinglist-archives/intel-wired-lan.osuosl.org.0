Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D25A27A5EA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 05:42:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C504786165;
	Mon, 28 Sep 2020 03:42:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QDz3xZRL80C9; Mon, 28 Sep 2020 03:42:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9C05586235;
	Mon, 28 Sep 2020 03:42:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B2F191BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AC1E5870BD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qtmTRYyBHYbR for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Sep 2020 19:57:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6A20687068
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:46 +0000 (UTC)
Message-Id: <20200927194922.938263514@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601236664;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=+EKrA6HqGMF4faSCoLrAtx6KX3hw/q02kTTYVH77/+8=;
 b=DgFWCTRmyeEjV0+OEYDVbCkMlQbEJFzwD69vMLAlqAaimPSm5lMXaR3fbldN0wOl0BqeFc
 zQrD8mqr+OmCWZYyLm7RLr56R6Uisc43UcpkNxfH9uStf4GT/Q/fOOinHmuT8RHGl0jL6Z
 wUdLMut+XHwHPnR1ey1uae/dXTbri3XVyYTJ74NBWHyM13bI0ohdjaz6zEB+4yolDn+ZDF
 0VIc/HnK6kTk3f3URI1GJAzoEEojDjpAtLIW88F5cK7YtFr4+asZd929ZyG9pTudMogrbw
 7fLYoNxT5ATayz/0EYF6tk7HKCZLrxinEoIEgQOi3akiNU10TFB4xtu5xojEMQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601236664;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=+EKrA6HqGMF4faSCoLrAtx6KX3hw/q02kTTYVH77/+8=;
 b=jsZYaXiRN4xRZ5BWns5HUuV12Wy5QkGKco5gufMggE6/zBZBdgkjf30s/8iphwg89FOg4S
 +jX7dKxRVl7/tZBw==
Date: Sun, 27 Sep 2020 21:49:17 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Sep 2020 03:42:39 +0000
Subject: [Intel-wired-lan] [patch 31/35] net: libertas libertas_tf: Remove
 in_interrupt() from debug macro.
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-usb@vger.kernel.org,
 linux-doc@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Chris Snook <chris.snook@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Edward Cree <ecree@solarflare.com>, brcm80211-dev-list@cypress.com,
 brcm80211-dev-list.pdl@broadcom.com, Ping-Ke Shih <pkshih@realtek.com>,
 Johannes Berg <johannes.berg@intel.com>, libertas-dev@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Martin Habets <mhabets@solarflare.com>, Ulrich Kunitz <kune@deine-taler.de>,
 Jay Cliburn <jcliburn@gmail.com>, Paul McKenney <paulmck@kernel.org>,
 Stanislaw Gruszka <stf_xl@wp.pl>, Jouni Malinen <j@w1.fi>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Wright Feng <wright.feng@cypress.com>,
 Daniel Drake <dsd@gentoo.org>, Pensando Drivers <drivers@pensando.io>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Xinming Hu <huxinming820@gmail.com>,
 netdev@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
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

The debug macro prints (INT) when in_interrupt() returns true. The value of
this information is dubious as it does not distinguish between the various
contexts which are covered by in_interrupt().

As the usage of in_interrupt() in drivers is phased out and the same
information can be more precisely obtained with tracing, remove the
in_interrupt() conditional from this debug printk.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: libertas-dev@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
Cc: netdev@vger.kernel.org

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
