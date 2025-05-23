Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9CCAC2278
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 May 2025 14:16:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E04D681225;
	Fri, 23 May 2025 12:16:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E5KYEgX23xeK; Fri, 23 May 2025 12:16:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF562810AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748002584;
	bh=UVs+40bTDiF7EnRvr0lzQVjEjCbory2b3GEFHaMHFi0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8WtRK1N3nLKdBJ7lT4+2aTgr2HfnBUE5ZQkl/9VKVn3V5fbeWv2OPncQDEu4rNljR
	 sfzEvjtq7vvpNIUAUuYg9SSD+VAPOWval6emRRZRLbDaKZcLu/J6dQvCo5r+brPT/+
	 jxG3SkYlloe0OGn+DsJoa4WGvXFyRxJQeYb5W1aZ4Gmg4W53t42CuOWBaExp9FUEIn
	 dM4WDwQKKJb3TF+FJgLBy82YMYHF1x03gAyZsTED4jKedIEc/hbjWqOGuZIOSVovjI
	 dIYGR78qfaIANFctA1bb4FOc45q5QLjxFn1P6vuXTO4ExsQ+TorvSGG9ANEyjLQTTd
	 KgLKL0pIHC+sg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF562810AC;
	Fri, 23 May 2025 12:16:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D397CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 12:16:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7F73741F34
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 12:16:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U1r59Mjv5YuX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 May 2025 12:16:21 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42c; helo=mail-wr1-x42c.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E8E4241F2E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8E4241F2E
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E8E4241F2E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 12:16:20 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id
 ffacd0b85a97d-3a35c894313so6235741f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 05:16:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748002579; x=1748607379;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UVs+40bTDiF7EnRvr0lzQVjEjCbory2b3GEFHaMHFi0=;
 b=ciphFJQo6RocgDTSfHi3PdP+Ox8dbi+vosGoj6cV8aKKcrj6lYC8fb+OU2QMzxe4ZN
 Jf61Ou2ZTKbERbGJSWO4j6lbUSSSeV0rzuhSxWnQTW6hgFfx/M+AP7/1E0XIeYkQSIUm
 EsF3qaKwN3LTaSnEem4IVlC+fxqJjAbGKGozFYv68YuF004r1CZUdZLTlWf+AARWEZZd
 Eh+DAA2L8tI5R+KuHSrKx3U9g0sLRi4B6JYtUjBrnG3pRefK+t0OGeuF1Jgn3GXpNAo9
 Wr2MJRidne+3cFbr7AmvfgevvSDv5NT+dgMxANpXcb9J/Vxl1+nwnEbXCxPnO3ZeXkUD
 hmgA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWOkfEc+RkeZXUQUNWRWz1u/l0DMDLF8vxh8ZqtIH1wAZBsFyQKDeBD0KBq69Hnnm5olSNikIRhITUgz9dJJ3s=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzRb36006k7dWG8qGx1t0OzmYVWDBPm7dZO83WnCHVRrjFYVQv0
 toyigbS++XICHYvtSBnPdYHI28L8hwD/nxZkWv5m0+ewSWhIhdcp/fNi6OPpVFj8kig=
X-Gm-Gg: ASbGnctTdSmhU170iEZpAqXAdLI8XgD2XnwgwgLdkTXlMWoVQLnZtjcKfUbT1xcJdA8
 q7vb8g+zgUTdbMFjshbMEVoZmXSugEIJlt564BdTxXgZeHNaeLr2+0dGF3+3zDH2wSei9SxFyir
 7ul+PorN1ifL78KGH0KHhQjnylTiXG916rxYKO348CtDwbYkY0epdxBm5JDm5m/rRqUNPzKyYOs
 Yu82bmsNYk8T3AYzil6kFb/QdDynWVO/h/5gpdFBN/xXNx3dpmGAyQflp7bNUyeXnPh7+g4/LCC
 OwQ25YkCq9NiPihBlaOOL5EhEwWPUC8Bj4/+8Xv1DQV9nOtwkL05udaM8mhLJ/W0A2eHVTqTSBj
 bhNQ=
X-Google-Smtp-Source: AGHT+IFHQ5u5SVMHD2atXwAihGnBWqM0BV44tFIPABcerUSfvuw7HC46EhyErks5GY3aIXUfMPmPcQ==
X-Received: by 2002:a05:6000:2f87:b0:3a3:62c6:d2cd with SMTP id
 ffacd0b85a97d-3a4c20fe8f6mr3242914f8f.14.1748002578824; 
 Fri, 23 May 2025 05:16:18 -0700 (PDT)
