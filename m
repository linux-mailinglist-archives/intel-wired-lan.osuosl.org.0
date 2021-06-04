Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1AC39BE10
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:06:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4CC2940668;
	Fri,  4 Jun 2021 17:06:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ikSOx3nzonzs; Fri,  4 Jun 2021 17:06:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0793140664;
	Fri,  4 Jun 2021 17:06:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 73C611BF863
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3287540222
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bZ3l7kqUtMCn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:05:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A584040668
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:08 +0000 (UTC)
IronPort-SDR: sEojJhLonAOv69ju+QccTV7W0BYQ/PuH5Ar61nCc48liSF+59Vi+PAeJ3Va4tqflp4dX7uk/YO
 spZPiFzImDgw==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="184013232"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="184013232"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:05:04 -0700
IronPort-SDR: /PSrOqL5v/VxSCVvGZGjOBrzfZoQVOB3hOSnLataRSJ9WhnmUxCpq+bg3HrYk1sMYwNEWTfrE0
 HyGA/9kKhweA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="634086400"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jun 2021 10:05:03 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:53:34 -0700
Message-Id: <20210604165335.33329-14-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 14/15] iavf: return errno code
 instead of status code
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The iavf_parse_cls_flower function returns an integer error code, and
not an iavf_status enumeration.

Fix the function to use the standard errno value EINVAL as its return
instead of using IAVF_ERR_CONFIG.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 892aa22b39da..7730de0ef236 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2845,7 +2845,7 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
 			} else {
 				dev_err(&adapter->pdev->dev, "Bad ether dest mask %pM\n",
 					match.mask->dst);
-				return IAVF_ERR_CONFIG;
+				return -EINVAL;
 			}
 		}
 
@@ -2855,7 +2855,7 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
 			} else {
 				dev_err(&adapter->pdev->dev, "Bad ether src mask %pM\n",
 					match.mask->src);
-				return IAVF_ERR_CONFIG;
+				return -EINVAL;
 			}
 		}
 
@@ -2890,7 +2890,7 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
 			} else {
 				dev_err(&adapter->pdev->dev, "Bad vlan mask %u\n",
 					match.mask->vlan_id);
-				return IAVF_ERR_CONFIG;
+				return -EINVAL;
 			}
 		}
 		vf->mask.tcp_spec.vlan_id |= cpu_to_be16(0xffff);
@@ -2914,7 +2914,7 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
 			} else {
 				dev_err(&adapter->pdev->dev, "Bad ip dst mask 0x%08x\n",
 					be32_to_cpu(match.mask->dst));
-				return IAVF_ERR_CONFIG;
+				return -EINVAL;
 			}
 		}
 
@@ -2924,13 +2924,13 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
 			} else {
 				dev_err(&adapter->pdev->dev, "Bad ip src mask 0x%08x\n",
 					be32_to_cpu(match.mask->dst));
-				return IAVF_ERR_CONFIG;
+				return -EINVAL;
 			}
 		}
 
 		if (field_flags & IAVF_CLOUD_FIELD_TEN_ID) {
 			dev_info(&adapter->pdev->dev, "Tenant id not allowed for ip filter\n");
-			return IAVF_ERR_CONFIG;
+			return -EINVAL;
 		}
 		if (match.key->dst) {
 			vf->mask.tcp_spec.dst_ip[0] |= cpu_to_be32(0xffffffff);
@@ -2951,7 +2951,7 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
 		if (ipv6_addr_any(&match.mask->dst)) {
 			dev_err(&adapter->pdev->dev, "Bad ipv6 dst mask 0x%02x\n",
 				IPV6_ADDR_ANY);
-			return IAVF_ERR_CONFIG;
+			return -EINVAL;
 		}
 
 		/* src and dest IPv6 address should not be LOOPBACK
@@ -2961,7 +2961,7 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
 		    ipv6_addr_loopback(&match.key->src)) {
 			dev_err(&adapter->pdev->dev,
 				"ipv6 addr should not be loopback\n");
-			return IAVF_ERR_CONFIG;
+			return -EINVAL;
 		}
 		if (!ipv6_addr_any(&match.mask->dst) ||
 		    !ipv6_addr_any(&match.mask->src))
@@ -2986,7 +2986,7 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
 			} else {
 				dev_err(&adapter->pdev->dev, "Bad src port mask %u\n",
 					be16_to_cpu(match.mask->src));
-				return IAVF_ERR_CONFIG;
+				return -EINVAL;
 			}
 		}
 
@@ -2996,7 +2996,7 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
 			} else {
 				dev_err(&adapter->pdev->dev, "Bad dst port mask %u\n",
 					be16_to_cpu(match.mask->dst));
-				return IAVF_ERR_CONFIG;
+				return -EINVAL;
 			}
 		}
 		if (match.key->dst) {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
