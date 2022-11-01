Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C269561554C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Nov 2022 23:53:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 530A5405C1;
	Tue,  1 Nov 2022 22:53:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 530A5405C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667343201;
	bh=Zu21KgGsAWjiWbqeaC1BZ/Pz29Lgb367uh7YGBqaFCg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=a51L6PiLgVESD8tcujQPBfHGSkv2ahg9GRwEKuYfam9hnr1rLb26VwgVkVRLzjVW9
	 bn+95pmn2HwZ7ur7lK2Lm1tJ2T74fP7vQlpQxWKhV9hZe51Bsp/aubEbykWLG/+EFt
	 k3gfVIFXXfV3v03Lh9h2AVhsO7JX96o+aOdSvp/FnW3i8YpCYiuKTCE7AGk7oXs2BR
	 wPqZwnAd72VvLXbKsSmNR7cEvVaFdViD/rrkyNLDKj58BXWIQ+LEyOvev0UYPaERXL
	 WVc6WgT4pBkmPVMPnbIXS/RIHfs4yKCEt5DPBqCJF5W9DZhqt9YldkYrKpJ/5oDaPP
	 mM/VLnHV94EOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LeXwILL08FMA; Tue,  1 Nov 2022 22:53:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62DCB4011B;
	Tue,  1 Nov 2022 22:53:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62DCB4011B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2838E1BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C39044074E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C39044074E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r-2is6B0bdtD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Nov 2022 22:53:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34B2F4055A
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 34B2F4055A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="371348109"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="371348109"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:09 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="723324025"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="723324025"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:09 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue,  1 Nov 2022 15:52:29 -0700
Message-Id: <20221101225240.421525-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221101225240.421525-1-jacob.e.keller@intel.com>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667343191; x=1698879191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zoO5icx6agb3nHi2fzl/CNPsPc6q1j0SZBa8x9sWGmQ=;
 b=nMgOP9TONY/MuPW18pKElWFvL/TF+Z3ZT4nptAJRZx8QcELUNawj63EC
 GDzC0Sf1W0BznHE3mwJfb6HsYpg9XLspkWGy3hB0LfnXTpWtd54QBpztn
 cZZ9+BsR6c49kVrZaa5G6EfCBstmOPjgvHEvTJyA4pkPHZlfZJIgNOlJz
 ihcWj6rKQi8VwK6Ar427AaNhNoFOizPxj62DoVrVu3g3leE/seug612RL
 7tlxiZmpT4i/2iJmd96asSNL/Ry8JkvaJI+xF9B5XH2iI5KaFoEUm2VW7
 NZMmSd8eBxlvpBOSQSN8FUx0b9eOQMaF1HtH6S0pWQ+UpHmEq+it5E1H6
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nMgOP9TO
Subject: [Intel-wired-lan] [PATCH net-next 04/15] ice: fix misuse of "link
 err" with "link status"
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
