Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AF867C7B3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 10:46:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5539418EB;
	Thu, 26 Jan 2023 09:46:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5539418EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674726367;
	bh=6Jq7qQhmsOetz8nlN7XuWkzj9I5Q+xwjqYR7e2Vz4zA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yILSnSICYVzqXbQpauyaTSdz3zKsJY5hDuQ3hZTRAbck3YgMPQJw+GulP8L/O1tZe
	 rtEd7eBzm/4Z0ldcdFcObSMiQoIZkhuDktyaG8Xt+2MCscAf2eMO93AvK4HQA1hiEV
	 gMINFc6Nk2QTAN1kbMvGdGxQKsYZkhcmvw+5qM3YJvdynvNVvMO76ZErvXzU1Y73rX
	 Qw3w/YdQc1hgQlwIUbBeQaYk80ZzfFYI72g08jBmM7C0/LbsklKEM+Foi4WE4XSg9j
	 LpMl9ALasnzYbSukT61xmqoo/1BDAbmjhQDz8DrGdgsaaYMdjRYWL53FlOBovzDKgx
	 ebvmeucl/Cgrw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id On2oVSa-iN1t; Thu, 26 Jan 2023 09:46:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8293F416E8;
	Thu, 26 Jan 2023 09:46:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8293F416E8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 57E511BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:46:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 261B281DE2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:46:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 261B281DE2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bL_TV1TDudbb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 09:45:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57D2F81D70
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 57D2F81D70
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 09:45:58 +0000 (UTC)
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-558-a4anHuD9M5ugXc29lgf1Xw-1; Thu, 26 Jan 2023 04:45:56 -0500
X-MC-Unique: a4anHuD9M5ugXc29lgf1Xw-1
Received: by mail-qv1-f70.google.com with SMTP id
 nk14-20020a056214350e00b0053472f03fedso780955qvb.17
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 01:45:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=2SYkSovMaW2XoSXHsrHI+434w+NAs7lDBuGn6R/cFfA=;
 b=CL3ACQHcR1Kb0b4Vz07pj3TkyV1h8IdqHyyipN2UwrKgpr6B6INpI8bSy2psHT1Quo
 KdKdbfTPiONWHiKB3hHQ25i751uzZvmLvW1ulNG1ONpLiL1LFssCdI7MDtAYN7iYVL10
 xDVYE9WxjaDQvjL2WbJXQ6+R7WnWDQ0yUhgjQs23O6xtvBN/JieRAVbIx3wCmdE7uF8g
 qoAXur42cHUksRsIJB2vIfXuOZ2HxXm9C6gUxTH81EbQOv9VWBxiDqH8kxpajyh3m6RJ
 d2ldmWH34MisHn2NwvUonl6HPJs4fkGBuYaGh9BE3vwZGkez2BRvkEOUmwYUH049oCi5
 Zpqg==
X-Gm-Message-State: AFqh2kqDIa4IO1vsaIVRcPTO1V9JAYAN/NW9975qRkhr2R8a0+8vdDvv
 n+s7PVIjtBIJCxCWQiO0qHJI/8DDTIgEEDXFoUlu2Ddcjq7Gqpmwxgh4IBj8VhtgowGHHs/DMsX
 xIHh7XqcNIqtITwq1cingBH2VJn4OgQ==
X-Received: by 2002:ac8:138c:0:b0:3b6:2be5:a2f7 with SMTP id
 h12-20020ac8138c000000b003b62be5a2f7mr50021949qtj.54.1674726356194; 
 Thu, 26 Jan 2023 01:45:56 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtuGY6SKfeImfr/sz3V+kwZi70EAHbkkSoDj6gfrheVzh+xfVtlWKWYkwuXC5dTnUz5Rj/MrA==
X-Received: by 2002:ac8:138c:0:b0:3b6:2be5:a2f7 with SMTP id
 h12-20020ac8138c000000b003b62be5a2f7mr50021922qtj.54.1674726355827; 
 Thu, 26 Jan 2023 01:45:55 -0800 (PST)
Received: from gerbillo.redhat.com (146-241-113-28.dyn.eolo.it.
 [146.241.113.28]) by smtp.gmail.com with ESMTPSA id
 2-20020ac82082000000b003ad373d04b6sm441378qtd.59.2023.01.26.01.45.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Jan 2023 01:45:55 -0800 (PST)
Message-ID: <75f6e5d0e42a8b9895c1b2330c373da9ed7f41db.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Leon Romanovsky <leon@kernel.org>, Jakub Kicinski <kuba@kernel.org>
Date: Thu, 26 Jan 2023 10:45:50 +0100
In-Reply-To: <Y9Irgrgf3uxOjwUm@unreal>
References: <cover.1674560845.git.leon@kernel.org>
 <c182cae29914fa19ce970859e74234d3de506853.1674560845.git.leon@kernel.org>
 <20230125110226.66dc7eeb@kernel.org> <Y9Irgrgf3uxOjwUm@unreal>
