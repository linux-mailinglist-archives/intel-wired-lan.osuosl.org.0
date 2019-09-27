Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E152FC0B04
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Sep 2019 20:26:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A883886EA7;
	Fri, 27 Sep 2019 18:26:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EkHq0gU-MrJp; Fri, 27 Sep 2019 18:26:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 043128272B;
	Fri, 27 Sep 2019 18:26:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C4B591BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 18:26:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C0C532286F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 18:26:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id itkWufoNjtzp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2019 18:26:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id 1D4AE20494
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 18:26:03 +0000 (UTC)
Received: from localhost (231-157-167-83.reverse.alphalink.fr [83.167.157.231])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C9589153ED996;
 Fri, 27 Sep 2019 11:26:00 -0700 (PDT)
Date: Fri, 27 Sep 2019 20:25:59 +0200 (CEST)
Message-Id: <20190927.202559.2108440086367535055.davem@davemloft.net>
To: jacob.e.keller@intel.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190926022820.7900-2-jacob.e.keller@intel.com>
References: <20190926022820.7900-1-jacob.e.keller@intel.com>
 <20190926022820.7900-2-jacob.e.keller@intel.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 27 Sep 2019 11:26:02 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [net-next v2 1/2] ptp: correctly disable
 flags on old ioctls
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
Cc: christopher.s.hall@intel.com, felipe.balbi@linux.intel.com,
 netdev@vger.kernel.org, richardcochran@gmail.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 25 Sep 2019 19:28:19 -0700

> Commit 415606588c61 ("PTP: introduce new versions of IOCTLs",
> 2019-09-13) introduced new versions of the PTP ioctls which actually
> validate that the flags are acceptable values.
> 
> As part of this, it cleared the flags value using a bitwise
> and+negation, in an attempt to prevent the old ioctl from accidentally
> enabling new features.
> 
> This is incorrect for a couple of reasons. First, it results in
> accidentally preventing previously working flags on the request ioctl.
> By clearing the "valid" flags, we now no longer allow setting the
> enable, rising edge, or falling edge flags.
> 
> Second, if we add new additional flags in the future, they must not be
> set by the old ioctl. (Since the flag wasn't checked before, we could
> potentially break userspace programs which sent garbage flag data.
> 
> The correct way to resolve this is to check for and clear all but the
> originally valid flags.
> 
> Create defines indicating which flags are correctly checked and
> interpreted by the original ioctls. Use these to clear any bits which
> will not be correctly interpreted by the original ioctls.
> 
> In the future, new flags must be added to the VALID_FLAGS macros, but
> *not* to the V1_VALID_FLAGS macros. In this way, new features may be
> exposed over the v2 ioctls, but without breaking previous userspace
> which happened to not clear the flags value properly. The old ioctl will
> continue to behave the same way, while the new ioctl gains the benefit
> of using the flags fields.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Applied to 'net'.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
