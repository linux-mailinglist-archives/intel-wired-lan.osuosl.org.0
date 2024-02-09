Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6EA84FA75
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Feb 2024 18:02:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E8CF541DAF;
	Fri,  9 Feb 2024 17:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gt7y21SyWl9I; Fri,  9 Feb 2024 17:02:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D70DE41C13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707498132;
	bh=iG44eswF+02dyR8FkmsxSAMtrPVQDcHharHQd4YJAXY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xEtaA9THEwhBMygpfLEz3fSwv7ciABwYqAhyCqk4ScGfaZDkiTydIcBotu0ZPG77r
	 aVUaz8iwwi5XOIufpHL1ATYm8y+Tw8PE2axCg3UOYS3LFK+cRLTur91eWUc29McYjI
	 dkPHUA3xe7+B51eZcuYddOo9j8ztL1AU2ENFyMIYLWyoBqEGI5N0TRRPvE+rE0sEi9
	 T1oNgL5I5cUY/x3SL1Q58UBZd3ideociyBkhXixdoTkqqqlLE27KVoLhe8ioNcyJ/f
	 AbTv2ZSoPHvUzTZ+TU3LRIfOKmkHDIVlf0YVf5zMMavesg0waBHrt924de+Zru5gu/
	 yGGigXOTb11MA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D70DE41C13;
	Fri,  9 Feb 2024 17:02:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D3701BF389
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 17:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 34E1541A79
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 17:02:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3UzjCZVLmRIp for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Feb 2024 17:02:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EFE1641AC9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFE1641AC9
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EFE1641AC9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 17:02:05 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id CA548CE0224;
 Fri,  9 Feb 2024 17:02:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FAFDC433F1;
 Fri,  9 Feb 2024 17:01:59 +0000 (UTC)
Date: Fri, 9 Feb 2024 17:00:26 +0000
From: Simon Horman <horms@kernel.org>
To: Lukasz Plachno <lukasz.plachno@intel.com>
Message-ID: <20240209170026.GB1533412@kernel.org>
References: <20240209101823.27922-1-lukasz.plachno@intel.com>
 <20240209101823.27922-3-lukasz.plachno@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240209101823.27922-3-lukasz.plachno@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1707498121;
 bh=qhbgSvAgxPjP/9ZwtR46TunoUtvWH6BA76JdIbxr7k0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Fn1NBWl0V5uL6nOT8L+D3b7lp5CfAJ2taUHdg1oqVpEH2vM7MMWsgLa+CzDVGSMj5
 bmew4w+hpYcn3hoD4z9D1Q52KEeLlNZbIatKDtSJo5CWlfH3vp/nxqjYmtXu4/jegi
 s6sVQZZV/vq7IDV/iXe8crwbud262KbZSfEz/3VDauA7ycJaDYKVZ/QvVCJaOAbOl8
 sDqC26HWaWA9PoYeJR0gchNqer4LF703NmFfhf7HzvvafccflVfBMpXL10v+PudrjN
 +T+K3LtZnQhyl3V92qYUoYp/kiEqzQfz0YLVnFvqhLxu9Z/M1cwRBmCNSaegRUdJm3
 mjJywghtoFMsQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Fn1NBWl0
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 2/2] ice: Implement
 'flow-type ether' rules
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
Cc: pmenzel@molgen.mpg.de, brett.creeley@amd.com, netdev@vger.kernel.org,
 Jakub Buchocki <jakubx.buchocki@intel.com>, aleksander.lobakin@intel.com,
 intel-wired-lan@lists.osuosl.org,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Feb 09, 2024 at 11:18:23AM +0100, Lukasz Plachno wrote:

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
> index 1f7b26f38818..ec8a84b80a73 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
> @@ -4,6 +4,8 @@
>  #include "ice_common.h"
>  
>  /* These are training packet headers used to program flow director filters. */
> +static const u8 ice_fdir_eth_pkt[22] = {0};
> +

I think it was agreed to drop the "{0}" in the review of v5 as it is
unnecessary.

...
