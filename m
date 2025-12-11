Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AE8CB7268
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 21:27:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19D6B60716;
	Thu, 11 Dec 2025 20:27:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id shvoHWTHfhib; Thu, 11 Dec 2025 20:27:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EA8B6070C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765484839;
	bh=owhNvb4BmlJlqJlDYQvQvwlr0ivxIOfTUUdM9/4+rQM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0z1yi/lXD/BQBZ0QrUmk88eQNQq81GaUrzNizdY8pljCqoOaeSVRT/ZrA8zNBiVft
	 zQvT1O0Q0PyxlFiwshONSpG4KA7VKhZn4DTX55bIZjJec5YomWYx7wJ4pHJnyfr91S
	 65tVvdMk4B0O+uP3KIGG8stWZDS+0wXK3fSdLOjsc6l/Y9w5JkQoxvcvHS/ASZaRWu
	 kr3FBbx5LDn/LIWXKjyy3RZ9lGWSPGl8OqcSi1Ku9vMNUe+joSzTdqJsanlIkVpFY5
	 1mQGLUZAHTGq2gtYRHv5x+GN5cca3VNhM5Ee+bDErmAAK+Zgnrladu9kxlL5XVYJT/
	 QrQdzud/spFlg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EA8B6070C;
	Thu, 11 Dec 2025 20:27:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 687842C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 20:27:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A317606F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 20:27:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mMd4j97-wkZK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 20:27:16 +0000 (UTC)
X-Greylist: delayed 1793 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 11 Dec 2025 20:27:15 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7534F606FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7534F606FF
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7534F606FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 20:27:15 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1vTmmS-00GfyF-J7; Thu, 11 Dec 2025 20:56:52 +0100
Date: Thu, 11 Dec 2025 20:56:52 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <2de556f0-d7db-47f1-a59e-197f92f93d46@lunn.ch>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-2-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211194756.234043-2-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=owhNvb4BmlJlqJlDYQvQvwlr0ivxIOfTUUdM9/4+rQM=; b=i7Qp0ceJdAJQniU1oAQZ2ziaWY
 /9miFVeSUnvCNeDVJB/0egU/rrhzjvqhGrQZuLqhojFepglZJoBq+Ees43SbR60fuyLoqg/qPMqz5
 +bih+o6neGABIFBASpxL67XtScpm0bEL+d9yrg2G0XpCt+CA/vVnxSY9omYavlfZbcc4=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=i7Qp0ceJ
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
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
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

On Thu, Dec 11, 2025 at 08:47:44PM +0100, Ivan Vecera wrote:
> Ethernet controllers may be connected to DPLL (Digital Phase Locked Loop)
> pins for frequency synchronization purposes, such as in Synchronous
> Ethernet (SyncE) configurations.
> 
> Add 'dpll-pins' and 'dpll-pin-names' properties to the generic
> ethernet-controller schema. This allows describing the physical
> connections between the Ethernet controller and the DPLL subsystem pins
> in the Device Tree, enabling drivers to request and manage these
> resources.

Please include a .dts patch in the series which actually makes use of
these new properties.

	Andrew
