Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 498CF7BB6D7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 13:44:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0457A613F2;
	Fri,  6 Oct 2023 11:44:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0457A613F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696592651;
	bh=NjKakd8siaCHVe7p2q66bst6SCF7NBUDmitzcSx+n0c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ytAObORCPw+Q6KrnqHY8zJekP7T3Bgsi/GE5diBA2jN2pesfta/QyxjZ4ySjlOIns
	 Q3Xt0QDDR4m3EzPIv0RM4Ys7XxnigH/VuCJJuV2e81ust/jXoAgVgrI3ZvJPmrInf6
	 74+I8KnE0cupFZaHjse7mLWzyU6OvxQt9YSYq5ZG2chraHBNZ2qwf6DgoFpjrPxfc1
	 snjvzbDWs5PHXYKqnwGu2twLJ34nCmHR5iYCcdt69HILgHFLcbGety/UYEeTUP6bRO
	 hT/buET0hhXY7u4J9D5t1opFJzMV/KX0fR5l4/cmGGf0tnntiYPCK5iy176X4KWHbF
	 +jKcEzVFMyG3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lnml0sI8RgSV; Fri,  6 Oct 2023 11:44:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87D0160FB9;
	Fri,  6 Oct 2023 11:44:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87D0160FB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B0E6F1BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:43:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A3F383B6F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:43:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A3F383B6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nfGcG1jD5Tgs for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 11:43:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B426283B5E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:43:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B426283B5E
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="470003254"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470003254"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 04:43:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="925942718"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="925942718"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orsmga005.jf.intel.com with ESMTP; 06 Oct 2023 04:43:53 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org
Date: Fri,  6 Oct 2023 13:40:59 +0200
Message-Id: <20231006114101.1608796-4-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20231006114101.1608796-1-arkadiusz.kubalewski@intel.com>
References: <20231006114101.1608796-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696592636; x=1728128636;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j5zVEg/I+Gu2q4wK/C1xI3u6uGivmsKp9MuiUjz4V18=;
 b=envmGYi/ZBEUXf+HRXN/6c7bIvBvdaqLGQj1W5Hi/BNxyZ6P6wN5jZhI
 ZC7c23mU/CZHKXrMqZWSwVGbPm4h94uZQp40dZIX1yQ3K91U3KRXGwld+
 JgEAC5+6wdl26kvgS4b6KV2dg3SI/wYnhsDrrob2xOkyQxB13dXsKOIaa
 TzvLv9nxwrO8Ah7PRz2CRJ5fP9cpnU6sH9rcB1BnS0tmnYU2QW6mmycmf
 Eq9c9YMe4MBCYROaUaXtGNao2QwQxSxQoGZe1vxNR4jq9Q1C8NeqpynSu
 3COvExO5gW2rs44m+FDimZsCSD7rjogMGWQuNducoDQcyxt4trUbOd6BM
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=envmGYi/
Subject: [Intel-wired-lan] [PATCH net-next v3 3/5] dpll: netlink/core: add
 support for pin-dpll signal phase offset/adjust
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
Cc: jiri@resnulli.us, corbet@lwn.net, intel-wired-lan@lists.osuosl.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, kuba@kernel.org, vadim.fedorenko@linux.dev,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add callback ops for pin-dpll phase measurment.
Add callback for pin signal phase adjustment.
Add min and max phase adjustment values to pin proprties.
Invoke callbacks in dpll_netlink.c when filling the pin details to
provide user with phase related attribute values.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/dpll/dpll_netlink.c | 130 +++++++++++++++++++++++++++++++++++-
 include/linux/dpll.h        |  18 +++++
 2 files changed, 147 insertions(+), 1 deletion(-)

diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
index e20daba6896a..97319a9e4667 100644
--- a/drivers/dpll/dpll_netlink.c
+++ b/drivers/dpll/dpll_netlink.c
@@ -212,6 +212,53 @@ dpll_msg_add_pin_direction(struct sk_buff *msg, struct dpll_pin *pin,
 	return 0;
 }
 
