Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9CD14106B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jan 2020 19:10:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D42F98699B;
	Fri, 17 Jan 2020 18:10:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wFMkyFoLhcow; Fri, 17 Jan 2020 18:10:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 147A1869A5;
	Fri, 17 Jan 2020 18:10:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A265C1BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2020 18:10:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9BF35221B2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2020 18:10:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o7yHzb6RTxdx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jan 2020 18:10:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-d.ads.isi.edu (mail-d.ads.isi.edu [128.9.180.199])
 by silver.osuosl.org (Postfix) with ESMTPS id 694A622128
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2020 18:10:16 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.70,331,1574150400"; d="scan'208";a="20832595"
Received: from pool-108-14-86-129.nycmny.ftas.verizon.net (HELO
 smtp.ads.isi.edu) ([108.14.86.129])
 by mail-d.ads.isi.edu with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2020 10:10:15 -0800
Date: Fri, 17 Jan 2020 13:10:12 -0500
From: Ryan Goodfellow <rgoodfel@isi.edu>
To: =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>
Message-ID: <20200117181012.GA74692@smtp.ads.isi.edu>
References: <14f9e1bf5c3a41dbaec53f83cb5f0564@isi.edu>
 <CAJ+HfNhdPEe34DVUAj4eHxLkBUSTo2CXbLHoWu+dwFCp753oMg@mail.gmail.com>
 <20200117171637.GB69024@smtp.ads.isi.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117171637.GB69024@smtp.ads.isi.edu>
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

On Fri, Jan 17, 2020 at 12:16:37PM -0500, Ryan Goodfellow wrote:
> ry@ryzen:~$ uname -a
> Linux ryzen 4.19.0-6-amd64 #1 SMP Debian 4.19.67-2+deb10u2 (2019-11-11) x86_64 GNU/Linux

correction, that was a terminal on the wrong machine

ry@turbine:~$ uname -a
Linux turbine 5.5.0-rc4-moa+ #16 SMP Fri Jan 17 10:52:42 EST 2020 x86_64 GNU/Linux


-- 
~ ry
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
