Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BPzAxGslWkbTgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 13:09:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8DC1563A9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 13:09:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78B16809C9;
	Wed, 18 Feb 2026 12:09:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XaoDuvXBsb3y; Wed, 18 Feb 2026 12:09:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AC3780A52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771416587;
	bh=Nrc1HhTmtN0J0sKwD1vpJNd9T/GxxMBsADPukQclPJc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w3/Ub7Gneb9xuZFd5hMMvY29WKdt01OhacqqYOp4Pkz5/HVV1mJu1fPXc1W4rIReT
	 VZVEltxh74WLh51h5c8r+3qkDZK6JgiIiSLiSKOxnPaQZOiFjfK8lNv4j5GOTlttxT
	 sMj7q9yGENW9XLCT/N4dXJI6+X7zj7kzdfMa9CuB4Ov17BS6mjEpdyohZZ+p82cNPt
	 nEVpKpK7Z3fvQ7pEnVxKuFcE6EgVYxqMv4O5zGh15G/DdUyWn3yFeG6+Tu7KZfh/SS
	 EG6Tq5H8k8Ke9I0uvNGMLsl3v7hm+J7Tr7EKwZB146KCCCdGpsryhiiAP/f4PeMjtj
	 AYSuyDxclNv8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8AC3780A52;
	Wed, 18 Feb 2026 12:09:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E27AA35B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 12:09:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D3D68407EE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 12:09:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tUVr2rJ_dC7z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Feb 2026 12:09:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C91BC407D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C91BC407D4
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C91BC407D4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 12:09:42 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id EA1B14C443034A;
 Wed, 18 Feb 2026 13:09:25 +0100 (CET)
