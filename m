Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0IDJK/gGxWnn5gQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 11:14:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB55E333170
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 11:14:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 233AF40B29;
	Thu, 26 Mar 2026 10:14:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G5cYpb2s16kz; Thu, 26 Mar 2026 10:14:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4129340AD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774520053;
	bh=EPRqEEHU1VVDH07mHghnc7w+WWltTMqyS+SsOU0lhfY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9n3bJOWv3aZKEX99J25MxJquM4MQjAo99riU/J2ipfbxT2daPkPcNljbQazyIjct1
	 XPeLT4REnOMblmGrKtiq4fzFGKnmX7HKI7B2yTwd9LvKJHyC0ZWgmXQ52zZlwT3nGx
	 ADbDCXlWUWokpK/cw9azXEPS1uFMp/LBaI7l1u8+WEFwgOi08XWMGQGfoQBypPxahN
	 /dayeeDDzTWMh9zGD2NVXnkF0pdVQVGFHBfqUkKTym4+P9hJXMwzWX5JzSQqpR+1YU
	 z8GY79QIemQZxjmrYNI/+Lj3TsMe/LE0IL9wJpaU6Q9wse33xHIHHgXSDcN2LMNGnR
	 vvqHqPlJuO/AQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4129340AD9;
	Thu, 26 Mar 2026 10:14:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4124FF5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 10:14:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3316740AA8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 10:14:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zWNN7FggUw_n for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 10:14:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 326A140AD3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 326A140AD3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 326A140AD3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 10:14:09 +0000 (UTC)
X-CSE-ConnectionGUID: CIj8b4UmQ8CqGQZgQ+aZ+Q==
X-CSE-MsgGUID: 03cJejbsSheYap0uog9J7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75641626"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="75641626"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 03:14:09 -0700
X-CSE-ConnectionGUID: NZUoUZYCRnOBX/vfqiC/xg==
X-CSE-MsgGUID: 5ZvBgt/KSNm6oddIHfXIOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="224024848"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 03:14:09 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 03:14:08 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Mar 2026 03:14:08 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.43) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 03:14:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l611wFzDZNLc3XkbWoOkg3JOSqy33IkHf5fU66ndpsHJMElPHeeMO51e7i2+mUBEuPW6QuD4n8AaA8B7xMdPJttL2W/GP1Gqd6sCNgDxRF20/oxXmtcPXNZtynmoKOf2hmAdAJ7em9tRNyDxyFcUoX/+Wxe/RwKi6K8b+UswEtUQ8uraudJ6bgbOaOo1NExlevfGDk9SerzXLNx1gWQZq5pCx/W2/UInzp3zBDpfHDUhUQB0BK4/q+ry0aXl8GdOTwzXkqugQmQgxy10o206d/NbiLKcwXTHd3BcY4UVzpF2FVw1ScRzdtamQAtDoSutIJT3+QJwst+04AOvV4CHSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EPRqEEHU1VVDH07mHghnc7w+WWltTMqyS+SsOU0lhfY=;
 b=THu9NsHKyvw6iw0dQkRcaLfwv4OOln7jo0u8fpvBpg1P0SgZtUeTn0a1reruKopC6x0BWejuDnONoCFJoZBsEOPfPdsYbqsdwnmuR3QPpN1LCLNVwjEyuy3IcBcAgXpkPwdHyvZtUMS3P1eVgnCi2ffTkcH5QDFE0LmGcgLNiS6W4NptC0msAkOKL6aAhmSEi47HtuwGNc6mwv/sA3RP+QUMwpsAP7T21iy6x+S3DMF+FZPOzPK01Z30uYIKQSJDNAC7p481WPnn3FefxCZvAMmvOXziqfJVRZdJ3MeaUJ5dGsSL2nQpyj77nkU4+iAG+dmJBX70IEVq/PGsUIzLHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by CH3PR11MB7937.namprd11.prod.outlook.com (2603:10b6:610:12c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.8; Thu, 26 Mar
 2026 10:14:01 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.20.9769.006; Thu, 26 Mar 2026
 10:14:01 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v2 net-next 8/8] ice: add TX reference
 clock (tx_clk) control for E825 devices
Thread-Index: AQHcuYJq93AAswA2jkSzFoQgFK1RBLW9WyAAgAM7VLA=
Date: Thu, 26 Mar 2026 10:14:01 +0000
Message-ID: <IA1PR11MB62192795F4B9A70D36F8BC9B9256A@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260321222627.1193603-1-grzegorz.nitka@intel.com>
 <20260321222627.1193603-9-grzegorz.nitka@intel.com>
 <IA3PR11MB89867D2324033C835337A179E548A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89867D2324033C835337A179E548A@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|CH3PR11MB7937:EE_
