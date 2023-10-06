Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 534397BB7D5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 14:38:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D816361233;
	Fri,  6 Oct 2023 12:38:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D816361233
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696595899;
	bh=gapaOZHmooAvpWns4ZlXUzKtbAd06c9U5Q1svlOr1jo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pnHqvVcf+3Jd/AwpWCixt0lQrxZXZQGEaQ1qVzHjaeW4kOri9vIKfaxBcT5revFdt
	 ZFnfCXb6MkjU/iIWRPLwex0ij+dnsF3toFnQs87cIkKyjKffBjv5eI3EnxkMSTD+yW
	 Tu401W3albOA5OoTSBJQqexVH5FE2x1G1GREMY4xGRMKW5XGUL4Qt+u9jwzVOx/hbB
	 kDzAkZVkg3Y/MIhBA9hnJ2uzCuvv08lTmeG65UZvB9ACIJIR+bu2wAsohSvVX7ulyW
	 XRRLgxqwmf0ikFlYKXGqaeEWX9fP+jzcfE2yqLZQ8+t0Z36PID96oKJ2BnAviSztBD
	 VX98MLsqonvPw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P1VytN83pdrg; Fri,  6 Oct 2023 12:38:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 400E961232;
	Fri,  6 Oct 2023 12:38:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 400E961232
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EDD1C1BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:38:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C37454049F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:38:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C37454049F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4vKMQ8H0fFj4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 12:38:11 +0000 (UTC)
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4D62C4013B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:38:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D62C4013B
Received: by mail-ed1-x52a.google.com with SMTP id
 4fb4d7f45d1cf-533c5d10dc7so3612767a12.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Oct 2023 05:38:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696595889; x=1697200689;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HYiSCW3dJ1barhenWUxHLxtb/rbkGFc35GP5tPgXmVQ=;
 b=HYjry0Z/UeNSuFH8TvlU8NLU69GPSLYNw5ZU5pdfcLhxoPJ9b7A1T1Ju2Ii3r3VdPe
 rZBC5La/QrBoHRgTrvn4EdPcpH2ISfQpARhK4cURs7jjun0jj/mlykMEZ4GXdm2vge9a
 U6C9fp6jFseLx8DdWpDc41n3dxETDK4VwlRJzzc3muFgz2n9ySDe/xtG4zmkCJBuYkcj
 wg2zgxv1AFmod+aBFz+z4q1fY8EBcrKWT7OAN0UHj9G78G5cnbG6+ZNNEqDwxSk84nPe
 SMi6zCZwVmikuFme+TreSTbzwZt6gzb6jmQ2IfSH4zEaQlWGo/mODqk4rHT7capyAGWC
 QQeg==
X-Gm-Message-State: AOJu0Yx7Rs/NDt6ZbaP8+LOQiMtIOTEpkbH/TuC0N4Ax3MAuGY8PZH4k
 fthDi339yBidW72nTUcn47gSTA==
X-Google-Smtp-Source: AGHT+IE7Jhiqy/RANR7wJrqH8j8c0q3qgKa2GA2zbWSUUFnUk7SoMhtCfUlX+V7sPaU0O1+LNABaVw==
X-Received: by 2002:aa7:db46:0:b0:532:ac24:3081 with SMTP id
 n6-20020aa7db46000000b00532ac243081mr7263774edt.30.1696595889119; 
 Fri, 06 Oct 2023 05:38:09 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 h13-20020a50ed8d000000b005307e75d24dsm2536245edr.17.2023.10.06.05.38.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Oct 2023 05:38:07 -0700 (PDT)
