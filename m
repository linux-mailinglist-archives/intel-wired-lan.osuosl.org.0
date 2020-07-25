Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E3D22D31F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 02:13:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7B8BD251AE;
	Sat, 25 Jul 2020 00:13:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vp4KWz0ciRGG; Sat, 25 Jul 2020 00:13:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 25404250F6;
	Sat, 25 Jul 2020 00:13:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BE4181BF59D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jul 2020 00:13:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9074387221
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jul 2020 00:13:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9OkbeFqxveYA for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Jul 2020 00:13:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5D96087C12
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jul 2020 00:13:14 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id t23so5073590qto.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 17:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7pMM3R6M1V1/GoTlRw3Up2h84muojNE6wJFJ7gJLE/w=;
 b=GRC+sPbQxW/d+59KwAM7Wzz+PJB0rjqDFaf3b1zmy73V5KqL+6G3wcAZdBTq60UTPO
 dnHfYxb/54DzVLP37A4PcUTFJjQJEE2RyW3xCFQkLTeCT3fQJCXSauLZLvQpjRCRTUOD
 wlhw2QVetoEd5GvgrHWRa0L3s1AwuuMqE0QjNbQv21D3Lps86Sd0/8VAC94GCN4aOJLH
 94MDYjqdifjgo2zv5XmJ6tK87MJUIX61js7tqMhxlp9x+aDvBgEGPlRqf7kQb0RhgAe3
 nLdC1Kuo5UDMH7ksy7ywTfbA9sPG8wImXgieKyJC9S6dnOh5i1I/PFNv83l8KfvJhloQ
 fShA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7pMM3R6M1V1/GoTlRw3Up2h84muojNE6wJFJ7gJLE/w=;
 b=Pf8eI+mZ2uwN8H+4jjZ11AkIwz917FbTWGR2gvh5njGJccFILKnT6Cy31fAnEK/BQu
 ZdT1b4jakNvivkIr/tCfldwuzgMGJOkEAXDcxu9ZV7Txy4KhDbQyb3RhBxtgaXjkcUf3
 G2POxohQMEGxfmSwquDrQgqj6hr1/bbU4ocksLD9uxPnNQIF7YPHICsPFxt28SrszIkY
 li5lp23z2jyF/oLnD9/U1myAJGJBWO5+OYfSU4C7kI0dukiArawqVLV0BwR22n1aent0
 TagI+CoeYzLrSlpf7li5Q/daA9k9784SKwt0XrC0C9TDQaaNZbgIZoAAVJbwVoHlxg5w
 /hPw==
X-Gm-Message-State: AOAM5320MGEo2Wk98O99FtcJ0D0DGRicOYvV7TWnqrmEOmrwBCluZxyZ
 uyZ44u3ZpJgpKWl+Nyz2254NajIdL2h5N6GMZrg=
X-Google-Smtp-Source: ABdhPJxsTJvOQ6mg/FclwDwQw4avQ7dN9njxA5VT2Yztqrp5d3v0hc6diW9GBNjjWoksBmqKziVlf6KWYlFwGySujd8=
X-Received: by 2002:ac8:5416:: with SMTP id b22mr4015671qtq.45.1595635993131; 
 Fri, 24 Jul 2020 17:13:13 -0700 (PDT)
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
 <CAA85sZvtct5qzNMAcO=jjcfuFPJ4dVfyUDzyXdqAmNDdoLUXuA@mail.gmail.com>
In-Reply-To: <CAA85sZvtct5qzNMAcO=jjcfuFPJ4dVfyUDzyXdqAmNDdoLUXuA@mail.gmail.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Sat, 25 Jul 2020 02:13:01 +0200
Message-ID: <CAA85sZsRboyebNzFL1MHWq2i-R7wyqh-93kmhu9c-A4qHKk3Aw@mail.gmail.com>
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

