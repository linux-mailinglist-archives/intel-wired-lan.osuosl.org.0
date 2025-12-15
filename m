Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 832E4CBFC1E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Dec 2025 21:31:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3DB9E40335;
	Mon, 15 Dec 2025 20:31:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OnqxyKwd-J4T; Mon, 15 Dec 2025 20:31:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B733D40319
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765830691;
	bh=rC4mCgkPFY3HeqtRjRPBAr1+nSCr5owbgZaduK5jqJ4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iqhXWuThclQMnGqOA3WCiiQDx/5wEoxXKK81nu+m8Ea45UKleIjGW9GNHEBZFRkRJ
	 lTgC2c8sHC+6/nWIr/LPB18iSkciqiUZkr9AAf1mXvRz/fn4WjotGO/MtmG472ZcmL
	 zGXuGW2wZAUquZsSmfgNpWMx3+JK0VdX/xe7euEP3fU5PHMbZIIXEuylyvH7pmJE1v
	 SouQtVwHvHrmXUCLDMNO+j0b1aVqN8fhQRd0+Y30xdUyke9xgXd6ACwFcAb5bjvtHF
	 vpSiNGO4x4y+78tQfySUUmTzzZsKDZm5CkHNPl0aS4yTqtgHid9CSqtdP/E4IRz2OK
	 jXPd1bAZMGwiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B733D40319;
	Mon, 15 Dec 2025 20:31:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B671255
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 20:31:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1CB6981E20
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 20:31:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P4_C8G5HVpIc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 20:31:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 15AA181E1E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15AA181E1E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 15AA181E1E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 20:31:28 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-62-BNLXrZRjPIev3sZdgun3UQ-1; Mon,
 15 Dec 2025 15:31:24 -0500
X-MC-Unique: BNLXrZRjPIev3sZdgun3UQ-1
X-Mimecast-MFC-AGG-ID: BNLXrZRjPIev3sZdgun3UQ_1765830680
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 7A66B1956080; Mon, 15 Dec 2025 20:31:20 +0000 (UTC)
Received: from p16v.redhat.com (unknown [10.45.224.214])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id CF3E330001A2; Mon, 15 Dec 2025 20:31:10 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 15 Dec 2025 21:30:28 +0100
Message-ID: <20251215203037.1324945-4-ivecera@redhat.com>
In-Reply-To: <20251215203037.1324945-1-ivecera@redhat.com>
References: <20251215203037.1324945-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1765830688;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rC4mCgkPFY3HeqtRjRPBAr1+nSCr5owbgZaduK5jqJ4=;
 b=gYd32kN3eQVXjcCNgUKAVRCUCAGXN8HFTfQ0mkuU09rnw8ePRm4rzhxXuUI9vCe6xsDVA4
 8Fkb0FTShcP9/Io2pAS+WtLCan8Sg7k1/4UHRApPT0Y7GfGc5yn7xl5cBh7YqMIjYHOu/4
 HRwG9wzYhLPFM14NoA1Yjo2oZ2T7DoQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=gYd32kN3
Subject: [Intel-wired-lan] [PATCH RFC net-next v2 03/12] net: eth: Add
 helpers to find DPLL pin firmware node
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
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
 Leon Romanovsky <leon@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Willem de Bruijn <willemb@google.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms@kernel.org>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add helper functions to retrieve a DPLL pin's firmware node handle
based on the "dpll-pins" and "dpll-pin-names" device tree properties.

* fwnode_get_dpll_pin_node(): matches the given name against the
  "dpll-pin-names" property to find the correct index, then retrieves
  the reference from "dpll-pins".
* device_get_dpll_pin_node(): a wrapper around the fwnode helper for
  convenience when using a `struct device`.

These helpers simplify the process for Ethernet drivers to look up
their associated DPLL pins defined in the Device Tree, which can then
be passed to the DPLL subsystem to acquire the pin object.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 include/linux/etherdevice.h |  4 ++++
 net/ethernet/eth.c          | 20 ++++++++++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/include/linux/etherdevice.h b/include/linux/etherdevice.h
index 9a1eacf35d370..e342e522ea0e8 100644
--- a/include/linux/etherdevice.h
+++ b/include/linux/etherdevice.h
@@ -35,6 +35,10 @@ int nvmem_get_mac_address(struct device *dev, void *addrbuf);
 int device_get_mac_address(struct device *dev, char *addr);
 int device_get_ethdev_address(struct device *dev, struct net_device *netdev);
 int fwnode_get_mac_address(struct fwnode_handle *fwnode, char *addr);
+struct fwnode_handle *fwnode_get_dpll_pin_node(struct fwnode_handle *fwnode,
+					       const char *name);
+struct fwnode_handle *device_get_dpll_pin_node(struct device *dev,
+					       const char *name);
 
 u32 eth_get_headlen(const struct net_device *dev, const void *data, u32 len);
 __be16 eth_type_trans(struct sk_buff *skb, struct net_device *dev);
diff --git a/net/ethernet/eth.c b/net/ethernet/eth.c
index 13a63b48b7eeb..9081dc02ba91e 100644
--- a/net/ethernet/eth.c
+++ b/net/ethernet/eth.c
@@ -639,3 +639,23 @@ int device_get_ethdev_address(struct device *dev, struct net_device *netdev)
 	return ret;
 }
 EXPORT_SYMBOL(device_get_ethdev_address);
+
+struct fwnode_handle *fwnode_get_dpll_pin_node(struct fwnode_handle *fwnode,
+					       const char *name)
+{
+	int index = 0;
+
+	if (name)
+		index = fwnode_property_match_string(fwnode, "dpll-pin-names",
+						     name);
+
+	return fwnode_find_reference(fwnode, "dpll-pins", index);
+}
+EXPORT_SYMBOL(fwnode_get_dpll_pin_node);
+
+struct fwnode_handle *device_get_dpll_pin_node(struct device *dev,
+					       const char *name)
+{
+	return fwnode_get_dpll_pin_node(dev_fwnode(dev), name);
+}
+EXPORT_SYMBOL(device_get_dpll_pin_node);
-- 
2.51.2

