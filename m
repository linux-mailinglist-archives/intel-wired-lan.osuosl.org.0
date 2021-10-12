Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F9642AAFA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 19:42:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7457540747;
	Tue, 12 Oct 2021 17:42:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lQI5f3j_oV1l; Tue, 12 Oct 2021 17:42:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 632DF40742;
	Tue, 12 Oct 2021 17:42:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C82A51BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 17:42:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B4C31403AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 17:42:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TCEMO6OuvKZv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 17:42:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A16340196
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 17:42:33 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aef4c.dynamic.kabel-deutschland.de
 [95.90.239.76])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C1DE061E5FE33;
 Tue, 12 Oct 2021 19:42:30 +0200 (CEST)
To: "Andreas K. Huettel" <andreas.huettel@ur.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <1823864.tdWV9SEqCh@kailua> <2944777.ktpJ11cQ8Q@pinacolada>
 <c75203e9-0ef4-20bd-87a5-ad0846863886@intel.com> <2801801.e9J7NaK4W3@kailua>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <6faf4b92-78d5-47a4-63df-cc2bab7769d0@molgen.mpg.de>
Date: Tue, 12 Oct 2021 19:42:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <2801801.e9J7NaK4W3@kailua>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [EXT] Re: Intel I350 regression 5.10 -> 5.14
 ("The NVM Checksum Is Not Valid") [8086:1521]
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Jakub Kicinski <kubakici@wp.pl>,
 netdev@vger.kernel.org, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[Cc: +ACPI maintainers]

Am 12.10.21 um 18:34 schrieb Andreas K. Huettel:
>>> The messages easily identifiable are:
>>>
>>> huettel@pinacolada ~/tmp $ cat kernel-messages-5.10.59.txt |grep igb
>>> Oct  5 15:11:18 dilfridge kernel: [    2.090675] igb: Intel(R) Gigabit Ethernet Network Driver
>>> Oct  5 15:11:18 dilfridge kernel: [    2.090676] igb: Copyright (c) 2007-2014 Intel Corporation.
>>> Oct  5 15:11:18 dilfridge kernel: [    2.090728] igb 0000:01:00.0: enabling device (0000 -> 0002)
>>
>> This line is missing below, it indicates that the kernel couldn't or
>> didn't power up the PCIe for some reason. We're looking for something
>> like ACPI or PCI patches (possibly PCI-Power management) to be the
>> culprit here.
> 
> So I did a git bisect from linux-v5.10 (good) to linux-v5.14.11 (bad).
> 
> The result was:
> 
> dilfridge /usr/src/linux-git # git bisect bad
> 6381195ad7d06ef979528c7452f3ff93659f86b1 is the first bad commit
> commit 6381195ad7d06ef979528c7452f3ff93659f86b1
> Author: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> Date:   Mon May 24 17:26:16 2021 +0200
> 
>      ACPI: power: Rework turning off unused power resources
> [...]
> 
> I tried naive reverting of this commit on top of 5.14.11. That applies nearly cleanly,
> and after a reboot the additional ethernet interfaces show up with their MAC in the
> boot messages.
> 
> (Not knowing how safe that experiment was, I did not go further than single mode and
> immediately rebooted into 5.10 afterwards.)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
