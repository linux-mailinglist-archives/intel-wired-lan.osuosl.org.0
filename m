Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CD740FB62
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Sep 2021 17:10:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C51E415DB;
	Fri, 17 Sep 2021 15:10:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b0gk3kJr2MWk; Fri, 17 Sep 2021 15:10:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09D5140670;
	Fri, 17 Sep 2021 15:10:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C6171BF36A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Sep 2021 15:09:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 182D584045
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Sep 2021 15:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LK9qz2JnnoC8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Sep 2021 15:09:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 19BD98402C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Sep 2021 15:09:55 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3B97A61216;
 Fri, 17 Sep 2021 15:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631891394;
 bh=vVYHpw21259JAe8ohVI/fRRsfMKpt2NkDlr6v0nyUzA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=OmrECiTp474jCVtgT0DBEi1S+5l8rLOwFZyxwtFAh/Iw4Ki90XBZOwmXp+2mih90H
 MpT0zf++l3LLalCxNNwGnQ1FLUW7fL7RfajR8OrRRb84A3cyEJBDY1Zndmwz9GTb7W
 /9q8JcfNuUseHabAaPL8bkk1lqLTEYOmVfmNOrqR31PUy7wnPnbYHDxhKUHecL0E4n
 gRjdX2nRvVzItkwtkriwfyS5XHnwCOX6MJ+zKfgLI1M7LYv2MC16sTZDXewRV5s2VT
 WmgwOY5+td6/yZuylMq46kru3g5Hk1zhrjFMJeu0mA8O8+Ji5uiMwQwkp/RuT0SVN8
 QIZotvvgnblPg==
Date: Fri, 17 Sep 2021 10:09:52 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Hisashi T Fujinaka <htodd@twofifty.com>
Message-ID: <20210917150952.GA1716923@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e5518a29-efe7-1d84-1671-4dc170f6bc53@twofifty.com>
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

On Wed, Sep 15, 2021 at 04:46:54PM -0700, Hisashi T Fujinaka wrote:
> On Wed, 15 Sep 2021, Bjorn Helgaas wrote:
> 
> > On Wed, Sep 15, 2021 at 09:16:47AM -0700, Hisashi T Fujinaka wrote:
> > > On Wed, 15 Sep 2021, Heiner Kallweit wrote:

> > > > In an earlier mail in this thread was stated that subvendor id is unknown.
> > > > Checking here https://pcisig.com/membership/member-companies?combine=1dcf
> > > > it says: Beijing Sinead Technology Co., Ltd.
> > > 
> > > Huh. I didn't realize there was an official list beyond pciids.ucw.cz.
> > > 
> > > In any case, that's who you need to talk to about the unlisted (to
> > > Linux) vendor ID and also the odd VPD data.
> > 
> > https://pci-ids.ucw.cz/ is definitely unofficial in the sense that it
> > is basically crowd-sourced data, not the "official" Vendor IDs
> > controlled by the PCI SIG.
> > 
> > I submitted an addition to https://pci-ids.ucw.cz/
> > 
> > Bjorn
> 
> Just for my edumacation, do they keep track of device IDs, subvendor IDs
> (which are probably just the same as vendor IDs), and subdevice IDs in
> the PCI SIG? Or even the branding strings?

The PCI SIG does not manage Device IDs.  That's the responsibility of
the vendor.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
