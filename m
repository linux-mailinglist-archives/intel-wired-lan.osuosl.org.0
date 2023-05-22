Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7FA70BB8C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 13:18:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 618D441139;
	Mon, 22 May 2023 11:18:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 618D441139
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684754293;
	bh=sKomZ5qumzjVietmdKjyTPZY1K5Cy1B0/XDYVPm6kqg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tK0V01BR1MiT4LG8qNYI19U410oR1KtDHH3MPtG7Hw8CUnxfdApJT0Ey87SKLP/eG
	 mVpWnHZUoIdJdbn9XSgV4gZktTxLpMqdGu4P8WxkA7HKpsUzCyrkX7GFD6CNnORIgh
	 d9JycIesl4TT1TCvyCqbqUTF0wfdTZmOZKGJo8nN36si4mtybcLiUWtTgISOZtVhuS
	 Xpt/dnhYydtnkrqCn2Fbb8QB3EwxtzTwhl7M5wrO5fsuaKyDAFFJFDKYB2Jus9XtnN
	 f7DWjL6ipaT/h4poIHfYxY9Sr4W5sUD+2B8ceKIlsVd1eVev3+9YmhcRbObB/oPFT7
	 tGdO+OvRj3pKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HphcOkTGvEAD; Mon, 22 May 2023 11:18:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 27A264056B;
	Mon, 22 May 2023 11:18:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27A264056B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B6581BF39C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 11:17:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E6568418A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 11:17:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6568418A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8rHMVhZOPmZn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 11:17:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02E59415FB
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 02E59415FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 11:17:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="416354686"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="416354686"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 04:17:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="703466638"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="703466638"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga002.jf.intel.com with ESMTP; 22 May 2023 04:17:53 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 May 2023 13:17:47 +0200
Message-Id: <20230522111748.65089-4-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230522111748.65089-1-kamil.maziarz@intel.com>
References: <20230522111748.65089-1-kamil.maziarz@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684754276; x=1716290276;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O+Hyrv+5rM2wc2vJGdGzQrLYcZjGudy1LOwK62asp/M=;
 b=Hx5xPuJOI6iZ1QlxegAyDc1JDHCJVEJkSay83uXqdkv2OdHh7CSQIttz
 /YW6dIhb0FfJ7T5xyIWPTxBHtLzJJ8+0zGjtVA6v5D+huNWgwu2WNVyPa
 qkgqi3X6KWmkV345RsAxugdvv/2AwT6lyW+1C6HwRmY8hhNWc0IeOVSnc
 oM1vC1o3266v4PlIIQ33/OttNPMOQTXWCtgJmycabYIdzXzywkiOevIcu
 B3yH7KK9qCrKR2qqslZ5XCNy1yDQW4zBDa8AG4OiNqJfWjw8Gj8QzareW
 j6CV9Mj6w5IE/vFkZd6MWJDp29oa7bG3j5hvwJzQ+5BMZOWa4+8Pf0r20
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hx5xPuJO
Subject: [Intel-wired-lan] [PATCH iwl-net v8 3/4] Revert "iavf: Detach
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

Currently callbacks such as iavf_change_mtu() wait for the reset.
If the reset fails to acquire the rtnl_lock, they schedule the netdev
update for later while continuing the reset flow. Operations like MTU
changes are performed under the rtnl_lock. Therefore, when the operation
finishes, another callback that uses rtnl_lock can start.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
v1->v7: no changes
v8: changed commit msg
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index ef7b190ddda1..3d439f9ac97b 100644
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
