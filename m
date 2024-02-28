Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7365686B636
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 18:40:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1508F405B5;
	Wed, 28 Feb 2024 17:40:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KJi16Nyn_7Sn; Wed, 28 Feb 2024 17:40:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E0FC405F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709142022;
	bh=UTvPg9q2051s0Qf8CctVT5gilA+8TjUJQNTHwAvTFts=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0ZWn5kGABknTzLLZkrkNAGac+vgeLuGaGqNL5b/AecTumS488hcSwjxgMwVTN5q7Q
	 AsnsfAgOwyRR/dIxzx00CDQFm+beMjfYQ3+3njCmzJMiWST0V1Dco7e+JCQgQs0ilP
	 dGBnBk/qAOisp2Qp1bM+cxYWWjxdMLCG5sFoeA69SNhbcPuEcDY1fRH/gQ3ZLsfJyP
	 NUjVG7pQCbEW1E7zluhl6lPx9R6DhlD3CdQX+I/8FSsOh48W4b8WT8sOiqUAT24Kwm
	 53VTCLHMWild5qwZ5MJIy9HVW2zrfvBSRJGtOgBfixZJsPDM/itmc2NLmHkAPK68ap
	 ridz9KcgqPkCw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E0FC405F2;
	Wed, 28 Feb 2024 17:40:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D934E1BF841
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 17:40:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C5BC5605CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 17:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pCg_GPG_5dfO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 17:40:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2760260670
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2760260670
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2760260670
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 17:40:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="14707092"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="14707092"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 09:40:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7453405"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Feb 2024 09:40:01 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 28 Feb 2024 09:39:59 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 28 Feb 2024 09:39:59 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 28 Feb 2024 09:39:59 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 28 Feb 2024 09:39:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MR86c51gulcT/ctrx2kw4ENqY+YFPryqFcxhGq2ymMC2dV/1xVIsnhV6Y3SwXSn9r2KgNJWaO1GwDD/U60RlvspYnQLQKjQntxV0LTJdOxNTz84yIkpYudzTWZsQye+7jOqQUotBhK6t4fAAlQ+YMqG71p/fPhhogAiHm4S4pGFw7Y2KT+FLNCK5TzdQMwYv9grUKTe0PlSeR0rc+eBuSCxdZqhQBPRuGdFknVAvxJHOCn0/QPi68cJCK5l8E/KJolWFnfiuBRBoh9j920xTep4AhzcNA8y64Wf5H11zMlNwU1S1ObIiz8JJ67Bj09DtOJG6b0C4OPaYNWMsp2iWNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UTvPg9q2051s0Qf8CctVT5gilA+8TjUJQNTHwAvTFts=;
 b=aHZwwSV+3g+MkpcfyiRSg7vwqai8Hhi83jYXrCoCDhB8h1iArVOBodjvOsWysC5OWaJuhPOgZ/q0KvoP0a4ItAml6QgqE8/0RpIA87FC/DWHkymDJeuBZLTYhA/ECFA98MziL3R0lO4BTHUk1OovnxJd+EqF52302P89DCRWJ9tQN9fPz5s3DZ+K02Q01/oQxkW28hGrrjw7izi8SNUF5wYOLQuKZ0cxarP+Okbk+mAPZq28eTRLgLT6KhlKFxXycUBfZ53l3wJ5P2xwTfwp5wg1CiDFWJbdDH6RcxrvpU3IFdtbIsKaRHCs+9b9u8twhVgBxVSMQ6RZkdKu+4TVuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by PH7PR11MB7571.namprd11.prod.outlook.com (2603:10b6:510:27e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Wed, 28 Feb
 2024 17:39:56 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::6f88:5937:df91:e4b]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::6f88:5937:df91:e4b%7]) with mapi id 15.20.7339.024; Wed, 28 Feb 2024
 17:39:56 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, mschmidt <mschmidt@redhat.com>
Thread-Topic: [PATCH net-next 1/3] ice: add ice_adapter for shared data across
 PFs on the same NIC
Thread-Index: AQHaaMY/vKxps3n/7EuYyM7HWuuOQLEfDCiAgAD8QiA=
Date: Wed, 28 Feb 2024 17:39:56 +0000
Message-ID: <PH0PR11MB5095E69C450A6E9C2E7E6C73D6582@PH0PR11MB5095.namprd11.prod.outlook.com>
References: <20240226151125.45391-1-mschmidt@redhat.com>
 <20240226151125.45391-2-mschmidt@redhat.com>
 <20240227183555.01123eb7@kernel.org>
