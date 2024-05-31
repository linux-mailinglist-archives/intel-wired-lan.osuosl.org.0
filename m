Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DBC8D5E5D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 11:34:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0C7D40571;
	Fri, 31 May 2024 09:34:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y64kBA52Peyg; Fri, 31 May 2024 09:34:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A23240650
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717148057;
	bh=byfo/S58FzePTj2ecrHm6DY4+Md6JTiVza1pMToGeSY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2FK5Ipk2JFywi9DgzbbRPVUIJ1f0dw5LI592N5uLIAJkbtq1mD1Y+oCbNEegFQr1u
	 FAFazzBcHl+l/M47Q5y0QcCX43aggjZK6KI45eWZwe8bs40oIhoSAgtbLNh7J+M73D
	 o6jd1/ibbMs1rVzq+0KeInM+yAsat4/34+GjcLKHHICOvq0X5OPZLZXLG40WAjHax7
	 yDqZxCUzH7Bks6MazkYiKvGkk9TyxK7lj9wsBVlulQ4ZqMdLerUWeZFkKhafCFTiww
	 3M6d9e7ZrmPtud05Ih8haBfSa6H7q5qWeelLtd7rI+B18DEwUMyO5q0X9eqIb1K2hw
	 ZoA9mAxv+9duA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A23240650;
	Fri, 31 May 2024 09:34:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A1FC1D4FF2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 09:34:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E42DF8164B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 09:34:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NQhu1LKubZnM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 09:34:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 235AB81521
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 235AB81521
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 235AB81521
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 09:34:13 +0000 (UTC)
X-CSE-ConnectionGUID: +ybqDUExQTKkRAZh5sT0Bg==
X-CSE-MsgGUID: r+Aq3bN4TtmkpOSI+REgUg==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13525909"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="13525909"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:34:13 -0700
X-CSE-ConnectionGUID: ALLnxrz+QbKsuYSFb8BWmQ==
X-CSE-MsgGUID: D3kAH/ToQt2XEImtr1E8OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="36194617"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa010.fm.intel.com with ESMTP; 31 May 2024 02:34:11 -0700
Received: from rozewie.igk.intel.com (unknown [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id BB52B125AB;
 Fri, 31 May 2024 10:34:10 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 31 May 2024 11:32:06 +0200
Message-Id: <20240531093206.714632-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717148054; x=1748684054;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B27ThbPupqS5VuibtJJnlXAs+k8wq+jRHzw8yNlGgOw=;
 b=YrI/w5+J433sR1pfwIHcF62Up/GW6+NzZj4jB7VN9rR0ovn1j2FWgwiQ
 EGgofewbxHEyUBmlZt6lQ+pcF40c2ir5ci3lN3tSFgI2+mJr827L6R/xi
 JJjwwkXX7fyu4+vve5LJWcyuskp3rgrHoT8jPS0agahmzCsDtd3bxcZZB
 NUxpVsZajp/x49OFclF3llnVKH7ygJglmjM/CfO5R9BEzRGAi8IJPDR+i
 EGfcUM+JN2qTD/wcIHTDe/TmK+KEsD0Btzae3eqfNRWZBQeTWGs6yAJsI
 OkEGv4thZqcH95oeON76365pUib/2vuYs7F+DKG2LPMG4cJbI2Y9RtZi3
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YrI/w5+J
Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: implement AQ download pkg
 retry
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
Cc: jacob.e.keller@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_aqc_opc_download_pkg (0x0C40) AQ sporadically returns error due
to FW issue. Fix this by retrying five times before moving to
Safe Mode.

Fixes: c76488109616 ("ice: Implement Dynamic Device Personalization (DDP) download")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Brett Creeley <brett.creeley@amd.com>
---
v2: remove "failure" from log message
v3: don't sleep in the last iteration of the wait loop
---
 drivers/net/ethernet/intel/ice/ice_ddp.c | 23 +++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index ce5034ed2b24..f182179529b7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -1339,6 +1339,7 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 start,
 
 	for (i = 0; i < count; i++) {
 		bool last = false;
+		int try_cnt = 0;
 		int status;
 
 		bh = (struct ice_buf_hdr *)(bufs + start + i);
@@ -1346,8 +1347,26 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 start,
 		if (indicate_last)
 			last = ice_is_last_download_buffer(bh, i, count);
 
-		status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE, last,
-					     &offset, &info, NULL);
+		while (1) {
+			status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE,
+						     last, &offset, &info,
+						     NULL);
+			if (hw->adminq.sq_last_status != ICE_AQ_RC_ENOSEC &&
+			    hw->adminq.sq_last_status != ICE_AQ_RC_EBADSIG)
+				break;
+
+			try_cnt++;
+
+			if (try_cnt == 5)
+				break;
+
+			msleep(20);
+		}
+
+		if (try_cnt)
+			dev_dbg(ice_hw_to_dev(hw),
+				"ice_aq_download_pkg number of retries: %d\n",
+				try_cnt);
 
 		/* Save AQ status from download package */
 		if (status) {
-- 
2.40.1

