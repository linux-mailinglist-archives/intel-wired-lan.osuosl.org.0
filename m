Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF3A8587FE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 22:27:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 712C342164;
	Fri, 16 Feb 2024 21:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mcpULq8wkPPu; Fri, 16 Feb 2024 21:27:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75BD9420B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708118837;
	bh=dG0YlRI4U6uYW4mlGnXVOL+C+TfUPlPagPba4PNsE28=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T4ZAAizuTakTfihJ5UaUdPnF4d6RQVtKaKyqatVtQCY9DqQ9grM+LWiseBhZLXsFo
	 lmhppFKGayZ+tUHbVYPYGqLx07VyoONuj1wO+gWQu2ezMc13EW/KoW34gY5mrC+Vz+
	 EqGa3NEgfbJ+sz/PW0s5PNF3JBT1ssatVJ75vEtRDGwcQ7aMGa3Cax0yOe4Z8Jrr+Z
	 FJFoVAd3QbxHAeSf8WV0euY/SVTZkACfGMeWUMqW0MUxe/zGvv+bSDyu4n0gbMiyXC
	 B4hKXDmR2wnEiwu909AeAKuMnhylcOY9vMyJ6twHEy3R7D/6j31/P30h7b9kWnetYm
	 grGgBTFemE/hw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 75BD9420B0;
	Fri, 16 Feb 2024 21:27:17 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B7AEB1BF2C7
 for <intel-wired-lan@osuosl.org>; Fri, 16 Feb 2024 21:27:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A30E641E01
 for <intel-wired-lan@osuosl.org>; Fri, 16 Feb 2024 21:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yyUzDgDX3Km2 for <intel-wired-lan@osuosl.org>;
 Fri, 16 Feb 2024 21:27:14 +0000 (UTC)
X-Greylist: delayed 527 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 16 Feb 2024 21:27:11 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 64B974001F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64B974001F
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 64B974001F
 for <intel-wired-lan@osuosl.org>; Fri, 16 Feb 2024 21:27:11 +0000 (UTC)
Received: from [192.168.44.133] (unknown [185.238.219.82])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A347B61E5FE01;
 Fri, 16 Feb 2024 22:18:04 +0100 (CET)
Message-ID: <cc999834-3068-42ab-a3e7-f83115d7d901@molgen.mpg.de>
Date: Fri, 16 Feb 2024 22:18:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Martin Kulas <kulas@mpia.de>
References: <7b655203-0dba-4531-956a-c63048f7de10@mpia.de>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <7b655203-0dba-4531-956a-c63048f7de10@mpia.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] Intel E810-XXVDA2: Too high TX timestamp read
 latency
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
Cc: intel-wired-lan@osuosl.org, Karol Kolacinski <karol.kolacinski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[Cc: +Karol]

Dear Martin,


Am 16.02.24 um 15:18 schrieb Martin Kulas:

> My time-sensitive user space application reads out
> the hardware TX timestamp via poll() and recvmsg(MSG_ERRQUEUE).
> On an Intel E810-XXVDA2 (for SFP), it takes roughly 700 microseconds 
> until the TX timestamp is available in user space (Linux 6.7.4).
> This latency of 700 microseconds is far too high for my application.
> For comparison, on an Intel X550 card (Twisted pair),
> my application retrieves the TX timestamp in roughly 30 microseconds
> which is acceptable.
> 
> The output of ethtool of the tested E810-XXVDA2:
> 
> # ethtool -i enp65s0f1np1
> driver: ice
> version: 6.7.4
> firmware-version: 4.40 0x8001c96c 1.3534.0
> expansion-rom-version:
> bus-info: 0000:41:00.1
> supports-statistics: yes
> supports-test: yes
> supports-eeprom-access: yes
> supports-register-dump: yes
> supports-priv-flags: yes
> #
> 
> When searching for a solution about this high latency TX timestamp read,
> I found the following thread from 2022:
> 
> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220802145757.273270-1-karol.kolacinski@intel.com/#2963591
> 
> Is this patch already in the current Linux Kernel 6.7.4 or is it pending?

In the metadata on the patchwork page it says *Accepted*, and it seems 
to be commit 1229b33973c7 (ice: Add low latency Tx timestamp read) added 
to Linux 6.1-rc1, so it should be in Linux 6.1.

Please build the Linux kernel from this commit to rule out any 
regression. (If that commit actually should support such low times that 
you require. The commit message says something about 20 ms before.)

> Can you recommend anything else in order to reduce the TX timestamp
> read latency?
> 
> If you know a better place for this issue,  please let me now!
I think this is the right place.


Kind regards,

Paul


[1]: 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1229b33973c7b89e989945a3edae7a17b6f909da
