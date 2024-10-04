Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A099901A0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 12:53:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D98E084161;
	Fri,  4 Oct 2024 10:53:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8XK_D3Y4lVhi; Fri,  4 Oct 2024 10:53:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E8A684179
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728039187;
	bh=xrnZXvBpignRvDae1ksvN6yD/L90WWG6l+O4fAJ3hcU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rGIKZb3rCsW3+66Dpxq6+bSk34vA+Rh7Lv+Lj+00ocKMXyKo23QpqZPdEkQk6RQB9
	 IxzSzTc6MzcYtCeEIbUH0LyMn/TIT5wOuEmEX2J4MpFrR2f/TQ2N0S//OOov5+MZ+c
	 4v0KhPJXEcziHIqD6CMgnCPPi0rtErfMdKc75BL1h1yI/5qfn6HpZHozrTBnb+OwcD
	 jWVPK8qnvyelR1yZoaoDTztvGRKIe+cOo8bTnyA/boPpcW1DeYqL5TJg6hT4dDPL0Q
	 a0VEgE0AdOrUdz5v3DYFMD8Rb/nIMotTMJzQJbOajcOLkG0kagfiSIzBhuZVJ38TXP
	 9RwrbT9Q3pmKQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E8A684179;
	Fri,  4 Oct 2024 10:53:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 157271BF681
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 10:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F60E40128
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 10:53:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HrsN42mFICNM for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 10:53:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A30C740021
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A30C740021
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A30C740021
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 10:53:04 +0000 (UTC)
X-CSE-ConnectionGUID: OnTdpcVVToWKnI2Gz2Xgsg==
X-CSE-MsgGUID: nClDvGA1QeqewD7AwGueaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="26763089"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="26763089"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 03:53:03 -0700
X-CSE-ConnectionGUID: lSEgR9qVS5COP85DIsyXEw==
X-CSE-MsgGUID: Cf9WYodcS4SNxksw99AmgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="105509263"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2024 03:53:04 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 4 Oct 2024 03:53:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 4 Oct 2024 03:53:02 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 4 Oct 2024 03:53:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kutt2GtTOxnJbzjnd9MYgP0CV8j+leqvmRAR7rnVbP21OKvHmiTq1Kb9sdKiuREfsQ3tQXrjv+eH6v/HBfvELRbUDtJxz7qNzgTEJ1kRmwuyCToebyTjfCJVgao+Z77br5xwKjJDIbcgGdreCTS4KtmZbbGmI6rj1JPcY5dqyHNbTS8kZeVDmmpzjGLMmGsNPlvzQb8dfQTCmswQW9UrTCFEKIOY0yAT97+fnD5EhqVhX7G4eI7sHcXiOq7zFHsvgyZKKJdgTEFrzWKQlvz0QePBQbpu24tbfm2+Xk1umigNGQrZ0BtPPLXI8+SISDLvqIpzp7ZiVMdDL0Gn5FsJgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xrnZXvBpignRvDae1ksvN6yD/L90WWG6l+O4fAJ3hcU=;
 b=alDOI+Womb/50Hyw4gWEBC+YmsQhZgnQOuFCEDklgIxo2jkmmAkvskOtaI13o5gIzmRyxGFfwkPDiWe82k6o7Am23+eBZb2UDCkqsKEIe1mh0vTDtK2PpE7vPh0SD1jqQZOIksZp/gtS66i7bWzwiFXEtBtC61pNDUY0UP9dlSTuA7D6XdOikuhXdkEr8s6+6aiTvTUa9cdVY4M5RHGEk7UJHAkgnCq3NVVeETGIP52jGWon0ZokHrPI1O//8970N9mVPGSVYHZC88uEvs0UZqTA2BOuxeajuH3ls03dwUU7xPVgUAZnSmJr6MH9tXI1XO8kshTPyrz9SzbE2qrHew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by MW6PR11MB8440.namprd11.prod.outlook.com (2603:10b6:303:242::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.18; Fri, 4 Oct
 2024 10:53:00 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8026.017; Fri, 4 Oct 2024
 10:52:59 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Markus Elfring <Markus.Elfring@web.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 Jakub Kicinski <kuba@kernel.org>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, Paolo Abeni <pabeni@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Richard Cochran
 <richardcochran@gmail.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: Use common error handling code in
 two functions
