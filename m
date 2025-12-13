Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B6BCBA7CA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Dec 2025 10:48:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F50983466;
	Sat, 13 Dec 2025 09:48:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AwLv_iKRkf5g; Sat, 13 Dec 2025 09:48:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F4B88343B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765619304;
	bh=lZI4HDOvp2b9eJX7VtNe8HBPHj2dem3gp0oC1GIU4PE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b0W9KH0YRF1ZityV5l4mAr535mGKm9Ibse9uU1GTscfTuudyo9vmN9nW4sk5m4OLs
	 Tqpm+pietO19YN9rmBow2PYB/cVqRAes90ll8P5Rv9bD9yrMnfnBqmfA93wEDQsqxF
	 4VoXiQp4xzJ4986zRGs0U0VEAMZdHtrWkZh3JLkpPSZxgF4AOUZJO0zQ+hhAVf5ukG
	 K0YYF4h1LMrbyVbnYDGPg/DrQOFkC1Rb2kBM4fyMq+2XNPu2Zxscp/7cjEnE3SNfi6
	 we3YeWCoLy5w0YopI+rM3jXxPQwwnI95QOopSsdvcxEBY2lkjjXJmqTfgI4ZkXJx3D
	 NsB5bbsqYQwBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F4B88343B;
	Sat, 13 Dec 2025 09:48:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C13572C1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Dec 2025 09:48:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A78C56061E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Dec 2025 09:48:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i2-mXuAKBDkB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Dec 2025 09:48:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.69.3;
 helo=am0pr83cu005.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E9894605FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9894605FF
Received: from AM0PR83CU005.outbound.protection.outlook.com
 (mail-westeuropeazon11010003.outbound.protection.outlook.com [52.101.69.3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E9894605FF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Dec 2025 09:48:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vasL2HHkcVBroU9/9E/iC9AGf0lgQYSMRmyakGlfA2kS8KyTDqW6kU0PIgBOGouiMZPcIJtzqiRGbHBm5PtGUGNepWqGYYB+XFisDZQw8A9U2u8VNyGKhHxKHC6f58+j/U0StyiZLFMjeI4ehRIQUE9mQUngkdgO8KGOBYOWt2sUONFtaZteCoLcI9Vh5hpvYBbti8uI1Qjv2FeBGo45ByYqOyA5OO4eBHx3deqZPE8qa7Lr5+uY80b38gcsTCN6nspQbY9gTxN8n17RIggn69ElXkxyDSF4Anu/IOxBUeIYJwM5okMY4w+T6iWfiIv0DuNCYPV6EQnPa1LA0bD96Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lZI4HDOvp2b9eJX7VtNe8HBPHj2dem3gp0oC1GIU4PE=;
 b=ytO1H0dh3n2z3t8vOeU/STKTeAk9yLOYIy1QFP9HZR6C80JCWRf8rK89XcXV3Ywrt5CLXF4xgx0dOwGpJKMxKS87yku24DB08KHAaFB0yCvkabiShExim9LYyvTDVoD1GYAVExg8KLnNGmwHPyVnqdNNA8/xA7yLL3gz/crUr3F3mTs60G40o4jnhbVXOHOcyewXWLJCZs+ebmm7dGcf4jDfnNualjYFyzBMio6PHKLhQzflUZUFoQOW5T/76yOPvxH62qBtI67UQ6FpbhzHsr543j3ofwvZYRnXrO+kC4Ms7cYBAB2XBq9mLmQSK7NHiLyzC0OvVCSczN3XsRbzSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:329::14)
 by AM7PR10MB3207.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:104::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.11; Sat, 13 Dec
 2025 09:48:14 +0000
Received: from DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::7d6:1951:2a10:34bb]) by DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::7d6:1951:2a10:34bb%5]) with mapi id 15.20.9412.005; Sat, 13 Dec 2025
 09:48:14 +0000
