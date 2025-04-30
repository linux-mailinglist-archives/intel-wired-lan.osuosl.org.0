Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1B3AA582D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 May 2025 00:51:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1815C40390;
	Wed, 30 Apr 2025 22:51:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5C-mz3h3wDVl; Wed, 30 Apr 2025 22:51:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8944040394
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746053508;
	bh=nV0p6OAaOgmxrYKDHbl+iM8oFLzSVXqXuzoziKOKoWg=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gioYkzaDG/kQL4tJS72fOhFCw8To0f6igZab+gwE3No9fzz5Jgu5P+3wWnNyuC4qp
	 lCvjOk6Q8IHlbLohozESIzltN+Ni1E42biEEOSG2VVBramrd6jGppXzrsIHdmabhU+
	 81X0XlrJImzQ7JnzboLV49/rNKhwxqZxHlmbveTLERQY9ORm4BVzAiHkTdyVHI3yN8
	 anWRI12/X80Z2LizI74gm7DlsOMjDgOFZ/aq1FTWlM+JxPGZELWYnWeyX8UzIpuClQ
	 jEozu0aMdTBLkEYXfPJkggHNvkxFdcCqg27prSMSe5B7Sxz2R8/GxtmobDvNIMLGGj
	 NrpqdU00bYx3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8944040394;
	Wed, 30 Apr 2025 22:51:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 04993E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D149A60E8A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id os0BEtM53wZV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Apr 2025 22:51:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3B74B608C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B74B608C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B74B608C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 22:51:42 +0000 (UTC)
X-CSE-ConnectionGUID: ACv+q6oMQr6TW1KywIS4mQ==
X-CSE-MsgGUID: MbsFCSFVSPG/QR6FW819rQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11419"; a="73120894"
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="73120894"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 15:51:41 -0700
X-CSE-ConnectionGUID: 1aOoT0+JRrySU08PsQswpA==
X-CSE-MsgGUID: +KOKqtylTAuIamStvrIqDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="134145091"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 15:51:40 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 30 Apr 2025 15:51:39 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250430-kk-tspll-improvements-alignment-v3-8-ab8472e86204@intel.com>
References: <20250430-kk-tspll-improvements-alignment-v3-0-ab8472e86204@intel.com>
In-Reply-To: <20250430-kk-tspll-improvements-alignment-v3-0-ab8472e86204@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 netdev <netdev@vger.kernel.org>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Milena Olech <milena.olech@intel.com>, 
 Michal Kubiak <michal.kubiak@intel.com>, 
 Karol Kolacinski <karol.kolacinski@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746053502; x=1777589502;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=3UVbBMdtNLyZX+zfViLgWFfnhYDI5ZYcjL5Add/Iq64=;
 b=nNGyPzggkdcRi49HjEFsZzx7wUajkx7kjptvxT8DZM/Z1mcYQyIDv+xC
 Yh4bIry3GzkfZxITP8o8oX0sCewEmT3jEN7nfKiaAsqulCDm9gksWEH6Q
 h/dSereRwRKa7zoIpf7CgCGf50uc45/AC9Inik9p3R4vl9MDP4pLdocBN
 Yc6623X4kJ5CQzqFZA5hcfhbBnE1thwR5ckXuylvh9nSd2mzm0dKwtUyi
 M8BDpes2gok9nFZSCy3GA1TIVk5uOVBFskFdN1M9ibDkMTSzKiYQgZ8o3
 M9/sxamTVR0wLyaYlWGKNT+qRtSMV8GzXGpUNO5J/47Rb3yFaAtjDQWaD
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nNGyPzgg
Subject: [Intel-wired-lan] [PATCH v3 08/15] ice: clear time_sync_en field
 for E825-C during reprogramming
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

When programming the Clock Generation Unit for E285-C hardware, we need
to clear the time_sync_en bit of the DWORD 9 before we set the
frequency.

Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tspll.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index acb6a4e77678962f8dea61d914579888c9b87b23..f44a27252f384dbb9a1f57d5f9ac03b3b7adf037 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -285,6 +285,11 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R23, dw23.val);
 	}
 
+	if (dw9.time_sync_en) {
+		dw9.time_sync_en = 0;
+		ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R9, dw9.val);
+	}
+
 	/* Set the frequency */
 	dw9.time_ref_freq_sel = clk_freq;
 
@@ -296,6 +301,7 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 		dw9.time_ref_en = 1;
 		dw9.clk_eref0_en = 0;
 	}
+	dw9.time_sync_en = 1;
 	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R9, dw9.val);
 
 	/* Choose the referenced frequency */

-- 
2.48.1.397.gec9d649cc640

