Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B914A43B6FF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 18:21:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 205B481846;
	Tue, 26 Oct 2021 16:21:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HEHDfCMYTmvs; Tue, 26 Oct 2021 16:21:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20B3E81826;
	Tue, 26 Oct 2021 16:21:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 573B91BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 16:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4DB3840176
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 16:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WyYQpjpvG9Y1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 16:21:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B0385400BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 16:21:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="229813105"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="229813105"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 09:21:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="447178650"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 26 Oct 2021 09:21:45 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 26 Oct 2021 09:21:44 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 26 Oct 2021 09:21:44 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 26 Oct 2021 09:21:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gSecBB63ebdrTpcDaq1jk2Rys7RY9spPu0lwR8CBDBrdmL7KrqasAg3nUBsRsaiUOB2G/GHeJ9YojYq+6yri/gWnidoqkphZI2bPW3qRG1xXRt42f6hxrBDCVPUIHqHN6rBrPeIsi7CRxzO1zSghhwRPnflPk4VjEbdOJRxUJXpUxsjhCkml869lJ65/6ep6K7y46fHVtD8RGX1rJ9Qn3uUKlBVUwd9Ej+42IhBL1TwdW6wvEMYVahwr8HDKWrjtNezTqO3z5omoK+FIEV2gppmkC+87dZfZZBgB1RIMMXt8VZu2K0Udfp3Vqgp4AHVujXsKQQR6kGdxPmdD4Ii+kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+o1JwmDfc2wWbYyBpI8ej9CgWvifjbGWpzlemQZg2GY=;
 b=MSZ/nhLy3yAoUcN6WqXEy8s5uDZQKLTm66huy9lGN6l9YvlEEwWm9Wv5mBqapttPHmTWaX6qbQtLaGU6da+vcy/SJMJeKr2CycW6QhVjocCJN158lnLjJs4SdIIXYnF/jTYhDD1z33Z/Dl3MyetlOp3fiN68DUu56V79bfk1fIQ0AYZhPIxE3f3+YtjzMcAE47o2xEsHIg96pSSQL8fKahQ5dUY1VGopE9mWvS5fdWbLkFh4RND89KEEKkBr/8kyzgSNtm8b8W0O34Jv21+mBglBFqlHbAbyM5buHHyc7Xv4UDkoKy1WeVquC3mrC59I5Pw6HrXG24cuiRbV8sGYIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+o1JwmDfc2wWbYyBpI8ej9CgWvifjbGWpzlemQZg2GY=;
 b=IdX46RbfUIUkA+JemYhIPCklJ/U4fgAgEMtc56B8v77fuHCGJxuLy7qfFatfhpHVocfS1sLs77E9BnunpG1cyIa2P/myMUJnhF7qJy3FO863AYtL3jvEjnXGyXHDY819MXzOrbGXNmIH99gbiwV0pnCLEXF2XndwpRb75EPI20s=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4795.namprd11.prod.outlook.com (2603:10b6:806:118::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Tue, 26 Oct
 2021 16:21:42 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4628.018; Tue, 26 Oct 2021
 16:21:42 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 0/4] ice: transmit
 improvement series
