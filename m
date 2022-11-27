Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F7A63ADC5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:32:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 773E360C23;
	Mon, 28 Nov 2022 16:32:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 773E360C23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653135;
	bh=ID7BkEE7eU804EtlrdTJmi4Ba/kVlYaUs/hgD8aTmZA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0EOhFe1Hu9LzgwjOnjdJ4MOZA/epDsKZi2sU0ptoqsgiPnMgc2181HJf/5sYKqBCQ
	 6ovjafXATAV08WozArKi32Wrlt3DGSFDNQw7jOSBv2xqAlKXDwVXbWe677ilRio6nX
	 UOeyc5jCDo9fG2QT+Mdz5URfEYCGirq3uaWrUj5w1nGQMLQa6Y3ybqkWeg1FVmI9/C
	 m79iOT3jdP1dCaP/fcgBkDXac4i+vr0I1oXovzxEmW61415BdNMiW++AnLstrfD5Up
	 HW9hMAYvFeKhXb0J+9ZCLj5FR1R+pOkIjm5GGZa1w4HzFx9iAvCbb5gyM4Tx7KNmiM
	 fm31Zm6Qw40Ag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8XIIV4QNmlIw; Mon, 28 Nov 2022 16:32:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82C4E60BF3;
	Mon, 28 Nov 2022 16:32:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82C4E60BF3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 58F3A1BF470
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 08:16:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 40864415EF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 08:16:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40864415EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UpwUw6cF-THw for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Nov 2022 08:16:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2608C415E5
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2608C415E5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 08:16:47 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id j12so7498287plj.5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 00:16:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=uaOXK+3zj1VRT6U3g5h3Ky+R8tcH0ZCUYvy33QfB7vM=;
 b=o5eWIUrxVpBiZm0vW+bpOJ7jPRZJmqRGV7gkV5WAj9C9L9rb1/pxJ3zn3KTYVo8M7R
 w6oMGbTBPRu8RiZEWSJhVox5S6/RPXJJvbLr1NMU28T7Am5qv30sji3xW7CwEOHyB22n
 ICkfnd3qTnwaEy5j405g39eMDPLfHgDeU4GjuKJwOq9HsoozoQXAkE4FwXPyTvNOXCZI
 S9sWHicKASZXAORu2JhBLly5bjLl3yV+NrySh2v6/HrqsNs4a2iGAX0nKFNOdsakL4Zg
 zY/Xv5gPxaNXhybW+kRUfqnn9NZPl0dD18dDCODwY+tZRQndXdZNLbfS9RjNmIevm40h
 YNoQ==
X-Gm-Message-State: ANoB5pmzYclK9VlhdT1BMDlq/+6+bfAjLRWZoZAwI3mpe6niMGoUxScm
 ylA5D/WPwNiR3LRiyzukcTM=
X-Google-Smtp-Source: AA0mqf5VHz3WzW4yABHf3SMGky4I1aN6x5psCE6vYqJXlVtP74c71tuH5yn2LW5vSPh7UnwtWVA+Cg==
X-Received: by 2002:a17:902:a989:b0:188:d6c7:e7b7 with SMTP id
 bh9-20020a170902a98900b00188d6c7e7b7mr26560851plb.16.1669537006426; 
 Sun, 27 Nov 2022 00:16:46 -0800 (PST)
Received: from localhost.localdomain (124x33x176x97.ap124.ftth.ucom.ne.jp.
 [124.33.176.97]) by smtp.gmail.com with ESMTPSA id
 a3-20020aa794a3000000b00572c12a1e91sm5799915pfl.48.2022.11.27.00.16.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Nov 2022 00:16:46 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Sun, 27 Nov 2022 17:16:01 +0900
Message-Id: <20221127081604.5242-3-mailhol.vincent@wanadoo.fr>
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
 bh=uaOXK+3zj1VRT6U3g5h3Ky+R8tcH0ZCUYvy33QfB7vM=;
 b=ifVBNcP32bWIkNZkPVHGPmhBD7EYsQ8f4oy3RqHII0Z8/SwDG7tbP1hOmyJ+RX9RWI
 +N1FmQkYpl9q5DzO6JWt26CrMNcA3QOT//FHn0TOSL3knf4EikL7CxKVhwKVfjlgUtZd
 bsFIK5/jXRJxZiCHv7tBPt97OljhUlcunJpoBbiTCWh2K4hyRsXe6CiTBPh56QmLhfZa
 gtq/OFeQVdLsfUArQRaYV/NLO1dUjVVPF5eJgZF4McINAxYOpoDRZD+TfkHPlBnn6UkN
 fHI0f3jrLJ4rVz3Y6pyWc7bgIIK5+ilcWDWno5TduNkmqv0mhNEvphXo3O7C7k63cMvA
 AsrA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ifVBNcP3
Subject: [Intel-wired-lan] [PATCH net-next v2 2/5] mlxsw: core: fix
 mlxsw_devlink_info_get() to correctly report driver name
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
 Ido Schimmel <idosch@mellanox.com>, Michael Chan <michael.chan@broadcom.com>,
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

Currently, mlxsw_devlink_info_get() reports the device_kind. The
device_kind is not necessarily the same as the device_name. For
example, the mlxsw_i2c implementation sets up the device_kind as
ic2_client::name in [1] which indicates the type of the device
(e.g. chip name).

Fix it so that it correctly reports the driver name.

[1] https://elixir.bootlin.com/linux/v6.1-rc1/source/drivers/net/ethernet/mellanox/mlxsw/i2c.c#L714

Fixes: a9c8336f6544 ("mlxsw: core: Add support for devlink info command")
CC: Shalom Toledo <shalomt@mellanox.com>
CC: Ido Schimmel <idosch@mellanox.com>
CC: Vadim Pasternak <vadimp@mellanox.com>
Signed-off-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
---
 drivers/net/ethernet/mellanox/mlxsw/core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlxsw/core.c b/drivers/net/ethernet/mellanox/mlxsw/core.c
index a83f6bc30072..d8b1bb03cdb0 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/core.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/core.c
@@ -1453,6 +1453,7 @@ mlxsw_devlink_info_get(struct devlink *devlink, struct devlink_info_req *req,
 		       struct netlink_ext_ack *extack)
 {
 	struct mlxsw_core *mlxsw_core = devlink_priv(devlink);
+	struct device *dev = mlxsw_core->bus_info->dev;
 	char fw_info_psid[MLXSW_REG_MGIR_FW_INFO_PSID_SIZE];
 	u32 hw_rev, fw_major, fw_minor, fw_sub_minor;
 	char mgir_pl[MLXSW_REG_MGIR_LEN];
@@ -1460,7 +1461,7 @@ mlxsw_devlink_info_get(struct devlink *devlink, struct devlink_info_req *req,
 	int err;
 
 	err = devlink_info_driver_name_put(req,
-					   mlxsw_core->bus_info->device_kind);
+					   dev_driver_string(dev->parent));
 	if (err)
 		return err;
 
-- 
2.37.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
