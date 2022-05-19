Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC5752D04F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 May 2022 12:21:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C151841B3;
	Thu, 19 May 2022 10:21:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M0Mv9gF9qPOO; Thu, 19 May 2022 10:21:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 635F7841A7;
	Thu, 19 May 2022 10:21:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EFE711BF408
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 10:21:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DBF98403BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 10:21:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KMn86dTCBQU4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 May 2022 10:21:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F150340140
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 10:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652955667; x=1684491667;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9ieNW0qM47KxkTpElSHntUJ1kQJqmAXH67bYARBslVw=;
 b=T/iNm3knAcaY0Q7p8WMjnQu1Dqodxft1ENAAE9Ht+h8m2125sWuB+6lY
 H4oneR657uo4vfV75Ml88uOQwB9RdCCueCE44c1m9ROxBJU0HNubPNTVf
 wXakWorf+UxZKs8LudeGFNTQhFq+yN5jRgiUtvB1ICqx5J6BxbXxsvWqR
 KgpzzOQgrcyWecMovCmGNMhCnBPeLmkp9R4a2YeqTvrJl1v57HqVr3NFe
 kbzU0RftDnIgUedNTrkdTMUkiQJeGJNrotG7ETQkDZWwUSgppLAr6Yj0D
 sUtqdxNsNmMKnUmBZW6KXBl3ifOYrstQLgE1NsSbc9tc2KyqhBxSSLA7O w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="297433057"
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="297433057"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 03:21:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="546018672"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by orsmga006.jf.intel.com with ESMTP; 19 May 2022 03:21:04 -0700
Date: Thu, 19 May 2022 12:21:04 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Message-ID: <YoYaECJZabzgNK7D@boxer>
References: <20220519080246.1906390-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220519080246.1906390-1-aleksandr.loktionov@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix call trace in
 setup_tx_descriptors
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
Cc: Michal Jaron <michalx.jaron@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 19, 2022 at 10:02:46AM +0200, Loktionov, Aleksandr wrote:
> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com> 
> 
> After pf reset and ethtool -t there was call trace is dmesg

s/pf/PF
s/trace is dmesg/trace in dmesg

> sometimes providing to panic. When there was some time, around 5

s/providing/leading ?
please include the splat from panic

> seconds, between reset and test there was no errors.

s/was/were

> 
> Problem was that pf reset calls i40e_vsi_close in prep_for_reset
> and ethtool -t calls i40e_vsi_close in diag_test. If there was not
> enough time between those commands the second i40e_vsi_close starts
> before previous i40e_vsi_close was done which leads to crash.
> 
> Add check to diag_test if pf is in reset and don't start offline
> tests if it is true.
> 
> Fixes: e17bc411aea8 ("i40e: Disable offline diagnostics if VFs are enabled")

Hard to say which commit should we pick as fixes candidate, but if we stay
with the current one then I think it would be good to include a second
fixes tag that points to the commit that added "|| i40e_active_vmdqs(pf)"
part.

> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 25 +++++++++++++------
>  1 file changed, 17 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index e484996..06c05a6 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -2584,15 +2584,16 @@ static void i40e_diag_test(struct net_device *netdev,
>  
>  		set_bit(__I40E_TESTING, pf->state);
>  
> +		if (test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state) ||
> +		    test_bit(__I40E_RESET_INTR_RECEIVED, pf->state)) {
> +			dev_warn(&pf->pdev->dev,
> +				 "Cannot start offline testing when PF is in reset state.\n");
> +			goto skip_ol_tests;
> +		}
> +
>  		if (i40e_active_vfs(pf) || i40e_active_vmdqs(pf)) {
>  			dev_warn(&pf->pdev->dev,
>  				 "Please take active VFs and Netqueues offline and restart the adapter before running NIC diagnostics\n");
> -			data[I40E_ETH_TEST_REG]		= 1;
> -			data[I40E_ETH_TEST_EEPROM]	= 1;
> -			data[I40E_ETH_TEST_INTR]	= 1;
> -			data[I40E_ETH_TEST_LINK]	= 1;
> -			eth_test->flags |= ETH_TEST_FL_FAILED;
> -			clear_bit(__I40E_TESTING, pf->state);
>  			goto skip_ol_tests;
>  		}
>  
> @@ -2639,9 +2640,17 @@ static void i40e_diag_test(struct net_device *netdev,
>  		data[I40E_ETH_TEST_INTR] = 0;
>  	}
>  
> -skip_ol_tests:
> -
>  	netif_info(pf, drv, netdev, "testing finished\n");
> +	return;
> +
> +skip_ol_tests:
> +	data[I40E_ETH_TEST_REG]		= 1;
> +	data[I40E_ETH_TEST_EEPROM]	= 1;
> +	data[I40E_ETH_TEST_INTR]	= 1;
> +	data[I40E_ETH_TEST_LINK]	= 1;
> +	eth_test->flags |= ETH_TEST_FL_FAILED;
> +	clear_bit(__I40E_TESTING, pf->state);
> +	netif_info(pf, drv, netdev, "testing failed\n");
>  }
>  
>  static void i40e_get_wol(struct net_device *netdev,
> -- 
> 2.31.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