+static int
+dpll_msg_add_pin_phase_adjust(struct sk_buff *msg, struct dpll_pin *pin,
+			      struct dpll_pin_ref *ref,
+			      struct netlink_ext_ack *extack)
+{
+	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
+	struct dpll_device *dpll = ref->dpll;
+	s32 phase_adjust;
+	int ret;
+
+	if (!ops->phase_adjust_get)
+		return 0;
+	ret = ops->phase_adjust_get(pin, dpll_pin_on_dpll_priv(dpll, pin),
+				    dpll, dpll_priv(dpll),
+				    &phase_adjust, extack);
+	if (ret)
+		return ret;
+	if (nla_put_s32(msg, DPLL_A_PIN_PHASE_ADJUST, phase_adjust))
+		return -EMSGSIZE;
+
+	return 0;
+}
+
+static int
+dpll_msg_add_phase_offset(struct sk_buff *msg, struct dpll_pin *pin,
+			  struct dpll_pin_ref *ref,
+			  struct netlink_ext_ack *extack)
+{
+	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
+	struct dpll_device *dpll = ref->dpll;
+	s64 phase_offset;
+	int ret;
+
+	if (!ops->phase_offset_get)
+		return 0;
+	ret = ops->phase_offset_get(pin, dpll_pin_on_dpll_priv(dpll, pin),
+				    dpll, dpll_priv(dpll), &phase_offset,
+				    extack);
+	if (ret)
+		return ret;
+	if (nla_put_64bit(msg, DPLL_A_PIN_PHASE_OFFSET, sizeof(phase_offset),
+			  &phase_offset, DPLL_A_PIN_PAD))
+		return -EMSGSIZE;
+
+	return 0;
+}
+
 static int
 dpll_msg_add_pin_freq(struct sk_buff *msg, struct dpll_pin *pin,
 		      struct dpll_pin_ref *ref, struct netlink_ext_ack *extack)
