Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D77B2AA13F5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Apr 2025 19:11:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76F6140342;
	Tue, 29 Apr 2025 17:11:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VilmhwFPeBNp; Tue, 29 Apr 2025 17:11:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A67D40481
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745946685;
	bh=6THZ15vigFncE8yF5dktTlDN8XEfQq6oCDD9OQ9RANk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S7V1wvZriI62hXbzccXzglWmiFueQO3f4ZnhB2kO2PnvT3Usy7pJKHqTGCHJErpUT
	 TAHzIwbWs79lfZ/OnCzOOAVuUtq5YnJOipiEUuI3sv811qRvd5YVQrbU2PIypx/PXp
	 1a20d+Lys8dsKT7O6xiiPcgokNmG7CTcNIh5AfvECTXAwV/4jxWN+tD87Kfh7KGvGa
	 u2E+4GZgjRDwtLZWzptGLxACitHg0UZyWR02fk21ncHy6HUHiTc9F6fFhecoxSFZrb
	 hDl2u3WHA/JM4EPVja15hqqcjPCEwn0EXMbr4pM7d9U8cSTQqNKASNKarqGHgN92Zn
	 P8RXS2ws/0Rtg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A67D40481;
	Tue, 29 Apr 2025 17:11:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C2BC01C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 17:11:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B3FDF40386
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 17:11:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i2ElJNareGbZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Apr 2025 17:11:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6466740342
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6466740342
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6466740342
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 17:11:22 +0000 (UTC)
X-CSE-ConnectionGUID: kYLfrAw/SCSpfbYPYsDQ2w==
X-CSE-MsgGUID: F7we+wz8Rr6P5RDkBfQyKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="58958409"
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="58958409"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 10:11:21 -0700
X-CSE-ConnectionGUID: c4N1Sl/eRmaxo9YMPiumQw==
X-CSE-MsgGUID: 8y0HTSqERUW7SDy7Xb91uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="171117458"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 10:11:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 29 Apr 2025 10:11:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 29 Apr 2025 10:11:20 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 29 Apr 2025 10:11:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QnG7MnDX/s8IjMArnDcoqFzI6pNguzlHBS/b7XEyQle22MHeBJWzWL6eB1R5fWnjdp8SXjCZHh9JZIWZuXLZS6+3Zg6IwhCnZjdAgahm1snCyfSNHLwoFwjMTYh1W1hrpg6HbZSD8rW75oHV2gHMufMUgNm6G3P7djWOKe87DcD3md/IlxsUneAl//ZyKq/mTwzuI3ceFwDcEWNg0fdJODc8LL0QOqG8TDG0II5zhmJfZNHu73geqV+qbIFrXndYD2Qgw0Ex/cn5glgIX1QJT3KhV8zc7/JYZ9B9T9hu9HwJQ1UhpbEVC18f/1AFo4Q9qsxE6Xgp4767KAgSleDW5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6THZ15vigFncE8yF5dktTlDN8XEfQq6oCDD9OQ9RANk=;
 b=bIztb/9yY6DG70StwxxLQQfbeP9vKCiFPJ3qT5bVDxgQZSrxSnkziQTDaq+gCL4ifPnIxlXcqO4tYayzJOLdoXaLp81FrfO1fF6QsgeZedpwa03lI5U+/BVad5oLLI31zbFLHg9BWbO6td7xF4BD6ApbzkTfyflToZfcp/CUmIoLFoKsMmm7mAE8AfargZddh0+k4OCNUsJk1tAvsA6shnhgEzB4l56XKORuMmPlxIEnuQfteyWVTX7YNkg/Blh7/XvfOa2O454hbyqjF0yx9H3sMtigJiiP06vRfZnq2MOzNwmVz0I5rlkFAW1R+1b4Er6Q5qNiLrmhyUhyAqLwzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by PH7PR11MB7432.namprd11.prod.outlook.com (2603:10b6:510:272::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Tue, 29 Apr
 2025 17:11:09 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8678.028; Tue, 29 Apr 2025
 17:11:09 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Karlsson, Magnus" <magnus.karlsson@intel.com>, 
 "Kubiak, Michal" <michal.kubiak@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, =?utf-8?B?VG9iaWFzIELDtmht?=
 <tobias.boehm@hetzner-cloud.de>, Marcus Wichelmann
 <marcus.wichelmann@hetzner-cloud.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ixgbe: fix ndo_xdp_xmit()
 workloads
Thread-Index: AQHbuR7R7Ol7rbP54E+08oFvCETnPLO64RJg
Date: Tue, 29 Apr 2025 17:11:09 +0000
Message-ID: <SJ0PR11MB58661A0375817624A0ED9067E5802@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250429155205.1444438-1-maciej.fijalkowski@intel.com>
In-Reply-To: <20250429155205.1444438-1-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|PH7PR11MB7432:EE_
x-ms-office365-filtering-correlation-id: 9fa763f1-7187-42ee-0e43-08dd8740d5c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?WHRCczlKN09XclhsWWM1cWdtUm40RVFYNTRkcHZIcE9WVW9zeGpSNU9ySHE5?=
 =?utf-8?B?bVlxbGpIUDVyWXpUWlN4WDZFR2kzVUMxd1BwcktpeGRUWkhxOWd6clFxYVYx?=
 =?utf-8?B?cVlvaUNhbW8weFJvM1d0czZxdlYzSFUyNTRBek12YnZGSGlCTXE2clFJUHBh?=
 =?utf-8?B?YVhERHI1NXZHbWhzMWtYYml4VUNvaWNFb3NuWk9hWlcwL3RoSGFOR0NWM1Er?=
 =?utf-8?B?UVh1dU12M2NrQkxFcndRdXRIbERKOUY5TkNCbEV0cUtnOEFFekpvdk5pT3Zo?=
 =?utf-8?B?Sks0eGM2MkpEdHpKd0p2LzFGL1VoQ21QUmdCY3JSR0d1RHdBUnJpM3NYVU9m?=
 =?utf-8?B?cGxZbXBNOEYyNXcvTHdMR2xESVVtb0FzOWttb090anFWanhWRld6VnpUQ0d1?=
 =?utf-8?B?bEFJZUhRTUFqR00ySUhHeWh0RndzKzdSUnJqcmkzbEw4ODJkRVlrSkhGNzZt?=
 =?utf-8?B?cjNLL25EVXVPVVZvVlZvSkJxVUZFbjRvUXYwbnpwNXBRUzZuaFlhcko0Mksr?=
 =?utf-8?B?dlpZQXhOZWF3M3BlMVFDZzBFWWhnVUdua1dJUjVKMVdTM0xhU1FoL0hJd2lF?=
 =?utf-8?B?NExuSEw0ckZwMmJsUGc3d0JxVFBiK2FaSytENWdIaFNkQk9XbmlzSXh5cE95?=
 =?utf-8?B?WVlmUVl1bVN6dVRGanlrRmhEOU43Y2EzRDZNd1EwanZpd1pFZTU3L3E2Q1JS?=
 =?utf-8?B?Q0N3VW9yVFVzOXlTSlppRUdnMS9ZTmRzdFF3cThNTk5ONE5NUFBxVEZ1cXNi?=
 =?utf-8?B?TXEreFRNUmIzcVEzNUNhSjhEeG5Hc2RTbkJSRUhxTHkxRkFzVDRnSDRUaXUv?=
 =?utf-8?B?Uy94eElSdHJNOC9CMmZhWDJhYWs0SGNHUVlPR0hXT0pDbDFFem5lRURMYkU1?=
 =?utf-8?B?MXRDSldPckFkQjdIQUdVWER4emZGRndBZDY5Q3BScEhzT3F4RG95c0g5Yi82?=
 =?utf-8?B?Vmk3b2xlZjlPNmVBQ2x0dXM5Qm9ZMGx5RWNwWjk1WVc5ZTlzY1JhQzQvd2hL?=
 =?utf-8?B?dzA4QWtHZkV5NWhObm81ZTVVRlFEbWRNdnhSUFE4QUd0R3VOd1lTSEFvZjhY?=
 =?utf-8?B?bHVZUGVONlBpaUtEY3BEbVVFTlRFR2xUWm5mc09DTGg1RTZZZ1lGWXk0YnBH?=
 =?utf-8?B?MkpPQnphT3EvKytnTE0velJxTmNHVVUwWEJaRzBwNU9zSGxXSFcxb0kzbk14?=
 =?utf-8?B?ZktrbHBJNytDcy9wNWVZZUszVmFCWTNqSEoxWW5tWm02b1p3Vk53R3RDVGJT?=
 =?utf-8?B?Y0g4L0E2QVJxNXdnVlNuME1WQVBoZ3liVE9tVThQR3doVU1SSjBHYlpYWXVO?=
 =?utf-8?B?Yk9mMlc2VllVU1ZiMHlzK0JRZE5lYm03WDVGbFpFaE44UmxqZTRabHFmSnpn?=
 =?utf-8?B?QVVVY0dDQWlvMXFJaG0zaUx0Vlgvb0QzcUVycFdiWW1YVXhLRURCR1hCZ3dk?=
 =?utf-8?B?Z082MnlWZjNjZ3Rnc1Z0MXVXb0xtMUE3c2YxdGVDQXBBSGtsbFRxSk9pcWVu?=
 =?utf-8?B?OUgxYmViVU1hT2pxOExwQ0Z2eW1DeHlibVdHdks2SVYyWFdGeitUOEFlcnVC?=
 =?utf-8?B?VGRtSmU4SzdOenlsMS9Tai9QalFGTkF5Wm1WdnZNajRlS3J2eUw3TUtkOVhY?=
 =?utf-8?B?TTVqLzRIbnk2YWxhWlJmWTh4eUhhNWsrY0NtZThWaHJTSlFVTW5SRHNWRmYx?=
 =?utf-8?B?OWxkclJpMmZGTnlGQXcyMGxBUE9WUElON0FFS2JhM3kvZWpYZU11bTFZV1h4?=
 =?utf-8?B?cStiamtHaVFBV2VVVkZReFd3WXlDYWpVSDBGQ0lzMWdJdWdCczNJWWRBT2ow?=
 =?utf-8?B?S3lrNjZLSHJ0Sk5rcThFVHU3a3RjbFhYZjBzYUpuYU11TUluSzIxTEdHcWxR?=
 =?utf-8?B?OVZoV1M1b3h1bnRHYVh4V3BKeFI1K21lYTE3elhuWUVLTnVOWm5kWHlrVmtk?=
 =?utf-8?B?RzZ1VDZHRWxZQXJlREFWRkJvekd2RThjbDhLQTA1QkNtWVZ1SXBweG15TnNQ?=
 =?utf-8?Q?cayAKJYjgW2ZRIro/SRp+ZCm/dVpJI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?REVHV0JqakQ0NkdQckRsVEJjVXRnOGltRFhXY0d4VnZmUi9IYlI4eXhUdk80?=
 =?utf-8?B?YzhxS1k1YU41Mk9Gbkd2WTZKTmJSZ2tpemdSUEEybS91RzdyZkhkdUR4bkcx?=
 =?utf-8?B?RGo0SzNoTmNDTFRIRjZqVHBSRHlnSFpSQlZXRnlQR2t5a2ZuQkVycjhENzRM?=
 =?utf-8?B?SHJtTklsUUdRejlUdWRuQWRETlk3ZEF2ZElmYWVYTWFrSGR2OE5nT0dSVjFE?=
 =?utf-8?B?UWozRTh5VzB5Ynh4MFVoWm1weDlDT0pEQkV1cy80Tm51NWdjZkdBckU2bnJn?=
 =?utf-8?B?cExENUpES2pjWDlDS0ZFMXFjMWtaZ0gva1ZGaTlKQU1zdjlMdUJaWnVQV2w2?=
 =?utf-8?B?Y21UckpmalBVa252dE5IV2R5MFdMWWVRS0JjR1RLMGcxT0U0U2d3WVNESXli?=
 =?utf-8?B?aThiYkRybGwwKzYzeE8rNHgzWDNmQ3pvQlNkNktQcXEvK2MzYjY1Y3ZMRkox?=
 =?utf-8?B?cXBmT2E4UVJ2dEl3VlFFUllmaEN0M29oYkxuZ2ZoOVNpTVBvVHFnUjhDcHlN?=
 =?utf-8?B?MlNjYys2ZllwdzhFZVI5TEtXaFl4K3JOTFdMQ2h3L2pBUjhyb2ZMblNFSy9k?=
 =?utf-8?B?SzBZejZ5TzhqTGprb2ZyZ1lSNXVZalBLNGkyZ0Y2WlFTN3g0Z2hydGVuZ1c0?=
 =?utf-8?B?dm5rd3BtV1lleFhabWtQNUczTGliMWVHTWRybnJCNzMyU3JVSG1JSlJzeWJK?=
 =?utf-8?B?cWl1TmlHdzgvM2UwZjNJWGlWaWpiYlhudkVrczIwNXNVeXJ6OHBSS1EvRTN4?=
 =?utf-8?B?QXFVTml2SEtTSU5LNmV4eEhLaHo5RllRRGZiaDk0UlJ5R3BUekZWcjZjbVNC?=
 =?utf-8?B?TFM5M3V3QkI3b0tEeXprdWtGQVd1MXJyTGNaZGF5VnFlQmhybHRMU2lobHJU?=
 =?utf-8?B?Q2ExK0dpbW9Iam5aRkNNQVN3K0tOOW5RY095S2Q0Y1lhdXFjNXhlbDZzb1Z6?=
 =?utf-8?B?eFRSaTV3YzhrNzdxT2xhdzRYR1FlRG42Ui9JYnRMcWI0MHVVMkkyQXpHb0lG?=
 =?utf-8?B?cHFMdFdYbVJKZ2xFZHJWU0pOalE1d2UxYVZSUUROTnl5Skd2OFhaelgrdUto?=
 =?utf-8?B?Zld6bzJyTTNFSCtqNTJNeUxyM00zUGNGKzc1Qll1TjRiWlp1MG1XajY3VGk5?=
 =?utf-8?B?a3FDRFdRYklDMC9KRTBkZTZYL0VISVN0WTI1a0FWdW50Yk1QMC9xc2xPS3ZG?=
 =?utf-8?B?RW9sOWpVS2luSE0yUStoRW1peE1BQjZ2UmtKTkFaY1Rzemg5Y2Z3TWpJYWE5?=
 =?utf-8?B?UlRSejBKNTFST2F4NmJvZFJVVnFJZE9vcEFHTHB1TE1LalFIdTVCZk5aQ3kx?=
 =?utf-8?B?dkNZN2VJS2pNTi8xMjg0ME9zZEllZHFqU2I2V05MaWJrVDRkZzBvdy9CWFRy?=
 =?utf-8?B?YVpjT3BEREJ3Mnp6ZFFQVDd1UklXTkh0RlZtZm5RalFvNzdNNEw2bkUvcXVh?=
 =?utf-8?B?SURqU2VQMTNMTjFYb1huOTJnU0JrOVdjaTVXaUgwRTZCQ2hQWThxS1dWeUZX?=
 =?utf-8?B?cERHUENEbUIxc3ZmQ2pKRGtydkszdGlSOVJreEU2ZC9Td1RTVmFoSlN2THM1?=
 =?utf-8?B?TEo2WHpobEYxczhuNElqelV6ZEFGSlA3dEF0SHl1WWV0cG9SS000dWhrZWZL?=
 =?utf-8?B?SjhlcWFONDJaVzJkWnhxaWhYdTRsYnIvUE9JanB1dTY3U2dtaXhtamhJRWdZ?=
 =?utf-8?B?R1NsZEgxR2VGZFdWUnZaV01oWVpVSG5ROFlocW5ZNVlHaDkrVU5JaEF2aGM2?=
 =?utf-8?B?elRiUW5MdWFGUWVORE9VSzBDR0hER3BWQzhLL0pWdlJTVllJejNRSm56ZjVO?=
 =?utf-8?B?OHdIUTJWMHVnckJ4Zk4xNU9teEErbjJoRzcybGgydW5GMGw3Mjl4MGhBTDQx?=
 =?utf-8?B?ZWVtWE9sUXdZNUxHWmFWMlF0R0FtT1VkOStHbUV3bXBvZ3lCSmFxcm9TSDNn?=
 =?utf-8?B?V0VZNEVjNkZLTE1tS29rWXB0K3U0WXdHZ0txb25JNE9rVUVFMnFRZ0lpMkQ2?=
 =?utf-8?B?SlBVVExKQ01BOEpXVFV3ZlQvUW1xUjM4ZUg5NnJ4Q0VEZVREUEdPWEVKaVJz?=
 =?utf-8?B?Qy93MmJXTnhVZ0ZtRVpLd3hqUXIrdE10bWVKbUl6QUlHVEdqczIzVGFCK2kr?=
 =?utf-8?B?WXFHZXY1TzFkMTBQVDNqalFqWm85ejNNQUJEamtZTmc5YUxtc1RBemRsUUZX?=
 =?utf-8?B?YlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fa763f1-7187-42ee-0e43-08dd8740d5c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2025 17:11:09.0547 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: upwaU/qh5fUvksIsBoTlyS1IAnGJRcVq5WXIa4ptvXPVd6dPkEfdtt37MJ+5a3yMlUC4/ZJj5WE4CrD0UJ9IgPF3qsAQLKrL9bY7gpASPhg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7432
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745946682; x=1777482682;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6THZ15vigFncE8yF5dktTlDN8XEfQq6oCDD9OQ9RANk=;
 b=ZE/ixYj0PEVVmhn1ngng3bD0HzLbXoDiQ+1HonUjyXcVOil8lZkFG9rC
 Dij+5eiCMeOymcrs3KMqzxB+WPKGEU3+yccfgPN0GtUT1vXzHR4+obKpP
 Gf19aP0WSlJ2E1gXijQmvc4v3gXUY8OECMdjoIPkB2cSLKHhfyNdC06oi
 Hdk/vsd7iHYkIdlmVxfB9fPypY7UDbPJWOQBRnsIFYykt9Sjzf6BQb82Z
 4WEtLG0TymCXxVkanv9kNOMJcWFsa1nVmmMOkEvO35/ybShG8RXMjmZF1
 Pmhg5Ggu2u7LpqrSdwdug8F2ulYORKpR5ZNBt44s4qhD5jOP2zZUaai7R
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZE/ixYj0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ixgbe: fix ndo_xdp_xmit()
 workloads
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gTWFj
aWVqIEZpamFsa293c2tpDQo+IFNlbnQ6IFR1ZXNkYXksIEFwcmlsIDI5LCAyMDI1IDU6NTIgUE0N
Cj4gVG86IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBuZXRkZXZAdmdl
ci5rZXJuZWwub3JnOyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRl
bC5jb20+OyBLYXJsc3NvbiwgTWFnbnVzDQo+IDxtYWdudXMua2FybHNzb25AaW50ZWwuY29tPjsg
S3ViaWFrLCBNaWNoYWwgPG1pY2hhbC5rdWJpYWtAaW50ZWwuY29tPjsNCj4gRmlqYWxrb3dza2ks
IE1hY2llaiA8bWFjaWVqLmZpamFsa293c2tpQGludGVsLmNvbT47IFRvYmlhcyBCw7ZobQ0KPiA8
dG9iaWFzLmJvZWhtQGhldHpuZXItY2xvdWQuZGU+OyBNYXJjdXMgV2ljaGVsbWFubg0KPiA8bWFy
Y3VzLndpY2hlbG1hbm5AaGV0em5lci1jbG91ZC5kZT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVk
LWxhbl0gW1BBVENIIGl3bC1uZXRdIGl4Z2JlOiBmaXggbmRvX3hkcF94bWl0KCkgd29ya2xvYWRz
DQo+IA0KPiBDdXJyZW50bHkgaXhnYmUgZHJpdmVyIGNoZWNrcyBwZXJpb2RpY2FsbHkgaW4gaXRz
IHdhdGNoZG9nIHN1YnRhc2sgaWYgdGhlcmUgaXMNCj4gYW55dGhpbmcgdG8gYmUgdHJhbnNtaXR0
ZWQgKGNvbnNkaWRlcmluZyBib3RoIFR4IGFuZCBYRFAgcmluZ3MpIHVuZGVyIHN0YXRlDQo+IG9m
IGNhcnJpZXIgbm90IGJlaW5nICdvaycuIFN1Y2ggZXZlbnQgaXMgaW50ZXJwcmV0ZWQgYXMgVHgg
aGFuZyBhbmQgdGhlcmVmb3JlDQo+IHJlc3VsdHMgaW4gaW50ZXJmYWNlIHJlc2V0Lg0KPiANCj4g
VGhpcyBpcyBjdXJyZW50bHkgcHJvYmxlbWF0aWMgZm9yIG5kb194ZHBfeG1pdCgpIGFzIGl0IGlz
IGFsbG93ZWQgdG8gcHJvZHVjZQ0KPiBkZXNjcmlwdG9ycyB3aGVuIGludGVyZmFjZSBpcyBnb2lu
ZyB0aHJvdWdoIHJlc2V0IG9yIGl0cyBjYXJyaWVyIGlzIHR1cm5lZCBvZmYuDQo+IA0KPiBGdXJ0
aGVybW9yZSwgWERQIHJpbmdzIHNob3VsZCBub3QgcmVhbGx5IGJlIG9iamVjdHMgb2YgVHggaGFu
ZyBkZXRlY3Rpb24uIFRoaXMNCj4gbWVjaGFuaXNtIGlzIHJhdGhlciBhIG1hdHRlciBvZiBuZG9f
dHhfdGltZW91dCgpIGJlaW5nIGNhbGxlZCBmcm9tDQo+IGRldl93YXRjaGRvZyBhZ2FpbnN0IFR4
IHJpbmdzIGV4cG9zZWQgdG8gbmV0d29ya2luZyBzdGFjay4NCj4gDQo+IFRha2luZyBpbnRvIGFj
Y291bnQgaXNzdWVzIGRlc2NyaWJlZCBhYm92ZSwgbGV0IHVzIGhhdmUgYSB0d28gZm9sZCBmaXgg
LSBkbyBub3QNCj4gcmVzcGVjdCBYRFAgcmluZ3MgaW4gbG9jYWwgaXhnYmUgd2F0Y2hkb2cgYW5k
IGRvIG5vdCBwcm9kdWNlIFR4IGRlc2NyaXB0b3JzIGluDQo+IG5kb194ZHBfeG1pdCBjYWxsYmFj
ayB3aGVuIHRoZXJlIGlzIHNvbWUgcHJvYmxlbSB3aXRoIGNhcnJpZXIgY3VycmVudGx5LiBGb3IN
Cj4gbm93LCBrZWVwIHRoZSBUeCBoYW5nIGNoZWNrcyBpbiBjbGVhbiBUeCBpcnEgcm91dGluZSwg
YnV0IGFkanVzdCBpdCB0byBub3QNCj4gZXhlY3V0ZSBpdCBmb3IgWERQIHJpbmdzLg0KPiANCj4g
Q2M6IFRvYmlhcyBCw7ZobSA8dG9iaWFzLmJvZWhtQGhldHpuZXItY2xvdWQuZGU+DQo+IFJlcG9y
dGVkLWJ5OiBNYXJjdXMgV2ljaGVsbWFubiA8bWFyY3VzLndpY2hlbG1hbm5AaGV0em5lci1jbG91
ZC5kZT4NCj4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvZWNhMTg4MGYt
MjUzYS00OTU1LWFmZTYtDQo+IDczMmQ3YzY5MjZlZUBoZXR6bmVyLWNsb3VkLmRlLw0KPiBGaXhl
czogNjQ1MzA3Mzk4N2JhICgiaXhnYmU6IGFkZCBpbml0aWFsIHN1cHBvcnQgZm9yIHhkcCByZWRp
cmVjdCIpDQo+IEZpeGVzOiAzM2ZkYzgyZjA4ODMgKCJpeGdiZTogYWRkIHN1cHBvcnQgZm9yIFhE
UF9UWCBhY3Rpb24iKQ0KPiBTaWduZWQtb2ZmLWJ5OiBNYWNpZWogRmlqYWxrb3dza2kgPG1hY2ll
ai5maWphbGtvd3NraUBpbnRlbC5jb20+DQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25v
diA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMgfCAzNCArKysrKystLS0tLS0tLS0t
LS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMjMgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhn
YmVfbWFpbi5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFp
bi5jDQo+IGluZGV4IDQ2N2Y4MTIzOWUxMi4uMjFiZmVhOGFlYjY3IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMNCj4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jDQo+IEBAIC05NjYsMTAg
Kzk2Niw2IEBAIHN0YXRpYyB2b2lkIGl4Z2JlX3VwZGF0ZV94b2ZmX3J4X2xmYyhzdHJ1Y3QNCj4g
aXhnYmVfYWRhcHRlciAqYWRhcHRlcikNCj4gIAlmb3IgKGkgPSAwOyBpIDwgYWRhcHRlci0+bnVt
X3R4X3F1ZXVlczsgaSsrKQ0KPiAgCQljbGVhcl9iaXQoX19JWEdCRV9IQU5HX0NIRUNLX0FSTUVE
LA0KPiAgCQkJICAmYWRhcHRlci0+dHhfcmluZ1tpXS0+c3RhdGUpOw0KPiAtDQo+IC0JZm9yIChp
ID0gMDsgaSA8IGFkYXB0ZXItPm51bV94ZHBfcXVldWVzOyBpKyspDQo+IC0JCWNsZWFyX2JpdChf
X0lYR0JFX0hBTkdfQ0hFQ0tfQVJNRUQsDQo+IC0JCQkgICZhZGFwdGVyLT54ZHBfcmluZ1tpXS0+
c3RhdGUpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIGl4Z2JlX3VwZGF0ZV94b2ZmX3JlY2Vp
dmVkKHN0cnVjdCBpeGdiZV9hZGFwdGVyICphZGFwdGVyKSBAQCAtDQo+IDEyNjMsMTAgKzEyNTks
MTMgQEAgc3RhdGljIGJvb2wgaXhnYmVfY2xlYW5fdHhfaXJxKHN0cnVjdCBpeGdiZV9xX3ZlY3Rv
cg0KPiAqcV92ZWN0b3IsDQo+ICAJCQkJICAgdG90YWxfYnl0ZXMpOw0KPiAgCWFkYXB0ZXItPnR4
X2lwc2VjICs9IHRvdGFsX2lwc2VjOw0KPiANCj4gKwlpZiAocmluZ19pc194ZHAodHhfcmluZykp
DQo+ICsJCXJldHVybiAhIWJ1ZGdldDsNCj4gKw0KPiAgCWlmIChjaGVja19mb3JfdHhfaGFuZyh0
eF9yaW5nKSAmJiBpeGdiZV9jaGVja190eF9oYW5nKHR4X3JpbmcpKSB7DQo+ICAJCS8qIHNjaGVk
dWxlIGltbWVkaWF0ZSByZXNldCBpZiB3ZSBiZWxpZXZlIHdlIGh1bmcgKi8NCj4gIAkJc3RydWN0
IGl4Z2JlX2h3ICpodyA9ICZhZGFwdGVyLT5odzsNCj4gLQkJZV9lcnIoZHJ2LCAiRGV0ZWN0ZWQg
VHggVW5pdCBIYW5nICVzXG4iDQo+ICsJCWVfZXJyKGRydiwgIkRldGVjdGVkIFR4IFVuaXQgSGFu
Z1xuIg0KPiAgCQkJIiAgVHggUXVldWUgICAgICAgICAgICAgPCVkPlxuIg0KPiAgCQkJIiAgVERI
LCBURFQgICAgICAgICAgICAgPCV4PiwgPCV4PlxuIg0KPiAgCQkJIiAgbmV4dF90b191c2UgICAg
ICAgICAgPCV4PlxuIg0KPiBAQCAtMTI3NCwxNiArMTI3MywxNCBAQCBzdGF0aWMgYm9vbCBpeGdi
ZV9jbGVhbl90eF9pcnEoc3RydWN0DQo+IGl4Z2JlX3FfdmVjdG9yICpxX3ZlY3RvciwNCj4gIAkJ
CSJ0eF9idWZmZXJfaW5mb1tuZXh0X3RvX2NsZWFuXVxuIg0KPiAgCQkJIiAgdGltZV9zdGFtcCAg
ICAgICAgICAgPCVseD5cbiINCj4gIAkJCSIgIGppZmZpZXMgICAgICAgICAgICAgIDwlbHg+XG4i
LA0KPiAtCQkJcmluZ19pc194ZHAodHhfcmluZykgPyAiKFhEUCkiIDogIiIsDQo+ICAJCQl0eF9y
aW5nLT5xdWV1ZV9pbmRleCwNCj4gIAkJCUlYR0JFX1JFQURfUkVHKGh3LCBJWEdCRV9UREgodHhf
cmluZy0+cmVnX2lkeCkpLA0KPiAgCQkJSVhHQkVfUkVBRF9SRUcoaHcsIElYR0JFX1REVCh0eF9y
aW5nLT5yZWdfaWR4KSksDQo+ICAJCQl0eF9yaW5nLT5uZXh0X3RvX3VzZSwgaSwNCj4gIAkJCXR4
X3JpbmctPnR4X2J1ZmZlcl9pbmZvW2ldLnRpbWVfc3RhbXAsIGppZmZpZXMpOw0KPiANCj4gLQkJ
aWYgKCFyaW5nX2lzX3hkcCh0eF9yaW5nKSkNCj4gLQkJCW5ldGlmX3N0b3Bfc3VicXVldWUodHhf
cmluZy0+bmV0ZGV2LA0KPiAtCQkJCQkgICAgdHhfcmluZy0+cXVldWVfaW5kZXgpOw0KPiArCQlu
ZXRpZl9zdG9wX3N1YnF1ZXVlKHR4X3JpbmctPm5ldGRldiwNCj4gKwkJCQkgICAgdHhfcmluZy0+
cXVldWVfaW5kZXgpOw0KPiANCj4gIAkJZV9pbmZvKHByb2JlLA0KPiAgCQkgICAgICAgInR4IGhh
bmcgJWQgZGV0ZWN0ZWQgb24gcXVldWUgJWQsIHJlc2V0dGluZyBhZGFwdGVyXG4iLA0KPiBAQCAt
MTI5Niw5ICsxMjkzLDYgQEAgc3RhdGljIGJvb2wgaXhnYmVfY2xlYW5fdHhfaXJxKHN0cnVjdA0K
PiBpeGdiZV9xX3ZlY3RvciAqcV92ZWN0b3IsDQo+ICAJCXJldHVybiB0cnVlOw0KPiAgCX0NCj4g
DQo+IC0JaWYgKHJpbmdfaXNfeGRwKHR4X3JpbmcpKQ0KPiAtCQlyZXR1cm4gISFidWRnZXQ7DQo+
IC0NCj4gICNkZWZpbmUgVFhfV0FLRV9USFJFU0hPTEQgKERFU0NfTkVFREVEICogMikNCj4gIAl0
eHEgPSBuZXRkZXZfZ2V0X3R4X3F1ZXVlKHR4X3JpbmctPm5ldGRldiwgdHhfcmluZy0+cXVldWVf
aW5kZXgpOw0KPiAgCWlmICghX19uZXRpZl90eHFfY29tcGxldGVkX3dha2UodHhxLCB0b3RhbF9w
YWNrZXRzLCB0b3RhbF9ieXRlcywgQEANCj4gLTc3OTEsMTIgKzc3ODUsOSBAQCBzdGF0aWMgdm9p
ZCBpeGdiZV9jaGVja19oYW5nX3N1YnRhc2soc3RydWN0DQo+IGl4Z2JlX2FkYXB0ZXIgKmFkYXB0
ZXIpDQo+ICAJCXJldHVybjsNCj4gDQo+ICAJLyogRm9yY2UgZGV0ZWN0aW9uIG9mIGh1bmcgY29u
dHJvbGxlciAqLw0KPiAtCWlmIChuZXRpZl9jYXJyaWVyX29rKGFkYXB0ZXItPm5ldGRldikpIHsN
Cj4gKwlpZiAobmV0aWZfY2Fycmllcl9vayhhZGFwdGVyLT5uZXRkZXYpKQ0KPiAgCQlmb3IgKGkg
PSAwOyBpIDwgYWRhcHRlci0+bnVtX3R4X3F1ZXVlczsgaSsrKQ0KPiAgCQkJc2V0X2NoZWNrX2Zv
cl90eF9oYW5nKGFkYXB0ZXItPnR4X3JpbmdbaV0pOw0KPiAtCQlmb3IgKGkgPSAwOyBpIDwgYWRh
cHRlci0+bnVtX3hkcF9xdWV1ZXM7IGkrKykNCj4gLQkJCXNldF9jaGVja19mb3JfdHhfaGFuZyhh
ZGFwdGVyLT54ZHBfcmluZ1tpXSk7DQo+IC0JfQ0KPiANCj4gIAlpZiAoIShhZGFwdGVyLT5mbGFn
cyAmIElYR0JFX0ZMQUdfTVNJWF9FTkFCTEVEKSkgew0KPiAgCQkvKg0KPiBAQCAtODAxMSwxMyAr
ODAwMiw2IEBAIHN0YXRpYyBib29sIGl4Z2JlX3JpbmdfdHhfcGVuZGluZyhzdHJ1Y3QNCj4gaXhn
YmVfYWRhcHRlciAqYWRhcHRlcikNCj4gIAkJCXJldHVybiB0cnVlOw0KPiAgCX0NCj4gDQo+IC0J
Zm9yIChpID0gMDsgaSA8IGFkYXB0ZXItPm51bV94ZHBfcXVldWVzOyBpKyspIHsNCj4gLQkJc3Ry
dWN0IGl4Z2JlX3JpbmcgKnJpbmcgPSBhZGFwdGVyLT54ZHBfcmluZ1tpXTsNCj4gLQ0KPiAtCQlp
ZiAocmluZy0+bmV4dF90b191c2UgIT0gcmluZy0+bmV4dF90b19jbGVhbikNCj4gLQkJCXJldHVy
biB0cnVlOw0KPiAtCX0NCj4gLQ0KPiAgCXJldHVybiBmYWxzZTsNCj4gIH0NCj4gDQo+IEBAIC0x
MDc0Miw2ICsxMDcyNiwxMCBAQCBzdGF0aWMgaW50IGl4Z2JlX3hkcF94bWl0KHN0cnVjdCBuZXRf
ZGV2aWNlDQo+ICpkZXYsIGludCBuLA0KPiAgCWlmICh1bmxpa2VseSh0ZXN0X2JpdChfX0lYR0JF
X0RPV04sICZhZGFwdGVyLT5zdGF0ZSkpKQ0KPiAgCQlyZXR1cm4gLUVORVRET1dOOw0KPiANCj4g
KwlpZiAoIW5ldGlmX2NhcnJpZXJfb2soYWRhcHRlci0+bmV0ZGV2KSB8fA0KPiArCSAgICAhbmV0
aWZfcnVubmluZyhhZGFwdGVyLT5uZXRkZXYpKQ0KPiArCQlyZXR1cm4gLUVORVRET1dOOw0KPiAr
DQo+ICAJaWYgKHVubGlrZWx5KGZsYWdzICYgflhEUF9YTUlUX0ZMQUdTX01BU0spKQ0KPiAgCQly
ZXR1cm4gLUVJTlZBTDsNCj4gDQo+IC0tDQo+IDIuNDMuMA0KDQo=
