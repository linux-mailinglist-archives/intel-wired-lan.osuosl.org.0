Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E170463ADD6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:33:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 621E84020C;
	Mon, 28 Nov 2022 16:33:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 621E84020C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653201;
	bh=0c/xmz1qYtk8Kbk3J+eH9BUPIf76q4TPUjUP9TUz/h8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QUEPH1PsqWqK36SjyFo4PNA+OCHf1V6+08a4wV9TLSIYPYnLqX94MkgU2xdfeulXi
	 57vt2GZvVensnQa3IvQvD6nvvU1xQaCl7my2ImDv6U9fWltLyW3/WnT1ak5gGtCWUq
	 Fz0ZLEPqEEzH7nmgp5DwkHHpObpTOqQZVnV4L7bTsyqpa8dV4nqdkwdSUGMXTBFrCA
	 ibdyflZeZnqmkYpAl9HUQTM+HjMLQSh8g2Z1c6U3jqBLtK+2BSQasYcUsbk8zkTz+X
	 Mriu/Jiz+x/HbVklMmVcjIV090xvPwQODSOG8AcRBV9cf57IofNtFCxJ0C6cHLaLqV
	 +uAlHAtGv310w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hBb3dA2tyHoF; Mon, 28 Nov 2022 16:33:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE6C34027E;
	Mon, 28 Nov 2022 16:33:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE6C34027E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DECCD1BF360
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 04:16:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C46C541523
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 04:16:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C46C541523
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ztis5iM97e_g for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Nov 2022 04:16:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD90841522
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD90841522
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 04:16:29 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id 140so9294450pfz.6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 20:16:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=JjAI8qVVGO07FKShcXF7iZ9qNBkTNGT0At3i/50Q48k=;
 b=Q3FDPO9oZQU8R6kwE/8virdHOz5rkTiN0LzGWbHPnRoOzQXUkJmr0DGIv2actbNUsV
 8HqawsxcZvFAXLCse8R+4y4EZVdSg+sXn68tPNA/1/og5x/OrorZluU1wK8M6RlzZjc9
 XZi9/O2AqKXPGRIEL0mBLMWZ3Wo+j3aA96nTs+AWqknGxhAWVlYN0t/pcFcuYbeZggaG
 gMi4xjs471vN4lGUwQB65/pkfbKiKQNaPUZdJpQaNpUzCGs4EfG2QtMZrBpkLCdRzWK9
 0Rl0prZanK7K+yuZ7a0pLx0VyjJtaAvsQXKJgXDtldGez8j9NhlOk9F3DW3bitPH2Q2b
 YZhw==
X-Gm-Message-State: ANoB5plF062CYo39oLbCm5SGVjhy+AAbkXYgSLzBDq3sIbMj6FSuWNBj
 U1BpSNYEUBnF/OFu3wM/x0I=
X-Google-Smtp-Source: AA0mqf4CCt+n+QAsQM8eiB3dp3akEkIzsrNN80n0dkmFQEmRSn8uwWg9qVBG5WFbtZAmX21TV6aNpQ==
X-Received: by 2002:a63:1563:0:b0:477:8fed:811f with SMTP id
 35-20020a631563000000b004778fed811fmr26480617pgv.343.1669608989152; 
 Sun, 27 Nov 2022 20:16:29 -0800 (PST)
Received: from XH22050090-L.ad.ts.tri-ad.global ([103.175.111.222])
 by smtp.gmail.com with ESMTPSA id
 z5-20020aa79f85000000b0056bbebbcafbsm6927107pfr.100.2022.11.27.20.16.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Nov 2022 20:16:28 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Mon, 28 Nov 2022 13:15:45 +0900
Message-Id: <20221128041545.3170897-4-mailhol.vincent@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221128041545.3170897-1-mailhol.vincent@wanadoo.fr>
References: <20221122154934.13937-1-mailhol.vincent@wanadoo.fr>
 <20221128041545.3170897-1-mailhol.vincent@wanadoo.fr>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Nov 2022 16:31:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JjAI8qVVGO07FKShcXF7iZ9qNBkTNGT0At3i/50Q48k=;
 b=JLZgMTR9BOAPybvjm50I3AQUB33vas5DdKuy0k9v2P748nXZxKLk0c63OAjrXjNHFx
 PGkVNuTr4X1bF3iUcO12xiHsgM5OoM+xLcfULaNLSRg+MuWg/s3p+heUIkxzQLvBOhik
 TYDto1Y7G6fGT2xiLSxhysa9T3M8lkyEfOpfJZqwr/3GuUnOpeYgBJF7j0bKgx3sYqlx
 GoKK4MDF/COx22I2qk7BQ/r4x7FxloGX3PUCJvhK0I4nxh1bkKepI8q+4mpurser7IOU
 bK4Tjm70sR8YG1tSBz9j/fgLomd0NzmCZGI/u0shfnk3DJFK2djaGbZNozTQFPF70P3/
 LbYA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=JLZgMTR9
Subject: [Intel-wired-lan] [PATCH net-next v4 3/3] net: devlink: make the
 devlink_ops::info_get() callback optional
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

Some drivers only reported the driver name in their
devlink_ops::info_get() callback. Now that the core provides this
information, the callback became empty. For such drivers, just
removing the callback would prevent the core from executing
devlink_nl_info_fill() meaning that "devlink dev info" would not
return anything.

Make the callback function optional by executing
devlink_nl_info_fill() even if devlink_ops::info_get() is NULL.

Remove all the empty devlink_ops::info_get() functions from the
drivers.

N.B.: the drivers with devlink support which previously did not
implement devlink_ops::info_get() will now also be able to report
the driver name.

Signed-off-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
---
 .../net/ethernet/fungible/funeth/funeth_devlink.c   |  7 -------
 .../net/ethernet/marvell/octeontx2/af/rvu_devlink.c |  7 -------
 .../ethernet/marvell/octeontx2/nic/otx2_devlink.c   |  8 --------
 net/core/devlink.c                                  | 13 ++++++-------
 4 files changed, 6 insertions(+), 29 deletions(-)

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
diff --git a/net/core/devlink.c b/net/core/devlink.c
index 3babc16eeb6b..817d978bb729 100644
--- a/net/core/devlink.c
+++ b/net/core/devlink.c
@@ -6773,9 +6773,11 @@ devlink_nl_info_fill(struct sk_buff *msg, struct devlink *devlink,
 		goto err_cancel_msg;
 
 	req.msg = msg;
-	err = devlink->ops->info_get(devlink, &req, extack);
-	if (err)
-		goto err_cancel_msg;
+	if (devlink->ops->info_get) {
+		err = devlink->ops->info_get(devlink, &req, extack);
+		if (err)
+			goto err_cancel_msg;
+	}
 
 	err = devlink_nl_driver_info_get(dev->driver, &req);
 	if (err)
@@ -6796,9 +6798,6 @@ static int devlink_nl_cmd_info_get_doit(struct sk_buff *skb,
 	struct sk_buff *msg;
 	int err;
 
-	if (!devlink->ops->info_get)
-		return -EOPNOTSUPP;
-
 	msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 	if (!msg)
 		return -ENOMEM;
@@ -6824,7 +6823,7 @@ static int devlink_nl_cmd_info_get_dumpit(struct sk_buff *msg,
 	int err = 0;
 
 	devlinks_xa_for_each_registered_get(sock_net(msg->sk), index, devlink) {
-		if (idx < start || !devlink->ops->info_get)
+		if (idx < start)
 			goto inc;
 
 		devl_lock(devlink);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
