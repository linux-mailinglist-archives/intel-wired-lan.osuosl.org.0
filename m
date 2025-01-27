Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A296BA1DDA7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jan 2025 22:00:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35661606ED;
	Mon, 27 Jan 2025 21:00:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qwGKw6OhLyUL; Mon, 27 Jan 2025 21:00:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 814CB60677
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738011605;
	bh=mJZuK/xEQjHMcZQczUzoNN8Iv5jO7DD5u2y+SavX4TQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qLzvDeQv3mN/bq1ZiNcnBw2pB5oq8QHeke4fd4ZTRYxtPBhMJplvpnusbjMobhkv6
	 pXO4/Ri9e8JrdExMt94iARSEFOfz/bAMXWlqcHMtbOiNO2yxdE3gOPIoHFK5K70aw2
	 0ijtzQmnqGgTCGte+I9yg/BQ3uirh9wz6GkRGNxS623q5FweXbRMgT+041Eyw/EhW7
	 olnoxt2u4VYcvdClTtjNYez1BH4pYlTyjZfoJ8WplimvdVm+tZp9QiuvyJtpdJ6cZ2
	 /PDVcMjvlFuB2w+G7uK+U2sVcBzeaqfFHxw9EZWZNuBx/80vyJRBez9LxRX0cqsNer
	 /sxq9JHnW9acQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 814CB60677;
	Mon, 27 Jan 2025 21:00:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EA06994A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 21:00:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D4A754041B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 21:00:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zca8iMgj3zY9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2025 21:00:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B69E140137
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B69E140137
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B69E140137
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 21:00:02 +0000 (UTC)
X-CSE-ConnectionGUID: +YOW5bgRSfeychsE8NZ+hw==
X-CSE-MsgGUID: 9h+q6iXiQuum6tANJX5f1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38370175"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="38370175"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 13:00:02 -0800
X-CSE-ConnectionGUID: BYN+vZg3T0yg2HhnpEa/tQ==
X-CSE-MsgGUID: 3U1ghDe7Q2+UBFM1S+2TxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="113555105"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 12:59:50 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 12:59:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 12:59:49 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 12:59:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ylJlPwfEgU63z2zkKlyh92lxgaEHFBa+8YbRQUPD8H3eQL4m5pOHJKYS71w1vvLk/2MhNo6pmvZ7sf/iP/u85XgrhC+nyAyTns2G2m3t/t37peQg5tmrN6JMNnC4PSnACxoNVEutzdnmjtlZZJGONqyJu7TEv5eBUCRsit+RY/JAQyTZ3VwJ8MgLduLjvuAjrfd8yoNpjq8qq94kmTX3nR8hCD/oU1MIW5UpVfgPgX4YGTyjGJWQJdEapBpDge0rNsrrhKiOU7uILROWrSRiIgXPHkvy3hYD6f9KYAfQzJIAjUqPwuG+rV6sOo/78gFcRwEsuqWvcFI+xYy8A1F1ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mJZuK/xEQjHMcZQczUzoNN8Iv5jO7DD5u2y+SavX4TQ=;
 b=XDVYqMI9vS0avjXlJqpY3yJjgNkPkFmR0Lrkuin/pIQE2OZnnW/GaORIAL3HLBlojr3ydvjoWvOCaoacfh9gsNJaJt0AgfalXpfMxLqWTOYLgjt9z08TbRi7Yyvf2o7vmP89f0MVx5yXC56We/eVBoq9CoWZp1U01szUNcT/HhQI6MrfErQE81vXlf3hMnMqsxrTd7AEwixdTeJKWUAhPAU4i1mYgiy9RY2lmwhhP6u7pvwQZSXmSCLihQib8Ic/liAbTzv3Dt3ezR5sLdEKx2UA9QyMkPONvie0ayKtTznyqGTnlFEvWWFkk2RHekknpaUfNEd1YRvQqbSI+Agogg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CH3PR11MB8139.namprd11.prod.outlook.com (2603:10b6:610:157::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 20:59:46 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%7]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 20:59:46 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: fix handling rsc packet
 with a single segment
