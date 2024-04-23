Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1E98AEA9A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 17:17:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A80A181FD1;
	Tue, 23 Apr 2024 15:17:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2etxQ-3P6AYV; Tue, 23 Apr 2024 15:17:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D62181FAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713885434;
	bh=Wsq25i/vrS3QAOlenn0bjuhv2+9AYH1o3ItQF3kmS7g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7o/qhJo46ZktuEeOUVNevUlFyJZEDpBvuMFiIpAlq77Xs0Ft/oqczRPaWIbmCZY1M
	 Y6JEQ/poj4IPUs1U2oUUcuWy9yZy+21D1c7YUo86zaOEX8RrbLpEIKquuqWTF3Y+SY
	 8i3SzUxfcEZjXVnln0PLakAgUPJAAr++CKnCDyrMuSSMaJcbpMgEHBQ/R7qWfHe7m5
	 E89TD7cFoAxtwwXI2DqYm13+cbw6OmPMAb/p7d8N8yerDfeGZA4rd0Mb6jfDhRRJEp
	 CJTCD44eiEqZsNj7j8NrUoHJ83FRWmz9i8axcCAS1fZs9azZZPtM0+A61zDXULK+Ph
	 A9312Cc8Ot0Gw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D62181FAC;
	Tue, 23 Apr 2024 15:17:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A4A801BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 10:56:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 902004049D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 10:56:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vw7RtrsaTmni for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 10:55:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.148.174;
 helo=mx0b-0016f401.pphosted.com; envelope-from=sgoutham@marvell.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5690F40480
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5690F40480
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com
 [67.231.148.174])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5690F40480
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 10:55:59 +0000 (UTC)
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 43N7PYLj011793;
 Tue, 23 Apr 2024 03:47:37 -0700
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2041.outbound.protection.outlook.com [104.47.66.41])
 by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 3xnngcvqfx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 23 Apr 2024 03:47:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VCBte3QPyavoB/LPqhyZTyLCziMbPlGcWveFvT4LA3W/tGJOfjvdvyz6SvpZ9A/f2LOEIIlVxtj3xY1iSa5ceBx3juho6EWcJRrE4vGZzW01o2NHB+OwPNcHBKeEeaW+0deIeMcM6Ukrr4NBOY1VRRIhNEw5vfUJoXvB2ZKFUH9T5KHD48qNkVYejIOZflyd4JGmE839bpIOyJZYG7PKqW4nGussbzUwMnaF3C/6Hw7zd6pd0SNP2hGH5MRbhgATNxpBmm+HsVLdF/W2JSpOxQIgaSWqqkE/s9LO6T29cJT/fv0+jmdPFcqMLnV3WZiZTUQwVa8X/7TPEsV94SRvyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wsq25i/vrS3QAOlenn0bjuhv2+9AYH1o3ItQF3kmS7g=;
 b=KCUIwPIIbG2beiER35Xg7yzsg4Nfm4VUF3XrH/OqyldcMuQ0Z5v0BIXNqLKwsHQ8VU8hqN31UecqmWrS+gH/VV7pATbdDUEalx+CklgIooalIjg36NEw4ge4WyjjRtGCOURtmAXpjdksFIVEI8YYeXJTjci/iSOWL/8C+D3QMzshGJq/CkmNvRqK7zefMLJ31OVWW8G6q1fBMO3K0WQmYvuqd/YOYEFg/BITCG25tfJfjRrEVrLP6GDoTtkryqV3oVX3QAfj0PNacNjJ0zYWHQfkUt6xpPWqHwLoBcmG4F2FyYADmjkDnH+4ea6OyoRuUA3dlMIhlYbZAsu0GCHzaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
Received: from BY3PR18MB4737.namprd18.prod.outlook.com (2603:10b6:a03:3c8::7)
 by PH7PR18MB5751.namprd18.prod.outlook.com (2603:10b6:510:301::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Tue, 23 Apr
 2024 10:47:31 +0000
Received: from BY3PR18MB4737.namprd18.prod.outlook.com
 ([fe80::4c91:458c:d14d:2fa6]) by BY3PR18MB4737.namprd18.prod.outlook.com
 ([fe80::4c91:458c:d14d:2fa6%6]) with mapi id 15.20.7472.044; Tue, 23 Apr 2024
 10:47:31 +0000
From: Sunil Kovvuri Goutham <sgoutham@marvell.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 12/12] iavf: add support
 for Rx timestamps to hotpath
