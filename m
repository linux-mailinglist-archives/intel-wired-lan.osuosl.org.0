Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55488956E41
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 17:09:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EAA79405FB;
	Mon, 19 Aug 2024 15:09:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uDm1JEHGHkr2; Mon, 19 Aug 2024 15:09:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5FC36405F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724080150;
	bh=VYxzJL/zYTS0RTltuHgT27JKtVxek25BUeqgw0i3KSQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dMFKqixV7RKLWJHGIpYgzPV3dlIvieHu0TzWnsR5SmyjubUKhgCBf4Kghw8kV78+R
	 BjwvTL3kuPKFHFguRbiB6OtkZ4d+Ny1iBnlEpgLaz2Bw0LFDZueHhh/re5YMBOosPN
	 GIVqvQBFfIiEHQUCE4DGDw1bzYs7Yeja0GSF9XJ6TAnNRfswOBIydvILLrVfCiIUrc
	 CAF3xgmjVa/vSNUajTh2qvMurIuskqpRdaUFgTazdmqYHAQnTggF9DrgBW4CWfSDTr
	 h4TTqF1vvaF6uFB5O1l8rkFU+PL6Sdse/hFe1CX4V7zySbrJTt9OBU/JdZfEXphG6V
	 b/GBzQjINoP3A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5FC36405F8;
	Mon, 19 Aug 2024 15:09:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 705C91BF41B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 04:50:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D41080C33
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 04:50:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I0ICPtpb7MOU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 04:50:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.128.54;
 helo=mail-wm1-f54.google.com; envelope-from=jirislaby@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1313D80B7F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1313D80B7F
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1313D80B7F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 04:50:12 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id
 5b1f17b1804b1-42816ca782dso32342095e9.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Aug 2024 21:50:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724043011; x=1724647811;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VYxzJL/zYTS0RTltuHgT27JKtVxek25BUeqgw0i3KSQ=;
 b=w+4hsBVPStNe7JemIBzhT3UsTURXgH3BMehKFeFZgPbk4++03+E6GL0Apby4OEUct7
 OLJ7hcHsX9st3j9FmnfcU3clr6JiAQIDkHrcfHf0NbWTRhVcAv1FxvUl/70wm9sOdcyo
 mhhuodnEFsi9Wg6uSEAvypTLpIdaZcjUs9V0ZHl1nj2Q08hJX2ocghS1LCmnenVl1SPa
 C2j8i+99n6jIqiqjYG4e3W5u4AWSFvv7NEyo0OyQ3w+gcXLTW58AZQGgQ/CjIsCoIx69
 WzdtKK0ekOaktRj5x8WDDHsYZ6IU/CXRRC4feZ8f/jDnclAF5a7qW/G/kboByxB/6NSE
 C6Gw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU7Gf/q8kmNhNdlxlNPR+Er0LfwfTHd0T403UIKWYRc2nalvBQuiQhh5xDrDfnKq/DGjvVm77ZoRgpgfG8iAoQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzREvIm0Xbv53kCkqZMySFrSeSv8CRrWhCP5jdwX5R77KrdFIaF
 hD9dY3iMzAiUHZPbXzMWxYmPZWjRTYWp+O/AzosFOzpgNaAmckM9
X-Google-Smtp-Source: AGHT+IHslvwh9znIKAar3W1Y8q9MvL6x5u8S2m9JgW1IO2Uc71quggEmdnRI3eXHNOpeR4ID64WvnA==
X-Received: by 2002:a05:600c:a43:b0:426:6696:9e50 with SMTP id
 5b1f17b1804b1-42aa8241587mr42641595e9.14.1724043010534; 
 Sun, 18 Aug 2024 21:50:10 -0700 (PDT)
