Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E48A95DE16
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Aug 2024 15:31:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 556EE60631;
	Sat, 24 Aug 2024 13:31:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U3U8uFV2OwuA; Sat, 24 Aug 2024 13:31:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89B5660679
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724506308;
	bh=By+9d/bjsTbz3AMjd+tpF0ffK793AcsP8+qEqCE6xsk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qDRZtWL2DaazuqnnjzA4nNJdmcIPSaxGJhxoyeZuBkeMoqs03DjqSMuHdJmHRLxJo
	 TjjPt19ebcmkblsL+7LaWgOc5/RV4ppeXoyguK4CmIxtQiJtF6ZHSaapRaiBWdd22u
	 gzkQXZaNTEXNJCOEAgj7Twdb4V0qj3FM3qOLLxrsJJFjTzysd0M7xtOuzkD60l75yj
	 Upx5nja4IJzaxfsaw8AXe4qYQuQqa9yrQ0m2TxVpfnmoT9nPS1B+CRDjLa5rt2l8UD
	 7MTDuW4PIDif4bam6j+IobN4WBJgQOaTGUGN5AzlfFsfqQKt+gtBpqOuCNGDcCbyiN
	 YRAEezJNL8vLw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89B5660679;
	Sat, 24 Aug 2024 13:31:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 93F951BF349
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Aug 2024 13:31:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E291401F2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Aug 2024 13:31:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FAV5aXu-u_z9 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 24 Aug 2024 13:31:44 +0000 (UTC)
X-Greylist: delayed 413 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 24 Aug 2024 13:31:44 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7086E401BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7086E401BD
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7086E401BD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Aug 2024 13:31:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id BD0C8A4026C;
 Sat, 24 Aug 2024 13:24:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E51DC32781;
 Sat, 24 Aug 2024 13:24:47 +0000 (UTC)
Date: Sat, 24 Aug 2024 14:24:44 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240824132444.GJ2164@kernel.org>
References: <20240820102402.576985-8-karol.kolacinski@intel.com>
 <20240820102402.576985-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240820102402.576985-14-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724505889;
 bh=D2rtWieEJVWzfAuaNbII3BgZn4dk5gP03rrbWLJ8GPw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qyfBeatCOLfH7YePatMg4huDqUivmJAfqnzzIVwf0pvAOhNL1LZUStmjPc7tp97r/
 LP6DnwE4H+I3USzOG0W+99lWqfMfCfVE/yV4WGLMZfAgdtPjQKF1rZ36pJZYkyMopz
 BGaqpyvJO0STYORjAcamC/UzYGDON5AdB094oE8mzFo6Of4rdDOdkxBsVflJlTYmG1
 TYUNnalpTX4any8fmUuL/ClGCchY9K15usI+t4yC7HZ9Dpl6HcdyrZfkZQ8pvViyu6
 oldAnw4IsjRD646xKidtVhlCNn7e9PI1S8H1qSxTbZETjAg9JzwyBhCM8+ZXBSIiMX
 OJurgt5Gr5FHQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qyfBeatC
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 6/6] ice: combine cross
 timestamp functions for E82x and E830
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
Cc: netdev@vger.kernel.org, Frederic Weisbecker <frederic@kernel.org>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Anna-Maria Behnsen <anna-maria@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

+ Time maintainers: Anna-Maria Behnsen, Frederic Weisbecker, Thomas Gleixner

On Tue, Aug 20, 2024 at 12:21:53PM +0200, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The E830 and E82x devices use essentially the same logic for performing
> a crosstimestamp. The only difference is that E830 hardware has
> different offsets. Instead of having two implementations, combine them
> into a single ice_capture_crosststamp() function.
> 
> Also combine the wrapper functions which call
> get_device_system_crosststamp() into a single ice_ptp_getcrosststamp()
> function.

As pointed out by Jacob in his review of v3 [1], while harmless enough, the
above comment doesn't reflect (no longer reflects) what the patch actually
does.

[1] https://lore.kernel.org/netdev/b60a8fef-3262-4921-a8ba-360465eb8832@intel.com/

