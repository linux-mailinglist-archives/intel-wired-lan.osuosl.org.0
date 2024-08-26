Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8078195F4D0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2024 17:13:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF85560789;
	Mon, 26 Aug 2024 15:13:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2q_VO3Z2vfLH; Mon, 26 Aug 2024 15:13:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABB8E6077B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724685194;
	bh=tcz4I5KrfObPRz8TB3TN7L3MQvpnvGr5UmcJzEV1/qA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PuWwiqx7L3hyoBKhcyvUQFfJKFaDXGG+nw5zsn/7xiYCXVbIhSZuET+3C78FeTvo6
	 6mYDRJO08N+zGqWFrEwNCpOZBmo94l9/C9nuvu0na+r909175AP/3cVn86KmXByqdb
	 rziqauyXlIeiBlHRgpiHLeupxzryucw9apE9UA+0uWwjJQZ//rURbhbtyPMvUeirpZ
	 nii6dtrNC4XHwcGoV+/+YK0Pkc+KLStLL0G90k/bRbeiv3lB8mTlIp9KoAYk5IVOFL
	 WYRnQiRA9PcPYZdiXV0+v2OEmkW1d3PNFLKnxFzhEW9RQOMyFEECY4i7cln5UcZd0Y
	 EuOytyueEq86w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABB8E6077B;
	Mon, 26 Aug 2024 15:13:14 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7604F1BF40E
 for <intel-wired-lan@osuosl.org>; Mon, 26 Aug 2024 03:19:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6267B4029C
 for <intel-wired-lan@osuosl.org>; Mon, 26 Aug 2024 03:19:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YmFQxk4xxwtj for <intel-wired-lan@osuosl.org>;
 Mon, 26 Aug 2024 03:19:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.220.136;
 helo=nam11-co1-obe.outbound.protection.outlook.com;
 envelope-from=faicker.mo@zenlayer.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0CA064021B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0CA064021B
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2136.outbound.protection.outlook.com [40.107.220.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0CA064021B
 for <intel-wired-lan@osuosl.org>; Mon, 26 Aug 2024 03:19:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CQsRDc6znqin0WE2qwDGoY9SIuNMuNiJPKysI2j9Sa8XoVmZebAQbQRygaNGN4xY3ZPQWblW76xQlIbNdHm0xFmgWn9lBEe7Xtrdd2+gr6VG0qY92H0Ur8PSNWi0V5/sXnz0BorPV8EMJ88ZzIaP+d504UrPez8vuxrFv3XGSIhvKT0UsZlThWx13zhNEOZxebvgPTiuLeDqDsKS9UOj00RdJnRpHRlVyCZNt0r6lya1Im9o8aZARdlScdloyVrErEP6NSxjN6D6CH5ZVkUfZFY8SZWOmV3dkMstYPErTLEFjvWxENjsBtqfExJvrxkoq+y5HxDQZBKdYCC/4Y6Zcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tcz4I5KrfObPRz8TB3TN7L3MQvpnvGr5UmcJzEV1/qA=;
 b=WI2HuSo1fLNTfkMKCwrwtOKIyO9h9NndTkqrfppikzmbzkNmexcCTZYtURIyOZFx6SSJiAwhrv9jHiDa/vXItgHfnfAyBBSQVHVxU4lkfPTUT63NtZUmqALCbDPE1Vf9bdY56Uktw0pTH5nU6PfbVFe+Oo8F3Ymu+evgWsFMnziMAkRs8A0U5DyqxU8BY3v9l3sWl5JdYU9Vsw7U5HEtsMjTbgcFhIzfe12NqVOapTf5RKeZS8epeu64BDkaFb0SV7/72ipC3fB8YVS6SCUJw3g0qmNRh433VRZP06Qne5iWVijuxNyt1GCP88GVVXv1guMMU77pOnGgqsM+K53Q2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=zenlayer.com; dmarc=pass action=none header.from=zenlayer.com;
 dkim=pass header.d=zenlayer.com; arc=none
Received: from SJ0PR20MB6079.namprd20.prod.outlook.com (2603:10b6:a03:4d7::19)
 by LV8PR20MB7323.namprd20.prod.outlook.com (2603:10b6:408:230::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Mon, 26 Aug
 2024 03:19:37 +0000
Received: from SJ0PR20MB6079.namprd20.prod.outlook.com
 ([fe80::c11:df86:9358:e76]) by SJ0PR20MB6079.namprd20.prod.outlook.com
 ([fe80::c11:df86:9358:e76%4]) with mapi id 15.20.7875.018; Mon, 26 Aug 2024
 03:19:37 +0000
From: Faicker Mo <faicker.mo@zenlayer.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [bug report]iavf: deadlock on detach/attach vf to VM with
 net_failover
Thread-Index: AQHa92PLTpgL6l7lbkabERG8MCc2gw==
Date: Mon, 26 Aug 2024 03:19:37 +0000
Message-ID: <SJ0PR20MB6079EE704620E28B3AD45286FA8B2@SJ0PR20MB6079.namprd20.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR20MB6079:EE_|LV8PR20MB7323:EE_
x-ms-office365-filtering-correlation-id: c3abbab8-d9ec-4cb2-d1ff-08dcc57dea63
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?3qep2yasyzjutYMB652U4YrqDYy94INvLhXyk4sG2EBIeX31gJyXitvKyzMG?=
 =?us-ascii?Q?Mxhu3gdwXONbkv7Q8JwaxRR/JjmVfEP/8L+RDVPcLzBEc8ghXrQuhGBztwJN?=
 =?us-ascii?Q?kIcALRnZBQZBVt1kIQj7XypctWmVcnhTvO2pVcT/TVJcsqltLdpH8wHVhkOR?=
 =?us-ascii?Q?ft6GH+a6V/jnBqYaipoYIhh+zhcu/Z8/gI/7NTmbboG/dKoiwCEI6dzMQHfJ?=
 =?us-ascii?Q?Rplk0pjSdSxtM5UHXui3e7Uzzsgjfp1+qy0q9XtN4bdtoKZhWyY9kQcKBiJq?=
 =?us-ascii?Q?Hd10wpTyx59f1maJmMfsk847mjVG4iTnigAV3frNf9coSnxr6RHY2TvHBayu?=
 =?us-ascii?Q?ybmHYHTeEnyVdjs8puY73kxEP19aUlE06ToNGkEU62jdj24d1HaKPwvIyLMZ?=
 =?us-ascii?Q?0aTRsMjvj076klR8OcLQc6Y/6y4TUTPRNcgEFWUWJ/bqvXIRb13RnEHnUcmD?=
 =?us-ascii?Q?ypVbN0zLX36wW4Ue0DE885/SjynDfriiq2mnXl7A4S0NWNbjshIhBWdnrlAn?=
 =?us-ascii?Q?CbJT7QWhV5fPe4f7J4h2r02vfnc6D64xiNSVZgMtBiNHv0sw4uIhhoRHObbF?=
 =?us-ascii?Q?5Zqmw6x//uerU/2F+jLsd1wAiUYY9eoqFx+E40MHDztWWZ0t2sLqN5exhq6N?=
 =?us-ascii?Q?TVqwGVtcOVmFPogriwkxaByT07fRKVwvF9GSHk3YEY/eeeDQdChx7ey5lIJK?=
 =?us-ascii?Q?3Hn2vimvBgFQDBBERfcU5Pu4OaXh3AwB+KTq9pYmRCmVb34EHlGQVK19M6wL?=
 =?us-ascii?Q?WSjQtNpefuUud8yhbgZOA7RyUXPrax1+gzGMi15kp0+NAIedsB49QEHI8aQM?=
 =?us-ascii?Q?NW9VpvvQ4QF23xAwj8yfb/v0+LcGONXgwPmAh/DhIbRl4AANy0i262MUcrA9?=
 =?us-ascii?Q?+G/5W+GHGtGYvVMV88MuasTX9km7uZ1Lmq2PNR76TJCfHr07xCRUmARi0Wt/?=
 =?us-ascii?Q?DcgxwF1V4DRoXWDIj13IB0aMJnfoMUCC3RbG8wgjQa/fpZr0/jSrFSH06v/r?=
 =?us-ascii?Q?jS+V+GXwrgWUsvX+xiCGf4KXSXJyKarLo6yKl79DVjCfKDnZmkzkmm8EE4s3?=
 =?us-ascii?Q?WsjmqvopC/3EgdBITZJILbs/fPthjnXuCY5PVMW66hNv25qXYikhXmKpe2nz?=
 =?us-ascii?Q?xKGrkEHGP5nqeeXbGteP8Kg/SlLFlkOYlg1ZJwiyNnENhcht+3+ba2DtL7U2?=
 =?us-ascii?Q?rDPjF8RImS8vi+n0V+zhCQwQa3zNnsb+hxSLjbzpKhUTCUaCI5LdM2VI527R?=
 =?us-ascii?Q?/ye1WHL2aehO80N5hvK073qUi4oCHnFRPDfeTU0V/ccgz+jCLL6bz+URNiUK?=
 =?us-ascii?Q?1bTmxbecni58THF/G5JdRSbHbVIJGKGO5d05Dql1IKePpBuKTkgQkAPuHLRm?=
 =?us-ascii?Q?XGWGBL4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR20MB6079.namprd20.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?61xbLR6zzjvVBTFeKhg98r0Pt92Jrci6333lsg/PvtOl3SsTKWFa/k1AOWg6?=
 =?us-ascii?Q?2ztEEZOIyRL2yCu/5gac3kWxuPYFKEQgHJEv8SkC/Cnt1I+T5mkEWy3mbxww?=
 =?us-ascii?Q?RK8tqmaL3f0qKyD0sat2yYdNCVZUheX3Zku0du7472oMGtGHc8D9S7p94wd1?=
 =?us-ascii?Q?iVDs0xI6ZyGawCdaQHSj527q7aaVUW4Wktp5TywaM72nUzuwLRFqA5ftVpxp?=
 =?us-ascii?Q?y9VmbX64GfoUl41kvWCNyoEkwb18MriyJHY9NOyhOV9NVDBYKdiiVPt/dGXy?=
 =?us-ascii?Q?ySBSVwWVy8Utqa4lH7YM0CfsU21d4pG0iKnXrGMmo7MpGSz0sewT2hCht2pL?=
 =?us-ascii?Q?xBszxXlJMBrddFnkt9sex6VntNbnCl5w6ox9ogtKPW2rYdYGCer3FdWSuXVA?=
 =?us-ascii?Q?qGgxXg8MQvsetamf3DYDaozg4KSRXrEO5qo6FXDvYnVRaoQDw0UsfhXIkCwD?=
 =?us-ascii?Q?0trnP1hWgfhojXLUMkVq6sbHPk8m1pejxzYjY4468ifYtgYN1ZgHDNB1AORY?=
 =?us-ascii?Q?VnNOrjxtQgWN1lrNKDr/SPjtTTYcjUB8ZCxFLfBTWFvKPaxjRiPKdmdZ6sV7?=
 =?us-ascii?Q?bghrYe9rdPWKVQnA38XRFn7qOFXVW/3Kkyv8IRjXDKRvQzcrPCf+0mUbEHrq?=
 =?us-ascii?Q?L58tFNM9u+TGNJJfl8Iw7gWnaaSUwvk3N5LdrZ8rMZYGl+NwwtibOMoojxCp?=
 =?us-ascii?Q?mItBRWbL68W4FlEFLerh73KKDLCGe+kF917LeoAvkFQh5W45QWYk3qTr2CXg?=
 =?us-ascii?Q?MtfhfIaxItPfNLMOdM8pUYCdOvf9WZULYMFuz07NRmm0ZkTgCEvU6kWKwTaw?=
 =?us-ascii?Q?QGWO0D5D3DowejPH92LYPo8XOh4x9HcYn2gmFM/QGBkOpnLmO9mUGYDlWhqY?=
 =?us-ascii?Q?xZ0NXFw+Bp+OEgiDQy+6ekECbkmqQahCLltPUT8TFA+MIxSNXsDchOdml6E4?=
 =?us-ascii?Q?2/LC6oMe3MZSSpqoTWGlYPBUkEF2E13Swx5BVsur6VPKLYXhJodQbnWVr+37?=
 =?us-ascii?Q?WDRx2mZAuWE8MtkxNcxOkgDhSPFLqFsMOaQbAyymQ2sFexyVdJQ7g8ZOGQDT?=
 =?us-ascii?Q?LbvE8ipX1B5S8kbEjRoxYZgcyFgXP6/VTDVSjvvE98WtFSQFhXcHtHEMAPzk?=
 =?us-ascii?Q?8hWEh58XZEYBjphOwS8sP9zVG+VpPy6qfhpE2Gf1YVfoMMiW1DteAP941tXf?=
 =?us-ascii?Q?mtVtIVyFZzYh8alNw7+TAngTyWjy4A9bnBPHpi6vq1/HaELdPtnBsisWGoK3?=
 =?us-ascii?Q?Fh3k9yMyZccHIsqrTMhND3cQKJIev++Uskh/AfFpqiXvWRvG5lr2Dp7879RO?=
 =?us-ascii?Q?ZPVRsoGXErvQht99KcVAybr25msyDQSK+MvKWPtmxi6Dl+QofyAtsS/FfcDH?=
 =?us-ascii?Q?Vu9RKpq66vIuAVMpzYoOXP0Dsx7Z21KDHkhzGLYp8uk9CCLnHkh3/FMcPS15?=
 =?us-ascii?Q?/o1byS2jLKmRZCzKWiW7ZxO6FOy9KyEks5n2ZmJgscosP1ziTzo9z61lLwLa?=
 =?us-ascii?Q?E4Cv9UoCNfSPuBGfC9PENtcGUKRILNg92hthmTBQMTDp8CBwkPNUaryJj53I?=
 =?us-ascii?Q?nwxqkma7cNNyIxPVg2FPz/vGS3C0TWBevk1YqEh/mL88KynKGm2aVWIJa+h1?=
 =?us-ascii?Q?vw=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_SJ0PR20MB6079EE704620E28B3AD45286FA8B2SJ0PR20MB6079namp_"
MIME-Version: 1.0
X-OriginatorOrg: zenlayer.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR20MB6079.namprd20.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3abbab8-d9ec-4cb2-d1ff-08dcc57dea63
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2024 03:19:37.3248 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0d27725c-b11d-49f0-b479-a26ae758f26d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lVStfLve/x30pVJ+Un/KEdKXQ0DtAD+wcHlzKkYZzjkcHT5KttNYtnzPi5OZbYaAbIxltOHstpg+ydl5ziGBjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR20MB7323
X-Mailman-Approved-At: Mon, 26 Aug 2024 15:13:12 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zenlayer.onmicrosoft.com; s=selector2-zenlayer-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tcz4I5KrfObPRz8TB3TN7L3MQvpnvGr5UmcJzEV1/qA=;
 b=bp5SzOwmCCC+gta0hQHbpEJRo2m5xKHaqv1AS/5vEmq3i9z9CgVF3ehWi8IJY2y4NTYyOvNV7MesPQOpgfaLxuf/Ly0BUdEkYoJphnCk8XBQpQOfgTtSi986vlL4J0dresj1pnBYCJRn7qq74ArevAqi/mt6ajw9kz9nKo5W3o0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=zenlayer.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zenlayer.onmicrosoft.com
 header.i=@zenlayer.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-zenlayer-onmicrosoft-com header.b=bp5SzOwm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=zenlayer.com;
Subject: [Intel-wired-lan] [bug report]iavf: deadlock on detach/attach vf to
 VM with net_failover
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
Cc: "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "konrad0.jankowski@intel.com" <konrad0.jankowski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--_000_SJ0PR20MB6079EE704620E28B3AD45286FA8B2SJ0PR20MB6079namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello, we met a problem with iavf driver, the ubuntu22.04 kernel 5.15.0-119=
 and 6.11rc4 both have the same problem.

When the X710 VF is detached and attached to the VM with net_failover, the =
kworker thread in VM hang. The backtrace is,
[<0>] iavf_open+0x48/0x230 [iavf]
[<0>] __dev_open+0xe5/0x1c0
[<0>] dev_open+0x52/0xa0
[<0>] net_failover_slave_register+0x131/0x190 [net_failover]
[<0>] failover_slave_register.part.0+0xda/0x180 [failover]
[<0>] failover_event+0x104/0x1f0 [failover]
[<0>] raw_notifier_call_chain+0x46/0x60
[<0>] call_netdevice_notifiers_info+0x52/0xa0
[<0>] register_netdevice+0x4d3/0x650
[<0>] iavf_finish_config+0xc5/0xf0 [iavf]
[<0>] process_one_work+0x228/0x3d0
[<0>] worker_thread+0x53/0x420
[<0>] kthread+0x127/0x150
[<0>] ret_from_fork+0x1f/0x30

It looks like a dead lock of adapter->crit_lock.
A similar problem, https://patchwork.ozlabs.org/project/intel-wired-lan/pat=
ch/20220808175845.484968-1-ivecera@redhat.com/#2947762

--_000_SJ0PR20MB6079EE704620E28B3AD45286FA8B2SJ0PR20MB6079namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Aptos;
	panose-1:2 11 0 4 2 2 2 2 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"en-CN" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">Hello, we met a pro=
blem with iavf driver, the ubuntu22.04 kernel 5.15.0-119 and 6.11rc4 both h=
ave the same problem.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">When the X710 VF is=
 detached and attached to the VM with net_failover, the kworker thread in V=
M hang. The backtrace is,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">[&lt;0&gt;] iavf_op=
en+0x48/0x230 [iavf]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">[&lt;0&gt;] __dev_o=
pen+0xe5/0x1c0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">[&lt;0&gt;] dev_ope=
n+0x52/0xa0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">[&lt;0&gt;] net_fai=
lover_slave_register+0x131/0x190 [net_failover]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">[&lt;0&gt;] failove=
r_slave_register.part.0+0xda/0x180 [failover]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">[&lt;0&gt;] failove=
r_event+0x104/0x1f0 [failover]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">[&lt;0&gt;] raw_not=
ifier_call_chain+0x46/0x60<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">[&lt;0&gt;] call_ne=
tdevice_notifiers_info+0x52/0xa0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">[&lt;0&gt;] registe=
r_netdevice+0x4d3/0x650<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">[&lt;0&gt;] iavf_fi=
nish_config+0xc5/0xf0 [iavf]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">[&lt;0&gt;] process=
_one_work+0x228/0x3d0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">[&lt;0&gt;] worker_=
thread+0x53/0x420<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">[&lt;0&gt;] kthread=
+0x127/0x150<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">[&lt;0&gt;] ret_fro=
m_fork+0x1f/0x30<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">It looks like a dea=
d lock of adapter-&gt;crit_lock.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt">A similar problem, =
<a href=3D"https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220=
808175845.484968-1-ivecera@redhat.com/#2947762">
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220808175845.4=
84968-1-ivecera@redhat.com/#2947762</a><o:p></o:p></span></p>
</div>
</body>
</html>

--_000_SJ0PR20MB6079EE704620E28B3AD45286FA8B2SJ0PR20MB6079namp_--
