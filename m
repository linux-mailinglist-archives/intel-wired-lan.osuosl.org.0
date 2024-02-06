Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF2484B2F4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Feb 2024 12:00:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16A1A41ECC;
	Tue,  6 Feb 2024 11:00:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16A1A41ECC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707217200;
	bh=rUi9N6hNG6yElyw9WIiDTlItlGDE35RyXbDMQsdmWNA=;
	h=Date:To:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZpSMYEl1ab6kZ8eHgBWmt6Gq1G/cl4yD2EL0gzpy98OUAYXP+zzXQqEubzMMHxGZE
	 H8lPI+oB/hM96i2Bi3EvwObRbcoDO0TN8gkuR9kUiMGCW63QLkH2hEKxrXouY/6jH5
	 qOS68Dfcf3Mto8KIwkGLmcsS/pqTyxuM3+Z6iO2OP0V740iJSc64WO8+rpz8gHyXtY
	 9l12iBLpZQBXBF6jD/Jlr8f8Z8NtaWDXCG4QYFVIUUM60+3KBzmFuSVLcpXT7Kz1bH
	 Q5ZtxYZnNAsyAkxOJhQfFAHLLd4VNnqJkKZF6Do9KBKby50C3BLxm3w6Uo8XAczdIs
	 /D/NJvf5/Q3uQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z4107T7oZLXG; Tue,  6 Feb 2024 10:59:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA61F41EA3;
	Tue,  6 Feb 2024 10:59:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA61F41EA3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ECF4E1BF27C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 10:59:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C3D8441EA3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 10:59:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3D8441EA3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fst36cb4O11G for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Feb 2024 10:59:53 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A326B41E91
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 10:59:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A326B41E91
Received: by mail-ej1-x632.google.com with SMTP id
 a640c23a62f3a-a30e445602cso98899566b.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Feb 2024 02:59:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707217191; x=1707821991;
 h=content-transfer-encoding:organization:autocrypt:subject:from
 :content-language:to:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rUi9N6hNG6yElyw9WIiDTlItlGDE35RyXbDMQsdmWNA=;
 b=e4w/AYduMPpIe3sz9gVAqVzNcFMyXLlL2A+iPg4oiivOsc6ZfiRRXLMuSTbeNDzKPJ
 pO/FTgRIkLs0kxRe8PY56oeN74neBH2kRIISnr+YevPOt07YeRJ1SuBEswVuUSAdroPt
 WQ1ltt2rcLrd0+GnKZ7O5nAG6to/UgbXdaLLBKuCRy4b9ElpE/kTWJmzaDs60NaCV907
 V2msx6L7mf+ckTXXGqwF174o8PpynB2tYxFq4Sp2zgfrnwSx57HbaRmdVwyHLZUo17Fv
 H8os+TRDmEmBZGgYmVWKQyp9zraEkKELmON0FkIz9Ocra3A3NMOiu/3S+d/P9ffRo3RD
 kkww==
X-Gm-Message-State: AOJu0Yyg2WZTdVKBzfMpBBBGoHCNPQHCg4YiaGr2cUPwftHxukpisSV/
 SgmPcB20dGoDgTM9ZJ6dHKC5YgcgNmCVCgZr+MAChITn9+cTsIzFE/WB9Yeq68Yl7k0WmUsSSAG
 GD7gnLQdp8iLP+rWBS8u+RyVBTciW3uL2cJQmdg0zRDCvCSnFOGpQnhz4DehABAFd4OhJCPyYvD
 r6wlDFQ65QQcuuKBXMLV9kwPKdBwQeJAy/IZ1bgun4ZKFxvNDnCfSG8HyzfscF
X-Google-Smtp-Source: AGHT+IHNBGjosFMDxEfEydbkHSdOZ61QuGmREQeUqdlYqbbFZTWRAnzz0kRK33GjrhfNuhmGVy1tVg==
X-Received: by 2002:a17:906:7151:b0:a37:a1b9:c29e with SMTP id
 z17-20020a170906715100b00a37a1b9c29emr2455218ejj.30.1707217190471; 
 Tue, 06 Feb 2024 02:59:50 -0800 (PST)
Received: from [10.100.10.83] ([57.133.65.178])
 by smtp.gmail.com with ESMTPSA id
 tl27-20020a170907c31b00b00a384810f371sm47490ejc.190.2024.02.06.02.59.49
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 06 Feb 2024 02:59:50 -0800 (PST)
Message-ID: <3e88303b-eada-4ae8-9232-9b42992f890e@inovex.de>
Date: Tue, 6 Feb 2024 11:59:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: intel-wired-lan@lists.osuosl.org
Content-Language: en-US
From: Christian Rohmann <christian.rohmann@inovex.de>
Autocrypt: addr=christian.rohmann@inovex.de; keydata=
 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
 jc3KKu3ujhgpmc6agjjBXsDdcwBnOPngItiyCrs=
Organization: inovex GmbH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inovex.de; s=google; t=1707217191; x=1707821991; darn=lists.osuosl.org;
 h=content-transfer-encoding:organization:autocrypt:subject:from
 :content-language:to:user-agent:mime-version:date:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=rUi9N6hNG6yElyw9WIiDTlItlGDE35RyXbDMQsdmWNA=;
 b=dZ/qAmO9BmnW/kwuRlPI96S0ddGU7fy07QgZtKFbcTw2F6Dvava19R+xr80w5KwtDZ
 E0SKPXGYDG76LOlp3nhQWy4w6Oea4R/j+B9LrWVpBeVm4mpxnBzdWu1yqy6rf0dnIukb
 ipqbhs33nKKKAbzs9j6P4ddiRooEW8C4vkdp5I8aRGtr5SwDrD7B18KURf4+2hwc6g+O
 tE/PVC/VQCKbz2V8gDCewY7i8dCv4quDxUbmbR1CRxYJiTP360WyszT4bCgr6TomVBN5
 tDTqQzdFIZqPsShjCPGeYBclOfYOj6BxEmEXImRPZ0nkcqNlPcJFy5b6NGlkYhuk0qBp
 UVkQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=inovex.de header.i=@inovex.de
 header.a=rsa-sha256 header.s=google header.b=dZ/qAmO9
