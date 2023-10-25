Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C137D703C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 17:00:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B05C4370C;
	Wed, 25 Oct 2023 14:59:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B05C4370C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698245998;
	bh=F73hrR8j3zKGAsOKg7TrIOH/jVYkhb+y+GHh64nDoDM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=pufZz8InA/ksPnfV36hJ9iU2GkgXtEaV6VAgNdX3dtogMxFNMBje0NtjiDAVd/3aX
	 h3mbRs9TIYsbGjNSslzumr3rQ98pcXqJ4gBZwkpIwXqUc438b4kGeHfDmjAHfeRDgB
	 YM2iCBzcy31OLZJlTD/YxWyNta80Vg5Qoshrckwsxp/CCuhTkCwaPs0bPn53uF4QEU
	 2TPes5a87cLbZQ25p3FM/u9oMKBAInWa6pYW5jXuvaMYH5u2EdKZyLKjDgGXH2PKiS
	 hTsAcIxlZtCNYy8ADprJBe1umZzn3KY1XONydySusV42Dluc2Ozs+DtI0ki89lCUuP
	 JdjB+ANAbnqMg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SzGGQQuwAWSs; Wed, 25 Oct 2023 14:59:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A0D043358;
	Wed, 25 Oct 2023 14:59:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A0D043358
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8F5C41BF23B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 14:59:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6739C80C98
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 14:59:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6739C80C98
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oZCRBTvnGKTp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 14:59:50 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 415A280C8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 14:59:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 415A280C8C
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-557-JH8XuIf2OI-lpHt6TpHG3Q-1; Wed,
 25 Oct 2023 10:59:40 -0400
X-MC-Unique: JH8XuIf2OI-lpHt6TpHG3Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1EDA5381494F;
 Wed, 25 Oct 2023 14:59:40 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7B2292166B26;
 Wed, 25 Oct 2023 14:59:38 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 25 Oct 2023 16:59:37 +0200
Message-ID: <20231025145937.1873040-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698245989;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=qM/rirOfS0LOEzIt3QIvwQJkTQ5h2OvfxaYyTIO6qEU=;
 b=YTmGQUCPxHNqalB4yulRLUN2J93S+idL1Jb+3xfguViTwA8bug8HhxD2DkrjVAMtcqTpad
 JGVXu6/sYJqN7LKHXsVM3ebwVTGaZiEkr2+KkSpao1R59X9SeSR3a9zxvSI5PthonJ32u/
 dy91qB0TY/B3x8SZtq2P8Y44h04krYI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=YTmGQUCP
Subject: [Intel-wired-lan] [PATCH iwl-next] i40e: Delete unused and useless
 i40e_pf fields
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Removed fields:
.fc_autoneg_status
    Since commit c56999f94876 ("i40e/i40evf: Add set_fc and init of
    FC settings") write-only and otherwise unused
.eeprom_version
    Write-only and otherwise unused
.atr_sample_rate
    Has only one possible value (I40E_DEFAULT_ATR_SAMPLE_RATE). Remove
    it and replace its occurrences by I40E_DEFAULT_ATR_SAMPLE_RATE
.adminq_work_limit
    Has only one possible value (I40E_AQ_WORK_LIMIT). Remove it and
    replace its occurrences by I40E_AQ_WORK_LIMIT
.tx_sluggish_count
    Unused, never written
.pf_seid
    Used to store VSI downlink seid and it is referenced only once
    in the same codepath. There is no need to save it into i40e_pf.
    Remove it and use downlink_seid directly in the mentioned log
    message.
.instance
    Write only. Remove it as well as ugly static local variable
    'pfs_found' in i40e_probe.
.int_policy
.switch_kobj
.ptp_pps_work
.ptp_extts1_work
.ptp_pps_start
.pps_delay
.ptp_pin
.override_q_count
    All these unused at all

Prior the patch:
pahole -Ci40e_pf drivers/net/ethernet/intel/i40e/i40e.ko | tail -5
        /* size: 5368, cachelines: 84, members: 127 */
        /* sum members: 5297, holes: 20, sum holes: 71 */
        /* paddings: 6, sum paddings: 19 */
        /* last cacheline: 56 bytes */
};