Thread-Index: AQHbY7izNEdLTrbDd0uKFcqGErDNv7MrB5xg
Date: Mon, 27 Jan 2025 20:59:46 +0000
Message-ID: <SJ1PR11MB629722DDBB8E0977B90ED80B9BEC2@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250111002921.167301-2-sridhar.samudrala@intel.com>
In-Reply-To: <20250111002921.167301-2-sridhar.samudrala@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CH3PR11MB8139:EE_
x-ms-office365-filtering-correlation-id: 4f8a3905-dd6d-46ff-55c6-08dd3f158827
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?WDVynqe1AxhA77ZHiB+OZw8IMzts0EoXtfn10te9XQOh7K6ZN4ZL7XvhbPKU?=
 =?us-ascii?Q?13JKq9gPBZHMd8boOKqFTqBA3uSY6XAx/aaezqFg1RxOlsMRFyrr3HE+o64l?=
 =?us-ascii?Q?0MGBVOx1HRNy+AbIcuboCbaFYwXNv2nKe18JchpKBr5Db5wNuX6e6MsajSis?=
 =?us-ascii?Q?Xi7ND2dcY4T8wAewzj8FqTo1G5XXw9kXC31NXuCWap3WDNbtrdjbsb0/ZV2p?=
 =?us-ascii?Q?JJXi5VOQJrJbzotv1PFgqVk3+muWHb3kk4EjkFJoES1v7NypXBz4cvYDWQsg?=
 =?us-ascii?Q?u7rHA70jWb3Mf6LTEJ7dp+PNAdxNAj+seysBxOUaTP7hrudGLMoie2L4qJ20?=
 =?us-ascii?Q?REjagIXikAKQqM+bwzRprfkmP9vHEjC8bii4kTAqkHvv3Fc/gujAbNxTKHVC?=
 =?us-ascii?Q?ZFyh6fDavyGbh0hng0ShemgsbQJf0vaI/ZMdCMV34F88wDF6UoKgN2AZP67o?=
 =?us-ascii?Q?DI/e01v4q4kIqxLdIKSii467u4aTuxvR0HD4V5tpqeyhjoZXws+dKyydOKpl?=
 =?us-ascii?Q?YP406c/aH63OGlFdPqzNOkdONbjhSzSkcaGe2xSWA25oUJccGaX7UhdXE+QH?=
 =?us-ascii?Q?D73ck09EUXECHC5yjI1mlZ6cVRm+B+kaqc6qRjoAmUGsbX04yKbJWGQEh9i7?=
 =?us-ascii?Q?G28J5fmJghO/yt2ZbNuB5CLi/soHuSMYgi+xKNWpOHFFwmOD1w0TjG1EU20t?=
 =?us-ascii?Q?7v8mhjyaujT5El+ck9LaP5nkin2P+3yGJpRa2LbBoMNcoch3ghsIEba4sZay?=
 =?us-ascii?Q?VgEQ0fd+xKZ/c4kY35tc3YA9dJpiZ05GGyfRhpIVA+a/2duJ4M4UH8cdW0mP?=
 =?us-ascii?Q?vToeUF6fImGKwEMbDqc2qWyDCeq4fSMzAAOo0qLBwX3fO8ea5C8V90TUEFC3?=
 =?us-ascii?Q?fQ94+4joomewwYaVdtwCim61f+NfXvXKxBqFrkD3D2naXK0W3r4+RD4CIIMw?=
 =?us-ascii?Q?nv/9NZZTT8XPTfe9nvwujLQFS2XWiAmltn/RQIwJZC2pYEZmTYNUNMtJESCq?=
 =?us-ascii?Q?ywxAawyrc80VlbSZgBUHS2G25tMMssWOxx7lz1CLzFIRNkFYMTlIB9uolN33?=
 =?us-ascii?Q?AgK2Vx7CBj790VsP8+s715TZ/wlLRCXyz0jjqgOEaKQ2EN7cYk00xZwqy237?=
 =?us-ascii?Q?EN+zL6yPnMyOVDIU4zVEjtgnFbryL8QHf0RG9raj9Zr/TzihkAt7+LFR7wKm?=
 =?us-ascii?Q?XTWgWRad2xno3KyxJAfc88muyM8JVZ1+FbNHs95BGC0SkcFNiyijVh8jyj8t?=
 =?us-ascii?Q?xlgVWilXD0Gglz0/i8wR8k96eh+oBX6yYZUoDDGeIwGgbVkJJLyMKYiECttA?=
 =?us-ascii?Q?mr88BnjmH+BwZeXz5vIiKON1hQPxeYJRMaU6lbQAteeDhd76Rs5kkx6e6N/w?=
 =?us-ascii?Q?sJsAnbMJ3iZyrqwWif5XgaJ3RXlj1oVVzwI1Jj5CwuvkFJoDElJbSNwBIJ+n?=
 =?us-ascii?Q?oUemaiqDAJuKN0hmVY3rkt0fItN+gJg6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SDB2ctKKyOxWFSaI8BMTyLPZwIohI4SlLaSFoMUmM6fUdAkD6KbkRCeqHVX8?=
 =?us-ascii?Q?LvsKfA5xbew68d9I4WbpWB5W4Tw03dNUHH3+Xog9LClgQ7Dfl6+d5BQMS6wg?=
 =?us-ascii?Q?SSAaknGjpFOWaF/KG+aOl0CA3jxw3fbwZsLs+P7lm8GggTZ0/vFk+x4+cier?=
 =?us-ascii?Q?NwuU4CeKAP4C5uHUtZiKH8cPe4BaS2N+hkCg9+RGtF+oK+LWP4036w5mkBZd?=
 =?us-ascii?Q?u/DmnMHq4fncTqM+wwz+sNg2529USSbEcgL5CLMT7ddVkq1R48urSBQJg/Ic?=
 =?us-ascii?Q?YqpIONI8iuj6KwTGjWDNX8+bbTrM8B4hlFtu+R9TMgx9eKriFoadZ4cFSEby?=
 =?us-ascii?Q?a6lkoYeLfErkYcaWNXWgOcTriRX6AtN5JRf87v1qnNrA44pDE20XrPiR9aqT?=
 =?us-ascii?Q?2Ue1ZtqWv/Ym7/ilZImEWWw5tywov6oAEZA8SHUhtJn495YhR558z6uSATBJ?=
 =?us-ascii?Q?+2wGHZXv7gWpQ9TB4t22rmWL+CbmDMLMQQS28jsApCnA9TRcKSHo5K22qZA0?=
 =?us-ascii?Q?oYDXa7HiPNlrAus45wPjSrM7UHET29AcDUMWaSWHJyH5DGJNQPDQYt7OM/zy?=
 =?us-ascii?Q?17vruSrdNm4rXdiCvgR1hR0Xe2Ge8d/BsY6s2B5lMyTI7GKhpJ+DJOxYIkDR?=
 =?us-ascii?Q?ElqUNRqrUfg0y3/4mZS6eOHAVtvdGMxtKX2hdp35zIDDXrgOZBe8gb3ICuhZ?=
 =?us-ascii?Q?MoATjo/uWIT0oiKo+YntbOQbqoEPmwMoqd4EaY2S8o7i8grG8xshFyRxHOC/?=
 =?us-ascii?Q?roxHobDexNNVtGoj6ExXKdBd3Lw+XQg2FC0azxTUtFob+m4yyySvVEpPfH6f?=
 =?us-ascii?Q?eHp95WTlvbReryozuSlUa9olyvQVasL+eicgIZPTW+AfX0baO/2W/7FE8A/k?=
 =?us-ascii?Q?SQCR5ZHmNJ1HkOsQAfPqHt83P+YgJaBPeAZqxXr/A9610Lr2RbK9afFbxJCZ?=
 =?us-ascii?Q?sQQD5te/pFN3otIstgcuMvgcknzBuhyu4VOYFfo/47WuSWWaGBZcxg+d6d/2?=
 =?us-ascii?Q?IlYrOed4VQ/XlbnWUdO4Vi6qACeTTar/b5hwq+wMALifkZVwcW5mlt48OwKU?=
 =?us-ascii?Q?FblhYw/PiHbsNs6hZ1CBfJA1HOVfV7ku8QcYIrxH5/FguoDLQ2yyuPkE2fBj?=
 =?us-ascii?Q?hCLQXxUCirM3SlyI3fOTXQxhBQv+SMuzXKWVc40PUBQjXvhvPhptYO41foNt?=
 =?us-ascii?Q?eJ7yR54ZSeC+4ItdKUiBmQPGECV2EDs1V1ZqXNFV50mBxIud4VDiMpruMaOZ?=
 =?us-ascii?Q?Vl3YMbuTHcXLM4+xvBrJ0izIANS5a5Resl2G9CnRA7PtPvuHDY1XHIe1OAIX?=
 =?us-ascii?Q?4TNMUOwR7fxiQXJBcRs2SAfMJpMyaSzB9qbmyoqh+E+tDWefnX3WP7dIA1ya?=
 =?us-ascii?Q?xUqdH0KxYLgDR27AJgnmj3OGPU6lni0v/1+MDrrKfbOdSddxNp73oAlAx6NR?=
 =?us-ascii?Q?NY4rmV2JmtaEQLNZoRsHZ4FauIeOPJWOrPeg5nOtOMnxeIlFJXRC54WiVFat?=
 =?us-ascii?Q?DkMUrTUHQwVvYEXNAflmeJdtbFO1oHezOg8tGAh8mBRnCNEJoqPHoTySDf9s?=
 =?us-ascii?Q?2kyN1XHJoVAvER4O4o3DqzKEVMrGPZBQ5z/5t91R?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f8a3905-dd6d-46ff-55c6-08dd3f158827
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2025 20:59:46.7187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c9yf2alDB5Kl7XtGOw2FdEWCHQRRSkoJvff71DAURew+eEI5DKjV+9AWVuLDv0C3PPgxCktNuFnmWr95J7tL5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8139
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738011603; x=1769547603;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mJZuK/xEQjHMcZQczUzoNN8Iv5jO7DD5u2y+SavX4TQ=;
 b=Lb93YVlqaJPok3f/nuD0T+EWZre4H8gmmNGkbxbVbhBFE/j7N5u8zgE/
 NG0zy/YkeRTJUTIdCVtcvrRXAnVMAwHU8LD98mrrVdO5AxvdcZHfXhDzm
 BTnp38iwNBsh2r0Wwb5Y4423KxCJ8ow0X7XsvNnu60ooucjuABbAzQfJZ
 BqrvhVP+xcgh5YBz8XtQRsmMYYihZKOXJsizovZaGEI5JvWMCbm9O8vvH
 7s2nuLEL8LBji8pF+a+NlRExskF7jmCf9D7eVBJ+6bkLp6SWMJPhYPMSq
 IzW+DPfQt76WQtfQzEiQw0cHApCbjEeyqw2VLpjloHBtYyny5xYBDv1Gw
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Lb93YVlq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix handling rsc packet
 with a single segment
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Samudrala, Sridhar
> Sent: Friday, January 10, 2025 4:29 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Samudrala, Sridhar <sridhar.samudrala@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix handling rsc packet =
with a
> single segment
>=20
> Handle rsc packet with a single segment same as a multi segment rsc packe=
t so
> that CHECKSUM_PARTIAL is set in the
> skb->ip_summed field. The current code is passing CHECKSUM_NONE
> resulting in TCP GRO layer doing checksum in SW and hiding the issue. Thi=
s will
> fail when using dmabufs as payload buffers as skb frag would be unreadabl=
e.
>=20
> Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Tested-by: Samuel Salin <Samuel.salin@intel.com>
