Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B8927A5E9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 05:42:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A4D28704E;
	Mon, 28 Sep 2020 03:42:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jQxz+2pJZqHD; Mon, 28 Sep 2020 03:42:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5484F87046;
	Mon, 28 Sep 2020 03:42:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E01B71BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DAECA8513B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vsza5IuWztql for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Sep 2020 19:57:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4DBFB8508E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Sep 2020 19:57:51 +0000 (UTC)
Message-Id: <20200927194923.358900104@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601236669;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=ksaGPqhXSZGY4WnWtBR0byDM8dQ34v3PX/0X3fUvpQM=;
 b=aHzJrPYU7FfUq814LOC20bsDMxiPF9kl5hv062qPTqnIj6StKd0bSDSLccSvRmXIASHhqf
 aZR5++WuDmDCfI0fjwrlc0bANro81Ge/6/SkWNWmZ7CknohO75MPmk9RUBx5Zs8csm8eJT
 +Vmk+qsZAPDw/MNaszn3bnwgnoPnRmygxJEr9cPQJPSgLgnjJpMVakzJ8DEfBCO7HU43Im
 Ooc/O8v/j4db+A3q92vkqFI0aR/1S7RwPqw3jHr20cFbFMPPTVPePJFAwB/2G0nzplV+hz
 gvCImYxktX+py8y+YnjKDpKSVo5Z89DdMSDLczbEle3un0h6LIMG4Nn2GX9S8g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601236669;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=ksaGPqhXSZGY4WnWtBR0byDM8dQ34v3PX/0X3fUvpQM=;
 b=mU8Ag4UbwIj964lLMObE7JECFn2QEeMPOgKxS1KjDCTPv+aDXN3i+2v1K3ZjxYIiCh4FfZ
 AJv7/jn/6+S5qpBQ==
Date: Sun, 27 Sep 2020 21:49:21 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Sep 2020 03:42:39 +0000
Subject: [Intel-wired-lan] [patch 35/35] net: rtlwifi: Replace
 in_interrupt() for context detection
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

rtl_lps_enter() and rtl_lps_leave() are using in_interrupt() to detect
whether it is safe to acquire a mutex or if it is required to defer to a
workqueue.

The usage of in_interrupt() in drivers is phased out and Linus clearly
requested that code which changes behaviour depending on context should
either be seperated or the context be conveyed in an argument passed by the
caller, which usually knows the context.

in_interrupt() also is only partially correct because it fails to chose the
correct code path when just preemption or interrupts are disabled.

Add an argument 'may_block' to both functions and adjust the callers to
pass the context information.

The following call chains were analyzed to be safe to block:

    rtl_watchdog_wq_callback()
      rlf_lps_leave/enter()

    rtl_op_suspend()
      rtl_lps_leave()

    rtl_op_bss_info_changed()
      rtl_lps_leave()

    rtl_op_sw_scan_start()
      rtl_lps_leave()

The following call chains were analyzed to be unsafe to block:

    _rtl_pci_interrupt()
      _rtl_pci_rx_interrupt()
	  rtl_lps_leave()

    _rtl_pci_interrupt()
      _rtl_pci_rx_interrupt()
        rtl_is_special_data()
	  rtl_lps_leave()

    _rtl_pci_interrupt()
      _rtl_pci_rx_interrupt()
        rtl_is_special_data()
	  setup_special_tx()
	    rtl_lps_leave()

    _rtl_pci_interrupt()
      _rtl_pci_tx_isr
        rtl_lps_leave()

      halbtc_leave_lps()
        rtl_lps_leave()

This leaves four callers of rtl_lps_enter/leave() where the analyzis
stopped dead in the maze of several nested pointer based callchains and
lack of rtlwifi hardware to debug this via tracing:

     halbtc_leave_lps(), halbtc_enter_lps(), halbtc_normal_lps(),
     halbtc_pre_normal_lps()

These four have been cautionally marked to be unable to block which is the
safe option, but the rtwifi wizards should be able to clarify that.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Ping-Ke Shih <pkshih@realtek.com>
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: linux-wireless@vger.kernel.org
Cc: netdev@vger.kernel.org

