Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E21FE697
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2019 21:49:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 95B9784FAE;
	Fri, 15 Nov 2019 20:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DLnq2eaWzK4X; Fri, 15 Nov 2019 20:49:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 073C18539F;
	Fri, 15 Nov 2019 20:49:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 520571BF59F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 20:49:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4E46685317
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 20:49:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AKNjPFT0xE1A for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2019 20:49:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CE10684FAE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2019 20:49:33 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id E85E514E20F60;
 Fri, 15 Nov 2019 12:49:32 -0800 (PST)
Date: Fri, 15 Nov 2019 12:49:32 -0800 (PST)
Message-Id: <20191115.124932.339187560742442216.davem@davemloft.net>
To: richardcochran@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191114184507.18937-1-richardcochran@gmail.com>
References: <20191114184507.18937-1-richardcochran@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 15 Nov 2019 12:49:33 -0800 (PST)
Subject: Re: [Intel-wired-lan] [PATCH net 00/13] ptp: Validate the ancillary
 ioctl flags more carefully.
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
Cc: christopher.s.hall@intel.com, brandon.streiff@ni.com,
 sergei.shtylyov@cogentembedded.com, felipe.balbi@linux.intel.com,
 netdev@vger.kernel.org, ferasda@mellanox.com, intel-wired-lan@lists.osuosl.org,
 eugenia@mellanox.com, stefan.sorensen@spectralink.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Richard Cochran <richardcochran@gmail.com>
Date: Thu, 14 Nov 2019 10:44:54 -0800

> The flags passed to the ioctls for periodic output signals and
> time stamping of external signals were never checked, and thus formed
> a useless ABI inadvertently.  More recently, a version 2 of the ioctls
> was introduced in order make the flags meaningful.  This series
> tightens up the checks on the new ioctl flags.
> 
> - Patch 1 ensures at least one edge flag is set for the new ioctl.
> - Patches 2-7 are Jacob's recent checks, picking up the tags.
> - Patch 8 introduces a "strict" flag for passing to the drivers when the
>   new ioctl is used.
> - Patches 9-12 implement the "strict" checking in the drivers.
> - Patch 13 extends the test program to exercise combinations of flags.

Series applied, thanks Richard.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
