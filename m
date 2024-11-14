Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 700EC9C89AA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 13:17:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9AFA240662;
	Thu, 14 Nov 2024 12:17:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I71soacGZUQB; Thu, 14 Nov 2024 12:17:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3AFD040272
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731586644;
	bh=IbXK65noZ0teS5qE+Mn86Q6yGkidgonivq6ofgGYNH0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KuOTcN5ht5wVRSvbsVx5QtjTYTEbvmnPhmCa934f62J7+4/O0c0K90cB2mrDjqRH9
	 2ga7Ht13k7ouBrnew4XIg1rmlP2FKNt/WnUOv1QSNY02IkEZid7zxPsU9JFpcsnRpZ
	 Mol1aZalSWhTNS+mVL/ebH9SN4CyW97tzwUXvoJdyWke8pk3JewJqWG7rDXGU6kYJF
	 W50qC56Ki6HPGZy0bGhLa+KovgFPSWdquORq87OV+mw/qvFI0wi7yIYMZpnnLwtqPo
	 vADoCF5A6n592ZBGj+4OIURJjGdOhanpq6FtE4XEAFMD332961d/M5ARA858lnjNf1
	 Xz49fisiS7YIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3AFD040272;
	Thu, 14 Nov 2024 12:17:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 582456C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 12:17:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 441F640187
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 12:17:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t2-36ECWJ9Wt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 12:17:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::b0; helo=out-176.mta1.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A3B40400D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3B40400D2
Received: from out-176.mta1.migadu.com (out-176.mta1.migadu.com
 [IPv6:2001:41d0:203:375::b0])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A3B40400D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 12:17:18 +0000 (UTC)
Message-ID: <ebf7e086-829e-4266-bef5-b4d746aea45c@linux.dev>
Date: Thu, 14 Nov 2024 12:17:06 +0000
MIME-Version: 1.0
To: Milena Olech <milena.olech@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-5-milena.olech@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20241113154616.2493297-5-milena.olech@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1731586634;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IbXK65noZ0teS5qE+Mn86Q6yGkidgonivq6ofgGYNH0=;
 b=NF0JPDjIXJNHlUkTDvxDejYzNoMUYmjwDqvaT6AVYdSKd6i9X/TVOWGEZyrir2JtY2i+Yu
 Xjj4fHLUUY8Ede5iEB4ZQL2gvKh1LOqyolriLtmsI60/DV4HO5MB4DEktYShhqjfudO9L2
 zYcFqtDt1YyWYq0Vn1BqlPmBujETfrQ=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=NF0JPDjI
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 04/10] idpf: negotiate PTP
 capabilies and get PTP clock
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

