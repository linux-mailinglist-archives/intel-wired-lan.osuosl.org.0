Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4854E45F7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Mar 2022 19:26:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66C1D4014C;
	Tue, 22 Mar 2022 18:26:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rad7NTsB17kU; Tue, 22 Mar 2022 18:26:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E78204012D;
	Tue, 22 Mar 2022 18:26:17 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC7681BF9B2
 for <intel-wired-lan@osuosl.org>; Tue, 22 Mar 2022 18:26:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA19D61263
 for <intel-wired-lan@osuosl.org>; Tue, 22 Mar 2022 18:26:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yhUoFVypAiXn for <intel-wired-lan@osuosl.org>;
 Tue, 22 Mar 2022 18:26:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9D0CB61286
 for <intel-wired-lan@osuosl.org>; Tue, 22 Mar 2022 18:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647973569; x=1679509569;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=43g6h+Ei8Ab5wiExp5yQMBxsjgavXdY6nI5O8uWrVB8=;
 b=RYCathif72MgG5WulsuTD5c+NDtQULYCqes5XkRvtnwAH+8eKN8wIra0
 OyFpcosraLA80xfMvzZrnYwo1Oeno4+4Kl9pe2kbpDNWCgbjhClhw25Fb
 93S4YgH0LDAZK4zkSGCFewDbl0BTZzkCLLhe0jhMRyN//ZWPM7+1EaLSi
 G4lRTutePDPU0KTVhfao5Y/BfCoAcuaEWT1pvD0MGE7AYpysX4RJsUXG9
 D3IMSfxQcbYmortO6PjMrpB1Q9NVp8hzXGdfPqlqcTpOukKzbLvyMEE0O
 hO7v2mFr+VXaiwvYKByx7V+3k3kdAIoI9ly5716QSSFZMbkznbyWiO/+K g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="257627880"
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="257627880"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 11:26:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="616127464"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 22 Mar 2022 11:26:08 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 22 Mar 2022 11:26:08 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 22 Mar 2022 11:26:07 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 22 Mar 2022 11:26:07 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 22 Mar 2022 11:26:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I0J65DESRvY2iEUTonACPmyw2cOYCeSr1Uc3f8MeoATcHmPx+iT54djGkQy0wxiRigRFe/Dvsr4aeKh/p0wIRP4kr9Rr64fSmSLM3NsbIs0entAXJe6Yxxj9hmd9hDvxMVca9+/0sYzb2OWXjevdCk1WvmE6/R0rQ7GL7RbwrSRX0JRJuZJjfIP+sq7X7M3OKda2ohW1ote28yIOYSqX2DkuWDnRwEX4ihsTqC+kKHu1I6q6+dSxfnZtk4Cv7AGWtFO8Ve5bvdqAZq4/t9KtRbj2ch6Vm3D9hmdufAIdwJp1U3MbmKSYY3Z7PiJerEuzzS9WyMEriFRcgjIti6RFew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=43g6h+Ei8Ab5wiExp5yQMBxsjgavXdY6nI5O8uWrVB8=;
 b=E6LQl26X1Dwoz6tNUWrugnsuUSJHQUFJSjOitvrFMUHYOz/zfqzDv5sfmVqYTJXdk+6lueXToK13IxR9XA1CdIlgnbcX3zYTJHwVFJ/zSydkvVGiZhrxJVon4k44t7x/uRx7c6nCVfW+fSBIWLg4F2XNz8IaeZaHJ8P7LIx+d/iUFsjsj+krF8X/TPPliA1Xyzjr/O9LC1BqkEcUZfVXo1HlmYioLT19oNoyRiUYNA5hSNkCwntAr/wiwuwyUK3+jcvGPR+LcIC03I0oBmGQ5UV7FPD9b7k7a9r1eeKgLeOp2fXoUeLLuBYM2ySl6bXc2kOMPNOMapCGOEHImxiXwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN6PR11MB3311.namprd11.prod.outlook.com (2603:10b6:805:c1::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Tue, 22 Mar
 2022 18:26:04 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::8441:e1ac:f3ae:12b8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::8441:e1ac:f3ae:12b8%8]) with mapi id 15.20.5081.023; Tue, 22 Mar 2022
 18:26:04 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] Revert "ice: Hide bus-info in
 ethtool for PRs in switchdev mode"
