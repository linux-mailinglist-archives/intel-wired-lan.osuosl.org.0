Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F38484EAB35
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Mar 2022 12:28:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72883400CB;
	Tue, 29 Mar 2022 10:28:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uvWqTT_zN7_X; Tue, 29 Mar 2022 10:28:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 82FEB40AF4;
	Tue, 29 Mar 2022 10:28:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 715601BF2BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 10:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 521E3417CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 10:28:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Et1oLOvaib76 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Mar 2022 10:28:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D9316401D0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 10:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1648549709;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=zmJQKkRz56fnzS0EeDC+7f1ewdiGvau6reWa8+hsBMg=;
 b=i5acjLqJOVn7GrxuDyHx+Z1KZC2iEC2/oIvFD4l8pH2dMbBUra+PwORgyVc0ecWux9C/OQ
 9+xhdSHExIaQoT+3svtfKZm0qcXLIf7mAtkXTXgnvOhr2md5qcp8xLGh6dFN0OFDAglqyB
 D3Txl8WipwZAtHKUURpPGp8yC+01PPI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-611--T5A9IpuMiKk7GarukZLEA-1; Tue, 29 Mar 2022 06:28:22 -0400
X-MC-Unique: -T5A9IpuMiKk7GarukZLEA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B8BBC802E5B;
 Tue, 29 Mar 2022 10:28:21 +0000 (UTC)
Received: from ceranb.redhat.com (unknown [10.40.192.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0F3C114582EE;
 Tue, 29 Mar 2022 10:27:53 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 29 Mar 2022 12:27:51 +0200
Message-Id: <20220329102752.1481125-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Subject: [Intel-wired-lan] [PATCH net] ice: Fix logic of getting XSK pool
 associated with Tx queue
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
Cc: Song Liu <songliubraving@fb.com>,
 Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Yonghong Song <yhs@fb.com>,
 Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 mschmidt@redhat.com, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, poros@redhat.com,
 "open list:XDP eXpress Data Path" <bpf@vger.kernel.org>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Function ice_tx_xsk_pool() used to get XSK buffer pool associated
with XDP Tx queue returns NULL when number of ordinary Tx queues
is not equal to num_possible_cpus().

The function computes XDP Tx queue ID as an expression
`ring->q_index - vsi->num_xdp_txq` but this is wrong because
XDP Tx queues are placed after ordinary ones so the correct
formula is `ring->q_index - vsi->alloc_txq`.

Prior commit 792b2086584f ("ice: fix vsi->txq_map sizing") number
of XDP Tx queues was equal to number of ordinary Tx queues so
the bug in mentioned function was hidden.

Reproducer:
host# ethtool -L ens7f0 combined 1
host# ./xdpsock -i ens7f0 -q 0 -t -N
samples/bpf/xdpsock_user.c:kick_tx:794: errno: 6/"No such device or address"

 sock0@ens7f0:0 txonly xdp-drv
                pps         pkts        0.00
rx              0           0
tx              0           0

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Fixes: 792b2086584f ("ice: fix vsi->txq_map sizing")
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index b0b27bfcd7a2..d4f1874df7d0 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -710,7 +710,7 @@ static inline struct xsk_buff_pool *ice_tx_xsk_pool(struct ice_tx_ring *ring)
 	struct ice_vsi *vsi = ring->vsi;
 	u16 qid;
 
-	qid = ring->q_index - vsi->num_xdp_txq;
+	qid = ring->q_index - vsi->alloc_txq;
 
 	if (!ice_is_xdp_ena_vsi(vsi) || !test_bit(qid, vsi->af_xdp_zc_qps))
 		return NULL;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
