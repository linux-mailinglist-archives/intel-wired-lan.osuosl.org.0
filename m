Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 636C8A4DE9D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 14:04:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C97B681EAF;
	Tue,  4 Mar 2025 13:04:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ugcYqiYKn0oy; Tue,  4 Mar 2025 13:04:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A31181EC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741093446;
	bh=9ZVp3Xy7qbjKJoTdwr/xdIsqAIRpansqVAtmdvxeY9o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sHLIyc4MoV9Nhazysfx7/u3Sxstc7KMyEpj163bq0xT7/NHAm/HtuPWn9VtalsvLZ
	 +W6o39xBTUixv4wY0Y6uDgbnCK9X3MkMrQVhGRk6ZO8YJ03UNTeubXmh48PP3reT3x
	 XvdlICVynTX/tYgvrZp6lCgFzKJOhUc2I/xjiKxiy+cXeYb9OwtdhE4dmrfXrt9q2c
	 KTrtbHKiEbqfQvPZf8K5jUII3nK7WUfnw3dx6qmRVj/zkB8hFiKFIVNtalKkD57klv
	 I+Jw+xNZCmojVRZA4xgENIb5bZldqTaIbA43LpRQpqwh5hYyrsWLyTvOZn0grNLUJc
	 mplzSOmwiaaaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A31181EC8;
	Tue,  4 Mar 2025 13:04:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C3013C5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 13:04:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B183A6077F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 13:04:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ocwDR8zzT_5l for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 13:04:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BDC1560740
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDC1560740
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BDC1560740
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 13:04:03 +0000 (UTC)
X-CSE-ConnectionGUID: w1KDPhDpRpmy91pg2QJkVQ==
X-CSE-MsgGUID: 3E2Ku8tdS1i0dHq0PObNrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42202857"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="42202857"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 05:04:03 -0800
X-CSE-ConnectionGUID: i22xiDnSTcGZBiSytVPJ+A==
X-CSE-MsgGUID: YtdvFhnpQtGHp+Cb3MZJbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119278410"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 05:04:03 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 05:04:02 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 05:04:02 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 05:03:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VrUthVolvPJySJ4cpnb9iYGrgEfU16u7vLTWVucTIwZj44GXthLzO2IL+1PGkEgt2CGLxxsSSMWGRXppuweZAmVJo+ePg6X6ArSfuR0FuHjPyvbbl2yTiW7Q3GHyn5CyLH32vPcJYtW8/Obp5rd1s1HgU2euSQ5cIgoX+5/ufJ780DS6A/IsBAV6unM2JszFOxmUh13GEOnz0/AAYiJi1W6776buzDDfSdhvLGMEFPO5qscccJ50yvM/Tixz9QE4OKiTLvwUIcYJVUsQo0L2bmoppf5GqAql/s/3CKacDoS7a0JWgUV8CC4XTGOEBu0UpEwn7Ob3GOscAqaK2Iv3kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9ZVp3Xy7qbjKJoTdwr/xdIsqAIRpansqVAtmdvxeY9o=;
 b=yusuxkiZu9l+2AKIryIjyb16UPx5hcd0jddRUde3FstrUd98cxd3gaZiHO9Aug5Wh7W/2wq80YCwPSq8C59Dib/ylFbwDOVv/N/bnKyWsN5v3itpGM3/y2b3fQcl/S5Pjx6PB5SM6OO3dX7iKfFDtrkSHQ3QB0twnNpE0t5u2ACZqXsO4FDttnnPkmHD+Ymry9HoFXE0Kqs9jUQEo2MLQaYvEGDr46UuXVI/xPRYqyhsxFovtrnQllP3e6XOrqVmJ76En1vyRwJHCSnfRs/OS2MJJEm7cLJL/uc9IJiKMyttpK0pYg4GjbN3SISbZdDgKUAs65mkK37FwBV6+hltGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by IA1PR11MB7677.namprd11.prod.outlook.com (2603:10b6:208:3fd::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Tue, 4 Mar
 2025 13:03:44 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b%4]) with mapi id 15.20.8489.025; Tue, 4 Mar 2025
 13:03:43 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 1/3] ice: remove SW side
 band access workaround for E825
