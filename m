Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1DE77E39C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 16:32:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A2C541E59;
	Wed, 16 Aug 2023 14:32:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A2C541E59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692196323;
	bh=+HAATAhRQvgBwVa7IxBn5iODhCXtGgK88mk6bhD5Ezw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HCFbal1PQVpjzq4OLoGH/5uxdEtKN80RMHRhXzYVSvSwXoR0v+wx5LXr7sbnVCHJU
	 Hd/WHsooCXHv4CXim77DF+Hd3roqey6JSdhndI1Bo92rfb8N3jkh6Dea6gx5n8R2dV
	 7DOmpeSHdHsytpcvPNNTV0wPqC1G9FOLNO90AOwWyWjWqVbzbaPzQ42hkCMj+5lyFt
	 CASfMrMlQfscWzMB1EIRT9G+GflKafkhYyjKhln6Vz87CmWTbLhJ70uWBQytkqKICZ
	 QXvJMUek5YttJDpDzK9DZw1yI6+ZgXk+xZJ8OchKBafgLO6kuS904StrYamm/XeIBb
	 qIPSU9RbCD35A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tF6gj8ievfIS; Wed, 16 Aug 2023 14:32:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D91941E54;
	Wed, 16 Aug 2023 14:32:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D91941E54
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A65B21BF41B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:31:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7E62061367
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:31:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E62061367
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aZ9IS3k376TX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 14:31:54 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9D9EC61366
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 14:31:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D9EC61366
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7429C62023;
 Wed, 16 Aug 2023 14:31:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B2E2C433C8;
 Wed, 16 Aug 2023 14:31:52 +0000 (UTC)
Date: Wed, 16 Aug 2023 17:31:48 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20230816143148.GX22185@unreal>
References: <20230816085454.235440-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230816085454.235440-1-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692196312;
 bh=IalgyWP00nls9iz5H4Epnnl80SzME+5KTptIjGJfRBU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dVfXwWrY1/A/bkqoYzwraEN4tUVmKsOqyiu/gfr0w/wSVEpueWIXKPh20G/jEZgLk
 P5Wmm5jygyeM1j5HEuK2XME3dN1kKo5Jxo75zK29ZgeyEK2Jqc5j714ucYN3+tPrlG
 ao4bbc5mh7tm4NIWk85/CR1Rot8pBRI0RPItzvRt+ZGjgy//u3iJfo/+Ait/eo4Fc2
 YI2JcucF/KN8Nug0SDV/S5mXzL3rS3SlTVvxxHg1etP8KObUlV6orw7MDarL9BKFQZ
 m6pCjKOVh0mLXgqMSAb1T7lYFr1g+M2IG+wojoCt+1z3t1K4yCoaioWC8PK83aGlWe
 sIta6Ju8HzfIg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=dVfXwWrY
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: store VF's pci_dev ptr
 in ice_vf
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 16, 2023 at 04:54:54AM -0400, Przemek Kitszel wrote:
> Extend struct ice_vf by vfdev.
> Calculation of vfdev falls more nicely into ice_create_vf_entries().
> 
> Caching of vfdev enables simplification of ice_restore_all_vfs_msi_state().

I see that old code had access to pci_dev * of VF without any locking
from concurrent PCI core access. How is it protected? How do you make
sure that vfdev is valid?

Generally speaking, it is rarely good idea to cache VF pci_dev pointers
inside driver.

Thanks

