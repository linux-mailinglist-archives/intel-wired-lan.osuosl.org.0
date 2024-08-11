Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9E794DFDA
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Aug 2024 05:39:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB9B840B83;
	Sun, 11 Aug 2024 03:39:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GJnHVqVn8U0h; Sun, 11 Aug 2024 03:39:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E024240B7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723347541;
	bh=rlcF3WUIdsXCKx1atoOgkZzkdl5LKUrQzjSKdU2ZHpA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fdvm+nFIj//5ukVco32qqTK67qYQO3opUFY1dEbXTZYkpyDhbIVn8fXdvwstk7rh8
	 6XqLbS7xrwImzj8KtSolETpqoYC5MxAWducAyyXrCjXaLTEWuvw4tUMGYiM2WkamT7
	 mGx7pPHcwpjsZ0/EI0ZPpteEyzKxV8NUykNsaJwd/bXcwrH6AF2xzuCNGya/nhlxEn
	 CSPD7lipMajDZ0UvyV5fYGoIQ6aOWdIvlW8LaD/84G2Cszw99oshfss4IoAQAaLnFg
	 CUo+UPlz/5D+iH36g9bUxwt8sXVBTDWtPIfkdhF+hbbSMKSh+qg6Fy4bXEx+qwrhE5
	 jXkFiRfma2OwQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E024240B7B;
	Sun, 11 Aug 2024 03:39:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C38571BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ACD8940279
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LkcVaSoIEpGL for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Aug 2024 03:38:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6A5DC400C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A5DC400C8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6A5DC400C8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:53 +0000 (UTC)
X-CSE-ConnectionGUID: L8W0FHtiQg2NUS9iZtOBqw==
X-CSE-MsgGUID: a9Zvi2VpTr+6E5gvSyNYvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11160"; a="21457790"
X-IronPort-AV: E=Sophos;i="6.09,280,1716274800"; d="scan'208";a="21457790"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2024 20:38:53 -0700
X-CSE-ConnectionGUID: qWJF5mDZS/ecZVNUZiqhiQ==
X-CSE-MsgGUID: /xJWLwT4TpOicZ0embgGXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,280,1716274800"; d="scan'208";a="57828246"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Aug 2024 20:38:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 10 Aug 2024 20:38:52 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Sm3rerbVvsjgPIYviTw3c1SdANM27cGZuck1e2AzWBs9zHFi3SZyt7rCqQyLv5N0juIwqasIJTVDR22rxZ1d4RPpcqiac561LD5iUbX8/34CJ4wn1IkW8fEppBzGthZWmIeswCLlckag3Vs9rjjmze0iyp5nu/1owjGHKxpEKcUceWsD9yZllZ5GHmBgHW1a/NU47b2UuozidqeLRIgmqEvq4YGVQ+rWONHdkKwcuy//7sGg2/cUxqDNgyxMhHV6j2Wue4lm3VQ/KLFbj1L11GJGyuxs1459XhbqqQ2S4PbO02/2GPCHhNpJVlcI1KN0eSNFWbfNbAYjeSMGWMMJlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rlcF3WUIdsXCKx1atoOgkZzkdl5LKUrQzjSKdU2ZHpA=;
 b=jMBjp6adL97QQrF7Wj8sa7Mk2M3hIk9pzbzu/qf9GWc8lv8VDhBGbGeHPF3RN+L01UmrNW93xcn+vkLgjnOCMkdekZDiGPwtUC+w7jfdKej+EIDq7SWTjKa7Ypc5AXtwAdA8iTSnWQrS/Gnbba+YCQcy3uGvsdCJlAdAZ6wqq7OoL1aT3hJUPO6YtIIiRc4nE/Cm+Zr7f5cHtTrgxOYzB22nfWd+p8CLxIQio2/D2X38zPxZDsQyo0tOy80F/BwI1Yen6WQ2+Nf64KGpR3DMjpdu9UR+yhy9QvQgBLpFWRyKQNDB9WD1rXQkwm1HmRSjgAoij7cRNqflh9dCPAA0rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA1PR11MB6615.namprd11.prod.outlook.com (2603:10b6:806:256::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.24; Sun, 11 Aug
 2024 03:38:50 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7828.016; Sun, 11 Aug 2024
 03:38:50 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "\"netdev netdev\"@vger.kernel.org"
 <"netdev netdev"@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 1/7] ice: implement and use
 rd32_poll_timeout for ice_sq_done timeout
