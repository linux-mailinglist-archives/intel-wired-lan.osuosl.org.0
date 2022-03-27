Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E3D4E98C5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Mar 2022 15:54:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 54B5140354;
	Mon, 28 Mar 2022 13:54:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kw9oeyFhW87l; Mon, 28 Mar 2022 13:54:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D77F24018F;
	Mon, 28 Mar 2022 13:54:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E4B41BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Mar 2022 17:25:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 42F94408C3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Mar 2022 17:25:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4eG6JG5jjaNw for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Mar 2022 17:25:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 31BC7407D7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Mar 2022 17:25:00 +0000 (UTC)
Received: from ip4d144895.dynamic.kabel-deutschland.de ([77.20.72.149]
 helo=[192.168.66.200]); authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1nYWdL-0005jp-8U; Sun, 27 Mar 2022 19:24:55 +0200
Message-ID: <4ab2299e-0460-0366-f1e7-851a3ec94dc7@leemhuis.info>
Date: Sun, 27 Mar 2022 19:24:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220327171407.3657540-1-sasha.neftin@intel.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
In-Reply-To: <20220327171407.3657540-1-sasha.neftin@intel.com>
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1648401900;
 0e463054; 
X-HE-SMSGID: 1nYWdL-0005jp-8U
X-Mailman-Approved-At: Mon, 28 Mar 2022 13:53:50 +0000
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Fix possible overflow
 in LTR decoding
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>,
 James Hutchinson <jahutchinson99@googlemail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 27.03.22 19:14, Sasha Neftin wrote:
> When we decode the latency and the max_latency u16 value does not fill
> the required size and could lead to the wrong LTR representation.
> Replace the u16 type with the u32 type and allow corrected LTR
> representation.
> 
> Fixes: 44a13a5d99c7 ("e1000e: Fix the max snoop/no-snoop latency for 10M")
> Reported-by: James Hutchinson <jahutchinson99@googlemail.com>
> Reported-by: Thorsten Leemhuis <regressions@leemhuis.info>

Please drop me here (I merely forwarded the report) and instead please
add a 'Link:' tag pointing to the original report for anyone wanting to
look into the backstory in the future, as explained in
'Documentation/process/submitting-patches.rst' and
'Documentation/process/5.Posting.rst'? E.g. like this:

"Link: https://bugzilla.kernel.org/show_bug.cgi?id=215689"

And if the patch is already good to go: could the maintainer please add
it when applying the patch?

In anyone wonders why I care: there are internal and publicly used tools
and scripts out there that reply on proper "Link" tags. I don't known
how many, but there is at least one public tool I'm running that cares:
regzbot, my regression tracking bot, which I use to track Linux kernel
regressions and generate the regression reports sent to Linus. Proper
"Link:" tags allow the bot to automatically connect regression reports
with fixes being posted or applied to resolve the particular regression
-- which makes regression tracking a whole lot easier and feasible for
the Linux kernel. That's why it's a great help for me if people set
proper "Link" tags.

While at it, let me tell regzbot about this thread:
#regzbot ^backmonitor:
https://lore.kernel.org/regressions/6801d0ef-9620-0f61-c107-c2c5524952ef@leemhuis.info/

Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)

P.S.: As the Linux kernel's regression tracker I'm getting a lot of
reports on my table. I can only look briefly into most of them and lack
knowledge about most of the areas they concern. I thus unfortunately
will sometimes get things wrong or miss something important. I hope
that's not the case here; if you think it is, don't hesitate to tell me
in a public reply, it's in everyone's interest to set the public record
straight.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
