Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D09D731517
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 12:18:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01633418ED;
	Thu, 15 Jun 2023 10:18:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01633418ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686824322;
	bh=93mvlxbGUZDvs4ckheCjJ4vykim0OKzoZwJJqDEy/fo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Rb2FF+7tCq00jQy5eTB2l8yILvTedCG67Z+B/tvf0jw+uz9LTjhbzsTDUZm40BqEb
	 Sfw3X3YYZSkRywW+2gek1yfTzLGyCxzwfZDlMcbqO54SW94SDOgOtmJKZSLMCEf2tm
	 Z6Bg+HW8vnw/M8Vr0lvRjk+EBypLnUV7loq3oXNGnmf3UeLur4wql8o0Z2RjMeoNrK
	 pcC+1pPBBhFt0ZMYeD+HaaD4wA0m2BaFAM/WtDsaGI0rbHxq9rBGjPyikv+mjIvVAI
	 zcr5VmGy41GUZopbxZxoJlLeqzXsOv37TMLkKdVugw546vE37luq0biOej6aL7ceuc
	 rwUeThm4fNrAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nV4JYoNszY3s; Thu, 15 Jun 2023 10:18:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E006240114;
	Thu, 15 Jun 2023 10:18:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E006240114
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 879C61BF280
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 10:18:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5675B605A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 10:18:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5675B605A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bgNOBmZJBTfL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 10:18:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E1B9600C5
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4E1B9600C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 10:18:32 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id
 2adb3069b0e04-4f63ab1ac4aso10080382e87.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 03:18:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686824310; x=1689416310;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Ap56JKyLvPpMQr70iQfAfA8ozIFkekLl2MWDnBSTZaU=;
 b=OXf4ewNta/pzdIvnx76HH16X8HE1ndOTGuD6zmFmC0MiGzqLzZYC5eCukygG4yrtQc
 Vpo+eE6xObk0bS7w6b1h7EslxNSLWTBGXu5cdGGUNmRbp1fYS7ovTbihLzQeEsc5iaST
 3CrkwrIKIZeqL7IBWrHYzq2pKkqlkIgdjpptMWJIve9PeAukyDhD5wm9+xmwOveNPSG0
 1REJ90bMum6eyhF2p2rX0aSTIRd0Pxf0SAo3XZihtRKWj0y5chDo+WTYEcRToITLjNil
 cdtPNnwu0OvyKjTdtkqyxHtV6hXckKRT9Q83Ogp0mLQFTt+GY+xkOcGAilN1GkXZ6Dyo
 whOA==
X-Gm-Message-State: AC+VfDyheVaAPRyVayt/kpli3sYOpIdPDGj3jeBQlb1nxocFAp9mIgx9
 B+wpMIB8FJLQONLVELu5BNs2sA==
X-Google-Smtp-Source: ACHHUZ6/50vU8AQuSAyGpNppIftO2bSH+nwKhe2pIDi3Dw6x7zHyzTV4OzfNc/SfSMarEfxr7QqB+A==
X-Received: by 2002:a05:6512:329c:b0:4f6:3c67:ddfc with SMTP id
 p28-20020a056512329c00b004f63c67ddfcmr9899222lfe.23.1686824310334; 
 Thu, 15 Jun 2023 03:18:30 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 i17-20020a5d6311000000b0030fae360f14sm15218538wru.68.2023.06.15.03.18.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jun 2023 03:18:29 -0700 (PDT)
Date: Thu, 15 Jun 2023 12:18:28 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZIrldB4ic3zt9nIk@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-2-arkadiusz.kubalewski@intel.com>
 <20230612154329.7bd2d52f@kernel.org> <ZIg8/0UJB9Lbyx2D@nanopsycho>
 <20230613093801.735cd341@kernel.org> <ZImH/6GzGdydC3U3@nanopsycho>
 <DM6PR11MB465799A5A9BB0B8E73A073449B5AA@DM6PR11MB4657.namprd11.prod.outlook.com>
 <20230614121514.0d038aa3@kernel.org>
 <20230614122348.3e9b7e42@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230614122348.3e9b7e42@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1686824310; x=1689416310; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Ap56JKyLvPpMQr70iQfAfA8ozIFkekLl2MWDnBSTZaU=;
 b=G7hdmIzBDETiEE5iMiHb3AGQB0YjHcndkZpI2wORxM972znVrv9oRL68b7oJ3paSIL
 M0CfSVHPU/dQGd3Zbs8iOIHbqceKMXPH6sd1qg0tvO9l6+ZEs9RbohLc8TkXSCkcJcWP
 LWw0Fi37tmlaeLzfgDnd49ozjgOE+6Yu1v56s6fn00KqlK4XeHUFOEZsPKcTXP2ttIAS
 PbrQhhj9P4fQ6zYIN7UF75Waa78doFwEnrLiOOrDV3Az2YCLA4rV7XLkhBN+9+QPyLZD
 abvxr6mklhO6N4Bo8a+9vOujXj/KQGy5p7DH22a+qo2ebd2tL5uun6hsdjuafKjIuGMf
 yRKg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=G7hdmIzB
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

Wed, Jun 14, 2023 at 09:23:48PM CEST, kuba@kernel.org wrote:
>On Wed, 14 Jun 2023 12:15:14 -0700 Jakub Kicinski wrote:
>> On Wed, 14 Jun 2023 12:21:29 +0000 Kubalewski, Arkadiusz wrote:
>> > Surely, we can skip this discussion and split the nest attr into something like:
>> > - PIN_A_PIN_PARENT_DEVICE,
>> > - PIN_A_PIN_PARENT_PIN.  
>> 
>> Yup, exactly. Should a fairly change code wise, if I'm looking right.
>                               ^ small

Yeah, that is what we had originally. This just pushes out the
different attr selection from the nest one level up to the actualy
nesting attribute.

One downside of this is you will have 2 arrays of parent objects,
one per parent type. Current code neatly groups them into a single array.

I guess this is a matter of personal preference, I'm fine either way.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
