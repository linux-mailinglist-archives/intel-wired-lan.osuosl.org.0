Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A09A84819
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 17:37:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4E4241794;
	Thu, 10 Apr 2025 15:37:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vfswtm_zoqiS; Thu, 10 Apr 2025 15:37:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA44941796
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744299420;
	bh=KAmmHQ8425wEEWRFPhOg74oVxGvDYEZzPEvFOuaNc9k=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SvaxH/AlFLHyPhv1zZbzLURv2Ou7AVV2Js5JyHBrnD04qN+PiYswzoEzIsJxtx4yh
	 PCnQyVXz5RK8N3sBBUUInTqlT/i9UFX2HZ1eIJnPUcbnCK9BiEJzxoDFrn523zn0qn
	 GS3aFYDTRl9Wgqej4C4dQvVy2ZU7ENAJWeu8KT0c9dUqGIgsw3WExTtxfptzDdqBFt
	 2gceKe6vVbiSuX4UBVSddj9fDSfDnalpTbCHbDB5o6tcgS+5TNXuPu88li8wMS8D4y
	 /u3ePvktBEn2NwHXKvqhfe1Gz2KYwXGAGxPVbjiElPgBbrbx5eoQsoEhsf3RMjmErJ
	 sX83s5yVc9wQw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA44941796;
	Thu, 10 Apr 2025 15:36:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BD1BD193
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 15:36:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A18F141980
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 15:36:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rc3Nur0LDECp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 15:36:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B787A40B6E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B787A40B6E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B787A40B6E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 15:36:57 +0000 (UTC)
X-CSE-ConnectionGUID: 8z8tIBQbT12QPP6eXnhWsA==
X-CSE-MsgGUID: Lp00ASsYRq297um+Bzzk4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="68314731"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="68314731"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 08:36:57 -0700
X-CSE-ConnectionGUID: fINBqg9pQsGoDImyPUk6RQ==
X-CSE-MsgGUID: njPUytljRHmDvySNydK80w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="159917797"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 08:36:56 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 08:36:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 08:36:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 08:36:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R+Io1SuOnHceucwnzfyrYsJ7twF8mks9hDAN+o2T7khTTMB0LrCRlCakvaKC11ORxUJuF0Mj96KRNE/SkoxDeEU+oPdtCBwh5O6yqESuabWiXeJ37vzNiyvUF7KjHPBpIfNsmyz6sUXlJj6k4ysEk6giF/oOyfOiUIdbkMoZN8Jvl+YOb8DnI8hlQrjoJcdTGAbrB1/OyVcyMzm2acei3DkIHxDLFPfDX6d0wZ0/fOJxqxBLPbfvpLb5ZiNtC9neUf0kWO5f/y/+2qctDrClENEBblqBQ63tOaUpc7JxsnQCft5zzw1t+uNZkFE/H4NSnVNagi54WRdP/ecI95VzPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KAmmHQ8425wEEWRFPhOg74oVxGvDYEZzPEvFOuaNc9k=;
 b=LJf+CZlZL5RWq+GX5dDzEhN96z0siH1TCoVJha/cqhyPXW9A6NdQEWdq5E2zgvK0HH69fLFfRYONpRx+vTUjtrwUOy0VjHuQN+G/YuDifz1L4ki3hbLmy9I20FYfpHiTE6SGzThGr3YQPgEmDbIhMoCmWav9Iyn8iiaUeIzvJMMzTCKBQfhCcweIa9I/qJZDH5gCMlaQkjbxxDFja4EdONcOBQ+ghnO9R0p1iXa57M5shMcqNFhPKNbsmENbTy2nLzwSggP8BkXy19hjAdrAJs501FbynM8YrgXG8sO+GouXax6qErID/NIsQYVKgyoDYYbEV9bDENEiRZ0b/1YnqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ2PR11MB8567.namprd11.prod.outlook.com (2603:10b6:a03:568::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.31; Thu, 10 Apr
 2025 15:36:48 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.017; Thu, 10 Apr 2025
 15:36:48 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Olech, Milena" <milena.olech@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, "Salin, Samuel" <samuel.salin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v10 iwl-next 09/11] idpf: add Tx
 timestamp capabilities negotiation
Thread-Index: AQHbqHOvcCYQEt8IxEu5YxFEhT1WWbOaR/8AgAEXqACAAERQAIABUCGAgAAXbuA=
Date: Thu, 10 Apr 2025 15:36:48 +0000
Message-ID: <CO1PR11MB5089B976EC084BFB417D6782D6B72@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-21-milena.olech@intel.com>
 <757ed954-47a9-4be3-909e-5a343f453314@intel.com>
 <MW4PR11MB5889766212BD05ADC555FD608EB42@MW4PR11MB5889.namprd11.prod.outlook.com>
 <6b39d76a-b2be-4d09-a4b6-efb01c4be006@intel.com>
 <MW4PR11MB58897E22AD4DF1C410B9F62D8EB72@MW4PR11MB5889.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB58897E22AD4DF1C410B9F62D8EB72@MW4PR11MB5889.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|SJ2PR11MB8567:EE_
x-ms-office365-filtering-correlation-id: c45fce13-0801-4f81-7508-08dd784581c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?K1hyb2cwOXNzRmVlWFpSNVJsQkpDOFBPam96ZHdiaFZLSnFiZ244d0V2WlQv?=
 =?utf-8?B?bXB3NytnTXZnM1R6M25SM3ZoSVBHNFNLOUk2Z0ZJdFBMcytqYVpNdWpuSUht?=
 =?utf-8?B?U3RzbUhQS3FFczVnZk12NENldDNEeE11ODdvYWo1UTArZHpmUkZ2bU9HNUk5?=
 =?utf-8?B?eWhoZkh2bVpLSzUwbDdSVGN5T1E4Q1hlOS9TbGJROEloMjJuNCtCSWpYdGxw?=
 =?utf-8?B?UTlBSFhxZDlTNlZRMTA3RXI1aGN2a1hKRVhyZndjZGpydW42a083OUdJRitX?=
 =?utf-8?B?Sk5BcFpTdmZwTkRJbGd5TGJaTC9CK2ZoVEk5aEhPREpweERqQnRWMFNqQTlR?=
 =?utf-8?B?RFdYcHZ1OHQyVlpjaktDRUw3MDZpL09XR0xVcHpONlRWOWV1RTBjN1lNaW5m?=
 =?utf-8?B?cm1YNkVuVEppdGVIMDdqWDJDNHNWM1hzclpDRnRBWlA0MW5ZWVVSTFNRVjg0?=
 =?utf-8?B?cGVUaEFGTzhkNW5jbHdyYXNkZG5tWE5jTlo0R2FYZGwraFBlYytuQ29mOVlY?=
 =?utf-8?B?Z1hFb2wyR0NNcjBLbDRRSDlaWWJFMk81TEdHMExsQS9zUlZydS9SMTFuN0JC?=
 =?utf-8?B?aTVzRnlQU2hvSG9zbFRRelFQZjFBbm9rOEdVWENJR3MvRU5ZSTNrdGlZcjVU?=
 =?utf-8?B?UTE4VjY3S3pYMmZ0bC9VTHIvMnpPK0s0d1Y5clA0cjE3T3FZMzhsbXJ6TmtG?=
 =?utf-8?B?TDBVdDFSdmJwdTF3TGZ6QXdHaWx5c3pnQlRzWFpuUWdUM05sMzJ1dk9YMUU3?=
 =?utf-8?B?MzVXeWFjR1dTTEFmVkw3bng3WVdkVnlnUkRNNHNhRU5PSGJpSFJUbHQ0Z3ZQ?=
 =?utf-8?B?TGYvbGtjOWs4eis0WlNUV0lnL2hpMGg5b3c0bjBRSmlybG9vRXVrNldwOWRE?=
 =?utf-8?B?UFRKSFp4UU5qV0dwT2wwQTg3RzRsMEhiamFNWG43R3BiUndqZm5rSjFRTjZJ?=
 =?utf-8?B?UUhCKzIrUmttQTVwanpKei9RRlNXTFJubVpDd01WZHhLUGo3UEFGOXM2VnEy?=
 =?utf-8?B?UkJJeUFuSlFyMGJzQmdPYmYrcHFmdlZydEE2K1FzcmJwdWoxaU1pL3p2R2c5?=
 =?utf-8?B?THhsZER0OVF2QTQzRU1yUW1STzFFSldpOG1lKzVhb0xZZnJOdEhaM0M4b1ZH?=
 =?utf-8?B?MW5jV0VndzQ4aXJka2lWTHU5SEZsMXo5OUdkOXk2WjF3MkIyK3pJSW9aTEZu?=
 =?utf-8?B?Q1RFa285dDE1amhaVHkreWxGTERUbHZmb2Vsa1dGVDk5d1Rtd1M5RUVVR1lW?=
 =?utf-8?B?a3QrSi90RzJaanFaWXJTYkF0WERoMS8yakh5L0h3NE02UXhzK2NCdm1kSmQ4?=
 =?utf-8?B?QkJjb3BkQlJQTUFqdWpqVGhWS1RxS01zeUh0d0V2UXJSdEU1U1NFNXVsUFRh?=
 =?utf-8?B?MjB6TlpYNzRnN2JvRjdqUTA0WGUybFpkOU1HbjM1WVE1all0YkZjY2ZYZEZX?=
 =?utf-8?B?TU5MUTJhSGYzV0Iwd1ZQWjdiS3kxTkVlck0yZW5WTCtBVXVoRVZMcUpnNG8w?=
 =?utf-8?B?L2RKOHN2YzNlV1QwVlk0SnJ3R1J4bFFXSFZXaWpxcGZPR25JYTF0K1NoYTVm?=
 =?utf-8?B?Nkl0TFBLV1RXcU5Jb2lHejd3YUhRS0djbFRsYmxxU1NMWUl4M3BFRE1pVDRQ?=
 =?utf-8?B?U291ZzU0S3BRVEVINWdXYitab0pkQzY3MDY1dFhYNHZKOHdid0dXQ3FrT3VW?=
 =?utf-8?B?enpuNDRFNTQ5RE1MalN1b3Era2RMcDRockM4V2N3eXhyZVdSTGRzKzlSdmVp?=
 =?utf-8?B?UDJmbEJYOTc1VHA3M0o1TFk3SlRCblo3RnVlZGpES3MxYXo4MjJjdU04Lzhz?=
 =?utf-8?B?S2VtcG9pQUFiV0licjU0S1JPa0UyZ3k4WW5vME0zbU55cTk2WWVSbWp2SFgw?=
 =?utf-8?B?OGRGWWxKdWRGM1c4T3NIRHh0dVV3ekhhL0cveUpLdmpiQ01CRVVwbld0bEFw?=
 =?utf-8?Q?DXMeUMN7n5t8VqJkMQibtEZ2u4dOnQx/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OTFWd0xhVzBWYjJDbTJ3d0lBNWRGMThFZ0J2bjVBYXBURWo3dGRnaFh0MEty?=
 =?utf-8?B?T0ZLK1FvMlBwLzhtZU9zanZoNnBFODVIemhtdHVqdW9PclZ6NmRkU3dJclNM?=
 =?utf-8?B?N0VjQktPZ2NGQzRtREswenVZUStleHVrWlA0Lyt2NU5jaTQwQ05nUDlNYStq?=
 =?utf-8?B?bXVpanArMWtNZjcwMHB1MzhnVG90c3BwdUJERVdiSkVZL2VKZjV4MFErRHFx?=
 =?utf-8?B?WHArQnN5c2ZZOTU2cjJDdEpGUzZmWTRzeTk0TlN6YUxZNnBydlkvR2JSSzNx?=
 =?utf-8?B?RlNxNkxWdFgvaUdEYWwwNUxhT0plaEd3NG5vcnljU1d0U0FTTHIrZnFSQmJ1?=
 =?utf-8?B?QTVPRFM4anp5MVVSMDE3dFZCdWpZQ1lJME9QeWl4bXNBdjlCR3JBMExtUVp5?=
 =?utf-8?B?eDFxUm85Um1hLzNsTVdRanlxMWNBNW8wQzdkSHhieW1YUlA3WnlHMHpZeGQ2?=
 =?utf-8?B?cDFtUDVtUDF6WmRFZ3JUdWRXM01ZdmFPU3F2Uy9hbVp5blBHRjVOczlldnRE?=
 =?utf-8?B?cGg1RDNZYU1wMldiWHFFcnVOdURWcENMRFRIN1pHODFWb2p4WFMvU1FPUUcr?=
 =?utf-8?B?MGxrQWUzeG9IRzdpMDErdzd1WU1Days1WGxyMHpzRFh3UzBBRyttNDMwSjFO?=
 =?utf-8?B?NVBIclFKUkJNRFN4SEc0Z2tkUk0xOHZwVzdUc3FmWUNNNEpoSHNzUWc0UHZo?=
 =?utf-8?B?cUROdVVMTzhncU1ZT3ZLU3RNSGsvNjQ0aWxVaERkeTNGTUVwT3huYmlXdzJz?=
 =?utf-8?B?aHg0U1FMSVROdnFTRWRHbzdXdzRhak9iMU9ROTNZM0x1MUwxYXZ0QXp2dXQw?=
 =?utf-8?B?a2ZYMjF3cjdVaktMbzZDUUwxbVdOclhJNi9jRWlQRGF0YVc1dXphM3kyRXp5?=
 =?utf-8?B?dUhpemZWVmVad0ZvS2Q2YlN0enk0Vmg1OWNQdmZIVEJJKzNhWmpqMTRBZ0Fo?=
 =?utf-8?B?eG5QUGx1Vmp3Nktqc0hoL3ZTK0phaTgzWFh4OGVEb3lybnpGTERhTGg1WVll?=
 =?utf-8?B?UXFqdDBUcm9QSEptck5WaS9kMGJXblJFeVkyMEU2OXd3ZXdBYVN6aWJnbFFx?=
 =?utf-8?B?blA4Z29weVJOMjUxMXRMYTVNWTNpOXRrVFJPYWVTWk9JaHRPQXgrbk16amRr?=
 =?utf-8?B?eSthY04zb1Jsck0wTk9WaHI5S3c0ME5zbGI0RlNSalZaRUtGZ1NXUWVvVG9n?=
 =?utf-8?B?NndsdytFeWF3MzExMUpXMVVBRVFlU1Q5SGt3cXpnSkI5K0JaR1l3eTA4MU4z?=
 =?utf-8?B?WVJacHJRdnRJL29ZRUhtVHVkTWZlVUlIME1TYlF5Y2JEdUVJUkZNUFN5Q3pF?=
 =?utf-8?B?L3NkZEd4NXpQMUg0L2I5MnZJRUVhREZSVWJaekVxaHhYVE5QOFRmVEtCT1Jh?=
 =?utf-8?B?Rzh1Zk4vV2NxVjl5OVlnUnU3SEQ0S3FVdC9TVmlYNkVVeGIySEYxeUM0L0hD?=
 =?utf-8?B?VnQvNWdxWGFwbGdIUldDRE5wdURQb3RzNVBIYzJjYnFjK0hrNjJEaittKzRR?=
 =?utf-8?B?NTdCZWZnYmxvbFJGdS84QXVUeVJIVFZ4b2hybCtTOXE0a2VMNTBSY0VPSDd3?=
 =?utf-8?B?MTd6dEJ5a3lLKytHRjNnN1N5YkgyVGVKbkh0MnYzaTVDa3ZmbjZFT0NWUUJp?=
 =?utf-8?B?UWFiZnVncXhxVzJkZGlvRnJNQkVndUFwTG9pRXBjQ1VwcllLSm5rbDhCOTFh?=
 =?utf-8?B?NXhwR09qelQvR1poVFQ5RnVJajdTTWo1THNFOXVwcnZnNHc1NkMzWEZKVE4v?=
 =?utf-8?B?V01tbjV0TGllVmpHTXU3VUVxRzkyQXlFUVNGamJYeFJReVIzenRuZnlvVXYx?=
 =?utf-8?B?cmYvK3F4UzUwWG1vaUpUVzh0aU5aSUUrSEkwN2VURGQzckM0ZlVTTE15Kzk4?=
 =?utf-8?B?MTRxclQ1ckNTaVJnNEdvUDJZWG1WTHpwb0c5anp0djVWQmEvR0c3RVZOTFZ0?=
 =?utf-8?B?VWdHV2NrT3NYSzFTcmVoOEJ5UDk3UExSTExXZ2JHRjFaZE5Wc3UreVBxU1k4?=
 =?utf-8?B?SHdWL0NHZ2hWbjlqZno5OHo5aGxtWmFLekNYK1J3NDlBYUF4c0dReE15V0Ex?=
 =?utf-8?B?N1R5VTRHZHo4WVNnYW5YVUZxSlRTSzNKZ1ljNUF0a20ybFR4WHdrUlRaM2ZJ?=
 =?utf-8?Q?yxC5RDZWu79W9IRAy6+7aqVWM?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c45fce13-0801-4f81-7508-08dd784581c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2025 15:36:48.1269 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1b9yV3KbelOIW+WXcQLWt2Zl+vTFJ3KQdiPz+Rbw3XgP2jrI+WS/ueX04qacJyUM89N3UEG079Fko0yl4C8driHuRJr9iEwLRjippu9slGI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8567
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744299418; x=1775835418;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KAmmHQ8425wEEWRFPhOg74oVxGvDYEZzPEvFOuaNc9k=;
 b=I6gzg18v9wUWJ9Iu8cx3hQrZDzDVCSny3wyMWUfdbk6jHpgWUAZh9u3n
 D6iFPNMqvNkVtd39nvEIG591fIfpzZNRDTKW2xaowJ1cgDPv7diTxiRdk
 QOmmdnDJJymjZZwQkjvlSAOK8IC58IdpRYKSwibAc5iDRVjbwdCNQ3ISJ
 18KCVAfYQk82/F341McOmtEbHpU/O+g9YethqUIYFbyvreoGqM66MCLI0
 /aSaA3ob107L2iquME7KgqHT56uJXZpYkO6Wr/RvsY95ajJ1tg6L5pcT0
 XVo1xRC+wv7/BXjI3AJPrZE6I1cF726HPe3Jx+aMW3oyK4t9uDL/V/NHs
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I6gzg18v
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 09/11] idpf: add Tx
 timestamp capabilities negotiation
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogT2xlY2gsIE1pbGVuYSA8
bWlsZW5hLm9sZWNoQGludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIEFwcmlsIDEwLCAyMDI1
IDc6MTIgQU0NCj4gVG86IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29t
PjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IG5ldGRldkB2Z2VyLmtl
cm5lbC5vcmc7IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47
DQo+IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBM
b2Jha2luLCBBbGVrc2FuZGVyDQo+IDxhbGVrc2FuZGVyLmxvYmFraW5AaW50ZWwuY29tPjsgVGFu
dGlsb3YsIEVtaWwgUyA8ZW1pbC5zLnRhbnRpbG92QGludGVsLmNvbT47DQo+IExpbmdhLCBQYXZh
biBLdW1hciA8cGF2YW4ua3VtYXIubGluZ2FAaW50ZWwuY29tPjsgU2FsaW4sIFNhbXVlbA0KPiA8
c2FtdWVsLnNhbGluQGludGVsLmNvbT4NCj4gU3ViamVjdDogUkU6IFtJbnRlbC13aXJlZC1sYW5d
IFtQQVRDSCB2MTAgaXdsLW5leHQgMDkvMTFdIGlkcGY6IGFkZCBUeCB0aW1lc3RhbXANCj4gY2Fw
YWJpbGl0aWVzIG5lZ290aWF0aW9uDQo+IA0KPiBPbiA0LzkvMjAyNSA4OjA5IFBNLCBKYWNvYiBL
ZWxsZXIgd3JvdGU6DQo+IA0KPiA+T24gNC85LzIwMjUgNzowNCBBTSwgT2xlY2gsIE1pbGVuYSB3
cm90ZToNCj4gPj4gT24gNC84LzIwMjUgMTE6MjMgUE0sIEphY29iIEtlbGxlciB3cm90ZToNCj4g
Pj4NCj4gPj4+IE9uIDQvOC8yMDI1IDM6MzEgQU0sIE1pbGVuYSBPbGVjaCB3cm90ZToNCj4gPj4+
PiArc3RhdGljIHZvaWQgaWRwZl9wdHBfcmVsZWFzZV92cG9ydF90c3RhbXAoc3RydWN0IGlkcGZf
dnBvcnQgKnZwb3J0KQ0KPiA+Pj4+ICt7DQo+ID4+Pj4gKwlzdHJ1Y3QgaWRwZl9wdHBfdHhfdHN0
YW1wICpwdHBfdHhfdHN0YW1wLCAqdG1wOw0KPiA+Pj4+ICsJc3RydWN0IGxpc3RfaGVhZCAqaGVh
ZDsNCj4gPj4+PiArDQo+ID4+Pj4gKwkvKiBSZW1vdmUgbGlzdCB3aXRoIGZyZWUgbGF0Y2hlcyAq
Lw0KPiA+Pj4+ICsJc3Bpbl9sb2NrKCZ2cG9ydC0+dHhfdHN0YW1wX2NhcHMtPmxvY2tfZnJlZSk7
DQo+ID4+Pj4gKw0KPiA+Pj4+ICsJaGVhZCA9ICZ2cG9ydC0+dHhfdHN0YW1wX2NhcHMtPmxhdGNo
ZXNfZnJlZTsNCj4gPj4+PiArCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShwdHBfdHhfdHN0YW1w
LCB0bXAsIGhlYWQsIGxpc3RfbWVtYmVyKSB7DQo+ID4+Pj4gKwkJbGlzdF9kZWwoJnB0cF90eF90
c3RhbXAtPmxpc3RfbWVtYmVyKTsNCj4gPj4+PiArCQlrZnJlZShwdHBfdHhfdHN0YW1wKTsNCj4g
Pj4+PiArCX0NCj4gPj4+PiArDQo+ID4+Pj4gKwlzcGluX3VubG9jaygmdnBvcnQtPnR4X3RzdGFt
cF9jYXBzLT5sb2NrX2ZyZWUpOw0KPiA+Pj4+ICsNCj4gPj4+PiArCS8qIFJlbW92ZSBsaXN0IHdp
dGggbGF0Y2hlcyBpbiB1c2UgKi8NCj4gPj4+PiArCXNwaW5fbG9jaygmdnBvcnQtPnR4X3RzdGFt
cF9jYXBzLT5sb2NrX2luX3VzZSk7DQo+ID4+Pj4gKw0KPiA+Pj4+ICsJaGVhZCA9ICZ2cG9ydC0+
dHhfdHN0YW1wX2NhcHMtPmxhdGNoZXNfaW5fdXNlOw0KPiA+Pj4+ICsJbGlzdF9mb3JfZWFjaF9l
bnRyeV9zYWZlKHB0cF90eF90c3RhbXAsIHRtcCwgaGVhZCwgbGlzdF9tZW1iZXIpIHsNCj4gPj4+
PiArCQlsaXN0X2RlbCgmcHRwX3R4X3RzdGFtcC0+bGlzdF9tZW1iZXIpOw0KPiA+Pj4+ICsJCWtm
cmVlKHB0cF90eF90c3RhbXApOw0KPiA+Pj4+ICsJfQ0KPiA+Pj4+ICsNCj4gPj4+PiArCXNwaW5f
dW5sb2NrKCZ2cG9ydC0+dHhfdHN0YW1wX2NhcHMtPmxvY2tfaW5fdXNlKTsNCj4gPj4+PiArDQo+
ID4+Pj4gKwlrZnJlZSh2cG9ydC0+dHhfdHN0YW1wX2NhcHMpOw0KPiA+Pj4+ICsJdnBvcnQtPnR4
X3RzdGFtcF9jYXBzID0gTlVMTDsNCj4gPj4+PiArfQ0KPiA+Pj4gQ291bGQgeW91IHByb3ZpZGUg
YSBzdW1tYXJ5IGFuZCBvdmVydmlldyBvZiB0aGUgbG9ja2luZyBzY2hlbWUgdXNlZA0KPiA+Pj4g
aGVyZT8gSSBzZWUgeW91IGhhdmUgbXVsdGlwbGUgc3BpbiBsb2NrcyBmb3IgYm90aCB0aGUgZnJl
ZSBiaXRzIGFuZCB0aGUNCj4gPj4+IGluLXVzZSBiaXRzLCBhbmQgaXRzIGEgYml0IGhhcmQgdG8g
Z3Jhc3AgdGhlIHJlYXNvbmluZyBiZWhpbmQgdGhpcy4gV2UNCj4gPj4+IGhhZCBhIGxvdCBvZiBp
c3N1ZXMgZ2V0dGluZyBsb2NraW5nIGZvciBUeCB0aW1lc3RhbXBzIGNvcnJlY3QgaW4gaWNlLA0K
PiA+Pj4gdGhvdWdoIG1vc3Qgb2YgdGhhdCBoYWQgdG8gZG8gd2l0aCBxdWlya3MgaW4gdGhlIGhh
cmR3YXJlLg0KPiA+Pj4NCj4gPj4NCj4gPj4gT2ZjIDopIFNvIHRoZSBtYWluIGlkZWEgaXMgdG8g
aGF2ZSBhIGxpc3Qgb2YgZnJlZSBsYXRjaGVzIChpbmRleGVzKSBhbmQgYQ0KPiA+PiBsaXN0IG9m
IGxhdGNoZXMgdGhhdCBhcmUgYmVpbmcgdXNlZCAtIGJ5IHVzZWQgSSBtZWFuIHRoYXQgdGhlIHRp
bWVzdGFtcA0KPiA+PiBmb3IgdGhpcyBpbmRleCBpcyByZXF1ZXN0ZWQgYW5kIGJlaW5nIHByb2Nl
c3NlZC4NCj4gPj4NCj4gPj4gU28gYXQgdGhlIGJlZ2lubmluZywgdGhlIGRyaXZlciBuZWdvdGlh
dGVzIHRoZSBsaXN0IG9mIGxhdGNoZXMgd2l0aCB0aGUgQ1ANCj4gPj4gYW5kIGFkZHMgdGhlbSB0
byB0aGUgZnJlZSBsaXN0LiBXaGVuIHRoZSB0aW1lc3RhbXAgaXMgcmVxdWVzdGVkLCBkcml2ZXIN
Cj4gPj4gdGFrZXMgdGhlIGZpcnN0IGl0ZW0gb2YgdGhlIGZyZWUgbGF0Y2hlcyBhbmQgbW92ZXMg
aXQgdG8gJ2luLXVzZScgbGlzdC4NCj4gPj4gU2ltaWxhcmx5LCB3aGVuIHRoZSB0aW1lc3RhbXAg
aXMgcmVhZCwgZHJpdmVyIG1vdmVzIHRoZSBpbmRleCBmcm9tDQo+ID4+ICdpbiB1c2UnIHRvICdm
cmVlJy4NCj4gPj4NCj4gPg0KPiA+T2suIElzIHRoZXJlIGEgcmVhc29uIHRoZXNlIG5lZWQgc2Vw
YXJhdGUgbG9ja3MgaW5zdGVhZCBvZiBqdXN0IHNoYXJpbmcNCj4gPnRoZSBzYW1lIGxvY2s/DQo+
ID4NCj4gDQo+IFRoYXQncyBhIHZlcnkgZ29vZCBxdWVzdGlvbi4gSW4gZmFjdCBpbiBtb3N0IHBs
YWNlcyBJIG5lZWQgdG8gbW92ZSBpdGVtDQo+IGZyb20gdGhlIGZpcnN0IHRvIHRoZSBzZWNvbmQg
bGlzdCwgc28gSSBjb3VsZCB1c2UgdGhlIHNhbWUgc3BpbmxvY2sgZm9yDQo+IGJvdGguDQo+IA0K
PiBUaGUgb25seSBwbGFjZSB3aGVyZSBvbmx5IG9uZSBpcyB1c2VkIGlzIHNlbmRpbmcgdmlydGNo
bmwgbWVzc2FnZSB0byBnZXQNCj4gdGhlIFR4IHRpbWVzdGFtcCB2YWx1ZSwgd2hlcmUgSSBzZWFy
Y2ggZm9yIGl0ZW1zIG9uICdpbiB1c2UnIGxpc3QuDQo+IA0KPiBCdXQgaXQgZG9lcyBub3QgbWVh
biB0aGF0IHdlIGNhbm5vdCBzaGFyZSBsb2NrLCBiZWNhdXNlIHdoZW4gJ2luIHVzZScNCj4gaXMg
cHJvY2Vzc2VkLCBpdCBpcyBub3QgcG9zc2libGUgdG8gcmVxdWVzdCB0aGUgbmV3IGluZGV4IChi
ZWNhdXNlIHdlIG5lZWQNCj4gdGhlIGxvY2sgdG8gbW92ZSBmcm9tICdmcmVlJyB0byAnaW4gdXNl
JykuDQo+IA0KPiBTbyB0byBzdW1tYXJpemUsIGF0IHRoZSBlbmQgb2YgdGhlIGRheSBJIGRvbid0
IHNlZSBhbnkgc3BlY2lmaWMgcmVhc29uDQo+IG9mIGhhdmluZyB0d28uDQo+IA0KPiBMZXQgbWUg
a25vdyB3aGF0IGFyZSB5b3VyIHRob3VnaHRzLCBidXQgSSBndWVzcyBpdCBpcyBzYWZlIHRvIHJl
bW92ZSBvbmUNCj4gbG9jay4NCj4gDQo+IE1pbGVuYQ0KDQpJIHdvdWxkIGZlZWwgYmV0dGVyIGFi
b3V0IG9ubHkgb25lIGxvY2ssIGFzIGl0IHJlZHVjZXMgdGhlIG51bWJlciBvZiBsb2NrcyB3ZSBu
ZWVkIHRvIHRoaW5rIGFib3V0LCBhbmQgcmVtb3ZlcyB0aGUgcmlzayBvZiBjaXJjdWxhciBsb2Nr
aW5nIGlzc3Vlcy4NCg0KVGhhbmtzLA0KSmFrZQ0KDQo+IA0KPiA+PiBSZWdhcmRzLA0KPiA+PiBN
aWxlbmENCj4gPj4NCj4gPj4+IFRoYW5rcywNCj4gPj4+IEpha2UNCj4gPj4+DQo+ID4NCj4gPg0K
