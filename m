Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BAA97B1AE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Sep 2024 17:02:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 688A9605AC;
	Tue, 17 Sep 2024 15:02:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IUXHoaAsE8T2; Tue, 17 Sep 2024 15:02:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7CBC9608C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726585347;
	bh=KEavmw2LUY976ET169IA5SeQMrU1JxBvwS/MFJxjHsg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7mbLTfQHIqVdVe/VYNRMv3uZgY9G7fr/Gb5BFbyCrIUJKswPtSF2wXQoEoVrf5n+B
	 Mb1LH9WHZDwaGERJWGMfw9xBwBL7vzP/40EJTjMCQ2+nIW0IH2Bu+loqw3iJdru71f
	 ZDnhbAygzd404nDcwTZzfDlgb3P9hikw/TuOuIrwHC8MAAlDMIfh6lPzojHDEoMTqS
	 wJkT5+8ojkrfTE5uVoY0pEMFciZgWx8ypzKHbHf4VCj+CfvylY6TW1hKK5WPlblnnB
	 ggsu9xpQMvikzqn01NRF6+EEemyUNku6+xsAOgs2FVNoBgUDwIQTyfKPhf16bnfjtv
	 OEEUy8Mb4VJOQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7CBC9608C3;
	Tue, 17 Sep 2024 15:02:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 629771BF293
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Sep 2024 07:03:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 50E77607F7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Sep 2024 07:03:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nzzeKDAUuNfW for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Sep 2024 07:03:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22d; helo=mail-lj1-x22d.google.com;
 envelope-from=demonihin@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 512C9607E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 512C9607E4
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 512C9607E4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Sep 2024 07:03:53 +0000 (UTC)
Received: by mail-lj1-x22d.google.com with SMTP id
 38308e7fff4ca-2f74b6e1810so31147061fa.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Sep 2024 00:03:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726383831; x=1726988631;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=KEavmw2LUY976ET169IA5SeQMrU1JxBvwS/MFJxjHsg=;
 b=Nn543mE2vV4P5orBsZJ1OsoZuAHnepJ1wRgi7oRpbwrKhCv3LCuo8Eg4gWjT8SxSGf
 msiiyDPeyeMYMoeE1f81272sWwim2nkzybwHKl5gMbMKum+jS/Ux25tKTtjNNMkbSE/s
 HaEQ1bv8nFwHn67X+ab/QKiVVvJ9h1MzjbstLD3P2fPBIyPohjXxNTdHAgO/sruE/qGJ
 gmoErmY78PGuiKeCdKZsItf3agPIiDmZxcFybhYNtbqBG9/d4Sp267ThvTL44ybCHG+p
 KUnSh7bgtlBtr9F5nEoCOqxpPHphVJR7+xR9aMif299PAcrS7p4PP22awcn2fV+563bw
 xOhQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWzt7Li111y7fnus2KORqZ+So+qqTAyhVRqAp7Di9sOkg9oBqzxyKdtIQfD2ziLIVCK+Ci/XzEkxuajZ8OOwzI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyD6uau8IYGyZwPqw7CfZNmn3oiZsevCFQAWZeoD7uXQjB7tfle
 It8KpHTZ+QArTtnModWsceQ6mNHd0V60TMklgatx4l7ao0RhidSY
X-Google-Smtp-Source: AGHT+IFVMZF1BrveCxcSafa+dUJ6XIlXXCTk+1Y1FY1q/mSb956LWqbntUQTWqQ2cxGtHWK0k8ZLyg==
X-Received: by 2002:a2e:a988:0:b0:2f7:4fac:f69f with SMTP id
 38308e7fff4ca-2f787dbf3e3mr63663781fa.12.1726383830612; 
 Sun, 15 Sep 2024 00:03:50 -0700 (PDT)
