Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2D7734045
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jun 2023 12:36:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98AB860B43;
	Sat, 17 Jun 2023 10:36:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98AB860B43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686998183;
	bh=wlj2ps8BTC/UOTlofmzXePICmPtVcjVu9lal6d7q84o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2CJA1nAVuD3RiadLgVtTpUjVxKjla86u2TjUnxGKFwLbyX8AZA4hspILIEEWuJl2S
	 FoO79NlzIZB23d/ydE1J0yuQGmWvCdBIynSBQzRaJrHhfXJJWlMWxDqdM7l9sqYXGS
	 jcFxZCVTKD5zT4TEI2itCkXWkfOXLaH0xxx8161OLl4qChQWILkW44daZ660oE9RSU
	 PiShZ8hzjcjV9jZy21tppIWebr8F+3iNgQaTz5bJ3q9lllqSWf2ccrspNaZOdXxQcA
	 y0Ur4MdbtIzpqd3aQ8Y/gcetjZTDtn/gQWjTnANcMBJ9H2SG/JfyfZXOJkIpZgWeC1
	 uNWFoCH8PPGfQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vOpp0m-Og9rH; Sat, 17 Jun 2023 10:36:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E5B860B42;
	Sat, 17 Jun 2023 10:36:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E5B860B42
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 75C281BF82F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 10:36:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 44105402CE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 10:36:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44105402CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mnyTHVdCTgqO for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Jun 2023 10:36:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49D3A401D2
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 49D3A401D2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 10:36:14 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id
 4fb4d7f45d1cf-5195c85fbb2so2194728a12.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 03:36:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686998172; x=1689590172;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/1x1TufhGga+vhofQhW3+rOkuF8WKt/IeOnnrmJtrog=;
 b=XUCuru2FtKEjBHLzYMwmDwoy0SBu3/NKVdCqXPUy+VFyAfUqCF97mAAoErKoULwCVb
 uvEL+slnnPBFqFw3hK1cOTXat24CjlwLaVf+JWuYnE8ZLLATa9LAByyJ6jDfW+CGp7+I
 KbctQ19LVhWEgFn2HGO1X4KdvYtdcfqTf2nfCbRGMuhvmZrZ3D0VuXIPoSYsd/jml8OI
 dWRTLBqCxSmVoybWbADxOJc90t73SL/3xj7DHmG1UpIXUJVJi+BwX8gwDoTfL304y9Gm
 kO5v4ToLxVBFkdIHDI3RTk4auKtv6UCSOgn+UwuluFxDcpJkJyjES9uESMYh4vNKOcai
 lbZQ==
X-Gm-Message-State: AC+VfDy75XuDM2JZ3jtFeQWDHesT256CE2zLc/MIopxTTquHYshg0I2z
 f8BBoPJKkwPM2/B/Bdyevn5ipw==
X-Google-Smtp-Source: ACHHUZ7OhqQdwYiCXLWpW4pNAkdtQLu1xzSJt4dCibpw5uqj3GQ/nixFPiQmcTPdSiQpJVj0JEscIg==
X-Received: by 2002:a17:907:7204:b0:94f:5847:8ac with SMTP id
 dr4-20020a170907720400b0094f584708acmr4832912ejc.51.1686998172291; 
 Sat, 17 Jun 2023 03:36:12 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 s22-20020a1709064d9600b00982881f1e2dsm4053734eju.84.2023.06.17.03.36.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Jun 2023 03:36:11 -0700 (PDT)
Date: Sat, 17 Jun 2023 12:36:09 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZI2MmaQ1NAggT+l6@nanopsycho>
References: <20230609121853.3607724-2-arkadiusz.kubalewski@intel.com>
 <20230612154329.7bd2d52f@kernel.org> <ZIg8/0UJB9Lbyx2D@nanopsycho>
 <20230613093801.735cd341@kernel.org> <ZImH/6GzGdydC3U3@nanopsycho>
 <DM6PR11MB465799A5A9BB0B8E73A073449B5AA@DM6PR11MB4657.namprd11.prod.outlook.com>
 <20230614121514.0d038aa3@kernel.org>
 <20230614122348.3e9b7e42@kernel.org> <ZIrldB4ic3zt9nIk@nanopsycho>
 <20230615093111.0ee762e4@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230615093111.0ee762e4@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1686998172; x=1689590172; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/1x1TufhGga+vhofQhW3+rOkuF8WKt/IeOnnrmJtrog=;
 b=BSLERsDAgGslIeEyq94ScS8bRLgPPRRRwT8Nf8n+6gest5CBJm7weH95XbHUWqLPrs
 lMqAZ5YohISaainT6DoT5KRo+06ct7IyRAWJITH8QiX+CKXNRf7RTEbj4ehIcYJxYtHJ
 S+tMFiI9UWNXT2a5hg0KLa/1NxteLO2ap4RvVkp9qGeFfK5FKir/7euwyrkgLckOtKmi
 Xn2ZIAD96h2+mraRrWLl1sWZ/1oEO7vpCWKa7qJYU0VpWfYwdunjJkr7fjK6tTnVnk6L
 LIWC6DFNj4ViFnScRoCYtPIpyJ2HWmk9OlLm6i3tklX7Kcc0HpSuhcjnvvvKwhWWp6Pq
 o8mA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=BSLERsDA
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 01/10] dpll: documentation on
 DPLL subsystem interface
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Jun 15, 2023 at 06:31:11PM CEST, kuba@kernel.org wrote:
>On Thu, 15 Jun 2023 12:18:28 +0200 Jiri Pirko wrote:
>> Yeah, that is what we had originally. This just pushes out the
>> different attr selection from the nest one level up to the actualy
>> nesting attribute.
>
>Oh no, no extra nesting. Let me try to fake up the output:

I wasn't implying any extra nesting.

>
>'pin': [{
> {'clock-id': 282574471561216,
>  'module-name': 'ice',
>  'pin-dpll-caps': 4,
>  'pin-id': 13,
>  'parent-device': [{'pin-id': 2, 'pin-state': 'connected'},
>                    {'pin-id': 3, 'pin-state': 'disconnected'}],
>  'parent-pin': [{'id': 0, 'pin-direction': 'input'},
>                 {'id': 1, 'pin-direction': 'input'}],
>  'pin-type': 'synce-eth-port'}

You messed up a bit. Should be:
parent-device : id
parent-pin : pin-id

That is basically my point. The fact if the parent is either device or
pin is carried inside the nest by either providing "id" or "pin-id".
So you add redundant info which could be source of mixups - as you
already demonstrated :)


>}]
>
>> One downside of this is you will have 2 arrays of parent objects,
>> one per parent type. Current code neatly groups them into a single array.
>> 
>> I guess this is a matter of personal preference, I'm fine either way.
>
>Yeah, could be.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
