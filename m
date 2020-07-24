Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6567022D17D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jul 2020 23:51:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F16FA88B39;
	Fri, 24 Jul 2020 21:51:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uWRI12lYle4w; Fri, 24 Jul 2020 21:51:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9779388B28;
	Fri, 24 Jul 2020 21:51:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 997F11BF84C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 21:51:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8F93087286
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 21:51:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dMGR1pJI7tEz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 21:51:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
 [209.85.166.49])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 45F318688A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 21:51:09 +0000 (UTC)
Received: by mail-io1-f49.google.com with SMTP id i4so11260238iov.11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 14:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=Rsx3dY+nrBUVoFbZEMrzCDYQd2XISia/K3/j9HqR8mI=;
 b=RhiHNAgHgbmF6HhgT8WRV+Im5420N3BK1uObIAxL0j7edbxhx1AuBAu9zAh4L8cSfa
 YuOHO0f+3pB12sKJ0NDyKZnY9UQTKHwDBGPg5IoB2PUuXWVLT5Kr6XebEeEziq349pF7
 qpxn5Nf21yK0av1O70Cp0RQ00vKxtKPHVwHHKJypj6UiaNs1ryr2n/7RZEArMqEAGr61
 PWyTbd26HwZCQUUpo4QwrUTH5z00k8dRosq8KNa3STprdwMg5X0GfFtq97B2vo5+xOT6
 ZslBgxRCxeT2AfOejGRse29LV4aSEhHLTd8tTrsO+mnLoDTnNP94oCBct6SH52PEiqVc
 To4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=Rsx3dY+nrBUVoFbZEMrzCDYQd2XISia/K3/j9HqR8mI=;
 b=KIt2tndTymXEYkI4FqP/jH7CATz5qR+kXaxqEp4TMdP8DryIl7eBW5Kl2PsF88XF65
 enpnW3eosQLa7b8e199avUW/alFP3oyXS8giZ+/7WLCb+vGHM834LBuIb4dqdB4WmLkG
 qwZmCErJuFrByA0YnHh913i3TGL/bM8OgpPsp7G+py+V9CesQpw7ftxZrQfIeMMlbolv
 ANn9wQs10uR5oghVLqrR+NnjIgdd9cVnR3I4pUvARAm2iwLL6JEdPfKX7iZAt7yxfWqv
 D+rgU6hdDq9BUei8hh3kBnfNOrJXRXFnww1hY3wM9dfjRBp3KITUxahueqEYJwXLUKH7
 BerQ==
X-Gm-Message-State: AOAM532G7iPIX1lKRkIXLPDpoyaF7Bdkz+tbhp/Pwbz6WYwCOKBt0SJq
 bH72VeZNog5/vGPVrBUkyR3oifK0LQul8ym9ExQ=
