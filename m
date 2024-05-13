Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7376A8C4689
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 19:56:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DFDD60892;
	Mon, 13 May 2024 17:56:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B9SwYOvFzqsD; Mon, 13 May 2024 17:56:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1DEFA60654
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715622986;
	bh=/zvu51lkkjVp+U6SO0XgD9ysHKSWUv3s7ybohHkN9zo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5Qv2b5jh7nD7x/1gOGKeWgN08lJN+dSz0FLo9B3sy21V8BA1CUoHFyHtnUNu/5dz8
	 wePn0wchm7FN5xuPj+Dlx8Fn7bcYSbXNbx5eFxifQHH3Cbov+9xO0NYdk8xVJRxrvw
	 /mdjfHpgCvdqBI/6hhoqL5F5Ecnp8WgOEpTFGKujISBCzfT9jWS8cSUZUGFf/+F8rL
	 Ng7pQQavGD5cG5/gs61j+aqie/pWshVOxau+qKpbSW8k2GxtAAgefGQodu7lQh5J/M
	 Bie0YM3rMbYCifUiy4koyNnd+KpQDIlEXTgsoqRpgKVkHAzjtKyxvvcmWdGkSF04yq
	 o3Wx1Fmf0Vevw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DEFA60654;
	Mon, 13 May 2024 17:56:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D62941BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 17:56:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CFDEB40125
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 17:56:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4DQJLWVsdPrx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 17:56:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.158.5;
 helo=mx0b-001b2d01.pphosted.com; envelope-from=thinhtr@linux.ibm.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 957B24012F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 957B24012F
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 957B24012F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 17:56:22 +0000 (UTC)
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 44DEuxoZ007188; Mon, 13 May 2024 17:56:10 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3y3e041kr6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 May 2024 17:56:09 +0000
Received: from m0353725.ppops.net (m0353725.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 44DHtJ1E023939;
 Mon, 13 May 2024 17:56:08 GMT
Received: from ppma23.wdc07v.mail.ibm.com
 (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3y3e041kr1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 May 2024 17:56:08 +0000
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma23.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 44DEYZ2T006189; Mon, 13 May 2024 17:56:08 GMT
Received: from smtprelay05.dal12v.mail.ibm.com ([172.16.1.7])
 by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3y2mgm8ruw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 May 2024 17:56:08 +0000
Received: from smtpav06.wdc07v.mail.ibm.com (smtpav06.wdc07v.mail.ibm.com
 [10.39.53.233])
 by smtprelay05.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 44DHu4fD11797146
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 May 2024 17:56:07 GMT
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A6D3858055;
 Mon, 13 May 2024 17:56:04 +0000 (GMT)
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 09B795804E;
 Mon, 13 May 2024 17:56:04 +0000 (GMT)
Received: from linux.vnet.ibm.com (unknown [9.41.99.196])
 by smtpav06.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Mon, 13 May 2024 17:56:03 +0000 (GMT)
From: Thinh Tran <thinhtr@linux.ibm.com>
To: netdev@vger.kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com
Date: Mon, 13 May 2024 12:55:48 -0500
Message-Id: <20240513175549.609-2-thinhtr@linux.ibm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240513175549.609-1-thinhtr@linux.ibm.com>
References: <20240513175549.609-1-thinhtr@linux.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: u2DQsIzCPuNXyX3pM02DaBzSqYFvi6np
X-Proofpoint-ORIG-GUID: RSAk91KBKA9v5txK5yO6bJCLfzQLXBRi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-13_12,2024-05-10_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015
 suspectscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 spamscore=0 phishscore=0 priorityscore=1501
 mlxlogscore=999 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2405010000 definitions=main-2405130119
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=/zvu51lkkjVp+U6SO0XgD9ysHKSWUv3s7ybohHkN9zo=;
 b=l6GOwvHzGqT1nNQ5hcIVED9GGIPu/J67OXydeu5TYJwnvxGVuS4zTde/rGzha1C1JF56
 tEJuuF/KwrQt4eO0RYnEa7t1eYmaDH53WkjobngGBBBWWoxw2+jHAvtgLRTVNqWdmyXp
 cc/vokAP+oCbQ/TccSWJ7lsyNyugmPSSrvC6Zhj/k16WOo3OphzOh2xRJV3GlDzdlgfd
 0l+NNKKZay7e+toDET/R4Y9bsbfIzYKhhe/pje5lBBkk1iWTET0eLvjvJxWMcRU2hsSD
 row15roKftirMn0QIOanfTmMNZSkVIIATwde5L+LfA2JOZFA5WV6pwTUni1umWW1dyRc bw== 
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.ibm.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com
 header.a=rsa-sha256 header.s=pp1 header.b=l6GOwvHz
Subject: [Intel-wired-lan] [PATCH iwl-net V2,
 1/2] i40e: fractoring out i40e_suspend/i40e_resume
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
Cc: edumazet@google.com, rob.thomas@ibm.com, Thinh Tran <thinhtr@linux.ibm.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fractoring out i40e_suspend() and i40e_resume() to i40e_io_suspend()
and 40e_io_resume() respectively. 

Reordered the function, i40e_enable_mc_magic_wake() has been moved 
ahead of i40e_io_suspend() to ensure it is declared before being used.

Tested-by: Robert Thomas <rob.thomas@ibm.com>
Signed-off-by: Thinh Tran <thinhtr@linux.ibm.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 248 +++++++++++---------
 1 file changed, 134 insertions(+), 114 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index ffb9f9f15c52..281c8ec27af2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -16303,6 +16303,138 @@ static void i40e_remove(struct pci_dev *pdev)
 	pci_disable_device(pdev);
 }
 
+/**
+ * i40e_enable_mc_magic_wake - enable multicast magic packet wake up
+ * using the mac_address_write admin q function
+ * @pf: pointer to i40e_pf struct
+ **/
+static void i40e_enable_mc_magic_wake(struct i40e_pf *pf)
+{
+	struct i40e_hw *hw = &pf->hw;
+	u8 mac_addr[6];
+	u16 flags = 0;
+	int ret;
+
+	/* Get current MAC address in case it's an LAA */
+	if (pf->vsi[pf->lan_vsi] && pf->vsi[pf->lan_vsi]->netdev) {
+		ether_addr_copy(mac_addr,
+				pf->vsi[pf->lan_vsi]->netdev->dev_addr);
+	} else {
+		dev_err(&pf->pdev->dev,
+			"Failed to retrieve MAC address; using default\n");
+		ether_addr_copy(mac_addr, hw->mac.addr);
+	}
+
+	/* The FW expects the mac address write cmd to first be called with
+	 * one of these flags before calling it again with the multicast
+	 * enable flags.
+	 */
+	flags = I40E_AQC_WRITE_TYPE_LAA_WOL;
+
+	if (hw->func_caps.flex10_enable && hw->partition_id != 1)
+		flags = I40E_AQC_WRITE_TYPE_LAA_ONLY;
+
+	ret = i40e_aq_mac_address_write(hw, flags, mac_addr, NULL);
+	if (ret) {
+		dev_err(&pf->pdev->dev,
+			"Failed to update MAC address registers; cannot enable Multicast Magic packet wake up");
+		return;
+	}
+
+	flags = I40E_AQC_MC_MAG_EN
+			| I40E_AQC_WOL_PRESERVE_ON_PFR
+			| I40E_AQC_WRITE_TYPE_UPDATE_MC_MAG;
+	ret = i40e_aq_mac_address_write(hw, flags, mac_addr, NULL);
+	if (ret)
+		dev_err(&pf->pdev->dev,
+			"Failed to enable Multicast Magic Packet wake up\n");
+}
+
+/**
+ * i40e_io_suspend - suspend all IO operations
+ * @pf: pointer to i40e_pf struct
+ *
+ **/
+static int i40e_io_suspend(struct i40e_pf *pf)
+{
+	struct i40e_hw *hw = &pf->hw;
+
+	set_bit(__I40E_DOWN, pf->state);
+
+	/* Ensure service task will not be running */
+	del_timer_sync(&pf->service_timer);
+	cancel_work_sync(&pf->service_task);
+
+	/* Client close must be called explicitly here because the timer
+	 * has been stopped.
+	 */
+	i40e_notify_client_of_netdev_close(pf->vsi[pf->lan_vsi], false);
+
+	if (test_bit(I40E_HW_CAP_WOL_MC_MAGIC_PKT_WAKE, pf->hw.caps) &&
+	    pf->wol_en)
+		i40e_enable_mc_magic_wake(pf);
+
+	/* Since we're going to destroy queues during the
+	 * i40e_clear_interrupt_scheme() we should hold the RTNL lock for this
+	 * whole section
+	 */
+	rtnl_lock();
+
+	i40e_prep_for_reset(pf);
+
+	wr32(hw, I40E_PFPM_APM, (pf->wol_en ? I40E_PFPM_APM_APME_MASK : 0));
+	wr32(hw, I40E_PFPM_WUFC, (pf->wol_en ? I40E_PFPM_WUFC_MAG_MASK : 0));
+
+	/* Clear the interrupt scheme and release our IRQs so that the system
+	 * can safely hibernate even when there are a large number of CPUs.
+	 * Otherwise hibernation might fail when mapping all the vectors back
+	 * to CPU0.
+	 */
+	i40e_clear_interrupt_scheme(pf);
+
+	rtnl_unlock();
+
+	return 0;
+}
+
+/**
+ * i40e_io_resume - resume IO operations
+ * @pf: pointer to i40e_pf struct
+ *
+ **/
+static int i40e_io_resume(struct i40e_pf *pf)
+{
+	int err;
+
+	/* We need to hold the RTNL lock prior to restoring interrupt schemes,
+	 * since we're going to be restoring queues
+	 */
+	rtnl_lock();
+
+	/* We cleared the interrupt scheme when we suspended, so we need to
+	 * restore it now to resume device functionality.
+	 */
+	err = i40e_restore_interrupt_scheme(pf);
+	if (err) {
+		dev_err(&pf->pdev->dev, "Cannot restore interrupt scheme: %d\n",
+			err);
+	}
+
+	clear_bit(__I40E_DOWN, pf->state);
+	i40e_reset_and_rebuild(pf, false, true);
+
+	rtnl_unlock();
+
+	/* Clear suspended state last after everything is recovered */
+	clear_bit(__I40E_SUSPENDED, pf->state);
+
+	/* Restart the service task */
+	mod_timer(&pf->service_timer,
+		  round_jiffies(jiffies + pf->service_timer_period));
+
+	return 0;
+}
+
 /**
  * i40e_pci_error_detected - warning that something funky happened in PCI land
  * @pdev: PCI device information struct
@@ -16415,53 +16547,6 @@ static void i40e_pci_error_resume(struct pci_dev *pdev)
 	i40e_handle_reset_warning(pf, false);
 }
 
-/**
- * i40e_enable_mc_magic_wake - enable multicast magic packet wake up
- * using the mac_address_write admin q function
- * @pf: pointer to i40e_pf struct
- **/
-static void i40e_enable_mc_magic_wake(struct i40e_pf *pf)
-{
-	struct i40e_hw *hw = &pf->hw;
-	u8 mac_addr[6];
-	u16 flags = 0;
-	int ret;
-
-	/* Get current MAC address in case it's an LAA */
-	if (pf->vsi[pf->lan_vsi] && pf->vsi[pf->lan_vsi]->netdev) {
-		ether_addr_copy(mac_addr,
-				pf->vsi[pf->lan_vsi]->netdev->dev_addr);
-	} else {
-		dev_err(&pf->pdev->dev,
-			"Failed to retrieve MAC address; using default\n");
-		ether_addr_copy(mac_addr, hw->mac.addr);
-	}
-
-	/* The FW expects the mac address write cmd to first be called with
-	 * one of these flags before calling it again with the multicast
-	 * enable flags.
-	 */
-	flags = I40E_AQC_WRITE_TYPE_LAA_WOL;
-
-	if (hw->func_caps.flex10_enable && hw->partition_id != 1)
-		flags = I40E_AQC_WRITE_TYPE_LAA_ONLY;
-
-	ret = i40e_aq_mac_address_write(hw, flags, mac_addr, NULL);
-	if (ret) {
-		dev_err(&pf->pdev->dev,
-			"Failed to update MAC address registers; cannot enable Multicast Magic packet wake up");
-		return;
-	}
-
-	flags = I40E_AQC_MC_MAG_EN
-			| I40E_AQC_WOL_PRESERVE_ON_PFR
-			| I40E_AQC_WRITE_TYPE_UPDATE_MC_MAG;
-	ret = i40e_aq_mac_address_write(hw, flags, mac_addr, NULL);
-	if (ret)
-		dev_err(&pf->pdev->dev,
-			"Failed to enable Multicast Magic Packet wake up\n");
-}
-
 /**
  * i40e_shutdown - PCI callback for shutting down
  * @pdev: PCI device information struct
@@ -16521,48 +16606,11 @@ static void i40e_shutdown(struct pci_dev *pdev)
 static int __maybe_unused i40e_suspend(struct device *dev)
 {
 	struct i40e_pf *pf = dev_get_drvdata(dev);
-	struct i40e_hw *hw = &pf->hw;
 
 	/* If we're already suspended, then there is nothing to do */
 	if (test_and_set_bit(__I40E_SUSPENDED, pf->state))
 		return 0;
-
-	set_bit(__I40E_DOWN, pf->state);
-
-	/* Ensure service task will not be running */
-	del_timer_sync(&pf->service_timer);
-	cancel_work_sync(&pf->service_task);
-
-	/* Client close must be called explicitly here because the timer
-	 * has been stopped.
-	 */
-	i40e_notify_client_of_netdev_close(pf->vsi[pf->lan_vsi], false);
-
-	if (test_bit(I40E_HW_CAP_WOL_MC_MAGIC_PKT_WAKE, pf->hw.caps) &&
-	    pf->wol_en)
-		i40e_enable_mc_magic_wake(pf);
-
-	/* Since we're going to destroy queues during the
-	 * i40e_clear_interrupt_scheme() we should hold the RTNL lock for this
-	 * whole section
-	 */
-	rtnl_lock();
-
-	i40e_prep_for_reset(pf);
-
-	wr32(hw, I40E_PFPM_APM, (pf->wol_en ? I40E_PFPM_APM_APME_MASK : 0));
-	wr32(hw, I40E_PFPM_WUFC, (pf->wol_en ? I40E_PFPM_WUFC_MAG_MASK : 0));
-
-	/* Clear the interrupt scheme and release our IRQs so that the system
-	 * can safely hibernate even when there are a large number of CPUs.
-	 * Otherwise hibernation might fail when mapping all the vectors back
-	 * to CPU0.
-	 */
-	i40e_clear_interrupt_scheme(pf);
-
-	rtnl_unlock();
-
-	return 0;
+	return i40e_io_suspend(pf);
 }
 
 /**
@@ -16572,39 +16620,11 @@ static int __maybe_unused i40e_suspend(struct device *dev)
 static int __maybe_unused i40e_resume(struct device *dev)
 {
 	struct i40e_pf *pf = dev_get_drvdata(dev);
-	int err;
 
 	/* If we're not suspended, then there is nothing to do */
 	if (!test_bit(__I40E_SUSPENDED, pf->state))
 		return 0;
-
-	/* We need to hold the RTNL lock prior to restoring interrupt schemes,
-	 * since we're going to be restoring queues
-	 */
-	rtnl_lock();
-
-	/* We cleared the interrupt scheme when we suspended, so we need to
-	 * restore it now to resume device functionality.
-	 */
-	err = i40e_restore_interrupt_scheme(pf);
-	if (err) {
-		dev_err(dev, "Cannot restore interrupt scheme: %d\n",
-			err);
-	}
-
-	clear_bit(__I40E_DOWN, pf->state);
-	i40e_reset_and_rebuild(pf, false, true);
-
-	rtnl_unlock();
-
-	/* Clear suspended state last after everything is recovered */
-	clear_bit(__I40E_SUSPENDED, pf->state);
-
-	/* Restart the service task */
-	mod_timer(&pf->service_timer,
-		  round_jiffies(jiffies + pf->service_timer_period));
-
-	return 0;
+	return i40e_io_resume(pf);
 }
 
 static const struct pci_error_handlers i40e_err_handler = {
-- 
2.25.1

