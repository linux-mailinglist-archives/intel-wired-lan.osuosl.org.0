Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD141101901
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2019 07:12:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 95FCC864EA;
	Tue, 19 Nov 2019 06:12:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1RvcxPL7g2Qf; Tue, 19 Nov 2019 06:12:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BAC4886505;
	Tue, 19 Nov 2019 06:12:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD6591BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 06:12:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD89885EA7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 06:12:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FJfmLYGnDjQs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2019 06:12:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C91B185EA5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2019 06:12:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 22:12:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="204297209"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by fmsmga008.fm.intel.com with ESMTP; 18 Nov 2019 22:12:19 -0800
To: jeffrey.t.kirsher@intel.com, Jan Janssen <medhefgo@web.de>,
 intel-wired-lan@lists.osuosl.org
References: <3945198.J3aOToa6sv@minako>
 <92b94935dea3b8c7e7236d6f4e1ac148e6cd2ffd.camel@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <96bdb43e-2a7b-028c-c9ed-98e4477f6b7d@intel.com>
Date: Tue, 19 Nov 2019 08:12:18 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <92b94935dea3b8c7e7236d6f4e1ac148e6cd2ffd.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Regression: e1000e link not coming up
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
Cc: "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/18/2019 20:29, Jeff Kirsher wrote:
> On Sat, 2019-11-16 at 12:50 +0100, Jan Janssen wrote:
>> Hi,
>>
>> since 5.3 my I219-V network interface sometimes doesn't come up when
>> booting
>> or resuming from suspend. This either forces me to use "ip link
>> down/up" or
>> reloading the module to get working internet.
>>
>> I reported this issue previously to netdev@vger.kernel.org where I
>> initially
>> bisected to a wrong commit. After finding the right one nobody
>> reacted to it,
>> so now I am trying this again here.
> 
> I apologize, this is the correct mailing list for issues with the Intel
> wired LAN.
> 
> 
>> There is also a bugzilla entry for this, but it seems to be ignored
>> by
>> maintainers too: https://bugzilla.kernel.org/show_bug.cgi?id=205067
>> For me, this happens with systemd-networkd, but the people in the
>> bugzilla
>> report are observing this with NetworkManager.
>>
>> The commit introducing the bug is
>> 59653e6497d16f7ac1d9db088f3959f57ee8c3db
>> (e1000e: Make watchdog use delayed work) and reverting it did make
>> this bug go
>> away. Though, it cannot be reverted automatically on the latest git
>> tree from
>> Torvalds anymore.
> 
> I will work with the e1000e driver lead (Sasha Neftin) to work up a
> patch that will apply to David Miller's net tree.  I will make sure you
> are CC'd on the patch, so you will know when it makes it into the
> upstream kernel.
> 
I heard a lot of peoples complain about a problem with using 
delayed_work struct in e1000e. I would suggest reverting this patch.
>> I've also tried the master branch on jkirsher/net-queue.git  and
>> jkirsher/next-queue.git, but the bug is still present there too.
>>
>> This bug is really annoying and inconvenient, so I would really
>> appreciate if
>> somebody could fix this bug or at least have the offending commit
>> reverted.
>>
>> Regards,
>> Jan
>>
>>
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
