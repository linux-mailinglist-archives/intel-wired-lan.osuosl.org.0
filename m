Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 38660518977
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 May 2022 18:14:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BA1261016;
	Tue,  3 May 2022 16:14:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b3Ih4fSSOk40; Tue,  3 May 2022 16:14:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B2A360FFA;
	Tue,  3 May 2022 16:14:35 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 528221BF342
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 16:14:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4EBDB82C91
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 16:14:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n9rrLRs6f04F for <intel-wired-lan@osuosl.org>;
 Tue,  3 May 2022 16:14:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4814F826FB
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 16:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651594469; x=1683130469;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E0wZEOTTrnpqorZWZaU09hHPUASnu1WSKxUucVqDP4g=;
 b=YvTEBCVhAxQKPoCJjtP1SoJw3nui8Cu0y56gn8PFUv+B8tYjkd5VTQyf
 4cgSJ4rtS9OkwEEpyqWmc2szs5cXE8335gl22NQh1r/+twrLLrLX4EDS/
 18FUnraHabzdAsDaXG52Uf+Jywx+649DbmNZNTdYtCbU5cnLY1YE0te9K
 pXTAX69mIJ/tzmY/FC3IOdU6NeuxnQ+CXhqh8dr0M45Jk/RGNoG7zt3HT
 enGbJkj6Zp0v8RZ229pEhlq41i4fBqXoFjP2HSsk6uoCvBB5biRje5p3W
 apSD5Z3KrJFIxUNGK86yktIkYTuVF9HEcYc1QGAK5mlIy2HiWCVUmiFeI Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="330504727"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="330504727"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 09:14:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="599125549"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 03 May 2022 09:14:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 3 May 2022 09:14:21 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 3 May 2022 09:14:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 3 May 2022 09:14:21 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 3 May 2022 09:14:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZC0kjrUblkbtpzMZ3FHldY3ezBrJYTLInjukRVoB9h6slCObMcRt4mjszajdvXGQO9Rduxjo/bhOTgO34uUAT+4EriVK3R0FxOlV9WWIQ5iUGOntgditA1yDbagE1KTC8Z2sKj8RU4Z4AyNI78oD2yEVCFMYGZDF7UtjNef9PxUmJbeR68XriOssu+i8M9eLZJcbHP4qFgOQCEflNY7GsYUU3CH5ysavcAa6bioFJB5/76mhxKajErP/z1bWDt4KjgQYztNDCk2QVEeMc+kcTYQ/LxCmAWU2GNpRH4JNyHa+gxWdQz/6VJ9br0hxBAHZ5T32R5s6t3+3qoDZvo6XeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E0wZEOTTrnpqorZWZaU09hHPUASnu1WSKxUucVqDP4g=;
 b=eAaPdO7uWXAqkiPlQrvx6Xj0wYU7i+AqLwk92GqsxMuEWajZoJOqTEKs5tkdzmgbeN38l9pLAU9Q7Stg4UQGNGK3YlqAtCQ0gsNXmX1VNzmtbDdDeZE6ytlHDEGPiA62LW924nEPpMfWOrf8uDeB5cJAWg29JfHdYb9dYc1dz07DoA7jJo2d9y9btDITwH8QdGHXTtsLPHFqCDeiXnzF1mtf2OwoBB7+uf1ELFw1Tj4yzz//omR6HdGd2TcLEP0oG32L9xK6ek7rgnHOQM4tGY+/Hqj2+q7MVWcUKXnCKIDNQuOUyS9GlzfesoPv2KlXit3Soo8qndeb6pZ2IRc84Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by CY4PR1101MB2279.namprd11.prod.outlook.com (2603:10b6:910:17::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.18; Tue, 3 May
 2022 16:14:19 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::35bb:e477:110c:eae2]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::35bb:e477:110c:eae2%9]) with mapi id 15.20.5186.028; Tue, 3 May 2022
 16:14:19 +0000
