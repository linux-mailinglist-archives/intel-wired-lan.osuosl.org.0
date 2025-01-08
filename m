Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CB3A0533A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jan 2025 07:33:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D284560740;
	Wed,  8 Jan 2025 06:33:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VqatdnXDQefi; Wed,  8 Jan 2025 06:33:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD3556071F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736318017;
	bh=3aC2/0cF2Oz7Z6OQG6riEEtl8Xyqbgxpzt/IpQNjzTc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t9iepXVbYdOYeBs7Spz8reeEAtD+c5s34izopCzzvM9zL9LSgAGbTF19Aa2fNA71h
	 5pwy/xXu5/01hL+MyVrzSvaa8N6uQxl/opco+vv0N/RXumzHFpEc74vk/5o6coWWtq
	 yWIXSIlbc6TnkcOqrk4ItdG/E7LC8ZxXnpqxm0+Sct02bZlD9ZtYziA+hxic182jup
	 bJ5HTbb/3hsJ6l8k9wdKc7RUrIpiDb5bnyBmmaDMxdrn7XDiwjeLpf86/ggRHNrmKY
	 eQZqtHg7iF/9yIYGZnCAk6UnsT0pmDYMsA2HX1KV/qomaXkSkNXZEaev26HcMWvmVr
	 pqglUmV3UASrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD3556071F;
	Wed,  8 Jan 2025 06:33:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id AB92F1EB8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 06:33:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 97B394013B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 06:33:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HKibJoz3J4TK for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jan 2025 06:33:35 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 35E62404EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35E62404EB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 35E62404EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 06:33:34 +0000 (UTC)
X-CSE-ConnectionGUID: mbhCa3GSSXSH0law0cHKvg==
X-CSE-MsgGUID: tZZrOrYBQ4qXBbYs1RT3YQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="47521172"
X-IronPort-AV: E=Sophos;i="6.12,297,1728975600"; d="scan'208";a="47521172"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 22:33:35 -0800
X-CSE-ConnectionGUID: TecSxbjGQvKbnbP5KhRkPg==
X-CSE-MsgGUID: kI9T8cReSyu5/EPHLmXTuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,297,1728975600"; d="scan'208";a="103505686"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 22:32:43 -0800
Date: Wed, 8 Jan 2025 07:29:24 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z34bRACSRyOWRQoM@mev-dev.igk.intel.com>
References: <20250108053614.53924-1-dheeraj.linuxdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250108053614.53924-1-dheeraj.linuxdev@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736318016; x=1767854016;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Y+3WLFUHiecuWtf4CXQDQ2ItKyEPSslOv3K2SCmEsxo=;
 b=iwKfgJn2no9ZXHJbFfc5K9X1F40fV3NdOs2MFPHnXY9MxqqfqdFHFFoK
 gVdlOrsWwiwahTkoxuxktkXUeXwc/3wDXyttfmSYcjKH0Q2JUmhK+OcpW
 VIESyLGERkbJ5HHHcR0xAw96hy6hrPJK4UGHiAGbp9hu4q2arehNnQMxO
 6PBQ+7Y7gA+dvxwBf/kFlxqkotdkzRIw8bmbi/V8buxV3D5BMRr1aoT3z
 v3yosI6AEXn78nPJsR6zTVy5E/dLrKZU+0wS057cPJTZnEeSHAp3OuK86
 mI1LHkJH0Rtx/Wl4DNFCypqRdHqmFq8+oU0q/iKaNn8VRjpS2s2qjWi37
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iwKfgJn2
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove redundant
 self-assignments in ACI command execution
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

On Wed, Jan 08, 2025 at 11:06:14AM +0530, Dheeraj Reddy Jonnalagadda wrote:
> Remove redundant statements in ixgbe_aci_send_cmd_execute() where
> raw_desc[i] is assigned to itself. These self-assignments have no
> effect and can be safely removed.
> 
> Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command Interface")
> Closes: https://scan7.scan.coverity.com/#/project-view/52337/11354?selectedIssue=1602757
> Signed-off-by: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index 683c668672d6..408c0874cdc2 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -145,7 +145,6 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>  	if ((hicr & IXGBE_PF_HICR_SV)) {
>  		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>  			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
> -			raw_desc[i] = raw_desc[i];

raw_desc should be always in le32, probably there was a conversion which
was removed between patchset versions. Adding orginal author in CC to
confirm that no conversion here is fine.

Thanks,
Michal

>  		}
>  	}
>  
> @@ -153,7 +152,6 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>  	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
>  		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>  			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
> -			raw_desc[i] = raw_desc[i];
>  		}
>  	}
>  
> -- 
> 2.34.1
