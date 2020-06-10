Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F221F58E1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2020 18:18:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 078538800F;
	Wed, 10 Jun 2020 16:18:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W60iKX--soou; Wed, 10 Jun 2020 16:18:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EFBB788120;
	Wed, 10 Jun 2020 16:18:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B2BD81BF41D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 16:18:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AE64C8721E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 16:18:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HjxtgsMqwy4M for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2020 16:18:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 22FA387212
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 16:18:08 +0000 (UTC)
IronPort-SDR: bsFshw8vJvydl+bT123RrR/ON08SCqAs1RuNqY7CLZ4v4zIiU7m+hUVNghR1Vw0e7eR0yYdUcK
 LpcjiBVnLHiA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 09:18:06 -0700
IronPort-SDR: NSo4/NBIGqOn+vaxO10VsYFX88Xyvk3JlQuR0gjkJXXrglVtj3MN/tmT/fKDjU/A7ImkazCtde
 smGLAKnHfg4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,496,1583222400"; d="scan'208";a="306637274"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.249.92.147])
 ([10.249.92.147])
 by orsmga008.jf.intel.com with ESMTP; 10 Jun 2020 09:18:03 -0700
To: Palmer Dabbelt <palmer@dabbelt.com>, davem@davemloft.net
References: <20200610014907.148473-1-palmer@dabbelt.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <8b01c6d6-db4d-d05c-d8cd-733cec31094e@intel.com>
Date: Wed, 10 Jun 2020 19:18:02 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200610014907.148473-1-palmer@dabbelt.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Squash an unused function
 warning
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
Cc: netdev@vger.kernel.org, Palmer Dabbelt <palmerdabbelt@google.com>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, kernel-team@android.com, amir.avivi@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/10/2020 04:49, Palmer Dabbelt wrote:
> From: Palmer Dabbelt <palmerdabbelt@google.com>
> 
> e1000e_check_me is only used under CONFIG_PM_SLEEP but exists
> unconditionally, which triggers a warning.
> 
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index a279f4fa9962..f7148d1fcba2 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -134,6 +134,7 @@ static const struct e1000e_me_supported me_supported[] = {
>   	{0}
>   };
>   
> +#ifdef CONFIG_PM_SLEEP
Thanks Palmer for catching this warning,
can we use "__maybe_unused" declaration instead of wrapping? I think it 
is more convenient and consistent.
>   static bool e1000e_check_me(u16 device_id)
>   {
>   	struct e1000e_me_supported *id;
> @@ -145,6 +146,7 @@ static bool e1000e_check_me(u16 device_id)
>   
>   	return false;
>   }
> +#endif
>   
>   /**
>    * __ew32_prepare - prepare to write to MAC CSR register on certain parts
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