Received: from jiri-mlt (37-48-1-197.nat.epc.tmcz.cz. [37.48.1.197])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a35ca5a04csm26001714f8f.23.2025.05.23.05.16.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 May 2025 05:16:18 -0700 (PDT)
Date: Fri, 23 May 2025 14:16:15 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Cc: "donald.hunter@gmail.com" <donald.hunter@gmail.com>, 
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, 
 "edumazet@google.com" <edumazet@google.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, 
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
Message-ID: <35nkufpaaljicqt22ta4ysj3zvursnnu5efpjzf7fdih4y5otx@q2o5puhnd3pa>
References: <20250508122128.1216231-1-arkadiusz.kubalewski@intel.com>
 <20250508122128.1216231-3-arkadiusz.kubalewski@intel.com>
 <rwterkiyhdjcedboj773zc5s3d6purz6yaccfowco7m5zd7q3c@or4r33ay2dxh>
 <SJ2PR11MB8452820F6BDF445F29D368C99B8BA@SJ2PR11MB8452.namprd11.prod.outlook.com>
 <we7ev4qegycbn6vp2epoeq45kulkpurdh2dga7zgmx6xq5hy2e@nkjmo3njtwo7>
 <SA1PR11MB84468A82953226F3C16D9CCB9B98A@SA1PR11MB8446.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SA1PR11MB84468A82953226F3C16D9CCB9B98A@SA1PR11MB8446.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1748002579; x=1748607379;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=UVs+40bTDiF7EnRvr0lzQVjEjCbory2b3GEFHaMHFi0=;
 b=d84C2ae//DDfur92eK0vlKRc9mVbHlUAMtaNltSiUJRJXk+AA5GHPdhY7hRev1GvkH
 4vYu5ZrYColwf/Zp1TP/KayxkLiTknZ1ECIhbVvgLeEyfn+EkB9nZAnHz+D2TuzJCAuP
 LMWY9PSNN+eBGgh23wczelawMgLL6NuR5k9OICEI0P5aYEBAAlfxvBFB3Ecu5CbaokJ+
 bpUfAvKMPwQDOYSBDCad6Hvgl/Zr88cR3zvoFB8KXcPn9vSR4bnBirjmbiaHu2vZYlOn
 keCBgqYwCaxx5ZbyFOAIY9w6v4FgsN7pWy9VAe82EnRTw05Zy8NDS0OMbCB16Rjvxjxi
 NV5Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=d84C2ae/
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

