Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONUrMNxz+mlpPAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 00:49:00 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D164D4741
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 00:49:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D026340CB0;
	Tue,  5 May 2026 22:41:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zd_mQqPKTKp7; Tue,  5 May 2026 22:41:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E4B040C41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778020864;
	bh=Vod1CyxclIC/YpigZPNpZkyXiVEI82GthMnlPe80LW8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZgX6TNCZbCzfnd7rC4D//IdG2nIFnPvgxDMnxsMw+ADEbAgpJ/7RaER03jaa4hHLn
	 Lmu6+dABdBHZDB5jVZgjuWkYKoU6k5k20FpvZyHAf3avU8sbpIR/bDw4w8nczRaszZ
	 0uX3XNyWsMhA+OF1ImCAVrnGz687iyno0tk/ViiWJ/RCS6YzM4QZSlN+MK3OH1bLJh
	 lWbywZacuS1curOeqlTvYhkaJI6Y9XznndkzZkcU38yv14l0oqwST9FTphzzSAPypa
	 0AgLOOPF+9zMdQ/YfWhNKH1s3t+fe7nQUBLyvH8p9HOw7K3EcQBze7xw7yhRSW1IMX
	 AKVcMsIkj2lCg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E4B040C41;
	Tue,  5 May 2026 22:41:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 770F7190
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 15:27:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6900A419AB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 15:27:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6qUm4RjT9x1f for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 15:27:07 +0000 (UTC)
X-Greylist: delayed 1807 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 04 May 2026 15:27:07 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AF7C841789
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF7C841789
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.151.68;
 helo=mx0a-002c1b01.pphosted.com; envelope-from=jon@nutanix.com;
 receiver=<UNKNOWN> 
Received: from mx0a-002c1b01.pphosted.com (mx0a-002c1b01.pphosted.com
 [148.163.151.68])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AF7C841789
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 15:27:06 +0000 (UTC)
Received: from pps.filterd (m0127838.ppops.net [127.0.0.1])
 by mx0a-002c1b01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 644BRT0V237558; Mon, 4 May 2026 07:56:54 -0700
Received: from ch1pr05cu001.outbound.protection.outlook.com
 (mail-northcentralusazon11020115.outbound.protection.outlook.com
 [52.101.193.115])
 by mx0a-002c1b01.pphosted.com (PPS) with ESMTPS id 4dwgtukfup-1
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Mon, 04 May 2026 07:56:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vl9vJ16FleSEC4z77YioMnTz+E/mT+EqJlh6PgVxSmm7ZHGd9FJSUpplG8+RBCdW1g+QRZ+/1VqLxHxVDZCyCKTBIG1RCVv0NF6g/DHKVqTNg7XO3CpDWiDKtVWBXP3eZYlb1s80h4lfZ5SxgXeOnyyAnpU3bTq0GLdJga1MJZo1p0lchA1b0xsj49tQm4K1sWj0HruO+O6MBSjRgFc8nPjUz3kD43PloDFAMclOZ/ZXW/iBh57ZfL2knypBY6wD5MhicUY9IyjyDkiXGoGWsIL4OK6n5M9D0DiA2mVq6/X49f7NY2Nso1JycEq46cB2ftCEx2cnPjncbB4zkYLEvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vod1CyxclIC/YpigZPNpZkyXiVEI82GthMnlPe80LW8=;
 b=H8l0lLMeOnvwT+Zl52iJ/VX1rxJv7mYan8kiWsoAhwPO6p6Iz8RcdQc1ci4lrwVv+bK2FIHScRrxymQS6BvwhGDYG3Wgd3RTGi/uTg6zkfBOSmgZUDMEyj8uGv5NUxek+KPEl1uRadnAaVEO0zfOkphAi6Rs7pTJDVvzxcWNrXwrlGXfbjbloj/7zQkZHDBytNE2lfMHuhk2HahQCjC6wHymU/mIFl9Uz36JxQehZ4QMbUyaH7mUj+tSn1Y+EuLowcLGWxoQdmPy9T1yuNwiEFMHD6qTymcaovu1zsNavNU3lLZojP/bNYebIm5XwYkKWrPdmPqYBSh3cmrtM69uSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nutanix.com; dmarc=pass action=none header.from=nutanix.com;
 dkim=pass header.d=nutanix.com; arc=none
