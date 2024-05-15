Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D62E8C63A0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 May 2024 11:25:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE40340643;
	Wed, 15 May 2024 09:25:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 40_GQivQpwZU; Wed, 15 May 2024 09:25:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83A8D4057D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715765152;
	bh=cwgmU20xqKj4JxIRaIo+XjkFH1Bokj6japGSVd7cJpA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Y+yOnxciXunGLWhmpjQ6B8szqZnxi8pLyRmLk3ByUiYVAAWTNZvcgqz3YolKKm2K/
	 vf9QRkAAQ4gRBsI1dcY0go7Ofzis5COR8sOKMQaSSf2EYqXEBaqqyV1JdyWnCx7DB/
	 x9PvjBPwkMBBwFBpoRFGJTZxEbl9fjhgWscw9A9qX3dTL22Vgb+Cv4KPhKOBnTNa++
	 cteQoNo4rCn2RmmQcJEBbxgmW0u5N41jlgpjQ4ifOXiZVWhJLkLqExpFBqxjL8Yk5R
	 cNvBXh08LBanOQyqdkskfB5RoOT3VQjv7ATljbh8G5wIfOCQOOsgChjHz1Kox8QnaE
	 m4eouXgHp1QmA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83A8D4057D;
	Wed, 15 May 2024 09:25:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DF061BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 09:25:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 387A040545
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 09:25:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c84OCcrDN9_q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 May 2024 09:25:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DF6A340518
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF6A340518
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DF6A340518
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 09:25:47 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-66-ko1Hznd6OVeBiirvtz07Sw-1; Wed, 15 May 2024 05:25:40 -0400
X-MC-Unique: ko1Hznd6OVeBiirvtz07Sw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4D643803785;
 Wed, 15 May 2024 09:25:40 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.45.224.127])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3649BC15BB1;
 Wed, 15 May 2024 09:25:37 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Wed, 15 May 2024 11:24:14 +0200
Message-ID: <20240515092414.158079-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1715765146;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=cwgmU20xqKj4JxIRaIo+XjkFH1Bokj6japGSVd7cJpA=;
 b=NjFhvf4/m0X+SGXlt5hM/Rpfrlyw6dydNEhGKmxHbWG0IhvoNdDQaYZnCShdq9ZMJwHEkD
 s/pcSZj3E9D7yTX9UTHzS4HL60VrPAdGZdFyYCsW8Gp4PZ/iyMzhXGpY5RvBWQ4iCXeCkF
 8JNhZLf6DK160DZf2C7vPQashD8NR/Y=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=NjFhvf4/
Subject: [Intel-wired-lan] [PATCH net] idpf: don't skip over ethtool
 tcp-data-split setting
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
Cc: netdev@vger.kernel.org, Xu Du <xudu@redhat.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Disabling tcp-data-split on idpf silently fails:
  # ethtool -G $NETDEV tcp-data-split off
  # ethtool -g $NETDEV | grep 'TCP data split'
  TCP data split:        on

But it works if you also change 'tx' or 'rx':
  # ethtool -G $NETDEV tcp-data-split off tx 256
  # ethtool -g $NETDEV | grep 'TCP data split'
  TCP data split:        off

The bug is in idpf_set_ringparam, where it takes a shortcut out if the
TX and RX sizes are not changing. Fix it by checking also if the
tcp-data-split setting remains unchanged. Only then can the soft reset
be skipped.

Fixes: 9b1aa3ef2328 ("idpf: add get/set for Ethtool's header split ringparam")
Reported-by: Xu Du <xudu@redhat.com>
Closes: https://issues.redhat.com/browse/RHEL-36182
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 986d429d1175..6972d728431c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -376,7 +376,8 @@ static int idpf_set_ringparam(struct net_device *netdev,
 			    new_tx_count);
 
 	if (new_tx_count == vport->txq_desc_count &&
-	    new_rx_count == vport->rxq_desc_count)
+	    new_rx_count == vport->rxq_desc_count &&
+	    kring->tcp_data_split == idpf_vport_get_hsplit(vport))
 		goto unlock_mutex;
 
 	if (!idpf_vport_set_hsplit(vport, kring->tcp_data_split)) {
-- 
2.44.0

