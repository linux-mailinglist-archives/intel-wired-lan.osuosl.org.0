Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA4760202C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Oct 2022 03:09:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E472140289;
	Tue, 18 Oct 2022 01:09:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E472140289
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666055358;
	bh=p/HQlLWaBwIASjvEVPCDKleZWnJGSA2QziTOEjZiVFo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TCbyAZACbnQhLiY7RgQiTfrHcJbwjQ2JVuZoQc5L5hcl4hV9MRzne4XJP5t2oroVW
	 lJSX56V+6eEpSfAHygtWCz+TPJKES9ua8ZkSp8ifM+wWB1offvXT2y+WrPPUywxK/H
	 A/ZxIgGllYhT5kR4wkTc2+kILGHwgzzAf9+0ErH7pdnQ+nY+fDAavmnhzKXItVrxvP
	 Ab/5o+yhXXwfEqb7bhoJSZhlQCsUmg+wK/juqAWYJuxD5vuIjH7ySX/mFiWAoWK2G2
	 n/0NctX8jEObo1FE/ovhZwNYLicnvMMBsUZIvMvQjkGOzNV+ARRI8ZAN2vZEXvHJSP
	 9EBlGmsA7hYYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M6pisnNM_JBJ; Tue, 18 Oct 2022 01:09:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15F77404CC;
	Tue, 18 Oct 2022 01:09:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15F77404CC
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2B861BF399
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DF8C60FA3
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DF8C60FA3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aAJkT56rqER0 for <intel-wired-lan@osuosl.org>;
 Tue, 18 Oct 2022 01:09:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC17560776
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AC17560776
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="307624112"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="307624112"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 18:09:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="717704404"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="717704404"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Oct 2022 18:09:05 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 18 Oct 2022 09:07:29 +0800
Message-Id: <20221018010733.4765-2-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
References: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666055348; x=1697591348;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=upmt3pZyDTQiw3ANIcvU53NO5MogN8byOr+ynwpMONE=;
 b=NBwyNaINNVYA7zjzPSMXenIVX9da0thMzBBSAg0CZEdX6r1CX4RqRY6d
 NmoNeNzN8TV6IlaKTq30yG7cOgwA7QYvm5vyHmcxBZYpOdr/DxfBC9kmD
 O3JU0KB5mf/9L1GeAgf0lOEIUK+dOV6IeZ7NIPaNq8CoR9yJbyK13cKkj
 99ocZK3SJtg0lsXeBnBHOaU7yA/uZbRt/adOLjAu/Q54BBFKW4SQHWKzA
 bqex5ohZyI9aDTtcWedtrlnx6I2mvdOx8HyKsMtWm7s8ICMVnNC/CFaQ1
 0s8SRpoikt1u1A+pNhJ3ghx+D3yV8evnVVIchxrxk0jU07f6HuY6kaVu1
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NBwyNaIN
Subject: [Intel-wired-lan] [PATCH v2 1/5] ethtool: Add new hwtstamp flag
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

This add patch add a new DMA Time Stamp flag. User can configure
hwtstamp_config with this flag if they want to use DMA time stamp.

Suggested-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 include/uapi/linux/ethtool.h         |  3 +++
 include/uapi/linux/ethtool_netlink.h |  1 +
 include/uapi/linux/net_tstamp.h      |  5 ++++-
 net/ethtool/common.c                 |  6 ++++++
 net/ethtool/common.h                 |  2 ++
 net/ethtool/strset.c                 |  5 +++++
 net/ethtool/tsinfo.c                 | 17 +++++++++++++++++
 7 files changed, 38 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/ethtool.h b/include/uapi/linux/ethtool.h
