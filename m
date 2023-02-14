Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4CE69596E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 07:49:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CE1F610DC;
	Tue, 14 Feb 2023 06:49:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CE1F610DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676357380;
	bh=WQAGMvrskZY7RHxxKwrNdm3mdes6Q6rKTmxHbPJjn3o=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cXlVghmK/xQMOgfUqA0eQwN0mUe11BC4oB5viXQKYPxn/OG/XMJkbvqwAG8BrlGHf
	 5UgV+CeoFIItjDLf1IylppfCFwYaHLvClqqzIC4CgNAzRyauqiL1UeITLjVuCqzbj4
	 1283/AwnKOKE9rVfi1nMf40LahFiVGt9nMSjN1AMkOHfd0oAlRfglGfyoRGoXk3H5l
	 2cHjZeIriFYf4qN9tO8rhpNIqIysoL9rJ1tHF1N09AThtNOHTdTF3c+V6ym4+VSFlp
	 dtqwpdXM6UwdtTqETi4yGhUcKUIqXb8GTsCrZWmbUAYWLTtxYc5ZwAGxARPBfU6bnF
	 Dzn8bqhVXHSPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bcINmc5TeUP7; Tue, 14 Feb 2023 06:49:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CC3660AC0;
	Tue, 14 Feb 2023 06:49:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CC3660AC0
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DC7291BF307
 for <intel-wired-lan@osuosl.org>; Tue, 14 Feb 2023 06:49:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B466A81448
 for <intel-wired-lan@osuosl.org>; Tue, 14 Feb 2023 06:49:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B466A81448
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W6TWX0XOB9Kb for <intel-wired-lan@osuosl.org>;
 Tue, 14 Feb 2023 06:49:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EFA2181410
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EFA2181410
 for <intel-wired-lan@osuosl.org>; Tue, 14 Feb 2023 06:49:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="311454012"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="311454012"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 22:49:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="997970142"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="997970142"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 13 Feb 2023 22:49:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 13 Feb 2023 22:49:31 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 13 Feb 2023 22:49:31 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 13 Feb 2023 22:49:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HhgJ+oEyF7Vq8lWlpjElAu+tPx5k3Q0GPNO2K7/Gp2wQmQVI99k6VlqJOTVqD8GYRrODTjK1zAZWhW54AFUWAi0F5p3UIXFWncaD4e20zJKxjNbuCftua6X3GNgVt8Q0No7vIw0iu3SpPOGh3nuXZu+XTysRfcZKSfBJOoWVpNIKtVLEH0gtO0+ysUoBPLuuelLi24vOCjDiWN6ibAAdNSXGZzx0HB/KsYPU5Ceh6WN/OyBGkVeAmeo00GoJz82x2l8a6UsLNbznH8Mh4sNNw6g2Y604P9b77iXje+ZbEWasfUhA7gacJ6Xn80YfCIQe42J+yTm5pdu8MOOB3kaLVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O3HhBRuxtbAW291FDM4OoZ0JNT61N0djzpVYwU6QFwQ=;
 b=Xeb+FySWC8eaksutT/Jq3SS9V+NZ2pCIUQqAOXDjGJGhq+CBLPFFkxzpwA0Md0/Ej3mKOaBUq7PjjKA8l3HyVAg/SWeGbqb3oiaqAbQKIY3jXGwvO3WQrDoHXr1YguyFwoZlbLgTjBGbMSjpy/XM1cJt3OdBzbN5Jz2+YeEPOsM6JPEQPjsymthYvyWtdCzSjGUlNOPow6g3r2BuJ7FGpY4vkbYZQTFl6e+18t/U67dDw4i4WIWytwK4wEqVMb1eJ8HctcdrxMohlHe9zMcVK62tTC67yMKNZpmYEdBHtgCQaEmOJ64ruHwXNDZOWkA/GmCbnssyheKrH09PWTDYZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by SJ0PR11MB4926.namprd11.prod.outlook.com (2603:10b6:a03:2d7::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Tue, 14 Feb
 2023 06:49:28 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::9d60:bea:aa32:b02d]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::9d60:bea:aa32:b02d%6]) with mapi id 15.20.6086.024; Tue, 14 Feb 2023
 06:49:28 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH net-next v3] igc: offload queue max SDU from tc-taprio