Thread-Index: AQHYPTK6u1E98F+Kjk2t/brsnjqftKzJ7ZWAgAHMmQA=
Date: Tue, 22 Mar 2022 18:26:04 +0000
Message-ID: <a79731e9-4cbe-8827-f706-b69687f4d376@intel.com>
References: <20220321144731.3935-1-marcin.szycik@linux.intel.com>
 <a7dcc837-e24e-86d6-059c-416ad3357fe0@molgen.mpg.de>
In-Reply-To: <a7dcc837-e24e-86d6-059c-416ad3357fe0@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e9b2fddb-7390-4ae4-3a62-08da0c316d05
x-ms-traffictypediagnostic: SN6PR11MB3311:EE_
x-microsoft-antispam-prvs: <SN6PR11MB3311443B1B2DAA6A3B6471BDD6179@SN6PR11MB3311.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m37CcTc8TnwaEY4PhizW5GZMPRZaBRkhFF9IZ5avyAKrxWM0tu0xJ4pES8HMIeVb6x4Pp8Of6/ut3WXrVL25icMvAjpJxwSDgfHSXcdA/c5Exbz6czg+T5CvsBPv8O2s2pJ0l7L+ewgPIs4Qv9e8BmdZAKHpNIMs7/6lI2MyqQG6iBAAS3G0kPvxjlpmvuOljLeXfdbo+mEPWWCuUrgne01HjA9WKVmTRtlMdg8DSR4kLuvaawXI/cdJ3Lin/EmAK49YYyon2dECbCxf3Jo1gvxS+h7KZFbNoSxbvGZY6fAKDHeUrB4x1WlWSU9ayJ+TOW/3LZUCq8MOYffTgGqBH+f8WBTdAUWml/MMZXq11U8HvOUUH+11CUgM4pxD6G8Y8C3QKsdc2d8EYWJlcbofm4BUbDvLh5t6RRMubzBtnzwvLeRPcRy8PBhaW2ettmQYnpWnBAUPQVwfEKbt6qMu9dCk7t/X9jHvUQKu11b0ALvH8hDWBMk2h0AuD83jxyz6ILrS7R/9V+5s85npXYui7SvpZxHaoBp/6fAImYFNJSiNpAeaEO45mb9O39A+OFO8BNURqokuz7qEaTB3jG+u+oVGnBZMZ+TuPgAjsOzL1prDzd2Cg8Fy9Tjb10D+6vKgEBvvNqM4+CVi6WV3aYulcSSrG4qCZ1W5AjOixcu5vLR6Za4VkrSY47wvyT31aDoPYwtEm6a1heFTKihL5n6qBIj1ljuQ/npKeEXMYa1bX4SKmwFXeC2Cj+klYwQ4WDCs0sDrMLLmGanOrqvoAArtwOd+91VsITxl4V3l+yv7NszXWbhMZbMSQrivPJRSgXeCMZHwVyoWsuEsBd6pbpDqOCXHyA0/CKZIrEwEQoi7jYE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(86362001)(31696002)(36756003)(38070700005)(508600001)(2616005)(53546011)(6916009)(316002)(83380400001)(186003)(26005)(5660300002)(31686004)(8936002)(122000001)(6512007)(6506007)(71200400001)(82960400001)(76116006)(66946007)(66556008)(66446008)(66476007)(64756008)(8676002)(6486002)(966005)(38100700002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bWtjUGpGYU9uS2djSHRaSUtHejhTVmZKNkpZNkFQb2g0UDRoR05Pbm1ZU0Zp?=
 =?utf-8?B?QUZYOHpURDNXN0o0MHdmd3JiOHJHQ1pNS1pnUFZuWkF5ZEZnbnJxVkVjQkU1?=
 =?utf-8?B?Y0FhTHZLM002dmVWL1czL2FVTzhMUXh3WnFTL3NOdmZVVUo1UFlOalRZQ01M?=
 =?utf-8?B?bFVPbGlVdk1MMWdXU0trTCtwRzNpRlVrT0pSVjNwalNoek9xcE9IaUlhb043?=
 =?utf-8?B?bWhvTFcvSkVLbnZUVStHM2ZKZ3I5YjhFa3VBbEJ2anV2WUVFQlFyVGRWVXJG?=
 =?utf-8?B?eTJDemREV1ZDOFZqeGhudVR3a0x4aHlVQUQ5bWE1K0QvbzhULzd0UnZTcVdj?=
 =?utf-8?B?bW04a3g1WlBqR1ZrRGU0Z1luTHB2eVJpZGR1a2J6MHFEd1VUajBVL1RFTUd0?=
 =?utf-8?B?bE9qcXNMUTMyUVRsYzFXZk0vdnA0ODY1TmxHbjkrZ04xY29PUXJUenFXVlBl?=
 =?utf-8?B?Mm94MEMyWE9nME5jZkt3RHNsYUVMSDl1Y3pNZFRDV1NxenBEcnNBcVNyZllX?=
 =?utf-8?B?dGZoYTRjM2IwNUdXTGNTdUlvOHQ2SlhCZ2k1STdWYUtKYkMvbFFMdE1rWW0x?=
 =?utf-8?B?ZEdxVGUrbjJBQ0lmSkJHRTJzcFVWMXZCM0tBOXVObjlDMFF5NkpLeEh2ZUVI?=
 =?utf-8?B?NUxDbFhxaUxVa0NIM2M2MDM5L092azltWEhPQzQ5ZFcrcmZqWGIxUFFGWWds?=
 =?utf-8?B?d3lFN3VwRWw1R2dseW9XSnZnS0kxQThveEZHY2NUYzlCUVlxTnRYUWJEaExm?=
 =?utf-8?B?Y1Z6WUlYSmw0Y1c1U0FDRVFDazUxQ3pkWUpQNkt3NWVsTm1kR0Uwc1BNSHRW?=
 =?utf-8?B?SkpEL2xPSXJzM0NWaFdDL1BsSGlBUUVLNkRidHhaNTdSSk0xK3BSUkpZeUxM?=
 =?utf-8?B?M0FORDE3Rm9oUEVGeFZaY1RyK01pQXEzdzhTZlZzNGJPcTJySU5KVjdjK3Fu?=
 =?utf-8?B?S3dxR0dGTDF6ckhVOFl1RUdhT3dBSDR2V1Y0MWJSVFBWRi85ZGJNRHkrQ2gx?=
 =?utf-8?B?U1FIbUI4ZlVZSFFFMkUzdXJXSWdFajRTU1JLc282NlRvczhNcXdLN3hsaDNK?=
 =?utf-8?B?ejRFMW1EODJwVitFWGg5d3NFek56WG4vcSs1SnZBaGNUK09TbXZRaDV0NVJL?=
 =?utf-8?B?bkZZTkxub1Rla1BsZGxidXNYRWJYVVZ2TVhPRkttRkpNclFxZ1p5TVljTDN0?=
 =?utf-8?B?RkZwakNRK1QyRExWd0lSbFUzaDJFQjZqQmN0SisxWjd3WWt1YTVzSU83U2Yr?=
 =?utf-8?B?Z1lBVzVKN1VtOVluWFVjRXJnUXRCT3dZampzc1BEbnM4amQ2Sk5VOTFVU1Jo?=
 =?utf-8?B?MFpCK3RQRDBjOEtubjFvaEVmL3JTY0NvdWJYT2VEYWFRZ1VWQXRyZGxDNElq?=
 =?utf-8?B?NTROQ3czR1ZLSzlqSGV3Ymo3V1k4blc5VFZZT3p0RzZYeU8rcmZpVWFBd3Nh?=
 =?utf-8?B?WXlRbDlML3crUTBGMWdUaThlSGhpZklXOGpQWis1ZVFoN0EvcTYrRE9jeU5p?=
 =?utf-8?B?ODFyQi8yazhjUTFSTVZ3Ky92T0lUd09BSUE1MEhsZGY0TjZVdEh3NStrTDI2?=
 =?utf-8?B?NStDY2kzRUNoNkYrS08zMExqdzNwSkdrWXAzeksyeHdGdTkxOFFFcExiSDhQ?=
 =?utf-8?B?aStLenVjRSttcmcxdERKYmRpVzRYM3VwY0h6S1dHQ2F3bFhJTE9UeFkrSEgw?=
 =?utf-8?B?WlcvSm9oRmRZK2NkQ0JVYVF4eUt6cmVGczJ1VFpaQ2dhSVdMb3ZIdjhmRGJp?=
 =?utf-8?B?WkNOeDBoa01kd0N5YWpFSDA5dWE3UzQ4OFdJdnFBaHhJMXJNdGp5TW5MU2s2?=
 =?utf-8?B?QVdXQWtFUDI3R2crUVkrM1RDTnZ1aXprRENSc3dXeW5TQ0tXWDRxUXZIYk9z?=
 =?utf-8?B?STJWM2pJVytUS1pEQ0Znemx6aFpVZGVOUHZRUldnSmFDbjFlUzdRMkFsWEtZ?=
 =?utf-8?Q?5AHZTSv3Clg6AjBMhK8zLrPsfq0xjF4B?=
Content-ID: <F5AA38359B0E804B9AD9B7244C29E612@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9b2fddb-7390-4ae4-3a62-08da0c316d05
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2022 18:26:04.6930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MRnlyLKWAsYtxBosamXu5UOilsZ5x1gS5aBlpKAxhFxK1MqsvTqsBXgTuSIJJ7iG/jbg/SzUWbEsadsDW46qzni9/kNWbGstml8DKZQ8Oys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3311
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] Revert "ice: Hide bus-info
 in ethtool for PRs in switchdev mode"
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

