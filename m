Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A495697D9EF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2024 22:02:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4CA89409B9;
	Fri, 20 Sep 2024 20:02:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eJr-mswmv9Sc; Fri, 20 Sep 2024 20:02:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F03C40370
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726862529;
	bh=//K1ULstEOc/DI/axpvjaD18nBiH0yOhZIjWSw/nkxo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7HOdUC08aA1UdWO7hLLG4W29i/CRTxQAL9PaCmmd2ocAQBKeLjZ97ELtGO8pm2tkC
	 0tqs95Nnv2zpRAb8aRz8S/nr5gKVCQEBFb+b5WKCD3WW/1huEjb6VjkwqDUPVueLHL
	 VA497Qc1vcGhtMHljAjdAepPU/uEYuNsgGncJRBPcNg9FcI5nIwCxe7YioAdG+B31j
	 63YKcAZzoyCpVC/MWSWXGKteLzkJ0EMlPm+h7OTxS/lWOqvY78YZ36MmYqOBFBoDZC
	 TbhYmwFmY+QhW52Jw5Q3ISKdtmxWmYjy/nXiBTOr9CQz02DYT68GonNl/J2g1XOY5y
	 TNrZjIgTgtHLw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F03C40370;
	Fri, 20 Sep 2024 20:02:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 831841BF275
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 18:59:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 713514028C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 18:59:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k3Azsj-8K75u for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2024 18:59:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=wander@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 646EB400E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 646EB400E5
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 646EB400E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 18:59:56 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-92-dMb4Mp14MS2qMw2n-pHRyw-1; Fri,
 20 Sep 2024 14:59:53 -0400
X-MC-Unique: dMb4Mp14MS2qMw2n-pHRyw-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (unknown
 [10.30.177.40])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 5389B1933B65; Fri, 20 Sep 2024 18:59:52 +0000 (UTC)
Received: from wcosta-thinkpadt14gen4.rmtbr.csb (unknown [10.22.33.41])
 by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 8BF1C19560AA; Fri, 20 Sep 2024 18:59:48 +0000 (UTC)
From: Wander Lairson Costa <wander@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list)
Date: Fri, 20 Sep 2024 15:59:16 -0300
Message-ID: <20240920185918.616302-2-wander@redhat.com>
In-Reply-To: <20240920185918.616302-1-wander@redhat.com>
References: <20240920185918.616302-1-wander@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mailman-Approved-At: Fri, 20 Sep 2024 20:02:05 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1726858795;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=//K1ULstEOc/DI/axpvjaD18nBiH0yOhZIjWSw/nkxo=;
 b=Uamf0P0ClHsSqw7YBpmVmWstKh8W0PfGnPknm3kBQUnau6V29Z8sPUrO4cuaVKF8snIKlx
 LO0mKemvSOWtIIu7d94OR3AzvcWwB0lJfer4DGkiqUNuQZgxRjRj11eERV950M7H895KUm
 EnBsKnlXW15nvkxn81CMaqKnzbTCWsk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Uamf0P0C
Subject: [Intel-wired-lan] [PATCH 1/2] igb: Disable threaded IRQ for
 igb_msix_other
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
Cc: Yuying Ma <yuma@redhat.com>, Wander Lairson Costa <wander@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

During testing of SR-IOV, Red Hat QE encountered an issue where the
ip link up command intermittently fails for the igbvf interfaces when
using the PREEMPT_RT variant. Investigation revealed that
e1000_write_posted_mbx returns an error due to the lack of an ACK
from e1000_poll_for_ack.

The underlying issue arises from the fact that IRQs are threaded by
default under PREEMPT_RT. While the exact hardware details are not
available, it appears that the IRQ handled by igb_msix_other must
be processed before e1000_poll_for_ack times out. However,
e1000_write_posted_mbx is called with preemption disabled, leading
to a scenario where the IRQ is serviced only after the failure of
e1000_write_posted_mbx.

To resolve this, we set IRQF_NO_THREAD for the affected interrupt,
ensuring that the kernel handles it immediately, thereby preventing
the aforementioned error.

Reproducer:

    #!/bin/bash

    # echo 2 > /sys/class/net/ens14f0/device/sriov_numvfs
    ipaddr_vlan=3
    nic_test=ens14f0
    vf=${nic_test}v0

    while true; do
	    ip link set ${nic_test} mtu 1500
	    ip link set ${vf} mtu 1500
	    ip link set $vf up
	    ip link set ${nic_test} vf 0 vlan ${ipaddr_vlan}
	    ip addr add 172.30.${ipaddr_vlan}.1/24 dev ${vf}
	    ip addr add 2021:db8:${ipaddr_vlan}::1/64 dev ${vf}
	    if ! ip link show $vf | grep 'state UP'; then
		    echo 'Error found'
		    break
	    fi
	    ip link set $vf down
    done

Signed-off-by: Wander Lairson Costa <wander@redhat.com>
Reported-by: Yuying Ma <yuma@redhat.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 1ef4cb871452..8a1696d7289f 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -907,7 +907,7 @@ static int igb_request_msix(struct igb_adapter *adapter)
 	int i, err = 0, vector = 0, free_vector = 0;
 
 	err = request_irq(adapter->msix_entries[vector].vector,
-			  igb_msix_other, 0, netdev->name, adapter);
+			  igb_msix_other, IRQF_NO_THREAD, netdev->name, adapter);
 	if (err)
 		goto err_out;
 
-- 
2.46.1

