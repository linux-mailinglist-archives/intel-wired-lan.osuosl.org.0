Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F24627A5F9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 05:43:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 35B7520431;
	Mon, 28 Sep 2020 03:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6dsFJqGS-A9Z; Mon, 28 Sep 2020 03:43:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8137A20515;
	Mon, 28 Sep 2020 03:42:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FADE1BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2BC808562A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ew5WqX5LPe3W for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Sep 2020 19:57:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0172D8513B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:48 +0000 (UTC)
Message-Id: <20200927194923.141612955@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601236667;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=3NVHiUJ0MODf+JF7zbRt5KG1SWBJedXgUnlvkcApoik=;
 b=aRaemDy8UAvPXFzzp7x34douMlfGFq5p7LGV6YOWX2p+DNW9dmcKZmj2Id6JS4W9M+3jW6
 vVCHALjLZzTH1CXiSStu2TbXu9GU70D7keNkzbbI9MIHVLlY6jsI+ETPfrUJDQm9IfUK2l
 RAm+62e3u/TlwncvHXnfLLoxy8QKvwu1dPwhk3Ivjutq6RfnaksAnFiRCygaWOmQhxzxvR
 ldU38PCkRp5UPyITAB82PUUHQXZI6/dKEFOFQ+lq8AdcTyLFVDeQrDxovH5GERQhV2RfkD
 2smuvY/BL98L6my/Z5qDuAWx8KyGCxRoCdYfsOAojczbQQVRQRbLS9QoLdtKOg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601236667;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=3NVHiUJ0MODf+JF7zbRt5KG1SWBJedXgUnlvkcApoik=;
 b=zzK5fOoWOhU3wmulqRZS7MkzocOYtUrGDxYubXXGENeKkk4rSZUbEmFA5H3htkgxeaxGAI
 zetSXSRvW60dzWCA==
Date: Sun, 27 Sep 2020 21:49:19 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Sep 2020 03:42:39 +0000
Subject: [Intel-wired-lan] [patch 33/35] net: rtlwifi: Remove void* casts
 related to delayed work
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

INIT_DELAYED_WORK() takes two arguments: A pointer to the delayed work and
a function reference for the callback.

The rtl code casts all function references to (void *) because the
callbacks in use are not matching the required function signature. That's
error prone and bad pratice.

Some of the callback functions are also global, but only used in a single
file.

Clean the mess up by:

  - Adding the proper arguments to the callback functions and using them in
    the container_of() constructs correctly which removes the hideous
    container_of_dwork_rtl() macro as well.

  - Removing the type cast at the initializers

  - Making the unnecessary global functions static

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Ping-Ke Shih <pkshih@realtek.com>
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: linux-wireless@vger.kernel.org
Cc: netdev@vger.kernel.org

---
 drivers/net/wireless/realtek/rtlwifi/base.c |   39 +++++++++++++---------------
 drivers/net/wireless/realtek/rtlwifi/base.h |    3 --
 drivers/net/wireless/realtek/rtlwifi/ps.c   |   19 ++++++-------
 drivers/net/wireless/realtek/rtlwifi/ps.h   |    6 ++--
 drivers/net/wireless/realtek/rtlwifi/wifi.h |    3 --
 5 files changed, 31 insertions(+), 39 deletions(-)

--- a/drivers/net/wireless/realtek/rtlwifi/base.c
+++ b/drivers/net/wireless/realtek/rtlwifi/base.c
@@ -436,6 +436,10 @@ static void _rtl_init_mac80211(struct ie
 	}
 }
 
