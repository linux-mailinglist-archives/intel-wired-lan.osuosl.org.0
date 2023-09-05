Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0DF793294
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 01:29:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14B3840861;
	Tue,  5 Sep 2023 23:29:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14B3840861
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693956553;
	bh=4I9x3LLxd0QsAw0+4vVktcgYsz/QgV7njKX/0L+aLTE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zciYaNDM8hU4ND2Oh7YdyDbRytqaKEHOz96P3Wr5mP2c1UuEyED9GWwkoZbC0kzV2
	 rYqEV67QSDNuvkXyYQCR34YgKEe8k6BRwgOhWSFhTpu2GHuY1Rnn8jJjiwug58MZRS
	 1iDUhfNmdsgFYnXPqpy0dnXRVU8pmofsAv9ZGucWkEbMbFyOk1Y3crOLguZP1mmevL
	 xDTqsZ1B7GANit8tXyGHRbz5AU9dhU+WqvF/yb6TH83blqUlmTCzcNseCzDVBgl0vy
	 P00w+3NdLR84IUEZUzeKCujV7JOZtKRD2Wd3tsyzwfyXMYnwREUUn8cp4Hlq72rVp0
	 aYEVxpfwNvQTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P8TGzfK1EX6F; Tue,  5 Sep 2023 23:29:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D35B40650;
	Tue,  5 Sep 2023 23:29:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D35B40650
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 855BE1BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 23:29:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E7E881228
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 23:29:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E7E881228
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mW_ZtzbSTTQ4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Sep 2023 23:28:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 77CDD8121A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 23:28:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77CDD8121A
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="379643934"
X-IronPort-AV: E=Sophos;i="6.02,230,1688454000"; d="scan'208";a="379643934"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 16:28:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="744448413"
X-IronPort-AV: E=Sophos;i="6.02,230,1688454000"; d="scan'208";a="744448413"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmsmga007.fm.intel.com with ESMTP; 05 Sep 2023 16:28:56 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: kuba@kernel.org, jiri@resnulli.us, jonathan.lemon@gmail.com,
 pabeni@redhat.com, vadim.fedorenko@linux.dev
Date: Wed,  6 Sep 2023 01:26:09 +0200
Message-Id: <20230905232610.1403647-4-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230905232610.1403647-1-arkadiusz.kubalewski@intel.com>
References: <20230905232610.1403647-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693956539; x=1725492539;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tY4VTbOhUSxDrOVCkDIaSt8IZVaqxQkalWFqbHb52W4=;
 b=hh0HPnB6FQcfYcLrj/pstNKP1koOt14BMKWYt+BlW9oIKTjNr3t5RxKl
 wVIyDnHG/Q7E7SJez2idZtxTtJl6XMsuBHGtFzKIwcWcjZZ1i1InlYZTY
 TBLFfagaPwv5q4OqcH/rn8OaIlEAjcbdxrS9E6gYvnhtttPWd9gEHP2Ml
 3sEOwvzedmCy1PuYY+St+Cm4vdrLgWg9sbyv32Ij7ZgLyB+759lWpPAqS
 +cCYb12571OsN1eOlDs0v5qP4D1VsaJQ20YU66eP4OIS8gMHHMg25NvFZ
 SO5QDa1x5sjg9pxSxgyCaH7vfkjPeLD6hojCYh4EviasjgmsK+MvNt8TO
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hh0HPnB6
Subject: [Intel-wired-lan] [PATCH net-next 3/4] dpll: netlink/core: add
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
Cc: bvanassche@acm.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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
 drivers/dpll/dpll_netlink.c | 99 ++++++++++++++++++++++++++++++++++++-
 include/linux/dpll.h        | 18 +++++++
 2 files changed, 116 insertions(+), 1 deletion(-)

diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
index 764437a0661b..548517d9ca4c 100644
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
@@ -705,6 +764,39 @@ dpll_pin_direction_set(struct dpll_pin *pin, struct dpll_device *dpll,
 	return 0;
 }
 
+static int
+dpll_pin_phase_adj_set(struct dpll_pin *pin, struct nlattr *phase_adj_attr,
+		       struct netlink_ext_ack *extack)
+{
+	struct dpll_pin_ref *ref;
+	unsigned long i;
+	s32 phase_adj;
+	int ret;
+
+	phase_adj = nla_get_s32(phase_adj_attr);
+	if (phase_adj > pin->prop->phase_range.max ||
+	    phase_adj < pin->prop->phase_range.min) {
+		NL_SET_ERR_MSG(extack, "phase adjust value not supported");
+		return -EINVAL;
+	}
+	xa_for_each(&pin->dpll_refs, i, ref) {
+		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
+		struct dpll_device *dpll = ref->dpll;
+
+		if (!ops->phase_adjust_set)
+			return -EOPNOTSUPP;
+		ret = ops->phase_adjust_set(pin,
+					    dpll_pin_on_dpll_priv(dpll, pin),
+					    dpll, dpll_priv(dpll), phase_adj,
+					    extack);
+		if (ret)
+			return ret;
+	}
+	__dpll_pin_change_ntf(pin);
+
+	return 0;
+}
+
 static int
 dpll_pin_parent_device_set(struct dpll_pin *pin, struct nlattr *parent_nest,
 			   struct netlink_ext_ack *extack)
@@ -793,6 +885,11 @@ dpll_pin_set_from_nlattr(struct dpll_pin *pin, struct genl_info *info)
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
