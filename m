Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5670B2CFFD0
	for <lists+intel-wired-lan@lfdr.de>; Sun,  6 Dec 2020 00:49:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BE45187CF2;
	Sat,  5 Dec 2020 23:49:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yUZ3IdrBXLYS; Sat,  5 Dec 2020 23:49:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4647787CFC;
	Sat,  5 Dec 2020 23:49:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 24CB51BF361
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Dec 2020 23:49:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 202B788632
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Dec 2020 23:49:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EyD735kfGvJv for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Dec 2020 23:49:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 93CE6885ED
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Dec 2020 23:49:53 +0000 (UTC)
Date: Sat, 5 Dec 2020 15:49:51 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607212193;
 bh=h0vaEYwFre3MPf6MHPuQ2v8JOABc6Vx+THCYEJwqZEg=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=CoulufPecNt5be0Hh33etS3OzTQxlnBJ7VBB2umi3YSs3TT6bAL3EyUHBgEj678S1
 D4e7VYqm5pc2agH2C6uCN5zPOwbkvVwlH+Y2LwcMt4wYPnBdw1fXV95sYKffViOi82
 y0gL1xUtGL6JHZ55vqfkxTlEJvulAsxDRMKJIl+uZORsFppIruc0DSGKJvS1xuNNnV
 arPEnpc1N7a7vSPwk9IxxpxwYLSRgD4a85MqeoZCZRlLf4Z+nzhwxkq4qHnj2Dp0Ve
 nMp1Nrg6/xjUA+Dj7oA/ei8fl0jd7Qlt8cw+URHJlwZLH8KqybD0pcvvwEZagDn2XM
 VXYVuq9MeuQVQ==
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20201205154951.4dd92194@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <CAKgT0UfuyrbzpDNySMmnAkqKnw9cYuEM1LhgG0QvmrY=smR-uw@mail.gmail.com>
References: <20201204200920.133780-1-mario.limonciello@dell.com>
 <CAKgT0Uc=OxcuHbZihY3zxsxzPprJ_8vGHr=reBJFMrf=V9A5kg@mail.gmail.com>
 <DM6PR19MB2636B200D618A5546E7BBB57FAF10@DM6PR19MB2636.namprd19.prod.outlook.com>
 <CAKgT0UfuyrbzpDNySMmnAkqKnw9cYuEM1LhgG0QvmrY=smR-uw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 0/7] Improve s0ix flows for systems
 i219LM
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>, "Yuan,
 Perry" <Perry.Yuan@dell.com>, "Limonciello,
 Mario" <Mario.Limonciello@dell.com>, "Shen, Yijun" <Yijun.Shen@dell.com>,
 LKML <linux-kernel@vger.kernel.org>,
 "anthony.wong@canonical.com" <anthony.wong@canonical.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 4 Dec 2020 14:38:03 -0800 Alexander Duyck wrote:
> > > The patches look good to me. Just need to address the minor issue that
> > > seems to have been present prior to the introduction of this patch
> > > set.
> > >
> > > Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>  
> >
> > Thanks for your review.  Just some operational questions - since this previously
> > existed do you want me to re-spin the series to a v4 for this, or should it be
> > a follow up after the series?
> >
> > If I respin it, would you prefer that change to occur at the start or end
> > of the series?  
> 
> I don't need a respin, but if you are going to fix it you should
> probably put out the patch as something like a 8/7. If you respin it
> should happen near the start of the series as it is a bug you are
> addressing.

Don't we need that patch to be before this series so it can be
back ported easily? Or is it not really a bug?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
