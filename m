Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 475E6652F35
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 11:15:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D68E140B51;
	Wed, 21 Dec 2022 10:15:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D68E140B51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671617743;
	bh=bvgypnVqp3coQAmSZSQp7bV6enMhMEtTdVl0yg+ajd0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uutQCqanz3BtRRmbrdwCuF7v6A3OSUcIAkSFy9t05j8SLOr4FqwAtFrmY/wucbg/T
	 oY+pKUhQuVSD2+aHKxbwg6BQZ0dWstN9wzO0Ro8kTUROWyGyXg0NN3UlN8QPlDlOxl
	 dAjvA0ryjjOeoXgmY2sPARBHTW4TOsNo1M0PKRTcBKw694dG4VKcZz4KgM1Q37hMZR
	 1JpbjzFGAyDl1up9Gf1TiRozXz1RGUf7TA2ZTc4OCoM86BQfNcEq0rYVqa1dHZzd0H
	 JH4VDp30TYRJBvotq6yJrVjkBDHL4mN4CZ7guBM9L9L4LP4sS9Nf2IpThocwCBtBV2
	 NUkd7bpWCvqWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0gC4UaAA9cAv; Wed, 21 Dec 2022 10:15:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8580440187;
	Wed, 21 Dec 2022 10:15:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8580440187
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 437F11BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 10:15:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 28AED813EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 10:15:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28AED813EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6APZWMLGHWoi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 10:15:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DFFF813AE
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5DFFF813AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 10:15:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="406077436"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="406077436"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 02:15:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="825600415"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="825600415"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 21 Dec 2022 02:15:32 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 21 Dec 2022 02:15:31 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 21 Dec 2022 02:15:31 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 21 Dec 2022 02:15:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P1zBCSGl0ibRTuqmhaD1UOqTagJvHfsxdYJ5McJh+IcWF0bzDfW4gYIJEOT7CdSHtWWGR+dPs1wy14ffvdNTylyzZJW51lJqw82KLIFAUjASJ2ZMlexxFDmO2Gwx0C23SUagrrBb6tN3tV1ehdRbmCdk5VDa1D2nd+y37HY41XYSzfova9Lwxc1xqisBOyvHVedNoawOA1EHqCDB1/pYkzt+WULHUaKMaKYM53bmmQ4E4u/fBnQzZD5umB2F3IZYfw5/rsHjThnd54Uou0CyfRu+mfGM8OSXrUpDUPTh0qPZIxZKVsBEpqhIzU2RRuMtttsT8OwU8+tfQDT8N0SVPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=POT8J6d3/zHDJh05EfUbDGi/8U0bR1KQF4iJrLGSK6Y=;
 b=lZ8yJTGgShmoBCUkE5pmjU/hqp9uphDa8WVnpGEK4X3d92qMVgiKGNstvOWCuWj5j0SbH7ix2L5/SsHD3ABSNmuHc+NJhUPoQKI96pbndO44MsRjszoOSXj1ORE5IXgDBkJ81F8vo9vMkYr3LeGKc0wO89/27kIt+NTNdZpEXqstsCuNdLWDAa1j2yI9pP3eIE9FW5GY6DHCt7TNhfYDM9bWK3u2QrVCg40B+hpA9opbDxO68FpntHLIHGGJrOo/IQJ+/EyUvr8O+gHTi5k+LV3rqBKCimj0MT2hZVCp+TZJcIv3k5RZmVntZFFvmDwcDtPqqMzzYpE2z7hCZ+aYig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5288.namprd11.prod.outlook.com (2603:10b6:208:316::22)
 by DS7PR11MB6125.namprd11.prod.outlook.com (2603:10b6:8:9f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Wed, 21 Dec
 2022 10:15:28 +0000
Received: from BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::d1ba:9469:d15b:991b]) by BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::d1ba:9469:d15b:991b%9]) with mapi id 15.20.5924.016; Wed, 21 Dec 2022
 10:15:28 +0000
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] e1000e: Fix TSO not being
 disabled on i219-LM card
Thread-Index: AQHZFFiJeSq1rWiK10SBhGe11nNdyK52m2yAgAGF9jA=
Date: Wed, 21 Dec 2022 10:15:28 +0000
Message-ID: <BL1PR11MB528856CDD40F4175A99473D587EB9@BL1PR11MB5288.namprd11.prod.outlook.com>
References: <20221220094752.1010695-1-mateusz.palczewski@intel.com>
 <6a52b4d5-ff5a-da18-b32d-3cd02bfa5a93@molgen.mpg.de>
