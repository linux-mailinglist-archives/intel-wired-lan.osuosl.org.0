Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 093A663ADC4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:32:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92A9B60C2D;
	Mon, 28 Nov 2022 16:32:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92A9B60C2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653131;
	bh=9siVnbbobq5oMQF5rMqVsUcHBe9xwp8nXT/PFOM/zsQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=34rLRirKyRnZrSkxjKOrEcenHz9s5nluR3Nmp8lrDV6gRmHfR9Hn4IOnN/xvQGqqT
	 DWNJ+oElPnBxV0rtKeAYS/WsbLLzJPxfYwznoXQ4+BSEDLTrbEF2UBhJSeMVv525jQ
	 /kfbxrb5K7PChw+0lvpnRwvNidefhL+BC9iDEdvsEFG28McXdL3DvhEYU2Opw0okFu
	 4RdfbzLqhpw3S9avHDrzcnHIaRjYf/sUWXx8tG93vcsQlmdYwf2nzVNeTA7+yci+NK
	 wWBNbGYhUv/RiXA3xHmyS3GKfTO/aQQ8kymqFoP5nTwdBV7oZPCq8xVhc7JNSsGbKe
	 PijmRlr+gIOhg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6-uK8k9gpI2R; Mon, 28 Nov 2022 16:32:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8C7960C2E;
	Mon, 28 Nov 2022 16:32:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8C7960C2E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA35D1BF470
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 08:16:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8200140292
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 08:16:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8200140292
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l08RKwnXe7H5 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Nov 2022 08:16:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF98B400D2
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF98B400D2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 08:16:38 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id p12so7506190plq.4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 00:16:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=O3+WXaZIvwYScbYyJSTwVsoviigX0ePJBx5g3Z25JEw=;
 b=GrfDwZahdQPAujmJJ1Y5RAY7mNoWCs6PRMIMfD+mdCyWYcslkVhpyUKwxnpckYC0O9
 M/UiLkBHJIMbjhs8hcvuHcJq2dGaEdjlPLjPnxsYuLU+4wrYq3ZZXZGbFogFpNYLDCTc
 +QjZCt1k5DIgqpEJ4qD5qEuvF7j4iCA9BG/jRvplL0iNFpm83YGDQGB12b9ujoaPZ06a
 zIJEAyFYaK9ye+J0HRPngOmssdFbtHOirpWoVjfnKUEWos2Xl39PIF6+JW1ax7WGQpmZ
 Bojnmrw26OcrI5SsJi5PftR/uj11nph6ADRxmCUVTA+5aSgAlvWWblF1mV231NU/vsym
 E8iw==
X-Gm-Message-State: ANoB5pm5DVMDS4HPYFO/kMqd5UvnkAQtWdW0HtKpMZLtNjJT6/4xEanv
 MqMq3+LRskuoCS3CO8XpkAk=
X-Google-Smtp-Source: AA0mqf72PtiKgQCQ5U/TWFIjiYeil/wnUg9CH++1HBOr4Nodobp5EzgkVDru4n4Du1IhGRoQuwhBwQ==
X-Received: by 2002:a17:902:a601:b0:189:8001:b54f with SMTP id
 u1-20020a170902a60100b001898001b54fmr3122555plq.37.1669536998039; 
 Sun, 27 Nov 2022 00:16:38 -0800 (PST)
Received: from localhost.localdomain (124x33x176x97.ap124.ftth.ucom.ne.jp.
 [124.33.176.97]) by smtp.gmail.com with ESMTPSA id
 a3-20020aa794a3000000b00572c12a1e91sm5799915pfl.48.2022.11.27.00.16.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Nov 2022 00:16:37 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Sun, 27 Nov 2022 17:16:00 +0900
Message-Id: <20221127081604.5242-2-mailhol.vincent@wanadoo.fr>
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
 bh=O3+WXaZIvwYScbYyJSTwVsoviigX0ePJBx5g3Z25JEw=;
 b=SzYATP/WvbrMPMeCmP13X7/vxMj9pdZXQOcaUDB61TKbTZD2j/3L/fcK89A5FdCNDB
 beyDVDaBw/Orpqr9oVtEOHrXHffe1lMYorIUUfNX5wisADjYBwBjvKLDRWltJ3iM7hGt
 j6Ur3plBe2qiKKzLGyyDNF+6c69LNJtw7woa6EkXwcKvuIrhq7Y4ppByK3LgaRHtOElv
 bhvswFat/v3oISyh03365opnwQRRkaFlOyEuoXaVpXik0GGSz4BDtvTVsiq4VpaIJhnp
 lwY7CoBZ/q3hW/AwPaE6a+gzbEea+cRSlAljPpT4rOCTjblu21Mg12GI2G+XlzIforVh
 Ya3g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=SzYATP/W
Subject: [Intel-wired-lan] [PATCH net-next v2 1/5] mlxsw: minimal: fix
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

Currently, mlxsw_m_module_get_drvinfo() reports the device_kind. The
device_kind is not necessarily the same as the device_name. For
example, the mlxsw_i2c implementation sets up the device_kind as
ic2_client::name in [1] which indicates the type of the device
(e.g. chip name), not the actual driver name.

Fix it so that it correctly reports the driver name.

[1] https://elixir.bootlin.com/linux/v6.1-rc1/source/drivers/net/ethernet/mellanox/mlxsw/i2c.c#L714

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
