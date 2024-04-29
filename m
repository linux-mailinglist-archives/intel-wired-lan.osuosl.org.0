Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB5D8B5737
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Apr 2024 13:55:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6C0460789;
	Mon, 29 Apr 2024 11:55:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B901aCGT7T-Q; Mon, 29 Apr 2024 11:55:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 678656078B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714391755;
	bh=tTF8L7As+P2RTQMXeQ1vLyfoKhnmlLupR/xIodvbScg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mJ54Tq5334u21zxoNru1z5SL1LzQetczywlv4nujkHvuNEw6iVhwuCgLNb6vteBXL
	 5ABk2UvGHXZ03FtLBvBjljEeuk04Zfymc2JUs5LCpZihKJ8KrXdo3PmXJmC6GDxBZk
	 GprA/tw7PLdGs+n1FptHkENrPjA4G3skUxzuZZTo7j94VqXasS/VfKTcWWP4jXEPDT
	 1Nvd+ts6RUZLy1vutMfzkegHaNIWDjm9VavsZhzwDJeto89zaLhP1l0OCBejtm0TrP
	 vYlswsawmn0Q6MLDHt6RiNWAT+XU9SZt0BYFm6NxLw+cL+qucAGb/hWb3S7VAN7qnk
	 k20VakNiOMtHA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 678656078B;
	Mon, 29 Apr 2024 11:55:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C490D1BF8B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 11:55:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AF5C94060C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 11:55:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ipLYxl2w4Vbm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Apr 2024 11:55:51 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52c; helo=mail-ed1-x52c.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D720740600
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D720740600
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D720740600
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 11:55:48 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-5726716a006so2799471a12.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 04:55:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714391747; x=1714996547;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tTF8L7As+P2RTQMXeQ1vLyfoKhnmlLupR/xIodvbScg=;
 b=EhhVJEn9FoBL0VfPLsrvm5CQ2PFdEpm+kIUfAsngKj1KJG6C9qquYMa2+VCMqjWzZa
 Aa7wPtWGl+mn8bBYYngy9pXOXBDyg+NPjARZJEZnz5FZ8mno1ShJvADMP6Wqy1ZGK5Po
 lJnmHJlvtKNxifhKp+tGvCzOWPbo8y2vECcCeOec2EjXQXc7w3A7mNtnXLgMskuU/5sQ
 qXZVmPKyDnHb2VRZMVVOYcc4JjLUXk2CIuUxSdvCj9jawV/c7u4CREcrrBc0kCTXllCa
 5xb+f0JxcSH5kIGBWKXQ7m2ZvMWMGd/OLukApR7z1JEh0fux59oLKT6u21gRdDMZK883
 dTLw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVeu/TiszzRm/snxd6IB3w/9ffH+iOYFBysFz0eFikGfNE2rid8WAItdsFZ/YMcD+cG5BjJ5e5CKUPzsD5FEMc1W7mYwkD3mUt3v4yS2ftWkA==
X-Gm-Message-State: AOJu0YyvqFgk71+lSfJm67embFLm0NURxG1IZVb5lf3YVpVTLscxnGcY
 /nAJKRUq3TKhi896Y41V6nzfc0G7sM96QMqIHduk6LBh51L5wfL9okHT+kPVeFA=
X-Google-Smtp-Source: AGHT+IHhwi1H6up0yF9MTnOVyl3efgAzj76SyIMaLjZeX+Z5PwYQDs8O46dlMbYsRwDH+VrbWfGdYw==
X-Received: by 2002:a17:906:ece4:b0:a58:ea99:6709 with SMTP id
 qt4-20020a170906ece400b00a58ea996709mr3811297ejb.3.1714391746637; 
 Mon, 29 Apr 2024 04:55:46 -0700 (PDT)
Received: from localhost (89-24-35-126.nat.epc.tmcz.cz. [89.24.35.126])
 by smtp.gmail.com with ESMTPSA id
 bk5-20020a170907360500b00a58a67afd2fsm5439156ejc.53.2024.04.29.04.55.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Apr 2024 04:55:45 -0700 (PDT)
