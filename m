Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD80FD240F7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jan 2026 12:05:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D95CB40BDF;
	Thu, 15 Jan 2026 11:05:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HXdCPcFucCgU; Thu, 15 Jan 2026 11:05:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A5FC40BEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768475146;
	bh=DAu4B2lN39Ui9c5H0Scawn3kbdd2nxGM5tfojSagVUA=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=hzPVS+DycLsRG5Ty8pA1Mby5PT6pwksxCdTwzLc3wUBFYK2q0ZGXCmBOoiA+8pc32
	 ysWT/VkTLJnKCLHJmVmnLTTHluBmwSxnT3ziPdDpShLj81B5VtsaCgBynoVbzP8HLI
	 wZzTQNoXYE4VimtbmgsL3YNTwro9q+Yd6iF7NKFf54DCAaOqmcY52Zjney5l7hlop0
	 nAnxkK6V3I8gex1jkq5Fahu8Dp+1+dpBs9yX16usRGSlzQ1k84KCGofngzJJTYJSTW
	 SAqzqD56jsUtsKeLXOLb7+o9CdO7RBYJmvETO7nDrlrY0cOjX4zP0fDiO/XCWzCEfE
	 wCk5ePTfs1OKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A5FC40BEB;
	Thu, 15 Jan 2026 11:05:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 78E801C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 11:05:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 692E040BCC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 11:05:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 80wcMbrPkcA2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jan 2026 11:05:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.159.5;
 helo=osppr02cu001.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7BBDF40B54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BBDF40B54
Received: from OSPPR02CU001.outbound.protection.outlook.com
 (mail-norwayeastazon11013005.outbound.protection.outlook.com [40.107.159.5])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7BBDF40B54
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 11:05:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mpLVX3jIr10rTjDl2o5YNruN7sysWsqt2RE+WSVXN29JR/5M9nz6VoQedBiU62749KBqgW/R78DFc97jnt4MrQ/FGPiq3P2o3GV5HXPDAAPD5tmrq51NaE+NQmD3c5OLyFa7tXVcccxG7dp59L3+BvdnZxsUQQJ7u04DjQ7FuaAetAmfCgxuP5Od+F1gga2qTKW/llYsTCGwC3ZcqNMLjLRwcRX0twKOaDiNuh9L7ddJsMXr4AcK85qyln+OfCMnLrhjEoMdHzoAGBrkAtvI1ssI4QTVS7YrHrG5W/tgeZvItXrCSQ5GeQSDGnNQjUpKStMJxMX3q5SgvgEIgAEeQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DAu4B2lN39Ui9c5H0Scawn3kbdd2nxGM5tfojSagVUA=;
 b=gxCjIzAGvpBcVhbfwI0/T2tr8d+b5CfcqrS49EUdHDgEB3JDHOrqeHPEY4SrbegR9MOYqNV5Hq0k8JXee8m5ZwwARRdYMa+KnT+KAy7ivFvf0ojeTEafDQ3+mnzVtF8IxeGuZrMOOec9hJs89GV68XLbD10nKTvE2N+cGDFpWhpatsGIfwPXJFBOfZvKGp4d0WrDAoFm6j4XAEZCledmASoWIeFQqLZXtBRWe0oz624N5fgx/ovL9Yzw4dD727E7oYvAs/mxYCONeNCFAykb6jnqlP2AaHcmb5Yn17Q1F0DYrLRYGVMx72BHqv+E+CY2cOzRU22mFpwMZSy8zrO+FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by PA3PR10MB9329.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:4ad::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Thu, 15 Jan
 2026 11:05:37 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::eaf8:36f9:7ebb:e72b]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::eaf8:36f9:7ebb:e72b%5]) with mapi id 15.20.9520.005; Thu, 15 Jan 2026
 11:05:37 +0000
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: "aleksandr.loktionov@intel.com" <aleksandr.loktionov@intel.com>,
 "jacob.e.keller@intel.com" <jacob.e.keller@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "sriram.yagnaraman@ericsson.com" <sriram.yagnaraman@ericsson.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "magnus.karlsson@intel.com"
 <magnus.karlsson@intel.com>
