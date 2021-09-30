Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F1B41E204
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Sep 2021 21:07:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3F6B83ADA;
	Thu, 30 Sep 2021 19:07:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0nF992GxhMFL; Thu, 30 Sep 2021 19:07:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE3FC81CDB;
	Thu, 30 Sep 2021 19:07:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 64EF71BF289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 18:20:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 52E9D61420
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 18:20:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zckeQXiyQOyF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Sep 2021 18:20:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
 [209.85.167.181])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9E99761402
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 18:20:20 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id s24so8418998oij.8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 11:20:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ef7KENLW1l1PGesfqJMrkuTOmq0xzY2aXbR1ZPKfeKo=;
 b=23xd455RUQMqbjd5b6qoQgaOqckGDvWW9YJA3H5JLo2a+XS5icr2rC+GL25mKIY3/M
 SCaEypO3tECI2OjSPIXGKqAp69yRXT6U+UqdMwXDNSkI/didsgHD9gK6yi810JhPoliQ
 o3/ZQJx/66E1bZ3iA/B8tDqvgFoRxgZCEkkkkRBouhhHiaxrUSrfosCGrB534zAkGKJ/
 kqhh6y0ITkgY3srY6Ln/B3rHSkNBDWOzSSMwOpWepsvPC5XnGpStvmeta+DyEhBcHt2R
 CfGKo08JSg6s0gWGuNR/V8wcgzU0kAVEpXQUEpnJ+Poco/h5AtLEeRVhqmoY8WNEwn02
 lDIA==
X-Gm-Message-State: AOAM5304dahU3lVe679DNyDEs9AmLweRv/ttsw+ty5+LU5NiTnHH5sEW
 YUhwfchYtLbZ7ncKT6dOwSYV1GTYPjdpwRHBUdE=
X-Google-Smtp-Source: ABdhPJyVi3QhT6Mkd8Puepw6tOTOAjfQnSqEQnm9+cc/GmJMrXSfrSb1F04tCCjt8i30lNWilUXd9wAmy8RPIkpHreA=
X-Received: by 2002:a05:6808:178c:: with SMTP id
 bg12mr537861oib.157.1633026019701; 
 Thu, 30 Sep 2021 11:20:19 -0700 (PDT)
MIME-Version: 1.0
References: <8e4bbd5c59de31db71f718556654c0aa077df03d.camel@linux.ibm.com>
 <5ea40608-388e-1137-9b86-85aad1cad6f6@intel.com>
 <b9e461a5-75de-6f45-1709-d9573492f7ac@intel.com>
In-Reply-To: <b9e461a5-75de-6f45-1709-d9573492f7ac@intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 30 Sep 2021 20:20:08 +0200
Message-ID: <CAJZ5v0gpxRDt0V3Eh1_edZAudxyL3-ik4MhT7TzijTYeOd=_Vg@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
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
Cc: Niklas Schnelle <schnelle@linux.ibm.com>, netdev <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 30, 2021 at 7:38 PM Rafael J. Wysocki
<rafael.j.wysocki@intel.com> wrote:
>
> On 9/30/2021 7:31 PM, Jesse Brandeburg wrote:
> > On 9/28/2021 4:56 AM, Niklas Schnelle wrote:
> >> Hi Jesse, Hi Tony,
> >>
> >> Since v5.15-rc1 I've been having problems with enabling SR-IOV VFs on
> >> my private workstation with an Intel 82599 NIC with the ixgbe driver. I
> >> haven't had time to bisect or look closer but since it still happens on
> >> v5.15-rc3 I wanted to at least check if you're aware of the problem as
> >> I couldn't find anything on the web.
> > We haven't heard anything of this problem.
> >
> >
> >> I get below Oops when trying "echo 2 > /sys/bus/pci/.../sriov_numvfs"
> >> and suspect that the earlier ACPI messages could have something to do
> >> with that, absolutely not an ACPI expert though. If there is a need I
> >> could do a bisect.
> > Hi Niklas, thanks for the report, I added the Intel Driver's list for
> > more exposure.
> >
> > I asked the developers working on that driver to take a look and they
> > tried to reproduce, and were unable to do so. This might be related to
> > your platform, which strongly suggests that the ACPI stuff may be related.
> >
> > We have tried to reproduce but everything works fine no call trace in
> > scenario with creating VF.
> >
> > This is good in that it doesn't seem to be a general failure, you may
> > want to file a kernel bugzilla (bugzilla.kernel.org) to track the issue,
> > and I hope that @Rafael might have some insight.
> >
> > This issue may be related to changes in acpi_pci_find_companion,
> > but as I say, we are not able to reproduce this.
> >
> > commit 59dc33252ee777e02332774fbdf3381b1d5d5f5d
> > Author: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > Date:   Tue Aug 24 16:43:55 2021 +0200
> >      PCI: VMD: ACPI: Make ACPI companion lookup work for VMD bus
>
> This change doesn't affect any devices beyond the ones on the VMD bus.

The only failing case I can see is when the device is on the VMD bus
and its bus pointer is NULL, so the dereference in
vmd_acpi_find_companion() crashes.

Can anything like that happen?

> > At this point maybe a bisect would be helpful, since this seems to be a
> > corner case that we used to handle but no longer do.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
