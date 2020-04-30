Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2578B1C0B13
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 May 2020 01:48:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BD28E25656;
	Thu, 30 Apr 2020 23:48:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nJoNZkpyIaAQ; Thu, 30 Apr 2020 23:48:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E83F0255F6;
	Thu, 30 Apr 2020 23:48:21 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1076B1BF319
 for <intel-wired-lan@osuosl.org>; Thu, 30 Apr 2020 23:48:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0AE7888222
 for <intel-wired-lan@osuosl.org>; Thu, 30 Apr 2020 23:48:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TM5ELT3Bt7Jh for <intel-wired-lan@osuosl.org>;
 Thu, 30 Apr 2020 23:48:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 939C2881AD
 for <intel-wired-lan@osuosl.org>; Thu, 30 Apr 2020 23:48:14 +0000 (UTC)
IronPort-SDR: uXvFheYvOTOGhexlqzTUFgplJl+YMrH+R4slAZZX/OAaY/RL7bLlnSdruwKxQZIzHZo4vROiO+
 KZciY5+L8V3A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 16:48:13 -0700
IronPort-SDR: pu8WKNmbrsf2IR1j+nMmNgNipCZReFeoRYZJRALfTFJREcPgzMSfLODr6KgYRY+/qKHvAOoY87
 AfunoC0AOugA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="460119263"
Received: from hrong-mobl1.amr.corp.intel.com (HELO ellie) ([10.209.122.160])
 by fmsmga006.fm.intel.com with ESMTP; 30 Apr 2020 16:48:13 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Dan Williams <dwilliams@nextdroid.com>, intel-wired-lan@osuosl.org
In-Reply-To: <CAGrNP8nfqAZnEoOBsrxrsvszw7T5pdKHG4mt6fVcKB6iigV_BA@mail.gmail.com>
Date: Thu, 30 Apr 2020 16:48:14 -0700
Message-ID: <87zhaswn5t.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] Does the 'igb` kernel module support setting
 2-Tuple filters (aka `--config-ntuple`) on a i210 NIC?
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
Cc: Daniel Gandhi <dgandhi@nextdroid.com>, Nick Rizzo <nrizzo@nextdroid.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dan Williams <dwilliams@nextdroid.com> writes:

> Does the 'igb` kernel module support setting "2-Tuple filters" (aka
> `--config-ntuple`, aka RFS) on a I-210IC NIC?
> - Is this the appropriate mailing list?
> - If not, which module *should* we be using instead?
> - If so, how do we enable it in the 'igb' driver?
>
>
> *.1. Context: *
> Hey, all, we're running into a very perplexing configuration issue, while
> trying to tune our 'igb' driver, and the documentation out there is
> sparse.  All the examples we've found come up dry.  (either by throwing
> errors with our setup, or emitting nothing but opaque error messages:
> "Operation not supported"  "invalid argument")   Hopefully, someone on the
> list can point us in the right direction.
>
> We have a computer logging a high rate of ethernet packets ( 25k
> packets/sec ~70 Mb/sec);   But we're having trouble convincing the hardware
> to receive all of these packets, at a sustained rate -- specifically we're
> dropping packets while processing through the kernel layers.    We're
> currently attempting to optimize the network stack,  but we're having
> trouble setting the driver parameters... which is what this message is all
> about.

That's weird. That packet rate is not *that* high, the Linux kernel
should be able to handle that fine.

Can you give more details of the workload you are running?

>
> *.2. Platform Summary:*
> Hardware:
> Advantech 3500
> <https://www.advantech.com/products/1-2jkd2d/ark-3500/mod_adb8f9a9-4b1b-4cf5-84ba-9e135c099c43>
> CPU ($ lscpu):
> Architecture:         x86_64
> CPU family:          6
> Model:                  58
> Model name:        Intel(R) Core(TM) i7-3610QE CPU @ 2.30GHz
> NIC ($ lspci -vs 02:00.0)
> 02:00.0 Ethernet controller: Intel Corporation I210 Gigabit Network
> Connection (rev 03)
> Flags: bus master, fast devsel, latency 0, IRQ 18
> OS ($ lsb_release -a)
> Ubuntu 16.04.6 LTS
> Kernel (`uname -r`):
> 4.15.0-88-lowlatency
> Kernel Module ($ modinfo igb)
> filename:
> /lib/modules/4.15.0-88-lowlatency/kernel/drivers/net/ethernet/intel/igb/igb.ko
> version:        5.4.0-k
> license:        GPL
> Ethtool Version ($ ethtool --version)
> ethtool version 4.5

There had been a lot of improvements in the network stack in the last 4
years, trying with a recent kernel, if possible, would be useful to know
if the issue you are seeing persists.