From: "Behera, VIVEK" <vivek.behera@siemens.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "sriram.yagnaraman@ericsson.com"
 <sriram.yagnaraman@ericsson.com>, "kurt@linutronix.de" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v1] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHca2leje8v5krntkqau+LeqsXMu7UeByKAgAAburCAABz1AIABEOJg
Date: Sat, 13 Dec 2025 09:48:14 +0000
Message-ID: <DU0PR10MB5387EE86D1A7CFD3B48945DD8FAFA@DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM>
References: <20251212131454.124116-1-vivek.behera@siemens.com>
 <IA3PR11MB8986039C808FEF65791C01B3E5AEA@IA3PR11MB8986.namprd11.prod.outlook.com>
 <AS1PR10MB539220210B2B5255BBE6429C8FAEA@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <IA3PR11MB89866D179FC6457D37E41020E5AEA@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89866D179FC6457D37E41020E5AEA@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=2d3c64a2-6a57-41a5-adb5-1aabc174264b;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-12T15:34:45Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0PR10MB5387:EE_|AM7PR10MB3207:EE_
x-ms-office365-filtering-correlation-id: b8090ee2-8574-4122-b096-08de3a2cbc72
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?wjElaRb4gGMguBPEpYVHLETjh5h8feutAs++0a66BEJYu0zVCf4oga1eL/pr?=
 =?us-ascii?Q?ieTR94tXgPp03LW93OrPKt8ilGt3guPLXuijEZTqyAa1cVsfECXHh+wYYOXX?=
 =?us-ascii?Q?xlzEmiJNRb6R7sFSjiAAik+TA+EauhwShUphPRKt/96plhzpP2jJDIr1Z2S/?=
 =?us-ascii?Q?WYd20xF+VCfzgY4WurP7T8g8SdvcRDtevvrsSVDFQ4So36xB0txqfYutd6Xs?=
 =?us-ascii?Q?Kbl3p7oOuWstZpr0AaUQ7soxdHMyQrxvjvasRrbRNjMefg78s4L2BIqk8d14?=
 =?us-ascii?Q?D+AbpnXGAMAuVFmm8J4Mqn0boO+hGUfsfYAB7Gw/jkBuXw0N8yx+OqZMXK8G?=
 =?us-ascii?Q?fd8LIEmwz9SKgc7u6pWZU6figgA07FhaKBywDYzrEvDXPcFIYHTK0ZWxuVY1?=
 =?us-ascii?Q?2nvvAecoHc1MRpEbccUaQbLY9g/fkYDOqvpjfPqwoGRC/XpHNsLIrctRn7uC?=
 =?us-ascii?Q?wI5zDLKAxJDIDDDwWieYqoH+1yANQPT0szs3ZL6Lj8M1Ddygt8t220/TV74h?=
 =?us-ascii?Q?amxIAdoc8xa8Bw7jhTdtVtYESrMa7DZXjcLAvWntJRgg4ggXL8EqjsS8MgK/?=
 =?us-ascii?Q?RwOxNH4Btwyw21JaeWkf5kjVg6ExIuf+oZTkumy5EGefOsCvlX5A3ImG9StI?=
 =?us-ascii?Q?w9sKJmxb1juW0yMHsXglBS9IjsL6AqtTr2MDU/nt8mHF1Vpr7HX0fRKRgzQt?=
 =?us-ascii?Q?I3+1nsShzaPdbjMGW7L06Yxa+9NfrK1mga8mtZ+0GThxFUsdVpFAQOguqlt/?=
 =?us-ascii?Q?HDbWSnWf4wSo/e8Xrl4PmqC4gsW1V+s4V14K+/1AFCmBowAyVDFKgFOnPUEf?=
 =?us-ascii?Q?bIpW9w3ZZCxSeTVDZFKGH/0wjE79qasErdJe8MHSRXAd+rWMZ0mB0xcfkBcr?=
 =?us-ascii?Q?L+prlPlr1Vj3tEd9Buu9UxOPD8uhBgczNvoJdtWvBGQuelZ+nXMPz3NbYSV/?=
 =?us-ascii?Q?5Q5tkMe1VTAGvWhfgPhmY0M2eY0Q0fD5Cw7y9y6dQb6RgFDmEjYaFqqpfUqB?=
 =?us-ascii?Q?OXELvSMSMxVP+20yA6kxTzn9f7n7Wa+oDMTkLFVOD84z/jlmZxNM2J+Famul?=
 =?us-ascii?Q?gpUM13Sb3DfK157Jb6wtgGa1RJqc+KlPNTzgVUnMOQm3EreHuEVm5pXWGqrO?=
 =?us-ascii?Q?PEp57FwgReaEcUXCNxESd/gey5Vt7+MR80n2zSv1B8LTu0LbMzlxxnWdrhXk?=
 =?us-ascii?Q?oK8YI2tW/oa8M4Rr221weAm9AJsnLt4tkl6BeU0xjpymjmlpITZg+krANFmz?=
 =?us-ascii?Q?RxiqLqpfvOdBRJFU/KmRDWLmem5ZPc9p09SB7BJnyPAUzcwrdFZEjatjq12J?=
 =?us-ascii?Q?TXnXpNPUcT30bGsS+Is15E/BpYyx4a8UP2n5EMe1s0eobpPNr/KShn4ysl5m?=
 =?us-ascii?Q?YbB+gT25qGHd8jVFyUNKNf8+ZFsl6RI4ZRtLTLVXzZUqMpVw2d3r8HLF9Fl+?=
 =?us-ascii?Q?fz5hzue3E8XdxzpIyz62MEc2BjuUH24j8nD/w4VUtet2Or9GCJRFJkx1sxCG?=
 =?us-ascii?Q?92CDwks4TqFFJAq8cAa7csRSgav9VHx2LfGIr1okixQ5kCE4PZLtSwNNQA?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WKKtz0fFeihyaCmU3yzwzTB88RtoUXc4BXAhlJqP8juo2t0AnJQeDnzz2MYs?=
 =?us-ascii?Q?mYbt10zxmGLAh4RsXvL1JTxLA4u/cUysy/zAs+b6RsIaUNTAeH4TFh3XuyxT?=
 =?us-ascii?Q?Ez8m0CO+7klL/8zVj3Wscwy4r+08PQLRuyiGHUhrHMN5FOM1vbwP5MnIfoW5?=
 =?us-ascii?Q?Avs04U4nipqYjgwGqukJ46FKlvU90srFbWom4a+sgf9X5MwlKPDMWXc86EET?=
 =?us-ascii?Q?rYbBkretEZNHUhFjvuBaxFL1jMGISpV37wqQHQLwGshvE0QbJjGEzWf8VK3+?=
 =?us-ascii?Q?iu3gZHhFOJ7WFSkVQblC0DeYepRQlmgdvd733VLBW6XZE0J8jDLKv4kEQEks?=
 =?us-ascii?Q?/zOFPNSouNcOmDYuOqIxtzU+fgwQ4Ta4Ak9EEDckcDvpInMUbKi18zXXlnFd?=
 =?us-ascii?Q?3hA64sx6tZ5pqsjnFKTrne44jBSXZdO0KkDe1sDEoIIxuZ+GIBpFpAO8ZmDN?=
 =?us-ascii?Q?MV/3zewPknmSqeCerbs2oKJll+nhjkUzzL/DolBqE7BMrYZ+345w01KMMtrj?=
 =?us-ascii?Q?CnmbLhw4iQJbnQ8wKS2zOSY9/fSaVco1AVjUXUSyaLWg267grwXNGLf9YaWZ?=
 =?us-ascii?Q?+ZbzyT7XLXhIqgxVGMgh3EDE6y8MMYpj68qD0OTlSUcNhGpg8kjkD6FtdduE?=
 =?us-ascii?Q?PgE0QsPDbHgz4ARWNEE0KwHEu27W6itirULtRe5fvbyLO+fo7M9lVF0OccPq?=
 =?us-ascii?Q?JX+5VE4BSmZmoa7V3QeUv1XSOyrd5j+ElqSe0vw5HTrHtAybZAx3DBKKEzcT?=
 =?us-ascii?Q?f82mTuQtm8kfpGwHgALXk6FQ31y9PeYsJh51XHMq4HsCOdprV+pUJF4G4A4N?=
 =?us-ascii?Q?IHtD7hhRCZspnsk3IV92Vab8SGowVH7Snc64fNn/xx/PuGcjoPpEekwiK0WE?=
 =?us-ascii?Q?jng3DyO/mTQaqRZmwuE34u/ewtSb/1XXuBmKG5ogfc9Di7BoIKx13Hz/8qbS?=
 =?us-ascii?Q?EgViNY6v8t/5mGo+prIx/jv4UDvB70iFdQWOHhQNhB+2VrtzgglCOR5PWgH/?=
 =?us-ascii?Q?gQdEZZ8Cq9cuAtihu0b8O4U7PyqwiePfzZw+MI2nKoplnAJDLX22z8BdOd2w?=
 =?us-ascii?Q?mvHdek8G1jbT7bW4PY9XCGKKtTkXp4BshBisLWBQ0o2Evxzz3AKBMEqjb6Cs?=
 =?us-ascii?Q?N/ryLMGtDFa9byOKrS8DXmu1t5jVHxw5H5cSxAnlHnGSj+RBlrlhmf3fJibc?=
 =?us-ascii?Q?B5qOPgtzh0UECSgaphDNX9agfba3bngjIrRm2Fg/5jwaP+HgfOUi7HFCqLlG?=
 =?us-ascii?Q?Z8vOXezPmEn80ET/e5l/FO9ydXggUK3/RMzExrbjaK3JugzDZNQj43LUAsjw?=
 =?us-ascii?Q?prAsB4E/Sky8/RT8vNNgFfcWx33HAOXuf/u8CMLROLCVz3ph9P7sg8C4Ypnf?=
 =?us-ascii?Q?Uv+cwMWhnT/UtxvsOD5uFR8HZ5gnQXhhmRdmeypE0Zi3DOq6DEiyAlJ8Hj7X?=
 =?us-ascii?Q?4swDjrt153SqyU0N+RUlxGzJXoLQAOMAJh0zTr1sk4foc3w3MKbghF2WO5SV?=
 =?us-ascii?Q?z1JdtJB9vdp/LhLT2yTuZ7sMP26w289mN9oIkEajlTTPDKzqbuqLUv6w/rd0?=
 =?us-ascii?Q?Y9tfIfliD2wFxtRA06bYFvB2Sf9+E/T9NtpnXO+4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b8090ee2-8574-4122-b096-08de3a2cbc72
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2025 09:48:14.7287 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b6hg/Xb10eidI3Ll0R3YdRipDzuo2HVPAr8tPre6KF+nF1TnOGGgZwalq7TOfE3ZDUTF9bvAJpUs/uHWmQiN/P1VnrHqCnWfo2n/Xb4GJ3A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR10MB3207
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lZI4HDOvp2b9eJX7VtNe8HBPHj2dem3gp0oC1GIU4PE=;
 b=elroA/chcE9zHO3t+bbxfPevVvL8WJ/FmOeZdCzrtQPJ0gtVWMZ7PxGnxSGtPMIAKledsTyzI7jNzle0r/nN/EcTVL6D3Vzm5OnW8Dhqgx6dt3/ZAQnT3+9XT/BEDB32U2KOoRXKBPEr6RNjxc3yr+MFjf5iW8kpN25OorAX/cl8lZPQju6Kgq+7SLn+1e+z4BPVilSVpRohp/s4qs4TZY7hCiggP1Mo1R+I/1666eJXuW1u79+JCgo6gRwZ/TAleGLXdrKE0xSlNKYw/Zk58EoNxXx5qLsRkrwHnZ4iIYR0+oRpJvQYvk/3BnbU7qTfMZ7r30afTRJU8LaIylaV8A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=elroA/ch
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igb: Fix trigger of
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Sent: Friday, December 12, 2025 6:18 PM
> To: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>; Keller=
,
> Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> kurt@linutronix.de
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: RE: [PATCH iwl-net v1] igb: Fix trigger of incorrect irq in
> igb_xsk_wakeup
>=20
>=20
>=20
> > -----Original Message-----
> > From: Behera, VIVEK <vivek.behera@siemens.com>
> > Sent: Friday, December 12, 2025 5:26 PM
> > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller,
> > Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> > <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> > kurt@linutronix.de
> > Cc: intel-wired-lan@lists.osuosl.org
> > Subject: RE: [PATCH iwl-net v1] igb: Fix trigger of incorrect irq in
> > igb_xsk_wakeup
> >
> >
> >
> > > -----Original Message-----
> > > From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> > > Sent: Friday, December 12, 2025 2:56 PM
> > > To: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>;
> > > Keller, Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> > > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > > <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> > > <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> > > kurt@linutronix.de
> > > Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek (DI FA DSP ICC
> > > PRC1) <vivek.behera@siemens.com>
> > > Subject: RE: [PATCH iwl-net v1] igb: Fix trigger of incorrect irq in
> > > igb_xsk_wakeup
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Vivek Behera <vivek.behera@siemens.com>
> > > > Sent: Friday, December 12, 2025 2:15 PM
> > > > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller,
> > > > Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> > > > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > > > <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> > > > <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> > > > kurt@linutronix.de
> > > > Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek
> > > > <vivek.behera@siemens.com>
> > > > Subject: [PATCH iwl-net v1] igb: Fix trigger of incorrect irq in
> > > > igb_xsk_wakeup
> > > >
> > > > The current implementation in the igb_xsk_wakeup expects the Rx
> > and
> > > > Tx queues to share the same irq. This would lead to triggering of
> > > > incorrect irq in split irq configuration.
> > > > This patch addresses this issue which could impact environments
> > with
> > > > 2 active cpu cores or when the number of queues is reduced to 2 or
> > > > less
> > > >
> > > > cat /proc/interrupts | grep eno2
> > > >  167:          0          0          0          0 IR-PCI-MSIX-
> > > > 0000:08:00.0    0-edge      eno2
> > > >  168:          0          0          0          0 IR-PCI-MSIX-
> > > > 0000:08:00.0    1-edge      eno2-rx-0
> > > >  169:          0          0          0          0 IR-PCI-MSIX-
> > > > 0000:08:00.0    2-edge      eno2-rx-1
> > > >  170:          0          0          0          0 IR-PCI-MSIX-
> > > > 0000:08:00.0    3-edge      eno2-tx-0
> > > >  171:          0          0          0          0 IR-PCI-MSIX-
> > > > 0000:08:00.0    4-edge      eno2-tx-1
> > > >
> > > > Furthermore it uses the flags input argument to trigger either rx,
> > > > tx or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> > > > documentation
> > > >
> > > > Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and
> > > > helpers")
> > > > Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> > > > ---
> > > >  drivers/net/ethernet/intel/igb/igb_xsk.c | 77
> > > > ++++++++++++++++++++++-
> > > > -
> > > >  1 file changed, 71 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > index 30ce5fbb5b77..9f23e6740640 100644
> > > > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > @@ -529,7 +529,9 @@ int igb_xsk_wakeup(struct net_device *dev, u32
> > > > qid, u32 flags)
> > > >  	struct igb_adapter *adapter =3D netdev_priv(dev);
> > > >  	struct e1000_hw *hw =3D &adapter->hw;
> > > >  	struct igb_ring *ring;
> > > > +	struct igb_q_vector *q_vector;
> > > >  	u32 eics =3D 0;
> > > > +	bool trigger_irq_no_msix =3D false;
> > > >
> > > >  	if (test_bit(__IGB_DOWN, &adapter->state))
> > > >  		return -ENETDOWN;
> > > > @@ -537,13 +539,76 @@ int igb_xsk_wakeup(struct net_device *dev,
> > u32
> > > > qid, u32 flags)
> > > >  	if (!igb_xdp_is_enabled(adapter))
> > > >  		return -EINVAL;
> > > >
> > > > -	if (qid >=3D adapter->num_tx_queues)
> > > > -		return -EINVAL;
> > > > -
> > > > -	ring =3D adapter->tx_ring[qid];
> > > > +	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
> > > > +		/* If both TX and RX need to be woken up */
> > > > +		/* check if queue pairs are active. */
> > > > +		if ((adapter->flags & IGB_FLAG_QUEUE_PAIRS)) {
> > > Extra parentheses in if().
> > Noted. Will remove in the next version
> > >
> > > > +			/* Extract ring params from Rx. */
> > > > +			if (qid >=3D adapter->num_rx_queues)
> > > > +				return -EINVAL;
> > > > +			ring =3D adapter->rx_ring[qid];
> > > > +		} else {
> > > > +			/* Two irqs for Rx AND Tx need to be triggered */
> > > > +			if (qid >=3D adapter->num_rx_queues)
> > > > +				return -EINVAL;
> > > > +
> > > > +			if (qid >=3D adapter->num_tx_queues)
> > > > +				return -EINVAL;
> > > > +
> > > > +			/* IRQ trigger preparation for Rx */
> > > > +			ring =3D adapter->rx_ring[qid];
> > > > +			if (!ring->xsk_pool)
> > > > +				return -ENXIO;
> > > > +
> > > > +			q_vector =3D ring->q_vector;
> > > > +			if (!napi_if_scheduled_mark_missed(&q_vector-
> > > > >napi)) {
> > > > +				/* Extend the BIT mask for eics */
> > > > +				if (adapter->flags & IGB_FLAG_HAS_MSIX)
> > > > +					eics |=3D ring->q_vector->eims_value;
> > > > +				else
> > > > +					trigger_irq_no_msix =3D true;
> > > > +			}
> > > > +			/* IRQ trigger preparation for Tx */
> > > > +			ring =3D adapter->tx_ring[qid];
> > > > +			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring-
> > > > >flags))
> > > > +				return -ENETDOWN;
> > > > +
> > > > +			if (!ring->xsk_pool)
> > > > +				return -ENXIO;
> > > Looks like violation of the API contract:
> > > When XDP_WAKEUP_RX | XDP_WAKEUP_TX are both set, if RX can be
> woken
> > > but TX cannot, the caller expects a clear error with no side
> > effects,
> > > not a half- prepared state.
> > > Shouldn't we validate both RX and TX rings before preparing any
> > interrupt state?
> > >
> > I am not sure if I understand correctly what you mean by a half-
> > prepared state.
> > Preparation of Tx and Rx purely includes(unless I missed something)
> > validating all the necessary conditions required to wakeup both Tx and
> > RX. Only after all checks are done tx and rx rings a single trigger is
> > executed either over EICS or E1000_ICS right at the end.
> > In my understanding the ndo_xsk_wakeup with RX and TX flags set
> > expects both the xsk pools to be woken up.
> > So how is it a violation of the API contract if we exit immediately on
> > error during our checks?
> >  Any failing check eliminates the success criteria defined by the API
>=20
> Good day, Vivek
>=20
> Thanks for the clarification. Let me explain the side effect concern more=
 clearly:
