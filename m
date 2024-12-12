Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5678C9F0058
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Dec 2024 00:43:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7423184547;
	Thu, 12 Dec 2024 23:43:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id chXw9RzSrIYL; Thu, 12 Dec 2024 23:43:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B4688454F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734047015;
	bh=gW4H2/TOHS2zfDTwC9BxNBGpe/B9ZolBHNbHz0o02es=;
	h=Date:In-Reply-To:References:From:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=a/GfIvgWRqblesFOZGDvcM0fDUqi8nC5WFfFyqjDjc+biuUxPPQ/8yCbpU7Arl9jV
	 kTyXBI0zfmB0Dq0/oDYKeBv9hmdeMVKC45ETexIgUWBUCyD1JvK4T6ztbkgRTVA1UK
	 2K+eZasdui73ZBiyXNUp/K7oS1eetqb+8eZ90eKHWQOoA9EPit2lC1c6O1eVwYM+uZ
	 P1vL8h+ckQIAwcUvUUa8hcQM2af0/LudehaUPPGDBYXXrhFHwfL5XC/6/hKrK/t2Uc
	 0q45jl1Q6O17f271e0ytuoS6E8Sm83XaM942DEWLs/2G3cdf9A6/LQ+IS+QXFVhL5F
	 oqq6RDwc5nQdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B4688454F;
	Thu, 12 Dec 2024 23:43:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9AF5B75
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 23:34:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7616C41460
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 23:34:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oPVKQyR4IGIf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2024 23:34:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::549; helo=mail-pg1-x549.google.com;
 envelope-from=37hjbzwckd4egwnfs00lttlqj.htrnsyjq-1nwji-qfsqnxyx.txztxq.twl@flex--brianvv.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5D06040658
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D06040658
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com
 [IPv6:2607:f8b0:4864:20::549])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5D06040658
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 23:34:05 +0000 (UTC)
Received: by mail-pg1-x549.google.com with SMTP id
 41be03b00d2f7-8019f05c61aso818261a12.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 15:34:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734046444; x=1734651244;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gW4H2/TOHS2zfDTwC9BxNBGpe/B9ZolBHNbHz0o02es=;
 b=qESL7bOxC0kRjl0t6fJBJIYOss1T2kMtiV8fUfObVZjpqnTVkCkzY4ZCrWIkN+/Ywr
 8x83h+E20atYUjVyLAvmKikyZgRWUJmXKh8/FTyju1NUBrEUugccKXEoPj6cyBSjntqh
 KDB7da5Mz+4hbFceUJrqsDu+AyTeAn+ObPL5dlOyyBh3mPBwNZfw8M4zwC8jpFO7hQot
 R/e5jXJAvZMHB59x8DNqam6uELngCv2+57oIBd8FdV5m1g3ibzXFta13vZZDktk6suwa
 8Hadj834bsjzWRoWEmfbLiF2p9nbF6oxm/0U2OVtdJFhSowZtpb2NELgx+0c9aBiH3mm
 0w4g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWiDTnpd8dvmFMzctWzQr61bEb79YU3ZBMdog9uN6eYY6LngEOTfJ/9z5M3WBQ0W3T1ivapemKkx+rQUn4UypA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwrfWGsa6E510RCc2nN7Tig5LrbTz7wyrFjCsanosCEqDfuXNRy
 jomL7kF4cFgKF6NQiCDzR4moJIEQZuRCaC0gxbzQ8oWtQNzK3kfC3sm5BM+g4FZQTpy0JPskyob
 DeFB+qA==