Date: Mon, 29 Apr 2024 13:55:44 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <Zi-KwL3WJrJd3zdR@nanopsycho>
References: <ZiedKc5wE2-3LlaM@nanopsycho>
 <MW3PR11MB468117FD76AC6D15970A6E1080112@MW3PR11MB4681.namprd11.prod.outlook.com>
 <Zie0NIztebf5Qq1J@nanopsycho>
 <3a634778-9b72-4663-b305-3be18bd8f618@intel.com>
 <ZikgQhVpphnaAOpG@nanopsycho>
 <3877b086-142d-4897-866e-e667ca7091d7@intel.com>
 <ZiuNxivU-haEQ5fC@nanopsycho>
 <39daba1e-5fbe-495e-8398-200434f89230@intel.com>
 <Ziuvjj8h7GzsL9RF@nanopsycho>
 <698dd861-951b-44d9-91b0-5a39a953857c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <698dd861-951b-44d9-91b0-5a39a953857c@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1714391747; x=1714996547;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=tTF8L7As+P2RTQMXeQ1vLyfoKhnmlLupR/xIodvbScg=;
 b=iLNiT3kaiGaLnYjn4pJZny0/ugGF7fk6SjKdxpKHDdi/0K08K/1wsVmEc+PNakYv5b
 zcF21gdn0DwUQ2Z7LXFWyZ4i9bdjb7DOnYz9yTnZWF46N/UVLQufx+BwzGwLq086znbg
 Xe6Uj871HPbxArOhdVrl0OpOY8FSWMDOJChdBWavkWUWKnHwkEXEorC84veGvd/UXca2
 YhEw/0SHvHQgSPgvujfLWGhMQ3S6Y3JBL7q7721f/m+GSQXxeFiycBrJmcGepG3Zn65u
 GES9tSZM5JJ4DUSLCSbsklzPCCix1YHtrp7XKK8DLrV3vT6lgSycLKeHcuiGi8Pja/NI
 pIJA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=iLNiT3ka
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Extend auxbus device
 naming
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
Cc: gregkh@linuxfoundation.org, "Temerkhanov,
 Sergey" <sergey.temerkhanov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, "Knitter,
 Konrad" <konrad.knitter@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sat, Apr 27, 2024 at 12:25:44AM CEST, jacob.e.keller@intel.com wrote:
