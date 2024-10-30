Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 609C09B5FDA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2024 11:18:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA6FA60893;
	Wed, 30 Oct 2024 10:18:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Okk6mS_4h40p; Wed, 30 Oct 2024 10:18:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCC2A60897
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730283492;
	bh=Rqa2j/WHF+GdlD6lOgLdezIWaPBVcoIw8hhYMnhBHDI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NLjgCkNUs7AF0SZrVQ6bBJn1kK1YAac0URGhWkwe1PFRATD+xy40nbsakj8lyAIUc
	 fEX/FE1gPVr8UcT+cVEvZcUo+Hn0R5FzFig12a3cYATm/Vs4GCJiL1wJHhBsFRrZmh
	 eIgDlSEvf/SKWO8HYsFtgNb3FxghVotqLJKbPcBa+D1SZUUtkvkCOEqDo5ho1JU1gK
	 4IIvKKRfv8xFqTzIm/nz2JLDhUzi/sWfUCOb+A39HoAua6yMCNHXjB2n3erYxD+jLS
	 JWD1CZ+ZJAB8jf9G0Dbuenq2M4V2Cc9GsI/J19YxHxarXzdIZZVUzQL9H4e0lNst4U
	 6U0mgWzNmK4Bw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCC2A60897;
	Wed, 30 Oct 2024 10:18:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7E6655E4F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 10:18:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5FC9B405C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 10:18:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aO9F6NL5Pxgz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2024 10:18:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 08C0F403CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08C0F403CE
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08C0F403CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 10:18:08 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-575-Po8IUl34NOm1C3Tfl6hKRg-1; Wed,
 30 Oct 2024 06:18:04 -0400
X-MC-Unique: Po8IUl34NOm1C3Tfl6hKRg-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 8EBB7195609E; Wed, 30 Oct 2024 10:18:02 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.194.141])
 by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 5A3071956088; Wed, 30 Oct 2024 10:18:01 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id AD2B6A80661; Wed, 30 Oct 2024 11:17:58 +0100 (CET)
Date: Wed, 30 Oct 2024 11:17:58 +0100
From: Corinna Vinschen <vinschen@redhat.com>
To: Chris H <christopher.s.hall@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, david.zage@intel.com,
 vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZyIH1rVt35JAFTW8@calimero.vinschen.de>
Mail-Followup-To: Chris H <christopher.s.hall@intel.com>,
 intel-wired-lan@lists.osuosl.org, david.zage@intel.com,
 vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20241023023040.111429-1-christopher.s.hall@intel.com>
 <20241023023040.111429-2-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241023023040.111429-2-christopher.s.hall@intel.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1730283487;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Rqa2j/WHF+GdlD6lOgLdezIWaPBVcoIw8hhYMnhBHDI=;
 b=OpYY+w+D3fM4a2hdPIE0itgwdPfPOt17IDeXR74p1oiMzfww7Yosd0iM3D611WRyXkheG1
 oIk9Wi2LnT7HR7YPnHocNXB5amTxQhuS1T+w73Q+PeQijSDJ5Qq+AH1K6lbPU9aOKH8ctf
 K98xOfoZ5KQX2FBuhxZIkKVBAx9AnyU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=OpYY+w+D
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/4] igc: Ensure the PTM
 cycle is reliably triggered
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

On Oct 23 02:30, Chris H wrote:
> From: Christopher S M Hall <christopher.s.hall@intel.com>
> 
> Writing to clear the PTM status 'valid' bit while the PTM cycle is
> triggered results in unreliable PTM operation. To fix this, clear the
> PTM 'trigger' and status after each PTM transaction.
> 
> The issue can be reproduced with the following:
> 
> $ sudo phc2sys -R 1000 -O 0 -i tsn0 -m
> 
> Note: 1000 Hz (-R 1000) is unrealistically large, but provides a way to
> quickly reproduce the issue.
> 
> PHC2SYS exits with:
> 
> "ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM transaction
>   fails
> 
> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

