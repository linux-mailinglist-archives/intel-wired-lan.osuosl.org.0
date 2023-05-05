Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B356F8022
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 May 2023 11:38:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D099616E3;
	Fri,  5 May 2023 09:38:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D099616E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683279508;
	bh=9i7iF4f6aum0TC9lc24R3y7NuRLkF7qRqR2QBfzwKMk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2xqjdyhQJ0hcrH/0QGI+5aH9k0C4+dHhL0LzCrBtRefb4fhSIZ9/JObtTRGQkccP+
	 W5Ifb2O/BlsVhYX+KBvBkSQU9JCJRa4kPqEQBUvfdMwc/9bhQ1//aQftT3euEAFL7S
	 qrRwEJ2qaI+EiNs4R812ZxSd6ONY2yTvMerBpeDksTnN+yeRXJKkbGA+aKiNNH8MG+
	 cU9qELnJXFlH0pOKlrIc+wN7r+b+Z696rXIK5HK6bR8s/qpxfYzHMOgS0Kgj/dZvEz
	 2zmXwxiidEfcYmMUx5HMjT0om+ShV9r1igt0RV0MS4jd8+0piDE4JXo5z4uBia6ZFT
	 JaIUc/9st4MNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jBSHUwxArvs0; Fri,  5 May 2023 09:38:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 336CD616CE;
	Fri,  5 May 2023 09:38:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 336CD616CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B2E601BF868
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 09:38:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A06C541D9F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 09:38:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A06C541D9F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XNrWfk2v37Wf for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 May 2023 09:38:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D834E41DA0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D834E41DA0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 09:38:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="346641578"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="346641578"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 02:38:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="821600009"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="821600009"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga004.jf.intel.com with ESMTP; 05 May 2023 02:37:59 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  5 May 2023 11:37:48 +0200
Message-Id: <20230505093749.218839-4-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230505093749.218839-1-kamil.maziarz@intel.com>
References: <20230505093749.218839-1-kamil.maziarz@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683279492; x=1714815492;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=686JwHobIvinTFWeKbX8o6PCZVV7FRF7XF6J0MA4Hzs=;
 b=davPetMDIvm1xO1FOAbC1VnIuyzCc8rTIEoyROOTqnH0RbjCBgxS7XvX
 qbsRnxM7OU/dS+z1GGzUNAm5gYofBD2npURuMN2cFCZXYqRsMN1k379RH
 6bXtJcqCw85zpZjdx1y7ziOfXyW8ufqDECv1QXWLi3W1Gzo2CVCMu821Z
 HI4isAlAtrsKPg3fdTGk/ApvZ9s1341WpaEGL3djxqY6c/WIjjgdpj5z2
 S4uDBBzio3ZlJEHwNFaEhyLqdD1gBaIjdM4842pY9y05Tqb37z/fq/GuZ
 dXQ4Y2tBPemFsokiqgmtye7oCQmk9V7gZ/leLzYURtlFVXvgJylnHTPAx
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=davPetMD
Subject: [Intel-wired-lan] [PATCH iwl-net v5 3/4] Revert "iavf: Detach
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
v1->v5: no changes
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index c62466c0baf0..a6c8463c1876 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3015,11 +3015,6 @@ static void iavf_reset_task(struct work_struct *work)
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
@@ -3027,7 +3022,7 @@ static void iavf_reset_task(struct work_struct *work)
 		if (adapter->state != __IAVF_REMOVE)
 			queue_work(adapter->wq, &adapter->reset_task);
 
-		goto reset_finish;
+		return;
 	}
 
 	while (!mutex_trylock(&adapter->client_lock))
@@ -3230,7 +3225,7 @@ static void iavf_reset_task(struct work_struct *work)
 	mutex_unlock(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
 
-	goto reset_finish;
+	return;
 reset_err:
 	if (running) {
 		set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
@@ -3251,10 +3246,6 @@ static void iavf_reset_task(struct work_struct *work)
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
