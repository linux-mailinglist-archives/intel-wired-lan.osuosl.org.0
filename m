Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPOfFUailGloGAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 18:15:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0293814E8D2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 18:15:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 530A941F83;
	Tue, 17 Feb 2026 17:15:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IFph3y7HW8cK; Tue, 17 Feb 2026 17:15:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E58C41FDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771348546;
	bh=FbstPPHCpTZmOXnoD5avVOkGUjYJ+vdGKOLxdicJXLI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mMjGsLInG/BCld+PLwBuwlmpnKgoh0RYW2gzKpKCrdKD7Dxhez+TkhfknjTKDUq7F
	 PJuGRHV6VzHg1PnbdtYpbdU6GqQgRRnlcqDXAujHlhV8SELs4S8H1jxjrdUiSHrLVP
	 wNzFnN4Dtl8ogOnBQU4qqfVG+jtscE7nL/gmR6IjjwxrQBC6EGa3uKqJomWciMYjKk
	 TrCjI7d0lwYl8EuNsRQvrCIDrvJRVxP4XFL5TY+URcLSuzsNgXGlYFmYavXop3zoMm
	 w0vzkmNlITivOfBBB5mVppYndTKQPH5TsNeJkjnr2rVPT4F7Grmd6DzYSByP6RHa+S
	 lQ1LAKp+rgeGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E58C41FDD;
	Tue, 17 Feb 2026 17:15:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BF6731CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 17:15:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A15FB40213
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 17:15:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e7ShUJg1CTvp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Feb 2026 17:15:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5297C401EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5297C401EC
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5297C401EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 17:15:41 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5EAD24C44302F1;
 Tue, 17 Feb 2026 18:15:24 +0100 (CET)
Message-ID: <b235e4e1-3a1c-4b09-bf4f-bd23d308e3e7@molgen.mpg.de>
Date: Tue, 17 Feb 2026 18:15:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, it+intel-wired-lan@molgen.mpg.de
References: <d30060f0-e7aa-4d3e-8e7d-98e7ca176f9c@molgen.mpg.de>
Content-Language: en-US
In-Reply-To: <d30060f0-e7aa-4d3e-8e7d-98e7ca176f9c@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:it+intel-wired-lan@molgen.mpg.de,m:it@molgen.mpg.de,s:lists@lfdr.de];
	DMARC_NA(0.00)[mpg.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,molgen.mpg.de:mid];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 0293814E8D2
X-Rspamd-Action: no action

Dear Linux folks,


Just a follow-up:

Am 12.02.26 um 15:06 schrieb Paul Menzel:

> On a Dell PowerEdge R7615 with
> 
>     $ sudo lspci -nn -s 81:00.0
>     81:00.0 Ethernet controller [0200]: Intel Corporation Ethernet Controller E810-XXV for SFP [8086:159b] (rev 02)
>     $ sudo lspci -nn -s 81:00.1
>     81:00.1 Ethernet controller [0200]: Intel Corporation Ethernet Controller E810-XXV for SFP [8086:159b] (rev 02)
> 
> the GBIC DELL S28-10G-25G-SR-85C is not giving a link, when connecting 
> an LWL cable. The link gets up with another SFP+ GBIC:
> 
>      [13332.522461] ice 0000:81:00.1 net05: NIC Link is up 10 Gbps Full Duplex, Requested FEC: NONE, Negotiated FEC: NONE, Autoneg Advertised: Off, Autoneg Negotiated: False, Flow Control: None
>      [13888.522978] ice 0000:81:00.1 net05: NIC Link is Down
> 
> Currently, Linux 6.12.49 is used.
> 
>      $ grep CONFIG_ICE /boot/config-6.12.49.mx64.487
>      CONFIG_ICE=m
>      CONFIG_ICE_HWMON=y
>      CONFIG_ICE_HWTS=y
> 
> The strange thing is, that the module info shows:
> 
>      $ sudo ethtool -m net04
>      […]
>          Transceiver type                          : Extended: 100G Base-SR4 or 25GBase-SR
> 
> But instead of 100G and 25G this GBIC should only support 10G and 25G. 
> (Or it just means, that 100G is four times 25G.)
> 
> Anyway, I tried to increase the debug level:
> 
>      $ modinfo ice
>      […]
>      parm:           debug:netif level (0=none,...,16=all) (int)
>      $ echo 16 | sudo tee /sys/module/ice/parameters/debug
> 
> But re-plugging the GBIC not more message were shown. Please find the 
> output of `dmesg` attached.
> 
> What I am doing wrong?

It works with Broadcom network controller BCM57414:

     $ lspci -nn -s c4:00
     c4:00.0 Ethernet controller [0200]: Broadcom Inc. and subsidiaries 
BCM57414 NetXtreme-E 10Gb/25Gb RDMA Ethernet Controller [14e4:16d7] (rev 01)
     c4:00.1 Ethernet controller [0200]: Broadcom Inc. and subsidiaries 
BCM57414 NetXtreme-E 10Gb/25Gb RDMA Ethernet Controller [14e4:16d7] (rev 01)

The difference seems to be that the Broadcom device supports 
auto-negotiation, and the Intel device does not:

Intel E810-XXV:

	Supported ports: [ FIBRE ]
	Supported link modes:   1000baseT/Full
	                        10000baseT/Full
	                        25000baseCR/Full
	                        25000baseSR/Full
	                        1000baseX/Full
	                        10000baseCR/Full
	                        10000baseSR/Full
	                        10000baseLR/Full
	Supported pause frame use: Symmetric
	Supports auto-negotiation: No
	Supported FEC modes: None
	Advertised link modes:  25000baseSR/Full
	Advertised pause frame use: No
	Advertised auto-negotiation: No
	Advertised FEC modes: None
	Speed: Unknown!
	Duplex: Unknown! (255)
	Auto-negotiation: off
	Port: FIBRE
	PHYAD: 0
	Transceiver: internal
	Supports Wake-on: d
	Wake-on: d
         Current message level: 0x00000007 (7)
                                drv probe link
	Link detected: no