In the v1 thread in August I asked for adding a description of the kdump
problem we observed to the commit message.  I came up with this text,
maybe we can still add it, or maybe a shhortened version of it?

  This patch also fixes a hang in igc_probe() when loading the igc
  driver in the kdump kernel on systems supporting PTM.

  The igc driver running in the base kernel enables PTM trigger in
  igc_probe().  Therefore the driver is always in PTM trigger mode,
  except in brief periods when manually triggering a PTM cycle.

  When a crash occurs, the NIC is reset while PTM trigger is enabled.
  Due to a hardware problem, the NIC is subsequently in a bad busmaster
  state and doesn't handle register reads/writes.  When running
  igc_probe() in the kdump kernel, the first register access to a NIC
  register hangs driver probing and ultimately breaks kdump.

  With this patch, igc has PTM trigger disabled most of the time,
  and the trigger is only enabled for very brief (10 - 100 us) periods
  when manually triggering a PTM cycle.  Chances that a crash occurs
  during a PTM trigger are not 0, but extremly reduced.


Thanks,
Corinna


> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
>  drivers/net/ethernet/intel/igc/igc_ptp.c     | 70 ++++++++++++--------
>  2 files changed, 42 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 8e449904aa7d..afd0512dc9f8 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -593,6 +593,7 @@
>  #define IGC_PTM_STAT_T4M1_OVFL		BIT(3) /* T4 minus T1 overflow */
>  #define IGC_PTM_STAT_ADJUST_1ST		BIT(4) /* 1588 timer adjusted during 1st PTM cycle */
>  #define IGC_PTM_STAT_ADJUST_CYC		BIT(5) /* 1588 timer adjusted during non-1st PTM cycle */
> +#define IGC_PTM_STAT_ALL        	GENMASK(5, 0) /* Used to clear all status */
>  
>  /* PCIe PTM Cycle Control */
>  #define IGC_PTM_CYCLE_CTRL_CYC_TIME(msec)	((msec) & 0x3ff) /* PTM Cycle Time (msec) */
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 946edbad4302..00cc80d8d164 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -974,11 +974,38 @@ static void igc_ptm_log_error(struct igc_adapter *adapter, u32 ptm_stat)
>  	}
>  }
>  
> +static void igc_ptm_trigger(struct igc_hw *hw)
> +{
> +	u32 ctrl;
> +
> +	/* To "manually" start the PTM cycle we need to set the
> +	 * trigger (TRIG) bit
> +	 */
> +	ctrl = rd32(IGC_PTM_CTRL);
> +	ctrl |= IGC_PTM_CTRL_TRIG;
> +	wr32(IGC_PTM_CTRL, ctrl);
> +	/* Perform flush after write to CTRL register otherwise
> +	 * transaction may not start
> +	 */
> +	wrfl();
> +}
> +
> +static void igc_ptm_reset(struct igc_hw *hw)
> +{
> +	u32 ctrl;
> +
> +	ctrl = rd32(IGC_PTM_CTRL);
> +	ctrl &= ~IGC_PTM_CTRL_TRIG;
> +	wr32(IGC_PTM_CTRL, ctrl);
> +	/* Write to clear all status */
> +	wr32(IGC_PTM_STAT, IGC_PTM_STAT_ALL);
> +}
> +
>  static int igc_phc_get_syncdevicetime(ktime_t *device,
>  				      struct system_counterval_t *system,
>  				      void *ctx)
>  {
> -	u32 stat, t2_curr_h, t2_curr_l, ctrl;
> +	u32 stat, t2_curr_h, t2_curr_l;
>  	struct igc_adapter *adapter = ctx;
>  	struct igc_hw *hw = &adapter->hw;
>  	int err, count = 100;
> @@ -994,25 +1021,13 @@ static int igc_phc_get_syncdevicetime(ktime_t *device,
>  		 * are transitory. Repeating the process returns valid
>  		 * data eventually.
>  		 */
> -
> -		/* To "manually" start the PTM cycle we need to clear and
> -		 * then set again the TRIG bit.
> -		 */
> -		ctrl = rd32(IGC_PTM_CTRL);
> -		ctrl &= ~IGC_PTM_CTRL_TRIG;
> -		wr32(IGC_PTM_CTRL, ctrl);
> -		ctrl |= IGC_PTM_CTRL_TRIG;
> -		wr32(IGC_PTM_CTRL, ctrl);
> -
> -		/* The cycle only starts "for real" when software notifies
> -		 * that it has read the registers, this is done by setting
> -		 * VALID bit.
> -		 */
> -		wr32(IGC_PTM_STAT, IGC_PTM_STAT_VALID);
> +		igc_ptm_trigger(hw);
>  
>  		err = readx_poll_timeout(rd32, IGC_PTM_STAT, stat,
>  					 stat, IGC_PTM_STAT_SLEEP,
>  					 IGC_PTM_STAT_TIMEOUT);
> +		igc_ptm_reset(hw);
> +
>  		if (err < 0) {
>  			netdev_err(adapter->netdev, "Timeout reading IGC_PTM_STAT register\n");
>  			return err;
> @@ -1021,15 +1036,7 @@ static int igc_phc_get_syncdevicetime(ktime_t *device,
>  		if ((stat & IGC_PTM_STAT_VALID) == IGC_PTM_STAT_VALID)
>  			break;
>  
> -		if (stat & ~IGC_PTM_STAT_VALID) {
> -			/* An error occurred, log it. */
> -			igc_ptm_log_error(adapter, stat);
> -			/* The STAT register is write-1-to-clear (W1C),
> -			 * so write the previous error status to clear it.
> -			 */
> -			wr32(IGC_PTM_STAT, stat);
> -			continue;
> -		}
> +		igc_ptm_log_error(adapter, stat);
>  	} while (--count);
>  
>  	if (!count) {
> @@ -1255,7 +1262,7 @@ void igc_ptp_stop(struct igc_adapter *adapter)
>  void igc_ptp_reset(struct igc_adapter *adapter)
>  {
>  	struct igc_hw *hw = &adapter->hw;
> -	u32 cycle_ctrl, ctrl;
> +	u32 cycle_ctrl, ctrl, stat;
>  	unsigned long flags;
>  	u32 timadj;
>  
> @@ -1290,14 +1297,19 @@ void igc_ptp_reset(struct igc_adapter *adapter)
>  		ctrl = IGC_PTM_CTRL_EN |
>  			IGC_PTM_CTRL_START_NOW |
>  			IGC_PTM_CTRL_SHRT_CYC(IGC_PTM_SHORT_CYC_DEFAULT) |
> -			IGC_PTM_CTRL_PTM_TO(IGC_PTM_TIMEOUT_DEFAULT) |
> -			IGC_PTM_CTRL_TRIG;
> +			IGC_PTM_CTRL_PTM_TO(IGC_PTM_TIMEOUT_DEFAULT);
>  
>  		wr32(IGC_PTM_CTRL, ctrl);
>  
>  		/* Force the first cycle to run. */
> -		wr32(IGC_PTM_STAT, IGC_PTM_STAT_VALID);
> +		igc_ptm_trigger(hw);
> +
> +		if (readx_poll_timeout_atomic(rd32, IGC_PTM_STAT, stat,
> +					      stat, IGC_PTM_STAT_SLEEP,
> +					      IGC_PTM_STAT_TIMEOUT))
> +			netdev_err(adapter->netdev, "Timeout reading IGC_PTM_STAT register\n");
>  
> +		igc_ptm_reset(hw);
>  		break;
>  	default:
>  		/* No work to do. */
> -- 
> 2.34.1