Thread-Index: AQHXyf2yiBFLeLed5UaKiSpMjCPB2avldq8A
Date: Tue, 26 Oct 2021 16:21:42 +0000
Message-ID: <7afd99cc66d66f81ce68e9bd9e9cc116cefab1eb.camel@intel.com>
References: <20211026000826.156803-1-jesse.brandeburg@intel.com>
In-Reply-To: <20211026000826.156803-1-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3d5aeaa3-c321-4c99-7b7c-08d9989cb250
x-ms-traffictypediagnostic: SA2PR11MB4795:
x-microsoft-antispam-prvs: <SA2PR11MB4795BBADD3F52839971EBA12C6849@SA2PR11MB4795.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DeLvuH1rblldbEZlAhIA/qqsN5mx5A7BS42G4Sj0IyccfN5VlMalFuM1VlatQkcV63MpCN9qnUwbkQyft8tWQk9ioTV+JRvdNOePVqQO0/AqPIa9Bjuvt+yTbwv6AMJAbJ+bXDylUKKWYPklDftJC83eLy6v4KwFTjB7kMxIBl8GWikqcgdjupfRwaNdWWgTX+bzq3LodjEfQNFSz60I/9GR6KChXz9mDs/JdPbSWsTXE4JcKfUDJ+JHKSUUdzAwF6Sngi/NGZ9cwbEtZdXIRbJggcDI040s2/p1uYM/PQrAC92lCXkMRtFc6ssFkOGi6obIBDx07emsSaHp+b29JHRp5Dme9f6597wcUUcuFmwspu0XgnL+5lH4Agv57rPNEGoywZoP7/bfJk7IWM0NI4e46QIYcaDUNnEcdn1h9mI/KaXwJhgONyfcwPcmwkP+FhSqZqfTl24UrxP3FW/o9aScYBRIePFt0k6QGl4s5Ntm/oVZZHDAapyd4YpFZTajHdaR5bYvJ0LYWyRJvnSngta1cyQMAOIy1nmjALlht+fRkJ/mRduKUxbVTjtcNtBTVLQAz7p7MCS/DaMf/Mh8AGLrJ3/Ahs8x4uLuDfcvIbzDWEIisHKZG9sq5mZIMCrb/tvheZs0TGGfswRpKMSHwA3v8eDbwTs/VwocRQj3tsF7nv23utqXay9E56VQ0Pmo+GhQRVKvolMI5E5lDL3kqZDGjnHCg0A7uMqfpppJEZpPmbMzqEt1jCUArMYuuQtTpcwEqKpnoJegh2ji2AcoTREVhJ+4yOm9AxvB+DACCzw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(2616005)(6506007)(8676002)(6512007)(6486002)(122000001)(36756003)(64756008)(316002)(82960400001)(2906002)(38070700005)(5660300002)(4001150100001)(186003)(71200400001)(508600001)(966005)(8936002)(66946007)(76116006)(66476007)(110136005)(38100700002)(66446008)(91956017)(83380400001)(86362001)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UjkrSVIzVElRa1VNcDJjZHlxc004TWpVckFobUFUdWtuKzZWV1ZkNmhnWlpn?=
 =?utf-8?B?eFBrNUo1U3EwV0RzR0JWOTlVSVp5UW5PTk9aQkpTNnJiUVM0enkzRVJkU2tV?=
 =?utf-8?B?dzRZZlVMUkY4S2xseC9FQThzbE1OMHh3MVN3RXVqQ1FjVHZ1S2hMR24vcTVE?=
 =?utf-8?B?NWlPRStKVkk3ZzJIMXl4aFpyQzg2QkRldDVtU3pGZ2Q2dUlhZ0VjMFpwTUtu?=
 =?utf-8?B?emZReUNNQWRwZFRYckkyWlVLcUlXMXJ4U0s3dFdDL0w5eGlxZkR4R3BCYWU1?=
 =?utf-8?B?eGhDNFJYN2tQeU82aTNQbk1RYU15S010d1lITXpmSWFVMmF2VHRrTFA0SXVP?=
 =?utf-8?B?Y0RvbEk3UlVjUmszKzJXM2FxaFMxRE5kaVRqbGU4S0RvcE9sVzhpMW81UEdU?=
 =?utf-8?B?K2RzTnFXME4wVjVZNUZSQU0zMlR6cFN1amZVWWMrZ2pPekZISWF4MllHUFov?=
 =?utf-8?B?SzRKNUpHNExBTElHbzkvcmNEeE1DZW14RDlmODlKNVlCZFdWRHN4a1B3eWxv?=
 =?utf-8?B?ekwxQXFpN3doOFJzcGRlTk4wZ1dVTDgwSjFpbThORDRaSzBjdkp6TEdVQ05n?=
 =?utf-8?B?NHYzbzllMHV0WUc1Z1c2TEF6b0FGc3lJMjBKQWIyTGIvUThteTdsRVg1VHV3?=
 =?utf-8?B?TS80QThLVkN4S1daTTVIbDVXS0ZkZGN0Q01pSXFFOVRwVUJqNzFNK3VtK0NP?=
 =?utf-8?B?akUwSkkzQm5NT2Z4Ymoza1VzQ3FIdDRERXBIYXNCTmE1LzJMY0lsbXNLSWY4?=
 =?utf-8?B?MWFOLzhEcnBieDhqUW1FV1BtOFp2ZWl5VUNPcmdPNTZURUthanpHMGpSbXNT?=
 =?utf-8?B?TnkxeUlEREFPV3F2Q0Z6aDAvN0IydHZ6RmJYY0F2WGkxUnpZYkZISGdkZzAr?=
 =?utf-8?B?cC9IUG5Wd2FDYk5OSmFHTFBjenluV3JXUlgrWG4zb0tmYW1YNFd6akpzWTU5?=
 =?utf-8?B?bzUyekVFdWhPVFdIQ1RFNVlvdlBYcVFzUmNPRCs5RHlselNlbEpnR2xySUR6?=
 =?utf-8?B?S1Nlc2kyUzM3RnVwelc2bUtINWJncTVjWGtPbDNzMzhPTUR0WDkzcU5rRklH?=
 =?utf-8?B?MGFsMzR3TTd4NFJiMkk5MmlwbjBLZVJOM3hjS3hmSXJSRUdOUVRqcUFHNGxN?=
 =?utf-8?B?bHJyNG8yc0Nta0FmVWk1NVFINUM2aVp6dHVmOXA4ZG8wcG1HZ3FtV002a2Jo?=
 =?utf-8?B?MzZEWUV3S3B1MFliSGdSMkVCQUxrb0cxOCt0WTBqOEhxdlErcUdmRlpqV0Z5?=
 =?utf-8?B?NkhObjJFM1ozb2wwTG0yU3p2clVlZEEvOGNDRldVMEV5Z0k0bkd4K0hVOENY?=
 =?utf-8?B?Mm04ZjU3ODBvOHE5cnJLRFVnd0tydWZKWkY4QXl0d28rQ2NFTE5ORjlGYWI4?=
 =?utf-8?B?d2VXZmIzYjRHcVNDcFB4MWxPdW1rN3F0dFFCUU4wWHNLMHAyWkZTNTZtZG44?=
 =?utf-8?B?MXliOElzcDdtVHdaRnlMcEk5QmhEanFCcTBSZDh3alliKzRSTUg4aVJFOFpK?=
 =?utf-8?B?cnNPYXJKQXNJMXFhR25lRHRrSGR5RjR0L0xnV0J1OTlqQWV6WHk1M2FoSXUz?=
 =?utf-8?B?ZHBCbE9ndjJOdXZQOGV0RytTcXZ4UVdtQmZkNW81T3c4RTNqUVRuTFhFQlJD?=
 =?utf-8?B?NnVGdThSTGhjL1NncVYvbjZGOU0yblh3OCs4Vi9KcVZzdm5kTnlJM2JBRmFp?=
 =?utf-8?B?ZndaL1VJREZOeEd5Q3FVTXE2WXhzYWVKcUtGU05OMWV6L1hjanlVWlVaMjkx?=
 =?utf-8?B?UlJZelk0Q0NCVXFRMVovL3Y4OUNqdXBSWjI4OXQyeXVWNFZNb3RVQjVINWgv?=
 =?utf-8?B?MWFaa0o4RWVSeE5CbkQvWTZaN2hXNVBUaVJCeXNrS0JZWmxVd3NUWmhKQTZ5?=
 =?utf-8?B?OHBJdk1vbkxRZWlVdm9NOWZ5RDdUWkt5MWRLVzNSL0hXSVhmaXNnQnFpeEUw?=
 =?utf-8?B?N1pTeUpBMWFsckxaR0pPeFZnMWhHcDN4RGpRVHd0STh3LzMzR3BFTEdVV0FJ?=
 =?utf-8?B?YmgrdVlYODBYZ0dTVjNEbCtkVU05UnE4cGxhMGY3SlVmY3ZNRHQ5N05jczgy?=
 =?utf-8?B?bnFIN3RvZ0lPRU55bTQ0NTNOczhYMXIyUFMwRTYxbVZ4MHFIY2NsZldVbGty?=
 =?utf-8?B?Z1pSTXZNQ1VmazU1eFc2bFFoQXFHSWhzZWdrS3dEdVFhbTFWTGtib0RWMno3?=
 =?utf-8?B?UVlvaXN5aXA4Sm1tb2x0Y1J6SmFHVjcxK0I0b1FIYXpCa21rWGZ6Z1Z3Tm9F?=
 =?utf-8?Q?F4biCtbidl2HO34QmljoklepGnAsR6rhkKZPuxlpbQ=3D?=
