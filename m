Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B79776383
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 17:15:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6F5F834D5;
	Wed,  9 Aug 2023 15:15:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6F5F834D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691594157;
	bh=+Y9j4/Ogow/ixWgiry++cX8chshhvacRSlOmcLmsTs0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cMd0MMo2NrFuFd397Uxsz225mvvgCsf30kOVn0geHyxhcBEsAtXvFzVYxxxgA5tT/
	 ncoOQ9CfbH1Svw5bpaH1uKuqRxT14fBBWyOiIwqMSXiAo7YVFWzfHyfzo1e6qM0XTc
	 dcQswqdJNufrZWKKEz74rA2Tz+HiEzMZYmxf5lnMjo0QfOxH4ERGVna47ym042BuZ7
	 O15MSqZSZMhojLM0ZnU+0vgbHK1VVpNqzVCZeKNakw6iqahHBzAYCr0Z9+t0m3Btvp
	 ac1+E1QHRoSLtdUqkJlj6pEzQ0B2roaNsidY6hYlNAH/fGsR8mf6SNPf6cAjsNCEF7
	 d+u+otoroLT4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DjogFkiK94o8; Wed,  9 Aug 2023 15:15:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64ED38328E;
	Wed,  9 Aug 2023 15:15:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64ED38328E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A9571BF283
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 15:15:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D85B483252
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 15:15:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D85B483252
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ajxHn8yeN4g9 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Aug 2023 15:15:50 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D08F483298
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 15:15:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D08F483298
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-665-SWTbmGHBMeyAijRrTQxKGA-1; Wed, 09 Aug 2023 11:15:42 -0400
X-MC-Unique: SWTbmGHBMeyAijRrTQxKGA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AA8E2185A78F;
 Wed,  9 Aug 2023 15:15:38 +0000 (UTC)
Received: from swamp.redhat.com (unknown [10.45.226.148])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 11A812026D4B;
 Wed,  9 Aug 2023 15:15:35 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  9 Aug 2023 17:15:29 +0200
Message-ID: <20230809151529.842798-3-poros@redhat.com>
In-Reply-To: <20230809151529.842798-1-poros@redhat.com>
References: <20230809151529.842798-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1691594148;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fJTHP3h8jgE1WAfofh/OTR2zhEA9OJbMlwTVi1RJsEQ=;
 b=jRNCYua4kPmwVhdqtepe83nfxMzhlhNlIU4ke4Re8i3Ievwqhltq4exFHaH4O1Coq+Onfq
 FJZ8JsKRW4rKYMRa9L1LyPfUd0+bE1fL0ru3s+ymoGHmSV8weVA/LIamOIS/lGQBmyowLw
 h32o9oYMR5GU+InRj3zxpwYR7rghapM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=jRNCYua4
Subject: [Intel-wired-lan] [PATCH net v2 2/2] ice: Fix NULL pointer deref
 during VF reset
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
Cc: slawomirx.laba@intel.com, przemyslawx.patynowski@intel.com,
 kamil.maziarz@intel.com, jesse.brandeburg@intel.com,
 norbertx.zulinski@intel.com, dawidx.wesierski@intel.com, edumazet@google.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

During stress test with attaching and detaching VF from KVM and
simultaneously changing VFs spoofcheck and trust there was a
NULL pointer dereference in ice_reset_vf that VF's VSI is null.

More than one instance of ice_reset_vf() can be running at a given
time. When we rebuild the VSI in ice_reset_vf, another reset can be
triaged from ice_service_task. In this case we can access the currently
uninitialized VSI and cause panic. The window for this racing condition
has been around for a long time but it's much worse after commit
227bf4500aaa ("ice: move VSI delete outside deconfig") because
the reset runs faster. ice_reset_vf() using vf->cfg_lock and when
we move this lock before accessing to the VF VSI, we can fix
BUG for all cases.

Panic occurs sometimes in ice_vsi_is_rx_queue_active() and sometimes
in ice_vsi_stop_all_rx_rings()

With our reproducer, we can hit BUG:
~8h before commit 227bf4500aaa ("ice: move VSI delete outside deconfig").
~20m after commit 227bf4500aaa ("ice: move VSI delete outside deconfig").
After this fix we are not able to reproduce it after ~48h

