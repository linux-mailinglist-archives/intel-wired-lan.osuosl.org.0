Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B95F454D1E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Nov 2021 19:26:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D788405CE;
	Wed, 17 Nov 2021 18:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pj5r1BEB-fmv; Wed, 17 Nov 2021 18:26:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 06444405DE;
	Wed, 17 Nov 2021 18:26:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 470971BF309
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 18:26:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2FF6D81DD8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 18:26:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NByj1hw947Lb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Nov 2021 18:26:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B9F1C81D68
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 18:26:40 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7EB1661BC1;
 Wed, 17 Nov 2021 18:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637173600;
 bh=izROKGtj2qGswj8IP0BBhpttn4JyaHRA3FFLjvXH5II=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dY2SlZM5kOLoZwHT19k8dHtMl2WdlYpkOIi2kN8xtLC5ziMYIvzEW3pcnP2zJv8dB
 dr3gj+TdWXE5Q9mNY2HkTF0qifPOddZzMSHgcmnB/ayolP+YJQ5OfOsx7Bn8bFUK59
 nfJ4+LcbScXrGFTyuaH21nU7BOfKOKG2pkZ+ldUjl59xmDcBfb2VyQ1g0Ii8a/1sPV
 115SjaHlKE1ND4ScrMlQFwKxYI8jabrvbueATCiYMkKIwgu2Xh/kiIvU6HFm3HyVHY
 LbKwEzgbzvKyUubLQJvQ5XCD/TKvqWXE/6yzvf9rlkw6pRi+zDbYZHDkMaW8jLwlbH
 MWr0QZ5m69SbQ==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Wed, 17 Nov 2021 20:26:17 +0200
Message-Id: <cbca8d8874fe2dc9d7b13975705916907df90899.1637173517.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <cover.1637173517.git.leonro@nvidia.com>
References: <cover.1637173517.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 1/6] devlink: Remove misleading
 internal_flags from health reporter dump
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Simon Horman <simon.horman@corigine.com>, oss-drivers@corigine.com,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Leon Romanovsky <leonro@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rdma@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, Aya Levin <ayal@mellanox.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 UNGLinuxDriver@microchip.com, Taras Chornyi <tchornyi@marvell.com>,
 Shannon Nelson <snelson@pensando.io>, Saeed Mahameed <saeedm@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

DEVLINK_CMD_HEALTH_REPORTER_DUMP_GET command doesn't have .doit callback
and has no use in internal_flags at all. Remove this misleading assignment.

Fixes: e44ef4e4516c ("devlink: Hang reporter's dump method on a dumpit cb")
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 net/core/devlink.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/net/core/devlink.c b/net/core/devlink.c
index 5ba4f9434acd..1cb2e0ae9173 100644
--- a/net/core/devlink.c
+++ b/net/core/devlink.c
@@ -8838,8 +8838,6 @@ static const struct genl_small_ops devlink_nl_ops[] = {
 			    GENL_DONT_VALIDATE_DUMP_STRICT,
 		.dumpit = devlink_nl_cmd_health_reporter_dump_get_dumpit,
 		.flags = GENL_ADMIN_PERM,
-		.internal_flags = DEVLINK_NL_FLAG_NEED_DEVLINK_OR_PORT |
-				  DEVLINK_NL_FLAG_NO_LOCK,
 	},
 	{
 		.cmd = DEVLINK_CMD_HEALTH_REPORTER_DUMP_CLEAR,
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
