Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BB041EE9D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Oct 2021 15:31:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51D96415FE;
	Fri,  1 Oct 2021 13:31:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N2gz7xYPyKzm; Fri,  1 Oct 2021 13:31:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3FB3C415E4;
	Fri,  1 Oct 2021 13:31:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC7FE1BF8B4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Oct 2021 13:21:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 99F8D4157B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Oct 2021 13:21:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lp73-XKR-h5B for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Oct 2021 13:21:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
 [209.85.210.46])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED43C41578
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Oct 2021 13:21:12 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id
 j11-20020a9d190b000000b00546fac94456so11444935ota.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 01 Oct 2021 06:21:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ccQjIYZZTjb3miwbaozC6bIs/tTh0jmSzaX5X7213ro=;
 b=tW9DxSYHtQUSXqz9/Sq8gWvFW+Mci2hds2IOrUr1YDVF2c0YN2MCndd6J4ii0zcqAI
 kklam8xV1w8tK0RggEPYN1Ioz2pYQj/33uXidqM9EODDZMfqc/RD2PvlgtODvR+Zy9Of
 7JoOZ6xzBA1cShCXCqgc6tHN67cHK/S9NIgCaNrQzpT3JSeHRKXgLp6Rgio4rLUY+8RV
 OFcXCA0NMAwou+VQepqigsCSqjbun8213sNTQAYJCnyXNu+Q0jT8gNi//mZSLhdMATk5
 w/tyEISeAjoOPhpih1tIH5XMQhjX4gRLQU8A9o1Qyq/F5c7iD04vkckDoKD2X++Tup39
 vnTw==
X-Gm-Message-State: AOAM530URvrLuaV18cIJaUce7UeMdQ9Prw1fL6nJuqoJgewyef0ccvlr
 5Zv8jvg45M4k5Kw1vloSjCzuS2Dg4ABjGPNLPZg=
X-Google-Smtp-Source: ABdhPJwCR2Wo/1OGr5zYsrtobZFZbORlSmd2mGjDR3WPp/zNEIwNKDJ5dHmcYFsgX+IzZPHVm/q359uINdGv0p+dKT4=
X-Received: by 2002:a05:6830:82b:: with SMTP id
 t11mr10127019ots.319.1633094471783; 
 Fri, 01 Oct 2021 06:21:11 -0700 (PDT)
MIME-Version: 1.0
References: <8e4bbd5c59de31db71f718556654c0aa077df03d.camel@linux.ibm.com>
 <5ea40608-388e-1137-9b86-85aad1cad6f6@intel.com>
 <b9e461a5-75de-6f45-1709-d9573492f7ac@intel.com>
 <CAJZ5v0gpxRDt0V3Eh1_edZAudxyL3-ik4MhT7TzijTYeOd=_Vg@mail.gmail.com>
 <CAJZ5v0hsQvHp2PqFjxvyx4tPCnNC7BCWyfPj-eADFa1w68BCMQ@mail.gmail.com>
 <924c2d6ef51a83cce5c9bcf4004bbf1506c5a768.camel@linux.ibm.com>