Thread-Topic: AW: [PATCH iwl-net v5] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHcg8PrekTNf/vlH0OQtQBQJq0k07VP+5EAgAFE5BCAALz/AIAA/R+Q
Date: Thu, 15 Jan 2026 11:05:37 +0000
Message-ID: <AS1PR10MB5392BEABB9D53954570C07AD8F8CA@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <20260112130349.1737901-1-vivek.behera@siemens.com>
 <aWYvVWG+AXUtpBgM@boxer>
 <AS1PR10MB53927D6755EA818A29A8B0EE8F8FA@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <aWfeeu8r38dti0n8@boxer>
In-Reply-To: <aWfeeu8r38dti0n8@boxer>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=8e1dbe31-3e4c-4474-9860-fe03f5e65f4f;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2026-01-15T09:26:39Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|PA3PR10MB9329:EE_
x-ms-office365-filtering-correlation-id: beddb620-1437-46ad-e375-08de5426038e
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?cR1LKB8V/9jxUOmhllxqYBAU3c9ylu3EpqyryDWDuafKeDyRfQoUB9v0+MJQ?=
 =?us-ascii?Q?O7FCVhObxybdlwE4Cv1cDIp1rzCSJ5PABIyUd+3nBJfIkmTNLLY0Ai/G/D8l?=
 =?us-ascii?Q?RIyoDYnzNq2fv2ajCNvglig01r03RbAidnQaVlLavt/oZOt1XYxtHcpGQvnD?=
 =?us-ascii?Q?SDxNACTc+nqxtZliL2G40hgCVj5OqNhmweI2+lioPgEiOoUG6G5HNWLMmzcb?=
 =?us-ascii?Q?UVu+7jwuKJkYLPmi3e3dsaqcVfRT6ajs4rWAB3/Gvv/rLgJkk+NXNbjXYM2Y?=
 =?us-ascii?Q?a9KqO0lgcD7sVyLqbqroH/NKv3cL4uZORT24djbrM7Ljcjpt82kJRzsG3WvC?=
 =?us-ascii?Q?g3qv0/hZb5ARmxQ63cC0HVuRjEBcoQeuQROYhpqBupsDL43ig8Nl2ObTAnJa?=
 =?us-ascii?Q?Y2HINK3x1k4hQt8ljFYCqgYGJdmpFaEmfSAl3tW8dneIuoSvWa2hAgGxwRLy?=
 =?us-ascii?Q?JS9M984biLJCEjJgpF7xfqficS9qjdgyOD/I/g8AlV2QDJEtgQdQ12CYCHMm?=
 =?us-ascii?Q?2x2eDgSEQffwARdi1N0MRh3sHxtulzCeboVUQXUoEk8ZtX3fLh3yBmna4nJN?=
 =?us-ascii?Q?B7lsNsvPDA4UV5nEZsyY7DwdtNWX0j8uzsGizj3WwEaHIIF+uazzazFVf5cn?=
 =?us-ascii?Q?6uG16h/a4pMA0Qn4jN2KDRGC6UJzG2mfnkzsGOCD4sDLHek/du1mBzLHclJ/?=
 =?us-ascii?Q?QUJ6COnYyey+xOOKTHcHs+3YhZSZY+HRryxLwJkAgJDn1uR3x4EgmlfqWuym?=
 =?us-ascii?Q?fQkM1tvqNawKA0KqN9AI3NzhmTMs4D4ha3BnKkKR0yNWopG9v24eSy4xF/EV?=
 =?us-ascii?Q?ZOOmeRTamT+A9IAlpkDcew26cikeqYhd7DYrFF0KyhhVgNNeNp1nB0KSndqG?=
 =?us-ascii?Q?NJbeyEdFC+9g+LupsC3OM0bMGoNPHqGRCHSZJA+3XrhzSZEfizyA1L8CSdlW?=
 =?us-ascii?Q?D+SbeAxZw4FOMjuXITTG4p+ODAUHymLYT7WH4C6zbntwixEJOhaeGD3pedG2?=
 =?us-ascii?Q?wq9Rw6xV6/eLZFHmIhAzJtgmqCirwmMooVs3WVpKoxCbb1OUKO/fL2K2wLVO?=
 =?us-ascii?Q?J/QHhy1pODl27vsAuC1FR8vcRawmdF+WUbrobuRyCRqhRXYY16w1Ek7Ymh3q?=
 =?us-ascii?Q?wYIYzxNyolyMuhail2tdSLdwh8sJAr3hwu1c2UxMkA9gBfEYbCjqNvQR/PXC?=
 =?us-ascii?Q?4VOoOSzZsMDYJHJL3cUHvhISVVwnG4Uxk3y4m0NP5sdPmKWl7fhcS0zWmsmz?=
 =?us-ascii?Q?VSkUkxIzhOfjvS5r4VM5j5ms4QKpVwpwljpFindW4OHkSc00cbgkr37cmWLI?=
 =?us-ascii?Q?dC3A4TR1h9EkSnUDrVIJ42G/GmBkkVPwgIaJtyXkPT7gALpMe6aIejV+P/q/?=
 =?us-ascii?Q?gSSD+8f9rthl3w/vrVTQT/4tkPbEWNF0EUsp+s72bjsIrfGpcUH4jxJE+ewO?=
 =?us-ascii?Q?zBaZGedh2kSU0oIgpuQRRWoFz6JWl5Jmu/BUyjABtOZmpPjRhq2cFS6Lc98D?=
 =?us-ascii?Q?qmEpJeF0XcMKp0GgyQFNAjwe/zLd4pAaSjbG10GJVrHOBQA0Ugp06ccqiOzd?=
 =?us-ascii?Q?QcuoCyTuvaBKo4Vvrkl196vLQ+BXgxV8YVP3cNZ9rir1Kwi0TBUTh1Xfl3Xn?=
 =?us-ascii?Q?2iq9stDifwNlk4hkoEioSqA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Prr9gNUJWSHHITUN6bnWPytn88T1s7bjpNHAb81gL3GrDKJlHoCBjXtmNZ3h?=
 =?us-ascii?Q?TxsEDc/61WcoPutgE790R5YuCLcS6kzz9fM8uYeilzWPFdp0C+OGZjS/76OS?=
 =?us-ascii?Q?tjXfMfY+sHsanB49yKHztlKjPD4+9jdzUscjLX8gon/F3jZxKsSqfUlAlE+T?=
 =?us-ascii?Q?LggaOFej+hH3eq80gYFVFZgNhslbrJuDJaSBLirTnZJd5go3kykP/sYGg//u?=
 =?us-ascii?Q?aDAMTGIJSiaeZuJizL5xNXyYrARi9xQHA4BwGqsgIg+g9F6fseMJPpKTZEoi?=
 =?us-ascii?Q?t9WNstIBBjLiE8AQ7tD+AqVVO585bNyPN5Zj5odgCe1RhGFE0TNTLF4oBZsD?=
 =?us-ascii?Q?2N9L1B6UGkgKZRkevXoGLugUqiAkhCXUpfAkUnXJLHFz1MtDCP54Bth0feDn?=
 =?us-ascii?Q?cl2vFLae+NkNmXeQwfGoF0ZgpJWYoReV9hQZZzktuWW+0dxi9vrXXwlmGz62?=
 =?us-ascii?Q?ommqCSe0JlU0k99UFe2sy1ATwH5KO6vXNxK8uLzvD2CBMhEmZdQF/P0j/BKl?=
 =?us-ascii?Q?aqPK5O93gU8ecnQSuwSyCGJ/8jO7qyyoWEFR8d0ZycWJ569l9YOd5Bonid/M?=
 =?us-ascii?Q?gEOB0s65btwSDP8X8+SPkPOGCytWJ6v9dapvCsEq0+8MGiasHwo4CRHr5+kS?=
 =?us-ascii?Q?9d/AbRcWbW8FwD7q+ivS8NK23XmM1ACgSTcXaagR3HG6oFdkVlPfzo341Cjs?=
 =?us-ascii?Q?tqvmjnFEOz2Eu3uc+4FN1yR8hEJuvboHAXmYTJ4suQBFCgB07G72F0fRBOWA?=
 =?us-ascii?Q?8GsPUtBmgGZhMJERqNT58nrsmt3Ev+UU4//JzNbq+Hb7gOtFYrZzpNr3rMZJ?=
 =?us-ascii?Q?xUgaYoe39fvW0rjAAlT2TlJennJMf0+zMULf2U//I9Cxjg8AMOVphbdUJlom?=
 =?us-ascii?Q?rfhj01oT4TiJ8OzSRtz/+oXnCGyCVnNzeqPCg74UG07geDMnWbfrFC54QCoi?=
 =?us-ascii?Q?AIK7ARpsx//UKpj+DTZIuedfBVY0zoyNjN9ImAXTRRG+ijDzj/y2cRSsVU0p?=
 =?us-ascii?Q?8YGavr6NBJECrqRdoW71EewQF66EAoZH9m1IewlgXuHpv6fcNAu8qjq2aX9s?=
 =?us-ascii?Q?0O5K9+k4IWUnWk8e5WvuxxvPpGPMsWb7KZLczpnM0DV3s6G8Puxw1NzVCsEO?=
 =?us-ascii?Q?MxaagsZpWJOPO0HAsmZmYWqyySCqQn3f+fjJ6GIgPzzWzVUzHnwneKP9oEoV?=
 =?us-ascii?Q?Y+QFv0J3Z/SZOiqKZwlTpfbs1xLuX+nxoKcYMuWLC1m+4xhMpHehVa4j4tdU?=
 =?us-ascii?Q?AZ5C6lahpyZCfhWKVsMuu3XPWYoxgbSj8XHsphEcWZBOF/21PpWkV1aizhfy?=
 =?us-ascii?Q?rG9ELOJiCtYYqgxsUnuqP6xjLlqcimTZHXo/AnTzrVOXRbPvJkGCzzrzi502?=
 =?us-ascii?Q?EMaB4OVMKlS0VttDtN0gMvX8dVXJQ6RWMJkBN7P3wRqqDzK4AYZGt/lEiFBN?=
 =?us-ascii?Q?bRmA+vHU4ZGmemDS/n1HRJTR15WEipRo7QNBI1mUf2XvOSGPmP/U00ttdN2K?=
 =?us-ascii?Q?VGGnpgFVy5QwstZhS8orkNpVPXRb02u0rTVgLt1awIgnpbjWLXb+VZRGk1IX?=
 =?us-ascii?Q?n/BIy0MTZe6Tt4LJ3NbVfBrXYaI+6AbIWGSDRlvmIy95CfbOPwdHl2qr7Ep/?=
 =?us-ascii?Q?THLsaWlRT08hh4nRe6FE+YfmxO3sXimI9A0aZGiqJYOnzPMoCiHz88t9+w82?=
 =?us-ascii?Q?aaHFB0HaDcuER8LEoCZvMpl9K34/H7QVEbb5MsHSZXqdVAtAImGkIPdltfj4?=
 =?us-ascii?Q?ljFAV+KPgg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: beddb620-1437-46ad-e375-08de5426038e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2026 11:05:37.8297 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dLgc/1i47kL4q6hoTedhddizaaErLaYa5Ptr3xhTGcEDNZIRyeitH2Fulu7VYKq4kZ/K3jMLphNlPSfgpvTTDWK8eujIzulXOoOQkThaIf4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA3PR10MB9329
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DAu4B2lN39Ui9c5H0Scawn3kbdd2nxGM5tfojSagVUA=;
 b=qf5w9e1eWOdC9QV54J7TZRA1iTMNLT8mlAx1/JXE4Kc++qdJ5F5lRAF+kza24rOdaEuUTauI5djS7UwY784xV/dKgpD35bPtmyL0wLHP5nBTvBsik5+rCsDEAUgv/X6WPcP9wKbWvOIEiuZSsI9R5kFSH1vgXEDFquhw81u7+tIbX+pawdROnKTkTT6rCtK5oZ4PefGbpwnnjWT9s+Zy7iddK8EInOpZgbqE6aP8Ya9xQW1qA6weAQPA2VFK1ZEHIIakOav0icQ2dCiTJKWk32J7HhPq4XYFfgRTO1G/0odDsEQIAPUAJf8gQ98xXvKXDThdWzH7HnUoe31uKJIL1w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=qf5w9e1e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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
