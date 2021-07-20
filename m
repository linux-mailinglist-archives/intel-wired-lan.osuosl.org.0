Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1968E3CF09E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jul 2021 02:17:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AE55607BC;
	Tue, 20 Jul 2021 00:17:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hYKpqB0jZ4P4; Tue, 20 Jul 2021 00:17:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93DC2607AF;
	Tue, 20 Jul 2021 00:17:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 009B31BF995
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 00:17:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1C3840398
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 00:17:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CznZ55wsyQwW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jul 2021 00:17:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D77304038F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 00:17:15 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 13FC960E0B;
 Tue, 20 Jul 2021 00:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626740235;
 bh=ThAzBxkXRInNWnuCLj/2tYEXJI4QZ0qGGXACtEnXypk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=N9vo0oCzvSPqM5AAbzt5aELIl+pvnm98LRqL9Gad2lSDy0L6vK2L/NVDw3HYhII3c
 CXtQSwzp1DLHTvwCOMmkDoXfu/dZCz4R9FXk5NuFA90a2qZof63QI4JmbcbT6mEi9B
 h1ih9S0n4P1PSZGM1IGJAjGGqicUb56mAv6uZdoPqzZvwSi6t1jsfDRw9R/pS20SYx
 JswE5eXjXXtR7S5xbJPQM6i0WvBpj/HorP1PL2mSc676T0y3Qxp0al7VtRYGis8t8V
 42DdW8w9kH0FgHB+9iCvnSvwMooTK5jkLBbvKR+so53U3CmPzckto2d+PmMO7DEYAY
 cvq9pJtbajRZA==
Date: Mon, 19 Jul 2021 19:17:13 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Oliver O'Halloran <oohall@gmail.com>
Message-ID: <20210720001713.GA38755@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOSf1CHOrUBfibO0t6Zr2=SZ7GjLTiAzfoKBeZL8RXdcC+Ou3A@mail.gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: don't rd/wr iomem when PCI
 is removed
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
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 netdev@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-pci <linux-pci@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org,
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jul 19, 2021 at 12:49:18PM +1000, Oliver O'Halloran wrote:
> On Mon, Jul 19, 2021 at 8:51 AM Pali Roh=E1r <pali@kernel.org> wrote:
> >
> > And do we have some solution for this kind of issue? There are more PCIe
> > controllers / platforms which do not like MMIO read/write operation when
> > card / link is not connected.
> =

> Do you have some actual examples? The few times I've seen those
> crashes were due to broken firmware-first error handling. The AER
> notifications would be escalated into some kind of ACPI error which
> the kernel didn't have a good way of dealing with so it panicked
> instead.
> =

> Assuming it is a real problem then as Bjorn pointed out this sort of
> hack doesn't really fix the issue because hotplug and AER
> notifications are fundamentally asynchronous. If the driver is
> actively using the device when the error / removal happens then the
> pci_dev_is_disconnected() check will pass and the MMIO will go
> through. If the MMIO is poisonous because of dumb hardware then this
> sort of hack will only paper over the issue.
> =

> > If we do not provide a way how to solve these problems then we can
> > expect that people would just hack ethernet / wifi / ... device drivers
> > which are currently crashing by patches like in this thread.
> >
> > Maybe PCI subsystem could provide wrapper function which implements
> > above pattern and which can be used by device drivers?
> =

> We could do that and I think there was a proposal to add some
> pci_readl(pdev, <addr>) style wrappers at one point.

Obviously this wouldn't help user-space mmaps, but in the kernel,
Documentation/driver-api/device-io.rst [1] does say that drivers are
supposed to use readl() et al even though on most arches it "works"
to just dereference the result of ioremap(), so maybe we could make
a useful wrapper.

Seems like we should do *something*, even if it's just a generic
#define and some examples.  I took a stab at this [2] a couple years
ago, but it was only for the PCI core, and it didn't go anywhere.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/Documentation/driver-api/device-io.rst?id=3Dv5.13#n160
[2] https://lore.kernel.org/linux-pci/20190822200551.129039-1-helgaas@kerne=
l.org/

> On powerpc
> there's hooks in the arch provided MMIO functions to detect error
> responses and kick off the error handling machinery when a problem is
> detected. Those hooks are mainly there to help the platform detect
> errors though and they don't make life much easier for drivers. Due to
> locking concerns the driver's .error_detected() callback cannot be
> called in the MMIO hook so even when the platform detects errors
> synchronously the driver notifications must happen asynchronously. In
> the meanwhile the driver still needs to handle the 0xFFs response
> safely and there's not much we can do from the platform side to help
> there.
> =

> Oliver
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
