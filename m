Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2B9AB0A5A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 08:15:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 058D661134;
	Fri,  9 May 2025 06:15:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GF6yuWAf44R0; Fri,  9 May 2025 06:15:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16FF161147
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746771320;
	bh=9ayrOtjvDhxlG7NNzEFdSAtZUMUsCsoAzJrwzEXbZsU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=r38FQFh4kcF8BxpCEmxTA3oORsgv5/h8IgMQJyAw/jwArn4LwgZoV/LJQ25+AJn4X
	 V5krY3KERIQAWBsARlxjt6abvf2RPadzQbNWM2VEB0/V7kFjeK1GTr5/3PsZvByJJz
	 oeGYLC+nK4LvL8RxZsWHTj62wUlKzP4VGdClpbc3ivbuQv6FNZNEQJApUvuxT6Jujh
	 3v8PjaO1T7CB3a/9EOJN+08yQVIIwdiW0hN5siSVAGiAVhd6ZpMN0a4EUVeLIoUz8C
	 rZbfki+6rFuQTMm604z/2J+0AArJpdUYl0qEhhyicn3DHZ9z8Aahg59k3HM3WfgAUK
	 GgIVDujpIpS8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16FF161147;
	Fri,  9 May 2025 06:15:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 30CA115A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 06:15:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 15F3E60B4C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 06:15:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d6hubCtpBny4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 May 2025 06:15:17 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::535; helo=mail-ed1-x535.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0115D605E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0115D605E9
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0115D605E9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 06:15:16 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id
 4fb4d7f45d1cf-5fab81d6677so3290661a12.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 May 2025 23:15:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746771315; x=1747376115;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9ayrOtjvDhxlG7NNzEFdSAtZUMUsCsoAzJrwzEXbZsU=;
 b=PBBlOcTlYWSLRLMsjDikg3YUoAIeZYsINAueVaORNe3ZzKXbi8axpJIjfg/f/JJaYw
 cQhTFAjGW66FIfIrJeg0BMRzeww2ji3oPECWXBN5y/Tq9N+gwMUvquF/neQmCGU36uc3
 UiDr+Tecf9z0UtFvPUB/2EwtmEHGh90SUv+CbxUfgIRFPhxpu3AEhFtVu2oPrjXoB/yT
 yCozL7AU5Df/X8d25xIU83B5tgGexWNy9rLv3d+jyFaJ2IrpmNwCnEp0NSKgdxaikRoU
 knnee/BrZp0EbhNsihynmmUvBgXTgspc0g3RMYufBixDiv0qsW98Y3VGOgfquWc2CeUP
 cLqA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWudXQFAoTCk22FTkBB5/3A5bJFXyjWLTkWo4GmsTvzJjJayl8axm3sRxjimRh7OHGredoZk/SGHlVEm1rfFwU=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw1d37dALD75KOGi3Opa9boGlpr2qzghU7hxVlTrQ4X3+BLioXd
 cosUvQ01Iiv7zBfGh32Wng0+G3Gezq+kIDeBqMcqhTPIWu15MCiLbBKTymXbxhI=
X-Gm-Gg: ASbGncvBDf6+c4nalEpNIEXLsJ5HSXiwsCKk05D6E6FQRcFTrPkVBuNtXnMBC3agaQw
 w0MyGBTVEXdm3/7Uzep9+dohCAiid59szd4CTpYoBv3nAhnOCsF5aTaWw/tw4+GTVkSUCOdqQjI
 oZ9HdBLfizSIWEREErjEMQJD89fYO4Cfql7OqMAqdLJSxpQyROZUk/MkJalhql3sdw8DjX07oMV
 Zb/pZWcTFVWrIU4CRp5FiX8kLqvZcGzLkz1YvA0DbU3Zrlk2m7xBXZ3+AmH6JoUIzMC6pvrd3Nv
 51Cq/dK3fRzhOCzaGpTrN/AEOB/AcQX4yVBTOAsW2Y9r4CHxO8pYy7f9DeXUn8ScNeySmJ1K
X-Google-Smtp-Source: AGHT+IF7TNT1gd0+H5ZbT5vG1P2EdDoPfo61Uc/AnB0BWRRU2rdWfsNEuVC5kNxFod003BomXcVd+w==
X-Received: by 2002:a05:6402:34c6:b0:5f6:212f:ed3 with SMTP id
 4fb4d7f45d1cf-5fca07707eamr1650378a12.15.1746771314844; 
 Thu, 08 May 2025 23:15:14 -0700 (PDT)
