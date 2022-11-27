Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AF663ADC7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:32:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35AED60BD6;
	Mon, 28 Nov 2022 16:32:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35AED60BD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653143;
	bh=ONHg9V2wfxJtFf3R8ERSrw0xyo2h0fcYwpGZC/zX4js=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SPQ54P4IaRrO3nPcOOo9F6NAuoy4Q+XkxDS+VTw0Uirq/spxX6F+YqvWCZ8OrTXhZ
	 Ujw9b+bP47dK2aIYOcJltseAO15pI8hRwhDqB4B7F9UukkiYDCMBxgd6dGlYTuh7ZB
	 QbRiQLXZbCdhNsFQt7ulE5/w1uZCUKH5z45QZuMGDSA7dpqI78qstAG0sEF0VMmWYX
	 yJgjQp2HqVqqqo7X6H9Ogv0xXjq+VA8QUidG83D7UR3F2ukCmdReeyDjNndpuhLI25
	 PBVXx4Xk6zEcTG3cfO/MR/erRXGoYlbrtrtInNPzzkXR0nveuLBKOb9U4elcgzmL1B
	 HDDOq2xoAATnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wJ3QHrLo--uS; Mon, 28 Nov 2022 16:32:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F19260D51;
	Mon, 28 Nov 2022 16:32:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F19260D51
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F3711BF470
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 08:17:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F03440602
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 08:17:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F03440602
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BB-auXz8eYAY for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Nov 2022 08:17:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ADB12400D2
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ADB12400D2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 08:17:03 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 l22-20020a17090a3f1600b00212fbbcfb78so11199156pjc.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 00:17:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=OxNviUPHTCGHIw1xqWHS/MPtnV3RpWOBq4yIBMcYMgw=;
 b=El0G5+oIFeb5T/Y3sQ4BB2HGSVhGStIrFPnN6J3K0c8lf3pJKl7rug1Rigg7tatXkV
 OjqlGK3T4NIHUWeOeE0ccnM06dw5JaUVYJqB8+Ejuxz46WgYTQEOsykZwHfC0jJu6R8D
 3XA1M4+GNSa9iN71v8UDqDmn9Lj/dNjgClRb1qE7oz1wHO1xTF9vz9FY0ahOlJwFKkji
 D2D6p1qdhJGY7+zS/uT0aZ47kBvNLS5ldmyYOTXH5wr8rnm95Sd59K5eD9/6aBJaf8oC
 fjjNgX9BXw5G9XwkPETUeQeItE4UTzXtFIyNn6PHa5cZ+BDw7nfTq19UdA7J42OjuzpI
 GqKA==
X-Gm-Message-State: ANoB5pmMiSsxpZaN7Hbaripu8n82j8FN9aQ2AsKtzaV4UlvzZVbjZfKp
 Jph8rCbmq4/imouLRb+fE+s=
X-Google-Smtp-Source: AA0mqf7yW/3Xp1KFVxoejY9De59xKNtiUSTMbmzKHSVE+Yrxp8I+Rv0xefV1OzueQtEdMCfe8elgLQ==
X-Received: by 2002:a17:902:f80b:b0:188:4e75:7365 with SMTP id
 ix11-20020a170902f80b00b001884e757365mr28594068plb.102.1669537023058; 
 Sun, 27 Nov 2022 00:17:03 -0800 (PST)
Received: from localhost.localdomain (124x33x176x97.ap124.ftth.ucom.ne.jp.
 [124.33.176.97]) by smtp.gmail.com with ESMTPSA id
 a3-20020aa794a3000000b00572c12a1e91sm5799915pfl.48.2022.11.27.00.16.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Nov 2022 00:17:02 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Sun, 27 Nov 2022 17:16:03 +0900
Message-Id: <20221127081604.5242-5-mailhol.vincent@wanadoo.fr>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221127081604.5242-1-mailhol.vincent@wanadoo.fr>
References: <20221122154934.13937-1-mailhol.vincent@wanadoo.fr>
 <20221127081604.5242-1-mailhol.vincent@wanadoo.fr>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Nov 2022 16:31:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OxNviUPHTCGHIw1xqWHS/MPtnV3RpWOBq4yIBMcYMgw=;
 b=eetLQF5UODffxdiWFfOUJ5V4jEbJDflupjuyH8LBZdfHVWyl8GtBDfs47imz2/w1Ac
 r66dRHi/VUwY0i1SSYFvVAOgkRQWkWFrNFs2GxutGJ4PtJBCtwSzc91hJaZakzsuSSXr
 kluV/KoBcwQfC+aRTmuQmb0amOmSVvdgKRFspB8LWrihiPvpBBYY8Pebno7RcDphFLwU
 DDONZA1BKxs2jKU5hBMPWHp+Iw19R1aAX416kSVs4ab4Dl/Au17ETkW8cs+CCpJXUmqC
 K11/HcAEWmPB3v8c6Vrh+wtz00n+vr6dIPpL1uniILBFZI0Eus1lKC+4pUdbKNlKDY9S
 s0fg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=eetLQF5U
Subject: [Intel-wired-lan] [PATCH net-next v2 4/5] net: devlink: remove
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
Cc: Andrew Lunn <andrew@lunn.ch>, Simon Horman <simon.horman@corigine.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 Jerin Jacob <jerinj@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, drivers@pensando.io,
 Linu Cherian <lcherian@marvell.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Shalom Toledo <shalomt@mellanox.com>, Srujana Challa <schalla@marvell.com>,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadim Fedorenko <vadfed@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Sunil Goutham <sgoutham@marvell.com>,
 Ariel Elior <aelior@marvell.com>, Ido Schimmel <idosch@nvidia.com>,
 Richard Cochran <richardcochran@gmail.com>, Arnaud Ebalard <arno@natisbad.org>,
 Michael Chan <michael.chan@broadcom.com>,
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
2.37.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
