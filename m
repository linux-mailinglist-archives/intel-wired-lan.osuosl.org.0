Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D2BCFED8F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 07 Jan 2026 17:24:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C04EA81A23;
	Wed,  7 Jan 2026 16:24:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gSDFeIlFkAtJ; Wed,  7 Jan 2026 16:24:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20D4181A30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767803043;
	bh=sN2vQaF8rLYlwVoaTYwGxcXdAruqPXep/xxEwK8q/D8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eSsEPBwNsS9lDu1p0OQunb5vKEAK9V5Lzk+wYrGSj/3QN1h8wqAtg3DmraA5HEv3I
	 uNXZZZKfxJXUytolLQBNJulwEUEOq2ku6//cme7tj5yk4comcBKtmfndacGLF3BXVZ
	 SHArq1MQwTvlYbV0Tt+Lli6SrOzqgx4kSKVuCv7VPjSaHj6x0OtCeTFQSYKHu3BcvO
	 bIKoPj9paO6hGHILCnR6sRwF/bs/D2F7JP0zit9wDSRkFexgLZS8yyhEmRFGsT3NPF
	 xAqOOwsnkMS0cCjeSSF/jixZJUVavJHNcEtTO/bGB6WKVRS2zazSUxPvEip4E0hFmS
	 nkTZ4yI+7cQUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20D4181A30;
	Wed,  7 Jan 2026 16:24:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E4C88436
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 16:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D6537408EF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 16:24:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VXb29qYWO9D8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jan 2026 16:23:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A3A96408CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3A96408CE
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A3A96408CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 16:23:59 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-465-_cIzh2sSM7Kp46SHWjHbXQ-1; Wed,
 07 Jan 2026 11:23:55 -0500
X-MC-Unique: _cIzh2sSM7Kp46SHWjHbXQ-1
X-Mimecast-MFC-AGG-ID: _cIzh2sSM7Kp46SHWjHbXQ_1767803031
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id C976519560B5; Wed,  7 Jan 2026 16:23:50 +0000 (UTC)
Received: from [10.44.32.248] (unknown [10.44.32.248])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 5E5C41956048; Wed,  7 Jan 2026 16:23:41 +0000 (UTC)
Message-ID: <66815c08-8408-4651-b039-d47925ae125e@redhat.com>
Date: Wed, 7 Jan 2026 17:23:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rob Herring <robh@kernel.org>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-2-ivecera@redhat.com>
 <2de556f0-d7db-47f1-a59e-197f92f93d46@lunn.ch>
 <20251217004946.GA3445804-robh@kernel.org>
 <5db81f5b-4f35-46e4-8fec-4298f1ac0c4e@redhat.com>
 <CAL_JsqJoybgJTAbSjGbTBxo-v=dbYY68tT309CV98=ohWhnC=w@mail.gmail.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <CAL_JsqJoybgJTAbSjGbTBxo-v=dbYY68tT309CV98=ohWhnC=w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1767803037;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sN2vQaF8rLYlwVoaTYwGxcXdAruqPXep/xxEwK8q/D8=;
 b=HGRquTdF/craMSzQ9PazcR2yDTKTZ6Qw68+0lHCpLyWStmD0fmFJxSohafXNvK0oQjgPTy
 6m0VUJW+7cP5qtWRolalLcR9yvpCljEnPhUOS++AT2OZo1bonJa3M1Y1/fgn3nOk5T6Fb5
 BIlTN7MFriVPW5RLwj8EhuggJ7lzjMc=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=HGRquTdF
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 01/13] dt-bindings: net:
 ethernet-controller: Add DPLL pin properties
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
Cc: Andrew Lunn <andrew@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Horatiu Vultur <Horatiu.Vultur@microchip.com>,
 Leon Romanovsky <leon@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Willem de Bruijn <willemb@google.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, netdev@vger.kernel.org,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms@kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Rob,