> 
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> add/remove: 0/0 grow/shrink: 2/1 up/down: 157/-130 (27)
> Function                                     old     new   delta
> ice_sriov_configure                         1712    1866    +154
> ice_pci_err_resume                           168     171      +3
> ice_restore_all_vfs_msi_state                200      70    -130
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c   |  2 +-
>  drivers/net/ethernet/intel/ice/ice_sriov.c  | 40 +++++++++------------
>  drivers/net/ethernet/intel/ice/ice_sriov.h  |  4 +--
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h |  2 +-
>  4 files changed, 21 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index a6dd336d2500..d04498c2fd6d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5561,7 +5561,7 @@ static void ice_pci_err_resume(struct pci_dev *pdev)
>  		return;
>  	}
>  
> -	ice_restore_all_vfs_msi_state(pdev);
> +	ice_restore_all_vfs_msi_state(pf);
>  
>  	ice_do_reset(pf, ICE_RESET_PFR);
>  	ice_service_task_restart(pf);
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 31314e7540f8..48bc8ea55265 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -789,14 +789,19 @@ static const struct ice_vf_ops ice_sriov_vf_ops = {
>   */
>  static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
>  {
> +	struct pci_dev *pdev = pf->pdev;
>  	struct ice_vfs *vfs = &pf->vfs;
> +	struct pci_dev *vfdev = NULL;
>  	struct ice_vf *vf;
> -	u16 vf_id;
> -	int err;
> +	u16 vf_pdev_id;
> +	int err, pos;
>  
>  	lockdep_assert_held(&vfs->table_lock);
>  
> -	for (vf_id = 0; vf_id < num_vfs; vf_id++) {
> +	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
> +	pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID, &vf_pdev_id);
> +
> +	for (u16 vf_id = 0; vf_id < num_vfs; vf_id++) {
>  		vf = kzalloc(sizeof(*vf), GFP_KERNEL);
>  		if (!vf) {
>  			err = -ENOMEM;
> @@ -812,6 +817,10 @@ static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
>  
>  		ice_initialize_vf_entry(vf);
>  
> +		do {
> +			vfdev = pci_get_device(pdev->vendor, vf_pdev_id, vfdev);
> +		} while (vfdev && vfdev->physfn != pdev);
> +		vf->vfdev = vfdev;
>  		vf->vf_sw_id = pf->first_sw;
>  
>  		hash_add_rcu(vfs->table, &vf->entry, vf_id);
> @@ -1714,26 +1723,11 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
>   * Called when recovering from a PF FLR to restore interrupt capability to
>   * the VFs.
>   */
> -void ice_restore_all_vfs_msi_state(struct pci_dev *pdev)
> +void ice_restore_all_vfs_msi_state(struct ice_pf *pf)
>  {
> -	u16 vf_id;
> -	int pos;
> -
> -	if (!pci_num_vf(pdev))
> -		return;
> +	struct ice_vf *vf;
> +	u32 bkt;
>  
> -	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
> -	if (pos) {
> -		struct pci_dev *vfdev;
> -
> -		pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID,
> -				     &vf_id);
> -		vfdev = pci_get_device(pdev->vendor, vf_id, NULL);
> -		while (vfdev) {
> -			if (vfdev->is_virtfn && vfdev->physfn == pdev)
> -				pci_restore_msi_state(vfdev);
> -			vfdev = pci_get_device(pdev->vendor, vf_id,
> -					       vfdev);
> -		}
> -	}
> +	ice_for_each_vf(pf, bkt, vf)
> +		pci_restore_msi_state(vf->vfdev);
>  }
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
> index 346cb2666f3a..06829443d540 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.h
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
> @@ -33,7 +33,7 @@ int
>  ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi);
>  
>  void ice_free_vfs(struct ice_pf *pf);
> -void ice_restore_all_vfs_msi_state(struct pci_dev *pdev);
> +void ice_restore_all_vfs_msi_state(struct ice_pf *pf);
>  
>  int
>  ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
> @@ -67,7 +67,7 @@ static inline
>  void ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event) { }
>  static inline void ice_print_vfs_mdd_events(struct ice_pf *pf) { }
>  static inline void ice_print_vf_rx_mdd_event(struct ice_vf *vf) { }
> -static inline void ice_restore_all_vfs_msi_state(struct pci_dev *pdev) { }
> +static inline void ice_restore_all_vfs_msi_state(struct ice_pf *pf) { }
>  
>  static inline int
>  ice_sriov_configure(struct pci_dev __always_unused *pdev,
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> index 48fea6fa0362..57c36e4ccf91 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> @@ -82,7 +82,7 @@ struct ice_vf {
>  	struct rcu_head rcu;
>  	struct kref refcnt;
>  	struct ice_pf *pf;
> -
> +	struct pci_dev *vfdev;
>  	/* Used during virtchnl message handling and NDO ops against the VF
>  	 * that will trigger a VFR
>  	 */
> 
> base-commit: 0ad204c4acb8ba1ed99564b001609e62547bc79d
> -- 
> 2.40.1
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
