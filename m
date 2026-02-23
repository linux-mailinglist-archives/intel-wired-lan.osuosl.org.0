Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNoUAiZQnGktDwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 14:03:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B019217686F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 14:03:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32FA4409A1;
	Mon, 23 Feb 2026 13:03:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xz6WAF7ICIt0; Mon, 23 Feb 2026 13:03:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61934409B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771851810;
	bh=zd4HhFpzObeRtQmFoL1sCwRbnpYkTFhwjGiJQuzHA0A=;
	h=Date:To:Cc:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=61iiRECQkukYTkah2T0xMnRMhl48azNvKpxJP1NvTp7XdELSOA3pKF65uDgG0iAX5
	 DpPxei/rMKodzAKgkY04eFyDOEHwPN+SkCckQqNKU2NUlTxkdcrjHrKeSsXRR0V1x+
	 vvadnj+OlvTUMHJ7LU+qCeHabpyGe/+eClrpJvC7xXZE9kCUkXgXONaDVU44XPS9Fq
	 m5rrbmi2fw2biSq0GTOpTG3kfmlXe5pu1+CVCNhQFszWxC+S9fKBRPZonLd6ylIGGs
	 tqanmbew97WR/evJxRWbSjZQPc8vdZpMq+cqnTgXgXSd6CNX47uTHptPyD4SHehdAt
	 h71oxuOZkG2FQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61934409B9;
	Mon, 23 Feb 2026 13:03:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B27D5237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 13:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 97E9C815DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 13:03:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yM9aStqKtj3S for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Feb 2026 13:03:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 436EA81570
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 436EA81570
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 436EA81570
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 13:03:25 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id DA3414C2C37D79;
 Mon, 23 Feb 2026 14:03:08 +0100 (CET)
