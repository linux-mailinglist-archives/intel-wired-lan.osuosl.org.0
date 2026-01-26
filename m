Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JmFFEl+d2m9hgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 15:46:33 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B0689B22
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 15:46:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B05460BDF;
	Mon, 26 Jan 2026 14:46:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A6uY_TTedK5i; Mon, 26 Jan 2026 14:46:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C274A60BE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769438790;
	bh=tOoCJ3J/mhZhm6qNN5V8ECkie0PBrx5I+GgAxlTdJmY=;
	h=Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=uLiDMUX/75FBNOuhxj9MzVIA0RQvQGHYeZs/AeU8HxsS6KXFENScxUPJCljRuoHpW
	 4bwp8q+FHAyqOc/evDJ1nXJW+AKjD+snWIrf/oYkPnYKRdhzF9G/QuxDKzehxGoqZ3
	 oF0Ler8EmDPxNiVNfNtrqsEX9aDM9Ew541ruNoNHaxBq8wVXPIz6IE659XON/PL2Gk
	 xYlhpC4SilZGshQkEPHgkkE7HR8e+CCixyRTgP9OuSaHg9welVsz+SnqtANVM1ovYe
	 n8dfmDob+foT8yAEirVPe/VqoSUyh2sQmcg5vqUm+wophIpRuYne37ahOfPY65GPWd
	 Kr5dkvEg37qTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C274A60BE0;
	Mon, 26 Jan 2026 14:46:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 012E61CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 14:46:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6CD260BDB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 14:46:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vMqzZIyI0fad for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 14:46:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::649; helo=mail-pl1-x649.google.com;
 envelope-from=3q353aqckd3apfwobjjuccuzs.qcawbhsz-kwfsr-zobzwghg.cgicgz.cfu@flex--brianvv.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1C6B760BDC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C6B760BDC
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com
 [IPv6:2607:f8b0:4864:20::649])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1C6B760BDC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 14:46:27 +0000 (UTC)
Received: by mail-pl1-x649.google.com with SMTP id
 d9443c01a7336-2a13cd9a784so41773945ad.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 06:46:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769438787; x=1770043587;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=tOoCJ3J/mhZhm6qNN5V8ECkie0PBrx5I+GgAxlTdJmY=;
 b=kGC+S/GJEQ7I39O9/rHEndk302S1X1Ns5bEIMSbUtuaHc7nMqlJyCWX0r6AvCFFVWj
 RA3EJ7QLBxigWRMEsaBdUQ5/MsoKrxADdi570o9pnRCF4jEPPzP3wlfv6+mViZ12qQCe
 0pqzAvuN1b0TIZPwZl4iz34wV0G+VOX/V1uyvvhWFH4xgKyXOk13miwPtciRu4TLyh4c
 5bOo6i8cdNoD7NWyIoSRxauTN07PSVKOH8eewsKp1zDHBPj9Ys2a7M2IA6RqqGo9FqZG
 tclZFEK7FfSUyXk4I7COk+jdPoMmhW5blfh5e9TItZeAN1o+Y2sNDRy1C40LfaAQ3YeE
 O1Hg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXqfSldXp1HdXQP9plw0jrJfmtJwq7YxozMAEgXNQr+oLyob/cT5vhPeQi/oLhS+GU/E/bIBZ6wf0L6yDv4/Ro=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzU02G3ZjetzZxbhe5Pa7oJ1GLTqJgvJcDd0VaBKw60XMHeJ77O
 bkU8XuJxJTM3jeZLQQ6eAJeU74s62/287A7JZtEzOCKAdeJkNTUcwulwxAWVwQsXh05h8cWP/d3
 Z5uHKGsMZMA==
X-Received: from plov11.prod.google.com ([2002:a17:902:8d8b:b0:2a0:b327:1816])
 (user=brianvv job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:903:19cc:b0:2a0:9d16:5fb4
 with SMTP id d9443c01a7336-2a8452310fbmr45605755ad.18.1769438787122; Mon, 26
 Jan 2026 06:46:27 -0800 (PST)
Date: Mon, 26 Jan 2026 14:46:24 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
Message-ID: <20260126144624.2319784-1-brianvv@google.com>
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
 emil.s.tantilov@intel.com, Brian Vazquez <brianvv@google.com>, 
 Brett Creeley <brett.creeley@amd.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1769438787; x=1770043587; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=tOoCJ3J/mhZhm6qNN5V8ECkie0PBrx5I+GgAxlTdJmY=;
 b=p5ppFdutfsMG6DOUymqajBg70u9giAh3vvGFHHG3K+fIlRrwonOiwVxRwa0vGgu5Km
 kasL94KS8JxFK2bwBzfMu9kyrGvTTmVj+9Eu8K2+YqtWoGE+ekKvaho8iK8cL9A62Z4E
 MLNCsaAj+veLz1VI3Dc/denLxDgy1dL55nwr9dEd9tXV7bhTbIZGxA8a3gTYpvLHG77U
 sFdE2HPivYUwNc2GGFjhBaptmMLIAx8Ym69UKsBosErkoV5Mu8si+TuNN5cI0GZwjSv3
 kOHFgof4DZ6an50eN+UBRXdM19bJOjIEXo/KrhiD/VSHP3lCwH0h9Z193hOmrTKdj419
 xlGg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=p5ppFdut
Subject: [Intel-wired-lan] [iwl-net PATCH v2] idpf: change IRQ naming to
 match netdev and ethtool queue numbering
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:brianvv.kernel@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:decot@google.com,m:boolli@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:emil.s.tantilov@intel.com,m:brianvv@google.com,m:brett.creeley@amd.com,m:aleksandr.loktionov@intel.com,m:brianvvkernel@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,davemloft.net,google.com,kernel.org,redhat.com,lists.osuosl.org];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	HAS_REPLYTO(0.00)[brianvv@google.com];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: B7B0689B22
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

Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
Signed-off-by: Brian Vazquez <brianvv@google.com>
Reviewed-by: Brett Creeley <brett.creeley@amd.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
V2: Add mising Fixes tag

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

