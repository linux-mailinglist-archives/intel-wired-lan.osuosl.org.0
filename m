Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 899CD40B331
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Sep 2021 17:33:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 137546068D;
	Tue, 14 Sep 2021 15:33:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HuvQGkdp76io; Tue, 14 Sep 2021 15:33:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F01916061A;
	Tue, 14 Sep 2021 15:33:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E5CD51BF33E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 14:56:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D2B3A607FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 14:56:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3CS6Tc3viPkt for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Sep 2021 14:56:46 +0000 (UTC)
X-Greylist: delayed 00:32:19 by SQLgrey-1.8.0
Received: from scorn.kernelslacker.org (scorn.kernelslacker.org
 [IPv6:2600:3c03:e000:2fb::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 41998607D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 14:56:46 +0000 (UTC)
Received: from [2601:196:4600:6634:ae9e:17ff:feb7:72ca]
 (helo=wopr.kernelslacker.org)
 by scorn.kernelslacker.org with esmtp (Exim 4.92)
 (envelope-from <davej@codemonkey.org.uk>)
 id 1mQ9MC-0003hi-5m; Tue, 14 Sep 2021 10:24:20 -0400
Received: by wopr.kernelslacker.org (Postfix, from userid 1026)
 id D948856008F; Tue, 14 Sep 2021 10:24:19 -0400 (EDT)
Date: Tue, 14 Sep 2021 10:24:19 -0400
From: Dave Jones <davej@codemonkey.org.uk>
To: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <20210914142419.GA32324@codemonkey.org.uk>
Mail-Followup-To: Dave Jones <davej@codemonkey.org.uk>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Bjorn Helgaas <bhelgaas@google.com>, todd.fujinaka@intel.com,
 Hisashi T Fujinaka <htodd@twofifty.com>
References: <CAHk-=wgbygOb3hRV+7YOpVcMPTP2oQ=iw6tf09Ydspg7o7BsWQ@mail.gmail.com>
 <20210913141818.GA27911@codemonkey.org.uk>
 <ab571d7e-0cf5-ffb3-6bbe-478a4ed749dc@gmail.com>
 <20210913201519.GA15726@codemonkey.org.uk>
 <b84b799d-0aaa-c4e1-b61b-8e2316b62bd1@gmail.com>
 <20210913203234.GA6762@codemonkey.org.uk>
 <b24d81e2-5a1e-3616-5a01-abd58c0712f7@gmail.com>
 <b4b543d4-c0c5-3c56-46b7-e17ec579edcc@twofifty.com>
 <367cc748-d411-8cf8-ff95-07715c55e899@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <367cc748-d411-8cf8-ff95-07715c55e899@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Note: SpamAssassin invocation failed
X-Mailman-Approved-At: Tue, 14 Sep 2021 15:33:08 +0000
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
Cc: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Hisashi T Fujinaka <htodd@twofifty.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Bjorn Helgaas <bhelgaas@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Sep 14, 2021 at 07:51:22AM +0200, Heiner Kallweit wrote:
 
 > > Sorry to reply from my personal account. If I did it from my work
 > > account I'd be top-posting because of Outlook and that goes over like a
 > > lead balloon.
 > > 
 > > Anyway, can you send us a dump of your eeprom using ethtool -e? You can
 > > either send it via a bug on e1000.sourceforge.net or try sending it to
 > > todd.fujinaka@intel.com
 > > 
 > > The other thing is I'm wondering is what the subvendor device ID you
 > > have is referring to because it's not in the pci database. Some ODMs
 > > like getting creative with what they put in the NVM.
 > > 
 > > Todd Fujinaka (todd.fujinaka@intel.com)
 > 
 > Thanks for the prompt reply. Dave, could you please provide the requested
 > information?

sent off-list.

	Dave
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
