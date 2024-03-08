Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 05714875CD1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 04:39:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45DAF401BD;
	Fri,  8 Mar 2024 03:39:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YzGgf-LFcXB4; Fri,  8 Mar 2024 03:39:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16DD04012A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709869167;
	bh=fp5F6DTbK41gtfJtJjd0p+nXkNp4pryLMbcwCbm3Jfk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=axtGZKZNstHKEfU1pZtxRhqt2fgGtlwz2HzVYUXRS2W3FXYhjSz+WgSlZelP9WPMz
	 quK0y0wCAN0RP59oN4BPxWXVuGhZ4U4GQPg2hbZO7NOzL8vi+kH3+jMZLV4Y0rE//d
	 lsBpUmqlWbFs9Q66/BX77lf2TxKUdy3CzLCrIPmI2SUt+yIO7cW0iXKxN6oh+KiuMo
	 njV5HoWKk3v+yEwav0mufXFkbqGtYmSg576xRcb3b2HWVG3IHTZRuAs78nufoR1ihe
	 YF5aLqjCsPkLMY7o8oBTzuSGZVDKsf/RkaTYJOxDTN2gu1bXK3IiZ/leGpA6DkDgCw
	 fvbAadeWtaAZA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16DD04012A;
	Fri,  8 Mar 2024 03:39:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 507E51BF370
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 03:39:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 49AFD82796
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 03:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JsAiit0g6vCc for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 03:39:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E7DF782730
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7DF782730
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E7DF782730
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 03:39:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4715632"
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; 
   d="scan'208";a="4715632"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 19:39:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; d="scan'208";a="10430239"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2024 19:39:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 19:39:19 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Mar 2024 19:39:19 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Mar 2024 19:39:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FngoGtFFgzvP7Ay/l5MrMnKK08YldinD6Hb3B6LuRUg5t9nmyRVVI5tLGRy4FNlVrtiNhxIr2cSxGrxZm6OZ4wPDIFgKhbtOE11PId0HW6xRBCWhX+Jud4/tVVg2uY0s07q0vTS4aV0hf5sKJG5vhj7ldNexXyitIiO77hnTB3jRegE9Q9PJnw6KvRVhmFsoO/KduW90APgdgispuKMCDccAUG3P8s2nsNdJz0JSVBLDi0w2hF4yIiRICSkw14RvWYnOTw2dXTDoBhrnbIJIvdhLqvrKqqyMfX2amkGNBVQj98bTkuhErrGmFKdqDt/EBg8wTycz70jyiUZQzgtQhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fp5F6DTbK41gtfJtJjd0p+nXkNp4pryLMbcwCbm3Jfk=;
 b=TYHS4YuqrwNsff+oyAEf2wsKRU0ubJTsfqlVXwCcH5MHntcX2uX8Gwdac07gAH+9FHQxgtQ02It+gK2r365MjVhyn9OUle7mJDaQgkLbx/cWC6uhBoNldfAlGldHzC6yF9rrPdQcROeZh0a3u/eDH/2an4MFNoNyX6eXxDqrlUHPIHPcvRdP60YYFDT76hRMg9zhwjvqgWxgynBWkt0vxIzrJxvBVsfI0ExTTebdO6JctM3NjiAi9OcBCFAWqVSpv4jrYN3Rnu8NcP+8Q+e4HFTw7nzCuLfmiABJgL+HLmxVTGnreLbVVqh2P/zDnd9DTUzpvygQZsrJfXd7fwDQ4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by IA1PR11MB7294.namprd11.prod.outlook.com (2603:10b6:208:429::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.9; Fri, 8 Mar
 2024 03:39:15 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::9445:5793:b0b7:711a]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::9445:5793:b0b7:711a%7]) with mapi id 15.20.7386.006; Fri, 8 Mar 2024
 03:39:15 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>