User-Agent: Evolution 3.46.3 (3.46.3-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1674726358;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o2ZX3qeORAPfPaNN9vGRRNtTWlytQELM96L7AF+MEW8=;
 b=JxUhrPX/s/CynjXvpRVy/8wx8PpdQtp8o+ZwD2W+gBz57HmqGUGnhJwZb+VZUIE2e5vdF0
 8nCI9e48MNYRo92rZ3YM2P2yrfq6/WAkjw+mZUbcDvTcpFvXWvF6ZLuwYpPukbQsnYXb9q
 z4KMywAFBtUiAXQjTw1cSFpulX8vVBM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=JxUhrPX/
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 01/10] xfrm: extend add
 policy callback to set failure reason
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
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Veaceslav Falico <vfalico@gmail.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 Jonathan Corbet <corbet@lwn.net>, Jay Vosburgh <j.vosburgh@gmail.com>,
 oss-drivers@corigine.com, linux-doc@vger.kernel.org,
 Raju Rangoju <rajur@chelsio.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Ayush Sawal <ayush.sawal@chelsio.com>,
 Simon Horman <simon.horman@corigine.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S . Miller" <davem@davemloft.net>, Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2023-01-26 at 09:28 +0200, Leon Romanovsky wrote:
> On Wed, Jan 25, 2023 at 11:02:26AM -0800, Jakub Kicinski wrote:
> > On Tue, 24 Jan 2023 13:54:57 +0200 Leon Romanovsky wrote:
> > > -	err = dev->xfrmdev_ops->xdo_dev_policy_add(xp);
> > > +	err = dev->xfrmdev_ops->xdo_dev_policy_add(xp, extack);
> > >  	if (err) {
> > >  		xdo->dev = NULL;
> > >  		xdo->real_dev = NULL;
> > >  		xdo->type = XFRM_DEV_OFFLOAD_UNSPECIFIED;
> > >  		xdo->dir = 0;
> > >  		netdev_put(dev, &xdo->dev_tracker);
> > > -		NL_SET_ERR_MSG(extack, "Device failed to offload this policy");
> > 
> > In a handful of places we do:
> > 
> > if (!extack->msg)
> > 	NL_SET_ERR_MSG(extack, "Device failed to offload this policy");
> > 
> > in case the device did not provide the extack.
> > Dunno if it's worth doing here.
> 
> Honestly, I followed devlink.c which didn't do that, but looked again
> and found that devlink can potentially overwrite messages :)
> 
> For example in this case:
>     997         err = ops->port_fn_state_get(port, &state, &opstate, extack);
>     998         if (err) {
>     999                 if (err == -EOPNOTSUPP)
>    1000                         return 0;
>    1001                 return err;
>    1002         }
>    1003         if (!devlink_port_fn_state_valid(state)) {
>    1004                 WARN_ON_ONCE(1);
>    1005                 NL_SET_ERR_MSG_MOD(extack, "Invalid state read from driver");
>    1006                 return -EINVAL;
>    1007         }
> 
> 
> So what do you think about the following change, so we can leave
> NL_SET_ERR_MSG_MOD() in devlink and xfrm intact? 
> 
> diff --git a/include/linux/netlink.h b/include/linux/netlink.h
> index 38f6334f408c..d6f3a958e30b 100644
> --- a/include/linux/netlink.h
> +++ b/include/linux/netlink.h
> @@ -101,7 +101,7 @@ struct netlink_ext_ack {
>                                                         \
>         do_trace_netlink_extack(__msg);                 \
>                                                         \
> -       if (__extack)                                   \
> +       if (__extack && !__extack->msg)                 \
>                 __extack->_msg = __msg;                 \
>  } while (0)
> 
> @@ -111,7 +111,7 @@ struct netlink_ext_ack {
>  #define NL_SET_ERR_MSG_FMT(extack, fmt, args...) do {                         \
>         struct netlink_ext_ack *__extack = (extack);                           \
>                                                                                \
> -       if (!__extack)                                                         \
> +       if (!__extack || __extack->msg)                                        \
>                 break;                                                         \
>         if (snprintf(__extack->_msg_buf, NETLINK_MAX_FMTMSG_LEN,               \
>                      "%s" fmt "%s", "", ##args, "") >=                         \
> 

I think it makes sense. With the above patch 3/10 should be updated to
preserve the 'catch-all' error message, I guess.

Let's see what Jakub thinks ;)

Cheers,

Paolo

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
