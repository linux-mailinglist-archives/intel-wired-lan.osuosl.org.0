Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2465CA4EAB4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 19:10:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2E2940BFC;
	Tue,  4 Mar 2025 18:10:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OxoplzsJ7BJ1; Tue,  4 Mar 2025 18:10:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65C5B40BEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741111827;
	bh=wVlEhrh87DljKc7z1RdVSNyaABLdJC7cq0wf89a4j+Q=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jegrCmxgwQMqZgt3En7gIwtoigPhPqilNNNsXGJ4dEzXJEhPPybI7peicCsmuAF+u
	 4NEwxVZn75f2BsQuT0XVmCXpXYIkJKzPivt04hLWBrauSZZwaXXR4AQjI0dzXdgcGe
	 1/tCPuH+p3NbxIH5Y0evEU6OeXANjjwAvbFZQnUtQ0wUwyhI1uFTQ2W8FOXVX0YWLO
	 F5Q0TmII8YngT3q1B9wNReMAhqWXMkISIRmqG0Tj071sz0kXd1Nrp6pLOoYZu9rNxU
	 0GQB0dGcGrNOOUZpEGVzgqYgZabyAqCMe4GepX6UToL8Vvcf5vG1N7mdyLWNDRFC1J
	 zzI1pXrm+K3XQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65C5B40BEC;
	Tue,  4 Mar 2025 18:10:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 984A3944
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 18:10:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 73C5C40BD8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 18:10:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UJBo_jJcpwpI for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 18:10:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2976740BD2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2976740BD2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2976740BD2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 18:10:23 +0000 (UTC)
X-CSE-ConnectionGUID: IeWLz4OETh6i1A4LdK0jFA==
X-CSE-MsgGUID: TOzDTcCCQ9iSZv0anvrZHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="45696686"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="45696686"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 10:10:24 -0800
X-CSE-ConnectionGUID: DAmpFdEtQHGLF5LDFyC7Jg==
X-CSE-MsgGUID: Lp/g7o77QgedtJG+qPtB5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="141689786"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2025 10:10:23 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Mar 2025 10:10:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 10:10:22 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 10:10:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J8nX5xFrBjqIeQ8jIH8ktjUwlZu+9gZxt7hPGvpv0cR72lqFV7hKKslTs5x8q+/DNBUBGZHSaAs0SX6+KhklMydeKTaI6m3GBvlXrD2EVJi7KW2rolXfKUouzB62N4qqtdWu3ZUNfpyNFJ7jrUd0hfSR8oQxvE9YTGqyGSrDfOgLGdVBUwdDORd+CZMxzALy3V8zgNq7YnJIdeIBR+CbC4ZyVjstB1riVBDfC0Hvup7Dx+CzbaENkijXW0g0nfd0JY3BLRi2Jx3pfRxICFDenIEj0psSwuvjl638X2EdNPbbWAJvJLYfacGKhAzNqi7YVSOMDhnleMZLAfMOOKMYjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wVlEhrh87DljKc7z1RdVSNyaABLdJC7cq0wf89a4j+Q=;
 b=PmztBFaiiT/I9q2KqZrr2/1G/GTC5jrH1clRlLGZjeQoDPOat0bWkkEHEv8nEqYEIq2L730V+yD2Wvq7fAw96kcsH7BcMyyHfg0jZQZTu0Vl2AzfkxNI+ErjtX+IrcphxW4L/KAYV/JuEL9IhvSfoYswhuHF+N3tmAktNVv//IKQkKcYqbbPS9QKhPwE7v0S6rgIA2QDLvLP4KOweBCkBqOI6ROpKVHhThljIqDJgs1O2FVsgsRb5trhuF9mQ3jtkDvBBz9XWluJy/Nl1vxOkvPiFaj4pD1rpnBhffH9poJ3csy82dsmJRDuw4ssXFmuqB+xb3GhoxAYI53wFQMErg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by DS0PR11MB7507.namprd11.prod.outlook.com (2603:10b6:8:150::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.16; Tue, 4 Mar
 2025 18:10:18 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b%4]) with mapi id 15.20.8489.025; Tue, 4 Mar 2025
 18:10:18 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH iwl-next v1 3/3] ice: enable timesync operation on 2xNAC
 E825 devices
