Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5886086B446
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:11:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B68A4173A;
	Wed, 28 Feb 2024 16:11:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZiJJa3tbvZ98; Wed, 28 Feb 2024 16:11:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D4A1409FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709136683;
	bh=suU515v4P/RN9aDdgILWwByW4yNO8k6eXfq9Cl0Uirw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lf9xRDu5jX6KZmXOF9DGPFAOz42rTRW81p46U96q9g+viUj0uHuvqB19rjB0N6mKI
	 muoxOBsllbShdBtNTUufkNvWPWwf9GD5kiTUqKAZZ6CYnaBQD5/k3rlN8oPW5G7syO
	 hYwPaEen8NVRHbPAeyVK7C2Dazm3IGdIowSXHNncHl35xpsWwm7jwxn1Qx5jqo28/s
	 w7YweAsL41oD4cfSSzzGXkEsAD7ddKM/Yxo0wnpAyxLLHfCKAgYx+2D6do9nrrI6sg
	 C3fKraQ5JELVKAQZOWpcJCrswfmeB5LqFnocuVYwoAT1T8kpwdHuGdroa9wcpmgxoa
	 LgkrqkV4dYLhw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D4A1409FB;
	Wed, 28 Feb 2024 16:11:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EE9141BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC25C409FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uD6h7JQvpkou for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:11:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6BC914052E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BC914052E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6BC914052E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3706579"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="3706579"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 08:04:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7527702"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 28 Feb 2024 08:04:10 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id DA1AD36825;
 Wed, 28 Feb 2024 16:04:04 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 28 Feb 2024 16:59:45 +0100
Message-ID: <20240228155957.408036-2-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240228155957.408036-1-larysa.zaremba@intel.com>
References: <20240228155957.408036-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709136680; x=1740672680;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OUeJ0q/Q4TSugz58SFBLkzeTCYbClmf+g/buseTVPBw=;
 b=cCRkFuTyjgwPVe8Ft0g6wd8DGGP+myFss0sg5RT3mSf0PHqeRGBdiVp+
 RPjS821m6u/pwKrTroloyAiaEXnKdURIEZ0CAwjS2MmfG6d+DNM1CpSQt
 92P4KdG+Zx2r0rqVgW+YLED5EEUiN8vxZRF7MlkHsgW0gFIFmV2KtzKe8
 LfLyCTTStQ1ZdkgT/7T0HHt1g5TjaOwQkArr6558mDCrs8K8FcShit0Gf
 2YLRZcuJKLSZoDoegagTOPgqoRKpBRdDxbgxWI7DUDbnHsaneY+UBAh2X
 hxQ+8MVTcfgyIHK+AUb/hMalvh2xePWKx+pZ2186Mb28Ow/a4WNlkboeS
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cCRkFuTy
Subject: [Intel-wired-lan] [PATCH iwl-net 1/5] ice: Add function to get VF
 from device struct
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, Jakub Buchocki <jakubx.buchocki@intel.com>,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "David S. Miller" <davem@davemloft.net>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Pawel Kaminski <pawel.kaminski@intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 Lukasz Plachno <lukasz.plachno@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Introduce a helper ice_get_vf_by_dev() to look up VF for a given struct
device.

Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 30 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h |  6 +++++
 2 files changed, 36 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 2ffdae9a82df..21d22e3ad0ba 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -45,6 +45,36 @@ struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
 	return NULL;
 }
 
+/**
+ * ice_get_vf_by_dev - Get pointer to VF by device
+ * @dev: the device structure
+ *
+ * Locate and return a pointer to the VF structure associated with a given
+ * device.
+ * Return: valid VF structure associated with the device, NULL if none exists
+ */
+struct ice_vf *ice_get_vf_by_dev(struct device *dev)
+{
+	struct pci_dev *vfdev;
+	struct pci_dev *pdev;
+	struct ice_pf *pf;
+	struct ice_vf *vf;
+	unsigned int bkt;
+
+	vfdev = container_of(dev, struct pci_dev, dev);
+	pdev = vfdev->physfn;
+	pf = pci_get_drvdata(pdev);
+
+	rcu_read_lock();
+	ice_for_each_vf_rcu(pf, bkt, vf) {
+		if (vf->vfdev == vfdev)
+			break;
+	}
+	rcu_read_unlock();
+
+	return vf;
+}
+
 /**
  * ice_release_vf - Release VF associated with a refcount
  * @ref: the kref decremented to zero
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 0cc9034065c5..48f4cdbd6d27 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -213,6 +213,7 @@ static inline u16 ice_vf_get_port_vlan_tpid(struct ice_vf *vf)
 
 #ifdef CONFIG_PCI_IOV
 struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id);
+struct ice_vf *ice_get_vf_by_dev(struct device *dev);
 void ice_put_vf(struct ice_vf *vf);
 bool ice_has_vfs(struct ice_pf *pf);
 u16 ice_get_num_vfs(struct ice_pf *pf);
@@ -237,6 +238,11 @@ static inline struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
 	return NULL;
 }
 
+static inline struct ice_vf *ice_get_vf_by_dev(struct device *dev)
+{
+	return NULL;
+}
+
 static inline void ice_put_vf(struct ice_vf *vf)
 {
 }
-- 
2.43.0

