Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C19BB5704C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 08:31:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C1046F83F;
	Mon, 15 Sep 2025 06:31:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wvoozaorDuIJ; Mon, 15 Sep 2025 06:30:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B49AA6F88F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757917859;
	bh=h6HeBPMYWgYvQ1BY0lkkGANPm3o05nv1i0V1fJzjraE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tpSBBQz9prZhddHYCpRHi+tpB3kYBcH3BFEE0DHuRidCGx35xnNfAiq05QuwCw9pp
	 RN0LbF8+SaM9v4WrhwOx6AZUJSj/w/BwVxmfcASxb2X9I0ISftSZcU2ErNzPcxLmbr
	 dUW+e5CdKQv3H3rqhOKUW8ZGf/mR8JWZjjGpK2mQTNIacRYoav00zaP9FA6POSpjm7
	 J+v+TPxOwIiolzyrqFkfaaoaHqOIDmiKYCdOo3NhE2NGGzlKsviRztFsRiN4+RVA/z
	 VS11oC6ZAAf44L/IeoqmR6ZPKHfrY/fyHy8YCrLeECzDHnW8/HG50XbtjkKHyIM3tO
	 no1kOnpYhgt+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B49AA6F88F;
	Mon, 15 Sep 2025 06:30:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 042E812D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:30:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9EB684BB0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:30:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sxwbcPyt-0c9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 06:30:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3C89D84BAD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C89D84BAD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C89D84BAD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:30:56 +0000 (UTC)
X-CSE-ConnectionGUID: Wybf9IQUTt6LXb098f1yPQ==
X-CSE-MsgGUID: 56V/U7w1T4iwKhkdth9e2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11553"; a="59388193"
X-IronPort-AV: E=Sophos;i="6.18,265,1751266800"; d="scan'208";a="59388193"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2025 23:30:56 -0700
X-CSE-ConnectionGUID: SlCbj4x4T5K9+eawv9jfBQ==
X-CSE-MsgGUID: 0Q23D6cwTQqF7+I+EnkLRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,265,1751266800"; d="scan'208";a="174607351"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2025 23:30:56 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 14 Sep 2025 23:30:55 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 14 Sep 2025 23:30:55 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.87)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 14 Sep 2025 23:30:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JW9wbIjwy2/vJvjmFpwWyQsm6zljb7mSox3Cr23Pmc2NqbXpcPvs3b2gIQVPYGjVkfLtmQTxrPzyL58M0s696O0ijIBVtUfwGmYQFmNPaIKDPCh5K948Itbou9Baz/iXMjlOeIreuh3fWMZtOUcRavMHtpzbbLf5JeiI+EZZJ3Tct40ZWQUNQAsGsmy6xUTj2IZetP/S5q5CiAsnGHMM9cq97gjzQcru4LtggDPRUodlXLF2CEQWHOXbZ40Yk3ta1yHq3QWYsZTNMZ13xMYyQduvV2adE3wyCAlgJyXrPeBQ3lDGUv/SzA4Cvfcz9amZoL9VjFOK0K7a7nn3H9tDQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h6HeBPMYWgYvQ1BY0lkkGANPm3o05nv1i0V1fJzjraE=;
 b=wHHNgBrhBY8pwzNYED8nvo8wltBLjaFOghyrH3PnGYiQWRcd3WA3hA3Vbc+es7XMPgcd1dJOcF3Ifj1PM2RDt+nyxmE1MuKwNDCQP2ztLXHX7QDvRMYhVCCwn36LRVXJulYiH1jq7TrxksKhdyiIIIUgxb+GobVGrcXncJxCmLKvP4lz09Qh3R/Ow4qq2jXhPo9vhMYbLjsrWLdVPZZcr3MZUpFpUsKHoh17z2qQCAnpWnO3RaOIx2i1LMpRWmwtqZz4vCTbNg7UvYE18fMIfb+vMn6vrgrpasUWTgFI+PWaWFxFZsTNO41Fnsic47DjWJ4cryiurrpZUexWITMUOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ5PPF8A8418B02.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::840) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Mon, 15 Sep
 2025 06:30:50 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9115.018; Mon, 15 Sep 2025
 06:30:50 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 1/9] ice: enforce RTNL
 assumption of queue NAPI manipulation
Thread-Index: AQHcI+eb+KcEzg3zpUSz0088XvbE0bSTzIxg
Date: Mon, 15 Sep 2025 06:30:50 +0000
Message-ID: <IA3PR11MB898603B59EB612C386594BEBE515A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
 <20250912130627.5015-2-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250912130627.5015-2-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ5PPF8A8418B02:EE_