Thread-Index: AQHalWukkLVFxp/bGU+H6zpzj/CoZg==
Date: Tue, 23 Apr 2024 10:47:30 +0000
Message-ID: <BY3PR18MB4737B9820C94CEA04ACE2680C6112@BY3PR18MB4737.namprd18.prod.outlook.com>
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-13-mateusz.polchlopek@intel.com>
In-Reply-To: <20240418052500.50678-13-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY3PR18MB4737:EE_|PH7PR18MB5751:EE_
x-ms-office365-filtering-correlation-id: 60280577-08c6-46fe-bdd2-08dc6382c6a9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: =?us-ascii?Q?u33i9+MJHty1ej24xX8Dx2dIeF0K49o+ZHhHhAYv64750w1UCh7b5Mr6b+Ok?=
 =?us-ascii?Q?VjRjzLkz6kbCPfdE5Qi+r251Mg1RAgFns5UZBDLTrsTRJecOoYdtbo6xE7Ln?=
 =?us-ascii?Q?QDZe6AQjpjD/mSzLJM1i4fB3jLEOqv8mntzezSfLlrdlqjus6AzJMDsmXUES?=
 =?us-ascii?Q?3OtxlcsSnpT8m2g7ZBtU6Og/8AlYWtFPWVUe2GlCghHGy724JWNRdVSrT4gh?=
 =?us-ascii?Q?+YojwhiOzlehmZhAjcUJU2p2k22fhxK18iFeu7BEm1qUcmDM102kXMPnHTAi?=
 =?us-ascii?Q?B2owMXxfwm1vfB2vRNxrvsFenTv/6eOlyZXZ6N9lajg2yS8f7WBp5PeXX97W?=
 =?us-ascii?Q?E8nRnfGABzah0xxx1XzOYIt0scbirb1eWDCtnqB13Irf1sjIXXPAeXDcs74X?=
 =?us-ascii?Q?zwfXA1vU14lmygVFxt+BK5ljgMrhFiXeeJmaFHnD/+6kgu5bGbos/CEtozZU?=
 =?us-ascii?Q?Vh0Zrzxwb/pFqPe0kIMvrBvJPHztMEZrplEBaXMwunMh+pLfNyZSds0ykr5s?=
 =?us-ascii?Q?SIgCDWdq3wPnyYarklMGoqaJkWgSWf+KS6nbdZ7VG7XJSpkN995AuKdDUMXy?=
 =?us-ascii?Q?VmGEzA7ROfG0KAvQYvCK4jK97GS4EQwffeFcG92v7G0xChU2T8B9wBe+fcjy?=
 =?us-ascii?Q?n69pFRFKA2khvvT4+e6Z4g7gFInFQXnAq14gOBjetPjU2aURnvx6zgHSXNjP?=
 =?us-ascii?Q?4GozhcGyinddN/0UPTrqGnyfTC0BwRhGZzq2Q2XlA/M5gOk11FeHkbpkoaZ8?=
 =?us-ascii?Q?5zmN98keubRNeTKkKWc82s1vnirwSgqU9ziekD9xfFhZSEBnJOzZtA1CBj6X?=
 =?us-ascii?Q?cNtLGvwohvdZnVzHp3efLR4AVKVundvYuRcbeSgrKMkeQ4pvKZ4CAINwFn1N?=
 =?us-ascii?Q?IrAm5stHQk5hJ63dBstJdhfJlU40dDfYj3Wt6f6i6oYAetH3Y/w5glmmadgt?=
 =?us-ascii?Q?7vpUgtbuEHIpHLLjUS2q1STaYQRNgVeL6JQ5TVgX9KFsE1E+5/2CgXSLBgXN?=
 =?us-ascii?Q?xspd77Krh/lQxTDJE/xRMfxVKgYuVg8w3706SgJQ2YSWMh/SRV2NZgI5Imzq?=
 =?us-ascii?Q?7wCBQO4fer4XMNBuQxAvKkif5I4xSabi0wfPtm8glmmPLfIxfnzwyjR0v9/j?=
 =?us-ascii?Q?RdrFqBDIgt+sdZUfKu0K+IPibJIEkJUuD0AkzTO/cu1w8OMeeM3/8jSa1I6u?=
 =?us-ascii?Q?XSdjYFjphw3Qp/no4/cCf2sDOW9ccMVZlNwreUIcBHwVNFkGStpOPWU17oyY?=
 =?us-ascii?Q?hZpcDT+LsmIK1163Ac+PxSK5atciROQS864wL8Y80eySMch5gJ4IVk6OVj8G?=
 =?us-ascii?Q?zTUgS8I/ixWRifp09k6TLyZPJ7AWNeBZhYM/5leHPoTQzg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY3PR18MB4737.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KpwO3gecfbPgO1qQFSBkbiuTiUh/5jEov4DQFnOOTDtJUcwjsReipew4g4cr?=
 =?us-ascii?Q?MzIWrbaYvVT3YHXwICgRc/WH+JmhV2m2rBSrehCB8nP95iHfOUNIgNepTU9J?=
 =?us-ascii?Q?pk6wpsjUejd/wMg/OF6kdY1X5kOSPYL1IuHTHC7J26+78BSDmWcDLQKwPPab?=
 =?us-ascii?Q?Hln+339ohif1bRkRJLzX+/rnNdP+6G3cXzLIiHG+l8KMlcNoDvxHjRNnSsre?=
 =?us-ascii?Q?JQHqeAYy1aKr9qqy6VwTExmuz9hoGvLyApob99F6mpboG9yU96+uJzC2HJSD?=
 =?us-ascii?Q?je+jc40sir27P9XiIBxppJPQ6Zp2BFsxUwx5VFVwsPQBTCH6Q1Un8nV13Tpa?=
 =?us-ascii?Q?QFA/swy1KDgNGSNtFwDu/dVgxZQK9y+cMfLYZ6QEP/23Lp0Efn5ZJ77Jtjj4?=
 =?us-ascii?Q?doAR1kO4SjnDU2p0NLxGddmRsWr63NGDdpMAr2lvHs4c13lnkI55fNOrVH2h?=
 =?us-ascii?Q?AoTHnlAfLUnVy36zQFadUvqXP8xVa+q9BK++9VDVqsqwSdy/8yYSbU++5W8T?=
 =?us-ascii?Q?FO/3s99cx8L6tF2EcGVslPsVJ3kznLoBDoA6bdrN/WY/VLCO6IHcSGlIEKC2?=
 =?us-ascii?Q?JFmd5bDmxQWhx9T7+g6+tTS2jf83zqTju8at71SA3wp86uGxwTQsy0lRVPld?=
 =?us-ascii?Q?+oPhTCzO8vQ1C9ZUk74NimOy9dxAwGOfbTgsvsA53KU0KMJFFEm5r6iblNP9?=
 =?us-ascii?Q?vH+V6PB7rURaXk2ZzppE0P7jxvu/i7hpvtNpDLS3g82QC4+ezp/NA9NUucWy?=
 =?us-ascii?Q?8MRSgW84TNbcDoMzRLBsxsrjjYiV64cn/GOU8QxY2Mwt3nuX+6uVECuraSqJ?=
 =?us-ascii?Q?xa5oBnlwl/CQAgUxR+Vpn3p3GBr6X+/aihpCa0XqynSB0OpnUy275XmSifun?=
 =?us-ascii?Q?kRt6mseHjxU+eP/ddR5J1hBPeerQoDWRJg6kOnT2XrhBr7hm8zSNejDvemRj?=
 =?us-ascii?Q?USm7+12O7r/Jl/m1UhJT1uiug2vQdGUktXD8y4bkGC34rFfWApugPhNXbS+z?=
 =?us-ascii?Q?kNeysDztIxJnQ7n28sSw65hFl9I0qHE4gEWgRoywypo4BqcYn2YOiuBF/l6Z?=
 =?us-ascii?Q?rT2+6qDhWVc/L+yo9iQ5ba94YvkJ/JTOYx9uFAWGdXziVGks81EnlfgMJ1FZ?=
 =?us-ascii?Q?T/FC1UQ+jYY3PJeJJcDDBGrI28Nl8jML2reJJBhUb3mv9raSWNlsOwtkGuG8?=
 =?us-ascii?Q?7JEMehNjHPUPNO6JbjBK0/0Aj4E/H3lHa93IuJ+3uCZ8VfDXWCDVwsPo2wdg?=
 =?us-ascii?Q?sQMv5qbbbFlawz8PB4uPTqWhOJFgTqjd+SrYL5cKVJcbggqMvuuRK+OuBoBR?=
 =?us-ascii?Q?v6J6bOc8xg6h7/84jrGT5m0HvTzOp4PSbwPH+leU3ARm8RESiEWeMlIaf8cd?=
 =?us-ascii?Q?jfvw/ri2btOTUYlSQUASQzHHLPVUrb9kOhWWqhDvTib5SvTWz3L+0gym4b88?=
 =?us-ascii?Q?r4UXw26FG2URvUGq8p/WRhK9D/MtRfTNJSvpG+Xsk53n9Fp+CWGociOLPCTU?=
 =?us-ascii?Q?XvJoOsGVDOer60GHDM1BjEVuotSjcC+3cpGOyV6ZOfbuBJPk/SVlnvGXTENv?=
 =?us-ascii?Q?mtRdf66KXNZQ6r6p2rEQTigVcqj8yGr07SDH6VYE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: marvell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY3PR18MB4737.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60280577-08c6-46fe-bdd2-08dc6382c6a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2024 10:47:30.9174 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N1Vy0SKAw8vNQ9uXzxJj/1yU18DmBwutrNF9ntbG+8XCOmY82ppKbLJ6AT9IR6fcS6WVdZp/vIUZcHT6aUJ6VA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR18MB5751
