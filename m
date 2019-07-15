Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED9569993
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jul 2019 19:11:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BA70120371;
	Mon, 15 Jul 2019 17:11:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xYFWM1UeYq+0; Mon, 15 Jul 2019 17:11:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6930A21507;
	Mon, 15 Jul 2019 17:11:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D5A4D1BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2019 04:57:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D1B1085817
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2019 04:57:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kBLM131YsNfL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jul 2019 04:57:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 717C48453B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2019 04:57:53 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id t132so7087174pgb.9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jul 2019 21:57:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=hMKYnCG1MovC2e0NthlYTwADIbhywb3Mf8OKx2c0Q88=;
 b=oFJbqO7FFhbMh2PePtZO8L1DEUSn/seuPNZp+G02tB0DnB3l2dzcoiDGm5WFCK3C+E
 yuoah+Azp/0YMv4WSDKUYrgoLVLCO0gtxO978paE/ZnKRtsH4qk4Z1bMbWzW7IGi5Vlr
 Dy5gWWTB/SlSxNwecS/XTxE/iKDOGEr+YLZe8kHNCT9TXYCyYZ1b4VbSx8OJAAcaGpbm
 /9g63tKvL8qHIpDHSUl9FYouXbgvETvsZNo9uoln5Mx0Kz2L22do5DYyGkRmj1zqHUt+
 d1w78Q9MGTNd9xrvT2ps4qrnwdtUkIKHXqrUq4nSiudmQ0IjJZs6bS0mBT5oqMtcauAM
 RWVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=hMKYnCG1MovC2e0NthlYTwADIbhywb3Mf8OKx2c0Q88=;
 b=mDNSKFemiCNgvw9mAoyqg9RLJfDKSJW9R2cQfMYwx/wiDz/P8sLGjHFcfBPVqGBbkj
 asA3lQSNYhbbsIl3lEraGG4QAqykH2fgrkpyi3uMEzkiDMlrLTsB6LC66+tCFFc1j8hV
 jKdgVcDeOfMp7Phb/QPXrhxxujpriTZ112sn9a1ExhF040qcS3diwQuc6cHR6QdiUGI9
 qnw3AUe4RX3q2hV8n2mb56lDiXGcVWq/k/GcxR7cuG/KUD3QH2bfly2VRtr155h+JjjU
 85Z2x66yOZxk+uVBqvbbcpMpqxN4qI5XxAubSUMsfS+4Zeo72tQPH54YHwwWymISFvWb
 BwAg==
X-Gm-Message-State: APjAAAU1Qh+ArLG2hHHUVsG7jy9ic2TSmGkYXZTkNwqFhWp4dcjbcaLA
 Tfs6sg/hywoHFHp9jaOiQ64=
X-Google-Smtp-Source: APXvYqzuibIepvUCVkUQ34EWOnD4iCLGzvl0Crytvk1X7CKNy5IZ7NVm8R/4IwjRaDaBeqNwoDzZqg==
X-Received: by 2002:a17:90a:32ec:: with SMTP id
 l99mr27356363pjb.44.1563166672931; 
 Sun, 14 Jul 2019 21:57:52 -0700 (PDT)
Received: from localhost.localdomain ([211.196.191.92])
 by smtp.gmail.com with ESMTPSA id x25sm16838955pfa.90.2019.07.14.21.57.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 14 Jul 2019 21:57:51 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: jeffrey.t.kirsher@intel.com, intel-wired-lan@lists.osuosl.org,
 ap420073@gmail.com
Date: Mon, 15 Jul 2019 13:57:06 +0900
Message-Id: <20190715045706.6140-1-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Mon, 15 Jul 2019 17:11:34 +0000
Subject: [Intel-wired-lan] [PATCH net] ixgbe: fix possible deadlock in
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
I did only compile test because I don't have the hardware.
Could anyone test this patch?
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 57fd9ee6de66..b4888be94dfb 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7894,9 +7894,7 @@ static void ixgbe_service_task(struct work_struct *work)
 	}
 	if (ixgbe_check_fw_error(adapter)) {
 		if (!test_bit(__IXGBE_DOWN, &adapter->state)) {
-			rtnl_lock();
 			unregister_netdev(adapter->netdev);
-			rtnl_unlock();
 		}
 		ixgbe_service_event_complete(adapter);
 		return;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
