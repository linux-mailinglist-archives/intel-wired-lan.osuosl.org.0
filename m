Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7210B541F91
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jun 2022 01:53:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A902260F05;
	Tue,  7 Jun 2022 23:53:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zsUhAdi3ODJA; Tue,  7 Jun 2022 23:53:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B327F60E5B;
	Tue,  7 Jun 2022 23:53:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F1F291BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 23:53:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF375404EE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 23:53:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oPLIa_hp6IEx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jun 2022 23:53:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3763340199
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 23:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654646022; x=1686182022;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kaJDhHs5b/UfulZ0gLcuW3CBi5r9UvrIqd29JFNYGxY=;
 b=Ufo84JTcCGWIirO6ofV0xRLahJSimhKoDcxhhg8NA0QfDEvMm328jOmk
 8bsN/5GyYHLYJ+hQuG6LkDOccY1vgF/+AFIrxduCMkLJ2xsCC0aH60CMA
 p33NFqwkQUhxGv+H8MTkZ1BaotP+KKEThwTq9mHTy+F4VzmhIDvNdXvm+
 35GmrwZPxjj2q0GJQ7uzPA9AfjfZRq0BCxnZNotb0b112CSbeZqagPK6H
 vWoUWXs007jEXesfZuUCVuk8bHtPTGHzyun+g/OgK7/LhgECrnN0gOjJc
 pJeHrCXXXN/pohAq02xTEuS6PV4xE/IAQJLBhb37S9gZbBWIg2T8O6Ep/ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="302124754"
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="302124754"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 16:53:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="532848266"
Received: from unknown (HELO ocsbesrhlrepo01.amr.corp.intel.com)
 ([10.166.28.101])
 by orsmga003.jf.intel.com with ESMTP; 07 Jun 2022 16:53:41 -0700
From: Jun Zhang <xuejun.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Jun 2022 19:53:28 -0400
Message-Id: <20220607235328.3430866-1-xuejun.zhang@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix missing state logs
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix debug prints, by adding missing state prints.
Extend iavf_state_str by strings for __IAVF_INIT_EXTENDED_CAPS and
__IAVF_INIT_CONFIG_ADAPTER.
Without this patch, when enabling debug prints for iavf.h, user will
see:
iavf 0000:06:0e.0: state transition from:__IAVF_INIT_GET_RESOURCES to:__IAVF_UNKNOWN_STATE
iavf 0000:06:0e.0: state transition from:__IAVF_UNKNOWN_STATE to:__IAVF_UNKNOWN_STATE

Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index fda1198d2c00..cbcf0c710072 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -464,6 +464,10 @@ static inline const char *iavf_state_str(enum iavf_state_t state)
 		return "__IAVF_INIT_VERSION_CHECK";
 	case __IAVF_INIT_GET_RESOURCES:
 		return "__IAVF_INIT_GET_RESOURCES";
+	case __IAVF_INIT_EXTENDED_CAPS:
+		return "__IAVF_INIT_EXTENDED_CAPS";
+	case __IAVF_INIT_CONFIG_ADAPTER:
+		return "__IAVF_INIT_CONFIG_ADAPTER";
 	case __IAVF_INIT_SW:
 		return "__IAVF_INIT_SW";
 	case __IAVF_INIT_FAILED:
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
