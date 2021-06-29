Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 468813B7574
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jun 2021 17:30:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E1A6C4037D;
	Tue, 29 Jun 2021 15:30:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aHv-RZX7poA7; Tue, 29 Jun 2021 15:30:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6F3E402D3;
	Tue, 29 Jun 2021 15:30:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E196A1BF47D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 15:30:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CF6214024E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 15:30:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UqPqEqxSO1en for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jun 2021 15:30:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 038424023F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 15:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624980639;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Q9/J94iiTV9NCKHY6OY11mBTH01W1s+CKGEQ51TJjE8=;
 b=FnqErc3xCe4mVpHuO2fWs7rq6o770GWnbm+5R+RXYWXK227B5Uq6GIA8H+NGIhrd6Nbm4a
 7+PhLDSaVvDRmGejhqhYhb9tkM0A2TdAzDoW8st+4PGAIGY+gJfrkoiuKFO9KnFdk7KNm6
 zGbTjrvaCX7V0NW0/JgfF+pgu4bj4GM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-12-buLnwqYCNFiJ-UpkcugP3g-1; Tue, 29 Jun 2021 11:30:36 -0400
X-MC-Unique: buLnwqYCNFiJ-UpkcugP3g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 873B9100C61B;
 Tue, 29 Jun 2021 15:30:31 +0000 (UTC)
Received: from virtlab719.virt.lab.eng.bos.redhat.com
 (virtlab719.virt.lab.eng.bos.redhat.com [10.19.153.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8B00C69CB6;
 Tue, 29 Jun 2021 15:30:24 +0000 (UTC)
From: Nitesh Narayan Lal <nitesh@redhat.com>
To: linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-api@vger.kernel.org, linux-pci@vger.kernel.org, tglx@linutronix.de,
 jesse.brandeburg@intel.com, robin.murphy@arm.com, mtosatti@redhat.com,
 mingo@kernel.org, jbrandeb@kernel.org, frederic@kernel.org,
 juri.lelli@redhat.com, abelits@marvell.com, bhelgaas@google.com,
 rostedt@goodmis.org, peterz@infradead.org, davem@davemloft.net,
 akpm@linux-foundation.org, sfr@canb.auug.org.au,
 stephen@networkplumber.org, rppt@linux.vnet.ibm.com,
 chris.friesen@windriver.com, maz@kernel.org, nhorman@tuxdriver.com,
 pjwaskiewicz@gmail.com, sassmann@redhat.com, thenzl@redhat.com,
 kashyap.desai@broadcom.com, sumit.saxena@broadcom.com,
 shivasharan.srikanteshwara@broadcom.com, sathya.prakash@broadcom.com,
 sreekanth.reddy@broadcom.com, suganath-prabu.subramani@broadcom.com,
 james.smart@broadcom.com, dick.kennedy@broadcom.com, jkc@redhat.com,
 faisal.latif@intel.com, shiraz.saleem@intel.com, tariqt@nvidia.com,
 ahleihel@redhat.com, kheib@redhat.com, borisp@nvidia.com,
 saeedm@nvidia.com, benve@cisco.com, govind@gmx.com,
 jassisinghbrar@gmail.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 nilal@redhat.com, tatyana.e.nikolova@intel.com, mustafa.ismail@intel.com,
 ahs3@redhat.com, leonro@nvidia.com
Date: Tue, 29 Jun 2021 11:27:44 -0400
Message-Id: <20210629152746.2953364-13-nitesh@redhat.com>
In-Reply-To: <20210629152746.2953364-1-nitesh@redhat.com>
References: <20210629152746.2953364-1-nitesh@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mailman-Approved-At: Tue, 29 Jun 2021 15:30:53 +0000
Subject: [Intel-wired-lan] [PATCH v2 12/14] hinic: Use
 irq_set_affinity_and_hint
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

The driver uses irq_set_affinity_hint() to:

- Set the affinity_hint which is consumed by the userspace for
  distributing the interrupts

- Enforce affinity

As per commit 352f58b0d9f2 ("net-next/hinic: Set Rxq irq to specific cpu
for NUMA"), the hinic driver enforces its own affinity to bind IRQs to the
local NUMA node. However, irq_set_affinity_hint() applying the provided
cpumask as an affinity for the interrupt is an undocumented side effect.

To remove this side effect irq_set_affinity_hint() has been marked as
deprecated and new interfaces have been introduced. Hence, replace the
irq_set_affinity_hint() with the new interface
irq_set_affinity_and_hint() that applies the affinity and updates the
affinity_hint pointer. Also, use irq_update_affinity() when only
affinity_hint needs to be updated.

Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
---
 drivers/net/ethernet/huawei/hinic/hinic_rx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/huawei/hinic/hinic_rx.c b/drivers/net/ethernet/huawei/hinic/hinic_rx.c
index cce08647b9b2..c6cac4bbdb49 100644
--- a/drivers/net/ethernet/huawei/hinic/hinic_rx.c
+++ b/drivers/net/ethernet/huawei/hinic/hinic_rx.c
@@ -547,7 +547,7 @@ static int rx_request_irq(struct hinic_rxq *rxq)
 		goto err_req_irq;
 
 	cpumask_set_cpu(qp->q_id % num_online_cpus(), &rq->affinity_mask);
-	err = irq_set_affinity_hint(rq->irq, &rq->affinity_mask);
+	err = irq_set_affinity_and_hint(rq->irq, &rq->affinity_mask);
 	if (err)
 		goto err_irq_affinity;
 
@@ -564,7 +564,7 @@ static void rx_free_irq(struct hinic_rxq *rxq)
 {
 	struct hinic_rq *rq = rxq->rq;
 
-	irq_set_affinity_hint(rq->irq, NULL);
+	irq_update_affinity_hint(rq->irq, NULL);
 	free_irq(rq->irq, rxq);
 	rx_del_napi(rxq);
 }
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