Fri, May 23, 2025 at 09:45:29AM +0200, arkadiusz.kubalewski@intel.com wrote:
>>From: Jiri Pirko <jiri@resnulli.us>
>>Sent: Friday, May 9, 2025 8:15 AM
>>
>>Thu, May 08, 2025 at 05:20:24PM +0200, arkadiusz.kubalewski@intel.com
>>wrote:
>>>>From: Jiri Pirko <jiri@resnulli.us>
>>>>Sent: Thursday, May 8, 2025 4:31 PM
>>>>
>>>>Thu, May 08, 2025 at 02:21:27PM +0200, arkadiusz.kubalewski@intel.com
>>>>wrote:
>>>>>Add new callback operations for a dpll device:
>>>>>- phase_offset_monitor_get(..) - to obtain current state of phase offset
>>>>>  monitor feature from dpll device,
>>>>>- phase_offset_monitor_set(..) - to allow feature configuration.
>>>>>
>>>>>Obtain the feature state value using the get callback and provide it to
>>>>>the user if the device driver implements callbacks.
>>>>>
>>>>>Execute the set callback upon user requests.
>>>>>
>>>>>Reviewed-by: Milena Olech <milena.olech@intel.com>
>>>>>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>>>>---
>>>>>v3:
>>>>>- remove feature flags and capabilities,
>>>>>- add separated (per feature) callback ops,
>>>>>- use callback ops to determine feature availability.
>>>>>---
>>>>> drivers/dpll/dpll_netlink.c | 76 ++++++++++++++++++++++++++++++++++++-
>>>>> include/linux/dpll.h        |  8 ++++
>>>>> 2 files changed, 82 insertions(+), 2 deletions(-)
>>>>>
>>>>>diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
>>>>>index c130f87147fa..6d2980455a46 100644
>>>>>--- a/drivers/dpll/dpll_netlink.c
>>>>>+++ b/drivers/dpll/dpll_netlink.c
>>>>>@@ -126,6 +126,26 @@ dpll_msg_add_mode_supported(struct sk_buff *msg,
>>>>>struct dpll_device *dpll,
>>>>> 	return 0;
>>>>> }
>>>>>
>>>>>+static int
>>>>>+dpll_msg_add_phase_offset_monitor(struct sk_buff *msg, struct
>>>>>dpll_device
>>>>>*dpll,
>>>>>+				  struct netlink_ext_ack *extack)
>>>>>+{
>>>>>+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
>>>>>+	enum dpll_feature_state state;
>>>>>+	int ret;
>>>>>+
>>>>>+	if (ops->phase_offset_monitor_set && ops->phase_offset_monitor_get) {
>>>>>+		ret = ops->phase_offset_monitor_get(dpll, dpll_priv(dpll),
>>>>>+						    &state, extack);
>>>>>+		if (ret)
>>>>>+			return -EINVAL;
>>>>
>>>>Why you don't propagate "ret"?
>>>>
>>>
>>>My bad, will fix that.
>>>
>>>>
>>>>>+		if (nla_put_u32(msg, DPLL_A_PHASE_OFFSET_MONITOR, state))
>>>>>+			return -EMSGSIZE;
>>>>>+	}
>>>>>+
>>>>>+	return 0;
>>>>>+}
>>>>>+
>>>>> static int
>>>>> dpll_msg_add_lock_status(struct sk_buff *msg, struct dpll_device *dpll,
>>>>> 			 struct netlink_ext_ack *extack)
>>>>>@@ -591,6 +611,9 @@ dpll_device_get_one(struct dpll_device *dpll, struct
>>>>>sk_buff *msg,
>>>>> 		return ret;
>>>>> 	if (nla_put_u32(msg, DPLL_A_TYPE, dpll->type))
>>>>> 		return -EMSGSIZE;
>>>>>+	ret = dpll_msg_add_phase_offset_monitor(msg, dpll, extack);
>>>>>+	if (ret)
>>>>>+		return ret;
>>>>>
>>>>> 	return 0;
>>>>> }
>>>>>@@ -746,6 +769,31 @@ int dpll_pin_change_ntf(struct dpll_pin *pin)
>>>>> }
>>>>> EXPORT_SYMBOL_GPL(dpll_pin_change_ntf);
>>>>>
>>>>>+static int
>>>>>+dpll_phase_offset_monitor_set(struct dpll_device *dpll, struct nlattr
>>>>>*a,
>>>>>+			      struct netlink_ext_ack *extack)
>>>>>+{
>>>>>+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
>>>>>+	enum dpll_feature_state state = nla_get_u32(a), old_state;
>>>>>+	int ret;
>>>>>+
>>>>>+	if (!(ops->phase_offset_monitor_set && ops-
>>>>>phase_offset_monitor_get)) {
>>>>>+		NL_SET_ERR_MSG_ATTR(extack, a, "dpll device not capable of
>>>>>phase offset monitor");
>>>>>+		return -EOPNOTSUPP;
>>>>>+	}
>>>>>+	ret = ops->phase_offset_monitor_get(dpll, dpll_priv(dpll),
>>>>>&old_state,
>>>>>+					    extack);
>>>>>+	if (ret) {
>>>>>+		NL_SET_ERR_MSG(extack, "unable to get current state of phase
>>>>>offset monitor");
>>>>>+		return -EINVAL;
>>
>>Propagate ret.
>>
>
>Sure, will do.
>
>>
>>>>>+	}
>>>>>+	if (state == old_state)
>>>>>+		return 0;
>>>>>+
>>>>>+	return ops->phase_offset_monitor_set(dpll, dpll_priv(dpll), state,
>>>>>+					     extack);
>>>>
>>>>Why you need to do this get/set dance? I mean, just call the driver
>>>>set() op and let it do what is needed there, no?
>>>>
>>>
>>>We did it this way from the beginning (during various pin-set related
>>>flows).
>>
>>Hmm, idk if it is absolutelly necessary to stick with this pattern all
>>the time. I mean, what's the benefit here? I don't see any.
>>
>
>Driver implementing callback could do that, or can be done here. Here is
>earlier/better, right?
>
>Why would we remove this pattern for one flow, and use different for
>other flows? Doesn't make much sense to me, we could change for all to
>make it consistent.

Fair.

>
>>
>>>
>>>>
>>>>>+}
>>>>>+
>>>>> static int
>>>>> dpll_pin_freq_set(struct dpll_pin *pin, struct nlattr *a,
>>>>> 		  struct netlink_ext_ack *extack)
>>>>>@@ -1533,10 +1581,34 @@ int dpll_nl_device_get_doit(struct sk_buff *skb,
>>>>>struct genl_info *info)
>>>>> 	return genlmsg_reply(msg, info);
>>>>> }
>>>>>
>>>>>+static int
>>>>>+dpll_set_from_nlattr(struct dpll_device *dpll, struct genl_info *info)
>>>>>+{
>>>>>+	struct nlattr *a;
>>>>>+	int rem, ret;
>>>>>+
>>>>>+	nla_for_each_attr(a, genlmsg_data(info->genlhdr),
>>>>>+			  genlmsg_len(info->genlhdr), rem) {
>>>>
>>>>Hmm, why you iterate? Why you just don't parse to attr array, as it is
>>>>usually done?
>>>>
>>>
>>>Hmm, AFAIR there are issues when you parse nested stuff with the array
>>>approach, here nothing is nested, but we already have the same approach on
>>>parsing pin related stuff (dpll_pin_set_from_nlattr(..)), just did the
>>>same
>>>here.
>>
>>The only reason to iterate over attrs is then you have multiattr. Is
>>ever attr is there only once, no need for iteration.
>>
>
>Ok, will do.
>
>Thank you!
>Arkadiusz
>
>[...]
