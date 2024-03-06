Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DA8872FCE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 08:36:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A34F81EA0;
	Wed,  6 Mar 2024 07:36:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JGVQ-KTBy0Yh; Wed,  6 Mar 2024 07:36:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB9AD81E41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709710613;
	bh=9Lm1swduD2CqKD7ElMYN2fQZD2gbgHl7L7YemyrooGA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jl6tTwkq/rdjnvRGZWd6dHy8FnEopPt/ZYmbBIwoZUZJCTYij7G87mhgC4BBaD/Ux
	 bM5V2EPMyezYMcsPQ4hcuOdpawnGHpBDvPEZ+XpDn/nw2hHreT4rpk5sV4a0dNL01p
	 zYBRGCIAWVySzsNP1TUiWMF+NzaENXEJO/d9/Emlmwp0GVtqM6A68hCwGxou4HGWzq
	 Q4PvzR4YYn+PSHBCWdIdmn/+2Qq9ywu9oOV4gPgkvMOkp+L0e08I2zO+Ambp630vWi
	 WUrLXTFnGBWvh/VquKxFH2BIvaMh22Thi4eO09gUO8xzXH6BQHKt1YQEjKCEOquWym
	 LYSzckNPp13dA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB9AD81E41;
	Wed,  6 Mar 2024 07:36:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 85B841BF584
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 07:36:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7F83740AC2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 07:36:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nI8sgk6LAtOJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 07:36:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C0078401AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0078401AD
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C0078401AD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 07:36:48 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5aedd4.dynamic.kabel-deutschland.de
 [95.90.237.212])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9829A61E5FE01;
 Wed,  6 Mar 2024 08:36:07 +0100 (CET)
Message-ID: <2ee68ccd-4c95-4d1e-ac12-9d792b84f699@molgen.mpg.de>
Date: Wed, 6 Mar 2024 08:36:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Heiner Kallweit <hkallweit1@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20240306025023.800029-1-jesse.brandeburg@intel.com>
 <20240306025023.800029-2-jesse.brandeburg@intel.com>
 <788f0d6b-107b-4d7b-813d-89db82a78e59@molgen.mpg.de>
 <8e2ef99f-1a3d-44b6-9b3d-c612e43a33c4@gmail.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <8e2ef99f-1a3d-44b6-9b3d-c612e43a33c4@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] igb: simplify pci ops
 declaration
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
Cc: netdev@vger.kernel.org, linux-pci@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Alan Brady <alan.brady@intel.com>, horms@kernel.org,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Linux folks,


Am 06.03.24 um 07:46 schrieb Heiner Kallweit:
> On 06.03.2024 07:24, Paul Menzel wrote:
>> [Cc: +linux-pci@vger.kernel.org]

