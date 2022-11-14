Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E21AF6280F1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 14:12:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F67840A60;
	Mon, 14 Nov 2022 13:12:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F67840A60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668431575;
	bh=WyRJw4tCthgGrNqpsHQ3vseIMy2nMfGu85avytoZROI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K+kD4+JnfK8u9/tBDZu3EDXOiu+EnXeEYNqw3JdXed2ZKjO5bBoN6SODhhBcigdiy
	 a5Kuz/eW0SN8KKpXxOBNWXLKMBt6jjci1iSJQ9N+LDV0vnf6wgJvNl/c1Qv6joIKbs
	 fVASVwar4RiYxThGwVnP2MFCU82hQcHN/om5DsxLW2xGTLqQ/djdkzb8VRpgUTTE+e
	 Wx9UjGTqDGX1HnEhsx/PU78ZqIoPZqsEh1sd2zCXUZIOwSYmDm1tmp41Rd5LXpgkt3
	 x/badwBA+e+euLApJKf1mjCWJ9FcGMOLT6d1NEazfb7vIO8GL45Rc6XbiWIcRds5mj
	 TC7la34lQI88w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id elSpyWuyAVp3; Mon, 14 Nov 2022 13:12:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3A684019D;
	Mon, 14 Nov 2022 13:12:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3A684019D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A2FF11BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7C95381987
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C95381987
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HAJiboCzDZpB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 13:12:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF61681926
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF61681926
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="313766784"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="313766784"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 05:12:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="616306070"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="616306070"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga006.jf.intel.com with ESMTP; 14 Nov 2022 05:12:41 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: netdev@vger.kernel.org, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com, edumazet@google.com
Date: Mon, 14 Nov 2022 13:57:53 +0100
Message-Id: <20221114125755.13659-12-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668431566; x=1699967566;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KpfNIjp3GXxfULG/7bGrVA214jUNUf6R3CPFkLj7qaQ=;
 b=nfAE+IPdGYGz9vHxRFFrGcFNdkharr5gr0tL3oS8Wa6TILwuTlAuBWE9
 wOVk+8jT453CV6m5JdQtrJr4xR3KEzjIx197f6B6G82kjwKk2E5bInkgX
 8LEFNsbu7E510Bd8fpfeN3zn1zQ7iJ9hFsYfJCair+9qgjy6OTiujG6jP
 WXx60gK2vepW+PoQnlCRhPO/B5v0ezU2olW+rnZpxq4H0SyVT6mrcOdjq
 a6l56vLk7rzeIukE3gKjA38LLJoHQGPE2zebK+YWGiEnb9alK7K+CzkYR
 ij6LM91Gc2O2GJJYm0/GVOooDQUA6vXvwbpB2LMljjc0xWIf/UPKmvR8f
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nfAE+IPd
Subject: [Intel-wired-lan] [PATCH net-next 11/13] ice: introduce eswitch
 capable flag
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
Cc: mustafa.ismail@intel.com, leszek.kaliszczuk@intel.com, jiri@nvidia.com,
 intel-wired-lan@lists.osuosl.org, shiraz.saleem@intel.com,
 przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The flag is used to check if hardware support eswitch mode. Block going
to switchdev if the flag is unset.

It can be also use to turn the eswitch feature off to save MSI-X
interrupt.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         | 1 +
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 6 ++++++
 drivers/net/ethernet/intel/ice/ice_main.c    | 5 ++++-
 3 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 62219f995cf2..df1f6d85cd43 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -501,6 +501,7 @@ enum ice_pf_flags {
 	ICE_FLAG_PLUG_AUX_DEV,
 	ICE_FLAG_MTU_CHANGED,
 	ICE_FLAG_GNSS,			/* GNSS successfully initialized */
+	ICE_FLAG_ESWITCH_CAPABLE,	/* switchdev mode can be supported */
 	ICE_PF_FLAGS_NBITS		/* must be last */
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index f9f15acae90a..8532d5c47bad 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -554,6 +554,12 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
 		return -EOPNOTSUPP;
 	}
 
+	if (!test_bit(ICE_FLAG_ESWITCH_CAPABLE, pf->flags)) {
+		dev_info(ice_pf_to_dev(pf), "There is no support for switchdev in hardware");
+		NL_SET_ERR_MSG_MOD(extack, "There is no support for switchdev in hardware");
+		return -EOPNOTSUPP;
+	}
+
 	switch (mode) {
 	case DEVLINK_ESWITCH_MODE_LEGACY:
 		dev_info(ice_pf_to_dev(pf), "PF %d changed eswitch mode to legacy",
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 9766032e95ec..0dfc427e623a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3739,8 +3739,10 @@ static void ice_set_pf_caps(struct ice_pf *pf)
 	if (func_caps->common_cap.dcb)
 		set_bit(ICE_FLAG_DCB_CAPABLE, pf->flags);
 	clear_bit(ICE_FLAG_SRIOV_CAPABLE, pf->flags);
+	clear_bit(ICE_FLAG_ESWITCH_CAPABLE, pf->flags);
 	if (func_caps->common_cap.sr_iov_1_1) {
 		set_bit(ICE_FLAG_SRIOV_CAPABLE, pf->flags);
+		set_bit(ICE_FLAG_ESWITCH_CAPABLE, pf->flags);
 		pf->vfs.num_supported = min_t(int, func_caps->num_allocd_vfs,
 					      ICE_MAX_SRIOV_VFS);
 	}
@@ -3881,7 +3883,8 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 		v_other += ICE_FDIR_MSIX;
 
 	/* switchdev */
-	v_other += ICE_ESWITCH_MSIX;
+	if (test_bit(ICE_FLAG_ESWITCH_CAPABLE, pf->flags))
+		v_other += ICE_ESWITCH_MSIX;
 
 	v_wanted = v_other;
 
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
