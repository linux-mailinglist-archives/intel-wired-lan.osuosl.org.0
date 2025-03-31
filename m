Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 078A4A76F6B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Mar 2025 22:36:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEA4F60907;
	Mon, 31 Mar 2025 20:36:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wf7aD5C0GKKJ; Mon, 31 Mar 2025 20:36:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8DD560D94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743453370;
	bh=MGYjw1uuKWmPyN4cu8oPBTHS2gSLPVA6sF7e2mS6NN8=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VYNd+Atn5GhhjuoscYJQqP2wmQN8JTFjhWT4MR2QiXrSmG8+GCSk8HZVFR9xBcrjV
	 TL/4PXecBimf94VyspRoNtCOiI3eP+b29DmevDQhmOzkr8EFrQlvRkMXFZX0CvH/kY
	 /dqimyvtMC7Ehoy/eofXdRVnq+cgNqyn29t621qZXPuhrHtvNUxo/s8yBDiKfjJjeE
	 ctRB6bmO9Me0rO+EH9nCWF3XeZnXqXwj33ETWqwupdqHlVfJzfRYuVGAT1B/40dVvU
	 BP3mFOmBFZXPNGVhrWIeG++0SPMZUv0kc95ETb/bjF5K8t3VJtGDU/dAKyeTLXT7ku
	 DB75BhsRQ1evw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8DD560D94;
	Mon, 31 Mar 2025 20:36:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 45F6C1ED5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Mar 2025 20:36:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 27AD2409DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Mar 2025 20:36:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dE7nnjYSrbQh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Mar 2025 20:36:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::630; helo=mail-ej1-x630.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7E9BF409DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E9BF409DF
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E9BF409DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Mar 2025 20:36:06 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id
 a640c23a62f3a-aaee2c5ee6eso733311066b.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Mar 2025 13:36:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743453364; x=1744058164;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=MGYjw1uuKWmPyN4cu8oPBTHS2gSLPVA6sF7e2mS6NN8=;
 b=bdi2B/zza97WnQ6EyvVgvi8TSG1u99cVK+atSivHM1oZT4NePk+h9ysZRCN6d1VlXh
 fvNL3vStpTgswudIzcv3gmn3jjph9XAL7OvL+4dAemPsbcHXqHf1YBEzh/V11pP8rD/4
 NTPtJiLM0byxFB86cLgRrFfemZOJ2xjVkNEkD+gkyXyQOswDurOkFOdG68fKTIgktPz4
 nl2bz2ylkcWsdrrzZAVBrrKC/xfXa8QL8zQyXdO5NFcM+CzcaCux4eHuZnyTlNmxLNp5
 jpURVF7pKZOhz8Mai94f4jXgO2AXrq9Aqe0G4UI2x0HjPHfF3MTDL2RA6s3sEnvJWKcH
 49aw==
X-Gm-Message-State: AOJu0YyMeKRIujzOUUkeYptqoZldf688KtWAC0I2V9tCGpX6mzkM8p9w
 7rxdw5hXaoPWMYdr/Ss79DI6XutfSA31ZgCga0DXGXo8Ig3NYA9dn3rVDgnrgQ==
X-Gm-Gg: ASbGncudM4KhlKjZgvI/EMqATvdmbKotPJTlsPEUoUaWbMUcBNRIL+oEqdVLcRYW8h/
 a4QNkL6aX8XraObLw4MOixox5arXW5fjrQjuL33V8zfXnkgL0BiQSoMZxSpKhCLuDpRgRiBH0Ek
 eRDjCJmR3A5WHfN/UEvBdE8iI9/TiU1JgbtIG9DsOmOPaM4UhEgNcxpBjxEBf3QJbysnjO5HUxC
 tTkxESBR9LPfW52HAtWPKcsnafWSO/v/8YoBC0hDSJYZ3WB6WKREqg1xmGRg4j1M9A8KPOKmEYR
 p+9InhS8ose3/KxTFHwutfdOaugF1GVDzyuClgg+V6xZcdk3SJCtNoglKC2kg4ICQZhwA3evewd
 1a2NLDA==
X-Google-Smtp-Source: AGHT+IGmOQ0dYuUZqV0ho9bWhCeI93hp1eGUhMitjDKWzyprEMoZZbsgh4LqP8uUT7lEUGTHh5DBTQ==
X-Received: by 2002:a17:906:f85b:b0:ac7:3912:5ea5 with SMTP id
 a640c23a62f3a-ac739125f39mr828851266b.58.1743453364249; 
 Mon, 31 Mar 2025 13:36:04 -0700 (PDT)
