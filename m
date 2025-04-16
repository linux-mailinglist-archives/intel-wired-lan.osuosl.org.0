Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B0AA8B884
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 14:11:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 975D76FC3F;
	Wed, 16 Apr 2025 12:11:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NJSQtIyFDWxX; Wed, 16 Apr 2025 12:11:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1B496FB24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744805479;
	bh=aIhNd1beHsCBJk7UARj/b4EA55X4Pt/IlSQhsaLXJEs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sURkGfPa2tmvtdEqvezTjs1A7nBcqgUOkf6HmkqBB1olQ+Q6oyxGPk+cazdXwWNrU
	 LD6NSZGjVSJY6xTfoEu+B/cqbEYDBacXYvQ0XfJ7tBabyP/Wpw9uSKfJlB2dNdZAyl
	 3iPFBR2U0640LkvQjezTMXvthxNemDr6cQaF45iVJ2q3t5AiRTMlA6zDSDMmNjE30S
	 X4wYu+1EfNjgJ1zAmwA/5BxA3XKVws6nIrnG0a15B5kqo98WkYKC67fv9TRUwFS92Y
	 C9jjv4deJkpHgkgfTGbqnM/bGeS9ftys4ndqlqN6yFlNAQKGbas4LTq08BUrkKeP+4
	 V6DpdeQEldCXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1B496FB24;
	Wed, 16 Apr 2025 12:11:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3AA3AE83
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:11:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 204F341C55
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:11:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6xDkNGeVSohZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 12:11:16 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42c; helo=mail-wr1-x42c.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3817141E95
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3817141E95
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3817141E95
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:11:14 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id
 ffacd0b85a97d-39ac9aea656so6835372f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 05:11:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744805472; x=1745410272;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aIhNd1beHsCBJk7UARj/b4EA55X4Pt/IlSQhsaLXJEs=;
 b=b6ymFW7piEauQLVclm6YZAJgbGwbkfmP0hRADtoyAT0JbVvqoXZneOO16VOBNcMH6h
 mfGsv9LLaCDLMCh/X+YJ8bZFoMC0CQxXE8Vh8Qn5YdcGCt7ysKJfGLoxuVWhCyljVgWe
 9wTIJE799cvQ1HU+FpiEQ7+c+6iRdDhMh7ZVJr7mUgmcWGlHgBIQHGEqqlVBxwVVQi/i
 VJFAcpdwPE27vj1mcqdoueoYjcjFf6K29I/suidZoaGmWqrh8cDBLrzh/O3gq0DmYom9
 +Yi9OpHRVIrAhliEYohZkE6uS1WmUwOyw7iutvwkFCQ0872iJ5rzqALPCWMi73HbNQAl
 wswQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXnnYC6mooGQlQWoOH2vl1yxbh4ezvD9jvQfPSIskYgUSSTq3gw+TOV9aNJYi5Y/4E/RNI3g4+6jSyAo6BYnZc=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywm668Tr+Zb4Dv2c15SMI84QK8tY7A7MWUMfbF+Y4UDBrSJxl89
 WRmKZJMjJmedixCxI9EXwgfn5kXSHSmUun7DctoWLbJ4ErMxZUlCZzn0QvJRy7w=
X-Gm-Gg: ASbGncsojZdC+XE+R2/WSYNYPgcl8st2B0HlcTH0JJRtIl0rNHJDFEGS5cq/0Hco2EV
 CfCFLgGqAyFoL76Cqb1T0AykfYaM7eUOHXEnw0Lps7aBytmYOrODV7fTXjBldKB9qwlDfZbs/RR
 R+/xBqfJqfs7YmAqZQWk3+q+JlGjVRfV09rB4C39k/zv3YF61zEGc57OsNH4fGGSf9sBXPwJyQ4
 V2P/+UlDIuXtCM1ru8+tRChkX0ceeqlLKjaYkTIqywtRkaa1cMZRQa8OS0w3vUj8pXlbqGrkeoJ
 7HGUw7I5bNCKr3//EmAszPoA4EWV6Ml3MzBOKxKhUiGAgbWN4RUJ8hWxaEc=
