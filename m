Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 326DD5A26C4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Aug 2022 13:22:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9B991404E0;
	Fri, 26 Aug 2022 11:22:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B991404E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661512933;
	bh=Wi3h6a1EzalfmH+w/TVKQfisI5vtibgKqEEsmJj11So=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cEWoi7KBsS+GJFLOGlt5l/tX7ZE45XrAbVSW8bEtoXKEfhH0A9hKNgxj4wNZtU2SU
	 WC/MGhhhQsC8gGzoemIp9N/rSrMr8SOhqGObe/aDd4ruPMYhWYEawGJW53f++ZZkbd
	 hH6+ojWhyqU3smJiWYfKGOHzbk3qVkglDctClJD4K9wesbZA8E8AVBHkA2a2N24q7w
	 acbkCOk9ZTmhYSbh/IM6HnQdvDx3Rg8HVrMyySyjSEcJ/dFxDij6zdMtorEi/wyoQn
	 y8dyFUuzHJwWsr4MgC3zc4nLIr4KmTQA5O6zDoIc7wtNMwRfx5vE9Y7nJuAM6d7XZK
	 7EcKbJsXwAlXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PbnU3XGL-SXu; Fri, 26 Aug 2022 11:22:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7AAD2404B9;
	Fri, 26 Aug 2022 11:22:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7AAD2404B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 453801BF289
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:22:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1DC8C419F3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:22:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DC8C419F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1vhVWnJ35PAg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Aug 2022 11:22:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 182F4419F0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 182F4419F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:22:07 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id h22so2563989ejk.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 04:22:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
 bh=CucRIh2PrXJb3DcHrtgbJOyx1jHP2bG91bbSYwOhaC4=;
 b=jpp8X5dU8MnhLp06W8xM9itZI8lzV3vop7lTLa/1vhjuVyKZji4IY/DWy03DnGK/3E
 Nrjz+9sU9Zwwdi81UhP9Wc7jT287t/wWrR9wVwkCmdSbpf3SxV1N1hNIf+k6mTIp233D
 EgAroaUIEtpsLOz2kFYPu2hyqPCXynzi1zSBCQM00d075MvZGj3S+fOs6mW/R6NYjHdq
 pja2MyVPLzqoClbNA1PX4Wxs3gQSHY2ulPU9esfhhYOJ2z7urYTOQ6uPqfwR2BYMB01/
 mZMtQL0ZI4lR33psbR5kc3PwxK2W/SG1puq9Z181lBTVQ7weiu+Hd3nKmaa2prhPW+gF
 Bz3g==
X-Gm-Message-State: ACgBeo1PzvBWhWp2Xyal/fm2lltN7Dr5JQUY9NSCnLlUDmynSm/HdjI+
 xyOSbfXE66OYEeWsaN3QY+US2w==
X-Google-Smtp-Source: AA6agR4zpJPV89k3LUSi4f8kgVgkLFTq1AEIkXh4pwcgeIxcaEXLyY3dk2DWpy3Qapk/zhL5IrAmQQ==
X-Received: by 2002:a17:907:284a:b0:73d:a818:5a2a with SMTP id
 el10-20020a170907284a00b0073da8185a2amr5033329ejc.159.1661512925326; 
 Fri, 26 Aug 2022 04:22:05 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 s25-20020aa7cb19000000b004477c582ffdsm1097632edt.80.2022.08.26.04.22.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Aug 2022 04:22:04 -0700 (PDT)
