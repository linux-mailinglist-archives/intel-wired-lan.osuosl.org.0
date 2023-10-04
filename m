Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE7A7B7D35
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 12:32:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD26C83547;
	Wed,  4 Oct 2023 10:32:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD26C83547
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696415571;
	bh=pHIajuiNwweDigUr74MUhCjMpYViOAS8sHNUe5r+xII=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=QuY/SODEnUn2Nb6yZCj8tQmpHBv/M5WYF2lbQUSZLQFATpslM1Y83E1cbJyir7LTL
	 4UpdXFt5Lp2v2DbOlA/VwXhQmvRMpHxpfURgXzgQxnGyHHBam8mspjyi+otJoYgziE
	 EhRCi9vCMOw8LgsNgf0GWT3EabKLodw830s/Ff1SnWBUtQFyWif4jC6vp/U7oGhlE2
	 QvTsitcN657fJ5FwdtG/q/L7ZpCnGSUoQH8OMjGdvHUUWubLGbTt9XmW3j5zQnY1BU
	 J7KZFyQ3nCksYJK8PHcPaeypApMddtHyU0PZpJQS2WGoh2Non0/5UUy5cg7YiAeTSD
	 xunToNm0WoxpQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id laxjCDDdJKEj; Wed,  4 Oct 2023 10:32:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2521B834F4;
	Wed,  4 Oct 2023 10:32:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2521B834F4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 106391BF860
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 10:32:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E704E40C13
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 10:32:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E704E40C13
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8l1E1DUdc_Y8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Oct 2023 10:32:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 166E9400BF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 10:32:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 166E9400BF
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="380405691"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="380405691"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 03:32:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="841762861"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="841762861"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Oct 2023 03:32:39 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  4 Oct 2023 06:25:00 -0400
Message-Id: <20231004102500.1063799-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696415562; x=1727951562;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zt9aHw+e8tKwx6KYhcHajN7IyCKV4yB6rnotmdPrnxE=;
 b=XYQRR89SDtqVDViD01JIXO6sS+afMiuSw/H1YJwVFNOKx+FjAF15gT9J
 d/Q3NnAtkVD1xJwCEFqVZf2vUu+6pnGDa8zEahxJWJKWQFQVdWw3VkBOb
 7ArqtQ5nyeS3f7oaOzXl7fn68HQ8KzhmaXvm6NTM5Qotwv9i3BTX+exz8
 o5g9aXqpst6hN79Vof1CtxYRcjmxnwLb6DjLko+iCxsS2MQo2fD8kLMWO
 qNkS2199Vm/jIovNXPl/tMx5Xao7/NThykaMjILxLBi+EgDKdiYQCEFN0
 yfxhdU/1eBoXd5q3c8Rw7JtLFnhgbDX7QZreAfUDD6vLDhKUd5LYg+66s
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XYQRR89S
Subject: [Intel-wired-lan] [PATCH iwl-net v1] igb: Fix potential memory leak
 in igb_add_ethtool_nfc_entry
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add check for return of igb_update_ethtool_nfc_entry so that in case
of any potential errors the memory alocated for input will be freed.

Fixes: 0e71def25281 ("igb: add support of RX network flow classification")
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 319ed601eaa1..4ee849985e2b 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -2978,11 +2978,15 @@ static int igb_add_ethtool_nfc_entry(struct igb_adapter *adapter,
 	if (err)
 		goto err_out_w_lock;
 
-	igb_update_ethtool_nfc_entry(adapter, input, input->sw_idx);
+	err = igb_update_ethtool_nfc_entry(adapter, input, input->sw_idx);
+	if (err)
+		goto err_out_input_filter;
 
 	spin_unlock(&adapter->nfc_lock);
 	return 0;
 
+err_out_input_filter:
+	igb_erase_filter(adapter, input);
 err_out_w_lock:
 	spin_unlock(&adapter->nfc_lock);
 err_out:
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