In-Reply-To: <6a52b4d5-ff5a-da18-b32d-3cd02bfa5a93@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5288:EE_|DS7PR11MB6125:EE_
x-ms-office365-filtering-correlation-id: 40ef2ec6-58f6-4942-178f-08dae33c489c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hVOosOaLKaLcwjc/vKDPnT9Mm3PyIu/01zhCkBaX73aE8AIHMEMzW3gxkt4EaCRWDixNtq1iU+QComIAShW3XxjXN9qwPpWzTSuUXVXEQEfgwVolNF5A/iMtt8QGLdQmrRflOi2iQtuDXPlNpD1Endb7awbNK28ssVtuDALTPMbqwlool94hXFXiEFMqs2fpSQFHAj/zJqIWPfRgLzlIoL+opIKcjSeyUZtx7Y9px0+dlwyasa8NrmE6tv4Ha5nAJg8ZAeNmVjhuPMvZFepXZ+1gY6znBMrk4kA8lrSzmixcqPd/QvtjNdCrpMMmA7hwPpCZoI2guKo2DpciWkUUR5xQPg7zaUWRLwy2L/OxoQ6RTcQfqXCh/ulKtI22+z/tSSXnvkL1RcIkCAO0bZRbvPM5U5fKPSgr0m2hdWMZ3QbVhltF+QunZU/cqt8l0eiPq8lr5IFHmYxuyA0K8fssQdMw652/oYAhkR63VzSgx322+lGc/T9LKOnztW2P94aU99am4Xy5dxWkL2TmXtRRZ8QqTP8f77X968O1REBHmSLrbEaMZ7obtmCwznnJpWGSALVaZfbnaj0M24syKpv9M5XMkIEhv+qVpz3QVMUDL2cZdbFZLzm37Ucdae0sZQXGHEa99iHISQH3NVOBP5BY5ySyNjvknGib2nVAHZvRRzcFionhVHlI5VlrRQuNEQVR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5288.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(366004)(346002)(39860400002)(136003)(451199015)(8936002)(33656002)(5660300002)(66476007)(52536014)(83380400001)(186003)(41300700001)(55016003)(26005)(2906002)(9686003)(66556008)(478600001)(316002)(38070700005)(6506007)(7696005)(6916009)(82960400001)(86362001)(122000001)(76116006)(64756008)(66946007)(71200400001)(66446008)(38100700002)(4326008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZFJ4blNHcjI2OGRhOVpWMzh3UWgxTzFoTlEvUUdkL0xSZXZtdXpldXQrVjJB?=
 =?utf-8?B?bWdUbXFqWUZRRXpTUlVrVGIvU3FEWncvclhDczUyWGJ6K0VKWWYrbVNHa0FM?=
 =?utf-8?B?bExiajgyRTJGcmZ2a1JDZ2J5Q0FLWDVnY0Fobmw1aThINVNTNnQwUnljbEN6?=
 =?utf-8?B?SWt5MWQzVjhpZTVIQmZ0cDhsa0o4Wmt0M1B2R2pPS2w1SWtTY2lYcm8zbFpU?=
 =?utf-8?B?KzMrbkVuUUM1b3JNd2kwbEZlTERkeTVvTVlZazIrR0NyUkF4SkJhUS9CNG1O?=
 =?utf-8?B?SHRMR1RrM05rbGVyWmpHSzNxdFNDd1NDVkQ4R21ZSTYvMkN3cnpEUCtrSzV3?=
 =?utf-8?B?K1F6V2xuOExzRVZEclNxOGU3UnFTejhwVU5ISkdHa2VnTGFiT2JCZWIrZytK?=
 =?utf-8?B?d1VDZXF0Vm1ta3pmZGxxazgxa2ZXWDRJdlE0aEFkNkVBNmhlUHllYUtUMk9E?=
 =?utf-8?B?ekExdnc4NmxXcVRsVWpPcmI0Z2NRT2RCRGFzWE9sLzdDRjhjcEpnQ0ZCQlRa?=
 =?utf-8?B?SlpDL1k3bWtxMWJiVFZOWHovLytnMDVwTEkxbWVaNUFiMFVPUDcwdzZxK2RX?=
 =?utf-8?B?eDZPNUxPSExZczE2VFJIOXZJa0xqc1ZXenNBcnVuMVlLNUVzUDRWVCs0UGpX?=
 =?utf-8?B?MU1XUys4RnV6MTE1T1JxUzdWclpQbUFwaktHdUVxeCt0THhDeFBXeFgxbURH?=
 =?utf-8?B?emo2bkdTeDJWRDdnRFp6eTJOdFdwdjhyRzNyWGJqMTBteW8xRGJkK3B0aWEv?=
 =?utf-8?B?WDg4bUFEaENHcHlkamlzNjRNb2xMM1VwbkV0b0Q5ZGsxYUdHT1dpT05FS2Fp?=
 =?utf-8?B?QndKTXRKbk9oelpJTkI0NkNwZElTWTY4amZuaWJHM1IydktwcXhuZ1d1a2xQ?=
 =?utf-8?B?MEM5TDNLVjlpNnhoQ0V4SFVhK0lKTlBOaW1OamF6S3RZdnNYaDl3Y0RSbmFZ?=
 =?utf-8?B?NS9XeUtyU09nNWphT00vUFBwYUJqSU1vMmh1L2NUZU1DQmZTUG5PYWxMcHZr?=
 =?utf-8?B?T0VSRmVzbXZ1dW5yd3ZmakVQbkpVb05xUEpxenBhT2ZUa0lMOVJVaXkydkVC?=
 =?utf-8?B?S0FLS0RnT2ZCTVZ5ODkvOGtwZXBKTWNnZmEzWGJUenhUNHBTcWIyZ0R2Qklj?=
 =?utf-8?B?YzAyaEM1YkU4KzFZaWsxamxpcE5uZ0dRU0FINDNhOWUyblp1eTJHN3pvYndI?=
 =?utf-8?B?Sm5pZnZpYzBNNGc4VXpYSXFoTmc4V1dhTVJBbTA5WFlRMXhWbHFoTGlSeWdN?=
 =?utf-8?B?QjJtVlJXS1VucUtmeE5XbVRCU2MwRnNLM0NHMFhZd3ZtbUE0QnNOYjVCcDRX?=
 =?utf-8?B?UlRvOFNHUmpQT3dRYVZ0eGV3bnhBSG9sQng4TjlYL2wzYTgrc1pIMnZBS2dV?=
 =?utf-8?B?YWQvSEZUU1psakJrK0hSMUdPUjlVVkVmeXpyb09KeU1KRFdKU3Z2RXM4UEV0?=
 =?utf-8?B?NVJYRk5RMVFieWJzc0NPbmhZbCtqcktLS1crVTRDTnNXME1rZTR6OGpwUWd5?=
 =?utf-8?B?Sno3M3Z3SlJPRFJkZnhOZU41T1dBSnFONFJxRlNKL2dRL2ZWTHU0c1RVT2FL?=
 =?utf-8?B?TDlTVFBIUmhzRktjaUF3Mll6MElOL09neGw4Qm1rZVpOdU9jNmxUQVo3THhT?=
 =?utf-8?B?cDNjQlVLdDlnalNvTi9CUFk3SlNwMnJMK2J0Q1hscWkzR2UrV1hRT3RUTGNz?=
 =?utf-8?B?WmROSTN3QU5nRTE0N2ExNzU3aS81cXVNUmJ3WlIrcVJqczRUN01vNkZjbUNl?=
 =?utf-8?B?cnNVUUxFM1FHMzZkZFRPZ0RKa2paZmRtditDbGpDY1hQbndOMjhKU2dvN2FM?=
 =?utf-8?B?WDV5UzZPWnRpWGdrWk04TTJZcTlRWUY1aG90UUV3RFdUS0YyVmZ1SmljeGF4?=
 =?utf-8?B?QnpQbWFsQVpYd1VXZkRqbVg0and2NTZRR0M2STlZU0pHNWl6QnpJQ1lXYmZZ?=
 =?utf-8?B?dUQ4RnY5K2I5ZmlDTWk5VGs4U1BDV2gyMENrNHdpb25FZms2NW5ta3ZkTmpj?=
 =?utf-8?B?YVRxSkVzZ0h2RGo4TmhXYVR0aDBSY1Q0NHFQbUxSYjFBRVB4aEU3U0dOSUg4?=
 =?utf-8?B?WDdKZi9CUHRUMXBvbklDN1JrQ3dGQXkvN3p6anBqRkFBUEp3MkpSdVc5eml1?=
 =?utf-8?B?WmhUVzlqNS9WUW80TmZjc1dUdzZGaDlKa3QyTGNDZE9PTlZFUWh2L3gzdzU5?=
 =?utf-8?B?VXc9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5288.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40ef2ec6-58f6-4942-178f-08dae33c489c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2022 10:15:28.1453 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0CHz+Jqoze9eeUspQxyaoRK/py7N003Qa3GyOc+xIBFco0KeRltXOkAy8TXJUeXICjDbdG/Ob0r1QnSPghmKYnZXEQoC6Hp7kPCcNB4jZv0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6125
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671617735; x=1703153735;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=POT8J6d3/zHDJh05EfUbDGi/8U0bR1KQF4iJrLGSK6Y=;
 b=mJ0iQDHDEtCUXR3kyQcrlu7QMZoyT9JeV3LUQdbyjS/fYsI9ar5XS9xK
 w8KGq76gANeBIJg6HEKsgAYlGiqN+ow2l0l++JoV2Q+DTd8WwNLD/0HCH
 QGrtZPzRuyvI5I3YVrZ3xLraNMAUhUD/4b7eJKi0g9W0NBlI8W+NFX2jv
 Dw2jRdXdtbDERAwqUHEoQb6KI9nJTV1o0VlnbFXnDhE6eVJSQWTIITiR/
 c+d8pTEVttf1wR3DLBL2HxCIyS7I/IpRqJaCkCAvYkLEUaZht4NvFfHzV
 kIv2mK+7DvH41TF2galT7ouaP2M+YJoH+eVVJ00rX71sjIPfVCKJt3g6J
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mJ0iQDHD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] e1000e: Fix TSO not being
 disabled on i219-LM card
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGksDQpUaGFua3MgZm9yIHlvdXIgZmVlZGJhY2ssIEkgd2lsbCBhZGRyZXNzIGFsbCBvZiB0aGUg
Y29tbWl0IG1lc3NhZ2UgYW5kIGNvZGUNCmlzc3VlcyBpbiBuZXh0IHZlcnNpb24gb2YgdGhlIHBh
dGNoLiBCZWxvdyBJIGhhdmUgYWRkZWQgbXkgdGVzdGluZyByZXN1bHRzDQp3aXRoIGFuZCB3aXRo
b3V0IHRoZSBwYXRjaCBhcHBsaWVkLiANCj5EZWFyIE1hdGV1c3osDQo+DQo+DQo+VGhhbmsgeW91
IGZvciB0aGUgcGF0Y2guIEluIHRoZSBjb21taXQgbWVzc2FnZSBzdW1tYXJ5LCB5b3UgY291bGQg
d3JpdGU6DQo+DQo+PiBEaXNhYmxlIFRTTyBvbiBpMjE5LUxNIGNhcmQgdG8gaW5jcmVhc2Ugc3Bl
ZWQNCj4NCj4NCj5BbSAyMC4xMi4yMiB1bSAxMDo0NyBzY2hyaWViIE1hdGV1c3ogUGFsY3pld3Nr
aToNCj4+IFdoaWxlIHVzaW5nIGkyMTktTE0gY2FyZCBjdXJyZW50bHkgaXQgd2FzIG9ubHkgcG9z
c2libGUgdG8gYWNoaWV2ZQ0KPg0KPlBsZWFzZSBtZW50aW9uLCB0aGF0IGl04oCZcyBhIHJlZ3Jl
c3Npb24gaW4gTGludXggNS44LXJjMS4NCj4NCj4+IGFib3V0IDYwJSBvZiBtYXhpbXVtIHNwZWVk
LiBUaGlzIHdhcyBjYXVzZWQgYnkgVFNPIG5vdCBiZWluZyBkaXNhYmxlZCANCj4+IGV2ZW4gdGhv
dWdodCBpdCBzaG91bGQgYmUgb24gdGhpcyBzcGVjaWZpYyBjYXJkLiBGaXggdGhhdCBieSBtb3Zp
bmcgDQo+PiB0aGUNCj4NCj5zL3Rob3VnaHQvdGhvdWdoLw0KPg0KPlBsZWFzZSByZWZlcmVuY2Ug
dGhlIGRhdGFzaGVldCBzZWN0aW9uLCB3aGVyZSB0aGF0IGlzIGRvY3VtZW50ZWQuDQo+DQo+PiBw
YXJ0IG9mIHRoZSBjb2RlIHJlc3BvbnNpYmxlIGZvciB0aGlzIG91dHNpZGUgb2YgYWRhcHRlci0+
ZmxhZ3MgJiANCj4+IEZMQUdfVFNPX0ZPUkNFIGNoZWNrLg0KPg0KPkhvdyBkaWQgeW91IHRlc3Qg
dGhlIHNwZWVkIGV4YWN0bHk/DQo+DQo+T24gYSBEZWxsIFByZWNpc2lvbiBUb3dlciAzNjIwLzBN
V1lQVCwgQklPUyAyLjIyLjAgMDcvMTMvMjAyMiwgd2l0aA0KPg0KPiAgICAgJCBsc3BjaSAtbm4g
LXMgMDA6MWYuNg0KPiAgICAgMDA6MWYuNiBFdGhlcm5ldCBjb250cm9sbGVyIFswMjAwXTogSW50
ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQgQ29ubmVjdGlvbiAoMikgSTIxOS1MTSBbODA4NjoxNWI3
XSAocmV2IDMxKQ0KPg0KPkkgZ2V0IG1vcmUgdGhhbiA2MCAlIGJhbmR3aWR0aCB3aXRoIGlwZXJm
My4NCj4NCg0KRm9yIG15IHNldHVwIGl0IGlzOg0KMDA6MWYuNiBFdGhlcm5ldCBjb250cm9sbGVy
OiBJbnRlbCBDb3Jwb3JhdGlvbiBFdGhlcm5ldCBDb25uZWN0aW9uICgzKSBJMjE5LUxNIChyZXYg
MDkpDQp3aXRoIEludGVsIFNreWxha2UgcGxhdGZvcm0uDQoNCj5gYGANCj4kIGlwZXJmMyAtYyBp
cGVyZjMubW9sZ2VuLm1wZy5kZQ0KPkNvbm5lY3RpbmcgdG8gaG9zdCBpcGVyZjMubW9sZ2VuLm1w
Zy5kZSwgcG9ydCA1MjAxIFsgIDVdIGxvY2FsIDE0MS4xNC4xOC4xMTkgcG9ydCA1NjA5MiBjb25u
ZWN0ZWQgdG8gMTQxLjE0LjI3LjEwOSBwb3J0IDUyMDENCj5bIElEXSBJbnRlcnZhbCAgICAgICAg
ICAgVHJhbnNmZXIgICAgIEJpdHJhdGUgICAgICAgICBSZXRyICBDd25kDQo+WyAgNV0gICAwLjAw
LTEuMDAgICBzZWMgICAxMDIgTUJ5dGVzICAgODU5IE1iaXRzL3NlYyAgICAwICAgMS4wNyBNQnl0
ZXMgDQo+DQo+WyAgNV0gICAxLjAwLTIuMDAgICBzZWMgIDk4LjcgTUJ5dGVzICAgODI4IE1iaXRz
L3NlYyAgICAwICAgMS4xMyBNQnl0ZXMgDQo+DQo+WyAgNV0gICAyLjAwLTMuMDAgICBzZWMgIDk5
LjggTUJ5dGVzICAgODM3IE1iaXRzL3NlYyAgICAwICAgMS4xMyBNQnl0ZXMgDQo+DQo+WyAgNV0g
ICAzLjAwLTQuMDAgICBzZWMgIDk5LjkgTUJ5dGVzICAgODM4IE1iaXRzL3NlYyAgICAwICAgMS4x
MyBNQnl0ZXMgDQo+DQo+WyAgNV0gICA0LjAwLTUuMDAgICBzZWMgIDk4LjcgTUJ5dGVzICAgODI4
IE1iaXRzL3NlYyAgICAwICAgMS4xMyBNQnl0ZXMgDQo+DQo+WyAgNV0gICA1LjAwLTYuMDAgICBz
ZWMgIDk5LjcgTUJ5dGVzICAgODM2IE1iaXRzL3NlYyAgICAwICAgMS4xMyBNQnl0ZXMgDQo+DQo+
WyAgNV0gICA2LjAwLTcuMDAgICBzZWMgIDk5LjkgTUJ5dGVzICAgODM4IE1iaXRzL3NlYyAgICAw
ICAgMS4xMyBNQnl0ZXMgDQo+DQo+WyAgNV0gICA3LjAwLTguMDAgICBzZWMgIDk4LjUgTUJ5dGVz
ICAgODI2IE1iaXRzL3NlYyAgICAwICAgMS4xMyBNQnl0ZXMgDQo+DQo+WyAgNV0gICA4LjAwLTku
MDAgICBzZWMgICAxMDAgTUJ5dGVzICAgODM4IE1iaXRzL3NlYyAgICAwICAgMS4xMyBNQnl0ZXMg
DQo+DQo+WyAgNV0gICA5LjAwLTEwLjAwICBzZWMgIDk4LjggTUJ5dGVzICAgODI5IE1iaXRzL3Nl
YyAgICAwICAgMS4xMyBNQnl0ZXMgDQo+DQo+LSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0g
LSAtIC0gLSAtIC0gLSAtIC0gLQ0KPlsgSURdIEludGVydmFsICAgICAgICAgICBUcmFuc2ZlciAg
ICAgQml0cmF0ZSAgICAgICAgIFJldHINCj5bICA1XSAgIDAuMDAtMTAuMDAgIHNlYyAgIDk5NiBN
Qnl0ZXMgICA4MzYgTWJpdHMvc2VjICAgIDAgICAgICAgICAgICAgc2VuZGVyDQo+WyAgNV0gICAw
LjAwLTEwLjAwICBzZWMgICA5OTQgTUJ5dGVzICAgODMzIE1iaXRzL3NlYyANCj5yZWNlaXZlcg0K
Pg0KPmlwZXJmIERvbmUuDQo+YGBgDQoNCkkgaGF2ZSB1c2VkIGlwZXJmMyB0byB0ZXN0IGNvbm5l
Y3Rpb24gYmV0d2VlbiB0d28gY2FyZHMgaW4gdGhlIHNhbWUgc2VydmVyDQp3aXRoIHVzYWdlIG9m
IG5hbWVzcGFjZXMsIGhlcmUgYXJlIG15IHJlc3VsdHM6DQoxLiBXaXRob3V0IHRoZSBwYXRjaDoN
CmlwIG5ldG5zIGV4ZWMgdGVzdCBpcGVyZjMgLWMgMTAuMS4xLjINCkNvbm5lY3RpbmcgdG8gaG9z
dCAxMC4xLjEuMiwgcG9ydCA1MjAxDQpbICA1XSBsb2NhbCAxMC4xLjEuMSBwb3J0IDYwNjkwIGNv
bm5lY3RlZCB0byAxMC4xLjEuMiBwb3J0IDUyMDENClsgSURdIEludGVydmFsICAgICAgICAgICBU
cmFuc2ZlciAgICAgQml0cmF0ZSAgICAgICAgIFJldHIgIEN3bmQNClsgIDVdICAgMC4wMC0xLjAw
ICAgc2VjICA4MS44IE1CeXRlcyAgIDY4NiBNYml0cy9zZWMgICAgMCAgICAyODYgS0J5dGVzDQpb
ICA1XSAgIDEuMDAtMi4wMCAgIHNlYyAgODAuMyBNQnl0ZXMgICA2NzQgTWJpdHMvc2VjICAgIDAg
ICAgMjg2IEtCeXRlcw0KWyAgNV0gICAyLjAwLTMuMDAgICBzZWMgIDgwLjMgTUJ5dGVzICAgNjc0
IE1iaXRzL3NlYyAgICAwICAgIDI4NiBLQnl0ZXMNClsgIDVdICAgMy4wMC00LjAwICAgc2VjICA4
MC42IE1CeXRlcyAgIDY3NiBNYml0cy9zZWMgICAgMCAgICAyODYgS0J5dGVzDQpbICA1XSAgIDQu
MDAtNS4wMCAgIHNlYyAgODAuNSBNQnl0ZXMgICA2NzUgTWJpdHMvc2VjICAgIDAgICAgMjg2IEtC
eXRlcw0KWyAgNV0gICA1LjAwLTYuMDAgICBzZWMgIDgwLjUgTUJ5dGVzICAgNjc2IE1iaXRzL3Nl
YyAgICAwICAgIDI4NiBLQnl0ZXMNClsgIDVdICAgNi4wMC03LjAwICAgc2VjICA4MC43IE1CeXRl
cyAgIDY3NyBNYml0cy9zZWMgICAgMCAgICAyODYgS0J5dGVzDQpbICA1XSAgIDcuMDAtOC4wMCAg
IHNlYyAgODEuMCBNQnl0ZXMgICA2ODAgTWJpdHMvc2VjICAgIDAgICAgMjg2IEtCeXRlcw0KWyAg
NV0gICA4LjAwLTkuMDAgICBzZWMgIDgwLjcgTUJ5dGVzICAgNjc3IE1iaXRzL3NlYyAgICAwICAg
IDI4NiBLQnl0ZXMNClsgIDVdICAgOS4wMC0xMC4wMCAgc2VjICA4MC43IE1CeXRlcyAgIDY3NyBN
Yml0cy9zZWMgICAgMCAgICAyODYgS0J5dGVzDQotIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0g
LSAtIC0gLSAtIC0gLSAtIC0gLSAtDQpbIElEXSBJbnRlcnZhbCAgICAgICAgICAgVHJhbnNmZXIg
ICAgIEJpdHJhdGUgICAgICAgICBSZXRyDQpbICA1XSAgIDAuMDAtMTAuMDAgIHNlYyAgIDgwNyBN
Qnl0ZXMgICA2NzcgTWJpdHMvc2VjICAgIDAgICAgICAgICAgICAgc2VuZGVyDQpbICA1XSAgIDAu
MDAtMTAuMDAgIHNlYyAgIDgwNiBNQnl0ZXMgICA2NzYgTWJpdHMvc2VjICAgICAgICAgICAgICAg
ICAgcmVjZWl2ZXINCg0KDQoyLiBXaXRoIHRoZSBwYXRjaCBhcHBsaWVkOg0KaXAgbmV0bnMgZXhl
YyB0ZXN0IGlwZXJmMyAtYyAxMC4xLjEuMg0KQ29ubmVjdGluZyB0byBob3N0IDEwLjEuMS4yLCBw
b3J0IDUyMDENClsgIDVdIGxvY2FsIDEwLjEuMS4xIHBvcnQgNjA2ODYgY29ubmVjdGVkIHRvIDEw
LjEuMS4yIHBvcnQgNTIwMQ0KWyBJRF0gSW50ZXJ2YWwgICAgICAgICAgIFRyYW5zZmVyICAgICBC
aXRyYXRlICAgICAgICAgUmV0ciAgQ3duZA0KWyAgNV0gICAwLjAwLTEuMDAgICBzZWMgICAxMTMg
TUJ5dGVzICAgOTQ3IE1iaXRzL3NlYyAgICAwICAgIDQxOSBLQnl0ZXMNClsgIDVdICAgMS4wMC0y
LjAwICAgc2VjICAgMTEyIE1CeXRlcyAgIDk0MSBNYml0cy9zZWMgICAgMCAgICA0MTkgS0J5dGVz
DQpbICA1XSAgIDIuMDAtMy4wMCAgIHNlYyAgIDExMSBNQnl0ZXMgICA5MjggTWJpdHMvc2VjICAg
IDAgICAgNDE5IEtCeXRlcw0KWyAgNV0gICAzLjAwLTQuMDAgICBzZWMgICAxMTIgTUJ5dGVzICAg
OTM2IE1iaXRzL3NlYyAgICAwICAgIDQxOSBLQnl0ZXMNClsgIDVdICAgNC4wMC01LjAwICAgc2Vj
ICAgMTExIE1CeXRlcyAgIDkzNSBNYml0cy9zZWMgICAgMCAgICA0MTkgS0J5dGVzDQpbICA1XSAg
IDUuMDAtNi4wMCAgIHNlYyAgIDExMSBNQnl0ZXMgICA5MzQgTWJpdHMvc2VjICAgIDAgICAgNDE5
IEtCeXRlcw0KWyAgNV0gICA2LjAwLTcuMDAgICBzZWMgICAxMTIgTUJ5dGVzICAgOTM2IE1iaXRz
L3NlYyAgICAwICAgIDQxOSBLQnl0ZXMNClsgIDVdICAgNy4wMC04LjAwICAgc2VjICAgMTExIE1C
eXRlcyAgIDkzNSBNYml0cy9zZWMgICAgMCAgICA0MTkgS0J5dGVzDQpbICA1XSAgIDguMDAtOS4w
MCAgIHNlYyAgIDExMSBNQnl0ZXMgICA5MzQgTWJpdHMvc2VjICAgIDAgICAgNDE5IEtCeXRlcw0K
WyAgNV0gICA5LjAwLTEwLjAwICBzZWMgICAxMTEgTUJ5dGVzICAgOTM1IE1iaXRzL3NlYyAgICAw
ICAgIDQxOSBLQnl0ZXMNCi0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAt
IC0gLSAtIC0NClsgSURdIEludGVydmFsICAgICAgICAgICBUcmFuc2ZlciAgICAgQml0cmF0ZSAg
ICAgICAgIFJldHINClsgIDVdICAgMC4wMC0xMC4wMCAgc2VjICAxLjA5IEdCeXRlcyAgIDkzNiBN
Yml0cy9zZWMgICAgMCAgICAgICAgICAgICBzZW5kZXINClsgIDVdICAgMC4wMC0xMC4wMCAgc2Vj
ICAxLjA5IEdCeXRlcyAgIDkzNCBNYml0cy9zZWMgICAgICAgICAgICAgICAgICByZWNlaXZlcg0K
DQo+DQo+PiBGaXhlczogZjI5ODAxMDMwYWM2ICgiZTEwMDBlOiBEaXNhYmxlIFRTTyBmb3IgYnVm
ZmVyIG92ZXJydW4gDQo+PiB3b3JrYXJvdW5kIikNCj4+IFNpZ25lZC1vZmYtYnk6IE1hdGV1c3og
UGFsY3pld3NraSA8bWF0ZXVzei5wYWxjemV3c2tpQGludGVsLmNvbT4NCj4+IC0tLQ0KPj4gICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMgfCAxMCArKysrKystLS0t
DQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+
PiANCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0
ZGV2LmMgDQo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYw0K
Pj4gaW5kZXggMDRhY2QxYTk5MmZhLi4yNGY0Y2NiODJkYzQgMTAwNjQ0DQo+PiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMNCj4+ICsrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYw0KPj4gQEAgLTUzMDcsMTAgKzUzMDcs
NiBAQCBzdGF0aWMgdm9pZCBlMTAwMF93YXRjaGRvZ190YXNrKHN0cnVjdCB3b3JrX3N0cnVjdCAq
d29yaykNCj4+ICAgCQkJCQkvKiBvb3BzICovDQo+PiAgIAkJCQkJYnJlYWs7DQo+PiAgIAkJCQl9
DQo+PiAtCQkJCWlmIChody0+bWFjLnR5cGUgPT0gZTEwMDBfcGNoX3NwdCkgew0KPj4gLQkJCQkJ
bmV0ZGV2LT5mZWF0dXJlcyAmPSB+TkVUSUZfRl9UU087DQo+PiAtCQkJCQluZXRkZXYtPmZlYXR1
cmVzICY9IH5ORVRJRl9GX1RTTzY7DQo+PiAtCQkJCX0NCj4+ICAgCQkJfQ0KPj4gICANCj4+ICAg
CQkJLyogZW5hYmxlIHRyYW5zbWl0cyBpbiB0aGUgaGFyZHdhcmUsIG5lZWQgdG8gZG8gdGhpcyBA
QCAtNTMyNiw2IA0KPj4gKzUzMjIsMTIgQEAgc3RhdGljIHZvaWQgZTEwMDBfd2F0Y2hkb2dfdGFz
ayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspDQo+PiAgIAkJCWlmIChwaHktPm9wcy5jZmdfb25f
bGlua191cCkNCj4+ICAgCQkJCXBoeS0+b3BzLmNmZ19vbl9saW5rX3VwKGh3KTsNCj4+ICAgDQo+
PiArCQkJLyogRGlzYWJsZSBUU08gZm9yIGkyMTksIHRvIGF2b2lkIHRyYW5zZmVyIHNwZWVkIGlz
c3VlICovDQo+DQo+UGxlYXNlIHJlbW92ZSB0aGUgY29tbWEsIGFuZCBwbGVhc2UgZWxhYm9yYXRl
IGFsc28gaW4gdGhlIGNvbW1lbnQuDQo+DQo+PiArCQkJaWYgKGh3LT5tYWMudHlwZSA9PSBlMTAw
MF9wY2hfc3B0KSB7DQo+PiArCQkJCQluZXRkZXYtPmZlYXR1cmVzICY9IH5ORVRJRl9GX1RTTzsN
Cj4+ICsJCQkJCW5ldGRldi0+ZmVhdHVyZXMgJj0gfk5FVElGX0ZfVFNPNjsNCj4+ICsJCQl9DQo+
PiArDQo+PiAgIAkJCW5ldGlmX3dha2VfcXVldWUobmV0ZGV2KTsNCj4+ICAgCQkJbmV0aWZfY2Fy
cmllcl9vbihuZXRkZXYpOw0KPg0KPg0KPktpbmQgcmVnYXJkcywNCj4NCj5QYXVsDQo+DQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
