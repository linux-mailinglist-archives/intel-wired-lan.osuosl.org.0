Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AD672E2CA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 14:24:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E5E9416F9;
	Tue, 13 Jun 2023 12:24:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E5E9416F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686659085;
	bh=oprmLjS+qkQFBzYfAS2HO0Pl0wTsmue70byHBr2xi4k=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eVh2fzhDmON0UI9u0HA8vPiDxn4dDT2ywDGrUg22BMzxrb+nBtvH6p4/UkT8VIB8l
	 dY69yPg8M/hLxdpJt13rpYR30kBTeZXpoljgmdS50XppDrxieldzXlDHvCH41hJlD8
	 pz0ev1SJazF6pPpNhE5NEo3sS+9t6BGtFoZSq+t+LMNAcofKd7aMiAsm6hmT6YEokR
	 /IWbLDpR/Mj5wzh6Noc0cUGToU0No4xQtBdFFFwBwF9dqku551Y84qtMe/cw2/iWvt
	 QZvQIOSKgplsZzO1TlRTYxAcdZ+aWLvIKoumwUaW8rz0HB9e8AjSBdzi87DF6DCdW4
	 m6GCv2PbaEDbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y8GknglVjJ2Q; Tue, 13 Jun 2023 12:24:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C0DE4063D;
	Tue, 13 Jun 2023 12:24:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C0DE4063D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD0501BF352
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 12:24:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B6E8C822C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 12:24:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6E8C822C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 78m8AmgXgtqx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 12:24:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27B718214C
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 27B718214C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 12:24:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="337951227"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="337951227"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 05:24:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="835872003"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="835872003"
Received: from pgardocx-mobl1.igk.intel.com ([10.237.95.41])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 05:24:32 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 13 Jun 2023 14:24:19 +0200
Message-Id: <20230613122420.855486-3-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613122420.855486-1-piotrx.gardocki@intel.com>
References: <20230613122420.855486-1-piotrx.gardocki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686659075; x=1718195075;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m+4uwLRuZN9fn+hK45LCaKkaZvlTk7MrI9TFDI/rJdM=;
 b=ljaQ+6Yef/0oStIpwxpFhUMc0HlNS8Tq8dfP6Bs5yNrwtMPNdZq1ybwR
 +skJZEowSBnaui/67r4RbmTZ1jGn2oyk2K93GRT5VadWHyyKYoVd+agq8
 T4pfd0Biw6+VkulSy2jIBASD0L3HOasI4ggMSwOxyf9uX+Zrtah7RCwKY
 lsIW75OcHifwN22hObjgAZ/sGfArRXf3LjMleRrAa+oO9iIcISlIg2S6j
 FdHyIRhlNeJRyExHCrvaOXDlumdv0/P3iwo7Ln20rNoFPqpYBK4SlDkS9
 83dvHR0T4xn7ChP9ta8XdkDOusyx1Zzpi6JLzMVRmJ7e9+Umm0N1S5mE7
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ljaQ+6Ye
Subject: [Intel-wired-lan] [PATCH net-next v2 2/3] i40e: remove unnecessary
 check for old MAC == new MAC
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
Cc: pmenzel@molgen.mpg.de, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The check has been moved to core. The ndo_set_mac_address callback
is not being called with new MAC address equal to the old one anymore.

Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index b847bd105b16..29ad1797adce 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1788,12 +1788,6 @@ static int i40e_set_mac(struct net_device *netdev, void *p)
 	if (!is_valid_ether_addr(addr->sa_data))
 		return -EADDRNOTAVAIL;
 
-	if (ether_addr_equal(netdev->dev_addr, addr->sa_data)) {
-		netdev_info(netdev, "already using mac address %pM\n",
-			    addr->sa_data);
-		return 0;
-	}
-
 	if (test_bit(__I40E_DOWN, pf->state) ||
 	    test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state))
 		return -EADDRNOTAVAIL;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