Date: Fri, 6 Oct 2023 14:38:05 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZR//rQ7WGmHeRBOP@nanopsycho>
References: <20231006114101.1608796-1-arkadiusz.kubalewski@intel.com>
 <20231006114101.1608796-4-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231006114101.1608796-4-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1696595889; x=1697200689;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=HYiSCW3dJ1barhenWUxHLxtb/rbkGFc35GP5tPgXmVQ=;
 b=e+XYZyaCKbDjZ5VVG7+N+wLc2tHPIfNf0OFrN0oqfX6GEQlX7GUdC23Wqq525zLRZ4
 LGg/XP6GjP69Fo1DbgtNR1c4hQjKpDtW1GI3FXwp4ArrhjkHbgl59SgIlOiASa7ouyam
 ii8ZuVAppt84yF8mlq/xEprTJHuWyOYcztb7vpeXLTV5cMoO3TkuTeBNgpQ0MDRh8cGv
 Sr6ldxCAAKnXPp52pYg2NFJkQSoExDYMDWurryM3x4SqF/Sc+OrAvhMIHwrG2YzNVrqc
 kOipeetQaudrDFXpReXWVczfgj3w0GqPb8xD+2xBjsjXayCfghxiJHnPT8BP01mwfXmj
 a1FA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=e+XYZyaC
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 3/5] dpll: netlink/core:
 add support for pin-dpll signal phase offset/adjust
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
Cc: vadim.fedorenko@linux.dev, corbet@lwn.net, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Oct 06, 2023 at 01:40:59PM CEST, arkadiusz.kubalewski@intel.com wrote:
>Add callback ops for pin-dpll phase measurment.
>Add callback for pin signal phase adjustment.
>Add min and max phase adjustment values to pin proprties.
>Invoke callbacks in dpll_netlink.c when filling the pin details to
>provide user with phase related attribute values.
>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
> drivers/dpll/dpll_netlink.c | 130 +++++++++++++++++++++++++++++++++++-
> include/linux/dpll.h        |  18 +++++
> 2 files changed, 147 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
>index e20daba6896a..97319a9e4667 100644
>--- a/drivers/dpll/dpll_netlink.c
>+++ b/drivers/dpll/dpll_netlink.c
>@@ -212,6 +212,53 @@ dpll_msg_add_pin_direction(struct sk_buff *msg, struct dpll_pin *pin,
> 	return 0;
> }
> 
>+static int
>+dpll_msg_add_pin_phase_adjust(struct sk_buff *msg, struct dpll_pin *pin,
>+			      struct dpll_pin_ref *ref,
>+			      struct netlink_ext_ack *extack)
>+{
>+	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>+	struct dpll_device *dpll = ref->dpll;
>+	s32 phase_adjust;
>+	int ret;
>+
>+	if (!ops->phase_adjust_get)
>+		return 0;
>+	ret = ops->phase_adjust_get(pin, dpll_pin_on_dpll_priv(dpll, pin),
>+				    dpll, dpll_priv(dpll),
>+				    &phase_adjust, extack);
>+	if (ret)
>+		return ret;
>+	if (nla_put_s32(msg, DPLL_A_PIN_PHASE_ADJUST, phase_adjust))
>+		return -EMSGSIZE;
>+
>+	return 0;
>+}
>+
>+static int
>+dpll_msg_add_phase_offset(struct sk_buff *msg, struct dpll_pin *pin,
>+			  struct dpll_pin_ref *ref,
>+			  struct netlink_ext_ack *extack)
>+{
>+	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>+	struct dpll_device *dpll = ref->dpll;
>+	s64 phase_offset;
>+	int ret;
>+
>+	if (!ops->phase_offset_get)
>+		return 0;
>+	ret = ops->phase_offset_get(pin, dpll_pin_on_dpll_priv(dpll, pin),
>+				    dpll, dpll_priv(dpll), &phase_offset,
>+				    extack);
>+	if (ret)
>+		return ret;
>+	if (nla_put_64bit(msg, DPLL_A_PIN_PHASE_OFFSET, sizeof(phase_offset),
>+			  &phase_offset, DPLL_A_PIN_PAD))
>+		return -EMSGSIZE;
>+
>+	return 0;
>+}
>+
> static int
> dpll_msg_add_pin_freq(struct sk_buff *msg, struct dpll_pin *pin,
> 		      struct dpll_pin_ref *ref, struct netlink_ext_ack *extack)
>@@ -330,6 +377,9 @@ dpll_msg_add_pin_dplls(struct sk_buff *msg, struct dpll_pin *pin,
> 		if (ret)
> 			goto nest_cancel;
> 		ret = dpll_msg_add_pin_direction(msg, pin, ref, extack);
>+		if (ret)
>+			goto nest_cancel;
>+		ret = dpll_msg_add_phase_offset(msg, pin, ref, extack);
> 		if (ret)
> 			goto nest_cancel;
> 		nla_nest_end(msg, attr);
>@@ -377,6 +427,15 @@ dpll_cmd_pin_get_one(struct sk_buff *msg, struct dpll_pin *pin,
> 	if (nla_put_u32(msg, DPLL_A_PIN_CAPABILITIES, prop->capabilities))
> 		return -EMSGSIZE;
> 	ret = dpll_msg_add_pin_freq(msg, pin, ref, extack);
>+	if (ret)
>+		return ret;
>+	if (nla_put_s32(msg, DPLL_A_PIN_PHASE_ADJUST_MIN,
>+			prop->phase_range.min))
>+		return -EMSGSIZE;
>+	if (nla_put_s32(msg, DPLL_A_PIN_PHASE_ADJUST_MAX,
>+			prop->phase_range.max))
>+		return -EMSGSIZE;
>+	ret = dpll_msg_add_pin_phase_adjust(msg, pin, ref, extack);
> 	if (ret)
> 		return ret;
> 	if (xa_empty(&pin->parent_refs))
>@@ -416,7 +475,7 @@ dpll_device_get_one(struct dpll_device *dpll, struct sk_buff *msg,
> 	if (nla_put_u32(msg, DPLL_A_TYPE, dpll->type))
> 		return -EMSGSIZE;
> 
>-	return ret;
>+	return 0;
> }
> 
> static int
>@@ -705,6 +764,70 @@ dpll_pin_direction_set(struct dpll_pin *pin, struct dpll_device *dpll,
> 	return 0;
> }
> 
>+static int
>+dpll_pin_phase_adj_set(struct dpll_pin *pin, struct nlattr *phase_adj_attr,
>+		       struct netlink_ext_ack *extack)
>+{
>+	struct dpll_pin_ref *ref, *failed;
>+	const struct dpll_pin_ops *ops;
>+	s32 phase_adj, old_phase_adj;
>+	struct dpll_device *dpll;
>+	unsigned long i;
>+	int ret;
>+
>+	phase_adj = nla_get_s32(phase_adj_attr);
>+	if (phase_adj > pin->prop->phase_range.max ||
>+	    phase_adj < pin->prop->phase_range.min) {
>+		NL_SET_ERR_MSG(extack, "phase adjust value not supported");
>+		return -EINVAL;
>+	}
>+	xa_for_each(&pin->dpll_refs, i, ref) {
>+		ops = dpll_pin_ops(ref);
>+		if (!ops->phase_adjust_set || !ops->phase_adjust_get)

Extack msg.


>+			return -EOPNOTSUPP;
>+	}
>+	ref = dpll_xa_ref_dpll_first(&pin->dpll_refs);
>+	ops = dpll_pin_ops(ref);
>+	dpll = ref->dpll;
>+	ret = ops->phase_adjust_get(pin, dpll_pin_on_dpll_priv(dpll, pin),
>+				    dpll, dpll_priv(dpll), &old_phase_adj,
>+				    extack);
>+	if (ret) {
>+		NL_SET_ERR_MSG(extack, "unable to get old phase adjust value");
>+		return ret;
>+	}
>+	if (phase_adj == old_phase_adj)
>+		return 0;
>+	xa_for_each(&pin->dpll_refs, i, ref) {
>+		ops = dpll_pin_ops(ref);
>+		dpll = ref->dpll;
>+		ret = ops->phase_adjust_set(pin,
>+					    dpll_pin_on_dpll_priv(dpll, pin),
>+					    dpll, dpll_priv(dpll), phase_adj,
>+					    extack);
>+		if (ret) {
>+			failed = ref;

Extack msg.

>+			goto rollback;
>+		}
>+	}
>+	__dpll_pin_change_ntf(pin);
>+
>+	return 0;
>+
>+rollback:
>+	xa_for_each(&pin->dpll_refs, i, ref) {
>+		if (ref == failed)
>+			break;
>+		ops = dpll_pin_ops(ref);
>+		dpll = ref->dpll;
>+		if (ops->phase_adjust_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
>+					  dpll, dpll_priv(dpll), old_phase_adj,
>+					  extack))
>+			NL_SET_ERR_MSG(extack, "set phase adjust rollback failed");
>+	}
>+	return ret;
>+}
>+
> static int
> dpll_pin_parent_device_set(struct dpll_pin *pin, struct nlattr *parent_nest,
> 			   struct netlink_ext_ack *extack)
>@@ -793,6 +916,11 @@ dpll_pin_set_from_nlattr(struct dpll_pin *pin, struct genl_info *info)
> 			if (ret)
> 				return ret;
> 			break;
>+		case DPLL_A_PIN_PHASE_ADJUST:
>+			ret = dpll_pin_phase_adj_set(pin, a, info->extack);
>+			if (ret)
>+				return ret;
>+			break;
> 		case DPLL_A_PIN_PARENT_DEVICE:
> 			ret = dpll_pin_parent_device_set(pin, a, info->extack);
> 			if (ret)
>diff --git a/include/linux/dpll.h b/include/linux/dpll.h
>index bbc480cd2932..578fc5fa3750 100644
>--- a/include/linux/dpll.h
>+++ b/include/linux/dpll.h
>@@ -68,6 +68,18 @@ struct dpll_pin_ops {
> 	int (*prio_set)(const struct dpll_pin *pin, void *pin_priv,
> 			const struct dpll_device *dpll, void *dpll_priv,
> 			const u32 prio, struct netlink_ext_ack *extack);
>+	int (*phase_offset_get)(const struct dpll_pin *pin, void *pin_priv,
>+				const struct dpll_device *dpll, void *dpll_priv,
>+				s64 *phase_offset,
>+				struct netlink_ext_ack *extack);
>+	int (*phase_adjust_get)(const struct dpll_pin *pin, void *pin_priv,
>+				const struct dpll_device *dpll, void *dpll_priv,
>+				s32 *phase_adjust,
>+				struct netlink_ext_ack *extack);
>+	int (*phase_adjust_set)(const struct dpll_pin *pin, void *pin_priv,
>+				const struct dpll_device *dpll, void *dpll_priv,
>+				const s32 phase_adjust,
>+				struct netlink_ext_ack *extack);
> };
> 
> struct dpll_pin_frequency {
>@@ -91,6 +103,11 @@ struct dpll_pin_frequency {
> #define DPLL_PIN_FREQUENCY_DCF77 \
> 	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_77_5_KHZ)
> 
>+struct dpll_pin_phase_adjust_range {
>+	s32 min;
>+	s32 max;
>+};
>+
> struct dpll_pin_properties {
> 	const char *board_label;
> 	const char *panel_label;
>@@ -99,6 +116,7 @@ struct dpll_pin_properties {
> 	unsigned long capabilities;
> 	u32 freq_supported_num;
> 	struct dpll_pin_frequency *freq_supported;
>+	struct dpll_pin_phase_adjust_range phase_range;
> };
> 
> #if IS_ENABLED(CONFIG_DPLL)
>-- 
>2.38.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
