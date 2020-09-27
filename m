Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9582827A5F8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 05:43:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3EACF204A8;
	Mon, 28 Sep 2020 03:43:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TiNll0D1Am8X; Mon, 28 Sep 2020 03:43:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DACC42051A;
	Mon, 28 Sep 2020 03:42:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E29D91BF95E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DE6C5870BD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cygdm0m6hzLM for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Sep 2020 19:57:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6F47B87068
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:50 +0000 (UTC)
Message-Id: <20200927194923.249291290@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601236668;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=vdFvMNzU/x4SViOrfq3OSncwJYM+GQFlzT+TSG/Jurw=;
 b=d1rdgmwnvlZUOMpyU4UwQtQF5yM+v2oLv1PhrnAnkHxJQzIDZgi08y5xJkIOTSE/HAzJEH
 m73NHuf5Y89Z2k6h38GqvMhbSuHXcsYWEhQFMlCubYP/tF8Jn7+x0BWkiqvq84BZz2au5+
 jeOQRZ+SbMvIfd0bYm/vRXEfCj8GFf9rdkD2NTEk9issoJjNBodZCfdyRGpCwXRDJ4t3Vj
 NFI1CZVkn2YaxWM0AceskQU+v5Y6CKEVl7I9HSw0GC9gTC+iEMk2EuYdRrcFbkjWF/toyh
 50r7CaIT6BWY13Wv5j7G+heQ0084VyqmX0HOzN5sSyE1/j5ABUNMQkw1MxEM2w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601236668;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=vdFvMNzU/x4SViOrfq3OSncwJYM+GQFlzT+TSG/Jurw=;
 b=+Iasu9O3lwwW7SROFddv+F7Dm0tiCLGVcfnBPStOmcOCHkGfZ9zKVkGE4wbbUA3CekIMz/
 b5ri9EnSdYCQtJBQ==
Date: Sun, 27 Sep 2020 21:49:20 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Sep 2020 03:42:39 +0000
Subject: [Intel-wired-lan] [patch 34/35] net: rtlwifi: Remove in_interrupt()
 from debug macro
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

The usage of in_interrupt() in drivers in is phased out.

rtlwifi uses in_interrupt() in the RT_TRACE() debug macro which is
sprinkled all over the driver. RT_TRACE() is almost identical to RTPRINT()
which another hideous debug printk wrapper. The only difference is the
printout of in_interrupt().

The decoding of in_interrupt() as hexvalue is non-trivial and aside of
being phased out for driver use the return value is just by chance the
masked preempt count value and not a boolean.

These home brewn printk debug aids are tedious to work with and provide
only minimal context.  They should be replaced by trace_printk() or a debug
tracepoint which automatically records all context information.

To make progress on the in_interrupt() cleanup, make RT_TRACE() use the
RTPRINT() debug function and remove _rtl_dbg_trace().

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Ping-Ke Shih <pkshih@realtek.com>
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: linux-wireless@vger.kernel.org
Cc: netdev@vger.kernel.org

---
 drivers/net/wireless/realtek/rtlwifi/debug.c |   20 --------------------
 drivers/net/wireless/realtek/rtlwifi/debug.h |    6 +-----
 2 files changed, 1 insertion(+), 25 deletions(-)

--- a/drivers/net/wireless/realtek/rtlwifi/debug.c
+++ b/drivers/net/wireless/realtek/rtlwifi/debug.c
@@ -8,26 +8,6 @@
 #include <linux/vmalloc.h>
 
 #ifdef CONFIG_RTLWIFI_DEBUG
-void _rtl_dbg_trace(struct rtl_priv *rtlpriv, u64 comp, int level,
-		    const char *fmt, ...)
-{
-	if (unlikely((comp & rtlpriv->cfg->mod_params->debug_mask) &&
-		     level <= rtlpriv->cfg->mod_params->debug_level)) {
-		struct va_format vaf;
-		va_list args;
-
-		va_start(args, fmt);
-
-		vaf.fmt = fmt;
-		vaf.va = &args;
-
-		pr_info(":<%lx> %pV", in_interrupt(), &vaf);
-
-		va_end(args);
-	}
-}
-EXPORT_SYMBOL_GPL(_rtl_dbg_trace);
-
 void _rtl_dbg_print(struct rtl_priv *rtlpriv, u64 comp, int level,
 		    const char *fmt, ...)
 {
--- a/drivers/net/wireless/realtek/rtlwifi/debug.h
+++ b/drivers/net/wireless/realtek/rtlwifi/debug.h
@@ -149,10 +149,6 @@ enum dbgp_flag_e {
 struct rtl_priv;
 
 __printf(4, 5)
-void _rtl_dbg_trace(struct rtl_priv *rtlpriv, u64 comp, int level,
-		    const char *fmt, ...);
-
-__printf(4, 5)
 void _rtl_dbg_print(struct rtl_priv *rtlpriv, u64 comp, int level,
 		    const char *fmt, ...);
 
@@ -161,7 +157,7 @@ void _rtl_dbg_print_data(struct rtl_priv
 			 const void *hexdata, int hexdatalen);
 
 #define RT_TRACE(rtlpriv, comp, level, fmt, ...)			\
-	_rtl_dbg_trace(rtlpriv, comp, level,				\
+	_rtl_dbg_print(rtlpriv, comp, level,				\
 		       fmt, ##__VA_ARGS__)
 
 #define RTPRINT(rtlpriv, dbgtype, dbgflag, fmt, ...)			\

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
