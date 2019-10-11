Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFA6D447A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2019 17:35:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9958788138;
	Fri, 11 Oct 2019 15:35:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tltAHZu2dSi3; Fri, 11 Oct 2019 15:35:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E0BC5880F6;
	Fri, 11 Oct 2019 15:35:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A13D21BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 15:35:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0B922880EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 15:35:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y2xTD96Qvcd3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2019 15:35:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 99672880DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 15:35:01 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id e1so6008032pgj.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 08:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=kDXNvE+7gQdvUyVWPr7A9XMzGIYNEQ+LfNsblj+ZWek=;
 b=vTvpGo2OLw4l8Jnj0vPAmEfIebxuUoeio9APO9DMxmvQimFyoIgylaWfwsZwSz84Xv
 kuRe/U52CxAJmB+CH3l9oKbolvj9fEitA3eCSdFRGX2NGNHiKamS2A1IQ/FUTU5j3yH3
 ZRBQmuoC1kdPnJ/Nb8GbMd+d5UchEprrIavUBsjqShBrzB/F+WRT2q5swgYha+6wOGcc
 nAuU7bN3i2g0eICLeFrtiaMmNDV3/Nkfue77Qfgcm5TiU/Dn7T53d63hQXpaCvrAR74C
 0IqEdlPySSgKjnPG9oEWpg53Bm4j2CmyhCkHorH6bJJl7uI9g5WCTP7w+QoP7Kxi9NEb
 grVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=kDXNvE+7gQdvUyVWPr7A9XMzGIYNEQ+LfNsblj+ZWek=;
 b=LhalfVSyqb4z1Bo44YVdst9TDohkjb20wZrB0CU1SiGkXcUzU4IOBIT9l30ClXyN1n
 3CD5NUJTI+8XuTcriRWCXcNe4prcHhGOU9Bga2d6+vSStSyhRbX5DqFanMZhySBHQsD4
 GLvwVAG+7HbR/wV+AMSZo/v8dSr+Hp05Lr3j1usxIo1/roHUyeAvU61yeh94QD3AP88O
 xaCV0VwUJEOQXfIhdBb6BRF4OtP3T6TO5Fw7aFtE1aMxfCZ2OKl4d0ujJJafwx3GQT+S
 fawyCyHhYoRUErMG023rJmjwwY0WMmPCgdT2yRcW1y7IYN/eIdJygNNgvuI9N4+9aYJ/
 R4eA==
X-Gm-Message-State: APjAAAUDBxd3nhYR5sbaGnrSbwcog3kJFTvFvFYpwqKfSo+HdvFgkhj3
 Tuz9KpsEy2pRirbJmdBzzas=
X-Google-Smtp-Source: APXvYqwcs4NyECZf3Wfa9SDJOWplX35s7XDkuU1uPT6rNnsWEpGvNyRuAFutrA9fwSERCNVxpOfJvg==
X-Received: by 2002:aa7:9519:: with SMTP id b25mr17116157pfp.104.1570808100872; 
 Fri, 11 Oct 2019 08:35:00 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id o60sm13296207pje.21.2019.10.11.08.35.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Oct 2019 08:35:00 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: alexander.h.duyck@linux.intel.com, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com
Date: Fri, 11 Oct 2019 08:34:59 -0700
Message-ID: <20191011153459.22313.17985.stgit@localhost.localdomain>
In-Reply-To: <20191011153219.22313.60179.stgit@localhost.localdomain>
References: <20191011153219.22313.60179.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue PATCH v2 2/2] e1000e: Drop
 unnecessary __E1000_DOWN bit twiddling
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
Cc: netdev@vger.kernel.org, zdai@us.ibm.com, zdai@linux.vnet.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Duyck <alexander.h.duyck@linux.intel.com>

Since we no longer check for __E1000_DOWN in e1000e_close we can drop the
spot where we were restoring the bit. This saves us a bit of unnecessary
complexity.

Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c |    7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index db1591eef28e..c31259dde78d 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -7409,15 +7409,13 @@ static void e1000_remove(struct pci_dev *pdev)
 {
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct e1000_adapter *adapter = netdev_priv(netdev);
-	bool down = test_bit(__E1000_DOWN, &adapter->state);
 
 	e1000e_ptp_remove(adapter);
 
 	/* The timers may be rescheduled, so explicitly disable them
 	 * from being rescheduled.
 	 */
-	if (!down)
-		set_bit(__E1000_DOWN, &adapter->state);
+	set_bit(__E1000_DOWN, &adapter->state);
 	del_timer_sync(&adapter->phy_info_timer);
 
 	cancel_work_sync(&adapter->reset_task);
@@ -7437,9 +7435,6 @@ static void e1000_remove(struct pci_dev *pdev)
 		}
 	}
 
-	/* Don't lie to e1000_close() down the road. */
-	if (!down)
-		clear_bit(__E1000_DOWN, &adapter->state);
 	unregister_netdev(netdev);
 
 	if (pci_dev_run_wake(pdev))

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
