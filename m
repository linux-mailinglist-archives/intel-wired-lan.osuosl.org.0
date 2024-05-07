Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E368BDC66
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 09:27:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD2F541693;
	Tue,  7 May 2024 07:27:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nw1X1VTUycZT; Tue,  7 May 2024 07:27:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01F34416A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715066873;
	bh=g9YDoQ90zc5unvWfopI9GhFsDwWorgVUduWjudvv0mo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W9gsYC/BNG7seVCPOvwbmldTXWGI8zI25Iq6t4VC5mND3ybSb7Dnjp+i3sic8/vvK
	 XIZSOifkEB8SXEKwoNTX8wAwoU5uJyOHWFzPoMaHCK7VXTrEXB9JV9yYvcplzzyjvT
	 WmNQJ72+sA/TUFb35yi9AcLPllTAdR1U2lsYpw4BIvFa5i+0fLDyt7vpAk67W5G9gw
	 /ugb06EXyfZX0a7hIow0LP4dIxJozfMiHSx0EzwBfAXnQ33ktTbSyP4RXwoq3P4uDL
	 XnOAQ5Fr1hCJtDzLoqoBaNooTQ3Upji+7jcle3bt2aOQG+Oh4n6EBx2gVcToTZf/ME
	 JgcHZzHCkVRRA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01F34416A0;
	Tue,  7 May 2024 07:27:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 20C131BF32C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 07:27:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A501740510
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 07:27:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yQqu3iPI-YHp for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 07:27:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=arpanax.arland@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 42DF2406A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42DF2406A1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 42DF2406A1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 07:27:48 +0000 (UTC)
X-CSE-ConnectionGUID: lrM+XJwOTwyPCkxUwcsFqw==
X-CSE-MsgGUID: iLz+UHjoQ+uDDU5F4lBk1w==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10998297"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="10998297"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 00:27:47 -0700
X-CSE-ConnectionGUID: b8QPJ17IQ1+3/qrxO5wIRg==
X-CSE-MsgGUID: XGHHBczXQNixaiXk2Fl2vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="28424980"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 May 2024 00:27:47 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 7 May 2024 00:27:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 7 May 2024 00:27:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 7 May 2024 00:27:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 7 May 2024 00:27:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kcu0BggB5IrLDj99n2n5hLHBvejhefJ7QkuEoIEpTKEdfMpwKN7AxnAXocqI9lpATSuit5q+xR9lm0+J/LWMsY60Vs1i1aO9Ihc+yBUZ9wojEsC+qf+B5JRAR0rPWfbW06jBrpCzxqabXPxq47uiPCZ250D9ntOq77m7e9ekz6PspY7EnPvN1PKKiq5X3hRINuqNNOjlyY//zVI07HubR7HC0f0XtTD91/40yzqar6/zh7gH0YpJNdQhGl3tBtoFSaVCcfHXTw7vxUPTlBHvXLrJ/B1qg4kF4u+2A0Nkl7Z8Z6Qd92HLGKnAEWNljmaDXhgG8GyzoQ7C9UsXjwt5aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g9YDoQ90zc5unvWfopI9GhFsDwWorgVUduWjudvv0mo=;
 b=T4Rx0LYKbg+jK4OksPsWM849KourfVO18JGVVuPRL+NwmNlezvMUWnHlUrM8szLMB7CptRVGfsR2uZLJL3IXgcPNfnYKucUb+AsDLQYW0+RzIlTyCnVD4zut17pmApidXa5g7uStK9rYHRuKseGmLDNEWnnwgc2u4dQrrfyouUQLPjExaUhxDDC5UbEgmG9+rtzY5Ep+KYLKf1Zkdx7YmaRXQpltiWg8egGDW6g852ivdC9KDfy2Rngo2fFnuWWDxWUdsLjVsCVBVD+0Xv4opHR0fnxbGitetqXnM/QoDT4D/km/YBL7mAVvNv8iIvFFqPAxZvsd7IFrEG9HZhIVEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by PH0PR11MB4776.namprd11.prod.outlook.com (2603:10b6:510:30::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.42; Tue, 7 May
 2024 07:27:40 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::5e9:ab74:5c12:ee2d]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::5e9:ab74:5c12:ee2d%4]) with mapi id 15.20.7544.041; Tue, 7 May 2024
 07:27:39 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: add and use roundup_u64
 instead of open coding equivalent
