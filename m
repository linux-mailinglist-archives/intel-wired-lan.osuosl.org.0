Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C235BD245D6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jan 2026 13:02:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F12640DAA;
	Thu, 15 Jan 2026 12:02:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QQ_DnOtVW_Bn; Thu, 15 Jan 2026 12:02:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB2DB40DCE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768478525;
	bh=4t6OWwNa16OqY64IWC39VX/QLXVgOz/FT6ehthBksPk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SWqE1w6XZJpx9M0Ypfa37amEeDy3AuGQ/xLLV6qxP6g88ncZIv5nPwYunAjvb6E62
	 Qr6TnzWpNbNALqbPNLCq6ZsHMQt+08RAfYd2HEIUGErRFGxZQ4KUk6rP0GMoNBMgbQ
	 p+XF2YVOYb79OUO7e1d4ky1b5UQv+6htcSb/k52587GCu3UIxs79qJ8vGcnR8Jwqbm
	 8mCmVYM0wIdzdEytvCaPusXeyeQ9oNZu1OPkvjjbMxvE1SGCHqrGjv47S9r2GUPfWw
	 2HQf0aBxGFDHcDRHwmfntnT3UN3HRNC+H7OO0ghudjNuFqRIkOxKu9VrWTpMpjvias
	 j2cFN4aNzEj+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB2DB40DCE;
	Thu, 15 Jan 2026 12:02:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E11A81C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 12:02:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C4BDE60ECA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 12:02:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2aNWyAxhGw0D for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jan 2026 12:02:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A8D9F60EAE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8D9F60EAE
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A8D9F60EAE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 12:02:01 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-255-uI448jlmOA-U__5D4zdMPg-1; Thu,
 15 Jan 2026 07:01:56 -0500
X-MC-Unique: uI448jlmOA-U__5D4zdMPg-1
X-Mimecast-MFC-AGG-ID: uI448jlmOA-U__5D4zdMPg_1768478513
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 3E6D319560B2; Thu, 15 Jan 2026 12:01:52 +0000 (UTC)
Received: from [10.44.32.221] (unknown [10.44.32.221])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 38B0618001D5; Thu, 15 Jan 2026 12:01:44 +0000 (UTC)
Message-ID: <92bfc390-d706-4988-b98d-841a50f10834@redhat.com>
Date: Thu, 15 Jan 2026 13:01:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
References: <20260108182318.20935-1-ivecera@redhat.com>
 <20260108182318.20935-2-ivecera@redhat.com>
Content-Language: en-US
In-Reply-To: <20260108182318.20935-2-ivecera@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768478520;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4t6OWwNa16OqY64IWC39VX/QLXVgOz/FT6ehthBksPk=;
 b=isQK8rJo3JNTh583vehT32QrNPwJahqQMxoh60Q6cHXdehCsjkKDKo3wVx7jrDI6ws5B1u
 T2gwkLU9StzZ0budq/Sg8wNN1w28T7dLUGF0dV9gtpfvq8bi/Hdf87DeVxGa+R1vi7wxsU
 NlCXqAAhcm488pDm8J1HsOTdTIF6bJ8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=isQK8rJo
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/12] dt-bindings: dpll: add
 common dpll-pin-consumer schema
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
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
 Leon Romanovsky <leon@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 linux-rdma@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/8/26 7:23 PM, Ivan Vecera wrote:
> Introduce a common schema for DPLL pin consumers. Devices such as Ethernet
> controllers and PHYs may require connections to DPLL pins for Synchronous
> Ethernet (SyncE) or other frequency synchronization tasks.
> 
> Defining these properties in a shared schema ensures consistency across
> different device types that consume DPLL resources.
> 
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>   .../bindings/dpll/dpll-pin-consumer.yaml      | 30 +++++++++++++++++++
>   MAINTAINERS                                   |  1 +
>   2 files changed, 31 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
> 
> diff --git a/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml b/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
> new file mode 100644
> index 0000000000000..60c184c18318a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
> @@ -0,0 +1,30 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/dpll/dpll-pin-consumer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: DPLL Pin Consumer
> +
> +maintainers:
> +  - Ivan Vecera <ivecera@redhat.com>
> +
> +description: |
> +  Common properties for devices that require connection to DPLL (Digital Phase
> +  Locked Loop) pins for frequency synchronization (e.g. SyncE).
> +
> +properties:
> +  dpll-pins:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      List of phandles to the DPLL pin nodes connected to this device.
> +
> +  dpll-pin-names:
> +    $ref: /schemas/types.yaml#/definitions/string-array
> +    description:
> +      Names for the DPLL pins defined in 'dpll-pins', in the same order.
> +
> +dependencies:
> +  dpll-pin-names: [ dpll-pins ]
> +
> +additionalProperties: true
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 765ad2daa2183..f6f58dfb20931 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7648,6 +7648,7 @@ M:	Jiri Pirko <jiri@resnulli.us>
>   L:	netdev@vger.kernel.org
>   S:	Supported
>   F:	Documentation/devicetree/bindings/dpll/dpll-device.yaml
> +F:	Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
>   F:	Documentation/devicetree/bindings/dpll/dpll-pin.yaml
>   F:	Documentation/driver-api/dpll.rst
>   F:	drivers/dpll/

Based on private discussion with Andrew Lunn (thanks a lot), this is
wrong approach. Referencing directly dpll-pin nodes and using their
phandles in consumers is at least unusual.

The right approach should be referencing dpll-device and use cells
to specify the dpll pin that is used.

Also Krzysztof mentioned there are missing update of supplier_bindings
in drivers/of/property.c to ensure that proper dev_links between
producer and consumer are created.

I will send a v2 of this patch-set with addressed another issues found
by patchwork bot and including the DT schema (this patch) to review
if it is ok.

Thanks,
Ivan

