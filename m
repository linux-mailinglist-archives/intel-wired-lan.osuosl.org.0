Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3192C63ADCA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:32:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCAF6410B1;
	Mon, 28 Nov 2022 16:32:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCAF6410B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653155;
	bh=ohVdi/qRzRrp5nKbJ/V+4OiPJOXTFEhqTNjXm+DSJfQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a35pLeqcwtJC/Zfx8S9Ron0ay/cBLSbzf15bwg8uq0E0mLlpPj6AWioU5SOllUdfF
	 blJV1P1uX55tjDhSFi9YZxPeMf0VOtBKMNRuzL4z4mQy7yonrkHEAXvreaBjMVxc1D
	 /mBm6CZSupxsTsWD5CShbtOz1wUf/7ciOr6okc5JabrUT20ennuksyXHQ7hzZDtjek
	 43eV6eky2926T1FhoBzEyx3dtXgOugj1foVHTKt7NQxSk6fsfwYoKL9dBj+iOsqNXc
	 Dr9Lvjn1VG44j045ns7whPSZ8iuESXX3bXcRLgmXZFdt8dlh0q7uEB7IBX3vQ7PgyU
	 zxZkDBJPLy3Zw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c-3UY0KoANoW; Mon, 28 Nov 2022 16:32:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BC11410C1;
	Mon, 28 Nov 2022 16:32:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BC11410C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BA13A1BF42C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 13:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 939EF400D0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 13:10:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 939EF400D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aNhwSKlRcMoI for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Nov 2022 13:09:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1FDF400B8
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B1FDF400B8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 13:09:58 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id w23so7792504ply.12
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 05:09:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=0ZsXPiwPOVu7JihBSzIX9RMliHJg1zhwJcyiOwYn5LE=;
 b=cPo8ZeV98cjivGN222YRG3+jrLs4jUapoqNYRKl53hoLFGjlu3fHT40C9GqNHBSSm3
 ynJ+iuvkVrC4WIPHdblXYxsk6IPYmvJORDCG+pW9ncfB8lYhQNF5a2TUT8UlEzf33DOD
 6B7MwU3NSE7HTdl/r88YIJV9Whw9IAXXe2HNECCOgUkEU3aXwzIvYRj9IdZk4pdn9Rvc
 eiIo/WMDOaOXIIJs8Mh7LSNo/BUlkqA0aJaaJcW2C/h2dLJ+vLxfvw1kK3J7Ic1ePa/0
 Idcfh0Rl0HctEv7J8Deshu52L4MDtAfd8Pi+HfxZBwi/2DKmtdXP0SsYyy05uEX8qOrI
 WuiQ==
X-Gm-Message-State: ANoB5pmwdVY8FXRdOIrPPm9C05AoxuMemKcV8LT7+knlp9QM9TdlcPRv
 SJ8SqzEo2af0D3WTniavBI0=
X-Google-Smtp-Source: AA0mqf4V5hYar5riUHM4zUSas46jIem/YoPjekB9ahNyuLrurPdoxj2NAgRwb39fvA5BSY7GOsR6oA==
X-Received: by 2002:a17:902:c946:b0:186:99e3:c079 with SMTP id
 i6-20020a170902c94600b0018699e3c079mr27225014pla.149.1669554597977; 
 Sun, 27 Nov 2022 05:09:57 -0800 (PST)
Received: from localhost.localdomain (124x33x176x97.ap124.ftth.ucom.ne.jp.
 [124.33.176.97]) by smtp.gmail.com with ESMTPSA id
 q17-20020a170902eb9100b00188a908cbddsm6710225plg.302.2022.11.27.05.09.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Nov 2022 05:09:57 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Sun, 27 Nov 2022 22:09:15 +0900
Message-Id: <20221127130919.638324-2-mailhol.vincent@wanadoo.fr>
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
 bh=0ZsXPiwPOVu7JihBSzIX9RMliHJg1zhwJcyiOwYn5LE=;
 b=KwJMKBZedewWTw2AYgadSrDQJh5K2xX0zFcZDpqAsOMhznSyUoNmuTIG+/DMG+evxd
 SWjXdQyeXnwoGbQxFBekzMnAuZDeV5dSl6PwXdzNzkb45jJC+8K8j1myIffH6fmXqzE3
 VD9cUWqGlAKdzpnDikGQXNMNPVdY1yUGugFJ++7CmRhP3fL1HlIZt/1ZEZ5ckPpLnUX4
 6ilBV0dhoGa07b8xjMJF+WXsiYuOyZWIXmI7s1/BOHDSbh7Lg2QWkKv9LFnFFwnFVePN
 MTRBsE53vqKkTMGHNPRmiWsiVIugI8n+Gy9030V7S3QGpwQiMsjepWBhiYHOz2O8OfYb
 65Hg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=KwJMKBZe
Subject: [Intel-wired-lan] [PATCH net-next v3 1/5] mlxsw: minimal: fix
 mlxsw_m_module_get_drvinfo() to correctly report driver name
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
 Ido Schimmel <idosch@mellanox.com>, Jiri Pirko <jiri@mellanox.com>,
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

Currently, mlxsw_m_module_get_drvinfo() reports the device_kind. The
device_kind is not necessarily the same as the device_name. For
example, the mlxsw_i2c implementation sets up the device_kind as
ic2_client::name in [1] which indicates the type of the device
(e.g. chip name), not the actual driver name.

Fix it so that it correctly reports the driver name.

[1] mlxsw_i2c_probe() from drivers/net/ethernet/mellanox/mlxsw/i2c.c
Link: https://elixir.bootlin.com/linux/v6.1-rc1/source/drivers/net/ethernet/mellanox/mlxsw/i2c.c#L714

Fixes: 9bbd7efbc055 ("mlxsw: i2c: Extend initialization with querying firmware info")
CC: Shalom Toledo <shalomt@mellanox.com>
CC: Ido Schimmel <idosch@mellanox.com>
CC: Vadim Pasternak <vadimp@mellanox.com>
Signed-off-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
---
 drivers/net/ethernet/mellanox/mlxsw/minimal.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlxsw/minimal.c b/drivers/net/ethernet/mellanox/mlxsw/minimal.c
index 6b56eadd736e..9b37ddbe0cba 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/minimal.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/minimal.c
@@ -92,7 +92,7 @@ static void mlxsw_m_module_get_drvinfo(struct net_device *dev,
 	struct mlxsw_m_port *mlxsw_m_port = netdev_priv(dev);
 	struct mlxsw_m *mlxsw_m = mlxsw_m_port->mlxsw_m;
 
-	strscpy(drvinfo->driver, mlxsw_m->bus_info->device_kind,
+	strscpy(drvinfo->driver, dev_driver_string(dev->dev.parent),
 		sizeof(drvinfo->driver));
 	snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
 		 "%d.%d.%d",
-- 
2.37.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
