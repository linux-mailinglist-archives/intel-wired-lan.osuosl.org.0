Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AC195F8CC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2024 20:10:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE8364060C;
	Mon, 26 Aug 2024 18:10:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dpTOCYFQzvsZ; Mon, 26 Aug 2024 18:10:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4E15405DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724695849;
	bh=LM6a0WurRs0VygQLA1YyzraSEK90YN51nb0L2VXwcYQ=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=56ZSCaIvH2+PyqIfM0f+D3R0kdFLfq4rW2eQC0WYO0PgnIPZHdjPBVgz89rX1srlc
	 EyQ1VWxxaw8MARzywIh1UX8mDofO/lWEuZ4vViIVxyRjVMTy+e4ZgQLFRAMAA2y5Gf
	 /mBJN4ikckwa+PNdUvXu0fO61LwkJpc9VCBzDnksHUebi3adlflriVogOjN/1uVzU8
	 zBixtyIuM9W5X9v2SIvmK7D6LMWcoepuLukWRHC2ctasryeEFMeuUpm5HQw+RD82u/
	 ctgwbofZQ33c20zm01G091Bwr34A3cKdhXCeH65Ymv2xvVxsHgL+Tq4gJGFZERx9C9
	 JZdkKcOre0BtA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E4E15405DF;
	Mon, 26 Aug 2024 18:10:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 18D3F1BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 18:10:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 12A076078F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 18:10:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9AJFvxTLFeey for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2024 18:10:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b49; helo=mail-yb1-xb49.google.com;
 envelope-from=3isxmzgokdx0f3ghcoblar9hh9e7.5hfbgm7e-pbk76-e3geblml.hlnhle.hk9@flex--manojvishy.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 344B260632
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 344B260632
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 344B260632
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 18:10:44 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 3f1490d57ef6-e02fff66a83so7762669276.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 11:10:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724695843; x=1725300643;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LM6a0WurRs0VygQLA1YyzraSEK90YN51nb0L2VXwcYQ=;
 b=AwXPCM5YyO3ljgwg2kdiRxTq+CWkqEwKY7AkP5st6GLX3+2Nib6mrnzwXgiFVUb400
 Fnw0Wwx2s4vFS5NN2mFLezOtd+bKbbDbvNFUARm1eAw8r0iNidw0Zqrh8tp8XToXHRsc
 iz9gjG6oJBSXl44OZBLXfaBWBLFs2wJwe37AMm1fhetx/DEYWYxxRSR7ugHe6fUnw7sC
 yRk1iLQhAV9BPlDzwuhI5LCGcsxkCw7dTW0DEO1YNmhF1k8OO8P+sNIBeEbE7cXW0boq
 U+yMVNZeNsoA3LgrfpDHfrYcDQ2PRh4jVD/DO7Fk0gE659XzgkFstCmST5dL8w8mxHHt
 1PkA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWOC8LU0vOZn1QZeUmrD7Rgax4hwW9VShHiNE7s6xGJR+8ZdbqgETWb3ZvS7PY2O4D9RBHIILTZyhCM+dE1UeE=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx8NGkG2xb0MAXU1R47NhfRHCAdFdEAuoqEuVRTp6TIxZhM+Gk5
 ocIobmzIzMdKLt74WgR3rqWT3IJDLW6TA3bdBuGJa2TqDbepJdqM9KEYGQhlHcx/10HZsUJDg1s
 PFlz3qZDMabJ7+JhNUQ==
X-Google-Smtp-Source: AGHT+IF6Ly19WKd+JcS6CcJwheQlRT65UDI0KdLySp4FklnSjsvLt63ejTCLnUizmDoAvkVv4ljTcp6I2KahJvls
X-Received: from manojvishy.c.googlers.com
 ([fda3:e722:ac3:cc00:20:ed76:c0a8:413f])
 (user=manojvishy job=sendgmr) by 2002:a5b:24d:0:b0:e0b:f69b:da0a with SMTP id
 3f1490d57ef6-e17a865b595mr19562276.12.1724695842941; Mon, 26 Aug 2024
 11:10:42 -0700 (PDT)
Date: Mon, 26 Aug 2024 18:10:31 +0000
In-Reply-To: <20240826181032.3042222-1-manojvishy@google.com>
Mime-Version: 1.0
References: <20240826181032.3042222-1-manojvishy@google.com>
X-Mailer: git-send-email 2.46.0.295.g3b9ea8a38a-goog
Message-ID: <20240826181032.3042222-4-manojvishy@google.com>
From: Manoj Vishwanathan <manojvishy@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1724695843; x=1725300643; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=LM6a0WurRs0VygQLA1YyzraSEK90YN51nb0L2VXwcYQ=;
 b=himzEMPi0ZlbifoifhEAWSYra7GiMhQFFz2ATh+zwJguVrYNxPEk6LIRGY2Qzw+gSv
 +CPFjr8lvfygrqru+fQBG9lY74kRMkrW41oQhT+4OAhIBVZs5y+4Vjk5s2S/8txmoTyr
 j53qT6qf8m0fDpBnBgU8IZgNDqpCNtTzAg1M+fdk8hFvDq4nH0aiopGVYjt6O+FazWM4
 TWrWQHpFKW4yVOf5kYoCbhx2l3NyY6sKiGvryvxxmLTETEDQZ2pC0PL+ASrwldB0ICR5
 wXiHyvIyuXLd9gvj36qvqCBo0u+CQP0/JtBBBKuG0+f5vVJxKDrFs/ewf+OVJvzH7NjA
 yDMQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=himzEMPi
