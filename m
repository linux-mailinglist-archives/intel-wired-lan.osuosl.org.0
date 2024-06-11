Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C6E903755
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 11:02:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E41AA81FC2;
	Tue, 11 Jun 2024 09:02:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j7FGqDD9OB0X; Tue, 11 Jun 2024 09:02:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AB8E811B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718096534;
	bh=zFxE6wRsjupVBY3VWgeNT4hS/QcwZ/2NIWUiIxAosy8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=eZo9mkWxpGB5/C7Nvs8FQDHzx3L1KDxJnaPJydTWynSdANOz0Ww/OUCz2Gb0Urqn0
	 +VVZiwVmvqB+wxQNLm5WWMfHtcdNcHI6tku3ZNBmWfe6+G0jIjLaoNa1wOYDpYYPAV
	 le2Pm2Ny77r7BSms4p9eX+xbmpOL55akZWLnD0V00LeoLMvcF1iGElGT8RmesVwvlD
	 2C1nkyPLdbMwfSohKJKatZcz5fyi/K+bNiAJn0iW/rspoHW/1mE5HpczI7ZYy75pCi
	 c9gWPPy5hqaH/T/Eh24fmSnDFQQuiy4euwLgVeUIkZEcR5O0pExFAILzUyiLYY82BD
	 RNRouv4gVT81A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AB8E811B8;
	Tue, 11 Jun 2024 09:02:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A0811BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 09:02:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 72BBF403CB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 09:02:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DKFXTjeCxPfw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 09:02:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3D4854010D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D4854010D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3D4854010D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 09:02:11 +0000 (UTC)
X-CSE-ConnectionGUID: DmAuhQqAQuy2INpDlj50QA==
X-CSE-MsgGUID: h4X0w4DnSmyEzcVWx96FIw==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="26195829"
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="26195829"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 02:02:10 -0700
X-CSE-ConnectionGUID: TlDpxxU1T2WvZyGuOmK6vQ==
X-CSE-MsgGUID: USs4J3iBRUeREVwNTbFocw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="43927406"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by fmviesa004.fm.intel.com with ESMTP; 11 Jun 2024 02:02:08 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Tue, 11 Jun 2024 11:02:07 +0200
Message-Id: <20240611090207.2661520-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718096531; x=1749632531;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o5oMdw1jtOwX+wVFtzv419bPWRR3QoJ7tZR1sp+wrL8=;
 b=jI5HG1AxaID7K8zkxhSsIbYEPS9cf9cXG2NA3zMnDd9QdiSkZ3z0KVVP
 Nzyut8CNFOdHlOjBYCU5HWaYt/+hMHLI+vWBaxD77RLH5lL8tlVcAwq+N
 9c1P/XRFNN3Q2U6jho9Y+HTdBqYOxMfe8z5gh96vrAtZ1aXoAeKl7rWYY
 uX5wgU9PGyfpSoLWpJIG0pgU5+wAhX6O/9Ry4+6mgmkbfhD9oUNMxf2L8
 Mmt377N0vCGFPmS/ivx1FcFEuGZBizU1F7k057zj7Cntj8aj008ICyLNU
 8fb3kIHArzWyRIItxPUnxLJ2plMi6u9sfFfRi/1tB2xOEuk8ZU8O4qqkZ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jI5HG1Ax
Subject: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix hot issue NVM
 content is corrupted after nvmupdate
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
Cc: netdev@vger.kernel.org, Kelvin Kang <kelvin.kang@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The bug affects users ionly at the time when they try to update NVM, and
only F/W versions that generate errors while nvmupdate. For example X710DA2
with 0x8000ECB7 F/W is affected, but there are probably more...

After 230f3d53a547 patch, which should only replace F/W specific error codes
into Linux kernel generic, all I/O errors started to be converted into EAGAIN
which leads nvmupdate to retry until it timeout so nvmupdate sometimes
fails after more than 20 minutes in the middle of NVM update,
so NVM becomes corrupted.

Remove wrong EIO to EGAIN conversion and pass all errors as is.

Fixes: 230f3d53a547 ("i40e: remove i40e_status")
Co-developed-by: Kelvin Kang <kelvin.kang@intel.com>
Signed-off-by: Kelvin Kang <kelvin.kang@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
reproduction:
./nvmupdate64

v1->v2 commit message update
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
index ee86d2c..55b5bb8 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
@@ -109,10 +109,6 @@ static inline int i40e_aq_rc_to_posix(int aq_ret, int aq_rc)
 		-EFBIG,      /* I40E_AQ_RC_EFBIG */
 	};
 
-	/* aq_rc is invalid if AQ timed out */
-	if (aq_ret == -EIO)
-		return -EAGAIN;
-
 	if (!((u32)aq_rc < (sizeof(aq_to_posix) / sizeof((aq_to_posix)[0]))))
 		return -ERANGE;
 
-- 
2.25.1

