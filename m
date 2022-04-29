Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1815146A0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Apr 2022 12:21:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 127D040488;
	Fri, 29 Apr 2022 10:21:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bk7gHGku3NCP; Fri, 29 Apr 2022 10:21:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20B95404D1;
	Fri, 29 Apr 2022 10:21:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 883341BF362
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 10:21:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74D0D41CB5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 10:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nXR_9WPvkg0Y for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Apr 2022 10:21:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7D11241CB4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 10:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651227709; x=1682763709;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4nyyHw6ep8rbx6OIGp78EUdVUaqSxk7g4qNPoDIPHX8=;
 b=jxEvOBEHduLlTFrxQt6u+8gVQl+zAEIZQCAws/bXVtjBI7phPFFgNQ6q
 Dggr3SeByovIx/ShG9hQJf+RAojsZaH7G4r6AjpQCO65VS7PBF6fPzg2g
 3+Hldg9lsoFcpX1R3uNOY/deJTxmWWe8lwG1bbf5NV4qU7XQqCgHOBQ3H
 vCs5HvHPIMJqlya3qN9zQrc+QZf33vFQcQGKwvcAN7yHnJojPlSYxNce3
 6C/J0aaQ2C3fDwvPdEymAjmZ5bSUwasoFVcuaKY2Ssp0S8pgfkw2pah+E
 wgUbfGZ3ScFlP+OpkQvEtM3RTr4Q7KyI4VLVL66+Gbs92XFnIfvdlXn4w Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="329544146"
X-IronPort-AV: E=Sophos;i="5.91,298,1647327600"; d="scan'208";a="329544146"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 03:21:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,298,1647327600"; d="scan'208";a="542365366"
Received: from kkolacin-desk1.igk.intel.com ([172.22.229.172])
 by orsmga002.jf.intel.com with ESMTP; 29 Apr 2022 03:21:47 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 29 Apr 2022 12:21:43 +0200
Message-Id: <20220429102145.74764-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Subject: [Intel-wired-lan] [PATCH v4 intel-next 1/3] ice: remove u16
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
V3 -> V4: Add one missed line
V2 -> V3: Add previously removed err variable
V1 -> V2: Use more native types

 drivers/net/ethernet/intel/ice/ice_gnss.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 57586a2e6dec..c6d755f707aa 100644
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
+		unsigned int bytes_left = data_len - i;
 
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
