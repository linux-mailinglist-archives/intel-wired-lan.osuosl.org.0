Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FF570F62C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 May 2023 14:22:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2A2761196;
	Wed, 24 May 2023 12:22:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2A2761196
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684930962;
	bh=D7ADaWwkHrccRcTIIq5wd9pNptFAGwlEp5R2Ie+Ih6c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2alSjDW5CyXT7UkbsGz1DETZ3vKHiuKRupMdhDj8Gis1f3QcJW6d/TPOK2DtRNYt2
	 u0Z52h1Dv5GLpRYso48rVgXw6vAb6vXLP6CCJnSS0OMSCYYw6vE/ywTLBaymldBx0n
	 7cDT4T0LSC/DVaii93C8dBbZbClqOyy0/nCBVLZ9TlgAXzPIubGexcZvYJ2odfeFbR
	 58e30HPE2GdHT1wNh6gwcQZCJkirNtYIrQVogxQ3gIXUByJDnIfz20Ps/qwT/HoHI5
	 5ooZBdPz0NO+IJYmSyeSVr+p0lKEwA/8+tZ3cf7VoX+JmwPJAvm/ii54+933TrGJZX
	 JBIChgDoyXSRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6riS_37QXFEt; Wed, 24 May 2023 12:22:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6B6B61190;
	Wed, 24 May 2023 12:22:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6B6B61190
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B5DE1BF354
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D7DB141CDC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7DB141CDC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id phYDEP2mi4TL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 May 2023 12:22:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D5034117A
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4D5034117A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="439900960"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="439900960"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 05:22:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="950995921"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="950995921"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga006.fm.intel.com with ESMTP; 24 May 2023 05:22:33 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 985D036C0C;
 Wed, 24 May 2023 13:22:32 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 May 2023 14:21:09 +0200
Message-Id: <20230524122121.15012-2-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524122121.15012-1-wojciech.drewek@intel.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684930956; x=1716466956;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u7xSJNuitU8ZO3NxJFi2gJOt3/gRIZDGcleOPmPp5gw=;
 b=GsnpU4FzQAy81/YdW8lPSUs8rP2ktg2zmZgz5bE+t/bgCStegbxpvg9n
 DLLh7TicocYRCDz5pcfePvGyZa5yNLpn2BOQNfxYrG7Ax3uPMFAZRyq3i
 mBQmC/T8D98LkWjAmzK6tur/gx52pPTq0B8Ct4ub0D1EwiimrjcrEmOUk
 sgbvxPNiS5xRaCAZstHbbEL6zKcO5mUFxL3PMGyJNoDzCjoIPRnDN8221
 uvgfjBaXtGlisaEIBGyzM/kRJMQf46G0OEY6LgG+7Q2L27RNhMkrmYN2r
 r3iRJNhibaN2J6FXhPuOM2cKGmInS3RLqxnJAepGJ8cRWY4djPWe65+mz
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GsnpU4Fz
Subject: [Intel-wired-lan] [PATCH iwl-next v4 01/13] ice: Skip adv rules
 removal upon switchdev release
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, simon.horman@corigine.com,
 dan.carpenter@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Advanced rules for ctrl VSI will be removed anyway when the
VSI will cleaned up, no need to do it explicitly.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index ad0a007b7398..be5b22691f7c 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -503,7 +503,6 @@ static void ice_eswitch_disable_switchdev(struct ice_pf *pf)
 
 	ice_eswitch_napi_disable(pf);
 	ice_eswitch_release_env(pf);
-	ice_rem_adv_rule_for_vsi(&pf->hw, ctrl_vsi->idx);
 	ice_eswitch_release_reprs(pf, ctrl_vsi);
 	ice_vsi_release(ctrl_vsi);
 	ice_repr_rem_from_all_vfs(pf);
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