Received: from ?IPV6:2a0a:2300:1:1fe:e2e5:1eb0:886e:bbbf?
 ([2a0a:2300:1:1fe:e2e5:1eb0:886e:bbbf])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ac71967fc5fsm677464866b.141.2025.03.31.13.36.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 31 Mar 2025 13:36:03 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <a6d71bdc-3c40-49a1-94e5-369029693d06@jacekk.info>
Date: Mon, 31 Mar 2025 22:36:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <c0435964-44ad-4b03-b246-6db909e419df@jacekk.info>
 <9ad46cc5-0d49-8f51-52ff-05eb7691ef61@intel.com>
Content-Language: en-US, pl
In-Reply-To: <9ad46cc5-0d49-8f51-52ff-05eb7691ef61@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1743453364; x=1744058164; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=MGYjw1uuKWmPyN4cu8oPBTHS2gSLPVA6sF7e2mS6NN8=;
 b=sG4HiCyHQk14G94MxlluBL+MV+Y+Ica2X/EBGkJ3yPb2q5FaqJRJMrbu6rJzx0BmZp
 Kt+/lSkwRU+Js4ETeCUQhJRZrM+p9Ngqb9w6tcBI/0tKLF0RYEFoNLhHvi9cVCWEcscB
 pVabyDfR5w/fN6ETPLtQdvYMnYPK7AIFtvldkSH4QZdG0foc6n4Qn2HL41+AbmwB+EHZ
 S2LSf1X0I7BaWZfmtUklFUt11IrMX9ysG+DYpgnYBUmAe346vhuGzQMeJXz8UxGaICVi
 8Jxpq50xRSLT+5x6uX3EeUrA3byatKOM9x+zv8VMYB20r686mvn2v/Khoxl2w6hycN2C
 BBCg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=jacekk.info header.i=@jacekk.info header.a=rsa-sha256
 header.s=g2024 header.b=sG4HiCyH
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: add option not to verify NVM
 checksum
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

> Are you certain that the UEFI FW corrupts the checksum each time, or is 
> it just that the system left the factory with incorrect checksum?

I'm quite far from that device at the moment, but from what I remember:

- when I forced the NVM update path in the driver, the device would work,
- after the reboot the checksum was invalid again.

I'll experiment a little more and get back to you. Specifically I'll try 
to dump the NVM contents before and after running 
e1000e_update_nvm_checksum and after a reboot.

Maybe the "shadow RAM" was correctly updated, but the change was 
(silently?) not persisted due to the security change you mention:

> From what we know, the Latitude E5420 is 11th Gen Intel CPU (Tiger Lake).
> Starting from this generation, a security change makes it impossible for 
> software to write to the I219 NVM.


> From a technical perspective, your patch looks correct. However, if the 
> checksum validation is skipped, there is no way to distinguish between 
> the simple checksum error described above, and actual NVM corruption, 
> which may result in loss of functionality and undefined behavior.

The distinction between checksum error and corruption will be performed 
by sufficiently privileged user, who must set the properly marked flag 
in the driver in order to do so. Is it more "insecure" than disabling 
NVM write protection (flag above)?

Note that I am not the only one with this issue...

Precision 7560 (also 11th gen):
https://www.dell.com/community/en/conversations/precision-mobile-workstations/precision-7560-e1000e-module-error-the-nvm-checksum-is-not-valid/647f9784f4ccf8a8dea83444

Latitude 5420 (same as mine):
https://forums.linuxmint.com/viewtopic.php?t=412046
https://bbs.archlinux.org/viewtopic.php?id=269606
https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2102113
https://community.tanium.com/s/question/0D5RO00000Chk2S0AR/tanium-provision-dell-latitude-5420-onboard-nic

EVGA Z590 mainboard:
https://www.linux.org/threads/getting-intel-i219-v-to-work-in-debian-12.45761/

I am quite sure that Dell nor other manufacturers won't do anything with 
it...

I'm also interested in how the Windows driver works around such an issue.


 > This means, that if there is any functional issue with the network
 > adapter on a given system, while checksum validation was suspended by
 > the user, we will not be able to offer support

Is completely non functional adapter (as mine) covered by this support 
promise?


Wrapping up: if nothing else works, what would you see as a possible way 
forward?

1. This flag.

2. Option to override the checksum value (compare with a given value 
rather than ignoring it completely).

3. Option to force NVM update (provided that my tests will show that it 
works - even if only until a reboot).

-- 
Best regards,
   Jacek Kowalski

