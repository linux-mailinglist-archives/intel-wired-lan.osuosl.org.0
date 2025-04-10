Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F17A8447C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 15:18:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5437A60BF3;
	Thu, 10 Apr 2025 13:18:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rf-HLqJJmJjB; Thu, 10 Apr 2025 13:18:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A024D60DF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744291109;
	bh=UKgUG6t8rHtcRbKo+/FPuG9Hd/St5u1vVLv3L5qKO00=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0B4Px4Kr91w8V4xWwa9LylqJnmaab/1hL7kVtbCjuUVrDJLvOmbOJL1IPRhmJ2MHx
	 /JZx2Vh2vhOXw3UxPPMnZ+wcVXuy0aLYUFP2TkLa168k/+DjdhYFmjPp8v5SkvQr6F
	 FJag+lb549gnrpFmU84o2XC+sHxUivrsLrsD55exeS2Jv8a+WyzlG3UBlQ7Oq6f8HO
	 xOwiKBMjDVd2GzuLYs79DJiqfjcJCH9tWzxmBAwPm2MrtyYPirrpztxUFsBf+naHK1
	 3qCHjlbtU2aMG6Zkn2g1km7Pw1AOZz2gc1HR5nz3KmAaafYUigopCWhUgVs2BvTkkb
	 s2xfgWZkvFUlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A024D60DF9;
	Thu, 10 Apr 2025 13:18:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A573108
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:18:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 602A041420
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:18:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id egmfA7qyWkT6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 13:18:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 76D474144D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76D474144D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76D474144D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:18:27 +0000 (UTC)
X-CSE-ConnectionGUID: 9FpAk2EKRCehZ7ZyPbI3Gw==
X-CSE-MsgGUID: BAW05D00QMqvQkKI7SLXdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="63205512"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="63205512"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 06:18:18 -0700
X-CSE-ConnectionGUID: t80EayuTR0egYFgi9S1p2Q==
X-CSE-MsgGUID: 1ZGK4eq2SZWGF3oPYp+5uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="134018337"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 06:18:15 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 06:18:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 06:18:14 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 06:18:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JXrZn+DZkaEowrRjQv1fEl/4inbw8Hp5pjCdtE2MXSjy4QdAZRVXHqo4ooG+9P5hJjIsrRtUrz5XO709ETLPHPAvjXgmKynsEpxySbt+G2q+K3qW9wwSfYb77ScLYqiK5/XpXyrLS4Onix5lI0Aj0W44dYx4xaDRMlgyiA40V/ZiBMzyZvh83I6oZy5OW5Ne8pe8fXbwcILdcu9j4W0GoTmCpoFpuOZNdhmjP/kw9IGALdSQFgHO+nfMJpSRsS4BgPxEgwl3koJB2mlDxx0P32v5wTLzf++zGjFC2ld1XQVr5e18n06TU/eGq6fy2KTDdLVfQS0n2O6f5Ut3rmKp9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UKgUG6t8rHtcRbKo+/FPuG9Hd/St5u1vVLv3L5qKO00=;
 b=ngwFjy1E7ZnyrLxa2DJ0+nl8LQOdqji0SabOUOLfRTndKZH/8ovichQOkTr4FoVTnu1bRnI7ITRfA8ceeE8yZiUEm6gWueQzX4q3hdWtkUIbcJunTGVCVb1tN31J3ZH9R97o+0IwTeo+Gg8XRLXHnA4SmNaAvyHZ/slEV/1ahvNb+P7Oz1ldp4/ytZ6epCokzn0NF1jwL1rTWrOY5ggLB0Ij1V5nZdYqwnnAh3e7ZnQIiei8l3LiGWOHiDlw3ZcNdF7gxSJN8lT+Ee9RQ5yo7VA1y4Y1vQawRpBsdZXybUWT9A7994hZOp19DSiOypFJ1/TsqjzM+THu46soI6mwOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5889.namprd11.prod.outlook.com (2603:10b6:303:168::10)
 by PH8PR11MB6901.namprd11.prod.outlook.com (2603:10b6:510:22a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.22; Thu, 10 Apr
 2025 13:18:11 +0000
Received: from MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073]) by MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073%3]) with mapi id 15.20.8632.017; Thu, 10 Apr 2025
 13:18:11 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, Willem de Bruijn <willemb@google.com>, "Mina
 Almasry" <almasrymina@google.com>, "Salin, Samuel" <samuel.salin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v10 iwl-next 03/11] virtchnl: add PTP
 virtchnl definitions
