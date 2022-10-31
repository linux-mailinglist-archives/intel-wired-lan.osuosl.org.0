Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B66961350B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Oct 2022 12:57:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEDDB813AE;
	Mon, 31 Oct 2022 11:57:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEDDB813AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667217465;
	bh=qAaU25ikD+vcFNMH/BzRFuaTv9QB27sRPHboxuTeUuo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8tOfasYy+3NSHCCPKfq9gYrQ4gpjmGmsj+Qyuh6kHfZBdAeJ1bEdLuopC5lsEgUY8
	 6Jzpkh6aT7rr1KdGDdEMZ2SnqzYAmTW+J2hNEMruxqNbRMhEeBbOsRi7UcSvqBu7mS
	 9SvWmNIfKdccfBzFWpQEanxXn2j95FWqiIfFKUFgKt+FK+Yss1fBNjUlKW5lILNaBb
	 464BwOk7zCHavqLe4CSW9INkWjXMvLf3JIarQ0f3azEO83Q99wY1j+UMmhockJd5ny
	 Ax/lzzLIokUygrfKUTLQbocmt+1zww38iW9i9VEfYu+htGNIDFx+xIxpkFr/w3dGCf
	 YGCP5SdHWOUVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aU1IdNemgeqz; Mon, 31 Oct 2022 11:57:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4EF1813FA;
	Mon, 31 Oct 2022 11:57:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4EF1813FA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 72E901BF2FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 11:57:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C1F4409C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 11:57:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C1F4409C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W0fTJCZ6pQrz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Oct 2022 11:57:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DDAE410DB
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7DDAE410DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 11:57:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="395193464"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="395193464"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 04:57:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="666804937"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="666804937"
Received: from s240.igk.intel.com (HELO s048.nql.local) ([10.102.18.202])
 by orsmga001.jf.intel.com with ESMTP; 31 Oct 2022 04:57:36 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 31 Oct 2022 13:00:28 +0100
Message-Id: <20221031120028.2457-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667217458; x=1698753458;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XKZRbNTlJPY4F0u3QqpJDBKKPrhNh8RfRV0lBQASzrc=;
 b=XddCOZ25Hbic4jc1+Y37LtuZDYQagnsYLCioHJKD1DDg3ar+YxONCCKz
 iwkvCqwVbETpQrXn8PebaZA93abubnVxjf0ESh1jwfdBlacPC+R7B6Iti
 0soMHrhsY4iePJ9IhnxMePRQBeWbVMm3sjkc97n2jAgBOczpGQLeoJyXe
 xa+vaI3stOs562EgDOSQBUHPgLDIyzfLkgmTXezSVG7iFRTYK+SGiwD6v
 Hl6T2XF3fqaZkAFn/RYsmo4ZVT3MGvCSKjN3pT18Njbr8qDNBBPt+44S/
 mjMRiEZKAqkc0XoGFFjNdwBlDNtphOFeA6VAad3cdVHmQUjPNsb7h1Wn9
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XddCOZ25
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix for VF MAC address 0
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

After spawning max VFs on a PF, some VFs were not
getting resources and their MAC addresses were 0.
This was caused by PF sleeping before flushing hw
registers which caused VIRTCHNL_VFR_VFACTIVE
to not be set in time for VF.

Fix by adding a sleep after hw flush.

Fixes: e4b433f4a741 ("i40e: reset all VFs in parallel when rebuilding PF")
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 72ddcefc45b1..635f93d60318 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1578,6 +1578,7 @@ bool i40e_reset_vf(struct i40e_vf *vf, bool flr)
 	i40e_cleanup_reset_vf(vf);
 
 	i40e_flush(hw);
+	usleep_range(20000, 40000);
 	clear_bit(I40E_VF_STATE_RESETTING, &vf->vf_states);
 
 	return true;
@@ -1701,6 +1702,7 @@ bool i40e_reset_all_vfs(struct i40e_pf *pf, bool flr)
 	}
 
 	i40e_flush(hw);
+	usleep_range(20000, 40000);
 	clear_bit(__I40E_VF_DISABLE, pf->state);
 
 	return true;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
