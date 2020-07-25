Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1ED422D9CE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 22:17:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5DBC8882D8;
	Sat, 25 Jul 2020 20:17:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9U3t6no-pltN; Sat, 25 Jul 2020 20:17:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5BC8B88281;
	Sat, 25 Jul 2020 20:17:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6BC821BF35B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jul 2020 20:16:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6449088275
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jul 2020 20:16:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I4IZ+cXkl3nJ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Jul 2020 20:16:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com
 [209.85.219.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 24A38880C2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jul 2020 20:16:58 +0000 (UTC)
Received: by mail-qv1-f68.google.com with SMTP id t7so5713481qvl.8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jul 2020 13:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RuKC6bIME12iFpKEQ9xDQRYSHtbEl5yECWpn373MNV8=;
 b=OXK+9Y6GnavldrOfbis0iISyTWhSlM6yvSUxlr1BNA561IJoMGONmyoL6cQFbAUnT0
 iHVjMMBgJeYvD1+wqWDlG2ZguT1861SA8NHV1ljt99lWZG4XGH8unnJxcOrEq8lwZ30c
 PMdW0Owwf+y2wE2y9cgjhhuAmdzBNRg9FK9HyW4Z27MiH9C8q0ry7bxqEErAu96LvHe1
 k4lTp6AroctNGj3BkU6KXgpIVhdphPQRVnCBKHh67gQiKB/c+jvwHqd3sMnGN0b/10Jm
 N1YtVNaxE1I0b99xMSVMDwL4a3dQ88X+XwK628+HRgqBdhl55nCY3aw3qikIwr48/gkX
 fEmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RuKC6bIME12iFpKEQ9xDQRYSHtbEl5yECWpn373MNV8=;
 b=HQXEK36mHw7J/r6JA0wQVWrty5cM6pdIU7SaJi3yFTRt/crhIimjNlSx1J15zz9P18
 G4vkiUvlwQJHxXULzVm0STMLVUzxksiS2HR1C3j4qQ642F8qR6ixtYrVFr2e7RgOPpZc
 hACVnI210aqNdHHvmbaP2TcBdvQ2+RuSi87KvUdf3FTU2M9JSpYQs3jsn3PddRH2WbM5
 vA5rRyPjLtm0CoGYXoQY/Vxe6HRP2sAevFIyL/wR40uioEnsBD/o1CWs3ahpbHVqy+3i
 SndcH2d0wOMq7z7PbmdJ5vGKCMK3WXtF/8OJW/9bxfs0g0cg+JTwzRcgB3NALhowOU56
 PoSQ==
X-Gm-Message-State: AOAM531Gnn6NrI1l5HqURsFSDwbuqXdh2RDnpCnnOZTqgjb9evSVwhqR
 G1SgIB76mFe6G239ZAVnav61287cXzq/JNOyu7OCfxKnJPA=
X-Google-Smtp-Source: ABdhPJwds19mYmvF/5rIs5PXuWS0ABG3eKyWu8XZiV7Nfo6JjL7pdWkjOSiINvx9vhthWgRc8N0AKLBmDENdaMJUaE8=
X-Received: by 2002:a0c:b791:: with SMTP id l17mr16246659qve.44.1595708216836; 
 Sat, 25 Jul 2020 13:16:56 -0700 (PDT)
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
 <CAKgT0UdanNRN_KFkUjjpkiMPfi1ktjeD1ejiqnU_rU-0wJVn5A@mail.gmail.com>
 <CAA85sZu0B2DybQuQD2uJO6r7HXkGFbAxV8VoG4qxE681yMwmfg@mail.gmail.com>
 <CAA85sZtm8W8NHhQ-vg1HQzAyUE6hdjkO4c5M7BEbgZwC_DUsSw@mail.gmail.com>
 <CAKgT0Ue0JEmn2zN7yenohow8KhsX6jVfG4X0+Gt+p0uJijoTzA@mail.gmail.com>
 <CAA85sZsk0N_G=w+qFxuOwD=C+BQxy1Nh1ZD4ud+gwzO_gu5H6Q@mail.gmail.com>
 <CAA85sZtif5bGEYQjA2mb4-8n5N9FB9oL-y0LuZ6P4hhR=7=d2g@mail.gmail.com>
 <CAKgT0UeJ-B9ZfKzY9Ca44-nGXzmPDtKfdO8ALXay9bAc4wGRfg@mail.gmail.com>
In-Reply-To: <CAKgT0UeJ-B9ZfKzY9Ca44-nGXzmPDtKfdO8ALXay9bAc4wGRfg@mail.gmail.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Sat, 25 Jul 2020 22:16:45 +0200
Message-ID: <CAA85sZth2EZD6UfZYzeaU8-ujg=7NJvyym=of3p+faVNsY-qKA@mail.gmail.com>
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

On Sat, Jul 25, 2020 at 10:10 PM Alexander Duyck
<alexander.duyck@gmail.com> wrote:
>
> On Sat, Jul 25, 2020 at 12:35 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> >
> > On Sat, Jul 25, 2020 at 8:56 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> > >
> > > On Sat, Jul 25, 2020 at 7:43 PM Alexander Duyck
> > > <alexander.duyck@gmail.com> wrote:
> > > >
> > > > On Sat, Jul 25, 2020 at 6:53 AM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> > > > >
> > > > > On Sat, Jul 25, 2020 at 3:03 AM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> > > > > > On Sat, Jul 25, 2020 at 2:45 AM Alexander Duyck
> > > > > > <alexander.duyck@gmail.com> wrote:
> > > > > > > On Fri, Jul 24, 2020 at 4:08 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> > > > >
> > > > > [--8<--]
> > > > >
> > > > > > > Actually I think it is max(a.dw, b.up) + max(b.dw, a.up). Basically
> > > > > > > what you want is the maximum time to bring the link up so technically
> > > > > > > you only have 2 links so you just have to add up the maximum time to
> > > > > > > create each link.
> > > > > >
> > > > > > Ah so it's not cumulative per link, only max value on one, got it!
> > > > > >
> > > > > > > > Also, we only disabled L0, which isn't counted as a total at all, it
> > > > > > > > only checks each side.
> > > > > > >
> > > > > > > Not sure what you mean here. L0 is the link fully powered on. The two
> > > > > > > link states we have to worry about are L0s and L1 as those involve
> > > > > > > various states of power-down. The L1 latency is the nasty one as that
> > > > > > > basically involves fully powering down the link and requires time for
> > > > > > > the link to be reestablished.
> > > > > >
> > > > > > we basically did the &= ~ASPM_STATE_L0S - is the S indicative of something?
> > > > > >
> > > > > > > > Since pcie is serial and judging from your previous statements I
> > > > > > > > assume that the max statement is a bug.
> > > > > > > > I also assume that l0 counts, and should be dealt with the same way
> > > > > > > > and it should also be cumulative...
> > > > > > >
> > > > > > > That latency check looks like it would be for a single link. Not each
> > > > > > > link in the chain.
> > > > > >
> > > > > > Yes, it checks each link in the chain, which is incorrect, it's actually the
> > > > > > cumulative latency that is important... Well... according to what I have
> > > > > > been able to gather from various documents anyway ;)
> > > > > >
> > > > > > > > The question becomes, is this latency from root? or is it "one step"?
> > > > > > >
> > > > > > > Actually the function is doing both. I had to reread the spec.
> > > > > > > Basically the switch is supposed to start trying to bring up the other
> > > > > > > links as soon as it detects that we are trying to bring up the link.
> > > > > > > In theory this is only supposed to add about 1us. So in theory the
> > > > > > > total bring-up time should be 33us.
> > > > > >
> > > > > > Ah ok, thanks, that answers another question in the chain ;)
> > > > >
> > > > > So, then this is what should be done:
> > > > > diff --git a/drivers/pci/pcie/aspm.c b/drivers/pci/pcie/aspm.c
> > > > > index b17e5ffd31b1..2b8f7ea7f7bc 100644
> > > > > --- a/drivers/pci/pcie/aspm.c
> > > > > +++ b/drivers/pci/pcie/aspm.c
> > > > > @@ -434,7 +434,7 @@ static void pcie_get_aspm_reg(struct pci_dev *pdev,
> > > > >
> > > > >  static void pcie_aspm_check_latency(struct pci_dev *endpoint)
> > > > >  {
> > > > > -       u32 latency, l1_switch_latency = 0;
> > > > > +       u32 latency, l1_max_latency = 0, l1_switch_latency = 0;
> > > > >         struct aspm_latency *acceptable;
> > > > >         struct pcie_link_state *link;
> > > > >
> > > > > @@ -470,8 +470,9 @@ static void pcie_aspm_check_latency(struct pci_dev
> > > > > *endpoint)
> > > > >                  * substate latencies (and hence do not do any check).
> > > > >                  */
> > > > >                 latency = max_t(u32, link->latency_up.l1, link->latency_dw.l1);
> > > > > +               l1_max_latency = max_t(u32, latency, l1_max_latency)
> > > > >                 if ((link->aspm_capable & ASPM_STATE_L1) &&
> > > > > -                   (latency + l1_switch_latency > acceptable->l1))
> > > > > +                   (l1_max_latency + l1_switch_latency > acceptable->l1))
> > > > >                         link->aspm_capable &= ~ASPM_STATE_L1;
> > > > >                 l1_switch_latency += 1000;
> > > > > ---
> > > >
> > > > This makes sense to me. You might want to submit it to the linux-pci
> > > > mailing list.
> > >
> > > Will after trying it and adding the missing ';'
> >
> > So rebooted, and the chain we had was:
> > 00:01.2->1:00.0 -> 2:03.0 -> 3:00.0
> >
> > And with my patch, we have:
> > for x in 00:01.2 1:00.0 2:03.0 3:00.0 ; do echo $x && lspci -s $x -vvv
> > |grep LnkCtl ; done
> > 00:01.2
> > LnkCtl: ASPM Disabled; RCB 64 bytes, Disabled- CommClk+
> > LnkCtl2: Target Link Speed: 16GT/s, EnterCompliance- SpeedDis-
> > LnkCtl3: LnkEquIntrruptEn- PerformEqu-
> > 01:00.0
> > LnkCtl: ASPM Disabled; Disabled- CommClk+
> > LnkCtl2: Target Link Speed: 16GT/s, EnterCompliance- SpeedDis-
> > LnkCtl3: LnkEquIntrruptEn- PerformEqu-
> > 2:03.0
> > LnkCtl: ASPM L1 Enabled; Disabled- CommClk+
> > LnkCtl2: Target Link Speed: 16GT/s, EnterCompliance- SpeedDis-,
> > Selectable De-emphasis: -6dB
> > LnkCtl3: LnkEquIntrruptEn- PerformEqu-
> > 3:00.0
> > LnkCtl: ASPM L1 Enabled; RCB 64 bytes, Disabled- CommClk+
> > LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-
> >
> > And the siwtch is still downgraded so i suspect a lack of physical lines...
> > LnkSta: Speed 16GT/s (ok), Width x4 (downgraded)
> > TrErr- Train- SlotClk+ DLActive+ BWMgmt- ABWMgmt-
>
> Well that is good. So it is disabling ASPM on the root complex side of
> the switch and leaving ASPM enabled for the NIC then. That is the
> behavior I would expect to see since that will still cut total power
> while avoiding cycling L1 on the upstream facing side of the switch.

Great, it wasn't what i was expecting ;)

It's a very learning experience - i thought that it worked like a
chain basically
and any termination would terminate instances after that instance, but it seems
like it's completely separate...

> > Just disabling the endpoint however results in:
> > for x in 00:01.2 1:00.0 2:03.0 3:00.0 ; do echo $x && lspci -s $x -vvv
> > |grep LnkCtl ; done
> > 00:01.2
> > LnkCtl: ASPM L1 Enabled; RCB 64 bytes, Disabled- CommClk+
> > LnkCtl2: Target Link Speed: 16GT/s, EnterCompliance- SpeedDis-
> > LnkCtl3: LnkEquIntrruptEn- PerformEqu-
> > 1:00.0
> > LnkCtl: ASPM L1 Enabled; Disabled- CommClk+
> > LnkCtl2: Target Link Speed: 16GT/s, EnterCompliance- SpeedDis-
> > LnkCtl3: LnkEquIntrruptEn- PerformEqu-
> > 2:03.0
> > LnkCtl: ASPM L1 Enabled; Disabled- CommClk+
> > LnkCtl2: Target Link Speed: 16GT/s, EnterCompliance- SpeedDis-,
> > Selectable De-emphasis: -6dB
> > LnkCtl3: LnkEquIntrruptEn- PerformEqu-
> > 3:00.0
> > LnkCtl: ASPM L1 Enabled; RCB 64 bytes, Disabled- CommClk+
> > LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-
> > ----
> >
> > Ie, it didn't seem to apply...
>
> What do you mean by "just disabling the endpoint"?

The function starts with:
link = endpoint->bus->self->link_state;

And then we walk link = link->parent

So disabling on endpoint would be disabling on the nic (in this case,
potentially)

> > Looking at the differences:
> > diff -u lscpi-root.output lscpi-endpoint.output
> > --- lscpi-root.output 2020-07-25 21:24:10.661458522 +0200
> > +++ lscpi-endpoint.output 2020-07-25 21:20:50.316049129 +0200
> > @@ -3,7 +3,6 @@
> >  00:00.2
> >  00:01.0
> >  00:01.2
> > - LnkCtl: ASPM Disabled; RCB 64 bytes, Disabled- CommClk+
> >  00:02.0
> >  00:03.0
> >  00:03.1
> > @@ -27,7 +26,6 @@
> >  00:18.6
> >  00:18.7
> >  01:00.0
> > - LnkCtl: ASPM Disabled; Disabled- CommClk+
> >  02:03.0
> >  02:04.0
> >   LnkCtl: ASPM Disabled; Disabled- CommClk+
> >
> > So that handles two bridges then...
> > 00:01.2 PCI bridge: Advanced Micro Devices, Inc. [AMD]
> > Starship/Matisse GPP Bridge (prog-if 00 [Normal decode])
> > 01:00.0 PCI bridge: Advanced Micro Devices, Inc. [AMD] Matisse Switch
> > Upstream (prog-if 00 [Normal decode])
> >
> > And these two had ASPM Enabled before my changes... They actually seem
> > to fix it as well! ;)
> >
>
> That is what I would have suspected. Odds are this is the optimal
> setup in terms of power savings as well as the link to the root
> complex would be cycling back on for any of the other devices that are
> connected to this switch anyway.
>
> It looks like you submitted it as an RFC over on the linux-pci maling
> list. One thing I would suggest is when you go to submit the actual
> patch make sure to include a "Signed-off-by:" with your name and
> preferred email address as that is required for official submissions.

Yep, will do, just want to see if there is any feedback first

> Thanks.
>
> - Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
