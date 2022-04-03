Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A244F08B6
	for <lists+intel-wired-lan@lfdr.de>; Sun,  3 Apr 2022 12:24:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BD9760C20;
	Sun,  3 Apr 2022 10:24:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qq1AElmYrzay; Sun,  3 Apr 2022 10:24:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B802660B48;
	Sun,  3 Apr 2022 10:24:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B3941BF29F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Apr 2022 10:24:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 84969403C2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Apr 2022 10:24:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TXMXjy9wdRHu for <intel-wired-lan@lists.osuosl.org>;
 Sun,  3 Apr 2022 10:24:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 719E5403AC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Apr 2022 10:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648981472; x=1680517472;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=o/VMZiBN0ZBAV3jKCrDBuq65E8pFFl/gL8ft6ZuFguI=;
 b=Nt3v7j1iIdiexB3JVo+Zqy13APM9cFrhLkLy6vwhaDMi5jLdHb8ffSwM
 nNrjcIrMyl1DebViDa8TO/gPVez+Rbwty6mQr5uAwDlM19mqezZ71PSTx
 dk1/zWfOxcbBEmfo4rYvix1JX12Q/886zIJCng7mcwqqLAGEdB09N8pwj
 bGh/0s0eLpL9sPyIrd+UxbH4cXBI5g820gFM+z4WRo+2Ns2P7NK1u4Zy0
 QfvFCL8afCCHC9jL8BAY2LDqzoQzR4/e0cUisFY4TEFVhgO4g2KtmUaJy
 Te4LmFgvUBIDhAhpPc5kgpPZyZF29ro12ktuWF/YzenSHSFIpyvco8pWg g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10305"; a="240312602"
X-IronPort-AV: E=Sophos;i="5.90,231,1643702400"; d="scan'208";a="240312602"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2022 03:24:31 -0700
X-IronPort-AV: E=Sophos;i="5.90,231,1643702400"; d="scan'208";a="548331225"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.11.253])
 ([10.13.11.253])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2022 03:24:30 -0700
Message-ID: <76640021-0694-bd12-7d57-7533fb5cf54e@linux.intel.com>
Date: Sun, 3 Apr 2022 13:24:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220309061919.3115112-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220309061919.3115112-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] igc: Fix BUG: scheduling while
 atomic
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>,
 Corinna Vinschen <vinschen@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/9/2022 08:19, Sasha Neftin wrote:
