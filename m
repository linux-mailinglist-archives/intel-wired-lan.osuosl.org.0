Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8985658CD3A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Aug 2022 19:59:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20344605D5;
	Mon,  8 Aug 2022 17:59:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20344605D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659981543;
	bh=DO3Y3iwIoGfqGgS0L+QW9i4fx7t/EvalCJ0Pqphbjb4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3r+zAjyDepQfyeqYGyzZIac1E4936as558RZlEdWqPhBEHjO7uLNe2AYe35Nco2uw
	 u8ln0Wl7jMl33G6xooXvFSg6GHrY8V9AIAbQq70uZhfFiUB/DAgHWIebkS9MP99K/Z
	 9cUNeIR+bA4BO4sJOhpPzZkb6mub60UmCAQWdN3/XNV3Mp+Imc+jUs0KpjadLc5TgX
	 FzGsfKuIuEL3GQ7CToeHfY1RfCntmBUi3ik5AHOJh4oVWvc8Yj8zgeD94bwF04fg7v
	 1rHcovmkbo25MxqTWlQYmfh5QxjhDq42ps0X7p1Gcxv8xdjK7NVHrjXyiYQsqqStqj
	 tubbSV73TWkAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id By0JBb_gfF50; Mon,  8 Aug 2022 17:59:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3ED7605AF;
	Mon,  8 Aug 2022 17:59:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3ED7605AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5909B1BF3E1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 17:58:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 315F7404F7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 17:58:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 315F7404F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KqS83ozJABfX for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Aug 2022 17:58:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A759404F1
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0A759404F1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 17:58:55 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-418-R9LkVXhoN4url2WW2DAw_A-1; Mon, 08 Aug 2022 13:58:49 -0400
X-MC-Unique: R9LkVXhoN4url2WW2DAw_A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9B4311019DE1;
 Mon,  8 Aug 2022 17:58:48 +0000 (UTC)
Received: from p1.luc.com (unknown [10.40.194.142])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B4410C15BA1;
 Mon,  8 Aug 2022 17:58:46 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Mon,  8 Aug 2022 19:58:45 +0200
Message-Id: <20220808175845.484968-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1659981534;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=rKD32BoUZtJVmXJMy5BhMXR7sCS+Ype3RSG55JgauC4=;
 b=A5H92BSnUdkTH4QssmWsBZvxKI3n2JdZtzne8P4S6ezqLggk01NTm6gpN/MSJ0nmkVi3xW
 TvdnA3HaixpeioIgP9yF4woM3mxpsLGj0v5FIDZM/LwidvQgq9YadNZUjCmRrdFlu3fOX/
 KbSZfKgEw4OjU+SdnMX98NlhJpZHuwg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=A5H92BSn
Subject: [Intel-wired-lan] [PATCH net] iavf: Fix deadlock in initialization
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
Cc: "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Stefan Assmann <sassmann@kpanic.de>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix deadlock that occurs when iavf interface is a part of failover
configuration.

1. Mutex crit_lock is taken at the beginning of iavf_watchdog_task()
2. Function iavf_init_config_adapter() is called when adapter
   state is __IAVF_INIT_CONFIG_ADAPTER
3. iavf_init_config_adapter() calls register_netdevice() that emits
   NETDEV_REGISTER event
4. Notifier function failover_event() then calls
   net_failover_slave_register() that calls dev_open()
5. dev_open() calls iavf_open() that tries to take crit_lock in
   end-less loop

Stack trace:
...
[  790.251876]  usleep_range_state+0x5b/0x80
[  790.252547]  iavf_open+0x37/0x1d0 [iavf]
[  790.253139]  __dev_open+0xcd/0x160
[  790.253699]  dev_open+0x47/0x90
[  790.254323]  net_failover_slave_register+0x122/0x220 [net_failover]
[  790.255213]  failover_slave_register.part.7+0xd2/0x180 [failover]
[  790.256050]  failover_event+0x122/0x1ab [failover]
[  790.256821]  notifier_call_chain+0x47/0x70
[  790.257510]  register_netdevice+0x20f/0x550
[  790.258263]  iavf_watchdog_task+0x7c8/0xea0 [iavf]
[  790.259009]  process_one_work+0x1a7/0x360
[  790.259705]  worker_thread+0x30/0x390

To fix the situation we should check the current adapter state after
first unsuccessful mutex_trylock() and return with -EBUSY if it is
__IAVF_INIT_CONFIG_ADAPTER.

Fixes: 226d528512cf ("iavf: fix locking of critical sections")
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 45d097a164ad..f9dcaadc7ea0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4085,8 +4085,17 @@ static int iavf_open(struct net_device *netdev)
 		return -EIO;
 	}
 
-	while (!mutex_trylock(&adapter->crit_lock))
+	while (!mutex_trylock(&adapter->crit_lock)) {
+		/* If we are in __IAVF_INIT_CONFIG_ADAPTER state the crit_lock
+		 * is already taken and iavf_open is called from an upper
+		 * device's notifier reacting on NETDEV_REGISTER event.
+		 * We have to leave here to avoid dead lock.
+		 */
+		if (adapter->state == __IAVF_INIT_CONFIG_ADAPTER)
+			return -EBUSY;
+
 		usleep_range(500, 1000);
+	}
 
 	if (adapter->state != __IAVF_DOWN) {
 		err = -EBUSY;
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