On Sat, Jul 25, 2020 at 1:08 AM Ian Kumlien <ian.kumlien@gmail.com> wrote:
>
> On Sat, Jul 25, 2020 at 12:49 AM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> >
> > On Sat, Jul 25, 2020 at 12:41 AM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> > >
> > > On Fri, Jul 24, 2020 at 11:51 PM Alexander Duyck
> > > <alexander.duyck@gmail.com> wrote:
> > > >
> > > > On Fri, Jul 24, 2020 at 2:14 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
>
> [--8<--]
>
> > > > > > >
> > > > > > > And:
> > > > > > > lspci -t
> > > > > > > -[0000:00]-+-00.0
> > > > > > >            +-00.2
> > > > > > >            +-01.0
> > > > > > >            +-01.2-[01-07]----00.0-[02-07]--+-03.0-[03]----00.0
> > > > > >
> > > > > > I think I now know what patch broke things for you. It is most likely
> > > > > > this one that enabled ASPM on devices behind bridges:
> > > > > > https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git/commit/?h=next&id=66ff14e59e8a30690755b08bc3042359703fb07a
> > > > >
> > > > > Ah, yes, correct
> > > > >
> > > > > > My advice would be to revert that patch and see if it resolves the
> > > > > > issue for you.
> > > > >
> > > > > Could do that yes =)
> > > > >
> > > > > I'm mainly looking for a more generic solution...
> > > >
> > > > That would be the generic solution. The patch has obviously broken
> > > > things so we need to address the issues. The immediate solution is to
> > > > revert it, but the more correct solution may be to do something like
> > > > add an allowlist for the cases where enabling ASPM will not harm
> > > > system performance.
> > >
> > > more like a generic solution like the one you mention below where we
> > > get the best of both worlds... =)
> > >
> > > > > > Device 3:00.0 is your i211 gigabit network controller. Notice you have
> > > > > > a bridge between it and the root complex. This can be problematic as I
> > > > > > believe the main reason for the code that was removed in the patch is
> > > > > > that wakeups can end up being serialized if all of the links are down
> > > > > > or you could end up with one of the other devices on the bridge
> > > > > > utilizing the PCIe link an reducing the total throughput, especially
> > > > > > if you have the link to the root complex also taking part in power
> > > > > > management. Starting at the root complex it looks like you have the
> > > > > > link between the bridge and the PCIe switch. It is running L1 enabled
> > > > > > with a 32us time for it to reestablish link according to the root
> > > > > > complex side (00:01.2->1:00.0). The next link is the switch to the
> > > > > > i211 which is 2:03.0 -> 3:00.0. The interesting bit here is that the
> > > > > > bridge says it only needs 32us while the NIC is saying it will need
> > > > > > 64us. That upper bound is already a pretty significant value, however
> > > > > > you have two links to contend with so in reality you are looking at
> > > > > > something like 96us to bring up both links if they are brought up
> > > > > > serially.
> > > > >
> > > > > hummm... Interesting... I have never managed to parse that lspci thing
> > > > > properly...
> > > >
> > > > Actually I parsed it a bit incorrectly too.
> > > >
> > > > The i211 lists that it only supports up to 64us maximum delay in L1
> > > > wakeup latency. The switch is advertising 32us delay to come out of L1
> > > > on both the upstream and downstream ports. As such the link would be
> > > > considered marginal with L1 enabled and so it should be disabled.
> > > >
> > > > > It is also interesting that the realtek card seems to be on the same link then?
> > > > > With ASPM disabled, I wonder if that is due to the setpci command or
> > > > > if it was disabled before..
> > > > > (playing with setpci makes no difference but it might require a reboot.. )
> > > >
> > > > Are you using the same command you were using for the i211? Did you
> > > > make sure to update the offset since the PCIe configuration block
> > > > starts at a different offset? Also you probably need to make sure to
> > > > only try to update function 0 of the device since I suspect the other
> > > > functions won't have any effect.
> > >
> > > Ah, no, i only toggled the i211 to see if that's what caused the ASPM
> > > to be disabled...
> > >
> > > But it seems it isn't -- will have to reboot to verify though
> > >
> > > > > > When you consider that you are using a Gigabit Ethernet connection
> > > > > > that is moving data at roughly 1000 bits per microsecond, or 125 bytes
> > > > > > per microsecond. At that rate we should have roughly 270us worth of
> > > > > > packets we can buffer before we are forced to start dropping packets
> > > > > > assuming the device is configured with a default 34K Rx buffer. As
> > > > > > such I am not entirely sure ASPM is the only issue we have here. I
> > > > > > assume you may also have CPU C states enabled as well? By any chance
> > > > > > do you have C6 or deeper sleep states enabled on the system? If so
> > > > > > that might be what is pushing us into the issues that you were seeing.
> > > > > > Basically we are seeing something that is causing the PCIe to stall
> > > > > > for over 270us. My thought is that it is likely a number of factors
> > > > > > where we have too many devices sleeping and as a result the total
> > > > > > wakeup latency is likely 300us or more resulting in dropped packets.
> > > > >
> > > > > It seems like I only have C2 as max...
> > > > >
> > > > > grep . /sys/devices/system/cpu/cpu0/cpuidle/state*/name
> > > > > /sys/devices/system/cpu/cpu0/cpuidle/state0/name:POLL
> > > > > /sys/devices/system/cpu/cpu0/cpuidle/state1/name:C1
> > > > > /sys/devices/system/cpu/cpu0/cpuidle/state2/name:C2
> > > > >
> > > > > Anyway, we should bring this back to the mailing list
> > > >
> > > > That's fine. I assumed you didn't want to post the lspci to the
> > > > mailing list as it might bounce for being too large.
> > >
> > > Good thinking, but it was actually a slip :/
> > >
> > > > So a generic solution for this would be to have a function that would
> > > > scan the PCIe bus and determine the total L1 and L0s exit latency. If
> > > > a device advertises an acceptable ASPM power state exit latency and we
> > > > have met or exceeded that we should be disabling that ASPM feature for
> > > > the device.
> > >
> > > Yeah, since I'm on vacation I'll actually see if I can look in to that!
> > > (I mean, I'm not that used to these kinds of things but if my messing
> > > around inspires someone
> > > or if noone else is working on it, then... what the hey ;) )
> >
> > Uhm... so, in the function that determines latency they only do MAX
> >
> > Ie:
> > static void pcie_aspm_check_latency(struct pci_dev *endpoint)
> > {
> > ...
> >                 latency = max_t(u32, link->latency_up.l1, link->latency_dw.l1);
> > ---
> >
> > I just want to see if I'm understanding you right, is it correct that
> > the latency should be:
> > a.up + b.dw + b.up + c.dw
> >
> > for a (root?) to go through b (bridge/switch?) to c (device)
>
> Also, we only disabled L0, which isn't counted as a total at all, it
> only checks each side.
>
> Since pcie is serial and judging from your previous statements I
> assume that the max statement is a bug.
> I also assume that l0 counts, and should be dealt with the same way
> and it should also be cumulative...
>
> The question becomes, is this latency from root? or is it "one step"?
>
> Also they add one microsecond but that looks like it should be
> parent.l0.up + link.l0.dw latency values
>
> So are my assumptions correct that the serial nature means that all
> latenies stack?
>
> l0 is done first, so latency is actually l0 + l1 as max latency? (per side)

Found some intel documentation "PCI Express compiler v6.1 User Guide" and it
does seem like the l0 and l1 latencies are cumulative...

So it looks like we should have something like:
        while (link) {
                /* Check L0s latency, this is cumulative from the root */
                if (link->aspm_capable & ASPM_STATE_L0S) {
                        /* Check downstream direction L0s latency */
                        if (link->aspm_capable & ASPM_STATE_L0S_DW)
                                l0_switch_latency += link->latency_dw.l0s;
                        /* Add upstream direction L0s parent latency */
                        if (link->parent && link->parent->aspm_capable
& ASPM_STATE_L0S_UP)
                                l0_switch_latency +=
link->parent->latency_up.l0s;

                        /* Clear ASPM L0 since the latency is too high */
                        if (l0_switch_latency > acceptable->l0s)

endpoint->bus->self->link_state->aspm_capable &= ~ASPM_STATE_L0S
                }

                latency = link->latency_up.l1 + link->latency_dw.l1;
                if (link->aspm_capable & ASPM_STATE_L1) {
                        l1_switch_latency += link->latency_dw.l1;
                        if (link->parent && link->parent->aspm_capable
& ASPM_STATE_L1)
                                l1_switch_latency +=
link->parent->latency.up.l1;

                        /* Clear ASPM L1 since the latency is too high */
                        /* FIXME: should l0 latency be used here? */
                        if (l1_switch_latency + l0_switch_latency >
acceptable->l1)

endpoint->bus->self->link_state->aspm_capable &= ~ASPM_STATE_L1
                        /* FIXME: is this still required? */
                        l1_switch_latency += 1000;
                }

                link = link->parent;
---

I don't know if i got downstream/upstream right though... But as you
can see there are a few questions...
An additional question is if it's enough to only clear endpoints or if
i should walk the path... (it does feel like endpoints would be good
enough)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
