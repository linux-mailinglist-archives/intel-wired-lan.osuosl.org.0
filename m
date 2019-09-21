Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB873B9B06
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Sep 2019 02:18:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A0A286ECA;
	Sat, 21 Sep 2019 00:18:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZV3bL0IyfymI; Sat, 21 Sep 2019 00:18:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A81A48742D;
	Sat, 21 Sep 2019 00:18:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C72A61BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2019 00:18:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 97F3188002
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2019 00:18:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wufRlReZa284 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Sep 2019 00:18:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1334387FFB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2019 00:18:53 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id w17so3231726oiw.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:date:message-id:user-agent:mime-version
 :content-transfer-encoding;
 bh=4wdHQT7wZ0vT382kibrjcM5F1PTUBVkHpE3DZ8cR2Co=;
 b=XgISbQrt34EXiiXJndg8NoHwtSJREs2ur6od7pKA4xauXGnL1IkYArzLZJFjINnCua
 IKstEM1I7lzzewPeVSRHoxYHSrFe7H4epM1klhvSlTIMYGUjxEu465OlEzxyYlCzmn6n
 YBIXjZbpCLYoucr45OPkjfS0XGre/oOTO9r/+P5EZTEVodQLa3IPDZItoA932KQVxWad
 FUfyvmHZBSd3BjgyJCHhGRgdf/bTIeEvvTIEXrd1w1wZQthw7s7nrUzMVDLVIM7kwf0/
 R5JhlY1rqZIT7DIQCz6qNlXi+UKvO4NyTd1aZfdSlhRWqsAT6Zlezbv9/0sUms7Exp30
 lrPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=4wdHQT7wZ0vT382kibrjcM5F1PTUBVkHpE3DZ8cR2Co=;
 b=WIWYs0+hWJVEpRGoCTgFI4B6/KrhsIFcX9pvHrs+ZVEJzUHVVh8S/pTITGfPQxn7ac
 ZDvkD8V8SiRJIZT5p91o9g/Y1ycPBle8L15eBpAlGGF/PlkK493x/Yh6KTrTBcfo1T9N
 AXZ4zxm+ousW8rW9WPV2C8bHK32PJCpP6/HmtcfOAbilJTGcR+nUtSZ0Cv8qLpoEAmN3
 vsd4skR7y6vS9LH2PMunCWH67w5IqruccatM8LkqApeygm3c8H1q4ZKK+0SQxof3Pzje
 xXpwL2xjO3hqygZSQDCeo6Y7yzNUuOvdBcUupPTi0Dyry2WJ8sColbjjN/tjy/c+5RgA
 Z+9w==
X-Gm-Message-State: APjAAAVrU2sEd+5G1pZRlEzSai4KlhxYcqyMYhHSXA5TpJlJpyHnQRuQ
 OvzNnZ1s+mOGZcL890TEyrfWIe3oTwQ=
X-Google-Smtp-Source: APXvYqyxKcCDEEJLb7h91eTlihaxd8vGuAkKX6iCib91MOZuNlhYNP2if5pxxNfZrH+nFcFK8wivoQ==
X-Received: by 2002:aca:4245:: with SMTP id p66mr5275707oia.73.1569025131834; 
 Fri, 20 Sep 2019 17:18:51 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id g18sm1175217otl.76.2019.09.20.17.18.50
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 17:18:51 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Sep 2019 17:18:50 -0700
Message-ID: <20190921001818.3431.45376.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH] ixgbe: Make use of
 cpumask_local_spread to improve RSS locality
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Duyck <alexander.h.duyck@linux.intel.com>

This patch is meant to address locality issues present in the ixgbe driver
when it is loaded on a system supporting multiple NUMA nodes and more CPUs
then the device can map in a 1:1 fashion. Instead of just arbitrarily
mapping itself to CPUs 0-62 it would make much more sense to map itself to
the local CPUs first, and then map itself to any remaining CPUs that might
be used.

The first effect of this is that queue 0 should always be allocated on the
local CPU/NUMA node. This is important as it is the default destination if
a packet doesn't match any existing flow director filter or RSS rule and as
such having it local should help to reduce QPI cross-talk in the event of
an unrecognized traffic type.

In addition this should increase the likelihood of the RSS queues being
allocated and used on CPUs local to the device while the ATR/Flow Director
queues would be able to route traffic directly to the CPU that is likely to
be processing it.

Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c |    8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
index cc3196ae5aea..fd9f5d41b594 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
@@ -832,9 +832,9 @@ static int ixgbe_alloc_q_vector(struct ixgbe_adapter *adapter,
 				int xdp_count, int xdp_idx,
 				int rxr_count, int rxr_idx)
 {
+	int node = dev_to_node(&adapter->pdev->dev);
 	struct ixgbe_q_vector *q_vector;
 	struct ixgbe_ring *ring;
-	int node = NUMA_NO_NODE;
 	int cpu = -1;
 	int ring_count;
 	u8 tcs = adapter->hw_tcs;
@@ -845,10 +845,8 @@ static int ixgbe_alloc_q_vector(struct ixgbe_adapter *adapter,
 	if ((tcs <= 1) && !(adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)) {
 		u16 rss_i = adapter->ring_feature[RING_F_RSS].indices;
 		if (rss_i > 1 && adapter->atr_sample_rate) {
-			if (cpu_online(v_idx)) {
-				cpu = v_idx;
-				node = cpu_to_node(cpu);
-			}
+			cpu = cpumask_local_spread(v_idx, node);
+			node = cpu_to_node(cpu);
 		}
 	}
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
