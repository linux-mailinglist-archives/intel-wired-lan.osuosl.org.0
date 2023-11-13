Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C61B87EA733
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Nov 2023 00:59:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A6C25400F2;
	Mon, 13 Nov 2023 23:59:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6C25400F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699919954;
	bh=hevaNvNrfGMSNJsSE8ncIGJUUOw35Kp6jE4Z+WwAFZw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UzqBPE2CCetECvF/A38OB+yalocFL7gXy1US3UrAjClJjtEYesoW5VSb1M6B083dd
	 GpuNFodysB4VwV24/d9urNJWECiGCeN2FKIskl9AbWzeowxNP0Ags2LxpCmbqB4e9c
	 eYDEPTb2RfZgzHnr+Z9JSzc/Z3T9swwe7HX9n+gLue9AvgHzDbtnM8FpWbc4bQ+ukY
	 DwtHuPyTSTaKRXGrriQ5Gy3hO2SVgaAyneHo/EaVDZyKH9O66DRIV/fKiY0IKdO1zL
	 7jZxLd0mVEWYqdZWJaGb9ZA9iDA/c8bOc3iLhYcpRzwLZBxmpgNRUrg07UlNa3e9JJ
	 qogNoXFYiPgIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lmy7hbrBpQVU; Mon, 13 Nov 2023 23:59:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E1D92400A4;
	Mon, 13 Nov 2023 23:59:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E1D92400A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C863B1BF228
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Nov 2023 23:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA4D6400A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Nov 2023 23:59:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA4D6400A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VKpxsCgG2zs6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Nov 2023 23:59:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 652654004A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Nov 2023 23:59:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 652654004A
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="370728156"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="370728156"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 15:59:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; 
   d="scan'208";a="5816389"
Received: from sbahadur1-bxdsw.sj.intel.com ([10.232.237.139])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 15:59:03 -0800
From: Sachin Bahadur <sachin.bahadur@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Nov 2023 15:58:56 -0800
Message-Id: <20231113235856.772920-1-sachin.bahadur@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699919946; x=1731455946;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fH4JpMdDEZAExostlD6al4nlrb0YZR0fPX257O4FYuM=;
 b=Fk8jX214iuAMAdcW8Uq6CZVtDb0wlNdYQR1SGpVYjGHGj6sHq/SKpN7U
 UT9+qZqzF+3dMFQzlakonbk0mdJfheYs8QD1NqiDlBFnWC3VmY58tPFer
 GoDpqtHpYwWyCdFhROUmhpgNUJJME3Zuw5r2z28yBOSyC58gjvT+8njfK
 qgZjuylvifhvkD9cuITrLp1H0xrluwMyWC8r+Vnqox/p1teMeE3DGDlHM
 x9q7lRXiW6zlqEM+mUfZNH9hjt9/6FOY5z1IOQo8wz5fLAS42raeVYAHU
 /MG3ixlQUKwSg6JUyh77MaqiB9N6Fv4ntsuskE6UA1M6lr3ZR+M2TG6F/
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Fk8jX214
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Block PF reinit if
 attached to bond
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PF interface part of LAG should not allow driver reinit via devlink. The
Bond config will be lost due to driver reinit. ice_devlink_reload_down is
called before PF driver reinit. If PF is attached to bond,
ice_devlink_reload_down returns error.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Sachin Bahadur <sachin.bahadur@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index f4e24d11ebd0..5fe88e949b09 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -457,6 +457,10 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
 					   "Remove all VFs before doing reinit\n");
 			return -EOPNOTSUPP;
 		}
+		if (pf->lag && pf->lag->bonded) {
+			NL_SET_ERR_MSG_MOD(extack, "Remove all associated Bonds before doing reinit");
+			return -EBUSY;
+		}
 		ice_unload(pf);
 		return 0;
 	case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
