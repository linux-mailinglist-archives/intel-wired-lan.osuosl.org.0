Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8F87F380F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 22:20:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEE908135D;
	Tue, 21 Nov 2023 21:20:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BEE908135D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700601606;
	bh=40IXXjNZp6BIUXLjoBhHmxL3S1pXT1M0/zxx6w3Qfy0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rcv/9DcSLZwT7tJIArGXPsubdD0iSp7/IFvOwTsEkEl4Hi7T3VUlidAYkSICvPCTD
	 rnBoBGRWcYYApWu1G8vtcZvOr4BmH6WsHE36J1ighl+dq+PWL58xM80Xy9DaD7BorM
	 uCP92qDBPGdsfDph14T3RIV2NnkOAGvXUQuIw6clD0th6AF2GJn0R/mx6IxwNDKH+M
	 2b51HfbqJbyZvQvB5NOHwGeQopAZKngSbYjE1Pr814QbtUKLWHSw42Z4+KsPJQGAfS
	 TNwhPYAO84Ax1+q3DolxpmLXRVlNTvW/BTVUafIA1zxxsJyBs8zxtPOMit8XyiXmFb
	 7NOyBxyh5bhvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hjBDD3_xzKlb; Tue, 21 Nov 2023 21:20:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91B2B80B90;
	Tue, 21 Nov 2023 21:20:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91B2B80B90
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4FED01BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5501640883
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5501640883
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n4CwahDb2chY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 21:19:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 56FDC409F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56FDC409F1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="423022094"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="423022094"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="716630553"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="716630553"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:38 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 13:19:16 -0800
Message-Id: <20231121211921.19834-9-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231121211921.19834-1-jesse.brandeburg@intel.com>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700601582; x=1732137582;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OC03xYyoJPYBpU5DoEDlG43etSnZFhH3y1LKGe60NfU=;
 b=ipf7vYgk8ecGXCpL02jOysgQuBiiVucjuHO6vVyJVo+0NXA3qAtuRPXz
 Ha/vGvP6zV5/k12JzbdzpqlWN7pHTkYXyFd4+hm+L4fO6Yg5wCLbP/BhX
 im5A1nQhN1wHxwy53w6NJxfAun7ftBDZ3EgC5OKS8kULhhBA67diLdKaz
 k2mwEs+8k8gdZb3uDrklN42nAaTqqYZ59w9b3f93tMzMTfMQyTjp1aLBb
 v1xwrZUOt27Inb4VpDB3nJpn7b7jtw4VTpzrqiBd0ec9gGz5A13jIz5Rj
 XenY3KZYQ5odGbzAsgctGGlrsn5w6fzDp31s2PgYIJjopchoh6ZlrOaTA
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ipf7vYgk
Subject: [Intel-wired-lan] [PATCH iwl-next v1 08/13] igc: field prep
 conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>, netdev@vger.kernel.org,
 Sasha Neftin <sasha.neftin@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactor igc driver to use FIELD_PREP(), which reduces lines of code
and adds clarity of intent.

This code was generated by the following coccinelle/spatch script and
then manually repaired in a later patch.

@prep@
constant shift,mask;
expression a;
@@
-((a << shift) & mask)
+FIELD_PREP(mask, a)

Cc: Julia Lawall <Julia.Lawall@inria.fr>
Cc: Sasha Neftin <sasha.neftin@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 61db1d3bfa0b..d949289a3ddb 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3452,8 +3452,8 @@ static int igc_write_flex_filter_ll(struct igc_adapter *adapter,
 
 	/* Configure filter */
 	queuing = input->length & IGC_FHFT_LENGTH_MASK;
-	queuing |= (input->rx_queue << IGC_FHFT_QUEUE_SHIFT) & IGC_FHFT_QUEUE_MASK;
-	queuing |= (input->prio << IGC_FHFT_PRIO_SHIFT) & IGC_FHFT_PRIO_MASK;
+	queuing |= FIELD_PREP(IGC_FHFT_QUEUE_MASK, input->rx_queue);
+	queuing |= FIELD_PREP(IGC_FHFT_PRIO_MASK, input->prio);
 
 	if (input->immediate_irq)
 		queuing |= IGC_FHFT_IMM_INT;
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
