Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F1E965FAD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 12:55:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CFDD580D7E;
	Fri, 30 Aug 2024 10:55:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lhEFPCJ2W_cE; Fri, 30 Aug 2024 10:55:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E16F80CDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725015316;
	bh=LtZsySWr0Uts/1vJErtWiomtH6ZwuZ1nWNATGG6eHx4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gtQSHmVf3qBdsI39g2x0C0l0ain6fnifTuVARyjFaNDKNdLTGNs8ttgQYhefPZWMf
	 YvTbItpoC9rjsTG1kqVLfhfnDL9hgRX/V/ppq2TLMNJNOWGTS0Qh3urK34o0KBKnja
	 EfhMYB3bCuoiJJuMFfFSW7RfoqzQ4Y2esIAoz0WgdfvCXsvcOd6zkUmEL7A7nBzHhi
	 t/FuUtO2o9ix22GUk71JN1/Bbq+eVOLjEShfxrB24LpNiBNjstnDfRwGh4PWaQtXPz
	 vZBBw/65uESPOiqEEKceIltIfdKh78A+vX3Us7BS+uhDwOUTEGcZUKJIOhxN05okJW
	 3+Fwstep4orTw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E16F80CDA;
	Fri, 30 Aug 2024 10:55:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C9FD11BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 10:55:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B714180C71
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 10:55:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EOX6b86adbIE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 10:55:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ED42180C4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED42180C4B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ED42180C4B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 10:55:12 +0000 (UTC)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-632-L8hsA_XBMBuvNUYo3l94Vg-1; Fri, 30 Aug 2024 06:55:09 -0400
X-MC-Unique: L8hsA_XBMBuvNUYo3l94Vg-1
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-42bb68e1706so15771715e9.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 03:55:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725015308; x=1725620108;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LtZsySWr0Uts/1vJErtWiomtH6ZwuZ1nWNATGG6eHx4=;
 b=eQ/lIhZU1dg938jvD+Ar9tep9W1uzCp+gh1727RwD47OpbTf6pdxxxp5LVGcBYZShO
 Xp+lGmyEDEEoCQ5RqMNtjfwT/9+EF+R+cYC139bnli8psy1UczVgUx7Ok9Ln3Kg5lrma
 W4KFlvVKLvHpdJ5iQ74d2bidY2JedqMOt84V+ewu+WT0Tu841kmAw5KzMdPu2pDx3FWP
 u4Q1eIFDw+zLXfHdJaZannhJ0Kp6NZ3HCG3Lyatt4z4GpM0iCU2Ory+Lr86ksgypj4q6
 Ar1F+GZHEDjsdjGsRrS7WHIWz64eIv5vUer0IDalrvm/F2NcvPpQ0upnelDReJEVh1Q0
 FrzQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV01vVXz+UgYIVWp33ZTk2cCEtZjbRNPYGVciHW85JrPsOc7a3Dvf8ICm4u5JShT3Ss95odHX+gg1Bypmm4kg0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyGBctBxhZaMxAl5tR9Rq7PqNyqjhQwDdnaTyqhONkYRQDLrO1X
 +vQfIR9VN2jZZgpmFoN/wc8HqJEkctELjVAfVk0NxReB7i0DI/kMR75zWoeCcjefTuISy8XhJY6
 3a3hUnmDJUHVjboXwa7076zyF9zfuoUH4PoNCQQEW4pNO3EE++0J+RpYDr38aR6/lvr8=
X-Received: by 2002:a05:600c:3109:b0:42b:ac55:b327 with SMTP id
 5b1f17b1804b1-42bb0294255mr47363155e9.12.1725015308442; 
 Fri, 30 Aug 2024 03:55:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1jgU2jMHGVYGRQqKFicsetGdz8wMGNd0ADUz/bZL/M5eztgwj41fTE+Z6tKeSrD/xmXLXPQ==
