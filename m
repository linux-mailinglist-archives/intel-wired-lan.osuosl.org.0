Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B456AB6027
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 02:26:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69D2D412ED;
	Wed, 14 May 2025 00:26:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GWPdjeTkw3Ie; Wed, 14 May 2025 00:26:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85BDD41247
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747182402;
	bh=C/HMfa+Co2WJH9KVWtwrH7KUUyiJr2eddjLTWfXwMVk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H+SbPfUCr9ch3BsST8U7m4/C7WtKwfhtM36TgD3a36t0WXpF1D2U72v1KqlwwKv2B
	 dH/7ffMqgzpLK8etozEKCOgPL4dPb7GFSKTiRyGosgvU946JPnSh+INYDM9NZmmE6+
	 Nr9ssdd/UjaFxx+McxKXxMQh1KfUnGMuR+iDPHBwcbzK4aqQ1V5GrDP965OOdgZY+w
	 Wc7cCMnaVHq7jpZDuxjCOQsx9HL8OQoAhmR5m2iAtfZOavL6ktHTsrqnVUr8IXgySn
	 bklu0LWr+VgCTjb1TT+hj6mRXlAOJxU4a0ziqTrLiDkLu/hyT6YSnuB+HR1deJvYdH
	 81DEoQ8C2GmQw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85BDD41247;
	Wed, 14 May 2025 00:26:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E6222153
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 00:26:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D757560779
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 00:26:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B_X1dfh3DwRD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 00:26:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D4A2160815
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4A2160815
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4A2160815
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 00:26:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 0ECF6443DC;
 Wed, 14 May 2025 00:26:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 355CFC4CEE4;
 Wed, 14 May 2025 00:26:38 +0000 (UTC)
Date: Tue, 13 May 2025 17:26:37 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Marek Pazdan <mpazdan@arista.com>
Cc: andrew@lunn.ch, aleksander.lobakin@intel.com, almasrymina@google.com,
 andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, daniel.zahka@gmail.com,
 davem@davemloft.net, ecree.xilinx@gmail.com, edumazet@google.com,
 gal@nvidia.com, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 jianbol@nvidia.com, kory.maincent@bootlin.com,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com, willemb@google.com
Message-ID: <20250513172637.2e2b2faf@kernel.org>
In-Reply-To: <20250513224017.202236-1-mpazdan@arista.com>
References: <6f127b5b-77c6-4bd4-8124-8eea6a12ca61@lunn.ch>
 <20250513224017.202236-1-mpazdan@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747182398;
 bh=EUluESMZDGaIO+DzKufN5yyjenqOI9VWfQxvCpUImNk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=S0lmm3iN4inA8geQlL9uLNH9ydXunty8+r6V04c8henGjojGqR5BbLBQH/JSUEVXH
 PrgETC5srsGw9EWkPVnn76z2AqENuxc2tOfMaYpVzHwM9M8lHgl63sx3fVzhDsfSRx
 KxPYNai0lG3ZC6u0kLIQlTnBYSeuHPRbRbYYQ2RYhOMfD8TEFxEbBrhhuWHp/1IwRl
 PJCVUf+aWlIwLmRUXW4MX3qlr5JV1u0OnaaLs6qpv8PIkjuz2wMThus1/rJVVQxqBm
 J5gkXZulYFBuDhYPxIjeZm2OU7+7W6n6zBNiiO/2KhQxLJGcgedE+/Gicy0ZiiW2oD
 /u7wG7JGNsxvQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=S0lmm3iN
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/2] ethtool: qsfp
 transceiver reset, interrupt and presence pin control
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

