Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C823FC499
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Aug 2021 11:06:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3637280EDF;
	Tue, 31 Aug 2021 09:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ek1dHVCHvbCV; Tue, 31 Aug 2021 09:06:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28EE080F15;
	Tue, 31 Aug 2021 09:06:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F88F1BF355
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 09:06:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2DE4180EF9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 09:06:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KvltrD5-mpwe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Aug 2021 09:06:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 20C8680EE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 09:06:22 +0000 (UTC)
Received: from [192.168.0.4] (ip5f5aeb24.dynamic.kabel-deutschland.de
 [95.90.235.36])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5BFCB61E64784;
 Tue, 31 Aug 2021 11:06:20 +0200 (CEST)
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
References: <20210831085728.14673-1-mateusz.palczewski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <3ee7d975-f8d6-d356-97da-b51ab3e55a93@molgen.mpg.de>
Date: Tue, 31 Aug 2021 11:06:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210831085728.14673-1-mateusz.palczewski@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Add VF VLAN pruning
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Sylwester, dear Mateusz,


Am 31.08.21 um 10:57 schrieb Mateusz Palczewski:
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> VFs were able to see all tagged traffic regardless of trust
> and VLAN filters configured.
> Change the default VLAN filters settings for an untrusted VF
> so it is able to receive only untagged traffic or traffic with VLAN tags
> it has created interfaces for.
> 
> Add new private flag vf-vlan-prune-disable that allows disabling
> of VF vlan pruning for all VF types.
> The flag is off by default and can only be changed
> if there are no VFs spawned on the PF.
> This flag will only be effective when no PVID is set
> on VF and VF is not trusted.
> Add new function that computes the correct VLAN ID
> for VF VLAN filters based on trust, PVID,
> vf-vlan-prune-disable flag and current VLAN ID.

This is not very readable. Please reformat to not wrap line after each 
sentence or comma.

While at it, please add an example, how to test it.


Kind regards,

Paul


> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e.h        |   1 +
>   .../net/ethernet/intel/i40e/i40e_ethtool.c    |   9 ++
>   drivers/net/ethernet/intel/i40e/i40e_main.c   | 138 +++++++++++++++++-
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  12 +-
>   4 files changed, 151 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index b10bc59..5fda78b 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -565,6 +565,7 @@ struct i40e_pf {
>   #define I40E_FLAG_DISABLE_FW_LLDP		BIT(24)
>   #define I40E_FLAG_RS_FEC			BIT(25)
>   #define I40E_FLAG_BASE_R_FEC			BIT(26)
> +#define I40E_FLAG_VF_VLAN_PRUNE_DISABLE		BIT(27)
>   /* TOTAL_PORT_SHUTDOWN
>    * Allows to physically disable the link on the NIC's port.
>    * If enabled, (after link down request from the OS)
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index 2c9e4ee..d47832b 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -451,6 +451,8 @@ static const struct i40e_priv_flags i40e_gstrings_priv_flags[] = {
>   	I40E_PRIV_FLAG("disable-fw-lldp", I40E_FLAG_DISABLE_FW_LLDP, 0),
>   	I40E_PRIV_FLAG("rs-fec", I40E_FLAG_RS_FEC, 0),
>   	I40E_PRIV_FLAG("base-r-fec", I40E_FLAG_BASE_R_FEC, 0),
> +	I40E_PRIV_FLAG("vf-vlan-prune-disable",
> +		       I40E_FLAG_VF_VLAN_PRUNE_DISABLE, 0),
>   };
>   
>   #define I40E_PRIV_FLAGS_STR_LEN ARRAY_SIZE(i40e_gstrings_priv_flags)
> @@ -5273,6 +5275,13 @@ flags_complete:
>   		dev_warn(&pf->pdev->dev,
>   			 "Turning on link-down-on-close flag may affect other partitions\n");
>   
> +	if ((changed_flags & I40E_FLAG_VF_VLAN_PRUNE_DISABLE) &&
> +	    pf->num_alloc_vfs) {
> +		dev_warn(&pf->pdev->dev,
> +			 "Changing vf-vlan-prune-disable flag while VF(s) are active is not supported");
> +		return -EOPNOTSUPP;
> +	}
> +
>   	if (changed_flags & I40E_FLAG_DISABLE_FW_LLDP) {
>   		if (new_flags & I40E_FLAG_DISABLE_FW_LLDP) {
>   #ifdef CONFIG_I40E_DCB
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 000991a..6ed27c0 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -1327,6 +1327,114 @@ static int i40e_correct_mac_vlan_filters(struct i40e_vsi *vsi,
>   	return 0;
>   }
>   
> +/**
> + * i40e_get_vf_new_vlan - Get new vlan id on a vf
> + * @vsi: the vsi to configure
> + * @new_mac: new mac filter to be added
> + * @f: existing mac filter, replaced with new_mac->f if new_mac is not NULL
> + * @vlan_filters: the number of active VLAN filters
> + * @trusted: flag if the VF is trusted
> + *
> + * Get new VLAN id based on current VLAN filters, trust, PVID
> + * and vf-vlan-prune-disable flag.
> + *
> + * Returns the value of the new vlan filter or
> + * the old value if no new filter is needed.
> + */
> +static s16 i40e_get_vf_new_vlan(struct i40e_vsi *vsi,
> +				struct i40e_new_mac_filter *new_mac,
> +				struct i40e_mac_filter *f,
> +				int vlan_filters,
> +				bool trusted)
> +{
> +	s16 pvid = le16_to_cpu(vsi->info.pvid);
> +	struct i40e_pf *pf = vsi->back;
> +	bool is_any;
> +
> +	if (new_mac)
> +		f = new_mac->f;
> +
> +	if (pvid && f->vlan != pvid)
> +		return pvid;
> +
> +	is_any = (trusted ||
> +		  (pf->flags & I40E_FLAG_VF_VLAN_PRUNE_DISABLE));
> +
> +	if ((vlan_filters && f->vlan == I40E_VLAN_ANY) ||
> +	    (!is_any && !vlan_filters && f->vlan == I40E_VLAN_ANY) ||
> +	    (is_any && !vlan_filters && f->vlan == 0)) {
> +		if (is_any)
> +			return I40E_VLAN_ANY;
> +		else
> +			return 0;
> +	}
> +
> +	return f->vlan;
> +}
> +
> +/**
> + * i40e_correct_vf_mac_vlan_filters - Correct non-VLAN VF filters if necessary
> + * @vsi: the vsi to configure
> + * @tmp_add_list: list of filters ready to be added
> + * @tmp_del_list: list of filters ready to be deleted
> + * @vlan_filters: the number of active VLAN filters
> + * @trusted: flag if the VF is trusted
> + *
> + * Correct VF VLAN filters based on current VLAN filters, trust, PVID
> + * and vf-vlan-prune-disable flag.
> + *
> + * In case of memory allocation failure return -ENOMEM. Otherwise, return 0.
> + *
> + * This function is only expected to be called from within
> + * i40e_sync_vsi_filters.
> + *
> + * NOTE: This function expects to be called while under the
> + * mac_filter_hash_lock
> + */
> +static int i40e_correct_vf_mac_vlan_filters(struct i40e_vsi *vsi,
> +					    struct hlist_head *tmp_add_list,
> +					    struct hlist_head *tmp_del_list,
> +					    int vlan_filters,
> +					    bool trusted)
> +{
> +	struct i40e_mac_filter *f, *add_head;
> +	struct i40e_new_mac_filter *new_mac;
> +	struct hlist_node *h;
> +	int bkt, new_vlan;
> +
> +	hlist_for_each_entry(new_mac, tmp_add_list, hlist) {
> +		new_mac->f->vlan = i40e_get_vf_new_vlan(vsi, new_mac, NULL,
> +							vlan_filters, trusted);
> +	}
> +
> +	hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist) {
> +		new_vlan = i40e_get_vf_new_vlan(vsi, NULL, f, vlan_filters,
> +						trusted);
> +		if (new_vlan != f->vlan) {
> +			add_head = i40e_add_filter(vsi, f->macaddr, new_vlan);
> +			if (!add_head)
> +				return -ENOMEM;
> +			/* Create a temporary i40e_new_mac_filter */
> +			new_mac = kzalloc(sizeof(*new_mac), GFP_ATOMIC);
> +			if (!new_mac)
> +				return -ENOMEM;
> +			new_mac->f = add_head;
> +			new_mac->state = add_head->state;
> +
> +			/* Add the new filter to the tmp list */
> +			hlist_add_head(&new_mac->hlist, tmp_add_list);
> +
> +			/* Put the original filter into the delete list */
> +			f->state = I40E_FILTER_REMOVE;
> +			hash_del(&f->hlist);
> +			hlist_add_head(&f->hlist, tmp_del_list);
> +		}
> +	}
> +
> +	vsi->has_vlan_filter = !!vlan_filters;
> +	return 0;
> +}
> +
>   /**
>    * i40e_rm_default_mac_filter - Remove the default MAC filter set by NVM
>    * @vsi: the PF Main VSI - inappropriate for any other VSI
> @@ -1501,7 +1609,7 @@ struct i40e_mac_filter *i40e_add_mac_filter(struct i40e_vsi *vsi,
>   				       le16_to_cpu(vsi->info.pvid));
>   
>   	if (!i40e_is_vsi_in_vlan(vsi))
> -		return i40e_add_filter(vsi, macaddr, I40E_VLAN_ANY);
> +		return i40e_add_filter(vsi, macaddr, 0);
>   
>   	hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist) {
>   		if (f->state == I40E_FILTER_REMOVE)
> @@ -2379,10 +2487,15 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
>   				vlan_filters++;
>   		}
>   
> -		retval = i40e_correct_mac_vlan_filters(vsi,
> -						       &tmp_add_list,
> -						       &tmp_del_list,
> -						       vlan_filters);
> +		if (vsi->type != I40E_VSI_SRIOV)
> +			retval = i40e_correct_mac_vlan_filters
> +				(vsi, &tmp_add_list, &tmp_del_list,
> +				 vlan_filters);
> +		else
> +			retval = i40e_correct_vf_mac_vlan_filters
> +				(vsi, &tmp_add_list, &tmp_del_list,
> +				 vlan_filters, pf->vf[vsi->vf_id].trusted);
> +
>   		if (retval)
>   			goto err_no_memory_locked;
>   
> @@ -2806,8 +2919,21 @@ int i40e_add_vlan_all_mac(struct i40e_vsi *vsi, s16 vid)
>   	int bkt;
>   
>   	hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist) {
> -		if (f->state == I40E_FILTER_REMOVE)
> +		/* If we're asked to add a filter that has been marked for
> +		 * removal, it is safe to simply restore it to active state.
> +		 * __i40e_del_filter will have simply deleted any filters which
> +		 * were previously marked NEW or FAILED, so if it is currently
> +		 * marked REMOVE it must have previously been ACTIVE. Since we
> +		 * haven't yet run the sync filters task, just restore this
> +		 * filter to the ACTIVE state so that the sync task leaves it
> +		 * in place.
> +		 */
> +		if (f->state == I40E_FILTER_REMOVE && f->vlan == vid) {
> +			f->state = I40E_FILTER_ACTIVE;
>   			continue;
> +		} else if (f->state == I40E_FILTER_REMOVE) {
> +			continue;
> +		}
>   		add_f = i40e_add_filter(vsi, f->macaddr, vid);
>   		if (!add_f) {
>   			dev_info(&vsi->back->pdev->dev,
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index c007fba..23a708f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -4295,6 +4295,7 @@ int i40e_ndo_set_vf_port_vlan(struct net_device *netdev, int vf_id,
>   		/* duplicate request, so just return success */
>   		goto error_pvid;
>   
> +	i40e_vlan_stripping_enable(vsi);
>   	i40e_vc_reset_vf(vf, true);
>   	/* During reset the VF got a new VSI, so refresh a pointer. */
>   	vsi = pf->vsi[vf->lan_vsi_idx];
> @@ -4310,9 +4311,9 @@ int i40e_ndo_set_vf_port_vlan(struct net_device *netdev, int vf_id,
>   	 * MAC addresses deleted.
>   	 */
>   	if ((!(vlan_id || qos) ||
> -	    vlanprio != le16_to_cpu(vsi->info.pvid)) &&
> +	     vlanprio != le16_to_cpu(vsi->info.pvid)) &&
>   	    vsi->info.pvid) {
> -		ret = i40e_add_vlan_all_mac(vsi, I40E_VLAN_ANY);
> +		ret = i40e_add_vlan_all_mac(vsi, 0);
>   		if (ret) {
>   			dev_info(&vsi->back->pdev->dev,
>   				 "add VF VLAN failed, ret=%d aq_err=%d\n", ret,
> @@ -4359,7 +4360,7 @@ int i40e_ndo_set_vf_port_vlan(struct net_device *netdev, int vf_id,
>   		}
>   
>   		/* remove the previously added non-VLAN MAC filters */
> -		i40e_rm_vlan_all_mac(vsi, I40E_VLAN_ANY);
> +		i40e_rm_vlan_all_mac(vsi, 0);
>   	}
>   
>   	spin_unlock_bh(&vsi->mac_filter_hash_lock);
> @@ -4673,6 +4674,11 @@ int i40e_ndo_set_vf_trust(struct net_device *netdev, int vf_id, bool setting)
>   		goto out;
>   
>   	vf->trusted = setting;
> +
> +	/* request PF to sync mac/vlan filters for the VF */
> +	set_bit(__I40E_MACVLAN_SYNC_PENDING, pf->state);
> +	pf->vsi[vf->lan_vsi_idx]->flags |= I40E_VSI_FLAG_FILTER_CHANGED;
> +
>   	i40e_vc_reset_vf(vf, true);
>   	dev_info(&pf->pdev->dev, "VF %u is now %strusted\n",
>   		 vf_id, setting ? "" : "un");
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