Content-ID: <224BFB40D5E1E54A86612614C191F3AC@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d5aeaa3-c321-4c99-7b7c-08d9989cb250
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2021 16:21:42.2595 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aXFw1tM5SZ6ibq9D96jiWsXw08RPzvKi19oOqHvEhO73JA8tfA/4eFLiuOaA5zrxVVdou+oa9eS01EIUp6ITfShaz6a/fwdDlEyl3lDYmcw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4795
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 0/4] ice: transmit
 improvement series
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyMDIxLTEwLTI1IGF0IDE3OjA4IC0wNzAwLCBKZXNzZSBCcmFuZGVidXJnIHdyb3Rl
Og0KPiBNb2RpZnkgdGhlIGljZSBkcml2ZXIgdG8gbWFrZSBhIGZldyBtb2Rlc3QgY2hhbmdlcyB0
byB0aGUgdHJhbnNtaXQNCj4gaG90IHBhdGggaW4gb3JkZXIgdG8gcmVkdWNlIHRoZSBudW1iZXIg
b2YgY3ljbGVzIHVzZWQsIHBhcnRpY3VsYXJseQ0KPiB3aXRoIGhpZ2ggaW50ZW5zaXR5IHdvcmts
b2FkcyBzdWNoIGFzIHBrdGdlbiBvciBJUCBmb3J3YXJkaW5nLg0KPiANCj4gU2V2ZXJhbCBvZiB0
aGVzZSBjaGFuZ2VzIGFyZSBqdXN0IHVzaW5nIHNpbXBsZXIgQVBJIGNhbGxzIGluDQo+IG5ldGRl
dmljZS5oICh3ZWxjb21lIHRvIDIwMTUhKQ0KPiANCj4gVGhlIFZTSV9ET1dOIHBhdGNoIGlzIGEg
c2ltcGxlIGZpeCB0byBtYWtlIHN1cmUgdGhlIGRyaXZlcidzDQo+IHN0YXRlbWVudHMNCj4gYWJv
dXQgaG9sZGluZyBjZXJ0YWluIHN0YXRlIGJpdHMgZm9yIGZ1bmN0aW9ucyBpcyBlbmZvcmNlZCBh
bmQNCj4gcmVtYWlucw0KPiB0aGF0IHdheS4NCj4gDQo+IEplc3NlIEJyYW5kZWJ1cmcgKDQpOg0K
PiDCoCBpY2U6IHVwZGF0ZSB0byBuZXdlciBrZXJuZWwgQVBJDQo+IMKgIGljZTogdXNlIHByZWZl
dGNoIG1ldGhvZHMNCj4gwqAgaWNlOiB0aWdodGVyIGNvbnRyb2wgb3ZlciBWU0lfRE9XTiBzdGF0
ZQ0KPiDCoCBpY2U6IHVzZSBtb2Rlcm4ga2VybmVsIEFQSSBmb3Iga2ljaw0KDQpJdCBsb29rcyBs
aWtlIHBhdGNoIDIgbmV2ZXIgbWFkZSBpdCB0byB0aGUgbGlzdCBbMV0uIFNlZW1zIGxpa2UgdGhl
DQplbWFpbCBpc3N1ZXMgbWF5IGJlIGZ1cnRoZXIgcmVhY2hpbmcgdGhhbiBrZXJuZWwub3JnLg0K
DQpUaGFua3MsDQpUb255DQoNClsxXSBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3Byb2pl
Y3QvaW50ZWwtd2lyZWQtDQpsYW4vbGlzdC8/c2VyaWVzPTI2ODg3MQ0KDQo+IMKgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9ldGh0b29sLmMgfMKgIDYgKystDQo+IMKgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmPCoMKgwqAgfMKgIDcgKystLQ0KPiDC
oGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5jwqDCoMKgIHwgNDAgKysr
KysrKysrKysrKy0tLS0tDQo+IC0tDQo+IMKgMyBmaWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25z
KCspLCAxOSBkZWxldGlvbnMoLSkNCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