Thread-Index: AQHa6EHX+ZpCmvFaY0C/wpDY74YwxbIgV1/w
Date: Sun, 11 Aug 2024 03:38:50 +0000
Message-ID: <CYYPR11MB84293B353E569808E8C06ECDBD842@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240806-e810-live-migration-rd32-poll-timeout-v1-0-b5ada29ce703@intel.com>
 <20240806-e810-live-migration-rd32-poll-timeout-v1-1-b5ada29ce703@intel.com>
In-Reply-To: <20240806-e810-live-migration-rd32-poll-timeout-v1-1-b5ada29ce703@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA1PR11MB6615:EE_
x-ms-office365-filtering-correlation-id: c7e92c8a-e52d-4961-47fa-08dcb9b71d6b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VC9SRUl6N3p3NkxpM1dydnRFYTFzRlBJWUNEZGpkV1VieUlkVkE5TEY3Nm93?=
 =?utf-8?B?cDVSU3NVdk9iZUZmMktCSC9xeTBhZ3JXenJvbXF2dXVXcXdTZWlqdXBEaVhw?=
 =?utf-8?B?dUttSWhxWVZhSEVJeDlCUi9JTHd0NkpocXJiR2lwWC9iQWhDNEppUzdNYUhQ?=
 =?utf-8?B?MmNzMDdUM2UwQVA1aUgvNUF1NXhCNFd0ZHorTGwrajExSXJNOU1UOFZEVER0?=
 =?utf-8?B?a3Z1dzNRQzVVblgwY1piZEtGRUhEcnNmOURLOVNRTHdpMHlpY1J3M2QwNUpY?=
 =?utf-8?B?cU94SWNuTFJML0xWR2s1eE5RK1FGMXcwNzkzYWw3YnA4dHdOUkRrSjBzdDhs?=
 =?utf-8?B?aHNYc3ZGUXJUWTZYNjFxZEkzbVhNRktMS3U3dVhkeGRFRDJyaHc3Rlg0cVA3?=
 =?utf-8?B?Ni9GS2lDbUZzcHBHMlUzOC9WdGtnSk8waGdKRWl1QitDOXR6MWhqQ1FaL1pl?=
 =?utf-8?B?a1FNVkxJUTMxZzMyTGJib1ZFeGZJV2Y0TlhuazVhVEdjNUxVRE1vOVBHc1VS?=
 =?utf-8?B?b3E5aXJsOHVNR0VsOVJvTFNRcnR1a2RVbURnaFo4QmkxanVWbEdGVGwwK3BJ?=
 =?utf-8?B?SWF1a2dEKzV3d2Y2aW1yTUxCa2VrelRZVEE3M1N0NHJjcWxIWTVWaFdnbnpJ?=
 =?utf-8?B?Q1lKNEwyQjhuYTJ6SWpZcXB2WVpRdTVEandLeGVzeks2OTIyNWRCSUcra2FV?=
 =?utf-8?B?dnJIY3UvcGVIWGw0MDVsNGFQMlBvWUUrWFJTakNzZnUzU1Rwd1JuQjRQL1R2?=
 =?utf-8?B?RWlpMVRuU0RTa0tycUNRYW9OdXlxNmtCMWNIUml0WFgyS2tjZGZFbG5ncjZR?=
 =?utf-8?B?OG9xdHRQcmhaWjRQbUFPdU9tWS9ZaDI4KzNGMVAxZkMvclZzUEs1bERtYzF5?=
 =?utf-8?B?Wm5hd1NCVnRXZGNIWll5RSt0RktBemlaUEJCT3BCSStXanRsZG95WFFwSmVt?=
 =?utf-8?B?ajlyc3B3alhyMkcxR0JDTEVWd3ZmS3RhRklLdGtuWnRjZndvQVFLejRCRHJh?=
 =?utf-8?B?dWlxOWs1a3N6Yk81c1YxSmhrNmorbkx5NGY2YjV3UGRhbFQ5aHVKcVlUQU9P?=
 =?utf-8?B?ZHBJUFowNUtic3VBMVVRaHQvS0k5QXo0YXQ5RU40bkNRVHVZbXF0WHY0OWZW?=
 =?utf-8?B?Yk1aUnRRMHhQM2JieGduQ2VMUmxjZ0V6MmFWL0ozblBZM0x1MFVHQkVBMXAx?=
 =?utf-8?B?T2NXQWxiMGkyRXBLalZmQmhRSUZmMTlPK3VJa1ZTMkNaRVBhMkUrbXU2SFZX?=
 =?utf-8?B?cTBPemxKSmhDNnR6QWRpdWtDdUhhbWowMVhEcVhseEFiSC9NOGVOcVd0dVp5?=
 =?utf-8?B?d08zMEpuN0VDMlp2UkFkODNjR21TUGM4OVdQOEF5UHZmbEdBWFVkSEFZYXpF?=
 =?utf-8?B?aUlZaVZ5VGdqWDFTTlpQbms5L0kyLzVtOWZTVHdHamx3cnpxaG5pdnRYbmlY?=
 =?utf-8?B?OHA3TVBYTGhQZXVMRHRPTEI3YmFvdk1KcVh4aXgvQ21TMm52eXp5bzA0bktv?=
 =?utf-8?B?VXIvMmZ4ZmIxUUVuNVRGeGNrVHhoV0xKOWRpRmptWXdUUjY1Rmh6SGJ0RUJF?=
 =?utf-8?B?bVZkcDJrYnBzY2lWWVVuSEFhZ1BNVHhGZVN3SGRzc2dXYzZxZlVGVGw1b0dJ?=
 =?utf-8?B?NkJnUk9LZ2cyd3ovenJMU3M2cDdhdWtPc3NXWVpXaWsvcHArdlB2VVYzamtM?=
 =?utf-8?B?WG5RM2hhNXp0L0lSTE5wUmY4b3hZcGpKK0lTSE9Wc3MzSnJqckNWNHFMMWhM?=
 =?utf-8?B?d2tMb2crUW8wR0dNYkJ1R0ozU2ZVcmZDV1ZVcHE3Z1dyWEp0RGQvbjVhNmNa?=
 =?utf-8?B?Z3kxRzFGaEZXWDBLSUVFeGtPTkczTFZpM29iUTdVazZycWw1WEl0VTZqd0Rv?=
 =?utf-8?B?VStNdFpjbmxjWEt2VlM2cWRlaVQ5S1pvRTFRMU50dDZMYkE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T042cStiOW1FYzRjSnVNVHh5cVdwK04rOUZjSHQ1Q3BYZERLVzVIRHMySnND?=
 =?utf-8?B?eVU0UFpmMkErQjdObGZsRTV4SXlVUnlCbVhudURwSjRmOFE4OEpVdjRBQjlJ?=
 =?utf-8?B?N0FGdnV3T0FmZE9vQTZsWjEvdzViZGpxOU5ZSWVXSTd0N1MxRGJJbUZ5a21z?=
 =?utf-8?B?Y3greU1GdEpyNHdYR0haaFdJVmZnY2llWHdKS3pYLzNUeCtLcTdQRGR1bWVj?=
 =?utf-8?B?cVRzMlVQdEtLVzh5V2hEOTlWb1ZmSUgxblMxRXlJRWtCMmVvK0oyYU13QU5B?=
 =?utf-8?B?UW94blNWOFpQek4wUWU5MnNmSkk3SzFDWEFrQjY5bm5NVHNWY1ZCajRYRVQ2?=
 =?utf-8?B?TGs5TklIenIrL0x6SzRSMmR2NzRLTmxXRHZzTGd1bnM4ZDZFT3JJeDdMRUti?=
 =?utf-8?B?YUVVU1d4RjJVc0MrdkxERDhyTGRZNFZ6WHBJanBDVUk1ejBFMGhEUFhnYVor?=
 =?utf-8?B?Y2pxUmVKRlpYRlNPS3JRQTRvazBKUm5BWm9wcjRhVTBBb0ZFZDZwSjNINGJv?=
 =?utf-8?B?WkZ1bHFkU1JWYTRuNENMVU1NQ2VPRCtHTGk5TVo4cVcyOGEzMGxvd1VhTStU?=
 =?utf-8?B?cUJzNFFpOXQ2YXZIVGJBWit5SENTWDRlbEp4SytTd0xZMk91dlAraXlXTW01?=
 =?utf-8?B?ZnJEK0daakx3V3BKekNSRGowQ05iaUpCN2Z6UHJ2akVkd1VBZGVSbnVhM2sy?=
 =?utf-8?B?eElTRW1XSWVJQTg5cW1iUzlDcytlVCt2TDVZR0pUWC9yWVE2dlBmWGJWSTM1?=
 =?utf-8?B?a08yc2YzM0ozaTRtQUZlTE9vT3hHNjc1bUtzQlBTTkUzUnZFaTlnUmw1K3Ni?=
 =?utf-8?B?NksrVXJyTjVycm9oR0tqVmFUZVZ4NTBZdTY2L3FIUG5ZK2g4TWgxL0pBVmNG?=
 =?utf-8?B?d1R4d3lZSFNuZkhRM04vRW1FMEZzYjZmN21OaThDWDFEVzNmaHZGQnVwaHBk?=
 =?utf-8?B?QVlZVVR5L2JZL0dLb2x5NlB0RUJLRFJYK1JkT3BCMWxRNFg1QlZHZUtyRzZi?=
 =?utf-8?B?Q1pCUThQTlFSVHBNdjdsVGk0STJVYXh6STc1alllMWxaMHE1dm03RnVnWGhk?=
 =?utf-8?B?Z3ZRRmV3WHA5NjZ4bER6NVEwWEJ3cjV0RUQrMWFSajB0Wm9xQUx2elc0RGpF?=
 =?utf-8?B?bEdncFhRMEF2YWpVMXMrUkFubW5ROHpVQ21maGl3eFBKajc4Qzh0M1RXY2Yz?=
 =?utf-8?B?NDlwaVA0eTJoWlJ4UWQ4UTZMa0gweDVablVXVkRHS2xlaXBRUWtWTUsvSHZT?=
 =?utf-8?B?QVdQOFdJTEdxbWRlK0I0Rjl5Q3l5UGJWRDJZL0k0SVVFRnRmR2ZMdkdQZWY4?=
 =?utf-8?B?TXE2TWxmS0h2cW9DY2F3d082QWJRcC9XNTMwV2xBNGVWUGNOUC9RVDZWRm10?=
 =?utf-8?B?WHVKWUNvUExaSjNnWldJdEhXZWNjSHVKOW1zS0hTV3BsQnFFNzBCQ3M4MkVq?=
 =?utf-8?B?eU9NVWhvQVZhK25FS2NITTE2WXM0K3g3a0N5S3MvREtkbEIvN0pkUTlZNGtN?=
 =?utf-8?B?MWFSdTFMSWpDb0Z3R0s1K2ZKeWJiR1JxREc2eDN4SEVvT1U1YkloejlkdTZM?=
 =?utf-8?B?aVFEVlREM0RBRTJEYmFCL1lKdkZOSFk3R3EvQnFqeU04YWQvWWhhVGFyY21w?=
 =?utf-8?B?WG1MZTQ3SUdxTUp2bWFvN0ZmVlBzV0t5bzZVSFBNU2c2LzZzN1Qvc3c1OVl6?=
 =?utf-8?B?YzRZUFhRd1V3Y01LSnp5OGYvZzhab0hsdkwyVEFNZEIvVzNSL2UvNXV4YUxl?=
 =?utf-8?B?QmVtSmtGZ3VGTC9GcGFHdmZsY1J1bk5CS2VOSm82MUtwY1BIMy9jdGFHclha?=
 =?utf-8?B?MHZOMFMwdUpnekI5bDE2Y010M05zOU1vNTFQVUJwbGpBeGZaYUZqK1hkUUsz?=
 =?utf-8?B?NDl4ZUd3UU9Vcm1HL0pyUEZvM09nYndQMlIyWEcrL09DYnBJMjV3NDZIRnJo?=
 =?utf-8?B?cU1HaW1zWGFTM2pjVXFuS0xWU1l0WHdoUi9ZZTh0SFh3R3JoV2kva2l3VGFR?=
 =?utf-8?B?SjIwT3pkQStKNUN0bHJGRHhzUEpTM1Y1SE5kSGNVZEQ5MHR1WTVuM0xjL1RY?=
 =?utf-8?B?MmJ3U2xJRVk4QmRCRkQ5bWphQmVzWUk4V3hxb0JoOEVKRS9BZkx6eHlIWGVG?=
 =?utf-8?B?bnlOMTI1RFpPZmhrOHJjckZkRzJFWlJ1YjNGcnJ6ZTRjZ2dabVpMUFJqZUtk?=
 =?utf-8?B?cUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7e92c8a-e52d-4961-47fa-08dcb9b71d6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2024 03:38:50.3296 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: az0BRGy6P0DOrHaJ8FB52z5Nhn3Z3pwjYrg9OK4pjgNP+RGulMvZn3AQCQkINjs5Elm30S6CXf0O6UdcvL9BMdrKeY2E2bRpfwx4fZQ2WjEQWthYBDczeFaFkb79wxDe
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6615
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723347533; x=1754883533;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rlcF3WUIdsXCKx1atoOgkZzkdl5LKUrQzjSKdU2ZHpA=;
 b=kLriXGpAWPSBnEwD0HnKNOW7Ewg/kiiypEnm343lqx5D8J3O57itorDH
 5NayajIgXylXzzB6yjWudw+2YrE2MlS8BSiAXxrFJeU5lc58T9JIBGE29
 BTT9cE9n1WSKKZx5kzbk8MfVV3HdTcOv4Ubs6vS9r/gkg+obIhC1iWubD
 /J0C67BnhNU73AsdX0ENIL5OStXApQruxzAXvtuk8zCek2iyP6BK8FkpW
 3qsQDcur6murhCwigyw7nS6ULO7sjU6d/pggssiD7EpWyZm4EQpltvj2o
 eRJ54FL+3lwEMAmA2cnnwBvCpAF/+LrwLOyVu5vqflTmhMhN9xhEe+vtI
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kLriXGpA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/7] ice: implement and use
 rd32_poll_timeout for ice_sq_done timeout
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Wierzbicki,
 Jacek" <jacek.wierzbicki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgNywgMjAyNCAyOjE2IEFNDQo+IFRvOiBOZ3V5
ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBJbnRlbCBXaXJlZCBM
QU4gPGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgIm5ldGRldiBuZXRkZXYiQHZn
ZXIua2VybmVsLm9yZw0KPiBDYzogVGVtZXJraGFub3YsIFNlcmdleSA8c2VyZ2V5LnRlbWVya2hh
bm92QGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBp
bnRlbC5jb20+OyBLb2xhY2luc2tpLCBLYXJvbCA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+
OyBXaWVyemJpY2tpLCBKYWNlayA8amFjZWsud2llcnpiaWNraUBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCAxLzddIGljZTogaW1wbGVtZW50
IGFuZCB1c2UgcmQzMl9wb2xsX3RpbWVvdXQgZm9yIGljZV9zcV9kb25lIHRpbWVvdXQNCj4NCj4g
VGhlIGljZV9zcV9kb25lIGZ1bmN0aW9uIGlzIHVzZWQgdG8gY2hlY2sgdGhlIGNvbnRyb2wgcXVl
dWUgaGVhZCByZWdpc3RlciBhbmQgZGV0ZXJtaW5lIHdoZXRoZXIgb3Igbm90IHRoZSBjb250cm9s
IHF1ZXVlIHByb2Nlc3NpbmcgaXMgZG9uZS4gVGhpcyBmdW5jdGlvbiBpcyBjYWxsZWQgaW4gYSBs
b29wIGNoZWNraW5nIGFnYWluc3QgamlmZmllcyBmb3IgYSBzcGVjaWZpZWQgdGltZW91dC4NCj4N
Cj4gVGhlIHBhdHRlcm4gb2YgcmVhZGluZyBhIHJlZ2lzdGVyIGluIGEgbG9vcCB1bnRpbCBhIGNv
bmRpdGlvbiBpcyB0cnVlIG9yIGEgdGltZW91dCBpcyByZWFjaGVkIGlzIGEgcmVsYXRpdmVseSBj
b21tb24gcGF0dGVybi4gSW4gZmFjdCwgdGhlIGtlcm5lbCBwcm92aWRlcyBhIHJlYWRfcG9sbF90
aW1lb3V0IGZ1bmN0aW9uIGltcGxlbWVudGluZyB0aGlzIGJlaGF2aW9yIGluIDxsaW51eC9pb3Bv
bGwuaD4NCj4NCj4gVXNlIG9mIHJlYWRfcG9sbF90aW1lb3V0IGlzIHByZWZlcnJlZCBvdmVyIGRp
cmVjdGx5IGNvZGluZyB0aGVzZSBsb29wcy4NCj4gSG93ZXZlciwgdXNpbmcgaXQgaW4gdGhlIGlj
ZSBkcml2ZXIgaXMgYSBiaXQgbW9yZSBkaWZmaWN1bHQgYmVjYXVzZSBvZiB0aGUNCj4gcmQzMiB3
cmFwcGVyLiBJbXBsZW1lbnQgYSByZDMyX3BvbGxfdGltZW91dCB3cmFwcGVyIGJhc2VkIG9uIHJl
YWRfcG9sbF90aW1lb3V0Lg0KPg0KPiBSZWZhY3RvciBpY2Vfc3FfZG9uZSB0byB1c2UgcmQzMl9w
b2xsX3RpbWVvdXQsIHJlcGxhY2luZyB0aGUgbG9vcCBjYWxsaW5nIGljZV9zcV9kb25lIGluIGlj
ZV9zcV9zZW5kX2NtZC4gVGhpcyBzaW1wbGlmaWVzIHRoZSBsb2dpYyBkb3duIHRvIGEgc2luZ2xl
DQo+IGljZV9zcV9kb25lKCkgY2FsbC4NCj4NCj4gVGhlIGltcGxlbWVudGF0aW9uIG9mIHJkMzJf
cG9sbF90aW1lb3V0IHVzZXMgbWljcm9zZWNvbmRzIGZvciBpdHMgdGltZW91dCB2YWx1ZSwgc28g
dXBkYXRlIHRoZSBDUSB0aW1lb3V0IG1hY3JvcyB1c2VkIHRvIGJlIHNwZWNpZmllZCBpbiBtaWNy
b3NlY29uZHMgdW5pdHMgYXMgd2VsbCBpbnN0ZWFkIG9mIHVzaW5nIEhaIGZvciBqaWZmaWVzLg0K
Pg0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNv
bT4NCj4gUmV2aWV3ZWQtYnk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Nv
bnRyb2xxLmggfCAgMiArLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9v
c2RlcC5oICAgIHwgIDQgKysrDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2NvbnRyb2xxLmMgfCAzOCArKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0NCj4gIDMgZmlsZXMg
Y2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pDQo+DQoNClRlc3RlZC1i
eTogUHVjaGEgSGltYXNla2hhciBSZWRkeSA8aGltYXNla2hhcngucmVkZHkucHVjaGFAaW50ZWwu
Y29tPiAoQSBDb250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg0K
