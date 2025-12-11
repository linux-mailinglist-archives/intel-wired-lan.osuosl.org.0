Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1822DCB70B4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 20:48:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC71B40338;
	Thu, 11 Dec 2025 19:48:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MupD17aqXjA3; Thu, 11 Dec 2025 19:48:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34760410EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765482525;
	bh=rC4mCgkPFY3HeqtRjRPBAr1+nSCr5owbgZaduK5jqJ4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HVLt5g2zF9VJwE51K1SiLO8qw3S+x7uM29sPTyXmvRfB0UluATF5aC+eaYKSa4CWi
	 bZ+V4OyvLMs0DdvmYKbnz1Dnwktodo7gE3GcNzqYx22AxM1OEXFhFmz1Y1oO6gQpc/
	 EsdIP6tUx/DluaPCrBQkb/nJ2Wz4b5T27EGuBJewDs9BIcWSpKBw9YORaDTtkJ2mPK
	 69gbicxcSISKiCoS7jQXTwy+Efp55lRbNwKBYAizowzAv/YTSnrh5rXTLQi0F4sJR+
	 OAff09kvUSSaeCHQ2Inemt0LWXR+J2vR5xpzjlVcQzjG6qxdnvwIXdfCpZkBzqfpLN
	 /5Bjju955fw2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34760410EA;
	Thu, 11 Dec 2025 19:48:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D95B32C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 19:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CAE9F60640
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 19:48:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8cQMxExwAu8x for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 19:48:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C2B7D6062C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2B7D6062C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C2B7D6062C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 19:48:42 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-423-x6iNrVO8PDKA5KU51MnQEw-1; Thu,
 11 Dec 2025 14:48:38 -0500
X-MC-Unique: x6iNrVO8PDKA5KU51MnQEw-1
X-Mimecast-MFC-AGG-ID: x6iNrVO8PDKA5KU51MnQEw_1765482514
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 64635195606D; Thu, 11 Dec 2025 19:48:34 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.45.224.252])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id CE5161953984; Thu, 11 Dec 2025 19:48:25 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Grzegorz Nitka <grzegorz.nitka@intel.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Oros <poros@redhat.com>, Michal Schmidt <mschmidt@redhat.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Simon Horman <horms@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Willem de Bruijn <willemb@google.com>, Stefan Wahren <wahrenst@gmx.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org
Date: Thu, 11 Dec 2025 20:47:46 +0100
Message-ID: <20251211194756.234043-4-ivecera@redhat.com>
In-Reply-To: <20251211194756.234043-1-ivecera@redhat.com>
References: <20251211194756.234043-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1765482521;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rC4mCgkPFY3HeqtRjRPBAr1+nSCr5owbgZaduK5jqJ4=;
 b=ebc28UWEUBkZGsy5o9db14xuF2iILDjl97xV2dwkZhfs47Pa9upkAdk59e3Bwn8hKfMCJD
 1P9OB3hHuLbbTrIX/9pndIrQKSdAA47h6C75bXLCTHSB6ZlQl2zJ1tEAv08hPzrY3RgCnb
 /n0VfDEp2dk41BNM1xgodJmAropoEsY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ebc28UWE
Subject: [Intel-wired-lan] [PATCH RFC net-next 03/13] net: eth: Add helpers
 to find DPLL pin firmware node
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