Received: from ?IPV6:2a0b:e7c0:0:107::aaaa:69? ([2a0b:e7c0:0:107::aaaa:69])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-37189896d74sm9331502f8f.68.2024.08.18.21.50.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 18 Aug 2024 21:50:10 -0700 (PDT)
Message-ID: <95ef6fd9-6d86-40e2-9814-d1f671b2262d@kernel.org>
Date: Mon, 19 Aug 2024 06:50:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Petr Valenta <petr@jevklidu.cz>, "Rafael J. Wysocki" <rafael@kernel.org>
References: <60ac8988-ace4-4cf0-8c44-028ca741c0a1@kernel.org>
 <bd149809-f670-4b5d-a18a-f1f63624265f@kernel.org>
 <CAJZ5v0jrgC+cvjDfw+vQ1jyVz1oj28uTf9k+-Kk2EAPJj3VmdQ@mail.gmail.com>
 <6eac5c37-a5a8-4ccf-aef6-62a4a0bfcea0@jevklidu.cz>
Content-Language: en-US
From: Jiri Slaby <jirislaby@kernel.org>
Autocrypt: addr=jirislaby@kernel.org; keydata=
 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
In-Reply-To: <6eac5c37-a5a8-4ccf-aef6-62a4a0bfcea0@jevklidu.cz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 19 Aug 2024 15:09:08 +0000
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=fail (p=none dis=none)
 header.from=kernel.org
Subject: Re: [Intel-wired-lan] ACPI IRQ storm with 6.10
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
Cc: Linux regressions mailing list <regressions@lists.linux.dev>,
 przemyslaw.kitszel@intel.com,
 Linux kernel mailing list <linux-kernel@vger.kernel.org>,
 jesse.brandeburg@intel.com,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Len Brown <lenb@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CC e1000e guys + Jesse (due to 75a3f93b5383) + Bjorn (due to b2c289415b2b)

On 17. 08. 24, 19:57, Petr Valenta wrote:
> 
> 
> Dne 16. 08. 24 v 20:29 Rafael J. Wysocki napsal(a):
>> On Wed, Aug 14, 2024 at 8:48 AM Jiri Slaby <jirislaby@kernel.org> wrote:
>>>
>>> On 14. 08. 24, 7:22, Jiri Slaby wrote:
>>>> Hi,
>>>>
>>>> one openSUSE's user reported that with 6.10, he sees one CPU under an
>>>> IRQ storm from ACPI (sci_interrupt):
>>>>      9:   20220768          ...  IR-IO-APIC    9-fasteoi   acpi
>>>>
>>>> At:
>>>> https://bugzilla.suse.com/show_bug.cgi?id=1229085
>>>>
>>>> 6.9 was OK.
>>>>
>>>> With acpi.debug_level=0x08000000 acpi.debug_layer=0xffffffff, there 
>>>> is a
>>>> repeated load of:
>>>>> evgpe-0673 ev_detect_gpe         : Read registers for GPE 6D:
>>>>> Status=20, Enable=00, RunEnable=4A, WakeEnable=00
>>>
>>> 0x6d seems to count excessively (10 snapshots every 1 second):
>>>> /sys/firmware/acpi/interrupts/gpe6D:   82066  EN STS enabled      
>>>> unmasked
>>>> /sys/firmware/acpi/interrupts/gpe6D:   86536  EN STS enabled      
>>>> unmasked
>>>> /sys/firmware/acpi/interrupts/gpe6D:   90990     STS enabled      
>>>> unmasked
>>>> /sys/firmware/acpi/interrupts/gpe6D:   95468  EN STS enabled      
>>>> unmasked
>>>> /sys/firmware/acpi/interrupts/gpe6D:  100282  EN STS enabled      
>>>> unmasked
>>>> /sys/firmware/acpi/interrupts/gpe6D:  105187     STS enabled      
>>>> unmasked
>>>> /sys/firmware/acpi/interrupts/gpe6D:  110014     STS enabled      
>>>> unmasked
>>>> /sys/firmware/acpi/interrupts/gpe6D:  114852     STS enabled      
>>>> unmasked
>>>> /sys/firmware/acpi/interrupts/gpe6D:  119682     STS enabled      
>>>> unmasked
>>>> /sys/firmware/acpi/interrupts/gpe6D:  124194     STS enabled      
>>>> unmasked
>>>> /sys/firmware/acpi/interrupts/gpe6D:  128641  EN STS enabled      
>>>> unmasked
>>>
>>> acpidump:
>>> https://bugzilla.suse.com/attachment.cgi?id=876677
>>>
>>> DSDT:
>>> https://bugzilla.suse.com/attachment.cgi?id=876678
>>>
>>>> Any ideas?
>>
>> GPE 6D is listed in _PRW for some devices, so maybe one of them
>> continues to trigger wakeup events?
>>
> 
> Disabling powertop service (which calls /usr/sbin/powertop --auto-tune) 
> solves problem completely. After some search I have found this is the 
> cause:
> 
> # causes IRQ storm on 6.10.x
> # kernel 6.9.9 is immune
> echo 'auto' > /sys/bus/pci/devices/0000:00:1f.6/power/control

