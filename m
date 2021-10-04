Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A68421AC7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Oct 2021 01:39:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD8E940544;
	Mon,  4 Oct 2021 23:39:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x90BuLuR9tCd; Mon,  4 Oct 2021 23:39:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6FD240537;
	Mon,  4 Oct 2021 23:39:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BD2A41BF34D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Oct 2021 23:39:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AAC03405FC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Oct 2021 23:39:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DYSfd5WwqH3m for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Oct 2021 23:39:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from chris.i8u.org (mail.i8u.org [75.148.87.25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D560840493
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Oct 2021 23:39:14 +0000 (UTC)
Received: by chris.i8u.org (Postfix, from userid 1000)
 id 39B5216C959B; Mon,  4 Oct 2021 16:39:14 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by chris.i8u.org (Postfix) with ESMTP id 36B6816C92CD;
 Mon,  4 Oct 2021 16:39:14 -0700 (PDT)
Date: Mon, 4 Oct 2021 16:39:14 -0700 (PDT)
From: Hisashi T Fujinaka <htodd@twofifty.com>
To: Jakub Kicinski <kubakici@wp.pl>
In-Reply-To: <20211004074814.5900791a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Message-ID: <7064659e-fe97-f222-5176-844569fb5281@twofifty.com>
References: <1823864.tdWV9SEqCh@kailua>
 <20211004074814.5900791a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] Intel I350 regression 5.10 -> 5.14 ("The NVM
 Checksum Is Not Valid") [8086:1521]
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 4 Oct 2021, Jakub Kicinski wrote:

> On Mon, 04 Oct 2021 15:06:31 +0200 Andreas K. Huettel wrote:
>> Dear all,
>>
>> I hope this is the right place to ask, if not please advise me where to go.
>
> Adding intel-wired-lan@lists.osuosl.org and Sasha as well.
>
>> I have a new Dell machine with both an Intel on-board ethernet controller
>> ([8086:15f9]) and an additional 2-port extension card ([8086:1521]).
>>
>> The second adaptor, a "DeLock PCIe 2xGBit", worked fine as far as I could
>> see with Linux 5.10.59, but fails to initialize with Linux 5.14.9.
>>
>> dilfridge ~ # lspci -nn
>> [...]
>> 01:00.0 Ethernet controller [0200]: Intel Corporation I350 Gigabit Network Connection [8086:1521] (rev ff)
>> 01:00.1 Ethernet controller [0200]: Intel Corporation I350 Gigabit Network Connection [8086:1521] (rev ff)
>> [...]
>>
>> dilfridge ~ # dmesg|grep igb
>> [    2.069286] igb: Intel(R) Gigabit Ethernet Network Driver
>> [    2.069288] igb: Copyright (c) 2007-2014 Intel Corporation.
>> [    2.069305] igb 0000:01:00.0: can't change power state from D3cold to D0 (config space inaccessible)
>> [    2.069624] igb 0000:01:00.0 0000:01:00.0 (uninitialized): PCIe link lost
>> [    2.386659] igb 0000:01:00.0: PHY reset is blocked due to SOL/IDER session.
>> [    4.115500] igb 0000:01:00.0: The NVM Checksum Is Not Valid
>> [    4.133807] igb: probe of 0000:01:00.0 failed with error -5
>> [    4.133820] igb 0000:01:00.1: can't change power state from D3cold to D0 (config space inaccessible)
>> [    4.134072] igb 0000:01:00.1 0000:01:00.1 (uninitialized): PCIe link lost
>> [    4.451602] igb 0000:01:00.1: PHY reset is blocked due to SOL/IDER session.
>> [    6.180123] igb 0000:01:00.1: The NVM Checksum Is Not Valid
>> [    6.188631] igb: probe of 0000:01:00.1 failed with error -5
>>
>> Any advice on how to proceed? Willing to test patches and provide additional debug info.

Sorry to reply from a non-Intel account. I would suggest first
contacting Dell, and then contacting DeLock. This sounds like an issue
with motherboard firmware and most of what I can help with would be with
the driver. I think the issues are probably before things get to the
driver.

Todd Fujinaka <todd.fujinaka@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
