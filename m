Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C27663ADCD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:32:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C73E660C13;
	Mon, 28 Nov 2022 16:32:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C73E660C13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653167;
	bh=ONHg9V2wfxJtFf3R8ERSrw0xyo2h0fcYwpGZC/zX4js=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rsKs86AVOL5S5mjXQDaA4odh7YuiFciCT4bpzDZ6DrEQ3TNoUpQhmh7O7R/Ilvw4z
	 byUqJWqUbnl0KJihWinN0LlPWEx9yFukyFG69RhbIwVqa/xufDJju0S7uRAeIzexsF
	 Iz/GXxsXea1mqflcXBVTqgNGx9Ckqb0+LLZxCtWzwT2gCvAgV9RzJg4/nlyf5icv1s
	 d/HsUTtjOitXP3kSlzzPh0dirsV/ECc8XKiHrzdcGmOlELfJMlMnW2uyR2lwoikFi4
	 zflCKlk2LpSdNHb0E7HgEgJMtYW9ADV7td24AnIV9hvM525tG0AfTw9qiKhwsZE/jA
	 srfOddHUlAl+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t9H8gZLXG50U; Mon, 28 Nov 2022 16:32:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BA0460C07;
	Mon, 28 Nov 2022 16:32:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BA0460C07
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB1591BF42C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 13:10:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B31AD60B91
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 13:10:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B31AD60B91
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Rm5eTqNLkA2 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Nov 2022 13:10:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B22D360B35
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B22D360B35
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 13:10:26 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 u15-20020a17090a3fcf00b002191825cf02so3617575pjm.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 05:10:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=OxNviUPHTCGHIw1xqWHS/MPtnV3RpWOBq4yIBMcYMgw=;
 b=N7TdNVYhzTJOz7BFSnUJTQ6MD21yjOeYaiVEB9OWiTOK5KKI1VVYX3aJ/N7f9tT/mJ
 RQ0NCKkAwnSrnFocmFs/3CMufLfHc9szlJS2FmeQ3qf74wg2f5BstKqNDg1P9tz446iI
 1iIkJCVIGEDEgF844fs9rXugwYaeb7avoL0JUvWpEE/svy6ZEKqs+aLlIMxZbK5Y3mIn
 ahPMYmxzbCJUejgO/HfqKbQ4BI2Y4uYyQx8g/4dSCXy7Hmn2jUxAmTi/y/0K+uHfV7q+
 gn9v1nFNZwhdySS51sZP4HW1pVmS5KhXiHL4YdnKPpYpOe1les8SmotYviwlotjN1YpR
 i15Q==
X-Gm-Message-State: ANoB5pn5nhMCIVw5v28j1IuO8I5ZCIE+hRWatCkdx+6etyJXt9oczD2/
 IH44r5RgZMoIECj/6fLpGT0=
X-Google-Smtp-Source: AA0mqf4kR8A7riSdhezb8YYOVkRVEthmKJ6bKxK4dqCAk0UCWiR/wf0G3/1Me0wOdistxQAfpt17yw==
X-Received: by 2002:a17:902:82c3:b0:189:82da:7b63 with SMTP id
 u3-20020a17090282c300b0018982da7b63mr2667941plz.68.1669554626030; 
 Sun, 27 Nov 2022 05:10:26 -0800 (PST)
Received: from localhost.localdomain (124x33x176x97.ap124.ftth.ucom.ne.jp.
 [124.33.176.97]) by smtp.gmail.com with ESMTPSA id
 q17-20020a170902eb9100b00188a908cbddsm6710225plg.302.2022.11.27.05.10.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Nov 2022 05:10:25 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Sun, 27 Nov 2022 22:09:18 +0900
Message-Id: <20221127130919.638324-5-mailhol.vincent@wanadoo.fr>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221127130919.638324-1-mailhol.vincent@wanadoo.fr>
References: <20221122154934.13937-1-mailhol.vincent@wanadoo.fr>
 <20221127130919.638324-1-mailhol.vincent@wanadoo.fr>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Nov 2022 16:31:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OxNviUPHTCGHIw1xqWHS/MPtnV3RpWOBq4yIBMcYMgw=;
 b=aOwF2DGKnJ17bhHDKmrmab4OFrvr6sHKBHX0zow1gGQgrlsbBTABqy+qAAjNeapBBi
 yb0oyPbubMaIJKDGCsx7HqtkWHSdH9ZBdsyB9PZGDUQdbkxyTKkNN+cWCM0v4WrWG1N9
 5GhzU7ErOeK7tsJPw/fx8AMbH6lRhB8iHDer2Ljp0aDgSvQo7qduzkO/0o5BfTfPylbF
 ycN4pZpl0KRyAD8zSld/LV5tUYiMIZCDjyYI1W0yhJyCQQsM4ZheZmsjywOWoFBQ1Xia
 b4mJhjqUjyH4mGJXzWd1IYcfxm5kp8fAjOn7762fKoQJEfY/vocYjmi118FGpgnnXlyd
 ge/w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=aOwF2DGK
Subject: [Intel-wired-lan] [PATCH net-next v3 4/5] net: devlink: remove
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
2.37.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