On 13/11/2024 15:46, Milena Olech wrote:
> PTP capabilities are negotiated using virtchnl command. Add get
> capabilities function, direct access to read the PTP clock time and
> direct access to read the cross timestamp - system time and PTP clock
> time. Set initial PTP capabilities exposed to the stack.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/Makefile      |   2 +
>   drivers/net/ethernet/intel/idpf/idpf.h        |   2 +
>   drivers/net/ethernet/intel/idpf/idpf_dev.c    |  14 +
>   .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |   4 +
>   drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 263 ++++++++++++++++++
>   drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  85 ++++++
>   .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  95 +++++++
>   7 files changed, 465 insertions(+)
>   create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> 
> diff --git a/drivers/net/ethernet/intel/idpf/Makefile b/drivers/net/ethernet/intel/idpf/Makefile
> index 1f38a9d7125c..83ac5e296382 100644
> --- a/drivers/net/ethernet/intel/idpf/Makefile
> +++ b/drivers/net/ethernet/intel/idpf/Makefile
> @@ -17,4 +17,6 @@ idpf-y := \
>   	idpf_vf_dev.o
>   
>   idpf-$(CONFIG_IDPF_SINGLEQ)	+= idpf_singleq_txrx.o
> +
>   idpf-$(CONFIG_PTP_1588_CLOCK)	+= idpf_ptp.o
> +idpf-$(CONFIG_PTP_1588_CLOCK)	+= idpf_virtchnl_ptp.o
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
> index 2e8b14dd9d96..d5d5064d313b 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -189,6 +189,7 @@ struct idpf_vport_max_q {
>    * @mb_intr_reg_init: Mailbox interrupt register initialization
>    * @reset_reg_init: Reset register initialization
>    * @trigger_reset: Trigger a reset to occur
> + * @ptp_reg_init: PTP register initialization
>    */
>   struct idpf_reg_ops {
>   	void (*ctlq_reg_init)(struct idpf_ctlq_create_info *cq);
> @@ -197,6 +198,7 @@ struct idpf_reg_ops {
>   	void (*reset_reg_init)(struct idpf_adapter *adapter);
>   	void (*trigger_reset)(struct idpf_adapter *adapter,
>   			      enum idpf_flags trig_cause);
> +	void (*ptp_reg_init)(const struct idpf_adapter *adapter);
>   };
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
> index 6c913a703df6..149f2c0afe92 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
> @@ -4,6 +4,7 @@
>   #include "idpf.h"
>   #include "idpf_lan_pf_regs.h"
>   #include "idpf_virtchnl.h"
> +#include "idpf_ptp.h"
>   
>   #define IDPF_PF_ITR_IDX_SPACING		0x4
>   
> @@ -145,6 +146,18 @@ static void idpf_trigger_reset(struct idpf_adapter *adapter,
>   	       idpf_get_reg_addr(adapter, PFGEN_CTRL));
>   }
>   
> +/**
> + * idpf_ptp_reg_init - Initialize required registers
> + * @adapter: Driver specific private structure
> + *
> + * Set the bits required for enabling shtime and cmd execution
> + */
> +static void idpf_ptp_reg_init(const struct idpf_adapter *adapter)
> +{
> +	adapter->ptp->cmd.shtime_enable_mask = PF_GLTSYN_CMD_SYNC_SHTIME_EN_M;
> +	adapter->ptp->cmd.exec_cmd_mask = PF_GLTSYN_CMD_SYNC_EXEC_CMD_M;
> +}
> +
>   /**
>    * idpf_reg_ops_init - Initialize register API function pointers
>    * @adapter: Driver specific private structure
> @@ -156,6 +169,7 @@ static void idpf_reg_ops_init(struct idpf_adapter *adapter)
>   	adapter->dev_ops.reg_ops.mb_intr_reg_init = idpf_mb_intr_reg_init;
>   	adapter->dev_ops.reg_ops.reset_reg_init = idpf_reset_reg_init;
>   	adapter->dev_ops.reg_ops.trigger_reset = idpf_trigger_reset;
> +	adapter->dev_ops.reg_ops.ptp_reg_init = idpf_ptp_reg_init;
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h b/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
> index 24edb8a6ec2e..cc9aa2b6a14a 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lan_pf_regs.h
> @@ -53,6 +53,10 @@
>   #define PF_FW_ATQH_ATQH_M		GENMASK(9, 0)
>   #define PF_FW_ATQT			(PF_FW_BASE + 0x24)
>   
> +/* Timesync registers */
> +#define PF_GLTSYN_CMD_SYNC_EXEC_CMD_M	GENMASK(1, 0)
> +#define PF_GLTSYN_CMD_SYNC_SHTIME_EN_M	BIT(2)
> +
>   /* Interrupts */
>   #define PF_GLINT_BASE			0x08900000
>   #define PF_GLINT_DYN_CTL(_INT)		(PF_GLINT_BASE + ((_INT) * 0x1000))
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> index 1ac6367f5989..ab242f7d72a9 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> @@ -4,6 +4,258 @@
>   #include "idpf.h"
>   #include "idpf_ptp.h"
>   
> +/**
> + * idpf_ptp_get_access - Determine the access type of the PTP features
> + * @adapter: Driver specific private structure
> + * @direct: Capability that indicates the direct access
> + * @mailbox: Capability that indicates the mailbox access
> + *
> + * Return: the type of supported access for the PTP feature.
> + */
> +static enum idpf_ptp_access
> +idpf_ptp_get_access(const struct idpf_adapter *adapter, u32 direct, u32 mailbox)
> +{
> +	if (adapter->ptp->caps & direct)
> +		return IDPF_PTP_DIRECT;
> +	else if (adapter->ptp->caps & mailbox)
> +		return IDPF_PTP_MAILBOX;
> +	else
> +		return IDPF_PTP_NONE;
> +}
> +
> +/**
> + * idpf_ptp_get_features_access - Determine the access type of PTP features
> + * @adapter: Driver specific private structure
> + *
> + * Fulfill the adapter structure with type of the supported PTP features
> + * access.
> + */
> +void idpf_ptp_get_features_access(const struct idpf_adapter *adapter)
> +{
> +	struct idpf_ptp *ptp = adapter->ptp;
> +	u32 direct, mailbox;
> +
> +	/* Get the device clock time */
> +	direct = VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TIME;
> +	mailbox = VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TIME_MB;
> +	ptp->get_dev_clk_time_access = idpf_ptp_get_access(adapter,
> +							   direct,
> +							   mailbox);
> +
> +	/* Get the cross timestamp */
> +	direct = VIRTCHNL2_CAP_PTP_GET_CROSS_TIME;
> +	mailbox = VIRTCHNL2_CAP_PTP_GET_CROSS_TIME_MB;
> +	ptp->get_cross_tstamp_access = idpf_ptp_get_access(adapter,
> +							   direct,
> +							   mailbox);
> +}
> +
> +/**
> + * idpf_ptp_enable_shtime - Enable shadow time and execute a command
> + * @adapter: Driver specific private structure
> + */
> +static void idpf_ptp_enable_shtime(struct idpf_adapter *adapter)
> +{
> +	u32 shtime_enable, exec_cmd;
> +
> +	/* Get offsets */
> +	shtime_enable = adapter->ptp->cmd.shtime_enable_mask;
> +	exec_cmd = adapter->ptp->cmd.exec_cmd_mask;
> +
> +	/* Set the shtime en and the sync field */
> +	writel(shtime_enable, adapter->ptp->dev_clk_regs.cmd_sync);
> +	writel(exec_cmd | shtime_enable, adapter->ptp->dev_clk_regs.cmd_sync);
> +}
> +
> +/**
> + * idpf_ptp_read_src_clk_reg_direct - Read directly the main timer value
> + * @adapter: Driver specific private structure
> + * @sts: Optional parameter for holding a pair of system timestamps from
> + *	 the system clock. Will be ignored when NULL is given.
> + *
> + * Return: the device clock time on success, -errno otherwise.
> + */
> +static u64 idpf_ptp_read_src_clk_reg_direct(struct idpf_adapter *adapter,
> +					    struct ptp_system_timestamp *sts)
> +{
> +	struct idpf_ptp *ptp = adapter->ptp;
> +	u32 hi, lo;
> +
> +	/* Read the system timestamp pre PHC read */
> +	ptp_read_system_prets(sts);
> +
> +	idpf_ptp_enable_shtime(adapter);
> +	lo = readl(ptp->dev_clk_regs.dev_clk_ns_l);
> +
> +	/* Read the system timestamp post PHC read */
> +	ptp_read_system_postts(sts);
> +
> +	hi = readl(ptp->dev_clk_regs.dev_clk_ns_h);
> +
> +	return ((u64)hi << 32) | lo;
> +}

Am I right that idpf_ptp_enable_shtime() "freezes" the time in clk
registers and you can be sure that no changes will happen while you are
doing 2 transactions? If yes, then what does unfreeze it? Or does it
just copy new values to the registers and they will stay until the next
command?

> +
> +/**
> + * idpf_ptp_read_src_clk_reg - Read the main timer value
> + * @adapter: Driver specific private structure
> + * @src_clk: Returned main timer value in nanoseconds unit
> + * @sts: Optional parameter for holding a pair of system timestamps from
> + *	 the system clock. Will be ignored if NULL is given.
> + *
> + * Return: the device clock time on success, -errno otherwise.
> + */
> +static int idpf_ptp_read_src_clk_reg(struct idpf_adapter *adapter, u64 *src_clk,
> +				     struct ptp_system_timestamp *sts)
> +{
> +	switch (adapter->ptp->get_dev_clk_time_access) {
> +	case IDPF_PTP_NONE:
> +		return -EOPNOTSUPP;
> +	case IDPF_PTP_DIRECT:
> +		*src_clk = idpf_ptp_read_src_clk_reg_direct(adapter, sts);
> +		break;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +
> +	return 0;
> +}
> +
> +#if IS_ENABLED(CONFIG_ARM_ARCH_TIMER) || (IS_ENABLED(CONFIG_X86) && IS_ENABLED(CONFIG_PCIE_PTM))
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
> +	idpf_ptp_enable_shtime(adapter);
> +
> +	dev_time_lo = readl(ptp->dev_clk_regs.dev_clk_ns_l);
> +	dev_time_hi = readl(ptp->dev_clk_regs.dev_clk_ns_h);
> +
> +	sys_time_lo = readl(ptp->dev_clk_regs.sys_time_ns_l);
> +	sys_time_hi = readl(ptp->dev_clk_regs.sys_time_ns_h);
> +
> +	*dev_time = ((u64)dev_time_hi << 32) | dev_time_lo;
> +	*sys_time = ((u64)sys_time_hi << 32) | sys_time_lo;
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
> +
> +	switch (adapter->ptp->get_cross_tstamp_access) {
> +	case IDPF_PTP_NONE:
> +		return -EOPNOTSUPP;
> +	case IDPF_PTP_DIRECT:
> +		idpf_ptp_get_sync_device_time_direct(adapter, &ns_time_dev,
> +						     &ns_time_sys);
> +		break;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +
> +	*device = ns_to_ktime(ns_time_dev);
> +
> +#if IS_ENABLED(CONFIG_X86) && IS_ENABLED(CONFIG_PCIE_PTM)
> +	system->cycles = ns_time_sys;
> +	system->cs_id = CSID_X86_ART;
> +#endif /* CONFIG_X86 && CONFIG_PCIE_PTM */

Why don't you check if PTM is actually enabled for the device?

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
> +#endif /* CONFIG_ARM_ARCH_TIMER || (CONFIG_X86 && CONFIG_PCIE_PTM) */
> +
> +/**
> + * idpf_ptp_gettimex64 - Get the time of the clock
> + * @info: the driver's PTP info structure
> + * @ts: timespec64 structure to hold the current time value
> + * @sts: Optional parameter for holding a pair of system timestamps from
> + *	 the system clock. Will be ignored if NULL is given.
> + *
> + * Return: the device clock value in ns, after converting it into a timespec
> + * struct on success, -errno otherwise.
> + */
> +static int idpf_ptp_gettimex64(struct ptp_clock_info *info,
> +			       struct timespec64 *ts,
> +			       struct ptp_system_timestamp *sts)
> +{
> +	struct idpf_adapter *adapter = idpf_ptp_info_to_adapter(info);
> +	u64 time_ns;
> +	int err;
> +
> +	err = idpf_ptp_read_src_clk_reg(adapter, &time_ns, sts);
> +	if (err)
> +		return -EACCES;
> +
> +	*ts = ns_to_timespec64(time_ns);
> +
> +	return 0;
> +}
> +
> +/**
> + * idpf_ptp_set_caps - Set PTP capabilities
> + * @adapter: Driver specific private structure
> + *
> + * This function sets the PTP functions.
> + */
> +static void idpf_ptp_set_caps(const struct idpf_adapter *adapter)
> +{
> +	struct ptp_clock_info *info = &adapter->ptp->info;
> +
> +	snprintf(info->name, sizeof(info->name), "%s-%s-clk",
> +		 KBUILD_MODNAME, pci_name(adapter->pdev));
> +
> +	info->owner = THIS_MODULE;
> +	info->gettimex64 = idpf_ptp_gettimex64;
> +
> +#if IS_ENABLED(CONFIG_ARM_ARCH_TIMER)
> +	info->getcrosststamp = idpf_ptp_get_crosststamp;
> +#elif IS_ENABLED(CONFIG_X86) && IS_ENABLED(CONFIG_PCIE_PTM)
> +	if (pcie_ptm_enabled(adapter->pdev) &&
> +	    boot_cpu_has(X86_FEATURE_ART) &&
> +	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
> +		info->getcrosststamp = idpf_ptp_get_crosststamp;
> +#endif /* CONFIG_ARM_ARCH_TIMER */

Looks like this part can be rewritten without macroses. IS_ENABLED() can
be used in normal if() clause, pcie_ptm_enabled() is available anyway, 
feature checks are also OK. The code will be cleaner, I believe.

> +}
> +
>   /**
>    * idpf_ptp_create_clock - Create PTP clock device for userspace
>    * @adapter: Driver specific private structure
> @@ -16,6 +268,8 @@ static int idpf_ptp_create_clock(const struct idpf_adapter *adapter)
>   {
>   	struct ptp_clock *clock;
>   
> +	idpf_ptp_set_caps(adapter);
> +
>   	/* Attempt to register the clock before enabling the hardware. */
>   	clock = ptp_clock_register(&adapter->ptp->info,
>   				   &adapter->pdev->dev);
> @@ -55,6 +309,15 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
>   	/* add a back pointer to adapter */
>   	adapter->ptp->adapter = adapter;
>   
> +	if (adapter->dev_ops.reg_ops.ptp_reg_init)
> +		adapter->dev_ops.reg_ops.ptp_reg_init(adapter);
> +
> +	err = idpf_ptp_get_caps(adapter);
> +	if (err) {
> +		pci_err(adapter->pdev, "Failed to get PTP caps err %d\n", err);
> +		goto free_ptp;
> +	}
> +
>   	err = idpf_ptp_create_clock(adapter);
>   	if (err)
>   		goto free_ptp;
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> index cb19988ca60f..9b7439f30009 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> @@ -6,21 +6,97 @@
>   
>   #include <linux/ptp_clock_kernel.h>
>   
> +/**
> + * struct idpf_ptp_cmd - PTP command masks
> + * @exec_cmd_mask: mask to trigger command execution
> + * @shtime_enable_mask: mask to enable shadow time
> + */
> +struct idpf_ptp_cmd {
> +	u32 exec_cmd_mask;
> +	u32 shtime_enable_mask;
> +};
> +
> +/* struct idpf_ptp_dev_clk_regs - PTP device registers
> + * @dev_clk_ns_l: low part of the device clock register
> + * @dev_clk_ns_h: high part of the device clock register
> + * @phy_clk_ns_l: low part of the PHY clock register
> + * @phy_clk_ns_h: high part of the PHY clock register
> + * @sys_time_ns_l: low part of the system time register
> + * @sys_time_ns_h: high part of the system time register
> + * @cmd: PTP command register
> + * @phy_cmd: PHY command register
> + * @cmd_sync: PTP command synchronization register
> + */
> +struct idpf_ptp_dev_clk_regs {
> +	/* Main clock */
> +	void __iomem *dev_clk_ns_l;
> +	void __iomem *dev_clk_ns_h;
> +
> +	/* PHY timer */
> +	void __iomem *phy_clk_ns_l;
> +	void __iomem *phy_clk_ns_h;
> +
> +	/* System time */
> +	void __iomem *sys_time_ns_l;
> +	void __iomem *sys_time_ns_h;
> +
> +	/* Command */
> +	void __iomem *cmd;
> +	void __iomem *phy_cmd;
> +	void __iomem *cmd_sync;
> +};
> +
> +/**
> + * enum idpf_ptp_access - the type of access to PTP operations
> + * @IDPF_PTP_NONE: no access
> + * @IDPF_PTP_DIRECT: direct access through BAR registers
> + * @IDPF_PTP_MAILBOX: access through mailbox messages
> + */
> +enum idpf_ptp_access {
> +	IDPF_PTP_NONE = 0,
> +	IDPF_PTP_DIRECT,
> +	IDPF_PTP_MAILBOX,
> +};
> +
>   /**
>    * struct idpf_ptp - PTP parameters
>    * @info: structure defining PTP hardware capabilities
>    * @clock: pointer to registered PTP clock device
>    * @adapter: back pointer to the adapter
> + * @cmd: HW specific command masks
> + * @dev_clk_regs: the set of registers to access the device clock
> + * @caps: PTP capabilities negotiated with the Control Plane
> + * @get_dev_clk_time_access: access type for getting the device clock time
> + * @get_cross_tstamp_access: access type for the cross timestamping
>    */
>   struct idpf_ptp {
>   	struct ptp_clock_info info;
>   	struct ptp_clock *clock;
>   	struct idpf_adapter *adapter;
> +	struct idpf_ptp_cmd cmd;
> +	struct idpf_ptp_dev_clk_regs dev_clk_regs;
> +	u32 caps;
> +	enum idpf_ptp_access get_dev_clk_time_access:16;
> +	enum idpf_ptp_access get_cross_tstamp_access:16;
>   };
>   
> +/**
> + * idpf_ptp_info_to_adapter - get driver adapter struct from ptp_clock_info
> + * @info: pointer to ptp_clock_info struct
> + */
> +static inline struct idpf_adapter *
> +idpf_ptp_info_to_adapter(const struct ptp_clock_info *info)
> +{
> +	const struct idpf_ptp *ptp = container_of_const(info, struct idpf_ptp,
> +							info);
> +	return ptp->adapter;
> +}
> +
>   #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
>   int idpf_ptp_init(struct idpf_adapter *adapter);
>   void idpf_ptp_release(struct idpf_adapter *adapter);
> +int idpf_ptp_get_caps(struct idpf_adapter *adapter);
> +void idpf_ptp_get_features_access(const struct idpf_adapter *adapter);
>   #else /* CONFIG_PTP_1588_CLOCK */
>   static inline int idpf_ptp_init(struct idpf_adapter *adpater)
>   {
> @@ -28,5 +104,14 @@ static inline int idpf_ptp_init(struct idpf_adapter *adpater)
>   }
>   
>   static inline void idpf_ptp_release(struct idpf_adapter *adpater) { }
> +
> +static inline int idpf_ptp_get_caps(struct idpf_adapter *adapter)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
> +static inline void
> +idpf_ptp_get_features_access(const struct idpf_adapter *adapter) { }
> +
>   #endif /* CONFIG_PTP_1588_CLOCK */
>   #endif /* _IDPF_PTP_H */
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> new file mode 100644
> index 000000000000..123bc0008d43
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> @@ -0,0 +1,95 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/* Copyright (C) 2024 Intel Corporation */
> +
> +#include "idpf.h"
> +#include "idpf_ptp.h"
> +#include "idpf_virtchnl.h"
> +
> +/**
> + * idpf_ptp_get_caps - Send virtchnl get ptp capabilities message
> + * @adapter: Driver specific private structure
> + *
> + * Send virtchnl get PTP capabilities message.
> + *
> + * Return: 0 on success, -errno on failure.
> + */
> +int idpf_ptp_get_caps(struct idpf_adapter *adapter)
> +{
> +	struct virtchnl2_ptp_get_caps *recv_ptp_caps_msg __free(kfree) = NULL;
> +	struct virtchnl2_ptp_get_caps send_ptp_caps_msg = {
> +		.caps = cpu_to_le32(VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TIME |
> +				    VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TIME_MB |
> +				    VIRTCHNL2_CAP_PTP_GET_CROSS_TIME |
> +				    VIRTCHNL2_CAP_PTP_GET_CROSS_TIME_MB)
> +	};
> +	struct idpf_vc_xn_params xn_params = {
> +		.vc_op = VIRTCHNL2_OP_PTP_GET_CAPS,
> +		.send_buf.iov_base = &send_ptp_caps_msg,
> +		.send_buf.iov_len = sizeof(send_ptp_caps_msg),
> +		.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
> +	};
> +	struct virtchnl2_ptp_cross_time_reg_offsets cross_tstamp_offsets;
> +	struct virtchnl2_ptp_clk_reg_offsets clock_offsets;
> +	struct idpf_ptp *ptp = adapter->ptp;
> +	enum idpf_ptp_access access_type;
> +	u32 temp_offset;
> +	int reply_sz;
> +
> +	recv_ptp_caps_msg = kzalloc(sizeof(struct virtchnl2_ptp_get_caps),
> +				    GFP_KERNEL);
> +	if (!recv_ptp_caps_msg)
> +		return -ENOMEM;
> +
> +	xn_params.recv_buf.iov_base = recv_ptp_caps_msg;
> +	xn_params.recv_buf.iov_len = sizeof(*recv_ptp_caps_msg);
> +
> +	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
> +	if (reply_sz < 0)
> +		return reply_sz;
> +	else if (reply_sz != sizeof(*recv_ptp_caps_msg))
> +		return -EIO;
> +
> +	ptp->caps = le32_to_cpu(recv_ptp_caps_msg->caps);
> +
> +	/* Determine the access type for the PTP features */
> +	idpf_ptp_get_features_access(adapter);
> +
> +	access_type = ptp->get_dev_clk_time_access;
> +	if (access_type != IDPF_PTP_DIRECT)
> +		goto cross_tstamp;
> +
> +	clock_offsets = recv_ptp_caps_msg->clk_offsets;
> +
> +	temp_offset = le32_to_cpu(clock_offsets.dev_clk_ns_l);
> +	ptp->dev_clk_regs.dev_clk_ns_l = idpf_get_reg_addr(adapter,
> +							   temp_offset);
> +	temp_offset = le32_to_cpu(clock_offsets.dev_clk_ns_h);
> +	ptp->dev_clk_regs.dev_clk_ns_h = idpf_get_reg_addr(adapter,
> +							   temp_offset);
> +	temp_offset = le32_to_cpu(clock_offsets.phy_clk_ns_l);
> +	ptp->dev_clk_regs.phy_clk_ns_l = idpf_get_reg_addr(adapter,
> +							   temp_offset);
> +	temp_offset = le32_to_cpu(clock_offsets.phy_clk_ns_h);
> +	ptp->dev_clk_regs.phy_clk_ns_h = idpf_get_reg_addr(adapter,
> +							   temp_offset);
> +	temp_offset = le32_to_cpu(clock_offsets.cmd_sync_trigger);
> +	ptp->dev_clk_regs.cmd_sync = idpf_get_reg_addr(adapter, temp_offset);
> +
> +cross_tstamp:
> +	access_type = ptp->get_cross_tstamp_access;
> +	if (access_type != IDPF_PTP_DIRECT)
> +		return 0;
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
> +	return 0;
> +}

