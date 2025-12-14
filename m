Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C615CBBF90
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Dec 2025 20:31:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48A1560DB8;
	Sun, 14 Dec 2025 19:31:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p26iFGbyb0PK; Sun, 14 Dec 2025 19:31:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C70B260B55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765740671;
	bh=JyCDijhIj+8wV1A1od+zUBGNbJ4R56BNBUDpatme0zM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ljff4ipzti6KOfSj/PDuCIQA1cdBlZb4VrKfGjBsOhKRAi1e0aKPHm+UzlANg8tZ/
	 NM7yjT5tQQ4Vqg/kN8t+KfPMcOkQ1RzL6hL9sXK8zvUf6ysoOajMLWX52rJY+dpeq9
	 MBsDl3ERQKOhqluHacBIDjvRS6MbUgqsR4CL2cIesTQz4JtAfxmB3U45NI8j/Z+dS5
	 QWHP0UvwpYILI4NtAy2pJsOE6KkMYgZMjyYhwEi9NFs1iy6O5/VkE6HCbNsUdFYJjI
	 0DDyUq70IU3fmBIA9dlfNWOiK+5qA+enq3Gmck70tONBzSU3IzyDuQ8DouxJfmQuHp
	 CHRSSelVUP7bA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C70B260B55;
	Sun, 14 Dec 2025 19:31:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D9D7A117
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Dec 2025 19:31:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C0963402A9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Dec 2025 19:31:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xcy-qbOxx3PI for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Dec 2025 19:31:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7DEA340209
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DEA340209
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7DEA340209
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Dec 2025 19:31:05 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-679-Fd47tESlMlWtEhkSHBjQ2Q-1; Sun, 14 Dec 2025 14:31:00 -0500
X-MC-Unique: Fd47tESlMlWtEhkSHBjQ2Q-1
X-Mimecast-MFC-AGG-ID: Fd47tESlMlWtEhkSHBjQ2Q_1765740660
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-477563e531cso19528125e9.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Dec 2025 11:31:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765740659; x=1766345459;
 h=content-transfer-encoding:mime-version:message-id:references
 :in-reply-to:user-agent:subject:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=AkDF/IHsQ0LQ2YPT4lm80CVidD6oYFhupeQzt7BNxAY=;
 b=wFd4TPL36SDEIA0kfql7IpQSM5ki4CS3huejf2m2LNJx7ofGsK/b8XsVvmOdQtY22B
 R671ItsWtybXl/HCsbx34AJskFUwoCotaLaf4du+n1ag0tDspeKopXNdA0dSHinfaA8r
 2SoN5J9O48GH9fkgd73rRcw0sKFjcvXqBA1Zrvrv4/lywAaH0POqadaaRugGH6O8FTtd
 ZSgaT7xgx8vYQTLvG0B/cVI+9z+nWMWA/FzbfPe1SU5hLPUvdaLhAcPCjpO0wnBm13Dm
 MKNuhdDMtaQMs9+6t+LuybdyI3G6vJ8pzBB4TzdHyoIdt8aewsC3bq7Gj3qAB0cx3u3p
 QKyQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUWUFqTqcrxA27ND90BJ41vN8QbgXy0JPZnEGvdiTjKCdMYBwQR69OkqdoHYTbvoztcEUJmPrjwG+v2Bj4bga8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzPcOj8r8aDc4M6ZwqS1AqNhsDtqK/gc2DF7abPMfpQe9/aDO7b
 gRFXmt85hM4m+ENrl8v4BGYU2C7YW2f5ZfuOXrwWGYlP/ma7qjPGwekJncZjVCZFCXJVTYjb6nC
 U7Z88CbaqkB2BAINr3GOb1xLwSj3X12K2YiMWuhN7l/+2eatSU0zRd5ORzUYrQBS7eRtZqIY=
