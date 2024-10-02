Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B8D98E1E8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 19:53:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F9E24104C;
	Wed,  2 Oct 2024 17:53:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vInpOza3SNBD; Wed,  2 Oct 2024 17:53:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F0164028F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727891585;
	bh=j1KvCZ7gaXzt52gPxua+C5bMinjON5snkugcQdtgk70=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=YXGn1rqkFDpEukDisl1UyOR0+T7qigyUCCGQp/J7RnutlstH1XdeSvEeUDdWzGbI+
	 LE93C5nxsPceUhRtSIqy8jPYhZ7B7MXESGwTiNU5lkw3xzx3tkR4FDpN6ljUCuDKeN
	 Rt4G3oeVYRs0I5PVkgtOEY3VVdcBuN2+N+YoiXe3DyFZcMM/9RU1PWlpOekgLEYeUs
	 OKPKFqHj+yKfZ7Ar7RC+iT2431+LxsDuOHZtva98YKMGyLSjrcpImOMu9lGxl28uH0
	 80HzG9t0VBTNgG5Lj/JSgzRHhCCe25QyyocUNNf1I58hzr02PCQFTU7NVvlFM3Cpqj
	 Gtr3MndPnHDmQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F0164028F;
	Wed,  2 Oct 2024 17:53:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 081D61BF83E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 17:53:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EA4AB6060D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 17:53:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7TkoEBYXOOAy for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 17:53:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22e; helo=mail-lj1-x22e.google.com;
 envelope-from=demonihin@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D4359600C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4359600C9
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4359600C9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 17:53:02 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id
 38308e7fff4ca-2fada911953so11100881fa.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Oct 2024 10:53:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727891580; x=1728496380;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=j1KvCZ7gaXzt52gPxua+C5bMinjON5snkugcQdtgk70=;
 b=mvIgdRM/6oF5qnA6BzCkUomhnICCsDm8veYMVfKSC8BKiCizoDiK40/SIEftqXc1yC
 6wSdEmaLJh0bAqw932CIfQqCK8O/AhChBP8VoCKnKNFadhqVTkBeovfVmEWDan/0vu08
 anhLFj7EwO3ju2X5jJW1QYVs/vZFW4KK8BduU/iEev9gFWuHF3R5d+N1LgtMR0qFAcUY
 mn3Enj/KR0+PSyxi0RdyDoOY048PF3baEHsDXOBQvXePJ5mV7hJY8KtCmWL/N4CBixhb
 pgJ1cIpk2doeB1bXLIfXoWOYnPYJ3WPwExEl1Vw72EyZRpOJzXGbj+71H5gf9Qopp4M7
 D17w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWMhBcMLggFYV5XU1JLWlscgnF+iMq0T06+bNUS9RgSxC1VdWdc3HTnZvBqJI/lYUeSv2LpOa7b/POFGfyElzE=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywyk/Xf4SVEOIrB1kCfgAxWggoA0SSSINJW3y93LLME7J8C6irS
 4A4NNftHX4mIwJfz0faovbFNcHcf0e4wHeBd5AoNYGNfT5Cs3rTg
X-Google-Smtp-Source: AGHT+IGa18kvxvg8Vx8+TvCEpf9WV9I6u3h8TcPjesh3PjmhEGgbC4i0pCBjyNko56nxv1HoL5TG/w==
X-Received: by 2002:a05:6512:a8b:b0:539:8bc9:b354 with SMTP id
 2adb3069b0e04-539a6260868mr169443e87.9.1727891580038; 
 Wed, 02 Oct 2024 10:53:00 -0700 (PDT)
Received: from laptop.dev.lan ([2001:2040:c00f:15c::4159])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-538a043bb4esm1958968e87.234.2024.10.02.10.52.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2024 10:52:59 -0700 (PDT)
From: Dmitrii Ermakov <demonihin@gmail.com>
To: davem@davemloft.net
Date: Wed,  2 Oct 2024 18:59:15 +0200
Message-ID: <20241002165957.36513-2-demonihin@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1727891580; x=1728496380; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=j1KvCZ7gaXzt52gPxua+C5bMinjON5snkugcQdtgk70=;
 b=XhsuN5g6jfjgYaqjlQpVGQucOXmozU7r71gKiWI1x5jSXloNUJBhgeC6KYlPgy0yJT
 xVxLQejzuHBBIfzzrAmhzyGNS94JKNpWoQ2wnxF6JCcB8xV4Xsg8ZpAMS7rYnla6tWUL
 cSqANRyZxd983ZtYpqnwaIdCUT9DUEhz1s+rqVaheJ0hBMNJYRE64X7K5dxqP7w+gJ5N
 dnkHE5UTV/F6CMw1016mwIymwSypt6EbvG3YCioWuFyPougMoVpzwy/CyX8CnJlEVmq8
 ePoaL+afxmQf5xiUtiTdagRPWPO93k/nFTkL++J0EmeEo5FO7kqSAdydm6XD5k/FdX8J
 aEKQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=XhsuN5g6
Subject: [Intel-wired-lan] [PATCH v2 net-next] e1000e: makes
 e1000_watchdog_task use queue_delayed_work
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
Cc: Dmitrii Ermakov <demonihin@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Replaces watchdog timer with delayed_work as advised
in the driver's TODO comment.

