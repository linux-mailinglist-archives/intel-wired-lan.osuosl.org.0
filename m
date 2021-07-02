Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 248A33BA22C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jul 2021 16:27:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE88A60BA3;
	Fri,  2 Jul 2021 14:27:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xeRJHodWSMzR; Fri,  2 Jul 2021 14:27:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B94EA60BA2;
	Fri,  2 Jul 2021 14:27:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 22D0A1BF335
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 14:27:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 117D582DD9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 14:27:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EG_kl6FIxux5 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jul 2021 14:27:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7F8BA82B84
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 14:27:38 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id a127so9055304pfa.10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Jul 2021 07:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=oovjBCYEfKr8UlBHknq0vS0WePZ568uyDVDCFtyxl6U=;
 b=dYOpwlETabkwpkQuXeY23if5nwRocWRv3gHoI07rqZf+uF/LTHmsVT79YAnnF6x7YJ
 nX81jiaJT0Jg0+AB5L7bfpNT/EvcvScJbeLbc985rjOi9wleAQPQWqAopq9t2yxBxVWC
 JfDM0itO6IVFpj2kPorYxxsZGojxgVlpkaKzJMyvkFxvMKzR4+xpK+S8elG928TKXu8e
 WwTzcR890M5gzO7dNE/BmH8yXkWuZdl5qE5qrvf886oyzoj6oC4Ugo1JI4UTd/Jbmcp2
 5NygZl954z6c9nuFhMXyhOKxJndPADDFIugLXhJP9bSZ4d1VCGFNTn7Ww9bzTgRaWYUP
 9FVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=oovjBCYEfKr8UlBHknq0vS0WePZ568uyDVDCFtyxl6U=;
 b=cg8KUI4gccmZZXIV4hV0RmAVvr1Ef4wv0HvYdyIDNkod87F/J/pyYVgTyfccTZ8w6T
 l5TmG19zBeTsFipdUUyugbkFaJVxl78LFg4lfrifCgHM2mnEG6keeNO2NdP6iB157nZB
 IllE21hscmmA64tTZNiPV4HfvVyY5AGMgDGB7gJLe0POp//tlFj8FcfKVWjmypohI386
 ySMGG4ho/4N85VhPDZmc8joueJYfKjImVyO9wGYFZwrsAyPz4yRzgvTqjZdJ9hTv3p/t
 49nQqufqh26YUdKWUWoSGdghlQ231UgwPyNV1oOODaL38llMhIkaTlL+FHVXIhXAszml
 fDEA==
X-Gm-Message-State: AOAM533k8KVoATa1yQn6AP6RZFzmll+ebkCmozzxcYGD/2JYBIX1iGTj
 FnqaWmGra/g0PqtUbwvdrjs=
X-Google-Smtp-Source: ABdhPJz8TRzk5u4A6yenNi/OyzI8ih0TzlGMMdtJUrwP6B0rSgLvy1Z2Thmm0W/bolGKQdkou3kZiw==
X-Received: by 2002:a63:170e:: with SMTP id x14mr300599pgl.452.1625236057950; 
 Fri, 02 Jul 2021 07:27:37 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id nr12sm12683747pjb.1.2021.07.02.07.27.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Jul 2021 07:27:37 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, kuba@kernel.org, j.vosburgh@gmail.com,
 vfalico@gmail.com, andy@greyhouse.net, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, jarod@redhat.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Fri,  2 Jul 2021 14:26:46 +0000
Message-Id: <20210702142648.7677-7-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210702142648.7677-1-ap420073@gmail.com>
References: <20210702142648.7677-1-ap420073@gmail.com>
Subject: [Intel-wired-lan] [PATCH net 6/8] bonding: disallow setting nested
 bonding + ipsec offload
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
Cc: ap420073@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

bonding interface can be nested and it supports ipsec offload.
So, it allows setting the nested bonding + ipsec scenario.
But code does not support this scenario.
So, it should be disallowed.

interface graph:
bond2
 |
bond1
 |
eth0

The nested bonding + ipsec offload may not a real usecase.
So, disallowing this is fine.

Fixes: 18cb261afd7b ("bonding: support hardware encryption offload to slaves")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/bonding/bond_main.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
index 7659e1fab19e..f268e67cb2f0 100644
--- a/drivers/net/bonding/bond_main.c
+++ b/drivers/net/bonding/bond_main.c
@@ -419,8 +419,9 @@ static int bond_ipsec_add_sa(struct xfrm_state *xs)
 	xs->xso.real_dev = slave->dev;
 	bond->xs = xs;
 
-	if (!(slave->dev->xfrmdev_ops
-	      && slave->dev->xfrmdev_ops->xdo_dev_state_add)) {
+	if (!slave->dev->xfrmdev_ops ||
+	    !slave->dev->xfrmdev_ops->xdo_dev_state_add ||
+	    netif_is_bond_master(slave->dev)) {
 		slave_warn(bond_dev, slave->dev, "Slave does not support ipsec offload\n");
 		rcu_read_unlock();
 		return -EINVAL;
@@ -453,8 +454,9 @@ static void bond_ipsec_del_sa(struct xfrm_state *xs)
 
 	xs->xso.real_dev = slave->dev;
 
-	if (!(slave->dev->xfrmdev_ops
-	      && slave->dev->xfrmdev_ops->xdo_dev_state_delete)) {
+	if (!slave->dev->xfrmdev_ops ||
+	    !slave->dev->xfrmdev_ops->xdo_dev_state_delete ||
+	    netif_is_bond_master(slave->dev)) {
 		slave_warn(bond_dev, slave->dev, "%s: no slave xdo_dev_state_delete\n", __func__);
 		goto out;
 	}
@@ -479,8 +481,9 @@ static bool bond_ipsec_offload_ok(struct sk_buff *skb, struct xfrm_state *xs)
 	if (BOND_MODE(bond) != BOND_MODE_ACTIVEBACKUP)
 		return true;
 
-	if (!(slave_dev->xfrmdev_ops
-	      && slave_dev->xfrmdev_ops->xdo_dev_offload_ok)) {
+	if (!slave_dev->xfrmdev_ops ||
+	    !slave_dev->xfrmdev_ops->xdo_dev_offload_ok ||
+	    netif_is_bond_master(slave_dev)) {
 		slave_warn(bond_dev, slave_dev, "%s: no slave xdo_dev_offload_ok\n", __func__);
 		return false;
 	}
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
