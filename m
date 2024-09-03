Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8939596A184
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 17:02:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7CF2607FB;
	Tue,  3 Sep 2024 15:02:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YPr1fzkw_t81; Tue,  3 Sep 2024 15:02:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19581606C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725375750;
	bh=55vnlN5xTrxV4ec8h3zVzd6wB8MtlheSr2q7pHwhyic=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=XPgWbX8gx3A64AhbdyhjHENq0z79YkfEEXo/suek6gRjKoRF3hUu4WEXRqmj7OoUj
	 wi5xVrvEut/7pRHxw4kf824EEDIkahRda5rSxWYJQIq01MHV0FOPlE/xagHHXg07zJ
	 sQhXN4pIEen1HPf0hwDJzLirMSzswezsqWCs/CKoIEBNi0qMevEKLNHvwSM0AEJH54
	 2mnKv7BLbofTVI+cvCVg5sWYIF6SK3viUOvE58XJSY6/9/4niQ7noOI+0Rl5PJETzB
	 aidLJMmKMQgXKC0OXbgE6bLQZj5hDXjimcZyGF+Tb7zM8dLsqevTT3A6EPjMEh1bGR
	 RLGHZe35yzX0w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19581606C7;
	Tue,  3 Sep 2024 15:02:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0216F1BF406
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 11:57:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E302880F7B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 11:57:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hsqYh_-KnvzE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 11:57:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.92.63.97;
 helo=aus01-me3-obe.outbound.protection.outlook.com;
 envelope-from=hanguidong02@outlook.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0292980F6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0292980F6D
