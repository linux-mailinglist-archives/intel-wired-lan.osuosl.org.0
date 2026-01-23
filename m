Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UL+VCvPcc2nMzAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 21:41:23 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A1D7AB00
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 21:41:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F50B60906;
	Fri, 23 Jan 2026 20:41:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BDsXG84Kvn6c; Fri, 23 Jan 2026 20:41:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D78E760902
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769200878;
	bh=AU44HUCEHUqwi5+mrhLfRciiivzSXDT+0k5KnWcApVg=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=Qel8mppvNla+nJtZY/dyDQyPYMZrSYSkViAX0ih3p909TiY80AiIlmDqElFzcwxy/
	 2s0qF/0M2TP1HQG5w9UXZ6HHaogdhSRB7jF3petPwa+pHBQenVtPr1fZLNkssj8OtB
	 qXRjQNR4XX91jHk4Z1dfRR+1OQb4P4gGWWCBx8jr3tCi5hgPMF7gzXtywnAtMSefi9
	 qsnpVchoYL9l4fox6Cb0vfqW8AtXLzMVeTiE8nBrEHEg2y9jtHDCQINEFX0rloEj3K
	 R75vXZ78eTsuYz78GP1hW0g8XsTgd3A1yOUNWWq0kqOXGZz+50AOMGgoByaYlH+v8k
	 md1G0hOON+neQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D78E760902;
	Fri, 23 Jan 2026 20:41:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 170E4122
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 20:41:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F0FB5608FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 20:41:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nZLOYCT4dnyH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jan 2026 20:41:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::64a; helo=mail-pl1-x64a.google.com;
 envelope-from=369xzaqckd8yn3umz77s00sxq.o0yuz5qx-8u3qp-xmzxu454.04604x.03s@flex--brianvv.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 40189608FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40189608FA
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com
 [IPv6:2607:f8b0:4864:20::64a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 40189608FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 20:41:16 +0000 (UTC)
Received: by mail-pl1-x64a.google.com with SMTP id
 d9443c01a7336-29f1f69eec6so23696105ad.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 12:41:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769200875; x=1769805675;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=AU44HUCEHUqwi5+mrhLfRciiivzSXDT+0k5KnWcApVg=;
 b=kTMCq1epqySEDGaHmiG+hWFpEyy+1zMjrEhU0OeCk88GiZzACiHeucnA1gQXd7gwTm
 qpKEbhSANcu26JY8S8du6ED0TYlJx+NvOH0MQhXzO5NObaz8yDurRkqMDwR93kYH65mq
 8Zf/ep4h306+qDaQBU/flBoMfowqXyZQCOJgIZVHVEFfHCzFQbeUOkkGDK+J4+Bxoggn
 SOPmxEt1On9UWE3o+isweNcfIiLIfbTPcSELA9/NFkcUH0Ct6tk6YlKdsgs6tIVQsDdf
 dfoki9Uv7xdlMXlp/AF2v7QIwmraO/uK2a6VVqfV2KXwuBV95TdzkBWVc20kBCkDWZAR
 yCGg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVy9/CMEaa40uZ3Fe1WY9Vgu8hqteq5WMnlGnLzq3ADveMMyr659ghRXm8K/PDKRp9RvP32mF9Fv4g/3sOdUWA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyHgsxEBKSOawaDV1/EECu+M36hDshZeYJgxnSTk4fM+ClXYnh4
 3BfBFXizE4poXlzjgDcDQhTupJdxF/2Q7DilGtIozOzCtb7nTmauYssMj3ctF/Iy1HfaRiZkBtC
 jLKUtmGNt6A==
X-Received: from pjzh2.prod.google.com ([2002:a17:90a:ea82:b0:34c:34ab:8fd9])
 (user=brianvv job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:902:a501:b0:29e:bf76:2d91
 with SMTP id d9443c01a7336-2a7fe741875mr26673385ad.42.1769200875444; Fri, 23
 Jan 2026 12:41:15 -0800 (PST)
Date: Fri, 23 Jan 2026 20:40:58 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
Message-ID: <20260123204058.651080-1-brianvv@google.com>
To: Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org
Cc: David Decotigny <decot@google.com>, Li Li <boolli@google.com>, 
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 emil.s.tantilov@intel.com, Brian Vazquez <brianvv@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1769200875; x=1769805675; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=AU44HUCEHUqwi5+mrhLfRciiivzSXDT+0k5KnWcApVg=;
 b=w8EUfKH3OTV7F4fRybo6qtP00CKwzIzDm87mIr4UiKaiVBjiop9UoTgqJgAAHZymX9
 tct7QHTZFTqV31Y+7ByYJWvGirk6oy+wLeXaxrIOAQ2g6FMJkONiLOtIugVFncKerq87
 LlTGCl6b6Do8B+dOo7dTZfNkmz9dRm2UgQPm3FwFKcOhSe98fnENl/44BCeQ43PAi1Kh
 jViJ4X8VMwmj+OYSAi9xgkaZWuY5P/6xdgi5FF6nTdvUV777Onc4z9I0e/04XX0qmX5B
 h3JJmgQNS9NmnnXY3DZ9VcZPwXYFz1p2U1u9rYXyMQA+HfWkFEJybRAu7N/xPZh3D22f
 UNag==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=w8EUfKH3
Subject: [Intel-wired-lan] [iwl-net PATCH] idpf: change IRQ naming to match
 netdev and ethtool queue numbering
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
From: Brian Vazquez via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Brian Vazquez <brianvv@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:brianvv.kernel@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:decot@google.com,m:boolli@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:emil.s.tantilov@intel.com,m:brianvv@google.com,m:brianvvkernel@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,davemloft.net,google.com,kernel.org,redhat.com,lists.osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[brianvv@google.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 67A1D7AB00
X-Rspamd-Action: no action

The code uses the vidx for the IRQ name but that doesn't match ethtool
reporting or netdev naming, this makes it hard to tune the device and
associate queues with IRQs. Sequentially requesting irqs starting from
'0' makes the output consistent.

Before:

ethtool -L eth1 tx 1 combined 3

grep . /proc/irq/*/*idpf*/../smp_affinity_list
/proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
/proc/irq/68/idpf-eth1-TxRx-1/../smp_affinity_list:0
/proc/irq/70/idpf-eth1-TxRx-3/../smp_affinity_list:1
/proc/irq/71/idpf-eth1-TxRx-4/../smp_affinity_list:2
/proc/irq/72/idpf-eth1-Tx-5/../smp_affinity_list:3

ethtool -S eth1 | grep -v ': 0'
NIC statistics:
     tx_q-0_pkts: 1002
     tx_q-1_pkts: 2679
     tx_q-2_pkts: 1113
     tx_q-3_pkts: 1192 <----- tx_q-3 vs idpf-eth1-Tx-5
     rx_q-0_pkts: 1143
     rx_q-1_pkts: 3172
     rx_q-2_pkts: 1074

After:

ethtool -L eth1 tx 1 combined 3

grep . /proc/irq/*/*idpf*/../smp_affinity_list

/proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
/proc/irq/68/idpf-eth1-TxRx-0/../smp_affinity_list:0
/proc/irq/70/idpf-eth1-TxRx-1/../smp_affinity_list:1
/proc/irq/71/idpf-eth1-TxRx-2/../smp_affinity_list:2
/proc/irq/72/idpf-eth1-Tx-3/../smp_affinity_list:3

ethtool -S eth1 | grep -v ': 0'
NIC statistics:
     tx_q-0_pkts: 118
     tx_q-1_pkts: 134
     tx_q-2_pkts: 228
     tx_q-3_pkts: 138 <--- tx_q-3 matches idpf-eth1-Tx-3
     rx_q-0_pkts: 111
     rx_q-1_pkts: 366
     rx_q-2_pkts: 120

Signed-off-by: Brian Vazquez <brianvv@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index c2a1fe3c79ec..c1f8dfc570ce 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -4093,7 +4093,7 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport,
 			continue;
 
 		name = kasprintf(GFP_KERNEL, "%s-%s-%s-%d", drv_name, if_name,
-				 vec_name, vidx);
+				 vec_name, vector);
 
 		err = request_irq(irq_num, idpf_vport_intr_clean_queues, 0,
 				  name, q_vector);
-- 
2.52.0.457.g6b5491de43-goog

