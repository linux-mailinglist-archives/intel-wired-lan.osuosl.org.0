Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7ABAE6894
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 16:27:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05F5C6124E;
	Tue, 24 Jun 2025 14:27:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LqkN_tLAUvny; Tue, 24 Jun 2025 14:27:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 875B360E80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750775255;
	bh=9DS9akJwWsLfvg3xtWIixrSnXK9PoZs9INX8gSMuq0I=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5EPL6rsmjPO0hVuKM2HtHMKGtiOU9NjkwdbpPQJ2+LDOuuZcj+C7Qcf9awoWiwJy/
	 v/YJethFVoKS2yfHtcAnqlVRPZ1eMeBws2WR7GAC3lxXGK1+HlDkn+GtU2PjHlzOaD
	 2Co59eo1chx9NbX/tbKTymprpXIZ67OVgHprGtsEtnJo7lvwvLJp8GyxNtNCNnMvlZ
	 olQvYfEFbbh6btUfYbdl99637rS+aFZexacdaIbx//HvEG+LqP2+syTA5QvOcQXn6J
	 eal47ua1iwGoI902hr7s9lvCbAsiy24LX46hmmaMRTFFW50c3yBj+ToBa8I2CqkeBU
	 cBuIEPwmuYOMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 875B360E80;
	Tue, 24 Jun 2025 14:27:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C59A154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 14:27:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 760BA60C26
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 14:27:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C4F0OCdaFNiG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 14:27:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EB71860BEE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB71860BEE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB71860BEE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 14:27:32 +0000 (UTC)
X-CSE-ConnectionGUID: F2Re9bZITwaoi+3i1z/F1A==
X-CSE-MsgGUID: SIB7vhFfSkaYqoXCjlx0fA==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="70441040"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="70441040"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 07:27:32 -0700
X-CSE-ConnectionGUID: NS39t5JmSteAzcSN/VsMGg==
X-CSE-MsgGUID: 6ZcSDeVRRHuTjO8Ox5u3Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="155965570"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa003.fm.intel.com with ESMTP; 24 Jun 2025 07:27:31 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Aleksandr.Loktionov@intel.com,
 przemyslaw.kitszel@intel.com, david.m.ertman@intel.com,
 anthony.l.nguyen@intel.com, michal.swiatkowski@linux.intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Date: Tue, 24 Jun 2025 07:26:41 -0700
Message-Id: <20250624142641.7010-3-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20250624142641.7010-1-emil.s.tantilov@intel.com>
References: <20250624142641.7010-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750775253; x=1782311253;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=pMVZuMp81uJ7pEBtzL1PGYWRrDHY2p+u4Dzw0rMjW6c=;
 b=Hb5JRC++kvWQUwsUIE8MwaW28MA7WzvHtMxaH5lqxA+L/Uzbla6a9h1H
 wTkcxpG2dAZZeV5v8NnWG+zpOvxhNUJrrdr6Cc+5UG1NsufKBK3La+Zyz
 wj51LwEILCtkZeBYVK2wucS3zMZpWd0EMYfM7Pgs+ws1M122QrnGy0KjF
 JeB0ZOhA9qe7DXw+SFStBHcycOKyrrVN7+npF1F5eJozbhUb51tUXece4
 dr6ogeOfmWiI0bUMvEfVMzWTqJ/8tRN/c6JiEAzOkbbioIaR/I+iHFeCc
 qDKWeGKAZu7EyPd/evKKQURDg2F+qytFe8qbgGemfOPCIedaisza/wiuw
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hb5JRC++
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: fix possible leak in
 ice_plug_aux_dev() error path
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix a memory leak in the error path where kfree(iadev) was not called
following an error in auxiliary_device_add().

Fixes: f9f5301e7e2d ("ice: Register auxiliary device to provide RDMA")
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_idc.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index 420d45c2558b..8c4a3dc22a7c 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -322,16 +322,12 @@ int ice_plug_aux_dev(struct ice_pf *pf)
 		"roce" : "iwarp";
 
 	ret = auxiliary_device_init(adev);
-	if (ret) {
-		kfree(iadev);
-		return ret;
-	}
+	if (ret)
+		goto free_iadev;
 
 	ret = auxiliary_device_add(adev);
-	if (ret) {
-		auxiliary_device_uninit(adev);
-		return ret;
-	}
+	if (ret)
+		goto aux_dev_uninit;
 
 	mutex_lock(&pf->adev_mutex);
 	cdev->adev = adev;
@@ -339,6 +335,13 @@ int ice_plug_aux_dev(struct ice_pf *pf)
 	set_bit(ICE_FLAG_AUX_DEV_CREATED, pf->flags);
 
 	return 0;
+
+aux_dev_uninit:
+	auxiliary_device_uninit(adev);
+free_iadev:
+	kfree(iadev);
+
+	return ret;
 }
 
 /* ice_unplug_aux_dev - unregister and free AUX device
-- 
2.37.3

