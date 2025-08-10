Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BEBB1FC0F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 Aug 2025 22:25:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66DCB61066;
	Sun, 10 Aug 2025 20:25:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qazeziGnXCpz; Sun, 10 Aug 2025 20:25:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4D7D6105E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754857525;
	bh=JEEs/WXZSr2jxbEeUZJMjc8Ylm+M2pqjK649cPvZ/8g=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CQx+gQn4S4gzDFB7Rv/be1DDgZoDVD3A5ZTNie9mLhtmboSVeiegY7j9PaxsdsfiG
	 teBj+LBIt7z67dDHhRj4+1QUBVs46UbK1cVejIaovy/lk1scOAJAuARQ2J/NqdviB7
	 2bBjGFdrxaQuLcVIyZRBBDiF6wawvRhOBSjw418m4vP2b/eUJ0EOQHcQnuMxURW42Z
	 Pbk4MmWqGWPGGAGVHqaxWKMZyQOri2fHkwUsLt1H9cN+QR3SMcJ9mB4FZz946Kx02u
	 Mb8WGOngTycKuJe2uFlMdRJIkAmOJPjE4zh3glJVlpYXvh/1TsAwOG/D4l4Qv6utpG
	 PJJQ93msPojNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4D7D6105E;
	Sun, 10 Aug 2025 20:25:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 014D3154
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Aug 2025 20:25:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DBB7140F73
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Aug 2025 20:25:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8hI04zmtMrTz for <intel-wired-lan@lists.osuosl.org>;
 Sun, 10 Aug 2025 20:25:24 +0000 (UTC)
X-Greylist: delayed 12230 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 10 Aug 2025 20:25:23 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B4DD340F74
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4DD340F74
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=alok.a.tiwari@oracle.com;
 receiver=<UNKNOWN> 
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B4DD340F74
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Aug 2025 20:25:23 +0000 (UTC)
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57AGcojI000959;
 Sun, 10 Aug 2025 17:01:23 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 48dxcf19b8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 10 Aug 2025 17:01:23 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 57AFhwVi038546; Sun, 10 Aug 2025 17:01:23 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 48dvsebp9v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 10 Aug 2025 17:01:22 +0000
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 57AH1Mlk025629;
 Sun, 10 Aug 2025 17:01:22 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com
 [10.129.136.47])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id
 48dvsebp8b-1; Sun, 10 Aug 2025 17:01:22 +0000
From: Alok Tiwari <alok.a.tiwari@oracle.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 netdev@vger.kernel.org
Cc: alok.a.tiwari@oracle.com, intel-wired-lan@lists.osuosl.org
Date: Sun, 10 Aug 2025 10:01:14 -0700
Message-ID: <20250810170118.1967090-1-alok.a.tiwari@oracle.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-10_05,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0 phishscore=0
 spamscore=0 suspectscore=0 mlxlogscore=999 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2507300000
 definitions=main-2508100123
X-Proofpoint-GUID: KNSXnn_-usSM9SrCUyZ7hdpwkds2lVag
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEwMDEyNCBTYWx0ZWRfX37p3ZD43Bamh
 JL0nfhVmPX/JgRaO8tyDGtQQ9xz5LwM06H4swE29pC/n+ZbOSN8Qhcn6f5rbq9sR2taLQsd6/EM
 G0MZH1h0pus5ifXbNWCCEzSBV/8jO0ZUxbJzmsHe/uN/UgG8vQoBKLw/qIx8dCUMtn9TI2fv04k
 u76xXX8TZAzFbA5i5jGoxR7lDOAjD40QRSeea/UuQQmSGtfolyyk0Q4FDnMzJtT7SC1VbrWVvMK
 SjCQPfFHhAAqwgyzeA00h7VN/0HS8Pg7sC7vLTQftRmspcsGzbGlF2JNI/CqERdI2my9izOvlQW
 yWpDCC1vCBOxkyRIFG6svl64IHUj5M7TvDwy5VLBeQPgXPkrULFkhD2bDAM3GEXxGdQp8iE5BU4
 eM7pjS2djls52ijEugqrSGFmcLXe04uTECiHsql+DRF6pYPrPl2syYXBnmqxAL9PkMj2hEDL
X-Authority-Analysis: v=2.4 cv=W8M4VQWk c=1 sm=1 tr=0 ts=6898d063 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117
 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=2OwXVqhp2XgA:10 a=yPCof4ZbAAAA:8 a=IAEjdJ3BLuIAbGQATbkA:9 cc=ntf
 awl=host:12070
X-Proofpoint-ORIG-GUID: KNSXnn_-usSM9SrCUyZ7hdpwkds2lVag
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=corp-2025-04-25; bh=JEEs/WXZSr2jxbEeUZJMjc8Ylm+M2
 pqjK649cPvZ/8g=; b=DtTuW4vEhRwkgDnw9r4qhnwy5eH4D9Uz/rP+h8PAoJnPy
 wLLjUz2d5PUv9W/+KgYGziouHWax6Ntk7S8ETzycriDvvx+IXyHJl8eczCmWAgAy
 +fDgG3hmXRv/BnkE6cc/zD2goLBkDVbe/oXIZQ3/5ibJm75der7B07zQ5EhYb0KC
 1GdZ2mxelPvK0uO1Y+6LGRu1ix+TkcHUoQHofzFK+Z+04FnYwnTBK4DUHgP1S+w/
 0W5EpFeSuoxcdc5r+lu+qQ1wJgrREeXuWk1BE98WAlR10IswbsUIVJmMfD0K1WP9
 praGK56WV6ieEzC2CDp0A1CWvKMVi4sX+MVlNfjWQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256
 header.s=corp-2025-04-25 header.b=DtTuW4vE
Subject: [Intel-wired-lan] [PATCH net] ixgbe: fix incorrect map used in eee
 linkmode
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

incorrectly used ixgbe_lp_map in loops intended to populate the
supported and advertised EEE linkmode bitmaps based on ixgbe_ls_map.
This results in incorrect bit setting and potential out-of-bounds
access, since ixgbe_lp_map and ixgbe_ls_map have different sizes
and purposes.

ixgbe_lp_map[i] -> ixgbe_ls_map[i]

Use ixgbe_ls_map for supported and advertised linkmodes, and keep
ixgbe_lp_map usage only for link partner (lp_advertised) mapping.

Fixes: 9356b6db9d05 ("net: ethernet: ixgbe: Convert EEE to use linkmodes")
Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 25c3a09ad7f1..1a2f1bdb91aa 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -3571,13 +3571,13 @@ ixgbe_get_eee_fw(struct ixgbe_adapter *adapter, struct ethtool_keee *edata)
 
 	for (i = 0; i < ARRAY_SIZE(ixgbe_ls_map); ++i) {
 		if (hw->phy.eee_speeds_supported & ixgbe_ls_map[i].mac_speed)
-			linkmode_set_bit(ixgbe_lp_map[i].link_mode,
+			linkmode_set_bit(ixgbe_ls_map[i].link_mode,
 					 edata->supported);
 	}
 
 	for (i = 0; i < ARRAY_SIZE(ixgbe_ls_map); ++i) {
 		if (hw->phy.eee_speeds_advertised & ixgbe_ls_map[i].mac_speed)
-			linkmode_set_bit(ixgbe_lp_map[i].link_mode,
+			linkmode_set_bit(ixgbe_ls_map[i].link_mode,
 					 edata->advertised);
 	}
 
-- 
2.47.1

