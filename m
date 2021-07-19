Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 866EA3CEAE1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jul 2021 20:11:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27957607DC;
	Mon, 19 Jul 2021 18:11:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jRMNjS5MX0am; Mon, 19 Jul 2021 18:11:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 315E660655;
	Mon, 19 Jul 2021 18:11:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6BB801BF33A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jul 2021 18:09:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6661B836E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jul 2021 18:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b0AErNpj7C6C for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jul 2021 18:09:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AEF7B83658
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jul 2021 18:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626718191;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pTIHCu/v1m6aglqrxVgqlM1EFt4mjK9q8YlegEPDsXA=;
 b=bB7mi90AKAPfY/P71Y8vLNkfAQ1Zyq+TWARN5S8b8VwNEoVCy+d4gygBaou8uLGVLMANFx
 lq6RAogJtjeX/lLPEZEwUpEUNvcfqT03dxf+Ovh1BsIr1v33V/qwf2D5rJBQkduIa9bzlc
 Y/zkFVjIutIXYlTxfMGsQCMCxYWLCiA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-18-bzlMlsCZOGGu148R-_3nMw-1; Mon, 19 Jul 2021 14:09:49 -0400
X-MC-Unique: bzlMlsCZOGGu148R-_3nMw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B22E192D788;
 Mon, 19 Jul 2021 18:09:44 +0000 (UTC)
Received: from virtlab719.virt.lab.eng.bos.redhat.com
 (virtlab719.virt.lab.eng.bos.redhat.com [10.19.153.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5C88F60CA0;
 Mon, 19 Jul 2021 18:09:36 +0000 (UTC)
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
 ahs3@redhat.com, leonro@nvidia.com, chandrakanth.patil@broadcom.com,
 bjorn.andersson@linaro.org, chunkuang.hu@kernel.org,
 yongqiang.niu@mediatek.com, baolin.wang7@gmail.com, poros@redhat.com,
 minlei@redhat.com, emilne@redhat.com, jejb@linux.ibm.com,
 martin.petersen@oracle.com, _govind@gmx.com, ley.foon.tan@intel.com,
 kabel@kernel.org, viresh.kumar@linaro.org, Tushar.Khandelwal@arm.com,
 luobin9@huawei.com
Date: Mon, 19 Jul 2021 14:07:42 -0400
Message-Id: <20210719180746.1008665-11-nitesh@redhat.com>
In-Reply-To: <20210719180746.1008665-1-nitesh@redhat.com>
References: <20210719180746.1008665-1-nitesh@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=nitesh@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Mon, 19 Jul 2021 18:10:27 +0000
Subject: [Intel-wired-lan] [PATCH v4 10/14] mailbox: Use
 irq_update_affinity_hint
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

As per commit 6ac17fe8c14a ("mailbox: bcm-flexrm-mailbox: Set IRQ affinity
hint for FlexRM ring IRQs") the latter is done to ensure that the FlexRM
ring interrupts are evenly spread across all available CPUs. However, since
commit a0c9259dc4e1 ("irq/matrix: Spread interrupts on allocation") the
spreading of interrupts is dynamically performed at the time of allocation.
Hence, there is no need for the drivers to enforce their own affinity for
the spreading of interrupts.

Also, irq_set_affinity_hint() applying the provided cpumask as an affinity
for the interrupt is an undocumented side effect. To remove this side
effect irq_set_affinity_hint() has been marked as deprecated and new
interfaces have been introduced. Hence, replace the irq_set_affinity_hint()
with the new interface irq_update_affinity_hint() that only sets the
affinity_hint pointer.

Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
---
 drivers/mailbox/bcm-flexrm-mailbox.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mailbox/bcm-flexrm-mailbox.c b/drivers/mailbox/bcm-flexrm-mailbox.c
index 78073ad1f2f1..16982c13d323 100644
--- a/drivers/mailbox/bcm-flexrm-mailbox.c
+++ b/drivers/mailbox/bcm-flexrm-mailbox.c
@@ -1298,7 +1298,7 @@ static int flexrm_startup(struct mbox_chan *chan)
 	val = (num_online_cpus() < val) ? val / num_online_cpus() : 1;
 	cpumask_set_cpu((ring->num / val) % num_online_cpus(),
 			&ring->irq_aff_hint);
-	ret = irq_set_affinity_hint(ring->irq, &ring->irq_aff_hint);
+	ret = irq_update_affinity_hint(ring->irq, &ring->irq_aff_hint);
 	if (ret) {
 		dev_err(ring->mbox->dev,
 			"failed to set IRQ affinity hint for ring%d\n",
@@ -1425,7 +1425,7 @@ static void flexrm_shutdown(struct mbox_chan *chan)
 
 	/* Release IRQ */
 	if (ring->irq_requested) {
-		irq_set_affinity_hint(ring->irq, NULL);
+		irq_update_affinity_hint(ring->irq, NULL);
 		free_irq(ring->irq, ring);
 		ring->irq_requested = false;
 	}
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
