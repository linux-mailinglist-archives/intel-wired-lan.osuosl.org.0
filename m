Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A9C33C8FA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 23:02:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67D6E4EC08;
	Mon, 15 Mar 2021 22:02:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c65JZEDNrJkj; Mon, 15 Mar 2021 22:02:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2448B4EBFF;
	Mon, 15 Mar 2021 22:02:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C2F261BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 22:01:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BE94D6F5D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 22:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=walle.cc
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N8gyt2iJVv5R for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 22:01:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from ssl.serverraum.org (ssl.serverraum.org [176.9.125.105])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E1EB60638
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 22:01:40 +0000 (UTC)
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 67E1822234;
 Mon, 15 Mar 2021 22:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1615845086;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qbz18nJ52fhKTcYvqVifixwv65SjhEo6nJ/z7ymJrV0=;
 b=QwgxxdZ63fdHtC0poTGN4eZlhN+ambTQ2Veti9bfvBQiBvBN4wyHDyw98IiAV+zGHVswPe
 ZFfhSphnd25WlsBmUEnm2dr6IAYOwvfNphhQE3BGLJITeeJhHD9didZHjZ3QX0+4gBj81o
 zAb+CBIyYdXWbq3M9hCd9sZFDDi+cuE=
MIME-Version: 1.0
Date: Mon, 15 Mar 2021 22:51:25 +0100
From: Michael Walle <michael@walle.cc>
To: Bjorn Helgaas <helgaas@kernel.org>
In-Reply-To: <20210201222010.GA31234@bjorn-Precision-5520>
References: <20210201222010.GA31234@bjorn-Precision-5520>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <d2c7ec0e416dd6bb6818892750bff6d7@walle.cc>
X-Sender: michael@walle.cc
X-Mailman-Approved-At: Mon, 15 Mar 2021 22:02:39 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2] PCI: Fix Intel i210 by avoiding
 overlapping of BARs
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Am 2021-02-01 23:20, schrieb Bjorn Helgaas:
> On Mon, Feb 01, 2021 at 08:49:16PM +0100, Michael Walle wrote:
>> Am 2021-01-17 20:27, schrieb Michael Walle:
>> > Am 2021-01-16 00:57, schrieb Bjorn Helgaas:
>> > > On Wed, Jan 13, 2021 at 12:32:32AM +0100, Michael Walle wrote:
>> > > > Am 2021-01-12 23:58, schrieb Bjorn Helgaas:
>> > > > > On Sat, Jan 09, 2021 at 07:31:46PM +0100, Michael Walle wrote:
>> > > > > > Am 2021-01-08 22:20, schrieb Bjorn Helgaas:
>> > >
>> > > > > > > 3) If the Intel i210 is defective in how it handles an Expansion ROM
>> > > > > > > that overlaps another BAR, a quirk might be the right fix. But my
>> > > > > > > guess is the device is working correctly per spec and there's
>> > > > > > > something wrong in how firmware/Linux is assigning things.  That would
>> > > > > > > mean we need a more generic fix that's not a quirk and not tied to the
>> > > > > > > Intel i210.
>> > > > > >
>> > > > > > Agreed, but as you already stated (and I've also found that in
>> > > > > > the PCI spec) the Expansion ROM address decoder can be shared by
>> > > > > > the other BARs and it shouldn't matter as long as the ExpROM BAR
>> > > > > > is disabled, which is the case here.
>> > > > >
>> > > > > My point is just that if this could theoretically affect devices
>> > > > > other than the i210, the fix should not be an i210-specific quirk.
>> > > > > I'll assume this is a general problem and wait for a generic PCI
>> > > > > core solution unless it's i210-specific.
>> > > >
>> > > > I guess the culprit here is that linux skips the programming of the
>> > > > BAR because of some broken Matrox card. That should have been a
>> > > > quirk instead, right? But I don't know if we want to change that, do
>> > > > we? How many other cards depend on that?
>> > >
>> > > Oh, right.  There's definitely some complicated history there that
>> > > makes me a little scared to change things.  But it's also unfortunate
>> > > if we have to pile quirks on top of quirks.
>> > >
>> > > > And still, how do we find out that the i210 is behaving correctly?
>> > > > In my opinion it is clearly not. You can change the ExpROM BAR value
>> > > > during runtime and it will start working (while keeping it
>> > > > disabled).  Am I missing something here?
>> > >
>> > > I agree; if the ROM BAR is disabled, I don't think it should matter at
>> > > all what it contains, so this does look like an i210 defect.
>> > >
>> > > Would you mind trying the patch below?  It should update the ROM BAR
>> > > value even when it is disabled.  With the current pci_enable_rom()
>> > > code that doesn't rely on the value read from the BAR, I *think* this
>> > > should be safe even on the Matrox and similar devices.
>> >
>> > Your patch will fix my issue:
>> >
>> > Tested-by: Michael Walle <michael@walle.cc>
>> 
>> any news on this?
> 
> Thanks for the reminder.  I was thinking this morning that I need to
> get back to this.  I'm trying to convince myself that doing this
> wouldn't break the problem fixed by 755528c860b0 ("Ignore disabled ROM
> resources at setup").  So far I haven't quite succeeded.

ping #2 ;)

-michael
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
