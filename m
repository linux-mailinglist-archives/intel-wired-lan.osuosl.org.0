Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6EC6FC9E4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 May 2023 17:08:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 366814186B;
	Tue,  9 May 2023 15:08:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 366814186B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683644923;
	bh=pJ27eAaFi8PYsbZZA3xtZejr61uzFb+HoAhlmZR1By0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=frG6qJIOxdy5ndNymn2B9Y3NSQw436/rgMOUKd3q0zIezljl2qWmEdnvOIHxUDOCn
	 hSFpaUHL5zP9iB9V0d9szeU4crHnwaVHmCddfb6JCaV79iohu6upza/S9UtA/6YdR6
	 Xh0Yap6uX6RacCrqbE1tCXs+ZMfCxN9r/UmzlDHxfadCSz7ml0MVgL/9Cu6iMZEKZ1
	 SeBMidi3CBHHNmpfrck7St+O4hjZoBCjRP4LCf8viak57G8/EZ7s78FwpIrHXOPL0L
	 WWC6GW2j7pGzX3BZdxCguZz7lORgappbTU0nUapHOqDJNkRcYeSQEb34VuQwuJGbjH
	 JSDG/v4nhGMaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id psTQaJFhw8Qz; Tue,  9 May 2023 15:08:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A01CA40E46;
	Tue,  9 May 2023 15:08:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A01CA40E46
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E45CC1BF29A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 11:40:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC35060EAA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 11:40:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC35060EAA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XY-5vxovGWMU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 May 2023 11:40:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7390160E47
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7390160E47
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 11:40:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="349938259"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="349938259"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 04:40:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="692969766"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="692969766"
Received: from mr10p30.jer.intel.com ([10.12.133.253])
 by orsmga007.jf.intel.com with ESMTP; 09 May 2023 04:40:05 -0700
From: Yochai Hagvi <yochai.hagvi@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  9 May 2023 14:39:43 +0300
Message-Id: <20230509113943.27194-1-yochai.hagvi@intel.com>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 09 May 2023 15:08:22 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683632425; x=1715168425;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kNkXwDjsHcHJ+i6PNT6z7xXXQBgIH5M94t2STYV3PHA=;
 b=ffuL3iZk8hj/swdq0NCD+LC7YOd1Oq5qZFulhcANB35lCZ5QL60ipiPe
 qlsCii/C4+BQryhraR1vnFfhtuBulx6evSSgHYCncB4HZhXfWWSZwOoZN
 c1wTIiMRo5vuZbQu5mQBWEeDtgbzhycjYb/ZnpuubHPpn9U3taXyPOhki
 mRfCBPiK5imDzWsGtiJBdPZlKq3QsU5c5NIiszzgFENreWmBLpU3M6vH/
 SXC1tMa8nUS0ImgdRPstSY69xSdyMsmb9Y0Wypr4uVd93oSCBOHJcf2pE
 6C9Rt62svQOh+ymRbTcoW4Gw7IJPN2JSrdC3Kz8gS1zVAzzcJEEQpkTOq
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ffuL3iZk
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: Schedule service task in
 IRQ thread_fn
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Yochai Hagvi <yochai.hagvi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On some RT kernels (E.g.: MontaVista), scheduling service task in
interrupt context may result in a kernel panic:

