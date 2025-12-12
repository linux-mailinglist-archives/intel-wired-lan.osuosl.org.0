Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC4ACB9C3C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 21:28:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA6BB821C8;
	Fri, 12 Dec 2025 20:28:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VLyj4uToJlV1; Fri, 12 Dec 2025 20:28:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C897583BEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765571316;
	bh=B5xaA83ATEy9Ni51LzKgqzUCM/6gdNfBJ3D9yE+/m6w=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gHtTjKVzyGxigqAkmCPdFSOH5vhbmmsO1kAKr7HNMAmBBOr6EvymLG+KVCDMl1Id5
	 mlGLajQpajOW6+pm0bArpKQt+XVADeswXaW9tI0UFO8niEe0xg7kQyFWM9/37o1056
	 924/059xfe0KKvTUSxxTGXDKmo8gWTL0gqNkmApU3PZU3etl48+sEnkWA3fcELP+ES
	 1VWSc5uXsDWwpYSjrXo/CIySzMHOQ65qolUZtGWGbQ3hykUG5XU3Pf84Qr8RMbQ4x2
	 QeSed092LEAiTAlxNrwZRH8YaqmBs0YRMTD8Scw1YaeAbs5emdr1HsQ0otHtegoOdb
	 6nlv3zWnTA9Vw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C897583BEB;
	Fri, 12 Dec 2025 20:28:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B03C0E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 20:28:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A28354101A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 20:28:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MZ0KiaB2Q-0W for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 20:28:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.165.32;
 helo=mx0a-00069f02.pphosted.com; envelope-from=gregory.herrero@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BD29A40FFE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD29A40FFE
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BD29A40FFE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 20:28:33 +0000 (UTC)
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5BCIhC3n076093; Fri, 12 Dec 2025 20:28:26 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4aycqbc051-6
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 12 Dec 2025 20:28:26 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 5BCJKVOm017466; Fri, 12 Dec 2025 20:22:41 GMT
Received: from co1pr03cu002.outbound.protection.outlook.com
 (mail-westus2azon11010014.outbound.protection.outlook.com [52.101.46.14])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 4avaxd6xst-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 12 Dec 2025 20:22:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GR2L1WhKGLPgjdeBp4JqrKJEcQQtMopcp4T6HABT4toohlHxKWd3GwL/a3s+32UJbJhNacvlvudwjPKntZNRvhLST5xJbbr2LQkwiD4x9EOd8PNiGDugs+zeyHed+VDe43PAWgV7E8TIX/Ey53QLgkiWwlvzeRvY7tDBea8IGWCaM6sm/myD6sUP/g3S4ux4N5b+yaliIXCJsdVbuSRI3AjAJPx7qZYV/SUiVVbc1C8C2O8wXMtVlAQyqzFa1AjGJ4liWX+UiWBpU7kBChiDeAjRiOYyNWYsaCICq06j4Evam2xuGK7g3orr5popglJTOLKC6u7WtiJgEQew16rv6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B5xaA83ATEy9Ni51LzKgqzUCM/6gdNfBJ3D9yE+/m6w=;
 b=rFD9+KQTqd4aEPUU+RAnneAjFr2adNh9ZiJDlezzNgW4EvvfPtPNIS4OJ5aUipIyrjsWjZKpPf1VkTvVSL2v5l8oNSpmSj5HvH24qMGw5NY3xZ+Tn5ysJSgsEvPBR/j+74OhGG1z79wU+L3MHJmo7UwugHkMM6u2E0tiTm+fo8PAddWBnJznc61jm9z8D8bY1b0Vg0BHM9WD5jG+Z7RLw1QLFGpR1g9Ayx14pUILeWL4DDWVIuADHAKyUtayhtzBBz4Keq2cLXR1m/4SGRitMqmgjv+DmQtppNvpE3bkpEP0ALygAWiqdhvfcfK4QnBinpS+H+nTVgrR9tEMuRSfcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DS7PR10MB4846.namprd10.prod.outlook.com (2603:10b6:5:38c::24)
 by SJ0PR10MB5892.namprd10.prod.outlook.com (2603:10b6:a03:422::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Fri, 12 Dec
 2025 20:22:25 +0000
Received: from DS7PR10MB4846.namprd10.prod.outlook.com
 ([fe80::ade8:e990:1af7:f5f8]) by DS7PR10MB4846.namprd10.prod.outlook.com
 ([fe80::ade8:e990:1af7:f5f8%7]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 20:22:25 +0000
Date: Fri, 12 Dec 2025 21:22:22 +0100
From: Gregory Herrero <gregory.herrero@oracle.com>
To: "Creeley, Brett" <bcreeley@amd.com>
Cc: aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <aTx5fiC_YCFF-iD3@oracle>
References: <20251117083326.2784380-1-gregory.herrero@oracle.com>
 <20251117083326.2784380-2-gregory.herrero@oracle.com>
 <ad274880-8736-459b-ac9e-fac2477b44ea@amd.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ad274880-8736-459b-ac9e-fac2477b44ea@amd.com>
X-ClientProxiedBy: MR1P264CA0176.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:58::10) To DS7PR10MB4846.namprd10.prod.outlook.com
 (2603:10b6:5:38c::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB4846:EE_|SJ0PR10MB5892:EE_
X-MS-Office365-Filtering-Correlation-Id: 83c16d79-6523-40a9-7baa-08de39bc29ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7416014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wb0w/TfW74HMLxGP0bfPPrMT5bGMgx+SwXK081e3wAkuaZetN6kgyyLe0Dsi?=
 =?us-ascii?Q?2DMlY9H7CTVHtLgDsRsadpwjb19Lkju3XC4FPDCa20RcRoTJZXpcVT/Q/AeU?=
 =?us-ascii?Q?6dkuPxhgnej2ze57D4IJGj3mi+f4/HlVA9LzfpkkhofO6kzvgU6p2VF7s7h8?=
 =?us-ascii?Q?6kSW1Lt+5rxaqIacCrIKFUndiwGtELFXVhK480ICzSAumrMJCmb2SQLuWxaY?=
 =?us-ascii?Q?T8gkM3qpCNYMQU5axHTDOwE6S7x4Vz4515bjtQIrfs9Fksct7EdWW7OS8Bqa?=
 =?us-ascii?Q?A1JmBSrHZr6K6nVwpicIQ45kdvSKhPDD3+Nub6wO0wTaq3NxKbbCzWRQQAwy?=
 =?us-ascii?Q?8pHJTDdprPmbZN+39eBI/+DJBEGMYWAdp/qp3h8/9g8bIpUJSATUcOYzcYMy?=
 =?us-ascii?Q?djL0dw7wj95IcynF4MkP7ZsdrJkIieBqv3iIjCG+s+zRTSmAG3To5CDCMW+J?=
 =?us-ascii?Q?KXXLCDmug6A+lFhEiYaruGVoyylHhHD5hAIJLefkJYqon/45/+NiY28tVHss?=
 =?us-ascii?Q?MC8zzl3Gxo7hWS6junYTFjCsxsnB0+fOCNmyuTnOVbCGwWaPkcn5stifUn7Y?=
 =?us-ascii?Q?c1QlyeLZ6NXb87o4PAvIBMBBHwx7dUU2idak8lEEf/CQ/vr7VyNJ4VsgjiIb?=
 =?us-ascii?Q?pE7Jb1SJ4PIgqqMb22ut0cUnpltOTriWP/KHWiUodc+N6fud4GoRMtAndtz3?=
 =?us-ascii?Q?W/u5GISlAkrsGwU8QiO4DSK45z3JwyOlU4RGOaOcvQ7JMnQ+Jqnoe712JUOw?=
 =?us-ascii?Q?DW1TcpvRI4kKysfjOLypwiW+jgZ9904DTT0mbZg5QEqLXSpwQxQhwxX/SbUf?=
 =?us-ascii?Q?F8icJXEglg+aVgUlllX5ZlfFZwY2FaXORGFgiOsXsaruxhQ4ozWLIBAjVBPx?=
 =?us-ascii?Q?P1HTGFcxfoNdZEEtiCAjKB6RUrS0zKfMndAW396fiTaDhIxFaPIhgH3yUWTh?=
 =?us-ascii?Q?Mmbhoxp4zufnBR0Mf9gNAEElQ7/ep7XGUVk+eA3rhOh0VQoVlbgzVdDw3EzE?=
 =?us-ascii?Q?Z0EltS0jPI98fBA99ITxdAx9sKF8Ho3qT5CvoPauA2zQ4TyDHipDX4QKMOvJ?=
 =?us-ascii?Q?le54NFidLfO+NKd/TqhRSN3gowlazBLTyKfoOcfS6QcaCbIzFt57Rzdbd6rq?=
 =?us-ascii?Q?4kVDJFuADpkeZN3uZ8wuKXxuRJFkt4tvj+CfUTIMVujI9hns11xqvnqNEhVx?=
 =?us-ascii?Q?i181r5bXr6/1pX6Zsh22lC0cOwTzvHW3JVMHi/7eKr+1APdcYgThOBnNeXFz?=
 =?us-ascii?Q?7VMsiSzjL+MAH7Unfz+X101MvgySKFxr+G/EclRBnPK/xC9Yiij8ec2QcGS6?=
 =?us-ascii?Q?34QZEpBWRgIo6NSvqAw87q0MlQ+FcXKVesk57xVEhliEgWgx11CW5IPfRLq6?=
 =?us-ascii?Q?lCN/0DboHbK+DgtvYkVeBMXbtj68euRs0ca20C3ReZPrZiLdryf54koYhtIO?=
 =?us-ascii?Q?YbAXl2o6B57TFwZpP4snw4DyjBe9Pu1B?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR10MB4846.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hJu/b8A+TszmzSjD7mUk9/dcx/kVKz06mgiV6QCqEQDKarIUObBc0YYiIwS/?=
 =?us-ascii?Q?EreYq7Lg6H1E30qUOOB6a2t6ll15M1Z6js2bF+6B5AmAN3lVyT5G9qlohTED?=
 =?us-ascii?Q?YJKHaGIfoUc+t9apgHmctWGKJs7eBtlCEWvyjvpjSB2QV/jt7jcv2Kp/sTrN?=
 =?us-ascii?Q?O/j+KvF2ssM51vuYokPmyN+pDHYMKpcSGKmod5DPv6uBgDfaQ1z0pPolNlqu?=
 =?us-ascii?Q?MKyTUUyYL4CrgmogGqh1X7bXYdwp/ym6DwC/tJlImXFq2C2HXa9MWTs0a6qV?=
 =?us-ascii?Q?/0ZNhEjts/0IyGAnzckeYhhacao6NQGZo2/y9vYqircYmVNgk6tiEOItNVQk?=
 =?us-ascii?Q?p9cDHzKUt/5Zxgq93GpLEPBbrCzryAjk5lPy/C1vvjNyd6oo9Xu8T7UbYt4V?=
 =?us-ascii?Q?oGFdOllrcO0NP/E7DI7bDz8z09WBvsaRMPPXLEXV6AujxryMGzIIZZgYsH8u?=
 =?us-ascii?Q?6PephPZDylSqw1C8yqFW0msmC54rTyKvfasXv2rzrt0foieseirKQ6k1InhK?=
 =?us-ascii?Q?rVGVEJy4SwcihEin91kysYdyUCquNT564402M+NjmAkq63Tdep1zw9B8HGGC?=
 =?us-ascii?Q?DyB93gJDOqVY5Kl5Ni7U4M0wEvenXStAtOMarmYrDINTIuYAMPTgyjsuiElr?=
 =?us-ascii?Q?jx+1nw6d54ib13+yy64sxoD1W1F0UK0Nn7VWXcZv5ToEogNQzpwuKhopDaJG?=
 =?us-ascii?Q?uIeRQocUpQoD4FOHCKkshCRmN54LVc1uJ0M9P/HSCFhH0dzXCacZYA2fbjlC?=
 =?us-ascii?Q?DlnvIvuH9/ziNnbvwtCP7lq/Kod+0OB9tBySAiOfxfDQEziJGUsFqFDfQN3c?=
 =?us-ascii?Q?PESeAdg4hv+kqltGm8pH5M4acwT1uSlabrzXq2F68wWHnqkUSavifU+KW0+m?=
 =?us-ascii?Q?8NticPBUgcO2Y2Us/2odRV68ZR2YnG5tVvN1+5CavCzRbNQauje9kpRVnZiT?=
 =?us-ascii?Q?+q/e/odyPj5KdteFjD3wRMMw7KMvVQZLIxbWED7lP9iAv7NHOrqsq8LTGObl?=
 =?us-ascii?Q?tqrYiV64Bm5SYfTrrLpDrIRoNZcdM5BBhBZMpuTzeC1wtjuQX0/GI4J/6AbA?=
 =?us-ascii?Q?VFgPEeREsvKqxm69NJW/iipo8G3IsV+WRgGRwH7U/gEKyV//vL2qExasPiUC?=
 =?us-ascii?Q?OyWqXFpzI65HFQjHQuYurbZaXeL9JJEu7nxiwlYmBsqy1D/916wO1ka25a4v?=
 =?us-ascii?Q?vGSw5mrLzDCF3AZYhwXYvcdOKjI3IlFAgGYYXnewdMPZY3VyHvPp2brqX/2F?=
 =?us-ascii?Q?Uw48mFlhJNJSAH6jt7eO5/ehtfkj+JSZRL7pxXm/J6FLh+t1PgzxAq4oLvl+?=
 =?us-ascii?Q?Al8RnM/rNbZiUlUjYIliMugl5QCE4QXv1YNgzELYgzqe2Jjy7/hGMqm8c5yv?=
 =?us-ascii?Q?iwWRLZA9lnGxvBTiqDKGRSCTjJt2h/6O8FX+5lSMZbXd6/OnRBQDFjWAtmPN?=
 =?us-ascii?Q?6WEpT+0F8B8LOMhvwvAQ/260pGsk2T4ggWslwm1zqxa9gks8oV3O3/evv+PR?=
 =?us-ascii?Q?a6HkwIzQuXQhgoaM/PVXlvZQyLwNmV2Lg0IL9YO46qYQmkzcUzeGxh5QI2LH?=
 =?us-ascii?Q?1Hn1fAIK7ay5BWx862xM3Qk9eHyeTb2gH61U6Jpi70j0H1lVIdxD0Q9Sfncu?=
 =?us-ascii?Q?4Q=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: SP4upZwHv0K9b7eubS6Fb45pLmBfcOl8EFDYzXpehGmcbljLAmVZGOCp8rS/j2Fzcg/dWexU5HKDWsRKFZoyeSZ1JnXOsNpA55vFUlyyPeM94zG7w2SttPBssRH9vM/VZOfFMkclElU7HkyLeY/JH3DXcih8zkwnnGotF1dTOLPkRkCBMHnQ6KX8rkhWCGdhGlF3fhCsGczajYRwfDJh7kovmFpmKhxnYd3+KlPEHyQBwhzm3VoUvO/+oJe5ofMwoslndEsM/t70Wx7lPV9zcGtIcfj6VfaTvj+/yeICYl/DchvfhDQfePsCJ7KGFY9MwXdrZdRH7YjbrmQZdEDibZ9x3vuPolKwUSbLGh4jQMhoQENRUObi5bSFOZsqDlfwQ4jPBRBqL5ZiS7HfVlenMfOnWSrb4jQs8CUvwpzUGeOh2jnvPuOC/E7bZIsIlSPjmksuu+/6Nv9CilgXavjRQa+xcqWiaKp3h/aZOKB8VGsaJDGbnRgWlpUW1M60dyZXy92v0iETiW5KBK1wFY33QSHEN1iNPYOMnTiEU7wo6jfLjMwYYn3NwTPDaxNKpzvS2uB3R4nSv7c6AF2KOamVODv30DY/9amT19NzUIR45E8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83c16d79-6523-40a9-7baa-08de39bc29ed
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB4846.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 20:22:25.5797 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lZ0vWyN6ZvN79CmTyIvmMw6A6vub6VOUfaQDEXqU1NI4KjCae3qp7oqs/vVi1ALKaBtPOrRYkKAc7paK8w7X+qAnMzIN1Jj6TPaMXFWO1G8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5892
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-12_06,2025-12-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0 adultscore=0
 bulkscore=0 phishscore=0 malwarescore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2512120163
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEyMDE2MyBTYWx0ZWRfXyFXcHx5mWSrq
 08A8pdEZKGv6DSFjVgLmGHKNs0zs/lmr1B+2igf1NPzUcetr8mup5tjJBNfNECBmfro0cWCYQoN
 HPT5z6Cp8jVlw8/kYDYl38OiVErEPeCdM9rZhRnnINN/XkeO/jheuNKtJWz07UEYfJw9ob94+FZ
 ExdQSstdz11Q7M/DuFYae8g93wwMKoW0HCqFMKi/MPLuBu2QF2X0Xk1ikJzWEuP5MUqwdvi7NnL
 aEwkRo/XKQxwCFFWGB35/IGzfCLG0W80HNZTsGvZyxJgztlY1HE9SBX9ZCKgTe3Sm3T/kHwe4kx
 M7tfF/h506csIYVjNaQq1DmKgkxt8AxL7JrK2dReytK4rsXO/rr5gvAMJ/4P2ZJsnthguKLgwYX
 EVO/eyZ2hbZrZgVuXJ6z3fYhD7DLUw==
X-Authority-Analysis: v=2.4 cv=R8UO2NRX c=1 sm=1 tr=0 ts=693c7aea cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=yPCof4ZbAAAA:8 a=BZDygbmPMmaHWx4EGuwA:9 a=CjuIK1q_8ugA:10
X-Proofpoint-ORIG-GUID: RrdZED4S5wb-Haha9MxIiR7UfTGmufR3
X-Proofpoint-GUID: RrdZED4S5wb-Haha9MxIiR7UfTGmufR3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=cc
 :content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=corp-2025-04-25; bh=B5xaA83ATEy9Ni51Lz
 KgqzUCM/6gdNfBJ3D9yE+/m6w=; b=EOA8b51uG9aPFPO662eWMHaUemWhWtstKA
 N74cEXYZ1XddMBFXhcqS0ippjfR4E9RYIUK81YTxPrk4/jxYBEJlqmFOsdQxe990
 +QKgrpiyqF4XUPuGzPtMgjXSjXxgA01dcbhdG6sG9zyew9sXo4A1qMgtoU7iqiQ5
 iazUmA5JvquS/IZgUlY1OHvUiMo0adqGp7OYQbw927EoAKJMPMceMgJf8xuE8NLL
 2erffFDS65eOWSrOE6qMUAMFDgkxarZaSL2B5gm705b2O3yQkJm7LJWy62EuUoBa
 vYPY/xS2hlUbWP4EUAmocOlOecqxhsfFuOUcDjgDRSSlnPkxWOPw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B5xaA83ATEy9Ni51LzKgqzUCM/6gdNfBJ3D9yE+/m6w=;
 b=NVPP4P1FNighgehDhW2+P0ojiA+n+KGOOZ2ruc6exYtYW41RREvbhxMaFChAFAw1JCE/sfJhqPDEYjCfn2D8TP3PfTViHVCO3feWOEex918LMtRX0Ff+bujUGtVmCyr6cloahTD2GpU3LWiztBw9Q69SESenv+Jf/5Kw9MSXnak=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=EOA8b51u; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=NVPP4P1F
Subject: Re: [Intel-wired-lan] [PATCH v4 1/1] i40e: validate ring_len
 parameter against hardware-specific values
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

On Fri, Dec 12, 2025 at 09:37:20AM -0800, Creeley, Brett wrote:
> 
> On 11/17/2025 12:33 AM, gregory.herrero@oracle.com wrote:
> > Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> > 
> > 
> > From: Gregory Herrero <gregory.herrero@oracle.com>
> > 
> > The maximum number of descriptors supported by the hardware is hardware
> > dependent and can be retrieved using i40e_get_max_num_descriptors().
> > Move this function to a shared header and use it when checking for valid
> > ring_len parameter rather than using hardcoded value.
> > 
> > By fixing an over-acceptance issue, behavior change could be seen where
> > ring_len could now be rejected while configuring rx and tx queues if its
> > size is larger than the hardware-specific maximum number of descriptors.
> > 
> > Fixes: 55d225670def ("i40e: add validation for ring_len param")
> > Signed-off-by: Gregory Herrero <gregory.herrero@oracle.com>
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e.h         | 18 ++++++++++++++++++
> >   drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 12 ------------
> >   .../net/ethernet/intel/i40e/i40e_virtchnl_pf.c |  4 ++--
> >   3 files changed, 20 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> > index 801a57a925da..5b367397ae43 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> > @@ -1418,4 +1418,22 @@ static inline struct i40e_veb *i40e_pf_get_main_veb(struct i40e_pf *pf)
> >          return (pf->lan_veb != I40E_NO_VEB) ? pf->veb[pf->lan_veb] : NULL;
> >   }
> > 
> > +/**
> > + * i40e_get_max_num_descriptors - get maximum number of descriptors for this
> > + * hardware.
> > + * @pf: pointer to a PF
> > + *
> > + * Return: u32 value corresponding to the maximum number of descriptors.
> > + **/
> 
> Nit, but the function name is descriptive enough without the documentation.
> 
> I think the purpose of the function would be even more obvious if the
> argument was a pointer to the hw structure instead of a pointer to the pf
> since the max is based on the hw not the pf.
> 
I agree, it's just that it will require changing the 5 callers of this
function and invalidate the testing from Rafal Romanowski.
Please let me know what you think, I can wait before sending v5.

Thanks,
Gregory
> > +static inline u32 i40e_get_max_num_descriptors(const struct i40e_pf *pf)
> > +{
> > +       const struct i40e_hw *hw = &pf->hw;
> > +
> > +       switch (hw->mac.type) {
> > +       case I40E_MAC_XL710:
> > +               return I40E_MAX_NUM_DESCRIPTORS_XL710;
> > +       default:
> > +               return I40E_MAX_NUM_DESCRIPTORS;
> > +       }
> > +}
> >   #endif /* _I40E_H_ */
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > index 86c72596617a..61c39e881b00 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > @@ -2013,18 +2013,6 @@ static void i40e_get_drvinfo(struct net_device *netdev,
> >                  drvinfo->n_priv_flags += I40E_GL_PRIV_FLAGS_STR_LEN;
> >   }
> > 
> > -static u32 i40e_get_max_num_descriptors(struct i40e_pf *pf)
> > -{
> > -       struct i40e_hw *hw = &pf->hw;
> > -
> > -       switch (hw->mac.type) {
> > -       case I40E_MAC_XL710:
> > -               return I40E_MAX_NUM_DESCRIPTORS_XL710;
> > -       default:
> > -               return I40E_MAX_NUM_DESCRIPTORS;
> > -       }
> > -}
> > -
> >   static void i40e_get_ringparam(struct net_device *netdev,
> >                                 struct ethtool_ringparam *ring,
> >                                 struct kernel_ethtool_ringparam *kernel_ring,
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > index 081a4526a2f0..cf831c649c9c 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > @@ -656,7 +656,7 @@ static int i40e_config_vsi_tx_queue(struct i40e_vf *vf, u16 vsi_id,
> > 
> >          /* ring_len has to be multiple of 8 */
> >          if (!IS_ALIGNED(info->ring_len, 8) ||
> > -           info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
> > +           info->ring_len > i40e_get_max_num_descriptors(pf)) {
> >                  ret = -EINVAL;
> >                  goto error_context;
> >          }
> > @@ -726,7 +726,7 @@ static int i40e_config_vsi_rx_queue(struct i40e_vf *vf, u16 vsi_id,
> > 
> >          /* ring_len has to be multiple of 32 */
> >          if (!IS_ALIGNED(info->ring_len, 32) ||
> > -           info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
> > +           info->ring_len > i40e_get_max_num_descriptors(pf)) {
> >                  ret = -EINVAL;
> >                  goto error_param;
> >          }
> > --
> > 2.51.0
> > 
> > 
