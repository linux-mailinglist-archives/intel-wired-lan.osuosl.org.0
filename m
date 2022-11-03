Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B33C1617CB9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 13:36:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43FA540B61;
	Thu,  3 Nov 2022 12:36:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43FA540B61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667479008;
	bh=ce6MldD8yNWS0suc2tmpTeO4tEBW9YQLto7n5WXqORo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Sc153goi0pNRUayI5c0dqsZB3JkXB46EePEtm5nwBN7RfAfY44KFd6dyyWNtYyjyx
	 wbpE1VFdewV+TiCHlSOMnuRmRHKOPu1gsZNq30Nqc/C8NnxAuPX2MflugbrAoFWoNG
	 X4flWXilzGZYDvUbUFYe0ne/6lobsdghVenQkd2X0466NlPdpY+0Ffj8Q5JaZvSu/T
	 gEr2VURuwsAfGMmxGGMwWG6Yq5kncHdwKSuDEr3V5266wyFF43bsfjFAeoFAG4ZfgL
	 ihAEr4GuagoyQuR5C//saPKzRQrhe9JSysWy4t8zWuJRiWFuLqUQB3mx4OuNZm8ytr
	 +IN0rB0zmjsGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ViT4Xgj9FD69; Thu,  3 Nov 2022 12:36:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 494624025D;
	Thu,  3 Nov 2022 12:36:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 494624025D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B46A1BF404
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 12:36:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F1DFB4025D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 12:36:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1DFB4025D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hHOSzNT05hLz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 12:36:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BEFB40017
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2BEFB40017
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 12:36:39 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2F77261EA192D;
 Thu,  3 Nov 2022 13:36:37 +0100 (CET)
Message-ID: <5bad2ec9-93dd-e627-18a9-b9ecc34215b4@molgen.mpg.de>
Date: Thu, 3 Nov 2022 13:36:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>
References: <20221031120028.2457-1-jan.sokolowski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20221031120028.2457-1-jan.sokolowski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix for VF MAC address 0
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Jan,


Am 31.10.22 um 13:00 schrieb Jan Sokolowski:
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> After spawning max VFs on a PF, some VFs were not
> getting resources and their MAC addresses were 0.
> This was caused by PF sleeping before flushing hw
> registers which caused VIRTCHNL_VFR_VFACTIVE
> to not be set in time for VF.

Please reflow for 75 characters per line to make use of all the 
available textwidth.

> Fix by adding a sleep after hw flush.
> 
> Fixes: e4b433f4a741 ("i40e: reset all VFs in parallel when rebuilding PF")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 72ddcefc45b1..635f93d60318 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1578,6 +1578,7 @@ bool i40e_reset_vf(struct i40e_vf *vf, bool flr)
>   	i40e_cleanup_reset_vf(vf);
>   
>   	i40e_flush(hw);
> +	usleep_range(20000, 40000);
>   	clear_bit(I40E_VF_STATE_RESETTING, &vf->vf_states);
>   
>   	return true;
> @@ -1701,6 +1702,7 @@ bool i40e_reset_all_vfs(struct i40e_pf *pf, bool flr)
>   	}
>   
>   	i40e_flush(hw);
> +	usleep_range(20000, 40000);
>   	clear_bit(__I40E_VF_DISABLE, pf->state);
>   
>   	return true;

Did you test, what kind of performance impact this has, when resetting 
the VF? Is the reset happening often, so 20 ms to 40 ms are going to be 
noticed?


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
