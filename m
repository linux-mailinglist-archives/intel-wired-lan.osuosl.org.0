Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE058B38C1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Apr 2024 15:43:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72D9581237;
	Fri, 26 Apr 2024 13:43:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ObucCMOLMnxC; Fri, 26 Apr 2024 13:43:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8D6D81238
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714139034;
	bh=4RCEU03ytUnyS/k9uk8i6ewH6Jfz6JZcqkxF2lHuJUw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OI4uKvxiIRDxwTP5ddEgpnppGRXD49XQqXlcvZ4FAoMHDoY9A2UtpfM+cBV2O28GW
	 Sikqpl265SZH93e/UAOd4bBynx+QtU8YED1ySW333FmNrpky/hd1PtJtOyf+ngDAjD
	 +NtQfBFR5dM2NcEZDq6yMRTKogEC5yZZI/5vBCEujEfEkRwSKtS7hgDgu10wjb4aLz
	 4zK368fHXlu7hxn9XqxaEbcUJ4l4za41bsKnwYHlb2Zxj37rRBHd/HsVAFyD3yS7rJ
	 e16Yo4/D4mm+jZvOWgwLd6eqG2YZfB0BV92WmroKu5I6jp3Su14YwUamdksupUI/gb
	 nWWSqEgixcINg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8D6D81238;
	Fri, 26 Apr 2024 13:43:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AECDD1BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 13:43:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 99BF4404CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 13:43:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CS5as7vfttL6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Apr 2024 13:43:50 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22a; helo=mail-lj1-x22a.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9219E4040B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9219E4040B
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9219E4040B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 13:43:47 +0000 (UTC)
Received: by mail-lj1-x22a.google.com with SMTP id
 38308e7fff4ca-2dd041acff1so24753711fa.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 06:43:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714139025; x=1714743825;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4RCEU03ytUnyS/k9uk8i6ewH6Jfz6JZcqkxF2lHuJUw=;
 b=G7RzU7NsBHBnbUBy+OBRlFZXU+t+ZHU8nfS6hlh+iJ2t+TqrPYYpMJ+UF06jkxvW29
 V35fzzMSLI1t41X+9lfzGr084sgfrW4xVuncl5VL045hGz9IzgopxFebhCJqKlQ3eTKW
 7jfCfAUUf6dQ469UconQdBZhVkvVie3IzoGf0HNgFTpvw0jHoYuFDHRUs6WWukM4fq41
 q6VqGgZyCBPItigO0N9zX/Luv/d+Xmf3Av1Lv6K+pvtWKaO9oMa7lyw9JmJd9Zexeys3
 A+U45uEkhE8j19KAZU8B8uUHvNfUTtBjUikThRDtelUXK9VitQNKyZ/+bMaErZTH1QAL
 H9CA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXv+YwpEhMajesvobV1q6wbuvRPcvv5V433WaqFgpPxiEiTYKk8dizSiAWkmTHN3NPdeSyrnf1+D3gXaf3T/FAPdwcucwwGFkN/48Jipz4OlA==
X-Gm-Message-State: AOJu0YxOpMHA3psC2AZaQ9QEqntRgNkNMrLG8gAUGnoMBGV6xe7BN+Dr
 1+tE96ZPaDGZF8dfywuAsIh/PeMYDQogupdPRQ3giB0LSTJ8L5mXvbUisrrGylA=
X-Google-Smtp-Source: AGHT+IGpPk1uDerXKMZKaO4BE8uYo0Visize6y5ZopF8rSBYuG1R3x/w67Mti7+Q0/j6YL51SLz39g==
X-Received: by 2002:a2e:94c3:0:b0:2da:e7f7:7315 with SMTP id
 r3-20020a2e94c3000000b002dae7f77315mr1617260ljh.45.1714139024589; 
 Fri, 26 Apr 2024 06:43:44 -0700 (PDT)
Received: from localhost (89-24-35-126.nat.epc.tmcz.cz. [89.24.35.126])
 by smtp.gmail.com with ESMTPSA id
 p9-20020a05600c358900b00419f7b73c55sm22741338wmq.0.2024.04.26.06.43.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Apr 2024 06:43:43 -0700 (PDT)
