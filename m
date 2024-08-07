Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D56949EF3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 07:05:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D94F660687;
	Wed,  7 Aug 2024 05:05:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bHl7-ttNveT6; Wed,  7 Aug 2024 05:05:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA3C96069B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723007147;
	bh=ZenaaKJpx7DqzM2caKXdBVQTN4UEA3o92VUBuqSPFXg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EkOfUw6FCKKayWpbuliN4uFtXEFfxhNRxAG3haFdybJXadOjcl84RNUITKtDO5IjT
	 UhbrCC05V8+lVztJtjM0k6vYYLbbvMWghSmOwUk0el37JHwOyQeIs6JPwSLF8fMb/p
	 97UTozrKLYEsk5r3fn5VVw94+7d9ynB8VazhCmF1KpIBxpzEpLaWY54hbpdddDS2kN
	 XIuitrforEK6Je7lE7JCaasGR0MBC4goKUpOQv7E5ZSCUdH24ZCt2e+O1hgc8JEmY4
	 NCpk/3eIZAKzyY0M0DHcRPT7v5FHGvOOWsaZ2TVgi+B49wvEE4faz3adEJoAA0537t
	 2oPvLbTI91s4w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA3C96069B;
	Wed,  7 Aug 2024 05:05:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4FECF1BF36E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 05:05:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 44D5D605F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 05:05:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 69zU8TSCurY3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 05:05:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A180460608
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A180460608
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A180460608
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 05:05:41 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5af7d2.dynamic.kabel-deutschland.de
 [95.90.247.210])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id AB78A61E5FE01;
 Wed,  7 Aug 2024 07:05:15 +0200 (CEST)
Message-ID: <61c9f4d5-0572-46fb-86c6-483025dd3ca2@molgen.mpg.de>
Date: Wed, 7 Aug 2024 07:05:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christopher S M Hall <christopher.s.hall@intel.com>
References: <20240807003032.10300-1-christopher.s.hall@intel.com>
 <20240807003032.10300-2-christopher.s.hall@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240807003032.10300-2-christopher.s.hall@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/5] igc: Ensure the PTM
 cycle is reliably triggered
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
Cc: david.zage@intel.com, vinschen@redhat.com, vinicius.gomes@intel.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 rodrigo.cadore@l-acoustics.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Christopher,


Thank you for the patch.

Am 07.08.24 um 02:30 schrieb christopher.s.hall@intel.com:
> From: Christopher S M Hall <christopher.s.hall@intel.com>
> 
> Writing to clear the PTM status 'valid' bit while the PTM cycle is
> triggered results in unreliable PTM operation. To fix this, clear the
> PTM 'trigger' and status after each PTM transaction.

I do not understand, why the *valid* bit is not needed anymore, and why 
it’s the trigger bit seems to do the same task. It’d be great if you 
elaborated.

Is that also documented in the dataheet?

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
>    fails
> 
> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
>   drivers/net/ethernet/intel/igc/igc_ptp.c     | 70 ++++++++++++--------
>   2 files changed, 42 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 511384f3ec5c..ec191d26c650 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -583,6 +583,7 @@
>   #define IGC_PTM_STAT_T4M1_OVFL		BIT(3) /* T4 minus T1 overflow */
>   #define IGC_PTM_STAT_ADJUST_1ST		BIT(4) /* 1588 timer adjusted during 1st PTM cycle */
>   #define IGC_PTM_STAT_ADJUST_CYC		BIT(5) /* 1588 timer adjusted during non-1st PTM cycle */
> +#define IGC_PTM_STAT_ALL        		GENMASK(5, 0) /* Used to clear all status */
>   
>   /* PCIe PTM Cycle Control */
>   #define IGC_PTM_CYCLE_CTRL_CYC_TIME(msec)	((msec) & 0x3ff) /* PTM Cycle Time (msec) */
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 946edbad4302..00cc80d8d164 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -974,11 +974,38 @@ static void igc_ptm_log_error(struct igc_adapter *adapter, u32 ptm_stat)
>   	}
>   }
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
>   static int igc_phc_get_syncdevicetime(ktime_t *device,
>   				      struct system_counterval_t *system,
>   				      void *ctx)
>   {
> -	u32 stat, t2_curr_h, t2_curr_l, ctrl;
> +	u32 stat, t2_curr_h, t2_curr_l;
>   	struct igc_adapter *adapter = ctx;
>   	struct igc_hw *hw = &adapter->hw;
>   	int err, count = 100;
> @@ -994,25 +1021,13 @@ static int igc_phc_get_syncdevicetime(ktime_t *device,
>   		 * are transitory. Repeating the process returns valid
>   		 * data eventually.
>   		 */
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
>   		err = readx_poll_timeout(rd32, IGC_PTM_STAT, stat,
>   					 stat, IGC_PTM_STAT_SLEEP,
>   					 IGC_PTM_STAT_TIMEOUT);
> +		igc_ptm_reset(hw);
> +
>   		if (err < 0) {
>   			netdev_err(adapter->netdev, "Timeout reading IGC_PTM_STAT register\n");
>   			return err;
> @@ -1021,15 +1036,7 @@ static int igc_phc_get_syncdevicetime(ktime_t *device,
>   		if ((stat & IGC_PTM_STAT_VALID) == IGC_PTM_STAT_VALID)
>   			break;
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

Could this refactoring be a separate commit?

>   	} while (--count);
>   
>   	if (!count) {
> @@ -1255,7 +1262,7 @@ void igc_ptp_stop(struct igc_adapter *adapter)
>   void igc_ptp_reset(struct igc_adapter *adapter)
>   {
>   	struct igc_hw *hw = &adapter->hw;
> -	u32 cycle_ctrl, ctrl;
> +	u32 cycle_ctrl, ctrl, stat;
>   	unsigned long flags;
>   	u32 timadj;
>   
> @@ -1290,14 +1297,19 @@ void igc_ptp_reset(struct igc_adapter *adapter)
>   		ctrl = IGC_PTM_CTRL_EN |
>   			IGC_PTM_CTRL_START_NOW |
>   			IGC_PTM_CTRL_SHRT_CYC(IGC_PTM_SHORT_CYC_DEFAULT) |
> -			IGC_PTM_CTRL_PTM_TO(IGC_PTM_TIMEOUT_DEFAULT) |
> -			IGC_PTM_CTRL_TRIG;
> +			IGC_PTM_CTRL_PTM_TO(IGC_PTM_TIMEOUT_DEFAULT);
>   
>   		wr32(IGC_PTM_CTRL, ctrl);
>   
>   		/* Force the first cycle to run. */
> -		wr32(IGC_PTM_STAT, IGC_PTM_STAT_VALID);
> +		igc_ptm_trigger(hw);
> +
> +		if (readx_poll_timeout_atomic(rd32, IGC_PTM_STAT, stat,
> +					      stat, IGC_PTM_STAT_SLEEP,
> +					      IGC_PTM_STAT_TIMEOUT))
> +			netdev_err(adapter->netdev, "Timeout reading IGC_PTM_STAT register\n");

I’d add the timeout value to the message.

>   
> +		igc_ptm_reset(hw);
>   		break;
>   	default:
>   		/* No work to do. */


Kind regards,

Paul
