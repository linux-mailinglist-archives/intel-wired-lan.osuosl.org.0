Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEAC6FEF79
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 May 2023 11:57:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6604E700DF;
	Thu, 11 May 2023 09:57:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6604E700DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683799041;
	bh=ByD9Jns8sPPcUGLxuNm8xeBIHB6saIyHUYhY1WOE0FY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LG5es1zVOH06c8uKq3KQIrvsA8ZDylPaUfiraIOQkvP46B1ahUDrexxBjcE6oIkih
	 tFOhSlPgBV9Wqb+kZIVfDxufyNimlo7ilShTgGpTVaUIJ3BBXJgs7BoOZPxywgZDCS
	 U0/iOAE2G5BZwjnVgJ8cLjQ9cic3/Bs4PYFjqo+ns6ZACm4qL7s7Eynhu4hAOCAEHd
	 hQayBGyiBMfeVKoLE0OdHWDLvIoHAr/4XjNvGJXXGaNhqWn/BucQvqD4rFNu3D+WUk
	 1wglYtPz7557KZYkxfqhF7o9W5kOr784QfYN+X9Ul8ELZurDF8HbNH665BEG0PcJFU
	 XDePA8jqGSOng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i8i12ZMWiQUp; Thu, 11 May 2023 09:57:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37714700C4;
	Thu, 11 May 2023 09:57:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37714700C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 284601BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 09:57:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA65742BE3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 09:57:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA65742BE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s0ypN2kreyoh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 May 2023 09:57:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 325A040904
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 325A040904
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 09:57:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="436785532"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="436785532"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 02:57:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="764677396"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="764677396"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by fmsmga008.fm.intel.com with ESMTP; 11 May 2023 02:57:02 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 May 2023 11:56:27 +0200
Message-Id: <20230511095628.17907-4-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230511095628.17907-1-kamil.maziarz@intel.com>
References: <20230511095628.17907-1-kamil.maziarz@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683799023; x=1715335023;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jMC8L8/VSWnyiwIXbDfS97hn4t2HPHAn6WHhpzxhuFI=;
 b=Cq8UeVQ7fG2cKb4dK0akgw7eWkJTHOZFHUTix7rAEKgwpVmSdIThZEMO
 xZBFmuiupSebplCdlPwcTLh0AhXg9t6Vd37gQ7N23aBbX+IHD9mfTnqWC
 IQAp1n9Q20X+h/IfpFmAjanWkDHYaohTrqzVuePEQ7rOHJTu9Ui0KTsUH
 Q64alEHW7k78V82oF+UttUC+6FIfg+sGemBMqbcU4u+BpFygJObpdkSbK
 JK23SlKbTjn6/cywU5HpevSeULk6Xq43/iHqTa6hq1eRwcSQnjKDpdGDz
 EV8hixeXh4XCSYmiiVYywzigXFkgMO5+5JnGyTXCqbzoL+b2fNzvhK3Ts
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cq8UeVQ7
Subject: [Intel-wired-lan] [PATCH iwl-net v6 3/4] Revert "iavf: Detach
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
v1->v6: no changes
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index ba9dc64220ce..9cce67ffecdd 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3019,11 +3019,6 @@ static void iavf_reset_task(struct work_struct *work)
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
@@ -3031,7 +3026,7 @@ static void iavf_reset_task(struct work_struct *work)
 		if (adapter->state != __IAVF_REMOVE)
 			queue_work(adapter->wq, &adapter->reset_task);
 
-		goto reset_finish;
+		return;
 	}
 
 	while (!mutex_trylock(&adapter->client_lock))
@@ -3234,7 +3229,7 @@ static void iavf_reset_task(struct work_struct *work)
 	mutex_unlock(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
 
-	goto reset_finish;
+	return;
 reset_err:
 	if (running) {
 		set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
@@ -3255,10 +3250,6 @@ static void iavf_reset_task(struct work_struct *work)
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
