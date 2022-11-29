Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E65F63C52B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 17:30:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1578F81E40;
	Tue, 29 Nov 2022 16:30:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1578F81E40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669739418;
	bh=m68hia4UIfixGv6ObO7GoLLHAueftM21b7BW7D64Kwo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QOSQh/BVsWgdYs05Rp7VxxXdnC6NzQ2M79kaTyOKgd91Oze5oFs56q33t5qISROOt
	 ldtYGcON1Z8IAWKOpUoNvfowXhQKsywf6Dxr5NJcnSD8Ig2YXOvO1cuH6sAjPm2xZN
	 +XTyDwvAZjrltcDvkfDv1vi/sc3jjGJmSaEDBYHtTynU1/xHy4C3oGHLVSTs0QXVDU
	 sIRryZq/DjP5DbwGn2NRoTrX2hjWV6ZLEbD7FKIsmIJbNfm29ytBlOkspeBTsTePXQ
	 CeubjpHMTf3rmmGoUQnLk9eOSlB6CEXvYQDUq1nnzK/5zY87fJlpM3U+5xmkJW1eCw
	 7OY9OzYYxOY7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RTmUg0ojqH91; Tue, 29 Nov 2022 16:30:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19ED781E4F;
	Tue, 29 Nov 2022 16:30:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19ED781E4F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D75B1BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 09:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7529C607F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 09:52:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7529C607F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vEesApE5jXFQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 09:52:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F062607E1
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4F062607E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 09:52:45 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id w23so12868001ply.12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 01:52:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=q+HcPAfOXUEhgB8t67wP/cjouMyhjRZQn2uzLIUxtrM=;
 b=AilN0wkHoI3koazNHo3tZ+sCyWmKMOIAtyaTLOyzgyYBbjOQE4bByxrr9oCoJiHdg9
 BA9AWpr6xKdX4AlIFbMBAbbCzTEUVJVRjAQAEp6dq3ad2Y9hqvjFjEF1+eHATWxAJ0Rc
 i40+P01pIRjKUnfug4/n3K3+yIffxuTcEtl8YAv9GkPvG3WK1WfZZZdGrFNyWuNvucPb
 8GYyNyTF19opFbvW4i0W0svEMRYBuXMnLfRpRPImOB1XALPF9bOLuxoIp4Qo5lYKUOs7
 yM5MySBdCQei6f1tCmzro+HWb2q5j8+VBN7Qe+9AucU+lUidm3aH0tY6wJ8aTmSl2n4N
 5+jg==
X-Gm-Message-State: ANoB5pnl5+Nhzo3stVdleSqxx9MlKCciYPyuRHqmNwD5WI9HYHvM+/TU
 NedYK6Fr3Lw0GzSVd/t5ArE=
X-Google-Smtp-Source: AA0mqf4Lw/qQGGFmSQRFNytTLBUGv/AQ65WV04fGbUW4eia7yU4P2vgjBbDaOFgMNltEoNBsP5lZEg==
X-Received: by 2002:a17:903:2683:b0:186:6f1e:5087 with SMTP id
 jf3-20020a170903268300b001866f1e5087mr37426289plb.119.1669715564331; 
 Tue, 29 Nov 2022 01:52:44 -0800 (PST)
Received: from XH22050090-L.ad.ts.tri-ad.global ([103.175.111.222])
 by smtp.gmail.com with ESMTPSA id
 mv15-20020a17090b198f00b0021937b2118bsm941346pjb.54.2022.11.29.01.52.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Nov 2022 01:52:44 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Tue, 29 Nov 2022 18:51:39 +0900
Message-Id: <20221129095140.3913303-3-mailhol.vincent@wanadoo.fr>
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
 bh=q+HcPAfOXUEhgB8t67wP/cjouMyhjRZQn2uzLIUxtrM=;
 b=J6WKtTXnQV8Zq71pPB0zFZTPxvL6UGEHTzjmMv3xN5MdjdEeV+BVL0xkN+cTUImBbc
 xEuh14jXCXMW/vxptpV8xn5uTAN24mkhL3e00X7OZOHFHOklnIlTi7FSH4CDbQKN562L
 L/HY799r3W7BrlGIF5dysbYYYQddrtfWUkjgt8hWScl7T9NbiiFMLeHNP/bSEcVYmMGv
 a2RxTPOr1PC859By7i+Xyb7gShL7lGKM5b4Ks7h6se7EK+MyqaazlL0Exy1klJkW7Nr5
 d7/qxZQ2XlvtIPaVH35oJfZmayG1gyKAAUV2ArzX8yLz8S4NbxX8ZUWhCivaDF0MpmSp
 +HjQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=J6WKtTXn
Subject: [Intel-wired-lan] [PATCH net-next v6 2/3] net: devlink: make the
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

N.B.: the drivers with devlink support which previously did not
implement devlink_ops::info_get() will now also be able to report
the driver name.

Signed-off-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Reviewed-by: Jacob Keller  <jacob.e.keller@intel.com>
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
---
 net/core/devlink.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

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
