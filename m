Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D6122427
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 May 2019 18:56:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 14FE48654D;
	Sat, 18 May 2019 16:56:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pn8ZYpv0tZ+2; Sat, 18 May 2019 16:56:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A286863DE;
	Sat, 18 May 2019 16:56:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E32F81BF3E3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 May 2019 16:56:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DE8FC85D5C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 May 2019 16:56:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OIRJti9qqZWC for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 May 2019 16:56:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 43E3885CD5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 May 2019 16:56:37 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5bd392.dynamic.kabel-deutschland.de
 [95.91.211.146])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 164662000BFDE;
 Sat, 18 May 2019 18:56:34 +0200 (CEST)
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
References: <8ef1b846-caf6-45de-33aa-a46406548167@molgen.mpg.de>
Message-ID: <1fb0c7c6-f687-f492-0f8e-487ada0b2542@molgen.mpg.de>
Date: Sat, 18 May 2019 18:56:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <8ef1b846-caf6-45de-33aa-a46406548167@molgen.mpg.de>
Content-Language: de-DE
Subject: Re: [Intel-wired-lan] [PATCH] Reduce e1000e boot time by tightening
 sleep ranges
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
Cc: Arjan van de Ven <arjan@linux.intel.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Linux folks,


On 17.05.19 16:55, Paul Menzel wrote:
>  From 6ce17ba6e04802462425ee9d38084523fc1a7ab6 Mon Sep 17 00:00:00 2001
> From: Arjan van de Ven <arjan@linux.intel.com>
> Date: Mon, 25 Jul 2016 06:44:34 -0500
> 
> The e1000e driver is a great user of the usleep_range() API,
> and has nice ranges that in principle help power management.
> 
> However the ranges that are used only during system startup are
> very long (and can add easily 100 msec to the boot time) while
> the power savings of such long ranges is irrelevant due to the
> one-off, boot only, nature of these functions.
> 
> This patch shrinks some of the longest ranges to be shorter
> (while still using a power friendly 1 msec range); this saves
> 100msec+ of boot time on my BDW NUCs

On the Dell Latitude E7250 with Linux 5.0.1 from Debian experimental 
(without this patch), the module e1000e takes quite long too initialize.

> [   68.449925] calling  e1000_init_module+0x0/0x1000 [e1000e] @ 315
> [   68.449926] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
> [   68.449926] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> [   68.449949] e1000e 0000:00:19.0: enabling device (0000 -> 0002)
> [   68.451074] e1000e 0000:00:19.0: Interrupt Throttling Rate (ints/sec) set to dynamic conservative mode
> [   68.767735] e1000e 0000:00:19.0 0000:00:19.0 (uninitialized): registered PHC clock
> [   68.864427] e1000e 0000:00:19.0 eth0: (PCI Express:2.5GT/s:Width x1) 34:e6:d7:6a:72:f4
> [   68.864429] e1000e 0000:00:19.0 eth0: Intel(R) PRO/1000 Network Connection
> [   68.864454] e1000e 0000:00:19.0 eth0: MAC: 11, PHY: 12, PBA No: FFFFFF-0FF
> [   68.864498] initcall e1000_init_module+0x0/0x1000 [e1000e] returned 0 after 40406 usecs
> [   68.868506] e1000e 0000:00:19.0 eno1: renamed from eth0
> [   73.932930] e1000e: eno1 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: Rx/Tx

I have no idea, why the `initcall_debug` time of 40.4 ms deviates from 
the Linux message time stamps (414 ms).


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
