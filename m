Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E50ECAE6173
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 11:53:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9C3E81151;
	Tue, 24 Jun 2025 09:53:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mj2PmM-wvOSU; Tue, 24 Jun 2025 09:53:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62B8B81127
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750758801;
	bh=DgY1oEAnmupr2fJD+to2MfR6XTRfzNdUVI9fZq4+pzk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Xa2vkymTpItflZc841TnYgftGnmk6tGbMQKOFVlE5ffuv9Gy/TCbjq4mqbKBIGWHs
	 OHEBiqmdurKZ+mXiGJRQv7eO7oSG5/v/JWx1yZ+Ktk26vIrIfARlI750sLLUmj2van
	 TXloR/EYXiGUQQZFICzoUEuUTNQqaF/yFlNkbXzjLf5lewwgNRay6ehyBL07gUFQY+
	 DhPN5i4vSI7ZuaXcbks21RiJf9NksGISFcvBfZjNA16p9xKuoD5bNVliKHt23oKXxi
	 42KzNB/nDt9JkVIfz4UNaRGoE96N1++fdjaV25eeWOqfIMLrIZyTgDlQIV5MrfDiKI
	 t6Evey+0WOIhw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62B8B81127;
	Tue, 24 Jun 2025 09:53:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id ABADE154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 09:53:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9CDB38100D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 09:53:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Blzt5DmNhm8y for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 09:53:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0773B80E74
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0773B80E74
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0773B80E74
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 09:53:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5E2115C63C0;
 Tue, 24 Jun 2025 09:51:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AD82C4CEE3;
 Tue, 24 Jun 2025 09:53:15 +0000 (UTC)
Date: Tue, 24 Jun 2025 10:53:13 +0100
From: Simon Horman <horms@kernel.org>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250624095313.GB8266@horms.kernel.org>
References: <fe064a2c-31d6-4671-ba30-198d121782d0@jacekk.info>
 <b7856437-2c74-4e01-affa-3bbc57ce6c51@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b7856437-2c74-4e01-affa-3bbc57ce6c51@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750758797;
 bh=5XAANTXu2gUsMh7qkGkdsQ8FsRgV4pWlfxM+TMLWEqc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kcgmJv7Oh6Z55J+dMDRSbEDApbfm0GMGr/iBroe01z57sF4pu8159EHNG15Z7RWst
 UN6v6ULBSKQ0VNmcSy75aH3eEP3tnqzjL9BiW5Ts3JoPBuFA+awnTJ05JpqCmJC11V
 bYNizUAEgtY93RtqDHBdnXI7Y2T+ughdJbFth5Dlt53J0Iy4JUYJZp7yNEV6s81NZC
 cR1Jv8ECkGHTG345c2CGTY0f8XJ+xIpUpsTUWyh/8xbS4Pi2/+kA4BXKDUXdlVShmJ
 SAuc3Rnisb3Yf2/qBQJoZL3w12dyVtFFX7/5wqHcuLhHqJrP5TdoYGikGQsOxCfufC
 lhEp53L3Y6J6w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=kcgmJv7O
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] e1000e: ignore factory-default
 checksum value on TGP platform
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

On Mon, Jun 23, 2025 at 06:01:16PM +0200, Jacek Kowalski wrote:
> As described by Vitaly Lifshits:
> 
> > Starting from Tiger Lake, LAN NVM is locked for writes by SW, so the
> > driver cannot perform checksum validation and correction. This means
> > that all NVM images must leave the factory with correct checksum and
> > checksum valid bit set.
> 
> Unfortunately some systems have left the factory with an empty checksum.
> NVM is not modifiable on this platform, hence ignore checksum 0xFFFF on
> Tiger Lake systems to work around this.
> 
> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> Fixes: 4051f68318ca9 ("e1000e: Do not take care about recovery NVM checksum")
> Cc: stable@vger.kernel.org
> ---
> v2: new check to fix yet another checksum issue
>  drivers/net/ethernet/intel/e1000e/defines.h | 1 +
>  drivers/net/ethernet/intel/e1000e/nvm.c     | 5 +++++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/ethernet/intel/e1000e/defines.h
> index 8294a7c4f122..01696eb8dace 100644
> --- a/drivers/net/ethernet/intel/e1000e/defines.h
> +++ b/drivers/net/ethernet/intel/e1000e/defines.h
> @@ -637,6 +637,7 @@
>  
>  /* For checksumming, the sum of all words in the NVM should equal 0xBABA. */
>  #define NVM_SUM                    0xBABA
> +#define NVM_SUM_FACTORY_DEFAULT    0xFFFF
>  
>  /* PBA (printed board assembly) number words */
>  #define NVM_PBA_OFFSET_0           8
> diff --git a/drivers/net/ethernet/intel/e1000e/nvm.c b/drivers/net/ethernet/intel/e1000e/nvm.c
> index e609f4df86f4..37cbf9236d84 100644
> --- a/drivers/net/ethernet/intel/e1000e/nvm.c
> +++ b/drivers/net/ethernet/intel/e1000e/nvm.c
> @@ -558,6 +558,11 @@ s32 e1000e_validate_nvm_checksum_generic(struct e1000_hw *hw)
>  		checksum += nvm_data;
>  	}
>  
> +	if (hw->mac.type == e1000_pch_tgp && checksum == (u16)NVM_SUM_FACTORY_DEFAULT) {

I see that a similar cast is applied to NVM_SUM. But why?
If it's not necessary then I would advocate dropping it.

> +		e_dbg("Factory-default NVM Checksum on TGP platform - ignoring\n");
> +		return 0;
> +	}
> +
>  	if (checksum != (u16)NVM_SUM) {
>  		e_dbg("NVM Checksum Invalid\n");
>  		return -E1000_ERR_NVM;
> -- 
> 2.47.2
> 
> 
