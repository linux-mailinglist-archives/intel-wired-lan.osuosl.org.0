Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7473EB677
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Aug 2021 16:01:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7657860BC7;
	Fri, 13 Aug 2021 14:01:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lgBsx_V8HjxL; Fri, 13 Aug 2021 14:01:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17B5060BD0;
	Fri, 13 Aug 2021 14:01:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 48C7E1BF947
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Aug 2021 08:01:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36F27606EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Aug 2021 08:01:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4YY2cG62iaCy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Aug 2021 08:01:51 +0000 (UTC)
X-Greylist: delayed 00:08:02 by SQLgrey-1.8.0
Received: from qq.com (unknown [183.3.255.213])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C8754606AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Aug 2021 08:01:50 +0000 (UTC)
X-QQ-mid: bizesmtp44t1628840740tqqe5zg4
Received: from localhost.localdomain (unknown [124.126.19.250])
 by esmtp6.qq.com (ESMTP) with 
 id ; Fri, 13 Aug 2021 15:45:38 +0800 (CST)
X-QQ-SSF: 0140000000200030C000B00A0000000
X-QQ-FEAT: AomiL+cBEBM58LBfy2GdK96juB3lEjvw279wSR1dgVOuusLrVphAKVELxZidN
 xEvQFVGESYmmrs076E8RuufqVOkhn/UsJy+5bDDjOZRcQevb9euS1nwrJDLIowYmHtrVK4O
 mFPpCBce/4Qwu/6I6pWv1NBOOpkQctpmtoqxhuzM7sgpo/YaiNqBOgwOp5hoWQtpwvrY2wK
 edlV6qC85iMm/3kWE3iZq+vCjGeNkx9fR0bqnfUJkp21/ZNP8gPoabtMlTAKkTnK5rTzYfl
 3Aa+k5TekNEj/UZ9xZcSgASzYCq3CCN1YrgSd8F79hoAPO/d+ws0/QDWqyMy2Hekm57LXbj
 NriaTMXhIsOEpRcv1gF0MP4kOXXmw==
X-QQ-GoodBg: 2
From: zhaoxiao <zhaoxiao@uniontech.com>
To: jeffrey.t.kirsher@intel.com,
	davem@davemloft.net
Date: Fri, 13 Aug 2021 15:45:36 +0800
Message-Id: <20210813074536.15624-1-zhaoxiao@uniontech.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-Mailman-Approved-At: Fri, 13 Aug 2021 14:01:22 +0000
Subject: [Intel-wired-lan] [PATCH] igb: handle vlan types with checker
 enabled
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, zhaoxiao <zhaoxiao@uniontech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The sparse build (C=2) finds some issues with how the driver
dealt with the (very difficult) hardware that in some generations
uses little-endian, and in others uses big endian, for the VLAN
field. The code as written picks __le16 as a type and for some
hardware revisions we override it to __be16 as done in this
patch.

drivers/net/ethernet/intel/igb/igb_main.c:2676:48: warning: incorrect type in assignment (different base types)
drivers/net/ethernet/intel/igb/igb_main.c:2676:48:    expected restricted __be16 [usertype] vlan_tci
drivers/net/ethernet/intel/igb/igb_main.c:2676:48:    got unsigned short [usertype] vlan_priority:3

Signed-off-by: zhaoxiao <zhaoxiao@uniontech.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 6221dafc76b9..a42eb9b1fa3e 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2673,7 +2673,8 @@ static int igb_parse_cls_flower(struct igb_adapter *adapter,
 			}
 
 			input->filter.match_flags |= IGB_FILTER_FLAG_VLAN_TCI;
-			input->filter.vlan_tci = key->vlan_priority;
+			input->filter.vlan_tci =
+				(__force __be16)key->vlan_priority;
 		}
 	}
 
-- 
2.20.1



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