In-Reply-To: <924c2d6ef51a83cce5c9bcf4004bbf1506c5a768.camel@linux.ibm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 1 Oct 2021 15:21:00 +0200
Message-ID: <CAJZ5v0hoYfSE3MCuFeHYjuD5trznCJWDthWwUFp9M52m3FK-zg@mail.gmail.com>
To: Niklas Schnelle <schnelle@linux.ibm.com>
X-Mailman-Approved-At: Fri, 01 Oct 2021 13:31:49 +0000
Subject: Re: [Intel-wired-lan] Oops in during sriov_enable with ixgbe driver
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, netdev <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Oct 1, 2021 at 10:23 AM Niklas Schnelle <schnelle@linux.ibm.com> wrote:
>
> On Thu, 2021-09-30 at 20:37 +0200, Rafael J. Wysocki wrote:
> > On Thu, Sep 30, 2021 at 8:20 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
> > > On Thu, Sep 30, 2021 at 7:38 PM Rafael J. Wysocki
> > > <rafael.j.wysocki@intel.com> wrote:
> > > > On 9/30/2021 7:31 PM, Jesse Brandeburg wrote:
> > > > > On 9/28/2021 4:56 AM, Niklas Schnelle wrote:
> > > > > > Hi Jesse, Hi Tony,
> > > > > >
> > > > > > Since v5.15-rc1 I've been having problems with enabling SR-IOV VFs on
> > > > > > my private workstation with an Intel 82599 NIC with the ixgbe driver. I
> > > > > > haven't had time to bisect or look closer but since it still happens on
> > > > > > v5.15-rc3 I wanted to at least check if you're aware of the problem as
> > > > > > I couldn't find anything on the web.
> > > > > We haven't heard anything of this problem.
> > > > >
> > > > >
> > > > > > I get below Oops when trying "echo 2 > /sys/bus/pci/.../sriov_numvfs"
> > > > > > and suspect that the earlier ACPI messages could have something to do
> > > > > > with that, absolutely not an ACPI expert though. If there is a need I
> > > > > > could do a bisect.
> > > > > Hi Niklas, thanks for the report, I added the Intel Driver's list for
> > > > > more exposure.
> > > > >
> > > > > I asked the developers working on that driver to take a look and they
> > > > > tried to reproduce, and were unable to do so. This might be related to
> > > > > your platform, which strongly suggests that the ACPI stuff may be related.
> > > > >
> > > > > We have tried to reproduce but everything works fine no call trace in
> > > > > scenario with creating VF.
> > > > >
> > > > > This is good in that it doesn't seem to be a general failure, you may
> > > > > want to file a kernel bugzilla (bugzilla.kernel.org) to track the issue,
> > > > > and I hope that @Rafael might have some insight.
> > > > >
> > > > > This issue may be related to changes in acpi_pci_find_companion,
> > > > > but as I say, we are not able to reproduce this.
> > > > >
> > > > > commit 59dc33252ee777e02332774fbdf3381b1d5d5f5d
> > > > > Author: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > > > Date:   Tue Aug 24 16:43:55 2021 +0200
> > > > >      PCI: VMD: ACPI: Make ACPI companion lookup work for VMD bus
> > > >
> > > > This change doesn't affect any devices beyond the ones on the VMD bus.
> > >
> > > The only failing case I can see is when the device is on the VMD bus
> > > and its bus pointer is NULL, so the dereference in
> > > vmd_acpi_find_companion() crashes.
> > >
> > > Can anything like that happen?
> >
> > Not really, because pci_iov_add_virtfn() sets virtfn->bus.
> >
> > However, it doesn\t set virtfn->dev.parent AFAICS, so when that gets
> > dereferenced by ACPI_COMPANIO(dev->parent) in
> > acpi_pci_find_companion(), the crash occurs.
> >
> > We need a !dev->parent check in acpi_pci_find_companion() I suppose:
> >
> > Does the following change help?
> >
> > Index: linux-pm/drivers/pci/pci-acpi.c
> > ===================================================================
> > --- linux-pm.orig/drivers/pci/pci-acpi.c
> > +++ linux-pm/drivers/pci/pci-acpi.c
> > @@ -1243,6 +1243,9 @@ static struct acpi_device *acpi_pci_find
> >      bool check_children;
> >      u64 addr;
> >
> > +    if (!dev->parent)
> > +        return NULL;
> > +
> >      down_read(&pci_acpi_companion_lookup_sem);
> >
> >      adev = pci_acpi_find_companion_hook ?
>
>
> Yes the above change fixes the problem for me. SR-IOV enables
> successfully and the VFs are fully usable. Thanks!

Thanks for the confirmation!

> Just out of curiosity and because I use this system to test common code
> PCI changed. Do you have an idea what makes my system special here?
>
> The call to pci_set_acpi_fwnode() in pci_setup_device() is
> unconditional and should do the same on any ACPI enabled system.
> Also nothing in your explanation sounds specific to my system.

Right, it is not special and I'm not really sure why others don't see
this breakage.

That's one of the reasons why it is key to report problems early: this
may help to protect others from being hit by those problems.

Let me post an "official" patch for this.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
