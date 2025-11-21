Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DF6C76BA2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Nov 2025 01:19:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF7546F5A4;
	Fri, 21 Nov 2025 00:19:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ejW_bL-49xBp; Fri, 21 Nov 2025 00:19:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 120CE60DC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763684360;
	bh=5T6YzzZRq8sbF2vD+iTSzA6GsMmNBRmOT/k5HaoUlDg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sjQcaZiC+Tv5tROeWjZTP7uwCGFuRcyVF4AS3zHgzP2ywnZQcLHukbx3ptHuYxgEG
	 2Ini3OZsqMAwTlpgzIVVHcAv0q+hWWF9aHhcfZI9qbfsgzrK4dW/BR9eXbYlZ/VnOD
	 xvH7yyzjL56AbUJAickHqAKTROrbdbILpLk9mtq0L6CJHNND32HHDw6fFROJ5ELGPc
	 UnkdvVJw04zzjy46V0hjwstLD9ZAp5TCZ7b5nYKq1fard9q9N//gdmAuOVOyABxlUc
	 BZaFAgctz1HyiXkCw/qGBRg7f+HEm9pPNWmY7CxhGHl0ItfTwNNBYxfh9M+b4LcUO/
	 tXoywxIbZOhLg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 120CE60DC7;
	Fri, 21 Nov 2025 00:19:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 27854344
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 00:19:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E32D241A71
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 00:19:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CsoJuXOiTL3Z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Nov 2025 00:19:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2C99C405B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C99C405B9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C99C405B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 00:19:17 +0000 (UTC)
X-CSE-ConnectionGUID: gwpoEuDARDuTd2TI1aoynA==
X-CSE-MsgGUID: AYnZlbiESEm9ETlPdhKYXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65704086"
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="65704086"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 16:19:16 -0800
X-CSE-ConnectionGUID: A3hmL438R/uJjuxBMSU4HA==
X-CSE-MsgGUID: jMKo8rHLSjWvOg33LpUgqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="190815185"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa010.jf.intel.com with ESMTP; 20 Nov 2025 16:19:15 -0800
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Aleksandr.Loktionov@intel.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, decot@google.com, willemb@google.com,
 joshua.a.hay@intel.com, madhu.chittim@intel.com,
 aleksander.lobakin@intel.com, larysa.zaremba@intel.com,
 iamvivekkumar@google.com
Date: Thu, 20 Nov 2025 16:12:18 -0800
Message-Id: <20251121001218.4565-6-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20251121001218.4565-1-emil.s.tantilov@intel.com>
References: <20251121001218.4565-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763684357; x=1795220357;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=WBReMd/4kyyzfFC4PN4BcAjrw+uONVzAFH3InTSJ9D8=;
 b=OPvXNRcK+kiB+63le3hc05EIUCkCA10FVkex4a1SjISE1yT4om+ysAvL
 U21heG7dUSKzs2Bze74i8OXv7VTz4etgVVgajukGmG1Kvvsylan+VS/P+
 IWm6//FqSQqdAV78uV1JwZwwewemAg+sOM8yVAKb1DzPBcUcyxscHanN8
 eX/volZFrMqWE4yU/j2gYCE7Q3y3gqIvTYfPTpdg7S3ioZkfWKESm1q9w
 HFikDnQtXM/f+l1sVj1eEew9ZhSv8T7Yoa47bqXY6HcMWaeJvQ8M79TFW
 h9L/rSPh09C1KTYNI6gGzqMUCjQrYkSU2Vx8/6uURQAhEH0rLl1J5pi/s
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OPvXNRcK
Subject: [Intel-wired-lan] [PATCH iwl-net v2 5/5] idpf: fix error handling
 in the init_task on load
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If the init_task fails during a driver load, we end up without vports and
netdevs, effectively failing the entire process. In that state a
subsequent reset will result in a crash as the service task attempts to
access uninitialized resources. Following trace is from an error in the
init_task where the CREATE_VPORT (op 501) is rejected by the FW:

[40922.763136] idpf 0000:83:00.0: Device HW Reset initiated
[40924.449797] idpf 0000:83:00.0: Transaction failed (op 501)
[40958.148190] idpf 0000:83:00.0: HW reset detected
[40958.161202] BUG: kernel NULL pointer dereference, address: 00000000000000a8
...
[40958.168094] Workqueue: idpf-0000:83:00.0-vc_event idpf_vc_event_task [idpf]
[40958.168865] RIP: 0010:idpf_vc_event_task+0x9b/0x350 [idpf]
...
[40958.177932] Call Trace:
[40958.178491]  <TASK>
[40958.179040]  process_one_work+0x226/0x6d0
[40958.179609]  worker_thread+0x19e/0x340
[40958.180158]  ? __pfx_worker_thread+0x10/0x10
[40958.180702]  kthread+0x10f/0x250
[40958.181238]  ? __pfx_kthread+0x10/0x10
[40958.181774]  ret_from_fork+0x251/0x2b0
[40958.182307]  ? __pfx_kthread+0x10/0x10
[40958.182834]  ret_from_fork_asm+0x1a/0x30
[40958.183370]  </TASK>

Fix the error handling in the init_task to make sure the service and
mailbox tasks are disabled if the error happens during load. These are
started in idpf_vc_core_init(), which spawns the init_task and has no way
of knowing if it failed. If the error happens on reset, following
successful driver load, the tasks can still run, as that will allow the
netdevs to attempt recovery through another reset. Stop the PTP callbacks
either way as those will be restarted by the call to idpf_vc_core_init()
during a successful reset.

Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
Reported-by: Vivek Kumar <iamvivekkumar@google.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 5193968c9bb1..89f3b46378c4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1716,10 +1716,9 @@ void idpf_init_task(struct work_struct *work)
 		set_bit(IDPF_VPORT_REG_NETDEV, vport_config->flags);
 	}
 
-	/* As all the required vports are created, clear the reset flag
-	 * unconditionally here in case we were in reset and the link was down.
-	 */
+	/* Clear the reset and load bits as all vports are created */
 	clear_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
+	clear_bit(IDPF_HR_DRV_LOAD, adapter->flags);
 	/* Start the statistics task now */
 	queue_delayed_work(adapter->stats_wq, &adapter->stats_task,
 			   msecs_to_jiffies(10 * (pdev->devfn & 0x07)));
@@ -1733,6 +1732,15 @@ void idpf_init_task(struct work_struct *work)
 				idpf_vport_dealloc(adapter->vports[index]);
 		}
 	}
+	/* Cleanup after vc_core_init, which has no way of knowing the
+	 * init task failed on driver load.
+	 */
+	if (test_and_clear_bit(IDPF_HR_DRV_LOAD, adapter->flags)) {
+		cancel_delayed_work_sync(&adapter->serv_task);
+		cancel_delayed_work_sync(&adapter->mbx_task);
+	}
+	idpf_ptp_release(adapter);
+
 	clear_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
 }
 
@@ -1882,7 +1890,7 @@ static void idpf_init_hard_reset(struct idpf_adapter *adapter)
 	dev_info(dev, "Device HW Reset initiated\n");
 
 	/* Prepare for reset */
-	if (test_and_clear_bit(IDPF_HR_DRV_LOAD, adapter->flags)) {
+	if (test_bit(IDPF_HR_DRV_LOAD, adapter->flags)) {
 		reg_ops->trigger_reset(adapter, IDPF_HR_DRV_LOAD);
 	} else if (test_and_clear_bit(IDPF_HR_FUNC_RESET, adapter->flags)) {
 		bool is_reset = idpf_is_reset_detected(adapter);
-- 
2.37.3

