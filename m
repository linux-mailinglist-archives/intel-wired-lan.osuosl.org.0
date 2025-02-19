Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B59A3C32D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2025 16:10:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BDC453BF3;
	Wed, 19 Feb 2025 13:57:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zvxH9PeGhuDW; Wed, 19 Feb 2025 13:57:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2EDB85376E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739972612;
	bh=iFnXJuKCAwC80MKOkQHo2i+aRIoz4FmtFbLXW768qSE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OwKvGt+8Ts+YrM/9YTEGt3D8tEJeRwBcV1h9eFc9gehfKnE6eQjE+bsZC6cLTpuyO
	 eirHMD1Jco+UEanQsp5GSvIpO3bC/V5NnDdfmSWO/bJZGt9wYA9Yzpfbxmgx2+zdQ+
	 cmhqcRMhHbUl+8vegzV/MHsSUHYzXFA8mvRIkI4ewR+eBNqZfW6cGnPlnMw04j4iJ9
	 AGxuO17Re+xwSKIACyHae5LSDACTK69E6RhDnCQJde1nJB5OFStuOx5HD3d5pqKE9q
	 U/UDc5QvTGiFmKgvd2QluKVkIFz6VD/XL5JPcd9stALlJQkK7l+YbahJx3eWeFAauG
	 XYuB37ibY9ntg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2EDB85376E;
	Wed, 19 Feb 2025 13:43:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8AC6FC8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 13:36:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7188F608C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 13:36:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zGoE9WyNtR8d for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2025 13:36:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6796960889
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6796960889
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6796960889
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 13:36:16 +0000 (UTC)
X-CSE-ConnectionGUID: lm/krqRbQ8eyb487VK+iYA==
X-CSE-MsgGUID: rRmVw6UjQ3m6pH23RosROg==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="44473945"
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="44473945"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 05:36:15 -0800
X-CSE-ConnectionGUID: t0j7cc7wRBOnif+xEzOf/g==
X-CSE-MsgGUID: RUvCVmUdQ9GbQ/1js0djuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="115236101"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa010.fm.intel.com with ESMTP; 19 Feb 2025 05:36:12 -0800
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 340B333EB6;
 Wed, 19 Feb 2025 13:36:11 +0000 (GMT)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Konrad Knitter <konrad.knitter@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Simon Horman <horms@kernel.org>
Date: Wed, 19 Feb 2025 14:30:39 +0100
Message-Id: <20250219133039.38895-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739972177; x=1771508177;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LOKX4E6ujPutAZTVYfYNM95m76n5U1LtRGnhA3Kt6Io=;
 b=a+C92HNwdO+V61rjBQNMbahvd+LD+DQCejRiNsuLIphv9OWoYib2jrjp
 kcCaxGLxMRcfOavP+6zjpy9xn8pKY5kmgV/0CFeRJcJy9prETyNaQo0ZF
 2qlmqIVdNL5zpAn5pmbPBmJEnM/Uz8tZt1PlIWy+3NK+FS1QguZwxn/bg
 Q0ix+PQ11toIug1k3+noHB0uErAeYWrdOspb6P3Pt69xkQScUriojJDZY
 xzqmXQEgeH8bAGvSr2a0Vge+7riK2EkkNcqy0goPeDKn0KQwu4mzZSQkR
 p4HKoa7ztwFz0AoGSyUGk59+Lb1ahoyDOKAYKB7la/aNs/VrKJ1YmCn/m
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a+C92HNw
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: register devlink prior to
 creating health reporters
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

ice_health_init() was introduced in the commit 2a82874a3b7b ("ice: add
Tx hang devlink health reporter"). The call to it should have been put
after ice_devlink_register(). It went unnoticed until next reporter by
Konrad, which recieves events from FW. FW is reporting all events, also
from prior driver load, and thus it is not unlikely to have something
at the very begining. And that results in a splat:
[   24.455950]  ? devlink_recover_notify.constprop.0+0x198/0x1b0
[   24.455973]  devlink_health_report+0x5d/0x2a0
[   24.455976]  ? __pfx_ice_health_status_lookup_compare+0x10/0x10 [ice]
[   24.456044]  ice_process_health_status_event+0x1b7/0x200 [ice]

Do the analogous thing for deinit patch.

Fixes: 85d6164ec56d ("ice: add fw and port health reporters")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Konrad Knitter <konrad.knitter@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
Konrad wonders if regions registration should too be moved prior
to devlink_register(). From net/devlink code it looks safe both ways,
and there is no documentation on what should be the registration order.
(But in the past some things were necessary to be prior to register).

CC: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
CC: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c3a0fb97c5ee..e13bd5a6cb6c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5065,16 +5065,16 @@ static int ice_init_devlink(struct ice_pf *pf)
 		return err;
 
 	ice_devlink_init_regions(pf);
-	ice_health_init(pf);
 	ice_devlink_register(pf);
+	ice_health_init(pf);
 
 	return 0;
 }
 
 static void ice_deinit_devlink(struct ice_pf *pf)
 {
-	ice_devlink_unregister(pf);
 	ice_health_deinit(pf);
+	ice_devlink_unregister(pf);
 	ice_devlink_destroy_regions(pf);
 	ice_devlink_unregister_params(pf);
 }
-- 
2.39.3

