Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E813C5999ED
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Aug 2022 12:43:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D527A401A3;
	Fri, 19 Aug 2022 10:43:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D527A401A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660905821;
	bh=Q8+U5vE5cHD1jqDcTqR50fOFKkfNp4bZQyaZ62297jE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8pqJvD5bvt+PXABC8Dgax/CpIMElWQ2o+ryHbcRzP9UtWP9AUrMHpbM2pubD7eMu5
	 P27Xp0dGNGIhtC17AKhaWLtqfsbMxKJG2WzYRycgCz4uIr2Ab+7bsxGUDBNacCVzKV
	 0DaVQioGOKrbQwKM704tLwkJ/zL27VZWMqebRuvAkirh1t2+0N5eNCg9JvOiqKOINO
	 UwO4O+lygfJX0wcyMD1+u8poXM+PyNG7CMOT2UC6HuMEWsnWQv7MNLDeBU/q35SiAw
	 ALs5HRFVxDNFlppxJpgGdswh6KepztAlxiS/J/p5UclDTEhCcxi8AXhn6Hx5e3u69+
	 XOtxBCPv67F5g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rDylB5lTetkA; Fri, 19 Aug 2022 10:43:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DD9E6402EB;
	Fri, 19 Aug 2022 10:43:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD9E6402EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C31871BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 10:43:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9ACCE410DB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 10:43:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9ACCE410DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xU5SOYKuN1mE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Aug 2022 10:43:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA605410A6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AA605410A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 10:43:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="319018908"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="319018908"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 03:43:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="853738923"
Received: from s240.igk.intel.com (HELO s048.nql.local) ([10.102.18.202])
 by fmsmga006.fm.intel.com with ESMTP; 19 Aug 2022 03:43:32 -0700
From: "Sokolowski, Jan" <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 Aug 2022 12:45:52 +0200
Message-Id: <20220819104552.1656-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660905813; x=1692441813;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5f0tc6Q3QLFIV5dkUmyLXGqj99C11T9ul2T/GhcPLVo=;
 b=WY4gsQ/zpTvlBH9xeL8pCF3QqXZLw5esrRW6Sl+vn9rzjYxQ/fbjrtzY
 CzS3ynq/c/Pv0aQb8dOepU5/VykR58RXEG9otnCaYl0P4eGVdvz36Qkeb
 Hcvf5aeOZSyGzIGrjjmcVH3iFBewcGG4MsLv4cW+LZCSFFsDgu86pqJam
 I9FOmSco8CTp4VUqubpLzyILMvKDbRWCx3BXcUXM9tsB2kCDunBh0A2jC
 bcHuRgNI6hIISzn/+zEQU4PANzRJQ8DjP/q/0cywO7jB4Du5rPDzBuPQS
 remcsVLB/gPqidyL6g6ChPGHUmA2Qy4jZIUMzePAeK6n9/ihCj/YjtPtT
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WY4gsQ/z
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix incorrect address type
 for IPv6 flow rules
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

It was not possible to create 1-tuple flow director
rule for IPv6 flow type. It was caused by incorrectly
checking for source IP address when validating user provided
destination IP address.

Fix this by changing ip6src to correct ip6dst address
in destination IP address validation for IPv6 flow type.

Fixes: efca91e89b67 ("i40e: Add flow director support for IPv6")
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 156e92c43780..e9cd0fa6a0d2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -4485,7 +4485,7 @@ static int i40e_check_fdir_input_set(struct i40e_vsi *vsi,
 				    (struct in6_addr *)&ipv6_full_mask))
 			new_mask |= I40E_L3_V6_DST_MASK;
 		else if (ipv6_addr_any((struct in6_addr *)
-				       &usr_ip6_spec->ip6src))
+				       &usr_ip6_spec->ip6dst))
 			new_mask &= ~I40E_L3_V6_DST_MASK;
 		else
 			return -EOPNOTSUPP;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