Date: Fri, 26 Apr 2024 15:43:42 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <Ziuvjj8h7GzsL9RF@nanopsycho>
References: <20240423091459.72216-1-sergey.temerkhanov@intel.com>
 <ZiedKc5wE2-3LlaM@nanopsycho>
 <MW3PR11MB468117FD76AC6D15970A6E1080112@MW3PR11MB4681.namprd11.prod.outlook.com>
 <Zie0NIztebf5Qq1J@nanopsycho>
 <3a634778-9b72-4663-b305-3be18bd8f618@intel.com>
 <ZikgQhVpphnaAOpG@nanopsycho>
 <3877b086-142d-4897-866e-e667ca7091d7@intel.com>
 <ZiuNxivU-haEQ5fC@nanopsycho>
 <39daba1e-5fbe-495e-8398-200434f89230@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <39daba1e-5fbe-495e-8398-200434f89230@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1714139025; x=1714743825;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=4RCEU03ytUnyS/k9uk8i6ewH6Jfz6JZcqkxF2lHuJUw=;
 b=gFerhHTrQuoRoEzrtB6VdHxCIQsJcd2hMdVc52zbOd7LcR+dg4HqEMxZ8hCKCuMw8u
 xPE9ItOwLtgtUrgBH6wsV6rdemH3E/iCUdLUasz1UcNmmN/cp7muBZFT6BBzkHWhUEmJ
 ZqLFetSko3XeWxwhgGjX2gie0Q+z7m9lFFu30uN2oPnE8om+eFi5LTyGolVzXRVshFbG
 IRs4VwP34rk7xk/3tIBec7wAPgl6XJrL1B64jMm9BjQ+JKUIrDnqT87AtE2q2d1e5txo
 d0Z3TS9PUrUsMiGyuHDgZIkYDJDXWIOBaPaHB4L0kJ78MYkk59OII86KUG77dkBUNfa6
 /0yQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=gFerhHTr
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
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Knitter,
 Konrad" <konrad.knitter@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 gregkh@linuxfoundation.org, Jacob Keller <jacob.e.keller@intel.com>,
 kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Apr 26, 2024 at 02:49:40PM CEST, przemyslaw.kitszel@intel.com wrote:
