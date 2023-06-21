Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F177390E9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 22:40:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5CB91401AE;
	Wed, 21 Jun 2023 20:40:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5CB91401AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687380037;
	bh=SA+psbiMI9/YFVw38UkU2eVqKHLSNinrnQ/jH+joXTI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P5j9rN6uZWGCmEgFhbi3z+75PlIkYuO4OP+4GEtMzGKKtpVqcjt0ZmDPUKDZxxE/k
	 +sv4wbFt7LE/miWPQaQhGDlsYmpqXUaKE/+FA9o4FxTcBQ2cNmcDbkS8GdCw0+VSAx
	 NxHZ6b0zdPeF7PpMst0fpjfLVP3Xkn2GnVc0GuYgNEG8Etcc4FNryEXJ9hZJ6Rc5Mf
	 4uqwdqizCn6ahJlmMASisYkxfaaKoIE6iH03YdxOSPt6zdajrVFXrFw4pVZiE8qjc9
	 fMtD3a9pgkd/+i69sSV8sjilpPPTl7EwiD4XWQ6lMXLcRlvyJ9gmHVshVjteqrRTlx
	 +/ezcV+X8/5jw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RHHmCHdGjHaf; Wed, 21 Jun 2023 20:40:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BBD74064A;
	Wed, 21 Jun 2023 20:40:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BBD74064A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F35D1BF46D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 20:40:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2661B83A4F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 20:40:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2661B83A4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3r3R8R44vXnA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 20:40:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 179C78214F
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 179C78214F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 20:40:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="345027021"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="345027021"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 13:39:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="664795046"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="664795046"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 21 Jun 2023 13:39:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 13:39:01 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 13:39:01 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 13:39:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 21 Jun 2023 13:38:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TOmN7qSYSqAWI5NhnpB8ZAPO3mwaG4gl2pFEDUF2KFfakeSdgT+3VYWdhJB8vHpoKiBgMOFdL2VtbF5WAPuppsDWdr36mcWoJoTNrGlUJFIVuwPXhiIA7eZQ8AcXjGvj+NNDvAPkdoDy40UlkwMSJiPEcKsf+x0aIp2MeeKmcKkSPrBg4tZ6OmFHi2RSQcVZVbqYYZcCTkhp5uO43xGLT81vwA1Mr/fMa+78pX2KcyNa81AkMSITS41zP14VEln20ZfLCpZ6tFNIV8qjB6FUmzaBpsaH/REIg5i02q4J52c4CLM3oL5ywKSSPCo2x0kAE78PlvaPUTXAkNSoD8+R7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+STLdUDi/2k2yfVjuV1CdDCgzql4KieukM+ka+WZaSY=;
 b=YWcrdnGjLhKgE4PyWOsrKhN2rJGNdNX53ghQFjGI8nIHGw7D65lTDOV9AelnZkc/Jf6pe8XDdx06JIVtya3Tm5xPGV5T5kBwzsbtViSfImywceqFfvlCsq+nkeRH/hXQST8hxxJDZE9CnJmk9UtGvx790/4X9Md8VgZzH3I4TRNZkr7W4TdMvcLgl+n3+rv2MmzRlkGT60iVc5/3rxNrcQ7eBT5DEwVgENl+An9v06GuArDilSXRLKdeh3L6waQg+n5y0YHlz6MAttEx8F4Gl14pFBY6QUFT0hunuwi48ussxrnKX72SZdCzps3FDftkF/G4Ohu01G+BCAbIV3h98w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DS0PR11MB7192.namprd11.prod.outlook.com (2603:10b6:8:13a::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.23; Wed, 21 Jun 2023 20:38:55 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6%3]) with mapi id 15.20.6521.020; Wed, 21 Jun 2023
 20:38:55 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Paolo Abeni <pabeni@redhat.com>, Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [RFC PATCH v8 03/10] dpll: core: Add DPLL framework base
 functions
Thread-Index: AQHZmsz08ds9noNj60q1X/LUfA+qnK+FWuwAgAFtfwCADwJFUA==
Date: Wed, 21 Jun 2023 20:38:54 +0000
Message-ID: <DM6PR11MB465704BE971D2E51DE78EFF29B5DA@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-4-arkadiusz.kubalewski@intel.com>
 <ZIWVuPMyKRPv6oyh@nanopsycho>
 <38dad5cb196741e56d018cea155982928694b2cc.camel@redhat.com>
