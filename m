Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0AD67B703
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 17:38:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D72D60FB8;
	Wed, 25 Jan 2023 16:38:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D72D60FB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674664697;
	bh=Nfa/GbRSOZ5swlHHpFWKG67NPIy0bgctVNZcAZg4Q/g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=6ivvW3VjZJvMN54Q15mCatJA+fAuiVy4psb4IyuDjgs1lF2l/gwzRmAezk0l8/0RU
	 fdiWu+hq25NfgmZVPS6de18z7Pj7JZRnh93XF2VwieEy8BN+ZRi34WGHJ3nnDWWUFR
	 Np/RgOX1bwHRluQuMg8vofa89ebZJQbcxdkpWXb56w+9FYkIbzoLkl8rJsqUV3H/Cz
	 sWUTi1ZFSlFz2RTcr1OIAn3C5l1LbUwfcMqDfmdD/04BQnDyQpsJaso2bq7IBp8LHI
	 ZImlB9BeANyNHjXIfutDlZtWC8GT29zHuUtrsmLb6fpq6jSDoz2iJcMe42z0kE/P6J
	 XdlF20rnhBEPw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BexrQzhx8QG7; Wed, 25 Jan 2023 16:38:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 843D860F72;
	Wed, 25 Jan 2023 16:38:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 843D860F72
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1FA111BF592
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 16:00:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E7DAF8220B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 16:00:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7DAF8220B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jidPU8a_fFD5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 16:00:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12D8D821CB
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 12D8D821CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 16:00:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="314494261"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="314494261"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 08:00:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="805045259"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="805045259"
Received: from amlin-019-051.igk.intel.com ([10.102.19.51])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jan 2023 08:00:38 -0800
From: Karen Ostrowska <karen.ostrowska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 25 Jan 2023 17:01:49 +0100
Message-Id: <20230125160149.1899331-1-karen.ostrowska@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 25 Jan 2023 16:38:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674662445; x=1706198445;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Re/BnaTlpKRn0VC75QILLoMApBdjsi0b7JPvdE1uOco=;
 b=RLtpXOsYUSO100lyT7J3zYbH6Nmp3BxcIqTbM2o3GEi9RUPue88wxtpG
 uQnp/jCAMDY8bQOhvWk1ytzlQqPYNI9X33Q5uiIQL1Yv+/XnRQO+ClLCF
 kM542FWWGc/J9Gm45yAUM3nXEnvbBdLWAc62Yujw7eSMy+Vv3mqd0Npsz
 bBFH1Cvsmr3hN89J+87iu4tdYl2Ll4cS58exIsHj2X0esdtP5BCoBljOG
 bexkf0YjwSoUfPwpXnEYCawCVG1fTxJZviTwyhb31XkyA4Y1OivBlxf6z
 soT/jtBfvZJtjhDUtoTTzNoACpSTvYwvjdQEn6kU8sa1w+6ZIdqvPWFS1
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RLtpXOsY
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix DSCP PFC TLV creation
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
Cc: Karen Ostrowska <karen.ostrowska@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Dave Ertman <david.m.ertman@intel.com>

When creating the TLV to send to the FW for configuring DSCP
mode PFC, the PFCENABLE field was being masked with a 4 bit
mask (0xF), but this is an 8 bit bitmask for enabled classes
for PFC.  This means that traffic classes 4-7 could not be
enabled for PFC.

Remove the mask completely, as it is not necessary, as we are
assigning 8bits to an 8 bit field.

Fixes: 2a87bd73e50d("ice: Add DSCP support")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 6be02f9b0b8c..789b99963910 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -1372,7 +1372,7 @@ ice_add_dscp_pfc_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
 	tlv->ouisubtype = htonl(ouisubtype);
 
 	buf[0] = dcbcfg->pfc.pfccap & 0xF;
-	buf[1] = dcbcfg->pfc.pfcena & 0xF;
+	buf[1] = dcbcfg->pfc.pfcena;
 }
 
 /**
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
