Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBBC812ACE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 09:54:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 02246436DF;
	Thu, 14 Dec 2023 08:54:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02246436DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702544043;
	bh=RGwj6AbIA7Upidsoo9XAa7UmaVVgFCFkqknJ/yZExNw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=GN9ecXrFuRyhYByI6pMRPtv7xbPCP6fgKn46SpkMKLNbPVZpq+0DExKRDIwF+0Qx6
	 UD+WY85DGx8opniMrkUjLHih5XgXt0yux8Zw/K/p0oYNvCJR8mkmgP//8wIZuhuXGc
	 fX3aKYRpCt58Pyt4gaUIm48VTvcOZTdmR1QUxq5iqcLSMJSZhsov2pSOWC0eigSrB5
	 4/koLaZk6G+9eIAJIVlR0CSvmPJKDiiNDMUxX8AuTfNatLgIgvH5MI+k4fy2v5LFJ4
	 CIliXqBOQokGN6Cm3uMZfspF7dl0vVGug5PRRpJLL0fxVh+gjnrywVSDJDs15VY4Uu
	 +WpuGasnhQg1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k9cmtwpDMdOU; Thu, 14 Dec 2023 08:54:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 31B59402D4;
	Thu, 14 Dec 2023 08:54:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31B59402D4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 991A11BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 08:53:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7C9DF81DEC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 08:53:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C9DF81DEC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5uKRIaNw0ycm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 08:53:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 91FD681C20
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 08:53:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91FD681C20
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="8451661"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; 
   d="scan'208";a="8451661"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 00:53:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="803202600"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="803202600"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orsmga008.jf.intel.com with ESMTP; 14 Dec 2023 00:53:50 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Dec 2023 09:50:50 +0100
Message-Id: <20231214085050.3161674-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702544034; x=1734080034;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GDreP1ftRYoBPczq0EUpY4uoBM+BHPG9uldHau2VG0U=;
 b=kfLzoLi1lVzktJFRd5PXIhWZDwbOoyAY1JEJgN4hgKBawpF27OWEdfnI
 Fu3lu1fOL6PWU6Q+HVaaxdfVrAhJyGF+oyEfbDhhpIvITIwl+Nh7SRFd9
 fzCA7fuCHVrzxXueAxA1vr6w5648Q2x/KND6FjSXZOJbKVVLjrtZtkak9
 7DWijaJXjs8BswcVSgtJuwUtPvVK6wmjTDfRpoEK6GBRQeQDBiOHYLlHy
 rhTspDXlJwjXdSfGZvskm40yi9B5pp7Cf9G/i5I6kzfpzDRIcqcwOOpn3
 kefgbfRVJhA9MvQuUt8NgwSp7vVUkE2ftMzvqEaKFzyfQRQKX6gQhvaKA
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kfLzoLi1
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: dpll: fix phase offset value
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Stop dividing the phase_offset value received from firmware, this is
fault introduced with the initial implementation.
The phase_offset value received from firmware is in 0.01ps resolution.
Dpll subsystem is using the value in 0.001ps, raw value is adjusted
before providing it to the user.

Fixes: 8a3a565ff210 ("ice: add admin commands to access cgu configuration")
Fixes: 90e1c90750d7 ("ice: dpll: implement phase related callbacks")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 9a6c25f98632..edac34c796ce 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -5332,7 +5332,6 @@ ice_aq_get_cgu_dpll_status(struct ice_hw *hw, u8 dpll_num, u8 *ref_state,
 			   u8 *eec_mode)
 {
 	struct ice_aqc_get_cgu_dpll_status *cmd;
-	const s64 nsec_per_psec = 1000LL;
 	struct ice_aq_desc desc;
 	int status;
 
@@ -5348,8 +5347,7 @@ ice_aq_get_cgu_dpll_status(struct ice_hw *hw, u8 dpll_num, u8 *ref_state,
 		*phase_offset = le32_to_cpu(cmd->phase_offset_h);
 		*phase_offset <<= 32;
 		*phase_offset += le32_to_cpu(cmd->phase_offset_l);
-		*phase_offset = div64_s64(sign_extend64(*phase_offset, 47),
-					  nsec_per_psec);
+		*phase_offset = sign_extend64(*phase_offset, 47);
 		*eec_mode = cmd->eec_mode;
 	}
 
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
