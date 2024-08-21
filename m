Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D090959E3C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 15:12:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0535F40363;
	Wed, 21 Aug 2024 13:11:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H0sOfK4dLjbc; Wed, 21 Aug 2024 13:11:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D0D840228
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724245917;
	bh=6SsQd049w1VJs2EiKMiq0957clytV5ly2X8m1FY9+tg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BqWV5FvvJONFZ919Fo4DWbRHSVi+EmJxzg16FP4JMk3O5FUIEVBV3EKhk5loRYFDP
	 L1Ft51iHDT+mSLbXGH3K6lB+/rk2ol4l6FHuQTUBubvisstPLsyApTUdtbylMq0tTo
	 SOIxtsKC+a9TDgPXZhT6rL3m93GnzcIk2qv6z1Ocmso7w2Jvzby4WJ73eR49x+kPMP
	 35E4242nUjznvLw8W2c5i91SP8nooGb1sxIqY056VBAKzU612DV7rsuiWwdGx8D594
	 Tn409jb67d5h1NBYxeidCeOfpuuj9fD63TXr45JEho35DVJm9HpKd0OAc5Vids3eVd
	 qsN0IcHoTcnTQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D0D840228;
	Wed, 21 Aug 2024 13:11:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 93EFF1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8F41F8118A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:11:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VVr6-oRBskV5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 13:11:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CFBBF81186
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFBBF81186
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CFBBF81186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:11:54 +0000 (UTC)
X-CSE-ConnectionGUID: t2pOVAHqQaKg7fVU8BBgDA==
X-CSE-MsgGUID: Fiq93vvFSE288jh+67qSrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="26356927"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="26356927"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 06:11:54 -0700
X-CSE-ConnectionGUID: HIWqhZZ5SQybPwFcOpHMcA==
X-CSE-MsgGUID: wsSfEur3QxS+8pZnif7M9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="65432395"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa005.fm.intel.com with ESMTP; 21 Aug 2024 06:11:53 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Aug 2024 15:09:54 +0200
Message-ID: <20240821130957.55043-3-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240821130957.55043-1-sergey.temerkhanov@intel.com>
References: <20240821130957.55043-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724245915; x=1755781915;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ce4Gm9sK8DtjolFBXVB0Ofy9mfw0ari2vWHuCBCGd8A=;
 b=TuNIvc3NIo34h0UpDDXnkeimiCx06D11f7zZZCiGQMpqxDHUDrjK52Le
 j1bsLXhvAyfHEKfPaNDAjfAs+m9Jfgvhutp2IQ4JvJgU2AZRhEv8VpHa8
 oh5hZ6kY/Z4tj0pztkG1iShPcjjGC/ihiIrg7RB3nEYWMN+PsDWLLBkx1
 Hm4NoJVK2q7L0NEbCN2gdIUXvDN8WluzVQEuhEtn8ttbh028p0zHQItbw
 yBa2/E1ot8e7GSRjaK44d5drDhLBNlgnXUvBqst9zYbYyHikLD9R5O6Fl
 HaJ6V8Uo48ngUjoVWeYK9TYEoEwfr2AcYj2923+bxc6AsTczu3kYy4HdF
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TuNIvc3N
Subject: [Intel-wired-lan] [PATCH iwl-next v6 2/5] ice: Add
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

