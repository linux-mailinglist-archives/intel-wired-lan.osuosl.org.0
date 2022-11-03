Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE36618B03
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 23:02:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2DB881F61;
	Thu,  3 Nov 2022 22:02:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2DB881F61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667512929;
	bh=q1ETH53GunsRzE3VcXSRh/2hxddBJ5WvbQb4lNeJEPk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J0mVbp2zIDK/Kgho/eeSn6oMo9JsKl58b4J9M2hT9vzEb7gOAgFhL40AE04k1bza9
	 ANTzwlqHHdtO2yPvNhaMfymLTU+yDq2tQXv7MSHxvpGGf3pZS+AdO8q2qLPCvOROfA
	 HFP2YhD+rJ1CbKgcO/3YPLH6O2nm7js/vh2Ny4cYlb85wVcMzfUpM3RnkxxGZ0bSwV
	 4t6lXUeCXIqF77TTkdEaFFbcj//T/EjSbpB3UVXwy/jqZrdmgk9x1H+5fd/zC/PH00
	 7SuK5MF+3bQU5EJ9YGYfiS2rWUyJdWulSPPv2GEx1hpL26YDPtblX5GVlcXzDgKFWd
	 5zNHyw6YM6j0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9fSQcY0QBDCQ; Thu,  3 Nov 2022 22:02:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E427581EEA;
	Thu,  3 Nov 2022 22:02:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E427581EEA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C1901BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 74C4E40520
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74C4E40520
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Xd_7vCwP6I1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 22:01:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C75B240519
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C75B240519
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:01:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="297278196"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="297278196"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:01:58 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="777480251"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="777480251"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:01:58 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu,  3 Nov 2022 15:01:34 -0700
Message-Id: <20221103220145.1851114-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221103220145.1851114-1-jacob.e.keller@intel.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667512919; x=1699048919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yOh7Md7J+WSuCy6Qkg+3+b+odOquy32BAuUIS1IW/uo=;
 b=nFoiHN+wKD9k+gMzfScc4stLaNY1od6gaFPBTnx1c1sSjOvvWcz8zHaw
 eGYqbR4AE+b576gBpJQCZrsqmP8sb1KOL0jenno+QMHFhMkocyM6Wqupm
 kIn5caE9t3eoqqU6EpQcGBLCNSvVyUXnVHH9JwPEkwbCBVMD8A4CoO5aX
 WRBSdHKTZ9Ia+UIxFesJJiPJlwjjXUIPmS+N243OiHZe6nYT0tCFm5goI
 3nLU3QICZvi8f3jAtVM7bRsYhfFHy+EJrbge81U+rAGX+wFpNtiJW5fzc
 Oru8nPqOUEXSLL7iuQmO0z0aa/FxWOjHFJVGMCTfzKkoJdG3OIA8vDN0Q
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nFoiHN+w
Subject: [Intel-wired-lan] [PATCH net-next v2 04/15] ice: fix misuse of
 "link err" with "link status"
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

The ice_ptp_link_change function has a comment which mentions "link
err" when referring to the current link status. We are storing the status
of whether link is up or down, which is not an error.

It is appears that this use of err accidentally got included due to an
overzealous search and replace when removing the ice_status enum and local
status variable.

Fix the wording to use the correct term.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
No changes since v1

 drivers/net/ethernet/intel/ice/ice_ptp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 40606fa0c1d9..6a36256748fe 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1324,7 +1324,7 @@ int ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 	if (ptp_port->port_num != port)
 		return -EINVAL;
 
-	/* Update cached link err for this port immediately */
+	/* Update cached link status for this port immediately */
 	ptp_port->link_up = linkup;
 
 	if (!test_bit(ICE_FLAG_PTP, pf->flags))
-- 
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
