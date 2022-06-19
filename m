Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 355E9550A61
	for <lists+intel-wired-lan@lfdr.de>; Sun, 19 Jun 2022 13:51:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F28C1415EB;
	Sun, 19 Jun 2022 11:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F28C1415EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655639474;
	bh=RcSrDO12ypMliBhiacNQ4zinj5prfs/Xnf8tLfGrgvU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oqbJMDQsHej97upbQVaoz1mOQhKgViGgfrRojx01GfoUL2QPMLYGvNOiU2Sa9qibQ
	 LwFxp2p7ZOhQFemIgz17lwr0Gvxnq2C1TEyeITuUdzZ0tzbwxTCNoSZGIN21v0Lz2T
	 7mWjuJEYVVrci31BNwFzBhKieaghm6qHplwVTTvhMkZKr3/RzJBdFYlMnKvW24Y2sV
	 akDPKIkjdHgrm0zYwTaTWfPFf5bJ82qa8OmgApQpUZiRNe1cxUe0VTeUDwuAna83j0
	 VE51ogS0IcPQeIs4DH8i5W46JWPg2LQOv8/l6/oo25pJX0Wr6clY+XTti4Hbupfk02
	 o0ZsVTjbXFT0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zsvz7XldUlpC; Sun, 19 Jun 2022 11:51:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32881415E1;
	Sun, 19 Jun 2022 11:51:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32881415E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 10BE01BF59B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jun 2022 11:51:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D5DCA825FE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jun 2022 11:51:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5DCA825FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0O-zjHmgg8j0 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 19 Jun 2022 11:51:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80F76825CA
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80F76825CA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jun 2022 11:51:03 +0000 (UTC)
Received: from [2a02:8108:963f:de38:eca4:7d19:f9a2:22c5]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1o2tSD-00005i-2a; Sun, 19 Jun 2022 13:50:57 +0200
Message-ID: <2596b2c6-71e4-543f-799f-b4b174c21f31@leemhuis.info>
Date: Sun, 19 Jun 2022 13:50:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>,
 intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
In-Reply-To: <CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com>
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1655639463;
 12be5b39; 
X-HE-SMSGID: 1o2tSD-00005i-2a
Subject: Re: [Intel-wired-lan] ice: Error setting promisc mode on VSI 6
 (rc=-17) @ 5.18.x
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
Cc: LKML <linux-kernel@vger.kernel.org>,
 "regressions@lists.linux.dev" <regressions@lists.linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[TLDR: I'm adding this regression report to the list of tracked
regressions; all text from me you find below is based on a few templates
paragraphs you might have encountered already already in similar form.]

Hi, this is your Linux kernel regression tracker.

On 09.06.22 08:58, Jaroslav Pulchart wrote:
> 
> I'm struggling with broken network connectivity at VMs using linux
> bridge at host after update of kernel from 5.17.x to 5.18.x @ Dell
> R750 server with E810-XXV NICs.
> 
> I noticed the kernel reports "Error setting promisc mode" in dmesg.
> 
> # dmesg  | grep 'Error setting promisc'
> [   24.863557] ice 0000:31:00.0: Error setting promisc mode on VSI 6 (rc=-17)
> [   24.878369] ice 0000:31:00.0: Error setting promisc mode on VSI 6 (rc=-17)
> [   25.045834] ice 0000:31:00.0: Error setting promisc mode on VSI 6 (rc=-17)
> [   25.129840] ice 0000:b1:00.0: Error setting promisc mode on VSI 6 (rc=-17)
> [   25.144440] ice 0000:b1:00.0: Error setting promisc mode on VSI 6 (rc=-17)
> 
> # lspci -s 0000:31:00.0
> 31:00.0 Ethernet controller: Intel Corporation Ethernet Controller
> E810-XXV for SFP (rev 02)
> # lspci -s 0000:b1:00.0
> b1:00.0 Ethernet controller: Intel Corporation Ethernet Controller
> E810-XXV for SFP (rev 02)
> 
> It is easy to reproduce by:
>   # ip link set em1 promisc on
>   # dmesg -T | tail -n 1
>   [Thu Jun  9 08:48:19 2022] ice 0000:31:00.0: Error setting promisc
> mode on VSI 6 (rc=-17)
> 
> Could it be an 'ice' driver bug introduced in the 5.18 kernel?

CCing the regression mailing list, as it should be in the loop for all
regressions, as explained here:
https://www.kernel.org/doc/html/latest/admin-guide/reporting-issues.html

Jaroslav, did you try to revert the change that was suggested to you in
https://lore.kernel.org/all/d993bbb6-e583-5d91-76c0-841cc5da86af@roeck-us.net/
Did it help?

Anyway: To be sure below issue doesn't fall through the cracks
unnoticed, I'm adding it to regzbot, my Linux kernel regression tracking
bot:

#regzbot ^introduced v5.17 to v5.18
#regzbot title net: ice: Error setting promisc mode on VSI 6 (rc=-17) @
5.18.x
#regzbot monitor
https://lore.kernel.org/all/CAK8fFZ68+xZ2Z0vDWnihF8PeJKEmEwCyyF-8W9PCZJTd8zfp-A@mail.gmail.com/
#regzbot monitor
https://lore.kernel.org/all/CAK8fFZ61mQ3AYpdWjWtyUXzrs-RVMW61mBLrjRDXBxB-F9GzbA@mail.gmail.com/
#regzbot ignore-activity

This isn't a regression? This issue or a fix for it are already
discussed somewhere else? It was fixed already? You want to clarify when
the regression started to happen? Or point out I got the title or
something else totally wrong? Then just reply -- ideally with also
telling regzbot about it, as explained here:
https://linux-regtracking.leemhuis.info/tracked-regression/

Reminder for developers: When fixing the issue, add 'Link:' tags
pointing to the report (the mail this one replied to), as the kernel's
documentation call for; above page explains why this is important for
tracked regressions.

Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)

P.S.: As the Linux kernel's regression tracker I deal with a lot of
reports and sometimes miss something important when writing mails like
this. If that's the case here, don't hesitate to tell me in a public
reply, it's in everyone's interest to set the public record straight.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