@@ -330,6 +377,9 @@ dpll_msg_add_pin_dplls(struct sk_buff *msg, struct dpll_pin *pin,
 		if (ret)
 			goto nest_cancel;
 		ret = dpll_msg_add_pin_direction(msg, pin, ref, extack);
+		if (ret)
+			goto nest_cancel;
+		ret = dpll_msg_add_phase_offset(msg, pin, ref, extack);
 		if (ret)
 			goto nest_cancel;
 		nla_nest_end(msg, attr);
@@ -377,6 +427,15 @@ dpll_cmd_pin_get_one(struct sk_buff *msg, struct dpll_pin *pin,
 	if (nla_put_u32(msg, DPLL_A_PIN_CAPABILITIES, prop->capabilities))
 		return -EMSGSIZE;
 	ret = dpll_msg_add_pin_freq(msg, pin, ref, extack);
+	if (ret)
+		return ret;
+	if (nla_put_s32(msg, DPLL_A_PIN_PHASE_ADJUST_MIN,
+			prop->phase_range.min))
+		return -EMSGSIZE;
+	if (nla_put_s32(msg, DPLL_A_PIN_PHASE_ADJUST_MAX,
+			prop->phase_range.max))
+		return -EMSGSIZE;
+	ret = dpll_msg_add_pin_phase_adjust(msg, pin, ref, extack);
 	if (ret)
 		return ret;
 	if (xa_empty(&pin->parent_refs))
@@ -416,7 +475,7 @@ dpll_device_get_one(struct dpll_device *dpll, struct sk_buff *msg,
 	if (nla_put_u32(msg, DPLL_A_TYPE, dpll->type))
 		return -EMSGSIZE;
 
-	return ret;
+	return 0;
 }
 
 static int
@@ -705,6 +764,70 @@ dpll_pin_direction_set(struct dpll_pin *pin, struct dpll_device *dpll,
 	return 0;
 }
 
+static int
+dpll_pin_phase_adj_set(struct dpll_pin *pin, struct nlattr *phase_adj_attr,
+		       struct netlink_ext_ack *extack)
+{
+	struct dpll_pin_ref *ref, *failed;
+	const struct dpll_pin_ops *ops;
+	s32 phase_adj, old_phase_adj;
+	struct dpll_device *dpll;
+	unsigned long i;
+	int ret;
+
+	phase_adj = nla_get_s32(phase_adj_attr);
+	if (phase_adj > pin->prop->phase_range.max ||
+	    phase_adj < pin->prop->phase_range.min) {
+		NL_SET_ERR_MSG(extack, "phase adjust value not supported");
+		return -EINVAL;
+	}
+	xa_for_each(&pin->dpll_refs, i, ref) {
+		ops = dpll_pin_ops(ref);
+		if (!ops->phase_adjust_set || !ops->phase_adjust_get)
+			return -EOPNOTSUPP;
+	}
+	ref = dpll_xa_ref_dpll_first(&pin->dpll_refs);
+	ops = dpll_pin_ops(ref);
+	dpll = ref->dpll;
+	ret = ops->phase_adjust_get(pin, dpll_pin_on_dpll_priv(dpll, pin),
+				    dpll, dpll_priv(dpll), &old_phase_adj,
+				    extack);
+	if (ret) {
+		NL_SET_ERR_MSG(extack, "unable to get old phase adjust value");
+		return ret;
+	}
+	if (phase_adj == old_phase_adj)
+		return 0;
+	xa_for_each(&pin->dpll_refs, i, ref) {
+		ops = dpll_pin_ops(ref);
+		dpll = ref->dpll;
+		ret = ops->phase_adjust_set(pin,
+					    dpll_pin_on_dpll_priv(dpll, pin),
+					    dpll, dpll_priv(dpll), phase_adj,
+					    extack);
+		if (ret) {
+			failed = ref;
+			goto rollback;
+		}
+	}
+	__dpll_pin_change_ntf(pin);
+
+	return 0;
+
+rollback:
+	xa_for_each(&pin->dpll_refs, i, ref) {
+		if (ref == failed)
+			break;
+		ops = dpll_pin_ops(ref);
+		dpll = ref->dpll;
+		if (ops->phase_adjust_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
+					  dpll, dpll_priv(dpll), old_phase_adj,
+					  extack))
+			NL_SET_ERR_MSG(extack, "set phase adjust rollback failed");
+	}
+	return ret;
+}
+
 static int
 dpll_pin_parent_device_set(struct dpll_pin *pin, struct nlattr *parent_nest,
 			   struct netlink_ext_ack *extack)
@@ -793,6 +916,11 @@ dpll_pin_set_from_nlattr(struct dpll_pin *pin, struct genl_info *info)
 			if (ret)
 				return ret;
 			break;
+		case DPLL_A_PIN_PHASE_ADJUST:
+			ret = dpll_pin_phase_adj_set(pin, a, info->extack);
+			if (ret)
+				return ret;
+			break;
 		case DPLL_A_PIN_PARENT_DEVICE:
 			ret = dpll_pin_parent_device_set(pin, a, info->extack);
 			if (ret)
diff --git a/include/linux/dpll.h b/include/linux/dpll.h
index bbc480cd2932..578fc5fa3750 100644
--- a/include/linux/dpll.h
+++ b/include/linux/dpll.h
@@ -68,6 +68,18 @@ struct dpll_pin_ops {
 	int (*prio_set)(const struct dpll_pin *pin, void *pin_priv,
 			const struct dpll_device *dpll, void *dpll_priv,
 			const u32 prio, struct netlink_ext_ack *extack);
+	int (*phase_offset_get)(const struct dpll_pin *pin, void *pin_priv,
+				const struct dpll_device *dpll, void *dpll_priv,
+				s64 *phase_offset,
+				struct netlink_ext_ack *extack);
+	int (*phase_adjust_get)(const struct dpll_pin *pin, void *pin_priv,
+				const struct dpll_device *dpll, void *dpll_priv,
+				s32 *phase_adjust,
+				struct netlink_ext_ack *extack);
+	int (*phase_adjust_set)(const struct dpll_pin *pin, void *pin_priv,
+				const struct dpll_device *dpll, void *dpll_priv,
+				const s32 phase_adjust,
+				struct netlink_ext_ack *extack);
 };
 
 struct dpll_pin_frequency {
@@ -91,6 +103,11 @@ struct dpll_pin_frequency {
 #define DPLL_PIN_FREQUENCY_DCF77 \
 	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_77_5_KHZ)
 
+struct dpll_pin_phase_adjust_range {
+	s32 min;
+	s32 max;
+};
+
 struct dpll_pin_properties {
 	const char *board_label;
 	const char *panel_label;
@@ -99,6 +116,7 @@ struct dpll_pin_properties {
 	unsigned long capabilities;
 	u32 freq_supported_num;
 	struct dpll_pin_frequency *freq_supported;
+	struct dpll_pin_phase_adjust_range phase_range;
 };
 
 #if IS_ENABLED(CONFIG_DPLL)
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
