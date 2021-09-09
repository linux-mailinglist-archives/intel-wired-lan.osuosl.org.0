Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 090CD404C33
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 13:55:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E0EA60AFA;
	Thu,  9 Sep 2021 11:55:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fkAVEc5wnMpm; Thu,  9 Sep 2021 11:55:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60B5660755;
	Thu,  9 Sep 2021 11:55:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE1C31BF5A1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 11:55:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CA06940280
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 11:55:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v87IgntRE-ZL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Sep 2021 11:55:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2E33C4027D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 11:55:19 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 17FD161BFE;
 Thu,  9 Sep 2021 11:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631188518;
 bh=/DGxrYYuOKelqppobJQ/urlkm51EvYrMJz4/Fs1C7WU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WCfrSgICWWb2slMI+hjsn+LYex61sNYVAUkmYEpgtbIlW4qGemEVc+1I2uY7kUT3e
 LVVIcbglKV7Kc/xvODRiotnoGxfy4FWd52wxakRfPMeZfC3E0A1AJ0d8pZZuraqZkI
 yg5FjG2WTML0ZBsynIC2hcc1IOmYUpJX0lwCPbNEUOcVT72LzhZcjRQADaK3kg//wv
 xUhNzVXwzhCoTN4npjG6l4xWVDzXdHKb/tU92PgMuQHF+YvK/W5V4Qnj7XtBXKWSce
 fJ9paRKChfz2DXuBrEs6mHtuNkLCE6UORGFgL825H+DAby/ngD7/9ODd9DLnLwTHgM
 pGu65UILRUHWw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Thu,  9 Sep 2021 07:53:26 -0400
Message-Id: <20210909115507.147917-9-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909115507.147917-1-sashal@kernel.org>
References: <20210909115507.147917-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.4 009/109] iavf: fix locking of
 critical sections
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 Stefan Assmann <sassmann@kpanic.de>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Stefan Assmann <sassmann@kpanic.de>

[ Upstream commit 226d528512cfac890a1619aea4301f3dd314fe60 ]

To avoid races between iavf_init_task(), iavf_reset_task(),
iavf_watchdog_task(), iavf_adminq_task() as well as the shutdown and
remove functions more locking is required.
The current protection by __IAVF_IN_CRITICAL_TASK is needed in
additional places.

- The reset task performs state transitions, therefore needs locking.
- The adminq task acts on replies from the PF in
  iavf_virtchnl_completion() which may alter the states.
- The init task is not only run during probe but also if a VF gets stuck
  to reinitialize it.
- The shutdown function performs a state transition.
- The remove function performs a state transition and also free's
  resources.

iavf_lock_timeout() is introduced to avoid waiting infinitely
and cause a deadlock. Rather unlock and print a warning.

Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 57 ++++++++++++++++++---
 1 file changed, 50 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 3e76111af872..bc46c262b42d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -142,6 +142,30 @@ enum iavf_status iavf_free_virt_mem_d(struct iavf_hw *hw,
 	return 0;
 }
 
