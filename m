Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF86C30B2B1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Feb 2021 23:20:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6DB6085B8A;
	Mon,  1 Feb 2021 22:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qsEPD-Tlt-rb; Mon,  1 Feb 2021 22:20:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9ACAF86656;
	Mon,  1 Feb 2021 22:20:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 883E31BF332
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 22:20:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 839E385BCA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 22:20:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c70Hiyt6BLI6 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Feb 2021 22:20:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D4AF385B8A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 22:20:12 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 469FC64D9D;
 Mon,  1 Feb 2021 22:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612218012;
 bh=zyFHqY7Z7ZGLlxb05bgv94Ltfq2qc5kx29hJwa9Zeiw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=iW/NL/2DVQsv8vtwctljs747yPoVvEdYa0BZmFr/tD9v0aw8bEkdYYCNws6DGnRLz
 5GGGJXfwSzg3leHB8N7M0NFSWJ2qf8lErjoVW8vU2RUZRPc8NaBJAgTiDxMGV6u7+i
 69APl7iVhce33J1v4jVSueHzf78DGF7gtE8qOfqNBOMjJPtbWoF4OfznXULlZ1Dnk9
 4nhAVNVOCJ589uaCdPXRVLNYiGlM8gz26tCTpJLkGob/+WMmg+hk+g0X8a+/j5lg6D
 gsOteVM8AC0aurloBNI8hKWdObtSpiLjPSSnkCCcse/Z6eDogDqsuVy7j+KGF5vTyA
 LeqMFkLc+w5oQ==
Date: Mon, 1 Feb 2021 16:20:10 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Michael Walle <michael@walle.cc>
Message-ID: <20210201222010.GA31234@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e8647a2cd4bfbcd42c27183d1c8984a0@walle.cc>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 01, 2021 at 08:49:16PM +0100, Michael Walle wrote:
> Am 2021-01-17 20:27, schrieb Michael Walle:
> > Am 2021-01-16 00:57, schrieb Bjorn Helgaas:
> > > On Wed, Jan 13, 2021 at 12:32:32AM +0100, Michael Walle wrote:
> > > > Am 2021-01-12 23:58, schrieb Bjorn Helgaas:
> > > > > On Sat, Jan 09, 2021 at 07:31:46PM +0100, Michael Walle wrote:
> > > > > > Am 2021-01-08 22:20, schrieb Bjorn Helgaas:
> > > 
> > > > > > > 3) If the Intel i210 is defective in how it handles an Expansion ROM
> > > > > > > that overlaps another BAR, a quirk might be the right fix. But my
> > > > > > > guess is the device is working correctly per spec and there's
> > > > > > > something wrong in how firmware/Linux is assigning things.  That would
> > > > > > > mean we need a more generic fix that's not a quirk and not tied to the
> > > > > > > Intel i210.
> > > > > >
> > > > > > Agreed, but as you already stated (and I've also found that in
> > > > > > the PCI spec) the Expansion ROM address decoder can be shared by
> > > > > > the other BARs and it shouldn't matter as long as the ExpROM BAR
> > > > > > is disabled, which is the case here.
> > > > >
> > > > > My point is just that if this could theoretically affect devices
> > > > > other than the i210, the fix should not be an i210-specific quirk.
> > > > > I'll assume this is a general problem and wait for a generic PCI
> > > > > core solution unless it's i210-specific.
> > > > 
> > > > I guess the culprit here is that linux skips the programming of the
> > > > BAR because of some broken Matrox card. That should have been a
> > > > quirk instead, right? But I don't know if we want to change that, do
> > > > we? How many other cards depend on that?
> > > 
> > > Oh, right.  There's definitely some complicated history there that
> > > makes me a little scared to change things.  But it's also unfortunate
> > > if we have to pile quirks on top of quirks.
> > > 
> > > > And still, how do we find out that the i210 is behaving correctly?
> > > > In my opinion it is clearly not. You can change the ExpROM BAR value
> > > > during runtime and it will start working (while keeping it
> > > > disabled).  Am I missing something here?
> > > 
> > > I agree; if the ROM BAR is disabled, I don't think it should matter at
> > > all what it contains, so this does look like an i210 defect.
> > > 
> > > Would you mind trying the patch below?  It should update the ROM BAR
> > > value even when it is disabled.  With the current pci_enable_rom()
> > > code that doesn't rely on the value read from the BAR, I *think* this
> > > should be safe even on the Matrox and similar devices.
> > 
> > Your patch will fix my issue:
> > 
> > Tested-by: Michael Walle <michael@walle.cc>
> 
> any news on this?

Thanks for the reminder.  I was thinking this morning that I need to
get back to this.  I'm trying to convince myself that doing this
wouldn't break the problem fixed by 755528c860b0 ("Ignore disabled ROM
resources at setup").  So far I haven't quite succeeded.

Bjorn
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
