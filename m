Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E85817B9A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 21:12:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95889408DD;
	Mon, 18 Dec 2023 20:12:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95889408DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702930372;
	bh=UapuiLqW4vdh2e9emBqa3fRax1NAY2et2zVaKaeXE4w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eo9/+BwuB14fUHGwt8YlajMP0c5IaJQw/Tg/vV8p8FdyO2H4ZN3pcIX0wAMiuXT80
	 OXIrxkh00EXDNDL4mGMAlER24QiMs7e5o88dVTpnL4yjTxCBRbCtN8b4RonjpZUfbu
	 /pDLwo/xb4rfz8GKc91BUE4EP/Dxh+YvR6rouiXSob4XHKjcfejJCA+BEAQyzFErhi
	 iUGokOJORaaJbVk0CLL2F9F8Md2cnV8/LqpF/xLr+sObfD7pe4G5/8uxHNghrALJNz
	 vWltnr61u+/ncsiVNCxdLtlSbzES8HU/vP+mrNuPeiYAsCl1APPQVg/F8A8yXRenl1
	 ZkWeKIEutan8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nui9KxX7q65a; Mon, 18 Dec 2023 20:12:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DEA4E408CF;
	Mon, 18 Dec 2023 20:12:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEA4E408CF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB77B1BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 20:12:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C764F410B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 20:12:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C764F410B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rKnWY7O17zq6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 20:12:44 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8977341735
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 20:12:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8977341735
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-137-hOUNrrNeP0-WMyupyqooUA-1; Mon, 18 Dec 2023 15:12:39 -0500
X-MC-Unique: hOUNrrNeP0-WMyupyqooUA-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-a23739b8459so1016066b.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 12:12:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702930358; x=1703535158;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=IsJVSX6IEkmtFV9+0aEN/tS3XHrjWv1JC1BbSwjirH0=;
 b=fTCdftL+3sT4gVV2scMakp4FGK9bLpX+uon874FzbELLaHZQiSgJho4EFlHRRcnxaT
 u9/+r2Q/KjWeEEAI8QqgnzOgwNSZr/nS50PQjzmt3OjP8mh4EonOh4zx9Zl3+BSauAcs
 kbOb5oCyFMhfx5iNvWCmMirkCdZJvh+Fou6Aip5eryjsH/iHZPZyBpfcHKv6Q5xuiK/m
 0ynhiZeqHBbjdfLLVCvMMZv4GePns+JNByeii5X9Z8dPzvG6cyVmLJ2sxmgWvPwcsPPx
 3X2vx020u7jPfFFyHvVqsaf50QFmez0KV/Y7AgOMHOYKGzoaHjKKwETs2kEJq0RINEGv
 MfrA==
X-Gm-Message-State: AOJu0Yybwnv3gP2NUW7OJ7moSoX5jDurgPaSFFI8nU3Twh+KWrEC/fuK
 +M/KoLrg4DoPp+qOPESC24cW+DzFCnuIhjvRRY1syDv93gr7h27cOunHPPNC6LJl+FUbK4j8p2w
 4fQ1yJSv2G/qqwOud1nBmR/qx+iCLrw==
X-Received: by 2002:a50:bb06:0:b0:553:46ed:3133 with SMTP id
 y6-20020a50bb06000000b0055346ed3133mr3447599ede.1.1702930358300; 
 Mon, 18 Dec 2023 12:12:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGxMl1ef4XcJR6LMN9lFW5JBcbOLREMzwim3fhKSyUDak7Z0VJgOu2KaMA5DHNWK50AhpB2Fw==
X-Received: by 2002:a50:bb06:0:b0:553:46ed:3133 with SMTP id
 y6-20020a50bb06000000b0055346ed3133mr3447586ede.1.1702930357962; 
 Mon, 18 Dec 2023 12:12:37 -0800 (PST)
Received: from gerbillo.redhat.com (146-241-253-3.dyn.eolo.it. [146.241.253.3])
 by smtp.gmail.com with ESMTPSA id
 l14-20020aa7cace000000b005530492d900sm2561975edt.58.2023.12.18.12.12.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Dec 2023 12:12:37 -0800 (PST)
