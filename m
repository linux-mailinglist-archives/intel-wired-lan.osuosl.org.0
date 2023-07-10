Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF0474CFD8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jul 2023 10:24:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 862F540530;
	Mon, 10 Jul 2023 08:24:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 862F540530
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688977448;
	bh=E6/dnyP7NcNGZhxhfzhSdQ5oV+YyydI/bmA90aPsrhE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V8LMi7X6n1ga3nWNpUWKROMAEjxokqSukNOFhLF78DEJeVP1oSLoa4z6gyHUkIggV
	 8eQw92p71AfUAuXnD83Y/IdE648W2MPprlWTyPa9m0VFQe/PIrROBVUiiRtvIbaGgh
	 hiJTJHZc6qGMWZAO0115VZcqH9j2B3zsKncTmxYTc3T9Li2lHy+ZyYEV8So6cosbVO
	 20AgVtYn1WOZ3A8iJ3HEeFaZJqjU3SMjbZRYeyI6QqyaFh7SIoOemJBYgOWE+6ElFH
	 jMJfd88w0U02Azb5KA96rc4E1CiwRa5g90jl+MOJ6G2weuGZyiiSfjNMXUteMuRm9O
	 XTc8QaqLXLjgQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xWCrvKs49JTU; Mon, 10 Jul 2023 08:24:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 277C840360;
	Mon, 10 Jul 2023 08:24:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 277C840360
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F4631BF429
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 08:24:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 35B00404C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 08:24:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35B00404C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TSZViRKZoqRX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jul 2023 08:23:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C7B640442
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C7B640442
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 08:23:58 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id
 a640c23a62f3a-9936b3d0286so549635266b.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 01:23:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688977436; x=1691569436;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lVVTTcakGIJzotpbfodORieW7nDILC8yQwEKuMOUYLA=;
 b=TT4lu3D3Ppg3cVe7dAJWjSdZPP6CsSFnZp0VJUJciA9565a7Cb7Jk63CQzLiDWck1P
 5o1ETJj7o/FsOZwoEacvsNm6IEgyKA0rz/VLaWl83/M1Hgl5bnXZZI/alJg3Unp7JsdH
 lFN20SQS4CHVJqE4k/gAVM9ySx8XhSrdimB3x3+mh6V+HnNySGE4fCd24iQi39OCAYcr
 FGq7jxUG9TLpCswvCtoU7OBN50pvzT8pbsdl6qcN/c0bX4/Avi6xBt4XBZOkhkgchzEh
 5jIEaMN7rtilRfKCxM8gPLZ3tXwM/XonLli+laAgFWH+K7jhw29yJB4y2P2hmtxtu9pH
 4/pg==
X-Gm-Message-State: ABy/qLZX6DCn0pTUgFnd5d6xzezqEx9bITSR5l/BpacogtZ0zzHzHhoG
 dhpwA3BpJIE2uz+9n66GPY/RHQ==
X-Google-Smtp-Source: APBJJlF/N78SzaPnYo5KIYgXXWBnknej6T2zV2RqWE8pAe5WopCVgqY0xM4CSFkpZNpYhf0+V/cUNg==
X-Received: by 2002:a17:906:101e:b0:993:fba5:cdf3 with SMTP id
 30-20020a170906101e00b00993fba5cdf3mr5110018ejm.6.1688977436009; 
 Mon, 10 Jul 2023 01:23:56 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 u2-20020a1709063b8200b0098e42bef732sm5733689ejf.183.2023.07.10.01.23.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Jul 2023 01:23:55 -0700 (PDT)
Date: Mon, 10 Jul 2023 10:23:53 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <ZKvAGSwbJWEQmESs@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-9-arkadiusz.kubalewski@intel.com>
 <ZISmmH0jqxZRB4VX@nanopsycho>
 <DM6PR11MB4657161D2871747A7B404EDD9B5FA@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZJLtR0c+tvCbUgri@nanopsycho> <ZJ0hQRcm6S05r8VE@nanopsycho>
 <DM6PR11MB465726733894C7E64AD3367E9B29A@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB465726733894C7E64AD3367E9B29A@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1688977436; x=1691569436; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=lVVTTcakGIJzotpbfodORieW7nDILC8yQwEKuMOUYLA=;
 b=v8PbxExQdeZ1rHkHw7LZ/7j9U0WaA1dkJRr1esV51tDnEYnz1yXdBnwheipucQw7iU
 Dwny0J0H5BLnpfGCG5wzHd2FnzlN2eKCW8gMzeSEoxaUGxTKsnw6EvOsEUU4TK67JfFM
 Fphyzekktczmyd9ASIWTNFAeo2y/sK6qzV5gvKJEWK5UQrHLGo1bEQy410Gg0pjYZAno
 l+f8A80ndIBgzckm1LdIX5bAeQYPaJaXuB13ipB3GplwZOJY/GVnmBg1MPjebry6Ueg9
 L5E9ztuma8giElufrDqCE9zHYDHjDcl1vKgQ9QXsO3zircBl8jFsHwzGNf5dL/40PtRb
 4zSQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=v8PbxExQ
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 08/10] ice: implement dpll
 interface to control cgu
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