Thread-Index: AQHbhF0N81pA2MzIGU26U8+PCU3Ip7NSQuyAgBC733A=
Date: Tue, 4 Mar 2025 13:03:43 +0000
Message-ID: <IA1PR11MB6219197D989E2DD57307AE8D92C82@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20250221123123.2833395-1-grzegorz.nitka@intel.com>
 <20250221123123.2833395-2-grzegorz.nitka@intel.com>
 <aecd919b-fbb8-4790-af1f-69b50cc78438@molgen.mpg.de>
In-Reply-To: <aecd919b-fbb8-4790-af1f-69b50cc78438@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|IA1PR11MB7677:EE_
x-ms-office365-filtering-correlation-id: d241b07f-99ec-4525-4d30-08dd5b1cfe3f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZzlBTFEzeklFUm52eU93Q1BtSXZDcGxvYitsdDFxSWRGb3oyZ2g3RUdrTnZL?=
 =?utf-8?B?TG1lTG4xdVErYXlLUXMrV0JxNTRsSCtsdHh4VGtDWWlZMVZ4b2lvUmhVZXJL?=
 =?utf-8?B?a3VKRW93ZWpKd1JRSWxoUGNpYTdVVUtDMEt6OXhSMVY0NWJncjg1U3hSZTF2?=
 =?utf-8?B?ZUtDNkh1Nk9UNmdGNEMxSklzQ24xcWs1THhQQTlZclZsZXl3V3JQTytEbGMv?=
 =?utf-8?B?aGxWVG1MYW5YeGgzb2krczZBT1c5UGZ3VEhXUkhrRi9PdnpGR1VPa3YwMjRz?=
 =?utf-8?B?UHRjVm02REViZXZ2RUhkeTQ1bUJTeGVYQWFsUGlCWUN1WnhDNy9BUEs2TU1i?=
 =?utf-8?B?OXZlQWMvMU01RVJ6dVZrUHl1SENkaEpUdW9PTThzUFZQcWxzLytuVGhPK1VF?=
 =?utf-8?B?bkZLUFFvb1MxcCt0NUFPUmZsVXVZaEVwa3p6YnRpSktsUG4vTzQvZ3JpL05p?=
 =?utf-8?B?dzVJWW9xUFM0TVE5NkM0SWtaVGl6NlFkSXdPOXNvNXVuYXNzUjJzalljOVVK?=
 =?utf-8?B?ZTZTR3d4emhDcjBQc29MTVJ3czRKWTBSZTFNeWdTbTJVMmpoTjk3a1M2U3Jo?=
 =?utf-8?B?TS9vUVMwN1d2WXAzNXpLM09SK21YSDBtZWcxVzJzbzVMOUtjV01RMTVwVWNi?=
 =?utf-8?B?WkVvNndJc3pZb1h6a1pudXAxSGFDNjJWdkE5dEdPWEVQdTV2dnQ1akdIZFl6?=
 =?utf-8?B?WWNiZVJpbjdRZmU5UVF1T0xydCtIN281N2RwalZjUy9UcUhIU1ZVbkttOVVV?=
 =?utf-8?B?Z1RsNDIyMkR6aW1peEpMQ01kbm14Tk5wTzcyOEpBQm5lak1LNmREN09kY0F0?=
 =?utf-8?B?b1B5YjlZR1dMTjFrRVRtcnQ0bGY0V0lNeUJDL1N6eXhMbXhsOEloRG1MRmRk?=
 =?utf-8?B?WWtlR3Z5OHNPQ1FwNUFSUGVRUktkWDVFbG90Nlk3M0NxVGl3a2NRTnhIUzJx?=
 =?utf-8?B?bEo2OEJYaVRVcjVodnRrWHhFSnR5NUlneXdSWUFCbW1xRE01bS8zemt0R0Q0?=
 =?utf-8?B?R3VpWHhIUkI3SXlyM3cwQks1R3Z1NjNSREF0UnBqSHVDZ3diYXEzSjE4V3Z3?=
 =?utf-8?B?TjQzaXZIY0dRNnlRRFZ5MXExYThlNWxmYkxmc0hsc2pwMDJRM0dXQnk1c25K?=
 =?utf-8?B?aVJMWHFnaHVMb2ppMDJpTGpQL0xMcHhwb3I1RENWNnE0azNwVG92d1RTS1FR?=
 =?utf-8?B?cHVzQ3B3emNYdWVrRy95cUhqUjg5YWxWQktYVFhvOHBWVEF3bDVoS3Q5TUx3?=
 =?utf-8?B?Y283WXJoeXI0SE5sQ3VHT1lBU2VYa21ZdEZjbGNBT3hRaFRFRkhoNXZ2ZnhT?=
 =?utf-8?B?enNqQXhOZW5VQ1pzTWpqYU5JeXdBaUVLb2xyNEFkYTR1c3JhWTV4TVMwdUsz?=
 =?utf-8?B?TXc0Z1NQdks1TzhucG1RZFcwVDhpTlFYYXkyNmF1L1ZqSlJlU1JhR3Q5a3FM?=
 =?utf-8?B?WVV6M2htZlh1WFplUEtnZS9NeTViTkJ6eXgySU12ZG5vV25TZE1GdnM4Smt5?=
 =?utf-8?B?d3hTcWRlNnp3ZkhYWmU5NGNralFlcXExeHJsWExQeWlMblZLNFp4RjZjRzJz?=
 =?utf-8?B?UXdMM0JBUmRGcFU2T3M3akJ0TmtkNlZZVWt0cERnQlN6YnBYTU5UUzYySitw?=
 =?utf-8?B?OTdoRHk4Vm9UMGJRQ1lDaThGUHNzdHZlVWRxMHFBSTRkVXMzMExlUzJ2MmZS?=
 =?utf-8?B?ZjhXMW1jS2NYWjdWWUNYZlBDellER0tVeWtFMm1pMFFPTkpnMkNSWFVDSzJX?=
 =?utf-8?B?ZUFiTDM5TlpIeHVjNHpDNHU4clI5ci9WQjMxeVNNT2ppT05BV1UyaVVSSFpZ?=
 =?utf-8?B?SVNuVzRQY2Z4TjNrU2wrMG54b2N5NjQ1aXFoa0pKK3ZFQ2lTanEwM3Z3Y0VD?=
 =?utf-8?B?K1VZRVdPMmtoazNSRVRZMVhCa2VOTEx4RDJ6cFNzdFQxNTlyMGJQZTZyUG9B?=
 =?utf-8?Q?TQEbiHgYFfiIuSjFPaIxkLpUkd7lhDa5?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a0svWEJTbjdlK3Vzd0pnSkJrb25OV2lzc1VDSEJWV2JhMENISVg0MnBodFY4?=
 =?utf-8?B?K28yK3QrTjhFUjFxcFQzTU5hU1ZmTmJQZm9MOE1nd1A2aHBLalNpY0xNQVVp?=
 =?utf-8?B?bXFRTmUzMnZ0ZjROSFBXVEUvOS9UNVNGNDJCRENhMFA5ZmRQSDlkT2gwRlU0?=
 =?utf-8?B?SktGL3NBWjNOekNrZjdlQUdEYlpYNk81bWx4ZDNUN2JFU0JUaDh4N2tUOGpk?=
 =?utf-8?B?RkZEcnViV0ZpU1JEQUcxZkVPMzk3WlZhWkJhL2hQVUZBWlcyMkpqYVBYTURD?=
 =?utf-8?B?YVdQT2o5VXc3SDlmMW9ZVlVZUE9aQ010V3AwMkxzTUorYnkwaytsZ0lxSWhD?=
 =?utf-8?B?Q0RBVXkySDEvUkMrTVE5bWhKVGZCK1NadDZLdHBpS0cwL3RhUFFmN1Z1SjdV?=
 =?utf-8?B?QmJ3Q0RqTlF0SXZid2kzeVA3UGJBTUVROWVld3hkZjJ2SUM3NUF2b1hSODNY?=
 =?utf-8?B?UUVjWGE5WW12TFFoMkdCSW1PRGk2bWhpQ0xZYmNuRlEyVXN4YlYvblUxV2Fp?=
 =?utf-8?B?bEQxNXRhc0hSSkZPNHVEME5VT2xlU2ViU0o3dlZqU2xxSm1nL01Bbzc5dmh4?=
 =?utf-8?B?d3lvWHZzRzRoNFRNVUNaeXkyTjF3ZnVBak8yNFVwWEdCZmR0Wk10YVhSdXBs?=
 =?utf-8?B?WWo5N3JtTnAvM3p5TGtkTTgzNmZIdkZ2YTFya1RzSGRtWitGaEpINGduUUlZ?=
 =?utf-8?B?N0xpdkZUMEdnSmJjSmFLdVU2cXRVdHJERzJFbUhSdGl1Z2c3cEw4UTQyRGpm?=
 =?utf-8?B?V0VYcWFUOTBZdHZxdEtmTmwxdWZjZE9IYnRSNHoxb1VXRE9oZ3lpblRRZy8r?=
 =?utf-8?B?Z1lFQVYyUHdpL0pDaGFORzcrZ1J6K3lranB2ZGVnTmsrZ1lCMDcvczhvUDM5?=
 =?utf-8?B?eW95WXdmTUFNT1hrOHBJRitYNDRGRDFzM09tRGEwa0ZCOWxTMTVTS2VudjNH?=
 =?utf-8?B?a2dEbEUvVWtUV01saFNKeUdzOG1oeE9tSWhjSVE5UTVTaXhVci9MdDVLRVBi?=
 =?utf-8?B?b0drSlBKcExtVnhSRGVZL2M0d0lUaXNSMGdrQ3NFVkVhR1RHMlozNVlpNU01?=
 =?utf-8?B?VXFFa1JXOGc1SmV3VmVNc2pGOUwxZGhqOUFJT3FpNjJlZDl4cTViK3NTdFI0?=
 =?utf-8?B?MzVhclpFejVtWXU4UWwrakdmNkxyOEZNQ3NPTlRZRnBYZ09nUWMzeVdJT0Ni?=
 =?utf-8?B?djRER3IrT0FnaHp2Y1htUXZ4RjVuK2xPaThZKzdYMFpHbm1sQ3JmUFQ5L2ZV?=
 =?utf-8?B?U2tYUVNSWUdQcDVzak5mUnN6UlhtSnpmTllSdEZNb3pDVE1kTEdpeFk2UVc4?=
 =?utf-8?B?OXJtakxIbGtvQXhyYTBxUzZOMS9yem14bDFqUlRyczVVa2o4amRrcFByK3hJ?=
 =?utf-8?B?eFpLOVBScCtNdTFkQWNmb3FQcjhVK3NtbHNxMzl3cnRmSnArMUt1bXppSjhj?=
 =?utf-8?B?b1M2cy9VdnByNEEyaUVGeUtoR1V4UE5UR3FXMjh2b2FES0pSbnFhK3NOdGdF?=
 =?utf-8?B?MmdtcnV1dXZ4OU1KZ29oV0R0NkpaUHlTUGpiYkNYMVFhN291azUzN2tQZ2xu?=
 =?utf-8?B?OC9nQk14M1RqZDhwR3diMDdhcWZOdk0yNit6dzRsUlFyZ0pNL2ZQQ2lDN3VC?=
 =?utf-8?B?L2FTNnpKY1hzaW9KZXg0WE9qQU9uR3Bnd3k5UG1CM3ltK2w1bmV4eCtQdity?=
 =?utf-8?B?TWIzMUZCSm0yU2tFMlhXQUVQZUFSZnRYNC9BeldoY2pnd3o4TlVIaFplOCtx?=
 =?utf-8?B?NUczVlVxd0pRUzMvQmg5OUhBSWJJT3liY3gvN0xaaVlaaVRHcmF3eVZZTjY4?=
 =?utf-8?B?SFg2NEdTSFphTjlEZlp1VlhrdGk3UXJwWVIvdUtGM0NNNFp4Q29UcVFRcmhu?=
 =?utf-8?B?QUpWTFE5Q1ZWN0FNckx5dnNydlRmbWxyd2pRMWduQ2FaMkd4VXBjYUphWXRt?=
 =?utf-8?B?Y3pKZytEWHB6Tm9CVmZNaHRvbWtJcDVpaFpXNnRLYkN4dDFOaDZnZ21xZTgx?=
 =?utf-8?B?Zm5wbExoSnVuQ00zVlc2QjdGalpEeTJLMytoN2dUdE1FNkRNaXQxaDhLSVZB?=
 =?utf-8?B?UHlXTi8xU094M044dmRpMHUxQWdtZmt4SlBuWXVRTVg1alhGNHF5NVNKN21x?=
 =?utf-8?Q?riB+Db4Hu6FeNbfK02ejPqXff?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d241b07f-99ec-4525-4d30-08dd5b1cfe3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 13:03:43.8978 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZgZitK7G17fstgJCYFhLd1p9BceIpSC6thld+wlQhXVBCLArqxqVo9osFV2teE1mE7PyhBfKPwxdAvcveZRLRExMko7WrFIPN8augumwfxw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7677
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741093444; x=1772629444;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9ZVp3Xy7qbjKJoTdwr/xdIsqAIRpansqVAtmdvxeY9o=;
 b=TL2lCkHbFR0IkYajbfjCynZhUzMA3GKT1IRKb6ou0h/nTC+5jmAw4IkB
 jW8AJ9dJaQykrR5HQsk7MRs/G8Js1QHzbPt0ayAF09BWGcFJYcVbqX8Io
 Ex5tSIIq/AMVoz9/FA7Ov7oragX/XTXwZpBtOuj7tN5CBLZ1v57+E+H3i
 Zu5JBZ8hBft6VN8DEPS+CMVXqlg6dQ9GBm8JNDvmo4X+/80ajLqN9eKCg
 vdhjERKjKw6Z6MZdgQYCax1++k08xLa22m2JKej4IFZCWggf6hVInKJvO
 3FCFH9R4LGO3Q73EugQIDdws5cR2DWR519FRWS+b70ceW5Tn+4h3mC9/2
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TL2lCkHb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] ice: remove SW side
 band access workaround for E825
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
bEBtb2xnZW4ubXBnLmRlPg0KPiBTZW50OiBGcmlkYXksIEZlYnJ1YXJ5IDIxLCAyMDI1IDEwOjE2
IFBNDQo+IFRvOiBOaXRrYSwgR3J6ZWdvcnogPGdyemVnb3J6Lm5pdGthQGludGVsLmNvbT47IEtv
bGFjaW5za2ksIEthcm9sDQo+IDxrYXJvbC5rb2xhY2luc2tpQGludGVsLmNvbT4NCj4gQ2M6IGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBL
aXRzemVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgTWlj
aGFsIFN3aWF0a293c2tpDQo+IDxtaWNoYWwuc3dpYXRrb3dza2lAbGludXguaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHYxIDEvM10g
aWNlOiByZW1vdmUgU1cgc2lkZQ0KPiBiYW5kIGFjY2VzcyB3b3JrYXJvdW5kIGZvciBFODI1DQo+
IA0KPiBEZWFyIEdyemVnb3J6LCBkZWFyIEthcm9sLA0KPiANCj4gDQo+IFRoYW5rIHlvdSBmb3Ig
eW91ciBwYXRjaC4NCj4gDQo+IEFtIDIxLjAyLjI1IHVtIDEzOjMxIHNjaHJpZWIgR3J6ZWdvcnog
Tml0a2E6DQo+ID4gRnJvbTogS2Fyb2wgS29sYWNpbnNraSA8a2Fyb2wua29sYWNpbnNraUBpbnRl
bC5jb20+DQo+ID4NCj4gPiBEdWUgdG8gdGhlIGJ1ZyBpbiBGVy9OVk0gYXV0b2xvYWQgbWVjaGFu
aXNtICh3cm9uZyBkZWZhdWx0DQo+ID4gU0JfUkVNX0RFVl9DVEwgcmVnaXN0ZXIgc2V0dGluZ3Mp
LCB0aGUgYWNjZXNzIHRvIHBlZXIgUEhZIGFuZCBDR1UNCj4gPiBjbGllbnRzIHdhcyBkaXNhYmxl
ZCBieSBkZWZhdWx0Lg0KPiANCj4gSeKAmWQgYWRkIGEgYmxhbmsgbGluZSBiZXR3ZWVuIHRoZSBw
YXJhZ3JhcGhzLg0KPiANCj4gPiBBcyB0aGUgd29ya2Fyb3VuZCBzb2x1dGlvbiwgdGhlIHJlZ2lz
dGVyIHZhbHVlIHdhcyBvdmVyd3JpdHRlbiBieSB0aGUNCj4gPiBkcml2ZXIgYXQgdGhlIHByb2Jl
IG9yIHJlc2V0IGhhbmRsaW5nLg0KPiA+IFJlbW92ZSB3b3JrYXJvdW5kIGFzIGl0J3Mgbm90IG5l
ZWRlZCBhbnltb3JlLiBUaGUgZml4IGluIGF1dG9sb2FkDQo+ID4gcHJvY2VkdXJlIGhhcyBiZWVu
IHByb3ZpZGVkIHdpdGggTlZNIDMuODAgdmVyc2lvbi4NCj4gDQo+IElzIHRoaXMgY29tcGF0aWJs
ZSB3aXRoIExpbnV44oCZIG5vIHJlZ3Jlc3Npb24gcG9saWN5PyBQZW9wbGUgbWlnaHQgb25seQ0K
PiB1cGRhdGUgdGhlIExpbnV4IGtlcm5lbCBhbmQgbm90IHRoZSBmaXJtd2FyZS4NCj4gDQo+IEhv
dyBkaWQgeW91IHRlc3QgdGhpcywgYW5kIGhvdyBjYW4gb3RoZXJzIHRlc3QgdGhpcz8NCj4gDQo+
ID4gUmV2aWV3ZWQtYnk6IE1pY2hhbCBTd2lhdGtvd3NraSA8bWljaGFsLnN3aWF0a293c2tpQGxp
bnV4LmludGVsLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTogUHJ6ZW1layBLaXRzemVsIDxwcnplbXlz
bGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEthcm9sIEtvbGFjaW5z
a2kgPGthcm9sLmtvbGFjaW5za2lAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEdyemVn
b3J6IE5pdGthIDxncnplZ29yei5uaXRrYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5jIHwgMjMgLS0tLS0tLS0tLS0t
LS0tLS0tLS0tDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMjMgZGVsZXRpb25zKC0pDQo+IA0KPiAN
Cj4gS2luZCByZWdhcmRzLA0KPiANCj4gUGF1bA0KPiANCj4gDQoNCkRlYXIgUGF1bCwgZmlyc3Qg
b2YgYWxsIHRoYW5rIHlvdSBmb3IgeW91ciByZXZpZXcgYW5kIGFwb2xvZ2l6ZSBmb3IgbGF0ZQ0K
cmVzcG9uc2UgKHNpbXBseSwgSSB3YXMgb3V0IHByZXZpb3VzIHdlZWspLg0KDQpSZW1vdmluZyB0
aGF0IHdvcmthcm91bmQgd2FzIGEgY29uc2Npb3VzIGRlY2lzaW9uLg0KUmF0aW9uYWxlIGZvciB0
aGF0IGlzLCB0aGF0IHRoZSAncHJvYmxlbWF0aWMnIHdvcmthcm91bmQgd2FzIHByb3ZpZGVkDQpp
biB2ZXJ5IGVhcmx5IHByb2R1Y3QgZGV2ZWxvcG1lbnQgc3RhZ2UgKH4geWVhciBhZ28pLiAgTm93
LCBlc3BlY2lhbGx5DQp3aGVuIEU4MjUtQyBwcm9kdWN0IHdhcyBqdXN0IG9mZmljaWFsbHkgYW5u
b3VuY2VkLCB0aGUgY3VzdG9tZXIgc2hhbGwNCnVzZSBvZmZpY2lhbCwgYXBwcm92ZWQgU1cgaW5n
cmVkaWVudHMuDQoNCkhlcmUgYXJlIG1vcmUgZGV0YWlscyBvbiB0aGlzOg0KLSBpbnRyb2R1Y3Rp
b24gdG8gRTgyNS1DIGRldmljZXMgd2FzIHByb3ZpZGVkIGluIGtlcm5lbCA2LjYsIHRvIGFsbG93
DQogIHNlbGVjdGVkIGN1c3RvbWVycyBmb3IgZWFybHkgRTgyNS1DIGVuYWJsZW1lbnQuIEF0IHRo
YXQgdGltZSBFODI1LUMNCiAgcHJvZHVjdCBmYW1pbHkgd2FzIGluIGVhcmx5IHBoYXNlIChraW5k
IG9mIEFscGhhKSwgYW5kIG9uZSBvZiB0aGUNCiAgY29uc2VxdWVuY2VzLCBmcm9tIHRvZGF5J3Mg
cGVyc3BlY3RpdmUsICBpcyB0aGF0IGl0IGluY2x1ZGVkICd1bndhbnRlZCcNCiAgd29ya2Fyb3Vu
ZHMgbGlrZSB0aGlzLg0KDQotIHRoaXMgY2hhbmdlIGFwcGxpZXMgdG8gRTgyNS1DIHByb2R1Y3Rz
IG9ubHksIHdoaWNoIGlzIFNvQyBwcm9kdWN0LCBub3QNCiAgYSByZWd1bGFyIE5JQyBjYXJkLiAg
V2hhdCBJJ2QgbGlrZSB0byBlbXBoYXNpemUgaGVyZSwgaXQgcmVxdWlyZXMgZXZlbiBtb3JlDQog
IGN1c3RvbWVyIHN1cHBvcnQgZnJvbSBJbnRlbCBjb21wYW55IGluIHRlcm1zIG9mIHByb3ZpZGlu
ZyBtYXRjaGluZw0KICBTVyBzdGFjayAobGlrZSBCSU9TLCBmaXJtd2FyZSwgZHJpdmVycyBldGMu
KS4NCiAgDQpJIHNlZSB0d28gcG9zc2liaWxpdGllcyBub3c6DQoxKSBpZiB0aGUgcmVncmVzc2lv
biBwb2xpY3kgeW91IG1lbnRpb25lZCBpcyBpbnZpb2xhYmxlLCBrZWVwIHRoZSB3b3JrYXJvdW5k
DQogICBpbiB0aGUga2VybmVsIGNvZGUgbGlrZSBpdCBpcyB0b2RheS4gTWF5YmUgd2UgY291bGQg
YWRkIE5WTSB2ZXJzaW9uIGNoZWNrZXINCiAgIGFuZCBhcHBseSByZWdpc3RlciB1cGRhdGVzIGZv
ciBvbGRlciBOVk1zIG9ubHkuDQogICBCdXQsIGluIG15IG9waW5pb24sIGl0IHdvdWxkIGxlYWQg
dG8ga2VlcGluZyBhIGRlYWQgY29kZS4gVGhlcmUgc2hvdWxkbid0IGJlDQogICBvZmZpY2lhbCBG
VyAoSSBob3BlIEkgd29uJ3QgcmVncmV0IHRoZXNlIHdvcmRzKSBvbiB0aGUgbWFya2V0IHdoaWNo
IHJlcXVpcmVzDQogICB0aGlzIHdvcmthcm91bmQuDQogIA0KMikgcmVtb3ZlIHRoZSB3b3JrYXJv
dW5kIGxpa2UgaXQncyBpbXBsZW1lbnRlZCBpbiB0aGlzIHBhdGNoIGFuZCBpbXByb3ZlDQogICBj
b21taXQgbWVzc2FnZSB0byBjbGFyaWZ5IGFsbCBwb3RlbnRpYWwgZG91YnRzL3F1ZXN0aW9ucyBm
cm9tIHRoZSB1c2VyDQogICBwZXJzcGVjdGl2ZS4NCg0KV2hhdCdzIHlvdXIgdGhvdWdodHM/DQoN
CktpbmQgcmVnYXJkcw0KDQpHcnplZ29yeg0KDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3B0cF9ody5jDQo+ID4gaW5kZXggODliYjg0NjEyODRhLi5hNWRmMDgx
ZmZjMTkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9wdHBfaHcuYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
cHRwX2h3LmMNCj4gPiBAQCAtMjYzMCwyNSArMjYzMCw2IEBAIGludCBpY2Vfc3RhcnRfcGh5X3Rp
bWVyX2V0aDU2ZyhzdHJ1Y3QgaWNlX2h3DQo+ICpodywgdTggcG9ydCkNCj4gPiAgIAlyZXR1cm4g
MDsNCj4gPiAgIH0NCj4gPg0KPiA+IC0vKioNCj4gPiAtICogaWNlX3NiX2FjY2Vzc19lbmFfZXRo
NTZnIC0gRW5hYmxlIFNCIGRldmljZXMgKFBIWSBhbmQgb3RoZXJzKSBhY2Nlc3MNCj4gPiAtICog
QGh3OiBwb2ludGVyIHRvIEhXIHN0cnVjdA0KPiA+IC0gKiBAZW5hYmxlOiBFbmFibGUgb3IgZGlz
YWJsZSBhY2Nlc3MNCj4gPiAtICoNCj4gPiAtICogRW5hYmxlIHNpZGViYW5kIGRldmljZXMgKFBI
WSBhbmQgb3RoZXJzKSBhY2Nlc3MuDQo+ID4gLSAqLw0KPiA+IC1zdGF0aWMgdm9pZCBpY2Vfc2Jf
YWNjZXNzX2VuYV9ldGg1Nmcoc3RydWN0IGljZV9odyAqaHcsIGJvb2wgZW5hYmxlKQ0KPiA+IC17
DQo+ID4gLQl1MzIgdmFsID0gcmQzMihodywgUEZfU0JfUkVNX0RFVl9DVEwpOw0KPiA+IC0NCj4g
PiAtCWlmIChlbmFibGUpDQo+ID4gLQkJdmFsIHw9IEJJVChldGg1NmdfcGh5XzApIHwgQklUKGNn
dSkgfCBCSVQoZXRoNTZnX3BoeV8xKTsNCj4gPiAtCWVsc2UNCj4gPiAtCQl2YWwgJj0gfihCSVQo
ZXRoNTZnX3BoeV8wKSB8IEJJVChjZ3UpIHwgQklUKGV0aDU2Z19waHlfMSkpOw0KPiA+IC0NCj4g
PiAtCXdyMzIoaHcsIFBGX1NCX1JFTV9ERVZfQ1RMLCB2YWwpOw0KPiA+IC19DQo+ID4gLQ0KPiA+
ICAgLyoqDQo+ID4gICAgKiBpY2VfcHRwX2luaXRfcGhjX2U4MjUgLSBQZXJmb3JtIEU4MjUgc3Bl
Y2lmaWMgUEhDIGluaXRpYWxpemF0aW9uDQo+ID4gICAgKiBAaHc6IHBvaW50ZXIgdG8gSFcgc3Ry
dWN0DQo+ID4gQEAgLTI2NTksOCArMjY0MCw2IEBAIHN0YXRpYyB2b2lkIGljZV9zYl9hY2Nlc3Nf
ZW5hX2V0aDU2ZyhzdHJ1Y3QNCj4gaWNlX2h3ICpodywgYm9vbCBlbmFibGUpDQo+ID4gICAgKi8N
Cj4gPiAgIHN0YXRpYyBpbnQgaWNlX3B0cF9pbml0X3BoY19lODI1KHN0cnVjdCBpY2VfaHcgKmh3
KQ0KPiA+ICAgew0KPiA+IC0JaWNlX3NiX2FjY2Vzc19lbmFfZXRoNTZnKGh3LCB0cnVlKTsNCj4g
PiAtDQo+ID4gICAJLyogSW5pdGlhbGl6ZSB0aGUgQ2xvY2sgR2VuZXJhdGlvbiBVbml0ICovDQo+
ID4gICAJcmV0dXJuIGljZV9pbml0X2NndV9lODJ4KGh3KTsNCj4gPiAgIH0NCj4gPiBAQCAtMjc0
Nyw4ICsyNzI2LDYgQEAgc3RhdGljIHZvaWQgaWNlX3B0cF9pbml0X3BoeV9lODI1KHN0cnVjdCBp
Y2VfaHcNCj4gKmh3KQ0KPiA+ICAgCXBhcmFtcy0+bnVtX3BoeXMgPSAyOw0KPiA+ICAgCXB0cC0+
cG9ydHNfcGVyX3BoeSA9IDQ7DQo+ID4gICAJcHRwLT5udW1fbHBvcnRzID0gcGFyYW1zLT5udW1f
cGh5cyAqIHB0cC0+cG9ydHNfcGVyX3BoeTsNCj4gPiAtDQo+ID4gLQlpY2Vfc2JfYWNjZXNzX2Vu
YV9ldGg1NmcoaHcsIHRydWUpOw0KPiA+ICAgfQ0KPiA+DQo+ID4gICAvKiBFODIyIGZhbWlseSBm
dW5jdGlvbnMNCg==
