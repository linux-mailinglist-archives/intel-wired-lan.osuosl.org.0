Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B79DF77D982
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 06:54:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E95D261257;
	Wed, 16 Aug 2023 04:54:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E95D261257
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692161698;
	bh=nlpHqjPJL29dJv7w7s2HF9fP9IQPIZL9NBPcV0JUaiE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8Acr88/CdR0b+anC+hoIfzzqIN+b80HqKyC+uKY3ybsdeSrtdml+pJnpzYtyBGWrW
	 /uHers+sYJJXwXRe3eNpMRrFyIQQLVPwIdVyYqGU89x80cLzz2DXvFhaIR2b+0Gbq/
	 LVs3udvF2R7sqgZ/2j660219AWDBMBepjjv5O7Jecnr0nf8uGmMZiuaVCYwn1u+kyT
	 2F3XfO0TRsPIEALNwa5R+M6YsiVdKEFtOxXBZavXKIgliOzEG06l3Tn+WavNNQiRiY
	 2KveIjJRO4KBkkyQkj+wHDOWWc9gV+jnNgrJMrKo8GlP28itJgwDmRW6oWUM6TH6MQ
	 8KnmPfzsDszVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cNkzxhpWbk7y; Wed, 16 Aug 2023 04:54:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C62D461247;
	Wed, 16 Aug 2023 04:54:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C62D461247
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8651D1BF40A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 04:54:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A4AE61247
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 04:54:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A4AE61247
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n2s8bgKZr2qI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 04:54:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 91D296123D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 04:54:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91D296123D
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="371350341"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="371350341"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 21:54:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="683909157"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="683909157"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 15 Aug 2023 21:54:49 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 21:54:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 15 Aug 2023 21:54:48 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 15 Aug 2023 21:54:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q99NVzDOg+aSKdUspndVjJPS8xn4WBCk9Fm6X3A3SSjlVaBYd0Tx6yHu6OOAmPP2OwIV8ZwHnXRDIxQ4MJzvPDTx/rnSNYkngJT43s1bVDtBfqXI/KyR6LgeEvE6K3EWNHECV7qlu/5YOQv7ABtgxdP95sWJoaZcClfOQ15IwwW5FgcZsc4IJTz5h6rWEfhPHfaNtlCWFjcFnaQFhHyZ0gZgs5G+8o0kUHGgMgm1PaVqPXTJv0abzlC9WI6doHBjSdy9c4dRMdzGl7D1ty/71/r52saYUkqu9Mx+T1Pj8B5Y5Zoufgl4+IIh3YLcTziueQUYfPMLJTa62ecBOkv1LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XSiYHWCjU5Xh9rT/TDFokgdYLLstMZ5nBDz1d2KKP6c=;
 b=mERFrFFBqkIMSYwUnBOLaIV7N+eR1tMQd2O9a3ewbKqPW5tyUiK4i4nRn9ZUbFmQw5sufiOMEcgDfjtuW/5hEKHojOpWzSZ/YJXqnP19zkRm8lpamuBgOCKhun74qD0sXl+63q6McrklUJeR3emLEap+OXHDZ7Laj8ZBuChTJnMGaID7TxIuP7FJsr+GilIJWK6q5Dc9E3dzNUdFM4wSYkkaEtkAgFBXC95ome05LtWJ1lkVFqBCHZPMIt1vr26gEHLxg550GPv4SgpjapG0N1Ov8Da8X+k8UfT3fhNvky5/rr9uD3/+xYKrPpX5+ivyVo0RPvYORbLlfvmgpd41ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SJ0PR11MB6743.namprd11.prod.outlook.com (2603:10b6:a03:47c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Wed, 16 Aug
 2023 04:54:47 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec%7]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 04:54:46 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 2/3] ice: embed
 &ice_rq_event_info event into struct ice_aq_task
Thread-Index: AQHZykNb8YwESIf980yDI+M9+bOkeK/sZm2A
Date: Wed, 16 Aug 2023 04:54:46 +0000
Message-ID: <BL0PR11MB312217FD1DCF44CDF57D3B87BD15A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230808215417.117910-1-przemyslaw.kitszel@intel.com>
 <20230808215417.117910-3-przemyslaw.kitszel@intel.com>
