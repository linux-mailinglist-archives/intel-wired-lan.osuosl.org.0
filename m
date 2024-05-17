Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FED88C8E6E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 May 2024 01:14:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 46DC44157C;
	Fri, 17 May 2024 23:14:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id um79nKni_3FU; Fri, 17 May 2024 23:14:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BB8741452
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715987674;
	bh=SqdKJ+TI7JstocV0DKEzByYLoE8vI5wVkcV7ZZF+0kg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Nt1IZjMAushnDzl1FsI5wlpZjSJKhjvBTNx+Gp2ljpOzp/fw8Tw16ZDYxeRZ+lOuT
	 pXV+q/7I3Z6I5Zrxit8wAqx/IWeVfgg9mtStiftZQ2XkeJb1VHOaHd8P+ruTURWsU2
	 ZWYE+lb3twU/pzUCZTif3zMx4DG388E5PFaN3ZTpMKRUcRWCyjp/uqbJHEEl21U2Me
	 pWMr0EaZMfC9z/Qm9bOFgQ8gEb5B9pGCuCtxIMsl1ZNEI/S9yNCpydaxLEE0iIR1Ux
	 91UTCjWKGlOz4ElCuYNP5bOHMMTHw9bEm0RhtHrThQpEv9WKjtyIBvizvwVkbM1VRw
	 44I/W4gfv1SRQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BB8741452;
	Fri, 17 May 2024 23:14:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 58E8E1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 08:24:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F7B74066B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 08:24:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bu-wZ0eNH1kO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 08:24:13 +0000 (UTC)
X-Greylist: delayed 3480 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 17 May 2024 08:24:13 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5DC924065F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DC924065F
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.148.174;
 helo=mx0b-0016f401.pphosted.com; envelope-from=naveenm@marvell.com;
 receiver=<UNKNOWN> 
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com
 [67.231.148.174])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5DC924065F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 08:24:13 +0000 (UTC)
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44GLNLZ1025405;
 Fri, 17 May 2024 00:26:11 -0700
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2101.outbound.protection.outlook.com [104.47.70.101])
 by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 3y5t0vhaq0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 17 May 2024 00:26:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZwtsCbFfVjNv7zXRnNCQyUX7lBBj+lWNKjO+wC7GRXCYlXdyMIy1qvz8aDNBWb9Hty18zf9NkTgUTdIfqNLU7McY02w4J20Jir2Fi26MA8qH2+CMiz+w07HAAudNt5u6iZ3BLLeuz7LIEYMZ4Bcy7eTtyev8crOPM/cs2AiVflNfCCaiI9+ICqheDoBJdeSejAk+kr5MdVehaB9V+OmBBsKo4ldsHycR+VaigxK+8I0W73zduI8Cg8QITyDYHOIUui7vGsS6+IYuoUp6PVDw0fejmAmXagapCw4+S2FbAZ5TwkdLVGFyDMoixFwPMXLJPinPV23kzMjKTfEWX16asQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SqdKJ+TI7JstocV0DKEzByYLoE8vI5wVkcV7ZZF+0kg=;
 b=csqMXQ05yWldDtmjdEXyznyOyp3nNnIjmuQR09+kayEOgPGHHgPCgE2pT/Gzv1JvmeGjhCzW5VXhHag0rK+mkTiiLYgEmEyA0cOH4iVU9WHBLLNTcT/l9+IeB+beeB86YUyT8S2USVJCSbDSRtXfN1V4EqPeINjW0/rYFoXp5cnXeU0VmqPDf2SZYf8tcNjBKMIeJhInTDEGJ+4Ja1WaSWIH+X0V/5ERussoW72di6xcrX2gd9b8TDpXV5mI6Q0HDsM1tbHn1FggZTMkt5Je02aPUr1xAp5+5q/hs1PVowoeUtxTzyhp3uXVH4MUZM7qlnjBw9/eaLSW7DPdS45ihw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