From: "Behera, VIVEK via Intel-wired-lan" <intel-wired-lan@osuosl.org>
Reply-To: "Behera, VIVEK" <vivek.behera@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Maciej

> -----Original Message-----
> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Sent: Wednesday, January 14, 2026 7:21 PM
> To: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>
> Cc: aleksandr.loktionov@intel.com; jacob.e.keller@intel.com;
> anthony.l.nguyen@intel.com; przemyslaw.kitszel@intel.com;
> sriram.yagnaraman@ericsson.com; kurt@linutronix.de; intel-wired-
> lan@lists.osuosl.org; magnus.karlsson@intel.com
> Subject: Re: AW: [PATCH iwl-net v5] igb: Fix trigger of incorrect irq in
> igb_xsk_wakeup
>=20
> On Wed, Jan 14, 2026 at 08:19:37AM +0000, Behera, VIVEK wrote:
>=20
> (...)
>=20
> > > >
> > > > diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > > b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > > index fa028928482f..9357564a2d58 100644
> > > > --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > > +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > > @@ -443,6 +443,7 @@
> > > >  #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Cha=
nge */
> > > >  #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min.
> threshold
> > > */
> > > >  #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset
> Aserted */
> > > > +#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc
> written
> > > back */
> > > >
> > > >  /* Extended Interrupt Cause Set */
> > > >  /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git
> > > > a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > index 30ce5fbb5b77..6e51b5b6f131 100644
> > > > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > @@ -529,6 +529,13 @@ int igb_xsk_wakeup(struct net_device *dev,
> > > > u32 qid, u32
> > > flags)
> > > >  	struct igb_adapter *adapter =3D netdev_priv(dev);
> > > >  	struct e1000_hw *hw =3D &adapter->hw;
> > > >  	struct igb_ring *ring;
> > > > +	struct igb_q_vector *q_vector;
> > > > +	struct napi_struct *rx_napi;
> > > > +	struct napi_struct *tx_napi;
> > > > +	bool trigger_irq_tx =3D false;
> > > > +	bool trigger_irq_rx =3D false;
> > > > +	u32 eics_tx =3D 0;
> > > > +	u32 eics_rx =3D 0;
> > > >  	u32 eics =3D 0;
> > > >
> > > >  	if (test_bit(__IGB_DOWN, &adapter->state)) @@ -536,27 +543,65 @@
> > > > int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
> > > >
> > > >  	if (!igb_xdp_is_enabled(adapter))
> > > >  		return -EINVAL;
> > > > -
> > > > -	if (qid >=3D adapter->num_tx_queues)
> > > > +	/* Check if queue_id is valid. Tx and Rx queue numbers are always=
 same */
