Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0F0241A0C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Aug 2020 13:00:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BBBD876FD;
	Tue, 11 Aug 2020 11:00:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SsChC76qRONi; Tue, 11 Aug 2020 11:00:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40F2F876CC;
	Tue, 11 Aug 2020 11:00:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 31C101BF277
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 11:00:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 27E6987B41
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 11:00:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r9yZ6RI7ZdRs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Aug 2020 11:00:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EB47D87A5A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 11:00:40 +0000 (UTC)
IronPort-SDR: YzlT18u1Q12jIrXpQtCI4AxpbzMxsxKEFsUbnb37OSG0a787bCK6McwXUZ7KLDi2ipKo0BmKLQ
 6czq4Ciq+YLQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9709"; a="218045275"
X-IronPort-AV: E=Sophos;i="5.75,461,1589266800"; d="scan'208";a="218045275"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2020 04:00:38 -0700
IronPort-SDR: e+Gi5BfWPNSE2pVVXTdc2qBqzSXMGq20/RoGsdk88SbSufpifO+vQ8YEhcD2vVpsfDTAfRYM2U
 Wp7QpVfiE0tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,461,1589266800"; d="scan'208";a="439008193"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by orsmga004.jf.intel.com with ESMTP; 11 Aug 2020 04:00:37 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 11 Aug 2020 10:56:49 +0000
Message-Id: <20200811105649.13359-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] i40e: Fix crash during removing i40e
 driver
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>

Fix the reason of crashing system by add waiting time to finish reset
recovery process before starting remove driver procedure.
Now vsi is releasing if vsi is not in reset recovery mode.
Without this fix it was possible to start remove driver if other
processing command need reset recovery procedure which resulted in
null pointer dereference. Vsi used by the ethtool process has been
cleared by remove driver process.

[ 6731.508665] BUG: kernel NULL pointer dereference, address: 0000000000000000
[ 6731.508668] #PF: supervisor read access in kernel mode
[ 6731.508670] #PF: error_code(0x0000) - not-present page
[ 6731.508671] PGD 0 P4D 0
[ 6731.508674] Oops: 0000 [#1] SMP PTI
[ 6731.508679] Hardware name: Intel Corporation S2600WT2R/S2600WT2R, BIOS SE5C610.86B.01.01.0021.032120170601 03/21/2017
[ 6731.508694] RIP: 0010:i40e_down+0x252/0x310 [i40e]
[ 6731.508696] Code: c7 78 de fa c0 e8 61 02 3a c1 66 83 bb f6 0c 00 00 00 0f 84 bf 00 00 00 45 31 e4 45 31 ff eb 03 41 89 c7 48 8b 83 98 0c 00 00 <4a> 8b 3c 20 e8 a5 79 02 00 48 83 bb d0 0c 00 00 00 74 10 48 8b 83
[ 6731.508698] RSP: 0018:ffffb75ac7b3faf0 EFLAGS: 00010246
[ 6731.508700] RAX: 0000000000000000 RBX: ffff9c9874bd5000 RCX: 0000000000000007
[ 6731.508701] RDX: 0000000000000000 RSI: 0000000000000096 RDI: ffff9c987f4d9780
[ 6731.508703] RBP: ffffb75ac7b3fb30 R08: 0000000000005b60 R09: 0000000000000004
[ 6731.508704] R10: ffffb75ac64fbd90 R11: 0000000000000001 R12: 0000000000000000
[ 6731.508706] R13: ffff9c97a08e0000 R14: ffff9c97a08e0a68 R15: 0000000000000000
[ 6731.508708] FS:  00007f2617cd2740(0000) GS:ffff9c987f4c0000(0000) knlGS:0000000000000000
[ 6731.508710] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 6731.508711] CR2: 0000000000000000 CR3: 0000001e765c4006 CR4: 00000000003606e0
[ 6731.508713] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[ 6731.508714] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[ 6731.508715] Call Trace:
[ 6731.508734]  i40e_vsi_close+0x84/0x90 [i40e]
[ 6731.508742]  i40e_quiesce_vsi.part.98+0x3c/0x40 [i40e]
[ 6731.508749]  i40e_pf_quiesce_all_vsi+0x55/0x60 [i40e]
[ 6731.508757]  i40e_prep_for_reset+0x59/0x130 [i40e]
[ 6731.508765]  i40e_reconfig_rss_queues+0x5a/0x120 [i40e]
[ 6731.508774]  i40e_set_channels+0xda/0x170 [i40e]
[ 6731.508778]  ethtool_set_channels+0xe9/0x150
[ 6731.508781]  dev_ethtool+0x1b94/0x2920
[ 6731.508805]  dev_ioctl+0xc2/0x590
[ 6731.508811]  sock_do_ioctl+0xae/0x150
[ 6731.508813]  sock_ioctl+0x34f/0x3c0
[ 6731.508821]  ksys_ioctl+0x98/0xb0
[ 6731.508828]  __x64_sys_ioctl+0x1a/0x20
[ 6731.508831]  do_syscall_64+0x57/0x1c0
[ 6731.508835]  entry_SYSCALL_64_after_hwframe+0x44/0xa9

Fixes: 4b8164467b85 ("Add common function for finding VSI by type")

Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index ca8624f..55a46a5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15479,6 +15479,9 @@ static void i40e_remove(struct pci_dev *pdev)
 	i40e_write_rx_ctl(hw, I40E_PFQF_HENA(0), 0);
 	i40e_write_rx_ctl(hw, I40E_PFQF_HENA(1), 0);
 
+	while (test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state))
+		usleep_range(1000, 2000);
+
 	/* no more scheduling of any task */
 	set_bit(__I40E_SUSPENDED, pf->state);
 	set_bit(__I40E_DOWN, pf->state);
-- 
2.26.0

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
