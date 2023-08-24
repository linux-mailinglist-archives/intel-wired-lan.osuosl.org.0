Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41705786B4A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 11:16:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3DA082321;
	Thu, 24 Aug 2023 09:16:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3DA082321
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692868579;
	bh=04jinowF7O1pf0NXTTP8UKz7WLD4aCT4vIM3PWn5KVg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cEeBQfaQNFziiDz5THlYP1Ni/L8T2Vh/zF22SkQcN6RC1621a2cqWNqd3jMEVAH29
	 1Wq5jf+4SghoTntpbLCD9657sJLiZYXxK9aEkAAqBHHR379VE0wLZRePydCNVK2tSy
	 ZM2SXcA2+S+qnWxT/DxG/dR758fGtbDa75d9822nHK7/Se5psTEiXGQ+pm+gCp50rq
	 P+gTbqtfrUcY85/khVLznysufs32tEDPwMp4M0/jCOMKIkILlZcSJcABdyEL0vQlPX
	 McvmYdr/vRBaH8iQsajL7/wPslzfYmVZ1YsH7WoytSYwVUAQanzMtjOzPQHWxbkN4g
	 9BcTUH8cWZbOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DXWaU-ToTzm1; Thu, 24 Aug 2023 09:16:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8238982304;
	Thu, 24 Aug 2023 09:16:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8238982304
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 36F0C1BF860
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 09:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D616400BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 09:16:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D616400BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N6D9mWOsQhf4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 09:16:12 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CDEC1400AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 09:16:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDEC1400AC
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-682-Rj-9r2BxNGCl9dn-C9zWfA-1; Thu, 24 Aug 2023 05:16:04 -0400
X-MC-Unique: Rj-9r2BxNGCl9dn-C9zWfA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 75DB129AA2CB;
 Thu, 24 Aug 2023 09:16:04 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.193.96])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 32DD6492C13;
 Thu, 24 Aug 2023 09:16:04 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 0B443A80D55; Thu, 24 Aug 2023 11:16:03 +0200 (CEST)
From: Corinna Vinschen <vinschen@redhat.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org,
 Akihiko Odaki <akihiko.odaki@daynix.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Date: Thu, 24 Aug 2023 11:16:02 +0200
Message-ID: <20230824091603.3188249-1-vinschen@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1692868570;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=Vy7OQcpWSMp4ed/7wu+8P+W33XodHQjr5c/D1WD0xz4=;
 b=gbeQ73up515xc1uVt8QCo9Opw7ajjV+8MkpuBSeA3ewP0QO9dissOio81dn2MkJQ/LWlKy
 vpFUpQZTfz4gukfAj37YkFe52YKBUdzz//3+hQdfaijqfPdjyPHkuSTaq9MFA2N4TOz9UK
 ikVdTiS4zlk28sVTayKMdYMod9bqV6I=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=gbeQ73up
Subject: [Intel-wired-lan] [PATCH net] igb: clean up in all error paths when
 enabling SR-IOV
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

After commit 50f303496d92 ("igb: Enable SR-IOV after reinit"), removing
the igb module could hang or crash (depending on the machine) when the
module has been loaded with the max_vfs parameter set to some value != 0.

In case of one test machine with a dual port 82580, this hang occured:

