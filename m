Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE682F3C7C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Jan 2021 23:58:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 30462859EA;
	Tue, 12 Jan 2021 22:58:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KQIM06MNsUot; Tue, 12 Jan 2021 22:58:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED28F85A5B;
	Tue, 12 Jan 2021 22:58:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F02A51BF29F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jan 2021 22:58:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EBB9B859EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jan 2021 22:58:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mrNFwwSLMuBo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Jan 2021 22:58:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 50A41859C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jan 2021 22:58:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 71E932311F;
 Tue, 12 Jan 2021 22:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610492283;
 bh=TD2GgmyopcuNlUr3NT6X/nzg/uWon7PfAk17CArwiDk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=dDg9mEAFMl31vH2EkotpUo8k4q99uFjs5eZ4DGaOmt5niUL4XgQwfm9wBp6phDv8E
 /WcWAQlj94Sz5IsHG25hAAdzllLG9ixRhxXuwClPdHfyEt3mRpMabDlN9slIDzYpBX
 6+n10U4bxwg64LIR3R5RM3snIn5PhqsDyxBKJ65pYenxCrmlBrX+wmRcN+8zgFoGz1
 8+4/aL5YaE4zROIwezt63hdSjW/uv0Jd+hcIcjoxAJ2SD8cI7n2+abF9yRn/QYkIt5
 SGKWhrlkNk0GXIHhFOhIDUuNyTC6NPR43voH9MnCJvuAegJlyB6v4CPazZQWto2pl+
 C0rBtndHOQLrg==
Date: Tue, 12 Jan 2021 16:58:02 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Michael Walle <michael@walle.cc>
Message-ID: <20210112225802.GA1859984@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <642eb96b495f5ad7d2d14410fedcd1ad@walle.cc>
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

On Sat, Jan 09, 2021 at 07:31:46PM +0100, Michael Walle wrote:
> Hi Bjorn,
> 
> Am 2021-01-08 22:20, schrieb Bjorn Helgaas:
> > On Wed, Dec 30, 2020 at 07:53:17PM +0100, Michael Walle wrote:
> > > The Intel i210 doesn't work if the Expansion ROM BAR overlaps with
> > > another BAR. Networking won't work at all and once a packet is sent
> > > the
> > > netdev watchdog will bite:
> > 
> > 1) Is this a regression?  It sounds like you don't know for sure
> > because earlier kernels don't support your platform.
> 
> Whats the background of the question? The board is offially supported
> since 5.8. I doubt that the code responsible to not touch the ExpROM
> BAR in pci_std_update_resource() were recently changed/added; the
> comment refers to a mail from 2005. So no I don't think it is a
> regression per se.

Just asking because it affects the urgency.  If we added a regression
during the v5.11 merge window, we'd try hard to fix it before
v5.11-final.  But it sounds like the problem has been there a long
time, so a fix could wait until v5.12.

> It is just that some combination of hardware and firmware will program
> the BARs in away so that this bug is triggered. And chances of this
> happing are very unlikely.
> 
> Do we agree that it should be irrelevant how the firmware programs and
> enables the BARs in this case? I.e. you could "fix" u-boot to match the
> way linux will assign addresses to the BARs. But that would just work
> around the real issue here. IMO.

I agree, Linux should work correctly regardless of how firmware
programmed the BARs.

> > 2) Can you open a bugzilla at https://bugzilla.kernel.org and attach
> > the complete dmesg and "sudo lspci -vv" output?  I want to see whether
> > Linux is assigning something incorrectly or this is a consequence of
> > some firmware initialization.
> 
> Sure, but you wouldn't even see the error with "lspci -vv" because
> lspci will just show the mapping linux assigned to it. But not whats
> written to the actual BAR for the PCI card. I'll also include a
> "lspci -xx". I've enabled CONFIG_PCI_DEBUG, too.
> 
> https://bugzilla.kernel.org/show_bug.cgi?id=211105
> 
> > 3) If the Intel i210 is defective in how it handles an Expansion ROM
> > that overlaps another BAR, a quirk might be the right fix. But my
> > guess is the device is working correctly per spec and there's
> > something wrong in how firmware/Linux is assigning things.  That would
> > mean we need a more generic fix that's not a quirk and not tied to the
> > Intel i210.
> 
> Agreed, but as you already stated (and I've also found that in the PCI
> spec) the Expansion ROM address decoder can be shared by the other BARs
> and it shouldn't matter as long as the ExpROM BAR is disabled, which is
> the case here.

My point is just that if this could theoretically affect devices other
than the i210, the fix should not be an i210-specific quirk.

I'll assume this is a general problem and wait for a generic PCI core
solution unless it's i210-specific.

Bjorn
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
