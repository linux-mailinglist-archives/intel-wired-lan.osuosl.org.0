Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC5D52E887
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 May 2022 11:16:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71CD460E34;
	Fri, 20 May 2022 09:16:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qk2rYu7IXFVk; Fri, 20 May 2022 09:16:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49C4D60B93;
	Fri, 20 May 2022 09:16:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 28F771C1190
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 09:16:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 24C1E424DB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 09:16:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=nxp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b8yPFq8Dbls6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 May 2022 09:16:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr10051.outbound.protection.outlook.com [40.107.1.51])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 90508424D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 09:16:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XoFTg1E7vAH373AT6F5ijzVip/f8uQLxUaZw8ANpPcrg1+DaNet8NUHeKFbTH1JnNfs4No7NiQph97hgXhsllxf6o33NN0Otp25ECpfFN+Xuyf8G4ARwetJsEI6lFI0GdNTDtD3Ju6RLnSOdoVYJLuvdoOT33H/9stJWuGMw9pgJ4pU5/rDIQkwkzVFTLAaTDqDMRImTtJXqAbscX5hrCAQbUe39IzxPj8Mmt/8KOh/fUXyRkmkM81ufFoyEyKDlHxLBSqvloF380KYNhlrLYMD2fX4iItJSzlMdsgDqCjFrcR7e8bCCFArlV6ROtKzhRsVX6T2KG2fNgRoc1Rz6JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HN3ljx7wzbfk3BhvcalFsFfLpuVIze9A5+LAPGkVQU8=;
 b=GF0WSCtml+aesLn1Y2r2km5SEaA+GK82g7xPQe98r2mgH/YAAIAIMWNnCu9JNb1nzLv4DkqXqmNLvSgQfxeSqHEnBcRKi/TWnAO4/3lXW/2d+lhgeRyYeuZCTdaEIBW+urfrcJkzQ2v+m2UyJHCgAcQPH+MnkMxLYR2x8bd46Y5hudIXXZFCP5ichre3afoZIcBHVUH1MsDAkNiqV/O1eZeusg4+ZD2+OC1hOaU+zV0Ma83mTPzA2f7QTo6+mP2inQhsHBqbj3vi+nnUG4aWfzPDohBQocWrXEFtYFsPwLaiFilgyQt7BWGWoYYJ0LHqiUWVW4WuiI5w1cIp8hMkpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HN3ljx7wzbfk3BhvcalFsFfLpuVIze9A5+LAPGkVQU8=;
 b=XiPhyL1hZB8OdMxvF+spvENvSBcWkDXIpY+1oxu7eEEljHA7FyKCYQfoPG7aZ5EyVYj99Mbr6u+vI9VTFh5tejcnALNQMXXMVLDGG3FIYLslvhG+6TdVsdj2jnPLKQF0OzhUXvpOioDlikwVbQpdL1MoB0lHKzA75LQRt+RNfZk=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by AM9PR04MB8507.eurprd04.prod.outlook.com (2603:10a6:20b:432::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.17; Fri, 20 May
 2022 09:16:08 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::fd1f:cc16:dafe:4bf5]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::fd1f:cc16:dafe:4bf5%5]) with mapi id 15.20.5250.014; Fri, 20 May 2022
 09:16:06 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Thread-Topic: [PATCH net-next v5 02/11] ethtool: Add support for Frame
 Preemption verification
Thread-Index: AQHYa+ct9s5Tmo9s00u/zTeg/MfBha0nfKiA
Date: Fri, 20 May 2022 09:16:06 +0000
Message-ID: <20220520091605.x25ak23noxpcahnl@skbuf>
References: <20220520011538.1098888-1-vinicius.gomes@intel.com>
 <20220520011538.1098888-3-vinicius.gomes@intel.com>