X-Proofpoint-GUID: t8JvGR602QI_Fh9JwjHWYm55e6CNUyf5
X-Proofpoint-ORIG-GUID: t8JvGR602QI_Fh9JwjHWYm55e6CNUyf5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-23_09,2024-04-22_01,2023-05-22_02
X-Mailman-Approved-At: Tue, 23 Apr 2024 15:17:07 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wsq25i/vrS3QAOlenn0bjuhv2+9AYH1o3ItQF3kmS7g=;
 b=Jgp7FTpy1yPRPxb2ttsn4tGDeJg072aQm94JuYN59qleMXlPg7b/LGz8Yel2zRBezd6cW7DwAugzdR4TRRtEaS98LMgVkXiIkS423q4MGRZ0N/JZ3IJ+dFWiQ+99V0m0qvDb1Mfyiy3BTX6vSd/nL/MRrXbUK0CsEAB7o6F7mPM=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=marvell.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=marvell.com header.i=@marvell.com header.a=rsa-sha256
 header.s=selector1 header.b=Jgp7FTpy
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 12/12] iavf: add support
 for Rx timestamps to hotpath
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 "horms@kernel.org" <horms@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Sent: Thursday, April 18, 2024 10:55 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; horms@kernel.org; anthony.l.nguyen@intel.com;
> Jacob Keller <jacob.e.keller@intel.com>; Wojciech Drewek
> <wojciech.drewek@intel.com>; Mateusz Polchlopek
> <mateusz.polchlopek@intel.com>
> Subject: [EXTERNAL] [Intel-wired-lan] [PATCH iwl-next v5 12/12] iavf: add
> support for Rx timestamps to hotpath
>=20
> From: Jacob Keller <jacob.e.keller@intel.com>
>=20
> Add support for receive timestamps to the Rx hotpath. This support only
> works when using the flexible descriptor format, so make sure that we req=
uest
> this format by default if we have receive timestamp support available in =
the
> PTP capabilities.
>=20
> In order to report the timestamps to userspace, we need to perform
> timestamp extension. The Rx descriptor does actually contain the "40 bit"
> timestamp. However, upper 32 bits which contain nanoseconds are
> conveniently stored separately in the descriptor. We could extract the 32=
bits
> and lower 8 bits, then perform a bitwise OR to calculate the 40bit value.=
 This
