Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 219A49B5FEB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2024 11:20:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4757D81157;
	Wed, 30 Oct 2024 10:20:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ss4XtO14rOfi; Wed, 30 Oct 2024 10:20:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 818218115A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730283648;
	bh=OcLiLkMiXm/YlYX/9LXkvHvt6awYdtKfm+QQsHQ3YoE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Tr2WyV0u43OXtfxbhxGS/+/j7BGicI04ayP1kojkuQDffZXhtlBPiPC71WzHlQzVV
	 Q/ZTJsyYL1y6c9kbcsEhba1GkxAn4Y8NupVaw3RCg0mUGFerVB++Xz5YbTHHEtvdI0
	 kr1HG+9pNouygVd1s+HFEELoeY0unRB9j1i2cKtOsmuc8S8DLMD/3iFqMiMLj0WLuj
	 /BiO55498+R341y/hp5lL3ly5hppjagJjVTTVkK5evJCQg3nOSTAlHcoDz+SbbWyKF
	 F0Ft6iqGv1SYmmXvGyf4RggeiyaTeB7DikfE9iHGBNX3A5tgV6DOJt/qDi16K/FJkC
	 lKJ1xs0xxm9jQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 818218115A;
	Wed, 30 Oct 2024 10:20:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B5BC15E4F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 10:20:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3CEC608D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 10:20:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lz3_TEU64rjt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2024 10:20:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CB24360879
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB24360879
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB24360879
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 10:20:45 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-635-RCBIvOr9PcujWkYbDAA_8g-1; Wed,
 30 Oct 2024 06:20:41 -0400
X-MC-Unique: RCBIvOr9PcujWkYbDAA_8g-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id DE7A419560B5; Wed, 30 Oct 2024 10:20:39 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.194.141])
 by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 89B9119560AA; Wed, 30 Oct 2024 10:20:39 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 5F2BDA80980; Wed, 30 Oct 2024 11:20:37 +0100 (CET)
Date: Wed, 30 Oct 2024 11:20:37 +0100
From: Corinna Vinschen <vinschen@redhat.com>
To: Chris H <christopher.s.hall@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, david.zage@intel.com,
 vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com
Message-ID: <ZyIIdTT-_pKC018c@calimero.vinschen.de>
Mail-Followup-To: Chris H <christopher.s.hall@intel.com>,
 intel-wired-lan@lists.osuosl.org, david.zage@intel.com,
 vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com
References: <20241023023040.111429-1-christopher.s.hall@intel.com>
 <20241023023040.111429-5-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241023023040.111429-5-christopher.s.hall@intel.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1730283644;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OcLiLkMiXm/YlYX/9LXkvHvt6awYdtKfm+QQsHQ3YoE=;
 b=EN2jGju7xgyoL38yniicFoEdWL5KjAxiNfEGe9sQ1soO4NDRHxpva2dHCmeZfyNNQQSHSD
 oWu5waBDzfLw24wXGLS/O2h9/2xDlygFpLG/6REM4LXy2KjycC5v/AKgrXFGUmAFHdjkkb
 LzOSPtdqHWwfAOOkcXesoSnyna2UfJs=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=EN2jGju7
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 4/4] igc: Add lock
 preventing multiple simultaneous PTM transactions
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

Hi Chris,

Same question as in the v1 thread:

On Oct 23 02:30, Chris H wrote:
> From: Christopher S M Hall <christopher.s.hall@intel.com>
> 
> Add a mutex around the PTM transaction to prevent multiple transactors
> 
> Multiple processes try to initiate a PTM transaction, one or all may
> fail. This can be reproduced by running two instances of the
> following:
> 
> $ sudo phc2sys -O 0 -i tsn0 -m
> 
> PHC2SYS exits with:
> 
> "ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM transaction
>  fails
> 
> Note: Normally two instance of PHC2SYS will not run, but one process
>  should not break another.
> 
> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>

I saw a former version of the patch which additionally added a mutex
lock/unlock in igc_ptp_reset() just before calling igc_ptm_trigger().
Is it safe to skip that?  igc_ptp_reset() is called from igc_reset()
which in turn is called from quite a few places.


Thanks,
Corinna





> ---
>  drivers/net/ethernet/intel/igc/igc.h     |  1 +
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 12 ++++++++++--
>  2 files changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index eac0f966e0e4..323db1e2be38 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -319,6 +319,7 @@ struct igc_adapter {
>  	struct timespec64 prev_ptp_time; /* Pre-reset PTP clock */
>  	ktime_t ptp_reset_start; /* Reset time in clock mono */
>  	struct system_time_snapshot snapshot;
> +	struct mutex ptm_lock; /* Only allow one PTM transaction at a time */
>  
>  	char fw_version[32];
>  
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index fb885fcaa97c..4e1379b7d2ee 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -1068,9 +1068,16 @@ static int igc_ptp_getcrosststamp(struct ptp_clock_info *ptp,
>  {
>  	struct igc_adapter *adapter = container_of(ptp, struct igc_adapter,
>  						   ptp_caps);
> +	int ret;
>  
> -	return get_device_system_crosststamp(igc_phc_get_syncdevicetime,
> -					     adapter, &adapter->snapshot, cts);
> +	/* This blocks until any in progress PTM transactions complete */
> +	mutex_lock(&adapter->ptm_lock);
> +
> +	ret = get_device_system_crosststamp(igc_phc_get_syncdevicetime,
> +					    adapter, &adapter->snapshot, cts);
> +	mutex_unlock(&adapter->ptm_lock);
> +
> +	return ret;
>  }
>  
>  static int igc_ptp_getcyclesx64(struct ptp_clock_info *ptp,
> @@ -1169,6 +1176,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
>  	spin_lock_init(&adapter->ptp_tx_lock);
>  	spin_lock_init(&adapter->free_timer_lock);
>  	spin_lock_init(&adapter->tmreg_lock);
> +	mutex_init(&adapter->ptm_lock);
>  
>  	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
>  	adapter->tstamp_config.tx_type = HWTSTAMP_TX_OFF;
> -- 
> 2.34.1