Message-ID: <ccff35f6-aded-414b-918a-c4e0f70dab62@molgen.mpg.de>
Date: Mon, 23 Feb 2026 14:03:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, it+intel-wired-lan@molgen.mpg.de
From: Paul Menzel <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: [Intel-wired-lan] i40e: Dell GBIC S28-10G-25G-SR-85C: Rx/Tx is
 disabled on this device because an unsupported SFP module type was
 detected.
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:it+intel-wired-lan@molgen.mpg.de,m:it@molgen.mpg.de,s:lists@lfdr.de];
	DMARC_NA(0.00)[mpg.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: B019217686F
X-Rspamd-Action: no action

Dear Linux folks,


Plugging in Dell GBIC S28-10G-25G-SR-85C (M14MK) [1] into an Intel 
Ethernet Controller X710 for 10GbE SFP+ [8086:1572], Linux 6.12.49 logs:

     i40e 0000:5e:00.1: Rx/Tx is disabled on this device because an 
unsupported SFP module type was detected.
     i40e 0000:5e:00.1: Refer to the Intel(R) Ethernet Adapters and 
Devices User Guide for a list of supported modules.

Please find more information at the end of this message. Other Intel 
devices also have problems with this GBIC, and it works with a Broadcom 
device [2].


Kind regards,

Paul


[1]: 
https://www.dell.com/en-us/shop/dell-sfp28-sr-optic-25gbe-85c-for-all-sfp28-ports-customer-install/apd/407-bchi/wifi-and-networking
[2]: 
https://lore.kernel.org/intel-wired-lan/d30060f0-e7aa-4d3e-8e7d-98e7ca176f9c@molgen.mpg.de/t/#u


PS: i40e messages and ethtool output:

$ dmesg | grep -i i40e
[   18.577870] i40e: Intel(R) Ethernet Connection XL710 Network Driver
[   18.577873] i40e: Copyright (c) 2013 - 2019 Intel Corporation.
[   18.620824] i40e 0000:5e:00.0: fw 9.854.78653 api 1.15 nvm 9.54 
0x8000fb2b 24.0.5 [8086:1572] [8086:0006]
[   18.958500] i40e 0000:5e:00.0: MAC address: 6c:fe:54:0a:6e:90
[   18.971196] i40e 0000:5e:00.0 eth2: NIC Link is Up, 10 Gbps Full 
Duplex, Flow Control: None
[   18.981022] i40e 0000:5e:00.0: PCI-Express: Speed 8.0GT/s Width x8
[   18.988627] i40e 0000:5e:00.0: Features: PF-id[0] VFs: 64 VSIs: 66 
QP: 16 RSS FD_ATR FD_SB NTUPLE VxLAN Geneve PTP VEPA
[   19.015509] i40e 0000:5e:00.1: fw 9.854.78653 api 1.15 nvm 9.54 
0x8000fb2b 24.0.5 [8086:1572] [8086:0006]
[   19.262864] i40e 0000:5e:00.1: MAC address: 6c:fe:54:0a:6e:91
[   19.273714] i40e 0000:5e:00.1: PCI-Express: Speed 8.0GT/s Width x8
[   19.280785] i40e 0000:5e:00.1: Features: PF-id[1] VFs: 64 VSIs: 66 
QP: 16 RSS FD_ATR FD_SB NTUPLE VxLAN Geneve PTP VEPA
[   22.296668] i40e 0000:5e:00.0 net02: renamed from eth2
[   22.303865] i40e 0000:5e:00.1 net03: renamed from eth3
[160831.934190] i40e 0000:5e:00.1: Rx/Tx is disabled on this device 
because an unsupported SFP module type was detected.
[160831.944848] i40e 0000:5e:00.1: Refer to the Intel(R) Ethernet 
Adapters and Devices User Guide for a list of supported modules.
$ sudo ethtool net03
Settings for net03:
	Supported ports: [  ]
	Supported link modes:   10000baseSR/Full
	Supported pause frame use: Symmetric Receive-only
	Supports auto-negotiation: Yes
	Supported FEC modes: Not reported
	Advertised link modes:  10000baseSR/Full
	Advertised pause frame use: No
	Advertised auto-negotiation: Yes
	Advertised FEC modes: Not reported
	Speed: Unknown!
	Duplex: Unknown! (255)
	Auto-negotiation: off
	Port: Other
	PHYAD: 0
	Transceiver: internal
	Supports Wake-on: d
	Wake-on: d
         Current message level: 0x00000007 (7)
                                drv probe link
	Link detected: no
$ sudo ethtool -i net03
driver: i40e
version: 6.12.49.mx64.487
firmware-version: 9.54 0x8000fb2b 24.0.5
expansion-rom-version:
bus-info: 0000:5e:00.1
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes
$ sudo ethtool -m net03
	Identifier                                : 0x03 (SFP)
	Extended identifier                       : 0x04 (GBIC/SFP defined by 
2-wire interface ID)
	Connector                                 : 0x07 (LC)
	Transceiver codes                         : 0x00 0x00 0x00 0x00 0x00 
0x00 0x00 0x00 0x02
	Transceiver type                          : Extended: 100G Base-SR4 or 
25GBase-SR
	Encoding                                  : 0x06 (64B/66B)
	BR, Nominal                               : 25750MBd
	Rate identifier                           : 0x10 (reserved or unknown)
	Length (SMF,km)                           : 0km
	Length (SMF)                              : 0m
	Length (50um)                             : 0m
	Length (62.5um)                           : 0m
	Length (Copper)                           : 10m
	Length (OM3)                              : 70m
	Laser wavelength                          : 850nm
	Vendor name                               : DELL EMC
	Vendor OUI                                : 78:a7:14
	Vendor PN                                 : M14MK
	Vendor rev                                : A1
	Option values                             : 0x08 0x3a
	Option                                    : RX_LOS implemented
	Option                                    : TX_FAULT implemented
	Option                                    : TX_DISABLE implemented
	Option                                    : RATE_SELECT implemented
	Option                                    : Retimer or CDR implemented
	BR margin, max                            : 0%
	BR margin, min                            : 0%
	Vendor SN                                 : VN0AP8005718904
	Date code                                 : 250827
	Optical diagnostics support               : Yes
	Laser bias current                        : 0.000 mA
	Laser output power                        : 0.0000 mW / -inf dBm
	Receiver signal average optical power     : 0.0000 mW / -inf dBm
	Module temperature                        : 29.90 degrees C / 85.82 
degrees F
	Module voltage                            : 3.3528 V
	Alarm/warning flags implemented           : Yes
	Laser bias current high alarm             : Off
	Laser bias current low alarm              : On
	Laser bias current high warning           : Off
	Laser bias current low warning            : On
	Laser output power high alarm             : Off
	Laser output power low alarm              : On
	Laser output power high warning           : Off
	Laser output power low warning            : On
	Module temperature high alarm             : Off
	Module temperature low alarm              : Off
	Module temperature high warning           : Off
	Module temperature low warning            : Off
	Module voltage high alarm                 : Off
	Module voltage low alarm                  : Off
	Module voltage high warning               : Off
	Module voltage low warning                : Off
	Laser rx power high alarm                 : Off
	Laser rx power low alarm                  : On
	Laser rx power high warning               : Off
	Laser rx power low warning                : On
	Laser bias current high alarm threshold   : 13.000 mA
	Laser bias current low alarm threshold    : 0.500 mA
	Laser bias current high warning threshold : 11.000 mA
	Laser bias current low warning threshold  : 1.000 mA
	Laser output power high alarm threshold   : 2.1878 mW / 3.40 dBm
	Laser output power low alarm threshold    : 0.1148 mW / -9.40 dBm
	Laser output power high warning threshold : 1.7378 mW / 2.40 dBm
	Laser output power low warning threshold  : 0.1445 mW / -8.40 dBm
	Module temperature high alarm threshold   : 90.00 degrees C / 194.00 
degrees F
	Module temperature low alarm threshold    : -5.00 degrees C / 23.00 
degrees F
	Module temperature high warning threshold : 88.00 degrees C / 190.40 
degrees F
	Module temperature low warning threshold  : 0.00 degrees C / 32.00 
degrees F
	Module voltage high alarm threshold       : 3.5000 V
	Module voltage low alarm threshold        : 3.0800 V
	Module voltage high warning threshold     : 3.4800 V
	Module voltage low warning threshold      : 3.1000 V
	Laser rx power high alarm threshold       : 2.1878 mW / 3.40 dBm
	Laser rx power low alarm threshold        : 0.0741 mW / -11.30 dBm
	Laser rx power high warning threshold     : 1.7378 mW / 2.40 dBm
	Laser rx power low warning threshold      : 0.0933 mW / -10.30 dBm
