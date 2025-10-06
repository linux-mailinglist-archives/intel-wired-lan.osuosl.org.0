Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6622BBF672
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Oct 2025 22:55:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CCD46157D;
	Mon,  6 Oct 2025 20:55:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xKMxWfPCU3sX; Mon,  6 Oct 2025 20:55:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62243614D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759784105;
	bh=zbRA98jgMs5Es97+kt/qJ1AQx2UYX8rxElyuTGl01v8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5HkXA3M7A2bPOVwsm+gB8SmA0Y1RShDPzrAXEkPu6dZXMgFnskjXL9AOtOtLTeFfg
	 wqv4owsJpTKWVFIymJEjlS1WT+gQjQHAmqBzM1uydMMl1SIF6Rz//SyL7gfuz+iygt
	 KdOPm9mytiQIkoUOP3SrCdnvlibENlDXYhLQFsF1E49h/QPT9cEaMh7MeG6X7ENri/
	 H2zVZTIJqGe20UIoMnWgnCdHzXXcv7xIppKUXLIc053Ul3rDxBcebHFlUUC/zEyocs
	 o2ZRAJalSWvJpA1WVYKgdIlYzkt/31Lgq21LPQG+NauoM+T6ytWztAsW6ck6029Z3T
	 lSDVuo2TdgEDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62243614D2;
	Mon,  6 Oct 2025 20:55:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id EF712226
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 20:55:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D4C26418FC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 20:55:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KMCIBJTojw9o for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Oct 2025 20:55:01 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 06 Oct 2025 20:55:01 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6972D40FC8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6972D40FC8
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6972D40FC8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Oct 2025 20:55:00 +0000 (UTC)
X-CSE-ConnectionGUID: xcudVIDoQTSpOrKJPmCMkQ==
X-CSE-MsgGUID: knK3Fpp4STSAO+CNOacZPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61916967"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61916967"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 13:47:54 -0700
X-CSE-ConnectionGUID: e1rASO/TTymSo/Yw6pM56g==
X-CSE-MsgGUID: 5cgydbncTIKhVOvC04vg3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="179782393"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 13:47:53 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 13:47:52 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 6 Oct 2025 13:47:52 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.24) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 13:47:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h6teOXx3I66/Bg2RB9Kzz975RwTGTsSbZMZg8cw2ytb8fa+GBJ4DdBN4TMW2ZR+RDWmBQ8BR8yM4g6O+C11/4DsCYHKm8a/0EQUt2Y7gqXhHdxXZGz8iPusZ27w5z4RnGjWwv48G7DI3dGDTm9m7tGzg/2292mnEXUjKL+tTMHn09KaTnU6y5NIHGqP1i/i+RXcuN/QILL/XsOZHbz5wu/4W0I08P/slWOOYKX9UI7qOq1EG5Nq/hmztH7Z/FsZzvB9z+mPcRc7F2i5q84uZ9qTDKrJIksXwNqyxC5S/8EGJ4FZhjLuQufZRFbjBm2RETWSRWnclSSoBrrJb2j/S8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zbRA98jgMs5Es97+kt/qJ1AQx2UYX8rxElyuTGl01v8=;
 b=P8cbMl21GhI4iHU1354eT29fmN/9zPZ7aiAgj50ES80JjuYMYM4uYfHeMFj90vlD9pm03jzy6VGrtMa1wdvucTbB7mTHwjjMjRvRZ5oIbSFHAmr7FPjPyERmmuc+mt/d9QSft3ZJfP1OjvXD5Uk+Q0n+8cYPhPMJI/6fqRQ3oXXXP6EWKqCQdm75E+YZdAEbm9hCt65MGREem3NkjRnI3iHgSgPEd1M1rErdAtGIxv0LZqEwSOh+cEs0z7iDkqDbZ/wg+dDRuPvLKcf03UTG0tZfC0akKYVE89OkiNXvzC15DQEYJCUmQTJYoKAUqZxPoaVLxv2WztW+TrbmVOjxyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6194.namprd11.prod.outlook.com (2603:10b6:208:3ea::22)
 by IA0PR11MB7403.namprd11.prod.outlook.com (2603:10b6:208:431::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Mon, 6 Oct
 2025 20:47:43 +0000
Received: from IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::7cb0:a763:c89e:974b]) by IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::7cb0:a763:c89e:974b%4]) with mapi id 15.20.9182.017; Mon, 6 Oct 2025
 20:47:43 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Add lport/MAC rules for
 PF traffic in bonds
Thread-Index: AQHcNSadL3QbeGo2hk2nXEAIP+98ebS1jI1w
Date: Mon, 6 Oct 2025 20:47:43 +0000
Message-ID: <IA1PR11MB6194345BCAE837A896149EDCDDE3A@IA1PR11MB6194.namprd11.prod.outlook.com>
References: <20251003162721.2831033-1-david.m.ertman@intel.com>
 <89a6539c-46f3-4098-84fc-b94def437279@molgen.mpg.de>