In-Reply-To: <20230808215417.117910-3-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SJ0PR11MB6743:EE_
x-ms-office365-filtering-correlation-id: 0aa8aab1-a9f8-4dc1-d62f-08db9e14ea31
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: onDv+fq4gkgB7KHBIQdDjO4uGrI/Ikn6liZtjFBXp4cxmfGqxgYqDPdSo+51C+lu4dp5Tj6MfTEIswLMIoFDXRCZbHXm3niVye39gCGNpEkt6Zlc1vcRhMAB6qjHIYnjx9MsQ5FHt2ckJdDQX0iYv1oyZytxuJRA2ClW/CLMnlcStnJ/rLUgZS61uuV47acpf/xEBuhRAKun5OOAdn0Nn36dhA7YXoMnyijg3Ncp3apdH+6ak3chRbfer+Nqw2QM3sIpw4E28oO3tXF61P7se7gVDQ2zvUPBVEGfqXBjXl9pxVlFo1pKUAYUiCDBlhta1AUnyIs2guLe4uHE7v02FCJgGe8a7dle+hb+L0oG08d0FfoARWmpnlRZU978yGtZWQ0OPD+wCpklUWIe5oSsOwww0YiIqcMtNyO+kL7ztpi50whpaFaAyg5OxuNfFAMzKr76MGbE62fbq3jXcjkQGjTW8rGCejj2eve61iDi0favPQmMR9wED9rN219s82xsOaQf8fZ831Xzdyc+rjVbZjyJQZ9rW+s3UMiAzHAGI9AsgRaqriMnAGU0oUh9s8CEFR/1gt9aB95wyMUXMohlK1SnfnX0uMTsxI9fYEf7eviSswmT1rch0uEq1VSHlYxl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(396003)(346002)(136003)(1800799009)(451199024)(186009)(71200400001)(64756008)(54906003)(66446008)(76116006)(66476007)(66556008)(66946007)(7696005)(6506007)(2906002)(478600001)(9686003)(26005)(110136005)(107886003)(5660300002)(83380400001)(52536014)(41300700001)(316002)(53546011)(8936002)(4326008)(8676002)(122000001)(38100700002)(38070700005)(82960400001)(33656002)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eVPO0vjbR73MrNwOqrczTi5dAIIVZTLZIu0/oGq/DO/P4xOyG3Zd9w6Luoil?=
 =?us-ascii?Q?81KZ/aYcP5+hKnPFhApq/CXBxHeH1SXfmTJoFhlNdDvJjquQ5EEY3QB6mNCT?=
 =?us-ascii?Q?Nbdkwksl4RaE89etHDPOiGhYFJgAWpv8IDvzblviw65N1aknynmw01EKLOs9?=
 =?us-ascii?Q?/PS08Kyo+BiQFG1gITo/g/chd+8M6TBoMc15wlkEkgndC2OUZ/nkSx3hie9Y?=
 =?us-ascii?Q?f0iymI/p3cVbnA2EnFxIKVKgdFnq2Hq9pXCxNKp3Nt8pU2NG7ZOpbD2Zkdol?=
 =?us-ascii?Q?WjM/YBxgb0shxHVlwPU+KxLx9rB4kjn5CkgfMDGPr0Jmcg6COcjPZ1lYrkd4?=
 =?us-ascii?Q?8fAMgHitUUDiu5vXV7EALSHUSjyAFq+QUep6ykxuh6B84TbAdVsPEE+MC35R?=
 =?us-ascii?Q?3MAzQ1DIN0JBantsTGOZxRS6Epi8zjI2YQf6wa3/9YGGO/Hxia87IYfpckPG?=
 =?us-ascii?Q?Iq4h1aF9KTeBZ03dDmGwd8p3MxqSAs9p+PfFAj+tTNuPZKv0Ymd9PMiXUYh3?=
 =?us-ascii?Q?eNqoFlFb3c+MC4k5WH5rekAxZI0MiccNLBf11p8NHzuEjck2nRe2SHDq9vIC?=
 =?us-ascii?Q?96Lu0YJfQMa4FK3L+srtZqS/nGhWqfhiDCwPRvH/bMfAkCTE3fFEGcygKykh?=
 =?us-ascii?Q?7hmkDF8DBqIGxETmOxpaOSJ2BCIQ9SA/hI4ZpsxsuLHiXO0+kXFUAEo58NtD?=
 =?us-ascii?Q?G5skrhF93TonXxAaubF3DS9URTwt8N7O5vLy6yayxpB+y8lbt3ZKZ2Y1jKBd?=
 =?us-ascii?Q?mYnyW01cUG8suE21RdgdeNFFrPcctJdEJUX+6OPHL8K3pmLHfoTLiPxd7/Xr?=
 =?us-ascii?Q?I5J6FZeO679ycUia+RwKFL/MSwxfGANXaXSJHq7Zez1EIq0L4rnEK2j2J7qZ?=
 =?us-ascii?Q?ytkBTIN8BSx3pSstFzNxgOdtMdjeKnCdrGTuMbXS2oYK5EJTsY8Ja3kIY5z2?=
 =?us-ascii?Q?WSN2ROk/5WYrNhx15aTsSXYp9OK87oTcQp7XQRf9OEo/90s+57uRTZW2xuGb?=
 =?us-ascii?Q?kqhtwONsV0e5C+SYtCBLAZsHYd9mvfupeYqK4U5fez/aRNiTxO/Q4OtllzEC?=
 =?us-ascii?Q?ELs82hcZE+rT4UT+hbINVB1hmmhh2vlKw71c0B6OWMXVdN0WTF9F1wsKu2Eg?=
 =?us-ascii?Q?C80Aok9pS2yo9PhF0wd8BrxuDwe9Kf/2csfMI2qjW/067qWpvSkAImvgFrmW?=
 =?us-ascii?Q?6B8jselL8yyc86g1FjMR8vPtL+N0iuQn1J+RSlWQfiyHC0jM1SLGj9VH9Fty?=
 =?us-ascii?Q?J0lHvi9P5AG58SUTdBtVYSCR3ctiAOULDbV2vuH6DrXeSSSatheShueonCRq?=
 =?us-ascii?Q?wdj6lu9ubRH4G45mA7yv6p4f/nt+ljMwYR53jszK4y+NjlmEXMnt08uutMSo?=
 =?us-ascii?Q?6Qi/7Ij0o5kTRy2hXn58rGn5pYyCUk5cHhCbW+bLLA9Dp1QcxrhQ7f9MpDN7?=
 =?us-ascii?Q?s9pxSNhhd5UbDgiy6qnl2LHM42eEKPzOU3pDawziIs6xF5wBRa3NvwLKcRly?=
 =?us-ascii?Q?NqCvAismKB7pEimT6vuR4WQgxd+D/YZGso3mtoD4kQ1ENyl8rhSarPSedkzv?=
 =?us-ascii?Q?zfbuRfntWx+2bqABSYPV9cv3RMGApT7NJOKZwrPgsM3zjTIqsEuv7rsT4pT/?=
 =?us-ascii?Q?PA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aa8aab1-a9f8-4dc1-d62f-08db9e14ea31
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 04:54:46.8667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TAoBmvgQcDDvrmf7H96F/uYlWK3QIXUfYUDSip7gnnYh7dlth34MKc/mUl2AJ8CvRZknMukfnZ4eWEMB5vR+6zW1A2yE426mCqMl+gnK2n6UIBIoDJ3mPuuzKQe2aCRH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6743
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692161691; x=1723697691;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=21UCYmZCLe213BXtOmR4Ji64MbveNDo8Jmawk+I1Z1E=;
 b=DHSsuGsx8xzbaHtWAYIlW4YjjaPB5i1xfhfz/HlRCWHgyRmHCsno1YLN
 W154XijqFzQdWCOrFFWoKtrfvvtC9oY+a7uOEuIkYv+qsGqPSFtNLQ/FT
 qWiXA/CCbjZlsOu+wWgtknOFOorljZX2MhXFICEK0p+Y9AVqzpmto0/Ve
 +yfVgqv58HVTHr8XbldsUb9l+3XGiibwLo2hB0XhqHeWv5vIRmIJg5AmT
 AkATOdlkGUq8XEEdzBNSFbRRCrmqexSw2w+utCf7xXtrNsJTpXbFVYjBG
 b3mvEcMWnkrNau1YeEX7Qi5WUDQ9SmLyD3ozuiPMo7bGi6s8rz0yEHjf3
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DHSsuGsx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/3] ice: embed
 &ice_rq_event_info event into struct ice_aq_task
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Przemek Kitszel
> Sent: Wednesday, August 9, 2023 3:24 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 2/3] ice: embed &ice_rq_event_info event into struct ice_aq_task
>
> Expose struct ice_aq_task to callers,
> what takes burden of memory ownership out from AQ-wait family of functions, and reduces need for heap-based allocations.
>
> Embed struct ice_rq_event_info event into struct ice_aq_task (instead of it being a ptr). to remove some more code from the callers.
>
> Subsequent commit will improve more based on this one.
>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>
> ---
> add/remove: 0/0 grow/shrink: 3/1 up/down: 266/-68 (198)
> ---
>  drivers/net/ethernet/intel/ice/ice.h          | 18 +++++++-
>  .../net/ethernet/intel/ice/ice_fw_update.c    | 42 +++++++++----------
>  drivers/net/ethernet/intel/ice/ice_main.c     | 29 ++-----------
>  3 files changed, 40 insertions(+), 49 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
