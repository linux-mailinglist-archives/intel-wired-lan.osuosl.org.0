Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3581C74ED57
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 13:52:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A636610AE;
	Tue, 11 Jul 2023 11:52:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A636610AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689076376;
	bh=WKldy8MIllt15pTKy6X2COt3eryDTz5slREKGVOFZWs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kon6vCiugh/AmsMYIGJFO4GUKTvHIhzCqNekUL9oL1VDib44ajq1XLDyw1xNbYXCa
	 OR+KiTT16aKHzRj4+3cZLj+juDtmbdlhkRBSzVJKj8ENOeAh4JX4wmb2fNm6R6hXH3
	 d63lH4Tb+vH4hrvPGJZ8pYn2R1/NZp5jexmWFk9hsj63MgEV+bbi85DKoBwajhP+Gb
	 56zTDLFfm4AoWt/8sOPELfjwTGlNDLkI/2DKx0q69ybdZttR9AX6ZoFT1BnGHWzRWP
	 4DdwGC2LeqiWdJRv5Ij2ulwQ8OVR/af5ErD8q43aWmjH2EAtpb9Lo9U8Cd5pjin6iY
	 ojJ4QB+LGxWng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sNhm7Uac49sH; Tue, 11 Jul 2023 11:52:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19529610A9;
	Tue, 11 Jul 2023 11:52:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19529610A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ADC3A1BF422
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 11:52:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 83574417FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 11:52:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83574417FA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mQBOcxF9eDjg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 11:52:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BD19417E0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4BD19417E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 11:52:47 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id
 4fb4d7f45d1cf-51e590a8ab5so2738995a12.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 04:52:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689076366; x=1691668366;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VMmzAbnQPb+hff08oGBX7AMmQrEjQkPWbeWYbWnEb2s=;
 b=BueuzeF2llNIYUIYJ59IO10z5o80QKtw2aYp5YDcn8mCv3qqSgHv2Sb31hYGzDHCm5
 8mrweb3KCQ9hQNpVCXETLnMKjoFgfxIETh3yw02HmMBtpdRIyCzr6ZhF12rUTlcqRedl
 dxbbw3qlUXQWtJZJ4E3lpJl2biNIheOHXDMRP5V7ABb6utw6JgSYsccBwvoWk24z7I9s
 2zGfUNNQlaQaSlRq3dwqdssTmFiVn5PQEbmsk8gEadbx1RMYlnJ4v13ZyitaSfuVHWqi
 v+lbpFa5wQrD++MfstTOhDlf+hxZTNzJ1uCz5vL2RQ1HMaWaHweWiGSMUeU6v1uZLZUN
 pSEw==
X-Gm-Message-State: ABy/qLbPqToDAkCYCj31Mz1ezeJL/E6bjVONTNVDEOltjDsCbxw/56cD
 oggeMBSfSHu6H5q6SIcbPtF+Hg==
X-Google-Smtp-Source: APBJJlFxRCgoFvFTryd/EnnLREOPOgp5+SxcfOYu5/wDWMNeLe4NvM0dWgV+6D/1iKEYw/AVIF+zFw==
X-Received: by 2002:a05:6402:506:b0:51e:26c8:25f7 with SMTP id
 m6-20020a056402050600b0051e26c825f7mr14275781edv.42.1689076365929; 
 Tue, 11 Jul 2023 04:52:45 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 u8-20020aa7d888000000b0051e0f21c43fsm1148663edq.31.2023.07.11.04.52.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Jul 2023 04:52:45 -0700 (PDT)
Date: Tue, 11 Jul 2023 13:52:43 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <ZK1CizcqjqO1L/RQ@nanopsycho>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
 <ZJq3a6rl6dnPMV17@nanopsycho>
 <DM6PR11MB4657084DDD7554663F86C1C19B24A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZJwWXZmZe4lQ04iK@nanopsycho>
 <DM6PR11MB4657751607C36FC711271D639B30A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZKv1FRTXWLnLGRRS@nanopsycho>
 <DM6PR11MB46575D14FFE115546FDC9DEB9B31A@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB46575D14FFE115546FDC9DEB9B31A@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1689076366; x=1691668366; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=VMmzAbnQPb+hff08oGBX7AMmQrEjQkPWbeWYbWnEb2s=;
 b=R6I4rQhZNuJhcRNVBlXhhbzoUBbtJugUPtDeDqspmlhc0LV6PhoXCtdxQT2Fj0bM/Z
 D3kIChr40ply4orCGt+9ajW59qGsXI0q8dwmTjUCDnDH0ulp9uyX3O+SsEKbO2t7vinl
 8gTJudbGuaMlUr/F2U1aCITw8lqIDA7UGsx63ZT1ftAReQn3Gp7VbkcsmETP/cRAyQai
 lkIOqNqDJFzyv3RRj/Q+MFuMldUziVBZazHL8K6x6ggiatiMyxzswv65kZTUd+/j30i/
 ceCU0hZSdHB7C1BCm/DJGmgVIEJr/TryA/39HtCJ72a1xnXsajO8AG8nwixG6ViSclLN
 u3GA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=R6I4rQhZ
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