Subject: [Intel-wired-lan] [[PATCH v2 iwl-next] v2 3/4] idpf: convert
 workqueues to unbound
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
Cc: netdev@vger.kernel.org, Manoj Vishwanathan <manojvishy@google.com>,
 linux-kernel@vger.kernel.org, google-lan-reviews@googlegroups.com,
 Marco Leogrande <leogrande@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marco Leogrande <leogrande@google.com>

When a workqueue is created with `WQ_UNBOUND`, its work items are
served by special worker-pools, whose host workers are not bound to
any specific CPU. In the default configuration (i.e. when
`queue_delayed_work` and friends do not specify which CPU to run the
work item on), `WQ_UNBOUND` allows the work item to be executed on any
CPU in the same node of the CPU it was enqueued on. While this
solution potentially sacrifices locality, it avoids contention with
other processes that might dominate the CPU time of the processor the
work item was scheduled on.

This is not just a theoretical problem: in a praticular scenario
misconfigured process was hogging most of the time from CPU0, leaving
less than 0.5% of its CPU time to the kworker. The IDPF workqueues
that were using the kworker on CPU0 suffered large completion delays
as a result, causing performance degradation, timeouts and eventual
system crash.

Tested:

* I have also run a manual test to gauge the performance
  improvement. The test consists of an antagonist process
  (`./stress --cpu 2`) consuming as much of CPU 0 as possible. This
  process is run under `taskset 01` to bind it to CPU0, and its
  priority is changed with `chrt -pQ 9900 10000 ${pid}` and
  `renice -n -20 ${pid}` after start.

  Then, the IDPF driver is forced to prefer CPU0 by editing all calls
  to `queue_delayed_work`, `mod_delayed_work`, etc... to use CPU 0.

  Finally, `ktraces` for the workqueue events are collected.

  Without the current patch, the antagonist process can force
  arbitrary delays between `workqueue_queue_work` and
  `workqueue_execute_start`, that in my tests were as high as
  `30ms`. With the current patch applied, the workqueue can be
  migrated to another unloaded CPU in the same node, and, keeping
  everything else equal, the maximum delay I could see was `6us`.

Fixes: 0fe45467a1041 (idpf: add create vport and netdev configuration)
Signed-off-by: Marco Leogrande <leogrande@google.com>
Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_main.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index db476b3314c8..dfd56fc5ff65 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -174,7 +174,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	pci_set_master(pdev);
 	pci_set_drvdata(pdev, adapter);
 
-	adapter->init_wq = alloc_workqueue("%s-%s-init", 0, 0,
+	adapter->init_wq = alloc_workqueue("%s-%s-init",
+					   WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
 					   dev_driver_string(dev),
 					   dev_name(dev));
 	if (!adapter->init_wq) {
@@ -183,7 +184,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_free;
 	}
 
-	adapter->serv_wq = alloc_workqueue("%s-%s-service", 0, 0,
+	adapter->serv_wq = alloc_workqueue("%s-%s-service",
+					   WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
 					   dev_driver_string(dev),
 					   dev_name(dev));
 	if (!adapter->serv_wq) {
@@ -192,7 +194,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_serv_wq_alloc;
 	}
 
-	adapter->mbx_wq = alloc_workqueue("%s-%s-mbx", 0, 0,
+	adapter->mbx_wq = alloc_workqueue("%s-%s-mbx",
+					  WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
 					  dev_driver_string(dev),
 					  dev_name(dev));
 	if (!adapter->mbx_wq) {
@@ -201,7 +204,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_mbx_wq_alloc;
 	}
 
-	adapter->stats_wq = alloc_workqueue("%s-%s-stats", 0, 0,
+	adapter->stats_wq = alloc_workqueue("%s-%s-stats",
+					    WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
 					    dev_driver_string(dev),
 					    dev_name(dev));
 	if (!adapter->stats_wq) {
@@ -210,7 +214,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_stats_wq_alloc;
 	}
 
-	adapter->vc_event_wq = alloc_workqueue("%s-%s-vc_event", 0, 0,
+	adapter->vc_event_wq = alloc_workqueue("%s-%s-vc_event",
+					       WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
 					       dev_driver_string(dev),
 					       dev_name(dev));
 	if (!adapter->vc_event_wq) {
-- 
2.46.0.295.g3b9ea8a38a-goog