>On 4/26/24 13:19, Jiri Pirko wrote:
>> Wed, Apr 24, 2024 at 06:56:37PM CEST, jacob.e.keller@intel.com wrote:
>> > 
>> > 
>> > On 4/24/2024 8:07 AM, Jiri Pirko wrote:
>> > > Wed, Apr 24, 2024 at 12:03:25AM CEST, jacob.e.keller@intel.com wrote:
>> > > > 
>> > > > 
>> > > > On 4/23/2024 6:14 AM, Jiri Pirko wrote:
>> > > > > Tue, Apr 23, 2024 at 01:56:55PM CEST, sergey.temerkhanov@intel.com wrote:
>> > > > > > 
>> > > > > > 
>> > > > > > > -----Original Message-----
>> > > > > > > From: Jiri Pirko <jiri@resnulli.us>
>> > > > > > > Sent: Tuesday, April 23, 2024 1:36 PM
>> > > > > > > To: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
>> > > > > > > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kitszel,
>> > > > > > > Przemyslaw <przemyslaw.kitszel@intel.com>
>> > > > > > > Subject: Re: [PATCH iwl-next v2] ice: Extend auxbus device naming
>> > > > > > > 
>> > > > > > > Tue, Apr 23, 2024 at 11:14:59AM CEST, sergey.temerkhanov@intel.com
>> > > > > > > wrote:
>> > > > > > > > Include segment/domain number in the device name to distinguish
>> > > > > > > between
>> > > > > > > > PCI devices located on different root complexes in multi-segment
>> > > > > > > > configurations. Naming is changed from ptp_<bus>_<slot>_clk<clock>  to
>> > > > > > > > ptp_<domain>_<bus>_<slot>_clk<clock>
>> > > > > > > 
>> > > > > > > I don't understand why you need to encode pci properties of a parent device
>> > > > > > > into the auxiliary bus name. Could you please explain the motivation? Why
>> > > > > > > you need a bus instance per PF?
>> > > > > > > 
>> > > > > > > The rest of the auxbus registrators don't do this. Could you please align? Just
>> > > > > > > have one bus for ice driver and that's it.
>> > > > > > 
>> > > > > > This patch adds support for multi-segment PCIe configurations.
>> > > > > > An auxdev is created for each adapter, which has a clock, in the system. There can be
>> > > > > 
>> > > > > You are trying to change auxiliary bus name.
>> > > > > 
>> > > > > 
>> > > > > > more than one adapter present, so there exists a possibility of device naming conflict.
>> > > > > > To avoid it, auxdevs are named according to the PCI geographical addresses of the adapters.
>> > > > > 
>> > > > > Why? It's the auxdev, the name should not contain anything related to
>> > > > > PCI, no reason for it. I asked for motivation, you didn't provide any.
>> > > > > 
>> > > > 
>> > > > We aren't creating one auxbus per PF. We're creating one auxbus per
>> > > > *clock*. The device has multiple clocks in some configurations.
>> > > 
>> > > Does not matter. Why you need separate bus for whatever-instance? Why
>> > > can't you just have one ice-ptp bus and put devices on it?
>> > > 
>> > > 
>> > 
>> > Because we only want ports on card A to be connected to the card owner
>> > on card A. We were using auxiliary bus to manage this. If we use a
>> 
>> You do that by naming auxiliary bus according to the PCI device
>> created it, which feels obviously wrong.
>> 
>> 
>> > single bus for ice-ptp, then we still have to implement separation
>> > between each set of devices on a single card, which doesn't solve the
>> > problems we had, and at least with the current code using auxiliary bus
>> > doesn't buy us much if it doesn't solve that problem.
>> 
>> I don't think that auxiliary bus is the answer for your problem. Please
>> don't abuse it.
>> 
>> > 
>> > > > 
>> > > > We need to connect each PF to the same clock controller, because there
>> > > > is only one clock owner for the device in a multi-port card.
>> > > 
>> > > Connect how? But putting a PF-device on a per-clock bus? That sounds
>> > > quite odd. How did you figure out this usage of auxiliary bus?
>> > > 
>> > > 
>> > 
>> > Yea, its a multi-function board but the functions aren't fully
>> > independent. Each port has its own PF, but multiple ports can be tied to
>> > the same clock. We have similar problems with a variety of HW aspects.
>> > I've been told that the design is simpler for other operating systems,
>> > (something about the way the subsystems work so that they expect ports
>> > to be tied to functions). But its definitely frustrating from Linux
>> > perspective where a single driver instance for the device would be a lot
>> > easier to manage.
>> 
>> You can always do it by internal accounting in ice, merge multiple PF
>> pci devices into one internal instance. Or checkout
>> drivers/base/component.c, perhaps it could be extended for your usecase.
>> 
>> 
>> > 
>> > > > 
>> > > > > Again, could you please avoid creating auxiliary bus per-PF and just
>> > > > > have one auxiliary but per-ice-driver?
>> > > > > 
>> > > > 
>> > > > We can't have one per-ice driver, because we don't want to connect ports
>> > > >from a different device to the same clock. If you have two ice devices
>> > > > plugged in, the ports on each device are separate from each other.
>> > > > 
>> > > > The goal here is to connect the clock ports to the clock owner.
>> > > > 
>> > > > Worse, as described here, we do have some devices which combine multiple
>> > > > adapters together and tie their clocks together via HW signaling. In
>> > > > those cases the clocks *do* need to communicate across the device, but
>> > > > only to other ports on the same physical device, not to ports on a
>> > > > different device.
>> > > > 
>> > > > Perhaps auxbus is the wrong approach here? but how else can we connect
>> > > 
>> > > Yeah, feels quite wrong.
>> > > 
>> > > 
>> > > > these ports without over-connecting to other ports? We could write
>> > > > bespoke code which finds these devices, but that felt like it was risky
>> > > > and convoluted.
>> > > 
>> > > Sounds you need something you have for DPLL subsystem. Feels to me that
>> > > your hw design is quite disconnected from the Linux device model :/
>> > > 
>> > 
>> > I'm not 100% sure how DPLL handles this. I'll have to investigate.
>> 
>> DPLL leaves the merging on DPLL level. The ice driver just register
>> entities multiple times. It is specifically designed to fit ice needs.
>> 
>> 
>> > 
>> > One thing I've considered a lot in the past (such as back when I was
>> > working on devlink flash update) was to somehow have a sort of extra
>> > layer where we could register with PCI subsystem some sort of "whole
>> > device" driver, that would get registered first and could connect to the
>> > rest of the function driver instances as they load. But this seems like
>> > it would need a lot of work in the PCI layer, and apparently hasn't been
>> > an issue for other devices? though ice is far from unique at least for
>> > Intel NICs. Its just that the devices got significantly more complex and
>> > functions more interdependent with this generation, and the issues with
>> > global bits were solved in other ways: often via hiding them with
>> > firmware >:(
>> 
>> I think that others could benefit from such "merged device" as well. I
>> think it is about the time to introduce it.
>
>so far I see that we want to merge based on different bits, but let's
>see what will come from exploratory work that Sergey is doing right now.
>
>and anything that is not a device/driver feels much more lightweight to
>operate with (think &ice_adapter, but extended with more fields).
>Could you elaborate more on what you have in mind? (Or what you could
>imagine reusing).

Nothing concrete really. See below.

>
>offtop:
>It will be a good hook to put resources that are shared across ports
>under it in devlink resources, so making this "merged device" an entity
>would enable higher layer over what we have with devlink xxx $pf.

Yes. That would be great. I think we need a "device" in a sense of
struct device instance. Then you can properly model the relationships in
sysfs, you can have devlink for that, etc.

drivers/base/component.c does merging of multiple devices, but it does
not create a "merged device", this is missing there. So we have 2
options:

1) extend drivers/base/component.c to allow to create a merged device
   entity