Received: from LV0PR02MB11133.namprd02.prod.outlook.com
 (2603:10b6:408:333::18) by IA3PR02MB10674.namprd02.prod.outlook.com
 (2603:10b6:208:509::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 14:56:52 +0000
Received: from LV0PR02MB11133.namprd02.prod.outlook.com
 ([fe80::10e5:8031:1b1b:b2dc]) by LV0PR02MB11133.namprd02.prod.outlook.com
 ([fe80::10e5:8031:1b1b:b2dc%3]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 14:56:52 +0000
From: Jon Kohler <jon@nutanix.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Jon Kohler <jon@nutanix.com>
Date: Mon,  4 May 2026 08:48:23 -0700
Message-ID: <20260504154823.2535612-1-jon@nutanix.com>
X-Mailer: git-send-email 2.43.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: CYZPR11CA0015.namprd11.prod.outlook.com
 (2603:10b6:930:8d::23) To LV0PR02MB11133.namprd02.prod.outlook.com
 (2603:10b6:408:333::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV0PR02MB11133:EE_|IA3PR02MB10674:EE_
X-MS-Office365-Filtering-Correlation-Id: a4111137-2fff-4a26-a6b9-08dea9ed6042
x-proofpoint-crosstenant: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|52116014|366016|38350700014|921020|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: eBMSFc//Y5VyBKhjU1WnznPajr+hmQ6adigeAB9I85mR8n5Zca56zzaA/vuUI8j5eZi4oqBjVjYJXS47XZ7Q/vupgs1JVBbzodqtwbf1OsQMYpVJtdwzkXSXl3um75yWW3QXYWkkgkx6BSHvvNhGlZZ2ri9zVJDTC3Ji/gQmPGJSykSG7AiZ1abVHdox8iAPE6M6um5N3qbnjzog63lw/W66Ebcxvi8thCKBit4l/E0L69vcnjtq8AxqQEg8DpBSqMcoSO5NdM4NI+wTkBY5U5e6lPEMBa2PuotprET9jLj9E3JbSedpj78876AWN6mt8DcirrEwonH/qzJbOJbtUbvkkv6gVw/YSCRAQZsnLoZrVBweHlC8Ij/gX4TaJoUKyyuN5w702wbqjUzX97AKy0hC45mPkQAgy/yx5wl180JFgAkzLWVd7CLaRahSVaF9KVDtLozuL/f5ponyUhB9o8mVkflWsd2sPW2cppblJsRd6w23ukWWHbX2m2Cj5dQke/rpDGTtvXbp/VhfFGY8hV72ThCEv6L5es4hEogQg/adBG866d+O3/concxHUfaTKPgwuE8wpJmuVHZIR0/4pKioPKLxZHNoyk4dTjGmmV/9bofctVrcezkn1LARoA5rXbNfn//eXn1m/MOqZSYeUwMl7yRAJhLf+SfxK66ufV1zStFDWOsb6e+dL9yMnqRwcTbX/9gNz0G3Kj19etXHP6WzGz163zhQmr3t8XZDYWrLWvCSBJHPZO1qWlDOaKVdDBn+QmuVE4ywgfkEhS4G/Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV0PR02MB11133.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(52116014)(366016)(38350700014)(921020)(18002099003)(56012099003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ej1V4zbD5GIfwQMXXRq/S50Dm/sgDxsywgnZHmHm6ruZ5PFDfT20xh3gPv95?=
 =?us-ascii?Q?9eTvEjsxgxYQC9oQuk7ksIH/DAtGTHPyGmm6kIIaO89l7l6jmbBvkLsffM4K?=
 =?us-ascii?Q?LIy0FTrJM6h1EVNYuNSYX9qGQd2jiv6G8Ne1WLkV7cMhKYTmvV4AMHVBNxA0?=
 =?us-ascii?Q?ld9iU8i79r0PB3oJqXtMsuS/5YoTGFdD1xAzghhIO1L/B0+X8k/E+1PrXn0t?=
 =?us-ascii?Q?tskEjWzDAhuegl6mAU0UIYU4fC1ZA2uEH83OG6PArquoEE9uKgu0fBiz3oVB?=
 =?us-ascii?Q?LrydpahZLJNQrpn3q1X1NGNbIZBovUGn3sLSMM7Ag/3Jbkthcuj9ZcaONwuX?=
 =?us-ascii?Q?tHwu5O91eGty2DEN4QSVrWsGdw1dQmOkJ/+InmFdq0zLMKEXp0VbB4zzRH9T?=
 =?us-ascii?Q?iClAu+OUERskDgcoPUDiYLCoXzFfvibRE7Me2oqNAZrudloCfmevyICYW+65?=
 =?us-ascii?Q?z1DatY3BOTxQOYC52MFEidEETRLkU1Ms5YbXjJs8dKEZOaB+NCMRxMW94wkb?=
 =?us-ascii?Q?e5kFFXGaYi1Dd/ucrsnOBFAmwAcHOb+IRgHxfIgsbyduQ9tmSmXXKghtcY81?=
 =?us-ascii?Q?94Sdf8WRle7G1YGjT66dleXuSWSFYAkdXA50QQ5t8+72sLi8Urw+nmGac6xg?=
 =?us-ascii?Q?5tmdLFjoS+frog8JP2y+EBV7cyyV+U0HyaRisKWxfoOcq3tZJLeMYuy55x1Q?=
 =?us-ascii?Q?AmR8YVTt17L0J/BbMBE9H7kicH0tZlqjREN4ftkMty4Xz8JiEYKf1Qm9V/jD?=
 =?us-ascii?Q?dNyrmjjuB/O7GbS+X+EIzFw4HraHCGONNk/PdriNY7JAN2ZKuYG25dDIQP2l?=
 =?us-ascii?Q?vV5Or6KU0bl5wpBlY0E/pE4+9NAuZnCsmJrFPnhHWvO7ren+E4Tpvhkc7dWl?=
 =?us-ascii?Q?vEbsYBztomHzpEMhWSReNQ3im/CL12T/BR/HlswBu2MjK0Z7rKupQzHy7wXE?=
 =?us-ascii?Q?DnqA9qjKf3kJxLb88icCzrt8vAzFD0XSEYEy3IJdSANRGEp+kYm+v7IWC9kR?=
 =?us-ascii?Q?tdeXkPUphUGycaGAG5z/yQcfNohR213hUQo9PbDMpbmXJC7BIPbWLGd+OQNl?=
 =?us-ascii?Q?Mpl2A3u37DjV96hd+KF3T1KHtGsogwpil7Y/nUFiPSJjYMAY7rwna1Z4nps1?=
 =?us-ascii?Q?IbrWDpxPtQHwPGwdFIWKowp5J9bbm+tNbHVtkzuMWbZA1fKfz0DD3dJlOzDm?=
 =?us-ascii?Q?Z8u1usqQ32lmT0UT9Mzs0rHCvWn393qvpcQgr9fjW4fKGjOrJu3TWdDJ69g2?=
 =?us-ascii?Q?PlQ15fL6i/G3vH8xE32wDhacMm/bfdJ0dtZhoTkHkPGqbYQDrUdhH+hhqy7A?=
 =?us-ascii?Q?RdAhCUARx4uhTa5/E6iVBpAtoXk+vc0Y3c62kABqtY3qkY+ckS02Fs99RTW5?=
 =?us-ascii?Q?wohfIZfroaeKZUGhd2b8HYXU0BrSfB51IV7vWVY000wmbGXcc33DS3CV92wu?=
 =?us-ascii?Q?XM9CljKvHnaLu4FqZp64kuvesZhZdpaj2xQrZj20sVZIdecFbr5jyxBKC/2D?=
 =?us-ascii?Q?IhGhAh15P1TT+1o/GjiFMksLhZezfNcBol1172YLDE1C3sf83hqP1K/WdiS5?=
 =?us-ascii?Q?1R+XpB4gbJTzfWHa6wPeyVJDAiPRADGdpN4Ff4GrGL1W5wJAu7lTjzm5zH9I?=
 =?us-ascii?Q?SxWULTlt+eKmd8MRWZTxEJOs5oDA1l1twXYdaZwSojOsGuI9yzm7Hu1/Tu4I?=
 =?us-ascii?Q?oVzla7+7WK9aVKKQdZcYSAkvjhhWFc+Xn26yZ5jQUP7++yHIS3hlAb1Q7P2d?=
 =?us-ascii?Q?+0n5jFN8URPrwO/fJ23M27JHlUUa68U=3D?=
X-Exchange-RoutingPolicyChecked: lRwkP9/cRxTMuftLwk8acNPmQJpUDm82jA06WwK8SYkhRckUavbK6+5uh0rSEwhTFc3SMI2dnv3QTT5Esr7qV9vvUVFg6UypfV/6aUve3s/fpshT6fYwEw0xvcOhR8bEToVTOqxnYgX2CKvThbHQY8mJGbT4vhx8RV5DbCPiJ6aN+LWJUCCwlNshx32GyjjszCWJJzaO30D9rUFsRWVf2vl5dDV59x5pyGBXWS0aWqwIu1b+jrn3d/g0HlmHzAUH55FwZA5ou/klIOjGPRIZACCPGgrPIOG4UQTqSRZDz/4dljk8BBKIc5/mQvYS4OspyXw/sNWMSIn0+109btVDYA==
X-OriginatorOrg: nutanix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4111137-2fff-4a26-a6b9-08dea9ed6042
X-MS-Exchange-CrossTenant-AuthSource: LV0PR02MB11133.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 14:56:52.1668 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bb047546-786f-4de1-bd75-24e5b6f79043
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IfI/2Q98lffXPrjipOqZUTZHMkBNvVdoMT7CeXOjDcdeh5o9Iq2E1+O7prZ/yezGpUMY3YZz2Hgk6cZBmQIUqHLA8C1Iag4gBDXQ0sWOsDA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR02MB10674
X-Proofpoint-GUID: HveLyEQPwLx_8X3yFD9Q6y9QW5xC6OSh
X-Proofpoint-ORIG-GUID: HveLyEQPwLx_8X3yFD9Q6y9QW5xC6OSh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA0MDE1NCBTYWx0ZWRfX7KSgHoW84RBt
 S1uKqWQ7kKzLaVwBNKQ50gzDf0iMG+COzeUfuIVcniK2jhUMEsNRL7eLoRqkJU120HSu3JeSsIP
 a28XqkztXujJccEK+qA+04mO0WZnJx9XZ7ZHbKw6qp7ot/II89P6PYfu3ocn2EhyDDReO+OU8pG
 6NbJId2glU30DghpvjBUe7hpWnivVmUlVmMf+jqbtuGoXZfyNJFrUzYBZ4jVnSy3lLinoPLmwUW
 Q/TWg+OvljPppdcb3zDYKXw9nnn9gcMMWp3ieq2AKVZu8PHGgL67CO+/kvs1CG7B3WwZHsyaFCH
 4S1cKrI+mCIBKx8dkQUhRTNotHxd3aGkSi36/y2qcg0YN/cym9Uge52DqpIweXl5x1U8f7Qdn9I
 6z2WLdT+98DnvEYJG7gAnU88OSmaVInCrqsYLROSWn24DOurqNHzLjtGs5ZRchIhZj5e8lgqO5s
 X2JqqlMArYBECdyWi1w==
X-Authority-Analysis: v=2.4 cv=LJNWhpW9 c=1 sm=1 tr=0 ts=69f8b3b6 cx=c_pps
 a=1UxUaKSOIsEpFYfBxZ3OzQ==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=NGcC8JguVDcA:10 a=0kUYKlekyDsA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VofLwUrZ8Iiv6rRUPXIb:22 a=1L6crL_YRTbalZ11mEUO:22
 a=64Cc0HZtAAAA:8 a=mAuF4pnrdMN8zjMDXLUA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-04_05,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Reason: safe
X-Mailman-Approved-At: Tue, 05 May 2026 22:41:01 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nutanix.com; h=
 cc:content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=proofpoint20171006; bh=Vod1CyxclIC/Y
 pigZPNpZkyXiVEI82GthMnlPe80LW8=; b=JXf3kowjBY5kqAyogX5JDYjLUFun5
 cceYIIbUhI3h4f72F8HRDyhGzRahKY0vHeRWGlGBDc5TcMTvgePSpaI23TgUuuGz
 aS6EKACBvxJbaAICCt5uEYSyWDDap6k8mQ6DsWuEuCZPu0m0x/6qOxWpueG6TO3W
 MJYKPP/J/RTIKDR7+6erMxk/snJYYvw1MSppJEKeZLkv4frTVfbpzU1GG9v2oYUB
 S5k2y1zt8gIf0PI52fhLEjyNjmsKNjlXtlZuwu7j4jg3o/YfEbFi4V0yyRKSVpYc
 C/PjsozzUzxBWOk1VNOvtottdHMRRTNS1bhY4wyNzBopytqN+CU4UsCSw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nutanix.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vod1CyxclIC/YpigZPNpZkyXiVEI82GthMnlPe80LW8=;
 b=w7oHxGGprkqU8yFBraUCiWi0XEaEYMNSNFqonaPuArQREfIQzLYLy8QqX4RX6pkNT8qY8DV3dp9WmSoULnhNB0TtrTj4FUqk3FbGy+2vr93bTdTen6R2xMWan9GbyFnT14wGTN331il0OYRoUZvhfBd1Ts94fz2odM2CqZLA944fHpHSJQd134BHjEs03t93MKHPFAi/8H27tVFfu+HkqIv/DBDH17JwyfBBo3xAzH2ZESVmXX4XnUldIeHSAdonJOMsDZzhJQ70mFdOI/t6RuGgCx/m/zrBVwXmYcY25wb6uAsGwHfI9C+M7PJCIKyqarNANnm+6OdO2vmkVEhS+A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nutanix.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=nutanix.com
 header.i=@nutanix.com header.a=rsa-sha256 header.s=proofpoint20171006
 header.b=JXf3kowj; 
 dkim=pass (2048-bit key,
 unprotected) header.d=nutanix.com header.i=@nutanix.com header.a=rsa-sha256
 header.s=selector1 header.b=w7oHxGGp
Subject: [Intel-wired-lan] [PATCH net-next] e1000e: ethtool: add
 get_channels support
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
X-Rspamd-Queue-Id: 20D164D4741
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DATE_IN_PAST(1.00)[31];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[nutanix.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jon@nutanix.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jon@nutanix.com,intel-wired-lan-bounces@osuosl.org];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,body];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[jon@nutanix.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[11]

e1000e hardware supports a single RX/TX queue pair, add basic support
for ethtool -l (i.e. get_channels), so that callers indeed see a single
queue.

Signed-off-by: Jon Kohler <jon@nutanix.com>
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 26 +++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index dbed30943ef4..3a2c1a77ee74 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -2353,6 +2353,31 @@ static int e1000e_set_priv_flags(struct net_device *netdev, u32 priv_flags)
 	return 0;
 }
 
+/**
+ * e1000e_get_channels - Report number of network channels
+ * @netdev: network interface device structure
+ * @ch: ethtool channels structure
+ *
+ * e1000e hardware supports a single RX/TX queue pair. When MSI-X is
+ * in use, an additional vector is dedicated to link/status ("other")
+ * events.
+ **/
+static void e1000e_get_channels(struct net_device *netdev,
+				struct ethtool_channels *ch)
+{
+	struct e1000_adapter *adapter = netdev_priv(netdev);
+
+	/* single combined RX/TX channel */
+	ch->max_combined = 1;
+	ch->combined_count = 1;
+
+	/* report "other" vector when MSI-X is in use */
+	if (adapter->msix_entries) {
+		ch->max_other = 1;
+		ch->other_count = 1;
+	}
+}
+
 static const struct ethtool_ops e1000_ethtool_ops = {
 	.supported_coalesce_params = ETHTOOL_COALESCE_RX_USECS,
 	.get_drvinfo		= e1000_get_drvinfo,
@@ -2386,6 +2411,7 @@ static const struct ethtool_ops e1000_ethtool_ops = {
 	.set_link_ksettings	= e1000_set_link_ksettings,
 	.get_priv_flags		= e1000e_get_priv_flags,
 	.set_priv_flags		= e1000e_set_priv_flags,
+	.get_channels		= e1000e_get_channels,
 };
 
 void e1000e_set_ethtool_ops(struct net_device *netdev)
-- 
2.43.0

