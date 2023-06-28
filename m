Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1234C7411F4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 15:10:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2733382055;
	Wed, 28 Jun 2023 13:10:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2733382055
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687957803;
	bh=imsO3VKZHoRjuwCIShUbu+ghqXVFD9hJCCN1IxwNnK0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WPg8PaXBZ7gjAIJ7O1x7hZjgHr2C62TAPPc7I/i8jYqgVi4JH5wJy5Hcp8Te6K5hG
	 r/56oBZNZwJ5SCzg4Cjtq3cEQItqzIln55pOgMrmrR1H6HjdZSVZXCgqBD0jmnrN/q
	 jU8QbHXpB9weQER2URLdMEKPN8D8kFR/+XXIr3qJxouDvmXgukiFdEM1laQSDDkZji
	 5F904N402u0a7lWLixjOWU4/rg9+CcGRgmIDgz8t403NSZZeQbbSywcTlH+GLUR2gA
	 cveiquVdgdEZ2iUXunZ/Itskfm0SX8gORAGZj8oj73Qd15LtTRt9sJe240mwxnOubA
	 wO3Of2ooH73uw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RwtA3gTBmsrq; Wed, 28 Jun 2023 13:10:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0BD081BFA;
	Wed, 28 Jun 2023 13:10:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0BD081BFA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 41D271BF966
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 13:09:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 19A1581839
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 13:09:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19A1581839
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3mmudzbQOT-b for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 13:09:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D1B281778
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3D1B281778
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 13:09:54 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id
 4fb4d7f45d1cf-51d91e9b533so4659252a12.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 06:09:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687957793; x=1690549793;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=k76YrPTzyyjATZAkPWsngOApRdksnz4938tVnCuwxy0=;
 b=kt0thv63poDuf0jJOu9RiH4OQGwCqZ5UCRY1h9lSYsm5gLMRK9L2V33bZujnzRuNrq
 toLpR4swVec1TRAJOa1/T68mZelZPotem/ANiciut7zCErg8k3iaDpMYJLOCUg+fMiqN
 l3mRYdiJUZTCRLFuFuBwu9sI5HTeDJV3c6rkJYi1IuHY+FFfz2GvJAVD1rdKRoqe91V2
 aPfGGtSWu5t7coyhKLMcVrShTkcHMwdhH2P+x+00f49JsGSy55GulmwfMLHN7KUFogXw
 o1Cep2NbJhIpmaHiCmYAZrGfeRmiddYR65e3HIaOm9ae66vhVp23YzOnmBkv23+oS7pA
 tSig==
X-Gm-Message-State: AC+VfDwbMzoErQAv6AfWSDAnoqdkR8EwjP+xWqoVyLcBMSDovUqmzJs6
 1StOP99r4Re0iLH6slZlTVyrIg==
X-Google-Smtp-Source: ACHHUZ4FQ7JmqxI+YoYuBXCwpW4UP8TYDQSff2DdAMDuypxC1caOuVE2XCGI/Z0rJ4e0navjgsMuwg==
X-Received: by 2002:a05:6402:1496:b0:51d:91ef:c836 with SMTP id
 e22-20020a056402149600b0051d91efc836mr6548808edv.32.1687957792701; 
 Wed, 28 Jun 2023 06:09:52 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 s19-20020a056402165300b0051d9df5dd2fsm2609023edx.72.2023.06.28.06.09.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jun 2023 06:09:51 -0700 (PDT)
Date: Wed, 28 Jun 2023 15:09:50 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <ZJwxHucKMwCQMMVM@nanopsycho>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
 <ZJq3a6rl6dnPMV17@nanopsycho>
 <DM6PR11MB4657084DDD7554663F86C1C19B24A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <DM6PR11MB4657A1ACB586AD9B45C7996E9B24A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <2e9ce197-2732-d061-b11d-4f4513af6abc@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2e9ce197-2732-d061-b11d-4f4513af6abc@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1687957793; x=1690549793; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=k76YrPTzyyjATZAkPWsngOApRdksnz4938tVnCuwxy0=;
 b=ScgYnUQe6P6kGA/N6ZPo3yO417tWRwpx3GvemyrdtyZVRiMKBb3mX7VI2GC9diLcMu
 CBglKEUKyw7sx2XjP/XbJOD3iNnN+N9GWxQ1mlTSXafAi8ZUGZ1eDbHmnkr5clkYOrjz
 8GDQoZ2Tp1PraxZ/pmeSyq/QVCRc/QRFE5TFbBS9xF88g2abpug24dt9lgXFX5GM+yij
 RiioISv2/N2ZwCj6vMlrza/ubjNUMvoHHzw+bfeT37sBUEtzdgN4KJIymYZ3Ku4VDzhk
 Mj4zVAxzoFL1AljyNcajNKEfjlIxauzw/vVgq7tTHszhYZyGB1ntaUvlngn31dONZgTd
 zmEA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=ScgYnUQe
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
 "kuba@kernel.org" <kuba@kernel.org>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "airlied@redhat.com" <airlied@redhat.com>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
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

Wed, Jun 28, 2023 at 01:11:19PM CEST, vadim.fedorenko@linux.dev wrote:
>On 28/06/2023 10:27, Kubalewski, Arkadiusz wrote:
>> > From: Kubalewski, Arkadiusz
>> > Sent: Wednesday, June 28, 2023 11:15 AM
>> > 
>> > > From: Jiri Pirko <jiri@resnulli.us>
>> > > Sent: Tuesday, June 27, 2023 12:18 PM
>> > > 
>> > > Fri, Jun 23, 2023 at 02:38:10PM CEST, arkadiusz.kubalewski@intel.com
>> > wrote:
>> > > 
>> > > > v8 -> v9:
>> > > 
>> > > Could you please address all the unresolved issues from v8 and send v10?
>> > > I'm not reviewing this one.
>> > > 
>> > > Thanks!
>> > 
>> > Sure, will do, but first missing to-do/discuss list:
>> > 1) remove mode_set as not used by any driver
>> > 2) remove "no-added-value" static functions descriptions in
>> >    dpll_core/dpll_netlink
>> > 3) merge patches [ 03/10, 04/10, 05/10 ] into patches that are compiling
>> >    after each patch apply
>> > 4) remove function return values descriptions/lists
>> > 5) Fix patch [05/10]:
>> >    - status Supported
>> >    - additional maintainers
>> >    - remove callback:
>> >      int (*source_pin_idx_get)(...) from `struct dpll_device_ops`
>> > 6) Fix patch [08/10]: rethink ice mutex locking scheme
>> > 7) Fix patch [09/10]: multiple comments on
>> > https://lore.kernel.org/netdev/ZIQu+%2Fo4J0ZBspVg@nanopsycho/#t
>> > 8) add PPS DPLL phase offset to the netlink get-device API
>> > 
>> > Thank you!
>> > Arkadiusz
>> 
>> If someone has any objections please state them now, I will work on
>> all above except 5) and 7).
>> Vadim, could you take care of those 2 points?
>> 
>Yeah, sure, I'll update 5 and 7.
>I'm not sure about 8) - do we really need this info, I believe every
>supported DPLL device exports PTP device as well. But I'm Ok to add this
>feature too.

Could you add the notification work while you are at it? I don't want
that to be forgotten. Thanks!

>
>> Thank you!
>> Arkadiusz
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
