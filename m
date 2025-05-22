Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9A1AC0DEB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 16:20:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0C48811E5;
	Thu, 22 May 2025 14:19:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tbEAGe88mtRx; Thu, 22 May 2025 14:19:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56152811EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747923599;
	bh=Peot6OAPFBP5UCbHSxbsHKjQcXa/NffVbe21O+uI9+k=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cZWW1oQMOvt7fgPGSfqCxdmIkpu7jZTAdO751c9i06JRQK265nJfp1JhSfgg6JqQP
	 AzsOrHyT2nw8ZSN//RXF8DmQLvOHqe1ZNIHNnuxe6iEKAiRRhkA6h1FGHJWWmYBdgP
	 GVIaoOWjfTsPyT8JYPLrP8zMtRKoSaDC46oinS1OWfLEqvsvCRp9PMTWlvsYML5r6i
	 0Na0NGfno0/i72G/oRX38FOm+EuU1BYe8QsoJUIszCeWgxhdkfWQNNRsmM6K2biopi
	 +r7Zrzn9+dxxmvKBC3PhrmVQewyrhbh4hewM+dVgndl8/LDfSJXPXzmV7Gz0+HTTys
	 dJz5pPOBkqWpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56152811EC;
	Thu, 22 May 2025 14:19:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 187DD221
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:19:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F2D9B6143C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:19:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x6lcKBDvqi-v for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 14:19:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4FC996141B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FC996141B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4FC996141B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:19:57 +0000 (UTC)
X-CSE-ConnectionGUID: 6wnvEMt8RWG24dMRJskHRQ==
X-CSE-MsgGUID: mfZzOIG+TKyrqzbeFblBvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="50095885"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="50095885"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:19:52 -0700
X-CSE-ConnectionGUID: kxWtxDC8S3myKbwtuosb3Q==
X-CSE-MsgGUID: ofSM0NigSpqWWgkTGjCP6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="141038388"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:19:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 07:19:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 07:19:51 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 07:19:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tJ4UU9G6UsVXkYFjItsM1ZC4ePq11FnGkiu3GHIRbwavokR7p3ljn4VBihESn+BQFV5dr5t44Q0Jd4vz64IhneCjkImEz7QkbRHLTzoDqbM/lXLWJ0owOHHXDbSoBqo4cA8vUc+ZNa5XmNDsoXmvnFSBXz6bU5fCveKOJHxRdM9H7ddw3YLiIoCGAQp7pqPSq4JYoxrwmIwXbBnAP/EJgKIJsC5qApvyd5RtrJRqKxQrfBJi3wOm3mfh4mnlfgCh3Qs7W7HZitknc3HUvpp/NzYJvk26t/+GxTysdMCjxJs73SDxUDxKmo6Dcij3uq1QccGwuqU8rG5/pqM4Z+VVWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Peot6OAPFBP5UCbHSxbsHKjQcXa/NffVbe21O+uI9+k=;
 b=lp4Yb6GDy6TnG/YAhDF91IfihKQTHipxXbglvw2tCTKIY9epSBvsYZCpDGhHZm1zsSOErSx6OlhI9rwceCu44Kaefr/P+c6JrFhy6fHJw6Y1M8mtzLPIE0t+LL/+y8c5DiJ5KqjvGU7zATBAgplaDoOpWWk0pJQdgVrvALVfm4o8X/5OeBovn5mQGmL9uvTD+qBhJM6qTdLdlyFymt1d7mo7xCiJ6wyBEYnZfeiPzAwSycvMLJzz3FoyiFDWLXTuKwpFQONWEJDp1aPQuhvqlMw5K2jVdFIsHvWZU5Oh3v23PpqVVh0pSImFmNVOAnLgbIw3JcZ8+0BUF6ljwIEj8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH0PR11MB4775.namprd11.prod.outlook.com (2603:10b6:510:34::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.21; Thu, 22 May
 2025 14:19:44 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Thu, 22 May 2025
 14:19:44 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, netdev <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v4 04/15] ice: remove
 ice_tspll_params_e825 definitions
