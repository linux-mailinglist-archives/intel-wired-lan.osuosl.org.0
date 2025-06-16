Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BD8ADB689
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 18:21:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30608607BA;
	Mon, 16 Jun 2025 16:21:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1laDoN1n4CVM; Mon, 16 Jun 2025 16:21:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A095A607C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750090883;
	bh=OBk8y2WrRSYe0+qd1bXdlKUoFp7dWqpBPCvB8ZCmdDU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=we1LoqPlL3I+BqGcST+QbvUUngbvAGhCQHDhUirI3dOpGyzrcfLr9ecOnLHHTbVyJ
	 usB7+Ux2zqoSATRtVvfy43hrdypqSrGa5wR24qc0Bn7DWmA7D4om9LhHVd+PragF6u
	 X43vWp3f04r0uynhbb5JEd8h1fkX1KPpXhZxhB19EC6KnEfSF7ncH1ULmN41gfWgGT
	 skxLP05ymHSlqzllK+LCFTH6sHxfCIZsklUdLHvPHyfOUmokLJyQM6TI7YSIlke+wu
	 Nqu8LcmDLd74kK8YNvw4hBspyVh66RR9t+9YfHATAtXIuseUDw1Zla2giKpG5MXzAM
	 z9eBgOksa0j/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A095A607C0;
	Mon, 16 Jun 2025 16:21:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4A3F71A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C2A2407C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WTUypCjui3Lr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 16:21:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::529; helo=mail-pg1-x529.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 94FB1404BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94FB1404BB
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 94FB1404BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:20 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id
 41be03b00d2f7-b2c4476d381so3920974a12.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 09:21:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750090880; x=1750695680;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OBk8y2WrRSYe0+qd1bXdlKUoFp7dWqpBPCvB8ZCmdDU=;
 b=SnUd/N5nBKTfTgSXIu7LfV61x15VI1lIOiprArlmLT/nOMaX5l3SQRr86Js5vP66YX
 RVnm1hAhTh8B1bPEWcfB3P5kuWooK1xErWbcS/Rs9hVL/GO4Kbr30XbbXrT8ymPzicra
 aE9cMrfkcTTcxtihKo02dYTXLsQsJ8QJnGkf8wUa51cd4bi011U9ySM+WcKncPOVO60h
 mD9jvS0ADa81JtMVpVz7W0Tk1O0ad04rYmI5pEqUtYPXwCYdubnPhZfVf9sYww1ivNez
 nbiVcFLE3nbZ8KCeH800vtpJvxqUHlQ3kzK4lytwcRrL1SSTBJ/Z/PDA11lPbYLKn7T5
 j3Wg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXMTdAENyQREvaLT0vCx9OIb14qj0HSiz2qkbAvbljgCg4Mf7NuEQ7xctYSzcjN96oEbmpaCzz1NeRvKRDu+io=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyG5sdcMfrL7oJObDa8f4zBOuMFDuFLaI771HMCriWjU/o0Kipx
 6CMQe87PLi1Z3wcMGI9aMDNdtaGflRgOOzg3iwgBOZBNxRg7LoLT8T0=
X-Gm-Gg: ASbGncugdSL+AUT9AQYD+V5Sq7Hqw0I9kGO2VKmkFN9OWQTJHKz1QfFq2uAWNuVoyfO
 EvP3RZZOLX8wljk/4heEUAnuUZMm0dm+AACchACmIi4+I2z8KHdU4u+ZcA4P8Yx9coISrFTIPra
 o+B1X53PnPQt3TPHvkSUbrajSAeNyF+01gnr7vyFMSmBVFLXyyj30RS60goPO9tY9wRt8IxjTJd
 gB3gp7tth49DyzBRF46XBEsNEcEWqrgeTB4X439+MOjpQlvhR48j30LXOgCJqrv5xmjz+Z79udD
 HFshNDj6d2CcLHMqLFoTJOuIcAbw5dSBo716gNqinY3a39W02ou+q2M10PRq06oAJeUMPO27sRr
 XuuM12V257QrPfTyBoXWuWuE=
X-Google-Smtp-Source: AGHT+IHyoBgAUnwaUWLXy/Vb8z5LsefTqBIJ7QsHNJx+nbM6WP3gEInOzLa9AqIKcqN8pQhevPrvfA==
X-Received: by 2002:a05:6a20:7487:b0:218:f95:f84a with SMTP id
 adf61e73a8af0-21fb8e7a542mr18650975637.4.1750090879810; 
 Mon, 16 Jun 2025 09:21:19 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 41be03b00d2f7-b2fe1689814sm5944845a12.51.2025.06.16.09.21.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Jun 2025 09:21:19 -0700 (PDT)
