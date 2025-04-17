Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 926DBA91871
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Apr 2025 11:57:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 180E86F59A;
	Thu, 17 Apr 2025 09:57:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Il-ZZCO_Rdn; Thu, 17 Apr 2025 09:57:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD8F7608AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744883835;
	bh=Qpa0GejaPGa/YgV9J5BKfK35uNrTR6xbnqfjaQWItJ8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bsiZrE/Kny1ONGXPtiIf4LGYU0IMkVIun1zouP6TolY/OyvmFThYeqZxJbO1n+1qD
	 IuWtzy4mifMuyL9r3rhqUQgZOIItwsaoldvl2Pas9UDuQUmsz2tJI78+kLE77EtIKP
	 oPLgVyyFTNyBBqdfI8M/nad9OYuba+KfRoGFWQCmlvHMkAAtYbpdvdzhGXldpKjZ3R
	 arTcDVlrJVIDqZjqG9LDAfPP5NZqDd0J/9XeW9WfB0IbDbRKlc+l3cES5mcOt/pHDR
	 O8/IJFDmymPTaRxWGjEkm92K1lCjwlGVKCurryvWPpv4daoq5HI66vfqVUSM0PsjWG
	 jOqIGypKpa5AQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD8F7608AA;
	Thu, 17 Apr 2025 09:57:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 92DFA11B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 09:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 84624412CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 09:57:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ol2ywnmuv86w for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Apr 2025 09:57:12 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::431; helo=mail-wr1-x431.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8A5A741203
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A5A741203
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8A5A741203
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 09:57:09 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id
 ffacd0b85a97d-39ee57c0b8cso570921f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 02:57:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744883828; x=1745488628;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Qpa0GejaPGa/YgV9J5BKfK35uNrTR6xbnqfjaQWItJ8=;
 b=mIxWDxzUaJOSaR5sMf86PPiEk51iNmHVyaySTxz6XsEmgGdthdJdBFsYY9+Zcpm6Zg
 TllnbQ/S/Z2kZgK3B8/XK12X9dHxm+It5BQts0fsS79vJHPTW/RNyKF415okRxoeZc26
 H9c7odaap+3XmihrE+c1yyuIQoVXGqC9oRXNnfFy7qriMCvXOW0aW7OMJk+pXukdPZA/
 t6w4bOrwz9QpHYg9TijrF6naBKKrnZthQ/muaomWy5dit8rKe34O8XiNlmuFWG/vjJHD
 SwjxeEcXzgmBh1h/zhjuxg1N+dS1flTm5z4SePVM9A3VOOreyl+ID0vU0gZDx7E0FDMQ
 5ImQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVz3oB5QQ2Fws92UHrQ9vuiRg+XxNFjLl1RQvQmf12lvvPvEneSNRR6drHJnbF/377OGmM26A0WnBLGgUv4YMY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxONkrUVxCfJw699djK+wh81WYv/jjOwDXLEZwMeRWX0Ax9SLKm
 FLgPeJukisMDNZPSVj/l4zGBjHF/y9BlJq9lNLSYkC3cn9otHeCQHpAPv+hhSa8=
X-Gm-Gg: ASbGncsOh0cM8swrZC3/LCnBGeb6NQ4YjDeXkEeFSH992D55FKuNSPeS/DSs3panxv3
 zHcSMwjo1e4oRcgjASMm3IuKwdzEKnIhl2aG6ku1MtzNrpBQtwL536Rp/X+m2a1ZBFW3ROrfpET
 VQggGXmpHOkqpmHsa+/nI/O8t7zZ9dDNW5QCCIexoVyucx1zeZyHK955iJ8eGtbJXLioBpzl1T5
 cP4M/MR2BltlRKm1vnVHXWz+oHMsCKHX55AoTJWyqGucfEDd2mWg9hdhdmfETNxiuuEgCnNS2TR
 FFDFg4WtguT8zBSTEsXQ/3jgNK49hvK5twLi7q5Wo1hx09ikw7mnrX8nH6M=