X-Google-Smtp-Source: AGHT+IHU8mSWUn2mLx+n7J9NPzZpWnWI7NTiMfpqSFskCF7VTr1LGMNcspFpdCFJLMvJCyEp1oQx/n1+r+p4
X-Received: from pjuj8.prod.google.com ([2002:a17:90a:d008:b0:2e0:aba3:662a])
 (user=brianvv job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:4ac1:b0:2ee:8430:b831
 with SMTP id 98e67ed59e1d1-2f28fa50f7fmr901600a91.2.1734046444500; Thu, 12
 Dec 2024 15:34:04 -0800 (PST)
Date: Thu, 12 Dec 2024 23:33:32 +0000
In-Reply-To: <20241212233333.3743239-1-brianvv@google.com>
Mime-Version: 1.0
References: <20241212233333.3743239-1-brianvv@google.com>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
Message-ID: <20241212233333.3743239-3-brianvv@google.com>
From: Brian Vazquez <brianvv@google.com>
To: Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org
Cc: David Decotigny <decot@google.com>, Vivek Kumar <vivekmr@google.com>, 
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 emil.s.tantilov@intel.com, Marco Leogrande <leogrande@google.com>, 
 Manoj Vishwanathan <manojvishy@google.com>, Brian Vazquez <brianvv@google.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Thu, 12 Dec 2024 23:43:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1734046444; x=1734651244; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=gW4H2/TOHS2zfDTwC9BxNBGpe/B9ZolBHNbHz0o02es=;
 b=MSd3dsjcgaT5sod59p1wU3isAeRgcizPzfxWv6u5k9ShQZ5vvO8F1QMOWwV+BzbSen
 yxTiJOQ2Y4cfbeNFNENGK4nSgriSHjBY+0qeh/OEkq6i6xTqy7ywiFefOb4zR2J9o7TX
 YssuXSn6PkRli59MleYVaJDieBDokUsPF82mqZYcQbvlr8kr+jKmqSeCXvQN0/ebpLW4
 6GqrT2WN2rQhu6fvhgt32RO2m4MA+rC+FNhQ2annytSQxC3Oxs/d1ZJVA6j3TdIwqMWh
 +AUEZdtwBBP0vGF6aa9OILmRunvXAWmuERNUQgRTy73zmmbFJ99gqO/tED2ruzSwVKqQ
 Cu+w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=MSd3dsjc
Subject: [Intel-wired-lan] [iwl-next PATCH v3 2/3] idpf: convert workqueues
 to unbound
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

This is not just a theoretical problem: in a particular scenario
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

Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
Signed-off-by: Marco Leogrande <leogrande@google.com>
Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
Signed-off-by: Brian Vazquez <brianvv@google.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_main.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 305958c4c230..da1e3525719f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -198,7 +198,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	pci_set_master(pdev);
 	pci_set_drvdata(pdev, adapter);
 
-	adapter->init_wq = alloc_workqueue("%s-%s-init", 0, 0,
+	adapter->init_wq = alloc_workqueue("%s-%s-init",
+					   WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
 					   dev_driver_string(dev),
 					   dev_name(dev));
 	if (!adapter->init_wq) {
@@ -207,7 +208,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_free;
 	}
 
-	adapter->serv_wq = alloc_workqueue("%s-%s-service", 0, 0,
+	adapter->serv_wq = alloc_workqueue("%s-%s-service",
+					   WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
 					   dev_driver_string(dev),
 					   dev_name(dev));
 	if (!adapter->serv_wq) {
@@ -216,7 +218,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_serv_wq_alloc;
 	}
 
-	adapter->mbx_wq = alloc_workqueue("%s-%s-mbx", 0, 0,
+	adapter->mbx_wq = alloc_workqueue("%s-%s-mbx",
+					  WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
 					  dev_driver_string(dev),
 					  dev_name(dev));
 	if (!adapter->mbx_wq) {
@@ -225,7 +228,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_mbx_wq_alloc;
 	}
 
-	adapter->stats_wq = alloc_workqueue("%s-%s-stats", 0, 0,
+	adapter->stats_wq = alloc_workqueue("%s-%s-stats",
+					    WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
 					    dev_driver_string(dev),
 					    dev_name(dev));
 	if (!adapter->stats_wq) {
@@ -234,7 +238,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_stats_wq_alloc;
 	}
 
-	adapter->vc_event_wq = alloc_workqueue("%s-%s-vc_event", 0, 0,
+	adapter->vc_event_wq = alloc_workqueue("%s-%s-vc_event",
+					       WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
 					       dev_driver_string(dev),
 					       dev_name(dev));
 	if (!adapter->vc_event_wq) {
-- 
2.47.1.613.gc27f4b7a9f-goog