> > > > +	if (qid >=3D adapter->num_rx_queues)
> > > >  		return -EINVAL;
> > > > -
> > > > -	ring =3D adapter->tx_ring[qid];
> > > > -
> > > > -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > > > -		return -ENETDOWN;
> > > > -
> > > > -	if (!READ_ONCE(ring->xsk_pool))
> > > > +	/* Check if flags are valid */
> > > > +	if (!(flags & XDP_WAKEUP_RX) && !(flags & XDP_WAKEUP_TX))
> > > >  		return -EINVAL;
> > > > -
> > > > -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> > > > -		/* Cause software interrupt */
> > > > +	if (flags & XDP_WAKEUP_RX) {
> > > > +		/* IRQ trigger preparation for Rx */
> > > > +		ring =3D adapter->rx_ring[qid];
> > > > +		if (!READ_ONCE(ring->xsk_pool))
> > > > +			return -ENXIO;
> > > > +		q_vector =3D ring->q_vector;
> > > > +		rx_napi =3D &q_vector->napi;
> > > > +		/* Extend the BIT mask for eics */
> > > > +		eics_rx =3D ring->q_vector->eims_value;
> > > > +		trigger_irq_rx =3D true;
> > > > +	}
> > > > +	if (flags & XDP_WAKEUP_TX) {
> > > > +		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
> > > > +		/* In queue-pair mode, rx_ring and tx_ring share the same
> q_vector,
> > > > +		 * so a single IRQ trigger will wake both RX and TX processing
> > > > +		 */
> > > > +		} else {
> > > > +			/* IRQ trigger preparation for Tx */
> > > > +			ring =3D adapter->tx_ring[qid];
> > > > +			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring-
> >flags))
> > > > +				return -ENETDOWN;
> > > > +
> > > > +			if (!READ_ONCE(ring->xsk_pool))
> > > > +				return -ENXIO;
> > > > +			q_vector =3D ring->q_vector;
> > > > +			tx_napi =3D &q_vector->napi;
> > > > +			/* Extend the BIT mask for eics */
> > > > +			eics_tx =3D ring->q_vector->eims_value;
> > > > +			trigger_irq_tx =3D true;
> > > > +		}
> > > > +	}
> > > > +	/* All error checks are finished. Check and update napi states fo=
r rx and tx
> */
> > > > +	if (trigger_irq_rx) {
> > > > +		if (!napi_if_scheduled_mark_missed(rx_napi))
> > > > +			eics |=3D eics_rx;
> > > > +	}
> > > > +	if (trigger_irq_tx) {
> > > > +		if (!napi_if_scheduled_mark_missed(tx_napi))
> > > > +			eics |=3D eics_tx;
> > > > +	}
> > > > +	/* Now we trigger the required irqs for Rx and Tx */
> > > > +	if ((trigger_irq_rx) || (trigger_irq_tx)) {
> > > >  		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > > > -			eics |=3D ring->q_vector->eims_value;
> > > >  			wr32(E1000_EICS, eics);
> > > >  		} else {
> > > > -			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > > > +			if ((trigger_irq_rx) && (trigger_irq_tx))
> > > > +				wr32(E1000_ICS,
> > > > +				     E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
> > > > +			else if (trigger_irq_rx)
> > > > +				wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > > > +			else
> > > > +				wr32(E1000_ICS, E1000_ICS_TXDW);
> > >
> > > My understanding is something below would be sufficient. Bits set on
> > > E1000_ICS are not handled in any way so we don't have to distinguish
> > > between rx/tx, it's just the matter of irq trigger and napi schedule.
> > >
> > Hi see my comments below
> > > -----------------8<-----------------
> > >
> > > diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > index 30ce5fbb5b77..0aba7afd6a03 100644
> > > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > @@ -524,12 +524,26 @@ bool igb_xmit_zc(struct igb_ring *tx_ring,
> > > struct xsk_buff_pool *xsk_pool)
> > >  	return nb_pkts < budget;
> > >  }
> > >
> > > +static void igb_sw_irq(struct igb_q_vector *q_vector) {
> > > +	u32 eics =3D 0;
> > > +
> > > +	if (!napi_if_scheduled_mark_missed(&q_vector->napi)) {
> > > +		/* Cause software interrupt */
> > > +		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > > +			eics |=3D ring->q_vector->eims_value;
> > > +			wr32(E1000_EICS, eics);
> > > +		} else {
> > > +			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > So here it is sufficient to rely on the E1000_ICS_RXDMT0 bit to trigger=
 the
> correct irq (Tx and Rx)?
> >  I remember I received a review comment from Intel point to E1000_ICS_T=
XDW
> as being the correct bit of triggering TX for non MSIX case.
> > I can't really evaluate this since I don't have a setup to test this.
> > But okay
>=20
> I don't see in irq handlers that we do any specific handling for txdw vs =
rxdmt0. It's
> rather a matter of getting an irq here.
Yes amongst the interrupt cause checks implemented in the msi interrupt han=
dler
there is no interest in either E1000_ICR_RXDMT0 E1000_ICR_TXDW as events.
All that matters in this in this case is a softirq trigerring napi_schedule=
  . So we can stick
to E1000_ICS_RXDMT0 irrespective of the flag in the xsk wakeup function. Al=
though
I must mention that all other usages of E1000_ICS_RXDMT0 in the kernel are =
in combination
with rx_ring so from the code perspective this usage looks strange to someo=
ne without deeper knowledge of the system.=20
>=20
> > > +		}
> > > +	}
> > > +}
> > > +
> > >  int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)  {
> > >  	struct igb_adapter *adapter =3D netdev_priv(dev);
> > >  	struct e1000_hw *hw =3D &adapter->hw;
> > >  	struct igb_ring *ring;
> > > -	u32 eics =3D 0;
> > >
> > >  	if (test_bit(__IGB_DOWN, &adapter->state))
> > >  		return -ENETDOWN;
> > > @@ -548,14 +562,15 @@ int igb_xsk_wakeup(struct net_device *dev, u32
> > > qid, u32
> > > flags)
> > >  	if (!READ_ONCE(ring->xsk_pool))
> > >  		return -EINVAL;
> > >
> > > -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> > > -		/* Cause software interrupt */
> > > -		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > > -			eics |=3D ring->q_vector->eims_value;
> > > -			wr32(E1000_EICS, eics);
> > > -		} else {
> > > -			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > > -		}
> > > +	if (flags & XDP_WAKEUP_TX)
> > > +		igb_sw_irq(ring->q_vector);
> > > +
> > > +	if (flags & XDP_WAKEUP_RX) {
> > > +		ring =3D adapter->rx_ring[qid];
> > > +		/* for !IGB_FLAG_QUEUE_PAIRS, this will be NOP as NAPI has
> > > +		 * been already marked with NAPIF_STATE_MISSED
> > > +		 */
> > I think you meant for the case IGB_FLAG_QUEUE_PAIRS. Since when the
> > queue pairs are not active the Tx AND Rx queues don't share the same
> > qvector and consequently not the same NAPI
>=20
> yes, correct
>=20
> > > +		igb_sw_irq(ring->q_vector);
> > Okay so you would be triggering soft irq's in two steps if both TX and =
RX flags
> are set.
> > Honestly, I have tried to avoid doing this in my patch.  Which is the
> > reason why I wait to finish all the error checks, Napi updates before t=
riggering the
> required irq vectors by writing to eics with a single write.
> > But okay the other approach also works
>=20
>=20
>=20
> >
> > >  	}
> > >
> > >  	return 0;
> > >
> > > ----------------->8-----------------
> > >
> > > >  		}
> > > >  	}
> > > > -
> > > >  	return 0;
> > > >  }
> > > > --
> > > > 2.34.1
> > > >
> > I think the strategy of triggering interrupts in one step after perform=
ing all the
> necessary checks is what might make this approach look complex.
> > IMHO the one step strategy is better and more intuitive.
> > Unfortunately, there isn't a reference here to go by since none of the
> xsk_wakeup hooks implemented in the kernel care about the flags
> > I can submit a v6 of the patch based the one step approach with further
> simplifications. v6 would also include review suggestions I received for =
v5.
> > Like this I can also submit the next version to the igc patch. It follo=
ws the same
> logic as the igb
> > I have our regression tests with RTC testbench and our Siemens Profinet=
 RT
