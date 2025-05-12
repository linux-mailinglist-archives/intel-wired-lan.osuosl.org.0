Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A0925AB37DA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 14:53:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F08A40900;
	Mon, 12 May 2025 12:53:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1OVz8CdKrvTt; Mon, 12 May 2025 12:53:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2AEB408D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747054427;
	bh=z4iya4jAUxkUmmh6qCooNoqqDjCh+6NwAKUAFIMK9pE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2JV/N7dECzR5+teBsru4eE5btN72Yo3SOjiTIuqlUbtQpf/SSGul8XDQu43MwBKEH
	 hzn5HxwOsF33VSwVFdpCSuZEODjFDz5C2oX6tvxgKwYPrlwkUc5wGlzXFmzUmbg42R
	 FRoSpQC4+FlU7Fz0MnKmi0W87uUQ5JTw2rO4Bedl428CrKYys4/i3eLVpjB0OD3XM3
	 SD8ukOLbl8qOFnB6unxQFjnR7ZShRcglbGRuCo+90RuCp35ISJDPZtTR51be6s3Erw
	 dGp539GdeuPAHYjTf3wKoo2giDBMH510U6Wo2PdUcd5dtTyEGi5fKJM8M+ALYEgQ5M
	 +v7Vz+sJ5oVGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2AEB408D6;
	Mon, 12 May 2025 12:53:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DC507154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 12:53:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C22AB81AD7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 12:53:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lvvLvzc548Td for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 12:53:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E7966819CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7966819CC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E7966819CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 12:53:44 +0000 (UTC)
X-CSE-ConnectionGUID: RGtzSXCHSu+CCl4H44eOtQ==
X-CSE-MsgGUID: oHrNISsBQ+S9w+3Xh5/kfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="59512055"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="59512055"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 05:53:44 -0700
X-CSE-ConnectionGUID: sGbWtMAaR3CYm2dhlGHzXQ==
X-CSE-MsgGUID: 8X7CkiVtQx6t8ybs+bx4hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="137069230"
Received: from hlagrand-mobl1.ger.corp.intel.com (HELO [10.245.102.40])
 ([10.245.102.40])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 05:53:41 -0700
Message-ID: <170f287e-23b1-468b-9b59-08680de1ecf1@linux.intel.com>
Date: Mon, 12 May 2025 14:53:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Zilin Guan <zilin@seu.edu.cn>, anthony.l.nguyen@intel.com
Cc: przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, jianhao.xu@seu.edu.cn
References: <20250512105855.3748230-1-zilin@seu.edu.cn>
Content-Language: pl, en-US
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <20250512105855.3748230-1-zilin@seu.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747054425; x=1778590425;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=KpWgUl+JRrMT0YJo41Vo2z7Q6b3NHVQzf75ZkY8ylv8=;
 b=idxXPxJeD2GKPzXWvAHGvJkzZpGPi/D9UkVX14EA2qWeWePYfgc1wLOq
 iWNOENzDZZnpGCpt2iblp8SUX4bTLr8W3E+y/J45yR99jkLtRe00c5z2x
 RYguuuUIze4H1/vt6wYnDF5p6cGjHu2XurU1cxZ1XGgSeDHkS1UK1xylz
 8BbO9TxwcouKmsxQrtgTi/wi9zNvzq5MbR5sbie06VVfovsqXVYJtVWzG
 0oXvU1j2Fv2hcOMZqWYe3JeIMyPqzPm2rRWuS+4we6ZI3v1Gj7lqnC63N
 gapcJuSZY29haIhqzc2br0jODW+venaBkHP9mHmEptDL6vBiKeUD3W8uM
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=idxXPxJe
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe/ipsec: use memzero_explicit()
 for stack SA structs
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

On 2025-05-12 12:58 PM, Zilin Guan wrote:
> The function ixgbe_ipsec_add_sa() currently uses memset() to zero out
> stack-allocated SA structs (rsa and tsa) before return, but the gcc-11.4.0
> compiler optimizes these calls away. This leaves sensitive key and salt
> material on the stack after return.
> 
> Replace these memset() calls with memzero_explicit() to prevent the
> compiler from optimizing them away. This guarantees that the SA key and
> salt are reliably cleared from the stack.
> 
> Signed-off-by: Zilin Guan <zilin@seu.edu.cn>

Thanks for your patch.

Please use the correct target iwl-net for fixes, iwl-next for features 
and others.

Maybe add a tag? Fixes: 63a67fe229ea ("ixgbe: add ipsec offload add and 
remove SA")

In the future when sending patches against Intel networking drivers 
please send them directly To: intel-wired-lan@lists.osuosl.org and Cc: 
netdev@vger.kernel.org.

> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
> index 07ea1954a276..e8c84f7e937b 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
> @@ -678,7 +678,7 @@ static int ixgbe_ipsec_add_sa(struct xfrm_state *xs,
>   		} else {
>   			/* no match and no empty slot */
>   			NL_SET_ERR_MSG_MOD(extack, "No space for SA in Rx IP SA table");
> -			memset(&rsa, 0, sizeof(rsa));
> +			memzero_explicit(&rsa, sizeof(rsa));
>   			return -ENOSPC;
>   		}
>   
> @@ -727,7 +727,7 @@ static int ixgbe_ipsec_add_sa(struct xfrm_state *xs,
>   		ret = ixgbe_ipsec_parse_proto_keys(xs, tsa.key, &tsa.salt);
>   		if (ret) {
>   			NL_SET_ERR_MSG_MOD(extack, "Failed to get key data for Tx SA table");
> -			memset(&tsa, 0, sizeof(tsa));
> +			memzero_explicit(&tsa, sizeof(tsa));

As for the code change itself, LGTM.

Acked-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>

Thanks,
Dawid

>   			return ret;
>   		}
>   