Thread-Index: AQHbqHKLDZhvMZzjoEqp31HJrhXBtrOaROAAgADyVmCAAG2oAIABPzEQ
Date: Thu, 10 Apr 2025 13:18:10 +0000
Message-ID: <MW4PR11MB5889E7654BA9FFF0075FD2558EB72@MW4PR11MB5889.namprd11.prod.outlook.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-9-milena.olech@intel.com>
 <754e6414-cbee-4216-9fe9-36c468d01244@intel.com>
 <MW4PR11MB5889CBA3909D6C877DA20CF48EB42@MW4PR11MB5889.namprd11.prod.outlook.com>
 <9462eda6-1b99-4b9d-80f7-727ddd040ad7@intel.com>
In-Reply-To: <9462eda6-1b99-4b9d-80f7-727ddd040ad7@intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5889:EE_|PH8PR11MB6901:EE_
x-ms-office365-filtering-correlation-id: 9af2b841-fc11-4722-4fce-08dd7832246a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MDVOZ0taMHp5NUpXSkI3eDljbEJmTzNCR3lhWlJyVGsrVWFrMDA5VjNTVVdN?=
 =?utf-8?B?MG1kL2lrNHpuTkRWc1VkeGxjZEhRT0Z3cWtmMGVGYW00d1ZJWC9FbjltOWxG?=
 =?utf-8?B?Y1hQRURwandxaXJjUkUxVG9wWkxUdVNiUFZoSkNrZlhJZ0FBVEpTSzNlNXRC?=
 =?utf-8?B?amV0S0t0L3dBaGdkSUVPVDg4SFl1Y3I2bk5HdzFVdHp3bDB1YTdCeFFwbER4?=
 =?utf-8?B?RTdzd0RWeTFwRnpkRmZCVGRRKzVyWW9FRGZ6UmlzV0pkSlAwbGEwT2dTOTBP?=
 =?utf-8?B?N0tZOERxeHhhMXJOVHhveVJPcEZlMEgzSnVJSC81UUFsT0p3dEFUOVFLaldt?=
 =?utf-8?B?d1MyV2k1RnRlMUwzckFPZVY3RGRCZlZZQVdncU5SVUdJbDJHd2IrS3djanI4?=
 =?utf-8?B?UlRYL1ZOKzQ0amkrRkdwR2JUQlU1dEhyeVFRR09kVkpsTlpZQjA3aWVEWVpC?=
 =?utf-8?B?UHdIckZGdGg2YXc3MXdRUkVGQnFjVXlYeGIxMjRWMWJhN2lnZWZYU2IxV2Jz?=
 =?utf-8?B?MzJIdGpnZGNPVFlDeDNOVG8veG1BajBYRkdSWVJrYlBRUmU1VTkyTzZEbkxC?=
 =?utf-8?B?djV6STZJV1Bvb3NqS0F6ZjZTVlJMU3pxV01KYmIrTitTZ0FJZ0prUVpDWE0y?=
 =?utf-8?B?NVJYR2F2U29TS09hdDI0VGdJWjBRb2pUdThsWU9BdVNkaFFDNHJPNlI4ZmNP?=
 =?utf-8?B?RHZDZjAvSGVScVcxaGxxd1o3aDlXUGswcHF5SkNObWVJVDFpTWhGOXNJTHdL?=
 =?utf-8?B?enZSSXlkSnFvUktwQjRPWnZLaG5JNmxlUXI3V1JnRVQwa2wrZGI2TjRKZDJ1?=
 =?utf-8?B?eFVaS1NBbDN1KytuN0E5MTJoaVB0ZFFjdkx2TklFdE5oRDVsOWs4NTRQdXBY?=
 =?utf-8?B?bjJ6ajZyWHNKZ0tVR1ZoUHBDeFZSSUwyQXg1OEU3enZzMGVnYjU2dDVQQzFt?=
 =?utf-8?B?cVNlc0lRRkw1Wit3UE5kMi80NUc3ZG9sVkFPbDB6bVFNeEZWdExmN2lxSGda?=
 =?utf-8?B?NmdKbGpaSHJOM2lRNmlpTVFhTmpnc1htSXl4TXhOelQvRFFEMitXdnRlWjhP?=
 =?utf-8?B?NlNxNnVzdGdJSVNHT1ovWlBzNFJIN1hIOEJwQURYSkJKL0lxSmw1OTVhZmdy?=
 =?utf-8?B?SXVmY29VMklIb1hMMmVVcUZQcktVMXVhaFZqNEVlT3Iwb0VmamhIM3JjcE82?=
 =?utf-8?B?cVJLeEhzR3NIcHJPYTNhcmZ4bHRKTGplcEd6Vks4Uzc1Mm0xdW9EeTNVbTZB?=
 =?utf-8?B?TW9jNklDanFDWThmK29uNFVPdWxuQ2x6cmYvbExydXM4cmZUTFhDUDgrWFhw?=
 =?utf-8?B?Wko5VFFMSnlSemUwUlAxKzFNZjhTVXgxaktmcDgrNm1QMjh2MFBIQ08xdEVm?=
 =?utf-8?B?ZzVLa1JRdlhWODFhelBkSEFtbEQ5SHRnVS84SWJkQ3lDWGhMUWNqbnA1Vlhk?=
 =?utf-8?B?RDhudGVtbjJucThGUWJLaEl6bFdvRW81WnJEMVd5cHZzVG5rMXZtMGJ6QWda?=
 =?utf-8?B?SXQ3NVBaeGpjdFVoeVp5d1QvZzVoRzd4VGZtTzcrQjBaeElBN1VGWlJITDUw?=
 =?utf-8?B?bHlVVWhpWGxKY1lqWGUvU0p2VUtPSVJndzI0MEVGREsrQ2FvaVhScTl2ak1M?=
 =?utf-8?B?S3hBcHRwQW9lK3dNT1BCbGRYb0dVWUFoYml3aFRJQ1c0MFFuUlNJNkgvOHhN?=
 =?utf-8?B?eDJNQkIrQzMxSEhmTWJha3pkUVhRajdhSFRRdU1qbUNFQ3IwRDc4bGpBWFdz?=
 =?utf-8?B?eHZuVFM2VlF3T0kwZHNnN3o3UWJFQllmZjJEblB1MXRVQ1laMzh5aXVPSE4x?=
 =?utf-8?B?dzVOYk5xRXdjSEltNU5SWnhoVzBoNWdQYytsRURmN3UzcFB4TFlqVmkwK3dW?=
 =?utf-8?B?YitXbFRUazJtTWlNWW9CR0EzQVBUeCtvb0RlMklEOXJmaTAzQUlJMFUwdG5K?=
 =?utf-8?Q?T7CsREv3Z505MQdMavf7Rr3ChNY9eP/s?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5889.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2hHTDNYek1KZEc4cTlKdlVsTjFCTWpMSWtaTkcvSjV6MVFSMVU1VFJzdUth?=
 =?utf-8?B?RXcyMWpzczZhQVdaZ1c2U1RNTTVTTTkxbEpSZDhZNFdrOVBPcWNtcW9qQTM3?=
 =?utf-8?B?YzVzdm1kQlhjYnRhdVpDc2pBcTdFZUowVjJlOU1CVGNKZkVYNnhCb1Aza2xh?=
 =?utf-8?B?K25KMjhFQlVRVWY4UnJzL3BpWTVnMTJTTGhEVUFzbVkrS21UMVp1TlEzQUtt?=
 =?utf-8?B?QXhZWDY0eitORnlwRllmbXVzVjUyN1o0TU1zNm5JbjZFbjVQZzZGbWk4SnJD?=
 =?utf-8?B?WExKNU5iTGNRVjlaRGFRZzhmWmVMdk1teDRueVBjK0VDMUVHOUxzTWcwZ2Fn?=
 =?utf-8?B?VWg3UjEwbEFzd2ZBR0tTQzl5SHUzdFNmUkgxMXptTXU0VTZZV0hFYjhhUkdN?=
 =?utf-8?B?WWtlQ3pZZXZkSDdlOVhsRkJBS29GQ2c2UGR1ZTMwODhkb0FwYUE1T1Fwd2dC?=
 =?utf-8?B?SitEbkU5cmo0ZlgwZzREOTY1dVZNWDZ6WlhQbGcwVDhBMlZUZ2dnOTljMWNW?=
 =?utf-8?B?amRxOHdzbVh1NTRBNkxBaG9CcXNkOVNOTVBWRlkwMGttYlZiUFdzK25WcE10?=
 =?utf-8?B?RGlLRFF6S2I3b3RnSVBGODFkR3IzRHV4RjFVdzRZeTlrdFd5Q0hReEFwb2VT?=
 =?utf-8?B?dFd0V1VyYXNFeHdqMkdhSUExa25vUDZnZ3dZZkVrd2NoSkxLa1NrUjhJUFBS?=
 =?utf-8?B?YnIxK1BGU3ZVdE95Qzc3a0xZbVRMMUpxdDFkbS9LSjJqVDJHTU9OK2Z5NU9h?=
 =?utf-8?B?ajhoYkdjdSsvUTROTEFDdlpCSzNpUThWZHFKNWhEMkZFVjFWZFdOREZzWWtG?=
 =?utf-8?B?Ykl6ZStGVmhUN3BRU1NuTG5Vc2R4SHNvZ2lzTTRTYmdKc1BnblFEY0YxTE1K?=
 =?utf-8?B?L0JuTEo3RnlFV1MwdXJIOUVSc3pJcE8yTUQ4NWQ0b2llQ0hWOWNjUnVQU056?=
 =?utf-8?B?N1ppSnEyUlhMUE1VdmtBZkNhakdBTmtwTEtVTWc0TXlmTDlSM1ZLbk1waENi?=
 =?utf-8?B?enc5Y2xOSnhlZEZRaWd0c0dlRi9haDlEZ2VqaFhaRHQxcVZTUVVZK2NSK2Vi?=
 =?utf-8?B?V0o0VXM3ZlpOTyt2UWlXZS9lSzE1ZEIxS2VweXZmRnhwWWpYdElPY2ZHTmto?=
 =?utf-8?B?NTNWcmNGR1M1UjFIem5yWUhidXZuSC9naktkNi95Y29DVkp1TzJSVTVnbXla?=
 =?utf-8?B?QU1xT2QrS0NGc0tpcEdXSUlrd2pnWHVva3hoRG9VSHl6R1lYejVic2Z3TXg3?=
 =?utf-8?B?cFIrNlhSSldLWVZRQUpwR0hkSjJQSlE2MENIT0lpN3djcUNUdmt4OWZsNUly?=
 =?utf-8?B?U2c1bEtiRmNsaEZMYXp4NjFabFBZMUMvMjVJNGwyZW5Nbkc4bFBwUUlCN1B6?=
 =?utf-8?B?eWRvRjNSYjVIZVVGOHE3ZVIwOW0xSFhwOGtJQkdMbFN1OWd2S2pxTjg4dHFp?=
 =?utf-8?B?RHFndVlyK1FOU2RmK0w2ZFM0c2N5NWRYMC9uYjZ0ZkdvZTFGVmM2Lzhrbkh4?=
 =?utf-8?B?am4wSjlmelVYS1NsSlhBcHltRGxraWN3WGlDamJRTm9wV0VQOFVOTmZhWVFy?=
 =?utf-8?B?eC9ZQkFlUDZueENWOGxabXJFWXVRLzM3NEllektUbmpTRmtZeXVlTW5qM3RN?=
 =?utf-8?B?ZzcxMmdrUXlycDlNZ2lQMHZiRlMwVEx5aXBvNHBuVWdhZ2pZdXNoakVOQS80?=
 =?utf-8?B?NHRvdjg4Y05vZEJHUHpXWUxReldaaXVGM0FFRWQ1ZkxrQTdJU2I1Rm9pOExD?=
 =?utf-8?B?elNhdjRzakpKOGJkVzRXdjF0Um5QVjBrVHVBcXBIVnBFTWpMeEJPYlBrRlhl?=
 =?utf-8?B?TnNac1lLRTVZTGdmSUZMb0JsSUVaVm0vZHVPT2FETjdpbDBkS09zeVBzdWs5?=
 =?utf-8?B?SnhLR1JkK0lsZjBBKzFJS3pHRGRLa3hTR2JsWXRsOWRVMFdYSUdTNDFTWkx1?=
 =?utf-8?B?N2cxTUJMSHpqclJmdW5sN1RhZFllR1hXZGVLOGFCaGtjY0tyelYzTlM5OTZj?=
 =?utf-8?B?c2FhM0h6bHVtYVZDVVl2ZHFZWFJ1K1dTR21nWWluZVRycng1ZVkzM0pibnE5?=
 =?utf-8?B?MlJ1emgzSkVYRjF4S1VQbnVyNmhwZ21NVUhVYnlwS0VoUEZ3cXh4S2t5dHNy?=
 =?utf-8?Q?em8KKXoSvqP/2A/nEHTnb1/uQ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5889.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9af2b841-fc11-4722-4fce-08dd7832246a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2025 13:18:11.0783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oc7MAe2OTSVEZxr5szg44MVR57zwGynGFabG62CzRC6iVG5XZPJeNGFknYCnOeenAK1ildqzO6SiAcFRBrI7Tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6901
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744291107; x=1775827107;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UKgUG6t8rHtcRbKo+/FPuG9Hd/St5u1vVLv3L5qKO00=;
 b=KtjAqJX/ZswU/f2mgAyOnfHENcpYwHj5jMA9x2mzrssVWEi+YFBO+FBR
 ci7sOMe1Xlgbbx6Ki9QB6GxhI7aJTW3sP364FRzyrsBgXl9VBO8Ihi3vE
 FKhfSP1nKfMkHecw/dDMv05xNAG8pb8Yp1stHvhgyL8/9DH+brJBa/5un
 3cmUrLdOGpmRt54XYcMAAVWQpWe6y0XVFs8DYbZpyIQiyb0/n5TrPfeTE
 9pCOPazRu6Z7aEMetcKXFwCIAwSWmiWrsuU20ilvqjAXjXoGz6hs5XA82
 sE8L/UW6AEZvmKnY1OgbOKF+sDADkKKBFuWMG7cDm7wINxfzos1C4Z0bo
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KtjAqJX/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 03/11] virtchnl: add PTP
 virtchnl definitions
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

