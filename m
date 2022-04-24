Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E0450D199
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Apr 2022 14:10:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DC74819F3;
	Sun, 24 Apr 2022 12:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C03m1ykECBE6; Sun, 24 Apr 2022 12:10:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 519B1819F6;
	Sun, 24 Apr 2022 12:10:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA84F1BF402
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 12:10:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B723B818D7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 12:10:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 41LVQdYCJKMq for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Apr 2022 12:10:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D6C77819F3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 12:10:06 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id s21so2478367wrb.8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 05:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kMsrPopqXyKvjj6ADtV/e3/sJqjPNnfQay4OisloMYc=;
 b=G1NNAqa9Af1R4e+iYq/k9TLDn34NKa+zwVDQ56afqH335EQ42AUrhuX2rB+ybjDpDq
 /kZYqx7nmUAi0wrUmhwa5TBh5Yqqicn5BVBrolEzH5UsO4R9s/mlbXwvf2YrNebaU6V7
 QrzVt/ZDKDEnYpQ5Mo8HhonNLASsrCKROmZ41PoiVdYtcQojB/K4pdoI98hge2gAGwHd
 nSt77fn9VjDjDmkddV360nPYZxLIzX2Tg84JP3aEclHl73m/8Ei1XWUa9iKGsvVCcTkH
 LXZT25JCGUlbOfPAtHyEgrGyV1zrhhEUVXbqS7iWfrNrvvz/eBeAg6UV/ai7yXj7dwtD
 CbaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kMsrPopqXyKvjj6ADtV/e3/sJqjPNnfQay4OisloMYc=;
 b=ISqGiF0fnQxrh+p8NeNn4B9HEIE28tGtOhbY/o6Na++r4SVRWOwGAQNd2E7PPI4HPz
 WiLSHXZACMT8kQW8QjgWobc+TV2kz/4S1bLbWmKnpSfKVsWk7iaclCuwEx/86D/q1aGX
 +TIq5pq35sDkoBKtW6jF3QwGMHCLcviGJRwm/DcucForW3njSOjUS9h7orjtwnHruk2D
 ckZg7X3uqgjcsGPtmVWNknHY2etG3KsXJCjPPNlEs9TnlhjXnd/LPvbiXN5ZGzQe1BId
 5mjC5C85FdSgkdzAkoxJLwu4wEcB+LAMaxiS4y8w55lN95dm0zJ5hifh1J1YWhfePDo1
 99Aw==
X-Gm-Message-State: AOAM533JLwX0dQNLfEvHzokmQmKcxugpgUQlVpKoc91D4xuEi8UlkqDL
 BXv+QZzIZ9uZVmelVWfOrPFTlZeaNQl65A==
X-Google-Smtp-Source: ABdhPJzN0XK82EJGnpmBD6Aw/R5DjFt3ttHuCFQExkPKkZ+QNRqdno2HCbWpBsbHz04CrC6TCgyxAA==
X-Received: by 2002:a05:6000:156c:b0:20a:8397:6d28 with SMTP id
 12-20020a056000156c00b0020a83976d28mr10215309wrz.363.1650802205019; 
 Sun, 24 Apr 2022 05:10:05 -0700 (PDT)
Received: from alaa-emad ([197.57.78.84]) by smtp.gmail.com with ESMTPSA id
 q3-20020adfab03000000b0020ad57b8ddesm3091466wrc.101.2022.04.24.05.10.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Apr 2022 05:10:04 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Date: Sun, 24 Apr 2022 14:09:45 +0200
Message-Id: <0d09ad611bb78b9113491007955f2211f3a06e82.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 2/2] net: vxlan: vxlan_core.c:
 Add extack support to vxlan_fdb_delete
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
Cc: eng.alaamohamedsoliman.am@gmail.com, shshaikh@marvell.com,
 jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com, manishc@marvell.com,
 alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 vladimir.oltean@nxp.com, razor@blackwall.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, claudiu.manoil@nxp.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, UNGLinuxDriver@microchip.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add extack to vxlan_fdb_delete and vxlan_fdb_parse

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
changes in V2:
	- fix spelling vxlan_fdb_delete
	- add missing braces
	- edit error message
