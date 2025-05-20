Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DEAABE3DD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 21:40:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41728610C9;
	Tue, 20 May 2025 19:40:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3sk7kROyxizg; Tue, 20 May 2025 19:40:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9424D610CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747770002;
	bh=MztmDK5MDwMGkK4wiB6ZKUi9u0b5TQPjmv+NE91jbe4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bgknrRUdiMKek9ySdet+p8D/25g7kTA8yUN+jf2ZNGI1Igx4L9A+QGNHC78QCYsfo
	 3+En6PcPQT7iZnZg39mNPEU0e9ChbZOTGCBH8MSjTWD+xsNC5Ul8zo8Pj7wh4Nhv19
	 hli0zUlzH9E0zgQE5q9YuEu1QaWeg6IrMoWw3VzjeJkDNoTyhfDeNvJ8Kg2T+hNYcZ
	 oD/WAezTaTnTOItCfHfCg24XfvjBnhXoHInnrY/7Ukl/+Ci4R/oPVcur75tjqvqpNg
	 Jzl6x1iyXp5bQ0luSA4V2rK1wrBWOmsul7qT7u+EntL83sHwyjC6CKIyEwAlgQmRPC
	 bI/v0cYuUNlaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9424D610CE;
	Tue, 20 May 2025 19:40:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 41C3DE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:39:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CDDA481E0A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:39:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CANxRWNX0Vz3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 19:39:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4016C81DFF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4016C81DFF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4016C81DFF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:39:56 +0000 (UTC)
X-CSE-ConnectionGUID: 80/nOQ9YRJ278Lwq3t+qGQ==
X-CSE-MsgGUID: qtXShB1iTJq2lpwgwjUIpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="75123551"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="75123551"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 12:39:55 -0700
X-CSE-ConnectionGUID: pJFMosQsTTaFmLawOxwm/w==
X-CSE-MsgGUID: nZvs0LNHT/635lF2JsPJBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="140198883"
Received: from dmert-vmdev.jf.intel.com ([10.165.17.51])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 12:39:54 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Tue, 20 May 2025 15:39:28 -0400
Message-ID: <20250520193930.3763888-7-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250520193930.3763888-1-david.m.ertman@intel.com>
References: <20250520193930.3763888-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747769996; x=1779305996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vGZbQ5U3a4Vb36d08xxqd46J7T4GVTCl4Gi4nRWrJQU=;
 b=WsDojkaVChl1X+VYsIEHdKKUyEmOBQV1MjdftOt3xfMoXyW4sonGF1Tn
 3Fx4/CPPaJIR62jPYCtMBXnGwHbDRE91QuilYaK45GsgzGWyG34ckv7Cj
 K+lxRIvlSvhysueyjRKN3anzIctMXsLPBdvLH1ZHsf7badoEdEff+16ah
 wjhpB7LSWvBx8KwsXk8Wvyt9cV2Paoxh1R8Cg3dFgyfASqWx0SWHbr1oC
 uF2O7kto3Z+VBH+3NH5NPx3rmWV45ki8DgHdPR5K+9zHK5+QBH7NH+qHf
 ijCBsf9sOvx9GyNuXFsN9YsYB/9f53Vdn6T4shTibisjOxmzhGKVNuD7H
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WsDojkaV
Subject: [Intel-wired-lan] [PATCH iwl-next v2 6/8] [PATCH iwl-next 6/8] ice:
 cleanup capabilities evaluation
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

When evaluating the capabilities field, the ICE_AQC_BIT_ROCEV2_LAG and
ICE_AQC_BIT_SRIOV_LAG defines were both not using the BIT operator, instead
simply setting a hex value that set the correct bits.  While not inaccurate,
this method is misleading, and when it is expanded in the following
implementation it becomes even more confusing.

Switch to using the BIT() operator to clarify what is being checked.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 2eaa4ab8e791..b3298063f1bd 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -133,8 +133,8 @@ struct ice_aqc_list_caps_elem {
 #define ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE		0x0085
 #define ICE_AQC_CAPS_NAC_TOPOLOGY			0x0087
 #define ICE_AQC_CAPS_FW_LAG_SUPPORT			0x0092
-#define ICE_AQC_BIT_ROCEV2_LAG				0x01
-#define ICE_AQC_BIT_SRIOV_LAG				0x02
+#define ICE_AQC_BIT_ROCEV2_LAG				BIT(0)
+#define ICE_AQC_BIT_SRIOV_LAG				BIT(1)
 
 	u8 major_ver;
 	u8 minor_ver;
-- 
2.49.0

