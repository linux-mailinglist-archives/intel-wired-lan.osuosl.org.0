Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B15CAAFD10
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 16:31:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC2F360FC6;
	Thu,  8 May 2025 14:31:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I6VJLqCCNrW2; Thu,  8 May 2025 14:31:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A438960FA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746714664;
	bh=po7XCNAM5aoU4SCt2utVP9VuGZuTXpzkGFcrpMe0GG8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YnhcZjgQc17WFsCETkW1ZLkmAklpaFau6lCVI5mhYJ/zxZskphmeaRIGpAN9AI5oI
	 olHmvqJEXe1ZpJn+ERjtdqbyiPVU+yH+0ppFlHD0UF/HdHHMrX4jAj9a3CNnfUR/80
	 VYRWHseSeK6qBlGCui46BGU1d74HjDJceDMbjATw4h7PDY0TpyJ6oxJ27bhdMHkJSj
	 MmeUywD0iek8JKu1JWHVauZJA8R6l7ySXHHXvmkJFKHwrL/LBlYfULV6o7Sma5Fo3Y
	 xQLh83HY61+zBYv5P7XcoMYDnFwaHhksgIH4P5hgUq66/ozn8Sn14s9eEJRfQN91sD
	 XPgVK9dokQHrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A438960FA2;
	Thu,  8 May 2025 14:31:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9DFD2439
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 14:31:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 801ED81087
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 14:31:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4lGzFeAhL65W for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 14:31:02 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::634; helo=mail-ej1-x634.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2178E80ACB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2178E80ACB
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2178E80ACB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 14:31:00 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-acb2faa9f55so131045266b.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 May 2025 07:31:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746714659; x=1747319459;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=po7XCNAM5aoU4SCt2utVP9VuGZuTXpzkGFcrpMe0GG8=;
 b=LBCkQ60sxEPIzCt8lOrVIoLVcDtKLxpZ1GBQQ5kOSZqabxzCce678McvWVVAVb24Xh
 qu7fCEJvk9Rr5/espZ64VT0JGgu7QRDYeN2t/Mumv09YQjeQggRaI0fZmUAWPvCniJ4w
 bbyEeZhpKLFLIiLtXBXKeFTCju6OpvNRC16Jqijb5QrFnN8zUnZhk3rbnrfPsZQS7z0d
 8pNYpMh91IHo1XEIvWn5uJjYjmO7Z46v8l49+jBBM6b9FpcbY1uV+CVoZ3I9jjMlm6AT
 Q9akZvsCkvVLP3bdD+M4z1Yws7GLN0vzrbgpy9ueg1hKugB//uwq/B2Vp62nGZFynsp9
 YyXQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWYLoNNaORDFPPww0AYW6PcPaE80S2mejsjRkNOUxGVHuTjoEFEtsd3A1GHmqjg27ecVXUYZGLjPDi6Zq6brlk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxxQMiK/MCEMAxZvO5z6Rb1eSL68O12cCFAkepIjkF521UdGw2+
 SOW/gkoMplRQO3BesPsu0CpE8zOeqzgrHq1AbfzW2CieX5G9batr8oH4o64M2rc=
X-Gm-Gg: ASbGncvwqkjk+kSuZ3vwRM7oigR8GBKWW7ySZxkRNtaJd7Kn3xHrVB/kqiKKTIOfTbU
 7r9G+noh/xzzjvYvzvS4B5AfZs0DzK7Z6VUVKAioBsRWajNkN/cnQKip074T5aGwJvIca85LWnS
 qveJRMYPJevC727Td5wOpZrCRIsYOiu7ffXNefvsfV/orIg/edieuNyT5KunsT42HPtQEGi6Ojy
 1p29Y0iLVEXJZSgvqZJDvGOVIAWSDkRjWOXXdq/r5CbqRqO+Jji1rYYKVX8Fxfh4BsqPJ0/MxLV
 JKzclgNmQWfz9BvXu/hsf7WIMZ5W2vubZ5/mkoM4kb2Cyo+I9nfRIS+SzI18bdZUPmV3spZqu66
 N1TdO6TM=
