Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 828A73BE957
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jul 2021 16:05:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8CEE282F49;
	Wed,  7 Jul 2021 14:05:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iZJ3wrN3blZu; Wed,  7 Jul 2021 14:05:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48894830E2;
	Wed,  7 Jul 2021 14:05:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8A6311BF228
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 09:41:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 82EA8606A9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 09:41:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hdqqwOH2FFOa for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jul 2021 09:41:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B8C99600CD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 09:41:53 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id b5so759474plg.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Jul 2021 02:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w4CYiBaS3xDFtkiie+e/ioKSZBdsnYVJssPhviz6P2o=;
 b=rUyzWlfbc+TxxG13HNAcPhqNHBmiEcY0YbAzkX4yvf4sq1OSH6yLwoNk1fB4Kb0u4/
 wZda17VhxM9m8yuJGpjzsDJAG2IJzKzBYZnskTK96mUPsx07f5tnB1HRzqvuEJBnrsa0
 cI6tUPk84eL/27L/GGYjz3kYgIapA4AL1wEvAODJvKqsfm8nIhmlb+MelQ8cxynmPalW
 dnlNi85NOqWYjNieT0cPg2vcF2K55E5/hSmLnL899n6KNkv+pkggImnU74R4eE3IVpve
 4amwk47uZnUk0gsGdvOU6nQWct0iOKZBzeTRhakFyIdwMtJlEbhMf0KCI10muSrlZz78
 K+PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=w4CYiBaS3xDFtkiie+e/ioKSZBdsnYVJssPhviz6P2o=;
 b=NAAjJCc2wktdnPY5iV4Mw0btDVzzkWzr+pmssJ+zPRoCz846mubhZbBGYQDzsDZkm4
 Hk0F2eKLQXsw6hgam6Q+4+fB/FbYjf0PbDks8e00zlq+jrs5rXVLtMZOokIIgqB2xRe6
 yPscQcT8oTwWePDeBfCd9o+4u8A5EjUM6rOF6yb/sWM1klf7uFoy7BUQSKxJIaWONDLq
 IXOA9bUxtKOSPmWjlpp8CW0gVUOu6YByy2ou3T7eH5PVfULLZaNyZp98UL12a57J807q
 Mynsxl+WnRwhenAWdEsuLH0flb7F6ThbxREAHeGW3h2ImS1PtOZJez4mAmWp6VZfGdVH
 XvTQ==
X-Gm-Message-State: AOAM531PFuSiIK1BdgLYg5lFfw/Ff2dt0GunsLBwDwA9CD4bwjVbWFYH
 4aadsZV19uO+aKYk6xQfvcA=
X-Google-Smtp-Source: ABdhPJya30HG1ys3Z3vEjRSmkbl6NYPhhj8sDKm/jD28G7YDn0tNaaPDbd6J2DAdwPAda4zjTjCnFQ==
X-Received: by 2002:a17:902:e5cb:b029:128:9962:ef60 with SMTP id
 u11-20020a170902e5cbb02901289962ef60mr20487045plf.59.1625650913231; 
 Wed, 07 Jul 2021 02:41:53 -0700 (PDT)
Received: from localhost.localdomain ([154.86.159.246])
 by smtp.gmail.com with ESMTPSA id r14sm22266989pgm.28.2021.07.07.02.41.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Jul 2021 02:41:52 -0700 (PDT)
From: kerneljasonxing@gmail.com
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, andrii@kernel.org, kafai@fb.com,
 songliubraving@fb.com, yhs@fb.com, kpsingh@kernel.org
Date: Wed,  7 Jul 2021 17:41:33 +0800
Message-Id: <20210707094133.24597-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 07 Jul 2021 14:05:37 +0000
Subject: [Intel-wired-lan] [PATCH net] i40e: introduce pseudo number of cpus
 for compatibility
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
Cc: Shujin Li <lishujin@kuaishou.com>, Jason Xing <xingwanli@kuaishou.com>,
 kerneljasonxing@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jason Xing <xingwanli@kuaishou.com>

