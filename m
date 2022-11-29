Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EEC63C52D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 17:30:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24BC760FB8;
	Tue, 29 Nov 2022 16:30:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24BC760FB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669739422;
	bh=4xthUmRE6ZlfnJWqhhOCLPRVVmTNq4DFR6psWKDVGzk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZBMD3L87b7PlWxrqjFiWpUa0wrcNF3uxkglhQO8T41gOyGyfMTW1yH7HcDofEo0Xp
	 Lq5zS8C8E1ieEkVPOv/Un7FH2HAIjv7D5LdV8VlcL/diD8Dm9kc4RoJ8rgSHF/wLzG
	 aYfY2qFcxjVHXXJtDeVY92EsDXQOBb0UImMK7tqGCdSCd+aTE0lSkzVjbHXFffeY6p
	 qSPdmwn4B3FabVyduJzYBEIvNNNhzBt8jvlwXUYt9ZkEXiNDoBp/IuzV13ShL1TDD1
	 KhrFKGV50E4rW9fa1nE4j8GEW+JzzgJXzjcQE/n/6mrLP+TBF/C3VC1DsNtBXQmlHF
	 COp2tGJIJPuUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MJh5qWhcHzO3; Tue, 29 Nov 2022 16:30:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 151CD60C08;
	Tue, 29 Nov 2022 16:30:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 151CD60C08
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CBF391BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 09:52:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A7189607F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 09:52:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7189607F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QJq5JwACP0R3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 09:52:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2131607E1
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B2131607E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 09:52:54 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id q71so12503683pgq.8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 01:52:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=sRMinq7k8Rp6x2pTL5xVUf/39/IR4pJUwqlpijwhsQ8=;
 b=pNb50QitezypfmxjHd5ExaIMh0sb7i8eKZQOhXVv/n3YNDX4c6O+446rhirlizzlze
 0zlhL7+iOnFfYLs2aX4cjihNTV16wWgc8HjFnevO5YZHPfywx5mVqPMoy3Lx0e/EduyA
 LM0E1Rd9tm3qy5EK6hd6jQfkGJEVhjuXBP57ycMls7G50y3ynZmhSpxIf2fi560gzBnw
 rR1moA/SI0UO2FTLh0j/2Wx6yROu8NK/42qq3Y9f70VbldIY52UvBM76XC08vGF6BYLz
 f+NuNAywq8awwKwSEgnJR0JN9VO7Xz0DAuC7fiIMKHVp9NElALeLcSuKgOcj6+k7KDyK
 vNkg==
X-Gm-Message-State: ANoB5pmR/NcWVBbsUSQifBntOX+OP8As2EFU/xiaTLxcyvZkpj1oRfli
 wle/Q0jjx9C3F+CYTacayoA=
X-Google-Smtp-Source: AA0mqf5u6z67DbifkBMUy3hi5AKKsu673ZUUXV8SFZGZ6XVPZWR3+A17osZujQsrllkqhTg1QnkiyA==
X-Received: by 2002:a63:4944:0:b0:44e:466f:4759 with SMTP id
 y4-20020a634944000000b0044e466f4759mr31555695pgk.194.1669715574047; 
 Tue, 29 Nov 2022 01:52:54 -0800 (PST)
Received: from XH22050090-L.ad.ts.tri-ad.global ([103.175.111.222])
 by smtp.gmail.com with ESMTPSA id
 mv15-20020a17090b198f00b0021937b2118bsm941346pjb.54.2022.11.29.01.52.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Nov 2022 01:52:53 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Tue, 29 Nov 2022 18:51:40 +0900
Message-Id: <20221129095140.3913303-4-mailhol.vincent@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129095140.3913303-1-mailhol.vincent@wanadoo.fr>
References: <20221129095140.3913303-1-mailhol.vincent@wanadoo.fr>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Nov 2022 16:29:52 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sRMinq7k8Rp6x2pTL5xVUf/39/IR4pJUwqlpijwhsQ8=;
 b=oqIH2yTunmVjjXDHYNlUinxnxGW49OErAZelZct0jEWFO6BnXwKg1vfD2dGKmHWxmB
 un+UxeNiqOuQByawttlpYgSjjkKR1FPnyJ5lXb/c42Da2r7PaZw+1XUjlmtSknDD2EqB
 o5j8cQtrV2woKecwlFsgTJmX6xbYthyJrrEqgucmgov7sZ1mQL/uXSNxnzPdzQf1JBqR
 g7TLtCYviUD8oCSuMHwd78bHpb1+RKtVQ+UrNLNIgLAXfBiLhPvylbIHZsIKDYkBaxxO
 kScM/2yVWzC3YMSVYizokfzZcVQpOSjpAmEEi5tjdrOMmw5LeiA6UjOljlQaTW1iPhfI
 pUmw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=oqIH2yTu
