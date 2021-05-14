Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9691F380127
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 May 2021 02:31:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 273E44061C;
	Fri, 14 May 2021 00:31:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mHOMqr-LQLvV; Fri, 14 May 2021 00:31:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D49E3405AD;
	Fri, 14 May 2021 00:31:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A3E01C11A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 00:31:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 34ADA405AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 00:31:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iPgYrzz8S9dc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 May 2021 00:31:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DDEDA40575
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 00:31:37 +0000 (UTC)
IronPort-SDR: OSkcWCEQ5bKsHSheRk0sZr4Ldg2y+xQUg0ia2QIVTlNpsg8Gmlf2S6KnGRHzms7wk+TEtC+Uvi
 IqdFDl1oFB+g==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="196998434"
X-IronPort-AV: E=Sophos;i="5.82,298,1613462400"; d="scan'208";a="196998434"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 17:31:35 -0700
IronPort-SDR: eBHIc3ytbentLjC2WIaQ5/5N0gqnuNivDlsbm4NYvaWlTmMHU9ILhoGVqmT0irSQavF7taTemD
 20Qy7wdNvOLA==
X-IronPort-AV: E=Sophos;i="5.82,298,1613462400"; d="scan'208";a="463531523"
Received: from dlgersho-mobl3.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.226.220])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 17:31:35 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 May 2021 17:31:03 -0700
Message-Id: <20210514003104.1360697-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-queue v1 1/2] igc: Fix user-after-free
 error during reset
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
Cc: erez.geva.ext@siemens.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Cleans the next descriptor to watch (next_to_watch) when cleaning the
TX ring.

Failure to do so can cause invalid memory accesses. If igc_poll() runs
while the controller is being reset this can lead to the driver try to
free a skb that was already freed.

