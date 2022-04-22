Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2B050B65E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Apr 2022 13:47:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DE3041B9B;
	Fri, 22 Apr 2022 11:47:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nCmP3PatmvUU; Fri, 22 Apr 2022 11:47:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFC0241B62;
	Fri, 22 Apr 2022 11:47:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C6791BF345
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 11:46:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EDCA260B0A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 11:46:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MkyOKUXQKIb1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Apr 2022 11:46:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 60F6260B00
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 11:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650628018; x=1682164018;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XGAUag80+1+sWpWhAiGsMzMcM0/lFv4Xr9XB/l6c0+k=;
 b=OofM3x7kB8lH3FFf2P0WycOmuj8G686z7Ph5jDVurYUPg8csPpQZdaTB
 8Df80SZOCw/mVYUKJAJ8OmDJSOeXDk2EBUKEViS4UOQzVeQD+9b8s3Hf9
 MOBQi5E54PzVPID4Y9cVGitCXMVNzrPnpLguBtx9n+XqNshLsbB9JCqiX
 vMzbh15g9vpOEz42mBDi/2wewErfYx58ciQHh8fE3uXIKzMEjfVYpUaf0
 WyJqdpKerQfmDtiqh8KBd0tezjt92aN8e99hlLsiXx3AGhfnCRcPKqM0m
 IE8WAOBXLbmWVgL9rapY0t5Gwe8ZAFNgOTSoZA3DYk0zsjP86VmdcVSsm A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="289773848"
X-IronPort-AV: E=Sophos;i="5.90,281,1643702400"; d="scan'208";a="289773848"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 04:46:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,281,1643702400"; d="scan'208";a="530804913"
Received: from kkolacin-desk1.igk.intel.com ([172.22.229.172])
 by orsmga006.jf.intel.com with ESMTP; 22 Apr 2022 04:46:56 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 22 Apr 2022 13:42:55 +0200
Message-Id: <20220422114257.2238368-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Subject: [Intel-wired-lan] [PATCH v2 intel-next 1/3] ice: remove u16
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
 drivers/net/ethernet/intel/ice/ice_gnss.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 57586a2e6dec..8a7d67c12ff7 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -23,8 +23,8 @@ static void ice_gnss_read(struct kthread_work *work)
 	struct ice_hw *hw;
 	__be16 data_len_b;
 	char *buf = NULL;
-	u16 i, data_len;
-	int err = 0;
+	unsigned int i;
+	u32 data_len;
 
 	pf = gnss->back;
 	if (!pf || !gnss->tty || !gnss->tty->port) {
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
