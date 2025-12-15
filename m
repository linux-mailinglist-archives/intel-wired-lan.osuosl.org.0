Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B03CBD711
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Dec 2025 12:07:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9DAC48118A;
	Mon, 15 Dec 2025 11:07:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hIIUdyo17zi8; Mon, 15 Dec 2025 11:07:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA2A38115C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765796827;
	bh=oQh2e4vxFAbh5BjPe7yz+uZlGB5VHVpYihqECpCMKMk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Bjg4RGaMln+6kIOMtS6EO1t/Ah4OAtRa0a72JEkqhoUNzkYZQ9JPyy0fCVs8UZLX0
	 kydRGIB1tjs1OflX2qpmuWS/nI55I2m4F9rbJn9LHCOpqtACuRlPvhhOn2NW+NLMnv
	 hyweuvecQcXO2jv4Mtcv9icuMKMwR4u8JaXE700QFdKETFZ6N7vh4/2S2Jyd3I/zIB
	 d3kY4ZRL64befpqsX2vienQ0ozR4uJKvj+V3fQ6k6W06IG9ipz/7iXNSw7y2FzIm7R
	 BbYgHqO3dm6btR5OAywWG+X5MUEtbhiYJ0PX2Qg/MwsmX3cIPulURvuxLhKiuugd7c
	 Dg4Rs/YK4En8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA2A38115C;
	Mon, 15 Dec 2025 11:07:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7511A272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 11:07:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5360360DED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 11:07:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PsKYRb2Kcd6z for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 11:07:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ED4D460E08
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED4D460E08
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED4D460E08
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 11:07:03 +0000 (UTC)
X-CSE-ConnectionGUID: DxpWsdv6QKqSoSvTmWZWkQ==
X-CSE-MsgGUID: mvHS2hWCQZqsu/gOFqfq/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11642"; a="67730313"
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="67730313"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 03:07:04 -0800
X-CSE-ConnectionGUID: RWxiStjaR8eRpUmNjh2nkw==
X-CSE-MsgGUID: MLd8SyfRTgyAdnXVM5zAyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="221079568"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 03:07:03 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 03:07:03 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 03:07:03 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.9) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 03:07:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wNRmohH5CZG8xMpKBk/jL22i32DNIh+ow94+cQFmKSZAhi9G2xcKRtvDRHW1tjAtQU+Ut5O04Mg4l/ymBdXn9xE+xeiL9vflXqa2xWGuRdooEdjchUqoZInwpOoL4LS8FG2vpM5RPfBTq54coM9aL/58Dzrg+gZmZJS3vz7LXUuD8D0hJV/zWcE0dZZD3715y1DwakFS++14HCnEhAiHYlrhz1VUxSlLQ7p99ZpD8+VqDt1rsbeSkWwSIFycT1HgBEO2CCqryii3Lfp7sE7BYcaBggiioowpnhkkNw6yXdFRmK2b6lbEmYe0vdQ2zsxyLvW7Hu9BvpxPta6+8h+TXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oQh2e4vxFAbh5BjPe7yz+uZlGB5VHVpYihqECpCMKMk=;
 b=jRIkz+17gXBzPN+zDuNvct1dcDgKYTLuAeClKPE9cDdN3AEA4llJFK1Vc5n2kI1+x/gMBAHb9tjuoDZEByhZMdm5LneA1O5VCLo3IlHdm2wp5MPeREdo2Fy3Xz0+cXny5AWWKn+t6nwxl2HwmAQbTl0pz30JROdS3ifvOQRfW8CviAXGJYh0yuZNXErHrKhXXbyRATkNfOIn99e55zg5jsJTowlBYu7ylrMI3xO0iB3froeYv2yieTFDCcQ7pI9fL0PSo1T3PAHkYgEt1o5meCyl5g3bnbiPOo4LLnwXnHVSq/iZUD6mwfmjz65jcWh/s5wBztwAQDi7tjgKYJ5MTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by DM6PR11MB4737.namprd11.prod.outlook.com (2603:10b6:5:2a2::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 11:06:59 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%5]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 11:06:58 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Behera, Vivek" <vivek.behera@siemens.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Behera, Vivek"
 <vivek.behera@siemens.com>
