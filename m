Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C54EBD98FE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Oct 2025 15:08:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4625415EA;
	Tue, 14 Oct 2025 13:08:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eIjVPBuovMvT; Tue, 14 Oct 2025 13:08:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 041CA415E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760447308;
	bh=r70sde9HuyzT4AUFiliJ43BoLZK1kWkjxnutCyn9Zpo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0ftjIcGDYpNhwToijJFXBjzDnBVR4C8SYyK0nF1XiLVKhspZK1TMk7S0hmTjr12Hj
	 /Q21l/qXzHMmYp0ytiyCmwHpeFp0ADE8LbQTB29EdkeFjab0aW4/JTzJ/pzUxcdNwL
	 FDL2UKa3rYS/7Pgouwn+qDOlrWZwX+rkgWXD10cL55CCuBwNnzLhEAsyrmoHI5khRe
	 G6uQapu9AFiefB1z4FOauMmDTMpQ3fWNpe/xdN4jZ26wUxLSS1yfyQH2bg0cPJP0Cc
	 y3dsKxpnPZOOIVPYtU4xqEG9eJ7Uq179vEnvSUn5OoYjhqfa2wQdb2Mgn8wXmWYTfx
	 XcrrTvkpD7P2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 041CA415E4;
	Tue, 14 Oct 2025 13:08:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A488E294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 13:08:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8063E61122
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 13:08:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 39n8DlHjkt5D for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Oct 2025 13:08:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9897461186
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9897461186
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9897461186
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 13:08:22 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id AA7B96028F36C;
 Tue, 14 Oct 2025 15:07:53 +0200 (CEST)
Message-ID: <77cfe8ef-57d4-4dee-b89d-3f5504653413@molgen.mpg.de>
Date: Tue, 14 Oct 2025 15:07:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>, Birger Koblitz <mail@birger-koblitz.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251014-10gbx-v2-1-980c524111e7@birger-koblitz.de>
 <0c753725-fd6f-4f85-9371-f7342f86acff@lunn.ch>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <0c753725-fd6f-4f85-9371-f7342f86acff@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ixgbe: Add 10G-BX support
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

Dear Birger, dear Andrew,


Am 14.10.25 um 14:27 schrieb Andrew Lunn:
> On Tue, Oct 14, 2025 at 06:18:27AM +0200, Birger Koblitz wrote:
> 61;8003;1c> Adds support for 10G-BX modules, i.e. 10GBit Ethernet over a single strand
>> Single-Mode fiber
>> The initialization of a 10G-BX SFP+ is the same as for a 10G SX/LX module,
>> and is identified according to SFF-8472 table 5-3, footnote 3 by the
>> 10G Ethernet Compliance Codes field being empty, the Nominal Bit
>> Rate being compatible with 12.5GBit, and the module being a fiber module
>> with a Single Mode fiber link length.
>>
>> This was tested using a Lightron WSPXG-HS3LC-IEA 1270/1330nm 10km
>> transceiver:
>> $ sudo ethtool -m enp1s0f1
>>     Identifier                          : 0x03 (SFP)
>>     Extended identifier                 : 0x04 (GBIC/SFP defined by 2-wire interface ID)
>>     Connector                           : 0x07 (LC)
>>     Transceiver codes                   : 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
>>     Encoding                            : 0x01 (8B/10B)
>>     BR Nominal                          : 10300MBd
>>     Rate identifier                     : 0x00 (unspecified)
>>     Length (SMF)                        : 10km
>>     Length (OM2)                        : 0m
>>     Length (OM1)                        : 0m
>>     Length (Copper or Active cable)     : 0m
>>     Length (OM3)                        : 0m
>>     Laser wavelength                    : 1330nm
>>     Vendor name                         : Lightron Inc.
>>     Vendor OUI                          : 00:13:c5
>>     Vendor PN                           : WSPXG-HS3LC-IEA
>>     Vendor rev                          : 0000
>>     Option values                       : 0x00 0x1a
>>     Option                              : TX_DISABLE implemented
>>     BR margin max                       : 0%
>>     BR margin min                       : 0%
>>     Vendor SN                           : S142228617
>>     Date code                           : 140611
>>     Optical diagnostics support         : Yes
>>
>> Signed-off-by: Birger Koblitz <mail@birger-koblitz.de>
> 
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Unfortunately I do not see the original patch on the mailing list 
*intel-wired-lan*, and lore.kernel.org also does not have it [1].


Kind regards,

Paul


[1]: 
https://lore.kernel.org/intel-wired-lan/0c753725-fd6f-4f85-9371-f7342f86acff@lunn.ch/T/#u
