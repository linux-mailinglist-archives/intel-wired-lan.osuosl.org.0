Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A577C776D04
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 02:23:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CB32418EA;
	Thu, 10 Aug 2023 00:23:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CB32418EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691627017;
	bh=/6xe03/ClmZAOM3XB5s/+btzRtC45q3hnKVB7r32BvA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zAZSg2zXX3cchX4S17UiVv1mcs4fFcV+bn6uZmFsdd6cKc5H3FF3fjzR9m2CN04WY
	 mKafzbC1o9ThB17YMaK6B77wu411/3PyPj2diDWtvyKFaL508o4YeTL7JNaTiNDKfa
	 PXz/dbwYbwYAZxTGR6Wh+wZjvvdSarhLmIufmL6gz2WrBT4nQNGvUpUCIDdwTQ8SRy
	 H76rZVYx/wocpALA+yY5fwU5/zNk9FB68rw+0VmOjvsyse2biRJUQAemBnKLAyrKvW
	 AfPtoORf7z466EJHNFzgEb0nfPTzRxq8tiL/XUWHyrZ8hpbTMf1UVoKtApW4Si3Y32
	 s2u5tdkyEybvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OUF3i3OxbSU8; Thu, 10 Aug 2023 00:23:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4ED6418ED;
	Thu, 10 Aug 2023 00:23:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4ED6418ED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B62A1BF97F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 00:23:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 727F040359
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 00:23:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 727F040359
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G_6sFAbbchb0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 00:23:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 84627403AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 00:23:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84627403AA
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="368720843"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="368720843"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 17:23:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="797396125"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="797396125"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.102])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 17:23:23 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Aug 2023 17:23:13 -0700
Message-ID: <20230810002313.421684-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691627004; x=1723163004;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=x13+hl34vBPVCPEfpwk1nYGCHVVQhHx3+doEaSVBKy4=;
 b=S1HrMODt/YHbuL31YOU25+mV63Ynq58iNqVoAOwzt+vpmp2ajiSryQI7
 Tr8IDJCviwms9U35zlPHREUAefgcQHM347XnyIMNVmI8aPAyMN1+0H491
 Jo0C2iGBGT4mlbIEHXoMFiov+Ehq9twY+OGXmL7nTqpH0bz9FWqbQanNg
 bDFr/ATPm8/SvDOfXoZYH84c0don5J+JUxJcCJJGdrPLOKxwpE2dXmYsH
 knqhY8YYyMxg4MOOqHjLA5gKKXqNRHJDV38ciU6qrreWIJNQvnHc8GdaT
 sojR1EmHMYrcGa9t4qtGs1SHcJyOt9NpmCLD+gBfPAxQ3h6qqvJYnhmwQ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S1HrMODt
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix receive buffer size
 miscalculation
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The driver is misconfiguring the hardware for some values of MTU such that
it could use multiple descriptors to receive a packet when it could have
simply used one.

Change the driver to use a round-up instead of the result of a shift, as
the shift can truncate the lower bits of the size, and result in the
problem noted above. It also aligns this driver with similar code in i40e.

The insidiousness of this problem is that everything works with the wrong
size, it's just not working as well as it could, as some MTU sizes end up
using two or more descriptors, and there is no way to tell that is
happening without looking at ice_trace or a bus analyzer.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index b678bdf96f3a..074bf9403cd1 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -435,7 +435,8 @@ static int ice_setup_rx_ctx(struct ice_rx_ring *ring)
 	/* Receive Packet Data Buffer Size.
 	 * The Packet Data Buffer Size is defined in 128 byte units.
 	 */
-	rlan_ctx.dbuf = ring->rx_buf_len >> ICE_RLAN_CTX_DBUF_S;
+	rlan_ctx.dbuf = DIV_ROUND_UP(ring->rx_buf_len,
+				     BIT_ULL(ICE_RLAN_CTX_DBUF_S));
 
 	/* use 32 byte descriptors */
 	rlan_ctx.dsize = 1;
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
