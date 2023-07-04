Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3EC746886
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jul 2023 06:52:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87F0C410C1;
	Tue,  4 Jul 2023 04:52:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87F0C410C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688446374;
	bh=A6nE0ZvhVrmW7CVUQN9JdwLVUvf9YdrgZVpmtpoLUu0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FbbspTZIH8ePfLegQigi4hJ3YiPg0jtYh5+xUCl0Wao8jxGyNEH6wG+zke7/Qqo1h
	 D3i2/kUPagZN+Nb88OMOrfqo12vNvk/oG/O4LewY1tsEXxDGgAORu+OplPURa+JqC3
	 supXjCZRgYqjoRYQDcBQEvhb0mbDhDTly+UEC9yaZc5au/Wwj1XtHLfQHW3lRmXBqj
	 e7Av0xu6a7/PCBRutE+sFXdEu7jT8+AClv+kOo1W4asrFIo0+uSDwVmd3KvKb2g47H
	 lK24fngVaOLtDD1f7pQ2Zn5JBmSuF+DpdLNMunZ8Og4oq6PYvBQA/Chw2aJHGx4Kig
	 FZo+m7KhQkgBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OkgAoAaig_oP; Tue,  4 Jul 2023 04:52:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D2AF4109F;
	Tue,  4 Jul 2023 04:52:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D2AF4109F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF5AD1BF35C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 04:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 92FB7410A1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 04:52:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92FB7410A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tCRQet6UOXHg for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jul 2023 04:52:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1209C4109F
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1209C4109F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 04:52:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="426716883"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="426716883"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 21:52:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="695999632"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="695999632"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 21:52:42 -0700
Date: Tue, 4 Jul 2023 06:52:34 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZKOlcXErkz/2l4Aq@localhost.localdomain>
References: <20230703103215.54570-1-michal.swiatkowski@linux.intel.com>
 <03256fdc-66d7-fc1b-2252-bb2af136c62a@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <03256fdc-66d7-fc1b-2252-bb2af136c62a@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688446365; x=1719982365;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xNvNmEI9BYCFzgyK93CODaNDI8KRv6kM00qJov/Ol3Q=;
 b=kR1qU+GEQYzTiE4B5Q7AAftmbZHUGl+EEj/BC+iIEuJ28AXiMxSJ4t0R
 /tF5B5Y/1XPSNgbwsVnEq2bnnyCL81XLPHsOe7JeSWqeW3Ftvw4puZU//
 MaSQiPyZv6ig5EmsjI5PUzbCHCxGdV9igUKswVPV2YqWP6UbihOiDga+/
 BNZ+lQaLaQ3uQLuRTE9VDiUbeGnFYsskDbz0bYsXYdVagnMR+DA3Wc3NY
 ZltE1VQPqrUO2xciVR8FCPXm8cLCXpPIj6+UdOtKdG+sQBPmM7aWFssAr
 q7MoBBuwyMzL2YrbWXbSZZsF4VQbNRMbIVCimBsJhDS3/Kh5QVwj7yYRM
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kR1qU+GE
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: prevent call trace
 during reload
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jul 03, 2023 at 06:22:03PM +0200, Alexander Lobakin wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Date: Mon,  3 Jul 2023 12:32:15 +0200
> 
> > Calling ethtool during reload can lead to call trace, because VSI isn't
> > configured for some time, but netdev is alive.
> > 
> > To fix it add rtnl lock for VSI deconfig and config. Set ::num_q_vectors
> > to 0 after freeing and add a check for ::tx/rx_rings in ring related
> > ethtool ops.
> > 
> > Reproduction:
> > $watch -n 0.1 -d 'ethtool -g enp24s0f0np0'
> > $devlink dev reload pci/0000:18:00.0 action driver_reinit
> > 
> > Call trace before fix:
> > [66303.926205] BUG: kernel NULL pointer dereference, address: 0000000000000000
> > [66303.926259] #PF: supervisor read access in kernel mode
> > [66303.926286] #PF: error_code(0x0000) - not-present page
> > [66303.926311] PGD 0 P4D 0
> > [66303.926332] Oops: 0000 [#1] PREEMPT SMP PTI
> > [66303.926358] CPU: 4 PID: 933821 Comm: ethtool Kdump: loaded Tainted: G           OE      6.4.0-rc5+ #1
> > [66303.926400] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.00.01.0014.070920180847 07/09/2018
> > [66303.926446] RIP: 0010:ice_get_ringparam+0x22/0x50 [ice]
> > [66303.926649] Code: 90 90 90 90 90 90 90 90 f3 0f 1e fa 0f 1f 44 00 00 48 8b 87 c0 09 00 00 c7 46 04 e0 1f 00 00 c7 46 10 e0 1f 00 00 48 8b 50 20 <48> 8b 12 0f b7 52 3a 89 56 14 48 8b 40 28 48 8b 00 0f b7 40 58 48
> > [66303.926722] RSP: 0018:ffffad40472f39c8 EFLAGS: 00010246
> > [66303.926749] RAX: ffff98a8ada05828 RBX: ffff98a8c46dd060 RCX: ffffad40472f3b48
> > [66303.926781] RDX: 0000000000000000 RSI: ffff98a8c46dd068 RDI: ffff98a8b23c4000
> > [66303.926811] RBP: ffffad40472f3b48 R08: 00000000000337b0 R09: 0000000000000000
> > [66303.926843] R10: 0000000000000001 R11: 0000000000000100 R12: ffff98a8b23c4000
> > [66303.926874] R13: ffff98a8c46dd060 R14: 000000000000000f R15: ffffad40472f3a50
> > [66303.926906] FS:  00007f6397966740(0000) GS:ffff98b390900000(0000) knlGS:0000000000000000
> > [66303.926941] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [66303.926967] CR2: 0000000000000000 CR3: 000000011ac20002 CR4: 00000000007706e0
> > [66303.926999] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > [66303.927029] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> > [66303.927060] PKRU: 55555554
> > [66303.927075] Call Trace:
> > [66303.927094]  <TASK>
> > [66303.927111]  ? __die+0x23/0x70
> > [66303.927140]  ? page_fault_oops+0x171/0x4e0
> > [66303.927176]  ? exc_page_fault+0x7f/0x180
> > [66303.927209]  ? asm_exc_page_fault+0x26/0x30
> > [66303.927244]  ? ice_get_ringparam+0x22/0x50 [ice]
> > [66303.927433]  rings_prepare_data+0x62/0x80
> > [66303.927469]  ethnl_default_doit+0xe2/0x350
> > [66303.927501]  genl_family_rcv_msg_doit.isra.0+0xe3/0x140
> > [66303.927538]  genl_rcv_msg+0x1b1/0x2c0
> > [66303.927561]  ? __pfx_ethnl_default_doit+0x10/0x10
> > [66303.927590]  ? __pfx_genl_rcv_msg+0x10/0x10
> > [66303.927615]  netlink_rcv_skb+0x58/0x110
> > [66303.927644]  genl_rcv+0x28/0x40
> > [66303.927665]  netlink_unicast+0x19e/0x290
> > [66303.927691]  netlink_sendmsg+0x254/0x4d0
> > [66303.927717]  sock_sendmsg+0x93/0xa0
> > [66303.927743]  __sys_sendto+0x126/0x170
> > [66303.927780]  __x64_sys_sendto+0x24/0x30
> > [66303.928593]  do_syscall_64+0x5d/0x90
> > [66303.929370]  ? __count_memcg_events+0x60/0xa0
> > [66303.930146]  ? count_memcg_events.constprop.0+0x1a/0x30
> > [66303.930920]  ? handle_mm_fault+0x9e/0x350
> > [66303.931688]  ? do_user_addr_fault+0x258/0x740
> > [66303.932452]  ? exc_page_fault+0x7f/0x180
> > [66303.933193]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
> 
> I'd stop here, the info below is not likely to be useful, but inflate
> the commit message a bunch :D
> 

Will cut it in next version

> > [66303.933935] RIP: 0033:0x7f6397a7d957
> > [66303.934702] Code: c7 c0 ff ff ff ff eb be 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 80 3d 8d 7c 0c 00 00 41 89 ca 74 10 b8 2c 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 69 c3 55 48 89 e5 53 48 83 ec 38 44 89 4d d0
> > [66303.936290] RSP: 002b:00007fff085051b8 EFLAGS: 00000202 ORIG_RAX: 000000000000002c
> > [66303.937088] RAX: ffffffffffffffda RBX: 000055bb806aa340 RCX: 00007f6397a7d957
> > [66303.937878] RDX: 000000000000002c RSI: 000055bb806aa3b0 RDI: 0000000000000003
> > [66303.938654] RBP: 00007fff085051e0 R08: 00007f6397b4b200 R09: 000000000000000c
> > [66303.939403] R10: 0000000000000000 R11: 0000000000000202 R12: 000055bb806aa3b0
> > [66303.940131] R13: 000055bb7e977bb0 R14: 00007fff08505260 R15: 000055bb7e977570
> > [66303.940856]  </TASK>
> > [66303.941564] Modules linked in: irdma ice(OE) openvswitch nsh nf_conncount nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 qrtr rfkill sunrpc intel_rapl_msr intel_rapl_common intel_uncore_frequency intel_uncore_frequency_common isst_if_common skx_edac nfit libnvdimm x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel vfat fat kvm mlx5_ib irqbypass ipmi_ssif rapl intel_cstate ib_uverbs iTCO_wdt intel_pmc_bxt iTCO_vendor_support ib_core intel_uncore i2c_i801 mei_me pcspkr mei lpc_ich i2c_smbus ioatdma intel_pch_thermal acpi_ipmi joydev dca ipmi_si ipmi_devintf acpi_pad acpi_power_meter ipmi_msghandler fuse loop zram xfs mlx5_core i40e mlxfw crct10dif_pclmul crc32_pclmul tls crc32c_intel polyval_clmulni polyval_generic ast ghash_clmulni_intel psample sha512_ssse3 pci_hyperv_intf i2c_algo_bit gnss wmi scsi_dh_rdac scsi_dh_emc scsi_dh_alua pkcs8_key_parser dm_multipath [last unloaded: ice]
> > [66303.946397] CR2: 0000000000000000
> > [66303.946919] ---[ end trace 0000000000000000 ]---
> > [66303.955966] pstore: backend (erst) writing error (-28)
> > [66303.956326] RIP: 0010:ice_get_ringparam+0x22/0x50 [ice]
> > [66303.956765] Code: 90 90 90 90 90 90 90 90 f3 0f 1e fa 0f 1f 44 00 00 48 8b 87 c0 09 00 00 c7 46 04 e0 1f 00 00 c7 46 10 e0 1f 00 00 48 8b 50 20 <48> 8b 12 0f b7 52 3a 89 56 14 48 8b 40 28 48 8b 00 0f b7 40 58 48
> > [66303.957518] RSP: 0018:ffffad40472f39c8 EFLAGS: 00010246
> > [66303.957901] RAX: ffff98a8ada05828 RBX: ffff98a8c46dd060 RCX: ffffad40472f3b48
> > [66303.958290] RDX: 0000000000000000 RSI: ffff98a8c46dd068 RDI: ffff98a8b23c4000
> > [66303.958683] RBP: ffffad40472f3b48 R08: 00000000000337b0 R09: 0000000000000000
> > [66303.959074] R10: 0000000000000001 R11: 0000000000000100 R12: ffff98a8b23c4000
> > [66303.959473] R13: ffff98a8c46dd060 R14: 000000000000000f R15: ffffad40472f3a50
> > [66303.959868] FS:  00007f6397966740(0000) GS:ffff98b390900000(0000) knlGS:0000000000000000
> > [66303.960268] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [66303.960672] CR2: 0000000000000000 CR3: 000000011ac20002 CR4: 00000000007706e0
> > [66303.961078] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > [66303.961490] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> > [66303.961898] PKRU: 55555554
> > 
> > Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> [...]
> 
> > @@ -2955,6 +2960,10 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
> >  		return -EINVAL;
> >  	}
> >  
> > +	/* if there is no rings return (device is reloading) */
> 
> "If" I guess, capital.
> Isn't a comma after "rings" needed?
>