In-Reply-To: <20240227183555.01123eb7@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5095:EE_|PH7PR11MB7571:EE_
x-ms-office365-filtering-correlation-id: 99048fe9-f8d4-49c7-3fb6-08dc3884476f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tk9j0iD5GZs30WZaiqUojxZgoFmRRD1K47eopTWq6y4kSOYVMNHTKu6/Z2FuVKLpL9UBn5ecGzk0QHm/E3Xkk/f2iPG3BQGmX9p9uEUTtiwq0LDObgJBO6cuhegmxPIGXgeoL8xjszzglF6ur5zxMvtaNkavcK92V9tb02ODI5wmOwUWg5QP0nj2CSNW+j+PLckMvfiNl4X4MF3cNsN88NPfl6sqkYZlhDsiGOjj+3V/qzkblLdXe6K12HszIXw5qgnmhJ0c3ogm+HRbrR+Z+PFeZUDRF7mhm8i3yrzdo9yF0Y+a+BpNuRcOMD5vLKI7WhZsYmxVJSmlgNCF1n7PXM1G96+sOGZr1dpw6lryUJ1FJSs+d716sAf82gJ5OQCBqlAsC1Oa2nT0D/baEqscZOmHUOn4Kl5oBGJ+yL+qHGhOrte1ZKyHoYLpBVWKOo5uMhJkVDFcG8cty19+7C8tlIOQqxLKW1D4DaIYovNXjd8ncCZRAFDvewEGrIsOBF/bUEBTTrSt1dJGAyev53TCJ37fClgevgbdiTk0I3h6SNz6m3jwmucEMDBAwC9bxbsVoOdabO8rpDT335LxVwsfIz4Tr/6rpXgTy+x4Fn2RnnPmB8h4LlHloBz6PW0+DCuFlCPCK27LuSb5fk9fXdPV/P63S0qklJ35Edk55ITnmOr30mj0xoe+Pold2V/uA97ryvRu5okPOpnsGHwA/pCslhWS+fSgk/hYKb8rzDeRzRA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LvPbB9/8i0zC43cS2rUT/NXlrCWLRR3M+H5JsZxqI3NunEORdWLXowAzAKDc?=
 =?us-ascii?Q?4w8Tkcrtt+lxP6JqN9nmxa/zqSYWU+PB5jw2QPg7VtUALSHqOVTu18BKfjHJ?=
 =?us-ascii?Q?354sVbBAyuWSgGYZ3tgwKrfsTEDCl9VG9uoPmb5vGbwTnNCw3/ZjFVmEh/ZR?=
 =?us-ascii?Q?ONGCCX8NXb5GcdW0e7Y2OBoIXK7y2U3rIz7XrZdOEAvaCmsSl7nWLkYTC8aP?=
 =?us-ascii?Q?tiiMvVFEsWY8g3WoOcxi3qoYPEKrvs2qYqPi8IGarel4X59wmleJTSmvrVpz?=
 =?us-ascii?Q?gEr1NpVqDx6kSIsPxEtY7XHLTdQa0gaGCtEWOepnAEcrPXrJTNrt3V71iQ/s?=
 =?us-ascii?Q?jSdE/HgEYpfNKwK2Au49oCsyU6s9GZQdW42idvi0Ynu+yb1nCLMDkKi8Kywx?=
 =?us-ascii?Q?XNTAsEmmkK1SgkA3TT4zUURpzwSG9jeHiy/LLZzmUv9nnhLWED7w2MKMCdY8?=
 =?us-ascii?Q?v5qQeTXtTGCrlemXAzTfxs/eVRsXZB0sUUsl/HFb3Hqn5XgCSDGC0P2aoIp3?=
 =?us-ascii?Q?yZ8dFrCMI5pH+XJedFdnosM/Q80RAO5LCbJL/puw7g+rxIHgJ3TCJcfnI6Y8?=
 =?us-ascii?Q?efEk6kkrorKhgWrQ7jwm2NZaWkzHfjV1GhQuUn3OpuOfqa+FaeKSD+1mLRhd?=
 =?us-ascii?Q?q4Gsb98FQH0AgIfvJfgjFMa9yZXNqxjyfXg5AjmnV6MJDNag1nA5g+4xJoy2?=
 =?us-ascii?Q?7qlLY39V1Q5lsTHIVJxdnoU0VPOJGteg9lmka0MSesWksI4n8I/6GENHupTp?=
 =?us-ascii?Q?AuC7AYNP4WGoaVaOA8dLtmcSEPf3bdJ7CIklCHXlEEfsxNxCea8IeIE6JlEO?=
 =?us-ascii?Q?7Bes4+pZ4TzdGB6ACxX6EegKBkR6haYee3FNFDIROBwsZMVT6vRyXqVnFftQ?=
 =?us-ascii?Q?uoGkF/I1e2Og2TaR/qsY/ThzVEl2GjgIOa/RJZIFSe9x7gjM7y2Mjh8nqban?=
 =?us-ascii?Q?UcwSAP+jCkHQeXk4UiirLwLaGAn/X6yLz8JHaAoIKMwvuROS3RgN3TqK+E34?=
 =?us-ascii?Q?NNgXg5Epf0p5+kTEzMnfqbmzKT5tYLwZTZ321qVaCymNEeThkE1EJiWVwOum?=
 =?us-ascii?Q?B1iQsm2+s5dMPjclG1nRlFv/uS1QvQOIT4S/39FrNjlpNsm1r6KvboA+PzsF?=
 =?us-ascii?Q?/3xeRqapPRcVY1HqLowai6jiMAliB7H25pDfm0r3cgvtEgr54g5eCKxjHB4G?=
 =?us-ascii?Q?r/12e/R3VPW2fMBGAQnQLS91nPpctLNRjf1L68fDKreTjCnSD5Dbs3GvDDQK?=
 =?us-ascii?Q?bXMMGAT12EwSxQTwX8PGCrLIfbmPaqk/wmLTp1VxSnpoDikZc7YO/QfhoTRW?=
 =?us-ascii?Q?CUrFdJ0ZQeMhuvydudivLHy0V9Hx+tVnbQlq5S26eY88OhX2I2i6Vz7++TVv?=
 =?us-ascii?Q?vVl9ctcvlatkQgtBFdUU59S6pDikAocAZwgXxw9R8g126wtZlPJfCq4ZhdbR?=
 =?us-ascii?Q?MLs2zjZdF0Bw8f4d3xd/Vvz8VZTx9lULMSg923NgA7OaL7sgBRd2vMQc6kQY?=
 =?us-ascii?Q?NtzJxFszMy2I9e54rxm9DIn0fubfQt+eaVea7mswSiTF2TVYc09nC91zhAGB?=
 =?us-ascii?Q?eexbSvVTnxetv/wpnlrthZIbuTN7If1yeBO/zUKK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99048fe9-f8d4-49c7-3fb6-08dc3884476f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2024 17:39:56.4450 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rGqpORdxkbD1XSIjQ4R4FZtIMVbbE+JGXoWGujViMtL8mqSiDlLqGj7WQdE+Y0mtnnE+J39QEgVQMkhS/APhXQJuJ3TG17X3gB2BJkRFg1A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7571
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709142019; x=1740678019;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UTvPg9q2051s0Qf8CctVT5gilA+8TjUJQNTHwAvTFts=;
 b=f8YZQnO4WrW8bcY6fKHdAjrZhI5KBob0gPG6E8XCuwXdob7C0iCjXMpG
 X8kVeHkSNg2Zgy+/JTR3/XiP8+34xgcyMd7n78C1mGCHbdWcKSl7kAdIt
 UBFQrerGSw9KiRGb/9rz0IXzvw+06ealZbiieyvDg3rr6HNxoDuxOlZQA
 69jiuu9UBdSquuGb2R5FhbCx+BRiv9HHREBOK1VAey1pMmlz/GpO4W0LK
 ztvHs8fn8WJR2VU2fg36+wIxrRvjxCDLvkMKwyFlF/3jaMPP7yrt3bHlD
 0ANJKmEeR+NIhnRLwBn5GAJfBCiqv4no3y7dEJQvkvzRd/tkGUfFWWkyB
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f8YZQnO4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/3] ice: add ice_adapter for
 shared data across PFs on the same NIC
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Jakub Kicinski <kuba@kernel.org>
> Sent: Tuesday, February 27, 2024 6:36 PM
> To: mschmidt <mschmidt@redhat.com>
> Cc: intel-wired-lan@lists.osuosl.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Richard Cochran <richardcochran@gmail.com>;
> Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; Kolacinski, Karol
> <karol.kolacinski@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> netdev@vger.kernel.org
> Subject: Re: [PATCH net-next 1/3] ice: add ice_adapter for shared data ac=
ross PFs
> on the same NIC
>=20
> On Mon, 26 Feb 2024 16:11:23 +0100 Michal Schmidt wrote:
> > There is a need for synchronization between ice PFs on the same physica=
l
> > adapter.
> >
> > Add a "struct ice_adapter" for holding data shared between PFs of the
> > same multifunction PCI device. The struct is refcounted - each ice_pf
> > holds a reference to it.
> >
> > Its first use will be for PTP. I expect it will be useful also to
> > improve the ugliness that is ice_prot_id_tbl.
>=20
> ice doesn't support any multi-host devices?

No. I guess you could try to direct-assign one PF into a VM? But otherwise =
it doesn't have support for any multi-host. I also am not aware of any plan=
s to add such a device to it in the future. I think all our future multi-ho=
st stuff would be with idpf.

Thanks,
Jake
