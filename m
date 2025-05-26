Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C210AC430B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 May 2025 18:31:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8B2D403F6;
	Mon, 26 May 2025 16:31:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eQy9ztMeexIy; Mon, 26 May 2025 16:31:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E3AB404CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748277080;
	bh=/G2SE6RvVSLOnseu6Y2hdcMmegXD/IonIShBb2EYXho=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RBpWmDe98y9krVUpUxxuGR+NIF5H8eukTGsBheuxl+WvRELn8e8dNOtFqCWu3Fh5U
	 EkhLFiSBYT9ymJtruPUjQQ1bxY8YF3cc6XftRdNl6KXKqBvQE6/VB4Jei73m8uWWTV
	 hW3UTcnoVAIk/3x21O2ICEQDnSFSOe3I0E4u2n3AzyND6eTEEm+dZLDOYwibyN8UFM
	 zU75pK6zlQyT1E6hKY3poD8l/ggiRVLNlRsb97CCV8+R/28wGmJy/ZGpYgH/d1xQ3s
	 AU5Dv7rJvJ5hLUdpmjMBSyTHXhiyHYT5hi4bNj5ejrV3IsWJnyxKDI95duj0SqDUk1
	 Tdn+dXX3bDbZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E3AB404CD;
	Mon, 26 May 2025 16:31:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3529E68
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 16:31:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 26B4B40203
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 16:31:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fc98JWBsQqiT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 May 2025 16:31:18 +0000 (UTC)
X-Greylist: delayed 417 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 26 May 2025 16:31:17 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D78FF40363
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D78FF40363
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.176;
 helo=out-176.mta1.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
Received: from out-176.mta1.migadu.com (out-176.mta1.migadu.com
 [95.215.58.176])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D78FF40363
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 16:31:17 +0000 (UTC)
Message-ID: <6bd437c8-8011-4c24-926d-8c772297a82e@linux.dev>
Date: Mon, 26 May 2025 17:24:12 +0100
MIME-Version: 1.0
To: Milena Olech <milena.olech@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Karol Kolacinski <karol.kolacinski@intel.com>
References: <20250523155853.14625-1-milena.olech@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250523155853.14625-1-milena.olech@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1748276654;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/G2SE6RvVSLOnseu6Y2hdcMmegXD/IonIShBb2EYXho=;
 b=HYDkUR7NP2obO0OSYfKWWv9EkM9Zfld/NrMunoY196w5G3M59j2bjiZdKyxyLqRxtgrBZS
 lBd5X/P7Rc5ZOiDSxPh10wufUtfBKdcUApghuBIL4BB8ofjzooDVUzicBhMgdJ5/Egxtef
 uHM0Tp7zrnf7STAe5ID+eBC5ZLYppy8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=HYDkUR7N
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] idpf: add cross timestamping
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