>=20
> > Do you mean that the error should only be returned after doing all the
> > checks instead of exiting the function with the corresponding error
> > immediately when a check fails?
>=20
> Yes, exactly. The issue is that napi_if_scheduled_mark_missed() is not ju=
st a
> "check" - it has side effects. When NAPI is already scheduled, calling th=
is function
> marks the queue as "missed," which modifies the NAPI subsystem's state. I=
f we
> then fail the TX validation and return an error, we've left the RX NAPI i=
n a modified
> state without completing the operation.
>=20
> The sequence should be:
> 1. Validate both RX and TX rings (xsk_pool existence, disabled flags, etc=
.) 2.
> Only if BOTH validations pass, call napi_if_scheduled_mark_missed() and
>    prepare interrupt state
> 3. Trigger interrupts
>=20
> This ensures atomicity - either the entire operation succeeds, or no stat=
e is
> modified.

Hi, Alexander

Thanks. Now I understand that you were referring to the napi state in your =
original comment. Yes indeed we have to wait for all checks to finish
Before changing the napi state and triggering irqs. This would ensure that =
operation required by napi state change is executed.
I will add this to the next version
>=20
> > >
> > > > +
> > > > +			/* Retrieve the q_vector saved in the ring */
> > > > +			q_vector =3D ring->q_vector;
> > > > +			if (!napi_if_scheduled_mark_missed(&q_vector-
> > > > >napi)) {
> > > > +				/* Extend the BIT mask for eics */
> > > > +				if (adapter->flags & IGB_FLAG_HAS_MSIX)
> > > > +					eics |=3D ring->q_vector->eims_value;
> > > > +				else
> > > > +					trigger_irq_no_msix =3D true;
> > > > +			}
> > > > +			/* Now we trigger the split irqs for Rx and Tx
> > > > over eics */
> > > > +			if (eics)
> > > > +				wr32(E1000_EICS, eics);
> > > > +			else if (trigger_irq_no_msix)
> > > > +				wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > > Shouldn't we use a combined interrupt bit or set both RX and TX bits
> > here?
> > > 	wr32(E1000_ICS, E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
> > I think the bits for both RX and TX should only be used if there isn't
> > a combined interrupt bit that can trigger both RX and TX.
> > I am not sure what is the correct setting for this use case. What do
> > you think?
>=20
> You're correct that we need both RX and TX bits when both wakeups are
> requested.
> E1000_ICS_RXDMT0 alone only triggers RX processing. Using:
>=20
>     wr32(E1000_ICS, E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
>=20
> will trigger both RX and TX interrupt processing in legacy interrupt mode=
, which is
> what the flags parameter requires.
 Okay. I will add this change to the next version
Thanks for your vital inputs,
Vivek
>=20
> Thanks,
> Aleksandr
>=20
> > > >
> > > > -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > > > -		return -ENETDOWN;
> > > > +			return 0;
> > > > +		}
> > > > +	} else if (flags & XDP_WAKEUP_TX) {
> > > > +		if (qid >=3D adapter->num_tx_queues)
> > > > +			return -EINVAL;
> > > > +		/* Get the ring params from Tx */
> > > > +		ring =3D adapter->tx_ring[qid];
> > > > +		if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > > > +			return -ENETDOWN;
> > > > +	} else if (flags & XDP_WAKEUP_RX) {
> > > > +		if (qid >=3D adapter->num_rx_queues)
> > > > +			return -EINVAL;
> > > > +		/* Get the ring params from Rx */
> > > > +		ring =3D adapter->rx_ring[qid];
> > > > +	} else {
> > > > +		/* Invalid Flags */
> > > > +		return -EINVAL;
> > > > +	}
> > > >
> > > >  	if (!READ_ONCE(ring->xsk_pool))
> > > >  		return -EINVAL;
> > > > --
> > > > 2.34.1

