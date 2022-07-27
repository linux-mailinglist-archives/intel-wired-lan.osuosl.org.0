Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5292A5828CA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 16:37:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51B0660DF9;
	Wed, 27 Jul 2022 14:37:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 51B0660DF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658932648;
	bh=e7Ym/+e/HEvI+tLlB0BjZ7UgYjWEePHhKSsCz6ypRAA=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LPW/qmu/azjuI4jfKgOUAgkWMH49vlXIhSJmUPpLs3KgkBDR1uSxL6PbC+FOWJ/vK
	 0Ei5MHLLXBM1DjS0fD0ZDo11sPOFmSS6evaki51Sz2m5Aks6ukl077/H81Rrv2BSzP
	 mbl0wHZW90O9FXzyNpixuIofsOBYPbZeagfCCeVEGqVZFr8viJdKbP52nd0Qne76jC
	 ZTIjSJyf5SLy/0Hm6O72A/PogNV+z6zvGzQsg+oHDzu68J2aS4XIRMGryXN8YvdVyR
	 ZEmfbnzTSp+IPzNo4Jnwci8m2wSdzC2VgStLre6Ac23MCDG82tFnyWkGc+Em8F+f4A
	 BBNSG41hRCKgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 66Ye1foDIoeA; Wed, 27 Jul 2022 14:37:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33EEB60C09;
	Wed, 27 Jul 2022 14:37:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33EEB60C09
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 82E691BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 14:37:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D485405AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 14:37:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D485405AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FernW1pVpFGG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 14:37:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 810CC4013E
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 810CC4013E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 14:37:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="314028368"
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="314028368"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 07:37:13 -0700
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="550869997"
Received: from yuchrist-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.213.177.183])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 07:37:12 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: James Hogan <jhogan@kernel.org>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>
In-Reply-To: <5843458.lOV4Wx5bFT@saruman>
References: <4752347.31r3eYUQgx@saruman> <875yjv5x3r.fsf@intel.com>
 <4773114.31r3eYUQgx@saruman> <5843458.lOV4Wx5bFT@saruman>
Date: Wed, 27 Jul 2022 11:37:09 -0300
Message-ID: <874jz2ei5m.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658932634; x=1690468634;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=0q4CTFkWRXuxyNlzTYbLlBJGX5yZSG1d84bQyICIqTQ=;
 b=TT9RbOEIj5LCZZLMq3IMbEfUpl7JWgXrpKEeOxS2PMs2gFwCnF1yKpJM
 RwbRPSSYK5Si8hrzAL7hVHewT+XRwMk07EiQQiK9bLngD3Ba9/Ok6KYEv
 uHIXDcKoph4u4xXjjAUdYeY/qfVRZoJAtqgyzd2nb0mOcl9+27OlveIqV
 8JD70+5xRtCo7BpEDzgz1B9vIK7ZHS32euAs2XpT6jI/EU0M9oZpntbNl
 2m7Y/S6FmcRjxzSvvR+C1CYPwdDCB+KD0g96oTKhTBXtWT4w9WpQVmUGV
 riQsNahw0UkvuxPMz8pQpfjrsZe+LaIZSzTcNiubUXaicw6JB4lZcVuhm
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TT9RbOEI
Subject: Re: [Intel-wired-lan] I225-V (igc driver) hangs after resume in
 igc_resume/igc_tsn_reset
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi James,

James Hogan <jhogan@kernel.org> writes:

> On Sunday, 17 July 2022 22:40:59 BST James Hogan wrote:
>> On Sunday, 17 July 2022 20:59:36 BST you wrote:
>> > Hi James,
>> > 
>> > James Hogan <jhogan@kernel.org> writes:
>> > > Hi,
>> > > 
>> > > I'm getting regular hangs after resume from suspend with the igc driver,
>> > > for an I225-V (rev 3) on an MSI Pro Z690-A, with version 5.18.11 on
>> > > archlinux. A few stable versions ago it was possible to get the network
>> > > back up by removing and reloading the igc driver, however now I get the
>> > > following, and only a reboot works (which itself hangs before actually
>> > > restarting the machine, and requires a hard reset).
>> > 
>> > Sorry for the delay. I was travelling.
>> 
>> No worries
>> 
>> > I remember seeing some weird behaviors with PCIe PTM and suspend/resume.
>> > Specially with onboard controllers.
>> 
>> It appears that the hardware got itself into a funny state such that
>> NetworkManager hung as described more often than not on resume, however
>> without changing kernel it has now settled back into the previous behaviour
>> of usually working, but occasionally (maybe 1 in 5) the network wouldn't
>> come back up on resume, with network related things hung until I unload and
>> reload the igc module.
>> 
>> > Can you see if disabling CONFIG_PCIE_PTM in your kernel config changes
>> > anything? (assuming it's enabled)
>> 
>> It is enabled yes. Okay I'll give it a go when I get the chance. I'll likely
>> have to do a bunch of boot and suspend cycles to try and get it back into
>> either failure condition.
>
> (sorry somehow dropped others off cc the other day, now adding back)...
>
> I've been running most of this week with 5.18.12-arch1-1, rebuilt with
> CONFIG_PCIE_PTM=n, however I have now observed both cases.
>
> It failed to bring up the network link a couple of times after resume from
> suspend, and i managed to remove the igc module and reload it to get it going
> again.
>
> Another time it failed to come back up, but reloading module didn't help.
>
> I also hit the igc_tsn_reset hang, but this time it was immediately after boot
> (possibly a warm reset), where it failed to bring up the network at all. I'll
> paste the full backtraces of hung tasks below.
>
> I'm wondering whether, since most of the tasks are stuck trying to acquire a
> mutex, the issue is elsewhere. In some past cases though all the tasks that
> are dumped are at a mutex_lock...

Yeah, I agree that it seems like the issue is something else. I would
suggest start with the "simple" things, enabling 'CONFIG_PROVE_LOCKING'
and looking at the first splat, it could be that what you are seeing is
caused by a deadlock somewhere else.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
