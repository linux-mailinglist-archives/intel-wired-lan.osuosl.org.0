Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFA18040B9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Dec 2023 22:08:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5517241466;
	Mon,  4 Dec 2023 21:08:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5517241466
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701724080;
	bh=o+mRAUJDiW+sdseoPuMMvc3fhWxKInM4WvsAwMhuUlk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=XppfnGQDlFc7TVAb9S/GQe40TegrD72fbVzuN24ZGKbBrfjuDeL15PNYvzmC7+oEQ
	 +qpDXm51I9KAN/krGfMeXAxCMOimGo36MrW/YIFYUyp6pl8WzRg4bATwMiPMXXkdUU
	 9QGKyxN/eLPLyaTOzb2L6TtGi/vITqp89bb2TZCx009ahnumUCUbk+DgVBur9liVWM
	 oGo/i5rCWLDC7qtyuu5QjZuIvl8SpZ9+yDe2id1GcaqAcxIv0B4C6D8kNTOSxcfTgn
	 G3j9F2E8mu3Au7/pWsrUtPcgG/4WYKvSN5EgKpul6DYX6UfFyrKaUJpAHAh0pd3Z7A
	 4sU9hNl1Ko2jg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RBsEJSNA6RUe; Mon,  4 Dec 2023 21:07:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D97341555;
	Mon,  4 Dec 2023 21:07:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D97341555
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 92A941BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 19:40:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7744382159
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 19:40:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7744382159
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7-XghkEQZoIr for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Dec 2023 19:40:16 +0000 (UTC)
X-Greylist: delayed 1972 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 04 Dec 2023 19:40:15 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEA2A8214C
Received: from sipsolutions.net (s3.sipsolutions.net
 [IPv6:2a01:4f8:242:246e::2])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CEA2A8214C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 19:40:15 +0000 (UTC)
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.97) (envelope-from <johannes@sipsolutions.net>)
 id 1rAEHm-0000000FCfw-1pgw; Mon, 04 Dec 2023 20:07:18 +0100
From: Johannes Berg <johannes@sipsolutions.net>
To: netdev@vger.kernel.org
Date: Mon,  4 Dec 2023 20:07:06 +0100
Message-ID: <20231204200710.40c291e60cea.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 04 Dec 2023 21:07:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=sipsolutions.net; s=mail; h=Content-Transfer-Encoding:MIME-Version:
 Message-ID:Date:Subject:Cc:To:From:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References;
 bh=uBTJj1Qtxq9SLgn//Jw6JgydynLqSMP/yWLsZ9yFqRk=; t=1701718815; x=1702928415; 
 b=nDzm/XtbyVFlr6/5Od4AQZNjyHDBdyQhInG3rMS5qt/E40ML0YofTMm0zeCse8saX8zekgVhg8/
 FUvTVstBxKUhNErzmhJDLMMVB4+4WkpGUHt1bjWvcOcimE3Fci2m79K5ngE0TWHG6xeJhIZZGjgzx
 w99/+D+aluJX4Z7z6mZfOvL0kk3vVrVh7WRAE5Sbg+QqWzQf1U7Oe1CP7aMFC0TQHdedqOAoa4UQA
 xzkl5CTcO9iOLgKxayWroY7FrKkL9Cy1RVqtqAZdqSIuClWwqHF/h2bMrloEfQ8P5i327fGscEii0
 Yy9Zv7sraedPaaFb+Z/mCYyXzGW8WEIr+DNw==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=sipsolutions.net header.i=@sipsolutions.net
 header.a=rsa-sha256 header.s=mail header.b=nDzm/Xtb
Subject: [Intel-wired-lan] [RFC PATCH] net: ethtool: do runtime PM outside
 RTNL
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
Cc: Johannes Berg <johannes.berg@intel.com>, Marc MERLIN <marc@merlins.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Johannes Berg <johannes.berg@intel.com>

As reported by Marc MERLIN in [1], at least one driver (igc)
wants/needs to acquire the RTNL inside suspend/resume ops,
which can be called from here in ethtool if runtime PM is
enabled.

[1] https://lore.kernel.org/r/20231202221402.GA11155@merlins.org