X-Google-Smtp-Source: AGHT+IGIWEndgQkKTbjUKnyDkK0FcwKyffVWOR8u0As5y5IiwHlT/APkVxi1Y3XycuR8HVQF48M1qw==
X-Received: by 2002:a17:907:948c:b0:ad2:1371:6fde with SMTP id
 a640c23a62f3a-ad213717202mr54406166b.44.1746714659038; 
 Thu, 08 May 2025 07:30:59 -0700 (PDT)
Received: from jiri-mlt.client.nvidia.com ([193.47.165.251])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ad1891ee1f2sm1085548466b.75.2025.05.08.07.30.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 May 2025 07:30:58 -0700 (PDT)
Date: Thu, 8 May 2025 16:30:49 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net, 
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 saeedm@nvidia.com, leon@kernel.org, tariqt@nvidia.com, jonathan.lemon@gmail.com,
 richardcochran@gmail.com, aleksandr.loktionov@intel.com, milena.olech@intel.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org
Message-ID: <rwterkiyhdjcedboj773zc5s3d6purz6yaccfowco7m5zd7q3c@or4r33ay2dxh>
References: <20250508122128.1216231-1-arkadiusz.kubalewski@intel.com>
 <20250508122128.1216231-3-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250508122128.1216231-3-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1746714659; x=1747319459;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=po7XCNAM5aoU4SCt2utVP9VuGZuTXpzkGFcrpMe0GG8=;
 b=C11fPBI3Nkx6bxt4pjYW+2hicBzYhxsnhDNuIDPoHnJXzIVe0PR/tjY3Fm1cRZDqhq
 s/MMZ/a99ASLu+iZfUytbRgozMLX+0D+xD2faqaz3LKYOcowB1IP22N6DjeXPSUJau8p
 x450Eh8ZpYwOoFHdnDveZU1zBGsQeUikXevacKfArMEEE3VOoJklPGgEhQWMyv5w25+k
 ou+zwTE0Z9chJU6qnSaKIdVYuhLuWOuNPH9P9Z2bKsVrvscQ560geG9tz8UT1+VjAM1y
 6sQ5x5Q2zaXQRrzlzWyZmtYC1rbPr20z0qajxyupOrvSXafF9sGm/AQgfH4TtIiuNFta
 NsJg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=C11fPBI3
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/3] dpll: add
 phase_offset_monitor_get/set callback ops
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

