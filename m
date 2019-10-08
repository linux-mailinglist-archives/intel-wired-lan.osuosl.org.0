Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF9BD02B2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2019 23:16:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 872CE864AD;
	Tue,  8 Oct 2019 21:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lcVa4IrtS_QN; Tue,  8 Oct 2019 21:16:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B3BF8864D1;
	Tue,  8 Oct 2019 21:16:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B6CD1BF28E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 21:16:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 67ED786450
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 21:16:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AY676-DHFip4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2019 21:16:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BCACC85F8E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 21:16:46 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id p30so8906158pgl.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Oct 2019 14:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=TxlfhWbpcunGBzzfNw2ijs+JMA3LBzP7XlcoEFlBGz0=;
 b=sz3ldgI+AoCabCy0dt3u3e14oPscxWCZpcM6rQVoSGDhvGWZLTUwsYUA+7692YcXB+
 ul6g+wSHsMK156ht3S5CkAijSXWxko9CHurkCHjDUVwqQ0iJiLGIKvpqJ57iacQ/Ol7a
 ClBzUfhMVKUYYyi7uoujOFW0J+1NIZhxC9eSJQr/6MpceQYF6pSjyoIdiEsDWUfvNvda
 KJ5unsSokihuredX8hza2QpuyROWkAFt+4YiibrnQS8ANr2UzGBursDhOzW3xJ/4THZo
 o+xbicWC9mclAjfzyTLwvgD2BAedY/Mh0zuekN1x6r1E2Wh9m5wN+oQBJUShftokMTyD
 ttzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=TxlfhWbpcunGBzzfNw2ijs+JMA3LBzP7XlcoEFlBGz0=;
 b=JdDwjcU66ZturKBchFFzfbZcSquSLp2BNevwUHbQrGE+ycZoGlHad2MblRWcU7HU4+
 iEH4XSjQJvNsCCoX3jc50lJF9E7iWn0x4bqhP6O4IjzeuSRR4b+bIG5xCjad5gfpjPXQ
 I8BSDNMkRS6utFj7bUMckyjKnJ3y0/9EsR0qxsTVlqgH91c0d1c+efS0FTngwfOOGFWK
 iRVBDl9JffiXS2ekltzBzLFy91MvOEHTkebPfvFs+8k1BwK5BHHg9ieM72aS3wBtYFQp
 6ZpDIdE4GSIFG7wFW4/wymEpl3QmPmgHmxNmsh38kZwd3tJBe8Uh2aTOrRFoO4iOM1QB
 czdw==
X-Gm-Message-State: APjAAAVAOzz2M7CvAvUxDEyEhrXCFuLHvw8nxEdHaoNr0J3jEToiqg+l
 ObJE0C+voyxdM1FbXmRUAOk=
X-Google-Smtp-Source: APXvYqxvHpDH5MjJEeTSJwoYowxlOtitxd2+6Jh9UJDazvULERueDJfKAg7c3G8DPZWrwHmWXMS0Sw==
X-Received: by 2002:a17:90a:7142:: with SMTP id
 g2mr8323303pjs.36.1570569406178; 
 Tue, 08 Oct 2019 14:16:46 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id s73sm102895pjb.15.2019.10.08.14.16.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 08 Oct 2019 14:16:45 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: alexander.h.duyck@linux.intel.com, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com
Date: Tue, 08 Oct 2019 14:16:45 -0700
Message-ID: <20191008211644.4575.90683.stgit@localhost.localdomain>
In-Reply-To: <20191008210639.4575.44144.stgit@localhost.localdomain>
References: <20191008210639.4575.44144.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue PATCH 2/2] e1000e: Drop unnecessary
 __E1000_DOWN bit twiddling
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
index 8b4e589aca36..1e4f69a0f0aa 100644
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