Allow this by doing runtime PM transitions without the RTNL
held. For the ioctl to have the same operations order, this
required reworking the code to separately check validity and
do the operation. For the netlink code, this now has to do
the runtime_pm_put a bit later.

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
---
 net/ethtool/ioctl.c   | 71 ++++++++++++++++++++++++++-----------------
 net/ethtool/netlink.c | 32 ++++++++-----------
 2 files changed, 56 insertions(+), 47 deletions(-)

diff --git a/net/ethtool/ioctl.c b/net/ethtool/ioctl.c
index 0b0ce4f81c01..ae7e165dc471 100644
--- a/net/ethtool/ioctl.c
+++ b/net/ethtool/ioctl.c
@@ -2765,26 +2765,18 @@ static int ethtool_set_fecparam(struct net_device *dev, void __user *useraddr)
 /* The main entry point in this file.  Called from net/core/dev_ioctl.c */
 
 static int
-__dev_ethtool(struct net *net, struct ifreq *ifr, void __user *useraddr,
-	      u32 ethcmd, struct ethtool_devlink_compat *devlink_state)
+__dev_ethtool_check(struct net_device *dev, void __user *useraddr,
+		    u32 ethcmd, u32 *sub_cmd)
 {
-	struct net_device *dev;
-	u32 sub_cmd;
-	int rc;
-	netdev_features_t old_features;
-
-	dev = __dev_get_by_name(net, ifr->ifr_name);
-	if (!dev)
-		return -ENODEV;
-
 	if (ethcmd == ETHTOOL_PERQUEUE) {
-		if (copy_from_user(&sub_cmd, useraddr + sizeof(ethcmd), sizeof(sub_cmd)))
+		if (copy_from_user(sub_cmd, useraddr + sizeof(ethcmd), sizeof(*sub_cmd)))
 			return -EFAULT;
 	} else {
-		sub_cmd = ethcmd;
+		*sub_cmd = ethcmd;
 	}
+
 	/* Allow some commands to be done by anyone */
-	switch (sub_cmd) {
+	switch (*sub_cmd) {
 	case ETHTOOL_GSET:
 	case ETHTOOL_GDRVINFO:
 	case ETHTOOL_GMSGLVL:
@@ -2823,22 +2815,28 @@ __dev_ethtool(struct net *net, struct ifreq *ifr, void __user *useraddr,
 	case ETHTOOL_GFECPARAM:
 		break;
 	default:
-		if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
+		if (!ns_capable(dev_net(dev)->user_ns, CAP_NET_ADMIN))
 			return -EPERM;
 	}
 
-	if (dev->dev.parent)
-		pm_runtime_get_sync(dev->dev.parent);
+	return 0;
+}
 
-	if (!netif_device_present(dev)) {
-		rc = -ENODEV;
-		goto out;
-	}
+static int
+__dev_ethtool_do(struct net_device *dev, struct ifreq *ifr,
+		 void __user *useraddr, u32 ethcmd, u32 sub_cmd,
+		 struct ethtool_devlink_compat *devlink_state)
+{
+	netdev_features_t old_features;
+	int rc;
+
+	if (!netif_device_present(dev))
+		return -ENODEV;
 
 	if (dev->ethtool_ops->begin) {
 		rc = dev->ethtool_ops->begin(dev);
 		if (rc < 0)
-			goto out;
+			return rc;
 	}
 	old_features = dev->features;
 
@@ -3049,7 +3047,7 @@ __dev_ethtool(struct net *net, struct ifreq *ifr, void __user *useraddr,
 		rc = ethtool_set_fecparam(dev, useraddr);
 		break;
 	default:
-		rc = -EOPNOTSUPP;
+		return -EOPNOTSUPP;
 	}
 
 	if (dev->ethtool_ops->complete)
@@ -3057,9 +3055,6 @@ __dev_ethtool(struct net *net, struct ifreq *ifr, void __user *useraddr,
 
 	if (old_features != dev->features)
 		netdev_features_change(dev);
-out:
-	if (dev->dev.parent)
-		pm_runtime_put(dev->dev.parent);
 
 	return rc;
 }
@@ -3067,7 +3062,8 @@ __dev_ethtool(struct net *net, struct ifreq *ifr, void __user *useraddr,
 int dev_ethtool(struct net *net, struct ifreq *ifr, void __user *useraddr)
 {
 	struct ethtool_devlink_compat *state;
-	u32 ethcmd;
+	struct net_device *dev = NULL;
+	u32 ethcmd, subcmd;
 	int rc;
 
 	if (copy_from_user(&ethcmd, useraddr, sizeof(ethcmd)))
@@ -3087,9 +3083,26 @@ int dev_ethtool(struct net *net, struct ifreq *ifr, void __user *useraddr)
 		break;
 	}
 
+	dev = dev_get_by_name(net, ifr->ifr_name);
+	if (!dev) {
+		rc = -ENODEV;
+		goto exit_free;
+	}
+
+	rc = __dev_ethtool_check(dev, useraddr, ethcmd, &subcmd);
+	if (rc)
+		goto exit_free;
+
+	if (dev->dev.parent)
+		pm_runtime_get_sync(dev->dev.parent);
+
 	rtnl_lock();
-	rc = __dev_ethtool(net, ifr, useraddr, ethcmd, state);
+	rc = __dev_ethtool_do(dev, ifr, useraddr, ethcmd, subcmd, state);
 	rtnl_unlock();
+
+	if (dev->dev.parent)
+		pm_runtime_put(dev->dev.parent);
+
 	if (rc)
 		goto exit_free;
 
@@ -3112,6 +3125,8 @@ int dev_ethtool(struct net *net, struct ifreq *ifr, void __user *useraddr)
 	}
 
 exit_free:
+	if (dev)
+		dev_put(dev);
 	if (state->devlink)
 		devlink_put(state->devlink);
 	kfree(state);
diff --git a/net/ethtool/netlink.c b/net/ethtool/netlink.c
index fe3553f60bf3..ee9ccf64688d 100644
--- a/net/ethtool/netlink.c
+++ b/net/ethtool/netlink.c
@@ -34,39 +34,23 @@ int ethnl_ops_begin(struct net_device *dev)
 {
 	int ret;
 
-	if (!dev)
-		return -ENODEV;
-
-	if (dev->dev.parent)
-		pm_runtime_get_sync(dev->dev.parent);
-
 	if (!netif_device_present(dev) ||
-	    dev->reg_state == NETREG_UNREGISTERING) {
-		ret = -ENODEV;
-		goto err;
-	}
+	    dev->reg_state == NETREG_UNREGISTERING)
+	    	return -ENODEV;
 
 	if (dev->ethtool_ops->begin) {
 		ret = dev->ethtool_ops->begin(dev);
 		if (ret)
-			goto err;
+			return ret;
 	}
 
 	return 0;
-err:
-	if (dev->dev.parent)
-		pm_runtime_put(dev->dev.parent);
-
-	return ret;
 }
 
 void ethnl_ops_complete(struct net_device *dev)
 {
 	if (dev->ethtool_ops->complete)
 		dev->ethtool_ops->complete(dev);
-
-	if (dev->dev.parent)
-		pm_runtime_put(dev->dev.parent);
 }
 
 /**
@@ -602,6 +586,14 @@ static int ethnl_default_set_doit(struct sk_buff *skb, struct genl_info *info)
 			goto out_dev;
 	}
 
+	if (!req_info.dev) {
+		ret = -ENODEV;
+		goto out_dev;
+	}
+
+	if (req_info.dev->dev.parent)
+		pm_runtime_get_sync(req_info.dev->dev.parent);
+
 	rtnl_lock();
 	ret = ethnl_ops_begin(req_info.dev);
 	if (ret < 0)
@@ -617,6 +609,8 @@ static int ethnl_default_set_doit(struct sk_buff *skb, struct genl_info *info)
 	ethnl_ops_complete(req_info.dev);
 out_rtnl:
 	rtnl_unlock();
+	if (req_info.dev->dev.parent)
+		pm_runtime_put(req_info.dev->dev.parent);
 out_dev:
 	ethnl_parse_header_dev_put(&req_info);
 	return ret;
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
