Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D20ACCB58
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jun 2025 18:34:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CBAD614AC;
	Tue,  3 Jun 2025 16:34:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3QI1klGDIYSE; Tue,  3 Jun 2025 16:34:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A319E6148D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748968449;
	bh=LVPg9RSU5+0wf5EHqV7EnA6nX7rFFrDnz8hGU29mQNM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PAp+fyeH03ba271gWG6BNE9vAe2L7BWtDayepXnbXPr8ElZt6l8F1nlahIhglSm7I
	 lKcx7DaKG8cGTN3L7P2ju+XhJrggNf4mjczVglXx1/mWpS0mcRpangdhhCKI+OUny6
	 SGonjmywdQPp0nJKjZZsqr5lSF9nU7ZLozUEMdIK72WKaWZ6OL8pd45aI6PUUIyMDy
	 sqx2OQZME/44UYGwpvfR32Upxy7z1FLnyAr5SnRkQ2L+vf8o1Z9wv8VwxPdZB3RZ0W
	 Z/r/aCNmOMj2QrgcDzgnbwzKMZRn0ALpEaYRWUMdSfYp9k5LJphazfa/IM6PUt9lc0
	 6SeZofbGh8yZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A319E6148D;
	Tue,  3 Jun 2025 16:34:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A8686DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 16:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 99EAF409FE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 16:34:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6TLVzMt7r-Jo for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jun 2025 16:34:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D4D0F40A14
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4D0F40A14
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D4D0F40A14
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 16:34:06 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-23508d30142so61224715ad.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Jun 2025 09:34:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748968446; x=1749573246;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=LVPg9RSU5+0wf5EHqV7EnA6nX7rFFrDnz8hGU29mQNM=;
 b=AAEy9b8g5VLgedX++STFcRtDYQ9O7XA+QPnQeovZIFugs4dUB6SO1/h7RndTzeQHgH
 cyHYDU57+xBPX6Sd1gqa/5pMp5+xxPA6L3fMfVIALUus+TeAa8k8qa5gV4ETmcxMB7gj
 s9pW1oSflF6bc7NGbvazO4loH+Ma5WNUj0uUmYRv/H7J/e4dKkoYTUbE0uJCPXV0BTkL
 8KMGUWDBN2wdVyUGYuDBgDp1PlnkTCllY2EZvWn4gFrdCous8uCan0jsAT0S4ZPY5bHE
 wpfraw8JPhDBd9ZHqx+ny0sD8Egja1jrdgeDlvMHB5RTNGxtf5ByMkBzROdVUtaYzNo8
 A8kA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUAiAk7tohCz172sAzyHw/baXgAAAWWhOTAuhda4l7JijsUB7YIgDFPEDCm4d10BTKuTklkQK6E4AopM3Aczow=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwkYSGizGhs0Vn1kG50X4WIs7Scg6kxdyqps34m2/8SyXtwpJxy
 8Tnj+IK5kYDnAKR5IDk9prlcl4WvusS+mJTPjxFGya9zidRTineCpVQu7tcDyTtKdeQ=
X-Gm-Gg: ASbGncsy4bpOIKWYw/cm9OTyQwoA3IwETNSzh5C8Uku1HQzoujGFvWUN0PB/X6cKRKt
 FgHSEgmob4tmcFf58HL+pBsj1NWjSw19/pZbSX9gQ3OrxdHCx/Fr6wXT4QWYdaMUnjjt3Qdo2lz
 +SkGi+1dIyVlN+FFp/2DJ7XLc76P7j77SE5OhRth4AZtqBAw4ORE3bJ8ZfRoh+3F5aPodMOY1dZ
 0mP4k5awNyaLVhSm/qLsUPZFyua1qio2eUM7PbuHpbTimiXoT8Cdt2mDBfEkl99odbgt/4hFoAO
 Bjm4BGiZCV1F/gozNeHiqgniVK+JyQ0hx1dhIG4eHaLi6xuvvwqQRIHXy3M=
