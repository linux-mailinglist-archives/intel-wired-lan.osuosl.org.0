Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7361950FD25
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Apr 2022 14:36:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA7784059D;
	Tue, 26 Apr 2022 12:36:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XBXf_ULpw_-a; Tue, 26 Apr 2022 12:36:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DABD6405BC;
	Tue, 26 Apr 2022 12:36:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 71FF81BF31E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 12:36:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D1D04059D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 12:36:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IxLYQ9FNCvyn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Apr 2022 12:36:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C6F2D400E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 12:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650976573; x=1682512573;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W0/RUJdYJDzxxcgFuCBvb3p8Dx25NV6DpJJES4a6cMU=;
 b=WVl5qeHCfRyReLmwDAtgDonrpnPU5+/5IRSQ42XvbS7iTV30U4Ia9AZK
 gxIZ5ZZDaZ9kvZFsIhUi0dLG1GWBNGTQdIciaUN1pRMZT61IJNJeTq90d
 A0tBPINQdCW32iToMQb7W0plMq56hY5Ouwd4oZ3nJsQzOAnTjKc34Y6SE
 ZaLQ4N0BHheywMXCmO2MHWPMk+YI8bAALBeiqYT/ZEBoZhR8IdNSWgAi7
 jiZT/RzaFu6wTK6T3JR82h1EoMMMXnMYItbCJwcZwbBxjJglGnfZLnznX
 MMmPBD0vTK05W6qNydALYUoJE/hih+ebjzmeExP533iHuo8WHk3Py+R92 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="328503307"
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400"; d="scan'208";a="328503307"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 05:36:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400"; d="scan'208";a="564561472"
Received: from kkolacin-desk1.igk.intel.com ([172.22.229.172])
 by fmsmga007.fm.intel.com with ESMTP; 26 Apr 2022 05:35:58 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Apr 2022 14:35:54 +0200
Message-Id: <20220426123556.3041070-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Subject: [Intel-wired-lan] [PATCH v3 intel-next 1/3] ice: remove u16
 arithmetic in ice_gnss
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Change u16 to u32 where arithmetic occurres.


Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V2 -> V3: Add previously removed err variable
V1 -> V2: Use more native types

 drivers/net/ethernet/intel/ice/ice_gnss.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 57586a2e6dec..ff52082a3c26 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -17,13 +17,13 @@ static void ice_gnss_read(struct kthread_work *work)
 	struct gnss_serial *gnss = container_of(work, struct gnss_serial,
 						read_work.work);
 	struct ice_aqc_link_topo_addr link_topo;
-	u8 i2c_params, bytes_read;
+	unsigned int i, bytes_read, data_len;
 	struct tty_port *port;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	__be16 data_len_b;
 	char *buf = NULL;
-	u16 i, data_len;
+	u8 i2c_params;
 	int err = 0;
 
 	pf = gnss->back;
@@ -65,7 +65,7 @@ static void ice_gnss_read(struct kthread_work *work)
 		mdelay(10);
 	}
 
-	data_len = min(data_len, (u16)PAGE_SIZE);
+	data_len = min_t(typeof(data_len), data_len, PAGE_SIZE);
 	data_len = tty_buffer_request_room(port, data_len);
 	if (!data_len) {
 		err = -ENOMEM;
@@ -74,9 +74,10 @@ static void ice_gnss_read(struct kthread_work *work)
 
 	/* Read received data */
 	for (i = 0; i < data_len; i += bytes_read) {
-		u16 bytes_left = data_len - i;
+		u32 bytes_left = data_len - i;
 
-		bytes_read = min_t(typeof(bytes_left), bytes_left, ICE_MAX_I2C_DATA_SIZE);
+		bytes_read = min_t(typeof(bytes_left), bytes_left,
+				   ICE_MAX_I2C_DATA_SIZE);
 
 		err = ice_aq_read_i2c(hw, link_topo, ICE_GNSS_UBX_I2C_BUS_ADDR,
 				      cpu_to_le16(ICE_GNSS_UBX_EMPTY_DATA),
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