Correct, I will rephrase it to:
Return if there is no rings

> > +	if (!vsi->tx_rings || !vsi->rx_rings)
> > +		return -EBUSY;
> > +
> >  	new_tx_cnt = ALIGN(ring->tx_pending, ICE_REQ_DESC_MULTIPLE);
> >  	if (new_tx_cnt != ring->tx_pending)
> >  		netdev_info(netdev, "Requested Tx descriptor count rounded up to %d\n",
> > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> > index 0d8b8c6f9bd3..1b1974d42002 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > @@ -4634,9 +4634,7 @@ static int ice_start_eth(struct ice_vsi *vsi)
> >  	if (err)
> >  		return err;
> >  
> > -	rtnl_lock();
> >  	err = ice_vsi_open(vsi);
> > -	rtnl_unlock();
> >  
> >  	return err;
> 
> Just
> 
> 	return ice_vsi_open(vsi);
> 
> OTOH, don't you need a rollback of filters in case vsi_open() fails?
>

Yeah, it should be unroll, will add it

> >  }
> > @@ -5099,13 +5097,19 @@ int ice_load(struct ice_pf *pf)
> >  	params = ice_vsi_to_params(vsi);
> >  	params.flags = ICE_VSI_FLAG_INIT;
> >  
> > +	rtnl_lock();
> >  	err = ice_vsi_cfg(vsi, &params);
> > -	if (err)
> > +	if (err) {
> > +		rtnl_unlock();
> >  		goto err_vsi_cfg;
> > +	}
> >  
> >  	err = ice_start_eth(ice_get_main_vsi(pf));
> > -	if (err)
> > +	if (err) {
> > +		rtnl_unlock();
> >  		goto err_start_eth;
> > +	}
> > +	rtnl_unlock();
> >  
> >  	err = ice_init_rdma(pf);
> >  	if (err)
> > @@ -5135,8 +5139,10 @@ void ice_unload(struct ice_pf *pf)
> >  {
> >  	ice_deinit_features(pf);
> >  	ice_deinit_rdma(pf);
> > +	rtnl_lock();
> >  	ice_stop_eth(ice_get_main_vsi(pf));
> >  	ice_vsi_decfg(ice_get_main_vsi(pf));
> > +	rtnl_unlock();
> 
> So you added lock/unlock pair here, but not in the ice_load()'s rollback
> path. There, you always unlock rtnl and then perform decfg() without the
> lock taken.
> 
> I think you could do it as follows:
> 
> err_init_rdma:
> 	ice_vsi_close(ice_get_main_vsi(pf));
> 	rtnl_lock();
> err_start_eth:
> 	ice_vsi_decfg(ice_get_main_vsi(pf));
> err_vsi_cfg:
> 	rtnl_unlock();
> 	ice_deinit_dev(pf);
> 	return err;
> }
> 
> So that: 1) decfg() is protected; 2) you don't need to unlock rtnl in
> case of failure in the main block (what you add in this patch), it will
> be done here.

Good point, I didn't think about protection in unroll. Thanks for the
review, I will sent v2.

Thanks,
Michal

> 
> >  	ice_deinit_dev(pf);
> >  }
> >  
> 
> Thanks,
> Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