Thread-Topic: [Intel-wired-lan] [PATCH v7 iwl-net] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
Thread-Index: AQHca4Wu6YZVon8bnUOMYg8OvWMeN7UijmTw
Date: Mon, 15 Dec 2025 11:06:58 +0000
Message-ID: <PH7PR11MB59833AB58FB8C0A6CB1E319FF3ADA@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20251212163208.137164-1-vivek.behera@siemens.com>
In-Reply-To: <20251212163208.137164-1-vivek.behera@siemens.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|DM6PR11MB4737:EE_
x-ms-office365-filtering-correlation-id: bd5c9aa7-050d-4839-27c0-08de3bca1109
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|921020|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?3IZQ/AunP+K68hWVwOwfmGHSHEv01Cpku6SqU+cAN6xuNLx8HOB0X4fB+Kb1?=
 =?us-ascii?Q?EpbLw22EY1XwLdQ0hK2ixPBZGs+b2oLfRijsS9SOfI97M+WlKffSTIVA0k74?=
 =?us-ascii?Q?UeEnw4SBPbH7d/xfgthelpvX+pF07uMurU8l63IgkrPjelvs7SLv2bkgu8kh?=
 =?us-ascii?Q?B/bfSgTh2oVRgXXkaOMR9BUJSl4zBGDrEX5CVS74wHOfRxAM/2p0oioLMN89?=
 =?us-ascii?Q?wQGU2P0ndCRmVLtZwX6XUNHiUkmclImJyBPFhbpdMREVIi7jD+H4xU4n4hV3?=
 =?us-ascii?Q?W4rCNZUDhzYa+zgTY4yNLxvdlbfiFIMe7m3LIMWtBWvgczWXSuZc/3lQylaA?=
 =?us-ascii?Q?StXNHx0cHPeBpedU5+QB8bIBJv+O48H3fBAhu+z4vsjUb1VHdK73OliOkPss?=
 =?us-ascii?Q?GvC0k/VVIM2UBsznD/5yJXaGhsEfislwP+flRU3fMBU0ifb4e87vkNJdObQc?=
 =?us-ascii?Q?Usw/lIZi+0K6NyHlud/9OWID0/hr6sooAEe2a0eZq+8h6/2RJDGU+7Q+Af+m?=
 =?us-ascii?Q?bGn5yrmmdTKdLzxvg4xB5bPBlItmxaTeN36dCpRcfwm61nW7PI7ZblPc8nKA?=
 =?us-ascii?Q?WljpHjdnyg8B1G1BqiFDeAa+t4wkATfIkfNGwsJNrgtxs9Eq7eNHI4XNlqMe?=
 =?us-ascii?Q?YgJFT+cRu/iXkrlBpRaGaHiy+kWYj9JzRfSVVsFCvrnSmAdDv+b3w24fK55F?=
 =?us-ascii?Q?wgoxgm4vwPCl6rLg4yrh0aHgEo06I6TlfOnbVLO3R/Yti+yI3N7YyCPFBsop?=
 =?us-ascii?Q?PYAAbky3IZcwkoU9vrYhr3IKCLIhLw5AVem+srujCuOoR0MFXdcOSLZBmOVd?=
 =?us-ascii?Q?FdnAsQRz6ffDBsR1ECPNueVVoa28B005jcOIzDYy6M/2kr8wcwmeOqmlVsPp?=
 =?us-ascii?Q?2NRx8XMCXlC9M4A5yzGFpT2U4d5xR9ykxsaZQ483g3UjUKJU8/evEduHNsw2?=
 =?us-ascii?Q?kVYPxhmvXZvdt4T+jGG5QDXdDXMVey5hxGpcMRtbiU90DpAtoJeO8Sqxez4o?=
 =?us-ascii?Q?iCId7xBnYQaIdYvE4bOrtk7CV2RD39pibTi4MjTfxHPerVdzJiWivJpSFCZJ?=
 =?us-ascii?Q?K5mENZ8+3Ww7hRoE17xPjuD4DD4iLfnB7RTsmsWDSUWcTliSFsCJ3fYXb77h?=
 =?us-ascii?Q?r/KIc8mbP4XzCJEJOcyBFYdNei1EHMa4n2BrW84W0sSP243szMHU+eRZZ+Ii?=
 =?us-ascii?Q?sN/ceZjMXpjfeAxoNpKm6JnjiDQ4BHhmde4TYhRM05xeIep41NH23rnqPjwB?=
 =?us-ascii?Q?1TAP/QnRLL9ctUa7KcCwo7YiA9zkZTgOF9X7RZdwEsYE/d7JOApCrWybnDQ+?=
 =?us-ascii?Q?clw5scYQq430D5PAfz/n/Qj8GKKOmmuSAN1yEx7S551OnKhUKGlSKsO/Ihhm?=
 =?us-ascii?Q?VzdSFwpEess7Dze0cF1zV2VXn8wfCPfZTZUK2LlDTrnSt1H8ksPXnW424wgU?=
 =?us-ascii?Q?5/kgA6v8c26JYg5ifTJZ+3leJ/HhBoJX+j7Kjy3DcZeJi5Il9xPh68ShpNBZ?=
 =?us-ascii?Q?nIwdTXUmuyR62MpPPHkuwstebFsjhZXQiPjqmrij4brhHA0fbty+xb4y02m7?=
 =?us-ascii?Q?NyzTJvMuoeKY/9v9qC8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(921020)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?870WWbMNyfj8chkpXhkt3+y1tvZagpQcx2pXcK5NBVxJQjN0Vm83LJcfBhYt?=
 =?us-ascii?Q?hMlMDTdM86JByIFOn81XUFKvWyFeTPmhtgVSNCQy3iC/K44N8kAflkdyJ58K?=
 =?us-ascii?Q?WXF63R3pMuLTa87k3sJFd547FDOpXoxCyZ/FhXR6md7Bx10CQrwuY1XxzMZP?=
 =?us-ascii?Q?/8y4G+Yvm/1BzxKGsLr9PPPBr2sNKnksb7tFFLIlifH3JVOxaeOdLtbyt1RC?=
 =?us-ascii?Q?LH9R4vzS0zfE8XKdCoP+2rtYeevZpu7oa/L9FJWmNNT12PukkSm2aoCAOK1O?=
 =?us-ascii?Q?A/+5/iiyU9/zQ5rgcnlOLVCNzN/KMXzwoDFUlI8kGkuucCTXYOaR8cJiqx9t?=
 =?us-ascii?Q?thE9uoy09IhSVlOF2nL1VXlxZgDI7RzpocJqoRms0cwqd89IfuJ3VuG8Zyq8?=
 =?us-ascii?Q?EeqsLJ9djZf1BHzmTHPtKc+gSvQHfWDlGpxUmdl1CuzfU0D9qK9NU239ziDv?=
 =?us-ascii?Q?dzd3+7emo7bSBQjDy1P6uwgeWhKSzNDUWYaHANA30HZeEvVu4k2VNGmYBxmW?=
 =?us-ascii?Q?arCMVFxA1XBWsRpmOcwJNukSbrEl1/pqnUZ6tvSwEbu00NPDfbuOPkaPZ66Y?=
 =?us-ascii?Q?syYWnJP4N5Up9/e9qxI1azTO3L6DQUp6AfnMWOoxULbSKqb0b+lnbjGYMuzS?=
 =?us-ascii?Q?dOwBq+5U+qSMXLRGOiQsIxepoYY5CBu2XY+HGFzG5LptPlXge9GEmgGTRvzK?=
 =?us-ascii?Q?CNb323OotpoODvyVQVCUnILlI+Gw2wwISPkQpkJ4xfG5BuH0v3JtayjQaEzD?=
 =?us-ascii?Q?9CJdCHFDJXECrPua58X2VCAsXJasKdsEXrFqADaXWrqov+06lc7umvIVQGjX?=
 =?us-ascii?Q?XwKyRcsoA7S4l86ql9Y3PWRiY5UvTVc3gPCoOcLErTr1j+AH/koMj8+twwv5?=
 =?us-ascii?Q?wxZzYb3/Hp6PE0zFOrqOZS5cX8yjzu/FDfr56JE3gNfUO779ePWypkoT6OBM?=
 =?us-ascii?Q?iGpGf7HFh9LgE0JGxwkC8fCM6cP77vJAlr1v+GB/zLaR8rUYuGYFwubp9QVn?=
 =?us-ascii?Q?HwRceQHvxF3o9uymuDT7e2669uYdCuTtCvkAq8868HUcUSKr+cH0Ezu6pGit?=
 =?us-ascii?Q?8CpZwhh83PYFfbqABkk6vYZ9U11wLA4OFfA6nTng8uv6Uqi4e73V2BcyaXsy?=
 =?us-ascii?Q?yg3r8ARTjmbAcoceJpNi/j0foanXli21HWI/0l1wPpBZfF4lpuKli/YVTMG7?=
 =?us-ascii?Q?oQaxI9RS+738EbCSN5RuaLqHBEwUawTPUo93Fue59VyvXdLxAPRuXOFPxAzv?=
 =?us-ascii?Q?6g4xK136tzOD0mRCZfXXOs+ajIq5T6379WBXnT+DLHWtseQas+BXPw/nloOD?=
 =?us-ascii?Q?oVcFDDXegxG/SLZN3Mfo5mqiH6uGYgHUqFpmv9QL2ZBYt+TtscWpBlC62faa?=
 =?us-ascii?Q?40iHFs1KwkvHlhAdL8bfcROdFb44bcFeo71udvf9b/3q76TCp8u+5t1Nc0XF?=
 =?us-ascii?Q?TubseTqzI/z+FpBsHU5cS9vbxwnZX6cwqZ1LCywe3MWw3Z7foP6KN/S1xvWg?=
 =?us-ascii?Q?TFwIJumdjGwaIqlbanXQBSJ5VdHcEw+6YqYUAOiGqHe5Qkp5BMOPUnPanU6B?=
 =?us-ascii?Q?YKiX5GbMWkQc9qfWDyovyxAYZQfLrC09vnUhWX9E?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd5c9aa7-050d-4839-27c0-08de3bca1109
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2025 11:06:58.7981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y+XoiDAHlPys+dHpUkg5Aj9IGU/0/qPgSaOqUvyreyi2sgr6obaW9Vqn9HBb7B+n1wrKoBdPLrYU8W553OiYsZ+jMtKDlzErEL1RDCOCaQ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4737
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765796824; x=1797332824;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wgS9LQl1YYK1OEPnxrmRxLTNihyg4hBfuZbytw5nfpg=;
 b=JicsHYI4/SZ0rXKZFnhcJemI9czm/qpx0ofscYcmzc0bTDp8Ii+MxB2u
 MWAhgHs7QRqGe1K920ke82FPIMLPFier2wVDA7C6RstoD5LrQ3b1hfTPh
 qsRzCUNLaygT6LPkeZgA7SUVasLGl19YFeMgnOONQTkuW51jlj4YRVSbT
 UENodqogLzpDaqwW3VUXi3DOG8UMR+0BYghEAa8L+SxzNzSZC9jQmGxev
 XTFcooGle5x5eEmoCrDBfAN4LDGjYGGV7yv8whZNk60QWzppXczHYOOP5
 wA6QZ4UF69kE0ac70Pd5p2hdPi5rMjPgJ+qvzKjCelNAGJyIG0tq4gqT1
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JicsHYI4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-net] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Vi=
vek Behera
>Sent: Friday, December 12, 2025 5:32 PM
>To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller, Jacob E =
<jacob.e.keller@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;=
 Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