>
>
>On 4/26/2024 6:43 AM, Jiri Pirko wrote:
>> Fri, Apr 26, 2024 at 02:49:40PM CEST, przemyslaw.kitszel@intel.com wrote:
>>> On 4/26/24 13:19, Jiri Pirko wrote:
>>>> Wed, Apr 24, 2024 at 06:56:37PM CEST, jacob.e.keller@intel.com wrote:
>>>>>
>>>>>
>>>>> On 4/24/2024 8:07 AM, Jiri Pirko wrote:
>>>>>> Wed, Apr 24, 2024 at 12:03:25AM CEST, jacob.e.keller@intel.com wrote:
>>>>>>>
>>>>>>>
>>>>>>> On 4/23/2024 6:14 AM, Jiri Pirko wrote:
>>>>>>>> Tue, Apr 23, 2024 at 01:56:55PM CEST, sergey.temerkhanov@intel.com wrote:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>> -----Original Message-----
>>>>>>>>>> From: Jiri Pirko <jiri@resnulli.us>
>>>>>>>>>> Sent: Tuesday, April 23, 2024 1:36 PM
>>>>>>>>>> To: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
>>>>>>>>>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kitszel,
>>>>>>>>>> Przemyslaw <przemyslaw.kitszel@intel.com>
>>>>>>>>>> Subject: Re: [PATCH iwl-next v2] ice: Extend auxbus device naming
>>>>>>>>>>
>>>>>>>>>> Tue, Apr 23, 2024 at 11:14:59AM CEST, sergey.temerkhanov@intel.com
>>>>>>>>>> wrote:
>>>>>>>>>>> Include segment/domain number in the device name to distinguish
>>>>>>>>>> between
>>>>>>>>>>> PCI devices located on different root complexes in multi-segment
>>>>>>>>>>> configurations. Naming is changed from ptp_<bus>_<slot>_clk<clock>  to
>>>>>>>>>>> ptp_<domain>_<bus>_<slot>_clk<clock>
>>>>>>>>>>
>>>>>>>>>> I don't understand why you need to encode pci properties of a parent device
>>>>>>>>>> into the auxiliary bus name. Could you please explain the motivation? Why
>>>>>>>>>> you need a bus instance per PF?
>>>>>>>>>>
>>>>>>>>>> The rest of the auxbus registrators don't do this. Could you please align? Just
>>>>>>>>>> have one bus for ice driver and that's it.
>>>>>>>>>
>>>>>>>>> This patch adds support for multi-segment PCIe configurations.
>>>>>>>>> An auxdev is created for each adapter, which has a clock, in the system. There can be
>>>>>>>>
>>>>>>>> You are trying to change auxiliary bus name.
>>>>>>>>
>>>>>>>>
>>>>>>>>> more than one adapter present, so there exists a possibility of device naming conflict.
>>>>>>>>> To avoid it, auxdevs are named according to the PCI geographical addresses of the adapters.
>>>>>>>>
>>>>>>>> Why? It's the auxdev, the name should not contain anything related to
>>>>>>>> PCI, no reason for it. I asked for motivation, you didn't provide any.
>>>>>>>>
>>>>>>>
>>>>>>> We aren't creating one auxbus per PF. We're creating one auxbus per
>>>>>>> *clock*. The device has multiple clocks in some configurations.
>>>>>>
>>>>>> Does not matter. Why you need separate bus for whatever-instance? Why
>>>>>> can't you just have one ice-ptp bus and put devices on it?
>>>>>>
>>>>>>
>>>>>
>>>>> Because we only want ports on card A to be connected to the card owner
>>>>> on card A. We were using auxiliary bus to manage this. If we use a
>>>>
>>>> You do that by naming auxiliary bus according to the PCI device
>>>> created it, which feels obviously wrong.
>>>>
>>>>
>>>>> single bus for ice-ptp, then we still have to implement separation
>>>>> between each set of devices on a single card, which doesn't solve the
>>>>> problems we had, and at least with the current code using auxiliary bus
>>>>> doesn't buy us much if it doesn't solve that problem.
>>>>
>>>> I don't think that auxiliary bus is the answer for your problem. Please
>>>> don't abuse it.
>>>>
>>>>>
>>>>>>>
>>>>>>> We need to connect each PF to the same clock controller, because there
>>>>>>> is only one clock owner for the device in a multi-port card.
>>>>>>
>>>>>> Connect how? But putting a PF-device on a per-clock bus? That sounds
>>>>>> quite odd. How did you figure out this usage of auxiliary bus?
>>>>>>
>>>>>>
>>>>>
>>>>> Yea, its a multi-function board but the functions aren't fully
>>>>> independent. Each port has its own PF, but multiple ports can be tied to
>>>>> the same clock. We have similar problems with a variety of HW aspects.
>>>>> I've been told that the design is simpler for other operating systems,
>>>>> (something about the way the subsystems work so that they expect ports
>>>>> to be tied to functions). But its definitely frustrating from Linux
>>>>> perspective where a single driver instance for the device would be a lot
>>>>> easier to manage.
>>>>
>>>> You can always do it by internal accounting in ice, merge multiple PF
>>>> pci devices into one internal instance. Or checkout
>>>> drivers/base/component.c, perhaps it could be extended for your usecase.
>>>>
>>>>
>>>>>
>>>>>>>
>>>>>>>> Again, could you please avoid creating auxiliary bus per-PF and just
>>>>>>>> have one auxiliary but per-ice-driver?
>>>>>>>>
>>>>>>>
>>>>>>> We can't have one per-ice driver, because we don't want to connect ports
>>>>>> >from a different device to the same clock. If you have two ice devices
>>>>>>> plugged in, the ports on each device are separate from each other.
>>>>>>>
>>>>>>> The goal here is to connect the clock ports to the clock owner.
>>>>>>>
>>>>>>> Worse, as described here, we do have some devices which combine multiple
>>>>>>> adapters together and tie their clocks together via HW signaling. In
>>>>>>> those cases the clocks *do* need to communicate across the device, but
>>>>>>> only to other ports on the same physical device, not to ports on a
>>>>>>> different device.
>>>>>>>
>>>>>>> Perhaps auxbus is the wrong approach here? but how else can we connect
>>>>>>
>>>>>> Yeah, feels quite wrong.
>>>>>>
>>>>>>
>>>>>>> these ports without over-connecting to other ports? We could write
>>>>>>> bespoke code which finds these devices, but that felt like it was risky
>>>>>>> and convoluted.
>>>>>>
>>>>>> Sounds you need something you have for DPLL subsystem. Feels to me that
>>>>>> your hw design is quite disconnected from the Linux device model :/
>>>>>>
>>>>>
>>>>> I'm not 100% sure how DPLL handles this. I'll have to investigate.
>>>>
>>>> DPLL leaves the merging on DPLL level. The ice driver just register
>>>> entities multiple times. It is specifically designed to fit ice needs.
>>>>
>>>>
>>>>>
>>>>> One thing I've considered a lot in the past (such as back when I was
>>>>> working on devlink flash update) was to somehow have a sort of extra
>>>>> layer where we could register with PCI subsystem some sort of "whole
>>>>> device" driver, that would get registered first and could connect to the
>>>>> rest of the function driver instances as they load. But this seems like
>>>>> it would need a lot of work in the PCI layer, and apparently hasn't been
>>>>> an issue for other devices? though ice is far from unique at least for
>>>>> Intel NICs. Its just that the devices got significantly more complex and
>>>>> functions more interdependent with this generation, and the issues with
>>>>> global bits were solved in other ways: often via hiding them with
>>>>> firmware >:(
>>>>
>>>> I think that others could benefit from such "merged device" as well. I
>>>> think it is about the time to introduce it.
>>>
>>> so far I see that we want to merge based on different bits, but let's
>>> see what will come from exploratory work that Sergey is doing right now.
>>>
>>> and anything that is not a device/driver feels much more lightweight to
>>> operate with (think &ice_adapter, but extended with more fields).
>>> Could you elaborate more on what you have in mind? (Or what you could
>>> imagine reusing).
>> 
>> Nothing concrete really. See below.
>> 
>>>
>>> offtop:
>>> It will be a good hook to put resources that are shared across ports
>>> under it in devlink resources, so making this "merged device" an entity
>>> would enable higher layer over what we have with devlink xxx $pf.
>> 
>> Yes. That would be great. I think we need a "device" in a sense of
>> struct device instance. Then you can properly model the relationships in
>> sysfs, you can have devlink for that, etc.
>> 
>> drivers/base/component.c does merging of multiple devices, but it does
>> not create a "merged device", this is missing there. So we have 2
>> options:
>> 
>> 1) extend drivers/base/component.c to allow to create a merged device
>>    entity
>> 2) implement merged device infrastructure separatelly.
>> 
>> IDK. I believe we need to rope more people in.
>> 
>> 
>
>drivers/base/component.c looks pretty close to what we want. Each PF
>would register as a component, and then a driver would register as the
>component master. It does lack a struct device, so might be challenging
>to use with devlink unless we just opted to pick a device from the
>components as the main device?

If I read the code correctly, the master component has to be a device as
well. This is the missing piece I believe.


>
>extending components to have a device could be interesting, though
>perhaps its not exactly the best place. It seems like components are
>about combining a lot of small devices that ultimately combine into one
>functionality at a logical level.
>
>That is pretty close to what we want here: one entity to control global
>portions of an otherwise multi-function card.
>
>Extending it to include a struct device could work but I'm not 100% sure
>how that fits into the component system.

Who knows? we need to rope them into this discussion...


>
>We could try extending PCI subsystem to do something similar to
>components which is vaguely what I described a couple replies ago.

Well, feels to me this is more generic problem than PCI. One level
above.


>
>ice_adapter is basically doing this but more bespoke and custom, and
>still lacks the extra struct device.

Correct.

