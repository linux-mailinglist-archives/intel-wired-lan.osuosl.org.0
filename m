Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F3B3DE1AE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Aug 2021 23:30:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B89E1404F5;
	Mon,  2 Aug 2021 21:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JNI9yRvlKtGB; Mon,  2 Aug 2021 21:30:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55A35404ED;
	Mon,  2 Aug 2021 21:30:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9AB361BF31C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 21:29:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 85E5D60871
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 21:29:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=pobox.com header.b="m56WwsFD";
 dkim=pass (1024-bit key) header.d=fluxnic.net header.b="ieIfu5e1"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ltVq6pK5KM2Y for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Aug 2021 21:29:13 +0000 (UTC)
X-Greylist: delayed 00:06:48 by SQLgrey-1.8.0
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com [64.147.108.71])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F360D60862
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 21:29:12 +0000 (UTC)
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 3AE0DD1F9E;
 Mon,  2 Aug 2021 17:22:21 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=CRe+PDqlDBc1oefWEPXwlMOMctNURIEIHe/d9Q
 t60Zw=; b=m56WwsFDwPpRT2I7QecE9QLtZve1ynAPPvMtr86IMieAQ0k64QIjcG
 ere3sLLtO6zvM5XKKEBpLA8U5yOsgOFdCEFYNjnjyv6YFtjUzpti+ITFKrna8M+t
 hD4UfkW89CoeS57/fwcMo5aLVf0BKL2f6JdTGHEv5wnY7sE4HMEuA=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 306C3D1F9D;
 Mon,  2 Aug 2021 17:22:21 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=CRe+PDqlDBc1oefWEPXwlMOMctNURIEIHe/d9Qt60Zw=;
 b=ieIfu5e1D8DeXYWVBpJ3d47r+18sJuZPvVsfKLoBGLvrJ7QCly8af887QGWpjGtlqC2Q0DlUCVdRiqDh8fGFYNz0LDeMezu17uoVXLzjP4HiDrUKICoTGn66qmkxcr5UFcacvfUy/fmF4pjGlREKRXTM4p+y0kPcXqu/WWCbsDM=
Received: from yoda.home (unknown [96.21.170.108])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 55557D1F9C;
 Mon,  2 Aug 2021 17:22:20 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id ED3792DA09B9;
 Mon,  2 Aug 2021 17:22:18 -0400 (EDT)
Date: Mon, 2 Aug 2021 17:22:18 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: Arnd Bergmann <arnd@kernel.org>
In-Reply-To: <CAK8P3a379=Qi7g7Hmf299GgM-6g32Them81uYXPqRDZDro_azg@mail.gmail.com>
Message-ID: <7q2p5954-3062-po4-ps5r-9n30n5663ns3@syhkavp.arg>
References: <20210802145937.1155571-1-arnd@kernel.org>
 <20210802164907.GA9832@hoboy.vegasvil.org>
 <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
 <CAK8P3a3P6=ZROxT8daW83mRp7z5rYAQydetWFXQoYF7Y5_KLHA@mail.gmail.com>
 <CO1PR11MB50892367410160A8364DBF69D6EF9@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8P3a379=Qi7g7Hmf299GgM-6g32Them81uYXPqRDZDro_azg@mail.gmail.com>
MIME-Version: 1.0
X-Pobox-Relay-ID: B87DEF62-F3D7-11EB-A6DA-FD8818BA3BAF-78420484!pb-smtp2.pobox.com
X-Mailman-Approved-At: Mon, 02 Aug 2021 21:30:07 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ethernet/intel: fix
 PTP_1588_CLOCK dependencies
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2 Aug 2021, Arnd Bergmann wrote:

> On Mon, Aug 2, 2021 at 10:46 PM Keller, Jacob E
> <jacob.e.keller@intel.com> wrote:
> 
> > > You can do something like it for a particular symbol though, such as
> > >
> > > config MAY_USE_PTP_1588_CLOCK
> > >        def_tristate PTP_1588_CLOCK || !PTP_1588_CLOCK
> > >
> > >  config E1000E
> > >         tristate "Intel(R) PRO/1000 PCI-Express Gigabit Ethernet support"
> > >         depends on PCI && (!SPARC32 || BROKEN)
> > > +       depends on MAY_USE_PTP_1588_CLOCK
> > >         select CRC32
> > > -       imply PTP_1588_CLOCK
> >
> > What about "integrates"?
> 
> Maybe, we'd need to look at whether that fits for the other users of the
> "A || !A" trick.

I implemented "conditional dependencies" at the time, which is syntactic 
sugar to express the above as:

	depends on A if A != n

	depends on A if A

etc.

http://lkml.iu.edu/hypermail/linux/kernel/2004.2/09783.html

But Masahiro shut it down.


Nicolas
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
