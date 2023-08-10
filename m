Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF64778457
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 01:51:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5909541DC1;
	Thu, 10 Aug 2023 23:51:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5909541DC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691711487;
	bh=K97cf1tVCZo16FUpCHBvCKlkfknc176PgF7c5BjQMwM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=YItxJL0PlGa3OPZO8R6IAC72X59509e+K8Sr+vX9Cg46b8C/QyJZdUX3KCpqqH1r6
	 E+QqcBvT7NcJJ8W+53T3U1THR+oY7tBGOLYxYgd0/BUnQmS0buPTXwnjZSIPSaPXJf
	 JRylqdDdBldVzSyOD3jBrcHBec83H2MRt37XVLBwffC1jUnARwbl23be7UiC2w3FRQ
	 XhWsHkRCHE7ja2mDEUa/Ylv17WTdeKKOVm5digkoYmPfT/UfJ2B6ZmzKDQJnPJBgeb
	 PKZjodA88CKKrzW4BCQQb0dC5FqqpEaO2jZ4ed0TKKruEwn5hAvzKS5Iq1jfaXh2Ng
	 NfOm6DKgjWfdA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s2_pfgWJfOIq; Thu, 10 Aug 2023 23:51:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AA7041DB8;
	Thu, 10 Aug 2023 23:51:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0AA7041DB8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 549581BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 23:51:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3990B40144
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 23:51:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3990B40144
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6tK5nJiTtMd1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 23:51:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91F4740012
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 23:51:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91F4740012
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="402521337"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="402521337"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 16:51:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="709331876"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="709331876"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.102])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 16:51:18 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Aug 2023 16:51:10 -0700
Message-ID: <20230810235110.440553-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691711479; x=1723247479;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+FebJGVtOU0ozNN9ME2PO2RSeW7ryCgG5maaWtlALcM=;
 b=m58YqInYuqLmVUcQQ2DYum7oGiQMp8Dh+wW0vtg51Q6WJivUFm7dZupv
 nGURfALAqqAyDdwmk7d9WYTcEEJ3kfaRVEfRMM95mY5P7wOFI3OraKMo6
 LSIFEQMz3c/lELua43CXW7jLBJ/y5ZQOeXdUuuyf1CfFbytSkiLrKkU7G
 kfYK9v/rIzdXR8HLC6acnDI0GzJEElNSxmaBTOVZnxzn58z7UbFMnWAND
 aWZY28j9mN/HCF6jmfJpG+CAgkBmqZQPqlZyh8nML1IdFpsKEZjt9305x
 SZzp4Tg/63ptHDXJ6on9rqo5Gzh029E9ZqUk640X7zZeXqh40BnRgjwQp
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m58YqInY
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix receive buffer size
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
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

Fixes: efc2214b6047 ("ice: Add support for XDP")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v2: added fixes tag pointing to the last time this line was modified in
v5.5 instead of pointing back to the introduction of the driver.
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