> Replace usleep_range() method with udelay() method to allow atomic contexts
> in low-level MDIO access functions.
> 
> The following issue can be seen by doing the following:
> $ modprobe -r bonding
> $ modprobe -v bonding max_bonds=1 mode=1 miimon=100 use_carrier=0
> $ ip link set bond0 up
> $ ifenslave bond0 eth0 eth1
> 
> [  982.357308] BUG: scheduling while atomic: kworker/u64:0/9/0x00000002
> [  982.364431] INFO: lockdep is turned off.
> [  982.368824] Modules linked in: bonding sctp ip6_udp_tunnel udp_tunnel mlx4_ib ib_uverbs ib_core mlx4_en mlx4_core nfp tls sunrpc intel_rapl_msr iTCO_wdt iTCO_vendor_support mxm_wmi dcdbas intel_rapl_common sb_edac x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel kvm irqbypass crct10dif_pclmul crc32_pclmul ghash_clmulni_intel rapl intel_cstate intel_uncore pcspkr lpc_ich mei_me ipmi_ssif mei ipmi_si ipmi_devintf ipmi_msghandler wmi acpi_power_meter xfs libcrc32c sr_mod cdrom sd_mod t10_pi sg mgag200 drm_kms_helper syscopyarea sysfillrect sysimgblt fb_sys_fops drm ahci libahci crc32c_intel libata i2c_algo_bit tg3 megaraid_sas igc dm_mirror dm_region_hash dm_log dm_mod [last unloaded: bonding]
> [  982.437941] CPU: 25 PID: 9 Comm: kworker/u64:0 Kdump: loaded Tainted: G        W        --------- -  - 4.18.0-348.el8.x86_64+debug #1
> [  982.451333] Hardware name: Dell Inc. PowerEdge R730/0H21J3, BIOS 2.7.0 12/005/2017
> [  982.459791] Workqueue: bond0 bond_mii_monitor [bonding]
> [  982.465622] Call Trace:
> [  982.468355]  dump_stack+0x8e/0xd0
> [  982.472056]  __schedule_bug.cold.60+0x3a/0x60
> [  982.476919]  __schedule+0x147b/0x1bc0
> [  982.481007]  ? firmware_map_remove+0x16b/0x16b
> [  982.485967]  ? hrtimer_fixup_init+0x40/0x40
> [  982.490625]  schedule+0xd9/0x250
> [  982.494227]  schedule_hrtimeout_range_clock+0x10d/0x2c0
> [  982.500058]  ? hrtimer_nanosleep_restart+0x130/0x130
> [  982.505598]  ? hrtimer_init_sleeper_on_stack+0x90/0x90
> [  982.511332]  ? usleep_range+0x88/0x130
> [  982.515514]  ? recalibrate_cpu_khz+0x10/0x10
> [  982.520279]  ? ktime_get+0xab/0x1c0
> [  982.524175]  ? usleep_range+0x88/0x130
> [  982.528355]  usleep_range+0xdd/0x130
> [  982.532344]  ? console_conditional_schedule+0x30/0x30
> [  982.537987]  ? igc_put_hw_semaphore+0x17/0x60 [igc]
> [  982.543432]  igc_read_phy_reg_gpy+0x111/0x2b0 [igc]
> [  982.548887]  igc_phy_has_link+0xfa/0x260 [igc]
> [  982.553847]  ? igc_get_phy_id+0x210/0x210 [igc]
> [  982.558894]  ? lock_acquire+0x34d/0x890
> [  982.563187]  ? lock_downgrade+0x710/0x710
> [  982.567659]  ? rcu_read_unlock+0x50/0x50
> [  982.572039]  igc_check_for_copper_link+0x106/0x210 [igc]
> [  982.577970]  ? igc_config_fc_after_link_up+0x840/0x840 [igc]
> [  982.584286]  ? rcu_read_unlock+0x50/0x50
> [  982.588661]  ? lock_release+0x591/0xb80
> [  982.592939]  ? lock_release+0x591/0xb80
> [  982.597220]  igc_has_link+0x113/0x330 [igc]
> [  982.601887]  ? lock_downgrade+0x710/0x710
> [  982.606362]  igc_ethtool_get_link+0x6d/0x90 [igc]
> [  982.611614]  bond_check_dev_link+0x131/0x2c0 [bonding]
> [  982.617350]  ? bond_time_in_interval+0xd0/0xd0 [bonding]
> [  982.623277]  ? rcu_read_lock_held+0x62/0xc0
> [  982.627944]  ? rcu_read_lock_sched_held+0xe0/0xe0
> [  982.633198]  bond_mii_monitor+0x314/0x2500 [bonding]
> [  982.638738]  ? lock_contended+0x880/0x880
> [  982.643214]  ? bond_miimon_link_change+0xa0/0xa0 [bonding]
> [  982.649336]  ? lock_acquire+0x34d/0x890
> [  982.653615]  ? lock_downgrade+0x710/0x710
> [  982.658089]  ? debug_object_deactivate+0x221/0x340
> [  982.663436]  ? rcu_read_unlock+0x50/0x50
> [  982.667811]  ? debug_print_object+0x2b0/0x2b0
> [  982.672672]  ? __switch_to_asm+0x41/0x70
> [  982.677049]  ? __switch_to_asm+0x35/0x70
> [  982.681426]  ? _raw_spin_unlock_irq+0x24/0x40
> [  982.686288]  ? trace_hardirqs_on+0x20/0x195
> [  982.690956]  ? _raw_spin_unlock_irq+0x24/0x40
> [  982.695818]  process_one_work+0x8f0/0x1770
> [  982.700390]  ? pwq_dec_nr_in_flight+0x320/0x320
> [  982.705443]  ? debug_show_held_locks+0x50/0x50
> [  982.710403]  worker_thread+0x87/0xb40
> [  982.714489]  ? process_one_work+0x1770/0x1770
> [  982.719349]  kthread+0x344/0x410
> [  982.722950]  ? kthread_insert_work_sanity_check+0xd0/0xd0
> [  982.728975]  ret_from_fork+0x3a/0x50
> 
> v2:
> Fixed typo, edited message and added kernel log
> 
> Fixes: 5586838fe9ce ("igc: Add code for PHY support")
> Reported-by: Corinna Vinschen <vinschen@redhat.com>
> Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_phy.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