X-Google-Smtp-Source: AGHT+IEsG8RwJJ/qUZ31YozpAFPSnp5YLObkgNdPKm6K9ikVW9NpcBa7mfYOTaEM2xDXXZhOeTyawQ==
X-Received: by 2002:a17:902:f642:b0:234:de0a:b36e with SMTP id
 d9443c01a7336-23539648068mr242371285ad.49.1748968446027; 
 Tue, 03 Jun 2025 09:34:06 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-23506cd3723sm89477255ad.133.2025.06.03.09.34.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Jun 2025 09:34:05 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Cc: kuba@kernel.org, john.cs.hey@gmail.com, jacob.e.keller@intel.com,
 stfomichev@gmail.com, Joe Damato <jdamato@fastly.com>,
 syzbot+846bb38dc67fe62cc733@syzkaller.appspotmail.com,
 Stanislav Fomichev <sdf@fomichev.me>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 linux-kernel@vger.kernel.org (open list)
Date: Tue,  3 Jun 2025 16:34:01 +0000
Message-ID: <20250603163402.116321-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1748968446; x=1749573246; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=LVPg9RSU5+0wf5EHqV7EnA6nX7rFFrDnz8hGU29mQNM=;
 b=f4fTjcCt7ey51AVg5xaiMZsZTSCh8SUnPuYlXQtdHhEF98exCgi+Ga/m4MsKd33e1n
 A7Cwi5Pc6uQ8j1mvZFWmvY+Mg3r66LGGn7SLqUb7vL5G29b3A6pvZyhrRD4ag0Dd5Vds
 bFvnjD7EavtGzFp/WQPj7Dce62mdQiAgH5lIA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=f4fTjcCt
Subject: [Intel-wired-lan] [PATCH iwl-net v2] e1000: Move cancel_work_sync
 to avoid deadlock
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

Previously, e1000_down called cancel_work_sync for the e1000 reset task
(via e1000_down_and_stop), which takes RTNL.

As reported by users and syzbot, a deadlock is possible in the following
scenario:

CPU 0:
  - RTNL is held
  - e1000_close
  - e1000_down
  - cancel_work_sync (cancel / wait for e1000_reset_task())

CPU 1:
  - process_one_work
  - e1000_reset_task
  - take RTNL

To remedy this, avoid calling cancel_work_sync from e1000_down
(e1000_reset_task does nothing if the device is down anyway). Instead,
call cancel_work_sync for e1000_reset_task when the device is being
removed.

Fixes: e400c7444d84 ("e1000: Hold RTNL when e1000_down can be called")
Reported-by: syzbot+846bb38dc67fe62cc733@syzkaller.appspotmail.com
Closes: https://lore.kernel.org/netdev/683837bf.a00a0220.52848.0003.GAE@google.com/
Reported-by: John <john.cs.hey@gmail.com>
Closes: https://lore.kernel.org/netdev/CAP=Rh=OEsn4y_2LvkO3UtDWurKcGPnZ_NPSXK=FbgygNXL37Sw@mail.gmail.com/
Signed-off-by: Joe Damato <jdamato@fastly.com>
Acked-by: Stanislav Fomichev <sdf@fomichev.me>
Acked-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 3f089c3d47b2..d8595e84326d 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -477,10 +477,6 @@ static void e1000_down_and_stop(struct e1000_adapter *adapter)
 
 	cancel_delayed_work_sync(&adapter->phy_info_task);
 	cancel_delayed_work_sync(&adapter->fifo_stall_task);
-
-	/* Only kill reset task if adapter is not resetting */
-	if (!test_bit(__E1000_RESETTING, &adapter->flags))
-		cancel_work_sync(&adapter->reset_task);
 }
 
 void e1000_down(struct e1000_adapter *adapter)
@@ -1266,6 +1262,10 @@ static void e1000_remove(struct pci_dev *pdev)
 
 	unregister_netdev(netdev);
 
+	/* Only kill reset task if adapter is not resetting */
+	if (!test_bit(__E1000_RESETTING, &adapter->flags))
+		cancel_work_sync(&adapter->reset_task);
+
 	e1000_phy_hw_reset(hw);
 
 	kfree(adapter->tx_ring);

base-commit: b56bbaf8c9ffe02468f6ba8757668e95dda7e62c
-- 
2.43.0

