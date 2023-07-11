Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D369474EEBB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 14:24:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68237610C9;
	Tue, 11 Jul 2023 12:24:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68237610C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689078246;
	bh=/f1K4gp84JzsMrHpzwBNXJzRk0Decqx6GXVP6yRDO24=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IzmdXYvXNhs1DpWA0YQXsrNsTtyfurtBB6OCM3N0BmK6nrB8nq3pBwDfNNP1ZJ3dF
	 s5KLnGroQz/7cN5CXAXktmv+OEfJ/q2vOR7t/imdI82Z1fswoNgRiSuLSBBXpKXhD8
	 UqdZkKjt0vTOJ43cYmD0xIrvpRdwlCpvmdsPQCga43CZqdKUtV9c++ddpVX/USpLuZ
	 UkJAdjEHULam3GJDdseZLxecMNSaLAsbJgu72F+BWGjoR2cg46ASgX2IQ/mTFj9zo0
	 J2UYcH0b0q3B0QrVoSLXJ0d+lMwAy1l2eDa9LdQQpaK4NpzjGDDHTKDDgD7BFjUfr0
	 U1svwNKm4Klfw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SPgVgNc62E0l; Tue, 11 Jul 2023 12:24:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B03DE60E3B;
	Tue, 11 Jul 2023 12:24:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B03DE60E3B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 486051BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 12:23:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 21FC860ACD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 12:23:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21FC860ACD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j_Zy1tfetis0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 12:23:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CAEB60BCA
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6CAEB60BCA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 12:23:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="430690652"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="430690652"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 05:23:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="811191357"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="811191357"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Jul 2023 05:23:52 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 11 Jul 2023 14:27:41 +0200
Message-Id: <20230711122741.780900-2-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230711122741.780900-1-jan.sokolowski@intel.com>
References: <20230711122741.780900-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689078234; x=1720614234;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P3PAYgzcmHQQCh47SAtSP4rlSlaJ4I5pg7McTI7ryzM=;
 b=Ku4hayS6x6i0F7qeRYHSfdLN4kZzFAjkfNMxt2Jem380zzN/5uby9j0T
 ykTKntvVKNoIiHopbJ8kI8ny5UCTuVDdd+ALT/UrPDRuz+RWWIT6hu2hz
 Ii8d8o3w8rWv8DZZpHKOfvdHgv8O2JOTmK/y3umUxZ+2IvZGRTgf70kn9
 uigI9ePeM0J9noBlIPQyHDeWe2cs6ziCoUXZCOuqTAgc3ZzV6GAxg4QzQ
 KKRO/vOA/LZU6uX4Ynhw+T9Fk6sBJT+wr6MLAo+4OUHDmIfB0F8iZOM51
 Ibh1oEiQszh0xupqvjGLsvuONY5nuPby7DlNlFkPFUViBYw2sv7oB/wmH
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ku4hayS6
Subject: [Intel-wired-lan] [PATCH iwl-next  v1 2/2] ice: add FW load wait
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

As some cards load FW from external sources, we have to wait
to be sure that FW is ready before setting link up.

Add check and wait for FW readyness

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  2 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 41 +++++++++++++++++++
 2 files changed, 43 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 20f40dfeb761..531cc2194741 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -335,6 +335,8 @@
 #define VP_MDET_TX_TCLAN_VALID_M		BIT(0)
 #define VP_MDET_TX_TDPU(_VF)			(0x00040000 + ((_VF) * 4))
 #define VP_MDET_TX_TDPU_VALID_M			BIT(0)
+#define GL_MNG_FWSM				0x000B6134
+#define GL_MNG_FWSM_FW_LOADING_M		BIT(30)
 #define GLNVM_FLA				0x000B6108
 #define GLNVM_FLA_LOCKED_M			BIT(6)
 #define GLNVM_GENS				0x000B6100
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e3245ee635b2..48991c6e94f5 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4561,6 +4561,35 @@ static void ice_deinit_eth(struct ice_pf *pf)
 	ice_decfg_netdev(vsi);
 }
 
+/**
+ * ice_wait_for_fw - wait for full FW readiness
+ * @hw: pointer to the hardware structure
+ * @timeout: milliseconds that can elapse before timing out
+ */
+static int ice_wait_for_fw(struct ice_hw *hw, u32 timeout)
+{
+	int fw_loading_register;
+	u32 elapsed = 0;
+
+	if (timeout == 0)
+		return 0;
+
+	while (elapsed < timeout) {
+		fw_loading_register = (rd32(hw, GL_MNG_FWSM) &
+				       GL_MNG_FWSM_FW_LOADING_M);
+
+		/* firmware was not yet loaded, we have to wait more */
+		if (fw_loading_register) {
+			elapsed += 100;
+			msleep(100);
+			continue;
+		}
+		return 0;
+	}
+
+	return -EIO;
+}
+
 static int ice_init_dev(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
@@ -4573,6 +4602,18 @@ static int ice_init_dev(struct ice_pf *pf)
 		return err;
 	}
 
+	/* Some cards require longer initialization times
+	 * due to necessity of loading FW from an external source.
+	 * This can take even half a minute.
+	 */
+	if (ice_is_pf_c827(hw)) {
+		err = ice_wait_for_fw(hw, 30000);
+		if (err) {
+			dev_err(dev, "ice_wait_for_fw timed out");
+			return err;
+		}
+	}
+
 	ice_init_feature_support(pf);
 
 	ice_request_fw(pf);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
