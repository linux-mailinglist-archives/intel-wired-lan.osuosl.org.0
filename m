Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7850161E57B
	for <lists+intel-wired-lan@lfdr.de>; Sun,  6 Nov 2022 20:15:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 915344052A;
	Sun,  6 Nov 2022 19:15:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 915344052A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667762106;
	bh=2baewQ44i6pQgBZVpz8UXlsgGDF40xmNUMwl3tx1ExU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=inhQKWnr41UdxL+Eq64F3lE1qtws7PrDdyo/AdAGqnrWWNoraFYs0H35a9pdHZAHJ
	 8H0rI14QZcaP9Qd+TfAonEEW2TgtBOxanh/zWItqDL5FfticZNx37sJHdQDpFf3rCm
	 b9Xg8PV2wKp3VMgdvGA0ZVp1IvgewYl39xhTTFx8WfCEJ2JrGcEgqcrVCySQ4+JtfO
	 xKvyW7Z6ySKezJmfxPhDByll6pSHE0+WXZ7CfTKsVdplNT/R+nsx3RJhbMM8MO1us2
	 t/ImsfiYI3uriY7vWlXB35jBoV2vJm+yzzKRqbS3MdjkO1HMIc3e8DaDUp+WeT5yuo
	 f6C/r4pO3BGWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4c8nwKV0b-dT; Sun,  6 Nov 2022 19:15:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7ABE1404FC;
	Sun,  6 Nov 2022 19:15:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7ABE1404FC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 853BF1BF59C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Nov 2022 19:15:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F73E81357
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Nov 2022 19:15:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F73E81357
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vZW1Tvlckait for <intel-wired-lan@lists.osuosl.org>;
 Sun,  6 Nov 2022 19:14:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC4B281250
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC4B281250
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Nov 2022 19:14:58 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 49856B80C99;
 Sun,  6 Nov 2022 19:14:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6195DC433D6;
 Sun,  6 Nov 2022 19:14:54 +0000 (UTC)
Date: Sun, 6 Nov 2022 21:14:50 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Stefan Assmann <sassmann@kpanic.de>
Message-ID: <Y2gHqj18Tz66k4ZN@unreal>
References: <20221028134515.253022-1-sassmann@kpanic.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221028134515.253022-1-sassmann@kpanic.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1667762095;
 bh=ZOdNk6qtyfdbx8g/LSFBhMuCcRoHrvydNvhbi0HQhaI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mGrtrB4IxYyjsuL2pyVFSw8Vvd91xXPcMBdgVgqfv8yp5xUT1gk9o+DUkjBPqM9ir
 2wd+mTgRxzSg/wG8vPnYbS2qg0rt3quIAtomUzSlYSxnucZnWEDHUi3kHILx4NBULZ
 QdkF97wdNY8mPETHAFJI2+qYWRKW/wtWD+hGu3/3ffMc66J1VW5CiJpVEzmGSgot5l
 nnzhznb1CyKNSwPHYN9AgAA5NeYs5yMF+SdadBQ6QL9wpxWye8I0gnFNxK0RAJo0G9
 Y9bhetuZaRdIC7aG4BeKNXJptqnxBCeZraxilV8Rv5zjv2r7utR/7JhtxJVhws2Q3X
 KNsujmShwO6gw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=mGrtrB4I
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: check that state
 transitions happen under lock
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 patryk.piotrowski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Oct 28, 2022 at 03:45:15PM +0200, Stefan Assmann wrote:
> Add a check to make sure crit_lock is being held during every state
> transition and print a warning if that's not the case. For convenience
> a wrapper is added that helps pointing out where the locking is missing.
> 
> Make an exception for iavf_probe() as that is too early in the init
> process and generates a false positive report.
> 
> Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h      | 23 +++++++++++++++------
>  drivers/net/ethernet/intel/iavf/iavf_main.c |  2 +-
>  2 files changed, 18 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
> index 3f6187c16424..28f41bbc9c86 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -498,19 +498,30 @@ static inline const char *iavf_state_str(enum iavf_state_t state)
>  	}
>  }
>  
> -static inline void iavf_change_state(struct iavf_adapter *adapter,
> -				     enum iavf_state_t state)
> +static inline void __iavf_change_state(struct iavf_adapter *adapter,
> +				       enum iavf_state_t state,
> +				       const char *func,
> +				       int line)
>  {
>  	if (adapter->state != state) {
>  		adapter->last_state = adapter->state;
>  		adapter->state = state;
>  	}
> -	dev_dbg(&adapter->pdev->dev,
> -		"state transition from:%s to:%s\n",
> -		iavf_state_str(adapter->last_state),
> -		iavf_state_str(adapter->state));
> +	if (mutex_is_locked(&adapter->crit_lock))

Please use lockdep for that, and not reinvent it.
In you case lockdep_assert_held(&adapter->crit_lock).

In addition, mutex_is_locked() doesn't check that this specific function
is locked. It checks that this lock is used now.

> +		dev_dbg(&adapter->pdev->dev, "%s:%d state transition %s to %s\n",
> +			func, line,
> +			iavf_state_str(adapter->last_state),
> +			iavf_state_str(adapter->state));
> +	else
> +		dev_warn(&adapter->pdev->dev, "%s:%d state transition %s to %s without locking!\n",
> +			 func, line,
> +			 iavf_state_str(adapter->last_state),
> +			 iavf_state_str(adapter->state));
>  }
>  
> +#define iavf_change_state(adapter, state) \
> +	__iavf_change_state(adapter, state, __func__, __LINE__)
> +
>  int iavf_up(struct iavf_adapter *adapter);
>  void iavf_down(struct iavf_adapter *adapter);
>  int iavf_process_config(struct iavf_adapter *adapter);
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 3fc572341781..bbc0c9f347a7 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -4892,7 +4892,7 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	hw->back = adapter;
>  
>  	adapter->msg_enable = BIT(DEFAULT_DEBUG_LEVEL_SHIFT) - 1;
> -	iavf_change_state(adapter, __IAVF_STARTUP);
> +	adapter->state = __IAVF_STARTUP;
>  
>  	/* Call save state here because it relies on the adapter struct. */
>  	pci_save_state(pdev);
> -- 
> 2.37.3
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
