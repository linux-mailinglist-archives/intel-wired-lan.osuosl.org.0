Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DA06E9565
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 15:08:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 216C16FF06;
	Thu, 20 Apr 2023 13:08:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 216C16FF06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681996117;
	bh=UJH7sl0g4586BvXWLaxukki5mm5BioFbVfP21YHYBds=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cAzs3pTPyZeOHvk63nZH5s1Y56tv3Z1HQN5mZrRMR6pE6vssnKI7vEYOm71ueZbtM
	 /P0bxzL2ooD8TUGCY38jendRVOQeEHjGBmVNNVn7YsRrVVp8DeD+YaIUjbAH9HG6MK
	 PRHEuC4yVWw1ad9/e7Kyo4Dzuf9kclPJ9PWI3ks3/6OcUiMdKF+sobzvYEwPpAje1p
	 kLRb7axvwUK3YiJi0EPIP3Gj2KNHMoqBHtEUx+k1j8/4jgFewE04kPytMvVL3vE46O
	 LmucnNpk7Y5Ed4ly71RuIHP9+FiP/34B/Tt7cerAsqevZzaBeMVUbysM2WqAMO/vCz
	 HO4STQ2a72Wzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LxRS8_X7L68F; Thu, 20 Apr 2023 13:08:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0216D605E3;
	Thu, 20 Apr 2023 13:08:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0216D605E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A7961BF370
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 13:08:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 213F1841F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 13:08:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 213F1841F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nhmZf_Yr9ixA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 13:08:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCEA684200
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DCEA684200
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 13:08:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="326057666"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="326057666"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 06:08:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="816009340"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="816009340"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga004.jf.intel.com with ESMTP; 20 Apr 2023 06:08:19 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Apr 2023 15:08:09 +0200
Message-Id: <20230420130810.214307-4-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230420130810.214307-1-kamil.maziarz@intel.com>
References: <20230420130810.214307-1-kamil.maziarz@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681996100; x=1713532100;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AnybpYiAs2MDRhJU9BjgKbQ+RVqKMlK6d3bPhMJMHXQ=;
 b=RiNezZkIM0B0pwwaVnAAXxNNjHeBbGpg3NmLhxM+/CuXmpyWkgnxMUNs
 vWVD3mp8IQy0/uyXrTa8vie+Xbbz0jTO1Tk8/Bn2TziNaoxKltLgG5wAl
 uXagX5mgv++oX/54lMgkyaUHdg6FpxguK8dDseztz0tfy5MdrcvkHmCXj
 nKqBOLiJam8gljzR/y3CzoVDTgwMQELZ/tKfuB/12eWK4dVZZeUvLZtP2
 MLpWsv4iFGQs9nW2IkXOSL8atY9MnZ9iwGaKOhsNuW2OwYXm4s3Oq3pAo
 D8h5nbYECE8o94QQDhM89mIzttx/sFxPSPbBCMVYrOUQUT9jfPXmkk3je
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RiNezZkI
Subject: [Intel-wired-lan] [PATCH net v4 3/4] Revert "iavf: Detach device
 during reset task"
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
Cc: Kamil Maziarz <kamil.maziarz@intel.com>
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

Currently callbacks such as iavf_change_mtu() wait for reset and don't try
to take rtnl_lock if they already run under rtnl_lock (flag
IAVF_FLAG_RTNL_LOCK_TAKEN), therefore rtnl_lock will be released when reset
finishes, and only then another callback which uses rtnl_lock will be able
to start.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
v1->v4: no changes
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 330fcd7a6c41..3fecff35396c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3017,11 +3017,6 @@ static void iavf_reset_task(struct work_struct *work)
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
@@ -3029,7 +3024,7 @@ static void iavf_reset_task(struct work_struct *work)
 		if (adapter->state != __IAVF_REMOVE)
 			queue_work(adapter->wq, &adapter->reset_task);
 
-		goto reset_finish;
+		return;
 	}
 
 	while (!mutex_trylock(&adapter->client_lock))
@@ -3232,7 +3227,7 @@ static void iavf_reset_task(struct work_struct *work)
 	mutex_unlock(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
 
-	goto reset_finish;
+	return;
 reset_err:
 	if (running) {
 		set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
@@ -3253,10 +3248,6 @@ static void iavf_reset_task(struct work_struct *work)
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
