Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A4A4C51C4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 23:54:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0DED60F23;
	Fri, 25 Feb 2022 22:54:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AyAissqWOO54; Fri, 25 Feb 2022 22:54:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C30EF60B5C;
	Fri, 25 Feb 2022 22:54:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 113051BF301
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 22:54:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F2870833D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 22:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aPEAgQK6OY3I for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 22:54:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 472C1833C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 22:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645829660; x=1677365660;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=30g64VOrhaTk9+plCF/F8kRXaAShrwJOfoT/Lb0l4eE=;
 b=SmKOJWw13DE8cSXUW3m2EaxcEMktYTLbkzdXkOo5qjnnKjDZRltRWFvg
 1duCBH/xubzZ9O4iI1ZZdjjl30j7mxmPMNte0H9+SpH0oAsIM7tfg9+h4
 07Q+59ZMhU/zoPq3vrpsw92Y1QRz8LOtPYfrSlpRX24KSXGLssTphigHu
 6Vt5zt6kiKffxZhLSCZzdoTXHPVlzXQ/FygKccWTTkYd1zcm4Ex9uHauU
 s0xDaQZKkNV9bOpZ4itDUapgDIjznaBRtz/swlrupK/HIulWBnUfKUjS9
 xHejjQFLHIVjjc6N/uODtuy6CdC3W1Y/RUnhbWR/hFsEOW42MSluQOpQV Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10269"; a="250176561"
X-IronPort-AV: E=Sophos;i="5.90,137,1643702400"; d="scan'208";a="250176561"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 14:54:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,137,1643702400"; d="scan'208";a="708018999"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga005.jf.intel.com with ESMTP; 25 Feb 2022 14:54:19 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 14:54:19 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 14:54:19 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 14:54:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BKTFlZy0jSYuaYZ32qBIYxWQwDUNIFIU9TJ6yt8CgikhSG1d1Ty26fwvLcw6E704DjfFPUn+N37htxRC2Uqf14rcwCPkdn95zzVqVieiPEMD+lv3Em/o4SOyKkodSLLBLjU1zo8ktPhMpWi95LZoFnr9kfpTFPXO46Mj4+CAjisT9F5IRhB1Jo8QWGKvMspqEx2+LF1qvENpgam6kYuXdJqKa+wOi8SHZ05Ah/qKugTSLe2vosWypgDukcrJEZesxOK/CDeSBjZ78+5GLP+A95fXXQiHTMFJwKTTyTg/Eep2GXiRPS6IrCyP+SCHLRIlSLnodun6PgU1ZCkVDBR87w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=30g64VOrhaTk9+plCF/F8kRXaAShrwJOfoT/Lb0l4eE=;
 b=dJZdUw4N47mGuwlx1X+zdqWXK+FJwkK9fgzlqM/tLX+J5dOgz+P0UlfqGuQ7MfV7VJHZsWorAEtDCSNRmGBKmyurkcVpmE+9PhSmKJKZtnBl2F6E1ZO1ToMZBmfSJ/yL/nwjnVMlOOMVtwK4R5nbaL1he1lDnJ4VT0pCyxDeXsRdCrxTs4I1TNIV3I17ms5NO+7tUkxsJh4jJu7WyPOqjHqbXvpzVgGbAv5PWIwLtXTnlOtRsudFrbcea+13OYIeINUV6AbLSylghjgN3ewnuQHKxuorB+Lbb6/yvKBNaerbMgwBVgZgqxf+ZCq3YuSnblOYPuDwPy7POC3mxngTRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN7PR11MB2594.namprd11.prod.outlook.com (2603:10b6:406:b5::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Fri, 25 Feb
 2022 22:54:15 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d484:c3ff:3689:fe81]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d484:c3ff:3689:fe81%6]) with mapi id 15.20.5017.024; Fri, 25 Feb 2022
 22:54:15 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Fix re-enablement of FW
 logging after reset
Thread-Index: AQHYKYOo4uM6LzGiMUKnlZdYYQQe/ayi9N2AgAD7aYCAAPH6gA==
Date: Fri, 25 Feb 2022 22:54:15 +0000
Message-ID: <05235490598e67f16890624863871eb46d593a59.camel@intel.com>
References: <20220224133614.179091-1-jedrzej.jagielski@intel.com>
 <c46a15bfa098e8bcc8c1e7d88ebfaa69610ba7dd.camel@intel.com>
 <DM6PR11MB273170230FFD896DE2998E22F03E9@DM6PR11MB2731.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB273170230FFD896DE2998E22F03E9@DM6PR11MB2731.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f7fe241-d373-45f1-e040-08d9f8b1bf67