Signed-off-by: Dmitrii Ermakov <demonihin@gmail.com>
---
V1 -> V2: Removed redundant line wraps, renamed e1000_watchdog to e1000_watchdog_work

 drivers/net/ethernet/intel/e1000e/e1000.h  |  4 +--
 drivers/net/ethernet/intel/e1000e/netdev.c | 42 ++++++++--------------
 2 files changed, 16 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index ba9c19e6994c..5a60372d2158 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -189,12 +189,12 @@ struct e1000_phy_regs {
 
 /* board specific private data structure */
 struct e1000_adapter {
-	struct timer_list watchdog_timer;
 	struct timer_list phy_info_timer;
 	struct timer_list blink_timer;
 
+	struct delayed_work watchdog_work;
+
 	struct work_struct reset_task;
-	struct work_struct watchdog_task;
 
 	const struct e1000_info *ei;
 
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index f103249b12fa..495693bca2b1 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -1778,7 +1778,7 @@ static irqreturn_t e1000_intr_msi(int __always_unused irq, void *data)
 		}
 		/* guard against interrupt when we're going down */
 		if (!test_bit(__E1000_DOWN, &adapter->state))
-			mod_timer(&adapter->watchdog_timer, jiffies + 1);
+			queue_delayed_work(system_wq, &adapter->watchdog_work, 1);
 	}
 
 	/* Reset on uncorrectable ECC error */
@@ -1857,7 +1857,7 @@ static irqreturn_t e1000_intr(int __always_unused irq, void *data)
 		}
 		/* guard against interrupt when we're going down */
 		if (!test_bit(__E1000_DOWN, &adapter->state))
-			mod_timer(&adapter->watchdog_timer, jiffies + 1);
+			queue_delayed_work(system_wq, &adapter->watchdog_work, 1);
 	}
 
 	/* Reset on uncorrectable ECC error */
@@ -1901,7 +1901,7 @@ static irqreturn_t e1000_msix_other(int __always_unused irq, void *data)
 		hw->mac.get_link_status = true;
 		/* guard against interrupt when we're going down */
 		if (!test_bit(__E1000_DOWN, &adapter->state))
-			mod_timer(&adapter->watchdog_timer, jiffies + 1);
+			queue_delayed_work(system_wq, &adapter->watchdog_work, 1);
 	}
 
 	if (!test_bit(__E1000_DOWN, &adapter->state))
@@ -4293,7 +4293,8 @@ void e1000e_down(struct e1000_adapter *adapter, bool reset)
 
 	napi_synchronize(&adapter->napi);
 
-	del_timer_sync(&adapter->watchdog_timer);
+	cancel_delayed_work_sync(&adapter->watchdog_work);
+
 	del_timer_sync(&adapter->phy_info_timer);
 
 	spin_lock(&adapter->stats64_lock);
@@ -5164,25 +5165,12 @@ static void e1000e_check_82574_phy_workaround(struct e1000_adapter *adapter)
 	}
 }
 
-/**
- * e1000_watchdog - Timer Call-back
- * @t: pointer to timer_list containing private info adapter
- **/
-static void e1000_watchdog(struct timer_list *t)
+static void e1000_watchdog_work(struct work_struct *work)
 {
-	struct e1000_adapter *adapter = from_timer(adapter, t, watchdog_timer);
-
-	/* Do the rest outside of interrupt context */
-	schedule_work(&adapter->watchdog_task);
-
-	/* TODO: make this use queue_delayed_work() */
-}
-
-static void e1000_watchdog_task(struct work_struct *work)
-{
-	struct e1000_adapter *adapter = container_of(work,
-						     struct e1000_adapter,
-						     watchdog_task);
+	struct delayed_work *dwork =
+		container_of(work, struct delayed_work, work);
+	struct e1000_adapter *adapter =
+		container_of(dwork, struct e1000_adapter, watchdog_work);
 	struct net_device *netdev = adapter->netdev;
 	struct e1000_mac_info *mac = &adapter->hw.mac;
 	struct e1000_phy_info *phy = &adapter->hw.phy;
@@ -5411,8 +5399,8 @@ static void e1000_watchdog_task(struct work_struct *work)
 
 	/* Reset the timer */
 	if (!test_bit(__E1000_DOWN, &adapter->state))
-		mod_timer(&adapter->watchdog_timer,
-			  round_jiffies(jiffies + 2 * HZ));
+		queue_delayed_work(system_wq, &adapter->watchdog_work,
+				   round_jiffies(2 * HZ));
 }
 
 #define E1000_TX_FLAGS_CSUM		0x00000001
@@ -7591,11 +7579,10 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_eeprom;
 	}
 
-	timer_setup(&adapter->watchdog_timer, e1000_watchdog, 0);
 	timer_setup(&adapter->phy_info_timer, e1000_update_phy_info, 0);
+	INIT_DELAYED_WORK(&adapter->watchdog_work, e1000_watchdog_work);
 
 	INIT_WORK(&adapter->reset_task, e1000_reset_task);
-	INIT_WORK(&adapter->watchdog_task, e1000_watchdog_task);
 	INIT_WORK(&adapter->downshift_task, e1000e_downshift_workaround);
 	INIT_WORK(&adapter->update_phy_task, e1000e_update_phy_task);
 	INIT_WORK(&adapter->print_hang_task, e1000_print_hw_hang);
@@ -7736,11 +7723,10 @@ static void e1000_remove(struct pci_dev *pdev)
 	 * from being rescheduled.
 	 */
 	set_bit(__E1000_DOWN, &adapter->state);
-	del_timer_sync(&adapter->watchdog_timer);
+	cancel_delayed_work_sync(&adapter->watchdog_work);
 	del_timer_sync(&adapter->phy_info_timer);
 
 	cancel_work_sync(&adapter->reset_task);
-	cancel_work_sync(&adapter->watchdog_task);
 	cancel_work_sync(&adapter->downshift_task);
 	cancel_work_sync(&adapter->update_phy_task);
 	cancel_work_sync(&adapter->print_hang_task);
-- 
2.45.2