Log message:

 [  101.525242] refcount_t: underflow; use-after-free.
 [  101.525251] WARNING: CPU: 1 PID: 646 at lib/refcount.c:28 refcount_warn_saturate+0xab/0xf0
 [  101.525259] Modules linked in: sch_etf(E) sch_mqprio(E) rfkill(E) intel_rapl_msr(E) intel_rapl_common(E)
 x86_pkg_temp_thermal(E) intel_powerclamp(E) coretemp(E) binfmt_misc(E) kvm_intel(E) kvm(E) irqbypass(E) crc32_pclmul(E)
 ghash_clmulni_intel(E) aesni_intel(E) mei_wdt(E) libaes(E) crypto_simd(E) cryptd(E) glue_helper(E) snd_hda_codec_hdmi(E)
 rapl(E) intel_cstate(E) snd_hda_intel(E) snd_intel_dspcfg(E) sg(E) soundwire_intel(E) intel_uncore(E) at24(E)
 soundwire_generic_allocation(E) iTCO_wdt(E) soundwire_cadence(E) intel_pmc_bxt(E) serio_raw(E) snd_hda_codec(E)
 iTCO_vendor_support(E) watchdog(E) snd_hda_core(E) snd_hwdep(E) snd_soc_core(E) snd_compress(E) snd_pcsp(E)
 soundwire_bus(E) snd_pcm(E) evdev(E) snd_timer(E) mei_me(E) snd(E) soundcore(E) mei(E) configfs(E) ip_tables(E) x_tables(E)
 autofs4(E) ext4(E) crc32c_generic(E) crc16(E) mbcache(E) jbd2(E) sd_mod(E) t10_pi(E) crc_t10dif(E) crct10dif_generic(E)
 i915(E) ahci(E) libahci(E) ehci_pci(E) igb(E) xhci_pci(E) ehci_hcd(E)
 [  101.525303]  drm_kms_helper(E) dca(E) xhci_hcd(E) libata(E) crct10dif_pclmul(E) cec(E) crct10dif_common(E) tsn(E) igc(E)
 e1000e(E) ptp(E) i2c_i801(E) crc32c_intel(E) psmouse(E) i2c_algo_bit(E) i2c_smbus(E) scsi_mod(E) lpc_ich(E) pps_core(E)
 usbcore(E) drm(E) button(E) video(E)
 [  101.525318] CPU: 1 PID: 646 Comm: irq/37-enp7s0-T Tainted: G            E     5.10.30-rt37-tsn1-rt-ipipe #ipipe
 [  101.525320] Hardware name: SIEMENS AG SIMATIC IPC427D/A5E31233588, BIOS V17.02.09 03/31/2017
 [  101.525322] RIP: 0010:refcount_warn_saturate+0xab/0xf0
 [  101.525325] Code: 05 31 48 44 01 01 e8 f0 c6 42 00 0f 0b c3 80 3d 1f 48 44 01 00 75 90 48 c7 c7 78 a8 f3 a6 c6 05 0f 48
 44 01 01 e8 d1 c6 42 00 <0f> 0b c3 80 3d fe 47 44 01 00 0f 85 6d ff ff ff 48 c7 c7 d0 a8 f3
 [  101.525327] RSP: 0018:ffffbdedc0917cb8 EFLAGS: 00010286
 [  101.525329] RAX: 0000000000000000 RBX: ffff98fd6becbf40 RCX: 0000000000000001
 [  101.525330] RDX: 0000000000000001 RSI: ffffffffa6f2700c RDI: 00000000ffffffff
 [  101.525332] RBP: ffff98fd6becc14c R08: ffffffffa7463d00 R09: ffffbdedc0917c50
 [  101.525333] R10: ffffffffa74c3578 R11: 0000000000000034 R12: 00000000ffffff00
 [  101.525335] R13: ffff98fd6b0b1000 R14: 0000000000000039 R15: ffff98fd6be35c40
 [  101.525337] FS:  0000000000000000(0000) GS:ffff98fd6e240000(0000) knlGS:0000000000000000
 [  101.525339] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
 [  101.525341] CR2: 00007f34135a3a70 CR3: 0000000150210003 CR4: 00000000001706e0
 [  101.525343] Call Trace:
 [  101.525346]  sock_wfree+0x9c/0xa0
 [  101.525353]  unix_destruct_scm+0x7b/0xa0
 [  101.525358]  skb_release_head_state+0x40/0x90
 [  101.525362]  skb_release_all+0xe/0x30
 [  101.525364]  napi_consume_skb+0x57/0x160
 [  101.525367]  igc_poll+0xb7/0xc80 [igc]
 [  101.525376]  ? sched_clock+0x5/0x10
 [  101.525381]  ? sched_clock_cpu+0xe/0x100
 [  101.525385]  net_rx_action+0x14c/0x410
 [  101.525388]  __do_softirq+0xe9/0x2f4
 [  101.525391]  __local_bh_enable_ip+0xe3/0x110
 [  101.525395]  ? irq_finalize_oneshot.part.47+0xe0/0xe0
 [  101.525398]  irq_forced_thread_fn+0x6a/0x80
 [  101.525401]  irq_thread+0xe8/0x180
 [  101.525403]  ? wake_threads_waitq+0x30/0x30
 [  101.525406]  ? irq_thread_check_affinity+0xd0/0xd0
 [  101.525408]  kthread+0x183/0x1a0
 [  101.525412]  ? kthread_park+0x80/0x80
 [  101.525415]  ret_from_fork+0x22/0x30

Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
Reported-by: Erez Geva <erez.geva.ext@siemens.com>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index f1adf154ec4a..9cac1e74a2ba 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -217,6 +217,8 @@ static void igc_clean_tx_ring(struct igc_ring *tx_ring)
 					       DMA_TO_DEVICE);
 		}
 
+		tx_buffer->next_to_watch = NULL;
+
 		/* move us one more past the eop_desc for start of next pkt */
 		tx_buffer++;
 		i++;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
