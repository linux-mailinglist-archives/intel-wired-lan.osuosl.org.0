Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0ABD08500
	for <lists+intel-wired-lan@lfdr.de>; Fri, 09 Jan 2026 10:49:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3482B83834;
	Fri,  9 Jan 2026 09:49:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ms_z_0ZGbrGU; Fri,  9 Jan 2026 09:49:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7582083827
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767952143;
	bh=4ONrBqRGmGSMdJjRm6Tzc6DDmmHhMey+XyPNDkM/zkM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MQM8JYm8eTPmkfXwLmNr9YAPRzptpDsesjGltMZMlBeZiPDieMdS4jgtdEUTNXVkW
	 CovdLdhj3AIfR9w8P/yC5G6A+1nemv9HaY7bqaNc0xny9WlBZ+kQy8vMv6t86Xf8zE
	 ydK22rVeQ/eP669+24hlg18Td9WO+wgpubMsG/44rPZLf6zjfQy7/2/hku6Ho4gj0S
	 hcG7xYpTkADLnvEULypxqxCaCvv/I7pDxMWap2wQLpPghtvudGNmlzcjb/bOlAtk2e
	 BEnRMinu+OXCmgzkjIDHQkCSKk5ktHIfUflxiPwPICivbzHRIPOCbGHaf8ZHDCYI3r
	 fhSs+scaTDK9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7582083827;
	Fri,  9 Jan 2026 09:49:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3399E131
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 09:49:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1A03B401EA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 09:49:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jWeuw5ZgjGdO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 09:49:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=krzk@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 364F64011A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 364F64011A
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 364F64011A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 09:49:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 9098C43F76;
 Fri,  9 Jan 2026 09:48:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3030C4CEF1;
 Fri,  9 Jan 2026 09:48:58 +0000 (UTC)
Date: Fri, 9 Jan 2026 10:48:57 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20260109-wonderful-acoustic-civet-e030da@quoll>
References: <20260108182318.20935-1-ivecera@redhat.com>
 <20260108182318.20935-2-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260108182318.20935-2-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1767952139;
 bh=MIwSXM1zovhg5eHe8m4nTjGNEqVe+MTA5jK9Sla1M04=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SBLbo8yVVaeiwX3jIw0nuglrBWi1Qo1wwdQE7tlVUgeE90V97/GEkd6kcumCWToZy
 8JOZ21uG5bpw505JprJUpum3eJq7r5XtYrvpjod+4v76/ObOXwO4JyOq/pVoH+HUFe
 8CcQTrmCOwMim+omIJcvpgtn2VtNixN6BR2baV7DxMp1dBRoOo8Mw0ZUK6W11gkkaN
 cELSLTHTV8JngEOScacTlJY1lV1RtJ4GbPJSA3Lr6q6QxpnzBKk3u0cUBqRyXnNMVr
 qU4Rti7jY3eOLy9fyJQlilxQOj969N5dcewuBodz7fguQsRgINSw4OG8ryDTnrno69
 L/D58F3AsLxew==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=SBLbo8yV
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
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, netdev@vger.kernel.org,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 08, 2026 at 07:23:07PM +0100, Ivan Vecera wrote:
> Introduce a common schema for DPLL pin consumers. Devices such as Ethernet
> controllers and PHYs may require connections to DPLL pins for Synchronous
> Ethernet (SyncE) or other frequency synchronization tasks.
> 
> Defining these properties in a shared schema ensures consistency across
> different device types that consume DPLL resources.
> 
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  .../bindings/dpll/dpll-pin-consumer.yaml      | 30 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 31 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
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

You miss select. Without it this binding is no-op.

> +description: |

Drop |


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

Binding should go to dtschema. See also commit
3282a891060aace02e3eed4789739768060cea32 in dtschema or other examples
how to add new provider/consumer properties.


Best regards,
Krzysztof

