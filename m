Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E4241E205
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Sep 2021 21:07:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53715407CD;
	Thu, 30 Sep 2021 19:07:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yvZIF0z21X4F; Thu, 30 Sep 2021 19:07:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EFFCD40181;
	Thu, 30 Sep 2021 19:07:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B3BC61BF289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 18:37:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF258841B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 18:37:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V8jxaZsv3kAh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Sep 2021 18:37:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 90BC8841B7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 18:37:57 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id
 r43-20020a05683044ab00b0054716b40005so8511419otv.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 11:37:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lUkADYfUz5un8GeU7MGDH79pA82yqB0rhOdsDK8eU6A=;
 b=MueDzZZqU8j6caiXGtx4cuAJgD3Hph6pFgwF7BRpbJEfsPMXt4BMzGFR7xmWm5PiUq
 do0dSvkAiRMo5+ECYxHvBrdIIfvY7sYAvHnnIqBDyvAUAzX1Lrjo1WYNpzK30R7OWWrh
 +FFCYo/BxpKyOWBWD2BFn8t8FdW6w7S1OqHAtWos7warIYmbPuSR7upwg0I4OM+hbkqV
 dpSbaMp5kIZEXl6/jglWeDAvCP9alE4eB7BC8cEmDPAxbFqMFgXA98w5PgE0+Nj13zGN
 gsYKNiPlzdEklnKiNrnUaxXBMYdLY2tUMW5VGHaP16AOUNu9WEqm5f9rhhNT39F7Yb9b
 8S3A==
X-Gm-Message-State: AOAM533Qx5ZBO3+OjJtSQHXdGLIbJlQaBYLAD/GTMx/FNHxjbJSFy0ko
 2M7grbYt74SrV5jmPbLMe7RySswoE/zenvhYz90=
X-Google-Smtp-Source: ABdhPJxIUnhHcEe7tzABklGIDEk7KBcPhVF+HiFLTsPIM+LNOIuhSRT/2BAbMOSwjMmdBscnqUc9bevf8EFVlXM2zTo=
X-Received: by 2002:a05:6830:165a:: with SMTP id
 h26mr6707745otr.301.1633027076597; 
 Thu, 30 Sep 2021 11:37:56 -0700 (PDT)
MIME-Version: 1.0
References: <8e4bbd5c59de31db71f718556654c0aa077df03d.camel@linux.ibm.com>
 <5ea40608-388e-1137-9b86-85aad1cad6f6@intel.com>
 <b9e461a5-75de-6f45-1709-d9573492f7ac@intel.com>
 <CAJZ5v0gpxRDt0V3Eh1_edZAudxyL3-ik4MhT7TzijTYeOd=_Vg@mail.gmail.com>
In-Reply-To: <CAJZ5v0gpxRDt0V3Eh1_edZAudxyL3-ik4MhT7TzijTYeOd=_Vg@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 30 Sep 2021 20:37:45 +0200
Message-ID: <CAJZ5v0hsQvHp2PqFjxvyx4tPCnNC7BCWyfPj-eADFa1w68BCMQ@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Niklas Schnelle <schnelle@linux.ibm.com>
X-Mailman-Approved-At: Thu, 30 Sep 2021 19:07:46 +0000
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
Cc: ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 30, 2021 at 8:20 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Thu, Sep 30, 2021 at 7:38 PM Rafael J. Wysocki
> <rafael.j.wysocki@intel.com> wrote:
> >
> > On 9/30/2021 7:31 PM, Jesse Brandeburg wrote:
> > > On 9/28/2021 4:56 AM, Niklas Schnelle wrote:
> > >> Hi Jesse, Hi Tony,
> > >>
> > >> Since v5.15-rc1 I've been having problems with enabling SR-IOV VFs on
> > >> my private workstation with an Intel 82599 NIC with the ixgbe driver. I
> > >> haven't had time to bisect or look closer but since it still happens on
> > >> v5.15-rc3 I wanted to at least check if you're aware of the problem as
> > >> I couldn't find anything on the web.
> > > We haven't heard anything of this problem.
> > >
> > >
> > >> I get below Oops when trying "echo 2 > /sys/bus/pci/.../sriov_numvfs"
> > >> and suspect that the earlier ACPI messages could have something to do
> > >> with that, absolutely not an ACPI expert though. If there is a need I
> > >> could do a bisect.
> > > Hi Niklas, thanks for the report, I added the Intel Driver's list for
> > > more exposure.
> > >
> > > I asked the developers working on that driver to take a look and they
> > > tried to reproduce, and were unable to do so. This might be related to
> > > your platform, which strongly suggests that the ACPI stuff may be related.
> > >
> > > We have tried to reproduce but everything works fine no call trace in
> > > scenario with creating VF.
> > >
> > > This is good in that it doesn't seem to be a general failure, you may
> > > want to file a kernel bugzilla (bugzilla.kernel.org) to track the issue,
> > > and I hope that @Rafael might have some insight.
> > >
> > > This issue may be related to changes in acpi_pci_find_companion,
> > > but as I say, we are not able to reproduce this.
> > >
> > > commit 59dc33252ee777e02332774fbdf3381b1d5d5f5d
> > > Author: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > Date:   Tue Aug 24 16:43:55 2021 +0200
> > >      PCI: VMD: ACPI: Make ACPI companion lookup work for VMD bus
> >
> > This change doesn't affect any devices beyond the ones on the VMD bus.
>
> The only failing case I can see is when the device is on the VMD bus
> and its bus pointer is NULL, so the dereference in
> vmd_acpi_find_companion() crashes.
>
> Can anything like that happen?

Not really, because pci_iov_add_virtfn() sets virtfn->bus.

However, it doesn\t set virtfn->dev.parent AFAICS, so when that gets
dereferenced by ACPI_COMPANIO(dev->parent) in
acpi_pci_find_companion(), the crash occurs.

We need a !dev->parent check in acpi_pci_find_companion() I suppose:

Does the following change help?

Index: linux-pm/drivers/pci/pci-acpi.c
===================================================================
--- linux-pm.orig/drivers/pci/pci-acpi.c
+++ linux-pm/drivers/pci/pci-acpi.c
@@ -1243,6 +1243,9 @@ static struct acpi_device *acpi_pci_find
     bool check_children;
     u64 addr;

+    if (!dev->parent)
+        return NULL;
+
     down_read(&pci_acpi_companion_lookup_sem);

     adev = pci_acpi_find_companion_hook ?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