After the patch:
pahole -Ci40e_pf drivers/net/ethernet/intel/i40e/i40e.ko | tail -5
        /* size: 4976, cachelines: 78, members: 112 */
        /* sum members: 4905, holes: 17, sum holes: 71 */
        /* paddings: 6, sum paddings: 19 */
        /* last cacheline: 48 bytes */
};

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h         | 16 ----------------
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c |  3 ---
 drivers/net/ethernet/intel/i40e/i40e_main.c    | 18 ++++--------------
 3 files changed, 4 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 5926bcc76141..f1627ab211cd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -468,9 +468,7 @@ struct i40e_pf {
 	struct i40e_hw hw;
 	DECLARE_BITMAP(state, __I40E_STATE_SIZE__);
 	struct msix_entry *msix_entries;
-	bool fc_autoneg_status;
 
-	u16 eeprom_version;
 	u16 num_vmdq_vsis;         /* num vmdq vsis this PF has set up */
 	u16 num_vmdq_qps;          /* num queue pairs per vmdq pool */
 	u16 num_vmdq_msix;         /* num queue vectors per vmdq pool */
@@ -486,7 +484,6 @@ struct i40e_pf {
 	u16 rss_size_max;          /* HW defined max RSS queues */
 	u16 fdir_pf_filter_count;  /* num of guaranteed filters for this PF */
 	u16 num_alloc_vsi;         /* num VSIs this driver supports */
-	u8 atr_sample_rate;
 	bool wol_en;
 
 	struct hlist_head fdir_filter_list;
@@ -524,12 +521,10 @@ struct i40e_pf {
 	struct hlist_head cloud_filter_list;
 	u16 num_cloud_filters;
 
-	enum i40e_interrupt_policy int_policy;
 	u16 rx_itr_default;
 	u16 tx_itr_default;
 	u32 msg_enable;
 	char int_name[I40E_INT_NAME_STR_LEN];
-	u16 adminq_work_limit; /* num of admin receive queue desc to process */
 	unsigned long service_timer_period;
 	unsigned long service_timer_previous;
 	struct timer_list service_timer;
@@ -543,7 +538,6 @@ struct i40e_pf {
 	u32 tx_timeout_count;
 	u32 tx_timeout_recovery_level;
 	unsigned long tx_timeout_last_recovery;
-	u32 tx_sluggish_count;
 	u32 hw_csum_rx_error;
 	u32 led_status;
 	u16 corer_count; /* Core reset count */
@@ -565,17 +559,13 @@ struct i40e_pf {
 	struct i40e_lump_tracking *irq_pile;
 
 	/* switch config info */
-	u16 pf_seid;
 	u16 main_vsi_seid;
 	u16 mac_seid;
-	struct kobject *switch_kobj;
 #ifdef CONFIG_DEBUG_FS
 	struct dentry *i40e_dbg_pf;
 #endif /* CONFIG_DEBUG_FS */
 	bool cur_promisc;
 
-	u16 instance; /* A unique number per i40e_pf instance in the system */
-
 	/* sr-iov config info */
 	struct i40e_vf *vf;
 	int num_alloc_vfs;	/* actual number of VFs allocated */
@@ -669,9 +659,7 @@ struct i40e_pf {
 	unsigned long ptp_tx_start;
 	struct hwtstamp_config tstamp_config;
 	struct timespec64 ptp_prev_hw_time;
-	struct work_struct ptp_pps_work;
 	struct work_struct ptp_extts0_work;
-	struct work_struct ptp_extts1_work;
 	ktime_t ptp_reset_start;
 	struct mutex tmreg_lock; /* Used to protect the SYSTIME registers. */
 	u32 ptp_adj_mult;
@@ -679,10 +667,7 @@ struct i40e_pf {
 	u32 tx_hwtstamp_skipped;
 	u32 rx_hwtstamp_cleared;
 	u32 latch_event_flags;
-	u64 ptp_pps_start;
-	u32 pps_delay;
 	spinlock_t ptp_rx_lock; /* Used to protect Rx timestamp registers. */
-	struct ptp_pin_desc ptp_pin[3];
 	unsigned long latch_events[4];
 	bool ptp_tx;
 	bool ptp_rx;
@@ -695,7 +680,6 @@ struct i40e_pf {
 	u32 fd_inv;
 	u16 phy_led_val;
 
-	u16 override_q_count;
 	u16 last_sw_conf_flags;
 	u16 last_sw_conf_valid_flags;
 	/* List to keep previous DDP profiles to be rolled back in the future */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index e0849f0c9c27..6f289237a8b0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -1029,9 +1029,6 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 				 "emp reset count: %d\n", pf->empr_count);
 			dev_info(&pf->pdev->dev,
 				 "pf reset count: %d\n", pf->pfr_count);
-			dev_info(&pf->pdev->dev,
-				 "pf tx sluggish count: %d\n",
-				 pf->tx_sluggish_count);
 		} else if (strncmp(&cmd_buf[5], "port", 4) == 0) {
 			struct i40e_aqc_query_port_ets_config_resp *bw_data;
 			struct i40e_dcbx_config *cfg =
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 7169ceb6b757..69dafdecb243 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3465,7 +3465,7 @@ static int i40e_configure_tx_ring(struct i40e_ring *ring)
 
 	/* some ATR related tx ring init */
 	if (test_bit(I40E_FLAG_FD_ATR_ENA, vsi->back->flags)) {
-		ring->atr_sample_rate = vsi->back->atr_sample_rate;
+		ring->atr_sample_rate = I40E_DEFAULT_ATR_SAMPLE_RATE;
 		ring->atr_count = 0;
 	} else {
 		ring->atr_sample_rate = 0;
@@ -10242,9 +10242,9 @@ static void i40e_clean_adminq_subtask(struct i40e_pf *pf)
 				 opcode);
 			break;
 		}
-	} while (i++ < pf->adminq_work_limit);
+	} while (i++ < I40E_AQ_WORK_LIMIT);
 
-	if (i < pf->adminq_work_limit)
+	if (i < I40E_AQ_WORK_LIMIT)
 		clear_bit(__I40E_ADMINQ_EVENT_PENDING, pf->state);
 
 	/* re-enable Admin queue interrupt cause */
@@ -12785,7 +12785,6 @@ static int i40e_sw_init(struct i40e_pf *pf)
 	if ((pf->hw.func_caps.fd_filters_guaranteed > 0) ||
 	    (pf->hw.func_caps.fd_filters_best_effort > 0)) {
 		set_bit(I40E_FLAG_FD_ATR_ENA, pf->flags);
-		pf->atr_sample_rate = I40E_DEFAULT_ATR_SAMPLE_RATE;
 		if (test_bit(I40E_FLAG_MFP_ENA, pf->flags) &&
 		    pf->hw.num_partitions > 1)
 			dev_info(&pf->pdev->dev,
@@ -12831,7 +12830,6 @@ static int i40e_sw_init(struct i40e_pf *pf)
 					I40E_MAX_VF_COUNT);
 	}
 #endif /* CONFIG_PCI_IOV */
-	pf->eeprom_version = 0xDEAD;
 	pf->lan_veb = I40E_NO_VEB;
 	pf->lan_vsi = I40E_NO_VSI;
 
@@ -14992,12 +14990,11 @@ static void i40e_setup_pf_switch_element(struct i40e_pf *pf,
 		 * the PF's VSI
 		 */
 		pf->mac_seid = uplink_seid;
-		pf->pf_seid = downlink_seid;
 		pf->main_vsi_seid = seid;
 		if (printconfig)
 			dev_info(&pf->pdev->dev,
 				 "pf_seid=%d main_vsi_seid=%d\n",
-				 pf->pf_seid, pf->main_vsi_seid);
+				 downlink_seid, pf->main_vsi_seid);
 		break;
 	case I40E_SWITCH_ELEMENT_TYPE_PF:
 	case I40E_SWITCH_ELEMENT_TYPE_VF:
@@ -15176,10 +15173,6 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acqui
 	/* fill in link information and enable LSE reporting */
 	i40e_link_event(pf);
 
-	/* Initialize user-specific link properties */
-	pf->fc_autoneg_status = ((pf->hw.phy.link_info.an_info &
-				  I40E_AQ_AN_COMPLETED) ? true : false);
-
 	i40e_ptp_init(pf);
 
 	if (!lock_acquired)
@@ -15654,7 +15647,6 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 #endif /* CONFIG_I40E_DCB */
 	struct i40e_pf *pf;
 	struct i40e_hw *hw;
-	static u16 pfs_found;
 	u16 wol_nvm_bits;
 	char nvm_ver[32];
 	u16 link_status;
@@ -15732,7 +15724,6 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	hw->bus.device = PCI_SLOT(pdev->devfn);
 	hw->bus.func = PCI_FUNC(pdev->devfn);
 	hw->bus.bus_id = pdev->bus->number;
-	pf->instance = pfs_found;
 
 	/* Select something other than the 802.1ad ethertype for the
 	 * switch to use internally and drop on ingress.
@@ -15794,7 +15785,6 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	}
 	hw->aq.arq_buf_size = I40E_MAX_AQ_BUF_SIZE;
 	hw->aq.asq_buf_size = I40E_MAX_AQ_BUF_SIZE;
-	pf->adminq_work_limit = I40E_AQ_WORK_LIMIT;
 
 	snprintf(pf->int_name, sizeof(pf->int_name) - 1,
 		 "%s-%s:misc",
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
