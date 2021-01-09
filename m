Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BE65D2F01E9
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Jan 2021 17:57:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2CCCF868F6;
	Sat,  9 Jan 2021 16:57:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ebIrxAAEMI8E; Sat,  9 Jan 2021 16:57:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB740868D2;
	Sat,  9 Jan 2021 16:57:47 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E0021BF27C
 for <intel-wired-lan@osuosl.org>; Sat,  9 Jan 2021 16:57:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 29CE184627
 for <intel-wired-lan@osuosl.org>; Sat,  9 Jan 2021 16:57:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3OSLClDrIM5q for <intel-wired-lan@osuosl.org>;
 Sat,  9 Jan 2021 16:57:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B4A8E835EF
 for <intel-wired-lan@osuosl.org>; Sat,  9 Jan 2021 16:57:44 +0000 (UTC)
IronPort-SDR: AXHp1m319R0J3xuX1+sMTGdbQ5Xk1+jBxGNtHP/yYm9mgGp2CLhhNosd7/bmoMVzSLSUVo/Ub1
 kfLfymDh5cjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9859"; a="241789008"
X-IronPort-AV: E=Sophos;i="5.79,334,1602572400"; d="scan'208";a="241789008"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2021 08:57:43 -0800
IronPort-SDR: gvLuWyhqnOheLOnbdfbWvEn/2uJt9N4Xzg9GNCMuGWnuHfYgGTt22/m+F+TE2giitLuvkwS/wf
 ERgR1gof8IMg==
X-IronPort-AV: E=Sophos;i="5.79,334,1602572400"; d="scan'208";a="352034993"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.214.238.133])
 ([10.214.238.133])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2021 08:57:42 -0800
To: intel-wired-lan@osuosl.org, "Lifshits, Vitaly"
 <vitaly.lifshits@intel.com>, anna.kostyukovsky@intel.com,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
References: <X/al3kv9JKN8nhFw@ns.kevlo.org>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <a444142a-564a-163c-8624-fec143fe0027@intel.com>
Date: Sat, 9 Jan 2021 18:57:35 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <X/al3kv9JKN8nhFw@ns.kevlo.org>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] igc: check return value of ret_val in
 igc_config_fc_after_link_up
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/7/2021 08:10, Kevin Lo wrote:
> Check return value from ret_val to make error check actually work.
> 
> Fixes: 4eb8080143a9 ("igc: Add setup link functionality")
> Signed-off-by: Kevin Lo <kevlo@kevlo.org>
> ---
> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
> index 09cd0ec7ee87..67b8ffd21d8a 100644
> --- a/drivers/net/ethernet/intel/igc/igc_mac.c
> +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
> @@ -638,7 +638,7 @@ s32 igc_config_fc_after_link_up(struct igc_hw *hw)
>   	}
>   
>   out:
> -	return 0;
> +	return ret_val;
>   }
>   
>   /**
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 
Thanks for your patch.
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
