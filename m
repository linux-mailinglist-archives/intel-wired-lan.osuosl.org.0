Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 152F347B24F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Dec 2021 18:44:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1FADD409A0;
	Mon, 20 Dec 2021 17:44:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2DmDqsaPrB5P; Mon, 20 Dec 2021 17:44:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5F0B4098E;
	Mon, 20 Dec 2021 17:44:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 741131BF418
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Dec 2021 17:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6FEEB41550
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Dec 2021 17:43:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=walle.cc
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cKuZSBD_x5uD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Dec 2021 17:43:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ssl.serverraum.org (ssl.serverraum.org [176.9.125.105])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 335BD4154A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Dec 2021 17:43:08 +0000 (UTC)
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id B1262223ED;
 Mon, 20 Dec 2021 18:43:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1640022184;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Wx3LrtaXSfVMg5DkRfr+bITD7CYJEQTXTjdrw+TkxiU=;
 b=CZWxt1SBph3/prxmlscOHwg0K5NZst/0NW51/1ZwV+ycbDAQNDfqubQV3Jfl2uj8Il6AOD
 UFkGSSuEDOfvPTGDy3fgrTN6pz2UJq7N0hUSQ4EIgQ80p15o1UnykGpw9NML7Z0cbIKQk9
 6cnamI4TV390/SQ7MTG3zKOHX8+ec5k=
MIME-Version: 1.0
Date: Mon, 20 Dec 2021 18:43:03 +0100
From: Michael Walle <michael@walle.cc>
To: Bjorn Helgaas <helgaas@kernel.org>
In-Reply-To: <5d41bad0e0607e68d9189667a45f7519@walle.cc>
References: <20210201222010.GA31234@bjorn-Precision-5520>
 <d2c7ec0e416dd6bb6818892750bff6d7@walle.cc>
 <5d41bad0e0607e68d9189667a45f7519@walle.cc>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <9303c33a8faa83597db807a8c418ef17@walle.cc>
X-Sender: michael@walle.cc
X-Mailman-Approved-At: Mon, 20 Dec 2021 17:44:22 +0000
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

Am 2021-08-20 17:12, schrieb Michael Walle:
> Am 2021-03-15 22:51, schrieb Michael Walle:
>> Am 2021-02-01 23:20, schrieb Bjorn Helgaas:
>>> On Mon, Feb 01, 2021 at 08:49:16PM +0100, Michael Walle wrote:
>>>> Am 2021-01-17 20:27, schrieb Michael Walle:
>>>> > Am 2021-01-16 00:57, schrieb Bjorn Helgaas:
>>>> > > On Wed, Jan 13, 2021 at 12:32:32AM +0100, Michael Walle wrote:
>>>> > > > Am 2021-01-12 23:58, schrieb Bjorn Helgaas:
>>>> > > > > On Sat, Jan 09, 2021 at 07:31:46PM +0100, Michael Walle wrote:
>>>> > > > > > Am 2021-01-08 22:20, schrieb Bjorn Helgaas:
>>>> > >
>>>> > > > > > > 3) If the Intel i210 is defective in how it handles an Expansion ROM
>>>> > > > > > > that overlaps another BAR, a quirk might be the right fix. But my
>>>> > > > > > > guess is the device is working correctly per spec and there's
>>>> > > > > > > something wrong in how firmware/Linux is assigning things.  That would
>>>> > > > > > > mean we need a more generic fix that's not a quirk and not tied to the
>>>> > > > > > > Intel i210.
>>>> > > > > >
>>>> > > > > > Agreed, but as you already stated (and I've also found that in
>>>> > > > > > the PCI spec) the Expansion ROM address decoder can be shared by
>>>> > > > > > the other BARs and it shouldn't matter as long as the ExpROM BAR
>>>> > > > > > is disabled, which is the case here.
>>>> > > > >
>>>> > > > > My point is just that if this could theoretically affect devices
>>>> > > > > other than the i210, the fix should not be an i210-specific quirk.
>>>> > > > > I'll assume this is a general problem and wait for a generic PCI
>>>> > > > > core solution unless it's i210-specific.
>>>> > > >
>>>> > > > I guess the culprit here is that linux skips the programming of the
>>>> > > > BAR because of some broken Matrox card. That should have been a
>>>> > > > quirk instead, right? But I don't know if we want to change that, do
>>>> > > > we? How many other cards depend on that?
>>>> > >
>>>> > > Oh, right.  There's definitely some complicated history there that
>>>> > > makes me a little scared to change things.  But it's also unfortunate
>>>> > > if we have to pile quirks on top of quirks.
>>>> > >
>>>> > > > And still, how do we find out that the i210 is behaving correctly?
>>>> > > > In my opinion it is clearly not. You can change the ExpROM BAR value
>>>> > > > during runtime and it will start working (while keeping it
>>>> > > > disabled).  Am I missing something here?
>>>> > >
>>>> > > I agree; if the ROM BAR is disabled, I don't think it should matter at
>>>> > > all what it contains, so this does look like an i210 defect.
>>>> > >
>>>> > > Would you mind trying the patch below?  It should update the ROM BAR
>>>> > > value even when it is disabled.  With the current pci_enable_rom()
>>>> > > code that doesn't rely on the value read from the BAR, I *think* this
>>>> > > should be safe even on the Matrox and similar devices.
>>>> >
>>>> > Your patch will fix my issue:
>>>> >
>>>> > Tested-by: Michael Walle <michael@walle.cc>
>>>> 
>>>> any news on this?
>>> 
>>> Thanks for the reminder.  I was thinking this morning that I need to
>>> get back to this.  I'm trying to convince myself that doing this
>>> wouldn't break the problem fixed by 755528c860b0 ("Ignore disabled 
>>> ROM
>>> resources at setup").  So far I haven't quite succeeded.
>> 
>> ping #2 ;)
> 
> ping #3, soon we can celebrate our first one year anniversary :p

ping #4

In a few days this is a year old. Please have a look at it and either 
add
my quirk patch or apply your patch. This is still breaking i210 on
my board.

TBH, this is really frustrating.

-michael
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
