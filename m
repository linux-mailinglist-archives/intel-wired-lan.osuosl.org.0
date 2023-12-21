Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F6781C076
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Dec 2023 22:49:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48A7B428EE;
	Thu, 21 Dec 2023 21:49:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48A7B428EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703195371;
	bh=a79CPSayfRLiBXQiSmQ6d076ZemIrMdQY/Vy+do/x/Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=VV3e7ivMPValIbf0hDF3o6JAojQXbBZa+ujViS2kPbqroRsfgg42+qfYNYQkwofvO
	 ZUGoSjLb80Ii207dmKCtOgKqg+j68z3TgdKzyrMaALPzKwEJjjEZ6zqzF43lB1QO9D
	 7oDGR2Yjx9eqnwWLrwMTU1L3qq6+X6fFDcFt+LJBhADzymWknQqEUsI+Zdwhjmn+pd
	 bjXKkTp0bgJk8GbILlxybEANheA5NmI3rwzz5zoSll39h1JOV/QnumYac2Z5MSjacO
	 szM+J6rwD2yuukJsYdvN/MUoSA4WqhgYzLSH0jT/8n6VdHI0yMCYxjBVIjJ0MRrcpD
	 9r45DLsjSk76A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LbknfqfaZkYR; Thu, 21 Dec 2023 21:49:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 209AC4255B;
	Thu, 21 Dec 2023 21:49:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 209AC4255B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 074D11BF334
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 21:49:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD82483DC0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 21:49:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD82483DC0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HdfMw-Nhml53 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Dec 2023 21:49:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 454AC83DBF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 21:49:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 454AC83DBF
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="14724087"
X-IronPort-AV: E=Sophos;i="6.04,294,1695711600"; d="scan'208";a="14724087"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 13:48:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="1024005690"
X-IronPort-AV: E=Sophos;i="6.04,294,1695711600"; d="scan'208";a="1024005690"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.154])
 by fmsmga006.fm.intel.com with ESMTP; 21 Dec 2023 13:48:52 -0800
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 21 Dec 2023 16:40:28 -0500
Message-ID: <20231221214028.515105-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703195363; x=1734731363;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JREO8RE9vFCcs1nhDjz+9vcqs24v4V3v5yspsKfHJpo=;
 b=ia/sOvmSqlvCeC+d9tGozuMlb1b1essh99xMIAYQAQF++KLSf9ktLEdT
 An4bYmMCbGUQQb4lJdMJtucpMiiQCtRDO3LMVW5t3GyzjaIhIdmOtlHkO
 ei97ImHHc5fdsbV8Qzb9JDKmRyIBIa74FRHHj8dY+jegC8tLSoYOjWwnC
 EpxtKuEgHgV0MYylNuK3/S9G/nck31qZholQezOFVrXtSgYdHz+GhW5Wc
 Scht72X8kdN2RlSaL/IiJ5YonlN6boqNqy6KM9r/eI8TwSQ0lJgEddhQR
 hfYdxN5W0yGRK5rlhEsYAIp0WhEjTGhuC38iSLp5jUmmWfZ0DbSeoL67y
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ia/sOvmS
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix Get link status data
 length
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Get link status version 2 (opcode 0x0607) is returning an error because FW
expects a data length of 56 bytes, and this is causing the driver to fail
probe.

Update the get link status version 2 data length to 56 bytes by adding 5
byte reserved5 field to the end of struct ice_aqc_get_link_status_data and
passing it as parameter to offsetofend() to the fix error.

Fixes: 2777d24ec6d1 ("ice: Add ice_get_link_status_datalen")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index d7fdb7ba7268..fbd5d92182d3 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1359,8 +1359,9 @@ struct ice_aqc_get_link_status_data {
 	u8 lp_flowcontrol;
 #define ICE_AQ_LINK_LP_PAUSE_ADV       BIT(0)
 #define ICE_AQ_LINK_LP_ASM_DIR_ADV     BIT(1)
+	u8 reserved5[5];
 #define ICE_AQC_LS_DATA_SIZE_V2 \
-	offsetofend(struct ice_aqc_get_link_status_data, lp_flowcontrol)
+	offsetofend(struct ice_aqc_get_link_status_data, reserved5)
 } __packed;
 
 /* Set event mask command (direct 0x0613) */
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
