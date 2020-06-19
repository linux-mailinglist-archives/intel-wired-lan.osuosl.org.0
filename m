Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0EC200B86
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jun 2020 16:32:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6DA36870A5;
	Fri, 19 Jun 2020 14:32:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VxZS35aaSBCk; Fri, 19 Jun 2020 14:32:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DB3AB870A1;
	Fri, 19 Jun 2020 14:32:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5FBF41BF860
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jun 2020 14:32:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4837D20408
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jun 2020 14:32:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GrhZV9jg32pW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Jun 2020 14:32:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by silver.osuosl.org (Postfix) with ESMTPS id B4D8D203BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jun 2020 14:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592577144;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Cv1zrpU9i/feIUsJHJY4igrXbCUjdaFNDBoy9/47mEI=;
 b=iJejxK/LgRth1tMS3lL9dQ1hlaWeNGdYpAOxjhVq8Ra8cbYOoY0w4qHtO2aYsJmSzeYijg
 0JvOWXWRrr8QE4qGvJAtENlBussloqVNclCOgexjb+rtMkz2WH867ZkOHO4UIDyZMv5iWE
 ZjmhrwxGMEy7UE5iqhnUCEa/Cfyczw0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-163-EFRcKdwYNtmIkMzwbFJFyg-1; Fri, 19 Jun 2020 10:32:20 -0400
X-MC-Unique: EFRcKdwYNtmIkMzwbFJFyg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CA2D78BB3F3;
 Fri, 19 Jun 2020 14:32:18 +0000 (UTC)
Received: from hp-dl360pgen8-07.khw2.lab.eng.bos.redhat.com
 (hp-dl360pgen8-07.khw2.lab.eng.bos.redhat.com [10.16.210.135])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7134E7C21D;
 Fri, 19 Jun 2020 14:32:14 +0000 (UTC)
From: Jarod Wilson <jarod@redhat.com>
To: linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 10:31:53 -0400
Message-Id: <20200619143155.20726-3-jarod@redhat.com>
In-Reply-To: <20200619143155.20726-1-jarod@redhat.com>
References: <20200619143155.20726-1-jarod@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: [Intel-wired-lan] [PATCH net-next v3 2/4] ixgbe_ipsec: become aware
 of when running as a bonding slave
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
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Jay Vosburgh <j.vosburgh@gmail.com>,
 Veaceslav Falico <vfalico@gmail.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>, Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Slave devices in a bond doing hardware encryption also need to be aware
that they're slaves, so we operate on the slave instead of the bonding
master to do the actual hardware encryption offload bits.

CC: Jay Vosburgh <j.vosburgh@gmail.com>
CC: Veaceslav Falico <vfalico@gmail.com>
CC: Andy Gospodarek <andy@greyhouse.net>
CC: "David S. Miller" <davem@davemloft.net>
CC: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
CC: Jakub Kicinski <kuba@kernel.org>
CC: Steffen Klassert <steffen.klassert@secunet.com>
CC: Herbert Xu <herbert@gondor.apana.org.au>
CC: netdev@vger.kernel.org
CC: intel-wired-lan@lists.osuosl.org
Acked-by: Jeff Kirsher <Jeffrey.t.kirsher@intel.com>
Signed-off-by: Jarod Wilson <jarod@redhat.com>
---
 .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    | 39 +++++++++++++++----
 1 file changed, 31 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
index 113f6087c7c9..26b0a58a064d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
@@ -432,6 +432,9 @@ static int ixgbe_ipsec_parse_proto_keys(struct xfrm_state *xs,
 	char *alg_name = NULL;
 	int key_len;
 
+	if (xs->xso.slave_dev)
+		dev = xs->xso.slave_dev;
+
 	if (!xs->aead) {
 		netdev_err(dev, "Unsupported IPsec algorithm\n");
 		return -EINVAL;
@@ -478,8 +481,8 @@ static int ixgbe_ipsec_parse_proto_keys(struct xfrm_state *xs,
 static int ixgbe_ipsec_check_mgmt_ip(struct xfrm_state *xs)
 {
 	struct net_device *dev = xs->xso.dev;
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
-	struct ixgbe_hw *hw = &adapter->hw;
+	struct ixgbe_adapter *adapter;
+	struct ixgbe_hw *hw;
 	u32 mfval, manc, reg;
 	int num_filters = 4;
 	bool manc_ipv4;
@@ -497,6 +500,12 @@ static int ixgbe_ipsec_check_mgmt_ip(struct xfrm_state *xs)
 #define BMCIP_V6                 0x3
 #define BMCIP_MASK               0x3
 
+	if (xs->xso.slave_dev)
+		dev = xs->xso.slave_dev;
+
+	adapter = netdev_priv(dev);
+	hw = &adapter->hw;
+
 	manc = IXGBE_READ_REG(hw, IXGBE_MANC);
 	manc_ipv4 = !!(manc & MANC_EN_IPV4_FILTER);
 	mfval = IXGBE_READ_REG(hw, IXGBE_MFVAL);
@@ -561,14 +570,21 @@ static int ixgbe_ipsec_check_mgmt_ip(struct xfrm_state *xs)
 static int ixgbe_ipsec_add_sa(struct xfrm_state *xs)
 {
 	struct net_device *dev = xs->xso.dev;
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
-	struct ixgbe_ipsec *ipsec = adapter->ipsec;
-	struct ixgbe_hw *hw = &adapter->hw;
+	struct ixgbe_adapter *adapter;
+	struct ixgbe_ipsec *ipsec;
+	struct ixgbe_hw *hw;
 	int checked, match, first;
 	u16 sa_idx;
 	int ret;
 	int i;
 
+	if (xs->xso.slave_dev)
+		dev = xs->xso.slave_dev;
+
+	adapter = netdev_priv(dev);
+	ipsec = adapter->ipsec;
+	hw = &adapter->hw;
+
 	if (xs->id.proto != IPPROTO_ESP && xs->id.proto != IPPROTO_AH) {
 		netdev_err(dev, "Unsupported protocol 0x%04x for ipsec offload\n",
 			   xs->id.proto);
@@ -746,12 +762,19 @@ static int ixgbe_ipsec_add_sa(struct xfrm_state *xs)
 static void ixgbe_ipsec_del_sa(struct xfrm_state *xs)
 {
 	struct net_device *dev = xs->xso.dev;
-	struct ixgbe_adapter *adapter = netdev_priv(dev);
-	struct ixgbe_ipsec *ipsec = adapter->ipsec;
-	struct ixgbe_hw *hw = &adapter->hw;
+	struct ixgbe_adapter *adapter;
+	struct ixgbe_ipsec *ipsec;
+	struct ixgbe_hw *hw;
 	u32 zerobuf[4] = {0, 0, 0, 0};
 	u16 sa_idx;
 
+	if (xs->xso.slave_dev)
+		dev = xs->xso.slave_dev;
+
+	adapter = netdev_priv(dev);
+	ipsec = adapter->ipsec;
+	hw = &adapter->hw;
+
 	if (xs->xso.flags & XFRM_OFFLOAD_INBOUND) {
 		struct rx_sa *rsa;
 		u8 ipi;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