BUG: scheduling while atomic: swapper/4/0/0x00010002
Modules linked in: ip6t_REJECT nf_reject_ipv6 xt_multiport ipt_rpfilter ip6t_rpfilter xt_set ip6table_raw iptable_raw ip_set_hash_ip ip_set_hash_net ip_set veth ip_vs nf_conntrack_netlink xt_nat ip6t_MASQUERADE nf_nat_masquerade_ipv6 ip6table_nat nf_conntrack_ipv6 nf_defrag_ipv6 nf_nat_ipv6 ip6table_mangle nf_tables nfnetlink iptable_mangle ipt_MASQUERADE nf_nat_masquerade_ipv4 xt_conntrack xt_comment xt_mark ip6table_filter ip6_tables ipip tunnel4 ip_tunnel xt_addrtype iptable_filter iptable_nat nf_conntrack_ipv4 nf_defrag_ipv4 nf_nat_ipv4 nf_nat nf_conntrack br_netfilter bridge overlay(T) sunrpc dm_mirror dm_region_hash dm_log dm_mod dell_smbios dell_wmi_descriptor dcdbas i10nm_edac nfit libnvdimm intel_powerclamp coretemp intel_rapl iosf_mbi crc32_pclmul ghash_clmulni_intel aesni_intel
lrw gf128mul glue_helper ablk_helper cryptd vfat fat pcspkr joydev sg mei_me i2c_i801 mei wmi ipmi_si ipmi_devintf ipmi_msghandler pinctrl_lewisburg pinctrl_intel acpi_power_meter acpi_pad ip_tables xfs i40e sr_mod cdrom sd_mod crc_t10dif crct10dif_generic crct10dif_pclmul crct10dif_common crc32c_intel mgag200 i2c_algo_bit uas drm_kms_helper syscopyarea sysfillrect sysimgblt fb_sys_fops usb_storage ttm ice(OE) bnxt_en ahci intel_auxiliary(OE) drm ptp devlink libahci pps_core drm_panel_orientation_quirks libata sctp libcrc32c 8021q garp stp llc mrp
CPU: 4 PID: 0 Comm: swapper/4 Kdump: loaded Tainted: G      OE ------------ T 3.10.0-1160.11.1.rt56.1145.mvista.test.6.el7.x86_64 #1
Hardware name: Dell Inc. PowerEdge XR11/0P2RNT, BIOS 1.8.2 09/14/2022
Call Trace:
 dump_stack+0x19/0x1b
 __schedule_bug+0x64/0x72
 __schedule+0x77b/0x920
 ? check_preempt_wakeup+0x146/0x220
 schedule+0x30/0xa0
 rt_spin_lock_slowlock_locked+0xf5/0x2d0
 rt_spin_lock_slowlock+0x57/0x90
 rt_spin_lock+0x25/0x30
 __queue_work+0xcf/0x440
 queue_work_on+0xfe/0x110
 ice_service_task_schedule+0x5c/0x60 [ice]
 ice_misc_intr+0x1b1/0x310 [ice]
 __handle_irq_event_percpu+0x5c/0x220
 ? native_safe_halt+0xb/0x20
 handle_irq_event_percpu+0x49/0xa0
 ? tick_nohz_stop_sched_tick+0x115/0x3e0
 handle_irq_event+0x6e/0xa0
 handle_edge_irq+0xa1/0x1b0
 handle_irq+0xe7/0x1b0
 ? atomic_notifier_call_chain+0x3a/0x50
 do_IRQ+0x4d/0xf0
 common_interrupt+0x16a/0x16a
 ? hrtimer_cancel+0x20/0x30
 ? __cpuidle_text_start+0x8/0x8
 ? native_safe_halt+0xb/0x20
 default_idle+0x1e/0x130
 arch_cpu_idle+0x20/0xc0
 cpu_startup_entry+0x14a/0x1d0
 start_secondary+0x1eb/0x260
 start_cpu+0x5/0x14

This is happening due to queue_work call.
Move ice_service_task_schedule to IRQ bottom half.

Fixes: 0b28b702e72a ("ice: Support link events, reset and rebuild")
Fixes: de75135b5c04 ("ice: Fix probe/open race condition")
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Yochai Hagvi <yochai.hagvi@intel.com>
---
v2:
- provided example in commit message, and fixed typo
- provided Fixes tag in commit message
- removed unnecessary braces around single line if

 drivers/net/ethernet/intel/ice/ice_main.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 7c04057c524c..ef6bc1f67887 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3058,7 +3058,6 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 {
 	struct ice_pf *pf = (struct ice_pf *)data;
 	struct ice_hw *hw = &pf->hw;
-	irqreturn_t ret = IRQ_NONE;
 	struct device *dev;
 	u32 oicr, ena_mask;
 
@@ -3137,11 +3136,8 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 		}
 	}
 
-	if (oicr & PFINT_OICR_TSYN_TX_M) {
+	if (oicr & PFINT_OICR_TSYN_TX_M)
 		ena_mask &= ~PFINT_OICR_TSYN_TX_M;
-		if (!hw->reset_ongoing)
-			ret = IRQ_WAKE_THREAD;
-	}
 
 	if (oicr & PFINT_OICR_TSYN_EVNT_M) {
 		u8 tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
@@ -3170,18 +3166,13 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 		 * reset the device.
 		 */
 		if (oicr & (PFINT_OICR_PCI_EXCEPTION_M |
-			    PFINT_OICR_ECC_ERR_M)) {
+			    PFINT_OICR_ECC_ERR_M))
 			set_bit(ICE_PFR_REQ, pf->state);
-			ice_service_task_schedule(pf);
-		}
 	}
-	if (!ret)
-		ret = IRQ_HANDLED;
 
-	ice_service_task_schedule(pf);
 	ice_irq_dynamic_ena(hw, NULL, NULL);
 
-	return ret;
+	return IRQ_WAKE_THREAD;
 }
 
 /**
@@ -3196,6 +3187,8 @@ static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
 	if (ice_is_reset_in_progress(pf->state))
 		return IRQ_HANDLED;
 
+	ice_service_task_schedule(pf);
+
 	while (!ice_ptp_process_ts(pf))
 		usleep_range(50, 100);
 

base-commit: d15a5df649ee6351197170c855148f07caf69d0b
-- 
2.21.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
