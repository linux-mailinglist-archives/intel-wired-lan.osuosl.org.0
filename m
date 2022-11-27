Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E437363ADCB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:32:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8693060C09;
	Mon, 28 Nov 2022 16:32:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8693060C09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653159;
	bh=Lk39P8BlixSUtfyHw9U8IYJQn99J+PMs22lppMFBK4o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PajBnhZySO0HBFOCSWlQu8xeYYa+TR5Ld+xNYH7xTlQS97dikrBGMR7dJWc4MMFYC
	 bV8x/CnVWWemfEwfkWZu70KHzan1LlVAFkeOq1ve8uiwyF57ghAHTWNEtiEU5/omZa
	 0+H142li9XFmdy7PLL1mSVps65YYjCqgDYgY4KoDspbriI1reprRsnFLzWZmbJ3W2k
	 exn/etoSdxgkLYBF7fdlS6QdYfiF5HP44lHLPJTIRF6FUCGLwL7+sya3PZ+nDiK4n/
	 rnps0hXS124/hAloH/1Dwpb4fr3fMSVQzPH5bO6SFaoaXy8jAdHUSd0T2kQ2NNazdV
	 A5lYa/6Yuqv+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hu81xRAhE4nc; Mon, 28 Nov 2022 16:32:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64A3560B69;
	Mon, 28 Nov 2022 16:32:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64A3560B69
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E0791BF42C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 13:10:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 295AF400D0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 13:10:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 295AF400D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QmaS-5W5Z7h0 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Nov 2022 13:10:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 479A6400B8
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 479A6400B8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 13:10:08 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id d3so2821454plr.10
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 05:10:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=IvGCayvT1wrZ4HfMEpEiFtD2YHJkr4R5tohql3dWU+g=;
 b=G+E6hGHIWNcLNmjCvjYqDs1VE30x1Sy5WZIqUzKiS0dqln5YFQMdTrK4INT0v0AO1f
 YSeWi1LZc4z4i6V9EAoAv1YSQGJ4njEvJMD7x+nS2cKTjgpeeCmmWQnR8jxVBAp85YRD
 t+w64roRtphsYfzehF9n96AF8RKWJVCyNNO03MA3UR4NbNZyWNWHzhfpzBT81InOCdAQ
 xDbhEEydKL/MvS8F/l3jh51H6jGjmGTgtq3auI9J8HL5VPC/hRIo5b2mAzQPtkOWmGjH
 erOxD3XRdgthIl2xWtgSj7lA8g00SQd6mmaahAikzquazblHVk4P9o1sryqaFq+BQV6v
 Urrg==
X-Gm-Message-State: ANoB5pmRPMMIPZury2p6rRstuJgknEs2Tg2HBS3R28rSh4NdcLe6Z0TT
 emUk4uYH6t3Jq8Jnis37WWg=
X-Google-Smtp-Source: AA0mqf4Dk9WPi4BLnpif8989C+H6hbvudTv8XZdKjK1ZGzmT2xqFwp6N/1Exmp8XwVBk2OfSw25ClQ==
X-Received: by 2002:a17:902:bd42:b0:186:9c2b:3a39 with SMTP id
 b2-20020a170902bd4200b001869c2b3a39mr27661689plx.115.1669554607585; 
 Sun, 27 Nov 2022 05:10:07 -0800 (PST)
Received: from localhost.localdomain (124x33x176x97.ap124.ftth.ucom.ne.jp.
 [124.33.176.97]) by smtp.gmail.com with ESMTPSA id
 q17-20020a170902eb9100b00188a908cbddsm6710225plg.302.2022.11.27.05.09.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Nov 2022 05:10:07 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Sun, 27 Nov 2022 22:09:16 +0900
Message-Id: <20221127130919.638324-3-mailhol.vincent@wanadoo.fr>
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
 bh=IvGCayvT1wrZ4HfMEpEiFtD2YHJkr4R5tohql3dWU+g=;
 b=okN2Y2Wp7abBRiLot6BlIxc1Ou6BKAOMwsBvM79Xvllqiid1BUG0KMPKC4bevz4q2H
 tq5wRTNFFIyS2e6tTU3EJV6YKxM9EGMBvptMol6Pmsxhao7cpfMiUTmA9PugCdmNdw7D
 znImuKAaIX2KbwZ2XzxsYHHq4SpvK5pr1XJBUGvw91oyBM0fmkb6X43l928wk/xYHTjH
 drGGgiaq5PtjtzWMNHF5VFYiKFLThDobS9OFD+MRAQPlRcNny9blkw1FE303IRT8o9na
 qnuvBldQ85CXRfGWKnpuhOHD60T5bCcqv4Uy/F1YpvFE8+GUm678yM00qar2D76JCa5Z
 dFCQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=okN2Y2Wp
Subject: [Intel-wired-lan] [PATCH net-next v3 2/5] mlxsw: core: fix
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

Currently, mlxsw_devlink_info_get() reports the device_kind. The
device_kind is not necessarily the same as the device_name. For
example, the mlxsw_i2c implementation sets up the device_kind as
ic2_client::name in [1] which indicates the type of the device
(e.g. chip name).

Fix it so that it correctly reports the driver name.

[1] mlxsw_i2c_probe() from drivers/net/ethernet/mellanox/mlxsw/i2c.c
Link: https://elixir.bootlin.com/linux/v6.1-rc1/source/drivers/net/ethernet/mellanox/mlxsw/i2c.c#L714

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