Received: from SJ2PR18MB5635.namprd18.prod.outlook.com (2603:10b6:a03:55a::21)
 by SN7PR18MB3981.namprd18.prod.outlook.com (2603:10b6:806:108::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.30; Fri, 17 May
 2024 07:26:09 +0000
Received: from SJ2PR18MB5635.namprd18.prod.outlook.com
 ([fe80::efe5:32a7:11a8:840d]) by SJ2PR18MB5635.namprd18.prod.outlook.com
 ([fe80::efe5:32a7:11a8:840d%7]) with mapi id 15.20.7587.028; Fri, 17 May 2024
 07:26:08 +0000
From: Naveen Mamindlapalli <naveenm@marvell.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-net] ice: implement AQ download pkg retry
Thread-Index: AQHaqCt87H5S4qfkgE2VDdFB4yMSsA==
Date: Fri, 17 May 2024 07:26:08 +0000
Message-ID: <SJ2PR18MB56353F95F209E75987D4DA79A2EE2@SJ2PR18MB5635.namprd18.prod.outlook.com>
References: <20240516140426.60439-1-wojciech.drewek@intel.com>
In-Reply-To: <20240516140426.60439-1-wojciech.drewek@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR18MB5635:EE_|SN7PR18MB3981:EE_
x-ms-office365-filtering-correlation-id: 72f8c0aa-4558-495d-e69a-08dc76429eed
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?51PgxdnJwpZYYKqvk+jscEd5frTD6Cn4NPSQ9lTMfkjMOqwJcYvsXlAnh9xG?=
 =?us-ascii?Q?sTbloAwzjez8Bi/MgXh/2EjpPcSmNWCArcH0cjaob0rlV/8RakiIjoa8rUn7?=
 =?us-ascii?Q?slbYU8bjN7cGvHfbkcsScmHMWp8K2SG9JGtNw7F3PmB4NvZpx+TmYrUfvCbX?=
 =?us-ascii?Q?epDHdUnvT+h/jEQcV36xMbJtPlF3MAX+4XMzA6J7ESQdQBfRJAGP/XfiZ78E?=
 =?us-ascii?Q?28MuV67yVrFQexOiAYV3sKzNlBRHfpGB6JvBrrZ0svhXXYgK8lw4B5TgJboe?=
 =?us-ascii?Q?NX9XVOuZGKraHJELw6CzN5/7Y6jOmr3vqf4+I2tS2fJBfj0s3aiXyLm6OX8n?=
 =?us-ascii?Q?bjkvLz4ukeomolNpEAdI7ArFxvYz762MPCPwLpXN6KOzF9IaohudNgmIWPlz?=
 =?us-ascii?Q?By+1co0wmULZptQj7OMt5ztuXq9J4de0d8qQAKB0ua0iBRyb3EIFS+5xb/6e?=
 =?us-ascii?Q?/rnhj6Z/GfcgsndNkjOkJ4GEzVVy1kSMEpmMLE3IaJzHFOZvSMEI5LJcz/sL?=
 =?us-ascii?Q?lhL23NttJCNdpMQtBQDo6dcr2UkCuTl2IHDrNJjTEO4X1FMMx5A2dU3nJOi+?=
 =?us-ascii?Q?iet4A1pkHZEOtTjYBrsNMuEgRkfaI5xHrRzPteSJdvs3pGY/elr8gQUFmFdx?=
 =?us-ascii?Q?8bDxlq2CRjTGU/sAkCQzCFCHcWV3PfToqwAKQloTxzxLuWRqHd7g+eO52FJH?=
 =?us-ascii?Q?NsdeZdK/P0Kt1MuybC8Va0BVHaVWX5qvBoKDU9pV3QfdtkgRGy6/3cEyhQ/S?=
 =?us-ascii?Q?yiG37Gbdg8RkIFI7+sjczSrF7ldX0XVvM2yLrQutYhwvBxlLsJ97iupk3Urw?=
 =?us-ascii?Q?yIAyUvmEBicRdzh/Vm9/dtHS+GDzfKNREPG8oLJig7IEwIpkAvgtsFVOvE2b?=
 =?us-ascii?Q?ca+uXClaWYoHWUlY2CgewHG/iVwqo8tL/jMcetQjWbl/ofcb3/KlSJzZEs2u?=
 =?us-ascii?Q?GPZlsZr8WHlaR3P59YG/xEoCjf5OjO8xn7On4R7qzF/F3l0jRwMUsCYkkNjh?=
 =?us-ascii?Q?/VDqjuyaJSJyNroTfLuCTIZE8UN9P9yn1fkzGV4uJDg6nF6qcClrJLfOKstM?=
 =?us-ascii?Q?nkRk5GyTUyw/pxOPRkzCGJezeRpGK/sD/L93YnsETo3VcVZ4q8Wuei9fF2Hl?=
 =?us-ascii?Q?/fQ4zh4C4NoUxRpcJRgtHRl6WfULbh4qSWJKKTJVpuQcOWevH0SG1oA2uCgU?=
 =?us-ascii?Q?BYvlivD32j/d285r56R2tWU1wAdecoVheIZO2S26osbfOo8CwSaBwtVbyTfU?=
 =?us-ascii?Q?qxTMyyGB1Wo3ePS+uAq60hefUjclHLkqSBYOX344Vqc3/CvQBWLg8GdHibHs?=
 =?us-ascii?Q?PDzAR2P/RqhZ8hVJJE4cdlJY?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR18MB5635.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CFLVbPeXrN10I0vDX3gRo9PtuG+Xg6C7/PGhT3Hq/2KSy3JIaozkDN6zds7x?=
 =?us-ascii?Q?7J66cUm4MV6A35LLVBv7S+5pnqGv5NZ4lxelzXxbc0aNQPhLsOUHnDVKdZii?=
 =?us-ascii?Q?u8zRvvoE//RlWGAXhsKwJEnS0Xqgm85D2t/9TR3SVfZXywN2vC4t1XBZfo+o?=
 =?us-ascii?Q?3HGYzS7+w/3lux8uyf+z2yByKUONk1Jv7r6/M2wsPOYq50+Lqdlr4E5Qp5bB?=
 =?us-ascii?Q?5aH7Rhf7eFYKWjTVNHf0ZjL+/Fs5SbHsYZ8+lO2x90udE5L4gKSdWnZ4ufLI?=
 =?us-ascii?Q?HO9Ht7XrdVVtOYY/MGXYxCqWNJ3PTTr4POxga01fHSyOX/nnEb4d/NnqvRMr?=
 =?us-ascii?Q?F75NBZ1EJIB1nNktU2HN3YDcVfoz5ly+oSJWepP45ZPCPbM37MdsC1Oxw0D+?=
 =?us-ascii?Q?Bwo9KKcqE3o4hgBRbUWeIiFl6JAMMlITE06Ileuli7/JkqzqGtubwPjSogHA?=
 =?us-ascii?Q?xYUsuVYohVQaueee+rpTtk+oVw9lJhvJnyl/FF8YfjWLu0HG1TzzTd9BD2DY?=
 =?us-ascii?Q?fCVKiu2apfz9NDwmiqKO/FKWjJze8m57kULECUtvkuPTpluI0K+hN3y5bDT8?=
 =?us-ascii?Q?M8kT/dmOcwOFYJ6jhE/mCFVWiCX4tjNydNI6PUkhUtQkyZ+oMBDe+oTL2TyB?=
 =?us-ascii?Q?f2q5wJtxN1d/X4vJJczrDfCXGvBAB7aoj72QlX9EOXuhBUKwhT6+g5+LYzJJ?=
 =?us-ascii?Q?dkxuUwIC5LcP5pJrqwQVTvqX1icRO5VTPGid+afNPjiA74fkCipOwqk48i6w?=
 =?us-ascii?Q?4ILD+jzocNHLslElMuK1eeEfDUuN8F0FpW9KSGODkZVEgX9z427dMhEG+su8?=
 =?us-ascii?Q?Wi6PqE42UICJDC+K9gEiMWpG+MjxWORAgEZb/G0jjWpBsvTONLogRRnfTVYJ?=
 =?us-ascii?Q?bExsG1nNwFqGTqz00qggWTt0MH0NfHwWA51Xs0gaqAH46dQOiKfoJjmnMI2L?=
 =?us-ascii?Q?6lLI9aznIM1zZfrv/9uPKq6Xky65YyPku8XbX6eYO3Ir8ImWrGSxutyq0/IP?=
 =?us-ascii?Q?52sPTPL99lK5ygSJM0jI2EYbFu9y5W+2NERfapYELuokVjllOFnKAXs5ZnwV?=
 =?us-ascii?Q?NS8xhlgbGrPRXeWoY976W4eKk88X7B5tzN1WpmR5R8wOzeXx41XzTJjres8g?=
 =?us-ascii?Q?Im52iZoli3/2l32MuAHMJ5WCSTaSCsDmEB+4wPJ8CV68QdOiSOlStm2bjEYj?=
 =?us-ascii?Q?yikHxb1lUjvLsF5yljdlfvb0blbdt0NEc5DY2pWQLv2hHzyxxgqeWyAPzZaN?=
 =?us-ascii?Q?9ZnJNAxKtIosBk4k2D8gWusaRgldbB0ERrYBB6hT4Z5MoruLmbkHvUtQvBH4?=
 =?us-ascii?Q?JRN3jj1dALlFj5aQX60ywdKU/aX4mYNwfDYwue6Hby8UvKehCCilQN44dxIl?=
 =?us-ascii?Q?N+/fn+jTMaOcCOGt9q2AfYbrPHeuemEqYHz2RIjzgsz3huZg0aEWrzhGyCpt?=
 =?us-ascii?Q?moaXqg8aMli/aPZ2yg4cGAsL99TrcQy9MaxLJSJo99KC5El9nF5kL/5DG7q9?=
 =?us-ascii?Q?PKr9BspEhozzAxoQ+X9xiAFszeQRfjwGRLoySvqwrQyc8s0IyRPO6F2b/74S?=
 =?us-ascii?Q?HFFdCV0sl8Zjjmmsz7t2INUou5Z+mPZsTtSDbvcJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: marvell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR18MB5635.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72f8c0aa-4558-495d-e69a-08dc76429eed
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2024 07:26:08.5768 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UQ3cZsRI0Tr1byS72yEL+oggNUi7WoI719z3TuBnvcmQNEOSQ+y1OXBdrj/wn3awwRR27D6j5kwLU2GKtnE/wA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR18MB3981
X-Proofpoint-ORIG-GUID: QrH_a2YOv-jZduyM7Ul-OrstPxIH4FOk
X-Proofpoint-GUID: QrH_a2YOv-jZduyM7Ul-OrstPxIH4FOk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-16_07,2024-05-15_01,2023-05-22_02
X-Mailman-Approved-At: Fri, 17 May 2024 23:14:31 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SqdKJ+TI7JstocV0DKEzByYLoE8vI5wVkcV7ZZF+0kg=;
 b=So3Z+Yvrq4Pvm7EgmVhrdxWTYm/5EBxcDi8hvB93ozvlx0O2l7qnEQ0hHHy2KFusfamMkameulIG5xfpJ1B1V7FqEGp0xzx/+krQgDSorzTPObblMKIoCUCaRvrG0qOoW/3NU14Z73jGZVk7h/8wLFKdaYCoY74+Y2HPOGubh7g=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=marvell.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=marvell.com header.i=@marvell.com header.a=rsa-sha256
 header.s=selector1 header.b=So3Z+Yvr
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: implement AQ download
 pkg retry
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> Sent: Thursday, May 16, 2024 7:34 PM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: [PATCH iwl-net] ice: implement AQ download pkg retry
>=20
> ice_aqc_opc_download_pkg (0x0C40) AQ sporadically returns error due to FW
> issue. Fix this by retrying five times before moving to Safe Mode.
>=20
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ddp.c | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c
> b/drivers/net/ethernet/intel/ice/ice_ddp.c
> index ce5034ed2b24..19e2111fcf08 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
> @@ -1339,6 +1339,7 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struc=
t
> ice_buf *bufs, u32 start,
>=20
>  	for (i =3D 0; i < count; i++) {
>  		bool last =3D false;
> +		int try_cnt =3D 0;
>  		int status;
>=20
>  		bh =3D (struct ice_buf_hdr *)(bufs + start + i); @@ -1346,8
> +1347,22 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf
> *bufs, u32 start,
>  		if (indicate_last)
>  			last =3D ice_is_last_download_buffer(bh, i, count);
>=20
> -		status =3D ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE,
> last,
> -					     &offset, &info, NULL);
> +		while (try_cnt < 5) {
> +			status =3D ice_aq_download_pkg(hw, bh,
> ICE_PKG_BUF_SIZE,
> +						     last, &offset, &info,
> +						     NULL);
> +			if (hw->adminq.sq_last_status !=3D ICE_AQ_RC_ENOSEC
> &&
> +			    hw->adminq.sq_last_status !=3D ICE_AQ_RC_EBADSIG)
> +				break;
> +
> +			try_cnt++;
> +			msleep(20);
> +		}
> +
> +		if (try_cnt)
> +			dev_dbg(ice_hw_to_dev(hw),
> +				"ice_aq_download_pkg failed, number of retries:
> %d\n",
> +				try_cnt);

Do you really need this dbg statement when try_cnt < 5? Is it not misleadin=
g in success case (with retries)?

Thanks,
Naveen

>=20
>  		/* Save AQ status from download package */
>  		if (status) {
> --
> 2.40.1
>=20

