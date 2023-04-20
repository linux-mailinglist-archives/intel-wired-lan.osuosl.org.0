Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 132EB6E983A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 17:23:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3F6E6FF23;
	Thu, 20 Apr 2023 15:23:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3F6E6FF23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682004200;
	bh=U+p02Q/VOn26H4Di9tDmlbHO3AIBEJWLrjeP7eZznI4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=p8goP47sOe1KAPGS37yA/ZOXFpwZYrBQ5gs7P2iTgVU6qv6fZYYxEEbBJOQci+TZH
	 j55hRwjS+0FtizRdtvKCcVfUa6GVZniSPmUSi6R3AYAW6t4Hyrz9OfKvCkXQsLmos8
	 mlREZgavX2EYY3sSlfq60gZC7leRZOH/jwSfjrV9VmoG1XsJ/NCpG6YwHl2dclgq/c
	 t9o16o2FSrY1buzbQoDKJoXXS8RIeCWQ7FpmYKr3lwJOkdmU/st/Kg7tJ8h1r4rf7t
	 E/5zNOf8n4KfLK5MdMy19TOuTuV7l10sEDt+97DKln3JjRPbg63WvkaPonQ3VC+5vo
	 3PclGXrrArkyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id myCMgOxKaeS7; Thu, 20 Apr 2023 15:23:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D23761106;
	Thu, 20 Apr 2023 15:23:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D23761106
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D2FCF1BF836
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 14:10:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A9621427BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 14:10:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9621427BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ffho_uoNZCuP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 14:10:36 +0000 (UTC)
X-Greylist: delayed 00:07:46 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2BAB427BB
Received: from azure-sdnproxy.icoremail.net (azure-sdnproxy.icoremail.net
 [207.46.229.174])
 by smtp4.osuosl.org (Postfix) with ESMTP id A2BAB427BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 14:10:35 +0000 (UTC)
Received: from ubuntu.localdomain (unknown [218.12.18.95])
 by mail-app3 (Coremail) with SMTP id cC_KCgDn7w_XRUFkQSOLAA--.3844S2;
 Thu, 20 Apr 2023 22:02:12 +0800 (CST)
From: Duoming Zhou <duoming@zju.edu.cn>
To: netdev@vger.kernel.org
Date: Thu, 20 Apr 2023 22:01:57 +0800
Message-Id: <20230420140157.22416-1-duoming@zju.edu.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: cC_KCgDn7w_XRUFkQSOLAA--.3844S2
X-Coremail-Antispam: 1UD129KBjvJXoW7Ar17Xr4fWF48CF17Cw1rZwb_yoW8Ar13p3
 ySva4fJF10qr4YvFyxXr1kJFyrGas7ArWkKF1xCw4ru3Z7ArnYgr9Ykry0gFyrGFZ8ZF43
 AF1F93y5CwnxAwUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUkE14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
 JVWxJr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
 CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
 2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJV
 W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
 Y2ka0xkIwI1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4
 xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43
 MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I
 0E14v26r1j6r4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWU
 JVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r1j6r4UYxBIdaVFxhVjvjDU0xZFpf9x0JUdHU
 DUUUUU=
X-CM-SenderInfo: qssqjiasttq6lmxovvfxof0/1tbiAwMLAWRAA1s8WwAwsh
X-Mailman-Approved-At: Thu, 20 Apr 2023 15:23:14 +0000
Subject: [Intel-wired-lan] [PATCH net] ethernet: ixgb: fix use after free
 bugs caused by circular dependency problem
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com,
 Duoming Zhou <duoming@zju.edu.cn>, anthony.l.nguyen@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The watchdog_timer can schedule tx_timeout_task and tx_timeout_task
can also arm watchdog_timer. The process is shown below:

----------- timer schedules work ------------
ixgb_watchdog() //timer handler
  schedule_work(&adapter->tx_timeout_task)

----------- work arms timer ------------
ixgb_tx_timeout_task() //workqueue callback function
  ixgb_up()
    mod_timer(&adapter->watchdog_timer,...)

When ixgb device is detaching, the timer and workqueue
could still be rearmed. The process is shown below:

  (cleanup routine)           |  (timer and workqueue routine)
ixgb_remove()                 |
                              | ixgb_tx_timeout_task() //workqueue
                              |   ixgb_up()
                              |     mod_timer()
  cancel_work_sync()          |
  free_netdev(netdev) //FREE  | ixgb_watchdog() //timer
                              |   netif_carrier_ok(netdev) //USE

This patch adds timer_shutdown_sync() in ixgb_remove(), which
could prevent rearming of the timer from the workqueue.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Duoming Zhou <duoming@zju.edu.cn>
---
 drivers/net/ethernet/intel/ixgb/ixgb_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ixgb/ixgb_main.c b/drivers/net/ethernet/intel/ixgb/ixgb_main.c
index b4d47e7a76c..6ce3601904b 100644
--- a/drivers/net/ethernet/intel/ixgb/ixgb_main.c
+++ b/drivers/net/ethernet/intel/ixgb/ixgb_main.c
@@ -516,6 +516,7 @@ ixgb_remove(struct pci_dev *pdev)
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct ixgb_adapter *adapter = netdev_priv(netdev);
 
+	timer_shutdown_sync(&adapter->watchdog_timer);
 	cancel_work_sync(&adapter->tx_timeout_task);
 
 	unregister_netdev(netdev);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
