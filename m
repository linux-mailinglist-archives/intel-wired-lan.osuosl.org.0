Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C11A71826A9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2020 02:34:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 810FF869A5;
	Thu, 12 Mar 2020 01:34:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xOCF0Q3dxXa3; Thu, 12 Mar 2020 01:34:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 009CA86992;
	Thu, 12 Mar 2020 01:34:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D1D1A1BF473
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:34:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CDB56886E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:34:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GSRq1EI7uubf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2020 01:34:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CD7BA882AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:34:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 18:34:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,543,1574150400"; d="scan'208";a="389449532"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [134.134.177.106])
 ([134.134.177.106])
 by orsmga004.jf.intel.com with ESMTP; 11 Mar 2020 18:34:39 -0700
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
References: <20200312012726.973301-1-jacob.e.keller@intel.com>
 <20200312012726.973301-7-jacob.e.keller@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <ef5f5cb1-fecf-52ec-4814-79bb0ca09ce0@intel.com>
Date: Wed, 11 Mar 2020 18:34:38 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200312012726.973301-7-jacob.e.keller@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v2 6/9] ice: enable initial devlink
 support
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
Cc: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ugh sorry for the thrash, Jeff, please do not apply this to IWL yet,
looks like I need a v3.

On 3/11/2020 6:27 PM, Jacob Keller wrote:
> +/**
> + * ice_devlink_create_port - Create a devlink port for this PF
> + * @pf: the PF to create a port for
> + *
> + * Create and register a devlink_port for this PF. Note that although each
> + * physical function is connected to a separate devlink instance, the port
> + * will still be numbered according to the physical function id.
> + *
> + * Return: zero on success or an error code on failure.
> + */
> +int ice_devlink_create_port(struct ice_pf *pf)
> +{
> +	struct devlink *devlink = priv_to_devlink(pf);
> +	struct ice_vsi *vsi = ice_get_main_vsi(pf);
> +	struct device *dev = ice_pf_to_dev(pf);
> +	int err;
> +
> +	if (!vsi) {
> +		dev_err(dev, "%s: unable to find main VSI\n", __func__);
> +		return -EIO;
> +	}
> +
> +	devlink_port_attrs_set(&pf->devlink_port, DEVLINK_PORT_FLAVOUR_PHYSICAL,
> +			       pf->hw.pf_id, false, 0, NULL, 0);
> +	err = devlink_port_register(devlink, &pf->devlink_port, pf->hw.pf_id);
> +	if (err) {
> +		dev_err(dev, "devlink_port_register failed: %d\n", err);
> +		return err;
> +	}
> +
> +	return 0;
> +}

<snip>

>  #define DRV_VERSION_MAJOR 0
>  #define DRV_VERSION_MINOR 8
> @@ -2426,6 +2427,8 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
>  	if (err)
>  		return err;
>  
> +	devlink_port_type_eth_set(&pf->devlink_port, vsi->netdev);
> +

Ugh. I just noticed this when I went to reboot my test system,
apparently this is called before ice_devlink_create_port and generates a
warning:

> [  186.682927] ------------[ cut here ]------------
> [  186.682934] WARNING: CPU: 28 PID: 731 at net/core/devlink.c:6936 __devlink_port_type_set+0x60/0x70
> [  186.682934] Modules linked in: ice(+) ip6t_REJECT nf_reject_ipv6 ip6t_rpfilter ipt_REJECT nf_reject_ipv4 xt_conntrack ebtable_nat ebtable_broute ip6table_nat ip6table_mangle ip6table_raw ip6table_security iptable_nat nf_nat iptable_ma
> ngle iptable_raw iptable_security nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 ip_set nfnetlink ebtable_filter ebtables ip6table_filter ip6_tables iptable_filter sunrpc vfat fat intel_rapl_msr intel_rapl_common isst_if_common skx_edac nfit
>  libnvdimm x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel kvm irqbypass crct10dif_pclmul crc32_pclmul ghash_clmulni_intel iTCO_wdt iTCO_vendor_support intel_cstate qat_c62x ipmi_ssif intel_qat intel_uncore mei_me mei intel_rapl
> _perf ioatdma joydev authenc pcspkr i2c_i801 lpc_ich ipmi_si dca ipmi_devintf ipmi_msghandler acpi_power_meter acpi_pad ip_tables xfs libcrc32c ast i2c_algo_bit drm_vram_helper drm_ttm_helper ttm drm_kms_helper cec drm i40e crc32c_intel
> virtual_bus wmi pkcs8_key_parser [last unloaded: ice]
> [  186.682962] CPU: 28 PID: 731 Comm: kworker/28:1 Tainted: G        W         5.6.0-rc3+ #3
> [  186.682963] Hardware name: Intel Corporation S2600STQ/S2600STQ, BIOS SE5C620.86B.02.01.0010.010620200716 01/06/2020
> [  186.682969] Workqueue: events work_for_cpu_fn
> [  186.682971] RIP: 0010:__devlink_port_type_set+0x60/0x70
> [  186.682972] Code: 89 e7 e8 33 52 16 00 44 89 6d 34 4c 89 e7 48 89 5d 40 e8 93 52 16 00 48 89 ef 5b be 07 00 00 00 5d 41 5c 41 5d e9 90 fc ff ff <0f> 0b c3 66 66 2e 0f 1f 84 00 00 00 00 00 66 90 0f 1f 44 00 00 41
> [  186.682973] RSP: 0018:ffffa14c60567d70 EFLAGS: 00010246
> [  186.682974] RAX: 0000000000000000 RBX: ffffffffc05b86c0 RCX: 0000000000000000
> [  186.682974] RDX: ffff8bdffb72b000 RSI: 0000000000000002 RDI: ffff8bdff7568128
> [  186.682975] RBP: ffff8bdff7568128 R08: ffffffffb77f9820 R09: ffffa14c60567c68
> [  186.682975] R10: ffff8bdfa9d22a18 R11: ffff8bdfff16af38 R12: ffff8bdffb72b000
> [  186.682975] R13: ffff8bdff7568120 R14: ffff8bdff7568280 R15: 0000000000000000
> [  186.682976] FS:  0000000000000000(0000) GS:ffff8bdfff000000(0000) knlGS:0000000000000000
> [  186.682977] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  186.682977] CR2: 0000556b79c52c58 CR3: 0000000e5760a004 CR4: 00000000007606e0
> [  186.682978] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [  186.682978] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [  186.682979] PKRU: 55555554
> [  186.682979] Call Trace:
> [  186.682983]  devlink_port_type_eth_set+0x7b/0xb0
> [  186.682993]  ice_probe+0x7dc/0xda0 [ice]
> [  186.682998]  local_pci_probe+0x42/0x80
> [  186.683002]  ? __schedule+0x2cf/0x740
> [  186.683003]  work_for_cpu_fn+0x16/0x20
> [  186.683006]  process_one_work+0x1b5/0x360
> [  186.683007]  worker_thread+0x1e2/0x3c0
> [  186.683010]  kthread+0xf9/0x130
> [  186.683012]  ? process_one_work+0x360/0x360
> [  186.683013]  ? kthread_park+0x90/0x90
> [  186.683014]  ret_from_fork+0x35/0x40
> [  186.683016] ---[ end trace 5fff949e65047c29 ]---

I'm fairly sure this is because we do not call ice_devlink_create_port
early enough, but I need to figure out the best place to put this :(

Regards,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
