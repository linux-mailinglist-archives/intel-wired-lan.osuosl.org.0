Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E9BC846DB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 11:20:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED6AB6117A;
	Tue, 25 Nov 2025 10:20:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ElkpXGwtbtTU; Tue, 25 Nov 2025 10:20:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2EADB6072F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764066003;
	bh=F3UJKFUGkVvLB3wHG4oGvnme23SWc+gY7YZkrVaP7Sw=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I2iGP7W1iw5gygd2SPV4n89XFymx5Pps4XyY9H+mrTXByl9EuaysuArTEQJCeLrFC
	 T5FaMrJ6zrLOpOfXYm7E6yeRL8AS82g+b/fBKalbfHmmzNxixyflHA8EXx/q8PvrQT
	 jMXFCrEkkbq/bP6MMwceqlrMazqFgRdZHOb/YPK5cFNOTwEdmfnkcOk4ZHaxtt0Glm
	 N9OEIjSkJWWFoK7gpGgw13mUR2uDdszjbS9q9dKMcBB9qFXtHLKxyK1WZL8vv/C2vE
	 fPhTiSre+MtjpwSELlH/yOIuOQ+oAcYL/xwo6lZV11eXfcxIr1/fDLYu0IO2FM9YpK
	 9ntwy9Sj2IxzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2EADB6072F;
	Tue, 25 Nov 2025 10:20:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id DEA9BE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:20:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D0FD06112F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:20:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZYEJUAViPGgC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 10:20:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.210.46;
 helo=mail-ot1-f46.google.com; envelope-from=breno.debian@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C89AD6113D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C89AD6113D
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
 [209.85.210.46])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C89AD6113D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 10:19:59 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id
 46e09a7af769-7c6ce4f65f7so3800037a34.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 02:19:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764065999; x=1764670799;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=F3UJKFUGkVvLB3wHG4oGvnme23SWc+gY7YZkrVaP7Sw=;
 b=CmvLgC65N2MqEn5BpCb7NvzfmFgdZrZoUu9JHsgw3HEarq1L8gdcVtzI+8+WENCnCo
 lt9aC31K3DXmBtTpi3li5WzvDoKjKp6dZQ9DioUm/yKu/43KRo+vh0GVmd5hXA3HJO1T
 64GBknpo+bEv/sXjEh61JLkFSmp/tLBVaAOEnHp5ZZhMf1xzEazoUwYOfFINg+IZx5fM
 g0+g/YHGAcRCZPf6HTEEdKdEFGJ6Mm1nPN7EQgkIzHq8WBSun8NUHJj7Ur6u4QT9HU3u
 E5oA8dlOJIObcUDGLJkGN9spBG658BlvLNqkolT6FeiceKegGLDJINnw5frza1TwGNjs
 DoIQ==
X-Gm-Message-State: AOJu0Yw2UmMq6XdAMoOC++15wGxgq723k3p084twZ7XxKVoQ9e/qA36u
 TfN7/OmNSMi3eOkwtWuYWytcYyWPcvKz11DpjLhUY3kJUyD3JAVsd3Qy
X-Gm-Gg: ASbGncunBDjXqeCVsq3Rsje0SscKHTEBzYNw51tGMcZLr+HGMipOsWpMaG7lZcfUGjD
 Aw3UwojOG09l2SDCx+rYx376h5/Twabb8iQU8BwGIwTv0OBuM9m7FUtcxGxeRr7hrveTy3F1HDW
 EC7fzuom6ob3to2zxw2GbDpwoShaDH1ULEkniWj+dbLuxrnOnnLsdCsLat+u4kWF9vJZRVPg8B8
 F/ESnGkGixoGtYDGvZxm1giD+v5MQoWpKWaYjtzx1oM4gpJdBa2QoKiqoLRwUggl3ilgrnzj0qu
 CX8staf3fKjshE7vYpwL84vu1jko+bAcZdp30zaCm+Ai4uOwaZl/bTNRFWrIOXZ8Zcu0XXqx7cM
 IP0BiLL5VlAaLvCVHPZMC0TVduwZWAJSNg1x5TT3QBbYQRkxDl3GpUBbREITXku1XfW/chE7imb
 PN71ixnG9kIkbkyQ==
X-Google-Smtp-Source: AGHT+IGuLIuKJ9TdTjmy0inbvUt0VBwN2voCUtXNkx0exipVNDA/fm8mJbXcCwAq/N0Z7Pyhn9HWTg==
X-Received: by 2002:a05:6830:2b09:b0:7c7:4bb:dc06 with SMTP id
 46e09a7af769-7c7c3c66650mr1144804a34.0.1764065998716; 
 Tue, 25 Nov 2025 02:19:58 -0800 (PST)