x-ms-traffictypediagnostic: BN7PR11MB2594:EE_
x-microsoft-antispam-prvs: <BN7PR11MB259421F1DE9366813A748A7AC63E9@BN7PR11MB2594.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EQlyMeCsOKSxnu7XWv5uMlZGW1BlNRSR5bHmBTs8at6947NN9D+9eWoNOGTI0l1hdfmwfrqqtpV1uRaqg1jjCiSfLxLHIeXpKd/VDUcXw/wyowniKXRXoD4zT4Cuqc5q00cYiAuKDuGVrnK3091upIMRbFiv5PKlGaVNfMmpOIP36MYrASWaZJyKvSIh3CxrOcXGIH5r35FLR7nbN4BKeUGipJ/hOfjR97ITqF8KLaNhXwrV+1OPL8h0+mAouF3x8xN4fh40AhaKM8Myt9GHyQu9VHzt9O3mQO0PngkIGcQRWOXtWX3jZs+KuA5LB/06hEQhA5+fX4/ONWUz/ZQPpvZidMWHrOj24g57apJncqGO1PpTWaOAGCLCEOwqzfTKlD7ectg03r9cNxRh1tMRmAmgxNqb0NDNNGsK1AKuBgEqOfqPq4yMSBLSVykBe1BhjeMQP1I/OxsVPQgMN6dSPsdeR8ToF4UrKhKFBfBIm2HyS3o40q9HnwQNKnJiUqkXr3NyvifyNIWQQVbd53hcQashQMb+GpfzhYAlUCvU9wf58lmsp/y0QuROTHSZAqdajeylp/b3Z/23N6WBjcAV0jdnwS/qtT03ycQY/2Ds5YObS4/BpWaZ9+0vm/DIoNVvwRe+IU+WQmxv+knSFUOky0lGhauCz+0XBiFxD/rHd6jgRcWUkEwZ+I7L+V0DJdGWxL3wb/UpcsCDsnh/fmKL0w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(36756003)(107886003)(38100700002)(508600001)(6506007)(6512007)(76116006)(186003)(83380400001)(2616005)(26005)(4326008)(66446008)(66476007)(66556008)(64756008)(66946007)(8676002)(91956017)(6486002)(2906002)(82960400001)(38070700005)(86362001)(71200400001)(316002)(5660300002)(110136005)(8936002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S29oMmZiT1NMaW9wVFdCU1pRNktnSlh5di9BZytVN1VvOFZWdXhScjRDdXJu?=
 =?utf-8?B?ZGt2Nmc3ZWVoUytBL0ZZM2VQVkRRUzRQeUFRS0dMY1BNT24zRHhTaXhpNU9U?=
 =?utf-8?B?Znk3WXpLc2tpUWxpVkZQV0dkNW1POUE4TGtmRXJMeGhDN3Y0SStQUlA5MzBP?=
 =?utf-8?B?Q2VBdDNiT1dHY2MvL3lKOW5qSnM4bzNiYWxDbDIxTGkxbnJyaWM1TW1acitP?=
 =?utf-8?B?ZGpwdUFhWjdQeHV6Z3dwK2FlTEZqY3pIbEpaZFViV0w3YXAvczdhTkJMd0Jt?=
 =?utf-8?B?Smtva1c5TVFkeW5LRW90dTVnak51UCtxYUlsYzlHRE1OUXpqUDQvWlNlSmZh?=
 =?utf-8?B?Nk5KdGswSFJiNk5ETFZ6UG9UWEtEelJQa1dubXhqWjhJbVJXS2l1c0NkbVA5?=
 =?utf-8?B?M2pyeVRnbzB6QThlVlhFMUFTbXhMVURjUmsxZ1l5UUhnem1CME5JSmwrZk1v?=
 =?utf-8?B?dGplVVh3aHBsOWlYcE82T0ExVWFEbEVsSlNKQW9RN1NMSTRyRjROWmxKMTd1?=
 =?utf-8?B?cVB6OENsM2grS1V3MXBvRjN0NllJbXVybmlkRjBZaUZGMjE0S1kyVkJDN1J6?=
 =?utf-8?B?Y0xvWWprQVZPbU5WSFJacjlXZ1p0Q2Rpc3FVS1pCQXIxU0VYZERPS3lUQ04r?=
 =?utf-8?B?a0xld1RlWkVqa1psR3dmUGRyTmd0YVBJZ1VoV3dBa05IVVplRmlIUlR3Y0wr?=
 =?utf-8?B?d2c5TDZ4Y1VENi9JYVFzQUhzTnQrZVN4THEyMGUzME0wTkIxem4rK09vUTJy?=
 =?utf-8?B?ckJGQ3U4NXlQRTd1Q1BOZ0tBY1Y3eFFVWWtueXlVT3dtS3k1bHk3Tms2STVu?=
 =?utf-8?B?cjR4cml5ZkRYMU93NjFubFRwMkhsME5LaDl2WEp0c2dsb3JWem1KbmZjcjRh?=
 =?utf-8?B?QjlEcnRhMXBrVWxlVTRaTDJVUjZVUHRtVmdPcS81VnZ2aHR5bVhZcXBDZ21a?=
 =?utf-8?B?WGlETGlRdVB1cGxJMHB0VExpd2hMelVFSHgxK3BkZGZ6S3pnUEdpaUhOSGEz?=
 =?utf-8?B?SFFyZVlIMEpvVkErOGpNTTBmaGREdFNTQ1N5NWRlejVYWk9MNStwOWp5UHIz?=
 =?utf-8?B?STRjQXNEYWs2cmJnSXdHc2dyQXJxWnY5ZHRjMTlMOHEyVGhMVGdWRjRuVk03?=
 =?utf-8?B?bXhBTHhYbVhoUnRVSlF2M0hXUVNuelN3amNDdlVQM0RkMWxLRUVTVktsZ1hU?=
 =?utf-8?B?OVNBVVM3QktiLzRGckdreVk2dkN6N2RvTDdzWUlxTlp6OGxsUysyekdXcDhs?=
 =?utf-8?B?VGNCR0RNYldPUnFYdWgwbFU3eWEvWVJlMHNJWTJ5cDMxQVpyWlUyRXVWSzM5?=
 =?utf-8?B?RlExbnE5TUpCLzFIaURCQTc1OWltek1jVEg0L01jc3F4aEtoQzQ3Q092bzh6?=
 =?utf-8?B?bTJUcGtPK1laQzNMejIyWTNTL3RyaDVaQWw1a0czMTdsYS9qcXBnNFdDWlVx?=
 =?utf-8?B?bXlHenNlVWN0MHFJOGVtMDUwTUNsZUtyZDljSVR5eUMvclJCY2huLzlSdkNM?=
 =?utf-8?B?NjFqWElHUHA1cHhYcVVZK3JmRVBUc3J5d1A0WTJTdnJyTEoxdGVodGVEeWdC?=
 =?utf-8?B?VkszNVo1bFhRdWx3YmY0alBiak9DK3VxbGliYUFsenY2MnRnVDVMMTVCaDhu?=
 =?utf-8?B?R0VHeEN2WHFzT2NPb3JUM09LejBOdGErM0hYVDVnTHlvNVllWS9GNDQ0Vi80?=
 =?utf-8?B?QWxXYWFkTDVRcHZMY1ZJRDB3K0lpT0J5dUpVb1FoOWJlMnl6Y3F4M2NWWS96?=
 =?utf-8?B?dU1vMkZVdWM3SFhIQnU0YXhRbk5CTVFXWUdMd0tOTnpNMzNGK1BtZUQzRTl4?=
 =?utf-8?B?bjZES09mRnliKzNaRkVSN2RQYkh3NXNNVEF4c2pXWlJzUHVVNnV1R3VNSWtw?=
 =?utf-8?B?Wk8yOFc4eThSRi9Pd3o5bFNoLzFsRHhQWVhmdVZzZXkvNUtESXljVDJyR0VG?=
 =?utf-8?B?bW43b2NlakZCNjhxT1BUK0hBZjJUVVV0NFdleHN2ZWhQaTdxV3NlOUoyQVYr?=
 =?utf-8?B?SENPY2FsVzJuS3UxTk4vL2JiZUFEci85OFpvMXV6cTJsK2g0OHJBenB4ZEYy?=
 =?utf-8?B?b3NISEtsK25FZWh5QUwzeWV6TmVoVmdIVkJMZm9EU1Rqd3VER1dFc2JJR3d2?=
 =?utf-8?B?Q0ZCODNpNDMrbkNVR3U2NVMxNW45RlBMckxpSFRCSUNBK3J2RTNGOVhSbVlj?=
 =?utf-8?B?MkJqZG1POFZnNkxTSCtTTGpiY2NwcldDUlVSZ0ZsSUl4WktmYnorRkxBb1JU?=
 =?utf-8?Q?gLPcfzLAC9S2p2e364NMC0FLTRwLgzZGJ69ejqmwfQ=3D?=
Content-ID: <26C548772852714FA4F4CCA853D481D9@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f7fe241-d373-45f1-e040-08d9f8b1bf67
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 22:54:15.3166 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OxACFxDl19zJoIgOSgODA9/aTEKd8Hp8Q57rEO0ihMpl6VeYAZNYi1qvSJ2KXoPlLms5mIywOR3zENCns/at9Ah7pvio8NTIDuvtM5Y7bDA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2594
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix re-enablement of FW
 logging after reset
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
Cc: "Shelton, Benjamin H" <benjamin.h.shelton@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAyMDIyLTAyLTI1IGF0IDA4OjI4ICswMDAwLCBKYWdpZWxza2ksIEplZHJ6ZWogd3Jv
dGU6DQo+IEhlbGxvLA0KPiANCj4gPiBPbiBUaHUsIDIwMjItMDItMjQgYXQgMTM6MzYgKzAwMDAs
IEphZ2llbHNraSwgSmVkcnplaiB3cm90ZToNCj4gPiA+IERldmljZSByZXNldHMgc3VjaCBhcyBh
IENPUkVSIGRpc2FibGUgRlcgbG9nZ2luZywgYW5kIGN1cnJlbnRseSwNCj4gPiA+IGl0IGlzIA0K
PiA+ID4gbm90IHJlLWVuYWJsZWQgYnkgdGhlIGRyaXZlciBhZnRlciB0aGUgcmVzZXQuIFRoaXMg
bWVhbnMgdGhhdCBGVw0KPiA+ID4gbG9nIA0KPiA+ID4gbWVzc2FnZXMgYXJlIG5vdCBjYXB0dXJl
ZCBldmVuIHRob3VnaCBGVyBsb2dnaW5nIHdhcyBlbmFibGVkIGF0DQo+ID4gPiBkcml2ZXIgDQo+
ID4gPiBsb2FkIHRpbWUuDQo+ID4gPiANCj4gPiA+IGVuYWJsZSB0aGUgRlcgbG9nZ2luZyBhZnRl
ciBhIHJlc2V0Lg0KPiA+ID4gDQo+ID4gPiBGaXhlczogOGI5N2NlYjFkYzBmICgiaWNlOiBFbmFi
bGUgZmlybXdhcmUgbG9nZ2luZyBkdXJpbmcgZGV2aWNlDQo+ID4gPiBpbml0aWFsaXphdGlvbi4i
KQ0KPiA+ID4gU2lnbmVkLW9mZi1ieTogQmVuIFNoZWx0b24gPGJlbmphbWluLmguc2hlbHRvbkBp
bnRlbC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKZWRyemVqIEphZ2llbHNraSA8amVkcnpl
ai5qYWdpZWxza2lAaW50ZWwuY29tPg0KPiA+IA0KPiA+IENhbiB5b3UgY2hlY2sgdGhlIHNldHRp
bmdzIGZvciB5b3VyIGVtYWlsLiBUaGV5IGRvbid0IG1hdGNoOg0KPiA+IA0KPiA+IFdBUk5JTkc6
IEZyb206L1NpZ25lZC1vZmYtYnk6IGVtYWlsIG5hbWUgbWlzbWF0Y2g6ICdGcm9tOg0KPiA+ICJK
YWdpZWxza2ksIEplZHJ6ZWoiIDxqZWRyemVqLmphZ2llbHNraUBpbnRlbC5jb20+JyAhPSAnU2ln
bmVkLW9mZi0NCj4gPiBieTogSmVkcnplaiBKYWdpZWxza2kgPGplZHJ6ZWouamFnaWVsc2tpQGlu
dGVsLmNvbT4nDQo+IMKgDQo+IMKgQWN0dWFsbHkgbXkgLmdpdGNvbmZpZyBmaWxlIGhhcyB0byBi
ZSBhdXRvbWF0aWNhbGx5IG92ZXJ3cml0dGVuIGFuZCANCj4gwqBJIGhhdmUgbm90IG5vdGljZWQg
dGhhdC4NCj4gwqBTaGFsbCBJIHNlbmQgdGhpcyBwYXRjaCBvbmUgYWdhaW4gaW4gdGhhdCBjYXNl
Pw0KDQpBIGZpeGVkIHZlcnNpb24gd291bGQgYmUgZ3JlYXQuDQoNClRoYW5rcywNClRvbnkNCg0K
PiDCoFRoYW5rcywNCj4gwqBKZWRyemVqDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