Received: from jiri-mlt.client.nvidia.com ([193.47.165.251])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5fc9cc26e3dsm923190a12.27.2025.05.08.23.15.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 May 2025 23:15:14 -0700 (PDT)
Date: Fri, 9 May 2025 08:15:04 +0200
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
Message-ID: <we7ev4qegycbn6vp2epoeq45kulkpurdh2dga7zgmx6xq5hy2e@nkjmo3njtwo7>
References: <20250508122128.1216231-1-arkadiusz.kubalewski@intel.com>
 <20250508122128.1216231-3-arkadiusz.kubalewski@intel.com>
 <rwterkiyhdjcedboj773zc5s3d6purz6yaccfowco7m5zd7q3c@or4r33ay2dxh>
 <SJ2PR11MB8452820F6BDF445F29D368C99B8BA@SJ2PR11MB8452.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ2PR11MB8452820F6BDF445F29D368C99B8BA@SJ2PR11MB8452.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1746771315; x=1747376115;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=9ayrOtjvDhxlG7NNzEFdSAtZUMUsCsoAzJrwzEXbZsU=;
 b=NdBv7b/QKZFUXjxR3j+uIhCNrf+YHrQMs8HMpGODQ3k0GXGDmS2b2m+wmM9u5NSinB
 e8p4wybb/YJxm1BwBRSjn13uYai81Yzc+o+477IMv2xOR4di9FdUQmy6c4O7cmCNwbWS
 GyIiGa9LFkSlmmlOfZ1U0FVGAqiYruuGTgdJeBowFuYZlBNAfsuMoLAMe8C5Fflxg9Bq
 e6ajKX+FU2ePKU/TZSzYVPJZalf5Nk21ahfzJMRXRutEthJK6Ip4a2IUAgVDb3sc18KB
 XgxXWHXZgmGUOBoAZVBd3cFUsZu3VwEXkyE8VwrspjUfMu/krNjSNd90T+g/OUowjn9I
 +SAQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=NdBv7b/Q
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

