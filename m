Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE9C658FD3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Dec 2022 18:30:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DAE8A60ADD;
	Thu, 29 Dec 2022 17:30:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DAE8A60ADD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672335055;
	bh=KWL41Zw+fmK7EJffWsIVl0VuGM21EhTodckmziCfcbo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MRkNdicWW3pRbx576uWNMr9tOKJCcK5xXWK4jjHu3HuwNvHKytDUVDqqKzhOzuHlE
	 tp1z9T4IBa+OYdXQha6QgU2WVZ+gFGtw1NraQy+7E4pjTds/aEhfs0pY+FwU8Ha3us
	 NTAqHOHxM4nTroWYK1wsBNFAKc/LW5o/lrhRdAetf0Z0kOQHGryYd9srtIUPCm8t9k
	 j+U2qUNMyf0xtTsMrW3dQ9Gj1vymicY1VJgdO8weSXiT27OF/wlgrb3hRtm9XPmxoG
	 b0XWIyXJKRN9QCy5aHx+yjDB64h4bdTD6A6tCoWWfOwZXT8pFkKRTPxn7mPEcvqBfF
	 +YkEjGVeBBs+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p7hpLT5dRBWZ; Thu, 29 Dec 2022 17:30:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0EA7660672;
	Thu, 29 Dec 2022 17:30:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EA7660672
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4C20A1BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Dec 2022 04:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2BB8460C33
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Dec 2022 04:12:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BB8460C33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7EThK7p7f5hw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Dec 2022 04:12:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B2D860C31
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B2D860C31
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Dec 2022 04:12:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="319692202"
X-IronPort-AV: E=Sophos;i="5.96,282,1665471600"; d="scan'208";a="319692202"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 20:12:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="655484715"
X-IronPort-AV: E=Sophos;i="5.96,282,1665471600"; d="scan'208";a="655484715"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 28 Dec 2022 20:12:34 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 28 Dec 2022 20:12:33 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 28 Dec 2022 20:12:33 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 28 Dec 2022 20:12:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=APqtCU7JCjNhgnTj9CUjO47S143MrT/MVxB3U0RrkBokbznYztUvDnGpS3Xqq1jgXO0etvHcn0TVvPE9/Z+ZIGbVPE86elQUFZxG7G/Mrv7THLMlNaTm10mvLpByTB9BqxiQDcuLBEj+x/P6YnhnTXAcKNctGwjD5osyhDy0HGZB7S9+htDewpvkZ30IIJxBFRVyYAAJMPty7dTfCHpydhmFttUEaXfqB1mjARofoSReW9cQRU68De++kzYlE1xonqlHJnMECi6lRj6xQgxnn7PAYq5+02lQ40hBQ1j5ITlm9Z9+nqQDM5B4hnPa/osNhlLNPi4he4R3Qv4budIHoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cnYzUqmftOOYoH/c4yE1ZDnioSLF7OoGTCR4ZOLvRYY=;
 b=LKYCkidu0wXNMKgtxNYzv6wQBJCk4lKdHXFoN0JxHWHUBIB8QdglXwoyMV82D807g1VoVgmLEa+6K0UjHnnp5lCI1w9sIgbSqc7Q78mb/xhV6ctWhDzM43o8cuMULbSX10xMiDQ2OcuRa6yELH+CKroCQHBQyKg1A3Bb2pHZnVjWL77b38sHIFJYfx3P/lutDDITsSG3oyLPmbBltAIeL22m8GP9HNnEGhW6fUCRXR9kZJpb5tWxGlOaVhpqb84yszOdAzRm6PgUC8dhfLjEhovc4kB2CUPcQgWFPGFExJe4CvQ2Hq1xzmBuK/PASnU8kGYn0nP0UdtAR9IvznQLHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2727.namprd11.prod.outlook.com (2603:10b6:a02:c7::29)
 by SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.16; Thu, 29 Dec
 2022 04:12:30 +0000
Received: from BYAPR11MB2727.namprd11.prod.outlook.com
 ([fe80::7ad4:fd86:9741:23d0]) by BYAPR11MB2727.namprd11.prod.outlook.com
 ([fe80::7ad4:fd86:9741:23d0%7]) with mapi id 15.20.5944.016; Thu, 29 Dec 2022
 04:12:30 +0000
From: "MP, Sureshkumar" <sureshkumar.mp@intel.com>
To: Kyle Sanderson <kyle.leet@gmail.com>, "Neftin, Sasha"
 <sasha.neftin@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Ruinskiy, Dima"
 <dima.ruinskiy@intel.com>, "Avivi, Amir" <amir.avivi@intel.com>
Thread-Topic: [Intel-wired-lan] igc: 5.10.146 Kernel BUG at 0xffffffff813ce19f
Thread-Index: AQHZGoqzG3NlgwOUck2tUFg97hMxwK6D4+SAgABG8wCAABY1cA==
Date: Thu, 29 Dec 2022 04:12:30 +0000
Message-ID: <BYAPR11MB2727764EB94F647479731DAB96F39@BYAPR11MB2727.namprd11.prod.outlook.com>
References: <CACsaVZL6ykbsVvEaV2Cv3r6m_jKt04MEUOw5=mSnR5AYTyE7qg@mail.gmail.com>
 <a752422c-4630-e53d-c9cd-cc9ed866f853@intel.com>
 <CACsaVZJXqkWGOQhe-GzRKJSfYn-3+dZTyHNZC97npCxzqr+R9g@mail.gmail.com>
 <CACsaVZLh0WFu1p7TUxE=RwucoTcZwsfQ5+ivorcbwCiRneeVFg@mail.gmail.com>
 <70eea40e-808c-e9ee-9aab-617ebe67d67c@intel.com>
 <CACsaVZ+icDmY15bqHuSR=KUBx0tbpDVXasuuYPjWg6aVAyy2hg@mail.gmail.com>
 <CACsaVZKr=B6xNrxM_J60+pg48onQf1jQJYNRDLwgESje_fN13Q@mail.gmail.com>
