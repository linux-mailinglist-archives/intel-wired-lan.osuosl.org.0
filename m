Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B32AD84C3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 09:48:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5D1E60A73;
	Fri, 13 Jun 2025 07:48:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WnGakqmzAeXp; Fri, 13 Jun 2025 07:48:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B01360A77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749800901;
	bh=I9BF5grS3cWdqR25jG1HuHpKOpnF8qi2MhCCQ7f7m1E=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QuVMi07+H5lT0ESXojVP1I5B0VxOlYozGuBv85yWKfzLsnMriZnEvhYzqYeglQ27y
	 tLyd/6GB3rV6lHqprrFXgy6bgOd3tAKXkYxImzCC0FsuT49Uvqp0aNr8k0trFbbF+6
	 umPN/vLzRSEQSLWLBjGyaGDhBJC20a5qYYPlRk6CDNcojrbP8K0etHqrPi3dI2oljM
	 h0b3muWe0mk/hl6MBAyjuEgPxjNlvgokodpP8I4XRIBuW3ZyG01QLtp9rcmtc6swsd
	 V2O8DVV0MMQJLYm4PMfStxkQ0krrWQVDu2CM7YC1mQaHFafs1r35bGb0z1yzV8aOHZ
	 Xp++jWCxJ5T5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B01360A77;
	Fri, 13 Jun 2025 07:48:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2079D1BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:48:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1202C60A72
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:48:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NE4ChibeV82B for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 07:48:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C5A51608D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5A51608D1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C5A51608D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:48:17 +0000 (UTC)
X-CSE-ConnectionGUID: vEDTCF+gQA+oZuKfdJSGyQ==
X-CSE-MsgGUID: 7/+A6v6/RZadbsEVc9h12g==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="51122930"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="51122930"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 00:48:12 -0700
X-CSE-ConnectionGUID: pP/x22uURRuwarZvLU2A8Q==
X-CSE-MsgGUID: 4McwWyAZR82zDLZFeKv+aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="148313828"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 00:48:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 00:48:11 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 13 Jun 2025 00:48:11 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.54) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 00:48:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZZJXmMJTQtF8MWxVIQH5O1w3tSYk1Zab0xM/16hNqSE3PSTf6HPTl9JSaOxIIakLDE9g1FiHKMu2XUUao4QmKHHdiIGFu6udoSyP2PEZxK0Fqsg7GeU+jcSTODcPMjPjuRC4GIx/hOXtG56geclTWughyvbMUCzVrgO7h10D6PiR6FjUgEdB4Fwbktk/CfDtebx5NWcUTfdP1KwNKFmt4ykoa/IUDELsojXNQdpJSnkmT4YOrXDei3ZoubHW+s780yaCYdrYEAHnSJtxd3L2xuktKTD2dMdZknKkdfPOO5XUSH1SSI3Dqg8S+4pultkiGbK3dvR0H0OPlC2fztdo0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I9BF5grS3cWdqR25jG1HuHpKOpnF8qi2MhCCQ7f7m1E=;
 b=iG/4vhlGgTRdqJxrYGg7/J75wVprjXdx258dH/QfGV6QTkSM2AXNfazn4/gTfYjSyGu2WCc6TIMClp+U6oeTP3+vaZdNPhU1aF2Wcn3iiyeBrpYfLl4ErykxuDTWSaUz6EG4XhLYp/RkNeGHXt9NjxMc/3+6orPfvoFhra2D23mM1nrNmb7RQSAQ5D8gTtztKK5WU6lGstvjraK6PFTdfvZXAI9x9HhWTdiB3U50gr/8GaqU+lcw2KJM7I3PLBnvapocU53MppD5w4oO73stn15tyPp62BMX8MjhTbXi1oKFW1JFKj59UI4HnGUfbbUL9+WwB9CT2BAhiveHiUV8Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF691668CDD.namprd11.prod.outlook.com (2603:10b6:f:fc02::2a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.19; Fri, 13 Jun
 2025 07:48:08 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%7]) with mapi id 15.20.8769.022; Fri, 13 Jun 2025
 07:48:08 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, "davem@davemloft.net"
 <davem@davemloft.net>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "edumazet@google.com"
 <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "horms@kernel.org"
 <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/7] eth: igc: migrate to new
 RXFH callbacks