Tue, Jul 11, 2023 at 12:34:11PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Jiri Pirko <jiri@resnulli.us>
>>Sent: Monday, July 10, 2023 2:10 PM
>>
>>Mon, Jul 10, 2023 at 12:07:30PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>>>From: Jiri Pirko <jiri@resnulli.us>
>>>>Sent: Wednesday, June 28, 2023 1:16 PM
>>>>Wed, Jun 28, 2023 at 11:15:11AM CEST, arkadiusz.kubalewski@intel.com
>>wrote:
>>>>>>From: Jiri Pirko <jiri@resnulli.us>
>>>>>>Sent: Tuesday, June 27, 2023 12:18 PM
>>>>>>
>>>>>>Fri, Jun 23, 2023 at 02:38:10PM CEST, arkadiusz.kubalewski@intel.com
>>>>>>wrote:
>>>>>>
>>>>>>>v8 -> v9:
>>>>>>
>>>>>>Could you please address all the unresolved issues from v8 and send v10?
>>>>>>I'm not reviewing this one.
>>>>>>
>>>>>>Thanks!
>>>>>
>>>>>Sure, will do, but first missing to-do/discuss list:
>>>>>1) remove mode_set as not used by any driver
>>>
>>>I have implemented in ice (also added back the DPLL_MODE_FREERUN).
>>
>>Uh :/ Why exactly is it needed in this initial submission?
>>
>
>Without mode-set there is no need for device-set at all, right?
>So it is better to implement at least one set command, so we don't
>need remove device-set command entirely.

The enum cmd valu could stay as a placeholder, the rest can go.


>
>>
>>>
>>>>>2) remove "no-added-value" static functions descriptions in
>>>>>   dpll_core/dpll_netlink
>>>
>>>Removed.
>>>
>>>>>3) merge patches [ 03/10, 04/10, 05/10 ] into patches that are compiling
>>>>>   after each patch apply
>>>
>>>Hope Vadim will decide on this, the thing is merging in two patches
>>>doesn't make much sense as there won't be any linking until both patches
>>>are there, so most sense it would be if 3 are merged into one, but
>>>then we will be back to one big blob patch issue.
>>>
>>>>>4) remove function return values descriptions/lists
>>>
>>>Fixed.
>>>
>>>>>5) Fix patch [05/10]:
>>>>>   - status Supported
>>>>>   - additional maintainers
>>>>>   - remove callback:
>>>>>     int (*source_pin_idx_get)(...) from `struct dpll_device_ops`
>>>>>6) Fix patch [08/10]: rethink ice mutex locking scheme
>>>
>>>Fixed.
>>>
>>>>>7) Fix patch [09/10]: multiple comments on
>>>>>https://lore.kernel.org/netdev/ZIQu+%2Fo4J0ZBspVg@nanopsycho/#t
>>>>>8) add PPS DPLL phase offset to the netlink get-device API
>>>>>
>>>
>>>Added few things on this matter
>>>- 1 dpll level attribute:
>>>  - phase-shift - measuring the phase difference between dpll input
>>>    and it's output
>>>- 1 dpll-pin tuple level attribute:
>>>  - pin-phase-adjust - set/get phase adjust of a pin on a dpll
>>>- 2 pin level attributes:
>>>  - pin-phase-adjust-min - provide user with min value that can be set
>>>  - pin-phase-adjust-max - provide user with max value that can be set
>>>- a constant:
>>>  - DPLL_PHASE_SHIFT_DIVIDER similar to DPLL_TEMP_DIVIDER for producing
>>>    fraction value of measured DPLL_A_PHASE_SHIFT
>>
>>Again, why do we need this in this initial submission? Why it can't be a
>>follow-up patchset to extend this? This way we never converge :/
>>Please focus on what we have now and bring it in. Let the extensions to
>>be addressed later on, please.
>>
>
>Well AFAIK, RHEL is doing some monitoring software, so the end-users need this.

They need it for the initial submission? Why? Why can't they wait 1 week
for follow-up patchset?


>
>>
>>
>>>- implemented in dpll netlink and in ice
>>>
>>>>
>>>>You are missing removal of pin->prop.package_label = dev_name(dev); in
>>>>ice.
>>>>
>>>
>>>I didn't touch it, as we still need to discuss it, Jakub didn't respond
>>>on v8 thread.
>>>I don't see why we shall not name it the way. This is most meaningful
>>>label for those pins for the user right now.
>>
>>This is not meaningful, at all. dev_name() changes upon which pci slot
>>you plug the card into. package_label should be an actual label on a
>>silicon package. Why you think this two are related in aby way, makes me
>>really wonder. Could you elaborate the meaningfulness of this?
>>
>
>Without this, from end-user perspective, it would be very confusing.
>As in ice without any label there would 4 pins which differs only with id.

There you go, it does not have any label, yet you are trying hard to
make up some. Does not make sense.


>What names would you suggest?

That is the point I made previously. For synce usecase, the label does
not make sense. There should be no label. You reference the pin by ID
from netdev, that is enough.

I think better to add the check to pin-register so future synce pin
users don't have similar weird ideas. Could you please add this check?

Thanks!



>
>Thank you!
>Arkadiusz
>
>>
>>>
>>>Thank you!
>>>Arkadiusz
>>>
>>>>
>>>>>Thank you!
>>>>>Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
