Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A7AAFD6DA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 21:07:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F15B6118F;
	Tue,  8 Jul 2025 19:06:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7u1BvaEIj_MD; Tue,  8 Jul 2025 19:06:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEFD261182
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752001604;
	bh=YghdlEuKcBq2cE9T/ctEbsa2Ncn2HkLqLMZx30YCB8c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Lh7MexyB4TLLjdUNxI70M881IZxpFyHYF1aiKkKBvX2BE3IvD+in9ZvQSbIvf/7Vd
	 UOy2zvBDIE0cRRxNejuPqjGP8D+CPil0xH8+9bxSg4S/LDRMYysBnp2Cz9I4Gt/nHV
	 IxOFUDEOjjXGnvp0Yx8XthxIr/LkSyF8v33QwtvpUZ3bQn8HOi6Gl5bNxTfvTXQWvQ
	 wTyGjFE+ZdJcoEqmsg+oRhDGYtRWH1shNOvt+jJjtPkjgUluuhWp1Jt5z42CWSpF+G
	 bIHh8ufRNFLcT59baOYcR7723MapGAg8a7Ag2KQXY+T5hBo21ZYwCoNtEbmUis8epP
	 sMAfW5DDgGVgA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEFD261182;
	Tue,  8 Jul 2025 19:06:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 423CEB0B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:06:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 33B8F6116E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:06:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fA49Tz8SNfD2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 19:06:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 79C996117D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79C996117D
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 79C996117D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 19:06:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4BD125C62B3;
 Tue,  8 Jul 2025 19:06:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E99D3C4CEED;
 Tue,  8 Jul 2025 19:06:37 +0000 (UTC)
Date: Tue, 8 Jul 2025 20:06:35 +0100
From: Simon Horman <horms@kernel.org>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250708190635.GW452973@horms.kernel.org>
References: <b4ee0893-6e57-471d-90f4-fe2a7c0a2ada@jacekk.info>
 <e199da76-00d0-43d3-8f61-f433bc0352ad@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e199da76-00d0-43d3-8f61-f433bc0352ad@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1752001600;
 bh=DlUlzmq1XBA7NBkVzqscejjs37rD2o/CbIOz3pFjXzQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fryarhpIK+1nP7tSgoPcDvxI9XjtY+Hli2RSEAqJ4O9AK/HR81cZROSRp+wPlcQ7y
 iVjB/LFs7eZE55MzPELBmpBAmLczTovO5lCJiD3YG7rX+buEhZXrU3DUfEidusZPwk
 t2Zo1TYe0sjPJZqWIgG8+LK5G/Gf3Gl4hiLQJWn6fPbT1GfsD7m0cUXTOmvgGmKXQu
 U+aofVBWnsfZYyL+77DDDexbpDCOI0BgvYG7viab7Zhk67wruk+5Fs9d+xavMOx/Cp
 UjiWP4nSa4Q0cUcYHgtxSCroRDTPAyw8S0n9PARX4PpcePNDTaL+fcGKz1Hormv8wg
 nTExBnBWr09yQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=fryarhpI
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/5] e1000: drop
 unnecessary constant casts to u16
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

On Tue, Jul 08, 2025 at 10:16:52AM +0200, Jacek Kowalski wrote:
> Remove unnecessary casts of constant values to u16.
> Let the C type system do it's job.
> 
> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> Suggested-by: Simon Horman <horms@kernel.org>
> ---
>  drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 2 +-
>  drivers/net/ethernet/intel/e1000/e1000_hw.c      | 4 ++--
>  drivers/net/ethernet/intel/e1000/e1000_main.c    | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> index d06d29c6c037..d152026a027b 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> @@ -806,7 +806,7 @@ static int e1000_eeprom_test(struct e1000_adapter *adapter, u64 *data)
>  	}
>  
>  	/* If Checksum is not Correct return error else test passed */
> -	if ((checksum != (u16)EEPROM_SUM) && !(*data))
> +	if ((checksum != EEPROM_SUM) && !(*data))
>  		*data = 2;

nit: If there is a v3 for some other reason, then I think
     you could also drop the inner parentheses here.

>  
>  	return *data;
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
> index f9328f2e669f..0e5de52b1067 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
> @@ -3970,7 +3970,7 @@ s32 e1000_validate_eeprom_checksum(struct e1000_hw *hw)
>  		return E1000_SUCCESS;
>  
>  #endif
> -	if (checksum == (u16)EEPROM_SUM)
> +	if (checksum == EEPROM_SUM)
>  		return E1000_SUCCESS;
>  	else {
>  		e_dbg("EEPROM Checksum Invalid\n");
> @@ -3997,7 +3997,7 @@ s32 e1000_update_eeprom_checksum(struct e1000_hw *hw)
>  		}
>  		checksum += eeprom_data;
>  	}
> -	checksum = (u16)EEPROM_SUM - checksum;
> +	checksum = EEPROM_SUM - checksum;
>  	if (e1000_write_eeprom(hw, EEPROM_CHECKSUM_REG, 1, &checksum) < 0) {
>  		e_dbg("EEPROM Write Error\n");
>  		return -E1000_ERR_EEPROM;
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
> index d8595e84326d..09acba2ed483 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> @@ -313,7 +313,7 @@ static void e1000_update_mng_vlan(struct e1000_adapter *adapter)
>  		} else {
>  			adapter->mng_vlan_id = E1000_MNG_VLAN_NONE;
>  		}
> -		if ((old_vid != (u16)E1000_MNG_VLAN_NONE) &&
> +		if ((old_vid != E1000_MNG_VLAN_NONE) &&

Ditto.

But more importantly, both Clang 20.1.7 W=1 builds (or at any rate, builds
with -Wtautological-constant-out-of-range-compare), and Smatch complain
that the comparison above is now always true because E1000_MNG_VLAN_NONE is
-1, while old_vid is unsigned.

Perhaps E1000_MNG_VLAN_NONE should be updated to be UINT16_MAX?


>  		    (vid != old_vid) &&
>  		    !test_bit(old_vid, adapter->active_vlans))
>  			e1000_vlan_rx_kill_vid(netdev, htons(ETH_P_8021Q),
> -- 
> 2.47.2
> 
