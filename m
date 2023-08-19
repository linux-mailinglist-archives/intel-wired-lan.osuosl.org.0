Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7297819D4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Aug 2023 15:52:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86ACD83BFD;
	Sat, 19 Aug 2023 13:52:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86ACD83BFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692453144;
	bh=YslFJ13rBheCzV7KvdqJLOBXFbxYriXafZdPXUr4fug=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xFcd2TtvSYT/Qj48P1yzzKzhYHGs6mWTd4kxVbl/7P6Yw2CQhsuGQYhh08ZcS1O8t
	 k+yBEa4hlXXQT5XdrQJbgmW+ul9shULxAfvuvf/x+bvEkGaOc6MyaMY0aP408eL7wu
	 Txba26wHJqR9Gb3hb4ndkBfN31FGcQ1Tiaa/RMRIy7vb3JtZbwzS/Ca3/ORfKPsT2v
	 DJNtoVWslOTaC4J0r+klDYjegYMKnClwTqJCddEVp22ykUUMgBVFA+YOSwYhJ0R5a0
	 LnR1g1BPDKDRvuqf99ThQWKhSYEP6W5Xx/OtoE2/uhsQDP8Up2tJM6FJXVUg1D/Mem
	 5WBQC2tj/LTFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zUa9sMoX6_n0; Sat, 19 Aug 2023 13:52:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 507CA83BA1;
	Sat, 19 Aug 2023 13:52:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 507CA83BA1
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2B06A1BF476
 for <intel-wired-lan@osuosl.org>; Sat, 19 Aug 2023 13:52:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 05E6D83BE4
 for <intel-wired-lan@osuosl.org>; Sat, 19 Aug 2023 13:52:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05E6D83BE4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1mKYBA68AIr8 for <intel-wired-lan@osuosl.org>;
 Sat, 19 Aug 2023 13:52:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2694B83BA1
 for <intel-wired-lan@osuosl.org>; Sat, 19 Aug 2023 13:52:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2694B83BA1
X-IronPort-AV: E=McAfee;i="6600,9927,10807"; a="363463622"
X-IronPort-AV: E=Sophos;i="6.01,186,1684825200"; d="scan'208";a="363463622"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2023 06:52:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10807"; a="805452177"
X-IronPort-AV: E=Sophos;i="6.01,186,1684825200"; d="scan'208";a="805452177"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga004.fm.intel.com with ESMTP; 19 Aug 2023 06:52:11 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Sat, 19 Aug 2023 21:50:50 +0800
Message-Id: <20230819135051.29390-2-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230819135051.29390-1-muhammad.husaini.zulkifli@intel.com>
References: <20230819135051.29390-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692453135; x=1723989135;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=iNbzwRMjAEvSzQbxsOi+KU8F2Wyrzf5JNrk8JE3lgeI=;
 b=NzQSo3pJ4AOR2OPU/TYQGmPFt4aLNvc9YJn/hQBC2ojlJUOJTg3iAP7b
 ZSATX25M3jQXcU3VhBj3RClTpkExlLPP0t4bBuUZ0nmqQJlLOmQG/usL0
 dkOWJU5bpcVod1BUS5SyrIRB6PSxF9ZadCUaMHzvKAfkeM/o4liP0QA6V
 SrkI1PHKxr8jalyT6vF5ZL81CvNaF5t0kfl3rtZQeT+wyD4vxYsuO6Qg0
 Nlq5MMHA4ziMRvJTn7lYyJiczB6PK2GG+CSqLHB3XAPYkYZHcyFNe/WDU
 ca6x5pFA3ifA754KiButWxl5PAYUGJrcTW+ohloSyb36ml1Wzi+6nbiKZ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NzQSo3pJ
Subject: [Intel-wired-lan] [PATCH iwl-net v4 1/2] igc: Expose tx-usecs
 coalesce setting to user
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
Cc: bcreeley@amd.com, netdev@vger.kernel.org, edumazet@google.com,
 pabeni@redhat.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 kuba@kernel.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When users attempt to obtain the coalesce setting using the
ethtool command, current code always returns 0 for tx-usecs.
This is because I225/6 always uses a queue pair setting, hence
tx_coalesce_usecs does not return a value during the
igc_ethtool_get_coalesce() callback process. The pair queue
condition checking in igc_ethtool_get_coalesce() is removed by
this patch so that the user gets information of the value of tx-usecs.

Even if i225/6 is using queue pair setting, there is no harm in
notifying the user of the tx-usecs. The implementation of the current
code may have previously been a copy of the legacy code i210.

How to test:
User can get the coalesce value using ethtool command.

Example command:
Get: ethtool -c <interface>

Previous output:

rx-usecs: 3
rx-frames: n/a
rx-usecs-irq: n/a
rx-frames-irq: n/a

tx-usecs: 0
tx-frames: n/a
tx-usecs-irq: n/a
tx-frames-irq: n/a

New output:

rx-usecs: 3
rx-frames: n/a
rx-usecs-irq: n/a
rx-frames-irq: n/a

tx-usecs: 3
tx-frames: n/a
tx-usecs-irq: n/a
tx-frames-irq: n/a

Fixes: 8c5ad0dae93c ("igc: Add ethtool support")
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 93bce729be76..62d925b26f2c 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -880,12 +880,10 @@ static int igc_ethtool_get_coalesce(struct net_device *netdev,
 	else
 		ec->rx_coalesce_usecs = adapter->rx_itr_setting >> 2;
 
-	if (!(adapter->flags & IGC_FLAG_QUEUE_PAIRS)) {
-		if (adapter->tx_itr_setting <= 3)
-			ec->tx_coalesce_usecs = adapter->tx_itr_setting;
-		else
-			ec->tx_coalesce_usecs = adapter->tx_itr_setting >> 2;
-	}
+	if (adapter->tx_itr_setting <= 3)
+		ec->tx_coalesce_usecs = adapter->tx_itr_setting;
+	else
+		ec->tx_coalesce_usecs = adapter->tx_itr_setting >> 2;
 
 	return 0;
 }
@@ -910,9 +908,6 @@ static int igc_ethtool_set_coalesce(struct net_device *netdev,
 	    ec->tx_coalesce_usecs == 2)
 		return -EINVAL;
 
-	if ((adapter->flags & IGC_FLAG_QUEUE_PAIRS) && ec->tx_coalesce_usecs)
-		return -EINVAL;
-
 	/* If ITR is disabled, disable DMAC */
 	if (ec->rx_coalesce_usecs == 0) {
 		if (adapter->flags & IGC_FLAG_DMAC)
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
