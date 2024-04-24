Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E06798B0D99
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 17:08:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B03781DE2;
	Wed, 24 Apr 2024 15:08:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fEVpnQB4JldZ; Wed, 24 Apr 2024 15:08:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B92B682134
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713971280;
	bh=efy+in7jvEoxbRkKx9/WPyXgfp6UU46NpUHk3DHNugI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=icc+GdHTwh7vkZ6WgjXSb/2ImOIFmhTkRQLAR2RMG+DG9UxDwgmgYj7TAgf5eBwnE
	 TJlBQrn6oYz3bwWPKTOu5jxjFcrsqcCgGweCdQN0RJIjCRIzh1VtB8rbi4hAk9r10E
	 gUUPn2LHZnP4WGgijqiNAusg0DM/mlgkJ3Zlo+ry4VVUm7/c0SmWaICNOvXDlyIs5F
	 xJ/Y6MJWe5m0Ee1KDC7sUrjK0AanV2XXY2/rYxHUkRqvwJHXz3woXFxDXIaD0NHwwQ
	 9K+UYUgC3TRaUj8KV5UjAbzmkLGqnBG+bkphmuHSlDEmiti0b03T9KiYPeMg/cZ2g/
	 GgIkMHP3xm5ag==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B92B682134;
	Wed, 24 Apr 2024 15:08:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E1F791BF8B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 15:07:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CC23040795
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 15:07:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i-HjOELNywVK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 15:07:56 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32d; helo=mail-wm1-x32d.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3F0EF4089E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F0EF4089E
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3F0EF4089E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 15:07:55 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 5b1f17b1804b1-41aa15ae26dso20034585e9.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 08:07:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713971274; x=1714576074;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=efy+in7jvEoxbRkKx9/WPyXgfp6UU46NpUHk3DHNugI=;
 b=MY3rIOdP6N6SzDpdNrVH+ObQTbZLlQ22DY2mPNRqYEzxxV8BzWvvH9cpOXjYGYZrjW
 ZuVtz7ItoYN1HPKGgWA+61QunHnMYSp4uwPR/XTE/mWe8s1ZbIrOsuz7R/7wisDWbnDK
 U4jHWKLxUWso8klHtsiqu7AS6/HPNTisKysSrz9zBlmm13kwcXvA/S51QwbRdUp/vFrp
 dKsox1z5bD4LOksxn5tZWhZ2c+j7bdZ4uBKK9QZadklMOfBWgsnD7BXuJwKUWQPKvjT8
 n6doXqMtloydgfhNCdkQ95becxmh8nhQFqCBi68bOiVxOZgHN9LKH2QG5Tu34WTchyAm
 SNcQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWR5pyMiPGU/oRlhVNPTbGO/KlLsuCgqGpwD1KuxL0GaKdGtimOSPQ1K8MFmaMrEwqj7Q5+gwp0HnqjhEwEeqLmgd8j9Mt0zMbPqHIcWlVArA==
X-Gm-Message-State: AOJu0YyM2DVeiuv1h4dabAn9defU4jqaRt1qF8PUkubAwJvVTIQnFkiV
 /mqwQ6Wpf1/95LrLzGLhjeLAB2lz1XIkeBKmC0tTIKiBFoGY35n5afjUcfSKqYD+/2L+uwlIQo2
 t
X-Google-Smtp-Source: AGHT+IGqrklJ9g4Awu4ez1S1kGv2SH7T4yfuD4xGz0fef4uCFimKuic39gF7ENhZF2DUGUiC6ihEBA==
X-Received: by 2002:a05:600c:3585:b0:418:dd73:b0a1 with SMTP id
 p5-20020a05600c358500b00418dd73b0a1mr2058891wmq.39.1713971273606; 
 Wed, 24 Apr 2024 08:07:53 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 o12-20020a5d684c000000b0034aa1e534c2sm11975739wrw.96.2024.04.24.08.07.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Apr 2024 08:07:53 -0700 (PDT)