$ git log --no-merges  --oneline v6.9..v6.10 
drivers/net/ethernet/intel/e1000e/
76a0a3f9cc2f e1000e: fix force smbus during suspend flow
c93a6f62cb1b e1000e: Fix S0ix residency on corporate systems
bfd546a552e1 e1000e: move force SMBUS near the end of enable_ulp function
6918107e2540 net: e1000e & ixgbe: Remove PCI_HEADER_TYPE_MFD duplicates
1eb2cded45b3 net: annotate writes on dev->mtu from ndo_change_mtu()
b2c289415b2b e1000e: Remove redundant runtime resume for ethtool_ops
75a3f93b5383 net: intel: implement modern PM ops declarations

The last two play with PM ^^. I cannot immediately see if the issue can 
be caused by any of those, though.

If there are no ideas, possibly giving revert of both a try?

> lspci | grep 1f.6
> 00:1f.6 Ethernet controller: Intel Corporation Device 550b (rev 20)
> 
> journalctl -b | grep 1f.6
> srp 17 19:44:17 e14 kernel: pci 0000:00:1f.6: [8086:550b] type 00 class 
> 0x020000 conventional PCI endpoint
> srp 17 19:44:17 e14 kernel: pci 0000:00:1f.6: BAR 0 [mem 
> 0x9c300000-0x9c31ffff]
> srp 17 19:44:17 e14 kernel: pci 0000:00:1f.6: PME# supported from D0 
> D3hot D3cold
> srp 17 19:44:17 e14 kernel: pci 0000:00:1f.6: Adding to iommu group 12
> srp 17 19:44:19 e14 kernel: e1000e 0000:00:1f.6: Interrupt Throttling 
> Rate (ints/sec) set to dynamic conservative mode
> srp 17 19:44:19 e14 kernel: e1000e 0000:00:1f.6 0000:00:1f.6 
> (uninitialized): registered PHC clock
> srp 17 19:44:20 e14 kernel: e1000e 0000:00:1f.6 eth0: (PCI 
> Express:2.5GT/s:Width x1) fc:5c:ee:b0:13:74
> srp 17 19:44:20 e14 kernel: e1000e 0000:00:1f.6 eth0: Intel(R) PRO/1000 
> Network Connection
> srp 17 19:44:20 e14 kernel: e1000e 0000:00:1f.6 eth0: MAC: 16, PHY: 12, 
> PBA No: FFFFFF-0FF
> srp 17 19:44:20 e14 kernel: e1000e 0000:00:1f.6 enp0s31f6: renamed from 
> eth0
> srp 17 19:44:24 e14 ModemManager[1434]: <info>  [base-manager] couldn't 
> check support for device '/sys/devices/pci0000:00/0000:00:1f.6': not 
> supported by any plugin
> 
> 
> 
>> You can ask the reporter to mask that GPE via "echo mask >
>> /sys/firmware/acpi/interrupts/gpe6D" and see if the storm goes away
>> then.
>>
>> The only ACPI core issue introduced between 6.9 and 6.10 I'm aware of
>> is the one addressed by this series
>>
>> https://lore.kernel.org/linux-acpi/22385894.EfDdHjke4D@rjwysocki.net/
>>
>> but this is about the EC and the problem here doesn't appear to be
>> EC-related.  It may be worth trying anyway, though.
>>

-- 
js
suse labs

