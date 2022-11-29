Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D281463B64F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 01:06:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DACA81B60;
	Tue, 29 Nov 2022 00:06:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DACA81B60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669680416;
	bh=CYO2OYsgvGcn4giHrNIDsl7gWU35eL/Jik9P0oKZjnM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QLdEOBGKG3HJEHvcakwUBe03awnO9CpZnLY07S9L6gz9RaJhyXjfHRZ2qfGWALC+Q
	 jpwfsmiAJKgxVnRaYAKru+AqJReDtmW+KPdCDk+ad9nL/IwbsO0w0O1F9+TsZmugMx
	 beTk3IoXGpTLIrwkmp/EBOJzBvvBNZ650RwlNZnyyf/x1PD4YCqn8zFG81IEEWK8BC
	 b8wq7c2SgYlL21lJL6EM0IFhTGuwDWW7eGKWZvdc3uONc5klWW/QMMOE4pjkSQOwrT
	 lZXAQ0e5GpE2vu+VqWT+qDn6aHa06ZVf5t+ZX6Jf2Ra1C+U2m213DD2iFleSf3Cryf
	 XPikSWRbF3I4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Q1CIAMo9Owk; Tue, 29 Nov 2022 00:06:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3832E81B71;
	Tue, 29 Nov 2022 00:06:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3832E81B71
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 74C671BF34B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:06:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4FA4981B71
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:06:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FA4981B71
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8XYsQ4R2QfeE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 00:06:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B735681B60
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B735681B60
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:06:21 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id y4so11800767plb.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 16:06:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=JP07mtQeL4FoUwgrGCKcP+kaqfn/uraWOSBYR49R4Wc=;
 b=3UQnQeGV3f2tpMFdkm5utUT2Q+jMK5JAoAjCWgbmGhpLxB7aectXOmRR2M8jdrYm8Q
 CRaimxQoyN9rYLCneEA6C4s2LYAhSTQG6J8m2adKVuU/1D/Ra8SQ1i2r08sT/o1WIqZ7
 skL+G1yBI/R1Z8Clbnc9A9S6V4PP/IyRbvU/oBgFQcARiGqlP+Cxyfbj0KpcM4MHnMd0
 kr7rFjMahsD4bUzXCm+A45eKRQeJWokqDZmtm5fkt7C9eco+vR6wWKucQtWpFvjCkvnL
 b0t8CXhjxZYeKqS+sV1MDYKm/jLro1E5loG7ReZeW5zmHfqD8gOTTZkPGxCi279ZOc07
 tPGA==
X-Gm-Message-State: ANoB5pm767P9L2Vy0PrIuWV9f6uEOQEoq9FjVB+Nmp9Pu131YOqQ2QEi
 EdlggLYNpnLQTXb4TqSg2HA=
X-Google-Smtp-Source: AA0mqf5/vlGmKhQAA7QcgIfeu7vlJ5Lox+jlEE1XoxiwZ2Nl3Mn4DVLCduOaEtI6+tJoSxrQTfnHcA==
X-Received: by 2002:a17:902:ed94:b0:186:748f:e8c5 with SMTP id
 e20-20020a170902ed9400b00186748fe8c5mr34531545plj.73.1669680381092; 
 Mon, 28 Nov 2022 16:06:21 -0800 (PST)
Received: from XH22050090-L.ad.ts.tri-ad.global ([103.175.111.222])
 by smtp.gmail.com with ESMTPSA id
 r2-20020aa79ec2000000b00572198393c2sm8588147pfq.194.2022.11.28.16.06.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Nov 2022 16:06:20 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Tue, 29 Nov 2022 09:05:48 +0900
Message-Id: <20221129000550.3833570-3-mailhol.vincent@wanadoo.fr>
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
 bh=JP07mtQeL4FoUwgrGCKcP+kaqfn/uraWOSBYR49R4Wc=;
 b=QP0FrF00rYGSWnRtDLLC6mcFT3uao9tdyTUWzSX7yCexrMQY1Mx8ExO7z3LmdPVjK/
 OlUe7lb0UoJxwlvFsi63RKQn2VRlFKdQZhik4OBDog+UQEES/w8FnxRaIaA6dczmvZmG
 uteN5iF/6kn2Oyjvcr8gjh8slGbw0HEhC/TctpY0BDm+KDAQtJKwPlaemNhFMoTQuQ61
 HbImscEFKYBBiPz7wAUBaNtH2jg5QEFYtdA1LCiWx2heqEZX4sb7raH+Oult0/01SYGu
 twx/y2b6aoe0PTWjJLA0ETW1DUSSfHo9rL6kKcGyXRsyuyqxUQcMnvVOLzcEI1rzSyIM
 h/BA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=QP0FrF00
Subject: [Intel-wired-lan] [PATCH net-next v5 2/4] net: devlink: remove
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