Thread-Index: AQHb2/7A8frXL0/U1kqZJuYE4usiYbQAtvLA
Date: Fri, 13 Jun 2025 07:48:08 +0000
Message-ID: <IA3PR11MB89869DB5584A508D4F856382E577A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250613010111.3548291-1-kuba@kernel.org>
 <20250613010111.3548291-3-kuba@kernel.org>
In-Reply-To: <20250613010111.3548291-3-kuba@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF691668CDD:EE_
x-ms-office365-filtering-correlation-id: 295f5031-2ba0-41c1-a8f0-08ddaa4ea395
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?X8KWGI2Hck2GXb8tFpFX5LezSOIEG7/onrx+BmucrQi6Uzn1FFs1U5ru1Xso?=
 =?us-ascii?Q?czutS1R+rs7PKEDpeAMP7obFP7ZebCYGj5EddpjErTpHzDAluEgfZClGNET2?=
 =?us-ascii?Q?+hq694VcCA1IiqojrZZO8DzW5BU18mpKlU0LDgZ6PY9hT/JXzFU7pFVm4oza?=
 =?us-ascii?Q?+YkSQjTmMR3f5715RGriFUVYHj1fFimToWCLAM/2CMwwouhv1VAMrX8t366I?=
 =?us-ascii?Q?epR+9vDH4ROMbX+WAb0ZKLks6n8h/SzpP7xmtyPoOI6zMYp/tMpfHkFvmpDJ?=
 =?us-ascii?Q?B5JEPWeU7rrOp8wJyVMS6EDChIqPGR+eOD7mOmVzG2cUe2xC0VfNZYjeBlCU?=
 =?us-ascii?Q?lIJffxg1pOCAS/+ZolZJVaTSh103JTdsY67ZTrVWV7ElazxxDyh5S+uDZ0Uc?=
 =?us-ascii?Q?b4G1ib2v9vaEGABUXm7d2ZGckjDXyq33r+RJXqZrHBRWVvXS7Wrq/AxfEn2p?=
 =?us-ascii?Q?kiaAHYEh6YfqwmXLGF1IRmNMxs7wge8Rgmz3Iya+lpa7Zyps1Up4Ow8YA91G?=
 =?us-ascii?Q?F7WO6v9Jq04m4DdoM3zkRNhdwMmtKSCRUUq0XMVYBEEsPAGfshMabFqMnhrY?=
 =?us-ascii?Q?wBmsYvwzPxPfrwQR/QQvXokoS1SwqsyXialooT+sGYBfz10vvnKfCuv79nv1?=
 =?us-ascii?Q?G2XOFiuBo5EcG3EFGoE2EMNMRKzLuuZskYfNNNTJ6+k7WfQ23/0+Dtz9D8aq?=
 =?us-ascii?Q?A00fQ44ZB/VCfrzQgCULV639vXFNCKg5P2ZZnNaXl9Vr/t4YkZ7LiNBZ7/44?=
 =?us-ascii?Q?uyb05mw/IsnyFClyupd/bvetirRhVA3k3qL8NbF5LXvkk091IJezWpw/EKH9?=
 =?us-ascii?Q?gng2KJPyVreZra/45awIwKlyrjGfOXxXCfrYWAyqfqPyH92Q3EocttW6Ko4w?=
 =?us-ascii?Q?i/80SIja6kffd6t1dzOVcVIHiGdtggzcMUcAIar226f3D9aZKlNwCvu9PTMD?=
 =?us-ascii?Q?6GwEoxbfRvJ9pHK2AUiP8SmuKdGjraUIN/IOWuXqJr3sq/roYGeGBtQN1fmn?=
 =?us-ascii?Q?AL3fe0TBzdYzWo5c5SyNWn8J5CNkdvJmr35xENhKzKvqFKZAMLGjYovHCtvN?=
 =?us-ascii?Q?7sU7MQj/hYAr5ARA5tE7N5s53U2RhS3/MxVWwebZNz8ikFmvCYTqYfkv1B4y?=
 =?us-ascii?Q?qh1XOjrsry2fzI1V/j4ljtgsnnXwHCioAZZlmuO7UgXW8SCPrPEOKvpo45Qz?=
 =?us-ascii?Q?uZQpWKSZyfEs64TV82ANRgM5l31cOlnt0Z4PCLXTAR8N19is4O9sxU1L1FcF?=
 =?us-ascii?Q?VXkctuGQ27A08hj5D2ZTVlZdY5tdCDDHL+yWO35mTVEVMFoXJdPwCLEmpsSP?=
 =?us-ascii?Q?BUKM9sZBaGnMtQu8QRK5jKTV3KtFP+IVoku14wL+KAr40g3LnSpFm45LpHqE?=
 =?us-ascii?Q?U56e2Fm2V6pm3DfnLSp+nYGR5LAdVj/KghUEvYn9C0OYFYSIN4Xe01Z0oF3u?=
 =?us-ascii?Q?jhPL3Rr6IajiAG4t56MFimU60zNRgfGip1r9FwgqeUSJ2GJrUWLNIw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p9vTN04vW1lex5danNcU6oZdWZjhU1bqRFSwSSDGY5g7fm3gw9IngQEzqaKR?=
 =?us-ascii?Q?iCp9Tq+N3zsOaA9kL4B5uTPvaaKzCbLMacfRW/iYyTdvXLwiYEtCh11fNgcj?=
 =?us-ascii?Q?nEmwMRASR8YBg/UVByFPOQl4sKkPgFW037B1/K2zSt4ZOLhH14jTg7xY/SsL?=
 =?us-ascii?Q?vhOhLnoUPrlaPszkZuLDVSAsYvbWvMu7VknU7XWjGqvYzVIh8LvWuNOD2Ozi?=
 =?us-ascii?Q?D5aomMSYZ61Ev3AnuOZgolD97sTTPLX6vKDZfFRxAJ5QBKY0MxNNoWPTjd7N?=
 =?us-ascii?Q?ayLSgvg8EeLKdps3175jD3y1HI/GDJLfYSMnIhu0p96rz2V+hlnWZ5Yokgmn?=
 =?us-ascii?Q?qkHqBn6Vueh7g8deL3iG4oxvYoqH8LwIpvGL5ez/c6LjCX/gnv63oE2hTNlB?=
 =?us-ascii?Q?QSMKe7rzK+EkRzH9Mw23RzcGGoOlFeLpd0/GpC+SXxj0gaIuQ6BDOBxkTM+h?=
 =?us-ascii?Q?S2ZLxIdBgnCBYUgwhSn1MUjrv5+RlVG5LV/Lb99wncLdvA4MFB70Bux9/fvl?=
 =?us-ascii?Q?KkSqH5oydU6hmVsXI//pkiTr+jeNOxGreR43HuYzcxHlTBDDEwW0QnqE1kKT?=
 =?us-ascii?Q?a54QsxotlRBbmuER+lFqacvR17XEoKEhodrRZjltGTcwo5QSDx38jgpoWgt5?=
 =?us-ascii?Q?XMNJ4gS59DvG7NzGJxNEEmraphIlAOeSmtDUHa6usbbSw11FUI4+Cr5yjHfT?=
 =?us-ascii?Q?vcc83tkWMi9Srcg+GszJstp6nce4MfeiuLexuH2GLeq6b7H1v9BJgNS9D3OU?=
 =?us-ascii?Q?rhxdKtyhjQSoTM04VsVUAHFIeH58NrEfxN7y5JPIVYPV6OYzFGcxJWJ07swX?=
 =?us-ascii?Q?Ov8VhBGRAsOjpLcfPxaewLyfHOJQ3b56x6CZ0K7cZL47Za0iN16Mao3xOQ4K?=
 =?us-ascii?Q?ZsJEinMTRD1v1lNX1v1nTFEpiKpaddh4j6FM3lB6H3kQlx3NtHiwG6tb9aNB?=
 =?us-ascii?Q?svRlz5cJFFnuzuvPHh8fs4Mbd02VSy/ii5nyi5vFjV+zYUbNhMxC8BUVoa/d?=
 =?us-ascii?Q?iZoUBEVqnhNCGJqY2Bc3eDl/Yb46VdGUpSpdITFp48CerGsTyPfQKhpcdWtW?=
 =?us-ascii?Q?1OtbPULd5KOG5Z/xo2lk2hAZN08oaqaUuPbbMf50hgjMx2C+rf1DWdwauiPG?=
 =?us-ascii?Q?igjOFSwT48Sgt7bkqW0nc/r8qEUz9C3IYUs1Sxf9O5P6j7s/D1ciizlFpTTD?=
 =?us-ascii?Q?gljKiT/TlakvN5zOaDzwlncRzt9VKys3smKIDVzeyImQfj3oGX82QW+pwn0T?=
 =?us-ascii?Q?3n2JcvZ/ivOjTWxlR4JR26ifGyZ4ls44Z7RSTWL9k84ixsXwYaDuMiETVI5d?=
 =?us-ascii?Q?BLqcsF+xMC7gwmk4kyLHSl2/XRv6q0WRHwvP9cDb4pZMk4my0r/TYJonvxjr?=
 =?us-ascii?Q?XNDsI7h5ZXCfyPZ9Rp/iXRCIZpJT6cGK3Qr4zKA0sCm3JwEVRl58pahsfyxh?=
 =?us-ascii?Q?sKrWVxpl+ZCxVOv0UARvC7oYN9UJEnjmtdgwnKgGB3RW4BetOVa8twsSLC8d?=
 =?us-ascii?Q?0vdUnz60WchoI3jIVx5e4KAEXYVxkfKexvo6aTaV96RkvOSeh3mO817O+HzJ?=
 =?us-ascii?Q?Z585V0j3DyvkvisZK/7lXOAIA+jwFOzgyz2ZNhwfSzuEbOIQNfXmZJqGLiNr?=
 =?us-ascii?Q?LA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 295f5031-2ba0-41c1-a8f0-08ddaa4ea395
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2025 07:48:08.4889 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SJ2LgY5nMTwsNklk4kLQ38BK9FGmnKEFmLdwdfyhaK0+9VB/Q0RnCrhq01RfM9AlxiYcjmr+8HMMZzaDjCtigUw+60GhFV0JsdTvJSsqtVE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF691668CDD
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749800898; x=1781336898;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4WMmY7tEQ42IUmQ00SL1sqlhSXBrr9YNmMbkRB1ol7s=;
 b=dqPYVx67/OhJ7R4Dj1NaCl0hXCeQM5pnxWwgB8BhyITnH+CtCCM7xO3D
 wwY0ZVbB8BxwMNFjvsweZPU3nH+K1QAAJS1PKVAkNfhT57zCyoHalvW+r
 WMRC9xlmAzmjn7E6m7u+KLH3DYHFYIfcmOkhum0KGs2Porw7/8fRgHFo6
 9Nv7bP+svVfSoCxT9+iVYc8ZdOIWkLAYmfrC+I41WUElBw0TwV0JFllGL
 uhfL/YNjKQjhJjtBbLkhDWRHYksV7qRFpLD+EsR3kDTbV7B2z+j+lzHCV
 oHW8gx8CPHJz+16MKgbtOl1WjtcgPyPzhfAUgrD9729lOpX3FDhk4xjE7
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dqPYVx67
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/7] eth: igc: migrate to new
 RXFH callbacks
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Jakub Kicinski
> Sent: Friday, June 13, 2025 3:01 AM
> To: davem@davemloft.net
> Cc: netdev@vger.kernel.org; edumazet@google.com; pabeni@redhat.com;
> andrew+netdev@lunn.ch; horms@kernel.org; intel-wired-
> lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; michal.swiatkowski@linux.intel.com; Jakub
> Kicinski <kuba@kernel.org>
> Subject: [Intel-wired-lan] [PATCH net-next 2/7] eth: igc: migrate to
> new RXFH callbacks
>=20
> Migrate to new callbacks added by commit 9bb00786fc61 ("net: ethtool:
> add dedicated callbacks for getting and setting rxfh fields").
>=20
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 3fc1eded9605..e6cac8d4b862 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1045,9 +1045,11 @@ static int igc_ethtool_get_nfc_rules(struct
> igc_adapter *adapter,
>  	return 0;
>  }
>=20
> -static int igc_ethtool_get_rss_hash_opts(struct igc_adapter *adapter,
> -					 struct ethtool_rxnfc *cmd)
> +static int igc_ethtool_get_rxfh_fields(struct net_device *dev,
> +				       struct ethtool_rxfh_fields *cmd)
>  {
> +	struct igc_adapter *adapter =3D netdev_priv(dev);
> +
>  	cmd->data =3D 0;
>=20
>  	/* Report default options for RSS on igc */ @@ -1103,8 +1105,6
> @@ static int igc_ethtool_get_rxnfc(struct net_device *dev,
>  		return igc_ethtool_get_nfc_rule(adapter, cmd);
>  	case ETHTOOL_GRXCLSRLALL:
>  		return igc_ethtool_get_nfc_rules(adapter, cmd,
> rule_locs);
> -	case ETHTOOL_GRXFH:
> -		return igc_ethtool_get_rss_hash_opts(adapter, cmd);
>  	default:
>  		return -EOPNOTSUPP;
>  	}
> @@ -1112,9 +1112,11 @@ static int igc_ethtool_get_rxnfc(struct
> net_device *dev,
>=20
>  #define UDP_RSS_FLAGS (IGC_FLAG_RSS_FIELD_IPV4_UDP | \
>  		       IGC_FLAG_RSS_FIELD_IPV6_UDP)
> -static int igc_ethtool_set_rss_hash_opt(struct igc_adapter *adapter,
> -					struct ethtool_rxnfc *nfc)
> +static int igc_ethtool_set_rxfh_fields(struct net_device *dev,
> +				       const struct ethtool_rxfh_fields
> *nfc,
> +				       struct netlink_ext_ack *extack)
>  {
> +	struct igc_adapter *adapter =3D netdev_priv(dev);
>  	u32 flags =3D adapter->flags;
>=20
>  	/* RSS does not support anything other than hashing @@ -1425,8
> +1427,6 @@ static int igc_ethtool_set_rxnfc(struct net_device *dev,
>  	struct igc_adapter *adapter =3D netdev_priv(dev);
>=20
>  	switch (cmd->cmd) {
> -	case ETHTOOL_SRXFH:
> -		return igc_ethtool_set_rss_hash_opt(adapter, cmd);
>  	case ETHTOOL_SRXCLSRLINS:
>  		return igc_ethtool_add_nfc_rule(adapter, cmd);
>  	case ETHTOOL_SRXCLSRLDEL:
> @@ -2144,6 +2144,8 @@ static const struct ethtool_ops igc_ethtool_ops
> =3D {
>  	.get_rxfh_indir_size	=3D igc_ethtool_get_rxfh_indir_size,
>  	.get_rxfh		=3D igc_ethtool_get_rxfh,
>  	.set_rxfh		=3D igc_ethtool_set_rxfh,
> +	.get_rxfh_fields	=3D igc_ethtool_get_rxfh_fields,
> +	.set_rxfh_fields	=3D igc_ethtool_set_rxfh_fields,
>  	.get_ts_info		=3D igc_ethtool_get_ts_info,
>  	.get_channels		=3D igc_ethtool_get_channels,
>  	.set_channels		=3D igc_ethtool_set_channels,
> --
> 2.49.0

