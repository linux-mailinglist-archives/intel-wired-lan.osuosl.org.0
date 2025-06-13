Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B733FAD964F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 22:33:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C7CD60DA2;
	Fri, 13 Jun 2025 20:33:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wtQk9oa2E3dl; Fri, 13 Jun 2025 20:33:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CACE960E0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749846810;
	bh=OBk8y2WrRSYe0+qd1bXdlKUoFp7dWqpBPCvB8ZCmdDU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fMXFuPK7vyCo1K2KjZK7hfg5CxNBxsGPQVhrsMo3tILW9a9BrMiIQaClYuHOyEAkY
	 upS72r0w3xdY4C3JAgpM59kvWxMTReEi8oqXAHrj8fxcOo1xDGpatbysyXk7+/PaXe
	 ntYKkvuOgefoWaZ96rVqc0aQSr6yP+/vAUIMQZuvB/Pani3qt66ELcDEcLhgeLL0vk
	 7nPgLzMeh41WiMCCMUei8jQR6eXyk+i6iiY3PhJ6YwDfUv5YtZXfqT7Z1vgUVT5KqD
	 Hkwiz0P7yFvyPp+xtcRT1Zfl7PJqdgvxvZho3LxnAGgYvWMEExVWazoME/494lRs4G
	 8h0YGRDhNUsnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CACE960E0B;
	Fri, 13 Jun 2025 20:33:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A61A9183
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8C6B160BF1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KRnfciryHNlS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 20:33:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102a; helo=mail-pj1-x102a.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F3E3860671
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3E3860671
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F3E3860671
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:28 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 98e67ed59e1d1-3116db72bd7so2766148a91.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 13:33:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749846808; x=1750451608;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OBk8y2WrRSYe0+qd1bXdlKUoFp7dWqpBPCvB8ZCmdDU=;
 b=ZqYngfeKuyDkhRPKV5JMi9E2qqqvneHaK7t8NhiDsu/5CV9hjAPcd0lWSomuPqOSlK
 B2fHzb6M9lfBUiVgvuRtjDxHILAx+X94PPmu15i2YZwAlFKa4x1LThAuLgAth4TUmeOF
 mqD+uaWEpS5xk3RtCsAD6Q1h5Mx/cbu0dWt8txkhxOa/iFZsiIX/tlvhOFrA8/baNZsC
 SlXkEBSzf6odXSQDWNWpf7RnwR+M2LRyuUf9nTBpTmL5nssDSry6a5+Ts8kcKDyO0uNM
 VfEi4BQ52NFGtTUC2cy2KBMe3uUyppme8k8V07fhooPNKtsYtRD3ykk1G2lw0yinsqlN
 MT/g==
X-Forwarded-Encrypted: i=1;
 AJvYcCW7eJ7EP6jePrupWi7HIwqcZq2vwwL7IIeesve7HaOWLv5LP+6lQFmpUexz5fGWqGLO6EfERlLa/dQx7Ojn+Ts=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxXKVHqJ7R3S4HSfUK/JBcun+oFhYhgoEwQaQNJzFmPjBRl1GyL
 sNDj29FA7OQqGfK38RrdRkwThOa5+liqjp4Ldd1jHtBiPmNwSecEvgY=
X-Gm-Gg: ASbGncs+ZEeKRnxTkGDDpGzNCpqOgDRb7Cgg0k7ELeYcvn8QbKcJpbZ6kD9Hgf4YJNu
 5SWCcwJgagxYZi0NBgpGYsin/mLZX17zSp9rL1sZT9/Wk2LBq6IGnBhUH78OdqjCuBe7hMVIy8F
 qbb0gvz8qElVuUI9HJxauC/e6t5nCBZvuixFcL+w/DEz/raJ4adWhTL1szorB6zTK6DMpBGLxSJ
 V+rXwweNzkjZh0ER+pS1pSg/t1nE5wFemeMD7XrtJPE/t527CX1yvU/OCPiN7nMh86YkjRzQS1T
 2+dcrMk6pTt0mxq2IzPw8ZRH2OYsR/zuAStXLjz4VIFg4ajZKvq189iZDwWoPXWWTfdiKG6kwPH
 O81LaWS62mTUWYKxlQFsiuGc=
X-Google-Smtp-Source: AGHT+IHoQe9kZNmiwFgO4UN/YI6LxV+FrHuaz2eiRSh2X5ivyPpLydz1ZML9qM0wZPZU19hVvxBN7A==
X-Received: by 2002:a17:90b:58e6:b0:312:db8:dbd1 with SMTP id
 98e67ed59e1d1-313f1ca7bb8mr1421800a91.5.1749846808151; 
 Fri, 13 Jun 2025 13:33:28 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-2365deaa9dfsm18866135ad.172.2025.06.13.13.33.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Jun 2025 13:33:27 -0700 (PDT)
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
Date: Fri, 13 Jun 2025 13:33:20 -0700
Message-ID: <20250613203325.1127217-2-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250613203325.1127217-1-stfomichev@gmail.com>
References: <20250613203325.1127217-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749846808; x=1750451608; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OBk8y2WrRSYe0+qd1bXdlKUoFp7dWqpBPCvB8ZCmdDU=;
 b=OV0Wrbma9gYeXUTCcg5vfrBlVinr6LWqFTd7YeMidLgOndRNcrh9NFuWHzlxbttz1i
 Nb48hqIabZ7xI52d9mUU+b/ICH2i99GDwjoZCZuQln+01ig+6xtjhhdHDu/XzkOthh8k
 zB2rvgZ6InqD5z4SnOtKdZ9RIzBNnLqVr95F59+F0rkpEkXKpzzwoxGu+4EX5JE7ARdi
 GaH4lngSjs0ADy8V8GyxAEO/3mzJOotaRx62k6UrWDuLtbqXVniAr+wa4gTdVTDzdyRH
 dZo+pQJlq74w75XEv+TJntqmpuriVN1QC0qgEVWCz8iMoXEJ0coGEGr7YLY87IJK9qQx
 r7ww==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=OV0Wrbma
Subject: [Intel-wired-lan] [PATCH net-next v4 1/6] geneve: rely on rtnl lock
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

