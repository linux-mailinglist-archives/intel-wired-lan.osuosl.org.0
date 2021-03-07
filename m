Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAA032FFAA
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Mar 2021 09:39:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 728FF83434;
	Sun,  7 Mar 2021 08:39:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1UPQ1zdE4zHP; Sun,  7 Mar 2021 08:39:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58626833D3;
	Sun,  7 Mar 2021 08:39:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 57C041BF2BC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Mar 2021 08:39:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3F1A8833CA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Mar 2021 08:39:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5JKzre9XcPcP for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Mar 2021 08:39:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3B6F28333E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Mar 2021 08:39:27 +0000 (UTC)
IronPort-SDR: 0KGAhAu/eMsfLXQBhuE5TK9a2djtEQ+FrfjQo2OyF3HhEGZonWLNKMmtf3gEm7EGxhqxHJHdfK
 8ZeTZPzVuaug==
X-IronPort-AV: E=McAfee;i="6000,8403,9915"; a="175498078"
X-IronPort-AV: E=Sophos;i="5.81,229,1610438400"; d="scan'208";a="175498078"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 00:39:23 -0800
IronPort-SDR: M+e00K1rWQjSQqckLAaK0Mg7SbqPOvmw8j/6S2L1LXSv2HXm2R9M9tmv7r8hFbKrwEJXPBDuRv
 Bw7KDHupUSEg==
X-IronPort-AV: E=Sophos;i="5.81,229,1610438400"; d="scan'208";a="408933151"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.185.168.83])
 ([10.185.168.83])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 00:39:20 -0800
To: "David E. Box" <david.e.box@linux.intel.com>, irenic.rajneesh@gmail.com,
 hdegoede@redhat.com, mgross@linux.intel.com
References: <20210305190608.1834164-1-david.e.box@linux.intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <113b08b2-ead1-7f4c-1b09-4f3572d6134f@intel.com>
Date: Sun, 7 Mar 2021 10:39:16 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210305190608.1834164-1-david.e.box@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] platform/x86: intel_pmc: Ignore GBE
 LTR on Tiger Lake platforms
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 platform-driver-x86@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/5/2021 21:06, David E. Box wrote:
> Due to a HW limitation, the Latency Tolerance Reporting (LTR) value
> programmed in the Tiger Lake GBE controller is not large enough to allow
> the platform to enter Package C10, which in turn prevents the platform from
> achieving its low power target during suspend-to-idle.  Ignore the GBE LTR
> value on Tiger Lake. LTR ignore functionality is currently performed solely
> by a debugfs write call. Split out the LTR code into its own function that
> can be called by both the debugfs writer and by this work around.
> 
> Signed-off-by: David E. Box <david.e.box@linux.intel.com>
> Reviewed-by: Sasha Neftin <sasha.neftin@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> ---
>   drivers/platform/x86/intel_pmc_core.c | 55 ++++++++++++++++++++-------
>   1 file changed, 42 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/platform/x86/intel_pmc_core.c b/drivers/platform/x86/intel_pmc_core.c
> index ee2f757515b0..ab31eb646a1a 100644
> --- a/drivers/platform/x86/intel_pmc_core.c
> +++ b/drivers/platform/x86/intel_pmc_core.c
> @@ -863,34 +863,45 @@ static int pmc_core_pll_show(struct seq_file *s, void *unused)
>   }
>   DEFINE_SHOW_ATTRIBUTE(pmc_core_pll);
>   
> -static ssize_t pmc_core_ltr_ignore_write(struct file *file,
> -					 const char __user *userbuf,
> -					 size_t count, loff_t *ppos)
> +static int pmc_core_write_ltr_ignore(u32 value)
>   {
>   	struct pmc_dev *pmcdev = &pmc;
>   	const struct pmc_reg_map *map = pmcdev->map;
> -	u32 val, buf_size, fd;
> -	int err;
> -
> -	buf_size = count < 64 ? count : 64;
> -
> -	err = kstrtou32_from_user(userbuf, buf_size, 10, &val);
> -	if (err)
> -		return err;
> +	u32 fd;
> +	int err = 0;
>   
>   	mutex_lock(&pmcdev->lock);
>   
> -	if (val > map->ltr_ignore_max) {
> +	if (fls(value) > map->ltr_ignore_max) {
>   		err = -EINVAL;
>   		goto out_unlock;
>   	}
>   
>   	fd = pmc_core_reg_read(pmcdev, map->ltr_ignore_offset);
> -	fd |= (1U << val);
> +	fd |= value;
>   	pmc_core_reg_write(pmcdev, map->ltr_ignore_offset, fd);
>   
>   out_unlock:
>   	mutex_unlock(&pmcdev->lock);
> +
> +	return err;
> +}
> +
> +static ssize_t pmc_core_ltr_ignore_write(struct file *file,
> +					 const char __user *userbuf,
> +					 size_t count, loff_t *ppos)
> +{
> +	u32 buf_size, val;
> +	int err;
> +
> +	buf_size = count < 64 ? count : 64;
> +
> +	err = kstrtou32_from_user(userbuf, buf_size, 10, &val);
> +	if (err)
> +		return err;
> +
> +	err = pmc_core_write_ltr_ignore(1U << val);
> +
>   	return err == 0 ? count : err;
>   }
>   
> @@ -1189,6 +1200,15 @@ static int quirk_xtal_ignore(const struct dmi_system_id *id)
>   	return 0;
>   }
>   
> +static int quirk_ltr_ignore(u32 val)
> +{
> +	int err;
> +
> +	err = pmc_core_write_ltr_ignore(val);
> +
> +	return err;
> +}
> +
>   static const struct dmi_system_id pmc_core_dmi_table[]  = {
>   	{
>   	.callback = quirk_xtal_ignore,
> @@ -1244,6 +1264,15 @@ static int pmc_core_probe(struct platform_device *pdev)
>   	pmcdev->pmc_xram_read_bit = pmc_core_check_read_lock_bit();
>   	dmi_check_system(pmc_core_dmi_table);
>   
> +	/*
> +	 * On TGL, due to a hardware limitation, the GBE LTR blocks PC10 when
> +	 * a cable is attached. Tell the PMC to ignore it.
> +	 */
> +	if (pmcdev->map == &tgl_reg_map) {
I would suggest: if (pmcdev->map >= &tgl_reg_map)
> +		dev_dbg(&pdev->dev, "ignoring GBE LTR\n");
> +		quirk_ltr_ignore(1U << 3);
> +	}
> +
>   	pmc_core_dbgfs_register(pmcdev);
>   
>   	device_initialized = true;
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
