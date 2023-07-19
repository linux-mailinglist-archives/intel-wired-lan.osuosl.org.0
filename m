Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1407A759619
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jul 2023 15:01:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A66E641933;
	Wed, 19 Jul 2023 13:01:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A66E641933
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689771674;
	bh=mQY3uc6dwLS7MZ+zNxPGtqV1Gg1U7yj0kiTuAffgkSI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eObljB1JelVCM0QaT60DOAYEsO20xINmPr2jgvWHqLur+PwkXCz1fmHqbq3P9EQlt
	 62lx3ZIXK+0feRnMv2OQ+pg0g7htWIBx9TB0nLnY8HWGv0P2zfdDi086EqA+RDc/6c
	 POR7SDo8yMm20cS3H3le1mbBOLNo5MmS7c6NRx6skpULUR1xCuzFQni5jUQHL5PKgs
	 XkJJjHoxy0qA8dQymjYqs0orE8rEM7xagRq+DzLaLNDrQOn6ALv+yBtN2+sFAV/af9
	 jnHNBWSLQdAM0zkejSTofhRihgZlruk2JfQfC1SLiiz6UVpvaqCoKpXezolUgxRFq5
	 OHkY/GXUkVcYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ng4yCOzBkget; Wed, 19 Jul 2023 13:01:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B78141951;
	Wed, 19 Jul 2023 13:01:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B78141951
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 571E01BF39D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 13:01:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2D5DF4156F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 13:01:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D5DF4156F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qCnJF4nHwl-D for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jul 2023 13:01:06 +0000 (UTC)
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [80.237.130.52])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2E745403E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 13:01:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E745403E7
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1qM6nT-00079S-1s; Wed, 19 Jul 2023 15:00:51 +0200
Message-ID: <6bcdeee4-5348-c08e-701e-47bc138be74f@leemhuis.info>
Date: Wed, 19 Jul 2023 15:00:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US, de-DE
To: Bagas Sanjaya <bagasdotme@gmail.com>,
 Andrzej Kacprowski <andrzej.kacprowski@linux.intel.com>,
 Krystian Pradzynski <krystian.pradzynski@linux.intel.com>,
 Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>,
 Jacek Lawrynowicz <jacek.lawrynowicz@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 hq.dev+kernel@msdfc.xyz
References: <e79edb0f-de89-5041-186f-987d30e0187c@gmail.com>
 <444d8158-cc58-761d-a878-91e5d4d28b71@leemhuis.info>
 <4759e7d4-5a8c-8acb-1775-e049b9b06cc1@gmail.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
In-Reply-To: <4759e7d4-5a8c-8acb-1775-e049b9b06cc1@gmail.com>
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1689771666;
 0b73b93b; 
X-HE-SMSGID: 1qM6nT-00079S-1s
Subject: Re: [Intel-wired-lan] Fwd: Unexplainable packet drop starting at
 v6.4
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
Cc: Linux Networking <netdev@vger.kernel.org>,
 Linux Intel Ethernet Drivers <intel-wired-lan@lists.osuosl.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux DRI Development <dri-devel@lists.freedesktop.org>,
 Linux Regressions <regressions@lists.linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 19.07.23 14:30, Bagas Sanjaya wrote:
> On 7/19/23 18:49, Thorsten Leemhuis wrote:
>> On 18.07.23 02:51, Bagas Sanjaya wrote:
>>> I notice a regression report on Bugzilla [1]. Quoting from it:
>>>
>>>> After I updated to 6.4 through Archlinux kernel update, suddenly I noticed random packet losses on my routers like nodes. I have these networking relevant config on my nodes
>>>>
>>>> 1. Using archlinux
>>>> 2. Network config through systemd-networkd
>>>> 3. Using bird2 for BGP routing, but not relevant to this bug.
>>>> 4. Using nftables for traffic control, but seems not relevant to this bug. 
>>>> 5. Not using fail2ban like dymanic filtering tools, at least at L3/L4 level
>>>>
>>>> After I ruled out systemd-networkd, nftables related issues. I tracked down issues to kernel.
>>> [...]
>>> See Bugzilla for the full thread.
>>>
>>> Thorsten: The reporter had a bad bisect (some bad commits were marked as good
>>> instead), hence SoB chain for culprit (unrelated) ipvu commit is in To:
>>> list. I also asked the reporter (also in To:) to provide dmesg and request
>>> rerunning bisection, but he doesn't currently have a reliable reproducer.
>>> Is it the best I can do?
>>
>> When a bisection apparently went sideways it's best to not bother the
>> culprit's developers with it, they most likely will just be annoyed by
>> it (and then they might become annoyed by regression tracking, which we
>> need to avoid).
>
> I mean don't Cc: the culprit author in that case?

Yes. If a bisection lands on a commit that seems like a pretty unlikely
culprit for the problem at hand (which even the reporter admitted in the
report), then ask the reporter to verify the result (e.g. ideally by
trying to revert it ontop of latest mainline; checking the parent commit
again sometimes can do the trick as well)  before involving the people
that authored and handled said change. Otherwise you just raise a false
alarm and then people will be annoyed by our work or if we are unlucky
start to ignore us -- and we need to prevent that.

Ciao, Thorsten
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