Thread-Index: AQHamCvDNJdTVpc7KUGUch64SMgbtrGJ7Lfg
Date: Tue, 7 May 2024 07:27:39 +0000
Message-ID: <BN9PR11MB5354AE756BB42E44675DD9DF80E42@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20240426-mirrors-iwl-v1-1-284c1d7fdc94@intel.com>
In-Reply-To: <20240426-mirrors-iwl-v1-1-284c1d7fdc94@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|PH0PR11MB4776:EE_
x-ms-office365-filtering-correlation-id: 83b1e7d4-2247-4d1c-3eaa-08dc6e672ccb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?VzNFbEQ0NmNhc1RKOTh2cG54M3RGZ2RmTGZlOEJuMURRemRlWUE5aWRRUGp1?=
 =?utf-8?B?QzBRQmZoamVqNEJDN2NyNEVjTjc3dnhLMll1Y05ocXhaVnpjOUN5VzVzRE9E?=
 =?utf-8?B?cjZzbHdDd0UzTWh5ZTN1eWNCMk1uYTUza1JaVUtqZWZRdnVFczBrcW10ekwx?=
 =?utf-8?B?dGZFbnhtZnF5WTk0NDYwZGYvOUZFVnBWVEl5U2Z2R3c2NmRJMlpKZW41OU45?=
 =?utf-8?B?ZU8xaGtSSTZDVXRGWFVVT2xzeFZ0VldOV1dWS3h3SWd3VjhuOGZJZ1B6MlpB?=
 =?utf-8?B?Ujd5cDJ3dUF4U1JXS2c1UXE0b3J3UnArcUY5bGhybG1zZWpCeVBOc21EcGtQ?=
 =?utf-8?B?QXZCQi8rYmMvMWdrczVaOFJrRHNac1l4Smg3WXErSnFPZzlieDIvcWdFY0NW?=
 =?utf-8?B?RTI0cUF4ajJ4bEFxNE1UT3RHOEoxNWR0UzlvaHFFRGRydjVNTWVUNXFLRUhN?=
 =?utf-8?B?M0UvL3FXUzZUZkI0SGZDMW5XVWh6ajRSdkp5UFBwQzBVbTMxRVovSldUV3ow?=
 =?utf-8?B?Z3BsWTV2ZnNEMHlsNXk1T0hNR2ZTcGN3UG0wQXd3WVdISUJoS3M0ZlJXRVZM?=
 =?utf-8?B?dXhlcXlmaHVNMGRtMThVQVJRVll4VVNnNS80WkY1dmkvU2llSHRoOXZZWWZh?=
 =?utf-8?B?amg1Y2dFYitVRko2NDdwMUVZbkd2c0p5SVNtNERsbGk2ZVM1QkdCQndnTkZh?=
 =?utf-8?B?M0hEbW4zWXlKV3lDQ0lHM1Y0dStBenMrWjdKNkNqYVhhdGNJL29yd2huWENn?=
 =?utf-8?B?a28vSVhzZUpUaHhsWXFHeFlnenJTOFF6UDlVT0VoRTRONzJQMlNRT2xlcFBs?=
 =?utf-8?B?NWVaMWJOTGx0aS93V2QzYjhpNUVuSnhWMnl3eDBkQVdZQnNhWEl2d3dkTTBW?=
 =?utf-8?B?MXhkVXY1cjcrUXk4VE1jTU9Xa0ViS3NFZkQyS08wQVZYN3RJcGVONVhEQmRT?=
 =?utf-8?B?MGVIK0RyZ0ZNY1pjTEdGdFZ3YjYvWmZQSEo4VzBqc1FvOEc4dExwanBIcjV3?=
 =?utf-8?B?dnoyZ21qTGV5NzBIOWhsOFlNSlgyTmZVT0xyNGNtMW1XdnVWWDN1S1ZPRTND?=
 =?utf-8?B?ZEx0Y01RSUZkMFo3R29EdjdPeFNseDR1M3lXcitjUU94SmJhdmZ4aTc0NFVt?=
 =?utf-8?B?djM5NmJrcVoyZ1UxclZDTmVuVDVzVnBGdTd6OEhlYTFWRk4rQW1WRGh4RW52?=
 =?utf-8?B?OXc3RitsM3lFdS9Jc2o4WUVjZnNIYjl6dERreW1lWHNUQjczcjZ3bWVBZE1M?=
 =?utf-8?B?OVhjMDcyRVVPZ3pVdWpRbHdvMUdCY05qalpaeWwzU3gzditmRDZtZEFmeWpD?=
 =?utf-8?B?NWhVOVlxc2hmUHU3TjQraXVULzlTQWJXSnoyZnhWeStlZ0tUcGppK0tsNWNo?=
 =?utf-8?B?dnRLYmFGRGdFcHc4VFJ0dEhPZEpuNXM2elNTZUZLelFreHhtM1doVGl4SURl?=
 =?utf-8?B?UW0wTUNEemlCc3Y4elQ4Y3VFamRBNGZOdmswQldmcTNlUTdCQm1JTUNYVEZC?=
 =?utf-8?B?QWt6bE1xTlcwUXZWSmNXNmR2RXZENCtqemRaNHlwTVllOUZoMWR1cFptMmhP?=
 =?utf-8?B?TW1rZDdsWWVJVzFsUEpaaXhramFhbWRTSEttL0xNbUVqaWI5c3pJZG9aVWpK?=
 =?utf-8?B?WHFJN0YyaVJyRGN0b29HNUQxY3lDWEJ1amp4Y0ZxaGNxMktGbXlIbU1HZWRi?=
 =?utf-8?B?Y1RaNXd4Z2FRRllWN2RGMjQ4WmFQcFlPZkp5MlNLTzU3TXFQZ2xDL29SU0JF?=
 =?utf-8?B?Q2RJRklaN0t5eERuK3NvOWsvMngxSjdQdTBxNEtMUUIvM2k3MWcwcVRtekJW?=
 =?utf-8?B?ZFJpam1MNXIreFJCL1Uxdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZXl2V0xxd3plRmVyZ0E2SmpCOXVIUDBmYzJONjN0eCtFc3cvSlFLT2NYSkh5?=
 =?utf-8?B?T0xYcVE4aW9TYTZnWlFTRWNjUjNZa2gvWGc1MkRwSXFHUWxVYTlsc2xBbnBq?=
 =?utf-8?B?SUJWODUxRStaYWFDQXByRjl1TlJUcXJBZ08vbGxpbXRjQTgvcWdFNW8vcGRn?=
 =?utf-8?B?MHZrWTNSNTkvbzc5TXNmK1lrV3NoVzc5bHdYeFVuQURzVXM3aUMyc0tVVitJ?=
 =?utf-8?B?ZTd3c2o3azVvcUFTYUFrNHNaQzd5ODdISWFRNVNBU3BtaktqVUVZT2ZFa090?=
 =?utf-8?B?VFg1bGdqLzFZL2hhY2hXNzUya3Y3aXQwUWFITXY1ZDNUejQ5YUt2RUsxbEtI?=
 =?utf-8?B?SzNoc2ZWbDhNajNad0RwMXZsam8zQmlIbUVTdDcyMjhEM1lxNUdyVGxDMTJv?=
 =?utf-8?B?WXRFcnEzZTBrWjdZd3J2N1IwNDFZRGMxcVg5cUFGa21oNm5NOUM3VFJjOTRh?=
 =?utf-8?B?UmRXY2ZkR09NWmFtWGo1YnRtMHM1QlVzMXpBMUxRQmxwejZnUlNOT0NBUnVO?=
 =?utf-8?B?amZDd1dLSTZ5NUtpMmJad2N3Wlp0UVJkMWxFNGVtd3VrTE5KcjFwSUhMUUQw?=
 =?utf-8?B?VlYrZlBoT2NmZlJwQkFDV3lhaEtkN1JGUis4RlhWUzZhUjhpSzJwb2RjUzda?=
 =?utf-8?B?TEVNN0JqOVZaN2Uyam96NlZLN0lRTEhkZVpqSVRuTEQrNEc1V3dQOGtWYnA2?=
 =?utf-8?B?MHFmMVdRMmFvOUVKMGh4dThUM2RzL0tRUS9CYytFZHlRTUhmbU9NdXN0bHVs?=
 =?utf-8?B?QjV6eWg5SUw3VTQ2eFo2clpBN290aWJjdEpIWFl4OFBOd1V1L1d3dHlOZWdj?=
 =?utf-8?B?ZGg0bWp5UHRmMFIxbkxMOVE3T09pY0RMZmlEWU10c2FYenViRVI4em9TWTM5?=
 =?utf-8?B?TUR2YVJCc2lzcjRDYzU0c0R4cytDWEJIN290SHRleGI0SWlDR2lxcEtZUCs4?=
 =?utf-8?B?Si9mL005Q1RQQnlsUzBVN2I2NzZsVWVVaUxFbHI5NHQ1aUFkOHFlU3BxQXZt?=
 =?utf-8?B?emtGb3B2c21PenpKZnBRc0NoR2RQeEcvY2xMeW55L0VUYm91a0NEaXp4SGti?=
 =?utf-8?B?ZDJKMWljeWpEU3E3NUdjRFVPMWtuMU1JUVVNSGh6dmdTbW1oR2dOamxNUDE4?=
 =?utf-8?B?K29VR3pWbTVQUXBkZkx2OGNBbDJxUjBKejB2b01WMG5raUdzaDgvdWRJWW1N?=
 =?utf-8?B?Q2w5anBXeC83aHcrYzlEUzQ2WXBCdUtVSm5xSitFQkF2bXFhY1cxNzVVTlIv?=
 =?utf-8?B?R2VhbTFLVnNnWDBhQUtJOTJSVUY5N1Nacjk1Yy8yVkhZaHVIKzVLVnNlclhp?=
 =?utf-8?B?aHd2T1JzQitqWHYzbEhVQkdXdG9WRVF4ZmZyZTFlUXA5Ui9DWE9XL0N0MkQr?=
 =?utf-8?B?d0tNamEzUndzY3JiaDAyKzY0NVQ3V2cvSndaUjM2T3Vic0ErR0wzN3hFNGRz?=
 =?utf-8?B?K0lmNDkzcy9MSEF3STlWQXhMMm5OQkVyWTlLMktvdGNnT1IyVGgyeUlwU0NK?=
 =?utf-8?B?YWF3RVhGU2hFR3FpTWphdDlydVhjYjJGeDRteUlWd2xPNmZxWjZ2cWYxSUNR?=
 =?utf-8?B?VHpOZG5iek5iN3FFWC9PY3dObXgrTzdLZVJxdThCY1FPWDVtWG1heEltZks1?=
 =?utf-8?B?R0dyYmdNZm5yYmw2SlVHcUlsckpEYmg1M1o2cFFSdGZURnJGRCtQM2YxNzdP?=
 =?utf-8?B?VnNSdjdQSi9HaUx2ZWtuazlWbTdQUlBLa3VnY3ljZU5LNEpXb29yMis4S1Rr?=
 =?utf-8?B?aTZFN0VqQlcyK2V1QzFNM2xLUElBRzJoVUhJbXBhdVRwVlNzZkx4MUF3SHRp?=
 =?utf-8?B?S2ZjOVY5eFpLUlE1MUV4cmttbllHL1ZSRmpOYVMzVlpSV0xSenJueWVMVThF?=
 =?utf-8?B?ejBDOFJveWJmcjk3VG15cGV3bUR6NFlTZnlPSk5ZUnZ2eTJtd3poZHRVY3h0?=
 =?utf-8?B?WS9zZzJZeG1MMkRBdHhQaXVNTjR5TFFrSU9LYTBIbExRbkFXUmdKMHhHbjBw?=
 =?utf-8?B?STdLMklhTUQyZXhkR1Ura2c4aWRGY0tqVDZteTZKKzZPQlEyMzlKNjZPTG1T?=
 =?utf-8?B?MEdua0dnWmI1eE0zOWJvZjhhQTlpbjVhVW5kbWZFYXNuRWdYR2NSdC9XenlW?=
 =?utf-8?Q?Yh73fbPhb09xTKuMbqBgE7DWF?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83b1e7d4-2247-4d1c-3eaa-08dc6e672ccb
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2024 07:27:39.1811 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mAbFvww+Ne6ZMMrCjR1e7d7BA16mAFIrNVJd9OvZwibNljvitZLJTb1nw0TM646s5QFuqFatVfz/3PmzkYle73xW2m5v77X87QdbWfyC1DQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4776
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715066869; x=1746602869;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g9YDoQ90zc5unvWfopI9GhFsDwWorgVUduWjudvv0mo=;
 b=b4oe38eESu5WO2aIaFQ4K77K2r+vM/8yTDEvMxqXlPc3L+yA7kgTxnxX
 d/ZiY1cXBZHmJ/bxRz4W/WPW/GSI3RMIyu5KkDVMW5OODlznGS5eqfc4E
 +GVO3lkHDgykUSaOOXoM+ATDeUU4imyMm61Kj830LGi+USqNaQfVmM652
 srtM/WiZdDsWFkDslMq5Mge09gJj/CEmDEplBUnG4pjt1qccrMilTI+th
 M5o0bikXqliFdS8PLCXoRsmCrWR3kg/LG2/ggNDNZgzL4CeuGlgzu5CY3
 U1/fJxPYurLBFizA2ciHZ03fKKrNomqsEX3dxh3OOnGEq6cGDk9YeF7pu
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b4oe38eE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: add and use roundup_u64
 instead of open coding equivalent
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogU2F0dXJkYXksIEFwcmlsIDI3LCAyMDI0IDQ6MTcgQU0NCj4gVG86IEludGVs
IFdpcmVkIExBTiA8aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+DQo+IENjOiBLZWxs
ZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IE1pY2hhbCBTd2lhdGtvd3Nr
aSA8bWljaGFsLnN3aWF0a293c2tpQGxpbnV4LmludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVs
LXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0XSBpY2U6IGFkZCBhbmQgdXNlIHJvdW5kdXBfdTY0
IGluc3RlYWQgb2Ygb3BlbiBjb2RpbmcgZXF1aXZhbGVudA0KPg0KPiBJbiBpY2VfcHRwX2NmZ19j
bGtvdXQoKSwgdGhlIGljZSBkcml2ZXIgbmVlZHMgdG8gY2FsY3VsYXRlIHRoZSBuZWFyZXN0IG5l
eHQgc2Vjb25kIG9mIGEgY3VycmVudCB0aW1lIHZhbHVlIHNwZWNpZmllZCBpbiBuYW5vc2Vjb25k
cy4gSXQgaW1wbGVtZW50cyB0aGlzIHVzaW5nIGRpdjY0X3U2NCwgYmVjYXVzZSB0aGUgdGltZSB2
YWx1ZSBpcyBhIHU2NC4gSXQgY291bGQgdXNlIGRpdl91NjQgc2luY2UgTlNFQ19QRVJfU0VDIGlz
IHNtYWxsZXIgdGhhbiAzMi1iaXRzLg0KPg0KPiBJZGVhbGx5IHRoaXMgd291bGQgYmUgaW1wbGVt
ZW50ZWQgZGlyZWN0bHkgd2l0aCByb3VuZHVwKCksIGJ1dCB0aGF0IGNhbid0IHdvcmsgb24gYWxs
IHBsYXRmb3JtcyBkdWUgdG8gYSBkaXZpc2lvbiB3aGljaCByZXF1aXJlcyB1c2luZyB0aGUgc3Bl
Y2lmaWMgbWFjcm9zIGFuZCBmdW5jdGlvbnMgZHVlIHRvIHBsYXRmb3JtIHJlc3RyaWN0aW9ucywg
YW5kIHRvIGVuc3VyZSB0aGF0IHRoZSBtb3N0IGFwcHJvcHJpYXRlIGFuZCBmYXN0IGluc3RydWN0
aW9ucyBhcmUgdXNlZC4NCj4NCj4gVGhlIGtlcm5lbCBkb2Vzbid0IGN1cnJlbnRseSBwcm92aWRl
IGFueSA2NC1iaXQgZXF1aXZhbGVudHMgZm9yIGRvaW5nIHJvdW5kdXAuIEF0dGVtcHRpbmcgdG8g
dXNlIHJvdW5kdXAoKSBvbiBhIDMyLWJpdCBwbGF0Zm9ybSB3aWxsIHJlc3VsdCBpbiBhIGxpbmsg
ZmFpbHVyZSBkdWUgdG8gbm90IGhhdmluZyBhIGRpcmVjdCA2NC1iaXQgZGl2aXNpb24uDQo+DQo+
IFRoZSBjbG9zZXN0IGVxdWl2YWxlbnQgZm9yIHRoaXMgaXMgRElWNjRfVTY0X1JPVU5EX1VQLCB3
aGljaCBkb2VzIGEgZGl2aXNpb24gYWx3YXlzIHJvdW5kaW5nIHVwLiBIb3dldmVyLCB0aGlzIG9u
bHkgY29tcHV0ZXMgdGhlIGRpdmlzaW9uLCBhbmQgZm9yY2VzIHVzZSBvZiB0aGUgZGl2NjRfdTY0
IGluIGNhc2VzIHdoZXJlIHRoZSBkaXZpc29yIGlzIGEgMzJiaXQgdmFsdWUgYW5kIGNvdWxkIG1h
a2UgdXNlIG9mIGRpdl91NjQuDQo+DQo+IEludHJvZHVjZSBESVZfVTY0X1JPVU5EX1VQIGJhc2Vk
IG9uIGRpdl91NjQsIGFuZCB0aGVuIHVzZSBpdCB0byBpbXBsZW1lbnQNCj4gcm91bmR1cF91NjQg
d2hpY2ggdGFrZXMgYSB1NjQgaW5wdXQgdmFsdWUgYW5kIGEgdTMyIHJvdW5kaW5nIHZhbHVlLg0K
Pg0KPiBUaGUgbmFtZSByb3VuZHVwX3U2NCBtYXRjaGVzIHRoZSBuYW1pbmcgc2NoZW1lIG9mIGRp
dl91NjQsIGFuZCBmdXR1cmUgcGF0Y2hlcyBjb3VsZCBpbXBsZW1lbnQgcm91bmR1cDY0X3U2NCBp
ZiB0aGV5IG5lZWQgdG8gcm91bmQgYnkgYSBtdWx0aXBsZSB0aGF0IGlzIGdyZWF0ZXIgdGhhbiAz
Mi1iaXRzLg0KPg0KPiBSZXBsYWNlIHRoZSBsb2dpYyBpbiBpY2VfcHRwLmMgd2hpY2ggZG9lcyB0
aGlzIGVxdWl2YWxlbnQgd2l0aCB0aGUgbmV3bHkgYWRkZWQgcm91bmR1cF91NjQuDQo+DQo+IFNp
Z25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiAt
LS0NCj4gQ2hhbmdlcyBzaW5jZSB2MToNCj4gKiBhZGQgRElWX1U2NF9ST1VORF9VUCBhbmQgdXNl
IGl0IGZvciBjbGFyaXR5DQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9wdHAuYyB8ICAzICstLQ0KPiAgaW5jbHVkZS9saW51eC9tYXRoNjQuaCAgICAgICAgICAg
ICAgICAgICB8IDI3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiAgMiBmaWxlcyBjaGFu
Z2VkLCAyOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPg0KDQpUZXN0ZWQtYnk6IEFy
cGFuYSBBcmxhbmQgPGFycGFuYXguYXJsYW5kQGludGVsLmNvbT4gKEEgQ29udGluZ2VudCB3b3Jr
ZXIgYXQgSW50ZWwpDQoNCg==
