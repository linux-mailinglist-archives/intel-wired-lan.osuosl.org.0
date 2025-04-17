Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09531A91884
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Apr 2025 12:00:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26B42849DD;
	Thu, 17 Apr 2025 09:59:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PE0KJGFUbtBf; Thu, 17 Apr 2025 09:59:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2C5A84941
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744883977;
	bh=glMFihfGC+1JyTwFt+Mu0ExdnvDPdZFZwlen3T2Owjw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YMCrVkEM2Z1JNmi1FyU1HVHqNY+5fgJv5uVrAPE7bduMe4cj4XGrQ+jfB3cEPtz7b
	 KGFxEKpNkwpEUNd4Dm6BBPNCXbBkbSbKg7kTLw4DhG3m13+nWhVqIe+a0E17bu7Aa7
	 uLhW2lYIC5BMHHo+ihOD5xDulV+J29c630fkVOS3NE8cFFHzDH5I5v32DLTwoK43dn
	 t16ptzIJhZ/RsxuDUJiWAI3hlvYvgx8szBb5GCXpMtIiL/asj2TxIznzZ+f+z0VsUk
	 f6Ok1vSxK0XuvSnt9EjXDx5P4/+3LjmHaXuWQMynH9WzVOPTfxUQyRXzOULqAsGOyF
	 gEpzWsKZjhqCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2C5A84941;
	Thu, 17 Apr 2025 09:59:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AEC6B11F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 09:59:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8FCEF6F676
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 09:59:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yV3Esou_uSSh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Apr 2025 09:59:34 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::330; helo=mail-wm1-x330.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 294AA61122
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 294AA61122
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 294AA61122
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 09:59:33 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-43d04dc73b7so5128775e9.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 02:59:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744883971; x=1745488771;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=glMFihfGC+1JyTwFt+Mu0ExdnvDPdZFZwlen3T2Owjw=;
 b=mbY7qIPaLACfJTaa8xttqnRS1wfnv5e6CHSidR3YlWLaxkL9v1mgw9LxBvLYUr0P+Z
 CQ6RWQlaqDJZ7PKpBAQyZnibOWhMFtlGeXEIYmUc60Slm1y4LFewPCkGiZJ19UvEQ9k1
 40LEviTvMcFhWmJj5rRDlZ07Kf14MyaG5xpZKxQwd7OjG4jLcXE/b7Gx5f/4b418CVYi
 IyCmWCupmRQ7NHn58gh2CjmTXS/TfvBiqoYNOtm19rXgVEz7e//3S4njmGJGILvNRfC+
 eDXpJ+/1k/CfL63fv7byhbOpthr9CcLVvVW2v9RiS7jvR6ki1NkgEcCo6FZ1JF4kH+P0
 a+tg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXTa+raKJlTqW4L4mnKSTz9RwwCAnMj93ca9cvqJn1aPIYChu3yZCmTjCltZaifJtScWA3AN9C1M6iF9E04rXM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxAU2VVVGVP++Th64lCZ5kOfTWGhiEs/qDdrTlgYYeJV/DGIPd1
 z+YVYPwDW7iXiLDjpHrF1nNrjAfMbIqpA9Q5Dgtzci7XXFxfchPv1q3hEKhLaCs=
X-Gm-Gg: ASbGncsJJ4iVse7+Sq++AyjNj1byNxC0+UeU4Xtz8kb4zv7Um9OOVnqA56Wu5Y5zeeR
 OPhuFvm8Ic7jKR1OQ9E3vuUBPgdDX8EfDDnJhE2Q8M7nOgrFTY+zghNIx0vFbzcXRtbPs3o0X4E
 BvZlPlOlUWJjVBXultED/xpBO08ilKlu0Yr7Rgnj+74yOO7Cqa9Gdg8mcG/9FiTBbDenZjEvHhA
 f9THQLBrwZpwOM07qfpu3/QcurLPRmgpehDgSr+dSFUIsK941jrfmVGlxnASH6jKRCcFZAfT0kJ
 fmXHUyS7477Pw75EB4TdKE6IpSO3gkGEFg/hUZ9rfoBOGFC5
X-Google-Smtp-Source: AGHT+IE3fUywynuHYSYOtj1852EpIi6J5HPvBsrMHhDQq7lQ8vg3DUWM86whi2+QZP/4BiiULL8bGg==
X-Received: by 2002:a05:600c:a15:b0:43c:fb95:c76f with SMTP id
 5b1f17b1804b1-4405d61ce41mr54767445e9.9.1744883971030; 
 Thu, 17 Apr 2025 02:59:31 -0700 (PDT)
Received: from jiri-mlt ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4405b4c8216sm48011265e9.7.2025.04.17.02.59.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Apr 2025 02:59:30 -0700 (PDT)
Date: Thu, 17 Apr 2025 11:59:20 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Cc: "donald.hunter@gmail.com" <donald.hunter@gmail.com>, 
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, 
 "Dumazet, Eric" <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "saeedm@nvidia.com" <saeedm@nvidia.com>, 
 "leon@kernel.org" <leon@kernel.org>, "tariqt@nvidia.com" <tariqt@nvidia.com>, 
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, 
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Olech,
 Milena" <milena.olech@intel.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>
