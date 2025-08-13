Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C38EB247A1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 12:46:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EBCF82319;
	Wed, 13 Aug 2025 10:46:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nJBJp5_SDk-1; Wed, 13 Aug 2025 10:46:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 14B2982392
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755081968;
	bh=3+4EI4wX7U3XYez90CDjFPJM8FAciO3mAV7hrka160o=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=42PW+AuWlFB0ODP2PKEJLFrPgJEBaYMg8DcBmhIPS2kpqFpjcesdS9izScwQnsUJR
	 wKuCVdgMPiAjVogqPqXdKZcATGxfgrSL4cK0+1GJJXpBggSPQGwzZG5NjMbjHHiZ8/
	 T5xQjCoKsMRAJevJCXujEnwCsahEZ6yY1dfIhQOWi4O2gaADVRGRg/V00MAhw5zbVC
	 Ko7TxVZxwCI0xHYFVBGvtptCsQ20wGNfWzQv2Bkno5d7wxBIBhnfe+MEpEpUSwfjXw
	 tGQ4kQ+CwrShv82Zo5aYAS7XqUGM8pC/H5OxeTzKzxv1s3RaxzR7SfyhHs+YEmhBhy
	 M+e/TjiBjHcaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14B2982392;
	Wed, 13 Aug 2025 10:46:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 11BD31C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:46:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 41B5C402E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:46:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gtYHQ_zFF-R0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 10:46:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9C07740309
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C07740309
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9C07740309
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 10:46:02 +0000 (UTC)
X-CSE-ConnectionGUID: 5CyndZOmQQuc7dW//QmKFA==
X-CSE-MsgGUID: Fw7qOx+rRUaMCp6soWEGpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="44949629"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="44949629"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 03:46:02 -0700
X-CSE-ConnectionGUID: VrqLZhV7RHmFzhfxdF/phw==
X-CSE-MsgGUID: zUB18ZJDRIqTdFNuCDe12w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="166066922"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 13 Aug 2025 03:46:00 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.245.219])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C050D28782;
 Wed, 13 Aug 2025 11:45:58 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
 jeremiah.kyle@intel.com, leszek.pepiak@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed, 13 Aug 2025 12:45:16 +0200
Message-ID: <20250813104552.61027-7-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755081962; x=1786617962;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c+AwxJeNM6wAxu73Z1GFnbuNNeSvAUY12myHklmx9G4=;
 b=JpYhAQL6yI0Oj6LVLrrZIMR+y94a+KodEsouOHBID7hdvo7hAoJ0jB1B
 OoLgJU+ejOKbKEFKkC7qARNuK/gj4SMpaTtFxvS/OAUFzdpZNLxsnDQES
 jo7TxqE/pceuc5OVMbIHWEgE1MVRTgS2j4CwIS44yvXq3BRoIkh5OnqnA
 ekFDx6qLRReoE+yz6laJ9+SDwU/U58Kb2GQ2mb+UVEzneR0bngNPiBIeY
 Fo+pEe2nLtek69xolgoVU+dkZteQpBQCt0ebaJG/mzRmXcVgfWALEmazn
 /F9CWApzpL+MGomln+N5mgsDC+7opFuu4xt5Z729dg1H/vH36EM2Pu3NU
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JpYhAQL6
Subject: [Intel-wired-lan] [PATCH iwl-net 6/8] i40e: add max boundary check
 for VF filters
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

There is no check for max filters that VF can request. Add it.

Fixes: e284fc280473 ("i40e: Add and delete cloud filter")
Cc: stable@vger.kernel.org
Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 5ef3dc43a8a0..f29941c00342 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -3905,6 +3905,8 @@ static int i40e_vc_del_cloud_filter(struct i40e_vf *vf, u8 *msg)
 				       aq_ret);
 }
 
+#define I40E_MAX_VF_CLOUD_FILTER 0xFF00
+
 /**
  * i40e_vc_add_cloud_filter
  * @vf: pointer to the VF info
@@ -3944,6 +3946,14 @@ static int i40e_vc_add_cloud_filter(struct i40e_vf *vf, u8 *msg)
 		goto err_out;
 	}
 
+	if (vf->num_cloud_filters >= I40E_MAX_VF_CLOUD_FILTER) {
+		dev_warn(&pf->pdev->dev,
+			 "VF %d: Max number of filters reached, can't apply cloud filter\n",
+			 vf->vf_id);
+		aq_ret = -ENOSPC;
+		goto err_out;
+	}
+
 	cfilter = kzalloc(sizeof(*cfilter), GFP_KERNEL);
 	if (!cfilter) {
 		aq_ret = -ENOMEM;
-- 
2.50.0