> tester running with these patches with I210 and I226
> >
> > Alternatively, you could submit patches following the igb and igc follo=
wing the
> two-step logic.
>=20
> How about we meet the half way and something below? that would include
> your request of having a single write to E1000_ICS.
>=20
Yes it sounds reasonable. However I would like to make some observations
>=20
> diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c
> b/drivers/net/ethernet/intel/igb/igb_xsk.c
> index 30ce5fbb5b77..432b4c7c1850 100644
> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> @@ -524,6 +524,17 @@ bool igb_xmit_zc(struct igb_ring *tx_ring, struct
> xsk_buff_pool *xsk_pool)
>  	return nb_pkts < budget;
>  }
>=20
> +static u32 igb_sw_irq_prep(struct igb_q_vector *q_vector)
> +{
> +	u32 eics =3D 0;
> +
> +	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> +		eics =3D adapter->flags & IGB_FLAG_HAS_MSIX ?
> +			q_vector->eims_value : 1;
> +
> +	return eics;
> +}
> +
>  int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>  {
>  	struct igb_adapter *adapter =3D netdev_priv(dev);
> @@ -548,14 +559,23 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid,=
 u32
> flags)
>  	if (!READ_ONCE(ring->xsk_pool))
>  		return -EINVAL;
If we want to implement proper usage of flags then I would move everything
related to a ring's internal checks inside the if case of the corresponding=
 if case.
