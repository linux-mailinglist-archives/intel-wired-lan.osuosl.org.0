Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BFA7EF1A0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Nov 2023 12:21:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8DE76FB10;
	Fri, 17 Nov 2023 11:21:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8DE76FB10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700220081;
	bh=KUVnksDmoSyvUnVaODEPs+kOjALLnNnIGVP/1N20WXc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hZQtVqskdFRULSjIdBwdgjIpbXiTYcarztkFk4SkPUYJiQdCIWSVGkqJ6Jgamfslk
	 PHCbIfVNVEz2pOYXWqUX61qCmokUPAznmF8yqqo/fb142qUFh+4Lxzr8Lgmr2LYoca
	 2qluGdyouY3hLuLCDkFnh2fjjCKOwC2w222ts70T7Uf4bRvKcnhxQG72GZyzJvSzHp
	 qCBbc24V+8M7d89BxmKk/AqEorzNtZRzeaN4hRwUROyYiN0OZtQ52AkD5QLni7Qp3J
	 zOiEnv9tMfgdJgSGQaLKjuY2s5LB4Ww/fwS4b7sZFGwbvBO4pU1yBGQ5rU/fAf5acL
	 fhoUBUCDOMTMA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hdSqx95XFGug; Fri, 17 Nov 2023 11:21:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A80E36FB0F;
	Fri, 17 Nov 2023 11:21:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A80E36FB0F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A117D1BF33A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 11:21:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 84C7D6FB0F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 11:21:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84C7D6FB0F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yXm0xoeOAl3a for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Nov 2023 11:21:13 +0000 (UTC)
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DDD896FB0A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 11:21:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDD896FB0A
Received: by mail-ej1-x62a.google.com with SMTP id
 a640c23a62f3a-9dd6dc9c00cso265472966b.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Nov 2023 03:21:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700220070; x=1700824870;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eHIsjVFizKvIbQl8U+CvUzO8VVtyUgWU0JIxQXuswVo=;
 b=iDmtSe1BO7Izfj5do6MYgK/Ad+4W9JurvyokMhhpVSEFZ0q+IPvQwQDPc8z9RKvPPN
 6kMFZ/KYt7t7F1HUpxiA60t2SnlHUTwUHmV1vIJmTeXVLx7e1rggZM8KX8+54vQ3fdGY
 ibZ6DX8DO3uX/E2q4aSq1VEvRlbFhRuT1UpY4WDyxOHsms8jSa007331aS42B+V7sH4z
 v++cUnDPU6t6nKUMXm/C4nCaGbG8CCCi89Py2BSdZw9WynGR7d4ibl/mOtRJa02KeC/w
 KqDdIU3MIn8kZUPrLRRh2Z52a+4mjvqsySjeJAKs84jFzJKbCiVVF6FHZ0lTPeHhmX6m
 er6A==
X-Gm-Message-State: AOJu0Yz64D7QCgU+Qv6HA7kUWv5qZzA3EyBANwlxNx03W7IHfL7heaEz
 ES4e54Gs2wI4H62MZu6D5mYGxA==
X-Google-Smtp-Source: AGHT+IH35q7ljA6W7fdY8McRtLg6kQqnqRXP0n88dr4WEhfMowxfS+GOWBModH14HMBc8PwitCqbWQ==
X-Received: by 2002:a17:906:37c7:b0:9a1:f81f:d0d5 with SMTP id
 o7-20020a17090637c700b009a1f81fd0d5mr3513420ejc.54.1700220070193; 
 Fri, 17 Nov 2023 03:21:10 -0800 (PST)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 gr2-20020a170906e2c200b0099d45ed589csm671223ejb.125.2023.11.17.03.21.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Nov 2023 03:21:09 -0800 (PST)