In-Reply-To: <CACsaVZKr=B6xNrxM_J60+pg48onQf1jQJYNRDLwgESje_fN13Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB2727:EE_|SA1PR11MB6991:EE_
x-ms-office365-filtering-correlation-id: 442cfa59-50e9-4b01-a1db-08dae952e72c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fFfuNjVwMPdZe9DDzDiDr7K7RF5QApIiTd9S/4ci8YJ5QOwX25siqLwF4iE6QEttvPpWz1X0f2w4wdL9CFJC78O1EcD3HzU5IbvvdWVr5vZyrx4/0KEWVNy2j5MOarqjqsk7dizZmJxLRDFT8WDLD8A1UfEkIDju9z5LlxWiDW+q4BNwIOZOP5J9ma/af4AZ+V8UTkIbOLBysgopoNdt7iDl6PWcvZuVtmGqBzBD+GdQIK1RcZnpechFmgOEHnbZ+/rTCbPdcG6CU2QHWSmIzDf49QVJN09oJCJ91K7Ro9B2iskfbNwctDrvCZSfNnShMjcav+BEfda0ElA/GDfoOc1YGxLcjEnIyxi2GPc8LUJttEBqJUciU5d20KYgmG+gUsEaufNKuZOr4cN8z1ieWy/TULwGATG100rbf5j9MTdh7zE23zz80JBD3xs5nAuZ9/3GQwrsJPxsxOm6IgYoLRvUZKst/lBdXmWXcsAPcqxvBHgfluHIzuDEOVZgUWX+Zm4UNsEbOSPxmNoXCqfhzadLlrVQ6WipnpKUnr4f83NcWPkem4/lixJEmzRbuNLu1waZW8mOB1M7/NEyo1hNbN+ZvJ+EX3C7C0VXe7K4CMRaH90x6D46F9mWX6122UBMRb4r3hfYRMJW9yI3u0jYgjFG3wsqykD/jYR05iMbuY1Hwjwypfe78l7Iy4AkyLUJbx3XPSGNaD4lql4Q9ldsVW4Ut/H6AtmkHkWorUUcVtc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2727.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(396003)(366004)(39860400002)(376002)(451199015)(83380400001)(26005)(7696005)(9686003)(186003)(71200400001)(478600001)(966005)(86362001)(55016003)(33656002)(45080400002)(82960400001)(38070700005)(38100700002)(122000001)(66574015)(5660300002)(66446008)(66556008)(64756008)(53546011)(8676002)(76116006)(66476007)(66946007)(55236004)(54906003)(41300700001)(6506007)(30864003)(4326008)(110136005)(19627235002)(316002)(8936002)(52536014)(6636002)(2906002)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OUh4TmZRT2xwUHdIeW81WVg1ZUEyeGNnMlNlK1ZUR3RFdUpBUVZ2bHJGd2Yz?=
 =?utf-8?B?TzJTaitFRDcwMXFvTmYyMTJLZW5uZkwySlJtOWFReFhiU3Ywdlc0ajJhWkpZ?=
 =?utf-8?B?bnJWTmZsbjhzOWhHV1ArNE9yVUMvZ0hEQWgvZWt4U2Q1MVdKbExONlRMUktK?=
 =?utf-8?B?TTB4ZEYrWDN2VUI3MDZVMkpjLzBvSUxWZ2VVOTNHV25IQXMwWGdZRmdSYUk1?=
 =?utf-8?B?bnBWRmZTdmJMODEvNU5NQTNsUnRaTWppdzROV1JISkxYc2F2ZjlyNm1tQm85?=
 =?utf-8?B?akIrb25SODVIQlVLdFZ6alRGbHZiVlhsbm5iem9pVm1RT05nd0VtTjBjdlJC?=
 =?utf-8?B?blM3VWdrTHk5M2hxRXBwZTdEY20zNjBIZGIrVFd0ZlhHV1dpMW5DQjJyZzdC?=
 =?utf-8?B?VVNGdFo3WEplUUdUYVZaUzJRVEdsVHZheGlLNS9tbmdHbEp3OXhHYUhNbDYv?=
 =?utf-8?B?UFJWTHAzQnVra2V4V3dFTngyemZJbXh4RnVYZk1QK1lJemN0cWV4UkVsUWFu?=
 =?utf-8?B?YVBwRTF4SkJJVjFOQU9tbTRtQ0NMMDhtYlFFaDBzQUNjZXdkTWhCNnlDa2lQ?=
 =?utf-8?B?QnpEMzRFWkRBamVES092TzBKOSt0MkthVWtaRm1XTWd3WWhCTXZYdXo5TFZC?=
 =?utf-8?B?TmR3WE1Bc0JybWlTQ1lqRklWSkpDVUFkOGtBbmpRZjR3dUZ2Y0ZES0t5b21n?=
 =?utf-8?B?MDNCTW5UMW9GR3pJYk9CZUtHQk0yOTdSMG1wbVhiZ3MvSEFPd3BPTWVuUGVB?=
 =?utf-8?B?aDlZTGsxRERNZ2tveGs4MW5EQWVobFZnWVZ3bzMyc0FCTk54WXNiWkhpOWxS?=
 =?utf-8?B?VjBoU1F6cjl5YzNvdm03RllSYU02NDVXc2l0N3RKN0tOUFVpOUZKYzFRaTlm?=
 =?utf-8?B?ZHBOMWVzS0ZRajNLQ2E3YWxJS3dkYkkreWMwN0RHZ0JVQjh6UncrQ0prSWRh?=
 =?utf-8?B?N1pxM2dpL3N3dDRaV3JwM29xMGJqbWNMeTBLcHA0ejAzOGdNR1BWRUxXaEMy?=
 =?utf-8?B?L28zSTRlektvcHYzcVlFcE5GdGYyOG00Qml2NGRyNFN3aHRHWnpBMlBId2lB?=
 =?utf-8?B?eThsNEhONkxudWdRNk5FT0VIRjBHc0xhbm5Fdy9ZaXhVRHJIS1I4YUJ4ZzFZ?=
 =?utf-8?B?NVQvOURFK0o5L0lWOG9TSnQ0OEtDaUl2RTY3NktVa09peW9YRVdBNWZBc3BB?=
 =?utf-8?B?aGJYaE9XYityc3dpUFpEclhVcmhhcTJQQjEveURaTXg1dVdYTkQzUDF1OVhX?=
 =?utf-8?B?SHJrY3hGeDh6VFhXd3BrSWJPNUtIYjhCaWkrZW1LWTZ3MkZKd2xJbEN1UDJq?=
 =?utf-8?B?enNjYjRnM0k5Mkl0SnJKRmxva3V3bXVXVjhPdE14SHhPWlAxY0hGR1JQa3Rk?=
 =?utf-8?B?U01VR3hiNXhXMVY3QjlUVWk4eW1oVTgzUzFFbWw5ZFJXcHhITzFtNHNWZnZN?=
 =?utf-8?B?UG55RHJ0dXVxTmhTaER3OHo1bk1iSnIrWWNsRS95cVhKNjA5U2tMVU1xZkwy?=
 =?utf-8?B?TlMvdjNoM1FZcUpaWUpueTJVRFl4dGxmWTQzdnIrb3RnSWtwTDAxTXplMzFh?=
 =?utf-8?B?blBGWDVLMjNaRSthZWFyLzRYWC8xWDRvOEtNcjAxU0MwWVpkd1FWc2pxaU4r?=
 =?utf-8?B?S0JzRWFBdXl0NzQzVDNEeER0bCt2bDR5Wm5OVFBSR1Vkdit4TDlDQlQ5eEsw?=
 =?utf-8?B?Z0ZMQ29sQ1B0RnFyaHhKMXdQZXcreGNrSVN3SnYrSElzZ1J3Vmo3MDE0T1Y3?=
 =?utf-8?B?U1c1ZjBTeG9MVk5Nb0ptZjBxSW5SNHVIVnQxeXFYbmJNbnI0Nk1xQlZwUUlP?=
 =?utf-8?B?Y1NHY0JYTFBYZ29ZSFcwOHpIVlVuSDAzVjMzeUxmT1A4SVVIZzBSSm1BNHFK?=
 =?utf-8?B?M3ZRL0dwYm9VdkczTk52WU0ybUNSNlhGUnZzaDZUZjMwZXJyTGRyMkwzYXlT?=
 =?utf-8?B?bEd0WWluRDgrUTd1NG9UTUJod3haV0krV2E1MXVMTjZmTmxkTkwyZnYwNmFI?=
 =?utf-8?B?VjNFL1JwTHMzSjFycjdhZ1U1bWtTallkZm9veFNxeExjc0lHR05JTkx3bkc3?=
 =?utf-8?B?V3lxWCtSMXdYWEVRQjFWYnV2cXBRTENNbWFxU1lGNzFneEVBYW8ybkZLUW9Z?=
 =?utf-8?Q?jqAmsg7p2K3MigaMZyBi4djAd?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2727.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 442cfa59-50e9-4b01-a1db-08dae952e72c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Dec 2022 04:12:30.0929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cQykqpyc7x6W9EQeMWtSvSuGJijwthvWFTB7eqBmlDzQ75QIILmaWVRnQux3G9gulYO01/wPb6FZQkI2QQvk7Pq88W9T6cPm15KGWAY0hgI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6991
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 29 Dec 2022 17:30:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672287155; x=1703823155;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cnYzUqmftOOYoH/c4yE1ZDnioSLF7OoGTCR4ZOLvRYY=;
 b=cYLP0G3c0cjusXodVll/vmCbEAIusEGjBNqlSByXF67VUh0EkQYr51kA
 +gje0KRTEWNEA+QhVixBidfQQepbZXO2/pqWmvDaqA1MzsdkJv9TCqZIi
 zhw5KTpP4adoqzV9Q34G+yUm0a95ms0inwokYA6MhcN/uWboH3KmQjtrc
 hDiMNRC4+1VzQZ93OotLfP/8Qa1UgMcIEb0YJu9dl8wRmiITvGL1YAlv3
 qqkNBy8bkWI2ev04zFYw7nbkPVSeyjC0CZg12E8aHhD/QKqBu9RBBLJoz
 72KkgFs7ohLFUkVE0CNXSFtY5IPBMGwKPqFmB0RlzE1AKMNc7CdTUDwFy
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cYLP0G3c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] igc: 5.10.146 Kernel BUG at 0xffffffff813ce19f
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 Linux-Kernel <linux-kernel@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Greg KH <gregkh@linuxfoundation.org>,
 "Torvalds, Linus" <torvalds@linux-foundation.org>,
 "therbert@google.com" <therbert@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Not getting the exact issue here. Can someone explain what is the issue with i226 in EHL platform?

Best Regards,
Sureshkumar

-----Original Message-----
From: Kyle Sanderson <kyle.leet@gmail.com> 
Sent: Thursday, December 29, 2022 8:18 AM
To: Neftin, Sasha <sasha.neftin@intel.com>; intel-wired-lan@lists.osuosl.org; Ruinskiy, Dima <dima.ruinskiy@intel.com>; Avivi, Amir <amir.avivi@intel.com>
Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; MP, Sureshkumar <sureshkumar.mp@intel.com>; Linux-Kernel <linux-kernel@vger.kernel.org>; Torvalds, Linus <torvalds@linux-foundation.org>; netdev@vger.kernel.org; Lifshits, Vitaly <vitaly.lifshits@intel.com>; naamax.meir <naamax.meir@linux.intel.com>; Greg KH <gregkh@linuxfoundation.org>; therbert@google.com
Subject: Re: [Intel-wired-lan] igc: 5.10.146 Kernel BUG at 0xffffffff813ce19f

On Wed, Dec 28, 2022 at 2:34 PM Kyle Sanderson <kyle.leet@gmail.com> wrote:
>
> On Tue, Dec 27, 2022 at 11:07 PM Neftin, Sasha <sasha.neftin@intel.com> wrote:
> > 1. Does the problem reproduce on the latest upstream kernel?(worth 
> > to check)
>
> The box is a bit problematic to try things on (it's all done through 
> the COM port).
> Will try spinning an image for retail and seeing if it continues (I 
> did go back and look at the commits, post 5.15 the diffs looked like 
> cleanups).

Yes, this is reproducible on 6.0.7. What I noticed though is, when the device is operating in client mode (Fedora), I cannot reproduce the panic.

The only way I was able to reproduce the panic was forwarding traffic from another device, which was confirmed by turning on IP forwarding and passing traffic from another asset (using the same fast.com test, this time on Fedora). Which means (I believe), this should be reproducible on Dual / Quad port NICs using igc as long as they're routing traffic through the same card.

Based on the relatively recent availability of the phy, and most
(noted) consumers using this single port onboard from a OEM it would be more difficult to encounter in the wild.

