Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA07A94F0EA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 16:57:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E97C405B5;
	Mon, 12 Aug 2024 14:57:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LDS_2_V-ZqJ8; Mon, 12 Aug 2024 14:57:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA2C740602
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723474636;
	bh=Yv3Kiio+O9ZPFfr1NuylJH0Fc+893bNyrbJKgz9J96Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Si17riGvUGoqA5HkkFtZ9Qdm6LelyaSPW6vA8mca+8jcLtDejJ6zjqXBJ2YNuqi/4
	 AoziwXJrSgWGTRghtO1pnEDwsM8b7sMC50NMtGfdSq3ysP6ig0WJ4Wq9luC7yA+okD
	 8i7mgvb6kpiqcF5tFtA8vvIgWsEfL+RdsYRAlq/zbx8PI980bqJJU5kRHltFUJLYRH
	 89iOkrBSusLRxFdhAIBeb4pp+0xGhAH9J0l9qpwvStBRqKX/Ch60G1X9UcqSwHLpQm
	 dv57RjTACKhbqNo45xNBnDB5/b5LivE2eEfHQX4Mn09zmpmCDFvN7TTuvt+OSXFBFq
	 Bl3Vvkm24xEug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA2C740602;
	Mon, 12 Aug 2024 14:57:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 360FE1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 14:57:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 200CD404EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 14:57:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wY2yX5DjpIGX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2024 14:57:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62f; helo=mail-pl1-x62f.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1B883404BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B883404BE
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B883404BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 14:57:13 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-1fc5296e214so42161365ad.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 07:57:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723474633; x=1724079433;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Yv3Kiio+O9ZPFfr1NuylJH0Fc+893bNyrbJKgz9J96Y=;
 b=noq+uAqfnetAjSjpdjmHWxnyJFXNZdbZ+M45PcTj3T/vHLjXIVDwrALOyXZcratR7I
 BWUTi5W+AQ+mxInuaeefxVm3lxDNwurFvZAwBDCdJhtqx9W8wT7FwstzXWnGCGo20WMM
 uj82VNsmVr/G1Z+WhOuQGcB/h2oAQUuabFGvep7FDs1iFuwF5epG0qvs7V+uufpPqfJJ
 3szzg/C6glIeEAVI7qSXj7rHm+YOYFyiXBi3kHF7TAELmaJyG6lq6SxRzFr7Ejh5+fI4
 IgHWV7yxVEE0BeiqSrWZz78QsLDMsXVIT/SX32tKLdoJZ8CScpx175UPB/iGNd2Mrfnz
 y2YA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUi2su/nU6dmgqfyptIyuHZGr+4fRdagsMxcUpF2hN2oPfesEgxX24UafvrCSAKUlZ1ddkKlYxEcqJQITUWFy6SUErFuV2ZjJUu7+BjH/t7cw==
X-Gm-Message-State: AOJu0YyEHybHSMcJMv+Pe9pmaddPOZyUFlcVP8YuYt7SE+PizxHF7UC4
 MIKC6IUiW4tPgrrt/tK/Bow6e+OIDh1BP3xTr2PcRLZe3EJRQHEnXJPaKEawguE=
X-Google-Smtp-Source: AGHT+IFq7CVQngrprbj/jbujEv0pCxSX/9ljktjnxugPkA8tcIxxNL7KoLqZldHeiN0wb9s0yFwN0w==
X-Received: by 2002:a17:902:ea12:b0:1fb:8a0e:7730 with SMTP id
 d9443c01a7336-201ca1b12d6mr7854895ad.26.1723474633362; 
 Mon, 12 Aug 2024 07:57:13 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-200bb8fd835sm39006955ad.89.2024.08.12.07.57.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Aug 2024 07:57:13 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Mon, 12 Aug 2024 14:56:25 +0000
Message-Id: <20240812145633.52911-5-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240812145633.52911-1-jdamato@fastly.com>
References: <20240812145633.52911-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1723474633; x=1724079433; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Yv3Kiio+O9ZPFfr1NuylJH0Fc+893bNyrbJKgz9J96Y=;
 b=MU5jJtyNJ6ZkducI66MVKkos9GYWe04IlcyzczcIE67jk2n6ffMoh6gu2IPuSYEpAG
 UpgMlMvCkErT5W6CrzFSYmQFiY/A8aQl+2Mdsa3TbVW8x5h+qEp8LBXrG+FsTksNPUbK
 wdH+WOlNY8ejPFM/D2RPF3lHuTglUjsJ8iq4c=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=MU5jJtyN
Subject: [Intel-wired-lan] [RFC net-next 4/6] i40e: Use
 napi_affinity_no_change
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joe Damato <jdamato@fastly.com>, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use napi_affinity_no_change instead of i40e's internal implementation,
simplifying and centralizing the logic. To facilitate this, fix the type
of irq_num to be unsigned int.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h      | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 4 +---
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index d546567e0286..326bb7ffab26 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -955,7 +955,7 @@ struct i40e_q_vector {
 	char name[I40E_INT_NAME_STR_LEN];
 	bool arm_wb_state;
 	bool in_busy_poll;
-	int irq_num;		/* IRQ assigned to this q_vector */
+	unsigned int irq_num;	/* IRQ assigned to this q_vector */
 } ____cacheline_internodealigned_in_smp;
 
 /* lan device */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index cbcfada7b357..a120fdd87c3e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -4137,10 +4137,10 @@ static int i40e_vsi_request_irq_msix(struct i40e_vsi *vsi, char *basename)
 	int q_vectors = vsi->num_q_vectors;
 	struct i40e_pf *pf = vsi->back;
 	int base = vsi->base_vector;
+	unsigned int irq_num;
 	int rx_int_idx = 0;
 	int tx_int_idx = 0;
 	int vector, err;
-	int irq_num;
 	int cpu;
 
 	for (vector = 0; vector < q_vectors; vector++) {
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index c006f716a3bd..8fc39cf4c5d3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2810,8 +2810,6 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 
 	/* If work not completed, return budget and polling will return */
 	if (!clean_complete) {
-		int cpu_id = smp_processor_id();
-
 		/* It is possible that the interrupt affinity has changed but,
 		 * if the cpu is pegged at 100%, polling will never exit while
 		 * traffic continues and the interrupt will be stuck on this
@@ -2819,7 +2817,7 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 		 * continue to poll, otherwise we must stop polling so the
 		 * interrupt can move to the correct cpu.
 		 */
-		if (!cpumask_test_cpu(cpu_id, &q_vector->affinity_mask)) {
+		if (!napi_affinity_no_change(q_vector->irq_num)) {
 			/* Tell napi that we are done polling */
 			napi_complete_done(napi, work_done);
 
-- 
2.25.1