Received: from AUS01-ME3-obe.outbound.protection.outlook.com
 (mail-me3aus01olkn2097.outbound.protection.outlook.com [40.92.63.97])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0292980F6D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 11:57:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XZQErrTsHB4V+cWYOIiEtej8J9G6lwjYI2dw/97OAgy/nV8FHmjAkdBI/gbbc3xhmZ/L93EsGw//0VJcW9izu+LVEcF5SDa8IBNuk4gktqpEzUKly/2xAk4z8f1jl+xz9yPe+4h8cp8hdFnm306QVLzu1ofAEUaXMunmFEt5q98yHsPp1+omXSMfzZO90rDrXbTKPYT6+rucxPifzjfHVXPJrWQj/c/yl5+q83jBlSkO1ja1bWjPG9wNxffiBj6tobKTTZY5Rpm1fNEg/XRLFSvCdq8lgQ9LCNahHe3KRNQ7fQD55jV0LeWp0dPFAzCwKTqdkR8MhZA+azzxqpP6YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=55vnlN5xTrxV4ec8h3zVzd6wB8MtlheSr2q7pHwhyic=;
 b=jxnkGxtksBqSc5cI1METQPx3wmoUBnYkOJ8wiaXXUkPX3425UaM24GIxlU5EC3pwDjZWK/RtCOLbmVauTDwSMDHQKr0yZwb4kgPodtF0J65J5JVwA6tL/fRzkXLhlt8aum/ghoTjMacwzpCvA7wXXbEg4zEJm9yj7ZRACg/w22sl6vQ8B0ZSOB2DQWZRyktF+Dxk5cbZNn3ge2RE69o9/9alY8MZCtcwILFrpqj+J9h5Qmy+PrPbDFpUiYw1Qb57v+9DCTylNhI93IzIYT+wMjF8MBPJ85armcNxXF7Rl3ZnAsb/XRBBAcl0prcqXiaDSa3ssg9F4S5HAtOhf846uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM (2603:10c6:10:297::10)
 by MEUP300MB0256.AUSP300.PROD.OUTLOOK.COM (2603:10c6:220:216::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Tue, 3 Sep
 2024 11:57:05 +0000
Received: from SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM
 ([fe80::14bc:d68f:122:f4f2]) by SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM
 ([fe80::14bc:d68f:122:f4f2%4]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 11:57:05 +0000
From: Gui-Dong Han <hanguidong02@outlook.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Tue,  3 Sep 2024 11:48:43 +0000
Message-ID: <SY8P300MB0460F0F4B5D0BC6768DCA466C0932@SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TMN: [3o1xJglmxZKxykxBQbm2mlpWo1X+pehM]
X-ClientProxiedBy: SI2PR01CA0021.apcprd01.prod.exchangelabs.com
 (2603:1096:4:192::19) To SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM
 (2603:10c6:10:297::10)
X-Microsoft-Original-Message-ID: <20240903114843.7578-1-hanguidong02@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SY8P300MB0460:EE_|MEUP300MB0256:EE_
X-MS-Office365-Filtering-Correlation-Id: e291c51d-748a-44d8-325f-08dccc0f87a5
X-Microsoft-Antispam: BCL:0;
 ARA:14566002|461199028|15080799006|19110799003|8060799006|5072599009|440099028|3412199025|1710799026;
X-Microsoft-Antispam-Message-Info: 1zPOhxWlQwZEbYK1TP1JSitQ3AaInWXdun/GGa2AL5OSwGP02BYWaN5VFsXmYdBoeOc6aAwqUOEvk2nwTX0Zs2w2uKc0fsx7AM+882VleF6bjeuCuMBYOJhmlb6iQDkwtQfAR3N6z5Y+SOrwucQET4ePGRnzjrOboSWiIlOKRO/jflqcD2F4yCTRiUaeLsI6LAMOfFVK92wyHHIVhYJMZnnahBvIu+zmcqYPEkebFBQtO5ea4hrv5fFxL057Evozm9d9c6JemU+npfUiZU4OznVjF5+JqUGWtVW2254RSJHt49sDNugmXUuGjE2NhprpKxwMuMlNC2ZkcI4ph4CcAef+8ytw27Uc4oVGxsliur3oGEtwu6nVhXCt9qmN4eNxFH2foUNU2T3+/aLvFEdOdi8W78m/IUyvUVh9I/+GiI/fqtbmEdHvyV4hw+T0I1vzHi556uaZZiaBPYh+rFcoWbKPR/9U6W+GqKwVrGdwXcES0gkVo+pVdEGAU0kJM3m7SpuMbr3w6e9qrdn2kQ3Za2bkEMjr3Rt9a0FEcdYMQ5Gwlq4NlV+HZORfgbknMbeMJQAme9qyRaq7dcx0AwKuVfmVBfa5xXD2kz5DUotz1mlOyEOv434UbiL93Vld9CFNec49jDWlK8xbvIJqXnxN5FadKQ6qglWPrclmkeVAPtg6/rVvJOl51A4E4xG6Ga/WI4/wUNp1pwyw8bpF4NYt/g4QxYFLC6hjucqEgjjbFV8=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Q/hfc7yeky0OnSFQjWNdhJz7qAmR+wGVOlbsNLgCDxyZVJsr6yg84a16ArG4?=
 =?us-ascii?Q?7KEw8cA5wLcl1WhcwvlEgDQdjYbN0yL7iGn9lzlu0ShP9gFOFLMNmvEX2M8J?=
 =?us-ascii?Q?XSATomcs5NvHs9D4AmK/kYRb3UCyuHDaqo/JDnXSimvPyMCmILH/uwA7irf0?=
 =?us-ascii?Q?yDIedZ3cBla53LCUhXXIWPJEF85v4ifi4Le2zZzAuyDWRsZgrlJn0T0uWY29?=
 =?us-ascii?Q?QLyfLWVzPPDk9xxJaJDn7El7r02iTqJugskluzWlnBRnU3gz4oHWn3r/D169?=
 =?us-ascii?Q?vZpv4BzgGpsykfX0qT2zCrFiUkDkFh3u3Lxvfzv/wctCTKPUhD5ms1zS2BSJ?=
 =?us-ascii?Q?Xoef3p4hXJ3B04kyzDMGUhF9RQCDlk50AAgFTd7lLonAADG2ameYmzb1SERB?=
 =?us-ascii?Q?O8h5xsf60R6mtrS6yiQCC26+c2C4Hc78hSaeJtzGoU38SIq6m0qZXLkgkkV/?=
 =?us-ascii?Q?A9giBL28+LxaLwxly4jGMbxZyhVTeCklsLiAQM2wo2EsF3dch8XzNcoJA4sR?=
 =?us-ascii?Q?GgDOQCC6VPwfjjCqGvV/2cUqRkZuZ4CF87faDMilUvZ7KzhiHC9kQ2psSifm?=
 =?us-ascii?Q?LCnGVbho8N8bJbrUdQf9YClssj2j0yfAZwYXMYR7NgFwD13bE5T5eM5BeQcr?=
 =?us-ascii?Q?CWMFo2P43LuWSywmOVUM1F07FZwT4itnm5WxDTkt9N3fNxHKIu5InEl3Cshb?=
 =?us-ascii?Q?gEpDD57FIp6HLqsiDWzFqF71YTAry9Cpyq6EgwMH9zjPRwz2X19U7PO/kMlm?=
 =?us-ascii?Q?ghVuAvqJsx3F/1DsRFODYrCMoGNcsMRgQTM4ypRK0L8P5IpO74cJ1TprKIvY?=
 =?us-ascii?Q?IpTOW9zxvB7ULjJPc7I3eWKOO8uiXy4KCUBO4X0Gz+RnyP76ea56Vahw/hBf?=
 =?us-ascii?Q?EP49Y0oofa5QwsbgxxPX1ZepdtCIWE4mrQM0H4QY/6rpqDBt7xQCt8YVwB4P?=
 =?us-ascii?Q?tDCFbZ1yftep5v3x22iDeGYBpwJrEqrkpK2M8S2mGl3EOR1HjZEdYa3z0164?=
 =?us-ascii?Q?VD/XhI3dDrcicipm4HqLzK205s3IdfzUvImEDDaUuGl2EA9Q1VQyWMKu7ob0?=
 =?us-ascii?Q?S2b6ZrtSq+n6PajMGncAotA9Sl1xsImatn6U8wUNqWdDWQ7tBdguILL/nNs0?=
 =?us-ascii?Q?0SKxN7AF4K2VL6qY//36In/+XhJDpsLBOjjsI585pfzHBGALh6vcFSHIQSfF?=
 =?us-ascii?Q?PkrXlacrabkHH71qFCO1onHKtrxAtyFlXYuU0F7b+TSVhOxZlUUFNAZ70D9r?=
 =?us-ascii?Q?rI8qgUmfhR9VO/69WIqQ?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e291c51d-748a-44d8-325f-08dccc0f87a5
X-MS-Exchange-CrossTenant-AuthSource: SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 11:57:05.4175 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MEUP300MB0256
X-Mailman-Approved-At: Tue, 03 Sep 2024 15:02:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=outlook.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=55vnlN5xTrxV4ec8h3zVzd6wB8MtlheSr2q7pHwhyic=;
 b=nlNiOrjK6CNSIdpjhRxCZ2pjluw+BCE5Zf4xJA7exDx9jDHehYVFZ1a5p4Q7XX9Z2b6w67rlhLn9Z46kc2zjkUA6NLG3BUmdhhZenoOb68UqB8aemDLmwFerSzXKxT0DUnX3Rwl7NocrFAkk+fjRIFmMFF9CXZUWC+oqIlFvnWKXgffOv3GsUTmECtKUp3MBvT3mg+2pfxCjUHGPqya3RrfWxIVjJS+1c9/jqdr+RJAKBVvVxFarllO4zeh/wsgMKM7CaQe4DS5MqqOg80K3AhSZiZBtxCumDXE9NPyeCV42M16uAVAnbheUJcF0gx6hRyX1pesHPxFz4C9IGuFlcQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=outlook.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=outlook.com header.i=@outlook.com header.a=rsa-sha256
 header.s=selector1 header.b=nlNiOrjK
Subject: [Intel-wired-lan] [PATCH v2] ice: Fix improper handling of refcount
 in ice_dpll_init_rclk_pins()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Gui-Dong Han <hanguidong02@outlook.com>,
 baijiaju1990@gmail.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch addresses a reference count handling issue in the
ice_dpll_init_rclk_pins() function. The function calls ice_dpll_get_pins(),
which increments the reference count of the relevant resources. However,
if the condition WARN_ON((!vsi || !vsi->netdev)) is met, the function
currently returns an error without properly releasing the resources
acquired by ice_dpll_get_pins(), leading to a reference count leak.

To resolve this, the check has been moved to the top of the function. This
ensures that the function verifies the state before any resources are
acquired, avoiding the need for additional resource management in the
error path. 

This bug was identified by an experimental static analysis tool developed
by our team. The tool specializes in analyzing reference count operations
and detecting potential issues where resources are not properly managed.
In this case, the tool flagged the missing release operation as a
potential problem, which led to the development of this patch.

Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
Cc: stable@vger.kernel.org
Signed-off-by: Gui-Dong Han <hanguidong02@outlook.com>
---
v2:
* In this patch v2, the check for vsi and vsi->netdev has been moved to
the top of the function to simplify error handling and avoid the need for
resource unwinding.
  Thanks to Simon Horman for suggesting this improvement.
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index e92be6f130a3..b403d55303b8 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -1626,6 +1626,8 @@ ice_dpll_init_rclk_pins(struct ice_pf *pf, struct ice_dpll_pin *pin,
 	struct dpll_pin *parent;
 	int ret, i;
 
+	if (WARN_ON((!vsi || !vsi->netdev)))
+		return -EINVAL;
 	ret = ice_dpll_get_pins(pf, pin, start_idx, ICE_DPLL_RCLK_NUM_PER_PF,
 				pf->dplls.clock_id);
 	if (ret)
@@ -1641,8 +1643,6 @@ ice_dpll_init_rclk_pins(struct ice_pf *pf, struct ice_dpll_pin *pin,
 		if (ret)
 			goto unregister_pins;
 	}
-	if (WARN_ON((!vsi || !vsi->netdev)))
-		return -EINVAL;
 	dpll_netdev_pin_set(vsi->netdev, pf->dplls.rclk.pin);
 
 	return 0;
-- 
2.25.1