Thank you very much for your help so far.

K.

On Wed, Dec 28, 2022 at 2:34 PM Kyle Sanderson <kyle.leet@gmail.com> wrote:
>
> On Tue, Dec 27, 2022 at 11:07 PM Neftin, Sasha <sasha.neftin@intel.com> wrote:
> >
> > I do not know if it is an SW problem.
>
> I'm not experiencing the same failure on FBSD, so it's quite likely 
> software (somewhere :-)).
>
> > 1. Does the problem reproduce on the latest upstream kernel?(worth 
> > to check)
>
> The box is a bit problematic to try things on (it's all done through 
> the COM port).
> Will try spinning an image for retail and seeing if it continues (I 
> did go back and look at the commits, post 5.15 the diffs looked like 
> cleanups).
>
> > 2. I do not see this crash in our labs. I haven't a platform with 
> > six
> > i226 parts.(Trying find folks who work with this platform.)
>
> I'm not sure this (port count) is related. How I'm reproducing the 
> issue now is simply going to fast.com on a client with aggressive 
> settings (20cons minimum, 90s test duration), waiting until it starts 
> to buffer (latency increases, so packets are being deferred /
> scheduled) then removing the ethernet cable from the laptop. The 
> device seems to operate indefinitely in this mode, and only when the 
> link comes back up, and traffic is sent again, do these kernels panic.
> It doesn't seem to matter how long the cable is disconnected for 
> (another trace below where I did it for 30s). If the resets are fast 
> enough, the failure seemed less likely to occur.
>
> > 3. I am working on a patch to address .ndo_tx_timeout support. (pass 
> > the reset task to netdev while the link disconnected during traffic, 
> > under testing). It could be related and worth checking - please, let 
> > me know if you want to apply on your platform (against upstream). 
> > Reach us (Dima, Amir, and me) directly off the list.
>
> Will try pending outcome on #1, If you can target the latest stable RC 
> that you're aware of that would be appreciated.
>
> [   62.209563] igc 0000:01:00.0 eth0: Reset adapter
> [   89.560331] kernel BUG at lib/dynamic_queue_limits.c:27!
> [   89.567779] invalid opcode: 0000 [#1] SMP NOPTI
> [   89.573229] CPU: 3 PID: 0 Comm: swapper/3 Not tainted 5.15.85-amd64-vyos #1
> [   89.579989] ------------[ cut here ]------------
> [   89.581328] Hardware name: Default string Default string/Default
> string, BIOS 5.19 09/23/2022
> [   89.581329] RIP: 0010:dql_completed+0x12f/0x140
> [   89.586873] kernel BUG at lib/dynamic_queue_limits.c:27!
> [   89.596627] Code: cf c9 00 48 89 57 58 e9 54 ff ff ff 85 ed 40 0f
> 95 c5 41 39 d8 41 0f 95 c0 44 84 c5 74 04 85 d2 78 0a 44 89 d8 e9 36 
> ff ff ff <0f> 0b 01 f6 44 89 da 29 f2 0f 48 d0 eb 8d cc cc cc 41 56 49
> 89 f3
> [   89.596630] RSP: 0018:ffffb3324018ce20 EFLAGS: 00010283
> [   89.636568] RAX: 0000000000000003 RBX: ffff97640754eb40 RCX: 0000000000000036
> [   89.644842] RDX: ffff976407704000 RSI: 0000000000000620 RDI: ffff976407708c80
> [   89.653108] RBP: 0000000000000000 R08: 000000000000a1f0 R09: da49cae6d4ba44ce
> [   89.661379] R10: 000000000000a226 R11: ffffffffa05fee80 R12: 0000000000000620
> [   89.669657] R13: ffff97640754eb40 R14: ffffb33240cf9540 R15: 00000000ffffff18
> [   89.677942] FS:  0000000000000000(0000) GS:ffff97733ff80000(0000)
> knlGS:0000000000000000
> [   89.687275] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   89.694065] CR2: 00007f6c7c9e9b40 CR3: 000000064f610000 CR4: 0000000000350ee0
> [   89.702353] Call Trace:
> [   89.705549]  <IRQ>
> [   89.708269]  igc_poll+0x19d/0x14b0 [igc]
> [   89.713073]  ? __ip_finish_output+0xc0/0x1a0
> [   89.718255]  ? __netif_receive_skb_one_core+0x86/0xa0
> [   89.724269]  __napi_poll+0x22/0x110
> [   89.728597]  net_rx_action+0xe9/0x250
> [   89.733093]  ? igc_msix_ring+0x51/0x60 [igc]
> [   89.738230]  __do_softirq+0xb8/0x1e9
> [   89.742616]  irq_exit_rcu+0x84/0xb0
> [   89.746915]  common_interrupt+0x78/0x90
> [   89.751566]  </IRQ>
> [   89.754323]  <TASK>
> [   89.757070]  asm_common_interrupt+0x22/0x40
> [   89.762066] RIP: 0010:cpuidle_enter_state+0xb5/0x2a0
> [   89.767931] Code: c1 48 b2 ff 65 8b 3d b2 58 a9 60 e8 65 47 b2 ff
> 31 ff 49 89 c5 e8 6b 52 b2 ff 45 84 f6 0f 85 85 01 00 00 fb 66 0f 1f
> 44 00 00 <45> 85 ff 0f 88 bb 00 00 00 49 63 c7 4c 2b 2c 24 48 8d 14 40
> 48 8d
> [   89.789731] RSP: 0018:ffffb332400ffea8 EFLAGS: 00000246
> [   89.795904] RAX: ffff97733ffa3440 RBX: 0000000000000003 RCX: 000000000000001f
> [   89.804138] RDX: 0000000000000000 RSI: 0000000046ec0743 RDI: 0000000000000000
> [   89.812376] RBP: ffff97733ffac910 R08: 00000014da35607b R09: 00000014bbdae179
> [   89.820594] R10: 00000000000000e2 R11: 000000000000357c R12: ffffffffa00ccb40
> [   89.828795] R13: 00000014da35607b R14: 0000000000000000 R15: 0000000000000003
> [   89.837026]  ? cpuidle_enter_state+0xa5/0x2a0
> [   89.842226]  cpuidle_enter+0x24/0x40
> [   89.846558]  do_idle+0x1e4/0x280
> [   89.850516]  cpu_startup_entry+0x14/0x20
> [   89.855223]  secondary_startup_64_no_verify+0xb0/0xbb
> [   89.861153]  </TASK>
> [   89.863953] Modules linked in: wireguard curve25519_x86_64
> libcurve25519_generic libchacha20poly1305 chacha_x86_64
> poly1305_x86_64 ip6_udp_tunnel udp_tunnel libchacha vrf nft_masq 
> nf_nat_tftp nf_conntrack_tftp nf_nat_sip nf_conntrack_sip nf_nat_pptp 
> nf_conntrack_pptp nf_nat_h323 nf_conntrack_h323 nf_nat_ftp 
> nf_conntrack_ftp nft_objref nft_counter nft_ct nft_chain_nat nf_nat 
> nf_tables nfnetlink_cthelper nf_conntrack nf_defrag_ipv6
> nf_defrag_ipv4 libcrc32c nfnetlink af_packet x86_pkg_temp_thermal 
> intel_powerclamp coretemp crct10dif_pclmul crc32_pclmul 
> ghash_clmulni_intel aesni_intel crypto_simd cryptd intel_cstate 
> iTCO_wdt evdev mei_me pcspkr efi_pstore iTCO_vendor_support mei sg 
> tpm_crb tpm_tis tpm_tis_core tpm rng_core button acpi_pad 
> mpls_iptunnel mpls_router ip_tunnel br_netfilter bridge stp llc fuse 
> configfs efivarfs ip_tables x_tables autofs4 usb_storage ohci_hcd 
> uhci_hcd ehci_hcd squashfs zstd_decompress lz4_decompress loop overlay
> ext4 crc32c_generic crc16 mbcache jbd2 nls_cp437
> [   89.864000]  vfat fat efivars nls_ascii hid_generic usbhid hid
> sd_mod t10_pi xhci_pci ahci libahci libata crc32c_intel i2c_i801 
> i2c_smbus scsi_mod igc xhci_hcd scsi_common thermal fan
> [   89.982932] invalid opcode: 0000 [#2] SMP NOPTI
> [   89.982934] ---[ end trace b0c0da59c18b279b ]---
> [   89.988461] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G      D
>   5.15.85-amd64-vyos #1
> [   90.031995] Hardware name: Default string Default string/Default
> string, BIOS 5.19 09/23/2022
> [   90.079903] RIP: 0010:dql_completed+0x12f/0x140
> [   90.099780] RIP: 0010:dql_completed+0x12f/0x140
> [   90.101151] Code: cf c9 00 48 89 57 58 e9 54 ff ff ff 85 ed 40 0f
> 95 c5 41 39 d8 41 0f 95 c0 44 84 c5 74 04 85 d2 78 0a 44 89 d8 e9 36 
> ff ff ff <0f> 0b 01 f6 44 89 da 29 f2 0f 48 d0 eb 8d cc cc cc 41 56 49
> 89 f3
> [   90.106717] Code: cf c9 00 48 89 57 58 e9 54 ff ff ff 85 ed 40 0f
> 95 c5 41 39 d8 41 0f 95 c0 44 84 c5 74 04 85 d2 78 0a 44 89 d8 e9 36 
> ff ff ff <0f> 0b 01 f6 44 89 da 29 f2 0f 48 d0 eb 8d cc cc cc 41 56 49
> 89 f3
> [   90.129020] RSP: 0018:ffffb33240003e20 EFLAGS: 00010293
> [   90.151344] RSP: 0018:ffffb3324018ce20 EFLAGS: 00010283
> [   90.157686] RAX: 0000000000000000 RBX: ffff97640754bb40 RCX: 0000000000000bd4
> [   90.157686]
> [   90.157687] RDX: ffff976407704000 RSI: 0000000000002966 RDI: ffff9764077088c0
> [   90.164026] RAX: 0000000000000003 RBX: ffff97640754eb40 RCX: 0000000000000036
> [   90.172433] RBP: 0000000000000000 R08: 000000000002bdba R09: 0000000000000000
> [   90.174719] RDX: ffff976407704000 RSI: 0000000000000620 RDI: ffff976407708c80
> [   90.183146] R10: 000000000002c98e R11: ffffffffa05fee80 R12: 0000000000002966
> [   90.191560] RBP: 0000000000000000 R08: 000000000000a1f0 R09: da49cae6d4ba44ce
> [   90.199977] R13: ffff97640754bb40 R14: ffffb3324087d4c0 R15: 00000000ffffffa8
> [   90.208382] R10: 000000000000a226 R11: ffffffffa05fee80 R12: 0000000000000620
> [   90.216792] FS:  0000000000000000(0000) GS:ffff97733fe00000(0000)
> knlGS:0000000000000000
> [   90.225213] R13: ffff97640754eb40 R14: ffffb33240cf9540 R15: 00000000ffffff18
> [   90.233641] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   90.242058] FS:  0000000000000000(0000) GS:ffff97733ff80000(0000)
> knlGS:0000000000000000
> [   90.251492] CR2: 00007f6097a90010 CR3: 0000000101468000 CR4: 0000000000350ef0
> [   90.259887] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   90.266776] Call Trace:
> [   90.276193] CR2: 00007f6c7c9e9b40 CR3: 0000000104378000 CR4: 0000000000350ee0
> [   90.284596]  <IRQ>
> [   90.284597]  igc_poll+0x19d/0x14b0 [igc]
> [   90.291475] Kernel panic - not syncing: Fatal exception in interrupt
> [   90.294754]  __napi_poll+0x22/0x110
> [   90.322584]  net_rx_action+0xe9/0x250
> [   90.327118]  ? igc_msix_ring+0x51/0x60 [igc]
> [   90.332311]  __do_softirq+0xb8/0x1e9
> [   90.336716]  irq_exit_rcu+0x84/0xb0
> [   90.341031]  common_interrupt+0x78/0x90
> [   90.345725]  </IRQ>
> [   90.348534]  <TASK>
> [   90.351325]  asm_common_interrupt+0x22/0x40
> [   90.356365] RIP: 0010:cpuidle_enter_state+0xb5/0x2a0
> [   90.362239] Code: c1 48 b2 ff 65 8b 3d b2 58 a9 60 e8 65 47 b2 ff
> 31 ff 49 89 c5 e8 6b 52 b2 ff 45 84 f6 0f 85 85 01 00 00 fb 66 0f 1f
> 44 00 00 <45> 85 ff 0f 88 bb 00 00 00 49 63 c7 4c 2b 2c 24 48 8d 14 40
> 48 8d
> [   90.384058] RSP: 0018:ffffffffa0003e60 EFLAGS: 00000246
> [   90.390221] RAX: ffff97733fe23440 RBX: 0000000000000001 RCX: 000000000000001f
> [   90.398453] RDX: 0000000000000000 RSI: 0000000046ec0743 RDI: 0000000000000000
> [   90.406695] RBP: ffff97733fe2c910 R08: 00000014db620c58 R09: 0000000000000018
> [   90.414928] R10: 0000000000000259 R11: 00000000000000da R12: ffffffffa00ccb40
> [   90.423151] R13: 00000014db620c58 R14: 0000000000000000 R15: 0000000000000001
> [   90.431387]  cpuidle_enter+0x24/0x40
> [   90.435751]  do_idle+0x1e4/0x280
> [   90.439733]  cpu_startup_entry+0x14/0x20
> [   90.444462]  start_kernel+0x627/0x650
> [   90.448909]  secondary_startup_64_no_verify+0xb0/0xbb
> [   90.454863]  </TASK>
> [   90.457714] Modules linked in: wireguard curve25519_x86_64
> libcurve25519_generic libchacha20poly1305 chacha_x86_64
> poly1305_x86_64 ip6_udp_tunnel udp_tunnel libchacha vrf nft_masq 
> nf_nat_tftp nf_conntrack_tftp nf_nat_sip nf_conntrack_sip nf_nat_pptp 
> nf_conntrack_pptp nf_nat_h323 nf_conntrack_h323 nf_nat_ftp 
> nf_conntrack_ftp nft_objref nft_counter nft_ct nft_chain_nat nf_nat 
> nf_tables nfnetlink_cthelper nf_conntrack nf_defrag_ipv6
> nf_defrag_ipv4 libcrc32c nfnetlink af_packet x86_pkg_temp_thermal 
> intel_powerclamp coretemp crct10dif_pclmul crc32_pclmul 
> ghash_clmulni_intel aesni_intel crypto_simd cryptd intel_cstate 
> iTCO_wdt evdev mei_me pcspkr efi_pstore iTCO_vendor_support mei sg 
> tpm_crb tpm_tis tpm_tis_core tpm rng_core button acpi_pad 
> mpls_iptunnel mpls_router ip_tunnel br_netfilter bridge stp llc fuse 
> configfs efivarfs ip_tables x_tables autofs4 usb_storage ohci_hcd 
> uhci_hcd ehci_hcd squashfs zstd_decompress lz4_decompress loop overlay
> ext4 crc32c_generic crc16 mbcache jbd2 nls_cp437
> [   90.457755]  vfat fat efivars nls_ascii hid_generic usbhid hid
> sd_mod t10_pi xhci_pci ahci libahci libata crc32c_intel i2c_i801 
> i2c_smbus scsi_mod igc xhci_hcd scsi_common thermal fan
> [   90.576795] Kernel Offset: 0x1e000000 from 0xffffffff81000000
> (relocation range: 0xffffffff80000000-0xffffffffbfffffff)
> [   90.704454] ---[ end Kernel panic - not syncing: Fatal exception in
> interrupt ]---
>
> K.
>
> On Tue, Dec 27, 2022 at 11:07 PM Neftin, Sasha <sasha.neftin@intel.com> wrote:
> >
> > On 12/28/2022 06:45, Kyle Sanderson wrote:
> > > hi Intel IGC Maintainers,
> > >
> > > I've managed to reproduce this issue on 5.15.85 (same steps to 
> > > reproduce), and have symbols and line numbers in the below panic.
> > > There's no device support in 5.4 for this hardware, so I was 
> > > unable to reproduce the issue there in igc.
> > >
> > >  From the Kernel BUG_ON, it's being asked to read beyond the array 
> > > size. The min call looks very suspicious (igb, and other drives 
> > > don't appear to do that), but I don't know if that's where the issue is.
> > >
> > > Please let me know if there's anything more I can do to help.
> > I do not know if it is an SW problem.
> > 1. Does the problem reproduce on the latest upstream kernel?(worth 
> > to check) 2. I do not see this crash in our labs. I haven't a 
> > platform with six
> > i226 parts.(Trying find folks who work with this platform.) 3. I am 
> > working on a patch to address .ndo_tx_timeout support. (pass the 
> > reset task to netdev while the link disconnected during traffic, 
> > under testing). It could be related and worth checking - please, let 
> > me know if you want to apply on your platform (against upstream). 
> > Reach us (Dima, Amir, and me) directly off the list.
> > >
> > > [  223.725003] igc 0000:01:00.0 eth0: Reset adapter [  233.139441] 
> > > kernel BUG at lib/dynamic_queue_limits.c:27!
> > > [  233.146814] invalid opcode: 0000 [#1] SMP NOPTI [  233.146816] 
> > > refcount_t: saturated; leaking memory.
> > > [  233.146833] WARNING: CPU: 0 PID: 0 at lib/refcount.c:19
> > > refcount_warn_saturate+0x97/0x110
> > > [  233.153243] CPU: 1 PID: 0 Comm: swapper/1 Tainted: G        W
> > >    5.15.85-amd64-vyos #1
> > > [  233.159216] Modules linked in:
> > > [  233.168451] Hardware name: Default string Default 
> > > string/Default string, BIOS 5.19 09/23/2022 [  233.177895]  
> > > wireguard [  233.181645] RIP: 0010:dql_completed+0x12f/0x140 [  
> > > 233.191360]  curve25519_x86_64 [  233.194406] Code: cf c9 00 48 89 
> > > 57 58 e9 54 ff ff ff 85 ed 40 0f
> > > 95 c5 41 39 d8 41 0f 95 c0 44 84 c5 74 04 85 d2 78 0a 44 89 d8 e9 
> > > 36 ff ff ff <0f> 0b 01 f6 44 89 da 29 f2 0f 48 d0 eb 8d cc cc cc 
> > > 41 56 49
> > > 89 f3
> > > [  233.199767]  libcurve25519_generic [  233.203540] RSP: 
> > > 0018:ffffa85dc0134e20 EFLAGS: 00010283 [  233.225248]  
> > > libchacha20poly1305 [  233.229417] [  233.229417] RAX: 
> > > 0000000000000001 RBX: ffff934002104b40 RCX: 00000000000005ea [  
> > > 233.235539]  chacha_x86_64 [  233.239508] RDX: ffff934002110000 
> > > RSI: 0000000000001d92 RDI: ffff93400211a200 [  233.241606]  
> > > poly1305_x86_64 [  233.249796] RBP: 0000000000000000 R08: 
> > > 000000000004ad4e R09: 0000000000000000 [  233.253226]  
> > > ip6_udp_tunnel [  233.261445] R10: 000000000004b338 R11: 
> > > ffffffffbabfee80 R12: 0000000000001d92 [  233.261446] R13: 
> > > ffff934002104b40 R14: ffffa85dc09d1450 R15: 00000000ffffffa6 [  
> > > 233.265054]  udp_tunnel [  233.273314] FS:  0000000000000000(0000) 
> > > GS:ffff934f3fe80000(0000)
> > > knlGS:0000000000000000
> > > [  233.276826]  libchacha
> > > [  233.285023] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033 [  
> > > 233.285025] CR2: 00007f294393fe84 CR3: 0000000605e10000 CR4: 
> > > 0000000000350ee0 [  233.285026] Call Trace:
> > > [  233.285026]  <IRQ>
> > > [  233.285027]  igc_poll+0x19d/0x14b0 [igc] [  233.293242]  vrf [  
> > > 233.296396]  __napi_poll+0x22/0x110 [  233.305688]  nft_masq [  
> > > 233.308763]  net_rx_action+0xe9/0x250 [  233.315455]  nf_nat_tftp 
> > > [  233.323756]  ? igc_msix_ring+0x51/0x60 [igc] [  233.326946]  
> > > nf_conntrack_tftp [  233.329661]  __do_softirq+0xb8/0x1e9 [  
> > > 233.334471]  nf_nat_sip [  233.336991]  irq_exit_rcu+0x84/0xb0 [  
> > > 233.341290]  nf_conntrack_sip [  233.344284]  
> > > common_interrupt+0x78/0x90 [  233.348778]  nf_nat_pptp [  
> > > 233.352104]  </IRQ> [  233.357240]  nf_conntrack_pptp [  
> > > 233.361052]  <TASK> [  233.365360]  nf_nat_h323 [  233.368484]  
> > > asm_common_interrupt+0x22/0x40 [  233.372723]  nf_conntrack_h323 [  
> > > 233.376363] RIP: 0010:cpuidle_enter_state+0xb5/0x2a0
> > > [  233.380952]  nf_nat_ftp
> > > [  233.384155] Code: c1 48 b2 ff 65 8b 3d b2 58 49 46 e8 65 47 b2 
> > > ff
> > > 31 ff 49 89 c5 e8 6b 52 b2 ff 45 84 f6 0f 85 85 01 00 00 fb 66 0f 
> > > 1f
> > > 44 00 00 <45> 85 ff 0f 88 bb 00 00 00 49 63 c7 4c 2b 2c 24 48 8d 
> > > 14 40
> > > 48 8d
> > > [  233.386840]  nf_conntrack_ftp
> > > [  233.390553] RSP: 0018:ffffa85dc00efea8 EFLAGS: 00000246 [  
> > > 233.393224]  nft_objref [  233.396340] [  233.396340] RAX: 
> > > ffff934f3fea3440 RBX: 0000000000000003 RCX: 000000000000001f [  
> > > 233.401256]  nft_counter [  233.404981] RDX: 0000000000000000 RSI: 
> > > 0000000046ec0743 RDI: 0000000000000000 [  233.410769]  nft_ct [  
> > > 233.413816] RBP: ffff934f3feac910 R08: 00000036481c5d1b R09: 
> > > 0000003605db0041 [  233.435320]  nft_chain_nat [  233.438947] R10: 
> > > 0000000000000072 R11: 0000000000000164 R12: ffffffffba6ccb40 [  
> > > 233.445014]  nf_nat [  233.448065] R13: 00000036481c5d1b R14: 
> > > 0000000000000000 R15: 0000000000000003 [  233.450073]  nf_tables [  
> > > 233.458210]  ? cpuidle_enter_state+0xa5/0x2a0 [  233.461335]  
> > > nfnetlink_cthelper [  233.469449]  cpuidle_enter+0x24/0x40 [  
> > > 233.472106]  nf_conntrack [  233.480247]  do_idle+0x1e4/0x280 [  
> > > 233.483580]  nf_defrag_ipv6 [  233.491703]  
> > > cpu_startup_entry+0x14/0x20 [  233.494399]  nf_defrag_ipv4 [  
> > > 233.502517]  secondary_startup_64_no_verify+0xb0/0xbb
> > > [  233.505503]  libcrc32c
> > > [  233.510641]  </TASK>
> > > [  233.514474]  nfnetlink
> > > [  233.518787] Modules linked in: wireguard [  233.522065]  
> > > af_packet [  233.525975]  curve25519_x86_64 [  233.529441]  
> > > x86_pkg_temp_thermal [  233.534136]  libcurve25519_generic [  
> > > 233.537612]  intel_powerclamp [  233.543511]  libchacha20poly1305 
> > > [  233.546508]  coretemp [  233.549313]  chacha_x86_64 
> > > poly1305_x86_64 [  233.552304]  crct10dif_pclmul [  233.556981]  
> > > ip6_udp_tunnel udp_tunnel libchacha vrf nft_masq nf_nat_tftp 
> > > nf_conntrack_tftp nf_nat_sip nf_conntrack_sip nf_nat_pptp 
> > > nf_conntrack_pptp nf_nat_h323 nf_conntrack_h323 nf_nat_ftp 
> > > nf_conntrack_ftp [  233.559990]  crc32_pclmul [  233.563754]  
> > > nft_objref nft_counter [  233.567791]  ghash_clmulni_intel [  
> > > 233.571912]  nft_ct [  233.575569]  aesni_intel [  233.579500]  
> > > nft_chain_nat [  233.582390]  crypto_simd [  233.587225]  nf_nat [  
> > > 233.590841]  cryptd [  233.612012]  nf_tables [  233.615288]  
> > > intel_cstate [  233.619486]  nfnetlink_cthelper [  233.623388]  
> > > iTCO_wdt [  233.626063]  nf_conntrack [  233.629196]  efi_pstore [  
> > > 233.632499]  nf_defrag_ipv6 [  233.635597]  pcspkr [  233.638218]  
> > > nf_defrag_ipv4 [  233.640825]  evdev [  233.643700]  libcrc32c [  
> > > 233.646869]  iTCO_vendor_support [  233.650591]  nfnetlink [  
> > > 233.653355]  sg [  233.656497]  af_packet [  233.659446]  tpm_crb 
> > > [  233.662775]  x86_pkg_temp_thermal [  233.665337]  tpm_tis [  
> > > 233.668670]  intel_powerclamp [  233.671144]  tpm_tis_core [  
> > > 233.673993]  coretemp [  233.677768]  tpm [  233.680591]  
> > > crct10dif_pclmul [  233.682782]  rng_core [  233.685624]  
> > > crc32_pclmul [  233.688271]  mei_me [  233.692161]  
> > > ghash_clmulni_intel [  233.694799]  mei [  233.698290]  
> > > aesni_intel [  233.701384]  button [  233.704125]  crypto_simd [  
> > > 233.706379]  acpi_pad [  233.709861]  cryptd [  233.712587]  
> > > mpls_iptunnel [  233.715682]  intel_cstate [  233.718177]  
> > > mpls_router [  233.721872]  iTCO_wdt [  233.724077]  ip_tunnel [  
> > > 233.727034]  efi_pstore [  233.729533]  br_netfilter [  
> > > 233.732471]  pcspkr [  233.735139]  bridge [  233.737627]  evdev [  
> > > 233.740768]  stp [  233.743827]  iTCO_vendor_support [  
> > > 233.746789]  llc [  233.749457]  sg [  233.752222]  fuse [  
> > > 233.755071]  tpm_crb [  233.758113]  configfs [  233.760589]  
> > > tpm_tis [  233.763065]  efivarfs [  233.765437]  tpm_tis_core [  
> > > 233.767622]  ip_tables [  233.771314]  tpm [  233.773511]  
> > > x_tables [  233.775607]  rng_core [  233.777893]  autofs4 [  
> > > 233.780456]  mei_me [  233.783120]  usb_storage [  233.785686]  
> > > mei [  233.788319]  ohci_hcd [  233.791358]  button [  233.794104]  
> > > uhci_hcd [  233.796287]  acpi_pad [  233.798948]  ehci_hcd [  
> > > 233.801608]  mpls_iptunnel [  233.804146]  squashfs [  233.806598]  
> > > mpls_router [  233.809530]  zstd_decompress [  233.811719]  
> > > ip_tunnel [  233.814378]  lz4_decompress [  233.816841]  
> > > br_netfilter [  233.819492]  loop [  233.822152]  bridge [  
> > > 233.824802]  overlay [  233.827927]  stp [  233.830564]  ext4 [  
> > > 233.833498]  llc [  233.836805]  crc32c_generic [  233.839557]  
> > > fuse [  233.842787]  crc16 [  233.845815]  configfs [  233.848084]  
> > > mbcache [  233.850564]  efivarfs [  233.853117]  jbd2 [  
> > > 233.855296]  ip_tables [  233.857561]  nls_cp437 [  233.859722]  
> > > x_tables autofs4 [  233.862950]  vfat [  233.865216]  usb_storage 
> > > [  233.867585]  fat [  233.870239]  ohci_hcd uhci_hcd [  
> > > 233.872779]  efivars [  233.875414]  ehci_hcd [  233.877693]  
> > > nls_ascii [  233.880433]  squashfs zstd_decompress [  233.883172]  
> > > hid_generic [  233.886580]  lz4_decompress [  233.888861]  usbhid 
> > > [  233.891803]  loop [  233.893980]  hid [  233.897493]  overlay [  
> > > 233.900050]  sd_mod [  233.902702]  ext4 [  233.905446]  t10_pi [  
> > > 233.909612]  crc32c_generic [  233.912548]  ahci [  233.915776]  
> > > crc16 [  233.918244]  libahci [  233.920540]  mbcache [  
> > > 233.922740]  crc32c_intel [  233.925303]  jbd2 [  233.927777]  
> > > libata [  233.930058]  nls_cp437 [  233.932530]  i2c_i801 [  
> > > 233.935740]  vfat fat [  233.938022]  i2c_smbus [  233.940397]  
> > > efivars [  233.942945]  xhci_pci [  233.945504]  nls_ascii 
> > > hid_generic [  233.948535]  xhci_hcd [  233.950814]  usbhid [  
> > > 233.953282]  scsi_mod [  233.956022]  hid [  233.958671]  
> > > scsi_common [  233.961327]  sd_mod t10_pi [  233.964066]  igc [  
> > > 233.966618]  ahci [  233.969274]  thermal [  233.973168]  libahci 
> > > [  233.975830]  fan [  233.978310]  crc32c_intel [  233.980975] [  
> > > 233.983158]  libata
> > > [  233.986113] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G        W
> > >    5.15.85-amd64-vyos #1
> > > [  233.989257]  i2c_i801
> > > [  233.991441] Hardware name: Default string Default 
> > > string/Default string, BIOS 5.19 09/23/2022 [  233.993730]  
> > > i2c_smbus [  233.996286] RIP: 
> > > 0010:refcount_warn_saturate+0x97/0x110
> > > [  233.998850]  xhci_pci
> > > [  234.001055] Code: 00 01 e8 cb 40 42 00 0f 0b c3 cc cc cc cc 80 
> > > 3d
> > > 39 f4 da 00 00 75 a8 48 c7 c7 d8 13 43 ba c6 05 29 f4 da 00 01 e8 
> > > a8
> > > 40 42 00 <0f> 0b c3 cc cc cc cc 80 3d 13 f4 da 00 00 75 85 48 c7 
> > > c7 30
> > > 14 43
> > > [  234.004069]  xhci_hcd scsi_mod
> > > [  234.005878] RSP: 0018:ffffa85dc0003ae0 EFLAGS: 00010282 [  
> > > 234.008348]  scsi_common igc [  234.017611] [  234.020297]  
> > > thermal fan [  234.029764] RAX: 0000000000000000 RBX: 
> > > 0000000000005837 RCX: 0000000000000000 [  234.032559] [  
> > > 234.032585] ---[ end trace 8acd09a29bf2e660 ]--- [  234.038458] 
> > > RDX: ffff934f3fe1f3e0 RSI: ffff934f3fe1c490 RDI: 0000000000000300 
> > > [  234.141617] RIP: 0010:dql_completed+0x12f/0x140 [  234.146459] 
> > > RBP: ffff9340074b28c0 R08: 0000000000000000 R09: ffffa85dc0003908 
> > > [  234.150075] Code: cf c9 00 48 89 57 58 e9 54 ff ff ff 85 ed 40 
> > > 0f
> > > 95 c5 41 39 d8 41 0f 95 c0 44 84 c5 74 04 85 d2 78 0a 44 89 d8 e9 
> > > 36 ff ff ff <0f> 0b 01 f6 44 89 da 29 f2 0f 48 d0 eb 8d cc cc cc 
> > > 41 56 49
> > > 89 f3
> > > [  234.156048] R10: ffffa85dc0003900 R11: ffffffffba6b0ce8 R12: 
> > > ffff9340074b2908 [  234.159502] RSP: 0018:ffffa85dc0134e20 EFLAGS: 
> > > 00010283 [  234.161442] R13: ffffffffba28eb60 R14: 
> > > fffffffffffffff0 R15: ffffa85dc0003b40 [  234.164506] [  
> > > 234.172573] FS:  0000000000000000(0000) GS:ffff934f3fe00000(0000)
> > > knlGS:0000000000000000
> > > [  234.174545] RAX: 0000000000000001 RBX: ffff934002104b40 RCX: 
> > > 00000000000005ea [  234.179914] CS:  0010 DS: 0000 ES: 0000 CR0: 
> > > 0000000080050033 [  234.188023] RDX: ffff934002110000 RSI: 
> > > 0000000000001d92 RDI: ffff93400211a200 [  234.193301] CR2: 
> > > 000055e26436ee10 CR3: 0000000605e10000 CR4: 0000000000350ef0 [  
> > > 234.201457] RBP: 0000000000000000 R08: 000000000004ad4e R09: 0000000000000000 [  234.223063] Call Trace:
> > > [  234.231267] R10: 000000000004b338 R11: ffffffffbabfee80 R12: 
> > > 0000000000001d92 [  234.237398]  <IRQ> [  234.245613] R13: 
> > > ffff934002104b40 R14: ffffa85dc09d1450 R15: 00000000ffffffa6 [  
> > > 234.247734]  __nf_conntrack_find_get+0x331/0x340 [nf_conntrack] [  
> > > 234.256997] FS:  0000000000000000(0000) GS:ffff934f3fe80000(0000)
> > > knlGS:0000000000000000
> > > [  234.265245]  nf_conntrack_in+0x1e1/0x760 [nf_conntrack] [  
> > > 234.271954] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033 [  
> > > 234.280252]  nf_hook_slow+0x37/0xb0 [  234.288537] CR2: 
> > > 00007f294393fe84 CR3: 000000011da48000 CR4: 0000000000350ee0 [  
> > > 234.296788]  nf_hook_slow_list+0x8c/0x130 [  234.300002] Kernel 
> > > panic - not syncing: Fatal exception in interrupt [  234.308339]  
> > > ip_sublist_rcv+0x1fa/0x220 [  234.319422] Kernel Offset: 
> > > 0x38600000 from 0xffffffff81000000 (relocation range: 
> > > 0xffffffff80000000-0xffffffffbfffffff)
> > > [  234.494681] ---[ end Kernel panic - not syncing: Fatal 
> > > exception in interrupt ]---
> > >
> > > Kyle.
> > >
> > > On Tue, Dec 20, 2022 at 10:29 AM Kyle Sanderson <kyle.leet@gmail.com> wrote:
> > >>
> > >> re-sending as plain text - my apologies.
> > >>
> > >>> On Sun, 18 Dec 2022, 23:31 Neftin, Sasha wrote:
> > >>> What is a board in use (LAN on board or NIC)?
> > >>> What is lspci, lspci -t and lspci -s 0000:[lan bus:device.function] -vvv output?
> > >>
> > >> It's embedded on the board, could very well be on a bridge though 
> > >> as a card. The box has 6 ports, 2 were in-use while testing.
> > >>
> > >> 00:00.0 Host bridge: Intel Corporation Device 4522 (rev 01)
> > >> 00:02.0 VGA compatible controller: Intel Corporation Elkhart Lake 
> > >> [UHD Graphics Gen11 16EU] (rev 01)
> > >> 00:08.0 System peripheral: Intel Corporation Device 4511 (rev 01)
> > >> 00:14.0 USB controller: Intel Corporation Device 4b7d (rev 11)
> > >> 00:14.2 RAM memory: Intel Corporation Device 4b7f (rev 11)
> > >> 00:16.0 Communication controller: Intel Corporation Device 4b70 
> > >> (rev 11)
> > >> 00:17.0 SATA controller: Intel Corporation Device 4b63 (rev 11)
> > >> 00:1c.0 PCI bridge: Intel Corporation Device 4b38 (rev 11)
> > >> 00:1c.1 PCI bridge: Intel Corporation Device 4b39 (rev 11)
> > >> 00:1c.2 PCI bridge: Intel Corporation Device 4b3a (rev 11)
> > >> 00:1c.3 PCI bridge: Intel Corporation Device 4b3b (rev 11)
> > >> 00:1c.4 PCI bridge: Intel Corporation Device 4b3c (rev 11)
> > >> 00:1c.6 PCI bridge: Intel Corporation Device 4b3e (rev 11)
> > >> 00:1f.0 ISA bridge: Intel Corporation Device 4b00 (rev 11)
> > >> 00:1f.3 Audio device: Intel Corporation Device 4b58 (rev 11)
> > >> 00:1f.4 SMBus: Intel Corporation Device 4b23 (rev 11)
> > >> 00:1f.5 Serial bus controller: Intel Corporation Device 4b24 (rev 
> > >> 11)
> > >> 01:00.0 Ethernet controller: Intel Corporation Device 125c (rev 
> > >> 04)
> > >> 02:00.0 Ethernet controller: Intel Corporation Device 125c (rev 
> > >> 04)
> > >> 03:00.0 Ethernet controller: Intel Corporation Device 125c (rev 
> > >> 04)
> > >> 04:00.0 Ethernet controller: Intel Corporation Device 125c (rev 
> > >> 04)
> > >> 05:00.0 Ethernet controller: Intel Corporation Device 125c (rev 
> > >> 04)
> > >> 06:00.0 Ethernet controller: Intel Corporation Device 125c (rev 
> > >> 04)
> > >>
> > >> -[0000:00]-+-00.0
> > >>             +-02.0
> > >>             +-08.0
> > >>             +-14.0
> > >>             +-14.2
> > >>             +-16.0
> > >>             +-17.0
> > >>             +-1c.0-[01]----00.0
> > >>             +-1c.1-[02]----00.0
> > >>             +-1c.2-[03]----00.0
> > >>             +-1c.3-[04]----00.0
> > >>             +-1c.4-[05]----00.0
> > >>             +-1c.6-[06]----00.0
> > >>             +-1f.0
> > >>             +-1f.3
> > >>             +-1f.4
> > >>             \-1f.5
> > >>
> > >>
> > >> 01:00.0 Ethernet controller: Intel Corporation Device 125c (rev 04)
> > >>   Subsystem: Intel Corporation Device 0000
> > >>   Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- 
> > >> ParErr-
> > >> Stepping- SERR- FastB2B- DisINTx+
> > >>   Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
> > >> <TAbort- <MAbort- >SERR- <PERR- INTx-
> > >>   Latency: 0
> > >>   Interrupt: pin A routed to IRQ 16
> > >>   Region 0: Memory at 80600000 (32-bit, non-prefetchable) [size=1M]
> > >>   Region 3: Memory at 80700000 (32-bit, non-prefetchable) [size=16K]
> > >>   Capabilities: [40] Power Management version 3
> > >>    Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
> > >>    Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
> > >>   Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
> > >>    Address: 0000000000000000 Data: 0000
> > >>    Masking: 00000000 Pending: 00000000
> > >>   Capabilities: [70] MSI-X: Enable+ Count=5 Masked-
> > >>    Vector table: BAR=3 offset=00000000
> > >>    PBA: BAR=3 offset=00002000
> > >>   Capabilities: [a0] Express (v2) Endpoint, MSI 00
> > >>    DevCap: MaxPayload 512 bytes, PhantFunc 0, Latency L0s <512ns, L1 <64us
> > >>     ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset+ SlotPowerLimit 0W
> > >>    DevCtl: CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+
> > >>     RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop+ FLReset-
> > >>     MaxPayload 128 bytes, MaxReadReq 512 bytes
> > >>    DevSta: CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr+ TransPend-
> > >>    LnkCap: Port #0, Speed 5GT/s, Width x1, ASPM L1, Exit Latency L1 <4us
> > >>     ClockPM- Surprise- LLActRep- BwNot- ASPMOptComp+
> > >>    LnkCtl: ASPM Disabled; RCB 64 bytes, Disabled- CommClk+
> > >>     ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
> > >>    LnkSta: Speed 5GT/s, Width x1
> > >>     TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
> > >>    DevCap2: Completion Timeout: Range ABCD, TimeoutDis+ NROPrPrP- LTR+
> > >>      10BitTagComp- 10BitTagReq- OBFF Not Supported, ExtFmt- EETLPPrefix-
> > >>      EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
> > >>      FRS- TPHComp- ExtTPHComp-
> > >>      AtomicOpsCap: 32bit- 64bit- 128bitCAS-
> > >>    DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR+
> > >> 10BitTagReq- OBFF Disabled,
> > >>      AtomicOpsCtl: ReqEn-
> > >>    LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-
> > >>      Transmit Margin: Normal Operating Range, 
> > >> EnterModifiedCompliance-
> > >> ComplianceSOS-
> > >>      Compliance Preset/De-emphasis: -6dB de-emphasis, 0dB preshoot
> > >>    LnkSta2: Current De-emphasis Level: -6dB, 
> > >> EqualizationComplete-
> > >> EqualizationPhase1-
> > >>      EqualizationPhase2- EqualizationPhase3- LinkEqualizationRequest-
> > >>      Retimer- 2Retimers- CrosslinkRes: unsupported
> > >>   Capabilities: [100 v2] Advanced Error Reporting
> > >>    UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- 
> > >> RxOF-
> > >> MalfTLP- ECRC- UnsupReq- ACSViol-
> > >>    UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- 
> > >> RxOF-
> > >> MalfTLP- ECRC- UnsupReq- ACSViol-
> > >>    UESvrt: DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- 
> > >> RxOF+
> > >> MalfTLP+ ECRC- UnsupReq- ACSViol-
> > >>    CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-
> > >>    CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+
> > >>    AERCap: First Error Pointer: 00, ECRCGenCap+ ECRCGenEn- ECRCChkCap+ ECRCChkEn-
> > >>     MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
> > >>    HeaderLog: 00000000 00000000 00000000 00000000
> > >>   Capabilities: [140 v1] Device Serial Number e4-3a-6e-ff-ff-5d-bb-54
> > >>   Capabilities: [1c0 v1] Latency Tolerance Reporting
> > >>    Max snoop latency: 3145728ns
> > >>    Max no snoop latency: 3145728ns
> > >>   Capabilities: [1f0 v1] Precision Time Measurement
> > >>    PTMCap: Requester:+ Responder:- Root:-
> > >>    PTMClockGranularity: 4ns
> > >>    PTMControl: Enabled:- RootSelected:-
> > >>    PTMEffectiveGranularity: Unknown
> > >>   Capabilities: [1e0 v1] L1 PM Substates
> > >>    L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+ ASPM_L1.1+ L1_PM_Substates+
> > >>       PortCommonModeRestoreTime=55us PortTPowerOnTime=70us
> > >>    L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-
> > >>        T_CommonMode=0us LTR1.2_Threshold=81920ns
> > >>    L1SubCtl2: T_PwrOn=50us
> > >>   Kernel driver in use: igc
> > >>   Kernel modules: igc
> > >>
> > >> On Sun, Dec 18, 2022 at 10:31 PM Neftin, Sasha <sasha.neftin@intel.com> wrote:
> > >>>
> > >>> On 12/16/2022 00:28, Kyle Sanderson wrote:
> > >>>> (Un)fortunately I can reproduce this bug by simply removing the 
> > >>>> ethernet cable from the box while there is traffic flowing. 
> > >>>> kprint below from a console line. Please CC / to me for any 
> > >>>> additional information I can provide for this panic.
> > >>> What is a board in use (LAN on board or NIC)? What is lspci, 
> > >>> lspci -t and lspci -s 0000:[lan bus:device.function] -vvv output?
> > >>>>
> > >>>> [  156.707054] igc 0000:01:00.0 eth0: NIC Link is Down [  
> > >>>> 156.712981] br-lan: port 1(eth0) entered disabled state [  
> > >>>> 156.719246] igc 0000:01:00.0 eth0: Register Dump
> > >>>> [  156.724784] igc 0000:01:00.0 eth0: Register Name   Value
> > >>>> [  156.731067] igc 0000:01:00.0 eth0: CTRL            181c0641
> > >>>> [  156.737607] igc 0000:01:00.0 eth0: STATUS          00380681
> > >>>> [  156.744133] igc 0000:01:00.0 eth0: CTRL_EXT        100000c0
> > >>>> [  156.750759] igc 0000:01:00.0 eth0: MDIC            18017949
> > >>>> [  156.757258] igc 0000:01:00.0 eth0: ICR             00000001
> > >>>> [  156.763785] igc 0000:01:00.0 eth0: RCTL            0440803a
> > >>>> [  156.770324] igc 0000:01:00.0 eth0: RDLEN[0-3]      00001000
> > >>>> 00001000 00001000 00001000
> > >>>> [  156.779457] igc 0000:01:00.0 eth0: RDH[0-3]        000000ef
> > >>>> 000000a1 00000092 000000ba
> > >>>> [  156.788500] igc 0000:01:00.0 eth0: RDT[0-3]        000000ee
> > >>>> 000000a0 00000091 000000b9
> > >>>> [  156.797650] igc 0000:01:00.0 eth0: RXDCTL[0-3]     02040808
> > >>>> 02040808 02040808 02040808
> > >>>> [  156.806688] igc 0000:01:00.0 eth0: RDBAL[0-3]      02f43000
> > >>>> 02180000 02e7f000 02278000
> > >>>> [  156.815781] igc 0000:01:00.0 eth0: RDBAH[0-3]      00000001
> > >>>> 00000001 00000001 00000001
> > >>>> [  156.824928] igc 0000:01:00.0 eth0: TCTL            a503f0fa
> > >>>> [  156.831587] igc 0000:01:00.0 eth0: TDBAL[0-3]      02f43000
> > >>>> 02180000 02e7f000 02278000
> > >>>> [  156.840637] igc 0000:01:00.0 eth0: TDBAH[0-3]      00000001
> > >>>> 00000001 00000001 00000001
> > >>>> [  156.849753] igc 0000:01:00.0 eth0: TDLEN[0-3]      00001000
> > >>>> 00001000 00001000 00001000
> > >>>> [  156.858760] igc 0000:01:00.0 eth0: TDH[0-3]        000000d4
> > >>>> 0000003d 000000af 0000002a
> > >>>> [  156.867771] igc 0000:01:00.0 eth0: TDT[0-3]        000000e4
> > >>>> 0000005a 000000c8 0000002a
> > >>>> [  156.876864] igc 0000:01:00.0 eth0: TXDCTL[0-3]     02100108
> > >>>> 02100108 02100108 02100108
> > >>>> [  156.885905] igc 0000:01:00.0 eth0: Reset adapter [  
> > >>>> 160.307195] igc 0000:01:00.0 eth0: NIC Link is Up 1000 Mbps 
> > >>>> Full Duplex, Flow Control: RX/TX [  160.317974] br-lan: port 
> > >>>> 1(eth0) entered blocking state [  160.324532] br-lan: port 
> > >>>> 1(eth0) entered forwarding state [  161.197263] ------------[ 
> > >>>> cut here ]------------ [  161.202669] Kernel BUG at 
> > >>>> 0xffffffff813ce19f [verbose debug info unavailable] [  
> > >>>> 161.210769] invalid opcode: 0000 [#1] SMP NOPTI [  161.216022] 
> > >>>> CPU: 1 PID: 0 Comm: swapper/1 Not tainted 5.10.146 #0 [  
> > >>>> 161.222980] Hardware name: Default string Default 
> > >>>> string/Default string, BIOS 5.19 09/23/2022 [  161.232546] RIP: 
> > >>>> 0010:0xffffffff813ce19f [  161.237167] Code: 03 01 4c 89 48 58 
> > >>>> e9 2f ff ff ff 85 db 41 0f 95
> > >>>> c2 45 39 d9 41 0f 95 c1 45 84 ca 74 05 45 85 e4 78 0a 44 89 c2 
> > >>>> e9 10 ff ff ff <0f> 0b 01 d2 45 89 c1 41 29 d1 ba 00 00 00 00 
> > >>>> 44 0f 48 ca eb
> > >>>> 80 cc
> > >>>> [  161.258651] RSP: 0018:ffffc90000118e88 EFLAGS: 00010283 [  
> > >>>> 161.264736] RAX: ffff888101f8f200 RBX: ffffc900006f9bd0 RCX: 
> > >>>> 000000000000050e [  161.272837] RDX: ffff888101fec000 RSI: 
> > >>>> 0000000000000a1c RDI: 0000000000061a10 [  161.280942] RBP: 
> > >>>> ffffc90000118ef8 R08: 0000000000000000 R09: 0000000000061502 [  
> > >>>> 161.289089] R10: 0000000000000000 R11: 0000000000000000 R12: 
> > >>>> 00000000ffffff3f [  161.297229] R13: ffff888101f8f140 R14: 
> > >>>> 0000000000000000 R15: ffff888100ad9b00 [  161.305345] FS:  
> > >>>> 0000000000000000(0000) GS:ffff88903fe80000(0000)
> > >>>> knlGS:00000 00000000000
> > >>>> [  161.314492] CS:  0010 DS: 0000 ES: 0000 CR0: 
> > >>>> 0000000080050033 [  161.321139] CR2: 00007f941ad43a9b CR3: 
> > >>>> 000000000340a000 CR4: 0000000000350ee0 [  161.329284] Call Trace:
> > >>>> [  161.332373]  <IRQ>
> > >>>> [  161.334981]  ? 0xffffffffa0185f78 
> > >>>> [igc@00000000f400031b+0x13000] [  161.341949]  
> > >>>> 0xffffffff8185b047 [  161.345797]  0xffffffff8185b2ca [  
> > >>>> 161.349637]  0xffffffff81e000bb [  161.353465]  
> > >>>> 0xffffffff81c0109f [  161.357304]  </IRQ> [  161.359988]  
> > >>>> 0xffffffff8102cdac [  161.363783]  0xffffffff810bfdaf [  
> > >>>> 161.367584]  0xffffffff81a2e616 [  161.371374]  
> > >>>> 0xffffffff81c00c9e [  161.375192] RIP: 0010:0xffffffff817e331b 
> > >>>> [  161.379840] Code: 21 90 ff 65 8b 3d 45 23 83 7e e8 80 20 90 
> > >>>> ff 31 ff 49 89 c6 e8 26 2d 90 ff 80 7d d7 00 0f 85 9e 01 00 00 
> > >>>> fb 66 0f 1f
> > >>>> 44 00 00 <45> 85 ff 0f 88 cf 00 00 00 49 63 cf 48 8d 04 49 48 
> > >>>> 8d 14 81
> > >>>> 48 c1
> > >>>> [  161.401397] RSP: 0018:ffffc900000d3e80 EFLAGS: 00000246 [  
> > >>>> 161.407493] RAX: ffff88903fea5180 RBX: ffff88903feadf00 RCX: 
> > >>>> 000000000000001f [  161.415648] RDX: 0000000000000000 RSI: 
> > >>>> 0000000046ec0743 RDI: 0000000000000000 [  161.423811] RBP: 
> > >>>> ffffc900000d3eb8 R08: 00000025881a3b81 R09: ffff888100317340 [  
> > >>>> 161.432003] R10: 0000000000000001 R11: 0000000000000000 R12: 
> > >>>> 0000000000000003 [  161.440154] R13: ffffffff824c7bc0 R14: 
> > >>>> 00000025881a3b81 R15: 0000000000000003 [  161.448285]  
> > >>>> 0xffffffff817e357f [  161.452123]  0xffffffff810e6258 [  
> > >>>> 161.455938]  0xffffffff810e63fb [  161.459746]  
> > >>>> 0xffffffff8104bec0 [  161.463526]  0xffffffff810000f5 [  
> > >>>> 161.467290] Modules linked in: pppoe ppp_async nft_fib_inet 
> > >>>> nf_flow_table_ipv 6 nf_flow_table_ipv4 nf_flow_table_inet 
> > >>>> wireguard pppox ppp_generic nft_reject_i pv6 nft_reject_ipv4 
> > >>>> nft_reject_inet nft_reject nft_redir nft_quota nft_objref nf 
> > >>>> t_numgen nft_nat nft_masq nft_log nft_limit nft_hash 
> > >>>> nft_flow_offload nft_fib_ip v6 nft_fib_ipv4 nft_fib nft_ct 
> > >>>> nft_counter nft_chain_nat nf_tables nf_nat nf_flo w_table 
> > >>>> nf_conntrack libchacha20poly1305 curve25519_x86_64
> > >>>> chacha_x86_64 slhc r8 169 poly1305_x86_64 nfnetlink 
> > >>>> nf_reject_ipv6
> > >>>> nf_reject_ipv4 nf_log_ipv6 nf_log_i pv4 nf_log_common 
> > >>>> nf_defrag_ipv6
> > >>>> nf_defrag_ipv4 libcurve25519_generic libcrc32c libchacha igc 
> > >>>> forcedeth e1000e crc_ccitt bnx2 i2c_dev ixgbe e1000 amd_xgbe 
> > >>>> ip6_u dp_tunnel udp_tunnel mdio nls_utf8 ena kpp nls_iso8859_1 
> > >>>> nls_cp437 vfat fat igb button_hotplug tg3 ptp realtek pps_core 
> > >>>> mii [  161.550507] ---[ end trace b1cb18ab2d1741bd ]--- [  
> > >>>> 161.555938] RIP: 0010:0xffffffff813ce19f [  161.560634] Code: 
> > >>>> 03 01 4c 89 48 58 e9 2f ff ff ff 85 db 41 0f 95
> > >>>> c2 45 39 d9 41 0f 95 c1 45 84 ca 74 05 45 85 e4 78 0a 44 89 c2 
> > >>>> e9 10 ff ff ff <0f> 0b 01 d2 45 89 c1 41 29 d1 ba 00 00 00 00 
> > >>>> 44 0f 48 ca eb
> > >>>> 80 cc
> > >>>> [  161.582281] RSP: 0018:ffffc90000118e88 EFLAGS: 00010283 [  
> > >>>> 161.588426] RAX: ffff888101f8f200 RBX: ffffc900006f9bd0 RCX: 
> > >>>> 000000000000050e [  161.596668] RDX: ffff888101fec000 RSI: 
> > >>>> 0000000000000a1c RDI: 0000000000061a10 [  161.604860] RBP: 
> > >>>> ffffc90000118ef8 R08: 0000000000000000 R09: 0000000000061502 [  
> > >>>> 161.613052] R10: 0000000000000000 R11: 0000000000000000 R12: 
> > >>>> 00000000ffffff3f [  161.621291] R13: ffff888101f8f140 R14: 
> > >>>> 0000000000000000 R15: ffff888100ad9b00 [  161.629505] FS:  
> > >>>> 0000000000000000(0000) GS:ffff88903fe80000(0000)
> > >>>> knlGS:00000 00000000000
> > >>>> [  161.638781] CS:  0010 DS: 0000 ES: 0000 CR0: 
> > >>>> 0000000080050033 [  161.645549] CR2: 00007f941ad43a9b CR3: 
> > >>>> 000000000340a000 CR4: 0000000000350ee0 [  161.653841] Kernel 
> > >>>> panic - not syncing: Fatal exception in interrupt [  
> > >>>> 161.661287] Kernel Offset: disabled [  161.665644] Rebooting in 3 seconds..
> > >>>> [  164.670313] ACPI MEMORY or I/O RESET_REG.
> > >>>>
> > >>>> Kyle.
> > >>>> _______________________________________________
> > >>>> Intel-wired-lan mailing list
> > >>>> Intel-wired-lan@osuosl.org
> > >>>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> > >>>
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
