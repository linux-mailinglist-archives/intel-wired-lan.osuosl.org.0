Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 762D9722A0B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 16:58:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6EE4821FD;
	Mon,  5 Jun 2023 14:58:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6EE4821FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685977082;
	bh=sj7RO9k0C03Q7bfbSOg83biF8fcZGF/Bz8HaE5Fszi8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JCmn4s+rcbfxtckRxgOS7Ymfuj1msvuAGDr3ycgFa6qyC6jldyeyqd9XttOG1I4So
	 5bs+ywTdCVTBFTbWUv4gyrtGCetbYrAFifOTVEjuYfBArDCHXpRH2VJ942vIZBPoDO
	 pevtqBObd7g927MuIIQF++UO9XaU2VjNetpn4G5Fvvz3GT658iOXJ58upm+Rhp4HOZ
	 3NV2L4dhS1v9PN4naix7R00cICSkYYENibIKv3qpdIyIP4pFoiB13jdUzSCGslkJVA
	 OfF8UdIfHmdopbyB1y3VZhqi6E99TLBFnXYZx4TZKE3Z5t99+5slNyfpSv2aL12FPb
	 qoAzf0g4iOeyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id seRqKdQVQI3R; Mon,  5 Jun 2023 14:58:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DDFEB82010;
	Mon,  5 Jun 2023 14:58:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDFEB82010
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A39A41BF21A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 14:57:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 88DC5415C8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 14:57:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88DC5415C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kJsTYXsEupoN for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 14:57:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93B3E415C0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 93B3E415C0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 14:57:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="358836908"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="358836908"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 07:57:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="778589821"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="778589821"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by fmsmga004.fm.intel.com with ESMTP; 05 Jun 2023 07:57:49 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 10:52:23 -0400
Message-Id: <20230605145226.1222225-3-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230605145226.1222225-1-mateusz.palczewski@intel.com>
References: <20230605145226.1222225-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685977071; x=1717513071;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7V7fcZFRvsbsKoiClIS5k8Yyh7FzWor6UiNyqWAYgyY=;
 b=ThaQEkl63kp0TO4ZSrLEke9LD59tAtGrMlZSlYi8KgOgp04srF1xk2xe
 cuRc3sE6QBqVp4OeEwLPBANoigwiagB1W7TLFg9MruBND2uTt3lUuCRPe
 Ci6eCju7z/Ug6WqnHfQVJ3NUW6gnp/Y9tDJXn2THEtEQhQc9is3/B2CyU
 Q8kTAbLGVuCkONHfoG/RXldFJPFP4uewayDonsqKOvnAXXozb0qho7CMI
 axrI8o9w+9CmsGJlP48FNRy9thZEla1AM1v8nleMlS+z44mj2+q1rikZi
 fZBDtST65Q1pPtJuCBt/F4z3JSCRPawqmY3Df50MswhfMkIHclub+CMWZ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ThaQEkl6
Subject: [Intel-wired-lan] [PATCH iwl-net v10 2/5] Revert "iavf: Detach
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
Cc: ivecera@redhat.com
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
v9->v10: no changes
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index c815ef87e27d..6945f462c56e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2991,11 +2991,6 @@ static void iavf_reset_task(struct work_struct *work)
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
@@ -3003,7 +2998,7 @@ static void iavf_reset_task(struct work_struct *work)
 		if (adapter->state != __IAVF_REMOVE)
 			queue_work(adapter->wq, &adapter->reset_task);
 
-		goto reset_finish;
+		return;
 	}
 
 	while (!mutex_trylock(&adapter->client_lock))
@@ -3206,7 +3201,7 @@ static void iavf_reset_task(struct work_struct *work)
 	mutex_unlock(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
 
-	goto reset_finish;
+	return;
 reset_err:
 	if (running) {
 		set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
@@ -3227,10 +3222,6 @@ static void iavf_reset_task(struct work_struct *work)
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