From: "Mogilappagari, Sudheer" <sudheer.mogilappagari@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] ice: Expose RSS
 indirection tables for queue groups via ethtool
Thread-Index: AQHYXvF+mSXdxMRfIEebUNp3r6ZpCq0NRKqAgAAMu+A=
Date: Tue, 3 May 2022 16:14:19 +0000
Message-ID: <IA1PR11MB6266FEAC45A615FD31773039E4C09@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20220503132428.1859432-1-sudheer.mogilappagari@intel.com>
 <95aac667-1a6b-780f-3fd6-84ff2d987b02@molgen.mpg.de>
In-Reply-To: <95aac667-1a6b-780f-3fd6-84ff2d987b02@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8832593e-cb6c-461d-f582-08da2d1ffa32
x-ms-traffictypediagnostic: CY4PR1101MB2279:EE_
x-microsoft-antispam-prvs: <CY4PR1101MB227935D33D66B61B32B9D6F8E4C09@CY4PR1101MB2279.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZvZwgtACtVnZY05Gh9sNCoxNEw/HLgN2SRJ8a65Cgs+yQbQnRyxdQOkGpFttovyfTp0cKwpVIX+BEI9A7vG3cjI1U9P+7xNAHci70cZLTawNFzTB7RKeSr87ILOMly1jLm52UIGQixXdpwKxODr/LIcLGrXbEWSlps8wUYdLqUop8xei/ztuUg6B6KCTu0CKMIeajm++tBWje31Sf+1v3LGgOTEDeimOcxqSd/BlQxaQLTT20hVlNtzaT8n8uPunId4jI33itxBKVwQq5DDRnRj0PwmB99en186b9aP0FcJTlJkTMdhpPlpd7VP/lggN+uxiFDFT347ie/vXrC74G+AwoqHXHEq1CyzExrF7JC+rNkXkiBO1bJuaqYK3Jybh3BLH6GJxuIaZNoa6ujMDe6wd3UgSUMxkXZLiUytJK7reBa0wV388pPTbeakKzhwWjvvCW2ucarrmYmv9G11yGoFLPZYK226Md2kaPiK1CBUd44C1+YgM9e/kbqruSBPXATcsDoFhSaB4z8tjFhQupE+TdKIPkAGmk3qf11hI3NOPoSDBvASmGAo1raGfR3Z68kE8LfhgzsndULn80CQVvz9OXPX1hIendLLDTNxT/9K9K7dZqwNFLrf/fol+jpIZCxP7UWw3ivSIu2wYdZxc5+kWvP4cf7NG6sBQCScMeH+XERQ7joc0msT9jvveEzlZ2Ph1KTU4jYWNzw4BLR0ynw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(7696005)(122000001)(8936002)(38070700005)(9686003)(508600001)(26005)(316002)(54906003)(82960400001)(6916009)(64756008)(86362001)(66476007)(66556008)(76116006)(4326008)(66946007)(66446008)(8676002)(33656002)(186003)(2906002)(71200400001)(83380400001)(53546011)(6506007)(55016003)(5660300002)(107886003)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?THIwWm43VzRHb0Q5dm00Q083eDVrMHRyMi9LWDBNeGc0MFVlTFpiSXJuNzNy?=
 =?utf-8?B?YjJzamJiU3M3alRVME12U24yTlZKejF1VDM3QmdNR2dPN0JNOXBVNUR0aHU4?=
 =?utf-8?B?ZHpoZC9nMFA0S3BrWmtXQ1ppSXcrZldiZFN2RVRROEZ3Q1psNU4yY29lZXhO?=
 =?utf-8?B?Rlk5OVFYUW94M1JSMEo5QnVOSUtrLzF5S21QR1FxVlZJdXhjaWJock1GczdN?=
 =?utf-8?B?dEw1R09ueUNpQlJVVmNRZzNMbnlXaU9LUDVjWmxKb0dkVGh3aGtpZVFvMUhH?=
 =?utf-8?B?OUhMaXNFeTZCaDFVVG5kYkUydDIxSWllSnMwSlJiMVI2NzUyY1g3VE1Td1Ni?=
 =?utf-8?B?OGY4LytiYlBMWW12azRubEEvZFFKb0t1WC8rek9zUkNRbmJFUHkxYUNEVDht?=
 =?utf-8?B?VXJuOVZGb2xyMXNBTTdCai9pb0dtZkIrMG9kQ2xKc2FEYTBaUHJCNG5NeHlz?=
 =?utf-8?B?WHZ2ZVJuMW15K0ptUzBZRzNDWjNXcUpOTkpzU0h5UHg0a3RGcTZOYmlRWGwr?=
 =?utf-8?B?MEJWbm9zYXBOZWRkRkJoVHBCWXJpM214clpqeE5jY3BQTytqRWYra2wvdExu?=
 =?utf-8?B?T0dlczQvYkpVTVdSWUZ0SnB2UmFUc0tRVW9ONXpEbTBKM2VRVVd1VWQ3N2lH?=
 =?utf-8?B?QmRXcy9qdWE4RDh6cEdUeVF3S2ZEcHNqSFgySHYzZUVXRCtoajA1bDVZbXZj?=
 =?utf-8?B?WWhxeWt5NUpzNDZsbm9yMlJaa1ZjMmxYSTE4cU1zSzljcTF6VDhoYTJ0eCtv?=
 =?utf-8?B?YmplODVkbjFZbW5waFRUbmpvcmtJVGw3Y2VpRjZKYXM4K25wdXZzVVNBR0NX?=
 =?utf-8?B?eTRyMXliYTRrUERobnJFZ01NN1BvOWVGK2l3VCtkSHhvcjBpVHFvRGZVVW1o?=
 =?utf-8?B?TEU3YmRyUGJFamVWS0NpWlBYT2R6SjFzK0xtcDhuSXJiNjQ0NyswRU5RRWll?=
 =?utf-8?B?Z1lKRmhiUG5vaGNjT2xhTEZ2VEZVNGV2dW1vZnVROThwK0EySHRrdlRZb21Q?=
 =?utf-8?B?MzBHaG03am8zSTY2bXhBdUpPQlhleTYwUFdCSmo1ZVU0bnVXRk5rc2dFQUhx?=
 =?utf-8?B?aGkySjY3cjZBM0h4aWY4QVZnelh4K2FJbUF4T3VTdFlVdmlTbndkUW82R09w?=
 =?utf-8?B?aGRhZXFmajZDT3ltczlONDRoMEpWRVZBNmxvTUZZcWM1akVEOFlFN1hsT25J?=
 =?utf-8?B?bEt5SDhoenBRZkpxdXE3Z3l1T1ZpNlFLQ3lld1JUVTRpRnluS1d4Ynpyb1Ba?=
 =?utf-8?B?Mk8yd2g1ODZDNDNTUHlqUWpYd2o5NXJRT3B5cEh6YVBPZWpUalVSR2FCV0xI?=
 =?utf-8?B?L3R4ZkhBTlBwWDJUd3dScnhLclhIdlIzUTRKSXRWS0ova2g1NFZhNEdWaU9H?=
 =?utf-8?B?SmFLb0tqQXJRRlRmNURRMEp3dlBiWmRxK0NHVmZKdVNiMVByRDZQK0pNTW5B?=
 =?utf-8?B?TEdjMXdJbCtxOHpxd2NVNEdnUG1UdEZKRnVYTndNZ0dXNHJTVEpmZ1ROUVI1?=
 =?utf-8?B?dVZweWVlQ0ZsZFByTllRUnRuSDlNTEkvVkx2YlYzZ1Z6YVZLUUZFYkpUQzA1?=
 =?utf-8?B?QTdoR0NJeU5rU3BpbFlzUVB0ZHNUVTRlZG9wSEVQMHJWVXdZVzFqQUROUGZz?=
 =?utf-8?B?OVVmLzdJalgydUV4UGh3V05aRUFuUSs0UVRyZEtQR3BsbWxZS3JXR1l3K3FW?=
 =?utf-8?B?NExVSkkwZkZYTk9zSk1wYVFCY242Z2pqUU1Xbjh1ODhsb2Npc3cvU05NRDVM?=
 =?utf-8?B?NG9VWWQrTFVHVWdvQlhxdkN5ZnRpdFVHVVBFYWdEakk3VkhWWmtnMEs5NklF?=
 =?utf-8?B?bVN2NFpoVDFBa1ZzNUNBQ0NuNVBZWkJYdk9pMzVEbEhhNDdaanlIVTczTnM2?=
 =?utf-8?B?N3dFSUJyQ01ScVBtckxSckhBMjNEcC9HemJGYWpXcTVyUVhITTk0NmdLMFZ1?=
 =?utf-8?B?QXZpQllOd0Jrb09WL3JsWm56akhYM1JuQU44REdlS1ExbmF2eTdweEN2cU5M?=
 =?utf-8?B?aHBuYi8zTkVFTmhGV1duOVRQQytBb1czT0N5Zkk3UmJURFBoc0tTWnBmZ3Ev?=
 =?utf-8?B?SHhaekNld2JrSlc4Ykk3K3ljQkJDVzNOdXJIanZseS9XSStnd1VCdG5VQW5i?=
 =?utf-8?B?T3g4a2R4SFU5NkV1OUhacE9FcUFuelg2NTR4R2EyaDZjSExYWGVtdHVkOGxa?=
 =?utf-8?B?MDNLMEk0WEc0MEFlSlBQaHF5emp5dSt1OXpvaEpDc21tb2NrYndBb0ZsWWQv?=
 =?utf-8?B?VWtsRGZUUmZUUzU5QmZRa01vYk5aUmdhUnB5TTJOUHVDQXhhS1lNQ3F5NGZD?=
 =?utf-8?B?eWxQbXJmVW5pRndPa1hlQUgzYU9OZ2RKVDZFS05VNDNHWUU4MDdrRmRDcmVH?=
 =?utf-8?Q?N1qUoT+iIx9PxSeA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8832593e-cb6c-461d-f582-08da2d1ffa32
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2022 16:14:19.0913 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2nB5n7/OZN2B2ihQzpPVXpscSJKF9K1KeEpV594Qvp3mf6ygrGbpgcRppPpezADHdraUqhP6MB8oGPYJdtSFEKQZgYrJT1TqVWtoDJApnD8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2279
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: Expose RSS
 indirection tables for queue groups via ethtool
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogVHVlc2RheSwgTWF5IDMsIDIwMjIgODoyMCBB
TQ0KPiBUbzogTW9naWxhcHBhZ2FyaSwgU3VkaGVlciA8c3VkaGVlci5tb2dpbGFwcGFnYXJpQGlu
dGVsLmNvbT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnOyBTYW11ZHJhbGEsIFNy
aWRoYXINCj4gPHNyaWRoYXIuc2FtdWRyYWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJ
bnRlbC13aXJlZC1sYW5dIFtQQVRDSCBuZXQtbmV4dCB2MV0gaWNlOiBFeHBvc2UgUlNTDQo+IGlu
ZGlyZWN0aW9uIHRhYmxlcyBmb3IgcXVldWUgZ3JvdXBzIHZpYSBldGh0b29sDQo+IA0KPiBEZWFy
IFN1ZGhlZXIsDQo+IA0KPiANCj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLg0KPiANCj4gQW0g
MDMuMDUuMjIgdW0gMTU6MjQgc2NocmllYiBTdWRoZWVyIE1vZ2lsYXBwYWdhcmk6DQo+ID4gRnJv
bTogU3JpZGhhciBTYW11ZHJhbGEgPHNyaWRoYXIuc2FtdWRyYWxhQGludGVsLmNvbT4NCj4gPg0K
PiA+IFdoZW4gQURRIHF1ZXVlIGdyb3VwcyhUQ3MpIGFyZSBjcmVhdGVkIHZpYSB0YyBtcXByaW8g
Y29tbWFuZCwNCj4gDQo+IFBsZWFzZSBhZGQgYSBzcGFjZSBiZWZvcmUgdGhlICguDQo+IA0KPiA+
IFJTUyBjb250ZXh0cyBhbmQgYXNzb2NpYXRlZCBSU1MgaW5kaXJlY3Rpb24gdGFibGVzIGFyZSBj
b25maWd1cmVkDQo+ID4gYXV0b21hdGljYWxseSBwZXIgVEMgYmFzZWQgb24gdGhlIHF1ZXVlIHJh
bmdlcyBzcGVjaWZpZWQgZm9yIGVhY2gNCj4gPiB0cmFmZmljIGNsYXNzLg0KPiA+DQo+ID4gRm9y
IGV4Og0KPiA+IHRjIHFkaXNjIGFkZCBkZXYgZW5wMTc1czBmMCByb290IG1xcHJpbyBudW1fdGMg
MyBtYXAgMCAxIDIgXA0KPiA+IAlxdWV1ZXMgMkAwIDhAMiA0QDEwIGh3IDEgbW9kZSBjaGFubmVs
DQo+ID4NCj4gPiB3aWxsIGNyZWF0ZSAzIHF1ZXVlIGdyb3VwcyhUQyAwLTIpIHdpdGggcXVldWUg
cmFuZ2VzIDIsIDggYW5kIDQNCj4gDQo+IERpdHRvLg0KPiANCj4gPiBpbiAzIHF1ZXVlIGdyb3Vw
cy4gRWFjaCBxdWV1ZSBncm91cCBpcyBhc3NvY2lhdGVkIHdpdGggaXRzIG93biBSU1MNCj4gPiBj
b250ZXh0IGFuZCBSU1MgaW5kaXJlY3Rpb24gdGFibGUuDQo+ID4NCj4gPiBBZGQgc3VwcG9ydCB0
byBleHBvc2UgUlNTIGluZGlyZWN0aW9uIHRhYmxlcyBmb3IgYWxsIEFEUSBxdWV1ZSBncm91cHMN
Cj4gPiB1c2luZyBldGh0b29sIFJTUyBjb250ZXh0cyBpbnRlcmZhY2UuDQo+ID4gCWV0aHRvb2wg
LXggZW5wMTc1czBmMCBjb250ZXh0IDx0Yy1udW0+DQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBT
cmlkaGFyIFNhbXVkcmFsYTxzcmlkaGFyLnNhbXVkcmFsYUBpbnRlbC5jb20+DQo+IA0KPiBNaXNz
aW5nIHNwYWNlIGJlZm9yZSB0aGUgPC4NCg0KVGhhbmsgeW91IFBhdWwgZm9yIHJldmlld2luZyEg
SGF2ZSB1cGRhdGVkIHBhdGNoIHdpdGggeW91ciByZXZpZXcgY29tbWVudHMuDQoNCkJlc3QgUmVn
YXJkcw0KU3VkaGVlciANCg0KDQo+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFN1ZGhlZXIgTW9naWxh
cHBhZ2FyaSA8c3VkaGVlci5tb2dpbGFwcGFnYXJpQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAg
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jIHwgNjkgKysrKysr
KysrKysrKysrLS0tLQ0KPiAtDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNTEgaW5zZXJ0aW9ucygr
KSwgMTggZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9ldGh0b29sLmMNCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jDQo+ID4gaW5kZXggNDc2YmQxYzgzYzg3Li4xZTcxYjcw
ZjBlNTIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9ldGh0b29sLmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2V0aHRvb2wuYw0KPiA+IEBAIC0zMTExLDM2ICszMTExLDQ3IEBAIHN0YXRpYyB1MzIgaWNlX2dl
dF9yeGZoX2luZGlyX3NpemUoc3RydWN0DQo+IG5ldF9kZXZpY2UgKm5ldGRldikNCj4gPiAgIAly
ZXR1cm4gbnAtPnZzaS0+cnNzX3RhYmxlX3NpemU7DQo+ID4gICB9DQo+ID4NCj4gPiAtLyoqDQo+
ID4gLSAqIGljZV9nZXRfcnhmaCAtIGdldCB0aGUgUnggZmxvdyBoYXNoIGluZGlyZWN0aW9uIHRh
YmxlDQo+ID4gLSAqIEBuZXRkZXY6IG5ldHdvcmsgaW50ZXJmYWNlIGRldmljZSBzdHJ1Y3R1cmUN
Cj4gPiAtICogQGluZGlyOiBpbmRpcmVjdGlvbiB0YWJsZQ0KPiA+IC0gKiBAa2V5OiBoYXNoIGtl
eQ0KPiA+IC0gKiBAaGZ1bmM6IGhhc2ggZnVuY3Rpb24NCj4gPiAtICoNCj4gPiAtICogUmVhZHMg
dGhlIGluZGlyZWN0aW9uIHRhYmxlIGRpcmVjdGx5IGZyb20gdGhlIGhhcmR3YXJlLg0KPiA+IC0g
Ki8NCj4gPiAgIHN0YXRpYyBpbnQNCj4gPiAtaWNlX2dldF9yeGZoKHN0cnVjdCBuZXRfZGV2aWNl
ICpuZXRkZXYsIHUzMiAqaW5kaXIsIHU4ICprZXksIHU4DQo+ID4gKmhmdW5jKQ0KPiA+ICtpY2Vf
Z2V0X3J4ZmhfY29udGV4dChzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LCB1MzIgKmluZGlyLA0K
PiA+ICsJCSAgICAgdTggKmtleSwgdTggKmhmdW5jLCB1MzIgcnNzX2NvbnRleHQpDQo+ID4gICB7
DQo+ID4gICAJc3RydWN0IGljZV9uZXRkZXZfcHJpdiAqbnAgPSBuZXRkZXZfcHJpdihuZXRkZXYp
Ow0KPiA+ICAgCXN0cnVjdCBpY2VfdnNpICp2c2kgPSBucC0+dnNpOw0KPiA+ICAgCXN0cnVjdCBp
Y2VfcGYgKnBmID0gdnNpLT5iYWNrOw0KPiA+IC0JaW50IGVyciwgaTsNCj4gPiArCXUxNiBxY291
bnQsIG9mZnNldDsNCj4gPiArCWludCBlcnIsIG51bV90YywgaTsNCj4gDQo+IG51bV90YyBpcyBk
ZWZpbmVkIGFzIGBfX3U4YCBpbiBgaW5jbHVkZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5oYC4gTm8g
aWRlYSwNCj4gaWYgaXTigJlzIHVzZWZ1bCB0byB1c2UgdGhlIHNhbWUgdHlwZSwgb3IganVzdCBg
dW5zaWduZWQgaW50YC4NCj4gDQo+ID4gICAJdTggKmx1dDsNCj4gPg0KPiA+ICsJaWYgKCF0ZXN0
X2JpdChJQ0VfRkxBR19SU1NfRU5BLCBwZi0+ZmxhZ3MpKSB7DQo+ID4gKwkJbmV0ZGV2X3dhcm4o
bmV0ZGV2LCAiUlNTIGlzIG5vdCBzdXBwb3J0ZWQgb24gdGhpcyBWU0khXG4iKTsNCj4gPiArCQly
ZXR1cm4gLUVPUE5PVFNVUFA7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJaWYgKHJzc19jb250ZXh0
ICYmICFpY2VfaXNfYWRxX2FjdGl2ZShwZikpIHsNCj4gPiArCQluZXRkZXZfZXJyKG5ldGRldiwg
IlJTUyBjb250ZXh0IGNhbm5vdCBiZSBub24temVybyB3aGVuIEFEUQ0KPiBpcyBub3QgY29uZmln
dXJlZC5cbiIpOw0KPiA+ICsJCXJldHVybiAtRUlOVkFMOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiAr
CXFjb3VudCA9IHZzaS0+bXFwcmlvX3FvcHQucW9wdC5jb3VudFtyc3NfY29udGV4dF07DQo+ID4g
KwlvZmZzZXQgPSB2c2ktPm1xcHJpb19xb3B0LnFvcHQub2Zmc2V0W3Jzc19jb250ZXh0XTsNCj4g
PiArDQo+ID4gKwlpZiAocnNzX2NvbnRleHQgJiYgaWNlX2lzX2FkcV9hY3RpdmUocGYpKSB7DQo+
ID4gKwkJbnVtX3RjID0gdnNpLT5tcXByaW9fcW9wdC5xb3B0Lm51bV90YzsNCj4gPiArCQlpZiAo
cnNzX2NvbnRleHQgPj0gbnVtX3RjKSB7DQo+ID4gKwkJCW5ldGRldl9lcnIobmV0ZGV2LCAiUlNT
IGNvbnRleHQ6JWQgID4gbnVtX3RjOiVkXG4iLA0KPiA+ICsJCQkJICAgcnNzX2NvbnRleHQsIG51
bV90Yyk7DQo+ID4gKwkJCXJldHVybiAtRUlOVkFMOw0KPiA+ICsJCX0NCj4gPiArCQkvKiBVc2Ug
Y2hhbm5lbCBWU0kgb2YgZ2l2ZW4gVEMgKi8NCj4gPiArCQl2c2kgPSB2c2ktPnRjX21hcF92c2lb
cnNzX2NvbnRleHRdOw0KPiA+ICsJfQ0KPiA+ICsNCj4gDQo+IA0KPiBLaW5kIHJlZ2FyZHMsDQo+
IA0KPiBQYXVsDQo+IA0KPiANCj4gPiAgIAlpZiAoaGZ1bmMpDQo+ID4gICAJCSpoZnVuYyA9IEVU
SF9SU1NfSEFTSF9UT1A7DQo+ID4NCj4gPiAgIAlpZiAoIWluZGlyKQ0KPiA+ICAgCQlyZXR1cm4g
MDsNCj4gPg0KPiA+IC0JaWYgKCF0ZXN0X2JpdChJQ0VfRkxBR19SU1NfRU5BLCBwZi0+ZmxhZ3Mp
KSB7DQo+ID4gLQkJLyogUlNTIG5vdCBzdXBwb3J0ZWQgcmV0dXJuIGVycm9yIGhlcmUgKi8NCj4g
PiAtCQluZXRkZXZfd2FybihuZXRkZXYsICJSU1MgaXMgbm90IGNvbmZpZ3VyZWQgb24gdGhpcyBW
U0khXG4iKTsNCj4gPiAtCQlyZXR1cm4gLUVJTzsNCj4gPiAtCX0NCj4gPiAtDQo+ID4gICAJbHV0
ID0ga3phbGxvYyh2c2ktPnJzc190YWJsZV9zaXplLCBHRlBfS0VSTkVMKTsNCj4gPiAgIAlpZiAo
IWx1dCkNCj4gPiAgIAkJcmV0dXJuIC1FTk9NRU07DQo+ID4gQEAgLTMxNTMsMTQgKzMxNjQsMzUg
QEAgaWNlX2dldF9yeGZoKHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYsIHUzMg0KPiAqaW5kaXIs
IHU4ICprZXksIHU4ICpoZnVuYykNCj4gPiAgIAlpZiAoZXJyKQ0KPiA+ICAgCQlnb3RvIG91dDsN
Cj4gPg0KPiA+ICsJaWYgKGljZV9pc19hZHFfYWN0aXZlKHBmKSkgew0KPiA+ICsJCWZvciAoaSA9
IDA7IGkgPCB2c2ktPnJzc190YWJsZV9zaXplOyBpKyspDQo+ID4gKwkJCWluZGlyW2ldID0gb2Zm
c2V0ICsgbHV0W2ldICUgcWNvdW50Ow0KPiA+ICsJCWdvdG8gb3V0Ow0KPiA+ICsJfQ0KPiA+ICsN
Cj4gPiAgIAlmb3IgKGkgPSAwOyBpIDwgdnNpLT5yc3NfdGFibGVfc2l6ZTsgaSsrKQ0KPiA+IC0J
CWluZGlyW2ldID0gKHUzMikobHV0W2ldKTsNCj4gPiArCQlpbmRpcltpXSA9IGx1dFtpXTsNCj4g
Pg0KPiA+ICAgb3V0Og0KPiA+ICAgCWtmcmVlKGx1dCk7DQo+ID4gICAJcmV0dXJuIGVycjsNCj4g
PiAgIH0NCj4gPg0KPiA+ICsvKioNCj4gPiArICogaWNlX2dldF9yeGZoIC0gZ2V0IHRoZSBSeCBm
bG93IGhhc2ggaW5kaXJlY3Rpb24gdGFibGUNCj4gPiArICogQG5ldGRldjogbmV0d29yayBpbnRl
cmZhY2UgZGV2aWNlIHN0cnVjdHVyZQ0KPiA+ICsgKiBAaW5kaXI6IGluZGlyZWN0aW9uIHRhYmxl
DQo+ID4gKyAqIEBrZXk6IGhhc2gga2V5DQo+ID4gKyAqIEBoZnVuYzogaGFzaCBmdW5jdGlvbg0K
PiA+ICsgKg0KPiA+ICsgKiBSZWFkcyB0aGUgaW5kaXJlY3Rpb24gdGFibGUgZGlyZWN0bHkgZnJv
bSB0aGUgaGFyZHdhcmUuDQo+ID4gKyAqLw0KPiA+ICtzdGF0aWMgaW50DQo+ID4gK2ljZV9nZXRf
cnhmaChzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LCB1MzIgKmluZGlyLCB1OCAqa2V5LCB1OA0K
PiA+ICsqaGZ1bmMpIHsNCj4gPiArCXJldHVybiBpY2VfZ2V0X3J4ZmhfY29udGV4dChuZXRkZXYs
IGluZGlyLCBrZXksIGhmdW5jLCAwKTsgfQ0KPiA+ICsNCj4gPiAgIC8qKg0KPiA+ICAgICogaWNl
X3NldF9yeGZoIC0gc2V0IHRoZSBSeCBmbG93IGhhc2ggaW5kaXJlY3Rpb24gdGFibGUNCj4gPiAg
ICAqIEBuZXRkZXY6IG5ldHdvcmsgaW50ZXJmYWNlIGRldmljZSBzdHJ1Y3R1cmUgQEAgLTQxMDIs
NiArNDEzNCw3IEBADQo+ID4gc3RhdGljIGNvbnN0IHN0cnVjdCBldGh0b29sX29wcyBpY2VfZXRo
dG9vbF9vcHMgPSB7DQo+ID4gICAJLnNldF9wYXVzZXBhcmFtCQk9IGljZV9zZXRfcGF1c2VwYXJh
bSwNCj4gPiAgIAkuZ2V0X3J4Zmhfa2V5X3NpemUJPSBpY2VfZ2V0X3J4Zmhfa2V5X3NpemUsDQo+
ID4gICAJLmdldF9yeGZoX2luZGlyX3NpemUJPSBpY2VfZ2V0X3J4ZmhfaW5kaXJfc2l6ZSwNCj4g
PiArCS5nZXRfcnhmaF9jb250ZXh0CT0gaWNlX2dldF9yeGZoX2NvbnRleHQsDQo+ID4gICAJLmdl
dF9yeGZoCQk9IGljZV9nZXRfcnhmaCwNCj4gPiAgIAkuc2V0X3J4ZmgJCT0gaWNlX3NldF9yeGZo
LA0KPiA+ICAgCS5nZXRfY2hhbm5lbHMJCT0gaWNlX2dldF9jaGFubmVscywNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
