Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C293C1640
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jul 2021 17:46:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 393C483C37;
	Thu,  8 Jul 2021 15:46:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s7BXQgF5XLh6; Thu,  8 Jul 2021 15:45:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 496FB83C36;
	Thu,  8 Jul 2021 15:45:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F1CE1BF312
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jul 2021 15:45:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B172415BE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jul 2021 15:45:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V4TMJ7WxpP56 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jul 2021 15:45:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B80AD415BA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jul 2021 15:45:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0E64661483;
 Thu,  8 Jul 2021 15:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625759152;
 bh=is2esSXTGi4HPbNrzyvxZE08UDJJDrKAa6KsWAWVLfM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=GX8McskDedTlTLJrVfjZb34JA8f5rdAJlKwE8m37vzrTJw9iA7vgMYepWYnsNnMsH
 0kACvi25IB6lVrfJJdKmiEVWplYdtYj9UY0gA5OC9MaeRoLK9GNiFMADkxtS8g3yFB
 GFnfz7UpqLQOnLACPm2SU+LdDawagvbYCpG2LLSGg8nJaOYa04GD1PIy9W2XL7h5yb
 t/pY3XBm0TWCaz62S7rhF/VXfTPo3BWvcpbNN7EPNXmmkaBmkHaa6MnXEGih6F6/QQ
 TOOKHQ1iV1cl1qdbiQHEfPlHKLT0T9da4NKyQM5MpP93odHDdHFbRksZNH3lJr0VeT
 FULhHpIlib+fA==
Date: Thu, 8 Jul 2021 10:45:50 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Oliver O'Halloran <oohall@gmail.com>
Message-ID: <20210708154550.GA1019947@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOSf1CGVpogQGAatuY_N0db6OL2BFegGtj6VTLA9KFz0TqYBQg@mail.gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 08, 2021 at 12:04:02PM +1000, Oliver O'Halloran wrote:
> On Thu, Jul 8, 2021 at 8:40 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
> >
> > If we add the check as proposed in this patch, I think people will
> > read it and think this is the correct way to avoid MMIO errors.  It
> > does happen to avoid some MMIO errors, but it cannot avoid them all,
> > so it's not a complete solution and it gives a false sense of
> > security.
> 
> I think it's helpful to classify MMIO errors as either benign or
> poisonous with the poison MMIOs causing some kind of crash. Most of
> the discussions about pci_dev_is_disconnected(), including this one,
> seem to stem from people trying to use it to avoid the poison case. I
> agree that using pci_dev_is_disconnected() that way is hacky and
> doesn't really fix the problem, but considering poison MMIOs usually
> stem from broken hardware or firmware maybe we should allow it
> anyway. We can't do anything better and it's an improvement compared
> to crashing.

Apologies for rehashing what's probably obvious to everybody but me.
I'm trying to get a better handle on benign vs poisonous errors.

MMIO means CPU reads or writes to the device.  In PCI, writes are
posted and don't receive a response, so a driver will never see
writel() return an error (although an error may be reported
asynchronously via AER or similar).

So I think we're mostly talking about CPU reads here.  We expect a PCI
response containing the data.  Sometimes there's no response or an
error response.  The behavior of the host bridge in these error cases
is not defined by PCI, so what the CPU sees is not consistent across
platforms.  In some cases, the bridge handles this as a catastrophic
error that forces a system restart.

But in most cases, at least on x86, the bridge logs an error and
fabricates ~0 data so the CPU read can complete.  Then it's up to
software to recognize that an error occurred and decide what to do
about it.  Is this a benign or a poisonous error?

I'd say this is a benign error.  It certainly can't be ignored, but as
long as the driver recognizes the error, it should be able to deal
with it without crashing the whole system and forcing a restart.

Bjorn
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