Content-Type: multipart/mixed; boundary="------------5dlFsULcxrWRROYFU8j2u1vy"
Message-ID: <1cbf468e-45f5-4fe8-9ab7-06925ff1ccaf@molgen.mpg.de>
Date: Wed, 18 Feb 2026 13:09:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, it+intel-wired-lan@molgen.mpg.de
References: <d30060f0-e7aa-4d3e-8e7d-98e7ca176f9c@molgen.mpg.de>
 <b235e4e1-3a1c-4b09-bf4f-bd23d308e3e7@molgen.mpg.de>
 <3f6918da-0fcd-4a87-bca2-adbd1d88100b@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <3f6918da-0fcd-4a87-bca2-adbd1d88100b@intel.com>
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] ice: E810-XXV: Dell GBIC S28-10G-25G-SR-85C
 does not work
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
X-Spamd-Result: default: False [0.39 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,molgen.mpg.de:mid];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:it+intel-wired-lan@molgen.mpg.de,m:it@molgen.mpg.de,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[mpg.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 9F8DC1563A9
X-Rspamd-Action: no action

This is a multi-part message in MIME format.
--------------5dlFsULcxrWRROYFU8j2u1vy
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear Tony,


Am 17.02.26 um 19:16 schrieb Tony Nguyen:

> On 2/17/2026 9:15 AM, Paul Menzel wrote:

> I spoke to one of our link people about this.
> 
>> It works with Broadcom network controller BCM57414:
>>
>>      $ lspci -nn -s c4:00
>>      c4:00.0 Ethernet controller [0200]: Broadcom Inc. and subsidiaries BCM57414 NetXtreme-E 10Gb/25Gb RDMA Ethernet Controller  [14e4:16d7] (rev 01)
>>      c4:00.1 Ethernet controller [0200]: Broadcom Inc. and subsidiaries BCM57414 NetXtreme-E 10Gb/25Gb RDMA Ethernet Controller  [14e4:16d7] (rev 01)
>>
>> The difference seems to be that the Broadcom device supports auto- 
>> negotiation, and the Intel device does not:
> 
> Strictly speaking, optical links do not provide auto-negotiation.
> 
>> Intel E810-XXV:
>>
>>      Supported ports: [ FIBRE ]
>>      Supported link modes:   1000baseT/Full
>>                              10000baseT/Full
>>                              25000baseCR/Full
>>                              25000baseSR/Full
>>                              1000baseX/Full
>>                              10000baseCR/Full
>>                              10000baseSR/Full
>>                              10000baseLR/Full
>>      Supported pause frame use: Symmetric
>>      Supports auto-negotiation: No
>>      Supported FEC modes: None
>>      Advertised link modes:  25000baseSR/Full
> 
> The important part is here 10G is not an advertised link mode...
> 
>>      Advertised pause frame use: No
>>      Advertised auto-negotiation: No
>>      Advertised FEC modes: None
>>      Speed: Unknown!
>>      Duplex: Unknown! (255)
>>      Auto-negotiation: off
>>      Port: FIBRE
>>      PHYAD: 0
>>      Transceiver: internal
>>      Supports Wake-on: d
>>      Wake-on: d
>>          Current message level: 0x00000007 (7)
>>                                 drv probe link
>>      Link detected: no
>>
>> Broadcom BCM57414 NetXtreme-E:
>>
>>      Supported ports: [ FIBRE ]
>>      Supported link modes:   25000baseSR/Full
>>                              10000baseSR/Full
>>      Supported pause frame use: Symmetric Receive-only
>>      Supports auto-negotiation: Yes
>>      Supported FEC modes: RS     BASER
>>      Advertised link modes:  25000baseSR/Full
>>                              10000baseSR/Full
> 
> ... where it is here.
> 
>>      Advertised pause frame use: No
>>      Advertised auto-negotiation: Yes
>>      Advertised FEC modes: Not reported
>>      Speed: Unknown!
>>      Duplex: Unknown! (255)
>>      Auto-negotiation: on
>>      Port: FIBRE
>>      PHYAD: 1
>>      Transceiver: internal
>>      Supports Wake-on: g
>>      Wake-on: d
>>          Current message level: 0x00002081 (8321)
>>                                 drv tx_err hw
>>      Link detected: no

>>> PS:
>>>
>>> ```
>>> $ ip link show net04
>>> 7: net04: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq switchid b48351ffff278d44 state DOWN mode DEFAULT group default qlen 1000
>>>      link/ether b4:83:51:27:8d:44 brd ff:ff:ff:ff:ff:ff
>>>      alias eth4
>>> $ sudo ethtool -m net04
>>>      Identifier                                : 0x03 (SFP)
>>>      Extended identifier                       : 0x04 (GBIC/SFP defined by 2-wire interface ID)
>>>      Connector                                 : 0x07 (LC)
>>>      Transceiver codes                         : 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x02
> 
> 0x10 would be here for advertised 10G support. It is not, which is
> why it's not being advertised. He mentioned it's very common for
> dual rates to claim it on paper but not advertise it properly.
Thank you for looking into this. It should work in this case, as it 
works with the Broadcom device.

> Could you provide the output for 'ethool -m <INT> hex on'?
Sure. Please find it attached for the Intel and Broadcom device. It’s 
the same GBIC model and only the serial number should differ.


Kind regards,

Paul


PS: For completeness:

     $ ethtool -i net04
     driver: ice
     version: 6.12.0-160000.5-default
     firmware-version: 4.80 0x800206a0 24.0.5
     expansion-rom-version:
     bus-info: 0000:81:00.1
     supports-statistics: yes
     supports-test: yes
     supports-eeprom-access: yes
     supports-register-dump: yes
     supports-priv-flags: yes
--------------5dlFsULcxrWRROYFU8j2u1vy
Content-Type: text/plain; charset=UTF-8;
 name="ethtool-m-hex-on-intel-e810-xxv.txt"
Content-Disposition: attachment;
 filename="ethtool-m-hex-on-intel-e810-xxv.txt"
Content-Transfer-Encoding: base64

T2Zmc2V0CQlWYWx1ZXMKLS0tLS0tCQktLS0tLS0KMHgwMDAwOgkJMDMgMDQgMDcgMDAgMDAg
MDAgMDAgMDAgMDAgMDAgMDAgMDYgZmYgMTAgMDAgMDAgCjB4MDAxMDoJCTAwIDAwIDBhIDA3
IDQ0IDQ1IDRjIDRjIDIwIDQ1IDRkIDQzIDIwIDIwIDIwIDIwIAoweDAwMjA6CQkyMCAyMCAy
MCAyMCAwMiA3OCBhNyAxNCA0ZCAzMSAzNCA0ZCA0YiAyMCAyMCAyMCAKMHgwMDMwOgkJMjAg
MjAgMjAgMjAgMjAgMjAgMjAgMjAgNDEgMzEgMjAgMjAgMDMgNTIgMDAgMzAgCjB4MDA0MDoJ
CTA4IDNhIDY3IDAwIDU2IDRlIDMwIDQxIDUwIDM4IDMwIDMwIDM1IDM3IDMxIDM4IAoweDAw
NTA6CQkzOSAzMCAzNCAyMCAzMiAzNSAzMCAzOCAzMiAzNyAyMCAyMCA2OCBmYSAwOCAxYSAK
MHgwMDYwOgkJZGYgMTAgMDEgMTEgMDggMDAgMTAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAg
MDAgCjB4MDA3MDoJCTAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAw
IDAwIDAwIAoweDAwODA6CQkwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAw
MCAwMCAwMCAwMCAKMHgwMDkwOgkJMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAg
MDAgMDAgMDAgMDAgMDAgCjB4MDBhMDoJCTAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAw
IDAwIDAwIDAwIDAwIDAwIDAwIAoweDAwYjA6CQkwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAw
MCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAKMHgwMGMwOgkJMDAgMDAgMDAgMDAgMDAgMDAgMDAg
MDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgCjB4MDBkMDoJCTAwIDAwIDAwIDAwIDAwIDAw
IDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIAoweDAwZTA6CQkwMCAwMCAwMCAwMCAw
MCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAKMHgwMGYwOgkJMDAgMDAgMDAg
MDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgCjB4MDEwMDoJCTVhIDAw
IGZiIDAwIDU4IDAwIDAwIDAwIDg4IGI4IDc4IDUwIDg3IGYwIDc5IDE4IAoweDAxMTA6CQkx
OSA2NCAwMCBmYSAxNSA3YyAwMSBmNCA1NSA3NiAwNCA3YyA0MyBlMiAwNSBhNSAKMHgwMTIw
OgkJNTUgNzYgMDIgZTUgNDMgZTIgMDMgYTUgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgCjB4
MDEzMDoJCTAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAw
IAoweDAxNDA6CQkwMCAwMCAwMCAwMCAzZiA4MCAwMCAwMCAwMCAwMCAwMCAwMCAwMSAwMCAw
MCAwMCAKMHgwMTUwOgkJMDEgMDAgMDAgMDAgMDEgMDAgMDAgMDAgMDEgMDAgMDAgMDAgMDAg
MDAgMDAgMTYgCjB4MDE2MDoJCTFlIDJkIDg0IDkyIDBhIGJlIDIzIDI2IDE1IDNkIDAwIDAw
IDAwIDAwIDMwIDAwIAoweDAxNzA6CQkwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCBmZiBmZiBm
ZiAwMCAwMCAwMCAwMCAwMCAKMHgwMTgwOgkJMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAg
MDAgMDAgMDAgMDAgMDAgMDAgMDAgCjB4MDE5MDoJCTAwIDAwIDAwIDAwIDAwIDAwIDAwIDAw
IDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIAoweDAxYTA6CQkwMCAwMCAwMCAwMCAwMCAwMCAw
MCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAKMHgwMWIwOgkJMDAgMDAgMDAgMDAgMDAg
MDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgCjB4MDFjMDoJCTAwIDAwIDAwIDAw
IDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIAoweDAxZDA6CQkwMCAwMCAw
MCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAKMHgwMWUwOgkJMDAg
MDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgCjB4MDFmMDoJ
CTAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIAo=
--------------5dlFsULcxrWRROYFU8j2u1vy
Content-Type: text/plain; charset=UTF-8;
 name="ethtool-m-hex-on-broadcom-bcm57414.txt"
Content-Disposition: attachment;
 filename="ethtool-m-hex-on-broadcom-bcm57414.txt"
Content-Transfer-Encoding: base64

T2Zmc2V0CQlWYWx1ZXMKLS0tLS0tCQktLS0tLS0KMHgwMDAwOgkJMDMgMDQgMDcgMDAgMDAg
MDAgMDAgMDAgMDAgMDAgMDAgMDYgZmYgMTAgMDAgMDAgCjB4MDAxMDoJCTAwIDAwIDBhIDA3
IDQ0IDQ1IDRjIDRjIDIwIDQ1IDRkIDQzIDIwIDIwIDIwIDIwIAoweDAwMjA6CQkyMCAyMCAy
MCAyMCAwMiA3OCBhNyAxNCA0ZCAzMSAzNCA0ZCA0YiAyMCAyMCAyMCAKMHgwMDMwOgkJMjAg
MjAgMjAgMjAgMjAgMjAgMjAgMjAgNDEgMzEgMjAgMjAgMDMgNTIgMDAgMzAgCjB4MDA0MDoJ
CTA4IDNhIDY3IDAwIDU2IDRlIDMwIDQxIDUwIDM4IDMwIDMwIDM1IDM3IDMxIDM4IAoweDAw
NTA6CQkzOSAzMiAzMiAyMCAzMiAzNSAzMCAzOCAzMiAzNyAyMCAyMCA2OCBmYSAwOCAxYSAK
MHgwMDYwOgkJZGYgMTAgMDEgMTEgMDggMDAgMTAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAg
MDAgCjB4MDA3MDoJCTAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAw
IDAwIDAwIAoweDAwODA6CQkwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAw
MCAwMCAwMCAwMCAKMHgwMDkwOgkJMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAg
MDAgMDAgMDAgMDAgMDAgCjB4MDBhMDoJCTAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAw
IDAwIDAwIDAwIDAwIDAwIDAwIAoweDAwYjA6CQkwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAw
MCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAKMHgwMGMwOgkJMDAgMDAgMDAgMDAgMDAgMDAgMDAg
MDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgCjB4MDBkMDoJCTAwIDAwIDAwIDAwIDAwIDAw
IDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIAoweDAwZTA6CQkwMCAwMCAwMCAwMCAw
MCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAKMHgwMGYwOgkJMDAgMDAgMDAg
MDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgCjB4MDEwMDoJCTVhIDAw
IGZiIDAwIDU4IDAwIDAwIDAwIDg4IGI4IDc4IDUwIDg3IGYwIDc5IDE4IAoweDAxMTA6CQkx
OSA2NCAwMCBmYSAxNSA3YyAwMSBmNCA1NSA3NiAwNCA3YyA0MyBlMiAwNSBhNSAKMHgwMTIw
OgkJNTUgNzYgMDIgZTUgNDMgZTIgMDMgYTUgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgCjB4
MDEzMDoJCTAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAw
IAoweDAxNDA6CQkwMCAwMCAwMCAwMCAzZiA4MCAwMCAwMCAwMCAwMCAwMCAwMCAwMSAwMCAw
MCAwMCAKMHgwMTUwOgkJMDEgMDAgMDAgMDAgMDEgMDAgMDAgMDAgMDEgMDAgMDAgMDAgMDAg
MDAgMDAgMTYgCjB4MDE2MDoJCTIzIDZjIDgwIDFmIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAw
IDAwIDAwIDRhIDAwIAoweDAxNzA6CQkwNSA0MCAwMCAwMCAwNSA0MCAwOCAwMCBmZiBmZiBm
ZiAwMCAwMCAwMCAwMCAwMCAKMHgwMTgwOgkJMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAg
MDAgMDAgMDAgMDAgMDAgMDAgMDAgCjB4MDE5MDoJCTAwIDAwIDAwIDAwIDAwIDAwIDAwIDAw
IDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIAoweDAxYTA6CQkwMCAwMCAwMCAwMCAwMCAwMCAw
MCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAKMHgwMWIwOgkJMDAgMDAgMDAgMDAgMDAg
MDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgCjB4MDFjMDoJCTAwIDAwIDAwIDAw
IDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIAoweDAxZDA6CQkwMCAwMCAw
MCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAKMHgwMWUwOgkJMDAg
MDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgCjB4MDFmMDoJ
CTAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIAo=

--------------5dlFsULcxrWRROYFU8j2u1vy--