On 1/7/26 4:15 PM, Rob Herring wrote:
> On Mon, Jan 5, 2026 at 10:24 AM Ivan Vecera <ivecera@redhat.com> wrote:
>>
>> On 12/17/25 1:49 AM, Rob Herring wrote:
>>> On Thu, Dec 11, 2025 at 08:56:52PM +0100, Andrew Lunn wrote:
>>>> On Thu, Dec 11, 2025 at 08:47:44PM +0100, Ivan Vecera wrote:
>>>>> Ethernet controllers may be connected to DPLL (Digital Phase Locked Loop)
>>>>> pins for frequency synchronization purposes, such as in Synchronous
>>>>> Ethernet (SyncE) configurations.
>>>>>
>>>>> Add 'dpll-pins' and 'dpll-pin-names' properties to the generic
>>>>> ethernet-controller schema. This allows describing the physical
>>>>> connections between the Ethernet controller and the DPLL subsystem pins
>>>>> in the Device Tree, enabling drivers to request and manage these
>>>>> resources.
>>>>
>>>> Please include a .dts patch in the series which actually makes use of
>>>> these new properties.
>>>
>>> Actually, first you need a device (i.e. a specific ethernet
>>> controller bindings) using this and defining the number of dpll-pins
>>> entries and the names.
>>
>> The goal of this patch is to define properties that allow referencing
>> dpll pins from other devices. I included it in this series to allow
>> implementing helpers that use the property names defined in the schema.
>>
>> This series implements the dpll pin consumer in the ice driver. This is
>> usually present on ACPI platforms, so the properties are stored in _DSD
>> ACPI nodes. Although I don't have a DT user right now, isn't it better
>> to define the schema now?
> 
> I have no idea what makes sense for ACPI and little interest in
> reviewing ACPI bindings. While I think the whole idea of shared
> bindings is questionable, really it's a question of review bandwidth
> and so far no one has stepped up to review ACPI bindings.

It depends... shared bindings allow drivers to read property values
without need to have separate OF and ACPI codepaths.

>> Thinking about this further, consumers could be either an Ethernet
>> controller (where the PHY is not exposed and is driven directly by the
>> NIC driver) or an Ethernet PHY.
>>
>> For the latter case (Ethernet PHY), I have been preparing a similar
>> implementation for the Micrel phy driver (lan8814) on the Microchip EDS2
>> board (pcb8385). Unfortunately, the DTS is not upstreamed yet [1], so I
>> cannot include the necessary bindings here.
>>
>> Since there can be multiple consumer types (Ethernet controller or PHY),
>> would it be better to define a dpll-pin-consumer.yaml schema instead
>> (similar to mux-consumer)?
> 
> The consumer type doesn't matter for that. What matters is you have
> specific device bindings and if they are consumers of some
> provider/consumer style binding, then typically each device binding
> has to define the constraints if there can be multiple
> entries/connections (e.g. how many interrupts, clocks, etc. and what
> each one is).
> 
> Hard to say what's needed for DPLL exactly because I know next to
> nothing about it.

The motivation is to describe the interconnection between an Ethernet
controller (or PHY) and a DPLL device. In SyncE scenarios, the NIC or
PHY provides a recovered clock output received from the physical port,
and the signal is routed to specific DPLL pin(s). The DPLL device then
locks onto this signal, filters jitter/wander, and provides a stable,
phase-aligned clock back to the NIC. When a NIC or PHY package supports
multiple Ethernet ports, it may allow selecting which port's recovered
clock signal is routed to the DPLL pin.

The goal of this entire series is to allow NIC drivers to register their
own pins (per port) on top of existing pins from the DPLL device. To do
so, it is necessary to know which DPLL device pin is connected to the
NIC's recovered clock output.

The NIC/PHY acts as a consumer of the DPLL pin(s) provided by the DPLL
device. As I mentioned in my previous email, I am working on the
implementation of this feature (recovered clock selection) for the
Micrel driver (a DT area user). If it is acceptable to you, I can omit
the first patch that introduces DT properties from this series and add
it to the series that will introduce the feature for the Micrel driver.

Thanks,
Ivan

