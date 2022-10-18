Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1C0602030
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Oct 2022 03:09:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D027405F3;
	Tue, 18 Oct 2022 01:09:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D027405F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666055376;
	bh=qWPgCSTQcMV+yaAArNi4AwjeKkY/yNw/wJPNLbPcuIM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Tp8gxrtXDqScvLuNoOsAIjmPwzwBauElkz1waMC4vRUj7PbJbcQf95Aux0M/FzuMe
	 PKONMS+PRSL9mdPX7t3MPfOoryZzXEjNE2nnKjyf62MXa9GE/8fZTvJzP3VIakxgaY
	 x7kic8BT0dXEYM2m+ZmYRidtWwWXAdRdtsVeJA1g6q60CNNAuIiR+g/1BcPyLJ2d2T
	 3HAt8YklEBfhfS752KXz0+ovH2gxkIpj4wIQ2Mcto/XajNHM3BQh4UONxR9/HSsPK0
	 1ytXn1qF1/7LJ3sJeqBxYtRSoL7xFcbVgwpx0yk6M1154JW/WTUdA9jHmlCa19VKJL
	 ALVE262XGnUwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7TazxauBUcD3; Tue, 18 Oct 2022 01:09:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 51B684018E;
	Tue, 18 Oct 2022 01:09:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 51B684018E
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F5E31BF399
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 584BF607C0
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 584BF607C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g74eMsNbVp6N for <intel-wired-lan@osuosl.org>;
 Tue, 18 Oct 2022 01:09:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA13160776
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA13160776
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="307624150"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="307624150"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 18:09:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="717704470"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="717704470"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Oct 2022 18:09:19 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 18 Oct 2022 09:07:33 +0800
Message-Id: <20221018010733.4765-6-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
References: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666055362; x=1697591362;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=/fIBo7hgaZxh4uv3Wc6ZmEJ4CD1I02BsVLcw1qCiQyE=;
 b=YJPmj9ttlqmSHesniH+3vIOvnLI93mRootdK9cnIdRaKWFJG7EDSCn5I
 Zbc1YCPuxDiA7lk6ywVcnMEXQXmO7moe3yfQVOH7KId0pLajEw+QXjQ2k
 2mUzHKVVKadmOYPgI+7WNqIsF3qWK6zxFWjoMPLrl5E5vQ3LCgG/WWKTj
 Z2AAWD5KktWWTvgiV967GMVCdRfRfFPkpySzzCwnA+wTNW3RicwMbb31y
 nJlTbQ7ZW+bTAmhNLsJ+yYPq+7wVn+/dBV7aCz5B2S2+b+PZGl2grpZpv
 nyz0nQ8voW4qGE1bdvAd9Cu71hDqzQ043inSl1JjYI7hZPUCyK6v9TRWa
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YJPmj9tt
Subject: [Intel-wired-lan] [PATCH v2 5/5] ethtool: Add support for
 HWTSTAMP_FILTER_DMA_TIMESTAMP
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
Cc: leon@kernel.org, netdev@vger.kernel.org, richardcochran@gmail.com,
 saeed@kernel.org, edumazet@google.com, gal@nvidia.com, kuba@kernel.org,
 michael.chan@broadcom.com, muhammad.husaini.zulkifli@intel.com,
 davem@davemloft.net, andy@greyhouse.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add new HWTSTAMP_FILTER_DMA_TIMESTAMP receive filters.
This filter can be configured for devices that support/allow the
DMA timestamp retrieval on receive side.

Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 1 +
 include/uapi/linux/net_tstamp.h          | 3 +++
 net/core/dev_ioctl.c                     | 1 +
 net/ethtool/common.c                     | 1 +
 4 files changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 631972d7e97b..39ed759f9057 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -637,6 +637,7 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 	case HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ:
 	case HWTSTAMP_FILTER_PTP_V1_L4_EVENT:
 	case HWTSTAMP_FILTER_NTP_ALL:
+	case HWTSTAMP_FILTER_DMA_TIMESTAMP:
 	case HWTSTAMP_FILTER_ALL:
 		igc_ptp_enable_rx_timestamp(adapter);
 		config->rx_filter = HWTSTAMP_FILTER_ALL;
diff --git a/include/uapi/linux/net_tstamp.h b/include/uapi/linux/net_tstamp.h
index c9e113cea883..e72261ed879f 100644
--- a/include/uapi/linux/net_tstamp.h
+++ b/include/uapi/linux/net_tstamp.h
@@ -177,6 +177,9 @@ enum hwtstamp_rx_filters {
 	/* NTP, UDP, all versions and packet modes */
 	HWTSTAMP_FILTER_NTP_ALL,
 
+	/* DMA time stamp packet */
+	HWTSTAMP_FILTER_DMA_TIMESTAMP,
+
 	/* add new constants above here */
 	__HWTSTAMP_FILTER_CNT
 };
diff --git a/net/core/dev_ioctl.c b/net/core/dev_ioctl.c
index 7674bb9f3076..963327472c26 100644
--- a/net/core/dev_ioctl.c
+++ b/net/core/dev_ioctl.c
@@ -229,6 +229,7 @@ static int net_hwtstamp_validate(struct ifreq *ifr)
 	case HWTSTAMP_FILTER_PTP_V2_SYNC:
 	case HWTSTAMP_FILTER_PTP_V2_DELAY_REQ:
 	case HWTSTAMP_FILTER_NTP_ALL:
+	case HWTSTAMP_FILTER_DMA_TIMESTAMP:
 		rx_filter_valid = 1;
 		break;
 	case __HWTSTAMP_FILTER_CNT:
diff --git a/net/ethtool/common.c b/net/ethtool/common.c
index 24f8e7f9b4a5..fe6e5dfdfcce 100644
--- a/net/ethtool/common.c
+++ b/net/ethtool/common.c
@@ -438,6 +438,7 @@ const char ts_rx_filter_names[][ETH_GSTRING_LEN] = {
 	[HWTSTAMP_FILTER_PTP_V2_SYNC]		= "ptpv2-sync",
 	[HWTSTAMP_FILTER_PTP_V2_DELAY_REQ]	= "ptpv2-delay-req",
 	[HWTSTAMP_FILTER_NTP_ALL]		= "ntp-all",
+	[HWTSTAMP_FILTER_DMA_TIMESTAMP]		= "dma-timestamp",
 };
 static_assert(ARRAY_SIZE(ts_rx_filter_names) == __HWTSTAMP_FILTER_CNT);
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
