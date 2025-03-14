Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78126A60AE1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Mar 2025 09:11:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A3926074F;
	Fri, 14 Mar 2025 08:11:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RmWrrzzq52Sb; Fri, 14 Mar 2025 08:11:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FE5960793
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741939892;
	bh=Mmb8WjDZDH0QMBwwUu4sypUbB3U3ooR7J2TFW/a0yT0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zkRkqWVJssXW6XV2GfZKrmvRx7Tgm/kZW+jTvwC8rNR8kP8Yj+WvakRIQeRfMre5z
	 Dc5Nw5AOaKmokD10YNeN6jFN5os4kJ8ha1Be+eQOq8Pkk4hSQPtHW3a38xGCFK28sZ
	 U9cJf0SQj/eglfpZOZ+gFBPt9V/0C0jiRq12FRJTKcrIcA19NrlgjmZza8xivCpQdo
	 JQisQMT1+ArKjBG3HtqCLgSIJFWqIrDzEsgPg3LbmUSKlqzf3cDnbXstZbld2r1P7e
	 FSOUUvAt8zEF/JPkrf9WEsO8lS28gHuJRe/Z2RJnPJTZQNDrHJdjUWVh9fRIfJVs/w
	 aWRu6N0U3sycg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FE5960793;
	Fri, 14 Mar 2025 08:11:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BC39E61
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 08:11:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A543A403FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 08:11:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xwmkTK7HRRV3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Mar 2025 08:11:29 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B2E00403E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2E00403E9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2E00403E9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 08:11:28 +0000 (UTC)
X-CSE-ConnectionGUID: KZ6w/1uYRziwTHRkHCYD2A==
X-CSE-MsgGUID: wxzTH+8ERgusOnnnDXg2wA==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="42812849"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="42812849"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 01:11:28 -0700
X-CSE-ConnectionGUID: ao8rK11JSTiZS/SBkJY+Pw==
X-CSE-MsgGUID: tw1/TXdHR9GoQZ27IFoMwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="121150021"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa010.jf.intel.com with ESMTP; 14 Mar 2025 01:11:27 -0700
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Fri, 14 Mar 2025 09:11:11 +0100
Message-ID: <20250314081110.34694-2-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741939889; x=1773475889;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DwsxhvSHFHvGVK5HJjjQ84jrLvARo9kZN3j7K83T6Vg=;
 b=e1GJgZ7x9C27mPQYMIYItfUFBITZ7vZYjfgdz2MUgbi8VpV+gRECI1q5
 KFhSkOoGAVppwVXQ03NUvYndB8NbYFiBBfCl5i8narrUgMtU2APeBz6y5
 vMHSxXqGxuo2zrigB8j3IF1uPB/6h0nPLL/Bfl67pcm5nJy30acdrjphd
 AhLS1C6wh/dgcpfDRW7Lcl10vU7bT5Hyuw/ut1cFRSD1/kXr2bD0Bz4fw
 gqEqScFUsiEQyzt/D9QkucvcL895VPax9Pc+eWIjtn2IRQ1qGkv9Zu8qm
 ghatszWV9wiKHBwuJnedfj0OsXmeKVozTZeRFta0zcw1geBofmQjaWZ6q
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e1GJgZ7x
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: improve error message for
 insufficient filter space
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

When adding a rule to switch through tc, if the operation fails
due to not enough free recipes (-ENOSPC), provide a clearer
error message: "Unable to add filter: insufficient space available."

This improves user feedback by distinguishing space limitations from
other generic failures.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index ea39b999a0d0..5acfa72fe7d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -846,6 +846,9 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter because it already exist");
 		ret = -EINVAL;
 		goto exit;
+	} else if (ret == -ENOSPC) {
+		NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter: insufficient space available.");
+		goto exit;
 	} else if (ret) {
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unable to add filter due to error");
 		goto exit;
@@ -1071,6 +1074,10 @@ ice_add_tc_flower_adv_fltr(struct ice_vsi *vsi,
 				   "Unable to add filter because it already exist");
 		ret = -EINVAL;
 		goto exit;
+	} else if (ret == -ENOSPC) {
+		NL_SET_ERR_MSG_MOD(tc_fltr->extack,
+				   "Unable to add filter: insufficient space available.");
+		goto exit;
 	} else if (ret) {
 		NL_SET_ERR_MSG_MOD(tc_fltr->extack,
 				   "Unable to add filter due to error");
-- 
2.47.0

