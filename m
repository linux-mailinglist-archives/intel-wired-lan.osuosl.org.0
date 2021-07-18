Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6DF3CD5D0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jul 2021 15:40:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55E876065D;
	Mon, 19 Jul 2021 13:40:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y_-qOHnH3k4D; Mon, 19 Jul 2021 13:40:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5AD6860659;
	Mon, 19 Jul 2021 13:40:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0AC791BF331
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jul 2021 22:51:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 060F860727
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jul 2021 22:51:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LVesCEXCx0Qi for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Jul 2021 22:51:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB6D8606BB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jul 2021 22:51:02 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0A05761029;
 Sun, 18 Jul 2021 22:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626648662;
 bh=E1GZ9wrZahjmOXpHUuWjVZgdMkfsdbwei1t/mYpy9C4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fClH3BDDoUNpc0wpEmkVw6BZObdB09nhHWUouGZ9Nt9+0dBTqhSvf4UBJTG5G88Py
 fnJ+3D9LUNTde008quKP3XAf/TjsMhADDwPJu6Ja42YByr3gBGr6cj+4r/7mODjot9
 46UFpgUH5FnrZROfr7kPRgTen5UPZxso8aXPvSbaaBTGcp276PXXNVrzlcdmz6V4Yf
 Oekv64bmFvz7I7WBOd5ljLtcuIsR6q1rbLFNJ/YMGoNT3WXuKPDExZzqxdm3DwMe7b
 e3uk7Ik4tE68dZdn/nsCHqJrvHVdf9EiV1CdRl2l+DSN3YHkbpBfHUf4hp3+Iik7Zc
 euDGV64UE/ULg==
Received: by pali.im (Postfix)
 id 448579EE; Mon, 19 Jul 2021 00:50:59 +0200 (CEST)
Date: Mon, 19 Jul 2021 00:50:59 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Oliver O'Halloran <oohall@gmail.com>
Message-ID: <20210718225059.hd3od4k4on3aopcu@pali>
References: <CAOSf1CGVpogQGAatuY_N0db6OL2BFegGtj6VTLA9KFz0TqYBQg@mail.gmail.com>
 <20210708154550.GA1019947@bjorn-Precision-5520>
 <CAOSf1CHtHLyEHC58jwemZS6j=jAU2OrrYitkUYmdisJtuFu4dw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOSf1CHtHLyEHC58jwemZS6j=jAU2OrrYitkUYmdisJtuFu4dw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Mailman-Approved-At: Mon, 19 Jul 2021 13:40:09 +0000
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
 netdev@vger.kernel.org, linux-pci <linux-pci@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Monday 19 July 2021 02:31:10 Oliver O'Halloran wrote:
> On Fri, Jul 9, 2021 at 1:45 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
> >
> > *snip*
> >
> > Apologies for rehashing what's probably obvious to everybody but me.
> > I'm trying to get a better handle on benign vs poisonous errors.
> >
> > MMIO means CPU reads or writes to the device.  In PCI, writes are
> > posted and don't receive a response, so a driver will never see
> > writel() return an error (although an error may be reported
> > asynchronously via AER or similar).
> >
> > So I think we're mostly talking about CPU reads here.  We expect a PCI
> > response containing the data.  Sometimes there's no response or an
> > error response.  The behavior of the host bridge in these error cases
> > is not defined by PCI, so what the CPU sees is not consistent across
> > platforms.  In some cases, the bridge handles this as a catastrophic
> > error that forces a system restart.
> >
> > But in most cases, at least on x86, the bridge logs an error and
> > fabricates ~0 data so the CPU read can complete.  Then it's up to
> > software to recognize that an error occurred and decide what to do
> > about it.  Is this a benign or a poisonous error?
> >
> > I'd say this is a benign error. It certainly can't be ignored, but as
> > long as the driver recognizes the error, it should be able to deal
> > with it without crashing the whole system and forcing a restart.
> 
> I was thinking more in terms of what the driver author sees rather
> than what's happening on the CPU side. The crash seen in the OP
> appears to be because the code is "doing an MMIO." However, the
> reasons for the crash have nothing to do with the actual mechanics of
> the operation (which should be benign). The point I was making is that
> the pattern of:
> 
> if (is_disconnected())
>     return failure;
> return do_mmio_read(addr);
> 
> does have some utility as a last-ditch attempt to prevent crashes in
> the face of obnoxious bridges or bad hardware. Granted, that should be
> a platform concern rather than something that should ever appear in
> driver code, but considering drivers open-code readl()/writel() calls
> there's not really any place to put that sort of workaround.
> 
> That all said, the case in the OP is due to an entirely avoidable
> driver bug and that sort of hack is absolutely the wrong thing to do.
> 
> Oliver

And do we have some solution for this kind of issue? There are more PCIe
controllers / platforms which do not like MMIO read/write operation when
card / link is not connected.

If we do not provide a way how to solve these problems then we can
expect that people would just hack ethernet / wifi / ... device drivers
which are currently crashing by patches like in this thread.

Maybe PCI subsystem could provide wrapper function which implements
above pattern and which can be used by device drivers?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