T24gNC85LzIwMjUgODoxMiBQTSwgSmFjb2IgS2VsbGVyIHdyb3RlOg0KDQo+T24gNC85LzIwMjUg
NDo1MSBBTSwgT2xlY2gsIE1pbGVuYSB3cm90ZToNCj4+IE9uIDQvOC8yMDI1IDExOjEyIFBNLCBK
YWNvYiBLZWxsZXIgd3JvdGU6DQo+Pj4gT24gNC84LzIwMjUgMzozMCBBTSwgTWlsZW5hIE9sZWNo
IHdyb3RlOg0KPj4+PiArLyoqDQo+Pj4+ICsgKiBzdHJ1Y3QgdmlydGNobmwyX3B0cF9hZGpfZGV2
X2Nsa19maW5lOiBBc3NvY2lhdGVkIHdpdGggbWVzc2FnZQ0KPj4+PiArICoJCQkJCSAgVklSVENI
TkwyX09QX1BUUF9BREpfREVWX0NMS19GSU5FLg0KPj4+PiArICogQGluY3ZhbDogU291cmNlIHRp
bWVyIGluY3JlbWVudCB2YWx1ZSBwZXIgY2xvY2sgY3ljbGUNCj4+Pj4gKyAqDQo+Pj4+ICsgKiBQ
Ri9WRiBzZW5kcyB0aGlzIG1lc3NhZ2UgdG8gYWRqdXN0IHRoZSBmcmVxdWVuY3kgb2YgdGhlIG1h
aW4gdGltZXIgYnkgdGhlDQo+Pj4+ICsgKiBpbmRpY2F0ZWQgc2NhbGVkIHBwbS4NCj4+Pj4gKyAq
Lw0KPg0KPlRoaXMgY29tbWVudCBzaG91bGQgYmUgcmVwaHJhc2VkIHRoZW4uIFRoZSB0ZXh0IGlt
cGxpZXMgdGhlIHZhbHVlIGJlaW5nDQo+c2VudCBpcyB0aGUgc2NhbGVkIFBQTSB2YWx1ZS4NCg0K
T2sgSSBzZWUsIEkgd2lsbCB1cGRhdGUgdGhlIGNvbW1lbnQgaW4gdGhlIG5leHQgdmVyc2lvbi4N
Cg0KTWlsZW5hDQoNCj4NCj4+Pg0KPj4+IERvIHdlIHdhbnQgdG8gZW5jb2RlIHNjYWxlZF9wcG0g
aGVyZSBpbiB0aGUgdmlydGNobmwgaW50ZXJmYWNlPyBJDQo+Pj4gc3VwcG9zZSBpdHMgbm90IHRo
YXQgYmlnIGEgZGVhbCBidXQgaXQgaXMga2luZCBvZiBhbiBpbXBsZW1lbnRhdGlvbg0KPj4+IHF1
aXJrIG9mIHRoZSBMaW51eCBBUElzLiBXZSBjb3VsZCB1c2UgcGFydHMgcGVyIHRyaWxsaW9uIG9y
IHNvbWV0aGluZw0KPj4+IHNpbWlsYXIuLg0KPj4+DQo+Pj4gSSBzdXBwb3NlIHRoZXJlIGlzIGxp
dHRsZSB2YWx1ZSBpbiB0cmFuc2xhdGluZyBmcm9tIHNjYWxlZF9wcG0gdG8gc29tZQ0KPj4+IG90
aGVyIGZvcm1hdCwgZHVlIHRvIGFjY3VtdWxhdGVkIGVycm9yLCBhbmQgc2NhbGVkX3BwbSBpcyBo
aWdoZXINCj4+PiBwcmVjaXNpb24gdGhhbiBwcGIuIE9rLg0KPj4gDQo+PiBJJ20gbm90IHN1cmUg
SSBmdWxseSB1bmRlcnN0YW5kIHlvdXIgY29uY2VybiwgYnV0IHlvdSB0aGluayB0aGF0IHdlDQo+
PiBjb3VsZCB1c2UgYW5vdGhlciBuYW1pbmcgY29udmVudGlvbiwgb3IgcHJvdmlkZSB0byBjb250
cm9sIHBsYW5lIHJhdw0KPj4gc2NhbGVkIHBwbSB2YWx1ZT8NCj4+IA0KPj4gUGxlYXNlIG5vdGlj
ZSB0aGF0IGluIGN1cnJlbnQgc2hhcGUsIHdlIG5lZ290aWF0ZSBhbHNvIGJhc2ljIGluY3JlbWVu
dA0KPj4gdmFsdWUgaW4gUFRQIGNhcGFiaWxpdGllcywgdG8gYWRqdXN0IHNjYWxlZCBwcG0gLSBh
cyBpdCBpcyBkb25lIGluIGFueQ0KPj4gb3RoZXIgcHJvZHVjdCAtIGFuZCB0aGVuIHRoZSBkaWZm
IGlzIHNlbnQgdGhyb3VnaCB2aXJ0Y2hubCBtZXNzYWdlLg0KPj4gDQo+DQo+Tm8uIFdoYXQgSSBh
bSB0cnlpbmcgdG8gZ2V0IGF0IGlzIHRoYXQgaSBkb24ndCB0aGluayBpdCBtYWtlcyBzZW5zZSB0
bw0KPmVuY29kZSB0aGUgdXNlIG9mIHNjYWxlZF9wcG0gaW4gdGhlIHZpcnRjaG5sIG1lc3NhZ2Uu
IFlvdSBkaWRuJ3QgZG8gdGhhdA0KPndoaWNoIGlzIGdvb2QuIEJ1dCB0aGUgY29tbWVudCBtYWtl
cyBpdCBzZWVtIGxpa2UgeW91IGRpZCwgYmVjYXVzZSBpdA0KPnNlZW1zIGxpa2UgdGhlIG1lc3Nh
Z2UgaXRzZWxmIGFkanVzdHMgdGhlIG1haW4gdGltZXIgYnkgdGhlIHNjYWxlZCBQUE0NCj5pbmRp
Y2F0ZWQgd2l0aGluIHRoZSBtZXNzYWdlLiBJbiBmYWN0IHRoZSBkcml2ZXIgY2FsY3VsYXRlcyB0
aGUgbmV3DQo+aW52Y2FsdWUgYW5kIHNlbmRzIGl0Lg0KPg0KPkl0cyBub3QgYSBiaWcgZGVhbCBl
aXRoZXIgd2F5IHRvIG1lLCBJIGp1c3QgbWlzaW50ZXJwcmV0ZWQgdGhlIG1lYW5pbmcNCj5vZiB0
aGUgY29tbWVudC4NCj4NCj4+IFRoYW5rcywNCj4+IE1pbGVuYQ0KPg0K