---
changes in V3:
	fix errors reported by checkpatch.pl
---
 drivers/net/vxlan/vxlan_core.c | 36 +++++++++++++++++++++++-----------
 1 file changed, 25 insertions(+), 11 deletions(-)

diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index cf2f60037340..4e1886655101 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1129,19 +1129,23 @@ static void vxlan_fdb_dst_destroy(struct vxlan_dev *vxlan, struct vxlan_fdb *f,

 static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 			   union vxlan_addr *ip, __be16 *port, __be32 *src_vni,
-			   __be32 *vni, u32 *ifindex, u32 *nhid)
+			   __be32 *vni, u32 *ifindex, u32 *nhid, struct netlink_ext_ack *extack)
 {
 	struct net *net = dev_net(vxlan->dev);
 	int err;

 	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
-	    tb[NDA_PORT]))
-		return -EINVAL;
+	    tb[NDA_PORT])){
+			NL_SET_ERR_MSG(extack, "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
+			return -EINVAL;
+		}

 	if (tb[NDA_DST]) {
 		err = vxlan_nla_get_addr(ip, tb[NDA_DST]);
-		if (err)
+		if (err){
+			NL_SET_ERR_MSG(extack, "Unsupported address family");
 			return err;
+		}
 	} else {
 		union vxlan_addr *remote = &vxlan->default_dst.remote_ip;

@@ -1157,24 +1161,30 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 	}

 	if (tb[NDA_PORT]) {
-		if (nla_len(tb[NDA_PORT]) != sizeof(__be16))
+		if (nla_len(tb[NDA_PORT]) != sizeof(__be16)){
+			NL_SET_ERR_MSG(extack, "Invalid vxlan port");
 			return -EINVAL;
+		}
 		*port = nla_get_be16(tb[NDA_PORT]);
 	} else {
 		*port = vxlan->cfg.dst_port;
 	}

 	if (tb[NDA_VNI]) {
-		if (nla_len(tb[NDA_VNI]) != sizeof(u32))
+		if (nla_len(tb[NDA_VNI]) != sizeof(u32)){
+			NL_SET_ERR_MSG(extack, "Invalid vni");
 			return -EINVAL;
+		}
 		*vni = cpu_to_be32(nla_get_u32(tb[NDA_VNI]));
 	} else {
 		*vni = vxlan->default_dst.remote_vni;
 	}

 	if (tb[NDA_SRC_VNI]) {
-		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32))
+		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32)){
+			NL_SET_ERR_MSG(extack, "Invalid src vni");
 			return -EINVAL;
+		}
 		*src_vni = cpu_to_be32(nla_get_u32(tb[NDA_SRC_VNI]));
 	} else {
 		*src_vni = vxlan->default_dst.remote_vni;
@@ -1183,12 +1193,16 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 	if (tb[NDA_IFINDEX]) {
 		struct net_device *tdev;

-		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32))
+		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32)){
+			NL_SET_ERR_MSG(extack, "Invalid ifindex");
 			return -EINVAL;
+		}
 		*ifindex = nla_get_u32(tb[NDA_IFINDEX]);
 		tdev = __dev_get_by_index(net, *ifindex);
-		if (!tdev)
+		if (!tdev){
+			NL_SET_ERR_MSG(extack,"Device not found");
 			return -EADDRNOTAVAIL;
+		}
 	} else {
 		*ifindex = 0;
 	}
@@ -1226,7 +1240,7 @@ static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 		return -EINVAL;

 	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
-			      &nhid);
+			      &nhid, extack);
 	if (err)
 		return err;

@@ -1291,7 +1305,7 @@ static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 	int err;

 	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
-			      &nhid);
+			      &nhid, extack);
 	if (err)
 		return err;

--
2.36.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