On 23/05/2025 16:58, Milena Olech wrote:
> Add cross timestamp support through virtchnl mailbox messages and directly,
> through PCIe BAR registers. Cross timestamping assumes that both system
> time and device clock time values are cached simultaneously, what is
> triggered by HW. Feature is enabled for both ARM and x86 archs.
> 
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Reviewed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 138 ++++++++++++++++++
>   drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  19 ++-
>   .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  55 ++++++-
>   3 files changed, 210 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> index cb46185da749..f8d320875eb7 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> @@ -42,6 +42,13 @@ void idpf_ptp_get_features_access(const struct idpf_adapter *adapter)
>   							   direct,
>   							   mailbox);
>   
> +	/* Get the cross timestamp */
> +	direct = VIRTCHNL2_CAP_PTP_GET_CROSS_TIME;
> +	mailbox = VIRTCHNL2_CAP_PTP_GET_CROSS_TIME_MB;
> +	ptp->get_cross_tstamp_access = idpf_ptp_get_access(adapter,
> +							   direct,
> +							   mailbox);
> +
>   	/* Set the device clock time */
>   	direct = VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME;
>   	mailbox = VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME;
> @@ -171,6 +178,129 @@ static int idpf_ptp_read_src_clk_reg(struct idpf_adapter *adapter, u64 *src_clk,
>   	return 0;
>   }
>   
> +#if IS_ENABLED(CONFIG_ARM_ARCH_TIMER) || IS_ENABLED(CONFIG_X86)
> +/**
> + * idpf_ptp_get_sync_device_time_direct - Get the cross time stamp values
> + *					  directly
> + * @adapter: Driver specific private structure
> + * @dev_time: 64bit main timer value
> + * @sys_time: 64bit system time value
> + */
> +static void idpf_ptp_get_sync_device_time_direct(struct idpf_adapter *adapter,
> +						 u64 *dev_time, u64 *sys_time)
> +{
> +	u32 dev_time_lo, dev_time_hi, sys_time_lo, sys_time_hi;
> +	struct idpf_ptp *ptp = adapter->ptp;
> +
> +	spin_lock(&ptp->read_dev_clk_lock);
> +
> +	idpf_ptp_enable_shtime(adapter);
> +
> +	dev_time_lo = readl(ptp->dev_clk_regs.dev_clk_ns_l);
> +	dev_time_hi = readl(ptp->dev_clk_regs.dev_clk_ns_h);
> +
> +	sys_time_lo = readl(ptp->dev_clk_regs.sys_time_ns_l);
> +	sys_time_hi = readl(ptp->dev_clk_regs.sys_time_ns_h);
> +
> +	*dev_time = (u64)dev_time_hi << 32 | dev_time_lo;
> +	*sys_time = (u64)sys_time_hi << 32 | sys_time_lo;
> +
> +	spin_unlock(&ptp->read_dev_clk_lock);

nit: I would say the calc part should be outside of spinlock scope.
For this part of code it's just several CPU cycles, but still looks
cleaner.

> +}
> +
> +/**
> + * idpf_ptp_get_sync_device_time_mailbox - Get the cross time stamp values
> + *					   through mailbox
> + * @adapter: Driver specific private structure
> + * @dev_time: 64bit main timer value expressed in nanoseconds
> + * @sys_time: 64bit system time value expressed in nanoseconds
> + *
> + * Return: a pair of cross timestamp values on success, -errno otherwise.
> + */
> +static int idpf_ptp_get_sync_device_time_mailbox(struct idpf_adapter *adapter,
> +						 u64 *dev_time, u64 *sys_time)
> +{
> +	struct idpf_ptp_dev_timers cross_time;
> +	int err;
> +
> +	err = idpf_ptp_get_cross_time(adapter, &cross_time);
> +	if (err)
> +		return err;
> +
> +	*dev_time = cross_time.dev_clk_time_ns;
> +	*sys_time = cross_time.sys_time_ns;
> +
> +	return err;
> +}
> +
> +/**
> + * idpf_ptp_get_sync_device_time - Get the cross time stamp info
> + * @device: Current device time
> + * @system: System counter value read synchronously with device time
> + * @ctx: Context provided by timekeeping code
> + *
> + * Return: the device and the system clocks time read simultaneously on success,
> + * -errno otherwise.
> + */
> +static int idpf_ptp_get_sync_device_time(ktime_t *device,
> +					 struct system_counterval_t *system,
> +					 void *ctx)
> +{
> +	struct idpf_adapter *adapter = ctx;
> +	u64 ns_time_dev, ns_time_sys;
> +	int err;
> +
> +	switch (adapter->ptp->get_cross_tstamp_access) {
> +	case IDPF_PTP_NONE:
> +		return -EOPNOTSUPP;
> +	case IDPF_PTP_DIRECT:
> +		idpf_ptp_get_sync_device_time_direct(adapter, &ns_time_dev,
> +						     &ns_time_sys);
> +		break;
> +	case IDPF_PTP_MAILBOX:
> +		err = idpf_ptp_get_sync_device_time_mailbox(adapter,
> +							    &ns_time_dev,
> +							    &ns_time_sys);
> +		if (err)
> +			return err;
> +		break;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +
> +	*device = ns_to_ktime(ns_time_dev);
> +
> +#if IS_ENABLED(CONFIG_X86)
> +	system->cs_id = CSID_X86_ART;
> +#else
> +	system->cs_id = CSID_ARM_ARCH_COUNTER;
> +#endif /* CONFIG_X86 */

AFAIR, IS_ENABLED() can be used in normal code flow, so this code can be 
written in one line (well, 2 lines actually) without explicit macro:

         system->cs_id = IS_ENABLED(CONFIG_X86) ? CSID_X86_ART
                                                : CSID_ARM_ARCH_COUNTER

> +	system->cycles = ns_time_sys;
> +	system->use_nsecs = true;
> +
> +	return 0;
> +}
> +
> +/**
> + * idpf_ptp_get_crosststamp - Capture a device cross timestamp
> + * @info: the driver's PTP info structure
> + * @cts: The memory to fill the cross timestamp info
> + *
> + * Capture a cross timestamp between the system time and the device PTP hardware
> + * clock.
> + *
> + * Return: cross timestamp value on success, -errno on failure.
> + */
> +static int idpf_ptp_get_crosststamp(struct ptp_clock_info *info,
> +				    struct system_device_crosststamp *cts)
> +{
> +	struct idpf_adapter *adapter = idpf_ptp_info_to_adapter(info);
> +
> +	return get_device_system_crosststamp(idpf_ptp_get_sync_device_time,
> +					     adapter, NULL, cts);
> +}
> +#endif /* CONFIG_ARM_ARCH_TIMER || CONFIG_X86 */
> +
>   /**
>    * idpf_ptp_gettimex64 - Get the time of the clock
>    * @info: the driver's PTP info structure
> @@ -664,6 +794,14 @@ static void idpf_ptp_set_caps(const struct idpf_adapter *adapter)
>   	info->verify = idpf_ptp_verify_pin;
>   	info->enable = idpf_ptp_gpio_enable;
>   	info->do_aux_work = idpf_ptp_do_aux_work;
> +#if IS_ENABLED(CONFIG_ARM_ARCH_TIMER)
> +	info->getcrosststamp = idpf_ptp_get_crosststamp;
> +#elif IS_ENABLED(CONFIG_X86)
> +	if (pcie_ptm_enabled(adapter->pdev) &&
> +	    boot_cpu_has(X86_FEATURE_ART) &&
> +	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
> +		info->getcrosststamp = idpf_ptp_get_crosststamp;
> +#endif /* CONFIG_ARM_ARCH_TIMER */
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> index a876749d6116..cd19f65f9fff 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> @@ -21,6 +21,8 @@ struct idpf_ptp_cmd {
>    * @dev_clk_ns_h: high part of the device clock register
>    * @phy_clk_ns_l: low part of the PHY clock register
>    * @phy_clk_ns_h: high part of the PHY clock register
> + * @sys_time_ns_l: low part of the system time register
> + * @sys_time_ns_h: high part of the system time register
>    * @incval_l: low part of the increment value register
>    * @incval_h: high part of the increment value register
>    * @shadj_l: low part of the shadow adjust register
> @@ -42,6 +44,10 @@ struct idpf_ptp_dev_clk_regs {
>   	void __iomem *phy_clk_ns_l;
>   	void __iomem *phy_clk_ns_h;
>   
> +	/* System time */
> +	void __iomem *sys_time_ns_l;
> +	void __iomem *sys_time_ns_h;
> +
>   	/* Main timer adjustments */
>   	void __iomem *incval_l;
>   	void __iomem *incval_h;
> @@ -162,6 +168,7 @@ struct idpf_ptp_vport_tx_tstamp_caps {
>    * @dev_clk_regs: the set of registers to access the device clock
>    * @caps: PTP capabilities negotiated with the Control Plane
>    * @get_dev_clk_time_access: access type for getting the device clock time
> + * @get_cross_tstamp_access: access type for the cross timestamping
>    * @set_dev_clk_time_access: access type for setting the device clock time
>    * @adj_dev_clk_time_access: access type for the adjusting the device clock
>    * @tx_tstamp_access: access type for the Tx timestamp value read
> @@ -182,10 +189,11 @@ struct idpf_ptp {
>   	struct idpf_ptp_dev_clk_regs dev_clk_regs;
>   	u32 caps;
>   	enum idpf_ptp_access get_dev_clk_time_access:2;
> +	enum idpf_ptp_access get_cross_tstamp_access:2;
>   	enum idpf_ptp_access set_dev_clk_time_access:2;
>   	enum idpf_ptp_access adj_dev_clk_time_access:2;
>   	enum idpf_ptp_access tx_tstamp_access:2;
> -	u8 rsv;
> +	u8 rsv:6;
>   	struct idpf_ptp_secondary_mbx secondary_mbx;
>   	spinlock_t read_dev_clk_lock;
>   };
> @@ -264,6 +272,8 @@ void idpf_ptp_get_features_access(const struct idpf_adapter *adapter);
>   bool idpf_ptp_get_txq_tstamp_capability(struct idpf_tx_queue *txq);
>   int idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
>   			      struct idpf_ptp_dev_timers *dev_clk_time);
> +int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
> +			    struct idpf_ptp_dev_timers *cross_time);
>   int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter, u64 time);
>   int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter, u64 incval);
>   int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter, s64 delta);
> @@ -305,6 +315,13 @@ idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
>   	return -EOPNOTSUPP;
>   }
>   
> +static inline int
> +idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
> +			struct idpf_ptp_dev_timers *cross_time)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
>   static inline int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter,
>   					    u64 time)
>   {
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> index bdcc54a5fb56..4f1fb0cefe51 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> @@ -30,6 +30,7 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
>   		.send_buf.iov_len = sizeof(send_ptp_caps_msg),
>   		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
>   	};
> +	struct virtchnl2_ptp_cross_time_reg_offsets cross_tstamp_offsets;
>   	struct virtchnl2_ptp_clk_adj_reg_offsets clk_adj_offsets;
>   	struct virtchnl2_ptp_clk_reg_offsets clock_offsets;
>   	struct idpf_ptp_secondary_mbx *scnd_mbx;
> @@ -71,7 +72,7 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
>   
>   	access_type = ptp->get_dev_clk_time_access;
>   	if (access_type != IDPF_PTP_DIRECT)
> -		goto discipline_clock;
> +		goto cross_tstamp;
>   
>   	clock_offsets = recv_ptp_caps_msg->clk_offsets;
>   
> @@ -90,6 +91,22 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
>   	temp_offset = le32_to_cpu(clock_offsets.cmd_sync_trigger);
>   	ptp->dev_clk_regs.cmd_sync = idpf_get_reg_addr(adapter, temp_offset);
>   
> +cross_tstamp:
> +	access_type = ptp->get_cross_tstamp_access;
> +	if (access_type != IDPF_PTP_DIRECT)
> +		goto discipline_clock;
> +
> +	cross_tstamp_offsets = recv_ptp_caps_msg->cross_time_offsets;
> +
> +	temp_offset = le32_to_cpu(cross_tstamp_offsets.sys_time_ns_l);
> +	ptp->dev_clk_regs.sys_time_ns_l = idpf_get_reg_addr(adapter,
> +							    temp_offset);
> +	temp_offset = le32_to_cpu(cross_tstamp_offsets.sys_time_ns_h);
> +	ptp->dev_clk_regs.sys_time_ns_h = idpf_get_reg_addr(adapter,
> +							    temp_offset);
> +	temp_offset = le32_to_cpu(cross_tstamp_offsets.cmd_sync_trigger);
> +	ptp->dev_clk_regs.cmd_sync = idpf_get_reg_addr(adapter, temp_offset);
> +
>   discipline_clock:
>   	access_type = ptp->adj_dev_clk_time_access;
>   	if (access_type != IDPF_PTP_DIRECT)
> @@ -162,6 +179,42 @@ int idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
>   	return 0;
>   }
>   
> +/**
> + * idpf_ptp_get_cross_time - Send virtchnl get cross time message
> + * @adapter: Driver specific private structure
> + * @cross_time: Pointer to the device clock structure where the value is set
> + *
> + * Send virtchnl get cross time message to get the time of the clock and the
> + * system time.
> + *
> + * Return: 0 on success, -errno otherwise.
> + */
> +int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
> +			    struct idpf_ptp_dev_timers *cross_time)
> +{
> +	struct virtchnl2_ptp_get_cross_time cross_time_msg;
> +	struct idpf_vc_xn_params xn_params = {
> +		.vc_op = VIRTCHNL2_OP_PTP_GET_CROSS_TIME,
> +		.send_buf.iov_base = &cross_time_msg,
> +		.send_buf.iov_len = sizeof(cross_time_msg),
> +		.recv_buf.iov_base = &cross_time_msg,
> +		.recv_buf.iov_len = sizeof(cross_time_msg),
> +		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
> +	};
> +	int reply_sz;
> +
> +	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
> +	if (reply_sz < 0)
> +		return reply_sz;
> +	if (reply_sz != sizeof(cross_time_msg))
> +		return -EIO;
> +
> +	cross_time->dev_clk_time_ns = le64_to_cpu(cross_time_msg.dev_time_ns);
> +	cross_time->sys_time_ns = le64_to_cpu(cross_time_msg.sys_time_ns);
> +
> +	return 0;
> +}
> +
>   /**
>    * idpf_ptp_set_dev_clk_time - Send virtchnl set device time message
>    * @adapter: Driver specific private structure