Date: Fri, 26 Aug 2022 13:22:04 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <Ywis3PYhKiATnzXB@nanopsycho>
References: <20220826110059.119927-1-wojciech.drewek@intel.com>
 <20220826110059.119927-2-wojciech.drewek@intel.com>
 <Ywir0R7xdE7RZIhD@nanopsycho>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Ywir0R7xdE7RZIhD@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc;
 bh=CucRIh2PrXJb3DcHrtgbJOyx1jHP2bG91bbSYwOhaC4=;
 b=HvXKS4dcAMneqpLk4BthVcbsID88oOPNSXHv001zzFH6fQ6ZFl489fa3SWx12aDCtA
 kg3oUDxVjGKkRg1khn9wZw1FWeYuZ0sjHdm6zH57pVMynZh44YzxXAwpm2pllZlJ17Y7
 04DrPdQT4/3rBhpnxLnRrb6t5EGsTS89/WL/kRuFreopdYSRa0rJhLYRxGcTH4fDmpOs
 PjnV4Lbfb/h15EQ0BOoXbuw09F5n4075uxoLKxywmbdkBWkOB4gy0Zb8OoION1g/LUrC
 +LwtZIR/gicMna9yYU5SitNTCWefaLXekOXL5A2OJGQ0Sq/s+HVqnIXsEcejaU2a8l1w
 Girg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=HvXKS4dc
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next 1/5] uapi: move
 IPPROTO_L2TP to in.h
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
Cc: simon.horman@corigine.com, maksym.glubokiy@plvision.eu,
 komachi.yoshiki@gmail.com, jchapman@katalix.com, edumazet@google.com,
 boris.sukholitko@broadcom.com, louis.peens@corigine.com, gnault@redhat.com,
 intel-wired-lan@lists.osuosl.org, vladbu@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, pablo@netfilter.org, baowen.zheng@corigine.com,
 kurt@linutronix.de, paulb@nvidia.com, jhs@mojatatu.com,
 xiyou.wangcong@gmail.com, netdev@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Aug 26, 2022 at 01:17:37PM CEST, jiri@resnulli.us wrote:
>Fri, Aug 26, 2022 at 01:00:55PM CEST, wojciech.drewek@intel.com wrote:
>>IPPROTO_L2TP is currently defined in l2tp.h, but most of
>>ip protocols is defined in in.h file. Move it there in order
>>to keep code clean.
>>
>>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>>---
>> include/uapi/linux/in.h   | 2 ++
>> include/uapi/linux/l2tp.h | 2 --
>> 2 files changed, 2 insertions(+), 2 deletions(-)
>>
>>diff --git a/include/uapi/linux/in.h b/include/uapi/linux/in.h
>>index 14168225cecd..5a9454c886b3 100644
>>--- a/include/uapi/linux/in.h
>>+++ b/include/uapi/linux/in.h
>>@@ -68,6 +68,8 @@ enum {
>> #define IPPROTO_PIM		IPPROTO_PIM
>>   IPPROTO_COMP = 108,		/* Compression Header Protocol		*/
>> #define IPPROTO_COMP		IPPROTO_COMP
>>+  IPPROTO_L2TP = 115,		/* Layer 2 Tunnelling Protocol		*/
>>+#define IPPROTO_L2TP		IPPROTO_L2TP
>>   IPPROTO_SCTP = 132,		/* Stream Control Transport Protocol	*/
>> #define IPPROTO_SCTP		IPPROTO_SCTP
>>   IPPROTO_UDPLITE = 136,	/* UDP-Lite (RFC 3828)			*/
>>diff --git a/include/uapi/linux/l2tp.h b/include/uapi/linux/l2tp.h
>>index bab8c9708611..7d81c3e1ec29 100644
>>--- a/include/uapi/linux/l2tp.h
>>+++ b/include/uapi/linux/l2tp.h
>>@@ -13,8 +13,6 @@
>> #include <linux/in.h>
>> #include <linux/in6.h>
>> 
>>-#define IPPROTO_L2TP		115
>
>You most certainly cannot do this, as you would break the user including
>linux/l2tp.h and using this.

Ah wait, you include in.h, I overlooked.


>
>
>>-
>> /**
>>  * struct sockaddr_l2tpip - the sockaddr structure for L2TP-over-IP sockets
>>  * @l2tp_family:  address family number AF_L2TPIP.
>>-- 
>>2.31.1
>>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