Message-ID: <y5d6hkhdgwprncbnfmznuk5otluqz3vqi6fof6cyr4dc673cqx@5kr6ys6g53ev>
References: <20250415181543.1072342-1-arkadiusz.kubalewski@intel.com>
 <20250415181543.1072342-4-arkadiusz.kubalewski@intel.com>
 <lljouuqzmhcb2esfrxrviohrwgweee6632ntfoca5fqho736il@auarfibpahpf>
 <SJ2PR11MB84521AE1C30176E2A31C4F709BBC2@SJ2PR11MB8452.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ2PR11MB84521AE1C30176E2A31C4F709BBC2@SJ2PR11MB8452.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1744883971; x=1745488771;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=glMFihfGC+1JyTwFt+Mu0ExdnvDPdZFZwlen3T2Owjw=;
 b=sbhMkaxyLmchcp0lxBOjTk0AJtehQ6PyFAwTEIm8erUYNu0JVSREXYkMhBP1zm2vZw
 FPNrAg7DAudAbVDlznBJQq7NPfc9NZ8jlzimCU49TTg9BzRxq1Tp/LP9QP3lkAMdUSS0
 84vhAhm9kTrI/m9ylmx3U0Dg0TNVnchDNV0dyVI9ujSEDD4vqOijGhna1eIW6eqNOUhT
 aylhQ3IK3gGEijY2LAmhQXBQ7WCh4UXxg/eQQzAyK67QIQTorze+gLR1SegMKdyPYDkj
 RZrFXK2JXugRIFraXGzsABjvIy/PSG/LXQZFrCboUCnVpL9124gu/EeTa9gf6dIps51v
 bm9A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=sbhMkaxy
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

