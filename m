Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B93714888
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 May 2023 13:31:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BF8761287;
	Mon, 29 May 2023 11:31:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BF8761287
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685359902;
	bh=KtwINRcFdfs9g11tvTRHrZmDfYti3zy5vHYd9vlRZQE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VRS8kGj6dRS7uyyfVRqWHbEBwz+5m98EL2YtrOsPnQPowb1klihNKrp/X3pKcX97G
	 Ch6Hkiv3peFkErrVtv2Yky7osFtnFLTBPQGyLM/7NOZCDIa8cptnVF3zfbxUZ8ie6s
	 UZHtNPosOJZhKi5Q3ROTszWK2/SK3MNI5dr8p+gmnvskyRMk5sMUjd9AsZOlplDfbA
	 hWuCRYoMJR8YHJ3X+HJswUHFjt+OHfcbP178lpmEqpnQFO2i0NVWRwPfWMkWJ1UpCE
	 bPFmhbQ/jEZf1UM11v0jqH0/udIPms3SR4pGUy/7V2Z7EQ+6sg+6J6tcII/IQodHnz
	 /4kHffxNdfWnQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JJ82zQ-Ly6Ht; Mon, 29 May 2023 11:31:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E51086128C;
	Mon, 29 May 2023 11:31:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E51086128C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 502281BF593
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 11:31:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 282B861287
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 11:31:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 282B861287
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ITTED5265L1y for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 May 2023 11:31:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 811F161289
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 811F161289
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 11:31:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="441041648"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="441041648"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 04:31:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="880358695"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="880358695"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by orsmga005.jf.intel.com with ESMTP; 29 May 2023 04:31:25 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 29 May 2023 07:25:58 -0400
Message-Id: <20230529112558.893997-5-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230529112558.893997-1-mateusz.palczewski@intel.com>
References: <20230529112558.893997-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685359887; x=1716895887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FSBzNS7ftjj66o3m91o8reJQz0NWpzIQxk6kRAFdrP8=;
 b=clooDdHo5xcvkM54gG7ajO8bETWs8LdDpG1nAV9rYXiYH7TfZ4HUGhM5
 R6JxvU+Xh/G295crCBrg+fsCRVHH3qkevlidlTTgQVVHl7keH0s8jxTgs
 5e8F/x2mm6nidxyZI1EtjuFStqyFPqf0ApEJG6fOMNywQc4EL0eR02DoZ
 6Ut+S2oc7IM0ZO5MTVVlUzMpLohEAm412b+Hd9aOVrLx1Cad4fvAzo3bo
 4GRRE10H8L0XBJA/wPe+O65dhYLPQIzKAnN/dKZOdTNMPsFcse2gZmmV0
 24aZfT6tLnsSf53t6jd1aAvelTpufrrRtM2+gFt9FIrhVdae6o3YkdL2C
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=clooDdHo
Subject: [Intel-wired-lan] [PATCH iwl-net v9 4/4] Revert "iavf: Do not
 restart Tx queues after reset task failure"
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marcin Szycik <marcin.szycik@linux.intel.com>

This reverts commit 08f1c147b7265245d67321585c68a27e990e0c4b.

Netdev is no longer being detached during reset, so this fix can be
reverted. We leave the removal of "hacky" IFF_UP flag update.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
v1->v8: no changes
v9: we leave the removal of "hacky" IFF_UP update that was implemented in this patch
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 8e065dc34c92..e44c50a0ccd9 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3081,11 +3081,6 @@ static void iavf_reset_task(struct work_struct *work)
 		iavf_disable_vf(adapter);
 		mutex_unlock(&adapter->client_lock);
 		mutex_unlock(&adapter->crit_lock);
-		if (netif_running(netdev)) {
-			rtnl_lock();
-			dev_close(netdev);
-			rtnl_unlock();
-		}
 		return; /* Do not attempt to reinit. It's dead, Jim. */
 	}
 
@@ -3236,16 +3231,6 @@ static void iavf_reset_task(struct work_struct *work)
 
 	mutex_unlock(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
-
-	if (netif_running(netdev)) {
-		/* Close device to ensure that Tx queues will not be started
-		 * during netif_device_attach() at the end of the reset task.
-		 */
-		rtnl_lock();
-		dev_close(netdev);
-		rtnl_unlock();
-	}
-
 	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
 }
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
