Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF8C4DDA27
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Mar 2022 14:08:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23A5540363;
	Fri, 18 Mar 2022 13:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zkfjNALHuGly; Fri, 18 Mar 2022 13:08:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E5154030C;
	Fri, 18 Mar 2022 13:08:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 17DBB1BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 09:46:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 03E5460D70
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 09:46:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=vivo0.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CqhSdjLkYDea for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Mar 2022 09:46:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-sgaapc01on2092.outbound.protection.outlook.com [40.107.215.92])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0EA2360B63
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 09:46:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D/50N6ieFxLFwGx8OXGU0T5nMnzvdBIoNxPDhQVaaR62PLt83McJHvrqXnYu19BH2d84ulV27PGAb4GJuFfcB/do0fkLZbNcTx/IkLXDwV5DTql4hiKuVuyU1a65yZlTNmho+eErMLnQQ92izTk0126z1aYt31hCYNeTpKYCxnnpL63Hp42PtAgbp8MM8unvbBZHmFRhBfKM7kWG0WXwZ3QkTwHT5CyuHAqtv63JkyBhen+E2zoYR2CPE7O7jYyRZDzDAK9jgUwJ10qT79w0n68r29U9BYLuaflvVYZy5tbEX3bxsiisMmbROsSsIfHQ8WZ/PXnoDnz+hJik6ODhxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9XGefvUDasX4C45BxuyYSdhrGC+yA/3XQjue7KBR+Bg=;
 b=mpWFo/0nqSIYtwlC/KA+nILFBtjRZRwpyKuQ1bF9QtPc9xLfk0/k7kCjRtrFctgevRrDvtLIto994oKAXeJlFk1y7v9fFPfwF6CAAy/EC2hdTVH/87rHJivNDaMDhuHsU4x6FS8cTjlz2jVdc2qI90KpYlHyo99HQk+Z2mhT0SGytxAnHljPBoiw8muc3UgHtVu4Oe2a6pzLqQw09kzbzFrV6bTx1YCbjaY2aYB0mnPhOdx8gG6/H09iolUUCqUPOLtRe7NFENrv4iaf2diJvT+gYVKimzpEGqcJqQTwVAciAOsdQoBC80V8K/Cz0P9Cw4wgpoRF9po5xeJnrubLyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo0.onmicrosoft.com; 
 s=selector2-vivo0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9XGefvUDasX4C45BxuyYSdhrGC+yA/3XQjue7KBR+Bg=;
 b=bGKV7cv8+/eBl4otVxYjdW6tEvKQtKNRv+f1QRxKinHoTuwtLdeUMf1CCVXyAPFAM0Uwj5e+whMbO7sr4bF3xOh0lk3cMvEa2SJtoU2O2ejD3b15pmQ5uefcf15SwVCzgvjTU4UdNCoeDJB9rC/FjYaxgk/G9VQC1Uo/LSywPPI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SG2PR06MB3367.apcprd06.prod.outlook.com (2603:1096:4:78::19) by
 TY0PR06MB5008.apcprd06.prod.outlook.com (2603:1096:400:1bf::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5081.17; Fri, 18 Mar 2022 09:46:48 +0000
Received: from SG2PR06MB3367.apcprd06.prod.outlook.com
 ([fe80::9d3f:ff3b:1948:d732]) by SG2PR06MB3367.apcprd06.prod.outlook.com
 ([fe80::9d3f:ff3b:1948:d732%4]) with mapi id 15.20.5081.017; Fri, 18 Mar 2022
 09:46:48 +0000
From: Wan Jiabing <wanjiabing@vivo.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Fri, 18 Mar 2022 17:46:29 +0800
Message-Id: <20220318094629.526321-1-wanjiabing@vivo.com>
X-Mailer: git-send-email 2.35.1
X-ClientProxiedBy: HK2P15301CA0020.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::30) To SG2PR06MB3367.apcprd06.prod.outlook.com
 (2603:1096:4:78::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2244477e-d40d-4813-aee9-08da08c43859
X-MS-TrafficTypeDiagnostic: TY0PR06MB5008:EE_
X-Microsoft-Antispam-PRVS: <TY0PR06MB5008FA1DBB59A90DFD1C01C9AB139@TY0PR06MB5008.apcprd06.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5/CCU9ZjIVAZonnFltAl3hYr2ruLV6H3msk7JmTc3KUvEEIKgjCJGTcK70h9UXWT7SSdvYIctP25jTbe8Udn8cHGkGjaoYFzMjQZE0DYF1164VmHj+n6iI2y957pOLpZoEiP9w9V/PyhHFGN9jfHuCetdG2PgG1PKlFeKwy7FlBvmn8INA+JCfZDEA0mYsZudYyQpGu1hXeyuUZHNaf/KzJ5aYIUJerx6nflt5ahweQLBfDtNARMx0W7qMJFGdaNKeoVPjd1PHNZuYKb5nc7N4XVC3HtwKAvChIEd29SMlQXmjvmg+bnl0RisG63cySSngjBN5URLmFWX+AeyNXtDTyGsJHKcYELGHxb4lXMi42zK0wUsu5EPLQtyQoiyj9FQO3FUQ0SRfim3ixKMMO3s5ScCWw+1Z6wqOgAaA5XXGozRP5ngK4jHUBSSepc7Ve6azzLjevO0d0soApv9GJCzMJoxD/DwMo4srz3pp7lo7MacR2Egy9TXLXmEHiD7Paj64sJo+Qq/8Jpc9KolnKn+BWEdtwfluvroYe7FWcT+KMYNKhPrwEmsFp39wAcHNqjVHvTIV2lc8tgUGEhjDNB4aMeDbs5uYpa1O1OpYZi5mlxzX8L6ZfNhgRKEVw+f+LUEMcKDW4qsjSfBZrONgDSCzulqiFcDk3peNUbCfnQ92qjhwVxyypSuF/QkWg6q660iNxbPJ1s8SH8UJ5iDoTKoQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SG2PR06MB3367.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(6486002)(4744005)(2616005)(4326008)(66476007)(66946007)(26005)(107886003)(186003)(1076003)(110136005)(86362001)(8676002)(316002)(8936002)(83380400001)(66556008)(5660300002)(6666004)(36756003)(38350700002)(52116002)(38100700002)(6512007)(6506007)(508600001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WsEapf0hXeQc83vkTVxit9VO5SPQKdVhKl9clCX6NCVz2Uk7UUU5JOgGI7Yr?=
 =?us-ascii?Q?BMmGL5lLlmNlrpmELM3qNMhBXWy1CMsBPkvt9wOippCMPUp87dhGhCIwg7/t?=
 =?us-ascii?Q?QH47zoaGpG9TKhGF3pIuEIZ+/nSPHmt0yiedjgNw1thLe1g4f/Vdl5hvZiOx?=
 =?us-ascii?Q?pUOfjaFd9Nf/S0Us3Msj1smwEyGTuBNbFW7HHnaLl2Lu9qQuDnE+rnAtZ++1?=
 =?us-ascii?Q?rrC7Z03ZLRpeFyhLG34s47m5lHWIh4/TeXji+Ghsj2z67TwwZTXcFxFDprOa?=
 =?us-ascii?Q?mcVce6f51IP9LgNsIA/zH28Aw6yalMgqdnAgO6J2BMQbV5uV6kjNiSqDcxVB?=
 =?us-ascii?Q?t16xq2lyQaNDizH4JZMMeM0ApU7XStwd/0cesvUeckaaXycUV2Q4GRLkLIIW?=
 =?us-ascii?Q?SgrIZkEm5udryjplgPOhrihNXyOtPBijAvqWsnvoYrfSvd93rqACEhq1wyu9?=
 =?us-ascii?Q?fo1fF9H1qNdjLs9VxP9d8WPqqgC0I/K82fJ8dWHEtStlAoUlbO7EgT7oOovg?=
 =?us-ascii?Q?o2FCG+tJeMwVa8c8afo867RgD+uzIF1EdMcdOePMgChCFbXgzgtLFvNzvFXq?=
 =?us-ascii?Q?2Vrzx3zgvaiHXzO3QON+vcig11iEtHeTuTH1N8E65smoFVpxLa+wOHPlaAUD?=
 =?us-ascii?Q?JQNhFzqzLqbq1cjA+y/y40u7dLDue87Gr4MdMWRuF28CIviGaZr967hrMiZL?=
 =?us-ascii?Q?U5S5AK5mR6Uqi5Qze90SvJr/cFFIVLhH1iKU5VxdljkrUpWsigT3lkk06RVT?=
 =?us-ascii?Q?PFn/VgQw0OZoUGy+fsGpD3MsLKgkvl7DJnza49HI4UjUi5+AW7TqdYtacGcG?=
 =?us-ascii?Q?qIh7GloQJiNiWi88m17XyNVs8fMWz+9AvbEirKlQb7v3XcagxkPw/mZnw4X3?=
 =?us-ascii?Q?hM/+EZijcrONVTRceynPpmUMBmqkK9LG9UCGnzVDjl+4qx3BZSyuvBdbFUSi?=
 =?us-ascii?Q?ZkNJYLSrob7gremPSYLyLZx7rMWbGdwjb9Hge80sYTx8DCTZg/boHPbXtns2?=
 =?us-ascii?Q?P0o6Hrn9YxaFGgSrmXIsoaXFuM0TIpGAoR0yVPCF031bpTxDayQIe/RryEpE?=
 =?us-ascii?Q?jfboifbPBLK19kAUMtL/Yz7UnCj50QBj/VvAqlWl6y+giJLyu61Bb41tmMLX?=
 =?us-ascii?Q?mp9a0EK2Tf+C8N8i3iyiMu3qe5Dzai8V6jLlCevEVQt9gHzhD0j+hkaT67r3?=
 =?us-ascii?Q?aQ1JUQ4CsM/RsfM1IkKLEPRyc8neSERe6TLJN+PJW94sYkR0+e15Bp4/2IV5?=
 =?us-ascii?Q?re/vTvZA4lGgkV5EUXoTTmus5uSQ19JjBQukM8om+dnNcs6PfNo1/Dhq6Q4r?=
 =?us-ascii?Q?D0bEoIq11Z5B2lzPSzTePIm72+9+xYvLeyXARR/A4DWUHJr9P/5R/5canPGa?=
 =?us-ascii?Q?ozMpJYvltPvr9XCQ2aQAMbm1mS3471Pu6WP4+PulJV/3wZeRceivfNrP4TCj?=
 =?us-ascii?Q?+kFAf5/4lpxjo949J0tQdoKCvlDpbxm0?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2244477e-d40d-4813-aee9-08da08c43859
X-MS-Exchange-CrossTenant-AuthSource: SG2PR06MB3367.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2022 09:46:48.3984 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oR6NiaHGBmkRExuuEbNqNpaIXhPYTc/2xreFWYuTGrQpTFcAnGSx4ja4jGAXl9Iq3nEjpIxHLEOK1wLQrjTfoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR06MB5008
X-Mailman-Approved-At: Fri, 18 Mar 2022 13:08:13 +0000
Subject: [Intel-wired-lan] [PATCH] ice: use min() to make code cleaner in
 ice_gnss
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
Cc: Wan Jiabing <wanjiabing@vivo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix the following coccicheck warning:
./drivers/net/ethernet/intel/ice/ice_gnss.c:79:26-27: WARNING opportunity for min()

Use min() to make code cleaner.

Signed-off-by: Wan Jiabing <wanjiabing@vivo.com>
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 35579cf4283f..00fd22e813c0 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -76,8 +76,7 @@ static void ice_gnss_read(struct kthread_work *work)
 	for (i = 0; i < data_len; i += bytes_read) {
 		u16 bytes_left = data_len - i;
 
-		bytes_read = bytes_left < ICE_MAX_I2C_DATA_SIZE ? bytes_left :
-					  ICE_MAX_I2C_DATA_SIZE;
+		bytes_read = min(bytes_left, ICE_MAX_I2C_DATA_SIZE);
 
 		err = ice_aq_read_i2c(hw, link_topo, ICE_GNSS_UBX_I2C_BUS_ADDR,
 				      cpu_to_le16(ICE_GNSS_UBX_EMPTY_DATA),
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
