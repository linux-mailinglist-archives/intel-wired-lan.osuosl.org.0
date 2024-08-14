Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 513A99522F0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 21:56:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D08F81854;
	Wed, 14 Aug 2024 19:56:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L8JlPjdtGC0H; Wed, 14 Aug 2024 19:56:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8437481E01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723665388;
	bh=6SsQd049w1VJs2EiKMiq0957clytV5ly2X8m1FY9+tg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kiyOpRiww44bmCUnW0wQ/PQjnZJBZhQtbF8MmhzdWv722wpvWe4sAH5EzXG9JRsuD
	 qVNN0UnZOkGGW/DHwLCmoSdZNtzxnp0SbVaX8RVtDj/0VowHHXJTe5CyZf7KeUUe+v
	 IXMQTJDIwbfATbOCO/w0Kpbr8OLh4HV5X8cJVoMwLJjTPtjfx9Yx/pMCnaqw14e2K5
	 yO0PdrgiXrBirWAfkDCmgVGHXpXU5Xn3qNuc17XgX/u6QgnhDtnOhH6xlAqBA78wL/
	 x267PBLXyqngIzR6qC74nnPhCcfhyerv1LdsZTU7wCDos2vRsZhZ+OL1A85Yz9haMU
	 K0i+deA8mVXLg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8437481E01;
	Wed, 14 Aug 2024 19:56:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9FDE01BF40D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 19:56:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8E470608C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 19:56:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P2wuIk45uaD7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 19:56:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D527F60598
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D527F60598
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D527F60598
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 19:56:25 +0000 (UTC)
X-CSE-ConnectionGUID: IJuYcZLuTy24UEApoc1yrg==
X-CSE-MsgGUID: jOJ9LVMCTeKhKkbfF3/ftw==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="33292512"
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="33292512"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 12:56:26 -0700
X-CSE-ConnectionGUID: H6NyRvX/RMOBzSeG9vr2wQ==
X-CSE-MsgGUID: 3dRDiYg5SC6rRCksWYI5ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="59869708"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by orviesa008.jf.intel.com with ESMTP; 14 Aug 2024 12:56:25 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 14 Aug 2024 21:54:31 +0200
Message-ID: <20240814195434.72928-3-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240814195434.72928-1-sergey.temerkhanov@intel.com>
References: <20240814195434.72928-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723665386; x=1755201386;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ce4Gm9sK8DtjolFBXVB0Ofy9mfw0ari2vWHuCBCGd8A=;
 b=Drb16wzPo0zYZU6j1tnu5Uzs3BKZX42Zvsi7tZ33Sf9NsaXtx+aUaA+M
 b5xpSxl0ktVe6JLYI/Dfdt5YVpLj357iCJB0QLLgEy0C9hmg2CkpKHKBK
 dHgjqDZQwf0s0eRT3l5rHEov7iswjt9H9JpC/JuWO38UBTm7KK87gE7E1
 s7+gGUc18NyrkvtnMZH0z35w8N/X72H7DxGQy64xNbVeYwAwLmfakz8UC
 ym6hY7YmelTLBsCrjtLux8qN0sRyTlrJV5QQVmgRMe6SoAUd1qauNsS25
 21s99ZOp3HxXF8wBSBWN7mIbYpO6BKj5eeasQD+ohrqORTz8xZ0SKkmVy
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Drb16wzP
Subject: [Intel-wired-lan] [PATCH iwl-next v5 2/5] ice: Add
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
index 31d1ab575ec2..f6c50063d374 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -57,6 +57,18 @@ static const struct ice_ptp_pin_desc ice_pin_desc_e810_sma[] = {
 	{  UFL2, { -1,  3 }},
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
  * ice_ptp_find_pin_idx - Find pin index in ptp_pin_desc
  * @pf: Board private structure
-- 
2.43.0