X-Google-Smtp-Source: AGHT+IHiGt3l/NvC3zreHayL8q6Ll/TbkBU6XHlIyltvZMzxuQ1tIBzUxWef/1T1KtUtmPP2UFlABQ==
X-Received: by 2002:a05:6000:2404:b0:391:3406:b4e2 with SMTP id
 ffacd0b85a97d-39ee5baf441mr4170193f8f.49.1744883827740; 
 Thu, 17 Apr 2025 02:57:07 -0700 (PDT)
Received: from jiri-mlt ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-39eae96c684sm19781607f8f.33.2025.04.17.02.57.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Apr 2025 02:57:07 -0700 (PDT)
Date: Thu, 17 Apr 2025 11:56:56 +0200
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
Message-ID: <slvow56opklcc2hwz4vzq4t7olazddmvn4lxhoveb43f6mz4p2@6vq3iz7kiuce>
References: <20250415181543.1072342-1-arkadiusz.kubalewski@intel.com>
 <20250415181543.1072342-2-arkadiusz.kubalewski@intel.com>
 <zurfm4rox22l3dnffbfloax5mu6csiycqqfoyh5nrcsd4ada6h@wmeh5ks4gli6>
 <SJ2PR11MB84526DB089614BD2972F6BA49BBC2@SJ2PR11MB8452.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ2PR11MB84526DB089614BD2972F6BA49BBC2@SJ2PR11MB8452.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1744883828; x=1745488628;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Qpa0GejaPGa/YgV9J5BKfK35uNrTR6xbnqfjaQWItJ8=;
 b=BzxojK4GvtRlLqJtlufogVY7eiZdF+Mqr/gxtjHEexVVrfEX6PNTl+U+TPwEay3RmC
 s8s7BgBTcp5RLy/VJBWsN1F073R4k4e+yRrat2Cp/NwVTaN5f2Goz9xKstwgczjacV04
 uD+7jDdgmmMWyZvhM41HT+9Gz0VByOZFt3CsBe5o/d7CMWMqT3FGmXppXdeoZ+gh+wzE
 uP1L94Yb6WcN1PGVc2M5s2AWepxt/187IZTttbiS0HCtky2nms+kU0XedWGASdCLYr1P
 djq97QyYWyqIEQiGliVx8QmAkyW1y6v7pHrXPxWHnpRssSP/meG13yItZAEORMQsk7Vm
 FtZw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=BzxojK4G
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/4] dpll: use struct
 dpll_device_info for dpll registration
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

