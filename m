Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACF8935249
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jul 2024 21:58:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD55940544;
	Thu, 18 Jul 2024 19:58:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oKl9j6AxxobM; Thu, 18 Jul 2024 19:58:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9144440785
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721332701;
	bh=DgrE6wr580xOuo3YM5RDBZfCn6mN1D4S8gbmivIJoEM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DpQnXhW91w4fqHSOmVdD3Mbv0vGyE+1SxGvWfBekT9m6+g7Vt/iLW5wOkXC8F0XI/
	 DPPsAz2QayhNKLk4ho/kTC/UhrfTc7Qex8zyBcSI0+dvDXxRObQIqSI9XQ+qMn4VSU
	 kplEgkBf1HdQparTsngn7GEvWAEpEfK2IfqEq13ZRUhwulDOfCjsSpg9al8Fvg3U1q
	 2Ybf/sxDdAli22ocI/7W2aQGnIn/IhHWb27qi9A2r1/laTmdKu+erEKbWVA+2vVIEB
	 OOrYX8MCuX1E0UOzhXj+T5RKKM4tqWfu+IUKfkr+xoJG+bKiYKJ2/IMoXm+KZ0mhWW
	 4a21WDmgMFCRw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9144440785;
	Thu, 18 Jul 2024 19:58:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C95E11BF36D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 19:58:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C1BEB81E3B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 19:58:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8ILB-ZPIWCGG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jul 2024 19:58:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2BD5E81DF6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BD5E81DF6
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2BD5E81DF6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 19:58:16 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af546.dynamic.kabel-deutschland.de
 [95.90.245.70])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A313961E5FE01;
 Thu, 18 Jul 2024 21:57:44 +0200 (CEST)
Message-ID: <09299d30-50d6-4132-871b-2ed4b3fe5c68@molgen.mpg.de>
Date: Thu, 18 Jul 2024 21:57:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kamal Heib <kheib@redhat.com>
References: <20240718181319.145884-1-kheib@redhat.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240718181319.145884-1-kheib@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: Add support for fw
 health report
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Kamal,


Thank you for your patch.

Am 18.07.24 um 20:13 schrieb Kamal Heib:
> Add support for reporting fw status via the devlink health report.

I do not know the interface. So, the driver already has some way to 
communicate with the firmware, and you only need to hook it up to devlink?

> Example:
>   # devlink health show pci/0000:02:00.0 reporter fw
>   pci/0000:02:00.0:
>     reporter fw
>       state healthy error 0 recover 0
>   # devlink health diagnose pci/0000:02:00.0 reporter fw
>   Mode: normal

Any way to force it into recovery mode to also check it?

