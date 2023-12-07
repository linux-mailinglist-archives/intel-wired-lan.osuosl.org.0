Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91662808FB5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 19:20:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23D1D60AFF;
	Thu,  7 Dec 2023 18:20:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23D1D60AFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701973241;
	bh=HULKgBe/LqJ4/0mGr3F4fbk6SO15VpMZZjcn8Cv3H9U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=GlH0Y3fBiSqrUCKfdWiDJZNDdQ1HC7u+Za5gRhU5PMRjBXOotJmmOMEyhplN2dLQv
	 j6xhJIxnGx62ZlFZAErgwBX0RzGmBl0Kjm5G6xIAButsS7tFI22PDyKat2P5gWqIPn
	 xGBbBvbGHs4oCjxoR1ZkR0jHIgbeYB+yetc0Eonkmx4sMhXjJpfTAYYcVS2fL31T/I
	 Ew1rCqZln7aC5sXjhE1nLAHOtzpLb1B2lkOmmCpKyJwBlCnlQ+Bytx5OUceuBV145c
	 bLWo/4hOdzA90K1cO/d1JR2z3b5M4yDccVioB//Hnjcdez+BgpnD0ReGJL+qeOpJeq
	 et42aNxKx+n9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uRUV8CNArhNo; Thu,  7 Dec 2023 18:20:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE7C460ADE;
	Thu,  7 Dec 2023 18:20:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE7C460ADE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E55981BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 18:20:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C91D260ADE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 18:20:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C91D260ADE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dO-gEIJ4cxVu for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 18:20:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2033A60ACD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 18:20:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2033A60ACD
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1349377"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; 
   d="scan'208";a="1349377"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 10:20:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="721566108"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="721566108"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 10:20:03 -0800
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Dec 2023 10:21:58 -0800
Message-Id: <20231207182158.2199799-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701973234; x=1733509234;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Uh6ICvHM5Z9cI9fvL4WpgaNh4HLyMbOCcZVHnRMxEfQ=;
 b=D499TsTy00EqnNAgezWXxVpimuKJadIwjMLqcwXGcYELNoCkhTfQfScH
 JwcOM+fu+C8xMaBtCZoj/9VFd7JrGAKBVI4FowPsn0maxauzxVXaUYdBx
 k+Ek0Rzu+EOdLEQgjJTb4WmT1cLA9ESPj5bstyqvMqZijILVlhSz/n/Jk
 Yzcsmi7p4cdiOh/35FwMK1NwFTl7deXutjXpjk1fmGMH1c9Zf/37BOhj9
 Kp+ajtVs1Qf2/PEDAacF5lO0vNoHjnGFH2H1yWiQKmblS1zF2ITMY1pmq
 Y8yCk9GmrBgtJk6/nuJJlrfxaM5yE2403sy4r9vxDSR1vkLlvdRkrVbDi
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D499TsTy
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: alter feature support check
 for SRIOV and LAG
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

Previously, the ice driver had support for using a hanldler for bonding
netdev events to ensure that conflicting features were not allowed to be
activated at the same time.  While this was still in place, additional
support was added to specifically support SRIOV and LAG together.  These
both utilized the netdev event handler, but the SRIOV and LAG feature was
behind a capabilities feature check to make sure the current NVM has
support.

The exclusion part of the event handler should be removed since there are
users who have custom made solutions that depend on the non-exclusion of
features.

Wrap the creation/registration and cleanup of the event handler and
associated structs in the probe flow with a feature check so that the
only systems that support the full implementation of LAG features will
initialize support.  This will leave other systems unhindered with
functionality as it existed before any LAG code was added.

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 280994ee5933..b47cd43ae871 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -1981,6 +1981,8 @@ int ice_init_lag(struct ice_pf *pf)
 	int n, err;
 
 	ice_lag_init_feature_support_flag(pf);
+	if (!ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
+		return 0;
 
 	pf->lag = kzalloc(sizeof(*lag), GFP_KERNEL);
 	if (!pf->lag)
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