X-Received: by 2002:a05:600c:3109:b0:42b:ac55:b327 with SMTP id
 5b1f17b1804b1-42bb0294255mr47362945e9.12.1725015307862; 
 Fri, 30 Aug 2024 03:55:07 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:1b53:e610:b3b7:eca4:eb3c:3f1a?
 ([2a0d:3344:1b53:e610:b3b7:eca4:eb3c:3f1a])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bba7f9f3esm14381635e9.0.2024.08.30.03.55.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Aug 2024 03:55:07 -0700 (PDT)
Message-ID: <57ef8eb8-9534-4061-ba6c-4dadaf790c45@redhat.com>
Date: Fri, 30 Aug 2024 12:55:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <cover.1724944116.git.pabeni@redhat.com>
 <53077d35a1183d5c1110076a07d73940bb2a55f3.1724944117.git.pabeni@redhat.com>
 <20240829182019.105962f6@kernel.org>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20240829182019.105962f6@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725015311;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LtZsySWr0Uts/1vJErtWiomtH6ZwuZ1nWNATGG6eHx4=;
 b=DL7gP7xoUHOaFNaHppbZvlxoEEXEBgwtfay/GDQPADDUN2BtVww4DqO62umRzqxJ4I/C/C
 hQbDEmPPILAer/sQrrawSCibJ+2NorIMH2lWxHSFhzy8m3o24lHMuyo9KwzB9fJJz//Kg6
 XIJ3AL1ywfPW4ukgliSyRpHyUo2oERs=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=DL7gP7xo
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 02/12] net-shapers:
 implement NL get operation
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/30/24 03:20, Jakub Kicinski wrote:>> +/* Initialize the context 
fetching the relevant device and
>> + * acquiring a reference to it.
>> + */
>> +static int net_shaper_ctx_init(const struct genl_info *info, int type,
>> +			       struct net_shaper_nl_ctx *ctx)
>> +{
>> +	struct net *ns = genl_info_net(info);
>> +	struct net_device *dev;
>> +	int ifindex;
>> +
>> +	memset(ctx, 0, sizeof(*ctx));
>> +	if (GENL_REQ_ATTR_CHECK(info, type))
>> +		return -EINVAL;
>> +
>> +	ifindex = nla_get_u32(info->attrs[type]);
> 
> Let's limit the 'binding' thing to just driver call sites, we can
> redo the rest easily later. This line and next pretends to take
> "arbitrary" type but clearly wants a ifindex/netdev, right?

There is a misunderstanding. This helper will be used in a following 
patch (7/12) with a different 'type' argument: 
NET_SHAPER_A_BINDING_IFINDEX. I've put a note in the commit message, but 
was unintentionally dropped in one of the recent refactors. I'll add 
that note back.

I hope you are ok with the struct net_shaper_binding * argument to most 
helpers? does not add complexity, will help to support devlink objects 
and swapping back and forth from/to struct net_device* can't be automated.

[...]
> Maybe send a patch like this, to avoid having to allocate this space,
> and special casing dump vs doit:
> 
> diff --git a/include/net/genetlink.h b/include/net/genetlink.h
> index 9ab49bfeae78..7658f0885178 100644
> --- a/include/net/genetlink.h
> +++ b/include/net/genetlink.h
> @@ -124,7 +124,8 @@ struct genl_family {
>    * @genlhdr: generic netlink message header
>    * @attrs: netlink attributes
>    * @_net: network namespace
> - * @user_ptr: user pointers
> + * @ctx: storage space for the use by the family
> + * @user_ptr: user pointers (deprecated, use ctx instead)
>    * @extack: extended ACK report struct
>    */
>   struct genl_info {
> @@ -135,7 +136,10 @@ struct genl_info {
>   	struct genlmsghdr *	genlhdr;
>   	struct nlattr **	attrs;
>   	possible_net_t		_net;
> -	void *			user_ptr[2];
> +	union {
> +		u8		ctx[48];
> +		void *		user_ptr[2];
> +	};
>   	struct netlink_ext_ack *extack;
>   };

Makes sense. Plus likely:

#define NETLINK_CTX_SIZE 48

and use such define above and in linux/netlink.h

Thanks,

Paolo

