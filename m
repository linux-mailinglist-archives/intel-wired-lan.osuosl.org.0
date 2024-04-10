Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAB089E90F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 06:39:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E17C640724;
	Wed, 10 Apr 2024 04:39:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2-RKVT4_vHpx; Wed, 10 Apr 2024 04:39:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 293A440759
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712723992;
	bh=i0AdTuh0LPKFRBexJVBgnFt0ViqxZ8bYbsSVukVY5u0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pbeqq9TwVgXE0t/EZDYCQLy7v8KeQy7Bdn59ymZKhO/i01EXIOudmBvORB0hpyeoa
	 YYBbYKjpVVKyB+05dSeNwbiW0JstB0MecT7/+SEqD+NEkzlF+u9p/hK6GBGli11tVh
	 6CnOnmI540K6SPy7WQWuH5JLmxpB2ZDZP+hpGFMpO5i5zjoluHUrmow1Vp5+tQRcNq
	 vFZ5rGXxVzt1ycwOOkiyP24hIYi4KhMcV7suz4hHZQxPsi0XtqVQDIL48o28DBBpsH
	 5OHJEQL7Cf51glwBTLxvqitfrpafc5x9ZXhaJJnzhWeovfSuomBD7pWX8Szp85m5Lv
	 3pBYdEcznNNJA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 293A440759;
	Wed, 10 Apr 2024 04:39:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 349311BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 04:39:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D30E4066B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 04:39:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7amkO265GTDS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 04:39:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::530; helo=mail-pg1-x530.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A832140661
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A832140661
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com
 [IPv6:2607:f8b0:4864:20::530])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A832140661
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 04:39:46 +0000 (UTC)
Received: by mail-pg1-x530.google.com with SMTP id
 41be03b00d2f7-5bdbe2de25fso5064616a12.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 09 Apr 2024 21:39:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712723986; x=1713328786;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=i0AdTuh0LPKFRBexJVBgnFt0ViqxZ8bYbsSVukVY5u0=;
 b=a7o5xw6WQzSR4NVwUWuETd6zMRPYNOzt49yOKcXefS05wAlItMeezVNOMt8Xdrmcek
 ++R7gTQkLx96TpooSDCdNodZOKCBl+NTQf7TSphf2TY3WAa/Ykd6gCWPxqjCyxBC4Rc2
 vMuLr7Yx28MiTUaxx2jOUbDIYsMwuKzve0e2zVctXATjHSSalWB/XkNE2cI+qNGnMMMx
 UvzTedCBQET3bIe652UlIdILd5A5ySWx8CdijlZt96vMf7BMqjCMVFG9sJgW+5HDBMK4
 mp5XjqqtfXyZUmECAojtFaiCD45dQmNpHzmdD9w1MBValNX4lBbkVOmXapiXrv71RM+x
 x2IA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUbdD+TlnUIs3slf9yiOe2VgCDW7LzOCl43s2iinHEhd7A3mIQrJMr0kavILJAqr55vTfSIfgPYetqC3R2HAcfFdVTFkmJ7ire2C/s13sHXYg==
X-Gm-Message-State: AOJu0Yzf3F26E28GPLiXVxWrY4pHv100d8jZeLcB3vUM2cjq8NRPxsiz
 M1Uf6UUoVUaAe42G+tLfzTDdLdl6lYr2TzqUGg1BN3iXGIU4tOUImeG7Z79ITFs=
X-Google-Smtp-Source: AGHT+IHCyg7IsSIZZPCE6CWyUBvBJNPmvz99+2Xq8imlDAOCx7E9BrLRdX6eCg6d+6LVmmu7blclnw==
X-Received: by 2002:a17:90a:f690:b0:2a5:74ab:7f52 with SMTP id
 cl16-20020a17090af69000b002a574ab7f52mr1570409pjb.16.1712723985964; 
 Tue, 09 Apr 2024 21:39:45 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 gn4-20020a17090ac78400b002a5d71d48e8sm260773pjb.39.2024.04.09.21.39.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Apr 2024 21:39:45 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Apr 2024 04:39:35 +0000
Message-Id: <20240410043936.206169-3-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240410043936.206169-1-jdamato@fastly.com>
References: <20240410043936.206169-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1712723986; x=1713328786; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=i0AdTuh0LPKFRBexJVBgnFt0ViqxZ8bYbsSVukVY5u0=;
 b=ptcwC9ywWzXhaY3FxMPZP7PbUPSLRGX0ts4qTwRhy594qh9h1YmKttCGMsPv3j17aT
 JWraMPkI5oFqpfwcHzb4wnL0h99/p3citNM9ZTNo4gfBHuMMF0rezLhOtQ0b7K50laLe
 UwKauJq6TE/c++BjVr2htSMSQ1PzxQPkKVTwA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=ptcwC9yw
Subject: [Intel-wired-lan] [intel-next 2/2] net/i40e: add support for per
 queue netlink stats
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
Cc: amritha.nambiar@intel.com, sridhar.samudrala@intel.com,
 Joe Damato <jdamato@fastly.com>, Eric Dumazet <edumazet@google.com>,
 nalramli@fastly.com, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make i40e compatible with the newly added netlink per queue stats.

$ ./cli.py --spec ../../../Documentation/netlink/specs/netdev.yaml \
           --dump qstats-get --json '{"scope": "queue"}'

