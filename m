Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCB41826E5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2020 02:58:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C3F578852E;
	Thu, 12 Mar 2020 01:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UleB9shBqCgJ; Thu, 12 Mar 2020 01:58:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 696E78854C;
	Thu, 12 Mar 2020 01:58:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B46F71BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ADA9C863DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V4NHi9bcbYIP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2020 01:58:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 253C68625E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:58:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 18:58:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,543,1574150400"; d="scan'208";a="236656319"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by orsmga008.jf.intel.com with ESMTP; 11 Mar 2020 18:58:21 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 11 Mar 2020 18:58:16 -0700
Message-Id: <20200312015818.1007882-8-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200312015818.1007882-1-jacob.e.keller@intel.com>
References: <20200312015818.1007882-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 7/9] devlink: promote "fw.bundle_id" to
 a generic info version
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
Cc: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The nfp driver uses ``fw.bundle_id`` to represent a unique identifier of the
entire firmware bundle.

A future change is going to introduce a similar notion in the ice
driver, so promote ``fw.bundle_id`` into a generic version now.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 Documentation/networking/devlink/devlink-info.rst | 5 +++++
 drivers/net/ethernet/netronome/nfp/nfp_devlink.c  | 2 +-
 include/net/devlink.h                             | 2 ++
 3 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/networking/devlink/devlink-info.rst b/Documentation/networking/devlink/devlink-info.rst
index 70981dd1b981..b701899b7f42 100644
--- a/Documentation/networking/devlink/devlink-info.rst
+++ b/Documentation/networking/devlink/devlink-info.rst
@@ -98,3 +98,8 @@ fw.roce
 
 RoCE firmware version which is responsible for handling roce
 management.
+
+fw.bundle_id
+------------
+
+Unique identifier of the entire firmware bundle.
diff --git a/drivers/net/ethernet/netronome/nfp/nfp_devlink.c b/drivers/net/ethernet/netronome/nfp/nfp_devlink.c
index c50fce42f473..07dbf4d72227 100644
--- a/drivers/net/ethernet/netronome/nfp/nfp_devlink.c
+++ b/drivers/net/ethernet/netronome/nfp/nfp_devlink.c
@@ -211,7 +211,7 @@ static const struct nfp_devlink_versions {
 	enum nfp_nsp_versions id;
 	const char *key;
 } nfp_devlink_versions_nsp[] = {
-	{ NFP_VERSIONS_BUNDLE,	"fw.bundle_id", },
+	{ NFP_VERSIONS_BUNDLE,	DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID, },
 	{ NFP_VERSIONS_BSP,	DEVLINK_INFO_VERSION_GENERIC_FW_MGMT, },
 	{ NFP_VERSIONS_CPLD,	"fw.cpld", },
 	{ NFP_VERSIONS_APP,	DEVLINK_INFO_VERSION_GENERIC_FW_APP, },
diff --git a/include/net/devlink.h b/include/net/devlink.h
index c9ca86b054bc..e68781b9b7d4 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -490,6 +490,8 @@ enum devlink_param_generic_id {
 #define DEVLINK_INFO_VERSION_GENERIC_FW_PSID	"fw.psid"
 /* RoCE FW version */
 #define DEVLINK_INFO_VERSION_GENERIC_FW_ROCE	"fw.roce"
+/* Firmware bundle identifier */
+#define DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID	"fw.bundle_id"
 
 struct devlink_region;
 struct devlink_info_req;
-- 
2.24.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