> 
> To support both hardware types, the ice_capture_crosststamp function
> must be able to determine the appropriate registers to access. To handle
> this, pass a custom context structure instead of the PF pointer. This
> structure, ice_crosststamp_ctx, contains a pointer to the PF, and
> a pointer to the device configuration structure. This new structure also
> will make it easier to implement historic snapshot support in a future
> commit.
> 
> The device configuration structure is a static const data which defines
> the offsets and flags for the various registers. This includes the lock
> register, the cross timestamp control register, the upper and lower ART
> system time capture registers, and the upper and lower device time
> capture registers for each timer index.
> 
> This does add extra data to the .text of the module (and thus kernel),
> but it also removes 2 near duplicate functions for enabling E830
> support.
> 
> Use the configuration structure to access all of the registers in
> ice_capture_crosststamp(). Ensure that we don't over-run the device time
> array by checking that the timer index is 0 or 1. Previously this was
> simply assumed, and it would cause the device to read an incorrect and
> likely garbage register.
> 
> It does feel like there should be a kernel interface for managing
> register offsets like this, but the closest thing I saw was
> <linux/regmap.h> which is interesting but not quite what we're looking
> for...
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

There was some discussion in the review of v3, of how to handle
the architecture dependent parts of this patch. While I see that
has been cleaned up to some extent. It seems to me that the underlying
questions remain. And while I don't think it needs to block progress,
there was a suggestion at the time from Jakub [2] to:

  "... CC tglx / the time maintainers on the next version
   and net-next submission. I get the feeling they will wake up in a year
   telling us we did it all wrong, but hey, all we can do now is CC them.."

[2] https://lore.kernel.org/netdev/20240808072058.09215916@kernel.org/

As that does not seem to have happened, I have CCed them on this email.
For reference, this thread that this email is part of can be found at [3].

[3] https://lore.kernel.org/netdev/20240820102402.576985-8-karol.kolacinski@intel.com/

> ---
> V4 -> V5: Removed unnecessary CPU features check for SoCs (E82X) and
>           X86_FEATURE_TSC_KNOWN_FREQ check for E830
> 
>  drivers/net/ethernet/intel/Kconfig            |   2 +-
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   8 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |   7 +
>  drivers/net/ethernet/intel/ice/ice_ptp.c      | 246 ++++++++++++------
>  4 files changed, 187 insertions(+), 76 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
> index 0375c7448a57..90415fe785ac 100644
> --- a/drivers/net/ethernet/intel/Kconfig
> +++ b/drivers/net/ethernet/intel/Kconfig
> @@ -334,7 +334,7 @@ config ICE_SWITCHDEV
>  config ICE_HWTS
>  	bool "Support HW cross-timestamp on platforms with PTM support"
>  	default y
> -	depends on ICE && X86
> +	depends on ICE && X86 && PCIE_PTM
>  	help
>  	  Say Y to enable hardware supported cross-timestamping on platforms
>  	  with PCIe PTM support. The cross-timestamp is available through
> diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> index 646089f3e26c..495b182ea13b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> +++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> @@ -541,6 +541,14 @@
>  #define E830_PRTMAC_CL01_QNT_THR_CL0_M		GENMASK(15, 0)
>  #define E830_PRTTSYN_TXTIME_H(_i)		(0x001E5800 + ((_i) * 32))
>  #define E830_PRTTSYN_TXTIME_L(_i)		(0x001E5000 + ((_i) * 32))
> +#define E830_GLPTM_ART_CTL			0x00088B50
> +#define E830_GLPTM_ART_CTL_ACTIVE_M		BIT(0)
> +#define E830_GLPTM_ART_TIME_H			0x00088B54
> +#define E830_GLPTM_ART_TIME_L			0x00088B58
> +#define E830_GLTSYN_PTMTIME_H(_i)		(0x00088B48 + ((_i) * 4))
> +#define E830_GLTSYN_PTMTIME_L(_i)		(0x00088B40 + ((_i) * 4))
> +#define E830_PFPTM_SEM				0x00088B00
> +#define E830_PFPTM_SEM_BUSY_M			BIT(0)
>  #define VFINT_DYN_CTLN(_i)			(0x00003800 + ((_i) * 4))
>  #define VFINT_DYN_CTLN_CLEARPBA_M		BIT(1)
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 9108613dcac3..ef322f846f1b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5042,6 +5042,12 @@ static int ice_init(struct ice_pf *pf)
>  	if (err)
>  		return err;
>  
> +	if (pf->hw.mac_type == ICE_MAC_E830) {
> +		err = pci_enable_ptm(pf->pdev, NULL);
> +		if (err)
> +			dev_dbg(ice_pf_to_dev(pf), "PCIe PTM not supported by PCIe bus/controller\n");
> +	}
> +
>  	err = ice_alloc_vsis(pf);
>  	if (err)
>  		goto err_alloc_vsis;

