Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F8B5438B4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jun 2022 18:19:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C309B60D4F;
	Wed,  8 Jun 2022 16:18:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dkZZ-vT8LFEp; Wed,  8 Jun 2022 16:18:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1E6660D68;
	Wed,  8 Jun 2022 16:18:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A49AC1BF45A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 12:44:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9178A41922
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 12:44:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zRAypHBl7Vkc for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 12:44:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 42B22417B5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 12:44:53 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0B51161902;
 Wed,  8 Jun 2022 12:44:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEA34C34116;
 Wed,  8 Jun 2022 12:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1654692291;
 bh=LVReFo01uACTlKrhwXKsuUfBq5L0CISVHHKRJOYLXHw=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=cC/4JnE8PN/l2yj6uJwN7ybIsEkH2DwWfR6ZjesxpCLKK3ksJcqgm9fBY6Vf0lG7g
 VSIKpW4RRux41sf3nE4ZOJFDhmFGSmdi2gvSZ7Erbo0Fu9N+rDdJDOXt0r3ZskYd72
 SbREicE13lI0Qd2NoYSN9vQaimGvr2vGUurCD31I7zd2BupTgqj4K/UO1hykYDGJEY
 LrFJDEj2c/EtRuO9D+PPnV+2ZpRug8uEM7hroZrIEytGq8zocinnSg4tL4O97+gwZ6
 GT36MY93c4Vi+1nMMAnsPdDW4glidwVd5N5A8ajg946W4w9/1GQ0+bnBL1iNtFlSvm
 57dJfOG7Z+F6g==
Message-ID: <5522f28fa2aef2890c1d5533899b0a7954bddc6a.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: "Switzer, David" <david.switzer@intel.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>
Date: Wed, 08 Jun 2022 08:44:49 -0400
In-Reply-To: <SN6PR11MB351830AC7CCF4B4D2C49F165EBA59@SN6PR11MB3518.namprd11.prod.outlook.com>
References: <8225a14538339c7b38d9da1974ebefaf4db1bc51.camel@kernel.org>
 <SN6PR11MB351830AC7CCF4B4D2C49F165EBA59@SN6PR11MB3518.namprd11.prod.outlook.com>
User-Agent: Evolution 3.44.2 (3.44.2-1.fc36) 
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 08 Jun 2022 16:18:54 +0000
Subject: Re: [Intel-wired-lan] intermittent ixgbe transmit queue timeouts in
 v5.18 kernels
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
Cc: Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
 Venky Shankar <vshankar@redhat.com>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2022-06-07 at 21:22 +0000, Switzer, David wrote:
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of
> > Jeff Layton
> > Sent: Thursday, June 2, 2022 2:38 PM
> > To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> > <jesse.brandeburg@intel.com>
> > Cc: Ilya Dryomov <idryomov@gmail.com>; Xiubo Li <xiubli@redhat.com>;
> > Venky Shankar <vshankar@redhat.com>
> > Subject: [Intel-wired-lan] intermittent ixgbe transmit queue
> > timeouts in v5.18
> > kernels
> > =

> > The Ceph project test lab has a fairly large cluster of machines
> > with ixgbe
> > adapters:
> > =

> > =A0=A0=A003:00.0 Ethernet controller: Intel Corporation 82599ES 10-Giga=
bit
> > SFI/SFP+
> > Network Connection (rev 01)
> > =

> We are attempting to reproduce your issue, and the output from lspci -
> s 03:00.0
> -vv would help us make sure we're looking at the exact adapter that
> the issue is
> Being seen on.
> =

> > Recently, we've started getting intermittent tx queue timeouts with
> > these
> > machines. One of them is reported here:
> > =

> > =A0=A0=A0https://tracker.ceph.com/issues/55823
> > =

> > Usually this happens when we're trying to do a sync, and there is a
> > flurry of
> > transmission activity. Afterward we see a lot of fallout in ceph
> > culminating in
> > softlockups.
> > =

> > The kernels we're testing have some patches that are not yet in
> > mainline, but
> > mostly they are confined to net/ceph and fs/ceph, and shouldn't
> > really affect
> > hw drivers.
> > =

> > The problem manifested pretty regularly during v5.18 and then I
> > didn't see it
> > for a while. I had figured it was something that had been fixed, but
> > I think it
> > was just "luck".
> > =

> > I attempted a bisect a while back, and ruled out recent ceph changes
> > as the
> > issue. Unfortunately, I wasn't able to get to a conclusive patch
> > that broke it,
> > but I think it likely crept in during the initial merge window for
> > v5.18 (pre-rc1).
> > =

> > One other oddity: the test lab often installs bleeding-edge kernels
> > on old
> > distros (RHEL8 and Ubuntu from similar era). Is it possible that the
> > firmware
> > that ships with these older distros is not suitable for the more
> > recent driver in
> > v5.18 ?
> > =

> Thank you for this information, we'll look into it if we're having
> trouble
> reproducing the issue!
> =

> =

> > Any thoughts or suggestions on things we can do to fix this?
> > =

> Nothing yet, but we'll be sure to let you know when we find it.
> =


Thanks for getting back to us.

Since I emailed you, I've found a bug in ceph that could make the cephfs
client spin in an (essentially) infinite loop if there were delays
getting MDS replies in some situations. We've fixed that and I haven't
seen any tx queue timeouts since, though I've only had the fix in place
for a day or so.

For now, I think we can just consider this to be fallout from the ceph
bug. If the problems return though, I'll let you know!

Thanks again!
-- =

Jeff Layton <jlayton@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