Thu, May 08, 2025 at 02:21:27PM +0200, arkadiusz.kubalewski@intel.com wrote:
>Add new callback operations for a dpll device:
>- phase_offset_monitor_get(..) - to obtain current state of phase offset
>  monitor feature from dpll device,
>- phase_offset_monitor_set(..) - to allow feature configuration.
>
>Obtain the feature state value using the get callback and provide it to
>the user if the device driver implements callbacks.
>
>Execute the set callback upon user requests.
>
>Reviewed-by: Milena Olech <milena.olech@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
>v3:
>- remove feature flags and capabilities,
>- add separated (per feature) callback ops,
>- use callback ops to determine feature availability.
>---
> drivers/dpll/dpll_netlink.c | 76 ++++++++++++++++++++++++++++++++++++-
> include/linux/dpll.h        |  8 ++++
> 2 files changed, 82 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
>index c130f87147fa..6d2980455a46 100644
>--- a/drivers/dpll/dpll_netlink.c
>+++ b/drivers/dpll/dpll_netlink.c
>@@ -126,6 +126,26 @@ dpll_msg_add_mode_supported(struct sk_buff *msg, struct dpll_device *dpll,
> 	return 0;
> }
> 
>+static int
>+dpll_msg_add_phase_offset_monitor(struct sk_buff *msg, struct dpll_device *dpll,
>+				  struct netlink_ext_ack *extack)
>+{
>+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
>+	enum dpll_feature_state state;
>+	int ret;
>+
>+	if (ops->phase_offset_monitor_set && ops->phase_offset_monitor_get) {
>+		ret = ops->phase_offset_monitor_get(dpll, dpll_priv(dpll),
>+						    &state, extack);
>+		if (ret)
>+			return -EINVAL;

Why you don't propagate "ret"?


>+		if (nla_put_u32(msg, DPLL_A_PHASE_OFFSET_MONITOR, state))
>+			return -EMSGSIZE;
>+	}
>+
>+	return 0;
>+}
>+
> static int
> dpll_msg_add_lock_status(struct sk_buff *msg, struct dpll_device *dpll,
> 			 struct netlink_ext_ack *extack)
>@@ -591,6 +611,9 @@ dpll_device_get_one(struct dpll_device *dpll, struct sk_buff *msg,
> 		return ret;
> 	if (nla_put_u32(msg, DPLL_A_TYPE, dpll->type))
> 		return -EMSGSIZE;
>+	ret = dpll_msg_add_phase_offset_monitor(msg, dpll, extack);
>+	if (ret)
>+		return ret;
> 
> 	return 0;
> }
>@@ -746,6 +769,31 @@ int dpll_pin_change_ntf(struct dpll_pin *pin)
> }
> EXPORT_SYMBOL_GPL(dpll_pin_change_ntf);
> 
>+static int
>+dpll_phase_offset_monitor_set(struct dpll_device *dpll, struct nlattr *a,
>+			      struct netlink_ext_ack *extack)
>+{
>+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
>+	enum dpll_feature_state state = nla_get_u32(a), old_state;
>+	int ret;
>+
>+	if (!(ops->phase_offset_monitor_set && ops->phase_offset_monitor_get)) {
>+		NL_SET_ERR_MSG_ATTR(extack, a, "dpll device not capable of phase offset monitor");
>+		return -EOPNOTSUPP;
>+	}
>+	ret = ops->phase_offset_monitor_get(dpll, dpll_priv(dpll), &old_state,
>+					    extack);
>+	if (ret) {
>+		NL_SET_ERR_MSG(extack, "unable to get current state of phase offset monitor");
>+		return -EINVAL;
>+	}
>+	if (state == old_state)
>+		return 0;
>+
>+	return ops->phase_offset_monitor_set(dpll, dpll_priv(dpll), state,
>+					     extack);

Why you need to do this get/set dance? I mean, just call the driver
set() op and let it do what is needed there, no?


>+}
>+
> static int
> dpll_pin_freq_set(struct dpll_pin *pin, struct nlattr *a,
> 		  struct netlink_ext_ack *extack)
>@@ -1533,10 +1581,34 @@ int dpll_nl_device_get_doit(struct sk_buff *skb, struct genl_info *info)
> 	return genlmsg_reply(msg, info);
> }
> 
>+static int
>+dpll_set_from_nlattr(struct dpll_device *dpll, struct genl_info *info)
>+{
>+	struct nlattr *a;
>+	int rem, ret;
>+
>+	nla_for_each_attr(a, genlmsg_data(info->genlhdr),
>+			  genlmsg_len(info->genlhdr), rem) {

Hmm, why you iterate? Why you just don't parse to attr array, as it is
usually done?


>+		switch (nla_type(a)) {
>+		case DPLL_A_PHASE_OFFSET_MONITOR:
>+			ret = dpll_phase_offset_monitor_set(dpll, a,
>+							    info->extack);
>+			if (ret)
>+				return ret;
>+			break;
>+		default:
>+			break;
>+		}
>+	}
>+
>+	return 0;
>+}
>+
> int dpll_nl_device_set_doit(struct sk_buff *skb, struct genl_info *info)
> {
>-	/* placeholder for set command */
>-	return 0;
>+	struct dpll_device *dpll = info->user_ptr[0];
>+
>+	return dpll_set_from_nlattr(dpll, info);
> }
> 
> int dpll_nl_device_get_dumpit(struct sk_buff *skb, struct netlink_callback *cb)
>diff --git a/include/linux/dpll.h b/include/linux/dpll.h
>index 5e4f9ab1cf75..6ad6c2968a28 100644
>--- a/include/linux/dpll.h
>+++ b/include/linux/dpll.h
>@@ -30,6 +30,14 @@ struct dpll_device_ops {
> 				       void *dpll_priv,
> 				       unsigned long *qls,
> 				       struct netlink_ext_ack *extack);
>+	int (*phase_offset_monitor_set)(const struct dpll_device *dpll,
>+					void *dpll_priv,
>+					enum dpll_feature_state state,
>+					struct netlink_ext_ack *extack);
>+	int (*phase_offset_monitor_get)(const struct dpll_device *dpll,
>+					void *dpll_priv,
>+					enum dpll_feature_state *state,
>+					struct netlink_ext_ack *extack);
> };
> 
> struct dpll_pin_ops {
>-- 
>2.38.1
>
