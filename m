Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB7145D24C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Nov 2021 02:07:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32B4D8248F;
	Thu, 25 Nov 2021 01:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NS2576jD2lih; Thu, 25 Nov 2021 01:07:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 332FF82437;
	Thu, 25 Nov 2021 01:07:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 956071BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 01:07:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8F43B4049B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 01:07:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id elec6NsOBU7P for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Nov 2021 01:07:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 93B5B40487
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 01:07:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="235354905"
X-IronPort-AV: E=Sophos;i="5.87,261,1631602800"; d="scan'208";a="235354905"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 17:07:16 -0800
X-IronPort-AV: E=Sophos;i="5.87,261,1631602800"; d="scan'208";a="510088158"
Received: from askirtik-mobl1.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.212.223.232])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 17:07:16 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, Stefan Dietrich <roots@gmx.de>
In-Reply-To: <20211124153449.72c9cfcd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <924175a188159f4e03bd69908a91e606b574139b.camel@gmx.de>
 <YZ3q4OKhU2EPPttE@kroah.com>
 <8119066974f099aa11f08a4dad3653ac0ba32cd6.camel@gmx.de>
 <20211124153449.72c9cfcd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Date: Wed, 24 Nov 2021 17:07:16 -0800
Message-ID: <87a6htm4aj.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [REGRESSION] Kernel 5.15 reboots / freezes
 upon ifup/ifdown
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
Cc: regressions@lists.linux.dev, Greg KH <greg@kroah.com>,
 stable@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Stefan,

Jakub Kicinski <kuba@kernel.org> writes:

> On Wed, 24 Nov 2021 18:20:40 +0100 Stefan Dietrich wrote:
>> Hi all,
>> 
>> six exciting hours and a lot of learning later, here it is.
>> Symptomatically, the critical commit appears for me between 5.14.21-
>> 051421-generic and 5.15.0-051500rc2-generic - I did not find an amd64
>> build for rc1.
>> 
>> Please see the git-bisect output below and let me know how I may
>> further assist in debugging!
>
> Well, let's CC those involved, shall we? :)
>
> Thanks for working thru the bisection!
>
>> a90ec84837325df4b9a6798c2cc0df202b5680bd is the first bad commit
>> commit a90ec84837325df4b9a6798c2cc0df202b5680bd
>> Author: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> Date:   Mon Jul 26 20:36:57 2021 -0700
>> 
>>     igc: Add support for PTP getcrosststamp()

Oh! That's interesting.

Can you try disabling CONFIG_PCIE_PTM in your kernel config? If it
works, then it's a point in favor that this commit is indeed the
problematic one.

I am still trying to think of what could be causing the lockup you are
seeing.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
