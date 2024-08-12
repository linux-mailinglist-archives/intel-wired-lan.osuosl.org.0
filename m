Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5064F94F0EB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 16:57:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2E55401B0;
	Mon, 12 Aug 2024 14:57:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jqeDOnfCMJ6v; Mon, 12 Aug 2024 14:57:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCA57408C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723474638;
	bh=DrcLy1oab8U1SIQex97TmW2YjriWxSFP0Rv3hsdafno=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z15/SlNetILLF8ToKntQ1F917aNORI0rHBY4mzhkNQ2dEiztsRWLVZCKbamJCZEuD
	 pJMIvvG9KSmldknVJTCnZwPbrO+IwYkudeyi9onK6mOVWleIOmbEFoX4QLxdVYpOzM
	 p3EPb44iC9K/L4ed+LsASwfh2WDWpZU9PPQCSZK2+XId9NAZJ8tj3Y3k1KYSA7cvXo
	 SJ2xdEfO9wHjdqCMnoNm5fTrB0M8hhy+wdWM6dQ3n0T6peU8QD8w7rVkfeFuMkKSc2
	 4flK5nR8VjYTG0VUtJUbnOV8GDxBAbIWGVSMA5i29PiZQ8iWL4A8Z0y4fBuLtJVycs
	 12VhuCQ1/r+9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BCA57408C7;
	Mon, 12 Aug 2024 14:57:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B45061BF20D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 14:57:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ACCA8404EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 14:57:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vSBk_IvwowFz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2024 14:57:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A8F31404BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8F31404BE
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A8F31404BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 14:57:15 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-1fd65aaac27so36642785ad.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 07:57:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723474635; x=1724079435;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=DrcLy1oab8U1SIQex97TmW2YjriWxSFP0Rv3hsdafno=;
 b=iMU4svrfBF5yR/NHjJAE2Ng7NkZoVlwCRsvErHmv50HkEN9txS1g8uViSeuxpUcTFx
 B+50kxem7fWeLq2KUzOusJdQezCvSaDD2fPTASzGikBgxl02TFXjBThHwXRoRsz24x/5
 /dyyK9Ul723E4qpLCg8qKd0sS19jSuCUqYtxjqQqHEqHxUxtUHstpUgwo+i3IAGdapyx
 ZwNix5Mx8mwNq7XGyQvIb7+1GsYnyAisGVCybdKavfMRQ70nIdhz5kcdIKJhNlklJLq2
 5x0ynvy9sbRsMgbkasip53Dmo6Qzil9G6t8j/7PjfWSBtwPtVaz3snZ0SC/A6oAmvMRO
 wgHw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXnpS/HR22nPcDEJQQf7aWq905NfnT5XhqoArPKxi4pVMkjV27d14YJmfEtQ2yZ0x9oAZ2H3WniBPDdyS9a8PQnrKizSUKG14oLnh431bpTlg==
X-Gm-Message-State: AOJu0YwkuhypGxL7/33Bma9ePhEg03XOmDVWIWiWxZW6cWWa6sOmwju3
 Wir8vH8Axx8EZ5bHIlXZOAGRQoU0BTJYnI4K/gJppuXndPVckUteoUjPzzoSGGU=
X-Google-Smtp-Source: AGHT+IFYynzfBMLo6xho+itYUwLn3K/YaUpQ+DqK2Cu71wzV3u7gXENwfqrtXKcgSmW4HC1IOzt8TQ==
X-Received: by 2002:a17:902:d4ce:b0:1fc:4680:820d with SMTP id
 d9443c01a7336-201ca92cd81mr5391865ad.9.1723474635006; 
 Mon, 12 Aug 2024 07:57:15 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-200bb8fd835sm39006955ad.89.2024.08.12.07.57.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Aug 2024 07:57:14 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Mon, 12 Aug 2024 14:56:26 +0000
Message-Id: <20240812145633.52911-6-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240812145633.52911-1-jdamato@fastly.com>
References: <20240812145633.52911-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1723474635; x=1724079435; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DrcLy1oab8U1SIQex97TmW2YjriWxSFP0Rv3hsdafno=;
 b=igeQN/N3/CzZ/RRBlk17BJdy5WFjIi/z4GLo0kCpyA569Xo+PBRIUmL16ZlNilXs+v
 aOqA3FiJVmcdEff+8s8918M8ElBG/kx+5FAAWlPenrXXSLAUm0OhsSsgz0URlMRqPyAm
 a2NtX1wqZO6pHfRIIgzR9U3WDC7MNtDdKYpeI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=igeQN/N3
Subject: [Intel-wired-lan] [RFC net-next 5/6] iavf: Use
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

Use napi_affinity_no_change instead of iavf's internal implementation,
simplifying and centralizing the logic. To support this, struct
iavf_q_vector has been extended to store the IRQ number, and irq_num's
type is changed to unsigned int.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h      | 1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c | 4 +++-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 4 +---
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 23a6557fc3db..b066bac6fa7c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -113,6 +113,7 @@ struct iavf_q_vector {
 	bool arm_wb_state;
 	cpumask_t affinity_mask;
 	struct irq_affinity_notify affinity_notify;
+	unsigned int irq_num;
 };
 
 /* Helper macros to switch between ints/sec and what the register uses.
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index ff11bafb3b4f..6c7733025ce3 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -565,7 +565,8 @@ iavf_request_traffic_irqs(struct iavf_adapter *adapter, char *basename)
 {
 	unsigned int vector, q_vectors;
 	unsigned int rx_int_idx = 0, tx_int_idx = 0;
-	int irq_num, err;
+	unsigned int irq_num;
+	int err;
 	int cpu;
 
 	iavf_irq_disable(adapter);
@@ -601,6 +602,7 @@ iavf_request_traffic_irqs(struct iavf_adapter *adapter, char *basename)
 				 "Request_irq failed, error: %d\n", err);
 			goto free_queue_irqs;
 		}
+		q_vector->irq_num = irq_num;
 		/* register for affinity change notifications */
 		q_vector->affinity_notify.notify = iavf_irq_affinity_notify;
 		q_vector->affinity_notify.release =
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 26b424fd6718..5eb78ac1f39d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -1408,8 +1408,6 @@ int iavf_napi_poll(struct napi_struct *napi, int budget)
 
 	/* If work not completed, return budget and polling will return */
 	if (!clean_complete) {
-		int cpu_id = smp_processor_id();
-
 		/* It is possible that the interrupt affinity has changed but,
 		 * if the cpu is pegged at 100%, polling will never exit while
 		 * traffic continues and the interrupt will be stuck on this
@@ -1417,7 +1415,7 @@ int iavf_napi_poll(struct napi_struct *napi, int budget)
 		 * continue to poll, otherwise we must stop polling so the
 		 * interrupt can move to the correct cpu.
 		 */
-		if (!cpumask_test_cpu(cpu_id, &q_vector->affinity_mask)) {
+		if (!napi_affinity_no_change(q_vector->irq_num)) {
 			/* Tell napi that we are done polling */
 			napi_complete_done(napi, work_done);
 
-- 
2.25.1

