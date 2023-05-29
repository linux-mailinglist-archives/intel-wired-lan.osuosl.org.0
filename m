Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9B5714887
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 May 2023 13:31:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FA5861298;
	Mon, 29 May 2023 11:31:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0FA5861298
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685359898;
	bh=9EC3Z6IhQW+IMiG/WUDDFccxy1jV3VsJMM+ZHTiUuAQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AdSeMnLWA6bBndtNNDMF8hHWsCyN0AbF6k4z3MzFVaTE7qzJ4yBzsol+LxsIOFDoN
	 kYpC7IYrhjj0PDjgvWhXwHdmklDIZoZNy7NCCITKvbg5KtcB7ugQq/ELpjYThjoJxv
	 OGeQxfJwVjNqrlNRmKHpeoB/54fbQ0j3UEG+nhpwRfSAJIY8AqcklcZw8O/RA6Oj3V
	 MPiJ3RbyRS948JtlPn0Zh9uioVaOtWl1efL8nEaaVaOsDbSbeXHpVbnBPTb2hRyUPu
	 aokKFIaSfUHYXynYpplQmSVvPxSR7Px3+MVeoINFc6bvEmy6ZJ86Af9OhIqWEbAK7I
	 ohbH5/K5R/o0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zUJRlSdduCrw; Mon, 29 May 2023 11:31:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D170B6118D;
	Mon, 29 May 2023 11:31:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D170B6118D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 61F5E1BF593
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 11:31:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4380C612A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 11:31:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4380C612A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rpWYrGkk3WQK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 May 2023 11:31:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78AB36129E
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 78AB36129E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 May 2023 11:31:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="441041641"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="441041641"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 04:31:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="880358676"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="880358676"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by orsmga005.jf.intel.com with ESMTP; 29 May 2023 04:31:22 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 29 May 2023 07:25:57 -0400
Message-Id: <20230529112558.893997-4-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230529112558.893997-1-mateusz.palczewski@intel.com>
References: <20230529112558.893997-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685359884; x=1716895884;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Sm0gAp68JEb5T6rDJ/uTqG4n+8knmhI5XpgiWJV8nGg=;
 b=dNQDGfVSjtmBSPtEcsffH6VvKO585gqmPH8c8CCWL8zZho/GegrVE0WL
 6xt5JOmMIK3sUm5qlT6H9Zo0ZptfWUZ+Zlvd6d6eGrryZvS9SEaljJ6Nd
 lfZVvdHuEbydO7ouS3i8GsmYDUDuEIq/tB112UUODZk3kx+Fx/Xf3sZdN
 xSVptGCc5Bq2n+1M0ifVmOZuaF9ZT7cgNHpr+1YZyPhNm8pmPKf3ZP/MF
 0CoNjvo5M7NJYlCyZ4zKSeCNaKz/dEJC+xo/EG7gqJhvFvNihzqzU71jt
 VAiLNW8vaC7zPCRn5i1roJZ8c66CAfdcg3Jv6fcORi+pnxI4mzE/RkSkd
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dNQDGfVS
Subject: [Intel-wired-lan] [PATCH iwl-net v9 3/4] Revert "iavf: Detach
 device during reset task"
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

This reverts commit aa626da947e9cd30c4cf727493903e1adbb2c0a0.

Detaching device during reset was not fully fixing the rtnl locking issue,
as there could be a situation where callback was already in progress before
detaching netdev.

Furthermore, detaching netdevice causes TX timeouts if traffic is running.
To reproduce:

ip netns exec ns1 iperf3 -c $PEER_IP -t 600 --logfile /dev/null &
while :; do
        for i in 200 7000 400 5000 300 3000 ; do
		ip netns exec ns1 ip link set $VF1 mtu $i
                sleep 2
        done
        sleep 10
done

Currently, callbacks such as iavf_change_mtu() wait for the reset.
If the reset fails to acquire the rtnl_lock, they schedule the netdev
update for later while continuing the reset flow. Operations like MTU
changes are performed under the rtnl_lock. Therefore, when the operation
finishes, another callback that uses rtnl_lock can start.

Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
v1->v7: no changes
v8: changed commit msg
v9: no changes
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index a8c5ac21e8e7..8e065dc34c92 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3016,11 +3016,6 @@ static void iavf_reset_task(struct work_struct *work)
 	int i = 0, err;
 	bool running;
 
-	/* Detach interface to avoid subsequent NDO callbacks */
-	rtnl_lock();
-	netif_device_detach(netdev);
-	rtnl_unlock();
-
 	/* When device is being removed it doesn't make sense to run the reset
 	 * task, just return in such a case.
 	 */
@@ -3028,7 +3023,7 @@ static void iavf_reset_task(struct work_struct *work)
 		if (adapter->state != __IAVF_REMOVE)
 			queue_work(adapter->wq, &adapter->reset_task);
 
-		goto reset_finish;
+		return;
 	}
 
 	while (!mutex_trylock(&adapter->client_lock))
@@ -3231,7 +3226,7 @@ static void iavf_reset_task(struct work_struct *work)
 	mutex_unlock(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
 
-	goto reset_finish;
+	return;
 reset_err:
 	if (running) {
 		set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
@@ -3252,10 +3247,6 @@ static void iavf_reset_task(struct work_struct *work)
 	}
 
 	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
-reset_finish:
-	rtnl_lock();
-	netif_device_attach(netdev);
-	rtnl_unlock();
 }
 
 /**
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
