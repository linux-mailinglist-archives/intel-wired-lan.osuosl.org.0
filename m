Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C87D53ABB94
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jun 2021 20:25:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7434B60E99;
	Thu, 17 Jun 2021 18:25:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G49vAvSkq9JS; Thu, 17 Jun 2021 18:25:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74EC360E94;
	Thu, 17 Jun 2021 18:25:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AFE871BF339
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 18:24:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 986244227C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 18:24:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XIKBul0BuvdR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jun 2021 18:24:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A0F2542274
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 18:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623954274;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Q9/J94iiTV9NCKHY6OY11mBTH01W1s+CKGEQ51TJjE8=;
 b=U0o10EVZeWjkr88TIUGdK7TbT6TDJnvNVlnec0FDK0+XelmCEDCpIxlpwZfxSt0ey2vJR7
 M4t20UEtf7JH6skYyVwwi4a1DOx7LLDWnp/MYeIxpHlFP7CWzwHig6S5xEY31a0+2ngWxc
 4D2svmn8h2cKKyoJt5ilLI9S2rw4ivs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-251-npG83M6wOqCDpg_WjdKBNg-1; Thu, 17 Jun 2021 14:24:32 -0400
X-MC-Unique: npG83M6wOqCDpg_WjdKBNg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 431151850605;
 Thu, 17 Jun 2021 18:24:27 +0000 (UTC)
Received: from virtlab719.virt.lab.eng.bos.redhat.com
 (virtlab719.virt.lab.eng.bos.redhat.com [10.19.153.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9CEBD60C05;
 Thu, 17 Jun 2021 18:24:23 +0000 (UTC)
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
 jassisinghbrar@gmail.com, luobin9@huawei.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 nilal@redhat.com
Date: Thu, 17 Jun 2021 14:22:40 -0400
Message-Id: <20210617182242.8637-13-nitesh@redhat.com>
In-Reply-To: <20210617182242.8637-1-nitesh@redhat.com>
References: <20210617182242.8637-1-nitesh@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mailman-Approved-At: Thu, 17 Jun 2021 18:24:50 +0000
Subject: [Intel-wired-lan] [PATCH v1 12/14] hinic: Use
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
