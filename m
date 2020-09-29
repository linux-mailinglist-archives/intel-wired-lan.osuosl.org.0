Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5AE27D9AD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 23:03:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A20684789;
	Tue, 29 Sep 2020 21:03:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6QwMoVF7Haht; Tue, 29 Sep 2020 21:03:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A401184DCD;
	Tue, 29 Sep 2020 21:03:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9FC411BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9B4A485F6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s6KU9dTyUZpX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 20:36:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B18D285F71
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:36:15 +0000 (UTC)
Message-Id: <20200929203502.290194412@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601411774;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=7Y3JxN63Q/PAehxAHjlctr5zLB/0T1XlCp5sBBJ6ers=;
 b=oiKP0Xh0hgA+5zrGUYdekn9rQzAC4LdhldgalfF+GD+80VdiZXZKs0d75kx8FgkG4UHHVJ
 o3rqlCb4K9+JNHIsFIL5WLeFB7ty070G/8LtX60ximHuITgnlH9wpX7tsgz3tkwi44KWwb
 2HCpK0W6133MFuLdi0x3bknXOXCQKj4vV33vpVcw74G548uIlqDiVhr//B8e1Y70vEooRz
 FCokcITKwTHomIJfNuDvGD9UcFM++gfJyvxS7AqaLGGogozINtZ+NSuE0Yxm2n6PMhWcpI
 3xl50c76FhcB18vk4+R5AN/njwD4JesFpZCbRIwbexbhX5MIjp1gUXFbryQa9g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601411774;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=7Y3JxN63Q/PAehxAHjlctr5zLB/0T1XlCp5sBBJ6ers=;
 b=Cv7GOQA6CjaeBoQZgaP2ugJNvaDW0z8PoRHJHLEmmHHtU9PIoDOnTj0hyjRawikbMf+aw1
 9TZvSn3S/yPlakBw==
Date: Tue, 29 Sep 2020 22:25:37 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200929202509.673358734@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 21:03:08 +0000
Subject: [Intel-wired-lan] [patch V2 28/36] net: ipw2x00, iwlegacy,
 iwlwifi: Remove in_interrupt() from debug macros
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

The usage of in_interrupt() in non-core code is phased out.

The debugging macros in these drivers use in_interrupt() to print 'I' or
'U' depending on the return value of in_interrupt(). While 'U' is confusing
at best and 'I' is not really describing the actual context (hard interupt,
soft interrupt, bottom half disabled section) these debug macros originate
from the pre ftrace kernel era and their value today is questionable. They
probably should be removed completely.

The macros weere added initially for ipw2100 and then spreaded when the
driver was forked.

Remove the in_interrupt() usage at least..

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Acked-by: Kalle Valo <kvalo@codeaurora.org>

---
 drivers/net/wireless/intel/ipw2x00/ipw2100.c   |    3 +--
 drivers/net/wireless/intel/ipw2x00/ipw2200.h   |    6 ++----
 drivers/net/wireless/intel/ipw2x00/libipw.h    |    3 +--
 drivers/net/wireless/intel/iwlegacy/common.h   |    4 ++--
 drivers/net/wireless/intel/iwlwifi/iwl-debug.c |    3 +--
 5 files changed, 7 insertions(+), 12 deletions(-)

--- a/drivers/net/wireless/intel/ipw2x00/ipw2100.c
+++ b/drivers/net/wireless/intel/ipw2x00/ipw2100.c
@@ -201,8 +201,7 @@ static u32 ipw2100_debug_level = IPW_DL_
 #define IPW_DEBUG(level, message...) \
 do { \
 	if (ipw2100_debug_level & (level)) { \
-		printk(KERN_DEBUG "ipw2100: %c %s ", \
-                       in_interrupt() ? 'I' : 'U',  __func__); \
+		printk(KERN_DEBUG "ipw2100: %s ", __func__); \
 		printk(message); \
 	} \
 } while (0)
--- a/drivers/net/wireless/intel/ipw2x00/ipw2200.h
+++ b/drivers/net/wireless/intel/ipw2x00/ipw2200.h
@@ -1382,14 +1382,12 @@ BIT_ARG16(x)
 
 #define IPW_DEBUG(level, fmt, args...) \
 do { if (ipw_debug_level & (level)) \
-  printk(KERN_DEBUG DRV_NAME": %c %s " fmt, \
-         in_interrupt() ? 'I' : 'U', __func__ , ## args); } while (0)
+  printk(KERN_DEBUG DRV_NAME": %s " fmt, __func__ , ## args); } while (0)
 
 #ifdef CONFIG_IPW2200_DEBUG
 #define IPW_LL_DEBUG(level, fmt, args...) \
 do { if (ipw_debug_level & (level)) \
-  printk(KERN_DEBUG DRV_NAME": %c %s " fmt, \
-         in_interrupt() ? 'I' : 'U', __func__ , ## args); } while (0)
+  printk(KERN_DEBUG DRV_NAME": %s " fmt, __func__ , ## args); } while (0)
 #else
 #define IPW_LL_DEBUG(level, fmt, args...) do {} while (0)
 #endif				/* CONFIG_IPW2200_DEBUG */
--- a/drivers/net/wireless/intel/ipw2x00/libipw.h
+++ b/drivers/net/wireless/intel/ipw2x00/libipw.h
@@ -60,8 +60,7 @@
 extern u32 libipw_debug_level;
 #define LIBIPW_DEBUG(level, fmt, args...) \
 do { if (libipw_debug_level & (level)) \
-  printk(KERN_DEBUG "libipw: %c %s " fmt, \
-         in_interrupt() ? 'I' : 'U', __func__ , ## args); } while (0)
+  printk(KERN_DEBUG "libipw: %s " fmt, __func__ , ## args); } while (0)
 #else
 #define LIBIPW_DEBUG(level, fmt, args...) do {} while (0)
 #endif				/* CONFIG_LIBIPW_DEBUG */
--- a/drivers/net/wireless/intel/iwlegacy/common.h
+++ b/drivers/net/wireless/intel/iwlegacy/common.h
@@ -2925,8 +2925,8 @@ do {									\
 #define IL_DBG(level, fmt, args...)					\
 do {									\
 	if (il_get_debug_level(il) & level)				\
-		dev_err(&il->hw->wiphy->dev, "%c %s " fmt,		\
-			in_interrupt() ? 'I' : 'U', __func__ , ##args); \
+		dev_err(&il->hw->wiphy->dev, "%s " fmt, __func__,	\
+			 ##args);					\
 } while (0)
 
 #define il_print_hex_dump(il, level, p, len)				\
--- a/drivers/net/wireless/intel/iwlwifi/iwl-debug.c
+++ b/drivers/net/wireless/intel/iwlwifi/iwl-debug.c
@@ -121,8 +121,7 @@ void __iwl_dbg(struct device *dev,
 #ifdef CONFIG_IWLWIFI_DEBUG
 	if (iwl_have_debug_level(level) &&
 	    (!limit || net_ratelimit()))
-		dev_printk(KERN_DEBUG, dev, "%c %s %pV",
-			   in_interrupt() ? 'I' : 'U', function, &vaf);
+		dev_printk(KERN_DEBUG, dev, "%s %pV", function, &vaf);
 #endif
 	trace_iwlwifi_dbg(level, in_interrupt(), function, &vaf);
 	va_end(args);


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