On Tue, 13 May 2025 22:40:00 +0000 Marek Pazdan wrote:
> Common Management Interface Specification defines
> Management Signaling Layer (MSL) control and status signals. This change
> provides API for following signals status reading:
> - signal allowing the host to request module reset (Reset)
> - signal allowing the host to detect module presence (Presence)
> - signal allowing the host to detect module interrupt (Int)
> Additionally API allows for Reset signal assertion with
> following constraints:
> - reset cannot be asserted if firmware update is in progress
> - if reset is asserted, firmware update cannot be started
> - if reset is asserted, power mode cannot be get/set
> In all above constraint cases -EBUSY error is returned.
> 
> After reset, module will set all registers to default
> values. Default value for Page0 byte 93 register is 0x00 what implies that
> module power mode after reset depends on LPMode HW pin state.
> If software power mode control is required, bit 0 of Page0 byte93 needs
> to be enabled.
> Module reset assertion implies failure of every module's related
> SMBus transactions. Device driver developers should take this into
> consideration if driver provides API for querying module's related data.
> One example can be HWMON providing module temperature report.
> In such case driver should monitor module status and in time of reset
> assertion it should return HWMON report which informs that temperature
> data is not available due to module's reset state.
> The same applies to power mode set/get. Ethtool API has already
> checking for module reset state but similar checking needs to be
> implemented in the driver if it requests power mode for other
> functionality.
> Additionally module reset is link hitful operation. Link is brought down
> when reset is asserted. If device driver doesn't provide functionality
> for monitoring transceiver state, it needs to be implemented in parallel
> to get/set_module_mgmt_signal API. When module reset gets deasserted,
> transceiver process reinitialization. The end of reinitialization
> process is signalled via Page 00h Byte 6 bit 0 "Initialization complete
> flags". If there is no implementation for monitoring this bit in place,
> it needs to be added to bring up the link after transceiver
> initialization is complete.
> 
> Signed-off-by: Marek Pazdan <mpazdan@arista.com>

A few drive by comments, I leave the real review to Andrew.

Instead of posting in-reply-to please add lore links to previous
versions, eg.
v2:
https://lore.kernel.org/all/20250513224017.202236-1-mpazdan@arista.com/ under the --- separator.

I almost missed this posting.

When you post v3 please make sure to CC Ido and Danielle who
implemented the FW flashing for modules.

> diff --git a/Documentation/netlink/specs/ethtool.yaml b/Documentation/netlink/specs/ethtool.yaml
> index c650cd3dcb80..38eebbe18f55 100644
> --- a/Documentation/netlink/specs/ethtool.yaml
> +++ b/Documentation/netlink/specs/ethtool.yaml
> @@ -1528,6 +1528,24 @@ attribute-sets:
>          name: hwtstamp-flags
>          type: nest
>          nested-attributes: bitset
> +  -
> +    name: module-mgmt
> +    attr-cnt-name: __ethtool-a-module-mgmt-cnt
> +    attributes:
> +      -
> +        name: unspec
> +        type: unused
> +        value: 0

no need, just skip the unspec attr and YNL will number the first one
from 1 keeping 0 as rejected type.

> +      -
> +        name: header
> +        type: nest
> +        nested-attributes: header
> +      -
> +        name: type
> +        type: u8

u32 will give us more flexibility later. And attr sizes in netlink are
aligned to 4B so a u8 consumes 4 bytes anyway.

> +      -
> +        name: value
> +        type: u8

Do you think we'll never need to set / clear / change multiple bits at
once? We could wrap the type / value into a nest and support repeating
that nest (multi-attr: true)

> +/**
> + * enum ethtool_module_mgmt_signal_type - plug-in module discrete
> + *	status hardware signals for management as per CMIS spec.
> + * @ETHTOOL_MODULE_MGMT_RESET: Signal allowing the host to request
> + *	a module reset.
> + * @ETHTOOL_MODULE_MGMT_INT: Signal allowing the module to assert
> + *	an interrupt request to the host.
> + * @ETHTOOL_MODULE_MGMT_PRESENT: Signal allowing the module to signal
> + *	its presence status to the host.

Not sure what the use case would be for setting INT and PRESENT.
So the combined API (driver facing) to treat RESET and read-only
bits as equivalent may not be the best fit. Just a feeling tho.

> + */
> +enum ethtool_module_mgmt_signal_type {
> +	ETHTOOL_MODULE_MGMT_RESET = 1,
> +	ETHTOOL_MODULE_MGMT_INT,
> +	ETHTOOL_MODULE_MGMT_PRESENT,

Please define the enums in the YNL spec, see
https://lore.kernel.org/all/20250508193645.78e1e4d9@kernel.org/