---
 drivers/net/wireless/realtek/rtlwifi/base.c                   |    8 +++---
 drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c |   12 ++++++----
 drivers/net/wireless/realtek/rtlwifi/core.c                   |    6 ++---
 drivers/net/wireless/realtek/rtlwifi/pci.c                    |    4 +--
 drivers/net/wireless/realtek/rtlwifi/ps.c                     |    8 +++---
 drivers/net/wireless/realtek/rtlwifi/ps.h                     |    4 +--
 6 files changed, 23 insertions(+), 19 deletions(-)

--- a/drivers/net/wireless/realtek/rtlwifi/base.c
+++ b/drivers/net/wireless/realtek/rtlwifi/base.c
@@ -1456,7 +1456,7 @@ static void setup_special_tx(struct rtl_
 	if (rtlpriv->cfg->ops->get_btc_status())
 		rtlpriv->btcoexist.btc_ops->btc_special_packet_notify(
 					rtlpriv, type);
-	rtl_lps_leave(hw);
+	rtl_lps_leave(hw, false);
 	ppsc->last_delaylps_stamp_jiffies = jiffies;
 }
 
@@ -1546,7 +1546,7 @@ u8 rtl_is_special_data(struct ieee80211_
 
 		if (is_tx) {
 			rtlpriv->ra.is_special_data = true;
-			rtl_lps_leave(hw);
+			rtl_lps_leave(hw, false);
 			ppsc->last_delaylps_stamp_jiffies = jiffies;
 
 			setup_special_tx(rtlpriv, ppsc, PACKET_EAPOL);
@@ -2147,9 +2147,9 @@ static void rtl_watchdog_wq_callback(str
 		if (rtlpriv->link_info.num_rx_inperiod +
 		      rtlpriv->link_info.num_tx_inperiod > 8 ||
 		    rtlpriv->link_info.num_rx_inperiod > 2)
-			rtl_lps_leave(hw);
+			rtl_lps_leave(hw, true);
 		else
-			rtl_lps_enter(hw);
+			rtl_lps_enter(hw, true);
 
 label_lps_done:
 		;
--- a/drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c
+++ b/drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c
@@ -285,7 +285,8 @@ static void halbtc_leave_lps(struct btc_
 
 	btcoexist->bt_info.bt_ctrl_lps = true;
 	btcoexist->bt_info.bt_lps_on = false;
-	rtl_lps_leave(rtlpriv->mac80211.hw);
+	/* FIXME: Context is unclear. Is it allowed to block? */
+	rtl_lps_leave(rtlpriv->mac80211.hw, false);
 }
 
 static void halbtc_enter_lps(struct btc_coexist *btcoexist)
@@ -306,7 +307,8 @@ static void halbtc_enter_lps(struct btc_
 
 	btcoexist->bt_info.bt_ctrl_lps = true;
 	btcoexist->bt_info.bt_lps_on = true;
-	rtl_lps_enter(rtlpriv->mac80211.hw);
+	/* FIXME: Context is unclear. Is it allowed to block? */
+	rtl_lps_enter(rtlpriv->mac80211.hw, false);
 }
 
 static void halbtc_normal_lps(struct btc_coexist *btcoexist)
@@ -317,7 +319,8 @@ static void halbtc_normal_lps(struct btc
 
 	if (btcoexist->bt_info.bt_ctrl_lps) {
 		btcoexist->bt_info.bt_lps_on = false;
-		rtl_lps_leave(rtlpriv->mac80211.hw);
+		/* FIXME: Context is unclear. Is it allowed to block? */
+		rtl_lps_leave(rtlpriv->mac80211.hw, false);
 		btcoexist->bt_info.bt_ctrl_lps = false;
 	}
 }
@@ -328,7 +331,8 @@ static void halbtc_pre_normal_lps(struct
 
 	if (btcoexist->bt_info.bt_ctrl_lps) {
 		btcoexist->bt_info.bt_lps_on = false;
-		rtl_lps_leave(rtlpriv->mac80211.hw);
+		/* FIXME: Context is unclear. Is it allowed to block? */
+		rtl_lps_leave(rtlpriv->mac80211.hw, false);
 	}
 }
 
--- a/drivers/net/wireless/realtek/rtlwifi/core.c
+++ b/drivers/net/wireless/realtek/rtlwifi/core.c
@@ -544,7 +544,7 @@ static int rtl_op_suspend(struct ieee802
 	rtlhal->driver_is_goingto_unload = true;
 	rtlhal->enter_pnp_sleep = true;
 
-	rtl_lps_leave(hw);
+	rtl_lps_leave(hw, true);
 	rtl_op_stop(hw);
 	device_set_wakeup_enable(wiphy_dev(hw->wiphy), true);
 	return 0;
@@ -1151,7 +1151,7 @@ static void rtl_op_bss_info_changed(stru
 			mstatus = RT_MEDIA_DISCONNECT;
 
 			if (mac->link_state == MAC80211_LINKED)
-				rtl_lps_leave(hw);
+				rtl_lps_leave(hw, true);
 			if (ppsc->p2p_ps_info.p2p_ps_mode > P2P_PS_NONE)
 				rtl_p2p_ps_cmd(hw, P2P_PS_DISABLE);
 			mac->link_state = MAC80211_NOLINK;
@@ -1448,7 +1448,7 @@ static void rtl_op_sw_scan_start(struct
 	}
 
 	if (mac->link_state == MAC80211_LINKED) {
-		rtl_lps_leave(hw);
+		rtl_lps_leave(hw, true);
 		mac->link_state = MAC80211_LINKED_SCANNING;
 	} else {
 		rtl_ips_nic_on(hw);
--- a/drivers/net/wireless/realtek/rtlwifi/pci.c
+++ b/drivers/net/wireless/realtek/rtlwifi/pci.c
@@ -622,7 +622,7 @@ static void _rtl_pci_tx_isr(struct ieee8
 	if (((rtlpriv->link_info.num_rx_inperiod +
 	      rtlpriv->link_info.num_tx_inperiod) > 8) ||
 	      rtlpriv->link_info.num_rx_inperiod > 2)
-		rtl_lps_leave(hw);
+		rtl_lps_leave(hw, false);
 }
 
 static int _rtl_pci_init_one_rxdesc(struct ieee80211_hw *hw,
@@ -875,7 +875,7 @@ static void _rtl_pci_rx_interrupt(struct
 		if (((rtlpriv->link_info.num_rx_inperiod +
 		      rtlpriv->link_info.num_tx_inperiod) > 8) ||
 		      rtlpriv->link_info.num_rx_inperiod > 2)
-			rtl_lps_leave(hw);
+			rtl_lps_leave(hw, false);
 		skb = new_skb;
 no_new:
 		if (rtlpriv->use_new_trx_flow) {
--- a/drivers/net/wireless/realtek/rtlwifi/ps.c
+++ b/drivers/net/wireless/realtek/rtlwifi/ps.c
@@ -653,22 +653,22 @@ void rtl_lps_change_work_callback(struct
 }
 EXPORT_SYMBOL_GPL(rtl_lps_change_work_callback);
 
-void rtl_lps_enter(struct ieee80211_hw *hw)
+void rtl_lps_enter(struct ieee80211_hw *hw, bool may_block)
 {
 	struct rtl_priv *rtlpriv = rtl_priv(hw);
 
-	if (!in_interrupt())
+	if (may_block)
 		return rtl_lps_enter_core(hw);
 	rtlpriv->enter_ps = true;
 	schedule_work(&rtlpriv->works.lps_change_work);
 }
 EXPORT_SYMBOL_GPL(rtl_lps_enter);
 
-void rtl_lps_leave(struct ieee80211_hw *hw)
+void rtl_lps_leave(struct ieee80211_hw *hw, bool may_block)
 {
 	struct rtl_priv *rtlpriv = rtl_priv(hw);
 
-	if (!in_interrupt())
+	if (may_block)
 		return rtl_lps_leave_core(hw);
 	rtlpriv->enter_ps = false;
 	schedule_work(&rtlpriv->works.lps_change_work);
--- a/drivers/net/wireless/realtek/rtlwifi/ps.h
+++ b/drivers/net/wireless/realtek/rtlwifi/ps.h
@@ -11,8 +11,8 @@ bool rtl_ps_disable_nic(struct ieee80211
 void rtl_ips_nic_off(struct ieee80211_hw *hw);
 void rtl_ips_nic_on(struct ieee80211_hw *hw);
 void rtl_ips_nic_off_wq_callback(struct work_struct *work);
-void rtl_lps_enter(struct ieee80211_hw *hw);
-void rtl_lps_leave(struct ieee80211_hw *hw);
+void rtl_lps_enter(struct ieee80211_hw *hw, bool may_block);
+void rtl_lps_leave(struct ieee80211_hw *hw, bool may_block);
 
 void rtl_lps_set_psmode(struct ieee80211_hw *hw, u8 rt_psmode);
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
