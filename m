Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2069F35F7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 17:27:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09777810D7;
	Mon, 16 Dec 2024 16:27:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YlBwXsuz4OXH; Mon, 16 Dec 2024 16:27:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34DF981113
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734366477;
	bh=gW4H2/TOHS2zfDTwC9BxNBGpe/B9ZolBHNbHz0o02es=;
	h=Date:In-Reply-To:References:From:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=umcoX4yoFGkwavFUvx7SxTRXKgO1JOCoCYUfnKQRqyeS7WXetpyPf+7GGWIRVYCbT
	 2rgJsXSOMncnWONnigmXkG1EA8MjoGs85bnUSlvImA/EPcG/bnTPVR8mkdkuU2RVcy
	 o7Md6f41bQmLY7pDCyHE2CD6lOiiIazeOaN1gssWbZkDevs1yE7exu1fA2or6NVu8G
	 aD2Q1uqiRmNwvnhXxyvSeM9Cz0iSXWlRpQAwCnzxu6WoGfnDgh8bAlgl/+j/afBnEU
	 k8Gcq6qeQV+ZmL/GXHop62CrWr1799jBLkoTwIvCoZpgLBOImDzT5TzHxcmLWI/rYg
	 VACOZikMK486Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34DF981113;
	Mon, 16 Dec 2024 16:27:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 42A85C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:27:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 307976068D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:27:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o6mIvbJQHG82 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 16:27:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1049; helo=mail-pj1-x1049.google.com;
 envelope-from=3cvvgzwckd3yvlcuhppaiiafy.wigchnyf-qclyx-fuhfcmnm.imoimf.ila@flex--brianvv.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 59CAE60A47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59CAE60A47
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com
 [IPv6:2607:f8b0:4864:20::1049])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 59CAE60A47
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 16:27:54 +0000 (UTC)
Received: by mail-pj1-x1049.google.com with SMTP id
 98e67ed59e1d1-2ee8ced572eso4062871a91.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:27:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734366474; x=1734971274;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gW4H2/TOHS2zfDTwC9BxNBGpe/B9ZolBHNbHz0o02es=;
 b=NlObZzZvf8eyXjOJxr89vljCXslowrEzI+RRMXWhgzeHI9BD8cglUQOW/Od7ejTzry
 UVgZceWXjisLIBo7ezf5j0g0CJpia6bAVQ9CoszDLldq8S7WP46t7vEQY5kipypHTQZn
 M3O5iA1Iz/DwZ8H+HEyuidPXGsqNh8qQxnOLwJdnOqwOMEmeoNXR8IEKgwaQNGsuZWmF
 RAF6vNLo67MCPWBi6tRr0xOE8vrXPXKhZCCWjE2iONUpYmaK76nGgy8Q2mYbZHNEhagX
 2jQIoYRT+JaueJVHe6KrQcmCBFMdITMv0IrKh78e61EgUbBFWXNELTOQ22xgu8B6nwf1
 9B4Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCU/AV5zRZY2SanZuQw9OudLnfspPE111PwAig1y0S4HIoAPwcsJdBgb7W/HlKHBIdGus38Q1C22R/A5zGLyRP8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzsLxg04LIyo/xNcJ2pVHcfkcrEqhLcwvg5SeORv63xLS/tHKXl
 jxoQyEoPOiOGgbJrN0aC6jSjGHFwryaNq8XB0Ax8Mah2LRrAMe4AEuT5sQQUhr99CAbCfdzY+Qz
 q9v008Q==
X-Google-Smtp-Source: AGHT+IH+NcFqvSJGVZtZhakhKOrf/vnRiODHzmjmJUPUWT5kMvWkePf7WswTE1jLMuI8ih/KoplSGx6a3tO5
X-Received: from pjl4.prod.google.com ([2002:a17:90b:2f84:b0:2ef:71b9:f22f])
 (user=brianvv job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:5284:b0:2eb:140d:f6df
 with SMTP id 98e67ed59e1d1-2f28fa55c91mr18168313a91.1.1734366473766; Mon, 16
 Dec 2024 08:27:53 -0800 (PST)
Date: Mon, 16 Dec 2024 16:27:34 +0000
In-Reply-To: <20241216162735.2047544-1-brianvv@google.com>
Mime-Version: 1.0
References: <20241216162735.2047544-1-brianvv@google.com>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
Message-ID: <20241216162735.2047544-3-brianvv@google.com>
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
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1734366474; x=1734971274; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=gW4H2/TOHS2zfDTwC9BxNBGpe/B9ZolBHNbHz0o02es=;
 b=PWHXDtNUMT7uss9osu7pMwv+X+WX/W5gLwJETSi58AiJWxr80NAAfKX5LKhNDdQb6w
 sF+EDZlSjJDsY1GTgUFAf45aYMSy75Beii+JkI52zGUVlWWrLy+PiztdJ62tBPHZwK8A
 QtjD/VBuuga54XtIr1aJIMcazUblaAvstRKT0o0JkxKgIx7L+V6VU3CrLHSf0Z3dqzFx
 tncH/M4EDPHcN3fNjhG8pJegOBeLONWbv5R2xtYrGgdBh8B9GYwlI+egID5zUZ8X9QlK
 7l17aRaPBbcPqSZkGxj6Bd4pgO5qoqArIbd1nJV+OTgz2HhbFHgjljPAYUEu9hYy5JGl
 oSZw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=PWHXDtNU
Subject: [Intel-wired-lan] [iwl-next PATCH v4 2/3] idpf: convert workqueues
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