Thread-Index: AQHbCreoRAHjXuSa2UygOLMclJ4V0LJ2gTHw
Date: Fri, 4 Oct 2024 10:52:59 +0000
Message-ID: <CYYPR11MB84298E47EFA0658564412149BD722@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <f3a2dbaf-a280-40c8-bacf-b4f0c9b0b7fe@web.de>
In-Reply-To: <f3a2dbaf-a280-40c8-bacf-b4f0c9b0b7fe@web.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|MW6PR11MB8440:EE_
x-ms-office365-filtering-correlation-id: 734a57f2-5f32-40ac-6b2d-08dce462b673
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|921020|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?RSsvRTVhWXBXL3RlVnBPcVlHazBYRDY4bUlYYkRZMmNlVkpUN21EVFp4TmZQ?=
 =?utf-8?B?TUFwZ0MxWFFqZ1BSaWNMc0c5Q3hHS2ZjZWlWZUQ0N1d6cCszaDJrL2FhY1NY?=
 =?utf-8?B?STlSa3RPY3A0SlhyazYrSmxVTFZha3NlN1NHdlJITnREV3dBeU5Ya2JqMUhn?=
 =?utf-8?B?VTllVlhZSEFGT3d6ME1FZlVJaDV3OGVpdnFoNS8vaFhtQjJlTTl6VGVKZUd1?=
 =?utf-8?B?R1pBQnE3VW53ZWFJWktVNXl1TFBDWG9zNXRDWWNjOTFaY1hqVGIxM3RvM0Ev?=
 =?utf-8?B?WmJ4ZUF1RC9TaDhobytuSW5MMGhKTXEzdlJaTmFpR2ZYYXJEUzlnaXdlZVoz?=
 =?utf-8?B?SzNnQVlwZ0kxL2hEWWsreXh3RFo2VFFDdisyclQwajR4NU93bVVIczF2ZVZk?=
 =?utf-8?B?aTh0UE9vR1JjTHNicytMbGVTLzIzVE56T3BTVjhpNytMdmZaREZsMnkrRzd3?=
 =?utf-8?B?YTZ4bjFhb3B2Z3dYZXhlcUJsQ2Z0ZUZrY0l1c0hPWnBYR2kyZnljWWFIaDhY?=
 =?utf-8?B?V04vU2x1UDdJNVgxU2NRMHpOMjYrT2dkZnh5RUlyVy96bGJXekFrcXVVYlA5?=
 =?utf-8?B?eGpTYldJeHVENDlLTzZnS2RoNjhpODYydnZTTVB0cURSbDlWcWNZcEdKVUtD?=
 =?utf-8?B?QXFJZTY4RmVsYmRjVlpJSEN2aWR4MEFGQS9rQXJ4eUVabWpSa0Z4RkhsM1RT?=
 =?utf-8?B?RFY5Q1lwblk1M1RLaVJXcit2eHZVNXhSbGt1TXB4eCs0SDFra05WcE5vdnZs?=
 =?utf-8?B?cDM1NXlxNFd2SHA3MXF0d0NnYWt6bm1aNUl3R0w5cW9VM085SmQ5NVg2RXlX?=
 =?utf-8?B?S01vMUdHbXdZeW10U0VNenpCOTc4YUY0TTdWQjM1Rm9ka3hDRW1yOXVZVXhl?=
 =?utf-8?B?SVc5RVN0NHEreHVnL25XUE5EVWRmTnVic0t0VzdMVnB1NHRpUDBkRUVENkhW?=
 =?utf-8?B?M25oUEt5aCt2eFBMZkRaMUxYK3JobzFxYWZaZ3d6Mms4V0VTbm9GY3IrU3hs?=
 =?utf-8?B?T0Z1NGl2ZFBweUZxZWZUbFdkM0ZlSlpYU1p0enBTY2N3bEJQZEZnaU03ZVND?=
 =?utf-8?B?QU9sY3NlY0lzVElSQTFrMHozbGhXdzR2UUtZY2NGYVdTVmczZFMwUnZjMms3?=
 =?utf-8?B?MGZINXEwMjR6K1VDYXE1akxBdTZ3ZmRrbU9FNEg4RWpOOFJqbWVBUXBoNk01?=
 =?utf-8?B?MVh6Y1NpMXFkSXJwRWI5OUFFeEkvOG9lMVU2aDk3cFdxbjFQKzlUWjY1QnBB?=
 =?utf-8?B?Qkx1NUptVVlrZmJJNFVrQzhaYWFQVUNrcU1DU3NNVWkzRW9kdkdQTlF3d1lW?=
 =?utf-8?B?WGovUEdyNXU3NjlKSnVHaXd2SFo3N0tLOVNha2dQaWZtZld6YWxDcTBaNGVR?=
 =?utf-8?B?S0RlOGU2TTR0RFVka3dFcXBrQjJqLzVqeElCb1V2R3g1WFZNd2dlRHhDbVh2?=
 =?utf-8?B?MzJSOXpPbFFzU1pXQmh1cGdNWGw3bVBsQ0lrUG8vT0gvRnRhUUt6NVRrS3Jw?=
 =?utf-8?B?K1g1TXczYUFYek55Z1JqTE5ySUcvb0t3OTQxYzY5MDBQY0pJMS9RS25CTlBO?=
 =?utf-8?B?Z0JEWkwxenBkRnZ6NGptL0dpNnlna0N3V1dBRTM0M2lHMEtWZ0FDckliS1FP?=
 =?utf-8?B?OEdhNFdoMjZjV1BOWDBWSHc5RlpKM2JVS3R5RVBPdDBnMFR4ZkZOWGV5MjNP?=
 =?utf-8?B?blFwZHhtUlRaY25OOUpPWWxCNHdVTjJNbzBFVDJ3UVowNnkwTXBHa1BEZUMx?=
 =?utf-8?B?NWk1R1llSVMzZWJOVFVGUUFmVzc0ZXkxelV1WnBTS0F0ZTBTNkVwSHFHNHlu?=
 =?utf-8?B?U1hJeHY3V0ZQZ1dxSjAxUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(921020)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RmJPMVJNdjdzT01HT1pHNVhyclltTDRYTERucm1lWXdweitMc1RBc2FvbzZD?=
 =?utf-8?B?a2pMNkV0V3pMaGQxRFlkbU5oTjV0enduOUJBSVZiVlhhTG5oYm5JUmxrZG1Q?=
 =?utf-8?B?TGxpdi83OVJwS1dnT0F4WTZTVGgyNndEYkpsTDJHZDFzQ00yZUZxQnNKa25n?=
 =?utf-8?B?NzV5MGhudkZCbU5TdS8zUXBxN2Yvc2FidTVpczFidjJPSWRieEVjZUhyWk14?=
 =?utf-8?B?dVUrNGR1OFcwdmdLQW82VDFDUXhoemw2V1Q3Q3h2SnJBc25CSzBEaDloSXB4?=
 =?utf-8?B?WXd4UHF2bzJEVWhJWGVveEpIaEd2enR4OEZSL3pCRGtrczdoVmpKamFkV29R?=
 =?utf-8?B?KzRpVWtrSlk1NjlQcHRSY1B2SjRZL1hnNW05bzdqdzBXRzFLSnJWU2lja2pY?=
 =?utf-8?B?b1BzYkJaRWJySXRvMlZoRVZvQXprRWdjekEvYVRQeVh5UXhSdFNRYyszL2s5?=
 =?utf-8?B?SFZKYXZyclYwaHI0UXJqbFU0ZzB5MlkyMDliSDM2ZkFzejhsVkQxK0xucWZt?=
 =?utf-8?B?azZYMS93bk54MVZJczJwUFVROWZzMW9WaG5KSUtEbWt4bk53cmgrczhoeTZl?=
 =?utf-8?B?bGVXMEJiZ09VN25LcGFWN1JTUTN4WGc4K2pCdkpFQXNoRWxCM2VvTjJvalhX?=
 =?utf-8?B?d1FrUUxSSGtmY0NvYWYzQnpoYnJDTXhLd0NZZVFMUHY4cU1XazNqTGxlUFBi?=
 =?utf-8?B?QzJ1RW02MU9GUGd3Sm44WXRqUTc4eHIrTGgwRENrTHM4OE1kWWFYNndNT2VD?=
 =?utf-8?B?ckpsWjJ0SE5rWlZkZGw1UUM1KzUzSmM1a0NxOUpUMXpwRnZmR1pnQkFIazVL?=
 =?utf-8?B?aUZmWWJGRzlPeXFGTzJ4RkVydW1ObzBNdG9Ga3MzTTF2TmtKcjUvNXZoOU4w?=
 =?utf-8?B?OVhab1IrR2IxV1g3MEQ1S2VUZ016M3VMbkxxbk5NOHRXeFN4T2lUdnZtOEFx?=
 =?utf-8?B?WGl4WFdZb3loT0RVMnJmd0s3cVU2MkkxTitNMW9ncUFnaktkSWhkQncrL21P?=
 =?utf-8?B?ckJHWmpRZzF0TEFOMTVCcWt5d2lNWml5UmhiSG1TOHpBd1lUbmhNblpyWEFr?=
 =?utf-8?B?azRMZHM1bkFzNVM1UjA1OVZrejl2R3k5VzcrWHpWcDhxd0F0cG14bHJFNHJ1?=
 =?utf-8?B?ZmlNMHp3YWZScmlmdFJ1YzAxWXgrWFM4dEpCYXoyMG9VcUFjaVdoSXJpMC85?=
 =?utf-8?B?ZnpVSXlZazBuUlo5SmJmeEJGK0kvU0RxajFZNUhpUzNZYUN6cWQwYVNxa3Fi?=
 =?utf-8?B?U2lscG5LVlNvUGpIOVVmNlJ0Slkxd0tCOGgzQks0TWpGTHVla0pwRlZ2RVpn?=
 =?utf-8?B?OXkyTit5YVozLzdydDQ3MUcwcUFWVzZUdXNaV1RVQVI4bHNlZSs3eE1ZVzFT?=
 =?utf-8?B?aFJpOUFVSVAxSTVwbzI5a0lQRTd5U2IvMEVpY1AyTnN5TFFISiszdHBORlA2?=
 =?utf-8?B?MGhTVUM3M1U3TUt5RmR0cGVZWDdIWG5IQ29IVGJ3NHovMngxdWpiaGJJQlRG?=
 =?utf-8?B?NkpZL2VLbndNelJJeURhS21zcHQxeldvOW1vQXV3ZVVWVWxUVjJVNGYvNkhY?=
 =?utf-8?B?dWEyRTZRSHd5Q1BiQndvdnZTM0NtaEUrL3NyOTY5c1NscGViRVl5TjlKY3Yv?=
 =?utf-8?B?eEdDUW9Ka09QcndkYmFPSTBPdHFiNUxaUDJBNXQzejlJR1ZiYlpmbDJVcllm?=
 =?utf-8?B?ZWExQ05EWUdNcWdKTUJIdW8zV1FYU241eE4vWGpZbFVhNjhCa2pyMlU3R2hl?=
 =?utf-8?B?dk05NG1JbGVUNkt3NUhRbDh2U3Z5TDlkMm0vcjgxb3d6b1MrbEs2TEtyclJB?=
 =?utf-8?B?anBGajloTDRqT1pmQmJDNUdNV0pjRlF5c1ova0cxTThwUm1kRnRId1ROclFl?=
 =?utf-8?B?OXNsT0YxNFAwQVRKUmlBOHQ4NUx0RlRucGRvOUFFSFBOcDArWk5za1hyZ1gz?=
 =?utf-8?B?T2srV25vdjREdVJ5SXNYQnNydVRrVUp2eFI0TERtZHI0bVV4RllPN05wQms0?=
 =?utf-8?B?RC9rNUpkNnJiZm9yeGYzaVJubDZYMGlhTWZBb2xDR29NazF4aWxHcWFuWEps?=
 =?utf-8?B?aWRlendXQVBDYWRvQVVUMnZpN21iUE9tSjRLb29Fd1htMlpheDBlaUFIbU9L?=
 =?utf-8?B?Y2doRVdreG9xY3lkc1VOdmRlQnU0dVVvT3IrUmJCSmFScHRhcERqUWVxUytC?=
 =?utf-8?B?K1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 734a57f2-5f32-40ac-6b2d-08dce462b673
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2024 10:52:59.8263 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fh5lSjwr884il236O10Z/AL6c9LBMhDe+aytDs9Vuy18h3BcwFCBFPQud4ti2HemoJd/Z7pUMvrFUS+uYPkk8Y4L21MOSKJqM5ZYGIjXgM4u2TEWv5X56KuHmd9no//f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8440
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728039184; x=1759575184;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xrnZXvBpignRvDae1ksvN6yD/L90WWG6l+O4fAJ3hcU=;
 b=mcALwOWyq4mjCvp1r5XSJ5AVrsvEs6VTZfhnLrugTuxPAXG8WZi5dHw8
 W45bCMvqPGOUx/rAPtwDWYOkrtnJXd0zUt1qTlFQBefSwgJUiU/ngNvUK
 1C2a074GddwfJtRxMrChy+cCPzZCy1JaiUpGr479MQ4cPP9+iTdADnEEO
 KI13mRlmrgSA8O9WnNGl767D7Z/ZQtFrT6lSnLOZYjWvnIDB7BGjVqyCu
 vXR+GK/xFhRgV/BYKP2puNDn+ymV/7paGmGl59Djriqyn5gy4HZYru0qv
 6oAsSVxxZ7ccThO4yqkOiI1Ws71UlYKdmYy5qXEdGXtLYIYZBX8ML9fni
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mcALwOWy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: Use common error handling code
 in two functions
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
Cc: LKML <linux-kernel@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBNYXJrdXMgRWxm
cmluZw0KPiBTZW50OiBUaHVyc2RheSwgU2VwdGVtYmVyIDE5LCAyMDI0IDEwOjQ1IFBNDQo+IFRv
OiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9y
ZzsgRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0IDxl
ZHVtYXpldEBnb29nbGUuY29tPjsgS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRl
bC5jb20+OyBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsgS29sYWNpbnNraSwgS2Fy
b2wgPGthcm9sLmtvbGFjaW5za2lAaW50ZWwuY29tPjsgUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRo
YXQuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNv
bT47IFJpY2hhcmQgQ29jaHJhbiA8cmljaGFyZGNvY2hyYW5AZ21haWwuY29tPjsgTmd1eWVuLCBB
bnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBDYzogTEtNTCA8bGludXgt
a2VybmVsQHZnZXIua2VybmVsLm9yZz4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BB
VENIXSBpY2U6IFVzZSBjb21tb24gZXJyb3IgaGFuZGxpbmcgY29kZSBpbiB0d28gZnVuY3Rpb25z
DQo+DQo+IEZyb206IE1hcmt1cyBFbGZyaW5nIDxlbGZyaW5nQHVzZXJzLnNvdXJjZWZvcmdlLm5l
dD4NCj4gRGF0ZTogVGh1LCAxOSBTZXAgMjAyNCAxOTowMDoyNSArMDIwMA0KPg0KPiBBZGQganVt
cCB0YXJnZXRzIHNvIHRoYXQgYSBiaXQgb2YgZXhjZXB0aW9uIGhhbmRsaW5nIGNhbiBiZSBiZXR0
ZXIgcmV1c2VkIGF0IHRoZSBlbmQgb2YgdHdvIGZ1bmN0aW9uIGltcGxlbWVudGF0aW9ucy4NCj4N
Cj4gVGhpcyBpc3N1ZSB3YXMgZGV0ZWN0ZWQgYnkgdXNpbmcgdGhlIENvY2NpbmVsbGUgc29mdHdh
cmUuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IE1hcmt1cyBFbGZyaW5nIDxlbGZyaW5nQHVzZXJzLnNv
dXJjZWZvcmdlLm5ldD4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3B0cC5jIHwgMzIgKysrKysrKysrKysrLS0tLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pDQo+DQoNClRlc3RlZC1ieTogUHVj
aGEgSGltYXNla2hhciBSZWRkeSA8aGltYXNla2hhcngucmVkZHkucHVjaGFAaW50ZWwuY29tPiAo
QSBDb250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg==