>Cc: intel-wired-lan@lists.osuosl.org; horms@kernel.org; Behera, Vivek <viv=
ek.behera@siemens.com>
>Subject: [Intel-wired-lan] [PATCH v7 iwl-net] igc: Fix trigger of incorrec=
t irq in igc_xsk_wakeup function
>
>This patch addresses the issue where the igc_xsk_wakeup function was trigg=
ering an incorrect IRQ for tx-0 when the i226 is configured with only 2 com=
bined queues or in an environment with 2 active CPU cores.
>This prevented XDP Zero-copy send functionality in such split IRQ configur=
ations.
>
>The fix implements the correct logic for extracting q_vectors saved during=
 rx and tx ring allocation and utilizes flags provided by the ndo_xsk_wakeu=
p API to trigger the appropriate IRQ.
>
>Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
>Fixes: 15fd021bc427 ("igc: Add Tx hardware timestamp request for AF_XDP ze=
ro-copy packet")
>Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
>Reviewed-by: Jacob Keller <jacob.keller@intel.com>
>Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>
>Reviewed-by: Przemyslaw Kitszel <przemyslaw.kitszel@intel.com>
>Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
>---
>v1: https://lore.kernel.org/intel-wired-lan/AS1PR10MB5392B7268416DB8A1624F=
DB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/
>v2: https://lore.kernel.org/intel-wired-lan/AS1PR10MB539280B1427DA0ABE9D65=
E628FA5A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/
>v3: https://lore.kernel.org/intel-wired-lan/IA3PR11MB8986E4ACB7F264CF2DD1D=
750E5A0A@IA3PR11MB8986.namprd11.prod.outlook.com/
>v4: https://lore.kernel.org/intel-wired-lan/AS1PR10MB53926CB955FBD4F9F4A01=
8818FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/
>v5: https://lore.kernel.org/intel-wired-lan/AS1PR10MB5392FCA415A38B9DD7BB5=
F218FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/
>v6: https://lore.kernel.org/intel-wired-lan/20251211173916.23951-1-vivek.b=
ehera@siemens.com/
>
>changelog:
>v1
>- Inital description of the Bug and steps to reproduce with RTC Testbench
>- Test results after applying the patch
>v1 -> v2
>- Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configura=
tion
>- Removal of igc_trigger_rxtxq_interrupt (now redundant)
>- Added flag to igc_xsk_wakeup function call in igc_ptp_free_tx_buffer
>v2 -> v3
>- Added 'Fixes:' tags for the relevant commits.
>- Added reviewer
>v3 -> v4
>- Added reviewer
>v4 -> v5
>- Updated comment style from multi-star to standard linux convention
>v5 -> v6
>- Resolve formatting issues highlighted by reviewers
>- Try to include version histroy as defined in netdev guidelines
>- Included review suggestions from Przemyslaw
>- Added reviewers
>v6 -> v7
>- Included review suggestions from Przemyslaw missed in v6
>---
> drivers/net/ethernet/intel/igc/igc_main.c | 78 ++++++++++++++++++-----  d=
rivers/net/ethernet/intel/igc/igc_ptp.c  |  2 +-
> 2 files changed, 62 insertions(+), 18 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ether=
net/intel/igc/igc_main.c
>index 7aafa60ba0c8..620b9f9bd3aa 100644
>--- a/drivers/net/ethernet/intel/igc/igc_main.c
>+++ b/drivers/net/ethernet/intel/igc/igc_main.c
>@@ -6908,21 +6908,13 @@ static int igc_xdp_xmit(struct net_device *dev, in=
t num_frames,
> 	return nxmit;
> }
>=20
>-static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
>-					struct igc_q_vector *q_vector)
>-{
>-	struct igc_hw *hw =3D &adapter->hw;
>-	u32 eics =3D 0;
>-
>-	eics |=3D q_vector->eims_value;
>-	wr32(IGC_EICS, eics);
>-}
>-
> int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)  {
> 	struct igc_adapter *adapter =3D netdev_priv(dev);
>+	struct igc_hw *hw =3D &adapter->hw;
> 	struct igc_q_vector *q_vector;
> 	struct igc_ring *ring;
>+	u32 eics =3D 0;
>=20
> 	if (test_bit(__IGC_DOWN, &adapter->state))
> 		return -ENETDOWN;
>@@ -6930,18 +6922,70 @@ int igc_xsk_wakeup(struct net_device *dev, u32 que=
ue_id, u32 flags)
> 	if (!igc_xdp_is_enabled(adapter))
> 		return -ENXIO;
>=20
>-	if (queue_id >=3D adapter->num_rx_queues)
>-		return -EINVAL;
>+	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
>+		/* If both TX and RX need to be woken up */
>+		/* check if queue pairs are active. */
>+		if ((adapter->flags & IGC_FLAG_QUEUE_PAIRS)) {
>+			/* Just get the ring params from Rx */
>+			if (queue_id >=3D adapter->num_rx_queues)
>+				return -EINVAL;
>+			ring =3D adapter->rx_ring[queue_id];
>+		} else {
>+			/* Two irqs for Rx AND Tx need to be triggered */
>+			if (queue_id >=3D adapter->num_rx_queues)
>+				return -EINVAL;
>+
>+			if (queue_id >=3D adapter->num_tx_queues)
>+				return -EINVAL;
>+
>+			/* IRQ trigger preparation for Rx */
>+			ring =3D adapter->rx_ring[queue_id];
>+			if (!ring->xsk_pool)
>+				return -ENXIO;
>=20
>-	ring =3D adapter->rx_ring[queue_id];
>+			q_vector =3D ring->q_vector;
>+			if (!napi_if_scheduled_mark_missed(&q_vector->napi))
>+				eics |=3D q_vector->eims_value;
>+			/* IRQ trigger preparation for Tx */
>+			ring =3D adapter->tx_ring[queue_id];
>+
>+			if (!ring->xsk_pool)
>+				return -ENXIO;
>+
>+			/* Retrieve the q_vector saved in the ring */
Thank you for addressing the previous comments. I believe this one was acci=
dentally missed. Please remove as redundant.
Piotr

>+			q_vector =3D ring->q_vector;
>+			if (!napi_if_scheduled_mark_missed(&q_vector->napi))
>+				eics |=3D q_vector->eims_value; /* Extend the BIT mask for eics */
>=20
>+			/* Now we trigger the split irqs for Rx and Tx over eics */
>+			if (eics)
>+				wr32(IGC_EICS, eics);
>+
>+			return 0;
>+		}
>+	} else if (flags & XDP_WAKEUP_TX) {
>+		if (queue_id >=3D adapter->num_tx_queues)
>+			return -EINVAL;
>+		/* Get the ring params from Tx */
>+		ring =3D adapter->tx_ring[queue_id];
>+	} else if (flags & XDP_WAKEUP_RX) {
>+		if (queue_id >=3D adapter->num_rx_queues)
>+			return -EINVAL;
>+		/* Get the ring params from Rx */
>+		ring =3D adapter->rx_ring[queue_id];
>+	} else {
>+		/* Invalid Flags */
>+		return -EINVAL;
>+	}
>+	/* Prepare to trigger single irq */
> 	if (!ring->xsk_pool)
> 		return -ENXIO;
>=20
>-	q_vector =3D adapter->q_vector[queue_id];
>-	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
>-		igc_trigger_rxtxq_interrupt(adapter, q_vector);
>-
>+	q_vector =3D ring->q_vector;
>+	if (!napi_if_scheduled_mark_missed(&q_vector->napi)) {
>+		eics |=3D q_vector->eims_value;
>+		wr32(IGC_EICS, eics);
>+	}
> 	return 0;
> }
>=20
>diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethern=
et/intel/igc/igc_ptp.c
>index b7b46d863bee..6d8c2d639cd7 100644
>--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
>+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
>@@ -550,7 +550,7 @@ static void igc_ptp_free_tx_buffer(struct igc_adapter =
*adapter,
> 		tstamp->buffer_type =3D 0;
>=20
> 		/* Trigger txrx interrupt for transmit completion */
>-		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, 0);
>+		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index,=20
>+XDP_WAKEUP_TX);
>=20
> 		return;
> 	}
>--
>2.34.1
