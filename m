Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 426C263ADD4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:33:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D269F81348;
	Mon, 28 Nov 2022 16:33:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D269F81348
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653196;
	bh=CYO2OYsgvGcn4giHrNIDsl7gWU35eL/Jik9P0oKZjnM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SNdWmh/QoGhqSRzj1IMc5kj5EWgjDJhFYcdZPVIrg6Z2WJMrbaamb11Lj6//ychXe
	 666XH8KjVgXMH/qf+YpX2CUO7+69B1899cJLzBNPLK3pXdsynACfGnlwzLo548n8el
	 nySdKry3u0FN5xqmngpjv0w42hAQ5y25GVDqgW4TeRidrzm8KwbIIahHLQOz+CazLN
	 2vry70AMHaygd53FRDI10FbFKoCju54o1j6+oULw/cF7IHfEgSHKMX1BnX57Rl02mx
	 K5dA1ekVXPhOEY6Unjp7bS3SZjsKA/CghyIy9IXibTxS4CQL9CGQJWsxPeScAzh1IF
	 9DRMGs0ParRSw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id slHs4Z9y62Nl; Mon, 28 Nov 2022 16:33:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2CE181409;
	Mon, 28 Nov 2022 16:33:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2CE181409
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 33E691BF360
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 04:16:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1CA534018B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 04:16:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CA534018B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mOfbs1vBkMLf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Nov 2022 04:16:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82D11408C0
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 82D11408C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 04:16:20 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id z17so4484357pff.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 20:16:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=JP07mtQeL4FoUwgrGCKcP+kaqfn/uraWOSBYR49R4Wc=;
 b=1wSkXhOt9YYYIwfKIKAuwwgTUrc7gyPwDS8E6vCpgkxZftyWQBiVigihST8P31T3/a
 HNr2n+uzhI0sNyLRCPGu8CY977QA0pGCRY3js5MqHJf7WjH49lsq1ZxZVMwkr2R8zLsa
 uTBB2naHaL8gfLYDSmCHcZRm+7JyvVJflyU8nJBZXtjVOUOMDmQn76qccHew+c1/eS4A
 iF3x34e235+RZPENmbkdVlu7TuLboOM6KLUlZJIrOWaOFP0VMORATnnB3TMFztjkwaZu
 xQqUicPdmKtbxXTAW3dlK1ptVo6Umg0tXtmdxYKZ9lZAJoK5nQ+QMKW2dHRpKtL1TRAA
 g+sA==
X-Gm-Message-State: ANoB5plBq1MNYPlt9LK+Fvs7XIVGLMi4kyMwCC8/IaGZWj3izH6Ekpwl
 CZY0T+AnSAlRBEe0qDtPALE=
X-Google-Smtp-Source: AA0mqf75upGbV5lvxzqh1VVZxQS0/rYGVu0axw2fpBIERVDskDYZk3NTlkCPACQRB+qe4OutHSFRoA==
X-Received: by 2002:aa7:9696:0:b0:574:aa0b:bdc3 with SMTP id
 f22-20020aa79696000000b00574aa0bbdc3mr16260327pfk.18.1669608979829; 
 Sun, 27 Nov 2022 20:16:19 -0800 (PST)
Received: from XH22050090-L.ad.ts.tri-ad.global ([103.175.111.222])
 by smtp.gmail.com with ESMTPSA id
 z5-20020aa79f85000000b0056bbebbcafbsm6927107pfr.100.2022.11.27.20.16.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Nov 2022 20:16:19 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Mon, 28 Nov 2022 13:15:44 +0900
Message-Id: <20221128041545.3170897-3-mailhol.vincent@wanadoo.fr>
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
 bh=JP07mtQeL4FoUwgrGCKcP+kaqfn/uraWOSBYR49R4Wc=;
 b=B/ryohjVzWGAcm4RyIh/KKH18vl51x3P0Ob0PC9ybUR1GZDIIOgGoChPu5qYIVEJde
 Ei4qEjC3vyfhnW2ar4QWStz3kz2jcuHNjmhybu18hRnK0BKh/KmVvVUKvJhbHop817u4
 uYOzs+untBIapddsqsSBt+YSXSoYMGVSREx4g7L7E7WsqppycspDlnRfXMh4YUNdA6VR
 8WEd1rltbRU0MWmMef5fJue1IlykmtSxrJ+9z3Wpy2xP5SXLGKK7dm1kiGq54tM+91pL
 NdqMVrAwPr9lm3FVCcvoE0BSN0of4EH+CrbxNpBwX/SOqlCybTJkSWsqD+Slj7BVV30y
 iutA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=B/ryohjV
Subject: [Intel-wired-lan] [PATCH net-next v4 2/3] net: devlink: remove
 devlink_info_driver_name_put()
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

Now that the core sets the driver name attribute, drivers are not
supposed to call devlink_info_driver_name_put() anymore. Remove it.

Signed-off-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
---
 include/net/devlink.h |  2 --
 net/core/devlink.c    | 11 ++---------
 2 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/include/net/devlink.h b/include/net/devlink.h
index 074a79b8933f..52d5fb67e9b8 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -1746,8 +1746,6 @@ int devlink_region_snapshot_create(struct devlink_region *region,
 				   u8 *data, u32 snapshot_id);
 int devlink_info_serial_number_put(struct devlink_info_req *req,
 				   const char *sn);
-int devlink_info_driver_name_put(struct devlink_info_req *req,
-				 const char *name);
 int devlink_info_board_serial_number_put(struct devlink_info_req *req,
 					 const char *bsn);
 
diff --git a/net/core/devlink.c b/net/core/devlink.c
index 6478135d9ba1..3babc16eeb6b 100644
--- a/net/core/devlink.c
+++ b/net/core/devlink.c
@@ -6633,14 +6633,6 @@ static int devlink_nl_cmd_region_read_dumpit(struct sk_buff *skb,
 	return err;
 }
 
-int devlink_info_driver_name_put(struct devlink_info_req *req, const char *name)
-{
-	if (!req->msg)
-		return 0;
-	return nla_put_string(req->msg, DEVLINK_ATTR_INFO_DRIVER_NAME, name);
-}
-EXPORT_SYMBOL_GPL(devlink_info_driver_name_put);
-
 int devlink_info_serial_number_put(struct devlink_info_req *req, const char *sn)
 {
 	if (!req->msg)
@@ -6756,7 +6748,8 @@ static int devlink_nl_driver_info_get(struct device_driver *drv,
 		return 0;
 
 	if (drv->name[0])
-		return devlink_info_driver_name_put(req, drv->name);
+		return nla_put_string(req->msg, DEVLINK_ATTR_INFO_DRIVER_NAME,
+				      drv->name);
 
 	return 0;
 }
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