>
> *.3. What have we tried so far:*
> .3.a.  The NIC supports what we want to do:
> The data sheet,
> <https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=2ahUKEwj_nona25DpAhWPoHIEHfvYBWcQFjAAegQIARAB&url=https%3A%2F%2Fwww.intel.com%2Fcontent%2Fwww%2Fus%2Fen%2Fembedded%2Fproducts%2Fnetworking%2Fi210-ethernet-controller-datasheet.html&usg=AOvVaw1N7hqg0JJAaqXsomLAUhfB>
> in section 7.1.2.4 "2-Tuple Filters", says:
>
>> The 2-tuple filters are configured via the TTQF (See Section 8.11.3), IMIR
>> (See Section 8.11.1) and
>> IMIR_EXT (See Section 8.11.2) registers as follows (per filter):
>>

The problem is that the NIC supports the 2-tuple filters, but support
for using them in Linux was never added.

>
> Am I correct in assuming these are the mechanisms the 'igb' driver is
> interfacing with?

You are right.

>
> .3.b.   What is the flow table currenttly?
>
>> # ethtool --show-rxfh enp2s0
>> RX flow hash indirection table for enp2s0 with 4 RX ring(s):
>>     0:      0     0     0     0     0     0     0     0
>>     8:      0     0     0     0     0     0     0     0
>>    16:      0     0     0     0     0     0     0     0
>>    24:      0     0     0     0     0     0     0     0
>>    32:      0     0     0     0     0     0     0     0
>>    40:      0     0     1     1     1     1     1     1
>>    48:      1     1     1     1     1     1     1     1
>>    56:      1     1     1     1     1     1     1     1
>>    64:      1     1     1     1     1     1     1     1
>>    72:      1     1     1     1     1     1     1     1
>>    80:      1     1     1     1     1     2     2     2
>>    88:      2     2     2     2     2     2     2     2
>>    96:      2     2     2     2     2     2     2     2
>>   104:      2     2     2     2     2     2     2     2
>>   112:      2     2     2     2     2     2     2     2
>>   120:      2     2     2     2     2     2     2     2
>> RSS hash key:
>> Operation not supported
>>
>
> "Operation not supported" -- does this mean the NIC has RSS routing
> hard-coded? And we cannot change the hash-function?
> Or is RSS just hard-coded?

IIRC the function and hash key cannot be changed, the only thing that
can be changed is the indirection table, i.e. assigning different
"target" queues to different hash values.

>
>
> .3.c. Current "Hash flow" settings:
>
>> # ethtool -n  enp2s0 rx-flow-hash udp4
>> UDP over IPV4 flows use these fields for computing Hash flow key:
>> IP SA
>> IP DA
>> L4 bytes 0 & 1 [TCP/UDP src port]
>> L4 bytes 2 & 3 [TCP/UDP dst port]
>>
>
>
>> # sudo ethtool -n enp2s0
>> 4 RX rings available
>> Total 0 rules
>>
>
>
> .3.d.  Enable ntuple features:
>
>> # ethtool --show-features enp2s0 | grep ntuple
>> ntuple-filters: on
>>
>
> .3.e. Add ntuple rule: Commands Tried:
>
>> # ethtool -U enp2s0 flow-type udp4 src-ip 192.168.3.43 dst-ip 0.0.0.0
>> src-port 555 dst-port 2368 action -1
>> rmgr: Cannot insert RX class rule: Invalid argument
>> # ethtool -U enp2s0 flow-type udp4 src-ip 192.168.3.43 action 1
>> rmgr: Cannot insert RX class rule: Invalid argument
>>
> # ethtool -U enp2s0 flow-type ip4 src-ip 192.168.3.43 action 1
>> rmgr: Cannot insert RX class rule: Invalid argument
>> # ethtool -U enp2s0 flow-type ip4 src-ip 192.168.3.43 action 1 loc 4
>> rmgr: Cannot insert RX class rule: Invalid argument
>>

Right now, only filters for ethernet addresses, ethtype, VLAN ID and PCP
are implemented. I agree that returning -EINVAL is not helpful.

>
> .3.f. More Interface info:
>
>> # ethtool -i enp2s0
>> driver: igb
>> version: 5.4.0-k
>> firmware-version: 3.16, 0x800004ad
>> expansion-rom-version:
>> bus-info: 0000:02:00.0
>> supports-statistics: yes
>> supports-test: yes
>> supports-eeprom-access: yes
>> supports-register-dump: yes
>> supports-priv-flags: yes
>>
>
> # ethtool -t enp2s0
>> The test result is PASS
>> The test extra info:
>> Register test  (offline) 0
>> Eeprom test    (offline) 0
>> Interrupt test (offline) 0
>> Loopback test  (offline) 0
>> Link test   (on/offline) 0
>>
>
>
>
>
>
>
> Daniel Williams  |  Software Engineer
> dwilliams@nextdroid.com
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
