Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A11F7651BFB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Dec 2022 08:50:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 204E681959;
	Tue, 20 Dec 2022 07:50:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 204E681959
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671522648;
	bh=Q1494joUkLjQwBWGYeycya3kPm+gr0KH24w8nss6HY4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ljVpTtdVpFB+ELCqRpmf761+fj5LPfzg5SkFlZXTnD472IAVPFkOAZ4sHTBcsF3eW
	 sxmot0DdRlrq3qA+mbEOD7CB2fx4J9mnebP3ueTeKsw+uiIWQykISylhO+10K8kxmo
	 cOYSV478qC5uKX0IWCI76BgoCuxRjff0JUhgG3WgJq6X8pNvwwoIBtkSepFGqdwnH9
	 aLa83lAyo2L04FfcX3QGP8bLaXAtYcpy/k3fM7VCfHyDbPeXuSAkeadpAcTy9MEztt
	 hoaiJKkqi+HLrPs4CCFuPYcBkwPaWx/fMkY4tSR9JBs7sPsyzbIZdTvyI0ru2/YxKm
	 KNtesYPk+Tzxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 10d2gbFAuqpZ; Tue, 20 Dec 2022 07:50:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23803818C9;
	Tue, 20 Dec 2022 07:50:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23803818C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A57F71BF300
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 07:50:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8C38A60AA0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 07:50:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C38A60AA0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TKBiFAVhsGVK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 07:50:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF57E60A6A
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EF57E60A6A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 07:50:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="405802824"
X-IronPort-AV: E=Sophos;i="5.96,258,1665471600"; d="scan'208";a="405802824"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 23:50:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="739663471"
X-IronPort-AV: E=Sophos;i="5.96,258,1665471600"; d="scan'208";a="739663471"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 23:50:38 -0800
Date: Tue, 20 Dec 2022 08:50:28 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Daniil Tatianin <d-tatianin@yandex-team.ru>
Message-ID: <Y6FpRFt0A3NrabS8@localhost.localdomain>
References: <20221220063246.1593327-1-d-tatianin@yandex-team.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221220063246.1593327-1-d-tatianin@yandex-team.ru>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671522641; x=1703058641;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=y7kzW7wiQHNQKgWsYnF0m+caBPul5zY67fLc8pu5Ed0=;
 b=VlcdIWfxC4iflPYlY4W+zOn0vjR/B5n76OYcE5nbV2AvKHlbkxkiEtay
 XdZCLKJkR0tk0NUBhSyP743lwEIQFWCngCdgsua3dtml8Gwq5Em/KR2fY
 zyrGDGkpHwfgvU6f9kfQqApYqsillZ0i07SEigTu6VVrNZ7ho7CP3XK/5
 HYU/ifgUMlc8CEb3+C+RcDEonf3S9xRp9Wzud3G5nVAvNAoJfodpG6wdq
 xEyKYSrgDu6MTRQYnAjHcFseciknfPJmizjKQtAmFBVGf7lTMbr8f/e1/
 fMDwoi6XpeCJbb0r4NVH44LtfpfFfV6Eom9GOwKpNCJzmfYyKEfDyXwBx
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VlcdIWfx
Subject: Re: [Intel-wired-lan] [PATCH v2] iavf/iavf_main: actually log ->src
 mask when talking about it
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 20, 2022 at 09:32:46AM +0300, Daniil Tatianin wrote:
> This fixes a copy-paste issue where dev_err would log the dst mask even
> though it is clearly talking about src.
> 
> Found by Linux Verification Center (linuxtesting.org) with the SVACE
> static analysis tool.
> 
> Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
> Signed-off-by: Daniil Tatianin <d-tatianin@yandex-team.ru>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index c4e451ef7942..adc02adef83a 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3850,7 +3850,7 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
>  				field_flags |= IAVF_CLOUD_FIELD_IIP;
>  			} else {
>  				dev_err(&adapter->pdev->dev, "Bad ip src mask 0x%08x\n",
> -					be32_to_cpu(match.mask->dst));
> +					be32_to_cpu(match.mask->src));
>  				return -EINVAL;
>  			}
>  		}
> -- 
> 2.25.1

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

It is good practise to include changelog in message when You send
another version. For example:

v1:
 * change fix tag to 12 chars
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