x-ms-office365-filtering-correlation-id: 82861a4a-5e3b-4c10-30c3-08ddf42169c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?uE0SwsiBdkXElptNf9rBrZx4a/aZSkwU8bisjXchDJXTm300Y8PBcX2gF8Vc?=
 =?us-ascii?Q?wWDjrJwGKwN2Ev435E/PJeWvcRSvACYDK8vGt12/YEeClhwsv9Xzy4k9GbHd?=
 =?us-ascii?Q?6B31xvq1uLYzuGx9NR395TbM16DbgPzsZTHjK/kC+zwJoTxnFBaX/DCp6RYB?=
 =?us-ascii?Q?ue3XdXeLLCifOh4K2ZAV5BnFT4UsWzN2DVwD18LgI6iLh030M25blmWobqa1?=
 =?us-ascii?Q?VFZfBrDwDladzBxkBRXFl9H7BKnauQS0rMUfyfuZg+eAfV54iwTUMfMcfQNE?=
 =?us-ascii?Q?08QMkdgVleSwXHyQFj9XpH91x9NlwmQ9C4cS2HKivYiLaiPIhb6L2fWSxS1s?=
 =?us-ascii?Q?e7kv/CWr2UjU9u3njLM7QXq4vwuuM48z9qrhh5n6o4DvrM4xWTz4Rtt6xMI8?=
 =?us-ascii?Q?CxovmKXE0UiYoY7p70VYYtA/JCGslQBCwvJbppfr+o9Sf1h5q0YvcdKVIOw9?=
 =?us-ascii?Q?aa0dIgm94opopikX8kqZ3ONeXjNu5GagNRihV265j47uGfITk+AQKGTWdq0d?=
 =?us-ascii?Q?yOp5EUrvkkqMdnbYWNgvDcE1k0nsHjr9hktrhY2JAiqI+OYnqkKORyndqrJs?=
 =?us-ascii?Q?VcfHaZKxG9Yw5s0vxmJWLvwpz7+py8eXBQOnIpMn92rSlJQXOo+uG9AVoRN6?=
 =?us-ascii?Q?G9nda71v65OJBPAbZsKGxEWtCFspHfC1Ut/BxMaSFc/eYQjZctI+kKILrUfv?=
 =?us-ascii?Q?cruIskAj2YcplXs1BuaoMX3Q8Gda6vuRWAWyn+YHY1M1ldgMg0+eYqT/sunx?=
 =?us-ascii?Q?0UBxqhz+Ib0uzepTKp1IhDub9bvTO5y3abwmi9q2h38WFGBzT5dxHkKIMMNs?=
 =?us-ascii?Q?QJIY0bLto9ARoFhFlbQKCD/rc7fD7MHMSbwYirtNfLVBmotps8WuD3Rg0S7R?=
 =?us-ascii?Q?HiWf7CEY7qp+7hvesmzagIKMsYJBIonELDodnz/gDKy88PX+QFx++GK8esGc?=
 =?us-ascii?Q?vSuDWo33REZocXA/5cXSsTiH6DIOJxDRi7jZA43HPVUmWu16noS+Jq/zC3kV?=
 =?us-ascii?Q?lFXpYi6UM2jxHmGTTxbVRX3H9UmQzKSQUomflPzqZeqvUPXYb4MeLphyJ/Z8?=
 =?us-ascii?Q?fBI8Pdc2VZKbuRLzyhT7C+S0SlwpO6Ye+EmnOC3L2GO5YObZ22O9fRwDeobx?=
 =?us-ascii?Q?vEyau7JLSlQ100769+Sqseh7txGwXvilh8Ul5AFa1KFbi4uKzDx6SnB7JW8L?=
 =?us-ascii?Q?sqkI85OluHfvQrVyBhsbY675hhEAA9G0R/Df8TL4CcLT33+l/L5SmU3O7Wpv?=
 =?us-ascii?Q?T+k3lzzOoddNvawGcPGF7vfiVo7NmKj9tjvzrnnoaSeOR5BdTvcVRtsnwHzh?=
 =?us-ascii?Q?V0ba/gxUT+6iG5ATG9Fcfay7BcFXoH4b9JZsk1qCh1VS3f2z4+C8XbQZpnqo?=
 =?us-ascii?Q?+DGBljWZ+qLqDk8N5CfXYIux451I90746G3fpMCXDxXBXc9p0hviYoLnC3mK?=
 =?us-ascii?Q?z+u/g1CJA3oT76arfgVdEMiJkkpjQlfz5YFlS3Kn5lWFSGnlocfB5VmjIVi5?=
 =?us-ascii?Q?Uo0DRdm5RLZzBLw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eZ9rzlyMtgNJL6uPktd4rQQ04vH8VFeOMUgSDi0RvADUNwLdWLyKy5iTtnmz?=
 =?us-ascii?Q?jzBV4QUpE77AtvCejDC1jE9o3wocpKJkqd6LWj9K1JdM2iDyFBM/y2ML17EE?=
 =?us-ascii?Q?cvfpNZZA7AngpyRokuwcc31gfwEO5C4URh1Kvo+eTEuw6DV2zar6JHR7UO7U?=
 =?us-ascii?Q?624h02u7RMnaUU/7Tps7oQ2oKqnq7cvQC7iRV+CLSJGk4Q3K1rg+0ShHcp/6?=
 =?us-ascii?Q?tJ18dSEzDg0qGj5/cYXhEoF4LDrNdD1POcqlEOdh7KgZC6VsH0MdawmNkNoQ?=
 =?us-ascii?Q?8P5+nwWPfpzRP0aBnN2VSp0wNFBRHeSoB+5qDahcLFfq16zrC/fSC4NxjHGy?=
 =?us-ascii?Q?/JYjd8QK6qjHXg4PAZgnbCfodzE8kjY/TGG20brEoqvnOK7iBsh6+SU/3MJT?=
 =?us-ascii?Q?kbQ1JTxdpCO5o/1YUsberCFBOU+3NPKWFmaI0Din12llpUIWM/MOeR2zwZq6?=
 =?us-ascii?Q?vU2Vmit1BiZeNjzzbaVejqkxnuMgh8pmeX3wZz2xibMHhxQ1jP7OTpl3Dehb?=
 =?us-ascii?Q?8LuccLOVIYANyapUCuSylMNXTaxQKHL8AgfVUXLJY7Ag8D0MbcHh+elPWbL/?=
 =?us-ascii?Q?MxsgqSsU93aiFJpfxPQ4heLmWwvZm6oEMyUMovgDVnu778awEiIm68DrdXXS?=
 =?us-ascii?Q?CjPjJWKk1dI+weFOrmnHnDOOupzsNnM9huXOfaTMjRImMkP5q5jFuoIrqq3D?=
 =?us-ascii?Q?2zSxY9HsDkL+GIyLY5X3Vk8JK1q7DQiIl2RYMnE2rvX1V87rYv3gas6Cjxvw?=
 =?us-ascii?Q?FZppnPDeO6N/kfhc7yhfxcpgcFxoUiZ2vavSyVmEUxg28QpszMQ8KdlUv9a+?=
 =?us-ascii?Q?cbRjs9Cq05gKtiBtewwdLlk8kwyCHVr4kI4DjTq/NiUKBtuvWWv5/tnLl0nw?=
 =?us-ascii?Q?lNxQro33nYwtutMdxQ6ZC5o+TobQEBFt0IVK7SyLZSZQS8J0J0A9+6Vsz+6d?=
 =?us-ascii?Q?3mVPkta1nDKfAW4OFp0yG7yNrd5k+gI3Sa1CUBaQ09pxkWdZKImgUi0hwBFQ?=
 =?us-ascii?Q?v3JYAW3p1CHokFufVAxKILQ8aR4S5dktpQeEhYSy3pjY/kNwrZX9TU3504t4?=
 =?us-ascii?Q?QZr2eL7meva0XDw86DD/UzUaSkin9et1picZDuDw8gtb7+6VaOl6MHcTtpNr?=
 =?us-ascii?Q?TebPom03uomHVCoLTcPoHRgidq42TXMnSKv1WC3P2bE7uafBB2gvqVLGEaHN?=
 =?us-ascii?Q?YvFqcX2lUXS8a3JFo8Qe7/WZbdU/RUQ8BuYSpo87r1LUS417hjo34fsyw3mp?=
 =?us-ascii?Q?4HRVkD2AJo2JsBkAsPwdcQwmA0Yh8Q1Rzo66B7kL+YUGh57hucOAqopN2rwy?=
 =?us-ascii?Q?3jfgsXQrTsWogPVafRKqPz6k3Swa12umU2hc7NiT0ap4xlHAoPfdDyHXQ/Od?=
 =?us-ascii?Q?wWfaJ8q+01MvDAj26Xe5VYKQnTw6eme+DjNJhA3IBeL7FaCW3RgRAyMIIFWq?=
 =?us-ascii?Q?hRrMF1lyxDu/20dr/ZWyhebNG7NAOyXNzwzM41kGuvDmJg3DItDbI0bwOE4m?=
 =?us-ascii?Q?2+rYpHfXZ7H6Dx3efMX3G3G31DSlJ9Qy+hpPnzQvRB1tbuFqUlSGqfzmddv6?=
 =?us-ascii?Q?i6fKCtIG1RkQi7Qm8QSt6f/nqYbiR4DnLlTDQuTKxbiyQWu4GTS6n62TVtcx?=
 =?us-ascii?Q?tQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82861a4a-5e3b-4c10-30c3-08ddf42169c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2025 06:30:50.1602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yDaxzb+gEMG+EGlyWr2fd/oKwrZTc+QtocwuzOoHnnlaHg00EmLBxpY1RgD9ba6tmdy+SGEaqexLhVg5TM3MnvpbI2ZwmV0irvsKhOGzppk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8A8418B02
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757917857; x=1789453857;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tN2HAuoGLOBXsyXT9lCXqzgUx4LteFMj7j74q/vO/ls=;
 b=HoLfg1g/is9Bn7sK2lSkNCrQfTefQmVo/cgn8w6PeHTSwnNZEnTdauUJ
 axy9MLGdrgG4xRvprpCQE0TuBTjK2A32FhD+HHJ1iF+ScCHPuiEfxHg/w
 p3DETfhfnpNJVIUNkCrmq02wIBiQHrLpk+GvvaoaWI4LP70ythPe2aafD
 jDiz0zdmQREN3HIUjiYDduXwrTgfhwrHh1+Vw4/zenWhCve0kw4i23YNt
 wzWJKvSSpUpCsXbxruXK2+lU2joaRjZxiCPQBlzJnPNmoD4lxwSHJgOJ3
 vqc4mANNBmDO9/0NhbR0/7HRD9hyPy9SRTbpJULTuLoSqPv09eaJiPztu
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HoLfg1g/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/9] ice: enforce RTNL
 assumption of queue NAPI manipulation
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
> Of Przemek Kitszel
> Sent: Friday, September 12, 2025 3:06 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: netdev@vger.kernel.org; Simon Horman <horms@kernel.org>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 1/9] ice: enforce RTNL
> assumption of queue NAPI manipulation
>=20
> Instead of making assumptions in comments move them into code.
> Be also more precise, RTNL must be locked only when there is NAPI, and
> we have VSIs w/o NAPI that call ice_vsi_clear_napi_queues() during
> rmmod.
>=20
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> CC:Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index a439b5a61a56..3f1b2158be59 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -2769,16 +2769,16 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool
> locked)
>   * @vsi: VSI pointer
>   *
>   * Associate queue[s] with napi for all vectors.
> - * The caller must hold rtnl_lock.
>   */
>  void ice_vsi_set_napi_queues(struct ice_vsi *vsi)  {
>  	struct net_device *netdev =3D vsi->netdev;
>  	int q_idx, v_idx;
>=20
>  	if (!netdev)
>  		return;
>=20
> +	ASSERT_RTNL();
>  	ice_for_each_rxq(vsi, q_idx)
>  		netif_queue_set_napi(netdev, q_idx,
> NETDEV_QUEUE_TYPE_RX,
>  				     &vsi->rx_rings[q_idx]->q_vector-
> >napi);
> @@ -2799,16 +2799,16 @@ void ice_vsi_set_napi_queues(struct ice_vsi
> *vsi)
>   * @vsi: VSI pointer
>   *
>   * Clear the association between all VSI queues queue[s] and napi.
> - * The caller must hold rtnl_lock.
>   */
>  void ice_vsi_clear_napi_queues(struct ice_vsi *vsi)  {
>  	struct net_device *netdev =3D vsi->netdev;
>  	int q_idx, v_idx;
>=20
>  	if (!netdev)
>  		return;
>=20
> +	ASSERT_RTNL();
>  	/* Clear the NAPI's interrupt number */
>  	ice_for_each_q_vector(vsi, v_idx) {
>  		struct ice_q_vector *q_vector =3D vsi->q_vectors[v_idx];
> --
> 2.39.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
