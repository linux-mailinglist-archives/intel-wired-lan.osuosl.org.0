Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 695A7898A84
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 16:59:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 206F380BDF;
	Thu,  4 Apr 2024 14:59:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hnSShqxu9QGB; Thu,  4 Apr 2024 14:59:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6899D82F9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712242759;
	bh=kymbtRijImHzx1uzUVzp0DJJ2oqh16GSp6MK4aRhzhs=;
	h=Date:To:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Bt8pUb47+BTEcMDcW/mxWteg7RZG44cy3r/DEao0gOLURHnavwejOzXGmaB70lN4O
	 iCqfxHenblS/pP9WSgLX6VPrP1Ya9Kizr1AaJYO2EkM9rvOAiSKxRUytfXi4biHahU
	 O+Hb6QL2ZMjQoBCcclSMFL6zcGraVkgWEmN1UFVpvQS2NO+Tuf3X9Ldd2pA6L1cgxL
	 RMefv3l0DC4eOiz3ChqsU0oVw/+ch5GKJSs3IjHGaUvW6XHB++Qc3JmF3DDARKwoIG
	 HhLH7zqq88E47Hed9vbQdYs4+JIbeVV9Gz+SilT3lQDJp3NYuWeEJRqYz71u4h61Xo
	 bfITnieRY2IHw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6899D82F9E;
	Thu,  4 Apr 2024 14:59:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 808AA1BF424
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 16:55:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6CC8282242
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 16:55:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eFTSiqhIZpcQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 16:55:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::135; helo=mail-lf1-x135.google.com;
 envelope-from=mgregr@netx.as; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9F5F582241
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F5F582241
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9F5F582241
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 16:55:24 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id
 2adb3069b0e04-516c114addaso54878e87.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Apr 2024 09:55:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712163322; x=1712768122;
 h=content-transfer-encoding:cc:subject:from:to:content-language
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=kymbtRijImHzx1uzUVzp0DJJ2oqh16GSp6MK4aRhzhs=;
 b=RC2CGWgUVY8tTQY0e8FfJYHNVrMeRazTtFD61rv25ftskYSKFtGZpPCV/41+AWWMQT
 3IEeVpFz4yZ48QR/F8vOBz4I/DHnDupzyit5F4BX8apknduH1NUJTegWTbyiEvP466pw
 Le6GtB1KDi2n05vi/C/ktqfESEXHynufCJTwK01uF4axhXzSzUO5zGQ6tNa6SSCcEVzg
 rkzKhk0flZYUACnNPNsoJo6d+ji98eW8wwi30w2ZnX+TVxl+G9HgxIOExsv6L8XamhkZ
 JiUCPl2qhNKPXyTFCNlb9kL/z0Ko8Hd+qQnYKOw1QUzNFYRjzD+FzbxYLW7Rdp6iRCA+
 Z01g==
X-Gm-Message-State: AOJu0YyvCvoqTy2eHf+LML8uW/BpgCojtKibkOXgZ5bC4BL1K51x9Z+d
 W7YckkY8mfK+6R6o2wRwdAr/AjsEiVVnX+xxaVQ/3QleC+PTTEGCFcCzaogLtJTK7vzccJJiVhR
 w
X-Google-Smtp-Source: AGHT+IG40HOPZWDXfTQ+EHP1v68u0pW5CJ46mD/aEezq6mLLAMGBzju/EBdSgln0GvlJdTT3N+6I+A==
X-Received: by 2002:a19:9143:0:b0:515:b69e:8ddf with SMTP id
 y3-20020a199143000000b00515b69e8ddfmr52454lfj.55.1712163322127; 
 Wed, 03 Apr 2024 09:55:22 -0700 (PDT)
Received: from ?IPV6:2a00:1028:83a2:105e:e915:ac4:fb66:3674?
 (dynamic-2a00-1028-83a2-105e-e915-0ac4-fb66-3674.ipv6.o2.cz.
 [2a00:1028:83a2:105e:e915:ac4:fb66:3674])
 by smtp.gmail.com with ESMTPSA id
 n27-20020a170906089b00b00a5172363ee2sm495683eje.225.2024.04.03.09.55.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Apr 2024 09:55:21 -0700 (PDT)
