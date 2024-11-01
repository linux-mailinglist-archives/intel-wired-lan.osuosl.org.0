Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7659B9B18
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Nov 2024 00:06:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2430C4075C;
	Fri,  1 Nov 2024 23:06:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e7wrrDlOt9yn; Fri,  1 Nov 2024 23:05:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48F8F40748
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730502359;
	bh=SB6dkC3y3YYiTkF0+CxcBK0Ai0Ub5hghJqcEwKdljMs=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lcHSYxnIvHQwUng9Zu7arIFGClDsJkNDtkqhy7fgMr+0/gtricicFQkWAOV7qtjmG
	 T+Ug5jBr8gDNscqtRRB4H9vETen2V0WSjICsPUM9MESXGGPC9buwoj3q8LkxwxvKeM
	 buu2HWDL646vQVs0isSI33Y20V7kB+Xmknf6mscC82ynvmomvhsY0rD02/BSUGCMM1
	 w8ApHUw78RtkGqcWpbPnABUT/mb3p7y0oLxUfA7qZlJSccDDCzHvhlEIZnN4ahf91j
	 r0/A8Q1KNUe6cjHCKd3OLECRG86gOjSForfyi94ZCTCILTlrTaorxmvjFrTI/1Kqtg
	 TQJSKx/LkL1EQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48F8F40748;
	Fri,  1 Nov 2024 23:05:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0B51B979
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 23:05:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 092D44053E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 23:05:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g4Dok8V4oDvg for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Nov 2024 23:05:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 050A04055A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 050A04055A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 050A04055A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 23:05:52 +0000 (UTC)
X-CSE-ConnectionGUID: oMd0L0RCSHK+KHoDDTvd6Q==
X-CSE-MsgGUID: dVbSYo1ZTgqH3jYe5Snjsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30437323"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30437323"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 16:05:52 -0700
X-CSE-ConnectionGUID: NxmmhCRMSm+YADgzlE+QeA==
X-CSE-MsgGUID: w0Z8d65tTaW3xybzBkLJaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,251,1725346800"; d="scan'208";a="82775612"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 16:05:51 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 01 Nov 2024 16:05:43 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-2-f556dc9a66ed@intel.com>
References: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-0-f556dc9a66ed@intel.com>
In-Reply-To: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-0-f556dc9a66ed@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Yifei Liu <yifei.l.liu@oracle.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailer: b4 0.14.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730502354; x=1762038354;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=mVw+KsW0hywb9Rq2lLo9Zmd/Dbs3ib/I/HAbsz3bj4c=;
 b=memkcWk8jrZGchacm7rJ6ebUG2MrOTLY1UEasBRXQC2u3chPh4y3995n
 nwPWF7TWF7NVCV+zKAewKft5JpHREdGf8h/8KF+zxgr4ijO+1LWuHnp6t
 Je0Q0j8i8LCMns/hqiP4jq6GWqYoW9FJ+zVaqpVuVYeTU0SR+hTdudpsE
 vjD04TMU6Wi5SSqz8YQzyVsMysHWYgpmPuQfAcl17R3jHlpqbUgj5ZRW1
 aGRVsg4W5sQk3yWcq/Np21XXa++d2aLA2i8W2ttmB6D8X9NNMYWVkAlTB
 K1Wux/qGYHD/fPWNxBMaqdHQxvpeX5fZKvazIlvHPRINQ9W3e96PvZxwo
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=memkcWk8
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] ixgbe: downgrade logging of
 unsupported VF API version to debug
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

The ixgbe PF driver logs an info message when a VF attempts to negotiate an
API version which it does not support:

  VF 0 requested invalid api version 6

The ixgbevf driver attempts to load with mailbox API v1.5, which is
required for best compatibility with other hosts such as the ESX VMWare PF.

The Linux PF only supports API v1.4, and does not currently have support
for the v1.5 API.

The logged message can confuse users, as the v1.5 API is valid, but just
happens to not currently be supported by the Linux PF.

Downgrade the info message to a debug message, and fix the language to
use 'unsupported' instead of 'invalid' to improve message clarity.

Long term, we should investigate whether the improvements in the v1.5 API
make sense for the Linux PF, and if so implement them properly. This may
require yet another API version to resolve issues with negotiating IPSEC
offload support.

Reported-by: Yifei Liu <yifei.l.liu@oracle.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_common.h | 2 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c  | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
index 6493abf189de..6639069ad528 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
@@ -194,6 +194,8 @@ u32 ixgbe_read_reg(struct ixgbe_hw *hw, u32 reg);
 	dev_err(&adapter->pdev->dev, format, ## arg)
 #define e_dev_notice(format, arg...) \
 	dev_notice(&adapter->pdev->dev, format, ## arg)
+#define e_dbg(msglvl, format, arg...) \
+	netif_dbg(adapter, msglvl, adapter->netdev, format, ## arg)
 #define e_info(msglvl, format, arg...) \
 	netif_info(adapter, msglvl, adapter->netdev, format, ## arg)
 #define e_err(msglvl, format, arg...) \
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index e71715f5da22..20415c1238ef 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -1047,7 +1047,7 @@ static int ixgbe_negotiate_vf_api(struct ixgbe_adapter *adapter,
 		break;
 	}
 
-	e_info(drv, "VF %d requested invalid api version %u\n", vf, api);
+	e_dbg(drv, "VF %d requested unsupported api version %u\n", vf, api);
 
 	return -1;
 }

-- 
2.47.0.265.g4ca455297942