>> Am 06.03.24 um 03:50 schrieb Jesse Brandeburg:
>>> The igb driver was pre-declaring tons of functions just so that it could
>>> have an early declaration of the pci_driver struct.
>>>
>>> Delete a bunch of the declarations and move the struct to the bottom of the
>>> file, after all the functions are declared.
>>>
>>> Reviewed-by: Alan Brady <alan.brady@intel.com>
>>> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>>> ---
>>> v2: address compilation failure when CONFIG_PM=n, which is then updated
>>>       in patch 2/2, fix alignment.
>>>       changes in v1 reviewed by Simon Horman
>>>       changes in v1 reviewed by Paul Menzel
>>> v1: original net-next posting
>>> ---
>>>    drivers/net/ethernet/intel/igb/igb_main.c | 53 ++++++++++-------------
>>>    1 file changed, 24 insertions(+), 29 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
>>> index 518298bbdadc..e749bf5164b8 100644
>>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>>> @@ -106,8 +106,6 @@ static int igb_setup_all_rx_resources(struct igb_adapter *);
>>>    static void igb_free_all_tx_resources(struct igb_adapter *);
>>>    static void igb_free_all_rx_resources(struct igb_adapter *);
>>>    static void igb_setup_mrqc(struct igb_adapter *);
>>> -static int igb_probe(struct pci_dev *, const struct pci_device_id *);
>>> -static void igb_remove(struct pci_dev *pdev);
>>>    static void igb_init_queue_configuration(struct igb_adapter *adapter);
>>>    static int igb_sw_init(struct igb_adapter *);
>>>    int igb_open(struct net_device *);
>>> @@ -178,20 +176,6 @@ static int igb_vf_configure(struct igb_adapter *adapter, int vf);
>>>    static int igb_disable_sriov(struct pci_dev *dev, bool reinit);
>>>    #endif
>>>    -static int igb_suspend(struct device *);
>>> -static int igb_resume(struct device *);
>>> -static int igb_runtime_suspend(struct device *dev);
>>> -static int igb_runtime_resume(struct device *dev);
>>> -static int igb_runtime_idle(struct device *dev);
>>> -#ifdef CONFIG_PM
>>> -static const struct dev_pm_ops igb_pm_ops = {
>>> -    SET_SYSTEM_SLEEP_PM_OPS(igb_suspend, igb_resume)
>>> -    SET_RUNTIME_PM_OPS(igb_runtime_suspend, igb_runtime_resume,
>>> -            igb_runtime_idle)
>>> -};
>>> -#endif
>>> -static void igb_shutdown(struct pci_dev *);
>>> -static int igb_pci_sriov_configure(struct pci_dev *dev, int num_vfs);
>>>    #ifdef CONFIG_IGB_DCA
>>>    static int igb_notify_dca(struct notifier_block *, unsigned long, void *);
>>>    static struct notifier_block dca_notifier = {
>>> @@ -219,19 +203,6 @@ static const struct pci_error_handlers igb_err_handler = {
>>>      static void igb_init_dmac(struct igb_adapter *adapter, u32 pba);
>>>    -static struct pci_driver igb_driver = {
>>> -    .name     = igb_driver_name,
>>> -    .id_table = igb_pci_tbl,
>>> -    .probe    = igb_probe,
>>> -    .remove   = igb_remove,
>>> -#ifdef CONFIG_PM
>>> -    .driver.pm = &igb_pm_ops,
>>> -#endif
>>> -    .shutdown = igb_shutdown,
>>> -    .sriov_configure = igb_pci_sriov_configure,
>>> -    .err_handler = &igb_err_handler
>>> -};
>>> -
>>>    MODULE_AUTHOR("Intel Corporation, <e1000-devel@lists.sourceforge.net>");
>>>    MODULE_DESCRIPTION("Intel(R) Gigabit Ethernet Network Driver");
>>>    MODULE_LICENSE("GPL v2");
>>
>> A lot of other drivers also have this at the end.
>>
>>> @@ -647,6 +618,8 @@ struct net_device *igb_get_hw_dev(struct e1000_hw *hw)
>>>        return adapter->netdev;
>>>    }
>>>    +static struct pci_driver igb_driver;
>>> +
>>>    /**
>>>     *  igb_init_module - Driver Registration Routine
>>>     *
>>> @@ -10170,4 +10143,26 @@ static void igb_nfc_filter_restore(struct igb_adapter *adapter)
>>>          spin_unlock(&adapter->nfc_lock);
>>>    }
>>> +
>>> +#ifdef CONFIG_PM
>>> +static const struct dev_pm_ops igb_pm_ops = {
>>> +    SET_SYSTEM_SLEEP_PM_OPS(igb_suspend, igb_resume)
>>> +    SET_RUNTIME_PM_OPS(igb_runtime_suspend, igb_runtime_resume,
>>> +               igb_runtime_idle)
>>> +};
>>> +#endif
>>> +
>>> +static struct pci_driver igb_driver = {
>>> +    .name     = igb_driver_name,
>>> +    .id_table = igb_pci_tbl,
>>> +    .probe    = igb_probe,
>>> +    .remove   = igb_remove,
>>> +#ifdef CONFIG_PM
>>> +    .driver.pm = &igb_pm_ops,
>>> +#endif
>>> +    .shutdown = igb_shutdown,
>>> +    .sriov_configure = igb_pci_sriov_configure,
>>> +    .err_handler = &igb_err_handler
>>> +};
>>> +
>>>    /* igb_main.c */
>>
>> I looked through `drivers/` and .driver.pm is unguarded there.
>> Example `drivers/video/fbdev/geode/gxfb_core.c`: >>
>>      static const struct dev_pm_ops gxfb_pm_ops = {
>>      #ifdef CONFIG_PM_SLEEP
>>              .suspend        = gxfb_suspend,
>>              .resume         = gxfb_resume,
>>              .freeze         = NULL,
>>              .thaw           = gxfb_resume,
>>              .poweroff       = NULL,
>>              .restore        = gxfb_resume,
>>      #endif
>>      };
>>
>>      static struct pci_driver gxfb_driver = {
>>              .name           = "gxfb",
>>              .id_table       = gxfb_id_table,
>>              .probe          = gxfb_probe,
>>              .remove         = gxfb_remove,
>>              .driver.pm      = &gxfb_pm_ops,
>>      };
>>
>> No idea, what driver follows the best practices though, and if it
>> would belong into a separate commit.
> 
> The geode fbdev driver may be a bad example as it's ancient. There's
> pm_sleep_ptr, SYSTEM_SLEEP_PM_OPS et al to avoid the conditional 
> compiling and use of __maybe_unused. And yes, I also think this
> should be a separate patch.

Sorry for the noise. I should looked at or remembered patch 2/2, doing 
exactly that.


Kind regards,

Paul
