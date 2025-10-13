Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8D7BD5656
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Oct 2025 19:12:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7BBE60E37;
	Mon, 13 Oct 2025 17:12:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UAbMvCqVPoK6; Mon, 13 Oct 2025 17:12:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48EA460E3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760375524;
	bh=sZscqZKkrNU08pkD7g5GNPeeLKmgl6YVw6Z3iAshFp0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=d0zyh3XQnfxKetKhbuYCIzPMWlfoKKInq+VqqbhglZ3jLSg3XDSOvXdkm1gHcN8TD
	 ry6Q8SGzIMr2ldKnPRkIn76KYtd44hYfPZeSEzBVwk4p82wCPINkfJyllN+KcVKyry
	 EZBXGIIa58ZYVeisJI2eJaDfo1qpbUNFhkfB7RJfbBm9YiP6L0h5kbrHXBM/XKeCim
	 yVdpbaQAac9ecSPN6okRPUtoJdV8UNiIyU6aeBlqYs1F/WSXV1Nqd/2NbOyuI1BliL
	 uLTZbUewoXk++AhIMBLmxHg8FL57dEb58WTmVqjj4suYTdzc3kgHrP7kZVAx0zwpAn
	 iWk9s5NPNHqgA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48EA460E3B;
	Mon, 13 Oct 2025 17:12:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4EE0A12B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 17:12:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 407B160E2C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 17:12:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B59PcfArEdOI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Oct 2025 17:12:01 +0000 (UTC)
X-Greylist: delayed 2388 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 13 Oct 2025 17:12:00 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 156DD60E1B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 156DD60E1B
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 156DD60E1B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 17:12:00 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1v8LSo-00AoSk-Pc; Mon, 13 Oct 2025 18:31:58 +0200
Date: Mon, 13 Oct 2025 18:31:58 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Birger Koblitz <mail@birger-koblitz.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <b5dd3a3e-2420-4c7c-b690-3799fac14623@lunn.ch>
References: <20251013-10gbx-v1-1-ab9896af3d58@birger-koblitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251013-10gbx-v1-1-ab9896af3d58@birger-koblitz.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=sZscqZKkrNU08pkD7g5GNPeeLKmgl6YVw6Z3iAshFp0=; b=pA2g89KPSLdEPDFcmMTLhja5qj
 npwWUWySPoFAPBw5jdlzu5ouH/bNi5WljygVD0FlY9joqRK77CpqTut6tvbuhtwsdJ7FGXcV3tLx6
 TqQVLWwXXbBP0Q1GVHDceWW4NMO5Kd+7T8XUMB5ZD8nYtPTIIJNLc1GbnRaH3vL0uVkQ=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=pA2g89KP
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: Add 10G-BX support
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

> @@ -1678,6 +1679,26 @@ int ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
>  			else
>  				hw->phy.sfp_type =
>  					ixgbe_sfp_type_1g_bx_core1;
> +		/* Support Ethernet 10G-BX, checking the Bit Rate
> +		 * Nominal Value as per SFF-8472 to be 12.5 Gb/s (67h) and
> +		 * Single Mode fibre with at least 1km link length
> +		 */
> +		} else if ((!comp_codes_10g) && (bitrate_nominal == 0x67) &&
> +			   (!(cable_tech & IXGBE_SFF_DA_PASSIVE_CABLE)) &&
> +			   (!(cable_tech & IXGBE_SFF_DA_ACTIVE_CABLE))) {
> +			status = hw->phy.ops.read_i2c_eeprom(hw,
> +					    IXGBE_SFF_SM_LENGTH,
> +					    &sm_length);

It seems like byte 15, Length (SMF), "Link length supported for single
mode fiber, units of 100 m" should be checked here. A 255 * 100m would
be more than 1Km, the condition you say in the comment.

	Andrew
