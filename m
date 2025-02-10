Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5F9A2E3C5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 06:40:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 636B060A62;
	Mon, 10 Feb 2025 05:40:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id twX38IX2ydmO; Mon, 10 Feb 2025 05:40:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CBD86076B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739166027;
	bh=dNA45fpjznePMkDraIDEu5jxG7yHJ3o/rcLBy1Mz6f4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nozGQlaWdGfSfeHiqrL5wGE/JwwpCOsMH9dtrMDD+JlmfPyZk/YuPqFmgG+jfW1rk
	 PqottCyPcU5SwoFf3CLemQWjQVSFajochggl5M8Z/DZL7dLo2UfdXDfnndKb+oFvoy
	 vhBYGl6bJXVZwlZKFG/hP3AxZYrv4MncjL6LjwpwxORutVyl0OAbIBPCWEql0OKPK8
	 gkPAEi2nm38fCN6rwhsL80/OcVnRv4R2AXtEw+wAkVMC+hVEs+GWL/7KwuqPjRBLGK
	 3S+0U/tLXovj921VKJ0JozjKrxwVWW3RQR13U3Ve+XssHgLdv/+7MW4848bt0VdmfD
	 E9GUftbx+6txA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CBD86076B;
	Mon, 10 Feb 2025 05:40:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1AB0D199
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 05:40:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F17996076B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 05:40:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZlOZorkC7FB7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 05:40:25 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D12CC6071C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D12CC6071C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D12CC6071C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 05:40:24 +0000 (UTC)
X-CSE-ConnectionGUID: rZ6OffdDQpCIBydurGRd+A==
X-CSE-MsgGUID: dcTUcquARUKfHySFAQkwnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11340"; a="39754640"
X-IronPort-AV: E=Sophos;i="6.13,273,1732608000"; d="scan'208";a="39754640"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2025 21:40:24 -0800
X-CSE-ConnectionGUID: dY9cPuvhSvaibce0BbRdBg==
X-CSE-MsgGUID: k2hJYR98S/qGieL3zs4VEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="135343330"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2025 21:40:20 -0800
Date: Mon, 10 Feb 2025 06:36:43 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Ethan Carter Edwards <ethan@ethancedwards.com>
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Simon Horman <horms@kernel.org>, Stefan Wegrzyn <stefan.wegrzyn@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Message-ID: <Z6mQa0l6Y4tb9BrY@mev-dev.igk.intel.com>
References: <20250209-e610-self-v1-1-34c6c46ffe11@ethancedwards.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250209-e610-self-v1-1-34c6c46ffe11@ethancedwards.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739166025; x=1770702025;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wqqJHWBJ+k5VNxqZ8rwbBAUHuSes0w4hjTbau4Q3OF4=;
 b=hPrxWAEmQ45/FrtRrdkZRdbd8qU26I2apEnXb3E8SP090tuJLOrZ1BHl
 9+ZmrxxT1m9w6tmksh52qVUPf8fvrs6zTEYWAi+MDe0uQyrRjqQXILRlo
 NtweJbh/tqLoYa16JlSQpXrRzCo4lm9ZFnFxja8L1QV+c02Nb9LMrYm0I
 oMdcxtaQgHaOApC+lBfABk8hhQsU9edzJs6R1XqBx4uRkFUmTeER7bxfo
 yZggIe12NpQyBdh9qd4Bxs7wnYG2fpqJAEKNvsAvzblknKt1Trr33SLx2
 dMnaZj3V+Lvj9vxQyUJd7Ih3KLMOkK9tXTn0q7HNzmgpvjwntHygrUOGZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hPrxWAEm
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: remove self assignment
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

On Sun, Feb 09, 2025 at 11:47:24PM -0500, Ethan Carter Edwards wrote:
> Variable self assignment does not have any effect.
> 
> Addresses-Coverity-ID: 1641823 ("Self assignment")
> Fixes: 46761fd52a886 ("ixgbe: Add support for E610 FW Admin Command Interface")
> Signed-off-by: Ethan Carter Edwards <ethan@ethancedwards.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index 683c668672d65535fca3b2fe6f58a9deda1188fa..6b0bce92476c3c5ec3cf7ab79864b394b592c6d4 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -145,7 +145,6 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>  	if ((hicr & IXGBE_PF_HICR_SV)) {
>  		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>  			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
> -			raw_desc[i] = raw_desc[i];
>  		}
>  	}
>  

Thanks for the patch. This change is already in progress [1] (I hope,
waiting for v3).

[1] https://lore.kernel.org/netdev/20250115034117.172999-1-dheeraj.linuxdev@gmail.com/

Thanks,
Michal

> 
> ---
> base-commit: a64dcfb451e254085a7daee5fe51bf22959d52d3
> change-id: 20250209-e610-self-85eac1f0e338
> 
> Best regards,
> -- 
> Ethan Carter Edwards <ethan@ethancedwards.com>