x-ms-office365-filtering-correlation-id: 8e13a348-8c85-49f2-0739-08de8b2066c2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: kt7Q5nhfotT+H+afyeOQTV+WjLZYOKcDbajo3IdHDV96xjVIlSVyWHTGX7Kiqvx4TvVGYVXuYMIYUpNvQp3+l+j4V9mAlraNur1DHwN4k9+71gizy6TdushjybPTH63WjF6PNuCsEDJZgJ9sc/0c/zQj65fGzHilY8oj9HRyGKWriwIlU59eRyJgyEcCryyyM3Xkbt/yPV/JgBTBbr1O4Y+lFEhfCfbE412WeBIfTlhryzezsdZkBkz+HNTNEOQR1yUlCYGJFx0GuL4H5B4fUaxqNooCq1cDZt8oGXVmxgO8oSXYJ2YJo32/SgGJwdQnKavoRb2oPbFrg1yV7beRZo08kcEbP4xl/NfRHy+1zjDAtqddpHJNbXOMFvl2WjMyoz48sLqRAH9A25+buL3Q1wQMwdLCq9xBIpInOY3x5SPGwRezSiVhLsKEdWfGOqGDXJ5jU/vknfZbyYBBkVtl6Cn+J8T29moCYVfO4wpCBX1J8amsrsTDwJkzpklZwaHG5pPrp61pW7vvugI9/W7RJYLt+dGdLVAvvIRtbzOjWBSqJ4S6Xxf7RDkZsuhtrus8sYiXeRUR1Na0OyCK8/fCB80TiV/0q2VozBp9Lk2UkBC726oJvIBj1LtjLXJjQJLMHDwq4aaZnsNpqAARn9NImRnd/ROoMNhiG+cj+XyOJu8rlrtf8FZdYvqBstWc3b8JBACjrjSE2nBXXg2hKVKZ92UDVfoYvsiWf2WlfR6PXBOQRGW+u4Cehw+HKhWHyTLmBXhdbi2mIdZoQHdTnLuE4RpMtKXdBBCxJPuzVHHbqJ4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2c4a1BxQTFJRkZIbmlDMDJpVDI0Mk1INW9lRFpOZDZULzVZWVVpQzJEcGU5?=
 =?utf-8?B?WmowQjlqOVVCYWlzWDRaODVQRkZ2ajMyeSt6SVRzc0VNc29zRHlZaFI0SnpO?=
 =?utf-8?B?MUxsekQzM05mZG5icFFTK2NzQWdJU2RVVTk5UjhUeG1CTitZclN6TEp1ZjZR?=
 =?utf-8?B?L0lPRGhrajB0dzkrUy9neGZHaktrRHNReThvZEZqSFpodGx5djhmU0hUVTFX?=
 =?utf-8?B?TnhNdkU2TE5EMDZNcDdiUmlqVms5VFB2RW1FK01ScU45S1ExOFo5OWo3Vm1N?=
 =?utf-8?B?WnV0SFFvZDh4Z1lHNEFpazgrVjIrL29iMGNWM2tjU0NxckJkSzJ4V3BjTHE2?=
 =?utf-8?B?RmtSZzJwaXE3ZjNuOEYvT0l1T2RTNzJvckxkM3pyUnZOWmFHZEFjOUluQ2FP?=
 =?utf-8?B?MURNaGhFaDdIbE43eHc0dU1ISk9BWFBDWjFaVkNvc1E1UllQazRTTy9IeEVH?=
 =?utf-8?B?d3ZNVEVqV2dlM092cklpeVBGTk1ZbGg5Z1JSVzV1L2tmd0p1dDZ1WjJIS1dC?=
 =?utf-8?B?bkRod2hsTS9QTGwvZVFqc0JrYkZjTHFwd1dNQjVmUjNWWmVxM05sRlV4UnRj?=
 =?utf-8?B?Q05naG83TEdzbWk2LzJwK2FKMGlkUnRLTmtLSnUzRzZNRHk2b1NGdUhaNUJy?=
 =?utf-8?B?ZVBNTW9SZFFmSlhoa1QxRUVNVnFRb3lmSnZtZGlZVWpBVS84ckFJamNoL0VX?=
 =?utf-8?B?YVdibjdFSFc5RXFoQmU3L1d1NDdnL1JkOVRNY2F2ZlBqVUhWUkF1dGo1eVlG?=
 =?utf-8?B?SWxVNHUvSno0L1hCb3VLZnVRZ3FZSUtEYnZKQmZuVEpXZS9UbitnSEV2Q0hq?=
 =?utf-8?B?NDNPeE85MDZmb0h6alNucHFOVzlqSjZQaSttUngvUHo4NXFLdlFLc05ndGtN?=
 =?utf-8?B?TVcxYXZsQTNZR0RGTm44QzBmZEtYRmpsK0dDM1dyQXlzSUJ0N0xpLzZhYXIy?=
 =?utf-8?B?RElrbS9Odkx3QjhHT0U1bm1EWUFwWE1Sd1NWM3IyaW53QjI0c2hQOHAxZDVI?=
 =?utf-8?B?andjL0ZoRWFRVnA5Rkc4SWJ1WElXZGY1QU82WU95L25saFZTaFgraCs3dy9t?=
 =?utf-8?B?T2ZsaWNKREhBM3dPZVppTjFVMnZ4Qlp4VFh5WExpa0tiRmNQRGJtU1pod0hl?=
 =?utf-8?B?T2hjZ0dWKys5RUhvMXZnek83NnJXNDNHRytsMVRDRWRpaFBhaGVlbUZUY3VH?=
 =?utf-8?B?U1p4N3J3eVVJWXZlZElBc3BKT3FmSU04VWgzdnFBZC9sQVF4Y1B0a2l0NW9h?=
 =?utf-8?B?Y1YzSFZOc0cwUW9UR3ZWYVE0dkYybUd2ZjBrUE1DRThLYnN2S25oK25QUC95?=
 =?utf-8?B?VjIyUGtFbzFuMWtUbm82bUtPc0VYOXRQUWE0dlpDYmhVWHV6U1VINTFidytV?=
 =?utf-8?B?Z213OUZ0cWlRUTVBZlJYRDF2amtJbTVENmpCbG1mOTJRL2NIak52bDY0SHZN?=
 =?utf-8?B?L2ZDeFlGZVo2d2NDVnNuK3BHR0FoUDVpT3Z4SnozTGlFZFdOdFJPMWY4N3NX?=
 =?utf-8?B?OXV1OWo1d2FPd1dBcXlxdU04anAwYXJGVjhONWdFVlh5ZStXMjlrc0JBZFND?=
 =?utf-8?B?ejlMVG1jaUFUT01vRFpIVXoxcDRnaUgzaTJVR0NkUHgyeUFwbDA4M1R3Vkcx?=
 =?utf-8?B?SXplbmdhWmoydGZRajc1alIweE1vN1Brc3N5NFJ6cXc4MmZNYlVNQjJqUDM1?=
 =?utf-8?B?UUtlS1NxVmJOb2hQc2l4VC9ZUlVTejQxVVF2YVpkaTRoVlB3MTF0RURiWmRT?=
 =?utf-8?B?UmdPN3F6NTdCdjIxdFJOK29USWlzY3VOd2Q2d0JrWVRhL2lBTnhtUU94cU16?=
 =?utf-8?B?dzA5NS9Hek9tdHJnV09RR2pweldNTjZGdDNQUHYzVmNHQytDMUdWd1ZNdEpF?=
 =?utf-8?B?UkxqTjBwcjg1eVNoRnZJRGdqWVJJRzJvUUVRQXdXdS9MdUFUdGJlRS9tWlBl?=
 =?utf-8?B?V1hFalVvWnpFajdwdmwrWUxPTW1BbFBDWHgrQVdEUHVvR2xCRk9jend6SGhh?=
 =?utf-8?B?eExEQnMvVGF3bm5lUEdBV2Vwa29oMVlaYzF2c1ArVGhxN1A3LzRUaWp1Zkl6?=
 =?utf-8?B?VUFSVVlNcFNsUnc1MkZicEd5MTAza0x6Q3BGemd5M0N2VFU1emFIOW9tREJ5?=
 =?utf-8?B?VDNySUp3eXVVK04rUnZ2VVNTY0NZUndRVStxd3lpbnlrVjA4U2g5RkJrQTRP?=
 =?utf-8?B?aUZOaVVXTWhtUzBhSEd2RldNU3IwOHJKYVZsVnlVWTM4VnRSNWxWd08wN1Rw?=
 =?utf-8?B?d3JncmoxQytHZjRwaGtTQVhkdEtKQ01sWU11RjVIY1o3S1g2QWRoOUdEeFBv?=
 =?utf-8?B?L0hPMmhVNXlFVGhhcXpSakJrSDl1Q1JjMkVnVVNuV0pNWmljaHBYQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: wi2A6KOKjpeYdfUbTTU7EAy+IqaBrUQeWg8XhHtyOJ9nGcilN5AWgCk6kLjiBP2SPNUarcvV775xw1pqdVqhZLGGJQL7a7cu7RGrFXPQpeB8WQU81hAudafmkqkgTZpaNw86EzhfVdS+B2oi8nBy9FJbKUNYxXQOXgwe1mebLml6lnaV2JWkTHsP5QqQEXHusMO4VF89e42PxCRktSjI4spw4UYpirnTzJmTYDu3UQnLD4C5GeLPzvsvIFSRHKhrp8Q9gr3WtNLaS6ozJSRSRHXssxJX4/XV6CPxHtMGSTINpYxPkyJvMaZfSf5ofNKY6Q4GequHiHxbnmoEv4uVhQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e13a348-8c85-49f2-0739-08de8b2066c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 10:14:01.2035 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HM/+/j42VZMkiqUp6ZkgpeUB5Mr2hQ7dqJxgg6DVWm6AHGnYGQJ5XOLTagloScOx3bJGC1Sa7mkbkSRzIfXQz84Z+1nvlFRaLZngrqKyDJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7937
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774520050; x=1806056050;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EPRqEEHU1VVDH07mHghnc7w+WWltTMqyS+SsOU0lhfY=;
 b=bKZrWMrX4wZx5X0dIZA0F9r+egX4o2MMIeESg1JoWjHPWbuir9S4Imhk
 M9p7J+6M9EOJMX1BZYNWS1F2NqIzC/OwYKODh0UasWYjzRe9G7iaZC6Cp
 ZpFr4qoeBRQcIGchhsrul/M1nzjCoPtnTF0YSZdSzRdb8br0MMzNS8Hir
 A9b+02hhK3pg2kT0tH59dWtj/eEQNyr1eCeNi31R/DtfQX9a3PFdxChFN
 CwyUo9KFIRkD4i2L4bZPGN6J5DPaFWedPXVwzZDA0bG11Kw7Pfjd+P9Lf
 SaKXgQrc7mgX3/bOrrC903yC+Uvv53kNeIbzoXSl+p8iz6zT/M3Pm/y7V
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bKZrWMrX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 8/8] ice: add TX reference
 clock (tx_clk) control for E825 devices
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
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: AB55E333170
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTG9rdGlvbm92LCBBbGVr
c2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBN
YXJjaCAyNCwgMjAyNiA5OjIwIEFNDQo+IFRvOiBOaXRrYSwgR3J6ZWdvcnogPGdyemVnb3J6Lm5p
dGthQGludGVsLmNvbT47IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6IFZlY2VyYSwgSXZh
biA8aXZlY2VyYUByZWRoYXQuY29tPjsgdmFkaW0uZmVkb3JlbmtvQGxpbnV4LmRldjsNCj4ga3Vi
YUBrZXJuZWwub3JnOyBqaXJpQHJlc251bGxpLnVzOyBlZHVtYXpldEBnb29nbGUuY29tOyBLaXRz
emVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgcmljaGFy
ZGNvY2hyYW5AZ21haWwuY29tOw0KPiBkb25hbGQuaHVudGVyQGdtYWlsLmNvbTsgbGludXgta2Vy
bmVsQHZnZXIua2VybmVsLm9yZzsgS3ViYWxld3NraSwNCj4gQXJrYWRpdXN6IDxhcmthZGl1c3ou
a3ViYWxld3NraUBpbnRlbC5jb20+OyBhbmRyZXcrbmV0ZGV2QGx1bm4uY2g7DQo+IGludGVsLXdp
cmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBob3Jtc0BrZXJuZWwub3JnOw0KPiBQcmF0aG9zaC5T
YXRpc2hAbWljcm9jaGlwLmNvbTsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5
ZW5AaW50ZWwuY29tPjsgcGFiZW5pQHJlZGhhdC5jb207DQo+IGRhdmVtQGRhdmVtbG9mdC5uZXQN
Cj4gU3ViamVjdDogUkU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiBuZXQtbmV4dCA4Lzhd
IGljZTogYWRkIFRYIHJlZmVyZW5jZQ0KPiBjbG9jayAodHhfY2xrKSBjb250cm9sIGZvciBFODI1
IGRldmljZXMNCj4gDQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+
IEZyb206IEludGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9y
Zz4gT24gQmVoYWxmDQo+ID4gT2YgR3J6ZWdvcnogTml0a2ENCj4gPiBTZW50OiBTYXR1cmRheSwg
TWFyY2ggMjEsIDIwMjYgMTE6MjYgUE0NCj4gPiBUbzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0K
PiA+IENjOiBWZWNlcmEsIEl2YW4gPGl2ZWNlcmFAcmVkaGF0LmNvbT47IHZhZGltLmZlZG9yZW5r
b0BsaW51eC5kZXY7DQo+ID4ga3ViYUBrZXJuZWwub3JnOyBqaXJpQHJlc251bGxpLnVzOyBlZHVt
YXpldEBnb29nbGUuY29tOyBLaXRzemVsLA0KPiA+IFByemVteXNsYXcgPHByemVteXNsYXcua2l0
c3plbEBpbnRlbC5jb20+OyByaWNoYXJkY29jaHJhbkBnbWFpbC5jb207DQo+ID4gZG9uYWxkLmh1
bnRlckBnbWFpbC5jb207IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IEt1YmFsZXdza2ks
DQo+ID4gQXJrYWRpdXN6IDxhcmthZGl1c3oua3ViYWxld3NraUBpbnRlbC5jb20+OyBhbmRyZXcr
bmV0ZGV2QGx1bm4uY2g7DQo+ID4gaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IGhv
cm1zQGtlcm5lbC5vcmc7DQo+ID4gUHJhdGhvc2guU2F0aXNoQG1pY3JvY2hpcC5jb207IE5ndXll
biwgQW50aG9ueSBMDQo+ID4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgcGFiZW5pQHJl
ZGhhdC5jb207DQo+IGRhdmVtQGRhdmVtbG9mdC5uZXQNCj4gPiBTdWJqZWN0OiBbSW50ZWwtd2ly
ZWQtbGFuXSBbUEFUQ0ggdjIgbmV0LW5leHQgOC84XSBpY2U6IGFkZCBUWA0KPiA+IHJlZmVyZW5j
ZSBjbG9jayAodHhfY2xrKSBjb250cm9sIGZvciBFODI1IGRldmljZXMNCj4gPg0KPiA+IEFkZCBm
dWxsIHN1cHBvcnQgZm9yIHNlbGVjdGluZyBhbmQgY29udHJvbGxpbmcgdGhlIFRYIFNFUkRFUyBy
ZWZlcmVuY2UNCj4gPiBjbG9jayBvbiBFODI1QyBoYXJkd2FyZS4gRTgyNUMgZGV2aWNlZGUgc3Vw
cG9ydHMgc2VsZWN0aW5nIGFtb25nDQo+ID4gbXVsdGlwbGUgU0VSREVTIHRyYW5zbWl0IHJlZmVy
ZW5jZSBjbG9jayBzb3VyY2VzIChFTkVULCBTeW5jRSwgRVJFRjApLA0KPiA+IGJ1dCBpbXBvc2Vz
IHNldmVyYWwgcm91dGluZyBjb25zdHJhaW50czogb24gc29tZSBwYXRocyBhIHJlZmVyZW5jZQ0K
PiA+IG11c3QgYmUgZW5hYmxlZCBvbiBib3RoIFBIWSBjb21wbGV4ZXMsIGFuZCBwb3J0cyBzaGFy
aW5nIGEgUEhZIG11c3QNCj4gPiBjb29yZGluYXRlIHVzYWdlIHNvIHRoYXQgYSByZWZlcmVuY2Ug
aXMgbm90IGRpc2FibGVkIHdoaWxlIHN0aWxsIGluDQo+ID4gYWN0aXZlIHVzZS4gVW50aWwgbm93
IHRoZSBkcml2ZXIgZGlkIG5vdCBleHBvc2UgdGhpcyBkb21haW4gdGhyb3VnaA0KPiA+IHRoZSBE
UExMIEFQSSwgbm9yIGRpZCBpdCBwcm92aWRlIGEgY29oZXJlbnQgY29udHJvbCBsYXllciBmb3IN
Cj4gPiBlbmFibGluZywgc3dpdGNoaW5nLCBvciB0cmFja2luZyBUWCByZWZlcmVuY2UgY2xvY2tz
Lg0KPiA+DQo+ID4gVGhpcyBwYXRjaCBpbXBsZW1lbnRzIGZ1bGwgVFggcmVmZXJlbmNlIGNsb2Nr
IG1hbmFnZW1lbnQgZm9yIEU4MjUNCj4gPiBkZXZpY2VzLiBDb21wYXJlZCB0byBwcmV2aW91cyBp
dGVyYXRpb25zLCB0aGUgbG9naWMgaXMgbm93IHNlcGFyYXRlZA0KPiA+IGludG8gYSBkZWRpY2F0
ZWQgbW9kdWxlIChpY2VfdHhjbGsuYykgd2hpY2ggZW5jYXBzdWxhdGVzIGFsbCBjbG9jay0NCj4g
PiBzZWxlY3Rpb24gcnVsZXMsIGNyb3Nz4oCRUEhZIGRlcGVuZGVuY2llcywgYW5kIHRoZSBib29r
a2VlcGluZyBuZWVkZWQgdG8NCj4gPiBlbnN1cmUgc2FmZSB0cmFuc2l0aW9ucy4gVGhpcyBhbGxv
d3MgdGhlIERQTEwgbGF5ZXIgYW5kIHRoZSBQVFAgY29kZQ0KPiA+IHRvIHJlbWFpbiBmb2N1c2Vk
IG9uIHRoZWlyIHJlc3BlY3RpdmUgcm9sZXMuDQo+ID4NCj4gPiBLZXkgYWRkaXRpb25zOg0KPiA+
DQo+ID4gICAqIEEgbmV3IHR4Y2xrIGNvbnRyb2wgbW9kdWxlIChgaWNlX3R4Y2xrLmNgKSBpbXBs
ZW1lbnRpbmc6DQo+ID4gICAgICAgLSBzb2Z0d2FyZSB1c2FnZSB0cmFja2luZyBmb3IgZWFjaCBy
ZWZlcmVuY2UgY2xvY2sgcGVyIFBIWSwNCj4gPiAgICAgICAtIHBlZXLigJFQSFkgZW5hYmxlIHJ1
bGVzIChTeW5jRSByZXF1aXJlZCBvbiBib3RoIFBIWXMgd2hlbiB1c2VkDQo+ID4gb24NCj4gPiAg
ICAgICAgIFBIWTAsIEVSRUYwIHJlcXVpcmVkIG9uIGJvdGggd2hlbiB1c2VkIG9uIFBIWTEpLA0K
PiA+ICAgICAgIC0gc2FmZSBkaXNhYmxpbmcgb2YgdW51c2VkIHJlZmVyZW5jZSBjbG9ja3MgYWZ0
ZXIgc3dpdGNoaW5nLA0KPiA+ICAgICAgIC0gYSBzaW5nbGUsIGRyaXZlcuKAkWludGVybmFsIGVu
dHJ5IHBvaW50IGZvciBjbG9jayBjaGFuZ2VzLg0KPiA+DQo+ID4gICAqIEludGVncmF0aW9uIHdp
dGggdGhlIERQTEwgcGluIG9wczoNCj4gPiAgICAgICAtIHBpbuKAkXNldCBub3cgY2FsbHMgaW50
byBgaWNlX3R4Y2xrX3NldF9jbGsoKWAgdG8gcmVxdWVzdCBhDQo+ID4gICAgICAgICBoYXJkd2Fy
ZSBzd2l0Y2gsDQo+ID4gICAgICAgLSBwaW7igJFnZXQgcmVwb3J0cyB0aGUgY3VycmVudCBTRVJE
RVMgcmVmZXJlbmNlIGJ5IHJlYWRpbmcgYmFjaw0KPiA+IHRoZQ0KPiA+ICAgICAgICAgYWN0aXZl
IHNlbGVjdG9yIChgaWNlX2dldF9zZXJkZXNfcmVmX3NlbF9lODI1YygpYCkuDQo+ID4NCj4gPiAg
ICogV2lyaW5nIHRoZSByZXF1ZXN0ZWQgcmVmZXJlbmNlIGNsb2NrIGludG8gQXV0b+KAkU5lZ290
aWF0aW9uIHJlc3RhcnQNCj4gPiAgICAgdGhyb3VnaCB0aGUgYWxyZWFkeeKAkWV4dGVuZGVkIGBp
Y2VfYXFfc2V0X2xpbmtfcmVzdGFydF9hbigpYC4NCj4gPg0KPiA+ICAgKiBBZnRlciBlYWNoIGxp
bmstdXAgdGhlIGRyaXZlciB2ZXJpZmllcyB0aGUgZWZmZWN0aXZlIGhhcmR3YXJlDQo+ID4gc3Rh
dGUNCj4gPiAgICAgKGBpY2VfdHhjbGtfdmVyaWZ5KClgKSBhbmQgdXBkYXRlcyBpdHMgcGVy4oCR
UEhZIHVzYWdlIGJpdG1hcHMsDQo+ID4gICAgIGNvcnJlY3RpbmcgdGhlIHJlcXVlc3RlZC9hY3Rp
dmUgc3RhdGUgaWYgdGhlIEZXIG9yIEFOIGZsb3cgYXBwbGllZA0KPiA+IGENCj4gPiAgICAgZGlm
ZmVyZW50IHJlZmVyZW5jZS4NCj4gPg0KPiA+ICAgKiBQVFAgUEYgaW5pdGlhbGl6YXRpb24gbm93
IHNlZWRzIHRoZSBFTkVUIHJlZmVyZW5jZSBjbG9jayBhcw0KPiA+IGVuYWJsZWQNCj4gPiAgICAg
YnkgZGVmYXVsdCBmb3IgaXRzIHBvcnQuDQo+ID4NCj4gPiBBbGwgcmVmZXJlbmNlIGNsb2NrIHRy
YW5zaXRpb25zIGFyZSBzZXJpYWxpemVkIHRocm91Z2ggdGhlIERQTEwgbG9jaywNCj4gPiBhbmQg
dXNhZ2UgaW5mb3JtYXRpb24gaXMgc2hhcmVkIGFjcm9zcyBhbGwgUEZzIGJlbG9uZ2luZyB0byB0
aGUgc2FtZQ0KPiA+IEU4MjVDIGNvbnRyb2xsZXIgUEYuIFRoaXMgZW5zdXJlcyB0aGF0IGNvbmN1
cnJlbnQgY2hhbmdlcyBhcmUNCj4gPiBjb29yZGluYXRlZCBhbmQgdGhhdCBzaGFyZWQgUEhZcyBu
ZXZlciBzZWUgYW4gdW5leHBlY3RlZCBkaXNhYmxlLg0KPiA+DQo+ID4gV2l0aCB0aGlzIHBhdGNo
LCBFODI1IGRldmljZXMgZ2FpbiBmdWxsIHVzZXJzcGFjZeKAkWRyaXZlbiBUWEMgcmVmZXJlbmNl
DQo+ID4gY2xvY2sgc2VsZWN0aW9uIHZpYSB0aGUgRFBMTCBzdWJzeXN0ZW0sIGVuYWJsaW5nIGNv
bXBsZXRlIFN5bmNFDQo+ID4gc3VwcG9ydCwgcHJlY2lzZSBtdWx0aeKAkWNsb2NrIHNldHVwcywg
YW5kIHByZWRpY3RhYmxlIGNsb2NrIHJvdXRpbmcNCj4gPiBiZWhhdmlvci4NCj4gPg0KPiA+IFJl
dmlld2VkLWJ5OiBBcmthZGl1c3ogS3ViYWxld3NraSA8YXJrYWRpdXN6Lmt1YmFsZXdza2lAaW50
ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEdyemVnb3J6IE5pdGthIDxncnplZ29yei5uaXRr
YUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9NYWtlZmlsZSAgICAgfCAgIDIgKy0NCj4gPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9kcGxsLmMgICB8ICA1MyArKysrLQ0KPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX3B0cC5jICAgIHwgIDIyICsrDQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfcHRwLmggICAgfCAgIDcgKw0KPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3B0cF9ody5jIHwgIDM3ICsrKw0KPiA+IGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmggfCAgMjcgKysrDQo+ID4gZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV90eGNsay5jICB8IDIzNyArKysrKysrKysrKysrKysrKysrKw0K
PiA+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhjbGsuaCAgfCAgNDEgKysr
Kw0KPiA+ICA4IGZpbGVzIGNoYW5nZWQsIDQxNCBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMo
LSkgIGNyZWF0ZSBtb2RlDQo+ID4gMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfdHhjbGsuYw0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV90eGNsay5oDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL01ha2VmaWxlDQo+ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvTWFrZWZpbGUNCj4gPiBpbmRleCAzOGRiNDc2YWIyZWMuLjk1ZmQwYzQ5ODAw
ZiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvTWFrZWZp
bGUNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvTWFrZWZpbGUNCj4g
PiBAQCAtNTQsNyArNTQsNyBAQCBpY2UtJChDT05GSUdfUENJX0lPVikgKz0JXA0KPiA+ICAJaWNl
X3ZmX21ieC5vCQlcDQo+ID4gIAlpY2VfdmZfdnNpX3ZsYW5fb3BzLm8JXA0KPiA+ICAJaWNlX3Zm
X2xpYi5vDQo+ID4gLWljZS0kKENPTkZJR19QVFBfMTU4OF9DTE9DSykgKz0gaWNlX3B0cC5vIGlj
ZV9wdHBfaHcubyBpY2VfZHBsbC5vDQo+ID4gaWNlX3RzcGxsLm8gaWNlX2NwaS5vDQo+ID4gK2lj
ZS0kKENPTkZJR19QVFBfMTU4OF9DTE9DSykgKz0gaWNlX3B0cC5vIGljZV9wdHBfaHcubyBpY2Vf
ZHBsbC5vDQo+ID4gK2ljZV90c3BsbC5vIGljZV9jcGkubyBpY2VfdHhjbGsubw0KPiA+ICBpY2Ut
JChDT05GSUdfRENCKSArPSBpY2VfZGNiLm8gaWNlX2RjYl9ubC5vIGljZV9kY2JfbGliLm8NCj4g
PiAgaWNlLSQoQ09ORklHX1JGU19BQ0NFTCkgKz0gaWNlX2FyZnMubw0KPiA+ICBpY2UtJChDT05G
SUdfWERQX1NPQ0tFVFMpICs9IGljZV94c2subw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RwbGwuYw0KPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9kcGxsLmMNCj4gPiBpbmRleCAzOGEwYmJiMzE2ZDguLjI4NjE0NmM2
ZDRkMiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2RwbGwuYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZHBs
bC5jDQo+ID4gQEAgLTQsNiArNCw3IEBADQo+ID4gICNpbmNsdWRlICJpY2UuaCINCj4gPiAgI2lu
Y2x1ZGUgImljZV9saWIuaCINCj4gPiAgI2luY2x1ZGUgImljZV90cmFjZS5oIg0KPiANCj4gLi4u
DQo+IA0KPiA+ICsvKioNCj4gPiArICogaWNlX3R4Y2xrX3NldF9jbGsgLSBTZXQgVHggcmVmZXJl
bmNlIGNsb2NrDQo+ID4gKyAqIEBwZjogcG9pbnRlciB0byBwZiBzdHJ1Y3R1cmUNCj4gPiArICog
QGNsazogbmV3IFR4IGNsb2NrDQo+ID4gKyAqDQo+ID4gKyAqIFJldHVybjogMCBvbiBzdWNjZXNz
LCBuZWdhdGl2ZSB2YWx1ZSBvdGhlcndpc2UuDQo+ID4gKyAqLw0KPiA+ICtpbnQgaWNlX3R4Y2xr
X3NldF9jbGsoc3RydWN0IGljZV9wZiAqcGYsIGVudW0gaWNlX2U4MjVjX3JlZl9jbGsgY2xrKQ0K
PiA+IHsNCj4gPiArCXN0cnVjdCBpY2VfcGYgKmN0cmxfcGYgPSBpY2VfZ2V0X2N0cmxfcGYocGYp
Ow0KPiA+ICsJc3RydWN0IGljZV9wb3J0X2luZm8gKnBvcnRfaW5mbzsNCj4gPiArCXU4IHBvcnRf
bnVtLCBwaHk7DQo+ID4gKwlpbnQgZXJyOw0KPiA+ICsNCj4gPiArCWlmIChwZi0+cHRwLnBvcnQu
dHhfY2xrID09IGNsaykNCj4gPiArCQlyZXR1cm4gMDsNCj4gPiArDQo+ID4gKwlwb3J0X251bSA9
IHBmLT5wdHAucG9ydC5wb3J0X251bTsNCj4gPiArCXBoeSA9IHBvcnRfbnVtIC8gcGYtPmh3LnB0
cC5wb3J0c19wZXJfcGh5Ow0KPiA+ICsJcG9ydF9pbmZvID0gcGYtPmh3LnBvcnRfaW5mbzsNCj4g
PiArDQo+ID4gKwkvKiBDaGVjayBpZiB0aGUgVFggY2xrIGlzIGVuYWJsZWQgZm9yIHRoaXMgUEhZ
LCBpZiBub3QgLSBlbmFibGUNCj4gPiBpdCAqLw0KPiA+ICsJaWYgKCFpY2VfdHhjbGtfYW55X3Bv
cnRfdXNlcyhjdHJsX3BmLCBwaHksIGNsaykpIHsNCj4gPiArCQllcnIgPSBpY2VfY3BpX2VuYV9k
aXNfY2xrX3JlZigmcGYtPmh3LCBwaHksIGNsaywgdHJ1ZSk7DQo+ID4gKwkJaWYgKGVycikgew0K
PiA+ICsJCQlkZXZfZXJyKGljZV9od190b19kZXYoJnBmLT5odyksICJGYWlsZWQgdG8gZW5hYmxl
DQo+ID4gdGhlICV1IFRYIGNsb2NrIGZvciB0aGUgJXUgUEhZXG4iLA0KPiA+ICsJCQkJY2xrLCBw
aHkpOw0KPiA+ICsJCQlyZXR1cm4gZXJyOw0KPiA+ICsJCX0NCj4gPiArCQllcnIgPSBpY2VfdHhj
bGtfZW5hYmxlX3BlZXIocGYsIGNsayk7DQo+ID4gKwkJaWYgKGVycikNCj4gPiArCQkJcmV0dXJu
IGVycjsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwlwZi0+cHRwLnBvcnQudHhfY2xrX3JlcSA9IGNs
azsNCj4gInJlcXVlc3RlZCBjbG9jayIgc3RhdGUgdmFyaWFibGUgaXMgY29tbWl0dGVkIEhFUkUs
IEJFRk9SRSB0aGUgaGFyZHdhcmUNCj4gY29tbWFuZCBiZWxvdy4NCj4gSWYgdGhlIEFRIGNvbW1h
bmQgZmFpbHMsIHRoaXMgaXMgbmV2ZXIgcm9sbGVkIGJhY2suDQo+IA0KPiA+ICsNCj4gPiArCS8q
IFdlIGFyZSByZWFkeSB0byBzd2l0Y2ggdG8gdGhlIG5ldyBUWCBjbGsuICovDQo+ID4gKwllcnIg
PSBpY2VfYXFfc2V0X2xpbmtfcmVzdGFydF9hbihwb3J0X2luZm8sIHRydWUsIE5VTEwsDQo+ID4g
KwkJCQkJIElDRV9SRUZDTEtfVVNFUl9UT19BUV9JRFgoY2xrKSk7DQo+ID4gKwlpZiAoZXJyKQ0K
PiA+ICsJCWRldl9lcnIoaWNlX2h3X3RvX2RldigmcGYtPmh3KSwgIkZhaWxlZCB0byBzd2l0Y2gg
dG8gJXUNCj4gPiBUWCBjbG9jayBmb3IgdGhlICV1IFBIWVxuIiwNCj4gPiArCQkJY2xrLCBwaHkp
Ow0KPiBGdW5jdGlvbiByZXR1cm5zIGVycm9yLCBidXQgZGFtYWdlIHN0aWxsIHBlcnNpc3RzLg0K
PiANCg0KVGhhbmtzIEFsZWtzIGZvciB5b3VyIGNvbW1lbnQuDQoNCkhtbSAuLi4gJ3llcycgYW5k
ICdubycuDQpTZXR0aW5nIGRpZmZlcmVudCB0eC1jbGsgaXMgYSBtdWx0aXN0YWdlIHByb2Nlc3Mu
DQpQbGVhc2Ugbm90ZSwgaW4gdGhpcyBpbXBsZW1lbnRhdGlvbiwgdGhlIGZpbmFsIHZlcmlmaWNh
dGlvbiB3aGV0aGVyIHN3aXRjaGluZw0Kc3VjY2VlZGVkIG9yIG5vdCwgaXMgZG9uZSBpbiBpY2Vf
dHhjbGtfdmVyaWZ5IGZ1bmN0aW9uLg0KQXQgdGhpcyBwb2ludCB3aGF0IHdlIGtub3cgaXMgdGhh
dCBBTiByZXN0YXJ0IGZhaWxlZCAoaXQgbWlnaHQgYmUgbWFueSByZWFzb25zIGZvciB0aGF0KS4N
CkkgdGhpbmssIHdoYXQgaXMgd29ydGggdG8gY2hhbmdlLCBpcyB0aGUgZXJyb3IgbWVzc2FnZSB3
aGljaCBzaG91bGQgYmUgbW9yZQ0KYWJvdXQgQU4gcmVzdGFydCBmYWlsdXJlLg0KDQpSZWdhcmRz
DQoNCkdyemVnb3J6DQo+ID4gKw0KPiA+ICsJcmV0dXJuIGVycjsNCj4gPiArfQ0KPiANCj4gLi4u
DQo+IA0KPiA+IC0tDQo+ID4gMi4zOS4zDQoNCg==