+/**
+ * iavf_lock_timeout - try to set bit but give up after timeout
+ * @adapter: board private structure
+ * @bit: bit to set
+ * @msecs: timeout in msecs
+ *
+ * Returns 0 on success, negative on failure
+ **/
+static int iavf_lock_timeout(struct iavf_adapter *adapter,
+			     enum iavf_critical_section_t bit,
+			     unsigned int msecs)
+{
+	unsigned int wait, delay = 10;
+
+	for (wait = 0; wait < msecs; wait += delay) {
+		if (!test_and_set_bit(bit, &adapter->crit_section))
+			return 0;
+
+		msleep(delay);
+	}
+
+	return -1;
+}
+
 /**
  * iavf_schedule_reset - Set the flags and schedule a reset event
  * @adapter: board private structure
@@ -2076,6 +2100,10 @@ static void iavf_reset_task(struct work_struct *work)
 	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
 		return;
 
+	if (iavf_lock_timeout(adapter, __IAVF_IN_CRITICAL_TASK, 200)) {
+		schedule_work(&adapter->reset_task);
+		return;
+	}
 	while (test_and_set_bit(__IAVF_IN_CLIENT_TASK,
 				&adapter->crit_section))
 		usleep_range(500, 1000);
@@ -2290,6 +2318,8 @@ static void iavf_adminq_task(struct work_struct *work)
 	if (!event.msg_buf)
 		goto out;
 
+	if (iavf_lock_timeout(adapter, __IAVF_IN_CRITICAL_TASK, 200))
+		goto freedom;
 	do {
 		ret = iavf_clean_arq_element(hw, &event, &pending);
 		v_op = (enum virtchnl_ops)le32_to_cpu(event.desc.cookie_high);
@@ -2303,6 +2333,7 @@ static void iavf_adminq_task(struct work_struct *work)
 		if (pending != 0)
 			memset(event.msg_buf, 0, IAVF_MAX_AQ_BUF_SIZE);
 	} while (pending);
+	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 
 	if ((adapter->flags &
 	     (IAVF_FLAG_RESET_PENDING | IAVF_FLAG_RESET_NEEDED)) ||
@@ -3599,6 +3630,10 @@ static void iavf_init_task(struct work_struct *work)
 						    init_task.work);
 	struct iavf_hw *hw = &adapter->hw;
 
+	if (iavf_lock_timeout(adapter, __IAVF_IN_CRITICAL_TASK, 5000)) {
+		dev_warn(&adapter->pdev->dev, "failed to set __IAVF_IN_CRITICAL_TASK in %s\n", __FUNCTION__);
+		return;
+	}
 	switch (adapter->state) {
 	case __IAVF_STARTUP:
 		if (iavf_startup(adapter) < 0)
@@ -3611,14 +3646,14 @@ static void iavf_init_task(struct work_struct *work)
 	case __IAVF_INIT_GET_RESOURCES:
 		if (iavf_init_get_resources(adapter) < 0)
 			goto init_failed;
-		return;
+		goto out;
 	default:
 		goto init_failed;
 	}
 
 	queue_delayed_work(iavf_wq, &adapter->init_task,
 			   msecs_to_jiffies(30));
-	return;
+	goto out;
 init_failed:
 	if (++adapter->aq_wait_count > IAVF_AQ_MAX_ERR) {
 		dev_err(&adapter->pdev->dev,
@@ -3627,9 +3662,11 @@ static void iavf_init_task(struct work_struct *work)
 		iavf_shutdown_adminq(hw);
 		adapter->state = __IAVF_STARTUP;
 		queue_delayed_work(iavf_wq, &adapter->init_task, HZ * 5);
-		return;
+		goto out;
 	}
 	queue_delayed_work(iavf_wq, &adapter->init_task, HZ);
+out:
+	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 }
 
 /**
@@ -3646,9 +3683,12 @@ static void iavf_shutdown(struct pci_dev *pdev)
 	if (netif_running(netdev))
 		iavf_close(netdev);
 
+	if (iavf_lock_timeout(adapter, __IAVF_IN_CRITICAL_TASK, 5000))
+		dev_warn(&adapter->pdev->dev, "failed to set __IAVF_IN_CRITICAL_TASK in %s\n", __FUNCTION__);
 	/* Prevent the watchdog from running. */
 	adapter->state = __IAVF_REMOVE;
 	adapter->aq_required = 0;
+	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 
 #ifdef CONFIG_PM
 	pci_save_state(pdev);
@@ -3877,10 +3917,6 @@ static void iavf_remove(struct pci_dev *pdev)
 				 err);
 	}
 
-	/* Shut down all the garbage mashers on the detention level */
-	adapter->state = __IAVF_REMOVE;
-	adapter->aq_required = 0;
-	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
 	iavf_request_reset(adapter);
 	msleep(50);
 	/* If the FW isn't responding, kick it once, but only once. */
@@ -3888,6 +3924,13 @@ static void iavf_remove(struct pci_dev *pdev)
 		iavf_request_reset(adapter);
 		msleep(50);
 	}
+	if (iavf_lock_timeout(adapter, __IAVF_IN_CRITICAL_TASK, 5000))
+		dev_warn(&adapter->pdev->dev, "failed to set __IAVF_IN_CRITICAL_TASK in %s\n", __FUNCTION__);
+
+	/* Shut down all the garbage mashers on the detention level */
+	adapter->state = __IAVF_REMOVE;
+	adapter->aq_required = 0;
+	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
 	iavf_free_all_tx_resources(adapter);
 	iavf_free_all_rx_resources(adapter);
 	iavf_misc_irq_disable(adapter);
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