From: Stanislav Fomichev <stfomichev@gmail.com>
To: netdev@vger.kernel.org
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, skalluru@marvell.com, manishc@marvell.com,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 tariqt@nvidia.com, saeedm@nvidia.com, louis.peens@corigine.com,
 shshaikh@marvell.com, GR-Linux-NIC-Dev@marvell.com, ecree.xilinx@gmail.com,
 horms@kernel.org, dsahern@kernel.org, shuah@kernel.org, tglx@linutronix.de,
 mingo@kernel.org, ruanjinjie@huawei.com, idosch@nvidia.com,
 razor@blackwall.org, petrm@nvidia.com, kuniyu@google.com, sdf@fomichev.me,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, oss-drivers@corigine.com,
 linux-net-drivers@amd.com, linux-kselftest@vger.kernel.org, leon@kernel.org
Date: Mon, 16 Jun 2025 09:21:12 -0700
Message-ID: <20250616162117.287806-2-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250616162117.287806-1-stfomichev@gmail.com>
References: <20250616162117.287806-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750090880; x=1750695680; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OBk8y2WrRSYe0+qd1bXdlKUoFp7dWqpBPCvB8ZCmdDU=;
 b=JRHlnyL0VVUJnt3Rna+R8JFSD1WB45BFr/Xd2c9eH33YPnmWd1uTayv4ltUeSp05Bt
 ROqq+r6K4koYaY/w3P7s+XLQQLE0xoXD0X3PbhkWD4CottAdPICuMKV9RINCM9F2n3Kv
 DQSwZfqSjqwGuCEYDKtxS6HT2oq253nmZhqgKTJDB7dUj1HWyw1C+nBuUstWitOJ8Er3
 zfL6b+FOotUOBFz6rckqEtcC4TJ5VzmTTdveLxI8cayexVzyxRj9Ypc6QcRdLNXPh4Q0
 GHi9TxeeikJJ4Vqm6Ol1BVPaEsqYZGXnwyL376Ny/XERds9DGR8C38tqEBkTI0UPV+hO
 pULw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=JRHlnyL0
Subject: [Intel-wired-lan] [PATCH net-next v5 1/6] geneve: rely on rtnl lock
 in geneve_offload_rx_ports
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

udp_tunnel_push_rx_port will grab mutex in the next patch so
we can't use rcu. geneve_offload_rx_ports is called
from geneve_netdevice_event for NETDEV_UDP_TUNNEL_PUSH_INFO and
NETDEV_UDP_TUNNEL_DROP_INFO which both have ASSERT_RTNL.
Entries are added to and removed from the sock_list under rtnl
lock as well (when adding or removing a tunneling device).

Signed-off-by: Stanislav Fomichev <stfomichev@gmail.com>
---
 drivers/net/geneve.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/geneve.c b/drivers/net/geneve.c
index ffc15a432689..9efedc6758bf 100644
--- a/drivers/net/geneve.c
+++ b/drivers/net/geneve.c
@@ -41,6 +41,7 @@ MODULE_PARM_DESC(log_ecn_error, "Log packets received with corrupted ECN");
 /* per-network namespace private data for this module */
 struct geneve_net {
 	struct list_head	geneve_list;
+	/* sock_list is protected by rtnl lock */
 	struct list_head	sock_list;
 };
 
@@ -1179,8 +1180,9 @@ static void geneve_offload_rx_ports(struct net_device *dev, bool push)
 	struct geneve_net *gn = net_generic(net, geneve_net_id);
 	struct geneve_sock *gs;
 
-	rcu_read_lock();
-	list_for_each_entry_rcu(gs, &gn->sock_list, list) {
+	ASSERT_RTNL();
+
+	list_for_each_entry(gs, &gn->sock_list, list) {
 		if (push) {
 			udp_tunnel_push_rx_port(dev, gs->sock,
 						UDP_TUNNEL_TYPE_GENEVE);
@@ -1189,7 +1191,6 @@ static void geneve_offload_rx_ports(struct net_device *dev, bool push)
 						UDP_TUNNEL_TYPE_GENEVE);
 		}
 	}
-	rcu_read_unlock();
 }
 
 /* Initialize the device structure. */
-- 
2.49.0

