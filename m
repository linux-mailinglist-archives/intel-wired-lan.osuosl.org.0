Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AFF8132CA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 15:17:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95D93421E1;
	Thu, 14 Dec 2023 14:17:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95D93421E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702563450;
	bh=xYpHOiZfHfjxlIrwTDcwowwc0i+ppL1RDadVTcOIg6g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CEzRcSFKF2B1Eqow9IfGb2XSPMF0SsWPj9/KLwjZLGpSZRuLRWH9ALru3Lve6Wzsr
	 3wisDIFnXaNJL2QdARGKmbV1n8Rj5hUklTg7uwr7l/7dfQ8/VJY9b8jVRg75uzYVwv
	 su+/Xq6yeVQDEceMGpzC5SrVav7/zp2w4Ib/kLs+SOHFgpamCZcKqr0S+9wNyxiG0e
	 KsDlqqCXeRYSfbxs8+q8V3QO0re+4dWtQxbOpq4FF4FD172TwQFJ/EYNaQTSjzFxtI
	 wpyvYfQr3wD/cd/P80IltAAolvpmngXJHo9wxXW/u0tfA2zn9LEkrwPkyUstSocnTj
	 QWop16SwbmocA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x3cs0HkaNeb5; Thu, 14 Dec 2023 14:17:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E5B84218D;
	Thu, 14 Dec 2023 14:17:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E5B84218D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E07FF1BF376
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 14:17:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C5231421C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 14:17:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5231421C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7tCeK271SYub for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 14:17:23 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 14 Dec 2023 14:17:23 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1ACF84218D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1ACF84218D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 14:17:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="1942364"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; 
   d="scan'208";a="1942364"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 06:10:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="918071248"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="918071248"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by fmsmga001.fm.intel.com with ESMTP; 14 Dec 2023 06:10:13 -0800
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Thu, 14 Dec 2023 15:10:12 +0100
Message-Id: <20231214141012.224894-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702563443; x=1734099443;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P5+juMLHJnwyDiBpl3S0dM5Nn3q6D4TIwTTHAV2aD7E=;
 b=TtXjGYkGXC7I3MqqoCqHF5VL43cTfGbzeGtUi3ztdLmrCBnDJXQjAZW2
 +FBB/co5hbtdYOprb8RYcnBm5rTp8+KxMGDYsLbecNV5Om5rFcb0RUKQs
 UK73tA0CCQYOaQv4XJ9BZC2h+vC3NVYgOxEudc1LMp4SIHqkkDqstOHcC
 382ON+BRsH5uu7c3jEsv8/V2OAV9Mqp17Q8zztjaPdpfYIgh/XIgQqQJ5
 08TnA/V/J5Xn0SDjZdJbAOhIRLJooP5a/YxtctZaFzgdMRCRLE/vXN3eZ
 FqyUZZQyxhk+NTaDl1btLtFi8imbjmfre4r7kJG8VtsHuSDi7bXTB19Y/
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TtXjGYkG
Subject: [Intel-wired-lan] [PATCH iwl-next] i40e: add trace events related
 to SFP module IOCTLs
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
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add trace events related to SFP module IOCTLs for troubleshooting.

Riewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 src/CORE/i40e_ethtool.c |  5 +++++
 src/CORE/i40e_trace.h   | 18 ++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/src/CORE/i40e_ethtool.c b/src/CORE/i40e_ethtool.c
index 0838566..e9d9d4b 100644
--- a/src/CORE/i40e_ethtool.c
+++ b/src/CORE/i40e_ethtool.c
@@ -1057,6 +1057,7 @@ static int i40e_get_link_ksettings(struct net_device *netdev,
 	ethtool_link_ksettings_zero_link_mode(ks, supported);
 	ethtool_link_ksettings_zero_link_mode(ks, advertising);
 
+	i40e_trace(ioctl_get_link_ksettings, pf, hw_link_info->link_info);
 	if (link_up)
 		i40e_get_settings_link_up(hw, ks, netdev, pf);
 	else
@@ -7219,9 +7220,12 @@ static int i40e_get_module_info(struct net_device *netdev,
 		modinfo->eeprom_len = I40E_MODULE_QSFP_MAX_LEN;
 		break;
 	default:
+		i40e_trace(ioctl_get_module_info, pf, ~0UL);
 		netdev_dbg(vsi->netdev, "SFP module type unrecognized or no SFP connector used.\n");
 		return -EOPNOTSUPP;
 	}
+	i40e_trace(ioctl_get_module_info, pf, (((u64)modinfo->type) << 32) |
+		   modinfo->eeprom_len);
 	return 0;
 }
 
@@ -7244,6 +7248,7 @@ static int i40e_get_module_eeprom(struct net_device *netdev,
 	u32 value = 0;
 	int i;
 
+	i40e_trace(ioctl_get_module_eeprom, pf, ee ? ee->len : 0U);
 	if (!ee || !ee->len || !data)
 		return -EINVAL;
 
diff --git a/src/CORE/i40e_trace.h b/src/CORE/i40e_trace.h
index cac0f7c..f54fc36 100644
--- a/src/CORE/i40e_trace.h
+++ b/src/CORE/i40e_trace.h
@@ -428,6 +428,24 @@ DEFINE_EVENT(
 
 	TP_ARGS(pf, val));
 
+DEFINE_EVENT(
+	i40e_ioctl_template, i40e_ioctl_get_module_info,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DEFINE_EVENT(
+	i40e_ioctl_template, i40e_ioctl_get_module_eeprom,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
+DEFINE_EVENT(
+	i40e_ioctl_template, i40e_ioctl_get_link_ksettings,
+	TP_PROTO(struct i40e_pf *pf, u64 val),
+
+	TP_ARGS(pf, val));
+
 DECLARE_EVENT_CLASS(
 	i40e_nvmupd_template,
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