Thread-Topic: [xdp-hints] Re: [Intel-wired-lan] [PATCH iwl-next, v3 2/2] igc:
 Add Tx hardware timestamp request for AF_XDP zero-copy packet
Thread-Index: AQHab+vcS1TDt8kjEUSsQjqKNGdoS7EsSaUAgADcFYA=
Date: Fri, 8 Mar 2024 03:39:15 +0000
Message-ID: <PH0PR11MB58304D1FA254E9CE8FA1AEF4D8272@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <20240303083225.1184165-1-yoong.siang.song@intel.com>
 <20240303083225.1184165-3-yoong.siang.song@intel.com>
 <Zein8XvWkqj8VrHs@boxer> <87a5nago13.fsf@kurt.kurt.home>
In-Reply-To: <87a5nago13.fsf@kurt.kurt.home>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|IA1PR11MB7294:EE_
x-ms-office365-filtering-correlation-id: c7654ef5-fb8d-438a-4de6-08dc3f2153c0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LbIcXbqgVQR8yj0/LiVTF2/NmJQLeUmMu3enwp1uKUs2A4D2ucroZv9pXe5qMZHXyrPkUBGsIZA+b1hhsO648gw1r9vGezbICR6OVVuf7qpQUW1M7+N1Avt4jl97eceTAL7h2AzQwE2X+bQ2uXTUKyvDhnNOqBa8b39hgY2ERQajlAnbBPMaSVAfwWJ5WPXvNDGj4NYGJipbLPsW34nSntCsmn7puJMaGltcP7F7naeG3YdSog0JiEgDoYcGDHTv/73AxWz7QvYWTKRs3/1Qs82WjRji1MOy67XRTol9OCEZieKJSoR3a51Fu4dx6R+/+jMPS41RWrYRzLdUSaVCKCatXKXDfmm5U/kfSoC48lFq+NNVvHxaJn5Hj5iWumEhiyMi5dOUdEmYPFnADSBOxVY8vrdsonp+sKFcZkFzsevSEzRejsDyU0QFmKEEzVej66zoB9lBg4dF1m1ttNLRYNXeg9isWtCmXQVCuhGg1uTtEX2EcGxtgN40Nhok+f+h4QK1sFz7LNhlBMvPkytkYmefNMjSnjuCo2nKOS3BhHY1wd1DAQUH/LA3FgxIFpx/MkIUfH5z28MzFJl3h54TaK3f06J5srxycBJLLbM9Q9MmVyWtkEyN9nRa9i6J3m63e/K50nEqlwoPwy9bmId3Usg3dhGx0dQQQmKB4tAMAvs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(7416005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?a/iDHadEsomSJ0EjGOMaR/nCNqyCnAOc0gzEB98b/+1C7dwjOsKvUWFaR340?=
 =?us-ascii?Q?uvlor6PlA51gIMTKhwjASIrvJDoJ/ZScHtEjEggy+tUj7RMaxCf5SapEkK74?=
 =?us-ascii?Q?1MaBDPFZiBm+XOABwt4hctoxmZpE+XsU2/6+RFGSnhPuD31Pt8etSRJ0E9hs?=
 =?us-ascii?Q?U6c4FyYYg6bo9DvoEdYhSh8uXzLLiyljJKy6Zrf9BhcMQ9vH0CXNXITT+jsX?=
 =?us-ascii?Q?LJtuDHHOsF3mZ2b8BZB4WTdDynKfTDMtB6xbVsVEflFC56SNKf/frCbUK7S3?=
 =?us-ascii?Q?4hRL0bPCJIqF30VTAek9j/NS6lWRensu3JxT7mEUX5t12ttoZTAtF7WOeYbT?=
 =?us-ascii?Q?ukMWzoS8sv/xc8lf3aVolpmWxJxXRo8OiGRtn20bXCZuVqHUTCfpto2706LB?=
 =?us-ascii?Q?M2qg/56pMoc0t+ACHJk0O+S3DFaa5/Ju5+K7o7ACsI7vstep0Y7/yWSFHjBR?=
 =?us-ascii?Q?OHwzNIXSjkl+7qH1PzSaZBtMPhG5RNe7+1kMy5FxR1aysuenQ9OCiB0HTFLj?=
 =?us-ascii?Q?2ejOyCblMmtfRlcfkhslM4DzYBjOpDsFSBJD7F5zOvNoOI9h0ZVc9tAXtJkz?=
 =?us-ascii?Q?hTZY1Vw2eCtyXb6k/LmzJ3ZUfXyvWgnK7tmBEWglV0H0tvLOCAiR7+TBSoG7?=
 =?us-ascii?Q?MsldG+vly72c0KgQgsRicce5UHHZpejhGHhClVu2lJ/0lmPxXaFIReP70yJ6?=
 =?us-ascii?Q?ThAmb45L7DqNH9hruJDugk6/1gaapQldWA7QnChj54uNSXEPu4/T19SIpOgL?=
 =?us-ascii?Q?ZyBrWy73FYyhp9wyLU86hNaovSDR1a09mR4YoSg4UeUUMitoHKbqSFUkDa7P?=
 =?us-ascii?Q?gduZcvCDwfKXzU95E7PIhVpDiDKWs64b9ebPgvYCgVD6S1TZuBzjiXHIV3E3?=
 =?us-ascii?Q?VGHqKH/e2/apBkz00vk4I6DSvEpvI8ThNqjwJk6SFgm+crUuhUO9phyEKW6R?=
 =?us-ascii?Q?8c1kB3Iad7bSU/hL/k25EacGy3aBNxUJ9YU1fWOYKU1i6YGX7ViDL1L/mbFm?=
 =?us-ascii?Q?ayiyZV6fAZMjYTOlPvQ7bIRDVabN5x8X5A1mXUpLCZlvK173RzynNrUmPQQL?=
 =?us-ascii?Q?wlYgSCSMy2u6wQQBj08GnUlHW710Qy3unNstAC7Pt2XgshzSmQiyWA8IQ3aO?=
 =?us-ascii?Q?N9XRzgsOkYVCZkbUa/ajjZuKO6sM8YdgyFj5MZjlO0d8e3s2sKxaod/Ei7/0?=
 =?us-ascii?Q?1eAKD5ieFkGsLdMQpMwhSCydKkMUW0NShQVG0LK2kolzK7t9n20h+81m1vjC?=
 =?us-ascii?Q?3zvenRlz0wChW9/OSJCMoha2cS8oeytHeTUDkTupUAH74CkJnTMnHD2GO74E?=
 =?us-ascii?Q?emIzUpvsNgwODJNHiftuJdzSYgOkzMt1i9iKSxxAMQPWomgi6tCTEvNZ56Ji?=
 =?us-ascii?Q?eVrq6CTKz+m5du5Nlpm9CqtEcUmoZDq16ooqWRNthvUSHnQTaIL1jrZ89yQv?=
 =?us-ascii?Q?ncanhI9thZbe9O+RZzZLQtJecS6324WIBsycf0VUzQcga1KINfiVmOQc3are?=
 =?us-ascii?Q?9R3nPZ3QAS7qA4gfmZjfFPz5/4b77NIBHSSk1zWgGaOWSW58QYhcNACJk2hR?=
 =?us-ascii?Q?udoFqWHilSfUH13k9Tf65i69POPfoEN8fwzDR+NUSVyPg81NKXh7Puhrzu6e?=
 =?us-ascii?Q?dA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7654ef5-fb8d-438a-4de6-08dc3f2153c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2024 03:39:15.1009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jUxhL3+ckX4DwUSbgu9tPOqAD00uIMCIr8TZYOMqBvoV/5crsxuPs+vobusPDo+7oslSs3E1PhL9dnS8qJrOfaMGk2oGhguESx4ufe/XJzg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7294
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709869163; x=1741405163;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c5OGle1jen/Qr6K1i7k9jOnp8XHGTYw1zkGMu35IOAI=;
 b=Toiw/LFzkaJfxNwD1DvvubzMOhii2/13UkhUJ/8pLnSt3GYJJg39XM/8
 SPLH6tHL5cvdRzFFkUQpviuXNbOOs9u4nTRwm1WfU/j5P0A3WjI1rj32K
 sJtK7MR1y8ftjeMWK9PacleH5do+rwTg41ETIylityIbOs25PcimeeymW
 vqoKO+9tGmVxiwDkvsBpv1QHaBkaJ7Xb7B9PXbAgDLrH3bCJsajKepHxr
 x3L7MkiWigqiFAoFEpJQXbYr/amHxbnWi0yo5loupry8WA3b//YKeHrUH
 NVhwBDzPsmXUI4E3/y9x8wXGvW4Z+zPygpFfmvZyWi5SWiLgVlJunbDZ7
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Toiw/LFz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [xdp-hints] Re:  [PATCH iwl-next,
 v3 2/2] igc: Add Tx hardware timestamp request for AF_XDP zero-copy
 packet
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
Cc: "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "Bezdeka, Florian" <florian.bezdeka@siemens.com>, Alexei
 Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Eric
 Dumazet <edumazet@google.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Yonghong Song <yonghong.song@linux.dev>,
 Shuah Khan <shuah@kernel.org>, Mykola Lysenko <mykolal@fb.com>,
 "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 Daniel Borkmann <daniel@iogearbox.net>, "Gomes,
 Vinicius" <vinicius.gomes@intel.com>,
 John Fastabend <john.fastabend@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, KP Singh <kpsingh@kernel.org>,
 Hao Luo <haoluo@google.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eduard Zingerman <eddyz87@gmail.com>, Jiri Olsa <jolsa@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thursday, March 7, 2024 9:39 PM, Kurt Kanzenbach <kurt@linutronix.de> wr=
ote:
>Hi Maciej,
>
>On Wed Mar 06 2024, Maciej Fijalkowski wrote:
>> On Sun, Mar 03, 2024 at 04:32:25PM +0800, Song Yoong Siang wrote:
>>> -	tstamp->skb =3D NULL;
>>> +	/* Copy the tx hardware timestamp into xdp metadata or skb */
>>> +	if (tstamp->buffer_type =3D=3D IGC_TX_BUFFER_TYPE_XSK)
>>
>> I believe this should also be protected with xp_tx_metadata_enabled()
>> check. We recently had following bugfix, PTAL:
>>
>> https://lore.kernel.org/bpf/20240222-stmmac_xdp-v2-1-
>4beee3a037e4@linutronix.de/
>>
>> I'll take a deeper look at patch tomorrow, might be the case that you've
>> addressed that or you were aware of this issue but anyways wanted to bri=
ng
>> it up. Just check that you don't break standard XDP/AF_XDP traffic :)
>
>This one doesn't crash standard AF_XDP traffic. Don't know why, but it
>seems to work.
>
>Thanks,
>Kurt

Thanks Maciej and Kurt for the comments.
In stmmac, xsk_tx_metadata_complete() is called by generic tx complete irq,
thus causing the NULL pointer issue.
In igc, xsk_tx_metadata_complete() is called by ptp irq,
and we use  tstamp->buffer_type =3D=3D IGC_TX_BUFFER_TYPE_XSK
as a flag to check whether XDP Tx metadata is used. Thus other data path wo=
n't
call into xsk_tx_metadata_complete().
Even it work, but I think I should still add xp_tx_metadata_enabled() check=
ing
for safety measure. Any thoughts?

In case Maciej have more comments, I will wait few days before I add the ch=
ecking in v4.

Btw, thank for fixing the issue on stmmac.=20

Thanks & Regards
Siang

=20