This feels like it could be a separate patch: the patch description
mainly deals with struct ice_crosststamp_cfg and refactoring around that.
This seems related yet separate to my eye.

> @@ -5272,6 +5278,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>  	hw->subsystem_device_id = pdev->subsystem_device;
>  	hw->bus.device = PCI_SLOT(pdev->devfn);
>  	hw->bus.func = PCI_FUNC(pdev->devfn);
> +
>  	ice_set_ctrlq_len(hw);
>  
>  	pf->msg_enable = netif_msg_init(debug, ICE_DFLT_NETIF_M);

This hunk does not seem to be related to the rest of the patch.

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index b438647717cc..765ec175941d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2144,93 +2144,157 @@ static int ice_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
>  	return 0;
>  }
>  
> +/**
> + * struct ice_crosststamp_cfg - Device cross timestamp configuration
> + * @lock_reg: The hardware semaphore lock to use
> + * @lock_busy: Bit in the semaphore lock indicating the lock is busy
> + * @ctl_reg: The hardware register to request cross timestamp
> + * @ctl_active: Bit in the control register to request cross timestamp
> + * @art_time_l: Lower 32-bits of ART system time
> + * @art_time_h: Upper 32-bits of ART system time
> + * @dev_time_l: Lower 32-bits of device time (per timer index)
> + * @dev_time_h: Upper 32-bits of device time (per timer index)
> + */
> +struct ice_crosststamp_cfg {
> +	/* HW semaphore lock register */
> +	u32 lock_reg;
> +	u32 lock_busy;
> +
> +	/* Capture control register */
> +	u32 ctl_reg;
> +	u32 ctl_active;
> +
> +	/* Time storage */
> +	u32 art_time_l;
> +	u32 art_time_h;
> +	u32 dev_time_l[2];
> +	u32 dev_time_h[2];
> +};
> +
> +static const struct ice_crosststamp_cfg ice_crosststamp_cfg_e82x = {
> +	.lock_reg = PFHH_SEM,
> +	.lock_busy = PFHH_SEM_BUSY_M,
> +	.ctl_reg = GLHH_ART_CTL,
> +	.ctl_active = GLHH_ART_CTL_ACTIVE_M,
> +	.art_time_l = GLHH_ART_TIME_L,
> +	.art_time_h = GLHH_ART_TIME_H,
> +	.dev_time_l[0] = GLTSYN_HHTIME_L(0),
> +	.dev_time_h[0] = GLTSYN_HHTIME_H(0),
> +	.dev_time_l[1] = GLTSYN_HHTIME_L(1),
> +	.dev_time_h[1] = GLTSYN_HHTIME_H(1),
> +};
> +
>  #ifdef CONFIG_ICE_HWTS
> +static const struct ice_crosststamp_cfg ice_crosststamp_cfg_e830 = {
> +	.lock_reg = E830_PFPTM_SEM,
> +	.lock_busy = E830_PFPTM_SEM_BUSY_M,
> +	.ctl_reg = E830_GLPTM_ART_CTL,
> +	.ctl_active = E830_GLPTM_ART_CTL_ACTIVE_M,
> +	.art_time_l = E830_GLPTM_ART_TIME_L,
> +	.art_time_h = E830_GLPTM_ART_TIME_H,
> +	.dev_time_l[0] = E830_GLTSYN_PTMTIME_L(0),
> +	.dev_time_h[0] = E830_GLTSYN_PTMTIME_H(0),
> +	.dev_time_l[1] = E830_GLTSYN_PTMTIME_L(1),
> +	.dev_time_h[1] = E830_GLTSYN_PTMTIME_H(1),
> +};
> +
> +#endif /* CONFIG_ICE_HWTS */
> +/**
> + * struct ice_crosststamp_ctx - Device cross timestamp context
> + * @snapshot: snapshot of system clocks for historic interpolation
> + * @pf: pointer to the PF private structure
> + * @cfg: pointer to hardware configuration for cross timestamp
> + */
> +struct ice_crosststamp_ctx {
> +	struct system_time_snapshot snapshot;
> +	struct ice_pf *pf;
> +	const struct ice_crosststamp_cfg *cfg;
> +};
> +
>  /**
> - * ice_ptp_get_syncdevicetime - Get the cross time stamp info
> + * ice_capture_crosststamp - Capture a device/system cross timestamp
>   * @device: Current device time
>   * @system: System counter value read synchronously with device time
> - * @ctx: Context provided by timekeeping code
> + * @__ctx: Context passed from ice_ptp_getcrosststamp
>   *
>   * Read device and system (ART) clock simultaneously and return the corrected
>   * clock values in ns.
> + *
> + * Return: zero on success, or a negative error code on failure.
>   */
> -static int
> -ice_ptp_get_syncdevicetime(ktime_t *device,
> -			   struct system_counterval_t *system,
> -			   void *ctx)
> +static int ice_capture_crosststamp(ktime_t *device,
> +				   struct system_counterval_t *system,
> +				   void *__ctx)
>  {
> -	struct ice_pf *pf = (struct ice_pf *)ctx;
> -	struct ice_hw *hw = &pf->hw;
> -	u32 hh_lock, hh_art_ctl;
> -	int i;
> +	struct ice_crosststamp_ctx *ctx = __ctx;
> +	const struct ice_crosststamp_cfg *cfg;
> +	u32 lock, ctl, ts_lo, ts_hi, tmr_idx;
> +	struct ice_pf *pf;
> +	struct ice_hw *hw;
> +	int err;
> +	u64 ts;
>  
> -#define MAX_HH_HW_LOCK_TRIES	5
> -#define MAX_HH_CTL_LOCK_TRIES	100
> +	cfg = ctx->cfg;
> +	pf = ctx->pf;
> +	hw = &pf->hw;
>  
> -	for (i = 0; i < MAX_HH_HW_LOCK_TRIES; i++) {
> -		/* Get the HW lock */
> -		hh_lock = rd32(hw, PFHH_SEM + (PFTSYN_SEM_BYTES * hw->pf_id));
> -		if (hh_lock & PFHH_SEM_BUSY_M) {
> -			usleep_range(10000, 15000);
> -			continue;
> -		}
> -		break;
> -	}
> -	if (hh_lock & PFHH_SEM_BUSY_M) {
> -		dev_err(ice_pf_to_dev(pf), "PTP failed to get hh lock\n");
> +	tmr_idx = hw->func_caps.ts_func_info.tmr_index_assoc;
> +	if (tmr_idx > 1)
> +		return -EINVAL;
> +
> +	/* Poll until we obtain the cross-timestamp hardware semaphore */
> +	err = rd32_poll_timeout(hw, cfg->lock_reg, lock,
> +				!(lock & cfg->lock_busy),
> +				10 * USEC_PER_MSEC, 50 * USEC_PER_MSEC);
> +	if (err) {
> +		dev_err(ice_pf_to_dev(pf), "PTP failed to get cross timestamp lock\n");
>  		return -EBUSY;
>  	}

It may have made review easier if the rd32_poll_timeout() conversion
(and one more below) was broken out from a separate patch to introducing
struct system_counterval_t and combining E82x and E830 support.

>  
> +	/* Snapshot system time for historic interpolation */
> +	ktime_get_snapshot(&ctx->snapshot);
> +

It is not clear to me how this relates to the patch description or the rest
of the patch.  Perhaps it could be a separate change? Or at least
highlighted in the patch description.

>  	/* Program cmd to master timer */
>  	ice_ptp_src_cmd(hw, ICE_PTP_READ_TIME);
>  
>  	/* Start the ART and device clock sync sequence */
> -	hh_art_ctl = rd32(hw, GLHH_ART_CTL);
> -	hh_art_ctl = hh_art_ctl | GLHH_ART_CTL_ACTIVE_M;
> -	wr32(hw, GLHH_ART_CTL, hh_art_ctl);
> -
> -	for (i = 0; i < MAX_HH_CTL_LOCK_TRIES; i++) {
> -		/* Wait for sync to complete */
> -		hh_art_ctl = rd32(hw, GLHH_ART_CTL);
> -		if (hh_art_ctl & GLHH_ART_CTL_ACTIVE_M) {
> -			udelay(1);
> -			continue;
> -		} else {
> -			u32 hh_ts_lo, hh_ts_hi, tmr_idx;
> -			u64 hh_ts;
> -
> -			tmr_idx = hw->func_caps.ts_func_info.tmr_index_assoc;
> -			/* Read ART time */
> -			hh_ts_lo = rd32(hw, GLHH_ART_TIME_L);
> -			hh_ts_hi = rd32(hw, GLHH_ART_TIME_H);
> -			hh_ts = ((u64)hh_ts_hi << 32) | hh_ts_lo;
> -			system->cycles = hh_ts;
> -			system->cs_id = CSID_X86_ART;
> -			/* Read Device source clock time */
> -			hh_ts_lo = rd32(hw, GLTSYN_HHTIME_L(tmr_idx));
> -			hh_ts_hi = rd32(hw, GLTSYN_HHTIME_H(tmr_idx));
> -			hh_ts = ((u64)hh_ts_hi << 32) | hh_ts_lo;
> -			*device = ns_to_ktime(hh_ts);
> -			break;
> -		}
> -	}
> +	ctl = rd32(hw, cfg->ctl_reg);
> +	ctl |= cfg->ctl_active;
> +	wr32(hw, cfg->ctl_reg, ctl);
>  
> +	/* Poll until hardware completes the capture */
> +	err = rd32_poll_timeout(hw, cfg->ctl_reg, ctl, !(ctl & cfg->ctl_active),
> +				5, 20 * USEC_PER_MSEC);
> +	if (err)
> +		goto err_timeout;
> +
> +	/* Read ART system time */
> +	ts_lo = rd32(hw, cfg->art_time_l);
> +	ts_hi = rd32(hw, cfg->art_time_h);
> +	ts = ((u64)ts_hi << 32) | ts_lo;
> +	system->cycles = ts;
> +	system->cs_id = CSID_X86_ART;
> +
> +	/* Read Device source clock time */
> +	ts_lo = rd32(hw, cfg->dev_time_l[tmr_idx]);
> +	ts_hi = rd32(hw, cfg->dev_time_h[tmr_idx]);
> +	ts = ((u64)ts_hi << 32) | ts_lo;
> +	*device = ns_to_ktime(ts);
> +
> +err_timeout:
>  	/* Clear the master timer */
>  	ice_ptp_src_cmd(hw, ICE_PTP_NOP);
>  
>  	/* Release HW lock */
> -	hh_lock = rd32(hw, PFHH_SEM + (PFTSYN_SEM_BYTES * hw->pf_id));
> -	hh_lock = hh_lock & ~PFHH_SEM_BUSY_M;
> -	wr32(hw, PFHH_SEM + (PFTSYN_SEM_BYTES * hw->pf_id), hh_lock);
> -
> -	if (i == MAX_HH_CTL_LOCK_TRIES)
> -		return -ETIMEDOUT;
> +	lock = rd32(hw, cfg->lock_reg);
> +	lock &= ~cfg->lock_busy;
> +	wr32(hw, cfg->lock_reg, lock);
>  
> -	return 0;
> +	return err;
>  }
>  
>  /**
> - * ice_ptp_getcrosststamp_e82x - Capture a device cross timestamp
> + * ice_ptp_getcrosststamp - Capture a device cross timestamp
>   * @info: the driver's PTP info structure
>   * @cts: The memory to fill the cross timestamp info
>   *
> @@ -2238,22 +2302,36 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
>   * clock. Fill the cross timestamp information and report it back to the
>   * caller.
>   *
> - * This is only valid for E822 and E823 devices which have support for
> - * generating the cross timestamp via PCIe PTM.
> - *
>   * In order to correctly correlate the ART timestamp back to the TSC time, the
>   * CPU must have X86_FEATURE_TSC_KNOWN_FREQ.
> + *
> + * Return: zero on success, or a negative error code on failure.
>   */
> -static int
> -ice_ptp_getcrosststamp_e82x(struct ptp_clock_info *info,
> -			    struct system_device_crosststamp *cts)
> +static int ice_ptp_getcrosststamp(struct ptp_clock_info *info,
> +				  struct system_device_crosststamp *cts)
>  {
>  	struct ice_pf *pf = ptp_info_to_pf(info);
> +	struct ice_crosststamp_ctx ctx = {
> +		.pf = pf,
> +	};
>  
> -	return get_device_system_crosststamp(ice_ptp_get_syncdevicetime,
> -					     pf, NULL, cts);
> -}
> +	switch (pf->hw.mac_type) {
> +	case ICE_MAC_GENERIC:
> +	case ICE_MAC_GENERIC_3K_E825:
> +		ctx.cfg = &ice_crosststamp_cfg_e82x;
> +		break;
> +#ifdef CONFIG_ICE_HWTS
> +	case ICE_MAC_E830:
> +		ctx.cfg = &ice_crosststamp_cfg_e830;
> +		break;
>  #endif /* CONFIG_ICE_HWTS */
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +
> +	return get_device_system_crosststamp(ice_capture_crosststamp, &ctx,
> +					     &ctx.snapshot, cts);
> +}
>  
>  /**
>   * ice_ptp_get_ts_config - ioctl interface to read the timestamping config
> @@ -2528,12 +2606,8 @@ static int ice_ptp_parse_sdp_entries(struct ice_pf *pf, __le16 *entries,
>   */
>  static void ice_ptp_set_funcs_e82x(struct ice_pf *pf)
>  {
> -#ifdef CONFIG_ICE_HWTS
> -	if (boot_cpu_has(X86_FEATURE_ART) &&
> -	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
> -		pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp_e82x;
> +	pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp;
>  
> -#endif /* CONFIG_ICE_HWTS */
>  	if (pf->hw.mac_type == ICE_MAC_GENERIC_3K_E825) {
>  		pf->ptp.ice_pin_desc = ice_pin_desc_e825c;
>  		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e825c);
> @@ -2600,6 +2674,26 @@ static void ice_ptp_set_funcs_e810(struct ice_pf *pf)
>  	}
>  }
>  
> +/**
> + * ice_ptp_set_funcs_e830 - Set specialized functions for E830 support
> + * @pf: Board private structure
> + *
> + * Assign functions to the PTP capabiltiies structure for E830 devices.
> + * Functions which operate across all device families should be set directly
> + * in ice_ptp_set_caps. Only add functions here which are distinct for E830
> + * devices.
> + */
> +static void ice_ptp_set_funcs_e830(struct ice_pf *pf)
> +{
> +#ifdef CONFIG_ICE_HWTS
> +	if (pcie_ptm_enabled(pf->pdev) && boot_cpu_has(X86_FEATURE_ART))
> +		pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp;
> +
> +#endif /* CONFIG_ICE_HWTS */
> +	/* Rest of the config is the same as base E810 */
> +	ice_ptp_set_funcs_e810(pf);
> +}
> +
>  /**
>   * ice_ptp_set_caps - Set PTP capabilities
>   * @pf: Board private structure
> @@ -2624,9 +2718,11 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
>  
>  	switch (pf->hw.mac_type) {
>  	case ICE_MAC_E810:
> -	case ICE_MAC_E830:
>  		ice_ptp_set_funcs_e810(pf);
>  		return;
> +	case ICE_MAC_E830:
> +		ice_ptp_set_funcs_e830(pf);
> +		return;
>  	case ICE_MAC_GENERIC:
>  	case ICE_MAC_GENERIC_3K_E825:
>  		ice_ptp_set_funcs_e82x(pf);
> -- 
> 2.46.0
> 
> 