Broadcom BCM57414 NetXtreme-E:

	Supported ports: [ FIBRE ]
	Supported link modes:   25000baseSR/Full
	                        10000baseSR/Full
	Supported pause frame use: Symmetric Receive-only
	Supports auto-negotiation: Yes
	Supported FEC modes: RS	 BASER
	Advertised link modes:  25000baseSR/Full
	                        10000baseSR/Full
	Advertised pause frame use: No
	Advertised auto-negotiation: Yes
	Advertised FEC modes: Not reported
	Speed: Unknown!
	Duplex: Unknown! (255)
	Auto-negotiation: on
	Port: FIBRE
	PHYAD: 1
	Transceiver: internal
	Supports Wake-on: g
	Wake-on: d
         Current message level: 0x00002081 (8321)
                                drv tx_err hw
	Link detected: no


Kind regards,

Paul


> PS:
> 
> ```
> $ ip link show net04
> 7: net04: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq switchid b48351ffff278d44 state DOWN mode DEFAULT group default qlen 1000
>      link/ether b4:83:51:27:8d:44 brd ff:ff:ff:ff:ff:ff
>      alias eth4
> $ sudo ethtool -m net04
>      Identifier                                : 0x03 (SFP)
>      Extended identifier                       : 0x04 (GBIC/SFP defined by 2-wire interface ID)
>      Connector                                 : 0x07 (LC)
>      Transceiver codes                         : 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x02
>      Transceiver type                          : Extended: 100G Base-SR4 or 25GBase-SR
>      Encoding                                  : 0x06 (64B/66B)
>      BR, Nominal                               : 25750MBd
>      Rate identifier                           : 0x10 (reserved or unknown)
>      Length (SMF,km)                           : 0km
>      Length (SMF)                              : 0m
>      Length (50um)                             : 0m
>      Length (62.5um)                           : 0m
>      Length (Copper)                           : 10m
>      Length (OM3)                              : 70m
>      Laser wavelength                          : 850nm
>      Vendor name                               : DELL EMC
>      Vendor OUI                                : 78:a7:14
>      Vendor PN                                 : M14MK
>      Vendor rev                                : A1
>      Option values                             : 0x08 0x3a
>      Option                                    : RX_LOS implemented
>      Option                                    : TX_FAULT implemented
>      Option                                    : TX_DISABLE implemented
>      Option                                    : RATE_SELECT implemented
>      Option                                    : Retimer or CDR implemented
>      BR margin, max                            : 0%
>      BR margin, min                            : 0%
>      Vendor SN                                 : VN0AP8005718922
>      Date code                                 : 250827
>      Optical diagnostics support               : Yes
>      Laser bias current                        : 5.500 mA
>      Laser output power                        : 0.9275 mW / -0.33 dBm
>      Receiver signal average optical power     : 0.6587 mW / -1.81 dBm
>      Module temperature                        : 32.11 degrees C / 89.80 degrees F
>      Module voltage                            : 3.3978 V
>      Alarm/warning flags implemented           : Yes
>      Laser bias current high alarm             : Off
>      Laser bias current low alarm              : Off
>      Laser bias current high warning           : Off
>      Laser bias current low warning            : Off
>      Laser output power high alarm             : Off
>      Laser output power low alarm              : Off
>      Laser output power high warning           : Off
>      Laser output power low warning            : Off
>      Module temperature high alarm             : Off
>      Module temperature low alarm              : Off
>      Module temperature high warning           : Off
>      Module temperature low warning            : Off
>      Module voltage high alarm                 : Off
>      Module voltage low alarm                  : Off
>      Module voltage high warning               : Off
>      Module voltage low warning                : Off
>      Laser rx power high alarm                 : Off
>      Laser rx power low alarm                  : Off
>      Laser rx power high warning               : Off
>      Laser rx power low warning                : Off
>      Laser bias current high alarm threshold   : 13.000 mA
>      Laser bias current low alarm threshold    : 0.500 mA
>      Laser bias current high warning threshold : 11.000 mA
>      Laser bias current low warning threshold  : 1.000 mA
>      Laser output power high alarm threshold   : 2.1878 mW / 3.40 dBm
>      Laser output power low alarm threshold    : 0.1148 mW / -9.40 dBm
>      Laser output power high warning threshold : 1.7378 mW / 2.40 dBm
>      Laser output power low warning threshold  : 0.1445 mW / -8.40 dBm
>      Module temperature high alarm threshold   : 90.00 degrees C / 194.00 degrees F
>      Module temperature low alarm threshold    : -5.00 degrees C / 23.00 degrees F
>      Module temperature high warning threshold : 88.00 degrees C / 190.40 degrees F
>      Module temperature low warning threshold  : 0.00 degrees C / 32.00 degrees F
>      Module voltage high alarm threshold       : 3.5000 V
>      Module voltage low alarm threshold        : 3.0800 V
>      Module voltage high warning threshold     : 3.4800 V
>      Module voltage low warning threshold      : 3.1000 V
>      Laser rx power high alarm threshold       : 2.1878 mW / 3.40 dBm
>      Laser rx power low alarm threshold        : 0.0741 mW / -11.30 dBm
>      Laser rx power high warning threshold     : 1.7378 mW / 2.40 dBm
>      Laser rx power low warning threshold      : 0.0933 mW / -10.30 dBm
> ```
