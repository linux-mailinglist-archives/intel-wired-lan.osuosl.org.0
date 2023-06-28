Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CC2741337
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 16:02:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD93B41687;
	Wed, 28 Jun 2023 14:02:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD93B41687
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687960957;
	bh=LApheNVUQGYK7XrWQo+p9u++/bPsIyXBDcVesJZrpaU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XmvJV2xiI3rdt+zysO5C6hxZ1mcZPPYdyOXG1T59xb0SeA/SSxOZMnJmIVzizRH8x
	 qFdvLxb3ePyN+pNTVJSJ2+sP7tapvDhF0w4sjw9VpAr0oFO42gcCSSeBwrrTEQy9Mf
	 aasVwnsunrZfXWYC78NBV3JQvJ34oukulamJJnGit8axQHyGCxM23CY1ikfYoNPwiO
	 EcsjM0fxt7irYQvLa8pMbzEzooW0xzEGRbLueZxu9zecgpyTFw6B0oJaN3Zbo35zGy
	 VTgmh+7cNbrAJvGRd7O37+Iol/KgnYk+smymvmaDzRMxpXfHcQpeFmSJ65woHrliiN
	 5EGzkojK6FNZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eswEXTJlCK7g; Wed, 28 Jun 2023 14:02:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CAEE41685;
	Wed, 28 Jun 2023 14:02:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4CAEE41685
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6FEF1BF966
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 14:02:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8BF9660D9D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 14:02:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BF9660D9D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7whM1y0pM9T9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 14:02:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62CC260ABF
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 62CC260ABF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 14:02:27 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id
 2adb3069b0e04-4f973035d60so8051538e87.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 07:02:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687960945; x=1690552945;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NeJJDtPNApCUCSNLbnRFD2Juhjv5XOx3haoMLR3t3E0=;
 b=K1gLXMRJy2Nu6gcFbogXYZs3JyZ2SAaE/1ioTtatp/a/oDMEiWSjrgsRxY39CoPp/z
 Xr9Zw65PJQ5wxSTbYj0brbVBrGoTVDjiKuqlMKDpZo4fJw8+bPpXA0gxAG+qlf1RJnGh
 sFikuvbslu2wYMuiNQEdM1nS9ahWBwsafUcMDm9Ikq+Ktj+lmrOJZiyhtjm/8BzAIHIY
 CrIhn9zC1kYmVd+Lt8V9Ovx9F4Hk2OTcl1nvcYHjLmkwr2b9PecRrg04xRR5iqdiFkmR
 QP33oOscbO4o0OOZP4LnDas591iyI4cg4rL4jeptdrqTz4Hv16KkS7ja8V+LK6jHTZq3
 MfXQ==
X-Gm-Message-State: AC+VfDzLBm/3n5kAY1nBbzFm9fVGt+u9bkOoVnyPgOqNDkNxKmGyHWnI
 kWDIBr+6c7orQLF1HzduVykrGQ==
X-Google-Smtp-Source: ACHHUZ5ZxgNTxIxoQXOSx9k7rDEhnxIvqJQLYYOVQL1GcheSfi0K/9HAYhI29JpjcdxZaZ1hTbJv2w==
X-Received: by 2002:a05:6512:3412:b0:4fb:242:6e00 with SMTP id
 i18-20020a056512341200b004fb02426e00mr7754216lfr.41.1687960945439; 
 Wed, 28 Jun 2023 07:02:25 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 k8-20020a7bc408000000b003fba87298cesm4354984wmi.45.2023.06.28.07.02.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jun 2023 07:02:24 -0700 (PDT)
