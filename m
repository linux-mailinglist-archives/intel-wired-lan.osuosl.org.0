Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6EA96A185
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 17:02:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E71DA607F7;
	Tue,  3 Sep 2024 15:02:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mI5gEaRl7TaW; Tue,  3 Sep 2024 15:02:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D80A606C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725375751;
	bh=rzPmrfnypnTcXSOUzQP80L8x6QBskS0bYOPokj0QcqA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=TmxkmC+BXp50CsoF0JseC0zRGXO1VbWgFbyf2FTP69zOULkDs740TcFnHEdWPXVDq
	 wzDXDCKHXp+Lnv9jNwirUOCxl5DEm3X4+MjItHO3eG9rFyamDMqQy+vfAd94FtRDjU
	 k6QxqEWRzEbM8K6+JQhFMpvBBnosUkJfYRUFSf0CFHiDEED//ZFxOcq5dj6xzo6TN8
	 lA3eb9Q55ivEd1YYK5uDQdvVKzmz9KmO/uLKMB95S5xig7p0nTNJlEvVLL5hU58X/E
	 ffRrYVq+Pr4uBArKLiJjwgU0ZqfTVCnIPmY2QgdeKFPNNCgDDdZjpxCTqIE3CAWfGf
	 J/6+fVJuPHjXw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D80A606C6;
	Tue,  3 Sep 2024 15:02:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 843BC1BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:08:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E86980FA3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:08:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T1JxwLzLXf5j for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 12:08:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.92.63.61;
 helo=aus01-me3-obe.outbound.protection.outlook.com;
 envelope-from=hanguidong02@outlook.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7C81580F86
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C81580F86
Received: from AUS01-ME3-obe.outbound.protection.outlook.com
 (mail-me3aus01olkn2061.outbound.protection.outlook.com [40.92.63.61])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7C81580F86
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:08:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g6jLgNJ4iWM6VAkZ17TsYhcaHZeTCD68mSGjhV0xWBq+DY10RHjIdMkYn53aCFwxFgvi46+N2qc4ZbtaIcNoKs82S36Lul6cvsuitOfoQDKOzUFHtAJRsfthUd+WXpIcNvfIvgj3836/qClnjokORq7Vz0ZotngK/PCYJb7v0a1MXG+/N0VoJ8dg5y3iQ2KbAUFui9LBhXCMWrVei9jHF1siHCqr4Bdm0fcR8ynJyBbgmhcq5V64nf6UwDl1fWiICKddGkwD4iX8F6iVkwAKNRWstAfAHIKxWcxYsF14zUYO2LrWy4t7sFs0ITUYWSwvOdhR+cwzZzNef/hCbY0kpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rzPmrfnypnTcXSOUzQP80L8x6QBskS0bYOPokj0QcqA=;
 b=d2CNLUMnnCu+FoQSIk9gmoTGzqzFBUlAxLa6aaBmtjpPRhT5lYVRV8g1HNXPGlc41zZqNISqFYAU+8Bs+5NtX1j3dSLPt+seg+PT/fQ74hw1Wnu8m8UlNvoYEgr3po3h90g3NCjXzeduNfnyL8SVhb25wbSFYUPEwR+2XBiqrIIPuVPCMYCI6uvzcV7mSAR4zPEK0Htut0DUmn69Zcxkvhj4UC5UyuaDQNFn91BCxTFZafWr3Khgn5xh+KjP/roCrmsgwI7lYWABh8sfy1OXxHH6LfFQGvxJ+oL+Cnxdxxdp0B5koNL8MB5vd8O4XS73/H8t2mu+OcPNllE9CeE2Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM (2603:10c6:10:297::10)
 by ME0P300MB0716.AUSP300.PROD.OUTLOOK.COM (2603:10c6:220:22c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Tue, 3 Sep
 2024 12:08:06 +0000
Received: from SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM
 ([fe80::14bc:d68f:122:f4f2]) by SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM
 ([fe80::14bc:d68f:122:f4f2%4]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 12:08:06 +0000
From: Gui-Dong Han <hanguidong02@outlook.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Tue,  3 Sep 2024 11:59:43 +0000
Message-ID: <SY8P300MB0460D0263B2105307C444520C0932@SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TMN: [/Or3ZIGSRQMGYPg027de5+660G9Qy58PF6tDioTmqRs=]
X-ClientProxiedBy: SG2PR06CA0203.apcprd06.prod.outlook.com (2603:1096:4:1::35)
 To SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM
 (2603:10c6:10:297::10)
X-Microsoft-Original-Message-ID: <20240903115943.8422-1-hanguidong02@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SY8P300MB0460:EE_|ME0P300MB0716:EE_
X-MS-Office365-Filtering-Correlation-Id: 46464ae1-4501-4a36-4cef-08dccc111172
X-Microsoft-Antispam: BCL:0;
 ARA:14566002|19110799003|5072599009|461199028|8060799006|15080799006|3412199025|440099028|1710799026;
X-Microsoft-Antispam-Message-Info: IXMScY3PZE1T2+UpKP3SetFbyDG7kA+TflI3OLqMHLcmYDB47AInJo8IthheYfltCDrquj7+dD03xY7faqpltut4zA1G4yjq27Wb18Euf2KZTPAGGLgaLjCb3v5r/UpmjmDAHHxfzbhhXaA5/k5twRZVt8iuEns5hyPhUqEcPXZ5OGth4PH5EYsEGtdNxxqIpnqMrn+2jfbfhbp83w0+K8BZswXAtmLZn9Pt/Vn/kRrpyuph+KxidaSOvp1+1YqzDBUGNxHTg7dmd2ghPekZ74hVYv0KVZ8kB+xkABFZUaxyslVsf8D2fLBMrSa4kEBdAGeN4DI9HzooRbv+QRx6siDRVqW7IRM+bhGet2nOhwEZIC6jKNj/yFbgU5KYkgDWIx/sEH/2vifwmpmh7GgTHZivI+4UR9DQufnXsrjAu9zdL1DfK4oP6Ux2cDLlDDV2Jm3NsBnXs4rZ8bl37lcxcpe+MZiSZC/Mnoek6W6N2tT7h7AtFdG3BnSgc26uq8R/GT8+cptZWg4pj0YC3pGtYV0iLC8Uh4p0xW7dOuN6i3JzXiXNmERYpeHXh765ExO4WWuUv2O9CG1fgyxgEq6nqGWtZ6Vb3vivJrfcf4pYdBEHWN3OF1/grC3TITVydreeKwLwoRz5+AvaEOTtPRUE4av8P7hgfhAs3btxkfLUPM9bUvv5lRHFjnPSv6YMk3NcvkSwAoSvcyfeiAjmzZFvx3lvLV8UIbjZqqTgoUTptL8=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9WWwcWEsahlxARVjlTOGXA6uDPE6GlRfRy6OoRz15mhc37ms1hvH+ZdRDR+u?=
 =?us-ascii?Q?cRC+8FweK45auvaSdJH2GgZPOLd6Kxsx15fDljwIs42swnOZcrNve/iSKe3a?=
 =?us-ascii?Q?FKHb16ZJVZZpy/TxGKW1SZgpI8UIK01Jt/wA7jXVxgQUdLB2buiCEnpejF4d?=
 =?us-ascii?Q?4VpbJeRZiV78HQm8FeuQ1s46DKytZwabydxptfR9yOHVgWC/6tMcv/WYpJRS?=
 =?us-ascii?Q?BzDrHgZeEhA/eJq1GJc5nELDl3Qw5bDb90WPoGe5q4JFZmMMdbVKVTdfJU92?=
 =?us-ascii?Q?rdHSolNkaXuuKHzNTJiefViUJOz85S395jpYzrGu6y+AhGAShjlEdYe+wBXl?=
 =?us-ascii?Q?iVSj0LhplQc6mWGxRUbzJhe7ZAmwlwPHvRPQ+eXYw8e4Q9VsUU5DI2swHzdE?=
 =?us-ascii?Q?DXXGpSvAjm98u1hS2PJXA9zNrwIgNYEbXZChePXNk2WzpoYxLFXAqOzHmxnJ?=
 =?us-ascii?Q?sce/7bKtCzt79NL6vO7HPMd5GxqDLjZT2KF/B3tnwaQIVEBxgXXVys5O3OOQ?=
 =?us-ascii?Q?n/tI2QrbwJn/EhUVZgsVzvJ9ndZjEsT1U3QKegzDur9B+izBAX1ccMV0PEtv?=
 =?us-ascii?Q?2oZSGi2BYbV+2ghm7XHj7hKGrAeB3mT/PAR14wMmlakkMnyERYFCnhGRgOug?=
 =?us-ascii?Q?y8a/0TpXbrh055+9Q1wwb3iUu77q8FYKrjwiJw49GthHuIuT1gv81VnFdJrm?=
 =?us-ascii?Q?K0F5F+3ecFxZZ18Ovxf5wAet3q1C7olhSFrFRmrZ6RWJox1fTffnlHBFlGsf?=
 =?us-ascii?Q?afFszeZI/Ecq46F9zFIpTqs3jn1AafOPzPrkCV5lHBjUR5bunpzdMyki9/GZ?=
 =?us-ascii?Q?gz34vfaZ0ri8wYIqmg6TO48kmkXY4bPiprrahaPyiXW1qapNqy2nlyv0bqO4?=
 =?us-ascii?Q?X4BlkqnbL+JO8srS45T9hKOUCG8lODoxQacYngY8cVdq/lofVwb0+/CKyz8p?=
 =?us-ascii?Q?vjZa0Qx3Co+wPcIeGfyzgvEfIFCOjQRKOVBjzd747bbJh1HCcdqi8cGstJuO?=
 =?us-ascii?Q?jj9KsVEqwiYOjKFquZeVWLdaIwIIZtfEeqxvCYzGkRjY6VOzRe/1PRUxRGGx?=
 =?us-ascii?Q?MTb6C83pPyr25hZQe8N9zdRXxgBfdtBRgS1VBbIPrRzIrnZDQIoL+My8LY1X?=
 =?us-ascii?Q?WB91soKdJ/eQo4KcJbksppB58bIQHajc2Z8qMSZWwRIQSeQCdMDbYzfZkyrr?=
 =?us-ascii?Q?WmrueBBPLcd2+bVLjaARC8u/KKOqceQcSDYRap+fSHfp9rj4i1jjgjf28d/O?=
 =?us-ascii?Q?QbE704EEsfhymYIPzclR?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46464ae1-4501-4a36-4cef-08dccc111172
X-MS-Exchange-CrossTenant-AuthSource: SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 12:08:06.0582 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME0P300MB0716
X-Mailman-Approved-At: Tue, 03 Sep 2024 15:02:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=outlook.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rzPmrfnypnTcXSOUzQP80L8x6QBskS0bYOPokj0QcqA=;
 b=af7CVuViHBVqd2mfj+NtWxICtHJDd/40wV+LmNJHrxhNUVYTYqytr6OMEAjQcQOC7CQC2g28GeIECessouzsmGiLmAEFiqHsONbCFQgwONpzQS8ZkNXe/cG7CIGngtfnSN2lM7MBu60S2B6s+YVtFgITGwEUYHxHD0zBVnbUu4tvQu4WsmoTcHI2cRkqD4hzkZRs7wDeHeeFkPOVZOqfWFS2PszknkTYSTH+YyxrVmO+PqjI+HSgX5tzrEzpewsc7sSG7casgJXaWNGF6kB+q4MlVmiLDLMF8DFkOzcEAcTChL1x4Xy61p4LiCRa/6ypmzu070SfkCWg414bVjjeNQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=outlook.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=outlook.com header.i=@outlook.com header.a=rsa-sha256
 header.s=selector1 header.b=af7CVuVi
Subject: [Intel-wired-lan] [PATCH v2] ice: Fix improper handling of refcount
 in ice_sriov_set_msix_vec_count()
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

This patch addresses an issue with improper reference count handling in the
ice_sriov_set_msix_vec_count() function.

First, the function calls ice_get_vf_by_id(), which increments the
reference count of the vf pointer. If the subsequent call to
ice_get_vf_vsi() fails, the function currently returns an error without
decrementing the reference count of the vf pointer, leading to a reference
count leak. The correct behavior, as implemented in this patch, is to
decrement the reference count using ice_put_vf(vf) before returning an
error when vsi is NULL.

Second, the function calls ice_sriov_get_irqs(), which sets
vf->first_vector_idx. If this call returns a negative value, indicating an
error, the function returns an error without decrementing the reference
count of the vf pointer, resulting in another reference count leak. The
patch addresses this by adding a call to ice_put_vf(vf) before returning
an error when vf->first_vector_idx < 0. 

This bug was identified by an experimental static analysis tool developed
by our team. The tool specializes in analyzing reference count operations
and identifying potential mismanagement of reference counts. In this case,
the tool flagged the missing decrement operation as a potential issue,
leading to this patch.

Fixes: 4035c72dc1ba ("ice: reconfig host after changing MSI-X on VF")
Fixes: 4d38cb44bd32 ("ice: manage VFs MSI-X using resource tracking")
Cc: stable@vger.kernel.org
Signed-off-by: Gui-Dong Han <hanguidong02@outlook.com>
---
v2:
* In this patch v2, an additional resource leak was addressed when
vf->first_vector_idx < 0. The issue is now fixed by adding ice_put_vf(vf)
before returning an error.
  Thanks to Simon Horman for identifying this additional leak scenario.
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 55ef33208456..fbf18ac97875 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1096,8 +1096,10 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 		return -ENOENT;
 
 	vsi = ice_get_vf_vsi(vf);
-	if (!vsi)
+	if (!vsi) {
+		ice_put_vf(vf);
 		return -ENOENT;
+	}
 
 	prev_msix = vf->num_msix;
 	prev_queues = vf->num_vf_qs;
@@ -1142,8 +1144,10 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 	vf->num_msix = prev_msix;
 	vf->num_vf_qs = prev_queues;
 	vf->first_vector_idx = ice_sriov_get_irqs(pf, vf->num_msix);
-	if (vf->first_vector_idx < 0)
+	if (vf->first_vector_idx < 0) {
+		ice_put_vf(vf);
 		return -EINVAL;
+	}
 
 	if (needs_rebuild) {
 		ice_vf_reconfig_vsi(vf);
-- 
2.25.1

