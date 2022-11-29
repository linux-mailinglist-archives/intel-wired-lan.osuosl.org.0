Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B799363B652
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 01:07:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA2A1416D9;
	Tue, 29 Nov 2022 00:07:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA2A1416D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669680424;
	bh=we5ivTUoi1J9go5Gq+oDUSYE4GwO6/HKh3clLFy19qc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2xbS/3EAHHIatLj30Tk2w4wriYdW1nLSxFprACKKQuC3hBbbK19H2OO0DSAhSICAr
	 3zcU8PhkVRK0HQH5GXS6aco4dnsx57NnjcqkbWL2Q+PpF8G9QziVciRwAD5nuhpxLt
	 cPXKJBxQD4jbh3gSXzXGUryamCxqsmy8B3ADKv0RsgYMullTglJUGbt0Agb7X9flV5
	 fEd1HqK25ZC2aqh3um08nE1gNc9qF7pSKz6Zmbf7wdF0v13VQLD8itsqu3iw/XikpL
	 8NJf6g5PXeK1D5cW1HBFO5CMaXrbhhN/peEsGTjn3HSfCgZVi704Sj8aRKeuHlKTRX
	 56/wVdvQpY/Zw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lGB4qFb0fKot; Tue, 29 Nov 2022 00:07:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A141416C8;
	Tue, 29 Nov 2022 00:07:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A141416C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 99C251BF34B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:06:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 81E7540A8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:06:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81E7540A8B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CbE-y89trnHL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 00:06:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB1E3401A2
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EB1E3401A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:06:39 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 hd14-20020a17090b458e00b0021909875bccso165894pjb.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 16:06:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=DiKBx41kPdklVq60u1rvSJT+pX4e/ZYzQPE8Kx535cw=;
 b=afjpZC87R3J+0egXK6ZKSfoMVGt/LybXtkRMqxJlSf3VqIQ1ZRC4HEzpjBldoMycqS
 k9jwylgZN6pp6ml9ysnV1OPcBpNRNAzeOulmc5Qq/oohm0/NrAZtAcXvl2N/RYE3FV7t
 KlgXyNXZFozhcgZL07UNXw6l7mvgapCnQiMrY3iPiqukMlpYrpncrFdRreM5MndpnLu+
 QuO+X5JZrirxmGFYKhiY0Eq7L6XmK6dpxEsoW7CPT5KitmdBqOa3Qnol5FoHdHhwfmLI
 6ek649gqDz/mxKZWepJnLhoHhlpnh+NKK0ltiMYpzMg/XraR0oI9jkWn1L1KEeHUQncX
 7U6w==
X-Gm-Message-State: ANoB5pmhgpnO//MgjbwQJiqgTuFaaVZxdzlTydPjazPka08ObBfFOl2X
 /3uPQLe1SamH5sN2HKC0rOA=
X-Google-Smtp-Source: AA0mqf7NWa4KQ4nPAzCG7HfcheFPSyelxCkNDpoEQT4zt9ZPHHQI1VJ4G1srcs2lK8zDtdNBf9YxiA==
X-Received: by 2002:a17:903:40c5:b0:186:738e:5703 with SMTP id
 t5-20020a17090340c500b00186738e5703mr46684785pld.136.1669680399242; 
 Mon, 28 Nov 2022 16:06:39 -0800 (PST)
Received: from XH22050090-L.ad.ts.tri-ad.global ([103.175.111.222])
 by smtp.gmail.com with ESMTPSA id
 r2-20020aa79ec2000000b00572198393c2sm8588147pfq.194.2022.11.28.16.06.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Nov 2022 16:06:38 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Tue, 29 Nov 2022 09:05:50 +0900
Message-Id: <20221129000550.3833570-5-mailhol.vincent@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129000550.3833570-1-mailhol.vincent@wanadoo.fr>
References: <20221129000550.3833570-1-mailhol.vincent@wanadoo.fr>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Nov 2022 00:06:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DiKBx41kPdklVq60u1rvSJT+pX4e/ZYzQPE8Kx535cw=;
 b=cuYXqB47/KfnW4v14eUYsIp/vJ4Xx7KNP3dVstFmdoO9bHZ630CWx03yYvrh492DjD
 FHeaIW3sEwLURX7kvf2KKh9YFyW0Rpkd0OyiwVta4kAuxLqd0kdoduja3BGgFNO2CED4
 V8vA6wK1ORYrSrV6VmUkU78b1OpyleUkYtxV6kfMtdZipam2QQR61cq/aMpkP97Alntx
 TnxPvdz5jPlV1RrFK5ZN+5lWIg/nkoGelr3V4jDtYFTChnHIhGEBRPnVGIV6sC7xaHmV
 JuzQ11I+cJKSJ5zwhIOR5LlOGBOD7ygXObJwKMmdjz1hS8pEHL4d9/WDR16T6EyY/pU+
 DWgQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=cuYXqB47
Subject: [Intel-wired-lan] [PATCH net-next v5 4/4] net: devlink: clean-up
 empty devlink_ops::info_get()
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

devlink_ops::info_get() is now optional and devlink will continue to
report information even if that callback gets removed.

Remove all the empty devlink_ops::info_get() callbacks from the
drivers.

Signed-off-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
---
 drivers/net/ethernet/fungible/funeth/funeth_devlink.c     | 7 -------
 drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c   | 7 -------
 drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c | 8 --------
 3 files changed, 22 deletions(-)

diff --git a/drivers/net/ethernet/fungible/funeth/funeth_devlink.c b/drivers/net/ethernet/fungible/funeth/funeth_devlink.c
index 6668375edff6..4fbeb3fd71a8 100644
--- a/drivers/net/ethernet/fungible/funeth/funeth_devlink.c
+++ b/drivers/net/ethernet/fungible/funeth/funeth_devlink.c
@@ -3,14 +3,7 @@
 #include "funeth.h"
 #include "funeth_devlink.h"
 
-static int fun_dl_info_get(struct devlink *dl, struct devlink_info_req *req,
-			   struct netlink_ext_ack *extack)
-{
-	return 0;
-}
-
 static const struct devlink_ops fun_dl_ops = {
-	.info_get = fun_dl_info_get,
 };
 
 struct devlink *fun_devlink_alloc(struct device *dev)
diff --git a/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c b/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
index f15439d26d21..bda1a6fa2ec4 100644
--- a/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
+++ b/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
@@ -1547,14 +1547,7 @@ static int rvu_devlink_eswitch_mode_set(struct devlink *devlink, u16 mode,
 	return 0;
 }
 
-static int rvu_devlink_info_get(struct devlink *devlink, struct devlink_info_req *req,
-				struct netlink_ext_ack *extack)
-{
-	return 0;
-}
-
 static const struct devlink_ops rvu_devlink_ops = {
-	.info_get = rvu_devlink_info_get,
 	.eswitch_mode_get = rvu_devlink_eswitch_mode_get,
 	.eswitch_mode_set = rvu_devlink_eswitch_mode_set,
 };
diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c
index 5cc6416cf1a6..63ef7c41d18d 100644
--- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c
+++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c
@@ -77,15 +77,7 @@ static const struct devlink_param otx2_dl_params[] = {
 			     otx2_dl_mcam_count_validate),
 };
 
-static int otx2_devlink_info_get(struct devlink *devlink,
-				 struct devlink_info_req *req,
-				 struct netlink_ext_ack *extack)
-{
-	return 0;
-}
-
 static const struct devlink_ops otx2_devlink_ops = {
-	.info_get = otx2_devlink_info_get,
 };
 
 int otx2_register_dl(struct otx2_nic *pfvf)
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
