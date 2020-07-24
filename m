Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AE222D213
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 01:09:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D66F4204F4;
	Fri, 24 Jul 2020 23:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id trW3tBrinIuO; Fri, 24 Jul 2020 23:09:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B9E8C204EA;
	Fri, 24 Jul 2020 23:09:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E870A1BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:08:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E3E5187079
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:08:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ssPWpQR0qbLa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 23:08:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EB12B87047
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:08:58 +0000 (UTC)
Received: by mail-qv1-f41.google.com with SMTP id m9so4863613qvx.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 16:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W+lOXkGNbXSrL422YX/enrojtAYvaVAnEl+/3pcekH0=;
 b=A04CMYMuwMoinC6QRxZbY+B8CU6VeneouKIUyGVdUFJcKD7jUCWvieyONijCvhJozS
 +LRDEOJhGU/m+hACQHyah7qBOSCN1R7dXaraWdrKOemvN0A5W7dbo88KsFPqP/E99eDf
 SB2t6YVH9oRhpbXRBr4Vj+YKI4LH3rQm4+xdrrCY2zffpiD3sMWS1K+npcLNRutCnQJQ
 /toY1Fshib6J6xjxNgw7RrqPHsxnX6SAmukMnM4awQJacyVuDOk04ohMSjwP9riE0DX4
 bfePVOa1KBHkdNKp0WQGh9PliS+FZapbp6Ax0a00Ouz8m+7qIN21x/HcpgDM1EbjEzAo
 8Igw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W+lOXkGNbXSrL422YX/enrojtAYvaVAnEl+/3pcekH0=;
 b=grqrSxScMr6kwxODgcYDRMPr4TBOYbQy5zmwOYTxvF/Uq/kiElDGWX64YZ9FjoztJJ
 WZlzrbBAB+mMbqKXbMDbDPxuWOKGgllVBwc8F5ors4aU4fX8aF6dGh7H2HS2ShwPmotl
 RNUz9fZtaaFIfkVZevLCesrQNeENYEfHlpSWM1SaszKSvms1JSe0JwxrCcljTfw9W6+w
 wHXBU+kKSA18BmZZKkXpZ1BBN3YjOBqk24bND04qQe/NTvSj1BgA7vQGD9YsAI21egA7
 KSR8el2mDUOQhq9zV1p2JmIld4eEvojSGkUnTfnZoBK8GxvxcIy44rGfjxJqosbE5WMn
 U9zw==
X-Gm-Message-State: AOAM531pYRNJxxPgdfLofQ63/B3oGGUKis+g/dSHWY8yKomYdn7SBNuC
 DbdiVy/8kz9RV+w/g5PMK5MX+OwZrgj6db8qdjw=
X-Google-Smtp-Source: ABdhPJwX+ETJ4BwpASHyaZb1f8f3pAFm/ZhZZePZSJXbMBE0BeL4P3iuloJNqIaqFvxZo1qu4tyENpj7XRCaKUgIziI=
X-Received: by 2002:a05:6214:88e:: with SMTP id
 cz14mr12134965qvb.72.1595632137681; 
 Fri, 24 Jul 2020 16:08:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZvKNXCo5bB5a6kKmsOUAiw+_daAVaSYqNW6QbSBJ0TcyQ@mail.gmail.com>
 <CAA85sZua6Q8UR7TfCGO0bV=VU0gKtqj-8o_mqH38RpKrwYZGtg@mail.gmail.com>
 <20200715133136.5f63360c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAA85sZu09Z4gydJ8rAO_Ey0zqx-8Lg28=fBJ=FxFnp6cetNd3g@mail.gmail.com>
 <CAA85sZtjCW2Yg+tXPgYyoFA5BKAVZC8kVKG=6SiR64c8ur8UcQ@mail.gmail.com>
 <20200715144017.47d06941@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAA85sZvnytPzpia_ROnkmJoZC8n4vUsrwTQh2UBs6u6g2Fgqxw@mail.gmail.com>
 <CAKgT0UdwsmE=ygE2KObzM0z-0KgrPcr59JZzVk41F6-iqsSL+Q@mail.gmail.com>
 <CAA85sZturDN7uOHMDhUnntM43PHjop=TNDb4qvEA2L=jdRa1MA@mail.gmail.com>
 <CAKgT0Uf42EhnM+zPSb-oL1R8hmo0vEdssGztptbkWKoHXS7ygw@mail.gmail.com>
 <CAA85sZtHNkocj840i0ohMVekh0B4byuojU02UunK_bR+LB1WiQ@mail.gmail.com>
 <CAKgT0UdDjabvShwDv0qiume=Q2RKGkm3JhPMZ+f8v5yO37ZLxA@mail.gmail.com>
 <CAA85sZt6B+rG8pUfRoNVOH=VqHn=rT-+2kHpFDzW+eBwvODxJA@mail.gmail.com>
 <CAKgT0UfhMjZ6kZSkfpEVHBbQ+4eHQqWRbXk5Sm4nLQD6sSrj0A@mail.gmail.com>
 <CAA85sZs5D_ReOhsEv1SVbE5D8q77utNBZ=Uv34PVof9gHs9QWw@mail.gmail.com>
 <CAA85sZvi4x1zc_21a6zPJw0rELOY=RCV4W7Fi4fvcSXfy-6m4g@mail.gmail.com>
 <CAA85sZvMjcRnuECtFBDKKAG3q2MGeytsxPx8RR-M4hSxruj5Vw@mail.gmail.com>
 <CAKgT0UfcPfNJCP=nT59t4RRwL3T8cQ5dnXeEgW1QXBG24fo-Cg@mail.gmail.com>
 <CAA85sZsEG_SCC4GLb8xaUsESrzZyAwF0qmse6sJ=e1QkK9DVsQ@mail.gmail.com>
 <CAKgT0UcY4FwAFf0BXv7vc_5ram7YkFXda78PWkdEFgMLsitvWA@mail.gmail.com>
 <CAA85sZs_PSsyZhvdKBCoAGxoZvaQFhQ6j7qoA7y8ffjs2RqEGw@mail.gmail.com>
 <CAKgT0UeL4kcV4eO-3f-xTMzO5Lc+jNjeOya3=nA21wyrkv37FA@mail.gmail.com>
 <CAA85sZv=u2EaLKuTvrOnKRn1AKkdpYcG4038zZde_3cMLMAfNw@mail.gmail.com>
 <CAA85sZvTrmKhmoW6xASgOcZqPhLMkgy_LyfzvkGcqURUuvVxcg@mail.gmail.com>