T24gMy8yMS8yMDIyIDc6NTcgQU0sIFBhdWwgTWVuemVsIHdyb3RlOg0KPiBEZWFyIE1hcmNpbiwN
Cj4gDQo+IA0KPiBBbSAyMS4wMy4yMiB1bSAxNTo0NyBzY2hyaWViIE1hcmNpbiBTenljaWs6DQo+
PiBUaGlzIHJldmVydHMgY29tbWl0IGJmYWFiYTk5ZTY4MGJmODJiZjJjYmY2OTg2NmMzZjM3NDM0
ZmY3NjYuDQo+Pg0KPj4gQ29tbWl0IGJmYWFiYTk5ZTY4MCAoImljZTogSGlkZSBidXMtaW5mbyBp
biBldGh0b29sIGZvciBQUnMgaW4gc3dpdGNoZGV2DQo+PiBtb2RlIikgd2FzIGEgd29ya2Fyb3Vu
ZCBmb3IgbHNodyB0b29sIGRpc3BsYXlpbmcgaW5jb3JyZWN0DQo+PiBkZXNjcmlwdGlvbnMgZm9y
IHBvcnQgcmVwcmVzZW50b3JzIGFuZCBQRiBpbiBzd2l0Y2hkZXYgbW9kZS4gTm93IHRoZSBpc3N1
ZQ0KPj4gaGFzIGJlZW4gZml4ZWQgaW4gdGhlIGxzaHcgdG9vbCBpdHNlbGYgWzFdLg0KPj4NCj4+
IFsxXSBodHRwczovL2V6aXgub3JnL3NyYy9wa2cvbHNody9jb21taXQvOWJmNGU0YzljMQ0KPiAN
Cj4gQXMgeW91IGNhbm5vdCBrbm93IHdoYXQgbHNodyB2ZXJzaW9uIHVzZXJzIGhhdmUgaW5zdGFs
bGVkLCBJIGFtIGFmcmFpZCANCj4gdGhlIHdvcmthcm91bmQgKHBhcnQgb2YgTGludXggNS4xNi4g
YW5kIDUuMTcpIGhhcyB0byBzdGF5IGluIHRoZSBMaW51eCANCj4ga2VybmVsIHRvIG5vdCB2aW9s
YXRlIExpbnV44oCZIG5vLXJlZ3Jlc3Npb24gcG9saWN5Lg0KPiANCj4gV2hhdCBhcmUgdGhlIGRv
d25zaWRlcyBvZiBrZWVwaW5nIHRoZSB3b3JrYXJvdW5kIGFyb3VuZD8NCj4gDQoNCg0KSSB1bmRl
cnN0YW5kIHdhbnRpbmcgdG8gYXZvaWQgYnJlYWtpbmcgdXNlcnNwYWNlLiBIb3dldmVyLCBJIHRo
aW5rIGl0cw0KaW1wb3J0YW50IHRvIHVuZGVyc3RhbmQgdGhlIGNvbnRleHQgaGVyZS4NCg0KbHNo
dyB3YXMgbWFraW5nIGFuIGluY29ycmVjdCBhc3N1bXB0aW9uIGFib3V0IGhvdyBuZXRkZXZzIHRp
ZSB0byBQQ0kNCmRldmljZXMuIFRoaXMgYXNzdW1wdGlvbiBjYXVzZWQgYSBidWcgd2hlcmUgcmVw
cmVzZW50b3IgbmV0ZGV2cyB3b3VsZA0KZ2V0IG1pcy1uYW1lZCBieSB0aGUgdXRpbGl0eSwgYW5k
IHRoZW4gdGhlIHJlYWwgbmV0ZGV2IHdvdWxkIGdldCBhDQpnZW5lcmljIG5hbWUuDQoNClRoaXMg
aXMgYWtpbiB0byBhIHVzZXJzcGFjZSBwcm9ncmFtIHJlYWRpbmcgc29tZSBkYXRhIHJlcG9ydGVk
IGJ5IGtlcm5lbA0KYW5kIG1pc2ludGVycHJldGluZyBpdC4gSXQncyBzaW1wbHkgYSBidWcgaW4g
dGhlIGFwcGxpY2F0aW9uLg0KDQpUaGUgaWNlIGRyaXZlciB3YXMgY2hhbmdlZCB0byBzdG9wIHJl
cG9ydGluZyB0aGUgUENJIGJ1cyBpbmZvIHdpdGggYQ0KcmVwcmVzZW50b3IuIFRoaXMgaXRzZWxm
IGlzIGFuIGFjdHVhbCByZWdyZXNzaW9uIGluIGZ1bmN0aW9uYWxpdHk6DQpXaXRob3V0IHRoaXMg
aW5mb3JtYXRpb24gaXQgaXNuJ3QgcG9zc2libGUgZm9yIHVzZXJzcGFjZSB0byBrbm93IHdoaWNo
DQpQQ0kgZGV2aWNlIHRoaXMgcmVwcmVzZW50b3IgYmVsb25ncyB0by4NCg0KSW4gcGFydGljdWxh
ciwgaWYgdGhlIGFwcHJvcHJpYXRlIGluZm9ybWF0aW9uIGlzIGF2YWlsYWJsZSBhbmQgcHJvdmlk
ZWQsDQp1c2VyIHNwYWNlIHdpbGwgZ2VuZXJhbGx5IHJlbmFtZSB0aGVzZSBkZXZpY2VzOg0KDQp3
aXRob3V0IGxpbmtpbmcgKGkuZS4gd2l0aCBrZWVwaW5nIHRoZSB3b3JrYXJvdW5kOg0KZXRoMA0K
DQp3aXRoIGxpbmtpbmcgKGkuZS4gcmV2ZXJ0aW5nIHRoaXMgd29yayBhcm91bmQpOg0KZW5wMjRz
MGYwbnBmMHZmMA0KDQpUaGUgZmFjdCB0aGF0IHdlIGFyZW4ndCBwcm92aWRpbmcgdGhpcyBidXMg
aW5mb3JtYXRpb24gaXMgdG8gbWUgdGhlDQphY3R1YWwgcmVncmVzc2lvbiwgYW5kIHJlbW92aW5n
IHRoaXMgd29ya2Fyb3VuZCBmaXhlcyBpdC4NCg0KSWYgdGhlIHdvcmthcm91bmQgZGlkIG5vdCBo
YXZlIHN1Y2ggc2lkZSBlZmZlY3RzLCBJIHdvdWxkIGFncmVlIHRoYXQgaXQNCndvdWxkIGJlIHBy
ZWZlcmFibGUgdG8ga2VlcCBpdC4gSG93ZXZlciwgSSBiZWxpZXZlIHRoYXQgdGhlIGNvcnJlY3Qg
dmlldw0Kb2YgdGhlIHNpdHVhdGlvbiBpcyB0aGF0IHRoZSBvcmlnaW5hbCBmaXggd2FzIGEgcmVn
cmVzc2lvbiBpbiBiZWhhdmlvciwNCmFuZCB0aGF0IHdlIGFyZSBmaXhpbmcgdGhhdCByZWdyZXNz
aW9uIGJ5IHJldmVydGluZyB0aGlzLg0KDQpUaGlzIHNob3VsZCBiZSBtYWRlIG1vcmUgZXhwbGlj
aXQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHNvIHRoYXQgaXRzDQpjbGVhciB3aGF0IHdlJ3JlIGFj
dHVhbGx5IGZpeGluZy4NCg0KPiANCj4gS2luZCByZWdhcmRzLA0KPiANCj4gUGF1bA0KPiANCj4g
DQo+PiBTaWduZWQtb2ZmLWJ5OiBNYXJjaW4gU3p5Y2lrIDxtYXJjaW4uc3p5Y2lrQGxpbnV4Lmlu
dGVsLmNvbT4NCj4+IC0tLQ0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2V0aHRvb2wuYyB8IDggKysrLS0tLS0NCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9ldGh0b29sLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX2V0aHRvb2wuYw0KPj4gaW5kZXggMjRjZGE3ZTFmOTE2Li40NzZiZDFjODNjODcg
MTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRv
b2wuYw0KPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9ldGh0b29s
LmMNCj4+IEBAIC0xOTAsMTkgKzE5MCwxNyBAQCBfX2ljZV9nZXRfZHJ2aW5mbyhzdHJ1Y3QgbmV0
X2RldmljZSAqbmV0ZGV2LCBzdHJ1Y3QgZXRodG9vbF9kcnZpbmZvICpkcnZpbmZvLA0KPj4gICAJ
c25wcmludGYoZHJ2aW5mby0+ZndfdmVyc2lvbiwgc2l6ZW9mKGRydmluZm8tPmZ3X3ZlcnNpb24p
LA0KPj4gICAJCSAiJXguJTAyeCAweCV4ICVkLiVkLiVkIiwgbnZtLT5tYWpvciwgbnZtLT5taW5v
ciwNCj4+ICAgCQkgbnZtLT5lZXRyYWNrLCBvcm9tLT5tYWpvciwgb3JvbS0+YnVpbGQsIG9yb20t
PnBhdGNoKTsNCj4+ICsNCj4+ICsJc3Ryc2NweShkcnZpbmZvLT5idXNfaW5mbywgcGNpX25hbWUo
cGYtPnBkZXYpLA0KPj4gKwkJc2l6ZW9mKGRydmluZm8tPmJ1c19pbmZvKSk7DQo+PiAgIH0NCj4+
ICAgDQo+PiAgIHN0YXRpYyB2b2lkDQo+PiAgIGljZV9nZXRfZHJ2aW5mbyhzdHJ1Y3QgbmV0X2Rl
dmljZSAqbmV0ZGV2LCBzdHJ1Y3QgZXRodG9vbF9kcnZpbmZvICpkcnZpbmZvKQ0KPj4gICB7DQo+
PiAgIAlzdHJ1Y3QgaWNlX25ldGRldl9wcml2ICpucCA9IG5ldGRldl9wcml2KG5ldGRldik7DQo+
PiAtCXN0cnVjdCBpY2VfcGYgKnBmID0gbnAtPnZzaS0+YmFjazsNCj4+ICAgDQo+PiAgIAlfX2lj
ZV9nZXRfZHJ2aW5mbyhuZXRkZXYsIGRydmluZm8sIG5wLT52c2kpOw0KPj4gLQ0KPj4gLQlzdHJz
Y3B5KGRydmluZm8tPmJ1c19pbmZvLCBwY2lfbmFtZShwZi0+cGRldiksDQo+PiAtCQlzaXplb2Yo
ZHJ2aW5mby0+YnVzX2luZm8pKTsNCj4+IC0NCj4+ICAgCWRydmluZm8tPm5fcHJpdl9mbGFncyA9
IElDRV9QUklWX0ZMQUdfQVJSQVlfU0laRTsNCj4+ICAgfQ0KPj4gICANCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdA0KPiBJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZw0KPiBodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4NCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