Thu, May 08, 2025 at 05:20:24PM +0200, arkadiusz.kubalewski@intel.com wrote:
>>From: Jiri Pirko <jiri@resnulli.us>
>>Sent: Thursday, May 8, 2025 4:31 PM
>>
>>Thu, May 08, 2025 at 02:21:27PM +0200, arkadiusz.kubalewski@intel.com
>>wrote:
>>>Add new callback operations for a dpll device:
>>>- phase_offset_monitor_get(..) - to obtain current state of phase offset
>>>  monitor feature from dpll device,
>>>- phase_offset_monitor_set(..) - to allow feature configuration.
>>>
>>>Obtain the feature state value using the get callback and provide it to
>>>the user if the device driver implements callbacks.
>>>
>>>Execute the set callback upon user requests.
>>>
>>>Reviewed-by: Milena Olech <milena.olech@intel.com>
>>>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>>---
>>>v3:
>>>- remove feature flags and capabilities,
>>>- add separated (per feature) callback ops,
>>>- use callback ops to determine feature availability.
>>>---
>>> drivers/dpll/dpll_netlink.c | 76 ++++++++++++++++++++++++++++++++++++-
>>> include/linux/dpll.h        |  8 ++++
>>> 2 files changed, 82 insertions(+), 2 deletions(-)
>>>
>>>diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
>>>index c130f87147fa..6d2980455a46 100644
>>>--- a/drivers/dpll/dpll_netlink.c
>>>+++ b/drivers/dpll/dpll_netlink.c
>>>@@ -126,6 +126,26 @@ dpll_msg_add_mode_supported(struct sk_buff *msg,
>>>struct dpll_device *dpll,
>>> 	return 0;
>>> }
>>>
>>>+static int
>>>+dpll_msg_add_phase_offset_monitor(struct sk_buff *msg, struct dpll_device
>>>*dpll,
>>>+				  struct netlink_ext_ack *extack)
>>>+{
>>>+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
>>>+	enum dpll_feature_state state;
>>>+	int ret;
>>>+
>>>+	if (ops->phase_offset_monitor_set && ops->phase_offset_monitor_get) {
>>>+		ret = ops->phase_offset_monitor_get(dpll, dpll_priv(dpll),
>>>+						    &state, extack);
>>>+		if (ret)
>>>+			return -EINVAL;
>>
>>Why you don't propagate "ret"?
>>
>
>My bad, will fix that.
>
>>
>>>+		if (nla_put_u32(msg, DPLL_A_PHASE_OFFSET_MONITOR, state))
>>>+			return -EMSGSIZE;
>>>+	}
>>>+
>>>+	return 0;
>>>+}
>>>+
>>> static int
>>> dpll_msg_add_lock_status(struct sk_buff *msg, struct dpll_device *dpll,
>>> 			 struct netlink_ext_ack *extack)
>>>@@ -591,6 +611,9 @@ dpll_device_get_one(struct dpll_device *dpll, struct
>>>sk_buff *msg,
>>> 		return ret;
>>> 	if (nla_put_u32(msg, DPLL_A_TYPE, dpll->type))
>>> 		return -EMSGSIZE;
>>>+	ret = dpll_msg_add_phase_offset_monitor(msg, dpll, extack);
>>>+	if (ret)
>>>+		return ret;
>>>
>>> 	return 0;
>>> }
>>>@@ -746,6 +769,31 @@ int dpll_pin_change_ntf(struct dpll_pin *pin)
>>> }
>>> EXPORT_SYMBOL_GPL(dpll_pin_change_ntf);
>>>
>>>+static int
>>>+dpll_phase_offset_monitor_set(struct dpll_device *dpll, struct nlattr *a,
>>>+			      struct netlink_ext_ack *extack)
>>>+{
>>>+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
>>>+	enum dpll_feature_state state = nla_get_u32(a), old_state;
>>>+	int ret;
>>>+
>>>+	if (!(ops->phase_offset_monitor_set && ops-
>>>phase_offset_monitor_get)) {
>>>+		NL_SET_ERR_MSG_ATTR(extack, a, "dpll device not capable of
>>>phase offset monitor");
>>>+		return -EOPNOTSUPP;
>>>+	}
>>>+	ret = ops->phase_offset_monitor_get(dpll, dpll_priv(dpll),
>>>&old_state,
>>>+					    extack);
>>>+	if (ret) {
>>>+		NL_SET_ERR_MSG(extack, "unable to get current state of phase
>>>offset monitor");
>>>+		return -EINVAL;

Propagate ret.


>>>+	}
>>>+	if (state == old_state)
>>>+		return 0;
>>>+
>>>+	return ops->phase_offset_monitor_set(dpll, dpll_priv(dpll), state,
>>>+					     extack);
>>
>>Why you need to do this get/set dance? I mean, just call the driver
>>set() op and let it do what is needed there, no?
>>
>
>We did it this way from the beginning (during various pin-set related flows).

Hmm, idk if it is absolutelly necessary to stick with this pattern all
the time. I mean, what's the benefit here? I don't see any.


>
>>
>>>+}
>>>+
>>> static int
>>> dpll_pin_freq_set(struct dpll_pin *pin, struct nlattr *a,
>>> 		  struct netlink_ext_ack *extack)
>>>@@ -1533,10 +1581,34 @@ int dpll_nl_device_get_doit(struct sk_buff *skb,
>>>struct genl_info *info)
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
>>
>>Hmm, why you iterate? Why you just don't parse to attr array, as it is
>>usually done?
>>
>
>Hmm, AFAIR there are issues when you parse nested stuff with the array
>approach, here nothing is nested, but we already have the same approach on
>parsing pin related stuff (dpll_pin_set_from_nlattr(..)), just did the same
>here.

The only reason to iterate over attrs is then you have multiattr. Is
ever attr is there only once, no need for iteration.


>
>Thank you!
>Arkadiusz
>
>>
>>>+		switch (nla_type(a)) {
>>>+		case DPLL_A_PHASE_OFFSET_MONITOR:
>>>+			ret = dpll_phase_offset_monitor_set(dpll, a,
>>>+							    info->extack);
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
>>>index 5e4f9ab1cf75..6ad6c2968a28 100644
>>>--- a/include/linux/dpll.h
>>>+++ b/include/linux/dpll.h
>>>@@ -30,6 +30,14 @@ struct dpll_device_ops {
>>> 				       void *dpll_priv,
>>> 				       unsigned long *qls,
>>> 				       struct netlink_ext_ack *extack);
>>>+	int (*phase_offset_monitor_set)(const struct dpll_device *dpll,
>>>+					void *dpll_priv,
>>>+					enum dpll_feature_state state,
>>>+					struct netlink_ext_ack *extack);
>>>+	int (*phase_offset_monitor_get)(const struct dpll_device *dpll,
>>>+					void *dpll_priv,
>>>+					enum dpll_feature_state *state,
>>>+					struct netlink_ext_ack *extack);
>>> };
>>>
>>> struct dpll_pin_ops {
>>>--
>>>2.38.1
>>>
>