index dc2aa3d75b39..a3c60e2bde36 100644
--- a/include/uapi/linux/ethtool.h
+++ b/include/uapi/linux/ethtool.h
@@ -683,6 +683,7 @@ enum ethtool_link_ext_substate_module {
  * @ETH_SS_STATS_ETH_MAC: names of IEEE 802.3 MAC statistics
  * @ETH_SS_STATS_ETH_CTRL: names of IEEE 802.3 MAC Control statistics
  * @ETH_SS_STATS_RMON: names of RMON statistics
+ * @ETH_SS_HWTSTAMP_FLAG: timestamping flags
  *
  * @ETH_SS_COUNT: number of defined string sets
  */
@@ -708,6 +709,7 @@ enum ethtool_stringset {
 	ETH_SS_STATS_ETH_MAC,
 	ETH_SS_STATS_ETH_CTRL,
 	ETH_SS_STATS_RMON,
+	ETH_SS_HWTSTAMP_FLAG,
 
 	/* add new constants above here */
 	ETH_SS_COUNT
@@ -1416,6 +1418,7 @@ struct ethtool_ts_info {
 	__u32	tx_reserved[3];
 	__u32	rx_filters;
 	__u32	rx_reserved[3];
+	__u32	flag;
 };
 
 /*
diff --git a/include/uapi/linux/ethtool_netlink.h b/include/uapi/linux/ethtool_netlink.h
index bb57084ac524..4b7bd7554a3b 100644
--- a/include/uapi/linux/ethtool_netlink.h
+++ b/include/uapi/linux/ethtool_netlink.h
@@ -458,6 +458,7 @@ enum {
 	ETHTOOL_A_TSINFO_TX_TYPES,			/* bitset */
 	ETHTOOL_A_TSINFO_RX_FILTERS,			/* bitset */
 	ETHTOOL_A_TSINFO_PHC_INDEX,			/* u32 */
+	ETHTOOL_A_TSINFO_FLAG,				/* bitset */
 
 	/* add new constants above here */
 	__ETHTOOL_A_TSINFO_CNT,
diff --git a/include/uapi/linux/net_tstamp.h b/include/uapi/linux/net_tstamp.h
index 55501e5e7ac8..4966d5ca521f 100644
--- a/include/uapi/linux/net_tstamp.h
+++ b/include/uapi/linux/net_tstamp.h
@@ -89,7 +89,10 @@ enum hwtstamp_flags {
 	HWTSTAMP_FLAG_BONDED_PHC_INDEX = (1<<0),
 #define HWTSTAMP_FLAG_BONDED_PHC_INDEX	HWTSTAMP_FLAG_BONDED_PHC_INDEX
 
-	HWTSTAMP_FLAG_LAST = HWTSTAMP_FLAG_BONDED_PHC_INDEX,
+	HWTSTAMP_FLAG_DMA_TIMESTAMP = (1<<1),
+#define HWTSTAMP_FLAG_DMA_TIMESTAMP	HWTSTAMP_FLAG_DMA_TIMESTAMP
+
+	HWTSTAMP_FLAG_LAST = HWTSTAMP_FLAG_DMA_TIMESTAMP,
 	HWTSTAMP_FLAG_MASK = (HWTSTAMP_FLAG_LAST - 1) | HWTSTAMP_FLAG_LAST
 };
 
diff --git a/net/ethtool/common.c b/net/ethtool/common.c
index 566adf85e658..f2a178d162ef 100644
--- a/net/ethtool/common.c
+++ b/net/ethtool/common.c
@@ -406,6 +406,12 @@ const char sof_timestamping_names[][ETH_GSTRING_LEN] = {
 };
 static_assert(ARRAY_SIZE(sof_timestamping_names) == __SOF_TIMESTAMPING_CNT);
 
+const char ts_flag_names[][ETH_GSTRING_LEN] = {
+	[const_ilog2(HWTSTAMP_FLAG_BONDED_PHC_INDEX)]	= "bonded-phc-index",
+	[const_ilog2(HWTSTAMP_FLAG_DMA_TIMESTAMP)]	= "dma-time-stamp",
+};
+static_assert(ARRAY_SIZE(ts_flag_names) == __HWTSTAMP_FLAG_CNT);
+
 const char ts_tx_type_names[][ETH_GSTRING_LEN] = {
 	[HWTSTAMP_TX_OFF]		= "off",
 	[HWTSTAMP_TX_ON]		= "on",
diff --git a/net/ethtool/common.h b/net/ethtool/common.h
index c1779657e074..0161e04d4de8 100644
--- a/net/ethtool/common.h
+++ b/net/ethtool/common.h
@@ -13,6 +13,7 @@
 	ETHTOOL_LINK_MODE_ ## speed ## base ## type ## _ ## duplex ## _BIT
 
 #define __SOF_TIMESTAMPING_CNT (const_ilog2(SOF_TIMESTAMPING_LAST) + 1)
+#define __HWTSTAMP_FLAG_CNT (const_ilog2(HWTSTAMP_FLAG_LAST) + 1)
 
 struct link_mode_info {
 	int				speed;
@@ -36,6 +37,7 @@ extern const char sof_timestamping_names[][ETH_GSTRING_LEN];
 extern const char ts_tx_type_names[][ETH_GSTRING_LEN];
 extern const char ts_rx_filter_names[][ETH_GSTRING_LEN];
 extern const char udp_tunnel_type_names[][ETH_GSTRING_LEN];
+extern const char ts_flag_names[][ETH_GSTRING_LEN];
 
 int __ethtool_get_link(struct net_device *dev);
 
diff --git a/net/ethtool/strset.c b/net/ethtool/strset.c
index 3f7de54d85fb..b3fb1b1c516c 100644
--- a/net/ethtool/strset.c
+++ b/net/ethtool/strset.c
@@ -105,6 +105,11 @@ static const struct strset_info info_template[] = {
 		.count		= __ETHTOOL_A_STATS_RMON_CNT,
 		.strings	= stats_rmon_names,
 	},
+	[ETH_SS_HWTSTAMP_FLAG] = {
+		.per_dev	= false,
+		.count		= __HWTSTAMP_FLAG_CNT,
+		.strings	= ts_flag_names,
+	},
 };
 
 struct strset_req_info {
diff --git a/net/ethtool/tsinfo.c b/net/ethtool/tsinfo.c
index 63b5814bd460..af5acf7bf561 100644
--- a/net/ethtool/tsinfo.c
+++ b/net/ethtool/tsinfo.c
@@ -52,6 +52,7 @@ static int tsinfo_reply_size(const struct ethnl_req_info *req_base,
 	BUILD_BUG_ON(__SOF_TIMESTAMPING_CNT > 32);
 	BUILD_BUG_ON(__HWTSTAMP_TX_CNT > 32);
 	BUILD_BUG_ON(__HWTSTAMP_FILTER_CNT > 32);
+	BUILD_BUG_ON(__HWTSTAMP_FLAG_CNT > 32);
 
 	if (ts_info->so_timestamping) {
 		ret = ethnl_bitset32_size(&ts_info->so_timestamping, NULL,
@@ -79,6 +80,14 @@ static int tsinfo_reply_size(const struct ethnl_req_info *req_base,
 	}
 	if (ts_info->phc_index >= 0)
 		len += nla_total_size(sizeof(u32));	/* _TSINFO_PHC_INDEX */
+	if (ts_info->flag) {
+		ret = ethnl_bitset32_size(&ts_info->flag, NULL,
+					  __HWTSTAMP_FLAG_CNT,
+					  ts_flag_names, compact);
+		if (ret < 0)
+			return ret;
+		len += ret;	/* _TSINFO_FLAG */
+	}
 
 	return len;
 }
@@ -119,6 +128,14 @@ static int tsinfo_fill_reply(struct sk_buff *skb,
 	if (ts_info->phc_index >= 0 &&
 	    nla_put_u32(skb, ETHTOOL_A_TSINFO_PHC_INDEX, ts_info->phc_index))
 		return -EMSGSIZE;
+	if (ts_info->flag) {
+		ret = ethnl_put_bitset32(skb, ETHTOOL_A_TSINFO_FLAG,
+					 &ts_info->flag, NULL,
+					 __HWTSTAMP_FLAG_CNT,
+					 ts_flag_names, compact);
+		if (ret < 0)
+			return ret;
+	}
 
 	return 0;
 }
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