Date: Wed, 28 Jun 2023 16:02:23 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <ZJw9b9RQamu0cLN+@nanopsycho>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
 <ZJq3a6rl6dnPMV17@nanopsycho>
 <DM6PR11MB4657084DDD7554663F86C1C19B24A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <DM6PR11MB4657A1ACB586AD9B45C7996E9B24A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <2e9ce197-2732-d061-b11d-4f4513af6abc@linux.dev>
 <ZJwxHucKMwCQMMVM@nanopsycho>
 <4ebfa74e-8998-a1af-e6b9-3701008900ec@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4ebfa74e-8998-a1af-e6b9-3701008900ec@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1687960945; x=1690552945; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=NeJJDtPNApCUCSNLbnRFD2Juhjv5XOx3haoMLR3t3E0=;
 b=ZK23Wz5Z8GgdygT07do/GeGr7NCgPtbZJrbEsqK+sYNbzD9dq931xi8plPBr2KO/YC
 c2ElDHPq2AXJLH8RWwZpB9knsmuQiwkA75793nzLpisqpqvUa59/U20kPPeRdhQAkFFo
 EcsePNHr4CjPy3GTkqp1HQZS4o+ge1jZitdNMcjjH282ksos55LbhmkEg5xKNUQUAHkW
 6elrjwozhdUiF5BEcoPrNlp7uOlNgyP51atS4qs5XQofDSmEJm98Sjm1IBUOaK7EQWtK
 w84yxmQahBhA3t//6ifI1+JN4mdssr5CTku4Y6hA7S2ImLAYmYaBhDJ+IlVLNrGKFrhO
 3CqQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=ZK23Wz5Z
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
 "airlied@redhat.com" <airlied@redhat.com>,
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
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Jun 28, 2023 at 03:22:00PM CEST, vadim.fedorenko@linux.dev wrote:
>On 28/06/2023 14:09, Jiri Pirko wrote:
>> Wed, Jun 28, 2023 at 01:11:19PM CEST, vadim.fedorenko@linux.dev wrote:
>> > On 28/06/2023 10:27, Kubalewski, Arkadiusz wrote:
>> > > > From: Kubalewski, Arkadiusz
>> > > > Sent: Wednesday, June 28, 2023 11:15 AM
>> > > > 
>> > > > > From: Jiri Pirko <jiri@resnulli.us>
>> > > > > Sent: Tuesday, June 27, 2023 12:18 PM
>> > > > > 
>> > > > > Fri, Jun 23, 2023 at 02:38:10PM CEST, arkadiusz.kubalewski@intel.com
>> > > > wrote:
>> > > > > 
>> > > > > > v8 -> v9:
>> > > > > 
>> > > > > Could you please address all the unresolved issues from v8 and send v10?
>> > > > > I'm not reviewing this one.
>> > > > > 
>> > > > > Thanks!
>> > > > 
>> > > > Sure, will do, but first missing to-do/discuss list:
>> > > > 1) remove mode_set as not used by any driver
>> > > > 2) remove "no-added-value" static functions descriptions in
>> > > >     dpll_core/dpll_netlink
>> > > > 3) merge patches [ 03/10, 04/10, 05/10 ] into patches that are compiling
>> > > >     after each patch apply
>> > > > 4) remove function return values descriptions/lists
>> > > > 5) Fix patch [05/10]:
>> > > >     - status Supported
>> > > >     - additional maintainers
>> > > >     - remove callback:
>> > > >       int (*source_pin_idx_get)(...) from `struct dpll_device_ops`
>> > > > 6) Fix patch [08/10]: rethink ice mutex locking scheme
>> > > > 7) Fix patch [09/10]: multiple comments on
>> > > > https://lore.kernel.org/netdev/ZIQu+%2Fo4J0ZBspVg@nanopsycho/#t
>> > > > 8) add PPS DPLL phase offset to the netlink get-device API
>> > > > 
>> > > > Thank you!
>> > > > Arkadiusz
>> > > 
>> > > If someone has any objections please state them now, I will work on
>> > > all above except 5) and 7).
>> > > Vadim, could you take care of those 2 points?
>> > > 
>> > Yeah, sure, I'll update 5 and 7.
>> > I'm not sure about 8) - do we really need this info, I believe every
>> > supported DPLL device exports PTP device as well. But I'm Ok to add this
>> > feature too.
>> 
>> Could you add the notification work while you are at it? I don't want
>> that to be forgotten. Thanks!
>
>Sure, Jiri, I'm working on it for ptp_ocp.

Yep, cool!

>
>> > 
>> > > Thank you!
>> > > Arkadiusz
>> > 
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
