Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EA44FC812
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 01:29:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED74F60E36;
	Mon, 11 Apr 2022 23:29:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H5MpwihGnMKZ; Mon, 11 Apr 2022 23:29:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB07960DC6;
	Mon, 11 Apr 2022 23:29:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 44DC81BF399
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:29:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 42035410B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id em4lMAwbsife for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Apr 2022 23:29:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED37A409F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649719754; x=1681255754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hfKI6maL/kBt1CLHeh6QULq3DroudNFlB65IUMbzd/g=;
 b=eiH3+dvXRV6os/u5iQxCgabIH0fIgTEfAyiz9DPaNKs57y2CVsED4ufb
 nbm3eIl5YcTPI6y0B672XWiInmH1sYTvScwmro5ynqTwmuNOFO0oKAHD/
 TeBHcvP5c0oH0w1mGoPu83NYBXocSFcVEl20AdsBxCMp3FpCOBMvjdL5B
 tKtIV1YZ1Zz7lhw1JKTsGpG6Sn7LXMbhaUIIcxLWah1oDP/WTs9rQibNl
 avCJm6D3rrvaepaP915SUsTYes4YM+IigQa6Z1g/gt8pEB/ls437G9me9
 z7XZE2OlB0NG1ghm8MkdLYg290pewmnBIBy/qQRIReyN6jfLbYhDvXxf9 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="244121034"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="244121034"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 16:29:13 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="660246416"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 16:29:13 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 11 Apr 2022 16:29:05 -0700
Message-Id: <20220411232907.1022602-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.456.ga9c7032d4631
In-Reply-To: <20220411232907.1022602-1-jacob.e.keller@intel.com>
References: <20220411232907.1022602-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 4/6] ice: fix wording in comment
 for ice_reset_vf
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

The comment explaining ice_reset_vf has an extraneous "the" with the "if
the resets are disabled". Remove it.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 24cf6a5b49fe..8f875a17755f 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -477,8 +477,8 @@ static void ice_notify_vf_reset(struct ice_vf *vf)
  *   ICE_VF_RESET_NOTIFY - Send VF a notification prior to reset
  *   ICE_VF_RESET_LOCK - Acquire VF cfg_lock before resetting
  *
- * Returns 0 if the VF is currently in reset, if the resets are disabled, or
- * if the VF resets successfully. Returns an error code if the VF fails to
+ * Returns 0 if the VF is currently in reset, if resets are disabled, or if
+ * the VF resets successfully. Returns an error code if the VF fails to
  * rebuild.
  */
 int ice_reset_vf(struct ice_vf *vf, u32 flags)
-- 
2.35.1.456.ga9c7032d4631

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