In-Reply-To: <38dad5cb196741e56d018cea155982928694b2cc.camel@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|DS0PR11MB7192:EE_
x-ms-office365-filtering-correlation-id: 322338ab-ee92-44d3-61fa-08db729787fc
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mfY8AyCFtXJcj5ChmJrcRg8IM7hN5+dOPO0KD0tdNOnAgLl7d+VVU/YcQuKwSy4/MAb/a10ZG2EhMChKphP3msIVwSTv7plpcQwC7n++6agtN8d5M61QognFXbzQVa4x6RoGY/lPWHm3BlDzrO62SeK4T/Fvfs/BOL628iK446hkCC7nXNJ+KmoAwR5uuNZi1btI7YlRxyNsXFj3digwcIqXTp+tjp8PpleE/6767E5jFQQGQK8+JwfukWZtat9K+1ymrEXFvYkPW64xpS3SLuql7k4M0CqsJlwDs8BHi+L8mq7HmOsQjKq9eqPXQoYm9P9nmBkynfj8xrVW6nEiJcSCY4+iyoD75SreesjoorqadJOUgZ7A6pi19w0DuGU1t9WVqOIZpQypFMUQH/LuhCYMldbufXoYXwcLFIe9aCBrvTL4FSDA6Qfc/r35FxERx/Lm7yxco460BudFCdZaVIFTMEYotfx4UkbV79KKuz8jTg0ao/ylU+iQYCcrs+PY1RilMmYYjhKi0t9Gny0GlDj4TF9NRJUAuJ4n2B0+/llatsIUSgCvrjBQIAgKvk2g7zlFUzncmw/FJuchb7BHTBAU0XL8GCVIW8+ytFpbPZzUORUmPtObM6An6EieBFca
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(346002)(396003)(39860400002)(376002)(451199021)(7696005)(71200400001)(478600001)(83380400001)(122000001)(38100700002)(86362001)(186003)(38070700005)(55016003)(33656002)(82960400001)(6506007)(9686003)(26005)(8936002)(8676002)(41300700001)(7406005)(7416002)(52536014)(5660300002)(2906002)(110136005)(54906003)(316002)(66946007)(66476007)(66556008)(66446008)(64756008)(4326008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Rkk0QUg1bFJXREJxMjZ1V3R6ODNDaDFkcGgyb1N2VkgyVnRnMTFOYXpWZEYy?=
 =?utf-8?B?K2FnY3BrRUg4TWpSd0I2b2tnR216eE9WSE5Td09COWs3THZmVDZxc1hWTTlt?=
 =?utf-8?B?U2ROY2tDdnJyRzVQZi9QRjNzdXd6YVdiaVBXK1JJNkpVd0NQNUc2WjNvclFD?=
 =?utf-8?B?em16RHg5M1gyUnd4ZkgyN2swWk1Gd1huSlZaUHM0SzB3TGd5RngwK05NNzdP?=
 =?utf-8?B?MFkxTDJFakdJUmlvazh6NjZ2OW0zR2NqQnkzcGgrZ2NqWEhyV0VTNGxlTGhC?=
 =?utf-8?B?aTJuMTEyVkxPZ2pIazVpaGM0RGNiZXUwcXdqVGlzQ1hwKzlSUFc1bzEvWUpJ?=
 =?utf-8?B?U29xZTllUkVGSkJIL3lvZi95eTBLZ3Y3ckpBa2UzcVVtczJZcWd5Ym96dDZk?=
 =?utf-8?B?bWRRajB2K1RKelZ4VUM2ZDMzUk9lTnJmWDh2QjhHMndOY281cDZYWU1aUnMx?=
 =?utf-8?B?ZUEzbUJ4WUpCcDgrMy9BOXY3MUVUTUVUQ1VjZEpwT0ZmV05VWXBBN1ZoOVR5?=
 =?utf-8?B?U0dLc29Ndy9RZ3lGUlJJVEdQNlhpeS9uNW9XaDI0cjdScUZhUnZVUUljNVJW?=
 =?utf-8?B?SFA1WDN2TndtYjlkQ0Fwc0RNWkFDNmJ2dGxvTm1UM3FUSDJPWVB5bU9tYWx5?=
 =?utf-8?B?SE5SUGRUdkc0V3RzSmdwL1E2WjhvcVc2Mm9vMzY0OXdwRDZTMHZGYnN5L29I?=
 =?utf-8?B?elFrOHpmUm5MdnJ5YVRUbThkb1NTZVRPQUtteXhNK3lyTFk4WWJBdzFxdTAz?=
 =?utf-8?B?NEdEdUYwZWxuM0QxY0p5eUpxVDI3R2Evejgzd3B6SUNDRTFMeWJ4OWYyUm9S?=
 =?utf-8?B?Tm1GaFRlRXpqenc5OW9kNXhBWCtWRmEzUWlsbjUvRXUwbnd3aC9wZzNaR01S?=
 =?utf-8?B?MGdlaWxBYTc4U2dJRGtKb2VyZ3dJS01nenVaUDJkRU9WVUpFY1J6M0dNbU16?=
 =?utf-8?B?dWNXU3o4cEd6NDRlYm85Q2FWbk5hODlJQ3dQdGpFSXVId21haDVvM3hpYjIv?=
 =?utf-8?B?aEtEdkJTdTUwQXBBV3Btb09vQWxRTWFlN0czemZNSzR2YU8vcVNOSnBNTzEz?=
 =?utf-8?B?VlkxcEJDcXhQQlBOM2ZqMTA5TE9Xa0lYbjV0RDNpWnhvblVmbmFIOC9nbWpx?=
 =?utf-8?B?T254S00wN1d0RjRYRjE0Rm56VXVPTENxR2RYYWpZL0xuYmpkaWpqS0dCNEJM?=
 =?utf-8?B?TitFL0ZmWFpTUGZIQkNMRHJrTy9GempHV3N1UTlXSFJ2VmtaYnRxYWNNWE5h?=
 =?utf-8?B?NVlWQmVYTm9wYjZ6TlJRR0VOcFNIOEZzVTZuWkVCQkNEWHhacVZXdDlFeDhh?=
 =?utf-8?B?NVR1SzVVU25vN2lOa1pCK0MzYy9aREpZM0IvdmlHQllSUjJPeXVnbmhaTks1?=
 =?utf-8?B?V3pteWJJZlNEVDMxdjA0djErY2huNTA0dnFkc1dDcEtzU2M5TDdZUi9PRkg4?=
 =?utf-8?B?dWNUQW4xaW1xcndUdW14Nm9VdUFmNGF2cFlYQnF3N3c1RVRJWDFWZHpjeEp2?=
 =?utf-8?B?ZlJqOUR5K05SRVprZGpxdlhFQkExZm10ZzFJcjgxdUovc0NCOG4rT0RKMTdX?=
 =?utf-8?B?clQ5dFkyU1E2cEVRRnR1d1c0Tjdxbmg5aldobFVFckdjblhnejFET0FFTCtr?=
 =?utf-8?B?UHgrSVF4RnpBaTJoS1k3LzhMbUdRUFV3V09LM0xXemQ5cEZLQnFXODNGd0Q4?=
 =?utf-8?B?N0IwVGlONkUvemozbjJWVGhibFFZYjJIT3dsNWVjTWVIQi9oS3pQcURpMFI4?=
 =?utf-8?B?Sml5THAyL2FzZnhWMDYreXNEUEZpNTNRRlBYMGhPUjhBeHBaazIzQzZoa004?=
 =?utf-8?B?N3NWMWVnbU1mS0UyN0U0VUxYZ3owbEREcFNuY2l2dzBrQzI3dVFWK1R2OE53?=
 =?utf-8?B?YVFZUDk3ZTYrTVVIUWVDUXQrR2l0Z1NTZENKVGxQcXFHS1VZWmVxNHZKQ2l5?=
 =?utf-8?B?NHZvYTZnYjRpVktFWVI2aE5YTHFMN3RUc2RzSHNuWE1XWlZQZ2dpNDhucXFS?=
 =?utf-8?B?dU5iM2dEb21NeEJzVXZ5bE9qRjQyQ05mNWZ0VVNTZ1RJS1g4dlg2bHJSR0N3?=
 =?utf-8?B?Mmh6RWFjTkxubGVWT0pFNGduS2dmUUFka2xGVFJKRjd6d0s4VkY0T1ZYYlFi?=
 =?utf-8?B?RVArUzl6OFBJdW15eGkrOUNhUmhjY1A2cFJ2VTFSVEE0VU1HTnA1bGhWL0Jp?=
 =?utf-8?B?UUE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 322338ab-ee92-44d3-61fa-08db729787fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 20:38:54.9700 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DFImGmEWLI06IQ429jHwdDf3w17LNLXZByLx2XXELsAk3lP+nGHw3BES+yl0DQP8SwsyQx7F63bHkn/awmGn7EhPkGlubF/fC/vo1gDEZ1I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7192
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687380030; x=1718916030;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+STLdUDi/2k2yfVjuV1CdDCgzql4KieukM+ka+WZaSY=;
 b=QYdSb9rPxlOGVkUjYPp4tkRuPGURrwkqbnPipVHemoaRamsVpeJUBBli
 gXCm4cXgM2oYN8Ya9r8ftKdUXQAe1q/EA6JJbsLJbHBx2KVJDoUy69kYQ
 3f+1M9y9gHdMg94Ncs3veghseQlDNzpRVuStg8yrChOmp70paiwMm09WH
 9pExapVJBZQIEOxDkZTO9xZlAeR1k8t9/+GTwdDtIFQM+FEdPYZbOoEJV
 qDCbehplpH4ogNl9NEqs0UZH+tTuRBkocwip6UB5IvVnNY89V+5SKhV/z
 3edx7bKyVh7CzmM10oYPfDIkCBLhry/R9LVkmRh+xIfM0SSyNsOJNHd7P
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QYdSb9rP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 03/10] dpll: core: Add DPLL
 framework base functions
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Paolo Abeni <pabeni@redhat.com>
>Sent: Monday, June 12, 2023 9:25 AM
>
>On Sun, 2023-06-11 at 11:36 +0200, Jiri Pirko wrote:
>> Fri, Jun 09, 2023 at 02:18:46PM CEST, arkadiusz.kubalewski@intel.com
>wrote:
>> > From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>
>> [...]
>>
>> > +int dpll_device_register(struct dpll_device *dpll, enum dpll_type
>type,
>> > +			 const struct dpll_device_ops *ops, void *priv)
>> > +{
>> > +	struct dpll_device_registration *reg;
>> > +	bool first_registration = false;
>> > +
>> > +	if (WARN_ON(!ops))
>> > +		return -EINVAL;
>> > +	if (WARN_ON(type < DPLL_TYPE_PPS || type > DPLL_TYPE_MAX))
>> > +		return -EINVAL;
>> > +
>> > +	mutex_lock(&dpll_lock);
>> > +	reg = dpll_device_registration_find(dpll, ops, priv);
>> > +	if (reg) {
>> > +		mutex_unlock(&dpll_lock);
>> > +		return -EEXIST;
>> > +	}
>> > +
>> > +	reg = kzalloc(sizeof(*reg), GFP_KERNEL);
>> > +	if (!reg) {
>> > +		mutex_unlock(&dpll_lock);
>> > +		return -EEXIST;
>> > +	}
>> > +	reg->ops = ops;
>> > +	reg->priv = priv;
>> > +	dpll->type = type;
>> > +	first_registration = list_empty(&dpll->registration_list);
>> > +	list_add_tail(&reg->list, &dpll->registration_list);
>> > +	if (!first_registration) {
>> > +		mutex_unlock(&dpll_lock);
>> > +		return 0;
>> > +	}
>> > +
>> > +	xa_set_mark(&dpll_device_xa, dpll->id, DPLL_REGISTERED);
>> > +	mutex_unlock(&dpll_lock);
>> > +	dpll_device_create_ntf(dpll);
>>
>> This function is introduced in the next patch. Breaks bissection. Make
>> sure you can compile the code after every patch applied.
>
>WRT, I think the easiest way to solve the above is adding the function
>call in the next patch.
>
>Cheers,
>
>Paolo

Sure, will try to fix as suggested, but this will be much easier to do on
final version of patches before sending.

Thank you,
Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