In-Reply-To: <20220520011538.1098888-3-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 74f5058b-ecf1-4324-46a1-08da3a415ecf
x-ms-traffictypediagnostic: AM9PR04MB8507:EE_
x-microsoft-antispam-prvs: <AM9PR04MB8507430172E80AB322B1510AE0D39@AM9PR04MB8507.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hJSzRKnQjeAi91hqgs2XMJrV2VxGj39UfwVRnkH20uMPcpb65I1yZbxi1y9dlwZ8LyKr4VTSZmYFXhdklYGdUd3qw3b53O7/be1SUdSTOY8aLwA47Wi0ZPJJD5n4pJEd16Zn5w0Iv3iG5mOnDRVt4j+WgyptTotOhK3ep2G6Tf3UcdtM7z6Huh4t8c/stoZYYBFWmzSwSgz3DhCfIv8Qxh3zX2hbEWweEkz56k8F6EBv+r8EhA36azT98I5DyRqf7sdvbGbv+T7jL0b2U8p+sp6zeukrUbYRIMT6Mcglofw6HYShAPqFAfFn0WAnNzna8SprqHDGIY1A1MFacslxYMU33HwbwfKTJSyvTI6XK+8Ann4mb6lV1bEqKHtScP5QQOjAJRlxH0ZhRXoHiwd/m85SBreVUwMTzSx+h4jyo53thlUKB6L56d2IUXMS2c6DfmgJJdvtHJAf4Zn5OGMTkaaWfXfqGdE9G9q3ach4crOagHGHb68dkttvhMmCtk4dsJJ6pTHmNIOwYaUWuUdbuKFQ1eXlc49KJ9j/sS9pproP7p3IslgnH20F2c3TaBAH9uX1RR55+RzmkSk90oIosor2GlYdhWjNcl1guS8DCALRAfVYDlH9ZMqz3D9AIgk6mEWAqYmmkNGYmsZRDcbQGq20gFopSSaQNbimVqOyvRCm9ZkqrPvuKLR9CQoc0AOevk2wNJO67UFDpeZzPD8XBw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(7916004)(366004)(6486002)(54906003)(508600001)(86362001)(316002)(6916009)(186003)(71200400001)(33716001)(1076003)(83380400001)(6512007)(6506007)(38070700005)(26005)(122000001)(9686003)(4326008)(8936002)(38100700002)(8676002)(2906002)(44832011)(15650500001)(66476007)(66556008)(5660300002)(66946007)(66446008)(91956017)(76116006)(64756008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S2FZN3p1R1Z1Tm9GR21lZVZkMGpyVlE0ckhiOGJtWEtsSGZkNmhYUjRMbXAy?=
 =?utf-8?B?aFlMOVVIaW91NG5RWEpLMG13UHhmWUZGTStyZWF6aUw0WnA1MjFoVFBtMk1G?=
 =?utf-8?B?aDN6bEhhbzlRMjBvcjZXVmVxMUU2U3pLRGFHc0oyZmVEcjgvSmlhRTVXaHRT?=
 =?utf-8?B?dTl4NStEYm94eDlub0VqSFZWblMxdS9UdU4vcDhLQmNzWmp2QjJHMlphRkJM?=
 =?utf-8?B?TTJsd0lReURlcERSTUdMTlFtSkZYbjdNc0R0c3Y0dkpQM1dud2FHUzZSUVNp?=
 =?utf-8?B?SmY0endUaXN1SkZjS3dlb0lRdktEdVJkVUg1cmdXQm8rRGoxUXAxQVlyZ1hM?=
 =?utf-8?B?Q1FDZHEzMUVzNU9hcjNxamwxR0tidzFwOFBlUEd2V0dOVUZrZng1SmcyRDR2?=
 =?utf-8?B?U2ZEVDNwNHg5Uk9QUTZGZzNWZ3o4L1Y3TXNxYkZmSUg2RUZ4ZXQyV05lc1lN?=
 =?utf-8?B?Wkk3UzZDaWlhQTNaM2tZMGsxZWUvQ01HUmF5cW0rMVhUZ1FvMnNUMmhDdXdP?=
 =?utf-8?B?N1VFS2JYbjB1N1o5anFBcnA0UjhZc0c0cDhrU3p4R0FsVDdPeE5TTVUzL1NP?=
 =?utf-8?B?WGd3UWp2Wmc1SzBuRjJFL2VudzNCU2NlMHZGL1RmYm9uWHl3TmRHK3EyS3I4?=
 =?utf-8?B?L093V2E2QW9ZWHowdnhvZVo4a05vWUxzZWk3QzlXcnpGamlWZDBmZi8vZ3ps?=
 =?utf-8?B?d0k5enY5RTA5L0lXSkhaZlppRkNqN2MwZlUvaGNBZ3VxUVFiY1U4SG5VQjRR?=
 =?utf-8?B?dFE2bEZ2ck02Qmw1ODlNZTA5SVEyRlY3WFBSYmQrSTU5V0lPZHg2RzJNL2wr?=
 =?utf-8?B?NlJPdXRyY2paeXQwenNPQUp6ZlN6b0RwTlgwdnByUzJ1aFI1OFZ6SEMrWTNN?=
 =?utf-8?B?V00zdG40VG5oalgzcTZTTHp0dkhhUWVpa1hlNDRhUzB1MStNRzEyajlRcldj?=
 =?utf-8?B?akRIdmFtTENST3V4QlFpSXk1V0NRRDk3VHJBTWpUbkVaVEVPNStSVG1TNnVR?=
 =?utf-8?B?WVJmZUpWc01US0hRb2cyM0FvVk1IZjJ0M1RmdWgyZTZFTExtcGt6S0dKU3d5?=
 =?utf-8?B?SjRQcitUWEVjNXBPamwxS0d5emkwTDJGWmdnNTJvcDlXVVdvVFA5bnJmVnBU?=
 =?utf-8?B?YVNLOXF2VElpZExWNE9HdnBmc3lVOEdqeWIrQ256OXJJQnBxODVFcjJUeTds?=
 =?utf-8?B?RFFrZ2wxQnNmTlYrem83aXh1NFkxSXk2WFNPbzRsQzFMSi9pNXpCYzBSTnN2?=
 =?utf-8?B?VlhhSVhER0hpeE9UK1RXMENSbEowVVJHMFp5NmV1c2VJd1NVYktrcHJWUzVo?=
 =?utf-8?B?a2ZiOTVyWWdBeHVvRmlKemNCNHFlM05tZEkwekRsMVdXN2NDZ25Mbk5US0xB?=
 =?utf-8?B?QzFJblJvMTB5YjIyNWZBMVQ1Q0ZaTzBOL2I1OC9ueFlaRisyUERweWppL1JL?=
 =?utf-8?B?b1lXTUtHay9wZW44a2NIMXNXU3F3bWExRy9nUGZPVHhZSC9PVkZNUjJoZXdO?=
 =?utf-8?B?Y3hwckpFVFpBeUZ6d0hrRWkvRzZaSVhoMEkwclBwTFl4aFlYeFF3UzRlUUZD?=
 =?utf-8?B?Lzc3dzFleC8yYUpUcFJFYWcxY2RocnJyam1UVnp2dXZ0NG1NMlQrZkJ2Vm5N?=
 =?utf-8?B?Y3lwVmZzU3RvMkV2cmFCVGR0V3E1SXhMNFkzTjVCb3FjTmZ0UnhubzJDdGRq?=
 =?utf-8?B?dlNLbXZjOFhmV3d4Vm1nQmJuaG40WFhBUWVxT05jQ0Q0THc2czJuaVVTS0Vl?=
 =?utf-8?B?cG41bCsyd2pmRzRGaGQzZGFqOEtuNTN6TVJTbnROT25UU3Q4R1p6ZTRPWG5H?=
 =?utf-8?B?QW5uMmF0VDJWYWhqMDJVRURCUitnbUFKWW54ellheE8zV29hSGlUUXUvUEJG?=
 =?utf-8?B?eFgvWWtaQVFNTUtRajR4OVVlZ2xPdVlmZW5rQjFFOEJ6RTFrcmZiWUozd1JC?=
 =?utf-8?B?ZkVDWlhVNzdGbDdFdDFDbjlweGp2M25zK1RsbFlHRjhvcDdLMEdNSDA2YTY4?=
 =?utf-8?B?VlVJdmhlNndqTE9kNnI5YVduU1dtYmlNVUtUdUZpakVLZGEva0xVdkZZWkZu?=
 =?utf-8?B?d25LWkMvYjU3cUlXZmVtQnR1VXVLN0xZcVFrVFE3RzVCR29VS09pNHlMTnRt?=
 =?utf-8?B?SGNpMG1weVoxNHhaZ25nUkNPL1J2SncxWjVqa29lcGN0MFlTSjRqSHhTVmtT?=
 =?utf-8?B?QWxMMFpSMU1OWFJ4alNnUU5MWDFqc2tDK2lRcnVXaGdPZGZ4cjVzd1ZNUFht?=
 =?utf-8?B?WW9TdXFRU2ZDajdvUkk4TllPeE5QQkNDTXJDY00wejhGS0NSWXE4QUFZZnFh?=
 =?utf-8?B?RjYyYXArYTZzaklTc2NFSmF0T0dxbERxc05SUWlxaXpqUGFPelBFTmx1c0FR?=
 =?utf-8?Q?FiqeXlNCBq97SCYU=3D?=
Content-ID: <7FA38EFE9A1C9F4A9743EE11F886595D@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74f5058b-ecf1-4324-46a1-08da3a415ecf
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2022 09:16:06.3649 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1URQ7v2HAs0nqMXdSlvhKVKfdMMiSS1cWACtNq1w6pNcR2/q8C2m6Rvv0gzNqJ02uHvpvyhWUlu1K85hhhpTnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8507
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 02/11] ethtool: Add
 support for Frame Preemption verification
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "boon.leong.ong@intel.com" <boon.leong.ong@intel.com>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBNYXkgMTksIDIwMjIgYXQgMDY6MTU6MjlQTSAtMDcwMCwgVmluaWNpdXMgQ29zdGEg
R29tZXMgd3JvdGU6DQo+IEV4cG9zZSB0aGUgZXRodG9vbCBwYXJhbWV0ZXJzIHRvIHRoZSBQUkVF
TVBUX1NFVC9fR0VUIGNvbW1hbmRzDQo+IG5lY2Vzc2FyeSB0byBzdXBwb3J0IHRoZSB2ZXJpZmlj
YXRpb24gcHJvY2VkdXJlIGFzIGRlZmluZWQgYnkgSUVFRQ0KPiA4MDIuMy0yMDE4Lg0KPiANCj4g
VGhlc2UgaW5jbHVkZSB0aGUgJ3ZlcmlmaWVkJyBiaXQgdG8gaW5kaWNhdGUgdGhhdCB0aGUgdmVy
aWZpY2F0aW9uDQo+IGRpYWxvZyBoYXMgY29uY2x1ZGVkIHN1Y2Nlc3NmdWxseSB3aXRoIHRoZSBs
aW5rIHBhcnRuZXIgYW5kIGZyYW1lDQo+IHByZWVtcHRpb24gaXMgc3VwcG9ydGVkLiBUaGVyZSdz
IGFsc28gdGhlICdkaXNhYmxlX3ZlcmlmeScgY29uZmlnIHRvDQo+IGRpc2FibGUgaW5pdGlhdGlu
ZyB0aGUgdmVyaWZpY2F0aW9uIGRpYWxvZy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbmljaXVz
IENvc3RhIEdvbWVzIDx2aW5pY2l1cy5nb21lc0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgRG9jdW1l
bnRhdGlvbi9uZXR3b3JraW5nL2V0aHRvb2wtbmV0bGluay5yc3QgfCAgMyArKysNCj4gIGluY2x1
ZGUvbGludXgvZXRodG9vbC5oICAgICAgICAgICAgICAgICAgICAgIHwgIDMgKysrDQo+ICBpbmNs
dWRlL3VhcGkvbGludXgvZXRodG9vbF9uZXRsaW5rLmggICAgICAgICB8ICAyICsrDQo+ICBuZXQv
ZXRodG9vbC9uZXRsaW5rLmggICAgICAgICAgICAgICAgICAgICAgICB8ICAyICstDQo+ICBuZXQv
ZXRodG9vbC9wcmVlbXB0LmMgICAgICAgICAgICAgICAgICAgICAgICB8IDExICsrKysrKysrKysr
DQo+ICA1IGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvZXRodG9vbC1uZXRsaW5r
LnJzdCBiL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9ldGh0b29sLW5ldGxpbmsucnN0DQo+IGlu
ZGV4IDE1ZDdjMDI1Y2M0ZS4uMTczMWU3YWQ5ZWU3IDEwMDY0NA0KPiAtLS0gYS9Eb2N1bWVudGF0
aW9uL25ldHdvcmtpbmcvZXRodG9vbC1uZXRsaW5rLnJzdA0KPiArKysgYi9Eb2N1bWVudGF0aW9u
L25ldHdvcmtpbmcvZXRodG9vbC1uZXRsaW5rLnJzdA0KPiBAQCAtMTY0Niw2ICsxNjQ2LDggQEAg
S2VybmVsIHJlc3BvbnNlIGNvbnRlbnRzOg0KPiAgICBgYEVUSFRPT0xfQV9QUkVFTVBUX0VOQUJM
RURgYCAgICAgICAgICAgYm9vbCAgICBmcmFtZSBwcmVlbXB0aW9uIGVuYWJsZWQNCj4gICAgYGBF
VEhUT09MX0FfUFJFRU1QVF9QUkVFTVBUSUJMRV9NQVNLYGAgIGJpdHNldCAgcHJlZW1wdGlibGUg
cXVldWUgbWFzaw0KPiAgICBgYEVUSFRPT0xfQV9QUkVFTVBUX0FERF9GUkFHX1NJWkVgYCAgICAg
dTMyICAgICBNaW4gYWRkaXRpb25hbCBmcmFnIHNpemUNCj4gKyAgYGBFVEhUT09MX0FfUFJFRU1Q
VF9ESVNBQkxFX1ZFUklGWWBgICAgIHUzMiAgICAgZGlzYWJsZSB2ZXJpZmljYXRpb24NCj4gKyAg
YGBFVEhUT09MX0FfUFJFRU1QVF9WRVJJRklFRGBgICAgICAgICAgIHUzMiAgICAgdmVyaWZpY2F0
aW9uIHByb2NlZHVyZQ0KPiAgICA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PSAgPT09PT09ICA9PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiAgDQo+ICBgYEVUSFRPT0xf
QV9QUkVFTVBUX0FERF9GUkFHX1NJWkVgYCBjb25maWd1cmVzIHRoZSBtaW5pbXVtIG5vbi1maW5h
bA0KPiBAQCAtMTY2Nyw2ICsxNjY5LDcgQEAgUmVxdWVzdCBjb250ZW50czoNCj4gICAgYGBFVEhU
T09MX0FfUFJFRU1QVF9FTkFCTEVEYGAgICAgICAgICAgIGJvb2wgICAgZnJhbWUgcHJlZW1wdGlv
biBlbmFibGVkDQo+ICAgIGBgRVRIVE9PTF9BX1BSRUVNUFRfUFJFRU1QVElCTEVfTUFTS2BgICBi
aXRzZXQgIHByZWVtcHRpYmxlIHF1ZXVlIG1hc2sNCj4gICAgYGBFVEhUT09MX0FfUFJFRU1QVF9B
RERfRlJBR19TSVpFYGAgICAgIHUzMiAgICAgTWluIGFkZGl0aW9uYWwgZnJhZyBzaXplDQo+ICsg
IGBgRVRIVE9PTF9BX1BSRUVNUFRfRElTQUJMRV9WRVJJRllgYCAgICBib29sICAgIGRpc2FibGUg
dmVyaWZpY2F0aW9uDQo+ICAgID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
ICA9PT09PT0gID09PT09PT09PT09PT09PT09PT09PT09PT09DQo+ICANCj4gIGBgRVRIVE9PTF9B
X1BSRUVNUFRfQUREX0ZSQUdfU0laRWBgIGNvbmZpZ3VyZXMgdGhlIG1pbmltdW0gbm9uLWZpbmFs
DQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2V0aHRvb2wuaCBiL2luY2x1ZGUvbGludXgv
ZXRodG9vbC5oDQo+IGluZGV4IDQyNTcwZWM4ZWU0NC4uNTYwMGE3NjEwZmExIDEwMDY0NA0KPiAt
LS0gYS9pbmNsdWRlL2xpbnV4L2V0aHRvb2wuaA0KPiArKysgYi9pbmNsdWRlL2xpbnV4L2V0aHRv
b2wuaA0KPiBAQCAtMTMsNiArMTMsNyBAQA0KPiAgI2lmbmRlZiBfTElOVVhfRVRIVE9PTF9IDQo+
ICAjZGVmaW5lIF9MSU5VWF9FVEhUT09MX0gNCj4gIA0KPiArI2luY2x1ZGUgImFzbS1nZW5lcmlj
L2ludC1sbDY0LmgiDQoNCldoeSB0aGlzIGhlYWRlciwgYW5kIHdoeSBub3c/DQoNCj4gICNpbmNs
dWRlIDxsaW51eC9iaXRtYXAuaD4NCj4gICNpbmNsdWRlIDxsaW51eC9jb21wYXQuaD4NCj4gICNp
bmNsdWRlIDxsaW51eC9uZXRsaW5rLmg+DQo+IEBAIC00NjQsNiArNDY1LDggQEAgc3RydWN0IGV0
aHRvb2xfbW9kdWxlX3Bvd2VyX21vZGVfcGFyYW1zIHsNCj4gIHN0cnVjdCBldGh0b29sX2ZwIHsN
Cj4gIAl1MzIgZW5hYmxlZDsNCj4gIAl1MzIgcHJlZW1wdGlibGVfbWFzazsNCj4gKwl1MzIgZGlz
YWJsZV92ZXJpZnk7DQo+ICsJdTMyIHZlcmlmaWVkOw0KPiAgCXUzMiBhZGRfZnJhZ19zaXplOw0K
PiAgfTsNCj4gIA0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2xfbmV0
bGluay5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2xfbmV0bGluay5oDQo+IGluZGV4IDY1
MWM3YWY3Njc3Ni4uMjdjOWJjNWJmYTUxIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL3VhcGkvbGlu
dXgvZXRodG9vbF9uZXRsaW5rLmgNCj4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2xf
bmV0bGluay5oDQo+IEBAIC03MDksNiArNzA5LDggQEAgZW51bSB7DQo+ICAJRVRIVE9PTF9BX1BS
RUVNUFRfRU5BQkxFRCwJCQkvKiB1OCAqLw0KPiAgCUVUSFRPT0xfQV9QUkVFTVBUX1BSRUVNUFRJ
QkxFX01BU0ssCQkvKiBiaXRzZXQgKi8NCj4gIAlFVEhUT09MX0FfUFJFRU1QVF9BRERfRlJBR19T
SVpFLAkJLyogdTMyICovDQo+ICsJRVRIVE9PTF9BX1BSRUVNUFRfRElTQUJMRV9WRVJJRlksCQkv
KiB1OCAqLw0KPiArCUVUSFRPT0xfQV9QUkVFTVBUX1ZFUklGSUVELAkJCS8qIHU4ICovDQoNCkNs
YXVzZSAzMC4xNC4xLjIgYU1BQ01lcmdlU3RhdHVzVmVyaWZ5IHRhbGtzIGFib3V0IGEgc3RhdGUg
bWFjaGluZSB3aXRoDQptb3JlIHRoYW4gMiBzdGF0ZXMgKHZlcmlmaWVkIGFuZCBub3QgdmVyaWZp
ZWQpOg0KDQpBbiBFTlVNRVJBVEVEIFZBTFVFIHRoYXQgaGFzIG9uZSBvZiB0aGUgZm9sbG93aW5n
IGVudHJpZXM674CgDQp1bmtub3duOiB2ZXJpZmljYXRpb24gc3RhdHVzIGlzIHVua25vd24NCmlu
aXRpYWw6IHRoZSBWZXJpZnkgU3RhdGUgZGlhZ3JhbSAoRmlndXJlIDk5LTgpIGlzIGluIHRoZSBz
dGF0ZSBJTklUX1ZFUklGSUNBVElPTg0KdmVyaWZ5aW5nOiB0aGUgVmVyaWZ5IFN0YXRlIGRpYWdy
YW0gaXMgaW4gdGhlIHN0YXRlIFZFUklGSUNBVElPTl9JRExFLCBTRU5EX1ZFUklGWSBvciBXQUlU
X0ZPUl9SRVNQT05TRQ0Kc3VjY2VlZGVkOiBpbmRpY2F0ZXMgdGhhdCB0aGUgVmVyaWZ5IFN0YXRl
IGRpYWdyYW0gaXMgaW4gdGhlIHN0YXRlIFZFUklGSUVEDQpmYWlsZWQ6IHRoZSBWZXJpZnkgU3Rh
dGUgZGlhZ3JhbSBpcyBpbiB0aGUgc3RhdGUgVkVSSUZZX0ZBSUwNCmRpc2FibGVkOiB2ZXJpZmlj
YXRpb24gb2YgcHJlZW1wdGlvbiBvcGVyYXRpb24gaXMgZGlzYWJsZWQNCg0KQkVIQVZJT1VSIERF
RklORUQgQVM674CgDQpUaGlzIGF0dHJpYnV0ZSBpbmRpY2F0ZXMgKHdoZW4gYWNjZXNzZWQgdmlh
IGEgR0VUIG9wZXJhdGlvbikgdGhlIHN0YXR1cyBvZiB0aGUgTUFDIE1lcmdlDQpzdWJsYXllciB2
ZXJpZmljYXRpb24gb24gdGhlIGdpdmVuIGRldmljZS4gVGhlIFNFVCBvcGVyYXRpb24gc2hhbGwg
aGF2ZSBubyBlZmZlY3Qgb24gYSBkZXZpY2UuDQoNCkNvdWxkIHdlIGhhdmUgYW4gZW51bSBoZXJl
IHdpdGggYWxsIHRoZSBzdGF0ZXM/DQoNCj4gIA0KPiAgCS8qIGFkZCBuZXcgY29uc3RhbnRzIGFi
b3ZlIGhlcmUgKi8NCj4gIAlfX0VUSFRPT0xfQV9QUkVFTVBUX0NOVCwNCj4gZGlmZiAtLWdpdCBh
L25ldC9ldGh0b29sL25ldGxpbmsuaCBiL25ldC9ldGh0b29sL25ldGxpbmsuaA0KPiBpbmRleCA0
NDQ3OTlmM2U5MWEuLmRmZGVmNWI4ZmU1YiAxMDA2NDQNCj4gLS0tIGEvbmV0L2V0aHRvb2wvbmV0
bGluay5oDQo+ICsrKyBiL25ldC9ldGh0b29sL25ldGxpbmsuaA0KPiBAQCAtMzgxLDcgKzM4MSw3
IEBAIGV4dGVybiBjb25zdCBzdHJ1Y3QgbmxhX3BvbGljeSBldGhubF9mZWNfZ2V0X3BvbGljeVtF
VEhUT09MX0FfRkVDX0hFQURFUiArIDFdOw0KPiAgZXh0ZXJuIGNvbnN0IHN0cnVjdCBubGFfcG9s
aWN5IGV0aG5sX2ZlY19zZXRfcG9saWN5W0VUSFRPT0xfQV9GRUNfQVVUTyArIDFdOw0KPiAgZXh0
ZXJuIGNvbnN0IHN0cnVjdCBubGFfcG9saWN5IGV0aG5sX21vZHVsZV9lZXByb21fZ2V0X3BvbGlj
eVtFVEhUT09MX0FfTU9EVUxFX0VFUFJPTV9JMkNfQUREUkVTUyArIDFdOw0KPiAgZXh0ZXJuIGNv
bnN0IHN0cnVjdCBubGFfcG9saWN5IGV0aG5sX3ByZWVtcHRfZ2V0X3BvbGljeVtFVEhUT09MX0Ff
UFJFRU1QVF9IRUFERVIgKyAxXTsNCj4gLWV4dGVybiBjb25zdCBzdHJ1Y3QgbmxhX3BvbGljeSBl
dGhubF9wcmVlbXB0X3NldF9wb2xpY3lbRVRIVE9PTF9BX1BSRUVNUFRfQUREX0ZSQUdfU0laRSAr
IDFdOw0KPiArZXh0ZXJuIGNvbnN0IHN0cnVjdCBubGFfcG9saWN5IGV0aG5sX3ByZWVtcHRfc2V0
X3BvbGljeVtFVEhUT09MX0FfUFJFRU1QVF9WRVJJRklFRCArIDFdOw0KPiAgZXh0ZXJuIGNvbnN0
IHN0cnVjdCBubGFfcG9saWN5IGV0aG5sX3N0YXRzX2dldF9wb2xpY3lbRVRIVE9PTF9BX1NUQVRT
X0dST1VQUyArIDFdOw0KPiAgZXh0ZXJuIGNvbnN0IHN0cnVjdCBubGFfcG9saWN5IGV0aG5sX3Bo
Y192Y2xvY2tzX2dldF9wb2xpY3lbRVRIVE9PTF9BX1BIQ19WQ0xPQ0tTX0hFQURFUiArIDFdOw0K
PiAgZXh0ZXJuIGNvbnN0IHN0cnVjdCBubGFfcG9saWN5IGV0aG5sX21vZHVsZV9nZXRfcG9saWN5
W0VUSFRPT0xfQV9NT0RVTEVfSEVBREVSICsgMV07DQo+IGRpZmYgLS1naXQgYS9uZXQvZXRodG9v
bC9wcmVlbXB0LmMgYi9uZXQvZXRodG9vbC9wcmVlbXB0LmMNCj4gaW5kZXggMDAwMGJhOGNiOTBj
Li43NTY2ZmZiOTQ4YjIgMTAwNjQ0DQo+IC0tLSBhL25ldC9ldGh0b29sL3ByZWVtcHQuYw0KPiAr
KysgYi9uZXQvZXRodG9vbC9wcmVlbXB0LmMNCj4gQEAgLTYzLDYgKzYzLDggQEAgc3RhdGljIGlu
dCBwcmVlbXB0X3JlcGx5X3NpemUoY29uc3Qgc3RydWN0IGV0aG5sX3JlcV9pbmZvICpyZXFfYmFz
ZSwNCj4gIA0KPiAgCWxlbiArPSBubGFfdG90YWxfc2l6ZShzaXplb2YodTgpKTsgLyogX1BSRUVN
UFRfRU5BQkxFRCAqLw0KPiAgCWxlbiArPSBubGFfdG90YWxfc2l6ZShzaXplb2YodTMyKSk7IC8q
IF9QUkVFTVBUX0FERF9GUkFHX1NJWkUgKi8NCj4gKwlsZW4gKz0gbmxhX3RvdGFsX3NpemUoc2l6
ZW9mKHU4KSk7IC8qIF9QUkVFTVBUX0RJU0FCTEVfVkVSSUZZICovDQo+ICsJbGVuICs9IG5sYV90
b3RhbF9zaXplKHNpemVvZih1OCkpOyAvKiBfUFJFRU1QVF9WRVJJRklFRCAqLw0KPiAgDQo+ICAJ
cmV0dXJuIGxlbjsNCj4gIH0NCj4gQEAgLTg5LDYgKzkxLDEyIEBAIHN0YXRpYyBpbnQgcHJlZW1w
dF9maWxsX3JlcGx5KHN0cnVjdCBza19idWZmICpza2IsDQo+ICAJaWYgKHJldCA8IDApDQo+ICAJ
CXJldHVybiByZXQ7DQo+ICANCj4gKwlpZiAobmxhX3B1dF91MzIoc2tiLCBFVEhUT09MX0FfUFJF
RU1QVF9ESVNBQkxFX1ZFUklGWSwgcHJlZW1wdC0+ZGlzYWJsZV92ZXJpZnkpKQ0KPiArCQlyZXR1
cm4gLUVNU0dTSVpFOw0KPiArDQo+ICsJaWYgKG5sYV9wdXRfdTMyKHNrYiwgRVRIVE9PTF9BX1BS
RUVNUFRfVkVSSUZJRUQsIHByZWVtcHQtPnZlcmlmaWVkKSkNCj4gKwkJcmV0dXJuIC1FTVNHU0la
RTsNCj4gKw0KPiAgCXJldHVybiAwOw0KPiAgfQ0KPiAgDQo+IEBAIC0xMTAsNiArMTE4LDcgQEAg
ZXRobmxfcHJlZW1wdF9zZXRfcG9saWN5W0VUSFRPT0xfQV9QUkVFTVBUX01BWCArIDFdID0gew0K
PiAgCVtFVEhUT09MX0FfUFJFRU1QVF9FTkFCTEVEXQkJCT0gTkxBX1BPTElDWV9SQU5HRShOTEFf
VTgsIDAsIDEpLA0KPiAgCVtFVEhUT09MX0FfUFJFRU1QVF9BRERfRlJBR19TSVpFXQkJPSB7IC50
eXBlID0gTkxBX1UzMiB9LA0KPiAgCVtFVEhUT09MX0FfUFJFRU1QVF9QUkVFTVBUSUJMRV9NQVNL
XQkJPSB7IC50eXBlID0gTkxBX05FU1RFRCB9LA0KPiArCVtFVEhUT09MX0FfUFJFRU1QVF9ESVNB
QkxFX1ZFUklGWV0JCT0gTkxBX1BPTElDWV9SQU5HRShOTEFfVTgsIDAsIDEpLA0KPiAgfTsNCj4g
IA0KPiAgaW50IGV0aG5sX3NldF9wcmVlbXB0KHN0cnVjdCBza19idWZmICpza2IsIHN0cnVjdCBn
ZW5sX2luZm8gKmluZm8pDQo+IEBAIC0xNTUsNiArMTY0LDggQEAgaW50IGV0aG5sX3NldF9wcmVl
bXB0KHN0cnVjdCBza19idWZmICpza2IsIHN0cnVjdCBnZW5sX2luZm8gKmluZm8pDQo+ICAJCQkg
ICAgdGJbRVRIVE9PTF9BX1BSRUVNUFRfRU5BQkxFRF0sICZtb2QpOw0KPiAgCWV0aG5sX3VwZGF0
ZV91MzIoJnByZWVtcHQuYWRkX2ZyYWdfc2l6ZSwNCj4gIAkJCSB0YltFVEhUT09MX0FfUFJFRU1Q
VF9BRERfRlJBR19TSVpFXSwgJm1vZCk7DQo+ICsJZXRobmxfdXBkYXRlX2Jvb2wzMigmcHJlZW1w
dC5kaXNhYmxlX3ZlcmlmeSwNCj4gKwkJCSAgICB0YltFVEhUT09MX0FfUFJFRU1QVF9ESVNBQkxF
X1ZFUklGWV0sICZtb2QpOw0KPiAgCXJldCA9IDA7DQo+ICAJaWYgKCFtb2QpDQo+ICAJCWdvdG8g
b3V0X29wczsNCj4gLS0gDQo+IDIuMzUuMw0KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
