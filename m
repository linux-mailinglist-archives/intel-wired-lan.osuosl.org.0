Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DE0867A8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2019 19:07:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87B8D88296;
	Thu,  8 Aug 2019 17:07:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NAbP4aWu7p8e; Thu,  8 Aug 2019 17:07:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 21A20882BE;
	Thu,  8 Aug 2019 17:07:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 889C81BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 15:48:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 833FA86896
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 15:48:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sK-q7L_Jo9pm for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2019 15:48:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 243C986885
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 15:48:30 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id w24so41417732plp.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Aug 2019 08:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=l8XOANoCNKNvBmTnMdohark1MvLM8N3zWq2NRc5Bo5A=;
 b=AOhM6sxLUZe+heMs1jjAJJBk9/mlubf14fWWDijJbQI4b5B5I4Wctf1Vh7MPnuG/e5
 80UqBFiq24jL+t+Lr7l4SWv4/XYdozBkQwqymvF806eAAkUI09IOrwH8LVM/9x5TuLG6
 eSMv5jKTUOLId5HxRkd25h/0HUNK/bg7U/gHWGK3OYYGOxmAUKR45LVck76RcRmhzNKy
 WBNjlVbNOFrkaLMAWZt4fBbQighAlcmiw8ew6WtaFvg5ngxvh6STSwWEsptafxHy6roT
 Bg6N4hiC2rLSXdh+Xvcnfx9Cnz8D5YAglB7Xe/RAihPc9g0On3iOdrg+HSRGBf6LJwTb
 cwsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=l8XOANoCNKNvBmTnMdohark1MvLM8N3zWq2NRc5Bo5A=;
 b=MDv6p71m/ZHPeHW8GS8c8xn12xnKL4d9jSxmVLQbUJOosOdeaPbF7zWIC8fcCGxaXF
 6yO5pUv73VDD6B2qUL4E1m4kvgn5+WdKX99lUV+nZixDj+a2kTARNWNZwGL7AmVKYcKD
 F323ZwvcCS5RZtHAkZrgcfhyLPYGcOvHSilC8iHKJv8BdAwHEkq0OvGdbFx9abLp6cra
 kQnSX7wrW9fIRXaKqhq4kymFj/JhS2+7HpqaLho9W5zZLxccZN+wHMR+eaOP5c4k/h3+
 RpmMacrCiZTAWSVBM8Yvy4k5XYgXXnMyt7H+XNlii//pWCD7BmnUFBaFQjIEvUVv1hjX
 UHug==
X-Gm-Message-State: APjAAAW+Wo3+yvkyDN0CcA/Ph9y9e52SmDZh+xaHzY6HyqZ5S8Ftv769
 TCxtE0YRleq3p68td5A+ugY=
X-Google-Smtp-Source: APXvYqwNzGlCVqlwjwEAgSZL/BZ7QU2ljwMrWqqXPpIX8WPE2grH2XOSgsylOi0Gpcv7Ydlg21FC5g==
X-Received: by 2002:a65:6495:: with SMTP id e21mr8313449pgv.359.1565192909494; 
 Wed, 07 Aug 2019 08:48:29 -0700 (PDT)
Received: from ap-To-be-filled-by-O-E-M.8.8.8.8 ([14.33.120.60])
 by smtp.gmail.com with ESMTPSA id g92sm321046pje.11.2019.08.07.08.48.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 08:48:28 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: jeffrey.t.kirsher@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2019 00:48:23 +0900
Message-Id: <20190807154823.24470-1-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Thu, 08 Aug 2019 17:07:05 +0000
Subject: [Intel-wired-lan] [PATCH net v2] ixgbe: fix possible deadlock in
 ixgbe_service_task()
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
Cc: ap420073@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ixgbe_service_task() calls unregister_netdev() under rtnl_lock().
But unregister_netdev() internally calls rtnl_lock().
So deadlock would occur.

Fixes: 59dd45d550c5 ("ixgbe: firmware recovery mode")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---

v2: remove unnecessary curly braces.

 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index cbaf712d6529..7882148abb43 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7897,11 +7897,8 @@ static void ixgbe_service_task(struct work_struct *work)
 		return;
 	}
 	if (ixgbe_check_fw_error(adapter)) {
-		if (!test_bit(__IXGBE_DOWN, &adapter->state)) {
-			rtnl_lock();
+		if (!test_bit(__IXGBE_DOWN, &adapter->state))
 			unregister_netdev(adapter->netdev);
-			rtnl_unlock();
-		}
 		ixgbe_service_event_complete(adapter);
 		return;
 	}
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
