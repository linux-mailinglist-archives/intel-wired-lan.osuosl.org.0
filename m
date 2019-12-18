Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D4612493F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2019 15:17:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CC99085A82;
	Wed, 18 Dec 2019 14:17:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gHFz9NOb2cLy; Wed, 18 Dec 2019 14:17:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 201A885C2E;
	Wed, 18 Dec 2019 14:17:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F0EFF1BF299
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 14:17:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EC0B72002A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 14:17:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GGimuV3EGsxF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2019 14:17:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by silver.osuosl.org (Postfix) with ESMTPS id E0ED120010
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 14:17:05 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id j11so944036pjs.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 06:17:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=L3jQPTQ2R5MiyMCuFQ28/QWm5v0842TnhDYDEhmSL3A=;
 b=AUgHnCwjrq2NwEEG1Av211jYafr70uh5ebuUs9nuRl2qxREry4BoHzgTAYFsMv3wmB
 a5YHGLTtY98yx+j9Q8b0+FfGt3JAt9UXBE5Tc2ZKcoONX9VI2nvpvdLs3RQVZ0ZWg3D/
 wGNTH8LtR+5ExwolcnWmnJPdNKSBdOlHYInW34Z4F1Q+/IjyVPyQbqT6/6epI1U9qcjK
 hIq0wWqyQAIsz3YtV0XUhJMTjyxbmzkECW3oVzbsKmYy5ylphCqEF7EEeRZ5ip1KDtCF
 7fKH461scRZnfR6yLog37fd6vf7hZU9n927npHCGxC1sOUrPpxn197u0alXAG8w6IXUR
 tr8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=L3jQPTQ2R5MiyMCuFQ28/QWm5v0842TnhDYDEhmSL3A=;
 b=Q8DC4VO4HRUT5Gz14NZtGhja2vo8qG/ZVXnnLZzh4pKt/IsrkysMvb6gm/eQaSodvy
 eehVwBJd9rTW7fffQ8Nr7eYmuxm26M3tmMkPaHV8eKiqwLyz16G0QFRmZbbk7nLMAfwR
 +DBEkeRBhJhp3Jgqq+nCHEaJ53d22/51UrGbQPOsVb6inbZm9s9ITbXpTFGHwc8L9Duc
 qOHcZl4aTHiLi/3zu2GrWQBj3ddnKxQSIHzfoIQxGzeRInjIdFzyOt67V/hmjC4wPstr
 y/aUiZKLw5CtqC14W2V1sMSDwYxlutkQ4Jbiv2eV7sBDwP0Uv4Ntwt+Gf6nkyMW1o8oE
 1aWw==
X-Gm-Message-State: APjAAAVIbTTmywod6oWaZUl9mzsqxHiwJQHrOJCz2tkGIJUIFXv11RsQ
 2WQJs4l3nuVYvaGK3gMfhPA=
X-Google-Smtp-Source: APXvYqxrumjb/MCyv+nqkhnIWzKh4Ue6ATLhMTvMUn7j3d3USRqbMhKU5djbDU374OD2VrPmFbBudQ==
X-Received: by 2002:a17:90a:a386:: with SMTP id
 x6mr3205472pjp.116.1576678625582; 
 Wed, 18 Dec 2019 06:17:05 -0800 (PST)
Received: from oslab.tsinghua.edu.cn ([166.111.139.172])
 by smtp.gmail.com with ESMTPSA id t187sm3546560pfd.21.2019.12.18.06.17.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 06:17:05 -0800 (PST)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: jeffrey.t.kirsher@intel.com,
	davem@davemloft.net
Date: Wed, 18 Dec 2019 22:16:56 +0800
Message-Id: <20191218141656.12416-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH] net: intel: e1000e: fix possible
 sleep-in-atomic-context bugs in e1000e_get_hw_semaphore()
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
Cc: netdev@vger.kernel.org, Jia-Ju Bai <baijiaju1990@gmail.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The driver may sleep while holding a spinlock.
The function call path (from bottom to top) in Linux 4.19 is:

drivers/net/ethernet/intel/e1000e/mac.c, 1366: 
	usleep_range in e1000e_get_hw_semaphore
drivers/net/ethernet/intel/e1000e/80003es2lan.c, 322:
	e1000e_get_hw_semaphore in e1000_release_swfw_sync_80003es2lan
drivers/net/ethernet/intel/e1000e/80003es2lan.c, 197:
	e1000_release_swfw_sync_80003es2lan in e1000_release_phy_80003es2lan
drivers/net/ethernet/intel/e1000e/netdev.c, 4883: 
	(FUNC_PTR) e1000_release_phy_80003es2lan in e1000e_update_phy_stats
drivers/net/ethernet/intel/e1000e/netdev.c, 4917:
	e1000e_update_phy_stats in e1000e_update_stats
drivers/net/ethernet/intel/e1000e/netdev.c, 5945: 
	e1000e_update_stats in e1000e_get_stats64
drivers/net/ethernet/intel/e1000e/netdev.c, 5944: 
	spin_lock in e1000e_get_stats64

drivers/net/ethernet/intel/e1000e/mac.c, 1384: 
	usleep_range in e1000e_get_hw_semaphore
drivers/net/ethernet/intel/e1000e/80003es2lan.c, 322:
	e1000e_get_hw_semaphore in e1000_release_swfw_sync_80003es2lan
drivers/net/ethernet/intel/e1000e/80003es2lan.c, 197:
	e1000_release_swfw_sync_80003es2lan in e1000_release_phy_80003es2lan
drivers/net/ethernet/intel/e1000e/netdev.c, 4883: 
	(FUNC_PTR) e1000_release_phy_80003es2lan in e1000e_update_phy_stats
drivers/net/ethernet/intel/e1000e/netdev.c, 4917:
	e1000e_update_phy_stats in e1000e_update_stats
drivers/net/ethernet/intel/e1000e/netdev.c, 5945: 
	e1000e_update_stats in e1000e_get_stats64
drivers/net/ethernet/intel/e1000e/netdev.c, 5944: 
	spin_lock in e1000e_get_stats64

(FUNC_PTR) means a function pointer is called.

To fix these bugs, usleep_range() is replaced with udelay().

These bugs are found by a static analysis tool STCheck written by myself.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
 drivers/net/ethernet/intel/e1000e/mac.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/mac.c b/drivers/net/ethernet/intel/e1000e/mac.c
index e531976f8a67..51512a73fdd0 100644
--- a/drivers/net/ethernet/intel/e1000e/mac.c
+++ b/drivers/net/ethernet/intel/e1000e/mac.c
@@ -1363,7 +1363,7 @@ s32 e1000e_get_hw_semaphore(struct e1000_hw *hw)
 		if (!(swsm & E1000_SWSM_SMBI))
 			break;
 
-		usleep_range(50, 100);
+		udelay(100);
 		i++;
 	}
 
@@ -1381,7 +1381,7 @@ s32 e1000e_get_hw_semaphore(struct e1000_hw *hw)
 		if (er32(SWSM) & E1000_SWSM_SWESMBI)
 			break;
 
-		usleep_range(50, 100);
+		udelay(100);
 	}
 
 	if (i == timeout) {
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
