Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5332B942A57
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2024 11:24:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F209460B53;
	Wed, 31 Jul 2024 09:24:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rff_AJC1azVi; Wed, 31 Jul 2024 09:24:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5065460AFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722417855;
	bh=w8ogmQvqrHqaNpIS3fZ5PvXlmxDqjub2bQZR/nUcv6I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fFcinCzdd4E6lAdsqo08zeJkpiDpGARXY85N6Dkeo2gd0eMvfAmCYzguXWd7mdfLQ
	 POAi+taAvkFyGgAxJZn+Lu2ZMlnRF0EHFfTmRXBcm45/QCoM8hKJRkNpAj1HGRlOLS
	 lQcPP5AyQrFOVT9jsLQG+8q0Dg7EVOhqoWkHi3/D12TPwLzRIZN7VbXV2T5pgpdUZV
	 PwcMgAip//mcw12Ejc9R1af4+wTldgXQH9PzwfwibXZ7+uGLBV1BTmwWWZq2swHpGr
	 pcn1vllhEgdi1ywlZYLPvZZkCancN8QOlbI/yAEY48uEHl35fQHQPdUY5j0mCLEydB
	 dDwu2E06PcoqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5065460AFA;
	Wed, 31 Jul 2024 09:24:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A60EA1BF41A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 09:24:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 910C160AFA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 09:24:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mi4CzBQ_x_l9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2024 09:24:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C492860ACC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C492860ACC
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C492860ACC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 09:24:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 650D36227A;
 Wed, 31 Jul 2024 09:24:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A131FC116B1;
 Wed, 31 Jul 2024 09:24:08 +0000 (UTC)
Date: Wed, 31 Jul 2024 10:24:06 +0100
From: Simon Horman <horms@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20240731092406.GQ1967603@kernel.org>
References: <20240730105121.78985-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240730105121.78985-1-wojciech.drewek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722417850;
 bh=ZLB+X0MuclA0/c4BIX3Y2yEJHGOn3Y6dSl1qQ62XHiw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bSYW7iBlRnEqzDG0tJwGwxiWPMeA8TUY0/VhZ0eR7Px5XINLNomp/mGU/gPfWY1Bd
 nJdF33tEJfygnG/grPpj9v+tEA0fVV/kY4fkiZ+O/AqkgQN/kLaSrIletXuGn7Y20l
 EyEee+CFJZEwEG85smmKNV/DZnUbgQi6BUdCLSct002wKPDKueSFJI01T5ZhbGqNCl
 OHKgXdBlc+mnvyVekCb9CaItq5P6baFSGWv7MwlAhNBAlqVsn2RfZ8uMS7YUArBYvs
 pnHv+tMenkHKUXSzH8v8SnsJIE3p+C9It0jdg8BpBwKAML8283ChX39qhc1C7DTSUX
 3bpnBwVM2UP+w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=bSYW7iBl
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Implement ethtool reset
 support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 30, 2024 at 12:51:21PM +0200, Wojciech Drewek wrote:
> Enable ethtool reset support. Each ethtool reset
> type is mapped to the CVL reset type:
> ETH_RESET_MAC - ICE_RESET_CORER
> ETH_RESET_ALL - ICE_RESET_GLOBR
> ETH_RESET_DEDICATED - ICE_RESET_PFR
> 
> Multiple reset flags are not supported.
> Calling any reset type on port representor triggers VF reset.
> 
> Command example:
> GLOBR:
> $ ethtool --reset enp1s0f0np0 all
> CORER:
> $ ethtool --reset enp1s0f0np0 mac
> PFR:
> $ ethtool --reset enp1s0f0np0 dedicated
> VF reset:
> $ ethtool --reset $port_representor mac
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 64 ++++++++++++++++++++
>  1 file changed, 64 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 39d2652c3ee1..00b8ac3f1dff 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -4794,6 +4794,68 @@ static void ice_get_ts_stats(struct net_device *netdev,
>  	ts_stats->lost = ptp->tx_hwtstamp_timeouts;
>  }
>  
> +/**
> + * ice_ethtool_reset - triggers a given type of reset
> + * @dev: network interface device structure
> + * @flags: set of reset flags
> + *
> + * Note that multiple reset flags are not supported
> + */
> +static int ice_ethtool_reset(struct net_device *dev, u32 *flags)
> +{

nit: Please include a "Return:" or "Returns:" section in the Kernel doc
     of new functions that return a value.
     (i.e. also for ice_repr_ethtool_reset)

     Flagged by ./scripts/kernel-doc -none -Wall

...