X-Google-Smtp-Source: ABdhPJwAZd5funO0dVbHyzUztiR8Svl7z0Nu8UwTiyuCf5dEyGeRMlnZLxK+S0XTI9Z/kqvNgY6+TK7W82PpqCub7Ks=
X-Received: by 2002:a5d:8d04:: with SMTP id p4mr12527071ioj.187.1595627468372; 
 Fri, 24 Jul 2020 14:51:08 -0700 (PDT)
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
In-Reply-To: <CAA85sZs_PSsyZhvdKBCoAGxoZvaQFhQ6j7qoA7y8ffjs2RqEGw@mail.gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Fri, 24 Jul 2020 14:50:57 -0700
Message-ID: <CAKgT0UeL4kcV4eO-3f-xTMzO5Lc+jNjeOya3=nA21wyrkv37FA@mail.gmail.com>
To: Ian Kumlien <ian.kumlien@gmail.com>, 
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 24, 2020 at 2:14 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
>
> On Fri, Jul 24, 2020 at 10:45 PM Alexander Duyck
> <alexander.duyck@gmail.com> wrote:
> >
> > On Fri, Jul 24, 2020 at 12:23 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> > >
> > > On Fri, Jul 24, 2020 at 4:57 PM Alexander Duyck
> > > <alexander.duyck@gmail.com> wrote:
> > > >
> > > > On Fri, Jul 24, 2020 at 5:33 AM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> > > > >
> > > > > On Fri, Jul 24, 2020 at 2:01 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> > > > > >
> > > > > > On Fri, Jul 17, 2020 at 3:45 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> > > > >
> > > > > [--8<--]
> > > > >
> > > > > > As a side note, would something like this fix it - not even compile tested
> > > > > >
> > > > > >
> > > > > > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> > > > > > b/drivers/net/ethernet/intel/igb/igb_main.c
> > > > > > index 8bb3db2cbd41..1a7240aae85c 100644
> > > > > > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > > > > > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > > > > > @@ -3396,6 +3396,13 @@ static int igb_probe(struct pci_dev *pdev,
> > > > > > const struct pci_device_id *ent)
> > > > > >                           "Width x2" :
> > > > > >                           (hw->bus.width == e1000_bus_width_pcie_x1) ?
> > > > > >                           "Width x1" : "unknown"), netdev->dev_addr);
> > > > > > +               /* quirk */
> > > > > > +#ifdef CONFIG_PCIEASPM
> > > > > > +               if (hw->bus.width == e1000_bus_width_pcie_x1) {
> > > > > > +                       /* single lane pcie causes problems with ASPM */
> > > > > > +                       pdev->pcie_link_state->aspm_enabled = 0;
> > > > > > +               }
> > > > > > +#endif
> > > > > >         }
> > > > > >
> > > > > >         if ((hw->mac.type >= e1000_i210 ||
> > > > > >
> > > > > > I don't know where the right place to put a quirk would be...
> > > > >
> > > > > Ok so that was a real brainfart... turns out that there is a lack of
> > > > > good ways to get to that but it was more intended to
> > > > > know where the quirk should go...
> > > > >
> > > > > Due to the lack of api:s i started wondering if this will apply to
> > > > > more devices than just network cards - potentially we could
> > > > > be a little bit more selective and only not enable it in one direction but...
> > > > >
> > > > > diff --git a/drivers/pci/pcie/aspm.c b/drivers/pci/pcie/aspm.c
> > > > > index b17e5ffd31b1..96a3c6837124 100644
> > > > > --- a/drivers/pci/pcie/aspm.c
> > > > > +++ b/drivers/pci/pcie/aspm.c
> > > > > @@ -584,15 +584,16 @@ static void pcie_aspm_cap_init(struct
> > > > > pcie_link_state *link, int blacklist)
> > > > >          * given link unless components on both sides of the link each
> > > > >          * support L0s.
> > > > >          */
> > > > > -       if (dwreg.support & upreg.support & PCIE_LINK_STATE_L0S)
> > > > > -               link->aspm_support |= ASPM_STATE_L0S;
> > > > > -       if (dwreg.enabled & PCIE_LINK_STATE_L0S)
> > > > > -               link->aspm_enabled |= ASPM_STATE_L0S_UP;
> > > > > -       if (upreg.enabled & PCIE_LINK_STATE_L0S)
> > > > > -               link->aspm_enabled |= ASPM_STATE_L0S_DW;
> > > > > -       link->latency_up.l0s = calc_l0s_latency(upreg.latency_encoding_l0s);
> > > > > -       link->latency_dw.l0s = calc_l0s_latency(dwreg.latency_encoding_l0s);
> > > > > -
> > > > > +       if (pcie_get_width_cap(child) != PCIE_LNK_X1) {
> > > > > +               if (dwreg.support & upreg.support & PCIE_LINK_STATE_L0S)
> > > > > +                       link->aspm_support |= ASPM_STATE_L0S;
> > > > > +               if (dwreg.enabled & PCIE_LINK_STATE_L0S)
> > > > > +                       link->aspm_enabled |= ASPM_STATE_L0S_UP;
> > > > > +               if (upreg.enabled & PCIE_LINK_STATE_L0S)
> > > > > +                       link->aspm_enabled |= ASPM_STATE_L0S_DW;
> > > > > +               link->latency_up.l0s =
> > > > > calc_l0s_latency(upreg.latency_encoding_l0s);
> > > > > +               link->latency_dw.l0s =
> > > > > calc_l0s_latency(dwreg.latency_encoding_l0s);
> > > > > +       }
> > > > >
> > > > > this time it's compile tested...
> > > > >
> > > > > It could also be  if (pcie_get_width_cap(child) > PCIE_LNK_X1) {
> > > > >
> > > > > I assume that ASPM is not enabled for: PCIE_LNK_WIDTH_RESRV ;)
> > > >
> > > > This is probably a bit too broad of a scope to be used generically
> > > > since this will disable ASPM for all devices that have a x1 link
> > > > width.
> > >
> > > I agree, but also, the change to enable aspm on the controllers was
> > > quite recent so it could be a general
> > > issue that a lot of people could be suffering from... I haven't seen
> > > any reports though...
> >
> > The problem is your layout is very likely specific. It may effect
> > others with a similar layout, but for example I have the same
> > controller in one of my systems and I have not been having any issues.
> >
> > > But otoh worst case would be a minor revert in power usage ;)
> > >
> > > > It might make more sense to look at something such as
> > > > e1000e_disable_aspm as an example of how to approach this.
> > >
> > > Oh, my grepping completely failed to dig up this, thanks!
> >
> > https://elixir.bootlin.com/linux/latest/source/drivers/net/ethernet/intel/e1000e/netdev.c#L6743
> >
> > > > As far as what triggers it we would need to get more details about the
> > > > setup. I'd be curious if we have an "lspci -vvv" for the system
> > > > available. The assumption is that the ASPM exit latency is high on
> > > > this system and that in turn is causing the bandwidth issues as you
> > > > start entering L1. If I am not mistaken the device should advertise
> > > > about 16us for the exit latency. I'd be curious if we have a device
> > > > somewhere between the NIC and the root port that might be increasing
> > > > the delay in exiting L1, and then if we could identify that we could
> > > > add a PCIe quirk for that.
> > >
> > > We only disabled the L0s afair, but from e1000e_disable_aspm - "can't
> > > have L1 without L0s"
> > > so perhaps they are disabled as well...
> >
> > Not sure where you got that from. It looks like with your system the
> > L0s is disabled and you only have support for L1.
>
> First of all, sorry, I accidentally dropped the mailinglist :(
>
> And the comment I quoted was from the e1000e_disable_aspm:
>         switch (state) {
>         case PCIE_LINK_STATE_L0S:
>         case PCIE_LINK_STATE_L0S | PCIE_LINK_STATE_L1:
>                 aspm_dis_mask |= PCI_EXP_LNKCTL_ASPM_L0S;
>                 /* fall-through - can't have L1 without L0s */
>        <====
>         case PCIE_LINK_STATE_L1:
>                 aspm_dis_mask |= PCI_EXP_LNKCTL_ASPM_L1;
>                 break;
>         default:
>                 return;
>         }
> ----
>
> > >
> > > And:
> > > lspci -t
> > > -[0000:00]-+-00.0
> > >            +-00.2
> > >            +-01.0
> > >            +-01.2-[01-07]----00.0-[02-07]--+-03.0-[03]----00.0
> >
> > I think I now know what patch broke things for you. It is most likely
> > this one that enabled ASPM on devices behind bridges:
> > https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git/commit/?h=next&id=66ff14e59e8a30690755b08bc3042359703fb07a
>
> Ah, yes, correct
>
> > My advice would be to revert that patch and see if it resolves the
> > issue for you.
>
> Could do that yes =)
>
> I'm mainly looking for a more generic solution...

That would be the generic solution. The patch has obviously broken
things so we need to address the issues. The immediate solution is to
revert it, but the more correct solution may be to do something like
add an allowlist for the cases where enabling ASPM will not harm
system performance.

> > Device 3:00.0 is your i211 gigabit network controller. Notice you have
> > a bridge between it and the root complex. This can be problematic as I
> > believe the main reason for the code that was removed in the patch is
> > that wakeups can end up being serialized if all of the links are down
> > or you could end up with one of the other devices on the bridge
> > utilizing the PCIe link an reducing the total throughput, especially
> > if you have the link to the root complex also taking part in power
> > management. Starting at the root complex it looks like you have the
> > link between the bridge and the PCIe switch. It is running L1 enabled
> > with a 32us time for it to reestablish link according to the root
> > complex side (00:01.2->1:00.0). The next link is the switch to the
> > i211 which is 2:03.0 -> 3:00.0. The interesting bit here is that the
> > bridge says it only needs 32us while the NIC is saying it will need
> > 64us. That upper bound is already a pretty significant value, however
> > you have two links to contend with so in reality you are looking at
> > something like 96us to bring up both links if they are brought up
> > serially.
>
> hummm... Interesting... I have never managed to parse that lspci thing
> properly...

Actually I parsed it a bit incorrectly too.

The i211 lists that it only supports up to 64us maximum delay in L1
wakeup latency. The switch is advertising 32us delay to come out of L1
on both the upstream and downstream ports. As such the link would be
considered marginal with L1 enabled and so it should be disabled.

> It is also interesting that the realtek card seems to be on the same link then?
> With ASPM disabled, I wonder if that is due to the setpci command or
> if it was disabled before..
> (playing with setpci makes no difference but it might require a reboot.. )

Are you using the same command you were using for the i211? Did you
make sure to update the offset since the PCIe configuration block
starts at a different offset? Also you probably need to make sure to
only try to update function 0 of the device since I suspect the other
functions won't have any effect.

> > When you consider that you are using a Gigabit Ethernet connection
> > that is moving data at roughly 1000 bits per microsecond, or 125 bytes
> > per microsecond. At that rate we should have roughly 270us worth of
> > packets we can buffer before we are forced to start dropping packets
> > assuming the device is configured with a default 34K Rx buffer. As
> > such I am not entirely sure ASPM is the only issue we have here. I
> > assume you may also have CPU C states enabled as well? By any chance
> > do you have C6 or deeper sleep states enabled on the system? If so
> > that might be what is pushing us into the issues that you were seeing.
> > Basically we are seeing something that is causing the PCIe to stall
> > for over 270us. My thought is that it is likely a number of factors
> > where we have too many devices sleeping and as a result the total
> > wakeup latency is likely 300us or more resulting in dropped packets.
>
> It seems like I only have C2 as max...
>
> grep . /sys/devices/system/cpu/cpu0/cpuidle/state*/name
> /sys/devices/system/cpu/cpu0/cpuidle/state0/name:POLL
> /sys/devices/system/cpu/cpu0/cpuidle/state1/name:C1
> /sys/devices/system/cpu/cpu0/cpuidle/state2/name:C2
>
> Anyway, we should bring this back to the mailing list

That's fine. I assumed you didn't want to post the lspci to the
mailing list as it might bounce for being too large.

So a generic solution for this would be to have a function that would
scan the PCIe bus and determine the total L1 and L0s exit latency. If
a device advertises an acceptable ASPM power state exit latency and we
have met or exceeded that we should be disabling that ASPM feature for
the device.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