In-Reply-To: <89a6539c-46f3-4098-84fc-b94def437279@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6194:EE_|IA0PR11MB7403:EE_
x-ms-office365-filtering-correlation-id: 3586f652-5ce2-4735-506d-08de0519995a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?cExRc2NSNVc2SlZBaXRqMm5rQW9iYTV0dDdsVDhUK1lqQUpUaER3MTc3c1lt?=
 =?utf-8?B?L2UwMlY0bTZsdEZCazdDOXJZVXRmRVFXeTZMVHJEdTRIZzhmV3R3QWxWMWow?=
 =?utf-8?B?N0dEUy9VcDVnNmk2dVEwbFpIYllVQzFNc1hQcm1mM0N2K05UdTdleGZuWWNl?=
 =?utf-8?B?MW13UEZRWnJ1SVVqMkw5anJkNGV1VDNCejBWWXpuUWlMSGxYQytxV2ZQc3pp?=
 =?utf-8?B?UjhjN2x6Qm9WeFBqY3hIYzc1Z2l0dm5xYUNsOUFFTldWbHJvT04yTGRMeW1N?=
 =?utf-8?B?RUdCOExoYzRUdTZvZlNHbWVlVjNyWXJETjZrbi9KWlI2TlhrSm5JTnlUZFdz?=
 =?utf-8?B?ZjRqWUhXQXJEY0xNc0U3ZkwvalY5b3lMTTMzV1hIdjA2MngxT2NoRituY3BY?=
 =?utf-8?B?L0wrYStiRzIvYmFhNmZaeHA3SVhFUzVJT3o0TUFRclhOajI1cTVtanZwTGIx?=
 =?utf-8?B?SVlpbjhLNXdka0RIY20wVjF2aVhrZXVmY09LTXpXT0tCM1p0WlNXWENUM0Vt?=
 =?utf-8?B?VnpHYmZHbFlvaU1SRVZQN0lFZ2JLMEZGOHA2Tmx2VnBmY2RPZ0R5QUxlbTdC?=
 =?utf-8?B?S0RRbEZIcVVwL0I2M0RLaGwzWkJuZUZFb1BTUU9teW5uVERCbzIxZWgwbUVu?=
 =?utf-8?B?U0tJNU50Y0dIZ1RKcGFiSkw2Rkw0WlFBbVZlZHhyb0w1Nmx3dTNEZmhFemYz?=
 =?utf-8?B?TG9ua3NsdDNRY3hkdWpPcnp1K2RVRXArQnIzWnBhYjZuL0pNdFhFNjBiamxX?=
 =?utf-8?B?K1VLME9FeVF2SmdjbVFjUTVOKzFPMlduRmV5dXJKV2tzUUIwVzdqUXdmZjdr?=
 =?utf-8?B?bWVhcmdIcTdsN0ZDZkNCQ21aVjlJcm1SQzZURUluOXg5UklnWUFub0szejBq?=
 =?utf-8?B?KzdKVXk1WDZuRHZmandnVlVQVUdQbHdjKzBUWGRMQmJ1ampwS0lReEl5cFpY?=
 =?utf-8?B?ZzhUTWFuU2J3RVZnZHczQWkwYTJ6TkRETkNoWWtVUlFkZmhhWEMwNUppM3U3?=
 =?utf-8?B?MHg0UlJwSTdzSmJON0J2SDkvNXRjRTZNQU1VMGtVellnT0E2WkxkNWpzVFJF?=
 =?utf-8?B?Z05hU2lUTjVLcmVqR2g2RnN5bGJHUlZ6OXNQVUJpQWFwdWVBcHJNbk4wWk4w?=
 =?utf-8?B?RTliajRtUnREUXJsdlBndDIzb0oxSVJmbHJJTUFDTWxJU1Y3VFFrSEtjQXFX?=
 =?utf-8?B?UWk1OWtXQ2ZBSFY3NDZ2cSt6b0QwMDF6dzEwR0puOTV4ZVdDQjFxd0tvZisv?=
 =?utf-8?B?WjdidndTMUtObDdBSHA5YnF5RlJoUG00dG5kaFZMdDhVN1diTUFXeFZRU2lE?=
 =?utf-8?B?dUpRUkJzTGI4ZmFFZ2VEVE55dDJFZ0M1ODBjMGJLU05OVjFpQ2xFMVV0WEVN?=
 =?utf-8?B?ZjNBNkJ4eXFEVFByN2ZSa1JYam90NFFLRmFmM3cwV0Qwc1c4NUR3MFhmUGNZ?=
 =?utf-8?B?S0NBb0hMTFNidUNyaENPSDZDSlhFaHNTbkxxYUtlelZUSER6cjI2eENlQngv?=
 =?utf-8?B?YmQvNm9wdmxKc3dDcm5Jei82Zmo4bVB1QXdKaGlIdVBuUElaa1ZxYmNKbjRL?=
 =?utf-8?B?Rkp0c0FDM1FOdmJuQ2QvRFJqRXkxMUdQNVpEUkJvRHNyYkV3S3hFQWkraHRJ?=
 =?utf-8?B?bTNVN2ZLTGVLU1BTTXVrNmNuMlRFdG92d2s3WGN1RVpCNmFmU0Yrc3NUNVR4?=
 =?utf-8?B?dlQxQUlRSlF6RU1FNktUUitKVm0yVG1pbFdIdnNVbitTSnlteFFWeGdWY1hN?=
 =?utf-8?B?NUlSUHRBQW9WR1lXUUhLTEQ4a1M2NUhyeW90blhNMzROSTBCdzFBaWlCMkJo?=
 =?utf-8?B?QTY2cmtrVDFDMGdmeXV6SHJWY0k5eGcxbjFuRWdhdTc3R2MxenpiemhsdmQ0?=
 =?utf-8?B?N0tLNExrUnNRN0dQRmRKSzBpcnZBYmRpMWdTTzRtYkZ4WkhjQi94eGE4U0Zl?=
 =?utf-8?B?TWZkQ0N6ZW8xaDlTTEVITDNzVE9pMkl1L2QxaHpKUy9MWE5Zd3d5RiswSTZ0?=
 =?utf-8?B?RVNIenlrR3NXTmV1WVZ5aDVXRlN4bUtYeTcvbUNldkEzU0xvQStBQ2xzWFBq?=
 =?utf-8?Q?xM0K4J?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aHczTW9Xdzl0Q2kxdEk5bHo3WmU4YW1vZEU1SXM2WkEvYWwzb3g0NWwwenQv?=
 =?utf-8?B?MldwSG0xejJES3NCQ3YzejVIUk42Q1JMY3RnSXg4MWRJSktCT1FaL2NwYkJw?=
 =?utf-8?B?YkNOWHhoKzZuRlpGK2NZNFZWcDN5dUxFQmVOckU2VG14UDVDTFRYMkQ3RFp2?=
 =?utf-8?B?Vzk4bS9UMDR6MDM1NXZHa2xELzhYRkVSeFVTZFVnWUN1SnZ2S0xLdll0cVVu?=
 =?utf-8?B?OGdiT1Q0clk5VVpKbWRmK3lLclR0NXBOc2EyWjZnTEJQcGRJdXh2TGhFcWRV?=
 =?utf-8?B?RmpuVDVVZkR5UzQ3RG9kOTBJa2JkKy9SK0NpcTQ5OUJROFdacjQvYzAwaGZt?=
 =?utf-8?B?d2xUMEI1ZElqQVJPcmNFNGNCbG16ZitzYzBlSUpqUUFEaTRHSnZYTUpzNkJ1?=
 =?utf-8?B?MDJUdUtQN05PMTU3dk1xbUxrWGk3MjcxRUhtOGt0SEF2WjlPVVVsd2YzNkdV?=
 =?utf-8?B?MmxmOG5LZEd3NGs3ZEpjMGFoWFJOM201TllBOHk4K25lV0pFMWdsWjIxa2po?=
 =?utf-8?B?NjM0d2pKc1pSNU4rWFk2LzhseGtuL3VZZ0IrWVhNNHNEMG9zWW84UVAvTk9j?=
 =?utf-8?B?bjhFQ21UZzFhWUVBZ0V6c0Q5Wm9rOFV6R0paM3ZiZlZBRWs5VVVEeXdxSFB1?=
 =?utf-8?B?N1JwcllhV3cwUXBwY2hUbng1SHVuWGg3VUh4d0pzN1FOem9Cb0NmT3JNSDRS?=
 =?utf-8?B?RmhXWFZoUjZGeFVSbGJIcmlKTy9Vakk0M1ZpOEg3cHh5c2NFcEJ2eDdjSHh5?=
 =?utf-8?B?bW1MbmNma2NsWVI5RFVJQkNTQlY3WEpoT1A2eFh5WXpsbEoyeXg4QXk1Sk5F?=
 =?utf-8?B?N1Z3NStzcEZIM3IyeG81U3J0SysvWGFSdG5lVGM3ZFFaRnJ3VlhRdGZKSVFF?=
 =?utf-8?B?ajgwSy90dGxkM090ajMvVWk3TU5zUFBmMWRiRW9PSFgycUdocnk5Mm9UTnRS?=
 =?utf-8?B?MFdmVUxaY3VnbWtINkYvQUJEVXc3QytDZDUvZ2FrVTVuU3JielJEZ2JIckxU?=
 =?utf-8?B?ek9jaFZxWU1oemFIVm90VWNQQ2JhS2pIdExrK2R0VWNnYyt0VmUyZExzd2Fm?=
 =?utf-8?B?QVRUelA5ZXgrR3ZCd1gwc1I4ZnN1OXZvTlNhYTlZTDM5dHRaZFJZNGsyZWVq?=
 =?utf-8?B?UmtLZ3VWR3cxZjREQTR1MmNIUjUyNldDbC9Zc1Y0UXovV1ZFVHRWYTdIdzdw?=
 =?utf-8?B?NjdVdkVnVjdJVEthbGxMSE8rZWVodW9EVWVOTEFoNDhkS09CVFcxa25lV3dN?=
 =?utf-8?B?SnQvNGRDOTFjYjN1TXU5NHdTTlRHaStBdlhhUEVpck5CejFtUDNzb1c4Zm9C?=
 =?utf-8?B?Z1FubFh1a1UvVk03Yys4cnY1a2tzRzk1V3dqMThuUUNydThDck9CcEtPTGM0?=
 =?utf-8?B?VHUxUDEybEFUUUpCcmZRczBHUnhmb1d3VVBIWjRaNWFMeGZRNEJJWjZWY2Q0?=
 =?utf-8?B?MjJCSnJ1c2JIcGR1Q0htN3NvbjlhcXB3ZUhjV1c3clJ5R25Ub3NsRnR5M05h?=
 =?utf-8?B?TGh3R2pVanNuc2RobUd4TVpIaDk3dDk1Vmh6ZEZDYUZBN1RTREJhM2N6MTdK?=
 =?utf-8?B?S0FMZFY4M0lleGNZVkhkTEVnVS8zdTVUVEYwdXlIUG9iQWd1K2EvZllHWWtI?=
 =?utf-8?B?MGptRkttSHg4ZkNWVC8rWXVXdWoxdGVEYjdBKzRtclF5RWFDRDdkaTNXQjBq?=
 =?utf-8?B?V1NsSG5VaU9saTdzdXZqRGJla3U0R29WMC84UzFhalNTcFpEaHVxOFlZa2dU?=
 =?utf-8?B?cmJTRDlVb1ZSOGN0bUUrNkNJb1QxbjN6R2U4bmNWc1B5OVRxZGZCeGVuNFhn?=
 =?utf-8?B?ZzhEVGNxWlJaTmxKWFdFRGFsK3FmT1FtMlNlTWNjamZzZUdoSjd4RlZWeWZQ?=
 =?utf-8?B?ZU1DZGRNc3VoRnN2M3lpcDRkV2R2ZXZzelRPNEg5QmxVUWJhRitrTWhBVVFQ?=
 =?utf-8?B?UUxRQW0wRE56VjhSUXJaUWhvbFJDZFczS1dNTmdoWURsYW1zRXZVTytMWDhC?=
 =?utf-8?B?d3M5U0RYUVVNVmJxdFc4K1JNZmNCd05VT2dabi9NZFI3QUhQb1RFL3U1S0lF?=
 =?utf-8?B?aUlYZWppd2tPTitia1E4TmlyNmMydzRiTnlBb1FyckwrSjErb2E4dUJ2YUpu?=
 =?utf-8?Q?TUujqyE5H4yz7ce4mj43/PeOY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3586f652-5ce2-4735-506d-08de0519995a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2025 20:47:43.7920 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eZFJ0iyzMbFDYUGAQLgq9xMxNDY/XXfkpBQCU9WsDFwLJCHftEYtIQs5se/Mp34sab16+ycYnibeagR6tBFdW2+rv256Hznh8zSqDqvkQOM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7403
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759784102; x=1791320102;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zbRA98jgMs5Es97+kt/qJ1AQx2UYX8rxElyuTGl01v8=;
 b=DTHm8tSfz/TtOwfIOfugeZx4dF6zhxNk7HXl7pzoUqpK+RGdqOSorSG0
 MfbtpQmWg+sS7rSCD3g7pElCJ8Y7XLUreZ++K6eoW+HNMPnHeThmtHZhV
 KZa8uEKwB3YSKGh2Wfm6uYDIDeZluIvNueZjFNxJEgsIvcdlWE+CkmKuP
 BgJcs7oiOBsvzZuw0y+8MaAbF+UbZXp30Md8Zl1ve7nrc3bgyjCaT+2MO
 8Yd4b/uCPFzlPod/hmLu14YXzNgcfMdGnkudIV93Zh6jC4/Ed30mnGkB3
 DZDmDBNfi2LPaz3NgsVd2o8E6r2fXPHW+iF3RTECTBu/Wtgq4ixXHu49h
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DTHm8tSf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Add lport/MAC rules for
 PF traffic in bonds
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnpl
bEBtb2xnZW4ubXBnLmRlPg0KPiBTZW50OiBTYXR1cmRheSwgT2N0b2JlciA0LCAyMDI1IDU6MDEg
QU0NCj4gVG86IEVydG1hbiwgRGF2aWQgTSA8ZGF2aWQubS5lcnRtYW5AaW50ZWwuY29tPg0KPiBD
YzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRl
bC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0XSBpY2U6IEFkZCBscG9ydC9NQUMgcnVsZXMgZm9y
IFBGDQo+IHRyYWZmaWMgaW4gYm9uZHMNCj4gDQo+IERlYXIgRGF2ZSwNCj4gDQo+IA0KPiBUaGFu
ayB5b3UgZm9yIHRoZSBwYXRjaC4NCj4gDQo+IEFtIDAzLjEwLjI1IHVtIDE4OjI3IHNjaHJpZWIg
RGF2ZSBFcnRtYW46DQo+ID4gV2hlbiB0d28gRThYWCBpbnRlcmZhY2VzIGFyZSBwbGFjZWQgaW50
byBhIGJvbmQsIGFuZCBhcmUgY29ycmVjdGx5DQo+ID4gY29uZmlndXJlZCBmb3Igc3VwcG9ydGlu
ZyBTUklPViB0cmFmZmljIG92ZXIgdGhlIGJvbmRlZCBpbnRlcmZhY2VzLA0KPiA+IHRoZXJlIGlz
IGEgcHJvYmxlbSB3aXRoIHRyYWZmaWMgYWltZWQgZGlyZWN0bHkgYXQgdGhlIGJvbmQgbmV0ZGV2
LiAgQnkNCj4gPiBjb25qb2luaW5nIGJvdGggaW50ZXJmYWNlcyBvbnRvIGEgc2luZ2xlIHN3aXRj
aCBibGFjayBpbiB0aGUgTklDLCBhbGwNCj4gDQo+IFNvcnJ5LCB3aGF0IGlzIGEg4oCcc2luZ2xl
IHN3aXRjaCBibGFja+KAnD8gYmwqbypjaz8NCg0KWWVzLCB3YXMgbWVhbnQgdG8gYmUgImJsb2Nr
IiDwn5iKDQoNCj4gDQo+ID4gdW5pY2FzdCBhbmQgYnJvYWRjYXN0IHRyYWZmaWMgaXMgYmVpbmcg
ZGlyZWN0ZWQgdG8gdGhlIHByaW1hcnkgaW50ZXJmYWNlJ3MNCj4gPiBzZXQgb2YgcmVzb3VyY2Vz
IG5vIG1hdHRlciB3aGljaCBpbnRlcmZhY2UgaXMgdGhlIGFjdGl2ZS90YXJnZXRpbmcgb25lLg0K
PiA+DQo+ID4gVG8gZml4IHRoaXMsIGFkZCBhIHNldCBvZiBydWxlcyBpbnRvIHRoZSBzd2l0Y2gg
YmxvY2sgdGhhdCBjb21iaW5lcyBib3RoDQo+ID4gdGFyZ2V0IE1BQyBhZGRyZXNzIGFuZCBzb3Vy
Y2UgbG9naWNhbCBwb3J0IHRvIGRpcmVjdCBwYWNrZXRzIHRvIHRoZQ0KPiA+IGFjdGl2ZS90YXJn
ZXRlZCBWU0kuICBUaGlzIGNoYW5nZSB3aWxsIG5vdCB0b3VjaCB0cmFmZmljIGRpcmVjdGVkIHRv
IFNSSU9WDQo+ID4gVkYgdGFyZ2V0cy4NCj4gDQo+IFBsZWFzZSBkb2N1bWVudCBhIHJlcHJvZHVj
ZXIsIGlmIHlvdSBoYXZlIG9uZS4NCg0KVGhpcyBpcyBoYXJkIHRvIHNob3djYXNlLCBhcyBpdCBp
cyBhbiBpbnRlcm5hbCBwYWNrZXQgcmVzb3VyY2UgaXNzdWUuICBJdCBmaXhlcyB0aGUgcmVzb3Vy
Y2VzDQpzbyB0aGF0IHRoZXkgYXJlIGNvcnJlY3RseSB1dGlsaXplZCwgYnV0IHRoZSBleHRlcm5h
bCBhYmVycmFudCBiZWhhdmlvciBpcyBzb21ldGhpbmcgdGhhdA0Kd29uJ3QgZGlzcGxheSB1bnRp
bCBmdXR1cmUgZmVhdHVyZXMgYXJlIGJ1aWx0IG9uIHRvcCBvZiB0aGlzLg0KDQo+IA0KPiA+IEZp
eGVzOiBlYzVhNmM1Zjc5ZWQgKCJpY2U6IHByb2Nlc3MgZXZlbnRzIGNyZWF0ZWQgYnkgbGFnIG5l
dGRldiBldmVudA0KPiBoYW5kbGVyIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBEYXZlIEVydG1hbiA8
ZGF2aWQubS5lcnRtYW5AaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9sYWcuYyB8IDEwMSArKysrKysrKysrKysrKysrKysrKysrKw0K
PiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9sYWcuaCB8ICAgNSArKw0K
PiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxMDYgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGFnLmMNCj4gYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xhZy5jDQo+ID4gaW5kZXggZDI1NzZkNjA2
ZTEwLi43NzczZDViOWJhZTkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9sYWcuYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfbGFnLmMNCj4gPiBAQCAtMTcsNiArMTcsNyBAQCBzdGF0aWMgY29uc3QgdTggbGFj
cF90cmFpbl9wa3RbSUNFX1RSQUlOX1BLVF9MRU5dID0gew0KPiAwLCAwLCAwLCAwLCAwLCAwLA0K
PiA+ICAgc3RhdGljIGNvbnN0IHU4IGFjdF9hY3RfdHJhaW5fcGt0W0lDRV9UUkFJTl9QS1RfTEVO
XSA9IHsgMCwgMCwgMCwgMCwgMCwgMCwNCj4gPiAgIAkJCQkJCQkgMCwgMCwgMCwgMCwgMCwgMCwN
Cj4gPiAgIAkJCQkJCQkgMCwgMCwgMCwgMCB9Ow0KPiA+ICtzdGF0aWMgdTggbWFjX3RyYWluX3Br
dFtJQ0VfVFJBSU5fUEtUX0xFTl0gPSB7IDAgfTsNCj4gPg0KPiA+ICAgI2RlZmluZSBJQ0VfUkVD
SVBFX0xFTgkJCTY0DQo+ID4gICAjZGVmaW5lIElDRV9MQUdfU1JJT1ZfQ1BfUkVDSVBFCQkxMA0K
PiA+IEBAIC0yOSw2ICszMCwxMCBAQCBzdGF0aWMgY29uc3QgdTggaWNlX2xwb3J0X3JjcFtJQ0Vf
UkVDSVBFX0xFTl0gPSB7DQo+ID4gICAJMHgwNSwgMCwgMCwgMCwgMHgyMCwgMCwgMCwgMCwgMCwg
MCwgMCwgMCwgMCwgMCwgMCwgMCwNCj4gPiAgIAkweDg1LCAwLCAweDE2LCAwLCAwLCAwLCAweGZm
LCAweGZmLCAweDA3LCAwLCAwLCAwLCAwLCAwLCAwLCAwLA0KPiA+ICAgCTAsIDAsIDAsIDAsIDAs
IDAsIDB4MzAgfTsNCj4gPiArc3RhdGljIGNvbnN0IHU4IGljZV9wZm1hY19yY3BbSUNFX1JFQ0lQ
RV9MRU5dID0gew0KPiA+ICsJMHgwNSwgMCwgMCwgMCwgMHgyMCwgMCwgMCwgMCwgMCwgMCwgMCwg
MCwgMCwgMCwgMCwgMCwgMHg4NSwgMCwgMHgxNiwNCj4gPiArCTB4MDUsIDB4MDYsIDB4MDcsIDB4
ZmYsIDB4ZmYsIDB4MDcsIDB4MDAsIDB4ZmYsIDB4ZmYsIDB4ZmYsIDB4ZmYsDQo+ID4gKwkweGZm
LCAweGZmLCAwLCAwLCAwLCAwLCAwLCAwLCAweDMwIH07DQo+IA0KPiBFeGN1c2UgbXkgaWdub3Jh
bmNlLCBob3cgY2FuIHRoZXNlIG51bWJlcnMgYmUgcmV2aWV3ZWQ/DQo+IA0KDQpJIHVuZGVyc3Rh
bmQgeW91ciBjb25jZXJuIGhlcmUsIGJ1dCB0aGlzIGlzIGEgImZvcm11bGEiIHRoYXQNCklzIHVz
ZWQgYnkgdGhlIEhXL0ZXIHRvIGNyZWF0ZSBhIHN3aXRjaCByb3V0aW5nIGVudHJ5LiAgSSBhbSBu
b3QNCnN1cmUgaG93IHRvIG1ha2UgdGhpcyBlYXNpZXIgdG8gcmV2aWV3IOKYuQ0KDQo+ID4NCj4g
PiAgIC8qKg0KPiA+ICAgICogaWNlX2xhZ19zZXRfcHJpbWFyeSAtIHNldCBQRiBMQUcgc3RhdGUg
YXMgUHJpbWFyeQ0KPiA+IEBAIC0xMzM2LDYgKzEzNDEsODkgQEAgaWNlX2xhZ19yZWNsYWltX3Zm
X25vZGVzKHN0cnVjdCBpY2VfbGFnICpsYWcsDQo+IHN0cnVjdCBpY2VfaHcgKnNyY19odykNCj4g
PiAgIAkJCQlpY2VfbGFnX3JlY2xhaW1fdmZfdGMobGFnLCBzcmNfaHcsIGksIHRjKTsNCj4gPiAg
IH0NCj4gPg0KPiA+ICsvKioNCj4gPiArICogaWNlX2xhZ19jZmdfcGZtYWNfZmx0cnMNCj4gPiAr
ICogQGxhZzogbG9jYWwgbGFnIGluZm8gc3RydWN0DQo+ID4gKyAqIEBsaW5rOiBpcyB0aGlzIGEg
bGlua2luZyBhY3Rpb24NCj4gPiArICoNCj4gPiArICogQ29uZmlndXJlIGxwb3J0L01BQyBmaWx0
ZXJzIGZvciB0aGlzIGludGVyZmFjZXMgUEYgdHJhZmZpYyBpbiB0aGUNCj4gDQo+IGludGVyZmFj
ZeKAmXMNCj4gDQoNCkZpemVkDQoNCj4gPiArICogY3VycmVudCBpbnRlcmZhY2VzIFNXSUQNCj4g
PiArICovDQo+ID4gK3N0YXRpYyB2b2lkIGljZV9sYWdfY2ZnX3BmbWFjX2ZsdHJzKHN0cnVjdCBp
Y2VfbGFnICpsYWcsIGJvb2wgbGluaykNCj4gPiArew0KPiA+ICsJdTggbHBvcnQgPSBsYWctPnBm
LT5ody5wb3J0X2luZm8tPmxwb3J0Ow0KPiA+ICsJc3RydWN0IGljZV9zd19ydWxlX2xrdXBfcnhf
dHggKnNfcnVsZTsNCj4gPiArCXN0cnVjdCBpY2VfdnNpICp2c2kgPSBsYWctPnBmLT52c2lbMF07
DQo+ID4gKwlzdHJ1Y3QgaWNlX2h3ICpodyA9ICZsYWctPnBmLT5odzsNCj4gPiArCXUxNiBzX3J1
bGVfc3o7DQo+IA0KPiBzaXplX3Q/DQoNCkNoYW5nZWQNCg0KPiANCj4gPiArCXUzMiBhY3Q7DQo+
ID4gKw0KPiA+ICsJYWN0ID0gSUNFX0ZXRF9UT19WU0kgfCBJQ0VfU0lOR0xFX0FDVF9MQU5fRU5B
QkxFIHwNCj4gSUNFX1NJTkdMRV9BQ1RfVkFMSURfQklUIHwNCj4gPiArCQlGSUVMRF9QUkVQKElD
RV9TSU5HTEVfQUNUX1ZTSV9JRF9NLCB2c2ktPnZzaV9udW0pOw0KPiA+ICsNCj4gPiArCXNfcnVs
ZV9zeiA9IElDRV9TV19SVUxFX1JYX1RYX0hEUl9TSVpFKHNfcnVsZSwNCj4gSUNFX1RSQUlOX1BL
VF9MRU4pOw0KPiA+ICsJc19ydWxlID0ga3phbGxvYyhzX3J1bGVfc3osIEdGUF9LRVJORUwpOw0K
PiA+ICsJaWYgKCFzX3J1bGUpIHsNCj4gPiArCQluZXRkZXZfd2FybihsYWctPm5ldGRldiwgIi1F
Tk9NRU0gZXJyb3IgY29uZmlndXJpbmcNCj4gUEZNQUMgZmlsdGVyc1xuIik7DQo+ID4gKwkJcmV0
dXJuOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiArCWlmIChsaW5rKSB7DQo+ID4gKwkJdTggYnJvYWRj
YXN0W0VUSF9BTEVOXSA9IHsgMHhmZiwgMHhmZiwgMHhmZiwgMHhmZiwgMHhmZiwgMHhmZiB9Ow0K
PiA+ICsNCj4gPiArCQkvKiB1bmljYXN0ICovDQo+ID4gKwkJZXRoZXJfYWRkcl9jb3B5KG1hY190
cmFpbl9wa3QsIGxhZy0+dXBwZXJfbmV0ZGV2LQ0KPiA+ZGV2X2FkZHIpOw0KPiA+ICsJCW1lbWNw
eShzX3J1bGUtPmhkcl9kYXRhLCBtYWNfdHJhaW5fcGt0LA0KPiBJQ0VfVFJBSU5fUEtUX0xFTik7
DQo+ID4gKwkJc19ydWxlLT5yZWNpcGVfaWQgPSBjcHVfdG9fbGUxNihsYWctPnBmbWFjX3JlY2lw
ZSk7DQo+ID4gKwkJc19ydWxlLT5zcmMgPSBjcHVfdG9fbGUxNihscG9ydCk7DQo+ID4gKwkJc19y
dWxlLT5hY3QgPSBjcHVfdG9fbGUzMihhY3QpOw0KPiA+ICsJCXNfcnVsZS0+aGRyX2xlbiA9IGNw
dV90b19sZTE2KElDRV9UUkFJTl9QS1RfTEVOKTsNCj4gPiArCQlzX3J1bGUtPmhkci50eXBlID0N
Cj4gY3B1X3RvX2xlMTYoSUNFX0FRQ19TV19SVUxFU19UX0xLVVBfUlgpOw0KPiA+ICsNCj4gPiAr
CQlpZiAoaWNlX2FxX3N3X3J1bGVzKGh3LCBzX3J1bGUsIHNfcnVsZV9zeiwgMSwNCj4gPiArCQkJ
CSAgICBpY2VfYXFjX29wY19hZGRfc3dfcnVsZXMsIE5VTEwpKSB7DQo+ID4gKwkJCW5ldGRldl93
YXJuKGxhZy0+bmV0ZGV2LCAiRXJyb3IgQURESU5HIFVuaWNhc3QNCj4gUEZNQUMgcnVsZSBmb3Ig
YWdncmVnYXRlXG4iKTsNCj4gDQo+IExvZyB0aGUgcmV0dXJuIHZhbHVlPw0KDQpGbG93IGNoYW5n
ZWQgdG8gaW5jbHVkZSByZXR1cm4gdmFsdWUgaW4gZXJyIG1lc3NhZ2VzDQoNCj4gDQo+ID4gKwkJ
CWdvdG8gZXJyX3BmbWFjX2ZyZWU7DQo+ID4gKwkJfQ0KPiA+ICsNCj4gPiArCQlsYWctPnBmbWFj
X3VuaWNzdF9pZHggPSBsZTE2X3RvX2NwdShzX3J1bGUtPmluZGV4KTsNCj4gPiArDQo+ID4gKwkJ
LyogYnJvYWRhc3QgKi8NCj4gPiArCQlldGhlcl9hZGRyX2NvcHkobWFjX3RyYWluX3BrdCwgYnJv
YWRjYXN0KTsNCj4gPiArCQltZW1jcHkoc19ydWxlLT5oZHJfZGF0YSwgbWFjX3RyYWluX3BrdCwN
Cj4gSUNFX1RSQUlOX1BLVF9MRU4pOw0KPiA+ICsJCWlmIChpY2VfYXFfc3dfcnVsZXMoaHcsIHNf
cnVsZSwgc19ydWxlX3N6LCAxLA0KPiA+ICsJCQkJICAgIGljZV9hcWNfb3BjX2FkZF9zd19ydWxl
cywgTlVMTCkpIHsNCj4gPiArCQkJbmV0ZGV2X3dhcm4obGFnLT5uZXRkZXYsICJFcnJvciBBRERJ
TkcgQnJvYWRjYXN0DQo+IFBGTUFDIHJ1bGUgZm9yIGFnZ3JlZ2F0ZVxuIik7DQo+IA0KPiBMb2cg
dGhlIHJldHVybiB2YWx1ZT8NCg0KRml4ZWQNCg0KPiANCj4gPiArCQkJZ290byBlcnJfcGZtYWNf
ZnJlZTsNCj4gPiArCQl9DQo+ID4gKw0KPiA+ICsJCWxhZy0+cGZtYWNfYmRjc3RfaWR4ID0gbGUx
Nl90b19jcHUoc19ydWxlLT5pbmRleCk7DQo+ID4gKwl9IGVsc2Ugew0KPiA+ICsJCS8qIHVuaWNh
c3QgKi8NCj4gPiArCQlzX3J1bGUtPmluZGV4ID0gY3B1X3RvX2xlMTYobGFnLT5wZm1hY191bmlj
c3RfaWR4KTsNCj4gPiArCQlpZiAoc19ydWxlLT5pbmRleCAmJiBpY2VfYXFfc3dfcnVsZXMoJmxh
Zy0+cGYtPmh3LCBzX3J1bGUsDQo+ID4gKwkJCQkJCSAgICAgc19ydWxlX3N6LCAxLA0KPiA+ICsN
Cj4gaWNlX2FxY19vcGNfcmVtb3ZlX3N3X3J1bGVzLA0KPiA+ICsJCQkJCQkgICAgIE5VTEwpKQ0K
PiA+ICsJCQluZXRkZXZfd2FybihsYWctPm5ldGRldiwgIkVycm9yIFJFTU9WSU5HIFVuaWNhc3QN
Cj4gUEZNQUMgcnVsZSBmb3IgYWdncmVnYXRlXG4iKTsNCj4gDQo+IExvZyB0aGUgcmV0dXJuIHZh
bHVlPw0KDQpGaXhlZA0KDQo+IA0KPiA+ICsNCj4gPiArCQlsYWctPnBmbWFjX3VuaWNzdF9pZHgg
PSAwOw0KPiA+ICsNCj4gPiArCQkvKiBicm9hZGNhc3QgKi8NCj4gPiArCQlzX3J1bGUtPmluZGV4
ID0gY3B1X3RvX2xlMTYobGFnLT5wZm1hY19iZGNzdF9pZHgpOw0KPiA+ICsJCWlmIChzX3J1bGUt
PmluZGV4ICYmIGljZV9hcV9zd19ydWxlcygmbGFnLT5wZi0+aHcsIHNfcnVsZSwNCj4gPiArCQkJ
CQkJICAgICBzX3J1bGVfc3osIDEsDQo+ID4gKw0KPiBpY2VfYXFjX29wY19yZW1vdmVfc3dfcnVs
ZXMsDQo+ID4gKwkJCQkJCSAgICAgTlVMTCkpDQo+ID4gKwkJCW5ldGRldl93YXJuKGxhZy0+bmV0
ZGV2LCAiRXJyb3IgUkVNT1ZJTkcNCj4gQnJvYWRjYXN0IFBGTUFDIHJ1bGUgZm9yIGFnZ3JlZ2F0
ZVxuIik7DQo+IA0KPiBMb2cgdGhlIHJldHVybiB2YWx1ZT8NCg0KRml4ZWQNCg0KPiANCj4gPiAr
DQo+ID4gKwkJbGFnLT5wZm1hY19iZGNzdF9pZHggPSAwOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiAr
ZXJyX3BmbWFjX2ZyZWU6DQo+ID4gKwlrZnJlZShzX3J1bGUpOw0KPiA+ICt9DQo+ID4gKw0KPiA+
ICAgLyoqDQo+ID4gICAgKiBpY2VfbGFnX2xpbmsgLSBoYW5kbGUgTEFHIGxpbmsgZXZlbnQNCj4g
PiAgICAqIEBsYWc6IExBRyBpbmZvIHN0cnVjdA0KPiA+IEBAIC0xNDM3LDcgKzE1MjUsOSBAQCBz
dGF0aWMgdm9pZCBpY2VfbGFnX2xpbmtfdW5saW5rKHN0cnVjdCBpY2VfbGFnICpsYWcsDQo+IHZv
aWQgKnB0cikNCj4gPg0KPiA+ICAgCWlmIChpbmZvLT5saW5raW5nKSB7DQo+ID4gICAJCWljZV9s
YWdfbGluayhsYWcpOw0KPiA+ICsJCWljZV9sYWdfY2ZnX3BmbWFjX2ZsdHJzKGxhZywgdHJ1ZSk7
DQo+ID4gICAJfSBlbHNlIHsNCj4gPiArCQlpY2VfbGFnX2NmZ19wZm1hY19mbHRycyhsYWcsIGZh
bHNlKTsNCj4gPiAgIAkJaWYgKGxhZy0+Ym9uZF9hYSkNCj4gPiAgIAkJCWljZV9sYWdfYWFfdW5s
aW5rKGxhZyk7DQo+ID4gICAJCWVsc2UNCj4gPiBAQCAtMjYyMiw2ICsyNzEyLDExIEBAIGludCBp
Y2VfaW5pdF9sYWcoc3RydWN0IGljZV9wZiAqcGYpDQo+ID4gICAJaWYgKGVycikNCj4gPiAgIAkJ
Z290byAgZnJlZV9scG9ydF9yZXM7DQo+ID4NCj4gPiArCWVyciA9IGljZV9jcmVhdGVfbGFnX3Jl
Y2lwZSgmcGYtPmh3LCAmbGFnLT5wZm1hY19yZWNpcGUsDQo+ID4gKwkJCQkgICAgaWNlX3BmbWFj
X3JjcCwgMyk7DQo+ID4gKwlpZiAoZXJyKQ0KPiA+ICsJCWdvdG8gZnJlZV9hY3RfYWN0X3JlczsN
Cj4gPiArDQo+ID4gICAJLyogYXNzb2NpYXRlIHJlY2lwZXMgdG8gcHJvZmlsZXMgKi8NCj4gPiAg
IAlmb3IgKG4gPSAwOyBuIDwgSUNFX1BST0ZJRF9JUFY2X0dUUFVfSVBWNl9UQ1BfSU5ORVI7IG4r
Kykgew0KPiA+ICAgCQllcnIgPSBpY2VfYXFfZ2V0X3JlY2lwZV90b19wcm9maWxlKCZwZi0+aHcs
IG4sDQo+ID4gQEAgLTI2NDMsNiArMjczOCwxMCBAQCBpbnQgaWNlX2luaXRfbGFnKHN0cnVjdCBp
Y2VfcGYgKnBmKQ0KPiA+ICAgCWRldl9kYmcoZGV2LCAiSU5JVCBMQUcgY29tcGxldGVcbiIpOw0K
PiA+ICAgCXJldHVybiAwOw0KPiA+DQo+ID4gK2ZyZWVfYWN0X2FjdF9yZXM6DQo+ID4gKwlpY2Vf
ZnJlZV9od19yZXMoJnBmLT5odywgSUNFX0FRQ19SRVNfVFlQRV9SRUNJUEUsIDEsDQo+ID4gKwkJ
CSZwZi0+bGFnLT5hY3RfYWN0X3JlY2lwZSk7DQo+ID4gKw0KPiA+ICAgZnJlZV9scG9ydF9yZXM6
DQo+ID4gICAJaWNlX2ZyZWVfaHdfcmVzKCZwZi0+aHcsIElDRV9BUUNfUkVTX1RZUEVfUkVDSVBF
LCAxLA0KPiA+ICAgCQkJJmxhZy0+bHBvcnRfcmVjaXBlKTsNCj4gPiBAQCAtMjY3OSw2ICsyNzc4
LDggQEAgdm9pZCBpY2VfZGVpbml0X2xhZyhzdHJ1Y3QgaWNlX3BmICpwZikNCj4gPiAgIAkJCSZw
Zi0+bGFnLT5wZl9yZWNpcGUpOw0KPiA+ICAgCWljZV9mcmVlX2h3X3JlcygmcGYtPmh3LCBJQ0Vf
QVFDX1JFU19UWVBFX1JFQ0lQRSwgMSwNCj4gPiAgIAkJCSZwZi0+bGFnLT5scG9ydF9yZWNpcGUp
Ow0KPiA+ICsJaWNlX2ZyZWVfaHdfcmVzKCZwZi0+aHcsIElDRV9BUUNfUkVTX1RZUEVfUkVDSVBF
LCAxLA0KPiA+ICsJCQkmcGYtPmxhZy0+cGZtYWNfcmVjaXBlKTsNCj4gPg0KPiA+ICAgCWtmcmVl
KGxhZyk7DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9sYWcuaA0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGFn
LmgNCj4gPiBpbmRleCBmNzdlYmNkNjEwNDIuLmYxYmZmNDMyMjhlZSAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xhZy5oDQo+ID4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9sYWcuaA0KPiA+IEBAIC02MCwxMSArNjAs
MTYgQEAgc3RydWN0IGljZV9sYWcgew0KPiA+ICAgCXUxNiBwZl9yZWNpcGU7DQo+ID4gICAJdTE2
IGxwb3J0X3JlY2lwZTsNCj4gPiAgIAl1MTYgYWN0X2FjdF9yZWNpcGU7DQo+ID4gKwl1MTYgcGZt
YWNfcmVjaXBlOw0KPiA+ICsNCj4gPiAgIAl1MTYgcGZfcnhfcnVsZV9pZDsNCj4gPiAgIAl1MTYg
cGZfdHhfcnVsZV9pZDsNCj4gPiAgIAl1MTYgY3BfcnVsZV9pZHg7DQo+ID4gICAJdTE2IGxwb3J0
X3J1bGVfaWR4Ow0KPiA+ICAgCXUxNiBhY3RfYWN0X3J1bGVfaWR4Ow0KPiA+ICsJdTE2IHBmbWFj
X3VuaWNzdF9pZHg7DQo+ID4gKwl1MTYgcGZtYWNfYmRjc3RfaWR4Ow0KPiA+ICsNCj4gPiAgIAl1
OCByb2xlOw0KPiA+ICAgfTsNCj4gDQo+IFdpdGggdGhlIGFib3ZlIGFkZHJlc3NlZDoNCj4gDQo+
IFJldmlld2VkLWJ5OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPg0KPiANCj4g
DQo+IEtpbmQgcmVnYXJkcywNCj4gDQo+IFBhdWwNCg==
