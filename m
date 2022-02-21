Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A70444BDAB0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Feb 2022 16:53:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F3D440236;
	Mon, 21 Feb 2022 15:53:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z9A7IuOfL_QY; Mon, 21 Feb 2022 15:53:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0CE6A40268;
	Mon, 21 Feb 2022 15:53:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 63A1A1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 15:53:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5DC0140268
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 15:53:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JjkG_0PSgQYj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Feb 2022 15:53:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9CCF540236
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 15:53:44 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aee3b.dynamic.kabel-deutschland.de
 [95.90.238.59])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3760161E64846;
 Mon, 21 Feb 2022 16:53:41 +0100 (CET)
Message-ID: <770c2232-b19c-a831-1e37-69b9c1271493@molgen.mpg.de>
Date: Mon, 21 Feb 2022 16:53:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
References: <20220221151329.27346-1-mateusz.palczewski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220221151329.27346-1-mateusz.palczewski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Add restoration of VF
 MSI-X state during PCI reset
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
Cc: Slawomir Laba <slawomirx.laba@intel.com>, intel-wired-lan@lists.osuosl.org,
 Karen Sornek <karen.sornek@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Slawomir, dear Mateusz,


Am 21.02.22 um 16:13 schrieb Mateusz Palczewski:
> From: Slawomir Laba <slawomirx.laba@intel.com>

Thank you for your patch. To shorten the commit message summary, maybe 
just use: i40e Restore VF MSI-X state during PCI reset

> During a PCI FLR the MSI-X Enable flag in the VF PCI MSI-X capability
> register will be cleared. This can lead to issues when a VF is
> assigned to a VM because in these cases the VF driver receives no
> indication of the PF PCI error/reset and additionally it is incapable
> of restoring the cleared flag in the hypervisor configuration space
> without fully reinitializing the driver interrupt functionality.

For the record, can you please document the exact test environment to 
reproduce the issue, and what error is seen.

> Since the VF driver is unable to easily resolve this condition on its own,
> restore the VF MSI-X flag during the PF PCI reset handling.
> 
> Fixes: 19b7960b2da1 ("i40e: implement split PCI error reset handler")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>   v2: Fixed compilation error
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c   |  2 ++
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 32 +++++++++++++++++++
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  1 +
>   3 files changed, 35 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 2f8ddfa..442b68a 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -16151,6 +16151,8 @@ static void i40e_pci_error_reset_done(struct pci_dev *pdev)
>   		return;
>   
>   	i40e_reset_and_rebuild(pf, false, false);
> +
> +	i40e_restore_all_vfs_msi_state(pdev);
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 2606e8f..5aaa669 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -152,6 +152,38 @@ void i40e_vc_notify_reset(struct i40e_pf *pf)
>   			     (u8 *)&pfe, sizeof(struct virtchnl_pf_event));
>   }
>   
> +/**
> + * i40e_restore_all_vfs_msi_state - restore VF MSI state after PF FLR
> + * @pdev: pointer to a pci_dev structure
> + *
> + * Called when recovering from a PF FLR to restore interrupt capability to
> + * the VFs.
> + */
> +void i40e_restore_all_vfs_msi_state(struct pci_dev *pdev)
> +{
> +	struct pci_dev *vfdev;
> +	u16 vf_id;
> +	int pos;

Use u16 to match pci_find_ext_capability() signature?

> +
> +	/* Continue only if this is a PF */
> +	if (!pdev->is_physfn)
> +		return;
> +
> +	if (!pci_num_vf(pdev))
> +		return;
> +
> +	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
> +	if (pos) {
> +		pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID, &vf_id);
> +		vfdev = pci_get_device(pdev->vendor, vf_id, NULL);
> +		while (vfdev) {
> +			if (vfdev->is_virtfn && vfdev->physfn == pdev)
> +				pci_restore_msi_state(vfdev);
> +			vfdev = pci_get_device(pdev->vendor, vf_id, vfdev);

Move that in the while condition (and initialize vfdev with NULL to 
follow the pattern in `Documentation/PCI/pci.rst`?

     struct pci_dev *dev = NULL;
     while (dev = pci_get_device(VENDOR_ID, DEVICE_ID, dev))
     	configure_device(dev);

> +		}
> +	}
> +}
> +
>   /**
>    * i40e_vc_notify_vf_reset
>    * @vf: pointer to the VF structure
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> index a554d0a..7c5f166 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> @@ -134,6 +134,7 @@ int i40e_ndo_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool enable);
>   
>   void i40e_vc_notify_link_state(struct i40e_pf *pf);
>   void i40e_vc_notify_reset(struct i40e_pf *pf);
> +void i40e_restore_all_vfs_msi_state(struct pci_dev *pdev);
>   int i40e_get_vf_stats(struct net_device *netdev, int vf_id,
>   		      struct ifla_vf_stats *vf_stats);
>   


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