Thread-Index: AQHbhF0U6wH9W8VfsUW5ZYYwFA5QcLNYJHUAgAsxr9A=
Date: Tue, 4 Mar 2025 18:10:18 +0000
Message-ID: <IA1PR11MB62192F5441675B36591E0E0F92C82@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20250221123123.2833395-1-grzegorz.nitka@intel.com>
 <20250221123123.2833395-4-grzegorz.nitka@intel.com>
 <20250225150440.GZ1615191@kernel.org>
In-Reply-To: <20250225150440.GZ1615191@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|DS0PR11MB7507:EE_
x-ms-office365-filtering-correlation-id: 3efe4ba7-fb0e-4be8-7f02-08dd5b47d246
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ZLlwlb4g1s0CrxWr1SwhS1rNyhJGTtTHIj0SwKp+7/cqjkbC9OL5CbB+ZU25?=
 =?us-ascii?Q?ne+ISNWxZCla02ZIvZuigLNg7OIrb0YUmOdtyOuR1e3hvSsnLEWpH4GasEZ+?=
 =?us-ascii?Q?kMJA8hLzUtll7PhJSOVd6BqmtQ0XKDXm/iEagnMa4LeEG9e28wXwN6XmkGlx?=
 =?us-ascii?Q?UMFkVHuubUUJGV3B06uWsWjprC610+2crOgfTMNp+U/m6XWUJpfAEODUfS8g?=
 =?us-ascii?Q?WSWb6fEboEZY1ddPVFFXEQCetzMV1wa/VK6O35a/osWCbX18jB2AOULuvo1L?=
 =?us-ascii?Q?wDD9OVVz/fAkHmdToyaTBWCxPG/QodCjk+rs8WrzD/OFO9ejvVI9AGUWnulp?=
 =?us-ascii?Q?YbvvbtgohXeJW2gMBKXWHMUYyatlloGLfYY9vKr/ocTb8a+tr89EWrUJyn9E?=
 =?us-ascii?Q?3KpWLAMu0UBnCy4kuPpuul/w8Yjs0yY9ropWPl0NmAcfFrztvRhfSxCj48PB?=
 =?us-ascii?Q?nQJEtfD2VA5IPvSxZ7RVdnV6m5oGq/vDtiDVKhwuSVKVyStmmk/iBqtphtrh?=
 =?us-ascii?Q?FqT/sYcyypD59MZUGOOJDensse/AkzK/MhfBeqKZ7EQLr6QTG62FS8yijrTo?=
 =?us-ascii?Q?9beiC7pU1FZzA9solrVaVHB2IXzEYIlkKKlQAd2wT86ZRHUKVJs8zwVuhMvx?=
 =?us-ascii?Q?/SxjZMwIaya2bqrTu5f94/OE1LZC5AS7ILw203beBJ5IGsN9wc0pyUR10GsR?=
 =?us-ascii?Q?KLzYS9UGxRZ5Aq6SayuaVjVDO5/Z5Skcc5OhCtY0S+ZfEl1rI0O3z31uaXk6?=
 =?us-ascii?Q?DXLmT5FTPMNktk9f30qlYg3ITpaJAKh9D36qCIBAFvAozugs2pIkV7iXfrRI?=
 =?us-ascii?Q?jK586cggbCdfepflq8ZqnOi1dCznRcQLPWVYt32dAigGS+6YCZ07FmM9bNFY?=
 =?us-ascii?Q?OsItmzKsZJlVsaNuMIrWBYN55wLlGAF89Sn2ptrbLkiWCoa9cYom2KfIFMCj?=
 =?us-ascii?Q?4H29Gpe0enhe2hQG6z3nxPumsAU3agO1v8PIU9QW63tqsrEwM3sBSIrZ9ij2?=
 =?us-ascii?Q?xb5tjihPZ7PL8rUmpiG9LD6OKSNgBMdYJkF6Pr/0bSQYIWTNSb+mnn0J00dg?=
 =?us-ascii?Q?ATeq6/RqAunm2HMhpq9MrVfzqjJJQujhPPzlFYPw/nQBf3D/I920LaiTgbNU?=
 =?us-ascii?Q?cvreixVsfHUTf9stlzqsIOn77mcOZCf6xQvfq7cdfmbkhCxXI+lJ1CztQnMH?=
 =?us-ascii?Q?x8MYjLqpyb5zMBXcD8SearQsxbqIuNhwomR8XT8CXF7Zw+3gEYIkam8QU1dd?=
 =?us-ascii?Q?4Gi18u9ZSv0jyGeaBwAiIGkbIgrxM1+24XpV6sJoWKGSKrYwlhC84gpkmYoN?=
 =?us-ascii?Q?CyGpcF38cdhgt5zDfRDQpmAHEuya088lzfDhD/5qszfIYsC9kkzfwPZoqvIL?=
 =?us-ascii?Q?4oHTckUOlhDg7leY6cK4XnIsLP+eZQhNNeEAo4f3GDhUBvajJN8SbmqFFOwS?=
 =?us-ascii?Q?ZEOAjw22YfSoO05CQ3qmfQBVP3I7eK8x?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CGbl2w72khtXgjZ4CsoAXwgVbnlfWWh9qACxUDcZA9Ibxy2UtQEm6e+Aq5i9?=
 =?us-ascii?Q?eASl6dSVGjb6mdwRQdzk5+WndP9ya2W6xMt30EwWNXRgBQzGKJbCDbZqQZAa?=
 =?us-ascii?Q?xxGTobrNstm5Ul/I6vBKUQLH13ATuVr3YKEyz8ukclfECcFzq1KXS5FvbswO?=
 =?us-ascii?Q?Ym9nseNdeO2RUAAy5kbrv4smSMw/S61vUpPJOrZjA3ZLsymIkr3BGwoWmpuQ?=
 =?us-ascii?Q?aFw9tcLEhWVHIyLCT1t9P8uoQv9q6pBN3w9RwCw9bbmzQzcq5eiK9HN56U1N?=
 =?us-ascii?Q?Vg5SWGubvLVBP7neRMwFjTSCAaHGmLoC9QKc9QCGDx8As+BvJW/E78mdT0jK?=
 =?us-ascii?Q?u24MyBOj0FxltlCUA5AvWVlDJyNiJO2nfxzn2X1UkVX2CScCWtPbjdZ6UbIE?=
 =?us-ascii?Q?se6o6kKOfACxid1804uHs43r1PfpDlXoy44ZzH3dvtHZKEbKFh1fmGY7F5Ww?=
 =?us-ascii?Q?sbi4Jx4OR/8VfVQjKqbfXuXJOqsN/2D3ysX5DGOJkzdxdxjIOha1CmlW2Jav?=
 =?us-ascii?Q?9d6knzBvyPfVLsh9FPOpqeH/8uN/WskM9WFlhb+DPIkUiXwr/mxyFt2epUOR?=
 =?us-ascii?Q?5fsTFyOLUu3cCB/Eu2pbqsQFEzLlRnOu+F+0jvWWHPcfmk8VNvXnP4E+S9Z+?=
 =?us-ascii?Q?nFi8eNOZW9sNtyPwNpG5IMGdEVeN1zMTOWAn3JHowtlxpp+aC3D8YoDKtz0A?=
 =?us-ascii?Q?ZgFemKtqH6FCL7px2LGfj1n5ibURWTsW7zRBZEea+W3VC+Oblfo83Xv8vaJH?=
 =?us-ascii?Q?B+pSVRdVy2Dp+fIHcIMgTK2V3hXi0K1u1uIzBQWHqmgEAt7qXDp+BVvgDEh8?=
 =?us-ascii?Q?uw1cNJfzrwnVL6M8xn6/Qtg2LmoUEljvTEnKX/D1dBFIiZi5ijqi03aDlWPz?=
 =?us-ascii?Q?G+XWMhKl9xJru/HHKBRQ80r/qNr1ZP/QfUNLArFRD8+TcrhQFns4OZF7N9kO?=
 =?us-ascii?Q?ogMtkByk8Q+TRlOKbON1/9t5sL1wQ1zVpTY0M1znfuDKr7h1zsFxrPvTla7c?=
 =?us-ascii?Q?Au6FtteZZIBTkBsO2yEuyyxKJPmc5Js2HkUFRRaFEh6WIFqZDNMNBO+Bi8mc?=
 =?us-ascii?Q?kDMVa9FqQDnppiNbpCUV8g6xg3CDjI7b4g5yODfI6uGuf22hURU9A3qfraby?=
 =?us-ascii?Q?bQLcrj3NF3bXS+wtJRVXRd7FRd8REXCxW5PDy/VXBN1GiEIVkF8hQqhbqinp?=
 =?us-ascii?Q?fFPu9ZT9bsrvmyGV4yV33VZHI6SnIwp8cJ25a8TfoWUOU3DlAohtiLVkqeMB?=
 =?us-ascii?Q?+b6jrSht7Pc2yIv/rd7UURtRToAjypFud2TPLlTqvV7yykwxghWTuj6AgMCW?=
 =?us-ascii?Q?go9B/teXC8lYi0lvAD/UZJQnaqIrqXlEueyS2ruXml26TFt+/ZonE+wApQfv?=
 =?us-ascii?Q?40fpd+y4O3R0licwAbHREiJ9MsH27kJTCcfdbTVytyoNmm1f98bYF68psgyW?=
 =?us-ascii?Q?KsHzBtCMnJnHL1VuqfGFI49DFAgv1HuZwzbcpYv8NszUkoyATx3xob4uBsqU?=
 =?us-ascii?Q?SugQ5q3jRTDzRIRBYP/Am6g9iah4L7QEi4zOZID+2W/Lu/Q97KQzPPrOFPXo?=
 =?us-ascii?Q?pvI/8J5Y1wKFGKZxOTSibHNfLyp1KyyyMdtHdZch?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3efe4ba7-fb0e-4be8-7f02-08dd5b47d246
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 18:10:18.4533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s924BQ/R0Fekobo0jiWoKpiGD4Z+XdxNnTDf8vhzQsj6E2X6wokpwwZwKZrHv+PRVdZTX7x61YjcxWfySm/2GY7gRJHDTA/IincXGD8CiSg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7507
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741111825; x=1772647825;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=N5QFYWuFG30zzx502pIQjP8PEfgc6GDOJB6FbIa3nAA=;
 b=l61W46w1KItkmIxLmQ0I6lVr5+asr96vycI/sg+ckr52mX+In5rPTiPR
 i0sSoggb7p4zMwBAtvMVF2fsylkfNjztocIBM6R2j5+jXGVJ07DJp4ac3
 /T4QLGSV+N5pN2Xux2LdJfZO1DODH7GEow6m+TY9C41ogkKtLRQeW/IKD
 vS1OD78P/YNh/jYVFxXVOdNgAJF3IUnQfakDFoCkBVUhhvxFseJiodJ0o
 VEx/JiX4ARacMRk1PV+6vwgoTJ8mZ8ERwVAzSLC+HxoPsK4wLvJqBbDUI
 hpyzB/jmoUKh411QdQNsia2ga7YLJRocpn2mKMPmQSDsmobbmy7YPnHHF
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l61W46w1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/3] ice: enable timesync
 operation on 2xNAC E825 devices
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
> From: Simon Horman <horms@kernel.org>
> Sent: Tuesday, February 25, 2025 4:05 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kolacinski,
> Karol <karol.kolacinski@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: Re: [PATCH iwl-next v1 3/3] ice: enable timesync operation on
> 2xNAC E825 devices
>=20
> On Fri, Feb 21, 2025 at 01:31:23PM +0100, Grzegorz Nitka wrote:
> > From: Karol Kolacinski <karol.kolacinski@intel.com>
> >
> > According to the E825C specification, SBQ address for ports on a single
> > complex is device 2 for PHY 0 and device 13 for PHY1.
> > For accessing ports on a dual complex E825C (so called 2xNAC mode),
> > the driver should use destination device 2 (referred as phy_0) for
> > the current complex PHY and device 13 (referred as phy_0_peer) for
> > peer complex PHY.
> >
> > Differentiate SBQ destination device by checking if current PF port
> > number is on the same PHY as target port number.
> >
> > Adjust 'ice_get_lane_number' function to provide unique port number for
> > ports from PHY1 in 'dual' mode config (by adding fixed offset for PHY1
> > ports). Cache this value in ice_hw struct.
> >
> > Introduce ice_get_primary_hw wrapper to get access to timesync register
> > not available from second NAC.
> >
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> > Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice.h        | 60 ++++++++++++++++++++-
> >  drivers/net/ethernet/intel/ice/ice_common.c |  6 ++-
> >  drivers/net/ethernet/intel/ice/ice_ptp.c    | 49 ++++++++++++-----
> >  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 39 +++++++++++---
> >  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  5 --
> >  drivers/net/ethernet/intel/ice/ice_type.h   |  1 +
> >  6 files changed, 134 insertions(+), 26 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> > index 53b990e2e850..d80ab48402f1 100644
> > --- a/drivers/net/ethernet/intel/ice/ice.h
> > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > @@ -193,8 +193,6 @@
> >
> >  #define ice_pf_to_dev(pf) (&((pf)->pdev->dev))
> >
> > -#define ice_pf_src_tmr_owned(pf) ((pf)-
> >hw.func_caps.ts_func_info.src_tmr_owned)
> > -
> >  enum ice_feature {
> >  	ICE_F_DSCP,
> >  	ICE_F_PHY_RCLK,
> > @@ -1049,4 +1047,62 @@ static inline void ice_clear_rdma_cap(struct
> ice_pf *pf)
> >  }
> >
> >  extern const struct xdp_metadata_ops ice_xdp_md_ops;
> > +
> > +/**
> > + * ice_is_dual - Check if given config is multi-NAC
> > + * @hw: pointer to HW structure
> > + *
> > + * Return: true if the device is running in mutli-NAC (Network
> > + * Acceleration Complex) configuration variant, false otherwise
> > + * (always false for non-E825 devices).
> > + */
> > +static inline bool ice_is_dual(struct ice_hw *hw)
> > +{
> > +	return hw->mac_type =3D=3D ICE_MAC_GENERIC_3K_E825 &&
> > +	       (hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_DUAL_M);
> > +}
>=20
> Thanks for the complete Kernel doc, and not adding unnecessary () around
> the value returned. Overall these helpers seem nice and clean to me.
>=20
> ...
>=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> > index ed7ef8608cbb..4ff4c99d0872 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_common.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> > @@ -1135,6 +1135,8 @@ int ice_init_hw(struct ice_hw *hw)
> >  		}
> >  	}
> >
> > +	hw->lane_num =3D ice_get_phy_lane_number(hw);
> > +
>=20
> Unfortunately there seems to be a bit of a problem here:
>=20
> The type of hw->lane number is u8.
> But ice_get_phy_lane_number returns an int,
> which may be a negative error value...
>=20
> ...
>=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
> b/drivers/net/ethernet/intel/ice/ice_ptp.c
>=20
> ...