Use the correct adapter ring (rx or tx) to perform the checks.
Even though the functionality wise this code is correct why just randomly p=
ick the tx  ring=20
right at beginning of the function and do two checks with it? And same ques=
tion would=20
pop up to the reviewers mind for the igc driver where rx_ring is used. For =
me correct
usage is more important than saving some lines of code in the patch
>=20
> -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> -		/* Cause software interrupt */
> -		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> -			eics |=3D ring->q_vector->eims_value;
> +	if (flags & XDP_WAKEUP_TX)
> +		eics |=3D igb_sw_irq_prep(ring->q_vector);
> +
> +	if (flags & XDP_WAKEUP_RX) {
> +		ring =3D adapter->rx_ring[qid];
> +		/* for IGB_FLAG_QUEUE_PAIRS, this will be NOP as NAPI has
> +		 * been already marked with NAPIF_STATE_MISSED
> +		 */
> +		eics |=3D igb_sw_irq_prep(ring->q_vector);
> +	}
> +
> +	/* Cause software interrupt */
> +	if (eics) {
> +		if (adapter->flags & IGB_FLAG_HAS_MSIX)
>  			wr32(E1000_EICS, eics);
> -		} else {
> +		else
>  			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> -		}
>  	}
>=20
>  	return 0;
>=20
> >
> > Regards
> >
> > Vivek

I would like to know your view about the next steps. Would you like me to i=
nclude the changes we discussed in next version of the patch I submitted?=20
Or would you like to submit the patch you have prepared?

Regards

Vivek