Subject: [Intel-wired-lan] Intel E810-XXVDA2 no link at 25G - 10G works and
 so does forcing 25G via ethtool
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello intel-wired-lan,

I might post to the wrong place /ML as this issue could not be caused by 
an issue with the driver / kernel module.
But I already tried my luck with Intel support (ticket# 06047421). 
Support was active at first, but now the conversation there seems to 
have died off unfortunately.


Please let me me explain the observed issue and kindly point me to the 
right channel (NIC firmware, NVM, ... ) if this is the wrong place after 
all:


1)
We purchased a bunch of Intel E810-XXVDA2 adapters and hooked them up 
using 100G->4x25G breakout cables (fs.com) to Arista switches.
Unfortunately we cannot get a link up with 25G at boot. Looping the NIC 
with a simple SFP28 DAC (fs.com) works fine though.


2)
Certainly we updated the NVM to 4.40 (latest) and power cycled the servers.


3)
We forced / set the correct speed on the Arista switches and we tried 
different FEC settings (none or reed-solomon), but no luck there.

4)
The issue seems to be, that the advertised speeds of the NIC don't 
contain 25G by default!
Right after boot it looks like this:

> # ethtool eth3
>
> Settings for eth3:
> Supported ports: [ FIBRE ]
> Supported link modes: 1000baseT/Full
> 10000baseT/Full
> 25000baseCR/Full
> 25000baseSR/Full
> 1000baseX/Full
> 10000baseSR/Full
> 10000baseLR/Full
> Supported pause frame use: Symmetric
> Supports auto-negotiation: No
> Supported FEC modes: None
> Advertised link modes: 10000baseT/Full
> Advertised pause frame use: No
> Advertised auto-negotiation: No
> Advertised FEC modes: None
> Speed: Unknown!
> Duplex: Unknown! (255)
> Auto-negotiation: off
> Port: Direct Attach Copper
> PHYAD: 0
> Transceiver: internal
> Supports Wake-on: d
> Wake-on: d
> Current message level: 0x00000007 (7)
> drv probe link
> Link detected: no

Notice the list with advertised speeds contains only "10000baseT/Full".
When explicitly setting this to 25G via:

> # ethtool -s eth3 advertise 0x80000000

the links comes right up at 25G and ethtool reports:

> # ethtool eth3
> Settings for eth3:
> Supported ports: [ FIBRE ]
> Supported link modes: 1000baseT/Full
> 10000baseT/Full
> 25000baseCR/Full
> 25000baseSR/Full
> 1000baseX/Full
> 10000baseSR/Full
> 10000baseLR/Full
> Supported pause frame use: Symmetric
> Supports auto-negotiation: No
> Supported FEC modes: None
> Advertised link modes: 25000baseCR/Full
> 25000baseSR/Full
> Advertised pause frame use: No
> Advertised auto-negotiation: No
> Advertised FEC modes: None
> Speed: 25000Mb/s
> Duplex: Full
> Auto-negotiation: off
> Port: FIBRE
> PHYAD: 0
> Transceiver: internal
> Supports Wake-on: d
> Wake-on: d
> Current message level: 0x00000007 (7)
> drv probe link
> Link detected: yes

I can also set both speeds via:

> # ethtool -s eth3 advertise 0x80001000 (10G AND 25G)
so the ethtool output changes from:
> Advertised link modes: 10000baseT/Full
to
> Advertised link modes: 10000baseT/Full
> 25000baseCR/Full
> 25000baseSR/Full
> 10000baseSR/Full
> 10000baseLR/Full
and the link still comes right up with 25G!
I can even play with the FEC setting to be either none, RS or auto. All 
of them work fine - so FEC seems to not be related to the issue.


5)
The servers are Supermicro machines of different models (
On a different machine the reported speeds after bootup looks like this 
with the supported link modes even reduced to one entry: "10000baseCR/Full"

> # ethtool ens2f0np0
> Settings for ens2f0np0:
>         Supported ports: [ FIBRE ]
>         Supported link modes:   10000baseCR/Full
>         Supported pause frame use: Symmetric
>         Supports auto-negotiation: No
>         Supported FEC modes: None
>         Advertised link modes:  10000baseCR/Full
>         Advertised pause frame use: No
>         Advertised auto-negotiation: No
>         Advertised FEC modes: None
>         Speed: 10000Mb/s
>         Duplex: Full
>         Auto-negotiation: off
>         Port: Direct Attach Copper
>         PHYAD: 0
>         Transceiver: internal
>         Supports Wake-on: d
>         Wake-on: d
>         Current message level: 0x00000007 (7)
>                                drv probe link
>         Link detected: yes


6) While I can now get a link-up at 25G, this is NOT a solution for me 
(and this issue), as this is
   a) not reboot safe
   b) does not work for PXE boot




So could this still be a linux driver issue, why the nic is not offering 
all of its capabilities?
Why is the NIC not advertising 25G? Or 10G AND 25G if possible? Could 
this be the server BIOS not correctly initializing the NIC?
Is there any way to set this permanently in / via NVM?
Is there any other debugging I could enable at the driver level to help 
finding the cause of this?



Regards and thanks for your time,


Christian