X-Google-Smtp-Source: AGHT+IGIAwh5paKCg/g4lQlBIPqJRZL9OcDB9OvQKhMNNe2NevcI1jcoYQQlLpJ2/+Ng8JEWh1CHCQ==
X-Received: by 2002:a05:6000:40cd:b0:39c:13fd:ec44 with SMTP id
 ffacd0b85a97d-39ee5b138fdmr1428303f8f.5.1744805472113; 
 Wed, 16 Apr 2025 05:11:12 -0700 (PDT)
Received: from jiri-mlt ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-39eae96407esm17110247f8f.17.2025.04.16.05.11.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Apr 2025 05:11:11 -0700 (PDT)
Date: Wed, 16 Apr 2025 14:10:59 +0200
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
Message-ID: <lljouuqzmhcb2esfrxrviohrwgweee6632ntfoca5fqho736il@auarfibpahpf>
References: <20250415181543.1072342-1-arkadiusz.kubalewski@intel.com>
 <20250415181543.1072342-4-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250415181543.1072342-4-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1744805472; x=1745410272;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=aIhNd1beHsCBJk7UARj/b4EA55X4Pt/IlSQhsaLXJEs=;
 b=cX54nfIDm6LYM6SpqS6k9qVxbYLeHf/Q30JaRgH3/ChUnTz+yQt25VF8m0wGMcgjXd
 wnLjNIfKAw5o9TaaBufQt4T9Ov9wGyEh8E33atFQ2oiKNmrZPt5grovygqq0E8Cm+uJr
 7PhhivX3qoLv0W3QrZwy3JrOc8OOl4Y0UQydn6RuA1S/D8PtqtMpCSW2J95nQHCeEEe0
 hVHFXYMEQKu8a2DM4SpvFxif6Vd96jqO1KbSBmS8lDtY8NIsf48R8fStGYm2LYKfQ9oQ
 M6BIkcFsEyXwtMRcuCYgXlsGtMAqr21KWtBHg5ig0y2Gn62x/GePQTcA3ho+39+rvmS7
 N1kQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=cX54nfID
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/4] dpll:
 features_get/set callbacks
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