Date: Fri, 17 Nov 2023 12:21:08 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: "Zhang, Xuejun" <xuejun.zhang@intel.com>
Message-ID: <ZVdMpLz1LPfMyM8S@nanopsycho>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com>
 <ZORRzEBcUDEjMniz@nanopsycho> <20230822081255.7a36fa4d@kernel.org>
 <ZOTVkXWCLY88YfjV@nanopsycho>
 <0893327b-1c84-7c25-d10c-1cc93595825a@intel.com>
 <ZOcBEt59zHW9qHhT@nanopsycho>
 <5aed9b87-28f8-f0b0-67c4-346e1d8f762c@intel.com>
 <bdb0137a-b735-41d9-9fea-38b238db0305@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bdb0137a-b735-41d9-9fea-38b238db0305@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1700220070; x=1700824870;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=eHIsjVFizKvIbQl8U+CvUzO8VVtyUgWU0JIxQXuswVo=;
 b=hZHrYPkUJ6mCz1L6g4/+djuZKUi1tHKb4EjgcEdhdybDUeA/zxYe3Ly5pOm59YhEzV
 yITmvBsOTPYN9UWZJcd0A8uvORJq5KHZViMG8sv8nIn78tZl9yUS6ZRJv6xIbmVP6Pes
 Nf/7UFAG4C2D06lE96b6aUkhguP+dFVstFBlYAd2VmYZ/t1q1jGJDEf4EYA0A/QIgs1d
 J9hxKAHwgQqaZ5U/m1ATWvnd5QDXQDafOAZ2WyFhxuGOG07pIOaIg0FqvIBHocvB5tk+
 9ZzOYzKzMG51pQGGPFrymZEmoDM1NOJECt9OZK+zBlRw1M7/oWIINzZENh9nOPFmldfd
 yraw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=hZHrYPkU
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
Cc: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, netdev@vger.kernel.org,
 maxtram95@gmail.com, qi.z.zhang@intel.com, "Chittim,
 Madhu" <madhu.chittim@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, Wenjun Wu <wenjun1.wu@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Nov 17, 2023 at 06:52:49AM CET, xuejun.zhang@intel.com wrote:
>Hello Jiri & Jakub,
>
>Thanks for looking into our last patch with devlink API. Really appreciate
>your candid review.
>
>Following your suggestion, we have looked into 3 tc offload options to
>support queue rate limiting
>
>#1 mq + matchall + police

This looks most suitable. Why it would not work?

>
>#2 mq + tbf
>
>#3 htb
>
>all 3 tc offload options require some level of tc extensions to support VF=
 tx
>queue rate limiting (tx_maxrate & tx_minrate)
>
>htb offload requires minimal tc changes or no change with similar change d=
one
>@ driver (we can share patch for review).
>
>After discussing with Maxim Mikityanskiy( https://lore.kernel.org/netdev/5=
4a7dd27-a612-46f1-80dd-b43e28f8e4ce@intel.com/
>), looks like sysfs interface with tx_minrate extension could be the option

I don't undestand how any sysfs know is related to any of the tree tc
solutions above.


>we can take.
>
>Look forward your opinion & guidance. Thanks for your time!
>
>Regards,
>
>Jun
>
>On 8/28/2023 3:46 PM, Zhang, Xuejun wrote:
>> =

>> On 8/24/2023 12:04 AM, Jiri Pirko wrote:
>> > Wed, Aug 23, 2023 at 09:13:34PM CEST, xuejun.zhang@intel.com wrote:
>> > > On 8/22/2023 8:34 AM, Jiri Pirko wrote:
>> > > > Tue, Aug 22, 2023 at 05:12:55PM CEST,kuba@kernel.org=A0 wrote:
>> > > > > On Tue, 22 Aug 2023 08:12:28 +0200 Jiri Pirko wrote:
>> > > > > > NACK! Port function is there to configure the VF/SF from the e=
switch
>> > > > > > side. Yet you use it for the configureation of the
>> > > > > > actual VF, which is
>> > > > > > clear misuse. Please don't
>> > > > > Stating where they are supposed to configure the rate
>> > > > > would be helpful.
>> > > > TC?
>> > > Our implementation is an extension to this commit 42c2eb6b1f43
>> > > ice: Implement
>> > > devlink-rate API).
>> > > =

>> > > We are setting the Tx max & share rates of individual queues in a
>> > > VF using
>> > > the devlink rate API.
>> > > =

>> > > Here we are using DEVLINK_PORT_FLAVOUR_VIRTUAL as the attribute
>> > > for the port
>> > > to distinguish it from being eswitch.
>> > I understand, that is a wrong object. So again, you should use
>> > "function" subobject of devlink port to configure "the other side of t=
he
>> > wire", that means the function related to a eswitch port. Here, you are
>> > doing it for the VF directly, which is wrong. If you need some rate
>> > limiting to be configured on an actual VF, use what you use for any
>> > other nic. Offload TC.
>> Thanks for detailed explanation and suggestions. Sorry for late reply as
>> it took a bit longer to understand options.
>> =

>> As sysfs has similar rate configuration on per queue basis with
>> tx_maxrate, is it a viable option for our use case (i.e allow user to
>> configure tx rate for each allocated queue in a VF).
>> =

>> Pls aslo see If adding tx_minrate to sysfs tx queue entry is feasible on
>> the current framework.
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