X-Gm-Gg: AY/fxX5LOyB2wRHqfWa0TCtzqfQqhaMCtyXRpVEvju8Z1b7c3Muw5myo+cldIaIOKrT
 I40Xs1L95CyHuAC7kOFtANnK1o7VHFKkMa8R71Pd/2a5FSO+0ERWVM9IPtI6h40+XWf0GYLNDnt
 BYnBcwKVI9g6qnOdOWj2J5JrV4OC8nAo09Gxn6QdftzvHulCNmny9O4ALbq0FaUYgIbYhdbwilX
 zIgop1FO9DsV8IMHJBZR/7Xuw7gbKIUxLS31y0BCgfu4FN3Es/G6kmCVkNxigba9L7nbE8VWAoq
 3TQ9OXTOJy8bcwYQXknjJsKys/6RpQeX16NDGF/BD2N2q6rUoTD2EHyRczESJUi2JGxCdf6EWQ7
 gu/qyqnUvfCi5XtPc
X-Received: by 2002:a05:600c:1994:b0:477:a978:3a7b with SMTP id
 5b1f17b1804b1-47a8f905675mr74588025e9.22.1765740659469; 
 Sun, 14 Dec 2025 11:30:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG1JD6sqz6cMNfj68jqPv9uhNS9gihklxA8B3t1RSm2FSST2qEHqefUpOZ7al5hM84O0pEMNA==
X-Received: by 2002:a05:600c:1994:b0:477:a978:3a7b with SMTP id
 5b1f17b1804b1-47a8f905675mr74587865e9.22.1765740659011; 
 Sun, 14 Dec 2025 11:30:59 -0800 (PST)
Received: from ehlo.thunderbird.net ([2a00:e580:bf11:1:11d6:cade:a15:8421])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-47a8f72ce1bsm55125135e9.5.2025.12.14.11.30.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 14 Dec 2025 11:30:58 -0800 (PST)
Date: Sun, 14 Dec 2025 20:30:56 +0100
From: Ivan Vecera <ivecera@redhat.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, Jiri Pirko <jiri@resnulli.us>,
 "Oros, Petr" <poros@redhat.com>, "Schmidt, Michal" <mschmidt@redhat.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Simon Horman <horms@kernel.org>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 Willem de Bruijn <willemb@google.com>, Stefan Wahren <wahrenst@gmx.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>
User-Agent: Thunderbird for Android
In-Reply-To: <IA3PR11MB898612C9A66ABA4DA673D3FCE5AEA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-14-ivecera@redhat.com>
 <IA3PR11MB898612C9A66ABA4DA673D3FCE5AEA@IA3PR11MB8986.namprd11.prod.outlook.com>
Message-ID: <08A08E3A-0EEF-4FE3-B038-04300E2A5E3A@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 5YpHDCmfvnHDpWl-p0BTSeWAUhDBAUSznvYugp6Mq34_1765740660
X-Mimecast-Originator: redhat.com
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1765740664;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JyCDijhIj+8wV1A1od+zUBGNbJ4R56BNBUDpatme0zM=;
 b=hsn3PI1RwuJE8nAxe8O335dbyjn41GkOq73HBMFq9HErXqhYAkwXHMuDqNUk0Vhj1oSS8V
 fL4SKJcn+E0fE3RT7ql/py6j6e0koJQocyUl9Fs3K203zHqdGI5PNrhuCLdLUWeLMxFjlq
 SHxFVx4PCEtENBMb/KU2+1jJMTyDskA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=hsn3PI1R
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 13/13] ice: dpll: Support
 E825-C SyncE and dynamic pin discovery
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



