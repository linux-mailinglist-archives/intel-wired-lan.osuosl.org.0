Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E652A79A879
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Sep 2023 16:03:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EDAE40890;
	Mon, 11 Sep 2023 14:03:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EDAE40890
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694441026;
	bh=Ld7JdpxvdhjKgiPuoTTcxNuI1LGTmsayxOdPLjo8nlw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=m/DSR8FkqGGVpd3Y2tv4gNAqHm7AxgKUWcckyTvGPaUBA2+ofQk79kjxafhAhaTEn
	 y188ht05n3uCVg7swdTCb2fIi7imXfQhWFxUpG0yAD4Y3DkBL/lJybghAoFDBMW/BI
	 HD+YGAvo6WVRi65UmR07hqsDb6/87rig/0JAwwaNN4JN/X8+pZ+tosf34J7GFQLwa3
	 3py2Isc3Z02bJZj4E8vaGXBH2+ZKFXtKk/O+FB9wzVK3dA0m+1BDIKpoG0VqPQGFuM
	 Rx+d9Q+LQDSQhIon6Ox+bfQTwJ3ZTuHz6mHEgCEmZf6F2eOP3ae7vhV0ivgXjZ/DR7
	 dkUBgg0LfFoOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DHhGTbF3PRmw; Mon, 11 Sep 2023 14:03:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8086D40886;
	Mon, 11 Sep 2023 14:03:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8086D40886
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EC4881BF30F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Sep 2023 14:03:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C4A1080B96
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Sep 2023 14:03:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4A1080B96
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EDKs4T6U2XWK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Sep 2023 14:03:37 +0000 (UTC)
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [80.237.130.52])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 62AD180C05
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Sep 2023 14:03:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62AD180C05
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1qfhVk-0001JK-HG; Mon, 11 Sep 2023 16:03:32 +0200
Message-ID: <96bcfe54-fcee-4c14-9772-b8191ee10c03@leemhuis.info>
Date: Mon, 11 Sep 2023 16:03:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, de-DE
From: Thorsten Leemhuis <regressions@leemhuis.info>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Tirthendu Sarkar <tirthendu.sarkar@intel.com>
References: <e79edb0f-de89-5041-186f-987d30e0187c@gmail.com>
 <e9644f38-57be-5d26-0c08-08a74eee7cb1@leemhuis.info>
In-Reply-To: <e9644f38-57be-5d26-0c08-08a74eee7cb1@leemhuis.info>
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1694441017;
 1b9d727a; 
X-HE-SMSGID: 1qfhVk-0001JK-HG
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
Reply-To: Linux regressions mailing list <regressions@lists.linux.dev>
Cc: Linux Networking <netdev@vger.kernel.org>,
 Linux Intel Ethernet Drivers <intel-wired-lan@lists.osuosl.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bagas Sanjaya <bagasdotme@gmail.com>,
 Linux Regressions <regressions@lists.linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 30.08.23 12:07, Linux regression tracking (Thorsten Leemhuis) wrote:
> [replying with a heavily adjust set of recipients]
> 
> On 18.07.23 02:51, Bagas Sanjaya wrote:
>>
>> I notice a regression report on Bugzilla [1]. Quoting from it:
> 
> Tirthendu Sarkar, turned out this regressions reported in
> https://bugzilla.kernel.org/show_bug.cgi?id=217678 is caused by your
> change e9031f2da1a ("i40e: introduce next_to_process to i40e_ring")
> [v6.4-rc1] that Tony applied in March.
> 
> Could you (or someone else) please take a look? The bugzilla ticket has
> details and a comment from a second person that seems to be affected by
> the same problem. And 6.5 seems to still show the problem.

Hey i40e developers, did you see that message reg this regression in
your driver I sent one and a half week ago? It would be good to get at
least some progress here, as this report is around for quite some time
already, as it was misdirected first. :-/ Two people are apparently
affected by this, one re-confirmed today that this is still happening.

Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
--
Everything you wanna know about Linux kernel regression tracking:
https://linux-regtracking.leemhuis.info/about/#tldr
If I did something stupid, please tell me, as explained on that page.

#regzbot poke

