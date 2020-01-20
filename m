Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FAC14317F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jan 2020 19:33:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AEEB682533;
	Mon, 20 Jan 2020 18:33:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fPkFvBD2vrke; Mon, 20 Jan 2020 18:33:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C5C4F86111;
	Mon, 20 Jan 2020 18:33:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E55051BF34C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2020 18:33:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DDFB785722
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2020 18:33:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v8DoDCk3rq3S for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jan 2020 18:33:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-c.ads.isi.edu (mail-c.ads.isi.edu [128.9.180.198])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DCFDD82533
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2020 18:33:13 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.70,343,1574150400"; d="scan'208";a="22277228"
Received: from pool-108-14-86-129.nycmny.ftas.verizon.net (HELO
 smtp.ads.isi.edu) ([108.14.86.129])
 by mail-c.ads.isi.edu with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2020 10:33:12 -0800
Date: Mon, 20 Jan 2020 13:33:09 -0500
From: Ryan Goodfellow <rgoodfel@isi.edu>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Message-ID: <20200120183309.GA10990@smtp.ads.isi.edu>
References: <14f9e1bf5c3a41dbaec53f83cb5f0564@isi.edu>
 <CAJ+HfNhdPEe34DVUAj4eHxLkBUSTo2CXbLHoWu+dwFCp753oMg@mail.gmail.com>
 <20200117171637.GB69024@smtp.ads.isi.edu>
 <CAJ8uoz0i2NVxBty18Cq=kK5_Ysue=pt1psBBahLFiZqN168OiQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ8uoz0i2NVxBty18Cq=kK5_Ysue=pt1psBBahLFiZqN168OiQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] zero-copy between interfaces
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
Cc: "xdp-newbies@vger.kernel.org" <xdp-newbies@vger.kernel.org>,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 20, 2020 at 09:24:05AM +0100, Magnus Karlsson wrote:
> 
> I was wondering if you could run two small experiments since I cannot
> reproduce this?
> 
> 1: Run your program using the two ports on your X710 card. Does it
> work? This is my setup and works for me.

The X710 card works without issue.

> 2: On your Mellanox setup, insert a kick_tx() call for each of your
> two sockets before the poll() call in your forward() function. Just to
> see if it works when we explicitly wake up the driver.

This did not have an effect on the observed behavior. Exactly N packets go
through the interface where N is equal to the size of the FQ/CQ rings and then
forwarding halts.

--
~ ry
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