On December 12, 2025 11:20:43 AM GMT+01:00, "Loktionov, Aleksandr" <aleksan=
dr.loktionov@intel.com> wrote:
>
>
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Ivan Vecera
>> Sent: Thursday, December 11, 2025 8:48 PM
>> To: netdev@vger.kernel.org; Andrew Lunn <andrew+netdev@lunn.ch>;
>> David S. Miller <davem@davemloft.net>; Eric Dumazet
>> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
>> <pabeni@redhat.com>; Rob Herring <robh@kernel.org>; Krzysztof
>> Kozlowski <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>;
>> Vadim Fedorenko <vadim.fedorenko@linux.dev>; Kubalewski, Arkadiusz
>> <arkadiusz.kubalewski@intel.com>; Nitka, Grzegorz
>> <grzegorz.nitka@intel.com>; Jiri Pirko <jiri@resnulli.us>; Oros,
>> Petr <poros@redhat.com>; Schmidt, Michal <mschmidt@redhat.com>;
>> Prathosh Satish <Prathosh.Satish@microchip.com>; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>; Saeed Mahameed <saeedm@nvidia.com>;
>> Leon Romanovsky <leon@kernel.org>; Tariq Toukan <tariqt@nvidia.com>;
>> Mark Bloch <mbloch@nvidia.com>; Richard Cochran
>> <richardcochran@gmail.com>; Jonathan Lemon
>> <jonathan.lemon@gmail.com>; Simon Horman <horms@kernel.org>;
>> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Willem de Bruijn
>> <willemb@google.com>; Stefan Wahren <wahrenst@gmx.net>;
>> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; intel-
>> wired-lan@lists.osuosl.org; linux-rdma@vger.kernel.org
>> Subject: [Intel-wired-lan] [PATCH RFC net-next 13/13] ice: dpll:
>> Support E825-C SyncE and dynamic pin discovery
>>=20
>> From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>=20
>> Add DPLL support for the Intel E825-C Ethernet controller. Unlike
>> previous
>> generations (E810), the E825-C connects to the platform's DPLL
>> subsystem
>> via MUX pins defined in the system firmware (Device Tree/ACPI).
>>=20
>> Implement the following mechanisms to support this architecture:
>>=20
>> 1. Dynamic Pin Discovery: Use the fwnode_dpll_pin_find() helper to
>>    locate the parent MUX pins defined in the firmware.
>>=20
>> 2. Asynchronous Registration: Since the platform DPLL driver may
>> probe
>>    independently of the network driver, utilize the DPLL notifier
>> chain
>>    (register_dpll_notifier). The driver listens for DPLL_PIN_CREATED
>>    events to detect when the parent MUX pins become available, then
>>    registers its own Recovered Clock (RCLK) and PTP (1588) pins as
>> children
>>    of those parents.
>>=20
>> 3. Hardware Configuration: Implement the specific register access
>> logic
>>    for E825-C CGU (Clock Generation Unit) registers (R10, R11). This
>>    includes configuring the bypass MUXes and clock dividers required
>> to
>>    drive SyncE and PTP signals.
>>=20
>> 4. Split Initialization: Refactor `ice_dpll_init()` to separate the
>>    static initialization path of E810 from the dynamic, firmware-
>> driven
>>    path required for E825-C.
>>=20
>> Co-developed-by: Ivan Vecera <ivecera@redhat.com>
>> Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_dpll.c   | 964
>> ++++++++++++++++++--
>>  drivers/net/ethernet/intel/ice/ice_dpll.h   |  29 +
>>  drivers/net/ethernet/intel/ice/ice_lib.c    |   3 +
>>  drivers/net/ethernet/intel/ice/ice_ptp.c    |  29 +
>>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c |   9 +-
>>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   1 +
>>  drivers/net/ethernet/intel/ice/ice_tspll.c  | 223 +++++
>>  drivers/net/ethernet/intel/ice/ice_tspll.h  |  14 +-
>>  drivers/net/ethernet/intel/ice/ice_type.h   |   6 +
>>  9 files changed, 1188 insertions(+), 90 deletions(-)
>>=20
>> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
>
>...
>
>> +static int
>> +ice_dpll_pin_get_parent_num(struct ice_dpll_pin *pin,
>> +=09=09=09    const struct dpll_pin *parent)
>> +{
>> +=09int i;
>> +
>> +=09for (i =3D 0; pin->num_parents; i++)
>> +=09=09if (pin->pf->dplls.inputs[pin->parent_idx[i]].pin =3D=3D
>> parent)
>Oh, no! we don't need a 2nd Infinite Loop in Cupertino!

Oops, thanks for pointing out... During testing the parent
was always found so this didn't cause any problem.

Of course I will fix it. =F0=9F=98=89
>
>...
>
>
>> --
>> 2.51.2
>

