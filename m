Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F824D2ACC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Mar 2022 09:45:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6685583EC2;
	Wed,  9 Mar 2022 08:45:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WEfEKsrRR1XE; Wed,  9 Mar 2022 08:45:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BB3C83E61;
	Wed,  9 Mar 2022 08:45:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B47F21BF346
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 08:44:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A38F2415D3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 08:44:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hp6TaVPUF6Zr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Mar 2022 08:44:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5BA4A415CF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 08:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646815495;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=trps+86RuA4EPQLmW3sG3xBygXRmQnPCeNbwQa0wECM=;
 b=dbfgAZJKGY7V063IluaMnDqS++rSFivysocSavPqm/sgdKXIel8QzIDPRsRTtYLvsJWDrD
 SAeYRW9zu/yTWE9uV4tpkaGddZx5DJN2ETEQMVXwFCerVfING1b71zvBjxqezD7gSnkdHV
 mygygV7Xi3p/h6+hrGxMXUEjYWAt6X4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-671-AAE7_FTMM1-d4lFnkobKzA-1; Wed, 09 Mar 2022 03:44:49 -0500
X-MC-Unique: AAE7_FTMM1-d4lFnkobKzA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 77035801AB2;
 Wed,  9 Mar 2022 08:44:48 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.36.112.5])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 12A3C70D51;
 Wed,  9 Mar 2022 08:44:48 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 8AFC0A80C0C; Wed,  9 Mar 2022 09:44:46 +0100 (CET)
Date: Wed, 9 Mar 2022 09:44:46 +0100
From: Corinna Vinschen <vinschen@redhat.com>
To: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <Yiho/igPO1golfLA@calimero.vinschen.de>
Mail-Followup-To: Sasha Neftin <sasha.neftin@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Dima Ruinskiy <dima.ruinskiy@intel.com>
References: <20220309061919.3115112-1-sasha.neftin@intel.com>
MIME-Version: 1.0
In-Reply-To: <20220309061919.3115112-1-sasha.neftin@intel.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=vinschen@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mar  9 08:19, Sasha Neftin wrote:
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

Tested-by: Corinna Vinschen <vinschen@redhat.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
