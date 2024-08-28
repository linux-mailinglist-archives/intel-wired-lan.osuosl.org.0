Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A988963331
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 22:57:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8284360E2C;
	Wed, 28 Aug 2024 20:57:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hN746uwGNji8; Wed, 28 Aug 2024 20:57:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BACB260E02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724878662;
	bh=3yXTBGfARulLLnTzWPWjl2ZGtQGVoWcl9QFB8lKIW4g=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B+ObZ+hZot/M/W6cQ8JBVVyR6CkDVQcdPnhPq7XDBXORErUvhq1VxVEC5MoTgF7vd
	 2vL3b7iV/mKVU7M40CeXSaD97+SImlJ86FT77eRt2ny5gZNjrKUE1PvBFVM2cQ2+ba
	 wn0wwOAaIL9dBtZjPrt9nqZDODykeypLj8SOtPKQp6g0gjJ2SAsnwrh+XPE8Am5h5G
	 9kFVckb140rmVxfYQhqGLkBBApoQ6k2q8QJaIdDReZ4NxtKCYatlXemjrz/1+3IDY8
	 Zui75mHC31yrDm5nPPcwe78zpDqjJwioVa3BFCLQvXr2l3LBNk0xxlJEwGMh4sYd3c
	 jZhPrOy1k0kYw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BACB260E02;
	Wed, 28 Aug 2024 20:57:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E76341BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 492768151E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vhk_ez5eflLn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 20:57:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8C9AF81584
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C9AF81584
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8C9AF81584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 20:57:32 +0000 (UTC)
X-CSE-ConnectionGUID: aTSIruh6QI+uQJfWgKEI6w==
X-CSE-MsgGUID: IAMjXKxeTR6tDBWrYhavpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34592632"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34592632"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:31 -0700
X-CSE-ConnectionGUID: 809NkwwUTcKZgKoOdBPiFQ==
X-CSE-MsgGUID: oauytBeTSaG8/c40jUOHjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="64049965"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:57:29 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 28 Aug 2024 13:57:19 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-3-558ab9e240f5@intel.com>
References: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-0-558ab9e240f5@intel.com>
In-Reply-To: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-0-558ab9e240f5@intel.com>
To: Vladimir Oltean <olteanv@gmail.com>, netdev <netdev@vger.kernel.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
X-Mailer: b4 0.14.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724878653; x=1756414653;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=fVvWWmc//evEZHcKzlFxreA95ao/xY72CyoACOvZbMI=;
 b=E1cSMDaxdx6jKnUGpMRCA4kM3VCH+Z2UWNq5N7VvLdyx2T7tQAMMcd+G
 Tdx+RFxWrZY9MOZ1sMymjSeFQCTdNQx71bmpNHZDrxjhV9anC2F14mbQt
 aWP+zKvSOLGNq37qiW6ZGa8bUqf2GTbvkb82oT9b2ytdh07+l5/LN1Jvq
 ojD4TxTYLJPtq+letokh4rjTQF3sB71S4HWc7JJt5QAFGcVDg6SaiRStV
 Ggw5ZHFZw9SYqKCiGazOYO7aOyyv5S707gHrfkIonvlfsuiSwiiC05/Hw
 DO/s4Di+O3XVlLTG2Y3d7kPM9m2Q0GwBD8u9Wxuincmk8lDQE/wg11/O5
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E1cSMDax
Subject: [Intel-wired-lan] [PATCH iwl-next v2 03/13] lib: packing: remove
 kernel-doc from header file
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vladimir Oltean <vladimir.oltean@nxp.com>

It is not necessary to have the kernel-doc duplicated both in the
header and in the implementation. It is better to have it near the
implementation of the function, since in C, a function can have N
declarations, but only one definition.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 include/linux/packing.h | 26 --------------------------
 1 file changed, 26 deletions(-)

diff --git a/include/linux/packing.h b/include/linux/packing.h
index 8d6571feb95d..69baefebcd02 100644
--- a/include/linux/packing.h
+++ b/include/linux/packing.h
@@ -17,32 +17,6 @@ enum packing_op {
 	UNPACK,
 };
 
-/**
- * packing - Convert numbers (currently u64) between a packed and an unpacked
- *	     format. Unpacked means laid out in memory in the CPU's native
- *	     understanding of integers, while packed means anything else that
- *	     requires translation.
- *
- * @pbuf: Pointer to a buffer holding the packed value.
- * @uval: Pointer to an u64 holding the unpacked value.
- * @startbit: The index (in logical notation, compensated for quirks) where
- *	      the packed value starts within pbuf. Must be larger than, or
- *	      equal to, endbit.
- * @endbit: The index (in logical notation, compensated for quirks) where
- *	    the packed value ends within pbuf. Must be smaller than, or equal
- *	    to, startbit.
- * @op: If PACK, then uval will be treated as const pointer and copied (packed)
- *	into pbuf, between startbit and endbit.
- *	If UNPACK, then pbuf will be treated as const pointer and the logical
- *	value between startbit and endbit will be copied (unpacked) to uval.
- * @quirks: A bit mask of QUIRK_LITTLE_ENDIAN, QUIRK_LSW32_IS_FIRST and
- *	    QUIRK_MSB_ON_THE_RIGHT.
- *
- * Return: 0 on success, EINVAL or ERANGE if called incorrectly. Assuming
- *	   correct usage, return code may be discarded.
- *	   If op is PACK, pbuf is modified.
- *	   If op is UNPACK, uval is modified.
- */
 int packing(void *pbuf, u64 *uval, int startbit, int endbit, size_t pbuflen,
 	    enum packing_op op, u8 quirks);
 

-- 
2.46.0.124.g2dc1a81c8933

