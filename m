Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F9EB2479B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 12:46:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC91E60803;
	Wed, 13 Aug 2025 10:46:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M7h2iuTZhl1G; Wed, 13 Aug 2025 10:46:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E17660815
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755081963;
	bh=4Ly/lIqMDZa2vl8AV0zT7j5M4kZYF3lGPn2/UCtPS6E=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Rsr+dtAq0IVEssQ7jo24Hh2WR4pBAIlMqIFljp0wDwqIRwt2bmDBb/ITbRDp3F257
	 uZect4n4PF+2+ZYzbyZOxASLa/G+bl9az9tHXebU+YTNgIY5sBDlXkbo9IXpHXsUx/
	 uomKx6ad3AL+GoFhvvhJnRe9SmoEygX9VMG+/7AWFR8W2TEb/4NUOVG0CybMBBNfeC
	 oywdBu0RpM73OHkPfk78kxuZoESOe/3jtRw9ncmdHwArONS+e3+4ocgzZuI2gw3FpF
	 XFN6pKTBnHjyl5YKrGnGknIyeVgQnw7fqt25foe/5EbgaSBMZtQiTOQBpG5k3f8Et4
	 SbVFrJVjaMt3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E17660815;
	Wed, 13 Aug 2025 10:46:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 140841C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:46:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D64BE402F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:45:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UrCr4cwK7J6g for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 10:45:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6DEB8402E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DEB8402E0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6DEB8402E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:45:58 +0000 (UTC)
X-CSE-ConnectionGUID: UPtpzTzOT9CxuOgTpC33Bg==
X-CSE-MsgGUID: +/owhUSvTieirf5JaT31yA==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="44949614"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="44949614"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 03:45:57 -0700
X-CSE-ConnectionGUID: a8uBAcgMTyW7dIYPdBWarw==
X-CSE-MsgGUID: g3V2TMqyTYasW1IdMbRPxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="166066905"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 13 Aug 2025 03:45:56 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.245.219])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 5F99A28782;
 Wed, 13 Aug 2025 11:45:54 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 jeremiah.kyle@intel.com, leszek.pepiak@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed, 13 Aug 2025 12:45:11 +0200
Message-ID: <20250813104552.61027-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755081958; x=1786617958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gzjTia0MFvA46MJrvE6KGNXiL+mTIZUTKeoYjZs3DZs=;
 b=JcnOf6UwNVWHxgcRmQRnL0fc3RQ6L1KF8p6QdOwSkq7W8v9MEeesezI9
 blVBUb07cEVIX0fPwUKdBjImos1REnqfiW3eyUBngZAYc81JqcLJauTMV
 fl7e0oQ3VS8QSI3uaIlBzKuQ0sH9i/DuSGhHQVZHSOyAz4ytKFotKMAie
 SkgxH0TIToR90gsv4TBRyc/80CKE/+qiAtlt/Vvtb/YaVo0aRxt2ZSoXL
 0kNPQdaokMSafUr3DucRFVhLEUfDaGH9wy0ryne7N7oY0VsUEKLZt/ByZ
 JwTQeUEUqTjA/i87A1bkb9OBC6ketyR/RWMeuQoRoW6iKYGuqVm5z8o5X
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JcnOf6Uw
Subject: [Intel-wired-lan] [PATCH iwl-net 1/8] i40e: add validation for
 ring_len param
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

From: Lukasz Czapnik <lukasz.czapnik@intel.com>

The `ring_len` parameter provided by the virtual function (VF)
is assigned directly to the hardware memory context (HMC) without
any validation.

To address this, introduce an upper boundary check for both Tx and Rx
queue lengths. The maximum number of descriptors supported by the
hardware is 8k-32.
Additionally, enforce alignment constraints: Tx rings must be a multiple
of 8, and Rx rings must be a multiple of 32.

Fixes: 5c3c48ac6bf5 ("i40e: implement virtual device interface")
Cc: stable@vger.kernel.org
Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 9b8efdeafbcf..cb37b2ac56f1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -653,6 +653,13 @@ static int i40e_config_vsi_tx_queue(struct i40e_vf *vf, u16 vsi_id,
 
 	/* only set the required fields */
 	tx_ctx.base = info->dma_ring_addr / 128;
+
+	/* ring_len has to be multiple of 8 */
+	if (!IS_ALIGNED(info->ring_len, 8) ||
+	    info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
+		ret = -EINVAL;
+		goto error_context;
+	}
 	tx_ctx.qlen = info->ring_len;
 	tx_ctx.rdylist = le16_to_cpu(vsi->info.qs_handle[0]);
 	tx_ctx.rdylist_act = 0;
@@ -716,6 +723,13 @@ static int i40e_config_vsi_rx_queue(struct i40e_vf *vf, u16 vsi_id,
 
 	/* only set the required fields */
 	rx_ctx.base = info->dma_ring_addr / 128;
+
+	/* ring_len has to be multiple of 32 */
+	if (!IS_ALIGNED(info->ring_len, 32) ||
+	    info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
+		ret = -EINVAL;
+		goto error_param;
+	}
 	rx_ctx.qlen = info->ring_len;
 
 	if (info->splithdr_enabled) {
-- 
2.50.0

