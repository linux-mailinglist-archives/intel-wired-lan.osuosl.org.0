Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B8630B149
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Feb 2021 21:05:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7877286004;
	Mon,  1 Feb 2021 20:05:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n5az3ttxFjuq; Mon,  1 Feb 2021 20:05:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F63586117;
	Mon,  1 Feb 2021 20:05:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9A9CC1BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 19:49:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 89C4D86F79
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 19:49:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Q32ohSgOnFD for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Feb 2021 19:49:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ssl.serverraum.org (ssl.serverraum.org [176.9.125.105])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C6B1D85C8F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 19:49:18 +0000 (UTC)
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 28E9322F99;
 Mon,  1 Feb 2021 20:49:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1612208956;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZwS7M5DVuVgIp79W7J+1nUCnHx61grFZNqdoFSservc=;
 b=jfjC5UQX2h4RSHu6T7RZ/nYdN9hdMuqbKuhhMXE6S8LYTxZZP00hnKmVKgGqCUfBuK8MCs
 1o1ZA0YAmytg9kG4IgWDdQX410Y3GNYy3T7LHzDEB30OZLX0Ty5u+9NdWGZDFzu6VdV1Yy
 2405m45kM0WBRI7g5S69bUv9gdTmkzI=
MIME-Version: 1.0
Date: Mon, 01 Feb 2021 20:49:16 +0100
From: Michael Walle <michael@walle.cc>
To: Bjorn Helgaas <helgaas@kernel.org>
In-Reply-To: <2477c66eafbd97207693b83b60fa0a3c@walle.cc>
References: <20210115235721.GA1862880@bjorn-Precision-5520>
 <2477c66eafbd97207693b83b60fa0a3c@walle.cc>
User-Agent: Roundcube Webmail/1.4.10
Message-ID: <e8647a2cd4bfbcd42c27183d1c8984a0@walle.cc>
X-Sender: michael@walle.cc
X-Mailman-Approved-At: Mon, 01 Feb 2021 20:05:31 +0000
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

Hi Bjorn,

Am 2021-01-17 20:27, schrieb Michael Walle:
> Am 2021-01-16 00:57, schrieb Bjorn Helgaas:
>> On Wed, Jan 13, 2021 at 12:32:32AM +0100, Michael Walle wrote:
>>> Am 2021-01-12 23:58, schrieb Bjorn Helgaas:
>>> > On Sat, Jan 09, 2021 at 07:31:46PM +0100, Michael Walle wrote:
>>> > > Am 2021-01-08 22:20, schrieb Bjorn Helgaas:
>> 
>>> > > > 3) If the Intel i210 is defective in how it handles an Expansion ROM
>>> > > > that overlaps another BAR, a quirk might be the right fix. But my
>>> > > > guess is the device is working correctly per spec and there's
>>> > > > something wrong in how firmware/Linux is assigning things.  That would
>>> > > > mean we need a more generic fix that's not a quirk and not tied to the
>>> > > > Intel i210.
>>> > >
>>> > > Agreed, but as you already stated (and I've also found that in
>>> > > the PCI spec) the Expansion ROM address decoder can be shared by
>>> > > the other BARs and it shouldn't matter as long as the ExpROM BAR
>>> > > is disabled, which is the case here.
>>> >
>>> > My point is just that if this could theoretically affect devices
>>> > other than the i210, the fix should not be an i210-specific quirk.
>>> > I'll assume this is a general problem and wait for a generic PCI
>>> > core solution unless it's i210-specific.
>>> 
>>> I guess the culprit here is that linux skips the programming of the
>>> BAR because of some broken Matrox card. That should have been a
>>> quirk instead, right? But I don't know if we want to change that, do
>>> we? How many other cards depend on that?
>> 
>> Oh, right.  There's definitely some complicated history there that
>> makes me a little scared to change things.  But it's also unfortunate
>> if we have to pile quirks on top of quirks.
>> 
>>> And still, how do we find out that the i210 is behaving correctly?
>>> In my opinion it is clearly not. You can change the ExpROM BAR value
>>> during runtime and it will start working (while keeping it
>>> disabled).  Am I missing something here?
>> 
>> I agree; if the ROM BAR is disabled, I don't think it should matter at
>> all what it contains, so this does look like an i210 defect.
>> 
>> Would you mind trying the patch below?  It should update the ROM BAR
>> value even when it is disabled.  With the current pci_enable_rom()
>> code that doesn't rely on the value read from the BAR, I *think* this
>> should be safe even on the Matrox and similar devices.
> 
> Your patch will fix my issue:
> 
> Tested-by: Michael Walle <michael@walle.cc>

any news on this?

-michael
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
