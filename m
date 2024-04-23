Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 587BD8AEA9F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 17:17:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F46981FED;
	Tue, 23 Apr 2024 15:17:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J01OZnbY-qbO; Tue, 23 Apr 2024 15:17:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 456C881F7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713885437;
	bh=nGMmhAasn2ouNgj+8Ag3Hn/+SXN1g1drC8/a1exJpWw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=bMOnj0w6axWws3CMPcXhd2H/SwtE4oolA8x4xWMNEr3vhzkgneMIcI+z54PJlhzvj
	 84BNOjD4c96uXCdvi1uPWa/s1pMEv+/CQwTIyBN+qQZ6lwMuEplgCtqihkbp22RaHK
	 RXrc/C9//xR4kXq4uk9DmpjFEN00qBgSAbRbI6E8smiauSZm6/MFL8R7AP/3SQxEgh
	 KJ41cIvnJkBwLh4HkPznsy13TLcCvUihNWvwBTAEXoUA9z6w9qjP4iBxkdPSCgsZK8
	 WDmAPEKDu18feMybowsBAEUlFju8HfFPdce9Rmpd61TyM7Voe3y1y3Oh8Dbli8ofC7
	 4wlo+mN7dRZzw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 456C881F7B;
	Tue, 23 Apr 2024 15:17:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 30D4A1BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:43:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1200D81E38
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:43:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JbhowwWMDNAV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 11:43:29 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E774981E3D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E774981E3D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E774981E3D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:43:28 +0000 (UTC)
X-CSE-ConnectionGUID: 4WicUSlWSPqUgFFR5folcA==
X-CSE-MsgGUID: cIRmogK+RbyamUCfegh5QQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="13237182"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="13237182"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 04:43:27 -0700
X-CSE-ConnectionGUID: +jPJQrEpRxKQK5zL04mnYA==
X-CSE-MsgGUID: Pu4K9qqjRXy5ZneCNqdR5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="28848199"
Received: from unknown (HELO localhost.igk.intel.com) ([10.91.240.220])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 04:43:25 -0700
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Apr 2024 13:43:08 +0200
Message-ID: <20240423114308.22962-1-dawid.osuchowski@linux.intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 23 Apr 2024 15:17:07 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713872609; x=1745408609;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ONUZ6ywtWwqCEpiCcgIoOtRzTRvlPlnxVvq4B2f3fnw=;
 b=JqyNOP3s4nR94tbbJOpidHsEO+X37u/aUm7BNKViAG9z864eqdgfdZ4C
 vm75DeqY/6ZEFiEy18u23tvFrOEtgCYdi1OeRuLVyyNG5xslhF/63eI8f
 fudF6uFBwvS2JG7i+lM/M9lWMH4rqNL6f6Dru42grl3yPoQD7hGu3rIIL
 lWfrDl3jGFo6Kpw5DrPtnq+y1owDbgoejcgeOzpDBnUfV1ns7TblqecvP
 06bxOtC2Dcx+9xCK+AHaGI8mQR684i+2dDvu/6qDsnDe1kWbDmGo9gXBU
 1CG6bOu8cFpJaGChzoUWPxDmPfEgRFfGdI8bLzoDmnHgvZr0D2KOL8LBC
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JqyNOP3s
Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: Do not get coalesce
 settings while in reset
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
Cc: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>, netdev@vger.kernel.org,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>

Getting coalesce settings while reset is in progress can cause NULL
pointer deference bug.
If under reset, abort get coalesce for ethtool.

Fixes: 67fe64d78c43 ("ice: Implement getting and setting ethtool coalesce")
Signed-off-by: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>
Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
---
Changes since v1:
* Added "Fixes:" tag
Changes since v2:
* Rebased over current IWL net branch
* Confirmed that the issue previously reported for this patch [1] by
Himasekhar Reddy Pucha was caused by other, internally tracked issue -
reposting this as an ask for retest as well

[1] https://lore.kernel.org/netdev/BL0PR11MB3122D70ABDE6C2ACEE376073BD90A@BL0PR11MB3122.namprd11.prod.outlook.com/
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 78b833b3e1d7..efdfe46a91ee 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3825,6 +3825,9 @@ __ice_get_coalesce(struct net_device *netdev, struct ethtool_coalesce *ec,
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 
+	if (ice_is_reset_in_progress(vsi->back->state))
+		return -EBUSY;
+
 	if (q_num < 0)
 		q_num = 0;
 
-- 
2.44.0

