Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7886540CF55
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Sep 2021 00:32:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08DDA60BCD;
	Wed, 15 Sep 2021 22:32:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f2-wq-ccpSES; Wed, 15 Sep 2021 22:32:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB04D6077C;
	Wed, 15 Sep 2021 22:32:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 146611BF29E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 22:32:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EA24B82DDE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 22:32:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 88S12y_zGElk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Sep 2021 22:32:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 07273827A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 22:32:20 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3E6E5603E9;
 Wed, 15 Sep 2021 22:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631745140;
 bh=K3iyOGBt+lTyO/0wz6hOdUlzVS8jaZ4L1n8aHs0PUGk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=ucJB253ObmQzY8kH4snfqMPbQRHyc2K1XWf+qPBI+9IMs3Z+307VFle8dTNF4iKHn
 TsGbAIpvYyw0qK4+INSmkMsjwguarg7V+hkG3KzGe0Bd+7zgc5Uo18fAE2aYt7Qvy/
 RVwVFKr8HLNv82+YfxTqnSvKPlgaqZAW41p9URYsxrY0K5Yg9upnVxj/RmbM5NA7nN
 Rb8ZJN5mVK+gqpXgiUnp0yltZ/tW54yBOBwHaAO7gX0T5Tx68F1Hr/maijyIqRKNKX
 7OefslAWO0kI5jSSK5QgDSmPZ6eWGTPAhlkBV1z/J3XG/dAFJOopL7HhjP0VOjlPH/
 NL2+SbQanR72A==
Date: Wed, 15 Sep 2021 17:32:18 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Hisashi T Fujinaka <htodd@twofifty.com>
Message-ID: <20210915223218.GA1542966@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1eba46af-e9d1-36aa-4bb7-9968b92a932f@twofifty.com>
Subject: Re: [Intel-wired-lan] Linux 5.15-rc1 - 82599ES VPD access isue
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
Cc: Dave Jones <davej@codemonkey.org.uk>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 15, 2021 at 09:16:47AM -0700, Hisashi T Fujinaka wrote:
> On Wed, 15 Sep 2021, Heiner Kallweit wrote:
> > On 15.09.2021 16:18, Hisashi T Fujinaka wrote:
> > > On Tue, 14 Sep 2021, Heiner Kallweit wrote:
> > > > On 14.09.2021 22:00, Hisashi T Fujinaka wrote:

> > > > > I have confirmation that this should be a valid image. The
> > > > > VPD is just a series of 3's. There are changes to preboot
> > > > > header, flash and BAR size, and as far as I can tell, a
> > > > > nonsense subdevice ID, but this should work.
> > > > > 
> > > > > What was the original question?
> > > > > 
> > > > "lspci -vv" complains about an invalid short tag 0x06 and the
> > > > PCI VPD code resulted in a stall. So it seems the data doesn't
> > > > have valid VPD format as defined in PCI specification.
> > > > 
> > > > 01:00.0 Ethernet controller: Intel Corporation 82599ES 10-Gigabit SFI/SFP+ Network Connection (rev 01)
> > > >        Subsystem: Device 1dcf:030a
> > > >     ...
> > > >             Capabilities: [e0] Vital Product Data
> > > >                *Unknown small resource type 06, will not decode more.*
> > > > 
> > > > Not sure which method is used by the driver to get the EEPROM
> > > > content.  For the issue here is relevant what is exposed via
> > > > PCI VPD.
> > > > 
> > > > The related kernel error message has been reported few times,
> > > > e.g. here: https://access.redhat.com/solutions/3001451 Only
> > > > due to a change in kernel code this became a more prominent
> > > > issue now.
> > > > 
> > > > You say that VPD is just a series of 3's. This may explain why
> > > > kernel and tools complain about an invalid VPD format. VPD
> > > > misses the tag structure.
> > > 
> > > I think I conflated two issues and yours may not be the one with the
> > > weird Amazon NIC. In any case, the VPD does not match the spec and two
> > > people have confirmed it's just full of 3's. With the bogus subvendor
> > > ID, I'm thinking this is not an Intel NIC.

A series of 0x03 0x03 0x03 ... bytes would decode as "small items of
type 00", so I assume the VPD contains a series of 0x33 0x33 0x33 ...
bytes.  That would decode to a series of "small items of type 06",
each of length four (one byte for the tag, three bytes of data).

Prior to v5.15, we would complain "invalid short VPD tag 06" and stop
reading.  As of v5.15, I think we'll just keep reading looking for a
valid "end" tag, but we'll never find one.

I think in v5.15 there will be no error message because the series of
four-byte small data items happens to fit exactly in the maximum 32KB
size of VPD and is technically legal syntactic structure, even though
it makes no sense.

But it will be much slower and might account for the boot slowdown
Dave reported.

> > In an earlier mail in this thread was stated that subvendor id is unknown.
> > Checking here https://pcisig.com/membership/member-companies?combine=1dcf
> > it says: Beijing Sinead Technology Co., Ltd.
> 
> Huh. I didn't realize there was an official list beyond pciids.ucw.cz.
> 
> In any case, that's who you need to talk to about the unlisted (to
> Linux) vendor ID and also the odd VPD data.

https://pci-ids.ucw.cz/ is definitely unofficial in the sense that it
is basically crowd-sourced data, not the "official" Vendor IDs
controlled by the PCI SIG.

I submitted an addition to https://pci-ids.ucw.cz/

Bjorn
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