[  232.480687] igb 0000:41:00.1: removed PHC on enp65s0f1
[  233.093257] igb 0000:41:00.1: IOV Disabled
[  233.329969] pcieport 0000:40:01.0: AER: Multiple Uncorrected (Non-Fatal) err0
[  233.340302] igb 0000:41:00.0: PCIe Bus Error: severity=Uncorrected (Non-Fata)
[  233.352248] igb 0000:41:00.0:   device [8086:1516] error status/mask=00100000
[  233.361088] igb 0000:41:00.0:    [20] UnsupReq               (First)
[  233.368183] igb 0000:41:00.0: AER:   TLP Header: 40000001 0000040f cdbfc00c c
[  233.376846] igb 0000:41:00.1: PCIe Bus Error: severity=Uncorrected (Non-Fata)
[  233.388779] igb 0000:41:00.1:   device [8086:1516] error status/mask=00100000
[  233.397629] igb 0000:41:00.1:    [20] UnsupReq               (First)
[  233.404736] igb 0000:41:00.1: AER:   TLP Header: 40000001 0000040f cdbfc00c c
[  233.538214] pci 0000:41:00.1: AER: can't recover (no error_detected callback)
[  233.538401] igb 0000:41:00.0: removed PHC on enp65s0f0
[  233.546197] pcieport 0000:40:01.0: AER: device recovery failed
[  234.157244] igb 0000:41:00.0: IOV Disabled
[  371.619705] INFO: task irq/35-aerdrv:257 blocked for more than 122 seconds.
[  371.627489]       Not tainted 6.4.0-dirty #2
[  371.632257] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this.
[  371.641000] task:irq/35-aerdrv   state:D stack:0     pid:257   ppid:2      f0
[  371.650330] Call Trace:
[  371.653061]  <TASK>
[  371.655407]  __schedule+0x20e/0x660
[  371.659313]  schedule+0x5a/0xd0
[  371.662824]  schedule_preempt_disabled+0x11/0x20
[  371.667983]  __mutex_lock.constprop.0+0x372/0x6c0
[  371.673237]  ? __pfx_aer_root_reset+0x10/0x10
[  371.678105]  report_error_detected+0x25/0x1c0
[  371.682974]  ? __pfx_report_normal_detected+0x10/0x10
[  371.688618]  pci_walk_bus+0x72/0x90
[  371.692519]  pcie_do_recovery+0xb2/0x330
[  371.696899]  aer_process_err_devices+0x117/0x170
[  371.702055]  aer_isr+0x1c0/0x1e0
[  371.705661]  ? __set_cpus_allowed_ptr+0x54/0xa0
[  371.710723]  ? __pfx_irq_thread_fn+0x10/0x10
[  371.715496]  irq_thread_fn+0x20/0x60
[  371.719491]  irq_thread+0xe6/0x1b0
[  371.723291]  ? __pfx_irq_thread_dtor+0x10/0x10
[  371.728255]  ? __pfx_irq_thread+0x10/0x10
[  371.732731]  kthread+0xe2/0x110
[  371.736243]  ? __pfx_kthread+0x10/0x10
[  371.740430]  ret_from_fork+0x2c/0x50
[  371.744428]  </TASK>

The reproducer was a simple script:

  #!/bin/sh
  for i in `seq 1 5`; do
    modprobe -rv igb
    modprobe -v igb max_vfs=1
    sleep 1
    modprobe -rv igb
  done

It turned out that this could only be reproduce on 82580 (quad and
dual-port), but not on 82576, i350 and i210.  Further debugging showed
that igb_enable_sriov()'s call to pci_enable_sriov() is failing, because
dev->is_physfn is 0 on 82580.

Prior to commit 50f303496d92 ("igb: Enable SR-IOV after reinit"),
igb_enable_sriov() jumped into the "err_out" cleanup branch.  After this
commit it only returned the error code.

So the cleanup didn't take place, and the incorrect VF setup in the
igb_adapter structure fooled the igb driver into assuming that VFs have
been set up where no VF actually existed.

Fix this problem by cleaning up again if pci_enable_sriov() fails.

Fixes: 50f303496d92 ("igb: Enable SR-IOV after reinit")
Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 9a2561409b06..42ab9ca7f97e 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3827,8 +3827,11 @@ static int igb_enable_sriov(struct pci_dev *pdev, int num_vfs, bool reinit)
 	}
 
 	/* only call pci_enable_sriov() if no VFs are allocated already */
-	if (!old_vfs)
+	if (!old_vfs) {
 		err = pci_enable_sriov(pdev, adapter->vfs_allocated_count);
+		if (err)
+			goto err_out;
+	}
 
 	goto out;
 
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
