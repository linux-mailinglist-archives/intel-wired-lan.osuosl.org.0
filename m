Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0255CA01940
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Jan 2025 12:38:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A10F2606AF;
	Sun,  5 Jan 2025 11:38:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V03xMzJIxbfS; Sun,  5 Jan 2025 11:38:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABB74606C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736077133;
	bh=UnXkorlhj21AU0DeCCqRG7b8kES+RU7vQ09X3NJJsME=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ak5CmPUTNHcFu0DUDw2hZTNlyJ6SvcvNgwRQFgfqL6ALZRMdTc99qmXztqtKTuNTY
	 Skqfd/3rcFngtEOSpnlUko51SGuJ50if5iY39crSiUMKs/SCz4a+04i5JzBsWuQgeX
	 migjtijq/6obXf94xI2dd2pNIyqAbPi8QlAiegqPiVXZbXSWpoxH21tqu2qkjh1jV6
	 O88tkuoflGCnocrCIDnugMZO7s43iiAKWvZEJJOHzn8ebQnWywxPpSKk8AJ1mnkkTT
	 qnxv4fxXYURxM3NbmnPD9sVpZOVTccPVp+G4g/RA0lvs0pzcQ3/wsdRcnHt/mXbG9K
	 xE/StRwLYZzgA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABB74606C1;
	Sun,  5 Jan 2025 11:38:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C9D786B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 11:38:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B6FC640329
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 11:38:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XfblkwyDfqi5 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Jan 2025 11:38:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12f; helo=mail-lf1-x12f.google.com;
 envelope-from=demonihin@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 608D9403B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 608D9403B1
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 608D9403B1
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 11:38:50 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id
 2adb3069b0e04-540215984f0so14176168e87.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 05 Jan 2025 03:38:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736077128; x=1736681928;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=UnXkorlhj21AU0DeCCqRG7b8kES+RU7vQ09X3NJJsME=;
 b=oEdCxavslvrW7MLXqtJEu+k7/x1mT2dFpEqX1XLoLZWYB2UWII+cTqIWP7ShpyS3Tk
 47HJ+oNVx+74Ed0Y4KtCw1YKzCD8dlW8EnHt7CDc/zVEmycV5eHlh0iqbVeaarWxPawm
 mM6BBgaybzX8cbQBHUfoKAPvT56MMclpWttfxpYPtXIQeI/EYJaNKK2AdkL9lp6k3BUe
 rBAy6ifN8eXzFuMmecc0yR0OOkgdV1uVxPQmJavel+1u1bfdkwkAf+eFhGIX5Tcifgwq
 GI5aEwYZxXbW2rtZL7quav+Gl+GO7FDDU1N2M+0uUxz2D+hvZL5+kK/DDf4tSheaxLcJ
 vfcQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUJwae5ejMwDA5LN9i9AHbgXc8LlY3NvjmS+zxKkrZH2xVOQGK57CKjbpotr+YRfysNx0VaDmylcz/2LTjSe8M=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwQlIwFmtjT+6wReMwnyA5Y8y92NVe3434ruIfq7Incipi6GEM+
 ulVpaQJD+JV+leCz7/LTJA+QugjB9hgnSaU9wFYyypztx+odsn13
X-Gm-Gg: ASbGncuDt2V/9pSzy7ss+uz5nqoQgY8+AASE4YvK/iEDYVhbrt37kXTKcaa5fXP3pAC
 LbDGDQtHqkQvv9oM7mmxw66GaBX5VCkXzNczmQdzv1/Z+aacZZT8MY6H8FFrI44Z/FMpGdRSZyy
 yZaYe6WXNnD1UL74XoKNEqBtoDPt23RTrUHmCjUP+upZ/lHPbTYDC785weLAf5pfIy8DwuqDWX5
 bLTMB8M455zcqi0CDzpnHUdkwJ6OPLyHI93FOVlkinVeA==
X-Google-Smtp-Source: AGHT+IFDPTY+CmpX2fATRp62xT27/eXNzMe0FOeFJskEzO7JLWgMwhtr1w/gVc5zW30o7649VTTCcQ==
X-Received: by 2002:a05:6512:3d86:b0:542:218a:2af7 with SMTP id
 2adb3069b0e04-54229538b19mr17917597e87.15.1736077127945; 
 Sun, 05 Jan 2025 03:38:47 -0800 (PST)
Received: from laptop.dev.lan ([2001:2040:c00f:15c::4159])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-54269fd89e8sm689357e87.91.2025.01.05.03.38.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2025 03:38:46 -0800 (PST)
From: Dmitrii Ermakov <demonihin@gmail.com>
To: davem@davemloft.net
Cc: edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Dmitrii Ermakov <demonihin@gmail.com>
Date: Sun,  5 Jan 2025 12:38:19 +0100
Message-ID: <20250105113822.108706-1-demonihin@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736077128; x=1736681928; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=UnXkorlhj21AU0DeCCqRG7b8kES+RU7vQ09X3NJJsME=;
 b=QhqsVgHfaGrti1RRFCHjCU+jlcfi5WjYLXaG6vyio/ugg8Upe0VtuaPHiFSHC/bzCu
 6eskQ3G50yF6AWRt/8N4bsjRp8DqlX6QZGRY3ByYtbzvy4PmvEkUCSHJcaK1MPQwyZij
 iFnxEbjlwVbXnVhwFhQ1k1rUVwYcLa8FphtoBSUjXox4fewzaJGBUO9AaxDQhGEHEmEv
 dmXR5tRLozU7PtP1UHTsBjwRsAZycAGAOkgwhRhu6If/gXSsibdUDRQKqJ0/LbV9hmP7
 N1u9rk4V53CjymaQ8wn+v6XD4fJ4ZUK5Pqqff1HKA2VdR3VFFUz3WYaQBjQrF+M8A3ea
 DOsQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=QhqsVgHf
Subject: [Intel-wired-lan] [PATCH v2 RESEND net-next] e1000e: makes
 e1000_watchdog_task use queue_delayed_work
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
index 286155efcedf..cb68662cdc3a 100644
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
@@ -4287,7 +4287,8 @@ void e1000e_down(struct e1000_adapter *adapter, bool reset)
 
 	napi_synchronize(&adapter->napi);
 
-	del_timer_sync(&adapter->watchdog_timer);
+	cancel_delayed_work_sync(&adapter->watchdog_work);
+
 	del_timer_sync(&adapter->phy_info_timer);
 
 	spin_lock(&adapter->stats64_lock);
@@ -5169,25 +5170,12 @@ static void e1000e_check_82574_phy_workaround(struct e1000_adapter *adapter)
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
@@ -5416,8 +5404,8 @@ static void e1000_watchdog_task(struct work_struct *work)
 
 	/* Reset the timer */
 	if (!test_bit(__E1000_DOWN, &adapter->state))
-		mod_timer(&adapter->watchdog_timer,
-			  round_jiffies(jiffies + 2 * HZ));
+		queue_delayed_work(system_wq, &adapter->watchdog_work,
+				   round_jiffies(2 * HZ));
 }
 
 #define E1000_TX_FLAGS_CSUM		0x00000001
@@ -7596,11 +7584,10 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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
@@ -7741,11 +7728,10 @@ static void e1000_remove(struct pci_dev *pdev)
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

