Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5EB40B89B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Sep 2021 22:01:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C96C3404DA;
	Tue, 14 Sep 2021 20:01:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FHdFhBwEQv7G; Tue, 14 Sep 2021 20:01:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC0EA400A4;
	Tue, 14 Sep 2021 20:01:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D5DF1BF290
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 20:01:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4911C60AEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 20:01:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ad5DFkTaJ8v4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Sep 2021 20:00:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from chris.i8u.org (mail.i8u.org [75.148.87.25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 84109607AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 20:00:55 +0000 (UTC)
Received: by chris.i8u.org (Postfix, from userid 1000)
 id E0A9816C94EA; Tue, 14 Sep 2021 13:00:54 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by chris.i8u.org (Postfix) with ESMTP id DB7D316C9364;
 Tue, 14 Sep 2021 13:00:54 -0700 (PDT)
Date: Tue, 14 Sep 2021 13:00:54 -0700 (PDT)
From: Hisashi T Fujinaka <htodd@twofifty.com>
To: Dave Jones <davej@codemonkey.org.uk>
In-Reply-To: <20210914142419.GA32324@codemonkey.org.uk>
Message-ID: <c02876d7-c3f3-1953-334d-1248af919796@twofifty.com>
References: <CAHk-=wgbygOb3hRV+7YOpVcMPTP2oQ=iw6tf09Ydspg7o7BsWQ@mail.gmail.com>
 <20210913141818.GA27911@codemonkey.org.uk>
 <ab571d7e-0cf5-ffb3-6bbe-478a4ed749dc@gmail.com>
 <20210913201519.GA15726@codemonkey.org.uk>
 <b84b799d-0aaa-c4e1-b61b-8e2316b62bd1@gmail.com>
 <20210913203234.GA6762@codemonkey.org.uk>
 <b24d81e2-5a1e-3616-5a01-abd58c0712f7@gmail.com>
 <b4b543d4-c0c5-3c56-46b7-e17ec579edcc@twofifty.com>
 <367cc748-d411-8cf8-ff95-07715c55e899@gmail.com>
 <20210914142419.GA32324@codemonkey.org.uk>
MIME-Version: 1.0
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
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 14 Sep 2021, Dave Jones wrote:

> On Tue, Sep 14, 2021 at 07:51:22AM +0200, Heiner Kallweit wrote:
>
> > > Sorry to reply from my personal account. If I did it from my work
> > > account I'd be top-posting because of Outlook and that goes over like a
> > > lead balloon.
> > >
> > > Anyway, can you send us a dump of your eeprom using ethtool -e? You can
> > > either send it via a bug on e1000.sourceforge.net or try sending it to
> > > todd.fujinaka@intel.com
> > >
> > > The other thing is I'm wondering is what the subvendor device ID you
> > > have is referring to because it's not in the pci database. Some ODMs
> > > like getting creative with what they put in the NVM.
> > >
> > > Todd Fujinaka (todd.fujinaka@intel.com)
> >
> > Thanks for the prompt reply. Dave, could you please provide the requested
> > information?
>
> sent off-list.
>
> 	Dave

Whoops. I replied from outlook again.

I have confirmation that this should be a valid image. The VPD is just a
series of 3's. There are changes to preboot header, flash and BAR size,
and as far as I can tell, a nonsense subdevice ID, but this should work.

What was the original question?

Todd Fujinaka <todd.fujinaka@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
