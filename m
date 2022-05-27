Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF25536065
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 May 2022 13:52:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FB9461688;
	Fri, 27 May 2022 11:52:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rnPKe0Gk-CLc; Fri, 27 May 2022 11:52:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A44261687;
	Fri, 27 May 2022 11:52:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A547B1BF40B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 11:52:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C648418B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 11:52:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 90GJJYwtQB6M for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 May 2022 11:52:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4C37C41C40
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 11:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653652330; x=1685188330;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xtDspTkGTVNBv2Fynzqm59/G1rSF/Vj70ER9QDWgW+g=;
 b=ATTdHYdVIkQ1MqvHFUsnBMqKbnJsCb3FIVRrLmRe4FJi2C/825cKHAME
 iXsC6qsV1TG1P2ZpXVSkxOialu6gmfqwd8w8sHXwFgp/mcVujeKUaInmV
 7ziQeSnGt7itl7yJ8a8Lgoe7lRElatF+5M3Didf2qigx22x1/VuGYQ4Ol
 vaCgC0OfOHd8NZx9Wip6Q1ZAujpYsXKJk13CCgoXq1Xchoi+MxoglIIv1
 sKRe3ieXFX2uUymTlmp2gSE7FuEfIrGVqkX4XUxzNIOqls6ELPrEGdX7u
 V/uGPK7nM1VcyPTnJuR/GcFgfWIN+HjUWHwi2vyUG1Z91IT1xIYLQk84e w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="273273690"
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="273273690"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 04:52:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="550173653"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga006.jf.intel.com with ESMTP; 27 May 2022 04:52:08 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 24RBq7wk028577; Fri, 27 May 2022 12:52:07 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 27 May 2022 13:51:31 +0200
Message-Id: <20220527115131.7413-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] ice: disable stripping in default VSI
 ctx
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

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

In case when driver is in eswitch mode, having VLAN stripping enabled
causes failure in communication. All VLAN configuration commands are
blocked, because of that VF driver can't disable VLAN stripping at
initialization. It leads to the situation when VLAN stripping on VF VSI
is on, but in kernel it is off.

To prevent this, set VLAN stripping to disabled in VSI initialization.
It doesn't break other usecases, because it is set according to kernel
settings.

Fixes: f09901aa554a ("ice: remove VLAN representor specific ops")
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 70961c0343e7..b28fb8eacffb 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -887,6 +887,9 @@ static void ice_set_dflt_vsi_ctx(struct ice_hw *hw, struct ice_vsi_ctx *ctxt)
 			(ICE_AQ_VSI_OUTER_TAG_VLAN_8100 <<
 			 ICE_AQ_VSI_OUTER_TAG_TYPE_S) &
 			ICE_AQ_VSI_OUTER_TAG_TYPE_M;
+		ctxt->info.outer_vlan_flags |=
+			FIELD_PREP(ICE_AQ_VSI_OUTER_VLAN_EMODE_M,
+				   ICE_AQ_VSI_OUTER_VLAN_EMODE_NOTHING);
 	}
 	/* Have 1:1 UP mapping for both ingress/egress tables */
 	table |= ICE_UP_TABLE_TRANSLATE(0, 0);
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