> makes no sense, because the timestamp extension algorithm would simply
> discard the lower 8 bits anyways.
>=20
> Thus, implement timestamp extension as iavf_ptp_extend_32b_timestamp(),
> and extract and forward only the 32bits of nominal nanoseconds.
>=20
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c |  9 +++
> drivers/net/ethernet/intel/iavf/iavf_ptp.c  | 69 +++++++++++++++++++++
> drivers/net/ethernet/intel/iavf/iavf_ptp.h  |  4 ++
> drivers/net/ethernet/intel/iavf/iavf_txrx.c | 44 +++++++++++++
>  4 files changed, 126 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index a75c5fbad13c..b12cdef50deb 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -726,6 +726,15 @@ static u8 iavf_select_rx_desc_format(struct
> iavf_adapter *adapter)
>  	if (!RXDID_ALLOWED(adapter))
>  		return VIRTCHNL_RXDID_1_32B_BASE;
>=20
> +	/* Rx timestamping requires the use of flexible NIC descriptors */
> +	if (iavf_ptp_cap_supported(adapter,
> VIRTCHNL_1588_PTP_CAP_RX_TSTAMP)) {
> +		if (supported_rxdids &
> BIT(VIRTCHNL_RXDID_2_FLEX_SQ_NIC))
> +			return VIRTCHNL_RXDID_2_FLEX_SQ_NIC;
> +
> +		dev_dbg(&adapter->pdev->dev,
> +			"Unable to negotiate flexible descriptor format.\n");
> +	}
> +
>  	/* Warn if the PF does not list support for the default legacy
>  	 * descriptor format. This shouldn't happen, as this is the format
>  	 * used if VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is not supported. It
> is diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> index 4ae80eac8236..e99cf380011f 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> @@ -444,6 +444,9 @@ void iavf_ptp_release(struct iavf_adapter *adapter)
>  	adapter->aq_required &=3D ~IAVF_FLAG_AQ_SEND_PTP_CMD;
>  	spin_unlock(&adapter->ptp.aq_cmd_lock);
>=20
> +	adapter->ptp.hwtstamp_config.rx_filter =3D HWTSTAMP_FILTER_NONE;
> +	iavf_ptp_disable_rx_tstamp(adapter);
> +
>  	adapter->ptp.initialized =3D false;
>  }
>=20
> @@ -477,3 +480,69 @@ void iavf_ptp_process_caps(struct iavf_adapter
> *adapter)
>  		iavf_ptp_disable_rx_tstamp(adapter);
>  	}
>  }
> +
> +/**
> + * iavf_ptp_extend_32b_timestamp - Convert a 32b nanoseconds timestamp
> +to 64b
> + * nanoseconds
> + * @cached_phc_time: recently cached copy of PHC time
> + * @in_tstamp: Ingress/egress 32b nanoseconds timestamp value
> + *
> + * Hardware captures timestamps which contain only 32 bits of nominal
> + * nanoseconds, as opposed to the 64bit timestamps that the stack expect=
s.
> + *
> + * Extend the 32bit nanosecond timestamp using the following algorithm
> +and
> + * assumptions:
> + *
> + * 1) have a recently cached copy of the PHC time
> + * 2) assume that the in_tstamp was captured 2^31 nanoseconds (~2.1
> + *    seconds) before or after the PHC time was captured.
> + * 3) calculate the delta between the cached time and the timestamp
> + * 4) if the delta is smaller than 2^31 nanoseconds, then the timestamp =
was
> + *    captured after the PHC time. In this case, the full timestamp is j=
ust
> + *    the cached PHC time plus the delta.
> + * 5) otherwise, if the delta is larger than 2^31 nanoseconds, then the
> + *    timestamp was captured *before* the PHC time, i.e. because the PHC
> + *    cache was updated after the timestamp was captured by hardware. In
> this
> + *    case, the full timestamp is the cached time minus the inverse delt=
a.
> + *
> + * This algorithm works even if the PHC time was updated after a Tx
> +timestamp
> + * was requested, but before the Tx timestamp event was reported from
> + * hardware.
> + *
> + * This calculation primarily relies on keeping the cached PHC time up
> +to
> + * date. If the timestamp was captured more than 2^31 nanoseconds after
> +the
> + * PHC time, it is possible that the lower 32bits of PHC time have
> + * overflowed more than once, and we might generate an incorrect
> timestamp.
> + *
> + * This is prevented by (a) periodically updating the cached PHC time
> +once
> + * a second, and (b) discarding any Tx timestamp packet if it has
> +waited for
> + * a timestamp for more than one second.
> + *
> + * Return: extended timestamp (to 64b)
> + */
> +u64 iavf_ptp_extend_32b_timestamp(u64 cached_phc_time, u32
> in_tstamp) {
> +	const u64 mask =3D GENMASK_ULL(31, 0);
> +	u32 delta;
> +	u64 ns;
> +
> +	/* Calculate the delta between the lower 32bits of the cached PHC
> +	 * time and the in_tstamp value
> +	 */
> +	delta =3D (in_tstamp - (u32)(cached_phc_time & mask));
> +
> +	/* Do not assume that the in_tstamp is always more recent than the
> +	 * cached PHC time. If the delta is large, it indicates that the
> +	 * in_tstamp was taken in the past, and should be converted
> +	 * forward.
> +	 */
> +	if (delta > (mask / 2)) {
> +		/* reverse the delta calculation here */
> +		delta =3D ((u32)(cached_phc_time & mask) - in_tstamp);
> +		ns =3D cached_phc_time - delta;
> +	} else {
> +		ns =3D cached_phc_time + delta;
> +	}
> +
> +	return ns;
> +}
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> index 337bf184a7ea..66e113ae27f5 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> @@ -6,6 +6,9 @@
>=20
>  #include <linux/ptp_clock_kernel.h>
>=20
> +/* bit indicating whether a 40bit timestamp is valid */
> +#define IAVF_PTP_40B_TSTAMP_VALID	BIT(0)
> +
>  /* structure used to queue PTP commands for processing */  struct
> iavf_ptp_aq_cmd {
>  	struct list_head list;
> @@ -38,5 +41,6 @@ void iavf_virtchnl_send_ptp_cmd(struct iavf_adapter
> *adapter);  long iavf_ptp_do_aux_work(struct ptp_clock_info *ptp);  int
> iavf_ptp_get_ts_config(struct iavf_adapter *adapter, struct ifreq *ifr); =
 int
> iavf_ptp_set_ts_config(struct iavf_adapter *adapter, struct ifreq *ifr);
> +u64 iavf_ptp_extend_32b_timestamp(u64 cached_phc_time, u32
> in_tstamp);
>=20
>  #endif /* _IAVF_PTP_H_ */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index 8e90b0b2a292..9a2bd5176818 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> @@ -1239,6 +1239,48 @@ static void iavf_flex_rx_hash(struct iavf_ring
> *ring,
>  	}
>  }
>=20
> +/**
> + * iavf_flex_rx_tstamp - Capture Rx timestamp from the descriptor
> + * @rx_ring: descriptor ring
> + * @rx_desc: specific descriptor
> + * @skb: skb currently being received
> + *
> + * Read the Rx timestamp value from the descriptor and pass it to the st=
ack.
> + *
> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC
> +flexible
> + * descriptor writeback format.
> + */
> +static void iavf_flex_rx_tstamp(struct iavf_ring *rx_ring,
> +				union iavf_rx_desc *rx_desc,
> +				struct sk_buff *skb)
> +{
> +	struct skb_shared_hwtstamps *skb_tstamps;
> +	struct iavf_adapter *adapter;
> +	u32 tstamp;
> +	u64 ns;
> +
> +	/* Skip processing if timestamps aren't enabled */
> +	if (!(rx_ring->flags & IAVF_TXRX_FLAGS_HW_TSTAMP))
> +		return;
> +
> +	/* Check if this Rx descriptor has a valid timestamp */
> +	if (!(rx_desc->flex_wb.ts_low & IAVF_PTP_40B_TSTAMP_VALID))
> +		return;
> +
> +	adapter =3D netdev_priv(rx_ring->netdev);
> +
> +	/* the ts_low field only contains the valid bit and sub-nanosecond
> +	 * precision, so we don't need to extract it.
> +	 */
> +	tstamp =3D le32_to_cpu(rx_desc->flex_wb.flex_ts.ts_high);
> +	ns =3D iavf_ptp_extend_32b_timestamp(adapter-
> >ptp.cached_phc_time,
> +					   tstamp);
> +
> +	skb_tstamps =3D skb_hwtstamps(skb);
> +	memset(skb_tstamps, 0, sizeof(*skb_tstamps));
> +	skb_tstamps->hwtstamp =3D ns_to_ktime(ns); }
> +
>  /**
>   * iavf_process_skb_fields - Populate skb header fields from Rx descript=
or
>   * @rx_ring: rx descriptor ring packet is being transacted on @@ -1262,6
> +1304,8 @@ static void iavf_process_skb_fields(struct iavf_ring *rx_ring,
>  		iavf_flex_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
>=20
>  		iavf_flex_rx_csum(rx_ring->vsi, skb, rx_desc);
> +
> +		iavf_flex_rx_tstamp(rx_ring, rx_desc, skb);
>  	}
>=20
>  	skb_record_rx_queue(skb, rx_ring->queue_index);
> --
> 2.38.1
>=20


LGTM
Reviewed-by: Sunil Goutham <sgoutham@marvell.com>
