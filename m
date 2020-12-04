Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 786812CF551
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 21:09:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 315BA8738B;
	Fri,  4 Dec 2020 20:09:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ar8RnHtzTSuc; Fri,  4 Dec 2020 20:09:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BDE7A872B5;
	Fri,  4 Dec 2020 20:09:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C85C1BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 076A187DCC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bBgFhnDQURUi for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 20:09:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00154904.pphosted.com (mx0a-00154904.pphosted.com
 [148.163.133.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7732087DC8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:30 +0000 (UTC)
Received: from pps.filterd (m0170393.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B4JqwgM002358
 for <intel-wired-lan@lists.osuosl.org>; Fri, 4 Dec 2020 15:09:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=smtpout1;
 bh=Y6f9sAG/INUVh8vyUVXJekKtUdBIzutr9gx9oKs5RNg=;
 b=T0fR8aZ4i7YAnHV3kai465/1tZ554oBktApTR4L4NHcAB5EaLt20vFxOSL5hNaHsmJ+S
 Lxb4NE8t74/g5WVIwNNrn1D0rDUgM1wAQHoAo4lH5lSn8X2AffqkmywBsqcTEj4Eb54v
 GExf51DK9JinlOm50VJE87cc/SQR7xhejDvyjjLefDwcXP2lJ1I/7PPaqUVlk1Ta5sDG
 ahpQjnia0d1D/G7+IvDIyTzAUCp3maukBOsHGS275Kuw5McK40rcC40PBxpyf335Lxc+
 hAvfP1dUqYmPzBYU/pOwEqyOlDcZ01G4IFJucekh15HvMNuw7PMihkymMu9xuyfALbXn gA== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0a-00154904.pphosted.com with ESMTP id 353jrqby95-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 15:09:29 -0500
Received: from pps.filterd (m0134318.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B4JwCqd006894
 for <intel-wired-lan@lists.osuosl.org>; Fri, 4 Dec 2020 15:09:29 -0500
Received: from ausxipps310.us.dell.com (AUSXIPPS310.us.dell.com
 [143.166.148.211])
 by mx0a-00154901.pphosted.com with ESMTP id 357ur1g5kj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 15:09:28 -0500
X-LoopCount0: from 10.173.37.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.78,393,1599541200"; d="scan'208";a="573039891"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Dec 2020 14:09:16 -0600
Message-Id: <20201204200920.133780-4-mario.limonciello@dell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201204200920.133780-1-mario.limonciello@dell.com>
References: <20201204200920.133780-1-mario.limonciello@dell.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312, 18.0.737
 definitions=2020-12-04_09:2020-12-04,
 2020-12-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=999
 bulkscore=0 phishscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 malwarescore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012040114
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 bulkscore=0
 suspectscore=0 adultscore=0 malwarescore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012040114
Subject: [Intel-wired-lan] [PATCH v3 3/7] e1000e: Export S0ix flags to
 ethtool
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 Perry.Yuan@dell.com, Mario Limonciello <mario.limonciello@dell.com>,
 linux-kernel@vger.kernel.org, anthony.wong@canonical.com,
 Yijun Shen <yijun.shen@dell.com>, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This flag can be used for debugging and development purposes
including determining if S0ix flows work properly for a system
not currently recognized by heuristics.

Tested-by: Yijun Shen <yijun.shen@dell.com>
Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 40 +++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 03215b0aee4b..eb683949ebfe 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -23,6 +23,13 @@ struct e1000_stats {
 	int stat_offset;
 };
 
+static const char e1000e_priv_flags_strings[][ETH_GSTRING_LEN] = {
+#define E1000E_PRIV_FLAGS_S0IX_ENABLED	BIT(0)
+	"s0ix-enabled",
+};
+
+#define E1000E_PRIV_FLAGS_STR_LEN ARRAY_SIZE(e1000e_priv_flags_strings)
+
 #define E1000_STAT(str, m) { \
 		.stat_string = str, \
 		.type = E1000_STATS, \
@@ -1776,6 +1783,8 @@ static int e1000e_get_sset_count(struct net_device __always_unused *netdev,
 		return E1000_TEST_LEN;
 	case ETH_SS_STATS:
 		return E1000_STATS_LEN;
+	case ETH_SS_PRIV_FLAGS:
+		return E1000E_PRIV_FLAGS_STR_LEN;
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -2097,6 +2106,10 @@ static void e1000_get_strings(struct net_device __always_unused *netdev,
 			p += ETH_GSTRING_LEN;
 		}
 		break;
+	case ETH_SS_PRIV_FLAGS:
+		memcpy(data, e1000e_priv_flags_strings,
+		       E1000E_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
+		break;
 	}
 }
 
@@ -2305,6 +2318,31 @@ static int e1000e_get_ts_info(struct net_device *netdev,
 	return 0;
 }
 
+static u32 e1000e_get_priv_flags(struct net_device *netdev)
+{
+	struct e1000_adapter *adapter = netdev_priv(netdev);
+	u32 priv_flags = 0;
+
+	if (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
+		priv_flags |= E1000E_PRIV_FLAGS_S0IX_ENABLED;
+
+	return priv_flags;
+}
+
+static int e1000e_set_priv_flags(struct net_device *netdev, u32 priv_flags)
+{
+	struct e1000_adapter *adapter = netdev_priv(netdev);
+	unsigned int flags2 = adapter->flags2;
+
+	flags2 &= ~FLAG2_ENABLE_S0IX_FLOWS;
+	if (priv_flags & E1000E_PRIV_FLAGS_S0IX_ENABLED)
+		flags2 |= FLAG2_ENABLE_S0IX_FLOWS;
+	if (flags2 != adapter->flags2)
+		adapter->flags2 = flags2;
+
+	return 0;
+}
+
 static const struct ethtool_ops e1000_ethtool_ops = {
 	.supported_coalesce_params = ETHTOOL_COALESCE_RX_USECS,
 	.get_drvinfo		= e1000_get_drvinfo,
@@ -2336,6 +2374,8 @@ static const struct ethtool_ops e1000_ethtool_ops = {
 	.set_eee		= e1000e_set_eee,
 	.get_link_ksettings	= e1000_get_link_ksettings,
 	.set_link_ksettings	= e1000_set_link_ksettings,
+	.get_priv_flags		= e1000e_get_priv_flags,
+	.set_priv_flags		= e1000e_set_priv_flags,
 };
 
 void e1000e_set_ethtool_ops(struct net_device *netdev)
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