Subject: [Intel-wired-lan] [PATCH net-next v6 3/3] net: devlink: clean-up
 empty devlink_ops::info_get()
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
Cc: Andrew Lunn <andrew@lunn.ch>, Shijith Thotton <sthotton@marvell.com>,
 Simon Horman <simon.horman@corigine.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, Jerin Jacob <jerinj@marvell.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 drivers@pensando.io, Linu Cherian <lcherian@marvell.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Shalom Toledo <shalomt@mellanox.com>,
 Srujana Challa <schalla@marvell.com>, Minghao Chi <chi.minghao@zte.com.cn>,
 Hao Chen <chenhao288@hisilicon.com>,
 Guangbin Huang <huangguangbin2@huawei.com>,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadim Fedorenko <vadfed@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Sunil Goutham <sgoutham@marvell.com>,
 Ariel Elior <aelior@marvell.com>, Ido Schimmel <idosch@nvidia.com>,
 Richard Cochran <richardcochran@gmail.com>, Arnaud Ebalard <arno@natisbad.org>,
 Jiri Pirko <jiri@mellanox.com>, Michael Chan <michael.chan@broadcom.com>,
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, Petr Machata <petrm@nvidia.com>,
 Salil Mehta <salil.mehta@huawei.com>,
 Dimitris Michailidis <dmichail@fungible.com>,
 Manish Chopra <manishc@marvell.com>, Boris Brezillon <bbrezillon@kernel.org>,
 oss-drivers@corigine.com, Vadim Pasternak <vadimp@mellanox.com>,
 linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 linux-crypto@vger.kernel.org, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

devlink_ops::info_get() is now optional and devlink will continue to
report information even if that callback gets removed.

Remove all the empty devlink_ops::info_get() callbacks from the
drivers.

Signed-off-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Reviewed-by: Jacob Keller  <jacob.e.keller@intel.com>
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
---
 drivers/net/ethernet/fungible/funeth/funeth_devlink.c     | 7 -------
 drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c   | 7 -------
 drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c | 8 --------
 3 files changed, 22 deletions(-)

diff --git a/drivers/net/ethernet/fungible/funeth/funeth_devlink.c b/drivers/net/ethernet/fungible/funeth/funeth_devlink.c
index 6668375edff6..4fbeb3fd71a8 100644
--- a/drivers/net/ethernet/fungible/funeth/funeth_devlink.c
+++ b/drivers/net/ethernet/fungible/funeth/funeth_devlink.c
@@ -3,14 +3,7 @@
 #include "funeth.h"
 #include "funeth_devlink.h"
 
-static int fun_dl_info_get(struct devlink *dl, struct devlink_info_req *req,
-			   struct netlink_ext_ack *extack)
-{
-	return 0;
-}
-
 static const struct devlink_ops fun_dl_ops = {
-	.info_get = fun_dl_info_get,
 };
 
 struct devlink *fun_devlink_alloc(struct device *dev)
diff --git a/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c b/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
index f15439d26d21..bda1a6fa2ec4 100644
--- a/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
+++ b/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
@@ -1547,14 +1547,7 @@ static int rvu_devlink_eswitch_mode_set(struct devlink *devlink, u16 mode,
 	return 0;
 }
 
-static int rvu_devlink_info_get(struct devlink *devlink, struct devlink_info_req *req,
-				struct netlink_ext_ack *extack)
-{
-	return 0;
-}
-
 static const struct devlink_ops rvu_devlink_ops = {
-	.info_get = rvu_devlink_info_get,
 	.eswitch_mode_get = rvu_devlink_eswitch_mode_get,
 	.eswitch_mode_set = rvu_devlink_eswitch_mode_set,
 };
diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c
index 5cc6416cf1a6..63ef7c41d18d 100644
--- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c
+++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c
@@ -77,15 +77,7 @@ static const struct devlink_param otx2_dl_params[] = {
 			     otx2_dl_mcam_count_validate),
 };
 
-static int otx2_devlink_info_get(struct devlink *devlink,
-				 struct devlink_info_req *req,
-				 struct netlink_ext_ack *extack)
-{
-	return 0;
-}
-
 static const struct devlink_ops otx2_devlink_ops = {
-	.info_get = otx2_devlink_info_get,
 };
 
 int otx2_register_dl(struct otx2_nic *pfvf)
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