Mon, Jul 03, 2023 at 02:37:18PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Jiri Pirko <jiri@resnulli.us>
>>Sent: Thursday, June 29, 2023 8:14 AM
>>
>>Wed, Jun 21, 2023 at 02:29:59PM CEST, jiri@resnulli.us wrote:
>>>Mon, Jun 19, 2023 at 10:34:12PM CEST, arkadiusz.kubalewski@intel.com
>>wrote:
>>>>>From: Jiri Pirko <jiri@resnulli.us>
>>>>>Sent: Saturday, June 10, 2023 6:37 PM
>>>>>
>>>>>Fri, Jun 09, 2023 at 02:18:51PM CEST, arkadiusz.kubalewski@intel.com
>>>>>wrote:
>>>>>
>>>>>[...]
>>>>>
>>>>>
>>>>>>+static int ice_dpll_mode_get(const struct dpll_device *dpll, void *priv,
>>>>>>+			     enum dpll_mode *mode,
>>>>>>+			     struct netlink_ext_ack *extack)
>>>>>>+{
>>>>>>+	*mode = DPLL_MODE_AUTOMATIC;
>>>>>
>>>>>I don't understand how the automatic mode could work with SyncE. The
>>>>>There is one pin exposed for one netdev. The SyncE daemon should select
>>>>>exacly one pin. How do you achieve that?
>>>>>Is is by setting DPLL_PIN_STATE_SELECTABLE on the pin-netdev you want to
>>>>>select and DPLL_PIN_STATE_DISCONNECTED on the rest?
>>>>>
>>>>>
>>>>>[...]
>>>>
>>>>AUTOMATIC mode autoselects highest priority valid signal.
>>>>As you have pointed out, for SyncE selection, the user must be able to
>>>>manually
>>>>select a pin state to enable recovery of signal from particular port.
>>>>
>>>>In "ice" case there are 2 pins for network PHY clock signal recovery, and
>>>>both
>>>>are parent pins (MUX-type). There are also 4 pins assigned to netdevs
>>>>(one per
>>>>port). Thus passing a signal from PHY to the pin is done through the MUX-
>>>>pin,
>>>>by selecting proper state on pin-parent pair (where parent pins is highest
>>>>prio
>>>>pin on dpll).
>>>
>>>Could you show me some examples please?
>>
>>Arkadiusz, could you please reply to this?
>>Thanks!
>>
>
>Sure, sorry for the delays, let's try that.
>
>'ice' use case:
>Enabling a PHY clock recovery for DPLL_MODE_AUTOMATIC dpll (ID#0) with PHY
>recovered clock signals (PIN_ID#13) being muxed using MUX-type pin (PIN_ID#2)
>
>1. Set MUX-type pin to state selectable and highest priority on a dpll device
>(or make sure it is already configured):
>CMD_PIN_SET:
>	PIN_ID			2
>	PIN_PARENT_DEVICE	(nest)
>		ID		0
>		PIN_STATE	SELECTABLE
>		PIN_PRIO	0
>(assume all the other pins have prio >=1)
>
>2. Set connected state on a pin-parent_pin tuple where parent is a pin from #1
>CMD_PIN_SET:
>	PIN_ID			13
>	PIN_PARENT_PIN		(nest)
>		PIN_ID		2
>		PIN_STATE	CONNECTED

How does this look from the perspective of a SyncE flow. Let's say you
have eth0 and eth1, both is connected with a DPLL pin. Could you show
how you select eth0 and then eth1?



>
>Thank you!
>Arkadiusz
>
>>>
>>>
>>>>
>>>>Thank you!
>>>>Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