[{'ifindex': 3,
  'queue-id': 0,
  'queue-type': 'rx',
  'rx-alloc-fail': 0,
  'rx-bytes': 45540208,
  'rx-packets': 57112},
 {'ifindex': 3,
  'queue-id': 1,
  'queue-type': 'rx',
  'rx-alloc-fail': 0,
  'rx-bytes': 8717844,
  'rx-packets': 31256},
...

Comparing to ethtool to verify:

$ ethtool -S eth3 | egrep 'rx-[01]\.'
     rx-0.packets: 57112
     rx-0.bytes: 45540208
     rx-1.packets: 31256
     rx-1.bytes: 8717844

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 102 ++++++++++++++++++++
 1 file changed, 102 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 6384a0c73a05..40574f54a380 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -6,6 +6,7 @@
 #include <linux/if_bridge.h>
 #include <linux/if_macvlan.h>
 #include <linux/module.h>
+#include <net/netdev_queues.h>
 #include <net/pkt_cls.h>
 #include <net/xdp_sock_drv.h>
 
@@ -515,6 +516,100 @@ static void i40e_get_netdev_stats_struct(struct net_device *netdev,
 	stats->rx_length_errors	= vsi_stats->rx_length_errors;
 }
 
+static void i40e_get_queue_stats_rx(struct net_device *dev, int i,
+				    struct netdev_queue_stats_rx *stats)
+{
+	struct i40e_netdev_priv *np = netdev_priv(dev);
+	struct i40e_vsi *vsi = np->vsi;
+	struct i40e_ring *ring;
+	unsigned int start;
+
+	stats->bytes = 0xff;
+	stats->packets = 0xff;
+	stats->alloc_fail = 0xff;
+
+	if (test_bit(__I40E_VSI_DOWN, vsi->state))
+		return;
+
+	if (!vsi->rx_rings)
+		return;
+
+	rcu_read_lock();
+	ring = READ_ONCE(vsi->rx_rings[i]);
+	if (ring) {
+		do {
+			start = u64_stats_fetch_begin(&ring->syncp);
+			stats->packets = ring->stats.packets;
+			stats->bytes = ring->stats.bytes;
+			stats->alloc_fail = ring->rx_stats.alloc_page_failed;
+		} while (u64_stats_fetch_retry(&ring->syncp, start));
+	}
+	rcu_read_unlock();
+}
+
+static void i40e_get_queue_stats_tx(struct net_device *dev, int i,
+				    struct netdev_queue_stats_tx *stats)
+{
+	struct i40e_netdev_priv *np = netdev_priv(dev);
+	struct i40e_vsi *vsi = np->vsi;
+	struct i40e_ring *ring;
+	unsigned int start;
+
+	stats->bytes = 0xff;
+	stats->packets = 0xff;
+
+	if (test_bit(__I40E_VSI_DOWN, vsi->state))
+		return;
+
+	if (!vsi->tx_rings)
+		return;
+
+	rcu_read_lock();
+	ring = READ_ONCE(vsi->tx_rings[i]);
+	if (ring) {
+		do {
+			start = u64_stats_fetch_begin(&ring->syncp);
+			stats->packets = ring->stats.packets;
+			stats->bytes = ring->stats.bytes;
+		} while (u64_stats_fetch_retry(&ring->syncp, start));
+	}
+	rcu_read_unlock();
+}
+
+static void i40e_get_base_stats(struct net_device *dev,
+				struct netdev_queue_stats_rx *rx,
+				struct netdev_queue_stats_tx *tx)
+{
+	struct i40e_netdev_priv *np = netdev_priv(dev);
+	struct rtnl_link_stats64 stats = {0};
+	struct i40e_vsi *vsi = np->vsi;
+
+	rx->bytes = 0xff;
+	rx->packets = 0xff;
+	rx->alloc_fail = 0xff;
+
+	tx->bytes = 0xff;
+	tx->packets = 0xff;
+
+	if (test_bit(__I40E_VSI_DOWN, vsi->state))
+		return;
+
+	if (!vsi->tx_rings)
+		return;
+
+	if (!vsi->num_queue_pairs)
+		return;
+
+	i40e_get_netdev_stats_struct(dev, &stats);
+
+	rx->bytes = stats.rx_bytes;
+	rx->packets = stats.rx_packets;
+	rx->alloc_fail = vsi->rx_buf_failed;
+
+	tx->bytes = stats.tx_bytes;
+	tx->packets = stats.tx_packets;
+}
+
 /**
  * i40e_vsi_reset_stats - Resets all stats of the given vsi
  * @vsi: the VSI to have its stats reset
@@ -13693,6 +13788,12 @@ static const struct net_device_ops i40e_netdev_ops = {
 	.ndo_dfwd_del_station	= i40e_fwd_del,
 };
 
+static const struct netdev_stat_ops i40e_stat_ops = {
+	.get_queue_stats_rx     = i40e_get_queue_stats_rx,
+	.get_queue_stats_tx     = i40e_get_queue_stats_tx,
+	.get_base_stats         = i40e_get_base_stats,
+};
+
 /**
  * i40e_config_netdev - Setup the netdev flags
  * @vsi: the VSI being configured
@@ -13854,6 +13955,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
 	/* Setup netdev TC information */
 	i40e_vsi_config_netdev_tc(vsi, vsi->tc_config.enabled_tc);
 
+	netdev->stat_ops = &i40e_stat_ops;
 	netdev->netdev_ops = &i40e_netdev_ops;
 	netdev->watchdog_timeo = 5 * HZ;
 	i40e_set_ethtool_ops(netdev);
-- 
2.25.1

