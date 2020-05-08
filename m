Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA5F1C9FC4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 May 2020 02:43:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 158EE20455;
	Fri,  8 May 2020 00:43:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NJaWanR6p0yp; Fri,  8 May 2020 00:43:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D912E204E6;
	Fri,  8 May 2020 00:43:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 634E61BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5E96387871
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u2sUnksVoF7B for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2020 00:43:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3F64087D6B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:35 +0000 (UTC)
IronPort-SDR: 7Mi8HrCN05fYoGTsDXvkUW8Hr2u+bTWQjjVHE1R8S0n1j3ll5sKUclSFVZxXJ6Z3f5I+AAIwyr
 ggqvlc/49Z5Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 17:43:34 -0700
IronPort-SDR: 1ZrOD+6P40fwY+JY6gLzcDqWegMdX70Xq/YH9E2Wl5IkNrHSQrLUqboUn5oDf7Y7XM4TgseWpf
 u9nliXPs7Unw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,365,1583222400"; d="scan'208";a="249468776"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga007.jf.intel.com with ESMTP; 07 May 2020 17:43:33 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 May 2020 17:41:09 -0700
Message-Id: <20200508004113.39725-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S41 11/15] ice: Fix check for
 removing/adding mac filters
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

From: Lihong Yang <lihong.yang@intel.com>

In function ice_set_mac_address, we will remove old dev_addr before
adding the new MAC. In the removing and adding process of the MAC,
there is no need to return error if the check finds the to-be-removed
dev_addr does not exist in the MAC filter list or the to-be-added mac
already exists, keep going or return success accordingly.

Signed-off-by: Lihong Yang <lihong.yang@intel.com>
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 99fa36f35a4f..5eca66849e52 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3771,19 +3771,24 @@ static int ice_set_mac_address(struct net_device *netdev, void *pi)
 		return -EBUSY;
 	}
 
-	/* Clean up old MAC filter before changing the MAC address */
+	/* Clean up old MAC filter. Not an error if old filter doesn't exist */
 	status = ice_fltr_remove_mac(vsi, netdev->dev_addr, ICE_FWD_TO_VSI);
-	if (status) {
+	if (status && status != ICE_ERR_DOES_NOT_EXIST) {
 		err = -EADDRNOTAVAIL;
 		goto err_update_filters;
 	}
 
+	/* Add filter for new MAC. If filter exists, just return success */
 	status = ice_fltr_add_mac(vsi, mac, ICE_FWD_TO_VSI);
-	if (status) {
-		err = -EADDRNOTAVAIL;
-		goto err_update_filters;
+	if (status == ICE_ERR_ALREADY_EXISTS) {
+		netdev_dbg(netdev, "filter for MAC %pM already exists\n", mac);
+		return 0;
 	}
 
+	/* error if the new filter addition failed */
+	if (status)
+		err = -EADDRNOTAVAIL;
+
 err_update_filters:
 	if (err) {
 		netdev_err(netdev, "can't set MAC %pM. filter update failed\n",
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