Received: from localhost ([2a03:2880:10ff:43::])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7c78d346d84sm6126885a34.13.2025.11.25.02.19.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Nov 2025 02:19:58 -0800 (PST)
From: Breno Leitao <leitao@debian.org>
Date: Tue, 25 Nov 2025 02:19:47 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251125-gxring_intel-v2-4-f55cd022d28b@debian.org>
References: <20251125-gxring_intel-v2-0-f55cd022d28b@debian.org>
In-Reply-To: <20251125-gxring_intel-v2-0-f55cd022d28b@debian.org>
To: aleksander.lobakin@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel-team@meta.com, 
 Breno Leitao <leitao@debian.org>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2441; i=leitao@debian.org;
 h=from:subject:message-id; bh=+mKqoVITB42hGcYSGhqJCuohMHY7kF/4b4nnE5SxPMY=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpJYLIa66miHkyrbzAg+8nGLilethXxs3tVSlYv
 eK4pwAyJOCJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaSWCyAAKCRA1o5Of/Hh3
 bS8ZD/kBb4tdz4tRd09xMak7gTq+zCpME4Wj5VOfKeVLSiV6t4bWaxIqHC3/L0ojLy5UUR6gwMq
 r4kXBHYP+uLQS1zUpwCiJ8jkulST7Ti8qkIJAm4OgiGEBf8DY9Fef3VaguLTY8987d1a9G+0qla
 EBar+X+C0cFsNcxFndfmEnN7qAZ1wbVxTTEHltsPvqkxGglHUYkRyFDeFjYyTAqGOCkwEzzPqLC
 0E9x4NAbFLUGunFF3l5fxHm3mDo0VLxrCuZecOkXes9WVuzN8xa4h6/omKU4pTMvXHX1s4PUhcE
 y/foMyfQvUa/t78CnujY4J/G70DTrqrd1hWKgvwfYWWolY4GZumZIu0n3QnNp3Pqe+x149xm5W0
 qpLPRD7++g5a/sPUBqXvNiD43ZGCob5mhEOmFA9ap4soGFMJfZrOTrzpQPc/Jf3w2u5JcjlZGKS
 HzRx/geY7KmiDKl4n4Tnck6eDSsmHxb1fatr0kKtVWdW4LkVd/L9j3pl5hcIuV9Na7rHc3tuYrc
 qDTRECaw9NsdH5Pia8lKFj2J5hqbx2P98OHaA4BIFMjbfiC5IOuk92Dz+uhn7qkMNGeQUrWmh0L
 O+zZdvhez49HSxnvPCebgOHOFac+lSzKgladEOswJAIF4KZpr/T/sMwAt3SJbRSJF6ZCdgZEpX3
 XEQCfGXkiX8vYJg==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
Subject: [Intel-wired-lan] [PATCH net-next v2 4/8] idpf: extract GRXRINGS
 from .get_rxnfc
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 84eaf4359c36 ("net: ethtool: add get_rx_ring_count callback to
optimize RX ring queries") added specific support for GRXRINGS callback,
simplifying .get_rxnfc.

Remove the handling of GRXRINGS in .get_rxnfc() by moving it to the new
.get_rx_ring_count().

This simplifies the RX ring count retrieval and aligns idpf with the new
ethtool API for querying RX ring parameters.

I was not totally convinced I needed to have the lock, but, I decided to
be on the safe side and get the exact same behaviour it was before.

Signed-off-by: Breno Leitao <leitao@debian.org>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index a5a1eec9ade8..5dd82b1349c5 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -5,6 +5,25 @@
 #include "idpf_ptp.h"
 #include "idpf_virtchnl.h"
 
+/**
+ * idpf_get_rx_ring_count - get RX ring count
+ * @netdev: network interface device structure
+ *
+ * Return: number of RX rings.
+ */
+static u32 idpf_get_rx_ring_count(struct net_device *netdev)
+{
+	struct idpf_vport *vport;
+	u32 num_rxq;
+
+	idpf_vport_ctrl_lock(netdev);
+	vport = idpf_netdev_to_vport(netdev);
+	num_rxq = vport->num_rxq;
+	idpf_vport_ctrl_unlock(netdev);
+
+	return num_rxq;
+}
+
 /**
  * idpf_get_rxnfc - command to get RX flow classification rules
  * @netdev: network interface device structure
@@ -28,9 +47,6 @@ static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 	user_config = &np->adapter->vport_config[np->vport_idx]->user_config;
 
 	switch (cmd->cmd) {
-	case ETHTOOL_GRXRINGS:
-		cmd->data = vport->num_rxq;
-		break;
 	case ETHTOOL_GRXCLSRLCNT:
 		cmd->rule_cnt = user_config->num_fsteer_fltrs;
 		cmd->data = idpf_fsteer_max_rules(vport);
@@ -1757,6 +1773,7 @@ static const struct ethtool_ops idpf_ethtool_ops = {
 	.get_channels		= idpf_get_channels,
 	.get_rxnfc		= idpf_get_rxnfc,
 	.set_rxnfc		= idpf_set_rxnfc,
+	.get_rx_ring_count	= idpf_get_rx_ring_count,
 	.get_rxfh_key_size	= idpf_get_rxfh_key_size,
 	.get_rxfh_indir_size	= idpf_get_rxfh_indir_size,
 	.get_rxfh		= idpf_get_rxfh,

-- 
2.47.3