>>> Hi,
>>>
>>> After I updated to 6.4 through Archlinux kernel update, suddenly I noticed random packet losses on my routers like nodes. I have these networking relevant config on my nodes
>>>
>>> 1. Using archlinux
>>> 2. Network config through systemd-networkd
>>> 3. Using bird2 for BGP routing, but not relevant to this bug.
>>> 4. Using nftables for traffic control, but seems not relevant to this bug. 
>>> 5. Not using fail2ban like dymanic filtering tools, at least at L3/L4 level
>>>
>>> After I ruled out systemd-networkd, nftables related issues. I tracked down issues to kernel.
>>>
>>> Here's the tcpdump I'm seeing on one side of my node ""
>>>
>>> ```
>>> sudo tcpdump -i fios_wan port 38851
>>> tcpdump: verbose output suppressed, use -v[v]... for full protocol decode
>>> listening on fios_wan, link-type EN10MB (Ethernet), snapshot length 262144 bytes
>>> 10:33:06.073236 IP [BOS1_NODE].38851 > [REDACTED_PUBLIC_IPv4_1].38851: UDP, length 148
>>> 10:33:11.406607 IP [BOS1_NODE].38851 > [REDACTED_PUBLIC_IPv4_1].38851: UDP, length 148
>>> 10:33:16.739969 IP [BOS1_NODE].38851 > [REDACTED_PUBLIC_IPv4_1].38851: UDP, length 148
>>> 10:33:21.859856 IP [BOS1_NODE].38851 > [REDACTED_PUBLIC_IPv4_1].38851: UDP, length 148
>>> 10:33:27.193176 IP [BOS1_NODE].38851 > [REDACTED_PUBLIC_IPv4_1].38851: UDP, length 148
>>> 5 packets captured
>>> 5 packets received by filter
>>> 0 packets dropped by kernel
>>> ```
>>>
>>> But on the other side "[REDACTED_PUBLIC_IPv4_1]", tcpdump is replying packets in this wireguard stream. So packet is lost somewhere in the link.
>>>
>>> From the otherside, I can do "mtr" to "[BOS1_NODE]"'s public IP and found the moment the link got lost is right at "[BOS1_NODE]", that means "[BOS1_NODE]"'s networking stack completely drop the inbound packets from specific ip addresses.
>>>
>>> Some more digging
>>>
>>> 1. This situation began after booting in different delays. Sometimes can trigger after 30 seconds after booting, and sometimes will be after 18 hours or more.
>>> 2. It can envolve into worse case that when I do "ip neigh show", the ipv4 ARP table and ipv6 neighbor discovery start to appear as "invalid", meaning the internet is completely loss.
>>> 3. When this happened to wan facing interface, it seems OK with lan facing interfaces. WAN interface was using Intel X710-T4L using i40e and lan side was using virtio
>>> 4. I tried to bisect in between 6.3 and 6.4, and the first bad commit it reports was "a3efabee5878b8d7b1863debb78cb7129d07a346". But this is not relevant to networking at all, maybe it's the wrong commit to look at. At the meantime, because I haven't found a reproducible way of 100% trigger the issue, it may be the case during bisect some "good" commits are actually bad. 
>>> 5. I also tried to look at "dmesg", nothing interesting pop up. But I'll make it available upon request.
>>>
>>> This is my first bug reports. Sorry for any confusion it may lead to and thanks for reading.
>>
>> See Bugzilla for the full thread.
>>
>> Thorsten: The reporter had a bad bisect (some bad commits were marked as good
>> instead), hence SoB chain for culprit (unrelated) ipvu commit is in To:
>> list. I also asked the reporter (also in To:) to provide dmesg and request
>> rerunning bisection, but he doesn't currently have a reliable reproducer.
>> Is it the best I can do?
>>
>> Anyway, I'm adding this regression to be tracked in regzbot:
>>
>> #regzbot introduced: a3efabee5878b8 https://bugzilla.kernel.org/show_bug.cgi?id=217678
>> #regzbot title: packet drop on Intel X710-T4L due to ipvu boot fix
>>
>> Thanks.
>>
>> [1]: https://bugzilla.kernel.org/show_bug.cgi?id=217678
>>
> 
> #regzbot introduced: e9031f2da1a
> #regzbot poke
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