2) implement merged device infrastructure separatelly.

IDK. I believe we need to rope more people in.


>
>> 
>> 
>> > 
>> > 
>> > I've tried explaining the issues with this to HW designers here, but so
>> > far haven't gotten a lot of traction.
>> > 
>> > > > We could make use of ice_adapter, though we'd need some logic to manage
>> > > > devices which have multiple clocks, as well as devices like the one
>> > > > Sergey is working on which tie multiple adapters together.
>> > > 
>> > > Perhaps that is an answer. Maybe we can make DPLL much more simple after
>> > > that :)
>> > 
>> > The only major issue with ice_adapter is the case where we have one
>> > clock connected to multiple adapters, but hopefully Sergey has some
>> > ideas for how to solve that.
>> > 
>> > I think we can mostly make the rest of the logic for the usual case work
>> > via ice_adapter:
>> > 
>> > 1) we already get an ice_adapter reference during early probe
>> > 2) each PF knows whether its an owner or not from the NVM/firmware interface
>> > 3) we can move the list of ports from the auxbus thing into ice_adapter,
>> > possibly keeping one list per clock number, so that NVMs with multiple
>> > clocks enabled don't have conflicts or put all ports onto the same clock.
>> > 
>> > I'm not sure how best to solve the weird case when we have multiple
>> > adapters tied together, but perhaps something with extending how the
>> > ice_adapter lookup is done could work? Sergey, I think we can continue
>> > this design discussion off list and come up with a proposal.
>> > 
>> > We also have to be careful that whatever new solution also handles
>> > things which we got with auxiliary bus:
>> > 
>> > 1) prevent issues with ordering if a clock port loads before the clock
>> > owner PF. If the clock owner loads first, then we need to ensure the
>> > port still gets initialized. If the clock owner loads second, we need to
>> > avoid issues with things not being setup yet, i.e. ensure all the
>> > structures were already initialized (for example by initializing lists
>> > and such when we create the ice_adapter, not when the clock owner loads).
>> > 
>> > 2) prevent issues with teardown ordering that were previously serialized
>> > by the auxiliary bus unregister bits, where the driver unregister
>> > function would wait for all ports to shutdown.
>> > 
>> > I think this can be done correctly with ice_adapter, but I wanted to
>> > point them out because we get them implicitly with the current design
>> > with auxiliary bus.
>
