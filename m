Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E59C8AB39F2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 16:02:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB84E80E97;
	Mon, 12 May 2025 14:02:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B_eCzy1NJPOR; Mon, 12 May 2025 14:02:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70ED680DFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747058534;
	bh=D8dOrIpf5gasDQq3XbyUO/hsTRTs4JSa+iG3I9Xvokk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bsJ5PyuqmIrLCuVAMVFaBJZ5I+iOXfPij791UslQfgI8A/vE4xK3onOSQkw3OZ5Gu
	 xDPmNSpsN7Y2o8HuT6OVNaK1q+4Shq1nKv9YWtD1lzDk70MfZBLORSkylrF7GaEI7B
	 NDVxjVRYv7ymj9bCJ+tlb97y3pFdPpPcoClZq5OBV6dbjteZY4PZaIQVUS/rKElwWt
	 nABegKXvmiM57EOl5TjpRUWOldj+1Z6Rf7E70ClHfqMRM9/MvBvWVJMpbbZM2okPDR
	 V2KxWoYVoTQ9QA/2gQLMd6IpjG+9Du0T0neh9rtFQ4cP9giHeV8xgaQHbAocaHtd6t
	 /8ja9e++Xa5+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70ED680DFC;
	Mon, 12 May 2025 14:02:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A02E154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 14:02:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B52460639
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 14:02:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b6m_PLnStSiu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 14:02:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3DC9260B1C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DC9260B1C
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3DC9260B1C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 14:02:10 +0000 (UTC)
Received: from [141.14.220.36] (g36.guest.molgen.mpg.de [141.14.220.36])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 6183D601EBF02;
 Mon, 12 May 2025 16:01:51 +0200 (CEST)
Message-ID: <13094fae-7fad-42df-b915-1e40c5d290ec@molgen.mpg.de>
Date: Mon, 12 May 2025 16:01:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 richardcochran@gmail.com
References: <20250512123509.1194023-3-karol.kolacinski@intel.com>
 <20250512123509.1194023-4-karol.kolacinski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250512123509.1194023-4-karol.kolacinski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: update cached PHC
 time for all ports
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

Dear Karol,


Thank you for your patch. Maybe for summary adda *at once*?

ice: update cached PHC time for all ports at once

Am 12.05.25 um 14:34 schrieb Karol Kolacinski:
> Cached PHC time can be updated simultaneously for all active ports
> instead of each port updating it for itself.
> 
> This approach makes only one thread updating cached PHC time, which
> results in less threads to prioritize and only one PHC time read instead
> of 8 every 500 ms.
> 
> Remove per-PF PTP kworker and use do_aux_work for PTP periodic work and
> system_unbound_wq for ov_work.

Nice improvement.

Could the kworker been seen in the process list before? Maybe add a way 
how to test your patch?

> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c | 223 +++++++++++------------
>   drivers/net/ethernet/intel/ice/ice_ptp.h |   6 +-
>   2 files changed, 110 insertions(+), 119 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 0a1f6e0e4a22..d9393be89b0e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -938,6 +938,7 @@ static int ice_ptp_init_tx(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
>   /**
>    * ice_ptp_update_cached_phctime - Update the cached PHC time values
>    * @pf: Board specific private structure
> + * @systime: Cached PHC time to write
>    *
>    * This function updates the system time values which are cached in the PF
>    * structure and the Rx rings.
> @@ -952,11 +953,10 @@ static int ice_ptp_init_tx(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
>    * * 0 - OK, successfully updated
>    * * -EAGAIN - PF was busy, need to reschedule the update
>    */
> -static int ice_ptp_update_cached_phctime(struct ice_pf *pf)
> +static int ice_ptp_update_cached_phctime(struct ice_pf *pf, u64 systime)
>   {
>   	struct device *dev = ice_pf_to_dev(pf);
>   	unsigned long update_before;
> -	u64 systime;
>   	int i;
>   
>   	update_before = pf->ptp.cached_phc_jiffies + msecs_to_jiffies(2000);
> @@ -969,13 +969,14 @@ static int ice_ptp_update_cached_phctime(struct ice_pf *pf)
>   		pf->ptp.late_cached_phc_updates++;
>   	}
>   
> -	/* Read the current PHC time */
> -	systime = ice_ptp_read_src_clk_reg(pf, NULL);
> -
>   	/* Update the cached PHC time stored in the PF structure */
>   	WRITE_ONCE(pf->ptp.cached_phc_time, systime);
>   	WRITE_ONCE(pf->ptp.cached_phc_jiffies, jiffies);
>   
> +	/* Nothing to do if link is down */
> +	if (!pf->ptp.port.link_up)
> +		return 0;
> +
>   	if (test_and_set_bit(ICE_CFG_BUSY, pf->state))
>   		return -EAGAIN;
>   
> @@ -1000,6 +1001,43 @@ static int ice_ptp_update_cached_phctime(struct ice_pf *pf)
>   	return 0;
>   }
>   
> +/**
> + * ice_ptp_update_cached_phctime_all - Update the cached PHC time for all ports
> + * @pf: Board specific private structure
> + *
> + * Return:
> + * * 0 - OK, successfully updated
> + * * -EAGAIN - PF was busy, need to reschedule the update
> + */
> +static int ice_ptp_update_cached_phctime_all(struct ice_pf *pf)
> +{
> +	u64 time = ice_ptp_read_src_clk_reg(pf, NULL);
> +	struct list_head *entry;
> +	int ret = 0;
> +
> +	list_for_each(entry, &pf->adapter->ports.ports) {
> +		struct ice_ptp_port *port = list_entry(entry,
> +						       struct ice_ptp_port,
> +						       list_node);
> +		struct ice_pf *peer_pf = ptp_port_to_pf(port);
> +		int err;
> +
> +		err = ice_ptp_update_cached_phctime(peer_pf, time);
> +		if (err) {
> +			/* If another thread is updating the Rx rings, we won't
> +			 * properly reset them here. This could lead to
> +			 * reporting of invalid timestamps, but there isn't much
> +			 * we can do.
> +			 */
> +			dev_warn(ice_pf_to_dev(peer_pf), "Unable to immediately update cached PHC time, err=%d\n",
> +				 err);

What should a user do in this case? Reset the device?

> +			ret = err;

Shouldn’t you return right away? Should the function return, how many 
ports failed to update?

> +		}
> +	}
> +
> +	return ret;
> +}
> +
>   /**
>    * ice_ptp_reset_cached_phctime - Reset cached PHC time after an update
>    * @pf: Board specific private structure
> @@ -1015,24 +1053,12 @@ static int ice_ptp_update_cached_phctime(struct ice_pf *pf)
>    */
>   static void ice_ptp_reset_cached_phctime(struct ice_pf *pf)
>   {
> -	struct device *dev = ice_pf_to_dev(pf);
> -	int err;
> -
>   	/* Update the cached PHC time immediately if possible, otherwise
>   	 * schedule the work item to execute soon.
>   	 */
> -	err = ice_ptp_update_cached_phctime(pf);
> -	if (err) {
> -		/* If another thread is updating the Rx rings, we won't
> -		 * properly reset them here. This could lead to reporting of
> -		 * invalid timestamps, but there isn't much we can do.
> -		 */
> -		dev_warn(dev, "%s: ICE_CFG_BUSY, unable to immediately update cached PHC time\n",
> -			 __func__);
> -
> +	if (ice_ptp_update_cached_phctime_all(pf)) {
>   		/* Queue the work item to update the Rx rings when possible */
> -		kthread_queue_delayed_work(pf->ptp.kworker, &pf->ptp.work,
> -					   msecs_to_jiffies(10));
> +		ptp_schedule_worker(pf->ptp.clock, msecs_to_jiffies(10));
>   	}
>   
>   	/* Mark any outstanding timestamps as stale, since they might have
> @@ -1157,7 +1183,7 @@ static int ice_ptp_check_tx_fifo(struct ice_ptp_port *port)
>   
>   /**
>    * ice_ptp_wait_for_offsets - Check for valid Tx and Rx offsets
> - * @work: Pointer to the kthread_work structure for this task
> + * @work: Pointer to the work_struct structure for this task
>    *
>    * Check whether hardware has completed measuring the Tx and Rx offset values
>    * used to configure and enable vernier timestamp calibration.
> @@ -1170,37 +1196,30 @@ static int ice_ptp_check_tx_fifo(struct ice_ptp_port *port)
>    * This function reschedules itself until both Tx and Rx calibration have
>    * completed.
>    */
> -static void ice_ptp_wait_for_offsets(struct kthread_work *work)
> +static void ice_ptp_wait_for_offsets(struct work_struct *work)
>   {
> +	struct delayed_work *dwork = to_delayed_work(work);
>   	struct ice_ptp_port *port;
> +	int tx_err, rx_err;
>   	struct ice_pf *pf;
> -	struct ice_hw *hw;
> -	int tx_err;
> -	int rx_err;
>   
> -	port = container_of(work, struct ice_ptp_port, ov_work.work);
> +	port = container_of(dwork, struct ice_ptp_port, ov_work);
>   	pf = ptp_port_to_pf(port);
> -	hw = &pf->hw;
>   
> -	if (ice_is_reset_in_progress(pf->state)) {
> -		/* wait for device driver to complete reset */
> -		kthread_queue_delayed_work(pf->ptp.kworker,
> -					   &port->ov_work,
> -					   msecs_to_jiffies(100));
> -		return;
> -	}
> +	if (ice_is_reset_in_progress(pf->state))
> +		goto err;
>   
>   	tx_err = ice_ptp_check_tx_fifo(port);
>   	if (!tx_err)
> -		tx_err = ice_phy_cfg_tx_offset_e82x(hw, port->port_num);
> -	rx_err = ice_phy_cfg_rx_offset_e82x(hw, port->port_num);
> -	if (tx_err || rx_err) {
> -		/* Tx and/or Rx offset not yet configured, try again later */
> -		kthread_queue_delayed_work(pf->ptp.kworker,
> -					   &port->ov_work,
> -					   msecs_to_jiffies(100));
> +		tx_err = ice_phy_cfg_tx_offset_e82x(&pf->hw, port->port_num);
> +
> +	rx_err = ice_phy_cfg_rx_offset_e82x(&pf->hw, port->port_num);
> +	if (tx_err || rx_err)
>   		return;
> -	}
> +err:
> +	/* Tx and/or Rx offset not yet configured, try again later */
> +	queue_delayed_work(system_unbound_wq, &port->ov_work,
> +			   msecs_to_jiffies(100));
>   }
>   
>   /**
> @@ -1223,7 +1242,7 @@ ice_ptp_port_phy_stop(struct ice_ptp_port *ptp_port)
>   		err = 0;
>   		break;
>   	case ICE_MAC_GENERIC:
> -		kthread_cancel_delayed_work_sync(&ptp_port->ov_work);
> +		cancel_delayed_work_sync(&ptp_port->ov_work);
>   
>   		err = ice_stop_phy_timer_e82x(hw, port, true);
>   		break;
> @@ -1271,7 +1290,7 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
>   		break;
>   	case ICE_MAC_GENERIC:
>   		/* Start the PHY timer in Vernier mode */
> -		kthread_cancel_delayed_work_sync(&ptp_port->ov_work);
> +		cancel_delayed_work_sync(&ptp_port->ov_work);
>   
>   		/* temporarily disable Tx timestamps while calibrating
>   		 * PHY offset
> @@ -1291,11 +1310,7 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
>   		ptp_port->tx.calibrating = false;
>   		spin_unlock_irqrestore(&ptp_port->tx.lock, flags);
>   
> -		kthread_queue_delayed_work(pf->ptp.kworker, &ptp_port->ov_work,
> -					   0);
> -		break;
> -	case ICE_MAC_GENERIC_3K_E825:
> -		err = ice_start_phy_timer_eth56g(hw, port);
> +		queue_delayed_work(system_unbound_wq, &ptp_port->ov_work, 0);
>   		break;
>   	default:
>   		err = -ENODEV;
> @@ -2578,22 +2593,27 @@ static void ice_ptp_maybe_trigger_tx_interrupt(struct ice_pf *pf)
>   	}
>   }
>   
> -static void ice_ptp_periodic_work(struct kthread_work *work)
> +/**
> + * ice_ptp_periodic_work - Do PTP periodic work
> + * @info: Driver's PTP info structure
> + *
> + * Return: delay of the next auxiliary work scheduling time (>=0) or negative
> + *         value in case further scheduling is not required
> + */
> +static long ice_ptp_periodic_work(struct ptp_clock_info *info)
>   {
> -	struct ice_ptp *ptp = container_of(work, struct ice_ptp, work.work);
> -	struct ice_pf *pf = container_of(ptp, struct ice_pf, ptp);
> +	struct ice_pf *pf = ptp_info_to_pf(info);
>   	int err;
>   
>   	if (pf->ptp.state != ICE_PTP_READY)
> -		return;
> +		return 0;
>   
> -	err = ice_ptp_update_cached_phctime(pf);
> +	err = ice_ptp_update_cached_phctime_all(pf);
>   
>   	ice_ptp_maybe_trigger_tx_interrupt(pf);
>   
> -	/* Run twice a second or reschedule if phc update failed */
> -	kthread_queue_delayed_work(ptp->kworker, &ptp->work,
> -				   msecs_to_jiffies(err ? 10 : 500));
> +	/* Run twice a second or reschedule if PHC update failed */
> +	return msecs_to_jiffies(err ? 10 : MSEC_PER_SEC / 2);
>   }
>   
>   /**
> @@ -2617,6 +2637,7 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
>   	info->n_ext_ts = GLTSYN_EVNT_H_IDX_MAX;
>   	info->enable = ice_ptp_gpio_enable;
>   	info->verify = ice_verify_pin;
> +	info->do_aux_work = ice_ptp_periodic_work;
>   
>   	info->supported_extts_flags = PTP_RISING_EDGE |
>   				      PTP_FALLING_EDGE |
> @@ -2850,7 +2871,8 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>   	/* Disable timestamping for both Tx and Rx */
>   	ice_ptp_disable_timestamp_mode(pf);
>   
> -	kthread_cancel_delayed_work_sync(&ptp->work);
> +	if (ice_pf_src_tmr_owned(pf))
> +		ptp_cancel_worker_sync(ptp->clock);
>   
>   	if (reset_type == ICE_RESET_PFR)
>   		return;
> @@ -2858,6 +2880,9 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>   	if (ice_pf_src_tmr_owned(pf) && hw->mac_type == ICE_MAC_GENERIC_3K_E825)
>   		ice_ptp_prepare_rebuild_sec(pf, false, reset_type);
>   
> +	if (hw->mac_type == ICE_MAC_GENERIC)
> +		cancel_delayed_work_sync(&pf->ptp.port.ov_work);
> +
>   	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
>   
>   	/* Disable periodic outputs */
> @@ -2964,17 +2989,18 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
>   		goto err;
>   	}
>   
> -	if (ice_pf_src_tmr_owned(pf) && reset_type != ICE_RESET_PFR) {
> -		err = ice_ptp_rebuild_owner(pf);
> -		if (err)
> -			goto err;
> +	if (ice_pf_src_tmr_owned(pf)) {
> +		if (reset_type != ICE_RESET_PFR) {
> +			err = ice_ptp_rebuild_owner(pf);
> +			if (err)
> +				goto err;
> +		}
> +
> +		ptp_schedule_worker(ptp->clock, 0);
>   	}
>   
>   	ptp->state = ICE_PTP_READY;
>   
> -	/* Start periodic work going */
> -	kthread_queue_delayed_work(ptp->kworker, &ptp->work, 0);
> -
>   	dev_info(ice_pf_to_dev(pf), "PTP reset successful\n");
>   	return;
>   
> @@ -3110,34 +3136,6 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
>   	return err;
>   }
>   
> -/**
> - * ice_ptp_init_work - Initialize PTP work threads
> - * @pf: Board private structure
> - * @ptp: PF PTP structure
> - */
> -static int ice_ptp_init_work(struct ice_pf *pf, struct ice_ptp *ptp)
> -{
> -	struct kthread_worker *kworker;
> -
> -	/* Initialize work functions */
> -	kthread_init_delayed_work(&ptp->work, ice_ptp_periodic_work);
> -
> -	/* Allocate a kworker for handling work required for the ports
> -	 * connected to the PTP hardware clock.
> -	 */
> -	kworker = kthread_run_worker(0, "ice-ptp-%s",
> -					dev_name(ice_pf_to_dev(pf)));
> -	if (IS_ERR(kworker))
> -		return PTR_ERR(kworker);
> -
> -	ptp->kworker = kworker;
> -
> -	/* Start periodic work going */
> -	kthread_queue_delayed_work(ptp->kworker, &ptp->work, 0);
> -
> -	return 0;
> -}
> -
>   /**
>    * ice_ptp_init_port - Initialize PTP port structure
>    * @pf: Board private structure
> @@ -3157,8 +3155,7 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
>   	case ICE_MAC_GENERIC_3K_E825:
>   		return ice_ptp_init_tx(pf, &ptp_port->tx, ptp_port->port_num);
>   	case ICE_MAC_GENERIC:
> -		kthread_init_delayed_work(&ptp_port->ov_work,
> -					  ice_ptp_wait_for_offsets);
> +		INIT_DELAYED_WORK(&ptp_port->ov_work, ice_ptp_wait_for_offsets);
>   		return ice_ptp_init_tx_e82x(pf, &ptp_port->tx,
>   					    ptp_port->port_num);
>   	default:
> @@ -3202,8 +3199,7 @@ static void ice_ptp_init_tx_interrupt_mode(struct ice_pf *pf)
>    * functions connected to the clock hardware.
>    *
>    * The clock owner will allocate and register a ptp_clock with the
> - * PTP_1588_CLOCK infrastructure. All functions allocate a kthread and work
> - * items used for asynchronous work such as Tx timestamps and periodic work.
> + * PTP_1588_CLOCK infrastructure.
>    */
>   void ice_ptp_init(struct ice_pf *pf)
>   {
> @@ -3251,9 +3247,8 @@ void ice_ptp_init(struct ice_pf *pf)
>   
>   	ptp->state = ICE_PTP_READY;
>   
> -	err = ice_ptp_init_work(pf, ptp);
> -	if (err)
> -		goto err_exit;
> +	if (ice_pf_src_tmr_owned(pf))
> +		ptp_schedule_worker(ptp->clock, 0);
>   
>   	dev_info(ice_pf_to_dev(pf), "PTP init successful\n");
>   	return;
> @@ -3277,37 +3272,35 @@ void ice_ptp_init(struct ice_pf *pf)
>    */
>   void ice_ptp_release(struct ice_pf *pf)
>   {
> -	if (pf->ptp.state != ICE_PTP_READY)
> +	struct ice_ptp *ptp = &pf->ptp;
> +
> +	if (ptp->state != ICE_PTP_READY)
>   		return;
>   
> -	pf->ptp.state = ICE_PTP_UNINIT;
> +	ptp->state = ICE_PTP_UNINIT;
>   
>   	/* Disable timestamping for both Tx and Rx */
>   	ice_ptp_disable_timestamp_mode(pf);
>   
>   	ice_ptp_cleanup_pf(pf);
>   
> -	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
> -
> +	ice_ptp_release_tx_tracker(pf, &ptp->port.tx);
>   	ice_ptp_disable_all_extts(pf);
> +	if (pf->hw.mac_type == ICE_MAC_GENERIC)
> +		cancel_delayed_work_sync(&ptp->port.ov_work);
> +	ice_ptp_port_phy_stop(&ptp->port);
> +	mutex_destroy(&ptp->port.ps_lock);
>   
> -	kthread_cancel_delayed_work_sync(&pf->ptp.work);
> -
> -	ice_ptp_port_phy_stop(&pf->ptp.port);
> -	mutex_destroy(&pf->ptp.port.ps_lock);
> -	if (pf->ptp.kworker) {
> -		kthread_destroy_worker(pf->ptp.kworker);
> -		pf->ptp.kworker = NULL;
> -	}
> -
> -	if (!pf->ptp.clock)
> +	if (!ptp->clock)
>   		return;
>   
>   	/* Disable periodic outputs */
>   	ice_ptp_disable_all_perout(pf);
> +	if (ice_pf_src_tmr_owned(pf))
> +		ptp_cancel_worker_sync(ptp->clock);
>   
> -	ptp_clock_unregister(pf->ptp.clock);
> -	pf->ptp.clock = NULL;
> +	ptp_clock_unregister(ptp->clock);
> +	ptp->clock = NULL;
>   
>   	dev_info(ice_pf_to_dev(pf), "Removed PTP clock\n");
>   }
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
> index c8dac5a5bcd9..0f6154d7f473 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
> @@ -139,7 +139,7 @@ struct ice_ptp_tx {
>    *
>    * @list_node: list member structure
>    * @tx: Tx timestamp tracking for this port
> - * @ov_work: delayed work task for tracking when PHY offset is valid
> + * @ov_work: delayed work for tracking when PHY offset is valid
>    * @ps_lock: mutex used to protect the overall PTP PHY start procedure
>    * @link_up: indicates whether the link is up
>    * @tx_fifo_busy_cnt: number of times the Tx FIFO was busy
> @@ -148,7 +148,7 @@ struct ice_ptp_tx {
>   struct ice_ptp_port {
>   	struct list_head list_node;
>   	struct ice_ptp_tx tx;
> -	struct kthread_delayed_work ov_work;
> +	struct delayed_work ov_work;
>   	struct mutex ps_lock; /* protects overall PTP PHY start procedure */
>   	bool link_up;
>   	u8 tx_fifo_busy_cnt;
> @@ -227,7 +227,6 @@ struct ice_ptp_pin_desc {
>    * @work: delayed work function for periodic tasks
>    * @cached_phc_time: a cached copy of the PHC time for timestamp extension
>    * @cached_phc_jiffies: jiffies when cached_phc_time was last updated
> - * @kworker: kwork thread for handling periodic work
>    * @ext_ts_irq: the external timestamp IRQ in use
>    * @pin_desc: structure defining pins
>    * @ice_pin_desc: internal structure describing pin relations
> @@ -251,7 +250,6 @@ struct ice_ptp {
>   	struct kthread_delayed_work work;
>   	u64 cached_phc_time;
>   	unsigned long cached_phc_jiffies;
> -	struct kthread_worker *kworker;
>   	u8 ext_ts_irq;
>   	struct ptp_pin_desc pin_desc[ICE_N_PINS_MAX];
>   	const struct ice_ptp_pin_desc *ice_pin_desc;


Kind regards,

Paul