Thu, Apr 17, 2025 at 11:23:09AM +0200, arkadiusz.kubalewski@intel.com wrote:
>>From: Jiri Pirko <jiri@resnulli.us>
>>Sent: Wednesday, April 16, 2025 2:11 PM
>>
>>Tue, Apr 15, 2025 at 08:15:42PM +0200, arkadiusz.kubalewski@intel.com
>>wrote:
>>>Add new callback ops for a dpll device.
>>>- features_get(..) - to obtain currently configured features from dpll
>>>  device,
>>>- feature_set(..) - to allow dpll device features configuration.
>>>Provide features attribute and allow control over it to the users if
>>>device driver implements callbacks.
>>>
>>>Reviewed-by: Milena Olech <milena.olech@intel.com>
>>>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>>---
>>>v2:
>>>- adapt changes and align wiht new dpll_device_info struct
>>>---
>>> drivers/dpll/dpll_netlink.c | 79 ++++++++++++++++++++++++++++++++++++-
>>> include/linux/dpll.h        |  5 +++
>>> 2 files changed, 82 insertions(+), 2 deletions(-)
>>>
>>>diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
>>>index 2de9ec08d551..acfdd87fcffe 100644
>>>--- a/drivers/dpll/dpll_netlink.c
>>>+++ b/drivers/dpll/dpll_netlink.c
>>>@@ -126,6 +126,25 @@ dpll_msg_add_mode_supported(struct sk_buff *msg,
>>>struct dpll_device *dpll,
>>> 	return 0;
>>> }
>>>
>>>+static int
>>>+dpll_msg_add_features(struct sk_buff *msg, struct dpll_device *dpll,
>>>+		      struct netlink_ext_ack *extack)
>>>+{
>>>+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
>>>+	u32 features;
>>>+	int ret;
>>>+
>>>+	if (!ops->features_get)
>>>+		return 0;
>>>+	ret = ops->features_get(dpll, dpll_priv(dpll), &features, extack);
>>>+	if (ret)
>>>+		return ret;
>>>+	if (nla_put_u32(msg, DPLL_A_FEATURES, features))
>>>+		return -EMSGSIZE;
>>>+
>>>+	return 0;
>>>+}
>>>+
>>> static int
>>> dpll_msg_add_lock_status(struct sk_buff *msg, struct dpll_device *dpll,
>>> 			 struct netlink_ext_ack *extack)
>>>@@ -592,6 +611,11 @@ dpll_device_get_one(struct dpll_device *dpll, struct
>>>sk_buff *msg,
>>> 		return ret;
>>> 	if (nla_put_u32(msg, DPLL_A_TYPE, info->type))
>>> 		return -EMSGSIZE;
>>>+	if (nla_put_u32(msg, DPLL_A_CAPABILITIES, info->capabilities))
>>>+		return -EMSGSIZE;
>>>+	ret = dpll_msg_add_features(msg, dpll, extack);
>>>+	if (ret)
>>>+		return ret;
>>>
>>> 	return 0;
>>> }
>>>@@ -747,6 +771,34 @@ int dpll_pin_change_ntf(struct dpll_pin *pin)
>>> }
>>> EXPORT_SYMBOL_GPL(dpll_pin_change_ntf);
>>>
>>>+static int
>>>+dpll_features_set(struct dpll_device *dpll, struct nlattr *a,
>>>+		  struct netlink_ext_ack *extack)
>>>+{
>>>+	const struct dpll_device_info *info = dpll_device_info(dpll);
>>>+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
>>>+	u32 features = nla_get_u32(a), old_features;
>>>+	int ret;
>>>+
>>>+	if (features && !(info->capabilities & features)) {
>>>+		NL_SET_ERR_MSG_ATTR(extack, a, "dpll device not capable of this
>>>features");
>>>+		return -EOPNOTSUPP;
>>>+	}
>>>+	if (!ops->features_get || !ops->features_set) {
>>>+		NL_SET_ERR_MSG(extack, "dpll device not supporting any
>>>features");
>>>+		return -EOPNOTSUPP;
>>>+	}
>>>+	ret = ops->features_get(dpll, dpll_priv(dpll), &old_features,
>>>extack);
>>>+	if (ret) {
>>>+		NL_SET_ERR_MSG(extack, "unable to get old features value");
>>>+		return ret;
>>>+	}
>>>+	if (old_features == features)
>>>+		return -EINVAL;
>>>+
>>>+	return ops->features_set(dpll, dpll_priv(dpll), features, extack);
>>
>>So you allow to enable/disable them all in once. What if user want to
>>enable feature A and does not care about feature B that may of may not
>>be previously set?
>
>Assumed that user would always request full set.

Ugh.


>
>>How many of the features do you expect to appear in the future. I'm
>>asking because this could be just a bool attr with a separate op to the
>>driver. If we have 3, no problem. Benefit is, you may also extend it
>>easily to pass some non-bool configuration. My point is, what is the
>>benefit of features bitset here?
>>
>
>Not much, at least right now..
>Maybe one similar in nearest feature. Sure, we can go that way.
>
>But you mean uAPI part also have this enabled somehow per feature or
>leave the feature bits there?

I don't see reason for u32/bitfield32 bits here. Just have attr per
feature to enable/disable it, no problem. It will be easier to work with.


>
>Thank you!
>Arkadiusz
>
>>
>>
>>>+}
>>>+
>>> static int
>>> dpll_pin_freq_set(struct dpll_pin *pin, struct nlattr *a,
>>> 		  struct netlink_ext_ack *extack)
>>>@@ -1536,10 +1588,33 @@ int dpll_nl_device_get_doit(struct sk_buff *skb,
>>struct genl_info *info)
>>> 	return genlmsg_reply(msg, info);
>>> }
>>>
>>>+static int
>>>+dpll_set_from_nlattr(struct dpll_device *dpll, struct genl_info *info)
>>>+{
>>>+	struct nlattr *a;
>>>+	int rem, ret;
>>>+
>>>+	nla_for_each_attr(a, genlmsg_data(info->genlhdr),
>>>+			  genlmsg_len(info->genlhdr), rem) {
>>>+		switch (nla_type(a)) {
>>>+		case DPLL_A_FEATURES:
>>>+			ret = dpll_features_set(dpll, a, info->extack);
>>>+			if (ret)
>>>+				return ret;
>>>+			break;
>>>+		default:
>>>+			break;
>>>+		}
>>>+	}
>>>+
>>>+	return 0;
>>>+}
>>>+
>>> int dpll_nl_device_set_doit(struct sk_buff *skb, struct genl_info *info)
>>> {
>>>-	/* placeholder for set command */
>>>-	return 0;
>>>+	struct dpll_device *dpll = info->user_ptr[0];
>>>+
>>>+	return dpll_set_from_nlattr(dpll, info);
>>> }
>>>
>>> int dpll_nl_device_get_dumpit(struct sk_buff *skb, struct
>>>netlink_callback *cb)
>>>diff --git a/include/linux/dpll.h b/include/linux/dpll.h
>>>index 0489464af958..90c743daf64b 100644
>>>--- a/include/linux/dpll.h
>>>+++ b/include/linux/dpll.h
>>>@@ -30,6 +30,10 @@ struct dpll_device_ops {
>>> 				       void *dpll_priv,
>>> 				       unsigned long *qls,
>>> 				       struct netlink_ext_ack *extack);
>>>+	int (*features_set)(const struct dpll_device *dpll, void *dpll_priv,
>>>+			    u32 features, struct netlink_ext_ack *extack);
>>>+	int (*features_get)(const struct dpll_device *dpll, void *dpll_priv,
>>>+			    u32 *features, struct netlink_ext_ack *extack);
>>> };
>>>
>>> struct dpll_pin_ops {
>>>@@ -99,6 +103,7 @@ struct dpll_pin_ops {
>>>
>>> struct dpll_device_info {
>>> 	enum dpll_type type;
>>>+	u32 capabilities;
>>> 	const struct dpll_device_ops *ops;
>>> };
>>>
>>>--
>>>2.38.1
>>>
