Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE302740FE2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 13:15:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B69C822C3;
	Wed, 28 Jun 2023 11:15:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B69C822C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687950955;
	bh=EPxW/n5siQxoTA0ej5h79aJtuXt8Myebf0Ivubu5z1Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ycEmuHV4opz+66GMj3QjBznbkNw+txwN5xBMGmdIR2HwVee4tZQjDKxJ6/9JOWGII
	 i2UALh34xSpKdwYtN73+QRS9+xr1PsOL3HH87Ro7yYJWycLWiovYdEc+QMiY2VjTD1
	 WxVd6NhGiY2GdyJuJnd2ga7XxtNjib7VaV/fbuLY97srmIf0pQ+GjckbvjnQvNcIC/
	 QJxE2M6GR8r9gw2tSaKWoDmDX4eOHfsRrNGll0ISZlIy+EewyFRTEknNiCvZAJMg/J
	 wu8VVTP5tFzAug3Wsz7+JSsvzYnhTU6LrK75BUr8kkZq4ObkWVvcrtPeRq5pxNzzxA
	 F5Zd9Et0yUr0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nR4qIwfcuAGl; Wed, 28 Jun 2023 11:15:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4F6B81D11;
	Wed, 28 Jun 2023 11:15:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4F6B81D11
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3134A1BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 11:15:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 15FD381DE8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 11:15:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15FD381DE8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZnWMKh7q62Kh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 11:15:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2B2181D11
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E2B2181D11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 11:15:46 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id
 ffacd0b85a97d-311099fac92so7015505f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 04:15:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687950944; x=1690542944;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vYX8/ePECLgfWoMNpv2uZz3s+XofYXzTKNlcug8MZ0c=;
 b=GPMEF6Ct2rY4FNrIq1/UORMCNUFpK5UI436ZTA4WDfUTO3GBcNDXlMGxHPdXc6be5j
 HFUVKpHHLuUZBIPbOw6w0yX957U4xUGS/m5oCN70F5ZazRKaxx6KnSrP6V9Ft0UyL1Iq
 UJoftJ3ICIqcaf+/yhq0TUbryCdnZKo8LnRL960qv2GPhYUD28nQTEUqDPdWLocyoGbS
 3EOwi9IiQdUardKmT2xf/Xf7Id/jC5TxlY8yX46xoHRgv5gusG1CWL2GYrYCve6wkEqM
 OeUgTc5thPx+56iVwis6gkzdfa/SP/DdJMj2GS9IZQ8JoLiaFP9y52GK3838fAqBx+xx
 9Igw==
X-Gm-Message-State: AC+VfDzdSZq6zg2rAhPWbPQdLDcJcMDOsU8Hb+ICO4rihhEZOEYM4XNv
 WmcDz5J0gAt1H8GmFyktYZvW0w==
X-Google-Smtp-Source: ACHHUZ45owiPf7elrn+8tOw5ryHFm6Cke05JKdz0dMQUlVmsn5e6N8Sh+GX5X2BWx3ut2u/1kvQkxQ==
X-Received: by 2002:adf:f70c:0:b0:313:f07a:af3e with SMTP id
 r12-20020adff70c000000b00313f07aaf3emr7222410wrp.46.1687950943971; 
 Wed, 28 Jun 2023 04:15:43 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 g9-20020a5d5549000000b00307acec258esm13205270wrw.3.2023.06.28.04.15.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jun 2023 04:15:43 -0700 (PDT)
Date: Wed, 28 Jun 2023 13:15:41 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <ZJwWXZmZe4lQ04iK@nanopsycho>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
 <ZJq3a6rl6dnPMV17@nanopsycho>
 <DM6PR11MB4657084DDD7554663F86C1C19B24A@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB4657084DDD7554663F86C1C19B24A@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1687950944; x=1690542944; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=vYX8/ePECLgfWoMNpv2uZz3s+XofYXzTKNlcug8MZ0c=;
 b=fqqAWDgaS+bOqIJSzLWZRezOltTA++pw4kHhHgds2mzu/vkKTntgTtpCB6A6nB4cX6
 hpWgvj+S5sTJWYH0Kr+F1cT48fn2V/s+cwGaHSC58PY3OGaapWhbc+j1oQ6r2ZK9+pDU
 L44UyEgV5MeVhwUmZF/skaDGm5Bnn4ierQ3cDH9PGgKgd7ZzXFpkdqK1cvdP/P/UGO23
 7skNSyQMTluY4nBiLnhNfXUahZMNEBjKCRxR6um4/8HNQIF399N5KWDlvMMABmjfmhMD
 snPh3SdISJZmZJLu9mq2okO59gqWj1+uL+N5T2cryvuANcfRdh2roIRSES3h8TprrkEd
 /9tw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=fqqAWDga
Subject: Re: [Intel-wired-lan] [RFC PATCH v9 00/10] Create common DPLL
 configuration API
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
 "kuba@kernel.org" <kuba@kernel.org>,
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

Wed, Jun 28, 2023 at 11:15:11AM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Jiri Pirko <jiri@resnulli.us>
>>Sent: Tuesday, June 27, 2023 12:18 PM
>>
>>Fri, Jun 23, 2023 at 02:38:10PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>
>>>v8 -> v9:
>>
>>Could you please address all the unresolved issues from v8 and send v10?
>>I'm not reviewing this one.
>>
>>Thanks!
>
>Sure, will do, but first missing to-do/discuss list:
>1) remove mode_set as not used by any driver
>2) remove "no-added-value" static functions descriptions in
>   dpll_core/dpll_netlink
>3) merge patches [ 03/10, 04/10, 05/10 ] into patches that are compiling
>   after each patch apply
>4) remove function return values descriptions/lists
>5) Fix patch [05/10]:
>   - status Supported
>   - additional maintainers
>   - remove callback:
>     int (*source_pin_idx_get)(...) from `struct dpll_device_ops`
>6) Fix patch [08/10]: rethink ice mutex locking scheme
>7) Fix patch [09/10]: multiple comments on
>https://lore.kernel.org/netdev/ZIQu+%2Fo4J0ZBspVg@nanopsycho/#t
>8) add PPS DPLL phase offset to the netlink get-device API
>

You are missing removal of pin->prop.package_label = dev_name(dev); in
ice.


>Thank you!
>Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