Tue, Apr 15, 2025 at 08:15:42PM +0200, arkadiusz.kubalewski@intel.com wrote:
>Add new callback ops for a dpll device.
>- features_get(..) - to obtain currently configured features from dpll
>  device,
>- feature_set(..) - to allow dpll device features configuration.
>Provide features attribute and allow control over it to the users if
>device driver implements callbacks.
>
>Reviewed-by: Milena Olech <milena.olech@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
>v2:
>- adapt changes and align wiht new dpll_device_info struct
>---
> drivers/dpll/dpll_netlink.c | 79 ++++++++++++++++++++++++++++++++++++-
> include/linux/dpll.h        |  5 +++
> 2 files changed, 82 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
>index 2de9ec08d551..acfdd87fcffe 100644
>--- a/drivers/dpll/dpll_netlink.c
>+++ b/drivers/dpll/dpll_netlink.c
>@@ -126,6 +126,25 @@ dpll_msg_add_mode_supported(struct sk_buff *msg, struct dpll_device *dpll,
> 	return 0;
> }
> 
>+static int
>+dpll_msg_add_features(struct sk_buff *msg, struct dpll_device *dpll,
>+		      struct netlink_ext_ack *extack)
>+{
>+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
>+	u32 features;
>+	int ret;
>+
>+	if (!ops->features_get)
>+		return 0;
>+	ret = ops->features_get(dpll, dpll_priv(dpll), &features, extack);
>+	if (ret)
>+		return ret;
>+	if (nla_put_u32(msg, DPLL_A_FEATURES, features))
>+		return -EMSGSIZE;
>+
>+	return 0;
>+}
>+
> static int
> dpll_msg_add_lock_status(struct sk_buff *msg, struct dpll_device *dpll,
> 			 struct netlink_ext_ack *extack)
>@@ -592,6 +611,11 @@ dpll_device_get_one(struct dpll_device *dpll, struct sk_buff *msg,
> 		return ret;
> 	if (nla_put_u32(msg, DPLL_A_TYPE, info->type))
> 		return -EMSGSIZE;
>+	if (nla_put_u32(msg, DPLL_A_CAPABILITIES, info->capabilities))
>+		return -EMSGSIZE;
>+	ret = dpll_msg_add_features(msg, dpll, extack);
>+	if (ret)
>+		return ret;
> 
> 	return 0;
> }
>@@ -747,6 +771,34 @@ int dpll_pin_change_ntf(struct dpll_pin *pin)
> }
> EXPORT_SYMBOL_GPL(dpll_pin_change_ntf);
> 
>+static int
>+dpll_features_set(struct dpll_device *dpll, struct nlattr *a,
>+		  struct netlink_ext_ack *extack)
>+{
>+	const struct dpll_device_info *info = dpll_device_info(dpll);
>+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
>+	u32 features = nla_get_u32(a), old_features;
>+	int ret;
>+
>+	if (features && !(info->capabilities & features)) {
>+		NL_SET_ERR_MSG_ATTR(extack, a, "dpll device not capable of this features");
>+		return -EOPNOTSUPP;
>+	}
>+	if (!ops->features_get || !ops->features_set) {
>+		NL_SET_ERR_MSG(extack, "dpll device not supporting any features");
>+		return -EOPNOTSUPP;
>+	}
>+	ret = ops->features_get(dpll, dpll_priv(dpll), &old_features, extack);
>+	if (ret) {
>+		NL_SET_ERR_MSG(extack, "unable to get old features value");
>+		return ret;
>+	}
>+	if (old_features == features)
>+		return -EINVAL;
>+
>+	return ops->features_set(dpll, dpll_priv(dpll), features, extack);

So you allow to enable/disable them all in once. What if user want to
enable feature A and does not care about feature B that may of may not
be previously set?
How many of the features do you expect to appear in the future. I'm
asking because this could be just a bool attr with a separate op to the
driver. If we have 3, no problem. Benefit is, you may also extend it
easily to pass some non-bool configuration. My point is, what is the
benefit of features bitset here?



>+}
>+
> static int
> dpll_pin_freq_set(struct dpll_pin *pin, struct nlattr *a,
> 		  struct netlink_ext_ack *extack)
>@@ -1536,10 +1588,33 @@ int dpll_nl_device_get_doit(struct sk_buff *skb, struct genl_info *info)
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
>+		switch (nla_type(a)) {
>+		case DPLL_A_FEATURES:
>+			ret = dpll_features_set(dpll, a, info->extack);
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
>index 0489464af958..90c743daf64b 100644
>--- a/include/linux/dpll.h
>+++ b/include/linux/dpll.h
>@@ -30,6 +30,10 @@ struct dpll_device_ops {
> 				       void *dpll_priv,
> 				       unsigned long *qls,
> 				       struct netlink_ext_ack *extack);
>+	int (*features_set)(const struct dpll_device *dpll, void *dpll_priv,
>+			    u32 features, struct netlink_ext_ack *extack);
>+	int (*features_get)(const struct dpll_device *dpll, void *dpll_priv,
>+			    u32 *features, struct netlink_ext_ack *extack);
> };
> 
> struct dpll_pin_ops {
>@@ -99,6 +103,7 @@ struct dpll_pin_ops {
> 
> struct dpll_device_info {
> 	enum dpll_type type;
>+	u32 capabilities;
> 	const struct dpll_device_ops *ops;
> };
> 
>-- 
>2.38.1
>