There was commit cf90b74341ee ("ice: Fix call trace with null VSI during
VF reset") which also tried to fix this issue, but it was only
partially resolved and the bug still exists.

[ 6420.658415] BUG: kernel NULL pointer dereference, address: 0000000000000000
[ 6420.665382] #PF: supervisor read access in kernel mode
[ 6420.670521] #PF: error_code(0x0000) - not-present page
[ 6420.675659] PGD 0
[ 6420.677679] Oops: 0000 [#1] PREEMPT SMP NOPTI
[ 6420.682038] CPU: 53 PID: 326472 Comm: kworker/53:0 Kdump: loaded Not tainted 5.14.0-317.el9.x86_64 #1
[ 6420.691250] Hardware name: Dell Inc. PowerEdge R750/04V528, BIOS 1.6.5 04/15/2022
[ 6420.698729] Workqueue: ice ice_service_task [ice]
[ 6420.703462] RIP: 0010:ice_vsi_is_rx_queue_active+0x2d/0x60 [ice]
[ 6420.705860] ice 0000:ca:00.0: VF 0 is now untrusted
[ 6420.709494] Code: 00 00 66 83 bf 76 04 00 00 00 48 8b 77 10 74 3e 31 c0 eb 0f 0f b7 97 76 04 00 00 48 83 c0 01 39 c2 7e 2b 48 8b 97 68 04 00 00 <0f> b7 0c 42 48 8b 96 20 13 00 00 48 8d 94 8a 00 00 12 00 8b 12 83
[ 6420.714426] ice 0000:ca:00.0 ens7f0: Setting MAC 22:22:22:22:22:00 on VF 0. VF driver will be reinitialized
[ 6420.733120] RSP: 0018:ff778d2ff383fdd8 EFLAGS: 00010246
[ 6420.733123] RAX: 0000000000000000 RBX: ff2acf1916294000 RCX: 0000000000000000
[ 6420.733125] RDX: 0000000000000000 RSI: ff2acf1f2c6401a0 RDI: ff2acf1a27301828
[ 6420.762346] RBP: ff2acf1a27301828 R08: 0000000000000010 R09: 0000000000001000
[ 6420.769476] R10: ff2acf1916286000 R11: 00000000019eba3f R12: ff2acf19066460d0
[ 6420.776611] R13: ff2acf1f2c6401a0 R14: ff2acf1f2c6401a0 R15: 00000000ffffffff
[ 6420.783742] FS:  0000000000000000(0000) GS:ff2acf28ffa80000(0000) knlGS:0000000000000000
[ 6420.791829] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 6420.797575] CR2: 0000000000000000 CR3: 00000016ad410003 CR4: 0000000000773ee0
[ 6420.804708] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[ 6420.811034] vfio-pci 0000:ca:01.0: enabling device (0000 -> 0002)
[ 6420.811840] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[ 6420.811841] PKRU: 55555554
[ 6420.811842] Call Trace:
[ 6420.811843]  <TASK>
[ 6420.811844]  ice_reset_vf+0x9a/0x450 [ice]
[ 6420.811876]  ice_process_vflr_event+0x8f/0xc0 [ice]
[ 6420.841343]  ice_service_task+0x23b/0x600 [ice]
[ 6420.845884]  ? __schedule+0x212/0x550
[ 6420.849550]  process_one_work+0x1e2/0x3b0
[ 6420.853563]  ? rescuer_thread+0x390/0x390
[ 6420.857577]  worker_thread+0x50/0x3a0
[ 6420.861242]  ? rescuer_thread+0x390/0x390
[ 6420.865253]  kthread+0xdd/0x100
[ 6420.868400]  ? kthread_complete_and_exit+0x20/0x20
[ 6420.873194]  ret_from_fork+0x1f/0x30
[ 6420.876774]  </TASK>
[ 6420.878967] Modules linked in: vfio_pci vfio_pci_core vfio_iommu_type1 vfio iavf vhost_net vhost vhost_iotlb tap tun xt_CHECKSUM xt_MASQUERADE xt_conntrack ipt_REJECT nf_reject_ipv4 nft_compat nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 nft_counter nf_tables bridge stp llc sctp ip6_udp_tunnel udp_tunnel nfp tls nfnetlink bluetooth mlx4_en mlx4_core rpcsec_gss_krb5 auth_rpcgss nfsv4 dns_resolver nfs lockd grace fscache netfs rfkill sunrpc intel_rapl_msr intel_rapl_common i10nm_edac nfit libnvdimm ipmi_ssif x86_pkg_temp_thermal intel_powerclamp coretemp irdma kvm_intel i40e kvm iTCO_wdt dcdbas ib_uverbs irqbypass iTCO_vendor_support mgag200 mei_me ib_core dell_smbios isst_if_mmio isst_if_mbox_pci rapl i2c_algo_bit drm_shmem_helper intel_cstate drm_kms_helper syscopyarea sysfillrect isst_if_common sysimgblt intel_uncore fb_sys_fops dell_wmi_descriptor wmi_bmof intel_vsec mei i2c_i801 acpi_ipmi ipmi_si i2c_smbus ipmi_devintf intel_pch_thermal acpi_power_meter pcspk
 r

Fixes: efe41860008e ("ice: Fix memory corruption in VF driver")
Fixes: f23df5220d2b ("ice: Fix spurious interrupt during removal of trusted VF")
Signed-off-by: Petr Oros <poros@redhat.com>
---
v2: fixed typos in the description
---
drivers/net/ethernet/intel/ice/ice_vf_lib.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 294e91c3453ccd..ea3310be8354cf 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -612,11 +612,17 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 		return 0;
 	}
 
+	if (flags & ICE_VF_RESET_LOCK)
+		mutex_lock(&vf->cfg_lock);
+	else
+		lockdep_assert_held(&vf->cfg_lock);
+
 	if (ice_is_vf_disabled(vf)) {
 		vsi = ice_get_vf_vsi(vf);
 		if (!vsi) {
 			dev_dbg(dev, "VF is already removed\n");
-			return -EINVAL;
+			err = -EINVAL;
+			goto out_unlock;
 		}
 		ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, vf->vf_id);
 
@@ -625,14 +631,9 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 
 		dev_dbg(dev, "VF is already disabled, there is no need for resetting it, telling VM, all is fine %d\n",
 			vf->vf_id);
-		return 0;
+		goto out_unlock;
 	}
 
-	if (flags & ICE_VF_RESET_LOCK)
-		mutex_lock(&vf->cfg_lock);
-	else
-		lockdep_assert_held(&vf->cfg_lock);
-
 	/* Set VF disable bit state here, before triggering reset */
 	set_bit(ICE_VF_STATE_DIS, vf->vf_states);
 	ice_trigger_vf_reset(vf, flags & ICE_VF_RESET_VFLR, false);
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