The kernel will crash when loading xdpdrv with more than 64 cores and
Intel X722. Last time I submitted the fix (commit: 4e39a072a), but it only
solves the similar issue if the machine has less than 64 cores.

Crash log:
[305797.917411] Using feature eBPF/xdp.
[305798.054336] i40e 0000:1a:00.0: failed to get tracking for 256 queues
for VSI 0 err -12
[305798.055448] i40e 0000:1a:00.0: setup of MAIN VSI failed
[305798.056130] i40e 0000:1a:00.0: can't remove VEB 160 with 0 VSIs left
[305798.056856] BUG: unable to handle kernel NULL pointer dereference at
0000000000000000
[305798.061190] RIP: 0010:i40e_xdp+0xae/0x110 [i40e]
[305798.075139] Call Trace:
[305798.075666]  dev_xdp_install+0x4f/0x70
[305798.076253]  dev_change_xdp_fd+0x11f/0x230
[305798.085182]  do_setlink+0xac7/0xe70
[305798.086344]  rtnl_newlink+0x72d/0x850

Here's how to reproduce:
1) prepare one machine shipped with more than 64 cores and Intel X722
10G.
2) # mount bpffs -t bpf /sys/fs/bpf
3) # ip link set dev eth01 xdpdrv obj ./bpf_xdp.o sec from-netdev

The reason is that the allocation of @rss_size_max is too large and then
affects the value of @vsi->alloc_queue_pairs which is 64. Later, if we
load the xdpdrv, it will reinit the vsi and assign double of the older
value to @alloc_queue_pairs which triggers the failure of finding the
lump.

We cannot simply add the limit of calculating @rss_size_max because
@pf->num_lan_qps will pick up the maximum (say, the number of cpus).
In fact, we don't need to allocate too many resources in accordance with
the number of cpus. It's limited by the hardware itself. So I introduce
the pseudo number of cpus to replace the real number to avoid the
unbalance.

After applying this feature, the machine with X722 nic will only use 64
cores no mather how large the number of cpus. The pseudo number
actually depends on @num_tx_qp.

Fixes: 41c445ff0f48 ("i40e: main driver core")
Co-developed-by: Shujin Li <lishujin@kuaishou.com>
Signed-off-by: Shujin Li <lishujin@kuaishou.com>
Signed-off-by: Jason Xing <xingwanli@kuaishou.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 47 +++++++++++++++++++++++------
 1 file changed, 38 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 861e59a..26de518 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -100,6 +100,35 @@ static int i40e_get_capabilities(struct i40e_pf *pf,
 static struct workqueue_struct *i40e_wq;
 
 /**
+ * i40e_pseudo_num_online_cpus - use as possible as what we can use actually
+ * @pf: board private structure
+ *
+ * We mignt not use all the cores because some old nics are not compatible
+ * with the machine which has a large number of cores, say, 128 cores
+ * combined with X722 nic.
+ *
+ * We should avoid this situation where the number of core is too large
+ * while the nic is a little bit old. Therefore, we have to limit the
+ * actual number of cpus we can use by adding the calculation of parameters
+ * of the hardware.
+ *
+ * The algorithm is violent and shrink the number exponentially, so that we
+ * make sure that the driver can work definitely.
+ */
+static u16 i40e_pseudo_num_online_cpus(struct i40e_pf *pf)
+{
+	u32 limit;
+	u16 pow;
+
+	limit = pf->hw.func_caps.num_tx_qp / 3;
+	pow = roundup_pow_of_two(num_online_cpus());
+	while (pow >= limit)
+		pow = rounddown_pow_of_two(pow - 1);
+
+	return pow;
+}
+
+/**
  * i40e_allocate_dma_mem_d - OS specific memory alloc for shared code
  * @hw:   pointer to the HW structure
  * @mem:  ptr to mem struct to fill out
@@ -11395,7 +11424,7 @@ static int i40e_init_msix(struct i40e_pf *pf)
 	 * will use any remaining vectors to reach as close as we can to the
 	 * number of online CPUs.
 	 */
-	cpus = num_online_cpus();
+	cpus = i40e_pseudo_num_online_cpus(pf);
 	pf->num_lan_msix = min_t(int, cpus, vectors_left / 2);
 	vectors_left -= pf->num_lan_msix;
 
@@ -11457,7 +11486,7 @@ static int i40e_init_msix(struct i40e_pf *pf)
 	 * the number of vectors for num_lan_msix to be at most 50% of the
 	 * available vectors, to allow for other features. Now, we add back
 	 * the remaining vectors. However, we ensure that the total
-	 * num_lan_msix will not exceed num_online_cpus(). To do this, we
+	 * num_lan_msix will not exceed i40e_pseudo_num_online_cpus(). To do this, we
 	 * calculate the number of vectors we can add without going over the
 	 * cap of CPUs. For systems with a small number of CPUs this will be
 	 * zero.
@@ -12102,7 +12131,7 @@ int i40e_reconfig_rss_queues(struct i40e_pf *pf, int queue_count)
 	if (!(pf->flags & I40E_FLAG_RSS_ENABLED))
 		return 0;
 
-	queue_count = min_t(int, queue_count, num_online_cpus());
+	queue_count = min_t(int, queue_count, i40e_pseudo_num_online_cpus(pf));
 	new_rss_size = min_t(int, queue_count, pf->rss_size_max);
 
 	if (queue_count != vsi->num_queue_pairs) {
@@ -12348,13 +12377,13 @@ static int i40e_sw_init(struct i40e_pf *pf)
 				 pf->hw.func_caps.num_tx_qp);
 
 	/* find the next higher power-of-2 of num cpus */
-	pow = roundup_pow_of_two(num_online_cpus());
+	pow = roundup_pow_of_two(i40e_pseudo_num_online_cpus(pf));
 	pf->rss_size_max = min_t(int, pf->rss_size_max, pow);
 
 	if (pf->hw.func_caps.rss) {
 		pf->flags |= I40E_FLAG_RSS_ENABLED;
 		pf->alloc_rss_size = min_t(int, pf->rss_size_max,
-					   num_online_cpus());
+					   i40e_pseudo_num_online_cpus(pf));
 	}
 
 	/* MFP mode enabled */