In-Reply-To: <CAA85sZvTrmKhmoW6xASgOcZqPhLMkgy_LyfzvkGcqURUuvVxcg@mail.gmail.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Sat, 25 Jul 2020 01:08:46 +0200
Message-ID: <CAA85sZvtct5qzNMAcO=jjcfuFPJ4dVfyUDzyXdqAmNDdoLUXuA@mail.gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [Intel-wired-lan] NAT performance issue 944mbit -> ~40mbit
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Jul 25, 2020 at 12:49 AM Ian Kumlien <ian.kumlien@gmail.com> wrote:
>
> On Sat, Jul 25, 2020 at 12:41 AM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> >
> > On Fri, Jul 24, 2020 at 11:51 PM Alexander Duyck
> > <alexander.duyck@gmail.com> wrote:
> > >
> > > On Fri, Jul 24, 2020 at 2:14 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:

[--8<--]

> > > > > >
> > > > > > And:
> > > > > > lspci -t
> > > > > > -[0000:00]-+-00.0
> > > > > >            +-00.2
> > > > > >            +-01.0
> > > > > >            +-01.2-[01-07]----00.0-[02-07]--+-03.0-[03]----00.0
> > > > >
> > > > > I think I now know what patch broke things for you. It is most likely
> > > > > this one that enabled ASPM on devices behind bridges:
> > > > > https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git/commit/?h=next&id=66ff14e59e8a30690755b08bc3042359703fb07a
> > > >
> > > > Ah, yes, correct
> > > >
> > > > > My advice would be to revert that patch and see if it resolves the
> > > > > issue for you.
> > > >
> > > > Could do that yes =)
> > > >
> > > > I'm mainly looking for a more generic solution...
> > >
> > > That would be the generic solution. The patch has obviously broken
> > > things so we need to address the issues. The immediate solution is to
> > > revert it, but the more correct solution may be to do something like
> > > add an allowlist for the cases where enabling ASPM will not harm
> > > system performance.
> >
> > more like a generic solution like the one you mention below where we
> > get the best of both worlds... =)
> >
> > > > > Device 3:00.0 is your i211 gigabit network controller. Notice you have
> > > > > a bridge between it and the root complex. This can be problematic as I
> > > > > believe the main reason for the code that was removed in the patch is
> > > > > that wakeups can end up being serialized if all of the links are down
> > > > > or you could end up with one of the other devices on the bridge
> > > > > utilizing the PCIe link an reducing the total throughput, especially
> > > > > if you have the link to the root complex also taking part in power
> > > > > management. Starting at the root complex it looks like you have the
> > > > > link between the bridge and the PCIe switch. It is running L1 enabled
> > > > > with a 32us time for it to reestablish link according to the root
> > > > > complex side (00:01.2->1:00.0). The next link is the switch to the
> > > > > i211 which is 2:03.0 -> 3:00.0. The interesting bit here is that the
> > > > > bridge says it only needs 32us while the NIC is saying it will need
> > > > > 64us. That upper bound is already a pretty significant value, however
> > > > > you have two links to contend with so in reality you are looking at
> > > > > something like 96us to bring up both links if they are brought up
> > > > > serially.
> > > >
> > > > hummm... Interesting... I have never managed to parse that lspci thing
> > > > properly...
> > >
> > > Actually I parsed it a bit incorrectly too.
> > >
> > > The i211 lists that it only supports up to 64us maximum delay in L1
> > > wakeup latency. The switch is advertising 32us delay to come out of L1
> > > on both the upstream and downstream ports. As such the link would be
> > > considered marginal with L1 enabled and so it should be disabled.
> > >
> > > > It is also interesting that the realtek card seems to be on the same link then?
> > > > With ASPM disabled, I wonder if that is due to the setpci command or
> > > > if it was disabled before..
> > > > (playing with setpci makes no difference but it might require a reboot.. )
> > >
> > > Are you using the same command you were using for the i211? Did you
> > > make sure to update the offset since the PCIe configuration block
> > > starts at a different offset? Also you probably need to make sure to
> > > only try to update function 0 of the device since I suspect the other
> > > functions won't have any effect.
> >
> > Ah, no, i only toggled the i211 to see if that's what caused the ASPM
> > to be disabled...
> >
> > But it seems it isn't -- will have to reboot to verify though
> >
> > > > > When you consider that you are using a Gigabit Ethernet connection
> > > > > that is moving data at roughly 1000 bits per microsecond, or 125 bytes
> > > > > per microsecond. At that rate we should have roughly 270us worth of
> > > > > packets we can buffer before we are forced to start dropping packets
> > > > > assuming the device is configured with a default 34K Rx buffer. As
> > > > > such I am not entirely sure ASPM is the only issue we have here. I
> > > > > assume you may also have CPU C states enabled as well? By any chance
> > > > > do you have C6 or deeper sleep states enabled on the system? If so
> > > > > that might be what is pushing us into the issues that you were seeing.
> > > > > Basically we are seeing something that is causing the PCIe to stall
> > > > > for over 270us. My thought is that it is likely a number of factors
> > > > > where we have too many devices sleeping and as a result the total
> > > > > wakeup latency is likely 300us or more resulting in dropped packets.
> > > >
> > > > It seems like I only have C2 as max...
> > > >
> > > > grep . /sys/devices/system/cpu/cpu0/cpuidle/state*/name
> > > > /sys/devices/system/cpu/cpu0/cpuidle/state0/name:POLL
> > > > /sys/devices/system/cpu/cpu0/cpuidle/state1/name:C1
> > > > /sys/devices/system/cpu/cpu0/cpuidle/state2/name:C2
> > > >
> > > > Anyway, we should bring this back to the mailing list
> > >
> > > That's fine. I assumed you didn't want to post the lspci to the
> > > mailing list as it might bounce for being too large.
> >
> > Good thinking, but it was actually a slip :/
> >
> > > So a generic solution for this would be to have a function that would
> > > scan the PCIe bus and determine the total L1 and L0s exit latency. If
> > > a device advertises an acceptable ASPM power state exit latency and we
> > > have met or exceeded that we should be disabling that ASPM feature for
> > > the device.
> >
> > Yeah, since I'm on vacation I'll actually see if I can look in to that!
> > (I mean, I'm not that used to these kinds of things but if my messing
> > around inspires someone
> > or if noone else is working on it, then... what the hey ;) )
>
> Uhm... so, in the function that determines latency they only do MAX
>
> Ie:
> static void pcie_aspm_check_latency(struct pci_dev *endpoint)
> {
> ...
>                 latency = max_t(u32, link->latency_up.l1, link->latency_dw.l1);
> ---
>
> I just want to see if I'm understanding you right, is it correct that
> the latency should be:
> a.up + b.dw + b.up + c.dw
>
> for a (root?) to go through b (bridge/switch?) to c (device)

Also, we only disabled L0, which isn't counted as a total at all, it
only checks each side.

Since pcie is serial and judging from your previous statements I
assume that the max statement is a bug.
I also assume that l0 counts, and should be dealt with the same way
and it should also be cumulative...

The question becomes, is this latency from root? or is it "one step"?

Also they add one microsecond but that looks like it should be
parent.l0.up + link.l0.dw latency values

So are my assumptions correct that the serial nature means that all
latenies stack?

l0 is done first, so latency is actually l0 + l1 as max latency? (per side)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