Message-ID: <baa4bd4b3aa0639d29e5c396bd3da94e01cd8528.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>
Date: Mon, 18 Dec 2023 21:12:35 +0100
In-Reply-To: <20231215144155.194a188e@kernel.org>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com> <ZORRzEBcUDEjMniz@nanopsycho>
 <20230822081255.7a36fa4d@kernel.org> <ZOTVkXWCLY88YfjV@nanopsycho>
 <0893327b-1c84-7c25-d10c-1cc93595825a@intel.com>
 <ZOcBEt59zHW9qHhT@nanopsycho>
 <5aed9b87-28f8-f0b0-67c4-346e1d8f762c@intel.com>
 <bdb0137a-b735-41d9-9fea-38b238db0305@intel.com>
 <20231118084843.70c344d9@kernel.org>
 <3d60fabf-7edf-47a2-9b95-29b0d9b9e236@intel.com>
 <20231122192201.245a0797@kernel.org>
 <e662dca5-84e4-4f7b-bfa3-50bce30c697c@intel.com>
 <20231127174329.6dffea07@kernel.org>
 <55e51b97c29894ebe61184ab94f7e3d8486e083a.camel@redhat.com>
 <20231214174604.1ca4c30d@kernel.org>
 <7b0c2e0132b71b131fc9a5407abd27bc0be700ee.camel@redhat.com>
 <20231215144155.194a188e@kernel.org>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1702930363;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IsJVSX6IEkmtFV9+0aEN/tS3XHrjWv1JC1BbSwjirH0=;
 b=bthZc2QwE4nCpI7HfvpiHA6Vb8WhlytzNHOWDi3idcPOZHg79QZ0UbE9BOd3lV29SIZaoW
 5GwCUGPg2G3DJIPsLGum57bzzPf+sQz6iSo/2pHLM7TYrfR5WlJaokfznre82IFxEDnjvf
 lfVK06ikY+NdoNPlzIoJJ2xgcf7yKl8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=bthZc2Qw
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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
Cc: Jiri Pirko <jiri@resnulli.us>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, netdev@vger.kernel.org,
 maxtram95@gmail.com, Simon Horman <simon.horman@redhat.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>, anthony.l.nguyen@intel.com,
 qi.z.zhang@intel.com, intel-wired-lan@lists.osuosl.org,
 Wenjun Wu <wenjun1.wu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2023-12-15 at 14:41 -0800, Jakub Kicinski wrote:
> I explained before (perhaps on the netdev call) - Qdiscs have two
> different offload models. "local" and "switchdev", here we want "local"
> AFAIU and TBF only has "switchdev" offload (take a look at the enqueue
> method and which drivers support it today).

I must admit the above is not yet clear to me.

I initially thought you meant that "local" offloads properly
reconfigure the S/W datapath so that locally generated traffic would go
through the expected processing (e.g. shaping) just once, while with
"switchdev" offload locally generated traffic will see shaping done
both by the S/W and the H/W[1].

Reading the above I now think you mean that local offloads has only
effect for locally generated traffic but not on traffic forwarded via
eswitch, and vice versa[2]. 

The drivers I looked at did not show any clue (to me).

FTR, I think that [1] is a bug worth fixing and [2] is evil ;)

Could you please clarify which is the difference exactly between them?

> "We'll extend TBF" is very much adding a new API. You'll have to add
> "local offload" support in TBF and no NIC driver today supports it.
> I'm not saying TBF is bad, but I disagree that it's any different
> than a new NDO for all practical purposes.
> 
> > ndo_setup_tc() feels like the natural choice for H/W offload and TBF
> > is the existing interface IMHO nearest to the requirements here.
> 
> I question whether something as basic as scheduling and ACLs should
> follow the "offload SW constructs" mantra. You are exposed to more
> diverse users so please don't hesitate to disagree, but AFAICT
> the transparent offload (user installs SW constructs and if offload
> is available - offload, otherwise use SW is good enough) has not
> played out like we have hoped.
> 
> Let's figure out what is the abstract model of scheduling / shaping
> within a NIC that we want to target. And then come up with a way of
> representing it in SW. Not which uAPI we can shoehorn into the use
> case.

I thought the model was quite well defined since the initial submission
from Intel, and is quite simple: expose TX shaping on per tx queue
basis, with min rate, max rate (in bps) and burst (in bytes).

I think that making it more complex (e.g. with nesting, pkt overhead,
etc) we will still not cover every possible use case and will add
considerable complexity.
> 
Cheers,

Paolo

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
