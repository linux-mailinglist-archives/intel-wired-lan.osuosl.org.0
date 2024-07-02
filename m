Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7324F923C35
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2024 13:17:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A6584168C;
	Tue,  2 Jul 2024 11:17:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IoQtm_NbDUzV; Tue,  2 Jul 2024 11:16:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50CA041653
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719919019;
	bh=zba135kYYjOmZcaCow00jKjWxOW+hEAGN1zduRr4veQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1SgdYVfIFTFFJCoVC/rwccoU7+WMSAm+kkKiq8qvpYgcSa+JbBMo86XjUMWuOOoqP
	 yEKwiExpvKqGQnCHekjmcdVPjMn211GzHV0YUxUOmW1grvrCPgP03Jc70KCTqOQuC7
	 V5swQGJciQeBzgqc3j84p0qmzLPHVcq/LOLRRc7e70E3jvuV7cS/N75K1n3j7UDNOA
	 kpoUoLWr0pDyWG1izd/lEiH3sN1cRul9uZg//Nct2b9xz41VraUm3e9emkVQp3VP7h
	 P+bjgyythlN9ffJunRgME7CrsqwP+voafhJ4K7jZ/a8+fr6wIbLejK/j/9ADeyD4fj
	 e7Qc/7EqeCNUA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 50CA041653;
	Tue,  2 Jul 2024 11:16:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E35991BF310
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 11:16:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DE63660B63
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 11:16:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W4NEqz_-nvvD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2024 11:16:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1DB5C60B46
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1DB5C60B46
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1DB5C60B46
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 11:16:56 +0000 (UTC)
X-CSE-ConnectionGUID: lhzu2MauQfC5QTJuasTR4w==
X-CSE-MsgGUID: 3BYdWMlsSIaRUsakAw5OUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="28481849"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="28481849"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 04:16:56 -0700
X-CSE-ConnectionGUID: +Pk4ra+ASwyER5tc9v0uhA==
X-CSE-MsgGUID: mSQu9ctAQz6BBTge93oOqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="46005728"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by orviesa009.jf.intel.com with ESMTP; 02 Jul 2024 04:16:54 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Jul 2024 13:15:31 +0200
Message-ID: <20240702111533.83485-3-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240702111533.83485-1-sergey.temerkhanov@intel.com>
References: <20240702111533.83485-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719919016; x=1751455016;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0T11+bz0LjiGyoVeqekgMAkfL5OU8ZTFK7RUN6GjbXk=;
 b=mYl/CxBJ27hDqDJHPxPfYq0RtdUApb2p4xiH3XtTV7XS4cVAcpT7YtSL
 5ClHc7BoB0aecSovaQDvMc75GobBG3fYl1bZMvdEHh8W3ghr6LovniIIa
 ao3xz01GkyBirbIU8kvEQ5KkXXJKSTt9e/Xvg+/LkUQKJ/gp7OF1nWzM3
 8E/JoJFldywepUbF95RmgsVfoHnzmO2SIvUVNaSYBeSve/xj2Lv7jDlLq
 4GvQEXcq0bBawd4QGcnGwP152u+0HOoIQJYxET0fdazW86p4S4QTfdJL3
 sHtjtYX/h+OAYcfjPbcKXBrLv0th9nnXjHpnfD2boo83VYaW3XH3ODKEA
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mYl/CxBJ
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/4] ice: Add
 ice_get_ctrl_ptp() wrapper to simplify the code
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add ice_get_ctrl_ptp() wrapper to simplify the PTP support code
in the functions that do not use ctrl_pf directly.
Add the control PF pointer to struct ice_adapter
Rearrange fields in struct ice_adapter

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_adapter.h |  5 ++++-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 12 ++++++++++++
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
index 9d11014ec02f..eb7cac01c242 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.h
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
@@ -8,18 +8,21 @@
 #include <linux/refcount_types.h>
 
 struct pci_dev;
+struct ice_pf;
 
 /**
  * struct ice_adapter - PCI adapter resources shared across PFs
  * @ptp_gltsyn_time_lock: Spinlock protecting access to the GLTSYN_TIME
  *                        register of the PTP clock.
  * @refcount: Reference count. struct ice_pf objects hold the references.
+ * @ctrl_pf: Control PF of the adapter
  */
 struct ice_adapter {
+	refcount_t refcount;
 	/* For access to the GLTSYN_TIME register */
 	spinlock_t ptp_gltsyn_time_lock;
 
-	refcount_t refcount;
+	struct ice_pf *ctrl_pf;
 };
 
 struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 2f32dcd42581..53a3b6fc9dec 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -16,6 +16,18 @@ static const struct ptp_pin_desc ice_pin_desc_e810t[] = {
 	{ "U.FL2", UFL2, PTP_PF_NONE, 2, { 0, } },
 };
 
+static struct ice_pf *ice_get_ctrl_pf(struct ice_pf *pf)
+{
+	return !pf->adapter ? NULL : pf->adapter->ctrl_pf;
+}
+
+static __maybe_unused struct ice_ptp *ice_get_ctrl_ptp(struct ice_pf *pf)
+{
+	struct ice_pf *ctrl_pf = ice_get_ctrl_pf(pf);
+
+	return !ctrl_pf ? NULL : &ctrl_pf->ptp;
+}
+
 /**
  * ice_get_sma_config_e810t
  * @hw: pointer to the hw struct
-- 
2.43.0