Date: Wed, 24 Apr 2024 17:07:46 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <ZikgQhVpphnaAOpG@nanopsycho>
References: <20240423091459.72216-1-sergey.temerkhanov@intel.com>
 <ZiedKc5wE2-3LlaM@nanopsycho>
 <MW3PR11MB468117FD76AC6D15970A6E1080112@MW3PR11MB4681.namprd11.prod.outlook.com>
 <Zie0NIztebf5Qq1J@nanopsycho>
 <3a634778-9b72-4663-b305-3be18bd8f618@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3a634778-9b72-4663-b305-3be18bd8f618@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1713971274; x=1714576074;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=efy+in7jvEoxbRkKx9/WPyXgfp6UU46NpUHk3DHNugI=;
 b=JTgh8u8ko5CRpsPPTnOEnsuSSj8QGJJ1bn6CucJJYt6VHJPVG6Q3v4ja+1P7e7zFUa
 M1ygU7vrK9naDBuECxGvaEWBB8HazYR+mPg5+aikwHJJE6wKvB1GAd1Vv2J+Ow1Mxg/5
 xNfRgr0h77v5x13l5rSSsegVfkWpwZUAXjtEjal//Vz/irZMwzNfIPdJsv7XuKuig7n/
 Eaqc6Md40YofEd3tB2Sivd7xclSDTJjH8yBqAZWPRCeP1jLWQtvp8TGD2YyBsz5s2QA7
 FcSSB1+6Fa8FQf+AMtnWXWhzYkdPXo/dulXOeovwZs70UX95USbc/3sx9oj+lg7WEQj1
 u6ow==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=JTgh8u8k
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Apr 24, 2024 at 12:03:25AM CEST, jacob.e.keller@intel.com wrote:
>
>
>On 4/23/2024 6:14 AM, Jiri Pirko wrote:
>> Tue, Apr 23, 2024 at 01:56:55PM CEST, sergey.temerkhanov@intel.com wrote:
>>>
>>>
>>>> -----Original Message-----
>>>> From: Jiri Pirko <jiri@resnulli.us>
>>>> Sent: Tuesday, April 23, 2024 1:36 PM
>>>> To: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
>>>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kitszel,
>>>> Przemyslaw <przemyslaw.kitszel@intel.com>
>>>> Subject: Re: [PATCH iwl-next v2] ice: Extend auxbus device naming
>>>>
>>>> Tue, Apr 23, 2024 at 11:14:59AM CEST, sergey.temerkhanov@intel.com
>>>> wrote:
>>>>> Include segment/domain number in the device name to distinguish
>>>> between
>>>>> PCI devices located on different root complexes in multi-segment
>>>>> configurations. Naming is changed from ptp_<bus>_<slot>_clk<clock>  to
>>>>> ptp_<domain>_<bus>_<slot>_clk<clock>
>>>>
>>>> I don't understand why you need to encode pci properties of a parent device
>>>> into the auxiliary bus name. Could you please explain the motivation? Why
>>>> you need a bus instance per PF?
>>>>
>>>> The rest of the auxbus registrators don't do this. Could you please align? Just
>>>> have one bus for ice driver and that's it.
>>>
>>> This patch adds support for multi-segment PCIe configurations.
>>> An auxdev is created for each adapter, which has a clock, in the system. There can be
>> 
>> You are trying to change auxiliary bus name.
>> 
>> 
>>> more than one adapter present, so there exists a possibility of device naming conflict.
>>> To avoid it, auxdevs are named according to the PCI geographical addresses of the adapters.
>> 
>> Why? It's the auxdev, the name should not contain anything related to
>> PCI, no reason for it. I asked for motivation, you didn't provide any.
>> 
>
>We aren't creating one auxbus per PF. We're creating one auxbus per
>*clock*. The device has multiple clocks in some configurations.

Does not matter. Why you need separate bus for whatever-instance? Why
can't you just have one ice-ptp bus and put devices on it?


>
>We need to connect each PF to the same clock controller, because there
>is only one clock owner for the device in a multi-port card.

Connect how? But putting a PF-device on a per-clock bus? That sounds
quite odd. How did you figure out this usage of auxiliary bus?


>
>> Again, could you please avoid creating auxiliary bus per-PF and just
>> have one auxiliary but per-ice-driver?
>> 
>
>We can't have one per-ice driver, because we don't want to connect ports
>from a different device to the same clock. If you have two ice devices
>plugged in, the ports on each device are separate from each other.
>
>The goal here is to connect the clock ports to the clock owner.
>
>Worse, as described here, we do have some devices which combine multiple
>adapters together and tie their clocks together via HW signaling. In
>those cases the clocks *do* need to communicate across the device, but
>only to other ports on the same physical device, not to ports on a
>different device.
>
>Perhaps auxbus is the wrong approach here? but how else can we connect

Yeah, feels quite wrong.


>these ports without over-connecting to other ports? We could write
>bespoke code which finds these devices, but that felt like it was risky
>and convoluted.

Sounds you need something you have for DPLL subsystem. Feels to me that
your hw design is quite disconnected from the Linux device model :/


>
>Perhaps it would be ideal if something in the PCI layer could connect
>these together? I don't know how that would be implemented though..
>
>The fundamental problem is that we have a multi-function device with
>some shared functionality which we need to manage across function. In
>this case it is the clock should only have one entity, while the ports
>connected to it are controlled independently by PF. We tried a variety
>of ways to solve this in the past, mostly with hacky solutions.
>
>We need an entity which can find all the ports connected to a single
>clock, and the port needs to be able to get back to its clock. If we
>used a single auxdriver for this, that driver would have to maintain
>some hash tables or connections in order to locate which ports belonged
>to the clock. It would also need to figure out which port was the
>"owner" so that it could send owner-based requests through that port,
>since it would not inherently have access to the clock hardware since
>its a global entity and not tied to a port.
>
>In the current model, the driver can go back to the PF that spawned it
>to manage the clock, and uses the aux devices as a mechanism to connect
>to each port for purposes such as initializing the PHYs, and caching the
>PTP hardware time for timestamp extension.
>
>Maybe you disagree with this use of auxbus? Do you have any suggestions
>for a separate model?
>
>We could make use of ice_adapter, though we'd need some logic to manage
>devices which have multiple clocks, as well as devices like the one
>Sergey is working on which tie multiple adapters together.

Perhaps that is an answer. Maybe we can make DPLL much more simple after
that :)