+static void rtl_watchdog_wq_callback(struct work_struct *work);
+static void rtl_fwevt_wq_callback(struct work_struct *work);
+static void rtl_c2hcmd_wq_callback(struct work_struct *work);
+
 static void _rtl_init_deferred_work(struct ieee80211_hw *hw)
 {
 	struct rtl_priv *rtlpriv = rtl_priv(hw);
@@ -454,17 +458,14 @@ static void _rtl_init_deferred_work(stru
 	}
 
 	INIT_DELAYED_WORK(&rtlpriv->works.watchdog_wq,
-			  (void *)rtl_watchdog_wq_callback);
+			  rtl_watchdog_wq_callback);
 	INIT_DELAYED_WORK(&rtlpriv->works.ips_nic_off_wq,
-			  (void *)rtl_ips_nic_off_wq_callback);
-	INIT_DELAYED_WORK(&rtlpriv->works.ps_work,
-			  (void *)rtl_swlps_wq_callback);
+			  rtl_ips_nic_off_wq_callback);
+	INIT_DELAYED_WORK(&rtlpriv->works.ps_work, rtl_swlps_wq_callback);
 	INIT_DELAYED_WORK(&rtlpriv->works.ps_rfon_wq,
-			  (void *)rtl_swlps_rfon_wq_callback);
-	INIT_DELAYED_WORK(&rtlpriv->works.fwevt_wq,
-			  (void *)rtl_fwevt_wq_callback);
-	INIT_DELAYED_WORK(&rtlpriv->works.c2hcmd_wq,
-			  (void *)rtl_c2hcmd_wq_callback);
+			  rtl_swlps_rfon_wq_callback);
+	INIT_DELAYED_WORK(&rtlpriv->works.fwevt_wq, rtl_fwevt_wq_callback);
+	INIT_DELAYED_WORK(&rtlpriv->works.c2hcmd_wq, rtl_c2hcmd_wq_callback);
 }
 
 void rtl_deinit_deferred_work(struct ieee80211_hw *hw, bool ips_wq)
@@ -2042,11 +2043,10 @@ void rtl_collect_scan_list(struct ieee80
 }
 EXPORT_SYMBOL(rtl_collect_scan_list);
 
-void rtl_watchdog_wq_callback(void *data)
+static void rtl_watchdog_wq_callback(struct work_struct *work)
 {
-	struct rtl_works *rtlworks = container_of_dwork_rtl(data,
-							    struct rtl_works,
-							    watchdog_wq);
+	struct rtl_works *rtlworks = container_of(work, struct rtl_works,
+						  watchdog_wq.work);
 	struct ieee80211_hw *hw = rtlworks->hw;
 	struct rtl_priv *rtlpriv = rtl_priv(hw);
 	struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
@@ -2239,10 +2239,10 @@ void rtl_watch_dog_timer_callback(struct
 		  jiffies + MSECS(RTL_WATCH_DOG_TIME));
 }
 
-void rtl_fwevt_wq_callback(void *data)
+static void rtl_fwevt_wq_callback(struct work_struct *work)
 {
-	struct rtl_works *rtlworks =
-		container_of_dwork_rtl(data, struct rtl_works, fwevt_wq);
+	struct rtl_works *rtlworks = container_of(work, struct rtl_works,
+						  fwevt_wq.work);
 	struct ieee80211_hw *hw = rtlworks->hw;
 	struct rtl_priv *rtlpriv = rtl_priv(hw);
 
@@ -2368,11 +2368,10 @@ void rtl_c2hcmd_launcher(struct ieee8021
 	}
 }
 