Received: from localhost.localdomain (81-225-142-40-no600.tbcn.telia.com.
 [81.225.142.40]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-2f79d301776sm4475061fa.54.2024.09.15.00.03.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Sep 2024 00:03:49 -0700 (PDT)
From: Dmitrii Ermakov <demonihin@gmail.com>
To: davem@davemloft.net
Date: Sun, 15 Sep 2024 09:03:21 +0200
Message-ID: <20240915070334.1267-1-demonihin@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 17 Sep 2024 15:02:26 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1726383831; x=1726988631; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=KEavmw2LUY976ET169IA5SeQMrU1JxBvwS/MFJxjHsg=;
 b=DmoQh3JK2hV+gcF+TrjH+j34a7OuWITNEWFibIcKyW2HmajBft84MJ3SVEIPTH5hlr
 +6ON9DQ80d8G9w6LHr77wWZ+zA//4EF/Yv5LOr08cVK5oNBE8xUUteXu6yrgwoU9gHyN
 vxI5v/KmQDOviazD0ZN1QT4RBQ3Lj6IgMRhFtsrwkWkAZs9weRrNUq14a4zv637ud0Eo
 AJaaCz1p/2ka7oWzVgyP+ubvk9rte7rcFapecTaM5F0Krzrl/Hw2DX3XFjZNSq+SKalp
 /EOUw2/ddlaF3zI6Kxeqzblsqk+GnKZDsiw0FaAc3D+iFXz6rQ2Ru9QlJ2cNUeb2x6Qt
 tvig==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=DmoQh3JK
Subject: [Intel-wired-lan] [PATCH] e1000e: makes e1000_watchdog_task use
 queue_delayed_work
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
 drivers/net/ethernet/intel/e1000e/e1000.h  |  4 +-
 drivers/net/ethernet/intel/e1000e/netdev.c | 43 ++++++++--------------
 2 files changed, 18 insertions(+), 29 deletions(-)

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
index 360ee26557f7..5b7a3a1423ed 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -1778,7 +1778,8 @@ static irqreturn_t e1000_intr_msi(int __always_unused irq, void *data)
 		}
 		/* guard against interrupt when we're going down */
 		if (!test_bit(__E1000_DOWN, &adapter->state))
-			mod_timer(&adapter->watchdog_timer, jiffies + 1);
+			queue_delayed_work(system_wq, &adapter->watchdog_work,
+					   1);
 	}
 
 	/* Reset on uncorrectable ECC error */
@@ -1857,7 +1858,8 @@ static irqreturn_t e1000_intr(int __always_unused irq, void *data)
 		}
 		/* guard against interrupt when we're going down */
 		if (!test_bit(__E1000_DOWN, &adapter->state))
-			mod_timer(&adapter->watchdog_timer, jiffies + 1);
+			queue_delayed_work(system_wq, &adapter->watchdog_work,
+					   1);
 	}
 
 	/* Reset on uncorrectable ECC error */
@@ -1901,7 +1903,8 @@ static irqreturn_t e1000_msix_other(int __always_unused irq, void *data)
 		hw->mac.get_link_status = true;
 		/* guard against interrupt when we're going down */
 		if (!test_bit(__E1000_DOWN, &adapter->state))
-			mod_timer(&adapter->watchdog_timer, jiffies + 1);
+			queue_delayed_work(system_wq, &adapter->watchdog_work,
+					   1);
 	}
 
 	if (!test_bit(__E1000_DOWN, &adapter->state))
@@ -4293,7 +4296,8 @@ void e1000e_down(struct e1000_adapter *adapter, bool reset)
 
 	napi_synchronize(&adapter->napi);
 
-	del_timer_sync(&adapter->watchdog_timer);
+	cancel_delayed_work_sync(&adapter->watchdog_work);
+
 	del_timer_sync(&adapter->phy_info_timer);
 
 	spin_lock(&adapter->stats64_lock);
@@ -5164,25 +5168,12 @@ static void e1000e_check_82574_phy_workaround(struct e1000_adapter *adapter)
 	}
 }
 
-/**
- * e1000_watchdog - Timer Call-back
- * @t: pointer to timer_list containing private info adapter
- **/
-static void e1000_watchdog(struct timer_list *t)
-{
-	struct e1000_adapter *adapter = from_timer(adapter, t, watchdog_timer);
-
-	/* Do the rest outside of interrupt context */
-	schedule_work(&adapter->watchdog_task);
-
-	/* TODO: make this use queue_delayed_work() */
-}
-
 static void e1000_watchdog_task(struct work_struct *work)
 {
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
@@ -5411,8 +5402,8 @@ static void e1000_watchdog_task(struct work_struct *work)
 
 	/* Reset the timer */
 	if (!test_bit(__E1000_DOWN, &adapter->state))
-		mod_timer(&adapter->watchdog_timer,
-			  round_jiffies(jiffies + 2 * HZ));
+		queue_delayed_work(system_wq, &adapter->watchdog_work,
+				   round_jiffies(2 * HZ));
 }
 
 #define E1000_TX_FLAGS_CSUM		0x00000001
@@ -7588,11 +7579,10 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_eeprom;
 	}
 
-	timer_setup(&adapter->watchdog_timer, e1000_watchdog, 0);
 	timer_setup(&adapter->phy_info_timer, e1000_update_phy_info, 0);
+	INIT_DELAYED_WORK(&adapter->watchdog_work, e1000_watchdog_task);
 
 	INIT_WORK(&adapter->reset_task, e1000_reset_task);
-	INIT_WORK(&adapter->watchdog_task, e1000_watchdog_task);
 	INIT_WORK(&adapter->downshift_task, e1000e_downshift_workaround);
 	INIT_WORK(&adapter->update_phy_task, e1000e_update_phy_task);
 	INIT_WORK(&adapter->print_hang_task, e1000_print_hw_hang);
@@ -7733,11 +7723,10 @@ static void e1000_remove(struct pci_dev *pdev)
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

