Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AB263B651
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 01:07:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B59A416D2;
	Tue, 29 Nov 2022 00:07:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B59A416D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669680420;
	bh=K0ZxRX8khVAbE3BouEc54D2qtX6j+VpToBV6zQhmHgI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qvcZpP81XdmTpKYnFBiJSQHfbZwiaVQoJ6s++F1aTWcUCL0vp9TALX94QjdQG2dnO
	 pkOImrUtTxrrQqegr2gnPy/1baqaBxU0vy9c6iPAmo0WfApUd49VAEU3CSbt+OUvQx
	 3jZdRgybmtDyrbgbAYbgJwnG4Reh2ItzmLZDM3VnjV9YtQLHHDUuvGNrEmRmGSG0Jt
	 HDSoVxf/NcwQTiSwDZ6g+2LbpW23W7LqRRtBJyWuekzUhsZJWCrJyvh0wzrbaTO7mQ
	 xJk2TjuvLR7DBD4J3SG5ZzYHazAFJiezgYbmcYGUTFnOGD2m2/ZEmRlRgNK9DW0r8p
	 +YuZ9j4mx6YBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QdoP3NfY8x8j; Tue, 29 Nov 2022 00:06:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38D19416C8;
	Tue, 29 Nov 2022 00:06:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38D19416C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD5B41BF34B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:06:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A6B35416C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:06:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6B35416C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zZeTHKSAThX7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 00:06:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA22C416C1
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CA22C416C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:06:30 +0000 (UTC)
Received: by mail-pg1-x52c.google.com with SMTP id 6so11429671pgm.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 16:06:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=7vyAUtdppYTGbKLq7wMxR0RC/RBu3FQhQnkd54jGiIk=;
 b=2KRz44/KKW7yMNAytmKHIZg4mJBi26ZNNspSc4yI3yvh1e/YkBP/8tjAnBi2ITNTxO
 LIcEXVyYnQkIM+JQc/a18FUCx+xuh4gXiOznNV2Um308seG0gzwFx9LMCFgciBbQofhM
 7T1CsC9AxDcfKdtDBTc0t6+hmetUxzck69+0fcBD7GOyaCwALQCHL2ifNmftJ8HA6jWX
 gk+3wvszWm9qjCOi/6qaglCEbcGEJ08tJwIgB7oNzFfYXxFQ/nR/SvjB17MRc2blItsp
 vhZC0icNBqz1elFC6h1bBGXn4QTSRYtCbY2kGm4Vr7IFPvJdToIaZB1QQh45+yNu+O+p
 NEaQ==
X-Gm-Message-State: ANoB5plnfhGvRfLYHjW/Lpou8oHk3oNGC3r1ye00f5xh1KLVsD7hIKFt
 2Qy9dPXq5PPvXnTKCJ9tv04=
X-Google-Smtp-Source: AA0mqf7GtdgUmLhwKihDZO7Y/zF/uryy7Dh0AFbLvcd5MUPQdZCJgdMX18fbIZ+ovJnEvMeBUSmp1g==
X-Received: by 2002:aa7:8e54:0:b0:574:fddf:9946 with SMTP id
 d20-20020aa78e54000000b00574fddf9946mr11911901pfr.79.1669680390161; 
 Mon, 28 Nov 2022 16:06:30 -0800 (PST)
Received: from XH22050090-L.ad.ts.tri-ad.global ([103.175.111.222])
 by smtp.gmail.com with ESMTPSA id
 r2-20020aa79ec2000000b00572198393c2sm8588147pfq.194.2022.11.28.16.06.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Nov 2022 16:06:29 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Tue, 29 Nov 2022 09:05:49 +0900
Message-Id: <20221129000550.3833570-4-mailhol.vincent@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129000550.3833570-1-mailhol.vincent@wanadoo.fr>
References: <20221129000550.3833570-1-mailhol.vincent@wanadoo.fr>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Nov 2022 00:06:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7vyAUtdppYTGbKLq7wMxR0RC/RBu3FQhQnkd54jGiIk=;
 b=ouaCMAvXZkQLxUzVzBDu3CxGFc+rE8uABpckNF7r3O4GgS4Kk9P+TrxtwvlDwTOOwQ
 uRDIqWUliCDxsq5vnkikZBI+VYuFasz5l41t6jAzIn8IqnMwRXsVziBEcdxDCtOX+z5P
 LdiunH5fa9iHrQduvpM1Ff2604a9p7/hvlHprs7waxl9TeqMJ/bg8AgmUoCwPJd22pgN
 8ifI2hpyxohfeCjauf85IlUkFj7YqWpop0Et0bsjCXRmKSHxB2xwxT3c9ZJTCs2t2vEW
 ajokkJL03s8DYT6VXUQ9vh6Ub5obfzykIuzJA+JF+CFcgjY/PgaEcoIQztVZ2ofADwoR
 +tzQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ouaCMAvX
Subject: [Intel-wired-lan] [PATCH net-next v5 3/4] net: devlink: make the
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
