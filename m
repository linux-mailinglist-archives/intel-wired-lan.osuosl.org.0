Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F923C78D4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jul 2021 23:17:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA261608F2;
	Tue, 13 Jul 2021 21:17:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 16DAdTH5RMHg; Tue, 13 Jul 2021 21:17:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C402F608ED;
	Tue, 13 Jul 2021 21:17:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE2B61BF33E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 21:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C15783AC6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 21:16:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j5pLYzhJ66RA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jul 2021 21:16:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0451B83A5C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jul 2021 21:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626210972;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kZjBQU8J13gPpGhDK2j5njwWymkpgNNC/KZJDSdOSNw=;
 b=Fcsn3AWNYHQiTWm1iw2EJdlWHOjX7tidoFE8qv68rGLoHTaEpnQe8LeFl+i38uO//XSY/R
 15MRvRdJOf+CUsA4VQ9Ija3GPkaOdg+qYpfhDIPkIC8hU+OAZ1DNk6xfN542B6WXigiUcM
 7/QifIr5II8xkvYEOPc3OeatYj3CKmI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-568-hzk_Pxa9NjeZDMOCvPbmTg-1; Tue, 13 Jul 2021 17:16:10 -0400
X-MC-Unique: hzk_Pxa9NjeZDMOCvPbmTg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4B4A6804140;
 Tue, 13 Jul 2021 21:16:05 +0000 (UTC)
Received: from virtlab719.virt.lab.eng.bos.redhat.com
 (virtlab719.virt.lab.eng.bos.redhat.com [10.19.153.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 583645D9DD;
 Tue, 13 Jul 2021 21:15:58 +0000 (UTC)
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
 ahs3@redhat.com, leonro@nvidia.com, chandrakanth.patil@broadcom.com
Date: Tue, 13 Jul 2021 17:14:54 -0400
Message-Id: <20210713211502.464259-7-nitesh@redhat.com>
In-Reply-To: <20210713211502.464259-1-nitesh@redhat.com>
References: <20210713211502.464259-1-nitesh@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mailman-Approved-At: Tue, 13 Jul 2021 21:16:57 +0000
Subject: [Intel-wired-lan] [PATCH v3 06/14] RDMA/irdma: Use
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

The driver uses irq_set_affinity_hint() to update the affinity_hint mask
that is consumed by the userspace to distribute the interrupts and to apply
the provided mask as the affinity for its interrupts. However,
irq_set_affinity_hint() applying the provided cpumask as an affinity for
the interrupt is an undocumented side effect.

To remove this side effect irq_set_affinity_hint() has been marked
as deprecated and new interfaces have been introduced. Hence, replace the
irq_set_affinity_hint() with the new interface irq_set_affinity_and_hint()
where the provided mask needs to be applied as the affinity and
affinity_hint pointer needs to be set and replace with
irq_update_affinity_hint() where only affinity_hint needs to be updated.

Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
---
 drivers/infiniband/hw/irdma/hw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/infiniband/hw/irdma/hw.c b/drivers/infiniband/hw/irdma/hw.c
index 7afb8a6a0526..7f13a051d4de 100644
--- a/drivers/infiniband/hw/irdma/hw.c
+++ b/drivers/infiniband/hw/irdma/hw.c
@@ -537,7 +537,7 @@ static void irdma_destroy_irq(struct irdma_pci_f *rf,
 	struct irdma_sc_dev *dev = &rf->sc_dev;
 
 	dev->irq_ops->irdma_dis_irq(dev, msix_vec->idx);
-	irq_set_affinity_hint(msix_vec->irq, NULL);
+	irq_update_affinity_hint(msix_vec->irq, NULL);
 	free_irq(msix_vec->irq, dev_id);
 }
 
@@ -1087,7 +1087,7 @@ irdma_cfg_ceq_vector(struct irdma_pci_f *rf, struct irdma_ceq *iwceq,
 	}
 	cpumask_clear(&msix_vec->mask);
 	cpumask_set_cpu(msix_vec->cpu_affinity, &msix_vec->mask);
-	irq_set_affinity_hint(msix_vec->irq, &msix_vec->mask);
+	irq_set_affinity_and_hint(msix_vec->irq, &msix_vec->mask);
 	if (status) {
 		ibdev_dbg(&rf->iwdev->ibdev, "ERR: ceq irq config fail\n");
 		return IRDMA_ERR_CFG;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