Message-ID: <1be45a76-90af-4813-824f-8398b69745a9@netx.as>
Date: Wed, 3 Apr 2024 18:55:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: intel-wired-lan@lists.osuosl.org
From: =?UTF-8?B?TWF0xJtqIEdyw6lncg==?= <mgregr@netx.as>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 04 Apr 2024 14:59:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netx-as.20230601.gappssmtp.com; s=20230601; t=1712163322; x=1712768122;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:cc:subject:from:to:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kymbtRijImHzx1uzUVzp0DJJ2oqh16GSp6MK4aRhzhs=;
 b=QqPK0v4PR7sf4GGu0AHp4VOo/6XRtdSJWBCLXRC0q89H9sJSbY3RipjXzZgGRPJz9x
 llizAf2CWMG2MECCJ7r4lpLxGb858IGq4ymnlGUq64hlguZZ+LqVV+fQBOZGE4d3Dd9f
 jxXj8QxqdNgZwSE/4r0zyqRTwwteFcd0ln3hVj8DRyqB/eqcw/SwpG8nSdr3J4lMptX6
 UI/rCCjiiwsQo83XIEWMiq+1im86jw/Q/eDbDPJcR5BlJZ8oGNyYxdDfM2ZfIcejHkRJ
 Y8GZFh0X1LJTy13l5JiQ6jLk5DXolX9QrsL4a4iGz4FOLxHx3W4SzAAHhdBA98o/+Azs
 dddQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=netx.as
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=netx-as.20230601.gappssmtp.com
 header.i=@netx-as.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=QqPK0v4P
Subject: [Intel-wired-lan] ice: lldp packets dropped after changing number
 of channels
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
Cc: Peter Nagy <nagy@netx.as>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,
   we are facing an issue with Intel 100G E810-C card. If we change 
number of channels using ethtool -L, LLDP packets stop to be forwarded 
to the network stack and user space.

Firmware-based lldp agent is disabled:

# ethtool --show-priv-flags hge11
Private flags for hge11:
link-down-on-close     : off
fw-lldp-agent          : off
vf-true-promisc-support: off
mdd-auto-reset-vf      : off
vf-vlan-pruning        : off
legacy-rx              : off

[  363.664628] ice 0000:41:00.0: The DDP package was successfully 
loaded: ICE COMMS Package version 1.3.45.0
[  363.983822] ice 0000:41:00.0: 252.048 Gb/s available PCIe bandwidth 
(16.0 GT/s PCIe x16 link)
[  364.003040] ice 0000:41:00.0: PTP init successful
[  364.202873] ice 0000:41:00.0: DCB is enabled in the hardware, max 
number of TCs supported on this port are 8
[  364.202880] ice 0000:41:00.0: FW LLDP is disabled, DCBx/LLDP in SW mode.
[  364.203045] ice 0000:41:00.0: Commit DCB Configuration to the hardware

The channels are set to the default values:

ethtool -l hge11
Channel parameters for hge11:
Pre-set maximums:
RX:		64
TX:		64
Other:		n/a
Combined:	64
Current hardware settings:
RX:		0
TX:		0
Other:		n/a
Combined:	64

We are able to see the LLDP frames:

tcpdump -i hge11 -nn 'ether proto 0x88cc'
16:21:08.528229 4c:ae:a3:6a:80:ee > 01:80:c2:00:00:0e, ethertype LLDP 
(0x88cc), length 347: LLDP, length 333: test-hp5945
16:21:09.528501 4c:ae:a3:6a:80:ee > 01:80:c2:00:00:0e, ethertype LLDP 
(0x88cc), length 347: LLDP, length 333: test-hp5945
16:21:10.528325 4c:ae:a3:6a:80:ee > 01:80:c2:00:00:0e, ethertype LLDP 
(0x88cc), length 347: LLDP, length 333: test-hp5945
16:21:11.528217 4c:ae:a3:6a:80:ee > 01:80:c2:00:00:0e, ethertype LLDP 
(0x88cc), length 347: LLDP, length 333: test-hp5945

However, if we changed the number of channels, e.g.:

ethtool -L hge11 combined 63

no LLDP frames are seen using tcpdump.

There is a workaround - enable and disable fw-lldp-agent using ethool. 
However enabling/disabling fw-lldp-agent using the ethtool flaps the 
link which is a problem as a connectivity is lost for a short time period.

Kernel version is 6.8.2, but we see the issue with previous versions as 
well. Firmware version is

ethtool -i hge11
driver: ice
version: 6.8.2
firmware-version: 4.40 0x8001c967 1.3534.0

lspci info:

41:00.1 Ethernet controller: Intel Corporation Ethernet Controller 
E810-C for QSFP (rev 02)
   Subsystem: Intel Corporation Ethernet Network Adapter E810-C-Q2
   Product Name: Intel(R) Ethernet Network Adapter E810-CQDA2
   Read-only fields:
   [V1] Vendor specific: Intel(R) Ethernet Network Adapter E810-CQDA2
   [PN] Part number: K91258-011
   [SN] Serial number: 6CFE545A0C20
   [V2] Vendor specific: 4022


Best regards,
M.
