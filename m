Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CD1950C36
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 20:28:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11E30406E6;
	Tue, 13 Aug 2024 18:28:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oJEQuMBDnvPa; Tue, 13 Aug 2024 18:28:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0546406EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723573689;
	bh=TP961J72JDd3W/A5AwIhTA95rpBeW3mVlPbF5keUAfI=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ftJLPQmiw7q7G6AN7/tXz+TJujMuSuhxOlgiwq/fSxLmEvrrNmWmcerzT0Pt5dkvc
	 Qz0ynG8EdY7UnFrKtlE2eUiHE48Vs6NNtSu3hQJeGcif/L5EgBlzA4YnpgVFOpgC+Q
	 uF+IlLixg62sKSkxPcmsFckigASDg8MaupChZGEkuxbpNKhKV7zha5VDpXPespJGcw
	 zTznPUTshY4hyv5174DpkmaqCgQxjc2eP+rgZMc1hy3iXegf71Iz5+0jXismxC1unT
	 fHp5Ojr8AZihbW2DL2OpYLyzFLPnaoivGTzrwB2sTyi5yqRYS4b27TvYibDi9tFVc7
	 yaCelZxA+P5dQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0546406EA;
	Tue, 13 Aug 2024 18:28:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C680D1BF343
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 18:28:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B39E9401CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 18:28:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7KBYh5dhwIx3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 18:28:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b4a; helo=mail-yb1-xb4a.google.com;
 envelope-from=3taw7zgokdywuivwrdqapgowwotm.kwuqvbmt-eqzml-tivtqaba.wacwat.wzo@flex--manojvishy.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 69AAC40021
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69AAC40021
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 69AAC40021
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 18:28:06 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 3f1490d57ef6-e0be470f76bso9692579276.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 11:28:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723573685; x=1724178485;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=TP961J72JDd3W/A5AwIhTA95rpBeW3mVlPbF5keUAfI=;
 b=VkxDXCKp1/6teKNY8qvvU6WStbL85FT37em4pEtkcTwM1BkDycFeVMVBoptq0/1nfB
 GCdKS2LzNt2HXjBd5PM/5DgeY0sL99I1gGxvTTmMdmfbK6StaqwQoP68eVKWTJIQXhM7
 1jxstSdQ+SNKGO5iCLKsLfSI6HeFfs/gCIhIbNowtxEqOY1rmVfGFN/nNbliQga0+SG/
 4v5OnOtx2fbO2+ctiYE1SggL40HNjEiQqEm5vLiGHlThAeFtIDZPTGRuobKANPssbldh
 a4eTdUMFBSJOrer1Fi91eXjQzODqhqhgpH3zJhPbcqQU7817nJ8R6jkvnwoOrjFUnaHl
 wm8g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXKYL8gvl3Mvuj//AVXhe/3WV1OGKi0yI4jTZMqlgxB1uB8+RDszeWJriC8Kooh6qXq+40WbVhTZU6m1zyQm9cVSSk2tXj0XCFoUmBJ/3XZrg==
X-Gm-Message-State: AOJu0YzkzoioKTaHuioGQ7olTS/VDqTf9WQOc1aFAsHNbwmxWbCD/Tuw
 Am2xUTZm3VzbK6Z+LWhG1/DU6JIzAeLiiP9VL4ezzSeIy0JN8OtmoUCb4cQP6Z+Kc1eu80eQRza
 GGufaWMaYVVLo7/sBbQ==
X-Google-Smtp-Source: AGHT+IEcUJ4nno820COmCVkqEY2grkP8CkJXPuWKQlxjBtfvY5Cd6Kury80B6+oOUU3OFR28ZBOqgQRdHfLwWACY
X-Received: from manojvishy.c.googlers.com
 ([fda3:e722:ac3:cc00:20:ed76:c0a8:413f])
 (user=manojvishy job=sendgmr) by 2002:a25:c5c3:0:b0:e0b:f69b:da30 with SMTP
 id 3f1490d57ef6-e1155b7c6cbmr11272276.9.1723573685319; Tue, 13 Aug 2024
 11:28:05 -0700 (PDT)
Date: Tue, 13 Aug 2024 18:27:45 +0000
In-Reply-To: <20240813182747.1770032-1-manojvishy@google.com>
Mime-Version: 1.0
References: <20240813182747.1770032-1-manojvishy@google.com>
X-Mailer: git-send-email 2.46.0.76.ge559c4bf1a-goog
Message-ID: <20240813182747.1770032-4-manojvishy@google.com>
From: Manoj Vishwanathan <manojvishy@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1723573685; x=1724178485; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=TP961J72JDd3W/A5AwIhTA95rpBeW3mVlPbF5keUAfI=;
 b=w0KOAUZ/UZsqbjfpBSU1aSvXDNSIGx7whMsJraP6C2XsRo9gRTWrEkIeJyf2UZ9m1z
 2yEmPOsakNEk8u/EEi0BlZhvgBotAzo0TDux6kH6XK0TfG36wyPJUCauQoe2Yb9oFiLK
 f9VzUYTYCjk191VBQ+Raxa0MnSqbtz9qiOrLBNq1/GJg2sTjg3cRVWZyJlHWo8KuL4Ww
 IpIk/EylgDLwbjhb6VpDiUC1N7qKzcF56p5/pZrTPK39edhQclwBkR0jHW29VuEntCqS
 3oUEbzZyWemOzj8RezIERUEfiol7Ga6hqqYnyYgSvE+7pFfhLLLB4IoBCvFXJFgI59VZ
 1egw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=w0KOAUZ/
Subject: [Intel-wired-lan] [PATCH v1 3/5] idpf: convert workqueues to unbound
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

This is not just a theoretical problem: in b/317234476, a
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
2.46.0.76.ge559c4bf1a-goog