Thread-Index: AQHbuuwXFWPNlXN5LUameIicOaCAV7Pe0udg
Date: Thu, 22 May 2025 14:19:44 +0000
Message-ID: <IA1PR11MB62416D2280C2A0639BE3BA9D8B99A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
 <20250501-kk-tspll-improvements-alignment-v4-4-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-4-24c83d0ce7a8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH0PR11MB4775:EE_
x-ms-office365-filtering-correlation-id: 3dd61277-dcc5-4d97-9b51-08dd993bb319
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ck9CZkhXVlFBSTVBdkd0dzIvY0MvMElZQTRRVEZpb1hyRkw2WUtCY0VOdm9E?=
 =?utf-8?B?MzJmVDljV0tTUElTaEFYL3YyNmNYVk8rY1pES2pKakt2eEFPSFhkVWJvK213?=
 =?utf-8?B?L1pNdFpFY3ptZmF6NWtPZERGMEV6YnVia1RYUnZDZkZzREtBNC93WTdHZTdO?=
 =?utf-8?B?dWhHN1hPSy90QXlVcmJycnkyUElXSHNpeGtxbkwzMDhOcGpSTk5uU0hIVG1Z?=
 =?utf-8?B?R3RaUUd5cW9zcmFFWEVUUGdaeGx6VEZXR2g5KzYxL0lOUUVoQUZ5Z0JsalRQ?=
 =?utf-8?B?cm84NFB3a1ZyRXp3a1VWK3NMNzVoaHhIQ0x2OVYrQU51cHFnT2NjL2RoZmt6?=
 =?utf-8?B?VWE1c3p4WE41RWwvZXY0dXYrT3RPU3ZHWjhrRkVHMmJGdklGYlAyVFpXYmxB?=
 =?utf-8?B?ZERaRm03VDNCN1Q3VzByNldzVW5iY2huM2hGZEJXRUlYZ0tvcVp0SkpPZUtl?=
 =?utf-8?B?dk1ENktldlh0QTdCVXRudmtxeXlubGF6anl3WDVkQWF0Ulg2QWxmcjVRTGZW?=
 =?utf-8?B?YjcvOEgvSEJiSHl6VkFFaEhPRDI1eWt4UkRVcEd4Y1hzSzhJd2VKVkVZak9o?=
 =?utf-8?B?cDFUelpQQVp4eHZtTHVqRE5uWGRKektkY2ZON1dTL2xxeSs0OEh5bzRDVk9s?=
 =?utf-8?B?czQ3Y1FMSHhnUDVDL3VGdzd6ZEU0YmpRT3hzZ1EzVnhPdkRVei9yWWpaRFBl?=
 =?utf-8?B?T2UyNFEzOHJCdmZVUVFBcXdRYVV6WkFpVE42ZUZIbSs0YXNlRXpKVDRYRC9T?=
 =?utf-8?B?Q2phZENyVmRVOU5NeDZITnFQMkRPa3NMVGdSOU9PbnFsYmM2eGtYek1BaUZF?=
 =?utf-8?B?d0xnZUo5WnJhdXFjSE1tT1VHWUsvQWcyTEtBVnJBc0tKcmw5VEovTEttdXhI?=
 =?utf-8?B?MDhjZko4emZIcTFYOE5NSG5VRk5CdnBySmNkcDFDN0lUUFcvWElicFpVenhQ?=
 =?utf-8?B?Q1ZsNjNKdXpYUVF4enhaTVM3b05VckJaSEU3Nmd4SjlhWTFGU2F5czk5dldv?=
 =?utf-8?B?eVNJcjBXd05jWms2NUl3eEVqTkc2UlljVFZTM0RsN1l5N2xoZmhsdDBYRVlZ?=
 =?utf-8?B?NmRGR0hxWUxUcWRITkFNN3d5cUpYVFBqTUo1K1k4bnpwMWxrWVVQSjN1U3ZE?=
 =?utf-8?B?OFRvV3I5Q2xLQlh5VmtuSUExQ0FHdGRLZEJVL2RhdG1xbzVlTE9jRWNuSklu?=
 =?utf-8?B?OHU0UzRlOVRJUzl0b0tGZU0ranZiZmdBY2ZacTNXZ2N3QWt3ci9sb3BPSFpk?=
 =?utf-8?B?V3VuNk1aV3E2UFRzWmUwbkc5cW8yV244Y1ozUVdmVlV2K1lFQjJLSFNGQ3VI?=
 =?utf-8?B?K3pYbUNBVFhOZVRCK3JzVlVsUmpybXFaUGVzNmJKV1ZnRUFsUnc3RlhPaC9a?=
 =?utf-8?B?N1BVVHBVVDRDNmVLVVo2ZzVLSVVibkdlcXlHWVp5NXV5bS9OeENXbEJGMzJK?=
 =?utf-8?B?bTNOMStxRkJZV0haUVVlZGJHanR6dGt5MFJ3Y0NzMVVjaURFRU5jc3IwRmtY?=
 =?utf-8?B?VlROQnQwV1h5a2pWZTY2QzJvUDlCd2IyMGZLRnZkQnhIVG9OSGdpdGFNWlBp?=
 =?utf-8?B?Wk9iVHFXcll6R2ZJalZEMEg1S0kwMGdSc2ZZdmJpUkppRC8xbW5pWmk3T2xY?=
 =?utf-8?B?MWdEejI5Q2xHOUNBUkZ6cFRtU2JGZUNpWmo3eU9TcDJWd2RTd2M4L2ZCdDJ3?=
 =?utf-8?B?ZWVWNnFiRVFhaUVNczBiWUY5R0JmaXROWUd3NFViOFRVOVBnZ0xsazM3Q2dM?=
 =?utf-8?B?VkgzVEUwNWxCTkorZzk1bUdUNFlSdHRsa1dtSFlrQnJyS0U3T1c2ZlY2Rmpx?=
 =?utf-8?B?N1VZWVVLaGlaQy9qdVlLL3d2ZHg3TGVma3kzamZxWHhENWVIaGZlK1ZKMjVY?=
 =?utf-8?B?WFUveDlLaDBGbS9jS0syYkdjTFhBTU1vV3ZlWExSMlg3enRZMHVFRldheDVK?=
 =?utf-8?B?YkJMVGpPUHI5VDlqT0pnOHM0U0xNUmRXRW53cVZ4blV2SEVuMmNzSllQQXdT?=
 =?utf-8?Q?3nU3gRnGIGwQsZFm3utCdVp18/5SV4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U2VrZTJDTU9GWVFySnU4cVovaXZCTVVFcG00eHZHRzBhb0x1cEx5eXY2TXNu?=
 =?utf-8?B?cjhPRkxFcFhrcTZtSHdkbTAwZGlZMGpkZEx3OEErRm01Y2dFaEZOMGYzNHdr?=
 =?utf-8?B?dlA2VmthOHBmeWJJQlVCRTVyaUJ5eVFzV0d5U0RVemJnUGxVaVNpTmFhZ1J4?=
 =?utf-8?B?dmhRLzI4VG1RbFJJOFRxZlVKZWRnTWI2RHpQbG1adldvc3U2aWpnRnF6dHRN?=
 =?utf-8?B?L0JZWmxZNjc5cXZjT3QvZWtjbUhxOTRIcllINkJlRTE0dFN4VGlncmRHOTdM?=
 =?utf-8?B?OGxPYWxOMTA2NkxWRUExc3BWSCt0UmxoWDRIcElOMlpyTzlSUVhCdTNNTEl2?=
 =?utf-8?B?UWJuUUhSYS9ZOExNaFE4WXRUaEtWMUVUbElJYXhVQTRybmZ0cUpNdXJyN0Fl?=
 =?utf-8?B?Rm9RZm1SV3RVQWYwTDFQcG5jVmFMcTNwM0U3ZGFidGkydXA3Vitib3dDMzBQ?=
 =?utf-8?B?MmtoMjR6MmxtWU1Kc1lRSFAva2ZwYXY4bzJHUlFzRmQ2RnpQZkdJRUJtaCtk?=
 =?utf-8?B?ejFUUmwyMU5idWxEU1pUVGNJamR4dER3NFNadkFhbFhPdXlINGR3T0IwY1JX?=
 =?utf-8?B?T0FKZ0VXYVd0RVNkL1B3MnltdFMreXVpTHdSZzVUa3RaaWZNVURCSkJHWkhv?=
 =?utf-8?B?cndvNmkxa2hXa0pzUEhwR2R0bXU5OXVxUXpkWi9Rck1zN1FyakJrOXNZbGVp?=
 =?utf-8?B?WERrZFhkTnk3dmpMNCs4L3JPMDBIcytGQWg1ZHJtNGFnWkFMZkRSRm5UNGMz?=
 =?utf-8?B?L0IzRlBIR1dpMzhVUkZaSGVaVngxZVpHRzdTR245UzhPVjAvRkNIWFRyMFVQ?=
 =?utf-8?B?VWcrQ1RJS1dOMGdIOEdFSXAvSVRpa3M2ZzJCTUJmaC9BTGR1MWhFV2F6Nlph?=
 =?utf-8?B?NGZtSWx2NFJvZWJ0aEZtL2c4VFdQbGZBVi81UTc3YU9uWEVOUFdDYXJxbUpn?=
 =?utf-8?B?YThoeUFSMjVyU2hCWDlPYUpRNmF6QWFFY3FxNldiNUdWMmFNN0VZbENCc2hs?=
 =?utf-8?B?cG1adFU1UytOV0VtK25PcGNEbkxGZVpMUVVoUG02dGRPd2F4WGhqWmkvSWgy?=
 =?utf-8?B?a2Y5bW45L3RtYWFWQm1RNmJLZGpnSjl6ODRmUWVEWDh4c21iRlRTdXlOenhC?=
 =?utf-8?B?SnA4bkhUaDRna1FtOEVBMStaQVkvcFpaSTJUemt1Y1dBdCs5TmxPNmZIeGR0?=
 =?utf-8?B?YVFvTEpSakpEMHNjSXpvYnc5ZEtLamZqb1JPeDhwZitFS0pIRTlXQng3aSs2?=
 =?utf-8?B?a3ZCeXR6Y1E4S0plZGx3eFVLbEJmRm1qdUNaRVF1aWMwRXhZVkpvTDk5N1J1?=
 =?utf-8?B?bUpYU3prK1JKWFl5MlhYOGFkRTh5eDNwVFYybjdMcDk5dWZ6R1dHMjlHMkNm?=
 =?utf-8?B?b0hJbXRPSGtaRkpKOE1IWE1XRjZNOFFUZVNaZi8yay96dCswSm5tSVYzRVdU?=
 =?utf-8?B?bEluc0k1WnRVUUxNanM1Q1lpQkNRN1JORGQ4ZVNLMTAyNUhMWjFHd1NsK3Ev?=
 =?utf-8?B?bGxzV3RKMk1MSUZaREl4cTR6RGg2V3F6SHRVYVI0Rk80THV6cjdyYjZCNlN6?=
 =?utf-8?B?cnJpamMzL1gvZ3NvVStxQzJVYkVZbnI5N0JxVjRKZkNYalF5UytGTVh5Qzh6?=
 =?utf-8?B?Tkx3UVFscVhycHpqZFFBRHplWXFKYWtHM2FuRFZVYnlxbEJGTHkyRERQZnAv?=
 =?utf-8?B?SGo4VjljQkcwTkpBUGdJckxvYmZad1ZFdnRCR2FtSEZ0c2NTdzBwN09SRjlY?=
 =?utf-8?B?aGVOeXU1ay9IakZEbEtnMUtMYlZHOFNCakY1NEFPd1RIQzdYZk1rYVdpK0F6?=
 =?utf-8?B?R1FoK2xxYzJrdzc2S3YvdXRGSzFoQXlJalUwR01wdUV4ZDBmSDlvVi9PQ00w?=
 =?utf-8?B?WGEydVVXVzhzcGZKK1hCbjl1RDZKRDNaM1ROSnlhT05LL0tkdnBwN0dvZ1Zp?=
 =?utf-8?B?S1pIZXZtUkx3V01rdnJWUWI5N1pkWnNGdG5iMjIzak1vcUFvRHBydjIvekl4?=
 =?utf-8?B?YnkxYk5ra2gvaWUwaGZ6cnlqd2tmbVFMSFliU2VxMzQ3aG5CdU1YYVFKazMv?=
 =?utf-8?B?OFI4MTBIMlVCVFFIUGloR1BtQjlnNlVCdExzUUpDRnFCbm85YTQwZGN1NDRZ?=
 =?utf-8?Q?OZpRJk9kJ/Th7Ihek63O8VZDm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dd61277-dcc5-4d97-9b51-08dd993bb319
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 14:19:44.3087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WSoAqoNVZ9aT6CNTb3T129QGvtpZuwmfUW99IoiAzJY/xn8T8dZznWKaoRd5tXtuB/TAzZHASI5C6/Ady/6wow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4775
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747923597; x=1779459597;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Peot6OAPFBP5UCbHSxbsHKjQcXa/NffVbe21O+uI9+k=;
 b=dOp8L1gBpqeESiB1WZibo0XmpwX/sKA/rh6skrylE7sVLALOAwBJ4CEJ
 sCib2a4rxCpxxUrmnOvDaeMVOY4JlE93sxHLGjkGe12hciqRem/lEkbMz
 ZZF7IRHcQazgGl9cUXqXwhAPMpJ+yjDAk+/Wsy20y4ohSClvE8dNBA7Ws
 8x/ZeTpBiOcYe4RGvER6wloUTMf80jGGbj7OB0CCNun7uBY0kX5RgumPR
 prpRGcIhNoxHd1dBxgYtz0OymZaKboAFyTknMkd/87qzv1AsfRM5X9vER
 FGe4S6xxZt+eXiCGgnqGitoYZgHv27xsdOyUYoil5eg11Bc/Jv2n+UXm+
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dOp8L1gB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 04/15] ice: remove
 ice_tspll_params_e825 definitions
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDIgTWF5IDIwMjUgMDQ6MjQNCj4gVG86IEludGVsIFdpcmVkIExBTiA8aW50
ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9u
eS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+DQo+
IENjOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IEt1Ymlhaywg
TWljaGFsIDxtaWNoYWwua3ViaWFrQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyIDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtvbGFjaW5za2ksIEthcm9sIDxrYXJvbC5r
b2xhY2luc2tpQGludGVsLmNvbT47IEtpdHN6ZWwsID4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5r
aXRzemVsQGludGVsLmNvbT47IE9sZWNoLCBNaWxlbmEgPG1pbGVuYS5vbGVjaEBpbnRlbC5jb20+
OyBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPg0KPiBTdWJqZWN0OiBbSW50ZWwt
d2lyZWQtbGFuXSBbUEFUQ0ggdjQgMDQvMTVdIGljZTogcmVtb3ZlIGljZV90c3BsbF9wYXJhbXNf
ZTgyNSBkZWZpbml0aW9ucw0KPg0KPiBGcm9tOiBLYXJvbCBLb2xhY2luc2tpIDxrYXJvbC5rb2xh
Y2luc2tpQGludGVsLmNvbT4NCj4NCj4gUmVtb3ZlIGljZV90c3BsbF9wYXJhbXNfZTgyNSBkZWZp
bml0aW9ucyBhcyBhY2NvcmRpbmcgdG8gRURTIChFbGVjdHJpY2FsIERlc2lnbiBTcGVjaWZpY2F0
aW9uKSBkb2MsIEU4MjUgZGV2aWNlcyBzdXBwb3J0IG9ubHkgMTU2LjI1IE1IeiBUU1BMTCBmcmVx
dWVuY3kgZm9yIGJvdGggVENYTyBhbmQgVElNRV9SRUYgY2xvY2sgc291cmNlLg0KPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBLYXJvbCBLb2xhY2luc2tpIDxrYXJvbC5rb2xhY2luc2tpQGludGVsLmNvbT4N
Cj4gLS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHNwbGwuaCB8ICAy
MSArLS0tLS0gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHNwbGwuYyB8IDEw
NyArKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAyIGZpbGVzIGNoYW5nZWQsIDExIGlu
c2VydGlvbnMoKyksIDExNyBkZWxldGlvbnMoLSkNCj4NCg0KVGVzdGVkLWJ5OiBSaW5pdGhhIFMg
PHN4LnJpbml0aGFAaW50ZWwuY29tPiAoQSBDb250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg==