@@ -12446,16 +12475,16 @@ static int i40e_sw_init(struct i40e_pf *pf)
 	    pf->hw.aq.fw_maj_ver >= 6)
 		pf->hw_features |= I40E_HW_PTP_L4_CAPABLE;
 
-	if (pf->hw.func_caps.vmdq && num_online_cpus() != 1) {
+	if (pf->hw.func_caps.vmdq && i40e_pseudo_num_online_cpus(pf) != 1) {
 		pf->num_vmdq_vsis = I40E_DEFAULT_NUM_VMDQ_VSI;
 		pf->flags |= I40E_FLAG_VMDQ_ENABLED;
 		pf->num_vmdq_qps = i40e_default_queues_per_vmdq(pf);
 	}
 
-	if (pf->hw.func_caps.iwarp && num_online_cpus() != 1) {
+	if (pf->hw.func_caps.iwarp && i40e_pseudo_num_online_cpus(pf) != 1) {
 		pf->flags |= I40E_FLAG_IWARP_ENABLED;
 		/* IWARP needs one extra vector for CQP just like MISC.*/
-		pf->num_iwarp_msix = (int)num_online_cpus() + 1;
+		pf->num_iwarp_msix = (int)i40e_pseudo_num_online_cpus(pf) + 1;
 	}
 	/* Stopping FW LLDP engine is supported on XL710 and X722
 	 * starting from FW versions determined in i40e_init_adminq.
@@ -14805,7 +14834,7 @@ static void i40e_determine_queue_usage(struct i40e_pf *pf)
 		}
 
 		/* limit lan qps to the smaller of qps, cpus or msix */
-		q_max = max_t(int, pf->rss_size_max, num_online_cpus());
+		q_max = max_t(int, pf->rss_size_max, i40e_pseudo_num_online_cpus(pf));
 		q_max = min_t(int, q_max, pf->hw.func_caps.num_tx_qp);
 		q_max = min_t(int, q_max, pf->hw.func_caps.num_msix_vectors);
 		pf->num_lan_qps = q_max;
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
