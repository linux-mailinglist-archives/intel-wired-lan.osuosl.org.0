Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A73D0CF4A69
	for <lists+intel-wired-lan@lfdr.de>; Mon, 05 Jan 2026 17:24:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECCC4406DB;
	Mon,  5 Jan 2026 16:24:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BjTfLOqbwyps; Mon,  5 Jan 2026 16:24:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3748B406F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767630250;
	bh=46dE8wQn1HVL0x3WTf36oZBc8LAD4VTY8ItMtpTUnY8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=robn5jAE15MRhnUXB24yzQoieZpiJ9Xux60jrzW/iKZawlVvPAYaAaO/veQ1oMpBg
	 0/n1uBgwyDJxagwsTxSOKLO/XeBvLjHJXu3iMV252VlUNAQefHL5JsLdfZGiLlj758
	 2zMAU6q7qFJEA7QYdRUrM2Pf8NaBUqHrOW3q1vQUwrSvBWCrsVrrY4NOi3FJsJk2tQ
	 sgvXbZPc4yiPf0QwnSwL2PF8tJDk12efrT1Ep4sm8Hm4G3agIUAEleJDXtpVwPv1Tc
	 9FpixyTJHmpCApYQPCEPdS8qwIzQVV76Qoy4qXR4qG2TfOPL4oIlepbQ+uOhn17czQ
	 5OdMsPHrgjtHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3748B406F0;
	Mon,  5 Jan 2026 16:24:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AEB512DF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 16:24:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9173F60AC7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 16:24:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R_GUj749nDWs for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jan 2026 16:24:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7076960A9D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7076960A9D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7076960A9D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 16:24:06 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-612-qAfVWpaVPVmwinV2Ig6kOw-1; Mon,
 05 Jan 2026 11:24:00 -0500
X-MC-Unique: qAfVWpaVPVmwinV2Ig6kOw-1
X-Mimecast-MFC-AGG-ID: qAfVWpaVPVmwinV2Ig6kOw_1767630236
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id C443F1956050; Mon,  5 Jan 2026 16:23:55 +0000 (UTC)
Received: from [10.44.32.50] (unknown [10.44.32.50])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 982321956048; Mon,  5 Jan 2026 16:23:44 +0000 (UTC)
Message-ID: <5db81f5b-4f35-46e4-8fec-4298f1ac0c4e@redhat.com>
Date: Mon, 5 Jan 2026 17:23:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rob Herring <robh@kernel.org>, Andrew Lunn <andrew@lunn.ch>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-2-ivecera@redhat.com>
 <2de556f0-d7db-47f1-a59e-197f92f93d46@lunn.ch>
 <20251217004946.GA3445804-robh@kernel.org>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20251217004946.GA3445804-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1767630245;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=46dE8wQn1HVL0x3WTf36oZBc8LAD4VTY8ItMtpTUnY8=;
 b=Mfrlad7tbe4J0qLdqN7oubqgss9UKy/WMdvFp+zdFF6AuzVsi7MDwKfMY94MnD5IaZ/Jke
 aFdRDw1+AQnk/lzCS3pbPrCCZO4AZAZFMiS8yMFWm/rfIDsMAoME6ddSnnFtbogUjAGH2W
 si6W14DBfbQoE+tyrNO1Bb4E0kfiCiM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Mfrlad7t
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
Cc: Eric Dumazet <edumazet@google.com>,
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

On 12/17/25 1:49 AM, Rob Herring wrote:
> On Thu, Dec 11, 2025 at 08:56:52PM +0100, Andrew Lunn wrote:
>> On Thu, Dec 11, 2025 at 08:47:44PM +0100, Ivan Vecera wrote:
>>> Ethernet controllers may be connected to DPLL (Digital Phase Locked Loop)
>>> pins for frequency synchronization purposes, such as in Synchronous
>>> Ethernet (SyncE) configurations.
>>>
>>> Add 'dpll-pins' and 'dpll-pin-names' properties to the generic
>>> ethernet-controller schema. This allows describing the physical
>>> connections between the Ethernet controller and the DPLL subsystem pins
>>> in the Device Tree, enabling drivers to request and manage these
>>> resources.
>>
>> Please include a .dts patch in the series which actually makes use of
>> these new properties.
> 
> Actually, first you need a device (i.e. a specific ethernet
> controller bindings) using this and defining the number of dpll-pins
> entries and the names.

The goal of this patch is to define properties that allow referencing
dpll pins from other devices. I included it in this series to allow
implementing helpers that use the property names defined in the schema.

This series implements the dpll pin consumer in the ice driver. This is
usually present on ACPI platforms, so the properties are stored in _DSD
ACPI nodes. Although I don't have a DT user right now, isn't it better
to define the schema now?

Thinking about this further, consumers could be either an Ethernet
controller (where the PHY is not exposed and is driven directly by the
NIC driver) or an Ethernet PHY.

For the latter case (Ethernet PHY), I have been preparing a similar
implementation for the Micrel phy driver (lan8814) on the Microchip EDS2
board (pcb8385). Unfortunately, the DTS is not upstreamed yet [1], so I
cannot include the necessary bindings here.

Since there can be multiple consumer types (Ethernet controller or PHY),
would it be better to define a dpll-pin-consumer.yaml schema instead
(similar to mux-consumer)?

Thanks for the advice,
Ivan

[1] 
https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=1031294&state=*