Thu, Apr 17, 2025 at 11:33:13AM +0200, arkadiusz.kubalewski@intel.com wrote:
>>From: Jiri Pirko <jiri@resnulli.us>
>>Sent: Wednesday, April 16, 2025 2:13 PM
>>
>>Tue, Apr 15, 2025 at 08:15:40PM +0200, arkadiusz.kubalewski@intel.com
>>wrote:
>>>Instead of passing list of properties as arguments to
>>>dpll_device_register(..) use a dedicated struct.
>>>
>>>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>>---
>>>v2:
>>>- new commit
>>>---
>>> drivers/dpll/dpll_core.c                      | 34 ++++++++++++-------
>>> drivers/dpll/dpll_core.h                      |  2 +-
>>> drivers/dpll/dpll_netlink.c                   |  7 ++--
>>> drivers/net/ethernet/intel/ice/ice_dpll.c     | 16 +++++----
>>> drivers/net/ethernet/intel/ice/ice_dpll.h     |  1 +
>>> .../net/ethernet/mellanox/mlx5/core/dpll.c    | 10 +++---
>>> drivers/ptp/ptp_ocp.c                         |  7 ++--
>>> include/linux/dpll.h                          | 11 ++++--
>>> 8 files changed, 57 insertions(+), 31 deletions(-)
>>>
>>>diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
>>>index 20bdc52f63a5..af9cda45a89c 100644
>>>--- a/drivers/dpll/dpll_core.c
>>>+++ b/drivers/dpll/dpll_core.c
>>>@@ -34,7 +34,7 @@ static u32 dpll_pin_xa_id;
>>>
>>> struct dpll_device_registration {
>>> 	struct list_head list;
>>>-	const struct dpll_device_ops *ops;
>>>+	const struct dpll_device_info *info;
>>> 	void *priv;
>>> };
>>>
>>>@@ -327,12 +327,12 @@ EXPORT_SYMBOL_GPL(dpll_device_put);
>>>
>>> static struct dpll_device_registration *
>>> dpll_device_registration_find(struct dpll_device *dpll,
>>>-			      const struct dpll_device_ops *ops, void *priv)
>>>+			      const struct dpll_device_info *info, void *priv)
>>> {
>>> 	struct dpll_device_registration *reg;
>>>
>>> 	list_for_each_entry(reg, &dpll->registration_list, list) {
>>>-		if (reg->ops == ops && reg->priv == priv)
>>>+		if (reg->info == info && reg->priv == priv)
>>> 			return reg;
>>> 	}
>>> 	return NULL;
>>>@@ -341,8 +341,7 @@ dpll_device_registration_find(struct dpll_device
>>>*dpll,
>>> /**
>>>  * dpll_device_register - register the dpll device in the subsystem
>>>  * @dpll: pointer to a dpll
>>>- * @type: type of a dpll
>>>- * @ops: ops for a dpll device
>>>+ * @info: dpll device information and operations from registerer
>>>  * @priv: pointer to private information of owner
>>>  *
>>>  * Make dpll device available for user space.
>>>@@ -352,11 +351,13 @@ dpll_device_registration_find(struct dpll_device
>>>*dpll,
>>>  * * 0 on success
>>>  * * negative - error value
>>>  */
>>>-int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
>>>-			 const struct dpll_device_ops *ops, void *priv)
>>>+int dpll_device_register(struct dpll_device *dpll,
>>>+			 const struct dpll_device_info *info, void *priv)
>>
>>I don't like this. If you need some capabilities value, put it into ops
>>struct.
>>
>
>Hmm, this would seems strange, the _ops indicates operations, would
>have to rename the struct..

I don't think so. Happens all the time in kernel for ops to contain
other things.


>
>In theory I could decide on capabilities per ops provided from driver..
>i.e. If phase_input_monitor_feature_set()/phase_input_feature_get() are
>present then capability phase_input_monitor is provided..
>Makes sense?

Yes, that is more or less what I suggested in reply to the other patch
in this set.


>
>>
>>> {
>>>+	const struct dpll_device_ops *ops = info->ops;
>>> 	struct dpll_device_registration *reg;
>>> 	bool first_registration = false;
>>>+	enum dpll_type type = info->type;
>>>
>>> 	if (WARN_ON(!ops))
>>> 		return -EINVAL;
>>>@@ -368,7 +369,7 @@ int dpll_device_register(struct dpll_device *dpll,
>>>enum dpll_type type,
>>> 		return -EINVAL;
>>>
>>> 	mutex_lock(&dpll_lock);
>>>-	reg = dpll_device_registration_find(dpll, ops, priv);
>>>+	reg = dpll_device_registration_find(dpll, info, priv);
>>> 	if (reg) {
>>> 		mutex_unlock(&dpll_lock);
>>> 		return -EEXIST;
>>>@@ -379,9 +380,8 @@ int dpll_device_register(struct dpll_device *dpll,
>>>enum dpll_type type,
>>> 		mutex_unlock(&dpll_lock);
>>> 		return -ENOMEM;
>>> 	}
>>>-	reg->ops = ops;
>>>+	reg->info = info;
>>> 	reg->priv = priv;
>>>-	dpll->type = type;
>>> 	first_registration = list_empty(&dpll->registration_list);
>>> 	list_add_tail(&reg->list, &dpll->registration_list);
>>> 	if (!first_registration) {
>>>@@ -408,14 +408,14 @@ EXPORT_SYMBOL_GPL(dpll_device_register);
>>>  * Context: Acquires a lock (dpll_lock)
>>>  */
>>> void dpll_device_unregister(struct dpll_device *dpll,
>>>-			    const struct dpll_device_ops *ops, void *priv)
>>>+			    const struct dpll_device_info *info, void *priv)
>>> {
>>> 	struct dpll_device_registration *reg;
>>>
>>> 	mutex_lock(&dpll_lock);
>>> 	ASSERT_DPLL_REGISTERED(dpll);
>>> 	dpll_device_delete_ntf(dpll);
>>>-	reg = dpll_device_registration_find(dpll, ops, priv);
>>>+	reg = dpll_device_registration_find(dpll, info, priv);
>>> 	if (WARN_ON(!reg)) {
>>> 		mutex_unlock(&dpll_lock);
>>> 		return;
>>>@@ -807,7 +807,15 @@ const struct dpll_device_ops *dpll_device_ops(struct
>>>dpll_device *dpll)
>>> 	struct dpll_device_registration *reg;
>>>
>>> 	reg = dpll_device_registration_first(dpll);
>>>-	return reg->ops;
>>>+	return reg->info->ops;
>>>+}
>>>+
>>>+const struct dpll_device_info *dpll_device_info(struct dpll_device *dpll)
>>
>>Makes me wonder what you would need this for. I guess "nothing"?
>>
>
>Now using it to get info struct from dpll.. if struct is removed then yeah.
>
>Thank you!
>Arkadiusz
>
>>
>>>+{
>>>+	struct dpll_device_registration *reg;
>>>+
>>>+	reg = dpll_device_registration_first(dpll);
>>>+	return reg->info;
>>> }
>>>
>>> static struct dpll_pin_registration *
>>>diff --git a/drivers/dpll/dpll_core.h b/drivers/dpll/dpll_core.h
>>>index 2b6d8ef1cdf3..baeb10d7dc1e 100644
>>>--- a/drivers/dpll/dpll_core.h
>>>+++ b/drivers/dpll/dpll_core.h
>>>@@ -30,7 +30,6 @@ struct dpll_device {
>>> 	u32 device_idx;
>>> 	u64 clock_id;
>>> 	struct module *module;
>>>-	enum dpll_type type;
>>> 	struct xarray pin_refs;
>>> 	refcount_t refcount;
>>> 	struct list_head registration_list;
>>>@@ -84,6 +83,7 @@ void *dpll_pin_on_pin_priv(struct dpll_pin *parent,
>>>struct dpll_pin *pin);
>>> const struct dpll_device_ops *dpll_device_ops(struct dpll_device *dpll);
>>> struct dpll_device *dpll_device_get_by_id(int id);
>>> const struct dpll_pin_ops *dpll_pin_ops(struct dpll_pin_ref *ref);
>>>+const struct dpll_device_info *dpll_device_info(struct dpll_device
>>>*dpll);
>>> struct dpll_pin_ref *dpll_xa_ref_dpll_first(struct xarray *xa_refs);
>>> extern struct xarray dpll_device_xa;
>>> extern struct xarray dpll_pin_xa;
>>>diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
>>>index c130f87147fa..2de9ec08d551 100644
>>>--- a/drivers/dpll/dpll_netlink.c
>>>+++ b/drivers/dpll/dpll_netlink.c
>>>@@ -564,6 +564,7 @@ static int
>>> dpll_device_get_one(struct dpll_device *dpll, struct sk_buff *msg,
>>> 		    struct netlink_ext_ack *extack)
>>> {
>>>+	const struct dpll_device_info *info = dpll_device_info(dpll);
>>> 	int ret;
>>>
>>> 	ret = dpll_msg_add_dev_handle(msg, dpll);
>>>@@ -589,7 +590,7 @@ dpll_device_get_one(struct dpll_device *dpll, struct
>>>sk_buff *msg,
>>> 	ret = dpll_msg_add_mode_supported(msg, dpll, extack);
>>> 	if (ret)
>>> 		return ret;
>>>-	if (nla_put_u32(msg, DPLL_A_TYPE, dpll->type))
>>>+	if (nla_put_u32(msg, DPLL_A_TYPE, info->type))
>>> 		return -EMSGSIZE;
>>>
>>> 	return 0;
>>>@@ -1415,11 +1416,13 @@ dpll_device_find(u64 clock_id, struct nlattr
>>>*mod_name_attr,
>>> 	unsigned long i;
>>>
>>> 	xa_for_each_marked(&dpll_device_xa, i, dpll, DPLL_REGISTERED) {
>>>+		const struct dpll_device_info *info = dpll_device_info(dpll);
>>>+
>>> 		cid_match = clock_id ? dpll->clock_id == clock_id : true;
>>> 		mod_match = mod_name_attr ? (module_name(dpll->module) ?
>>> 			!nla_strcmp(mod_name_attr,
>>> 				    module_name(dpll->module)) : false) : true;
>>>-		type_match = type ? dpll->type == type : true;
>>>+		type_match = type ? info->type == type : true;
>>> 		if (cid_match && mod_match && type_match) {
>>> 			if (dpll_match) {
>>> 				NL_SET_ERR_MSG(extack, "multiple matches");
>>>diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
>>>b/drivers/net/ethernet/intel/ice/ice_dpll.c
>>>index bce3ad6ca2a6..0f7440a889ac 100644
>>>--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
>>>+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
>>>@@ -1977,7 +1977,7 @@ static void
>>> ice_dpll_deinit_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu)
>>> {
>>> 	if (cgu)
>>>-		dpll_device_unregister(d->dpll, &ice_dpll_ops, d);
>>>+		dpll_device_unregister(d->dpll, &d->info, d);
>>> 	dpll_device_put(d->dpll);
>>> }
>>>
>>>@@ -1996,8 +1996,7 @@ ice_dpll_deinit_dpll(struct ice_pf *pf, struct
>>>ice_dpll *d, bool cgu)
>>>  * * negative - initialization failure reason
>>>  */
>>> static int
>>>-ice_dpll_init_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu,
>>>-		   enum dpll_type type)
>>>+ice_dpll_init_dpll(struct ice_pf *pf, struct ice_dpll *d, bool cgu)
>>> {
>>> 	u64 clock_id = pf->dplls.clock_id;
>>> 	int ret;
>>>@@ -2012,7 +2011,7 @@ ice_dpll_init_dpll(struct ice_pf *pf, struct
>>>ice_dpll *d, bool cgu,
>>> 	d->pf = pf;
>>> 	if (cgu) {
>>> 		ice_dpll_update_state(pf, d, true);
>>>-		ret = dpll_device_register(d->dpll, type, &ice_dpll_ops, d);
>>>+		ret = dpll_device_register(d->dpll, &d->info, d);
>>> 		if (ret) {
>>> 			dpll_device_put(d->dpll);
>>> 			return ret;
>>>@@ -2363,7 +2362,12 @@ static int ice_dpll_init_info(struct ice_pf *pf,
>>>bool cgu)
>>> 	if (ret)
>>> 		return ret;
>>> 	de->mode = DPLL_MODE_AUTOMATIC;
>>>+	de->info.type = DPLL_TYPE_EEC;
>>>+	de->info.ops = &ice_dpll_ops;
>>>+
>>> 	dp->mode = DPLL_MODE_AUTOMATIC;
>>>+	dp->info.type = DPLL_TYPE_PPS;
>>>+	dp->info.ops = &ice_dpll_ops;
>>>
>>> 	dev_dbg(ice_pf_to_dev(pf),
>>> 		"%s - success, inputs:%u, outputs:%u rclk-parents:%u\n",
>>>@@ -2426,10 +2430,10 @@ void ice_dpll_init(struct ice_pf *pf)
>>> 	err = ice_dpll_init_info(pf, cgu);
>>> 	if (err)
>>> 		goto err_exit;
>>>-	err = ice_dpll_init_dpll(pf, &pf->dplls.eec, cgu, DPLL_TYPE_EEC);
>>>+	err = ice_dpll_init_dpll(pf, &pf->dplls.eec, cgu);
>>> 	if (err)
>>> 		goto deinit_info;
>>>-	err = ice_dpll_init_dpll(pf, &pf->dplls.pps, cgu, DPLL_TYPE_PPS);
>>>+	err = ice_dpll_init_dpll(pf, &pf->dplls.pps, cgu);
>>> 	if (err)
>>> 		goto deinit_eec;
>>> 	err = ice_dpll_init_pins(pf, cgu);
>>>diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h
>>>b/drivers/net/ethernet/intel/ice/ice_dpll.h
>>>index c320f1bf7d6d..9db7463e293a 100644
>>>--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
>>>+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
>>>@@ -66,6 +66,7 @@ struct ice_dpll {
>>> 	enum dpll_mode mode;
>>> 	struct dpll_pin *active_input;
>>> 	struct dpll_pin *prev_input;
>>>+	struct dpll_device_info info;
>>> };
>>>
>>> /** ice_dplls - store info required for CCU (clock controlling unit)
>>>diff --git a/drivers/net/ethernet/mellanox/mlx5/core/dpll.c
>>>b/drivers/net/ethernet/mellanox/mlx5/core/dpll.c
>>>index 1e5522a19483..f722b1de0754 100644
>>>--- a/drivers/net/ethernet/mellanox/mlx5/core/dpll.c
>>>+++ b/drivers/net/ethernet/mellanox/mlx5/core/dpll.c
>>>@@ -20,6 +20,7 @@ struct mlx5_dpll {
>>> 	} last;
>>> 	struct notifier_block mdev_nb;
>>> 	struct net_device *tracking_netdev;
>>>+	struct dpll_device_info info;
>>> };
>>>
>>> static int mlx5_dpll_clock_id_get(struct mlx5_core_dev *mdev, u64
>>>*clock_id)
>>>@@ -444,8 +445,9 @@ static int mlx5_dpll_probe(struct auxiliary_device
>>>*adev,
>>> 		goto err_free_mdpll;
>>> 	}
>>>
>>>-	err = dpll_device_register(mdpll->dpll, DPLL_TYPE_EEC,
>>>-				   &mlx5_dpll_device_ops, mdpll);
>>>+	mdpll->info.type = DPLL_TYPE_EEC;
>>>+	mdpll->info.ops = &mlx5_dpll_device_ops;
>>>+	err = dpll_device_register(mdpll->dpll, &mdpll->info, mdpll);
>>> 	if (err)
>>> 		goto err_put_dpll_device;
>>>
>>>@@ -481,7 +483,7 @@ static int mlx5_dpll_probe(struct auxiliary_device
>>>*adev,
>>> err_put_dpll_pin:
>>> 	dpll_pin_put(mdpll->dpll_pin);
>>> err_unregister_dpll_device:
>>>-	dpll_device_unregister(mdpll->dpll, &mlx5_dpll_device_ops, mdpll);
>>>+	dpll_device_unregister(mdpll->dpll, &mdpll->info, mdpll);
>>> err_put_dpll_device:
>>> 	dpll_device_put(mdpll->dpll);
>>> err_free_mdpll:
>>>@@ -500,7 +502,7 @@ static void mlx5_dpll_remove(struct auxiliary_device
>>>*adev)
>>> 	dpll_pin_unregister(mdpll->dpll, mdpll->dpll_pin,
>>> 			    &mlx5_dpll_pins_ops, mdpll);
>>> 	dpll_pin_put(mdpll->dpll_pin);
>>>-	dpll_device_unregister(mdpll->dpll, &mlx5_dpll_device_ops, mdpll);
>>>+	dpll_device_unregister(mdpll->dpll, &mdpll->info, mdpll);
>>> 	dpll_device_put(mdpll->dpll);
>>> 	kfree(mdpll);
>>>
>>>diff --git a/drivers/ptp/ptp_ocp.c b/drivers/ptp/ptp_ocp.c
>>>index 7945c6be1f7c..b3c5d294acb4 100644
>>>--- a/drivers/ptp/ptp_ocp.c
>>>+++ b/drivers/ptp/ptp_ocp.c
>>>@@ -382,6 +382,7 @@ struct ptp_ocp {
>>> 	struct ptp_ocp_sma_connector sma[OCP_SMA_NUM];
>>> 	const struct ocp_sma_op *sma_op;
>>> 	struct dpll_device *dpll;
>>>+	struct dpll_device_info	dpll_info;
>>> };
>>>
>>> #define OCP_REQ_TIMESTAMP	BIT(0)
>>>@@ -4745,7 +4746,9 @@ ptp_ocp_probe(struct pci_dev *pdev, const struct
>>>pci_device_id *id)
>>> 		goto out;
>>> 	}
>>>
>>>-	err = dpll_device_register(bp->dpll, DPLL_TYPE_PPS, &dpll_ops, bp);
>>>+	bp->dpll_info.type = DPLL_TYPE_PPS;
>>>+	bp->dpll_info.ops = &dpll_ops;
>>>+	err = dpll_device_register(bp->dpll, &bp->dpll_info, bp);
>>> 	if (err)
>>> 		goto out;
>>>
>>>@@ -4796,7 +4799,7 @@ ptp_ocp_remove(struct pci_dev *pdev)
>>> 			dpll_pin_put(bp->sma[i].dpll_pin);
>>> 		}
>>> 	}
>>>-	dpll_device_unregister(bp->dpll, &dpll_ops, bp);
>>>+	dpll_device_unregister(bp->dpll, &bp->dpll_info, bp);
>>> 	dpll_device_put(bp->dpll);
>>> 	devlink_unregister(devlink);
>>> 	ptp_ocp_detach(bp);
>>>diff --git a/include/linux/dpll.h b/include/linux/dpll.h
>>>index 5e4f9ab1cf75..0489464af958 100644
>>>--- a/include/linux/dpll.h
>>>+++ b/include/linux/dpll.h
>>>@@ -97,6 +97,11 @@ struct dpll_pin_ops {
>>> 			 struct netlink_ext_ack *extack);
>>> };
>>>
>>>+struct dpll_device_info {
>>>+	enum dpll_type type;
>>>+	const struct dpll_device_ops *ops;
>>>+};
>>>+
>>> struct dpll_pin_frequency {
>>> 	u64 min;
>>> 	u64 max;
>>>@@ -170,11 +175,11 @@ dpll_device_get(u64 clock_id, u32 dev_driver_id,
>>>struct module *module);
>>>
>>> void dpll_device_put(struct dpll_device *dpll);
>>>
>>>-int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
>>>-			 const struct dpll_device_ops *ops, void *priv);
>>>+int dpll_device_register(struct dpll_device *dpll,
>>>+			 const struct dpll_device_info *info, void *priv);
>>>
>>> void dpll_device_unregister(struct dpll_device *dpll,
>>>-			    const struct dpll_device_ops *ops, void *priv);
>>>+			    const struct dpll_device_info *info, void *priv);
>>>
>>> struct dpll_pin *
>>> dpll_pin_get(u64 clock_id, u32 dev_driver_id, struct module *module,
>>>--
>>>2.38.1
>>>