-void rtl_c2hcmd_wq_callback(void *data)
+static void rtl_c2hcmd_wq_callback(struct work_struct *work)
 {
-	struct rtl_works *rtlworks = container_of_dwork_rtl(data,
-							    struct rtl_works,
-							    c2hcmd_wq);
+	struct rtl_works *rtlworks = container_of(work, struct rtl_works,
+						  c2hcmd_wq.work);
 	struct ieee80211_hw *hw = rtlworks->hw;
 
 	rtl_c2hcmd_launcher(hw, 1);
--- a/drivers/net/wireless/realtek/rtlwifi/base.h
+++ b/drivers/net/wireless/realtek/rtlwifi/base.h
@@ -108,9 +108,6 @@ int rtl_rx_agg_start(struct ieee80211_hw
 int rtl_rx_agg_stop(struct ieee80211_hw *hw,
 		    struct ieee80211_sta *sta, u16 tid);
 void rtl_rx_ampdu_apply(struct rtl_priv *rtlpriv);
-void rtl_watchdog_wq_callback(void *data);
-void rtl_fwevt_wq_callback(void *data);
-void rtl_c2hcmd_wq_callback(void *data);
 void rtl_c2hcmd_launcher(struct ieee80211_hw *hw, int exec);
 void rtl_c2hcmd_enqueue(struct ieee80211_hw *hw, struct sk_buff *skb);
 
--- a/drivers/net/wireless/realtek/rtlwifi/ps.c
+++ b/drivers/net/wireless/realtek/rtlwifi/ps.c
@@ -179,10 +179,10 @@ static void _rtl_ps_inactive_ps(struct i
 	ppsc->swrf_processing = false;
 }
 
-void rtl_ips_nic_off_wq_callback(void *data)
+void rtl_ips_nic_off_wq_callback(struct work_struct *work)
 {
-	struct rtl_works *rtlworks =
-	    container_of_dwork_rtl(data, struct rtl_works, ips_nic_off_wq);
+	struct rtl_works *rtlworks = container_of(work, struct rtl_works,
+						  ips_nic_off_wq.work);
 	struct ieee80211_hw *hw = rtlworks->hw;
 	struct rtl_priv *rtlpriv = rtl_priv(hw);
 	struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
@@ -562,10 +562,10 @@ void rtl_swlps_rf_awake(struct ieee80211
 	mutex_unlock(&rtlpriv->locks.lps_mutex);
 }
 
-void rtl_swlps_rfon_wq_callback(void *data)
+void rtl_swlps_rfon_wq_callback(struct work_struct *work)
 {
-	struct rtl_works *rtlworks =
-	    container_of_dwork_rtl(data, struct rtl_works, ps_rfon_wq);
+	struct rtl_works *rtlworks = container_of(work, struct rtl_works,
+						  ps_rfon_wq.work);
 	struct ieee80211_hw *hw = rtlworks->hw;
 
 	rtl_swlps_rf_awake(hw);
@@ -675,11 +675,10 @@ void rtl_lps_leave(struct ieee80211_hw *
 }
 EXPORT_SYMBOL_GPL(rtl_lps_leave);
 
-void rtl_swlps_wq_callback(void *data)
+void rtl_swlps_wq_callback(struct work_struct *work)
 {
-	struct rtl_works *rtlworks = container_of_dwork_rtl(data,
-				     struct rtl_works,
-				     ps_work);
+	struct rtl_works *rtlworks = container_of(work, struct rtl_works,
+						  ps_work.work);
 	struct ieee80211_hw *hw = rtlworks->hw;
 	struct rtl_priv *rtlpriv = rtl_priv(hw);
 	bool ps = false;
--- a/drivers/net/wireless/realtek/rtlwifi/ps.h
+++ b/drivers/net/wireless/realtek/rtlwifi/ps.h
@@ -10,15 +10,15 @@ bool rtl_ps_enable_nic(struct ieee80211_
 bool rtl_ps_disable_nic(struct ieee80211_hw *hw);
 void rtl_ips_nic_off(struct ieee80211_hw *hw);
 void rtl_ips_nic_on(struct ieee80211_hw *hw);
-void rtl_ips_nic_off_wq_callback(void *data);
+void rtl_ips_nic_off_wq_callback(struct work_struct *work);
 void rtl_lps_enter(struct ieee80211_hw *hw);
 void rtl_lps_leave(struct ieee80211_hw *hw);
 
 void rtl_lps_set_psmode(struct ieee80211_hw *hw, u8 rt_psmode);
 
 void rtl_swlps_beacon(struct ieee80211_hw *hw, void *data, unsigned int len);
-void rtl_swlps_wq_callback(void *data);
-void rtl_swlps_rfon_wq_callback(void *data);
+void rtl_swlps_wq_callback(struct work_struct *work);
+void rtl_swlps_rfon_wq_callback(struct work_struct *work);
 void rtl_swlps_rf_awake(struct ieee80211_hw *hw);
 void rtl_swlps_rf_sleep(struct ieee80211_hw *hw);
 void rtl_p2p_ps_cmd(struct ieee80211_hw *hw , u8 p2p_ps_state);
--- a/drivers/net/wireless/realtek/rtlwifi/wifi.h
+++ b/drivers/net/wireless/realtek/rtlwifi/wifi.h
@@ -2936,9 +2936,6 @@ enum bt_radio_shared {
 #define	RT_SET_PS_LEVEL(ppsc, _ps_flg)		\
 	(ppsc->cur_ps_level |= _ps_flg)
 
-#define container_of_dwork_rtl(x, y, z) \
-	container_of(to_delayed_work(x), y, z)
-
 #define FILL_OCTET_STRING(_os, _octet, _len)	\
 		(_os).octet = (u8 *)(_octet);		\
 		(_os).length = (_len);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