Thread-Index: AQHZO1WCj9YSz4Xfc0mDcrmgTyt5Sq7GGIaAgAfkbuCAAAq2gIAAAorQ
Date: Tue, 14 Feb 2023 06:49:27 +0000
Message-ID: <SJ1PR11MB61806B891253F57D3FED8603B8A29@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230208003327.29538-1-muhammad.husaini.zulkifli@intel.com>
 <20230208213019.460d7163@kernel.org>
 <SJ1PR11MB61801B3439A4F19C32ADE11BB8A29@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230213224003.1af75612@kernel.org>
In-Reply-To: <20230213224003.1af75612@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|SJ0PR11MB4926:EE_
x-ms-office365-filtering-correlation-id: 7b20e0b0-ecd9-4934-d8ab-08db0e579dd7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Yj15IeyvGQdPc3irZMHBABXdaoLWLSHKWEUIKPKcInBbRx08EbFp3HwplUeOGJHPgPTmGfzU1qZ871ZFPrdyNcWno4BDNlWn/KIvWTrSU/chpaLRt7QLzk0fyBoi7BT0PxW3wFHKhxwlmZUA1gGwEfJw2npxBKmLJnlRq735mkVp3jTGBhxGV/hBnLQJkpQ/DXZeobzhsuUQFXigm3zhcvI7dR9zo6iXrAGLZlSBo39F2zJSjLrRkIAQyxaQVVAIWkGCjWXPD52TBePNGQpgiIhkpVYU/ZcKfzXvXI5c1OWmfC2WGwKHJUj3kJf2x3XsnTpGvkTfeiHscwlLg40522nrvz3Sbpf2tC+3geU++Zltip+uvpZLZowjTdsL6z9NawFhN9SJHCv6dczND4GNPuhAOMXg/707l36L7fA1CL1Ki+8ROphcAX3pyv+bHe9T1uot1qkXQgb7ilOaWPDIc1PNvJIm/ezRxKsP2zckQWyo3xFm2yZ6ZqGBq9LClMlSoqh6ysAZNdlh66LVhl1wo44Hr86N0PgJaJ3BU6kzERRGIfC/w1fXT9KIpdQ6wsSN1pRQk+UWc4wkBSaH8Odg1285Z3WGX3ypkiRvy7DFVyo5YpDDBBmEbH8tdCe0rre9XQTIRcPdk6IVx0aqi+B0puSNw9Jpt5eiAyY2ysH3X3lycztuCeNeV8Desj0XEuASNo7Mk+rEoY6Vh0FJpGotsw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(136003)(366004)(39860400002)(396003)(346002)(451199018)(33656002)(478600001)(71200400001)(7696005)(66946007)(83380400001)(55016003)(76116006)(4326008)(52536014)(8676002)(66446008)(8936002)(64756008)(6916009)(66556008)(41300700001)(54906003)(2906002)(66476007)(38070700005)(316002)(86362001)(26005)(6506007)(9686003)(53546011)(5660300002)(186003)(122000001)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PgzoJL34/DSB7JhFPQUMkFGQVrw7PXtpGGJZI7GG79HbbbFDWyAN+thjwatt?=
 =?us-ascii?Q?A8CNNoTYTUDkS8qOZWqdVPvMiFA4dAd9d+8g2bdOsW3vVFbO7Whq+/0Fcujw?=
 =?us-ascii?Q?xh0i1dO/SKphyHoGau4RXUAwnyjDyTvIFdWcjwqVlCUjjh6cqN+aRHmtlkf5?=
 =?us-ascii?Q?P8Sj6syVB5GqGh8qMdjlRX7w0uZV7uhLdmK3JmnIHP2e0Tmb8pONhqhYZmTr?=
 =?us-ascii?Q?V7QVfyKfGGJ2wGZjEQl9TSD7X33tzAR2zkVwutRHGh3/Lr+TLvtNeVjyX3cB?=
 =?us-ascii?Q?oT/wVUVdn841iEclNvWuL+Hbbao1+2ANimrsDcUKrG1Gfw630GxOts0vfurI?=
 =?us-ascii?Q?7H7OlbHSKWewimUZovxLLMFHBDQ8hyw1PdV2MohlgmJuz7M571zGYbkM7K+T?=
 =?us-ascii?Q?4nCMtDA9sQnk4/8ivuR/KyTIn30N5SdQphXWj9CYlKbnu60eiB5Hw8mjbkOp?=
 =?us-ascii?Q?OUWR7yQxw6qRhazr9uiXxmVM2gKe+ekz8Ig1jhsGlk0hoNQE5nMYrYRbd5cl?=
 =?us-ascii?Q?W6v01fTktDOXOYo23cGdzXj2khJj6RFdgAQa41wXp+izBeeyFlTn+z2+G7wz?=
 =?us-ascii?Q?TGV8WG+5dwbj77+Pp9e/c7kWNh+ZHgYx42h/XOR9B1S7k884o4m6MJMcpRqO?=
 =?us-ascii?Q?nbgMEXjv8ri3omgzMet2lWnikZWWTXy4aEtOwuoVq1eDmZLf2yaC6GQCqnnN?=
 =?us-ascii?Q?XWA9DbqDZaL5r6fMgtOwNl5s40ZMrVQ8scidKPNK3X04EJgeD+4rLxC6tlkp?=
 =?us-ascii?Q?lUHDTDodc/7J2cXdPv83iIrzlHnWjPfpW9m0785UPk+8RVVQa8mmHhJy/POb?=
 =?us-ascii?Q?Uaw7cTEDZ51EOW1A4jl3GniDD2cxW6lDLzVcKh3cG5e12FD9INHl33F0eqg0?=
 =?us-ascii?Q?xltIWmkrw0cCwwU+liaPYSW621ZwssQYjp1+KHO5KzWCQQ2pvPyMoxL1Wcjv?=
 =?us-ascii?Q?HVomHNd1gOH9X312Vg2ud90z4BsXn1iKGZEjNv4SSB6tfPFIOt1VFpF4y5+h?=
 =?us-ascii?Q?U44+0tzmLI3eiZLSS4ZK102Nk172tSrgnIXCcYCcIHtCwEImPQf3hCZdFF1c?=
 =?us-ascii?Q?JT6I7ptGmSNIwb2ayt5NeqrGLHb5yiLMxPl0hbpHMsF/qPr38yfkTCZgvtnG?=
 =?us-ascii?Q?RTxni1U2oa49GPnAeNGkObicYjXJnwGY3W3+B6j8K0CC//Ef42TnoWaDgOAf?=
 =?us-ascii?Q?QHC5ejnOMVlZsyRjVL1Oz+cy1bC8q8LrCOvpE+oNeThIWh87VwXrSET/OnjL?=
 =?us-ascii?Q?HPyO2jTK+bhWwTTdGGKk0+Ru6BpAyHk3UkdAoyTzGBWXJ85fC+RXWakuZczq?=
 =?us-ascii?Q?/UrzInjQTPBMIvMan1r5c/vABWb26I38el/WndL1Jy8hGx+7cwBW8paLLLll?=
 =?us-ascii?Q?gkm8MOGhNqO6jaWZ57UYyL3gx4dzUu2uMMDjMVpWKC3JffxcFeLFfoHGlvTV?=
 =?us-ascii?Q?qLfzmGaUxuqtzGv8Bb+tW3sR8niQGqrFzFccyFrmi8zlgO8cNHJ37OEtFt6/?=
 =?us-ascii?Q?0PASzGOCBFX3rqoqR1UFcztBsj+J7dnbh3bTnk+DC9AQTgs46dwYwwJb5Uq2?=
 =?us-ascii?Q?MjRZoTrJ9B2U88nD9vJK5uWpCugtBPCPaUSGT7jFRx7KjbIAX16ksaV0OWlV?=
 =?us-ascii?Q?TNOpUXvbDTMfLCktctRTL8c=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b20e0b0-ecd9-4934-d8ab-08db0e579dd7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2023 06:49:27.6014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MqA1XCqgyly6FNVxqs4LRsZFseL+PZ/6o2cTYfAY3C/rJCxWv4gfuQhUBkwta3HD+62TDsT3ecH6dLnTykwr724nMHTaPfgEkh58yxQAfaaxnEyurPVrx52m2BjNV1Qj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4926
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676357373; x=1707893373;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2OeMeojy3WysWLTJQF6BLhC7FWp7599bp3Ibwb4Ci28=;
 b=KidjmWqNJDNsxo+46uCCl8qTkg0nLXUtx6WwvpQ8Wvj718V6D7px7ibq
 LMH34gAiI0cCCLjoL47VE4tyAA/badQUhsQo0N/cBAKPs0n7Q18+wwmMV
 aqzTQrx8Ow4oldrRQCiSUsrUsBqmu7glx6DMhxBZ5SG4cOdHrDJESpM8x
 Twe3TNuQf3adZinUPHXSp78yO2GoNoP5AyJFCyoLiGZlJERO+c2G2bga2
 SIZIxV+Aadb2I+E5U753dfxIE6KwMI6IoYLqg46g0HAP88Pk4OqgoLzCM
 UCor6RIhElSYfKsbBslWCvK6kUp2V17G30iUlVoN6m6mHxy3zXgXgRF8x
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KidjmWqN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] igc: offload queue max
 SDU from tc-taprio
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
Cc: "leon@kernel.org" <leon@kernel.org>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Jakub Kicinski <kuba@kernel.org>
> Sent: Tuesday, 14 February, 2023 2:40 PM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
> Cc: intel-wired-lan@osuosl.org; Gomes, Vinicius <vinicius.gomes@intel.com>;
> naamax.meir@linux.intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; leon@kernel.org; davem@davemloft.net;
> pabeni@redhat.com; edumazet@google.com; tee.min.tan@linux.intel.com;
> netdev@vger.kernel.org; Neftin, Sasha <sasha.neftin@intel.com>
> Subject: Re: [PATCH net-next v3] igc: offload queue max SDU from tc-taprio
> 
> On Tue, 14 Feb 2023 06:27:17 +0000 Zulkifli, Muhammad Husaini wrote:
> > > > +	if (tx_ring->max_sdu > 0) {
> > > > +		max_sdu = tx_ring->max_sdu +
> > > > +			  (skb_vlan_tagged(skb) ? VLAN_HLEN : 0);
> > > > +
> > > > +		if (skb->len > max_sdu)
> > >
> > > You should increment some counter here. Otherwise it's a silent discard.
> >
> > I am thinking to use tx_dropped counters for this. Is it ok?
> 
> Yup!
> 
> > > > +			goto skb_drop;
> > > > +	}
> > > > +
> > > >  	if (!tx_ring->launchtime_enable)
> > > >  		goto done;
> > > >
> > > > @@ -1606,6 +1615,11 @@ static netdev_tx_t
> igc_xmit_frame_ring(struct sk_buff *skb,
> > > >  	dev_kfree_skb_any(first->skb);
> > >
> > > first->skb is skb, as far as I can tell, you can reshuffle this code
> > > first->to
> > > avoid adding the new return flow.
> >
> > What we try to do is to check the current max_sdu size at the
> > beginning stage of the func() and drop it quickly.
> 
> I understand, what I'm saying is that the code which is already here can be
> reused, it currently operates on first->skb but it can as well use skb. And then
> you'll be able to jump to the same statement, rather than have to create a
> separate return.

Sure. Thanks 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