> Signed-off-by: Kamal Heib <kheib@redhat.com>
> ---
> v2:
> - Address comments from Jiri.
> - Move the creation of the health report.
> ---
>   drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
>   .../net/ethernet/intel/i40e/i40e_devlink.c    | 57 +++++++++++++++++++
>   .../net/ethernet/intel/i40e/i40e_devlink.h    |  2 +
>   drivers/net/ethernet/intel/i40e/i40e_main.c   | 14 +++++
>   4 files changed, 74 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index d546567e0286..f94671b6e7c6 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -465,6 +465,7 @@ static inline const u8 *i40e_channel_mac(struct i40e_channel *ch)
>   struct i40e_pf {
>   	struct pci_dev *pdev;
>   	struct devlink_port devlink_port;
> +	struct devlink_health_reporter *fw_health_report;
>   	struct i40e_hw hw;
>   	DECLARE_BITMAP(state, __I40E_STATE_SIZE__);
>   	struct msix_entry *msix_entries;
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> index cc4e9e2addb7..8fe64284e8d3 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> @@ -122,6 +122,25 @@ static int i40e_devlink_info_get(struct devlink *dl,
>   	return err;
>   }
>   
> +static int i40e_fw_reporter_diagnose(struct devlink_health_reporter *reporter,
> +				     struct devlink_fmsg *fmsg,
> +				     struct netlink_ext_ack *extack)
> +{
> +	struct i40e_pf *pf = devlink_health_reporter_priv(reporter);
> +
> +	if (test_bit(__I40E_RECOVERY_MODE, pf->state))
> +		devlink_fmsg_string_pair_put(fmsg, "Mode", "recovery");
> +	else
> +		devlink_fmsg_string_pair_put(fmsg, "Mode", "normal");

I’d use ternary operator.

> +
> +	return 0;
> +}
> +
> +static const struct devlink_health_reporter_ops i40e_fw_reporter_ops = {
> +	.name = "fw",
> +	.diagnose = i40e_fw_reporter_diagnose,
> +};
> +
>   static const struct devlink_ops i40e_devlink_ops = {
>   	.info_get = i40e_devlink_info_get,
>   };
> @@ -233,3 +252,41 @@ void i40e_devlink_destroy_port(struct i40e_pf *pf)
>   {
>   	devlink_port_unregister(&pf->devlink_port);
>   }
> +
> +/**
> + * i40e_devlink_create_health_reporter - Create the health reporter for this PF
> + * @pf: the PF to create reporter for
> + *
> + * Create health reporter for this PF.
> + *
> + * Return: zero on success or an error code on failure.

No dot/period at the end.

> + **/
> +int i40e_devlink_create_health_reporter(struct i40e_pf *pf)
> +{
> +	struct devlink *devlink = priv_to_devlink(pf);
> +	struct device *dev = &pf->pdev->dev;
> +	int rc = 0;
> +
> +	devl_lock(devlink);
> +	pf->fw_health_report =
> +		devl_health_reporter_create(devlink, &i40e_fw_reporter_ops, 0, pf);
> +	if (IS_ERR(pf->fw_health_report)) {
> +		rc = PTR_ERR(pf->fw_health_report);
> +		dev_err(dev, "Failed to create fw reporter, err = %d\n", rc);
> +	}
> +	devl_unlock(devlink);
> +
> +	return rc;
> +}
> +
> +/**
> + * i40e_devlink_destroy_health_reporter - Destroy the health reporter
> + * @pf: the PF to cleanup

The verb is spelled with a space: clean up.

> + *
> + * Destroy the health reporter
> + **/
> +void i40e_devlink_destroy_health_reporter(struct i40e_pf *pf)
> +{
> +	if (!IS_ERR_OR_NULL(pf->fw_health_report))
> +		devlink_health_reporter_destroy(pf->fw_health_report);
> +}
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.h b/drivers/net/ethernet/intel/i40e/i40e_devlink.h
> index 469fb3d2ee25..018679094bb5 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_devlink.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.h
> @@ -14,5 +14,7 @@ void i40e_devlink_register(struct i40e_pf *pf);
>   void i40e_devlink_unregister(struct i40e_pf *pf);
>   int i40e_devlink_create_port(struct i40e_pf *pf);
>   void i40e_devlink_destroy_port(struct i40e_pf *pf);
> +int i40e_devlink_create_health_reporter(struct i40e_pf *pf);
> +void i40e_devlink_destroy_health_reporter(struct i40e_pf *pf);
>   
>   #endif /* _I40E_DEVLINK_H_ */
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index cbcfada7b357..b6b3ae299b28 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -15370,6 +15370,9 @@ static bool i40e_check_recovery_mode(struct i40e_pf *pf)
>   		dev_crit(&pf->pdev->dev, "Firmware recovery mode detected. Limiting functionality.\n");
>   		dev_crit(&pf->pdev->dev, "Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode.\n");
>   		set_bit(__I40E_RECOVERY_MODE, pf->state);
> +		if (pf->fw_health_report)
> +			devlink_health_report(pf->fw_health_report,
> +					      "recovery mode detected", pf);
>   
>   		return true;
>   	}
> @@ -15810,6 +15813,13 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	if (test_bit(__I40E_RECOVERY_MODE, pf->state))
>   		return i40e_init_recovery_mode(pf, hw);
>   
> +	err = i40e_devlink_create_health_reporter(pf);
> +	if (err) {
> +		dev_err(&pdev->dev,
> +			"Failed to create health reporter %d\n", err);
> +		goto err_health_reporter;
> +	}
> +
>   	err = i40e_init_lan_hmc(hw, hw->func_caps.num_tx_qp,
>   				hw->func_caps.num_rx_qp, 0, 0);
>   	if (err) {
> @@ -16175,6 +16185,8 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	(void)i40e_shutdown_lan_hmc(hw);
>   err_init_lan_hmc:
>   	kfree(pf->qp_pile);
> +	i40e_devlink_destroy_health_reporter(pf);
> +err_health_reporter:
>   err_sw_init:
>   err_adminq_setup:
>   err_pf_reset:
> @@ -16209,6 +16221,8 @@ static void i40e_remove(struct pci_dev *pdev)
>   
>   	i40e_devlink_unregister(pf);
>   
> +	i40e_devlink_destroy_health_reporter(pf);
> +
>   	i40e_dbg_pf_exit(pf);
>   
>   	i40e_ptp_stop(pf);


Kind regards,

Paul
