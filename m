Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C486524A8C8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Aug 2020 23:59:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 697A6226B0;
	Wed, 19 Aug 2020 21:59:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pttC1ed6d0ed; Wed, 19 Aug 2020 21:59:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 437F0226B7;
	Wed, 19 Aug 2020 21:59:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E43601BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 21:58:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D45FB226A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 21:58:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ps84ihWpNX6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Aug 2020 21:58:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id E1C5C226B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 21:58:54 +0000 (UTC)
IronPort-SDR: alGTtyENOwsIvaD+z/M9C6MqtGXmh06pAaFNaRyguceO72zA1v9ENXYGxicxmUENKBMcM1IhWn
 h0wVeEPQl+AA==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="216734394"
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="216734394"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 14:58:53 -0700
IronPort-SDR: 7YQEK9GJAbeiJObsso6gxMMdED94lw1YjSXGq33KtjvtIp1ksz+eFGiRf13QkHf0rlQsBfjmax
 kWHm5QAbctPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="329469941"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by fmsmga002.fm.intel.com with ESMTP; 19 Aug 2020 14:58:52 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 19 Aug 2020 14:58:36 -0700
Message-Id: <20200819215838.3834786-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.28.0.218.ge27853923b9d.dirty
In-Reply-To: <20200819215838.3834786-1-jacob.e.keller@intel.com>
References: <20200819215838.3834786-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 1/3] ice: Change ice_info_get_dsn to be
 void
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

ice_info_get_dsn always returns 0, so just make it void.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 2210eb403a8c..d8ccf177190e 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -6,7 +6,7 @@
 #include "ice_devlink.h"
 #include "ice_fw_update.h"
 
-static int ice_info_get_dsn(struct ice_pf *pf, char *buf, size_t len)
+static void ice_info_get_dsn(struct ice_pf *pf, char *buf, size_t len)
 {
 	u8 dsn[8];
 
@@ -14,8 +14,6 @@ static int ice_info_get_dsn(struct ice_pf *pf, char *buf, size_t len)
 	put_unaligned_be64(pci_get_dsn(pf->pdev), dsn);
 
 	snprintf(buf, len, "%8phD", dsn);
-
-	return 0;
 }
 
 static int ice_info_pba(struct ice_pf *pf, char *buf, size_t len)
@@ -178,11 +176,7 @@ static int ice_devlink_info_get(struct devlink *devlink,
 		return err;
 	}
 
-	err = ice_info_get_dsn(pf, buf, sizeof(buf));
-	if (err) {
-		NL_SET_ERR_MSG_MOD(extack, "Unable to obtain serial number");
-		return err;
-	}
+	ice_info_get_dsn(pf, buf, sizeof(buf));
 
 	err = devlink_info_serial_number_put(req, buf);
 	if (err) {
-- 
2.28.0.218.ge27853923b9d.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