Hello Simon,

Thanks for your review and apologize for a late response (I was OOO last
week).
Yes, this is actually a good catch!
I have no idea how it happened, most likely my typo when backporting
the patch from our reference code. hw->lane_num is declared as 's8' there.
To be fixed in v2 (along with doc update from your other comment).

>=20
> > @@ -3177,17 +3203,16 @@ void ice_ptp_init(struct ice_pf *pf)
> >  {
> >  	struct ice_ptp *ptp =3D &pf->ptp;
> >  	struct ice_hw *hw =3D &pf->hw;
> > -	int lane_num, err;
> > +	int err;
> >
> >  	ptp->state =3D ICE_PTP_INITIALIZING;
> >
> > -	lane_num =3D ice_get_phy_lane_number(hw);
> > -	if (lane_num < 0) {
> > -		err =3D lane_num;
> > +	if (hw->lane_num < 0) {
>=20
> ... which is checked here.
>=20
> But because hw->lane_num is unsigned, this condition is always false.
>=20
> FWIIW, I think it is nice that that hw->lane is a u8.
> But error handling seems broken here.
>=20
> > +		err =3D hw->lane_num;
> >  		goto err_exit;
> >  	}
> > +	ptp->port.port_num =3D hw->lane_num;
> >
> > -	ptp->port.port_num =3D (u8)lane_num;
> >  	ice_ptp_init_hw(hw);
> >
> >  	ice_ptp_init_tx_interrupt_mode(pf);
>=20
> ...
