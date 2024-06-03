Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 115C98D88D1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jun 2024 20:45:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A476040C19;
	Mon,  3 Jun 2024 18:45:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id llOpOcdWM6-n; Mon,  3 Jun 2024 18:45:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFF0540BFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717440318;
	bh=omk5AoxJXW8zVU/44HyqPEU+ysbs3Nde4p1m5Z4Hxbg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=OdpxbQGmFNARZ4U9Oj26a2ClaIHtFCtCRWZmmwsAFYH2YTrv8BEnOIkH5n5JMB/18
	 BfLMZiINPNaNewql+m94de2rE1zgwLjn0c3+PIPd41A/WHdOTkGTaTE4zHd5ypYWYQ
	 A00EJLbGcyiNMfv6WhV14D5o97ND7seD7dKWWwin0XZIz3EheW3FQZX4fhwc7D3Bul
	 ReGyLGQ5IfJhRQN3i7LVq5zpwXbYJMHOHyE6ajLb4EiwYP7SaF9gXSdcVoR6P4WzMT
	 X3qt6CS8kl4Qc8h9vHa7XB3CBMDEc7uVS/j5/NBBQzZxcX+SFRzJ8C2oPUYkZMytUY
	 anWEQegGuhyAw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DFF0540BFD;
	Mon,  3 Jun 2024 18:45:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E00201BF35F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 18:45:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CB1A240911
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 18:45:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uujqm-iZ_gMm for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jun 2024 18:45:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 884D54090E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 884D54090E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 884D54090E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 18:45:14 +0000 (UTC)
X-CSE-ConnectionGUID: k81cOgESQ2W/LlRjklcDHQ==
X-CSE-MsgGUID: 10zCUn/OSLmwDgVxouL35Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="31451335"
X-IronPort-AV: E=Sophos;i="6.08,212,1712646000"; d="scan'208";a="31451335"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 11:45:14 -0700
X-CSE-ConnectionGUID: e6DF74BqQ+qPxMT5vYT39w==
X-CSE-MsgGUID: 6hRgwVB4QLCx+NfqGa/6TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,212,1712646000"; d="scan'208";a="37423379"
Received: from unknown (HELO dcskidmo-M40.jf.intel.com) ([10.166.241.13])
 by orviesa006.jf.intel.com with ESMTP; 03 Jun 2024 11:45:15 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  3 Jun 2024 11:47:14 -0700
Message-Id: <20240603184714.3697911-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717440315; x=1748976315;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3a4r7SyStC0TtS2GfY1JvWtSVnVpbpfOLb1Hk0c9r9E=;
 b=P08AQlezDs+2UZECj2VhOGzvwiHsxGdidS1DOcHoREaP2tjAiWg7Jc0r
 P9Bcu9Q4ZFts2pHnQIAiCGQtLEmdv32qHiMTAvw1l0UcDsjObJjQd6yi+
 S3pmEsKVVTteVEwaGPVkwSZXAbjSZ2nF8wjzLX8jhy+I7qR5Px1KwG3lq
 zzVyy30pt0g2dqNj9HwyrGcENBqmr3zrFFTZ1jRZmEfEI3NSE4MnYLGcw
 At7KHH8eISwTS3V4rHBquJsc+HYYx2zCIoQWC+tHgewAJ3Fj919Vc0y72
 5MpEYzBVH1ZUjdjYmQp+RdnHsPXnhuOhlaTEsplCZcLAR5vj6h6gLEgTB
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P08AQlez
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: extend tx watchdog timeout
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
Cc: netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There are several reasons for a TX completion to take longer than usual
to be written back by HW. For example, the completion for a packet that
misses a rule will have increased latency. The side effect of these
variable latencies for any given packet is out of order completions. The
stack sends packet X and Y. If packet X takes longer because of the rule
miss in the example above, but packet Y hits, it can go on the wire
immediately. Which also means it can be completed first.  The driver
will then receive a completion for packet Y before packet X.  The driver
will stash the buffers for packet X in a hash table to allow the tx send
queue descriptors for both packet X and Y to be reused. The driver will
receive the completion for packet X sometime later and have to search
the hash table for the associated packet.

The driver cleans packets directly on the ring first, i.e. not out of
order completions since they are to some extent considered "slow(er)
path". However, certain workloads can increase the frequency of out of
order completions thus introducing even more latency into the cleaning
path. Bump up the timeout value to account for these workloads.

Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index f1ee5584e8fa..3d4ae2ed9b96 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -770,8 +770,8 @@ static int idpf_cfg_netdev(struct idpf_vport *vport)
 	else
 		netdev->netdev_ops = &idpf_netdev_ops_singleq;
 
-	/* setup watchdog timeout value to be 5 second */
-	netdev->watchdog_timeo = 5 * HZ;
+	/* setup watchdog timeout value to be 30 seconds */
+	netdev->watchdog_timeo = 30 * HZ;
 
 	netdev->dev_port = idx;
 
-- 
2.39.2

