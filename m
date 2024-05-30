Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFF18D4493
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2024 06:40:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6136F81FAB;
	Thu, 30 May 2024 04:40:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OBWJXult1GUm; Thu, 30 May 2024 04:40:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E99E281FBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717044014;
	bh=cbNJ4lXjD6DehpQjidHRBBevHJHQ5/XCqgtNxN7/cw8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ca50Tq4S4epcTgDqbz8hIGsw4cJFdl9FexKVNAjfuSmSpkwUyUPkz6UcgeECgtLEw
	 pnwCTkRfyOK1IuUClq7ZZDZ6asuAdM03geouCQhSZaoXp7xjMseeHJ6JWdFdqBCek0
	 lquAc/PVy1bTcUDutxg7TDKttumvJVNOhiCPIATa43E/WPz8pKW6RGE7AKD09O7IKN
	 qfxfoPUPseEG0DDwr6dDfKtE3MUFXDELCQUIcB+Oh3mRVHAhFP6ubgYX6cdvv4yROx
	 orL6F88EPiqnvAdJukze7tr5OMbivEpv6Ub0d5ijN8gtXMSFJQpIh5rd2E7XDc8aW/
	 TQ5G/xAcCOJLg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E99E281FBE;
	Thu, 30 May 2024 04:40:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 714281D41D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 04:40:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C41A81F77
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 04:40:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oy4QMqKZvtKx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2024 04:40:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D77D881F44
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D77D881F44
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D77D881F44
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 04:40:09 +0000 (UTC)
X-CSE-ConnectionGUID: vtblPn20SfadB9ZhA0UZrw==
X-CSE-MsgGUID: tvaq4VkjQju/TWaKT43HFw==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="17332797"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="17332797"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 21:39:47 -0700
X-CSE-ConnectionGUID: SBNjgbHPQm+3iMlW8is85Q==
X-CSE-MsgGUID: 598rPzyaT5qC37NJjihvnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="66882767"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 21:39:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 21:39:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 21:39:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 21:39:46 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 21:39:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bK7zafWx0xtsbMd9/74oQkos1BXC23Bf1Q40gmlv/em4pQ4ydjNBPaH/TDhX/IPq3YnOQWwAHqczD7t3x8BKTN9DRa/aJcNud0gKVJt4dbGICBkoQ/UtAsiHXvJqKTYbw8WDmYRckPgrO+61NwcIROxCXe6CN4ho1EB6ufsMeoYeLIJMCV6jez05qkBcgECej2A7VZD53tEmupbCt+qS5bEzru/F6MV90vSLFN9fWODdn0fgUFWo78cBobjvlxJp4/MELWRGst2ZNik1VdIxLQ2VTX/vjdo4ai5N8cZYpF5A01gzvtwJzTk7HsM3tUL6faAAUchyjGygX8EH9hoOvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cbNJ4lXjD6DehpQjidHRBBevHJHQ5/XCqgtNxN7/cw8=;
 b=NjnLzA76QfreYt8UPCDN/avy6aLyAMpY4vpdxso49N9EL3JhSLeJBlKnkyaGU1cx/Mm/grnYebF3C2UxWfR8CNSqp+AlfF4DTrX5RO0HCRm2hExlidiMS+DVACtqouatHuI/5T2fIIf+2DDj4EFdL2g0KTJqCGVvT5bobtLIrz2ZLA2Kz9g8a7gnR7PSjofEiLHR17ei16XXByLm/io99GtbeNPka63GyQ7cfEiTe5wOBw1QQiGeYi/+9sIYo2M2kpyl3rfqH82e6mQTPGgizqyAHvTNCoMW+7BXbDYUHYPRLuHMrClU4DIyZtD0QCKiW6cR1PGUEnWe//0Nb43LfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DS0PR11MB7787.namprd11.prod.outlook.com (2603:10b6:8:de::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Thu, 30 May
 2024 04:39:41 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7611.016; Thu, 30 May 2024
 04:39:41 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix iteration of TLVs
 in Preserved Fields Area
Thread-Index: AQHari8o0AJyXRoit0KnL4BNbYmQdbGvObvg
Date: Thu, 30 May 2024 04:39:41 +0000
Message-ID: <CYYPR11MB84297C944CB693F77C4894F1BDF32@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240524-iwl-net-2024-05-16-fix-nvm-tlv-issue-v4-1-4fc1da2a450d@intel.com>
In-Reply-To: <20240524-iwl-net-2024-05-16-fix-nvm-tlv-issue-v4-1-4fc1da2a450d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DS0PR11MB7787:EE_
x-ms-office365-filtering-correlation-id: c979371f-4247-4bd1-5dc2-08dc8062857e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?ZllCWjJsbFJQRUpnMjhIa3hscGFOZmlrbW5qekRxa2tEKytOWXB2RnNpbXQw?=
 =?utf-8?B?cmV0UnpCMGpaL0l0eXNudEYvaHhUV2tXcVRDWEpUMWpLRi8vSEF1UC96dzlS?=
 =?utf-8?B?UW13Y0llV1JJclRMNCtOcDNPWGpUR2pDWXFmTWFqQi9ZQ3Zvc3d3cGpCUkdW?=
 =?utf-8?B?TFl2WWZYL1kvME1pdkwycVZVdWgyNHptZVFkT3lkb3ZsT29XajlLemIrcFZZ?=
 =?utf-8?B?b2ZlbHZYQUE3alkyaGM0QXJBVEt0enpMa0w0RlVWQjdGM0UyUWd6VDFHZDhy?=
 =?utf-8?B?T0xhQzlqRDhBN1ljYjJxRi9nLzVFZkFTcFE3ZGJSZWtBUWkvc280aDZ6K08r?=
 =?utf-8?B?Z3o4S3RzOUYzajFGaXBLaERRRnFhK2ZBZk9DOHJDWDhQVTlIQldlNVdGbElx?=
 =?utf-8?B?T1RJOEZ6cjMyZkFEbThtVjNwUE5ER3BPUVdJTXJmWVlMeXRWOWx0dWdUN2w0?=
 =?utf-8?B?OXpWbVdtUDQzK2hEZ3RZdVVSZ3I3a3NoZjA5b2FjYzRTQzVBQSsxRTFjVTI3?=
 =?utf-8?B?ekJ5RHA3dWFSV0pwdFFValZodEU2anhnTTFKZ3c1Q2t4bE5Sbm1FY1hZMzY3?=
 =?utf-8?B?RnFmWTFLeWFxQkE4Nkx6MDFKL3ZXemEvU1MxcXlyNjZaK1NzRWprK0I4L3Ay?=
 =?utf-8?B?NDVuK3ZtcEtBNEpmMngwSWlFU0ZySW55Z1ZBaTZWeUpObThmNTdnL0J5M1h3?=
 =?utf-8?B?OTVHUkcxall1MlVOdVRRdHM5TURnbkI3RnZxazl1cGxFNXN4L282VlhCejN5?=
 =?utf-8?B?aFN0dktDQVpSTkRmVWpTTFdUQjdvNlVIaDRacTdDWnRLVUUxelBib2U0ZmRs?=
 =?utf-8?B?U3NWUU5wZlZodDRrMzk2RXJYR0MrN056NEtkb0QyOVJ0VzNIZHRlYWxyQVE4?=
 =?utf-8?B?WG9QR01Oc0hYOXdQciszNFZuV1pHelZZMjYxODlDbEd4VEZ6VDl6VHNWUW9l?=
 =?utf-8?B?YmNwWTJsOXQ1c01PeWV0TDdTYXQyWHRVcDZ0WWtTTGNGVWd0YUprNjQ1MTdu?=
 =?utf-8?B?NHo5a1AyZHBHTFZwbjcrMnlYbW5QbzRJdTdoVG5jVGdMRnpmVEw2OEdaWng4?=
 =?utf-8?B?bU9ISUp0bkpVQ1N4ZTltNnZxVmFXeEpGb090Q2VVVkl1b2swbXpKTkJLVE8v?=
 =?utf-8?B?RFFyUEVmQVRVd3lMK2Faamh0QThrZFhhbU1YUWlDb29rNzZxNSt2TUxXTkFY?=
 =?utf-8?B?djR2azVOMTBQbGN5VGFnQU9uMDlJVjNtSDljeXRSSVMrMTA3UFBkMCtpRjI1?=
 =?utf-8?B?TVB4YS9lN05meVFjOGl3c1A4S1VXVW5tNjBvUVliNThnTXdvNXlzNlFqaUdG?=
 =?utf-8?B?dTJPeURVNG1yRUJTYUdHR2pSVGxBNXJCRkZyRXVmaFdCUjMvNkdwbzBpWVkv?=
 =?utf-8?B?VURzMHZWaTc1RVZRRDZPc0JuczJCSlErSW5rdUFCYTFrc2RhZUJ4NEtmUyt6?=
 =?utf-8?B?VCtQZDJnbXZLN0M1eXlvMEEwSzFMd1JpaTM3ZENVcVhoNG9hUmk4UStFTFU3?=
 =?utf-8?B?aXVNV2VMamlEa0FudkFIS29FK1hXdkk4aExtWVp3dVduMUFMcU03YmcyeFhW?=
 =?utf-8?B?NFNDcCt1LzRjWm40d1hYbEtPbEU1VTZwaE51T3lDWEdhUzBKb2Uxdjh5QlZJ?=
 =?utf-8?B?M2VXKyt0cng5aVErVmkxL0oxdW4yM1NSbGFMeW5SRkhIeGR5V2hzdTdLbS8w?=
 =?utf-8?B?WmhtNFM4azVOZ1FpQTBycW53NWVIUE1sSlNVWk1TOElBVlBvaS9ENnFOTVlr?=
 =?utf-8?Q?8rlNCAIhnJj78uu5D0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bDBUWFd3VVNQbk9HV0pIRFhVTEJkKzFuRFBWZUxDSUY0bHRIMVl0ZFRtRlZi?=
 =?utf-8?B?TzNMM2dVTnZYZklZcGMvNk5pdjArRkJ6NDZVSEkzVmwvSzlzOExFbEVzbjdx?=
 =?utf-8?B?LzQxeVMwR1NJMVl6MzZuMG9vMHBueFZCM09nUlNOV1BLT1dsdnNtRFBOYlNp?=
 =?utf-8?B?Q0l1RXA0WHRMSW1vczBPdWlDUHBXbUJvUW5XL21lTHlrQTFGTlZmOE9wcFBk?=
 =?utf-8?B?Q3dsVjdkdG9BQ2p1bkVxR0g3b2lMZzhZci9ocXduR3BZVWc3bThDb0Zac25P?=
 =?utf-8?B?bXc5NTlPVnVGZ2tXV2I3NzNlUU1xYzNIcHFEUW1MWklFRkM0YlFxVTZ1TEYx?=
 =?utf-8?B?blM3NVNOdXBWT1NtaURIaVpSY1VDNkhYOWQ4dVJXS3IxcEMwMUI4bEtlZktO?=
 =?utf-8?B?MWo0dTRnUzVyQ21MamhydUFVbFlqRGpxdGlsK1FXVitKUlVCT2d5REYxS3Ns?=
 =?utf-8?B?NVczdDBHZ1hXdGpXb2E2elBQRFd1RG5lM2VHelNJOStGQ1U5RzQ5OEcwRG9T?=
 =?utf-8?B?NVhkcEE0ZGlwQUVFUGwwUDJrcElwK3pIOENlaGhKU2xVUlM5V1FXTExwaUhG?=
 =?utf-8?B?S0dBQVRnWkFheHlpUGVzODRtcENMSnNkcW9YcU1rSVRDc3Q2TVgva0I5TWl5?=
 =?utf-8?B?MGZrYlRDa1lVREIyd1NaY3lsNVJQZDJyWThrMXVmeDBTRDJ1YlNMYWhMdmNO?=
 =?utf-8?B?ME1sK1RXTDhUdzNFRm8wRTlvMjJ4cTkrOVluYkZhOUY0ckN3OWNieUtuRm5p?=
 =?utf-8?B?aUxmcXU4RzhwdlVYN0pyUkRGZEwzQTRPN3FadW5QVnl0K3lYQis3L2dlSi9I?=
 =?utf-8?B?QnZNc2k2U3g4VCtVY2ZsZW9ySW0yVENIa0Z3M3RIa2Rzc3ByUkcxWG1rNE5H?=
 =?utf-8?B?d2JpVERjTlFhckR4Nm1GcytpZ0ZGbWVwTTY0NUxrSTh5YjBhUW11TzF3eFdm?=
 =?utf-8?B?b1pYeEFqNTVDdVJ4TFVUbTNmc3VFMHV6T3dydjdvSTIrS3haR1JKblR4bUdH?=
 =?utf-8?B?c1VIdnVDZ0tDVXBMNVdUais1N0tzTzlTMU15NVNxekdjVFJmeDhYdC9Pa09x?=
 =?utf-8?B?emVjTWkrb1BOaFkwc01oa0ErZUp2SzlCS3FvZGk4K1dDRjFqMWdvY3gzMXFr?=
 =?utf-8?B?YndKY0hyeTJjR2haWXdCQUZVRlhvU0VvOFlZVHFub25PaGZDYS9xa0paMzkw?=
 =?utf-8?B?NU9RVHpkd1RvVnZRdHJGU1R0U3ZwVkxaRDdZTGlNSFowL2lSNjRldGJBYW4y?=
 =?utf-8?B?RUQ3bGFFeG1ZWG9LWUpaMGw3WWtRNFNWeFJvS2JGeUo4THh2R3g5dzBPVXgr?=
 =?utf-8?B?ZUdIRkhrMkdoWmkwNUhqVmFCNTdCdXhTSGVQaW5BdW1JTGNhVkN0em9tRVVy?=
 =?utf-8?B?Y3pmbGF5b0dhNnFmbHI1VWhHMEt4bUJEbWwyb0xLeERnQ2lCUEZLcGJHRll0?=
 =?utf-8?B?Z1JIYzZrRnk1dXZYL0hRQWM4YmIyMCtseFU5d0FtTlNWb2pndzNkNFVUN2Vp?=
 =?utf-8?B?cCs4L1dlSXY1NUhJaFJYNy8raVBwTFVBcHZYdTlRSkRXUGEwcFlLQnp5enhE?=
 =?utf-8?B?VjRpVEh1aGpNdzEzNi9HTUh1V3VTbVBaZjB0SU50TFMrbWl2MVdhc1JLYXNT?=
 =?utf-8?B?aytLMXErNjB2MzVFTU1mMGxWbDM2dDlJSzl6TnNCbm8vU3ZFQXdHK2YxbU84?=
 =?utf-8?B?SW1FeTJ1bzlhcDA4R3lPaXErMHVhUzl3Z1VvSkFDTDcwVlk2L0g3ZWQwOGpu?=
 =?utf-8?B?b0NvMW5oUWRoNTBlOUlNQThTcGVJTlc4S0c4OFA2czJrOWVEZ1JoaFZYeTBW?=
 =?utf-8?B?aW9zMUtkRDJzMHJSeENQb28xY2ZIZndweEdnMW5Td1QyMnNPdjdCRm1DeDBo?=
 =?utf-8?B?ZGtMeUlzT01pT3N6bkIvWi9zZzNSUEQ3RzVheWNySllFdW1lU29yUGRxcUZZ?=
 =?utf-8?B?VS9RczcyRmhiUzI1NlQ4T1lQM3ZGZGdJT1V0TUE4aHdwQ0VpYXc2NmQ2UFUv?=
 =?utf-8?B?dWxkRG1uQit3NnB0elRoOTNOb1U4QXdjTFl6V3UvMGdLZlZnUldadndSeE5K?=
 =?utf-8?B?TmV6MXV4RFVpMWdBKzd4dktyTjY0cXJsT3hUUUp1SkdQR2VqWGR1N2FtMGRB?=
 =?utf-8?B?azZ3bXNLUERKK05ZdithcmtRL0xNem1maG9YTUYvT1JmQXZHWUhESUVUcTQ1?=
 =?utf-8?B?RWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c979371f-4247-4bd1-5dc2-08dc8062857e
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2024 04:39:41.4324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: It5/iHnMZxeXEjWhj3ddeUshIFH7qvDJ0PuSXjqxZu4Sor7zmS/wcRoltpLACL5RgJsFAMcYgKT+c6XCruYjd7KadEzTxk6QpK79iKjctpC0fzZR5BxpJzI8kwNXlt9H
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7787
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717044010; x=1748580010;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cbNJ4lXjD6DehpQjidHRBBevHJHQ5/XCqgtNxN7/cw8=;
 b=gy1RFm86pfYraUkxuQQCmfQLfaVo+w/8mGeK3WLs0+od94MCLtL1n5xp
 fLdBOPrDq9SROMj5KqLguXkrAxJhwfSn90AiS0kYpUUo5c3My9kkmoCY9
 edjA5Zzh7URE7sius+1VOdvLtyFu7ffzLr2LjQc0v0znhlFrK9VAkEGUV
 MQhzlMa764COHC+3BOADInPxWtJgZ4y5rzzClFRu7BpNQW6egYPrIipoV
 bD0qn4ePcN0OFhExopDz7Nx52jA8cgUVu/tYyO3R1Evi9FQpRDptnqwXn
 oSb/ikWEfKCEtCnmVz6SdXkkwmUfa+TdaWsDd7+XUEtVUnBaw3H1Ru8TT
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gy1RFm86
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix iteration of TLVs
 in Preserved Fields Area
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Greenwalt,
 Paul" <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogU2F0dXJkYXksIE1heSAyNSwgMjAyNCA0OjM3IEFNDQo+IFRvOiBLaXRzemVs
LCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgSW50ZWwgV2lyZWQg
TEFOIDxpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZz47IFBhdWwgTWVuemVsIDxwbWVu
emVsQG1vbGdlbi5tcGcuZGU+DQo+IENjOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVy
QGludGVsLmNvbT47IEdyZWVud2FsdCwgUGF1bCA8cGF1bC5ncmVlbndhbHRAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldCB2NF0gaWNlOiBmaXgg
aXRlcmF0aW9uIG9mIFRMVnMgaW4gUHJlc2VydmVkIEZpZWxkcyBBcmVhDQo+DQo+IFRoZSBpY2Vf
Z2V0X3BmYV9tb2R1bGVfdGx2KCkgZnVuY3Rpb24gaXRlcmF0ZXMgb3ZlciB0aGUgVHlwZS1MZW5n
dGgtVmFsdWUgc3RydWN0dXJlcyBpbiB0aGUgUHJlc2VydmVkIEZpZWxkcyBBcmVhIChQRkEpIG9m
IHRoZSBOVk0uIFRoaXMgaXMgdXNlZCBieSB0aGUgZHJpdmVyIHRvIGFjY2VzcyBkYXRhIHN1Y2gg
YXMgdGhlIFBhcnQgQm9hcmQgQXNzZW1ibHkgaWRlbnRpZmllci4NCj4NCj4gVGhlIGZ1bmN0aW9u
IHVzZXMgc2ltcGxlIGxvZ2ljIHRvIGl0ZXJhdGUgb3ZlciB0aGUgUEZBLiBGaXJzdCwgdGhlIHBv
aW50ZXIgdG8gdGhlIFBGQSBpbiB0aGUgTlZNIGlzIHJlYWQuIFRoZW4gdGhlIHRvdGFsIGxlbmd0
aCBvZiB0aGUgUEZBIGlzIHJlYWQgZnJvbSB0aGUgZmlyc3Qgd29yZC4NCj4NCj4gQSBwb2ludGVy
IHRvIHRoZSBmaXJzdCBUTFYgaXMgaW5pdGlhbGl6ZWQsIGFuZCBhIHNpbXBsZSBsb29wIGl0ZXJh
dGVzIG92ZXIgZWFjaCBUTFYuIFRoZSBwb2ludGVyIGlzIG1vdmVkIGZvcndhcmQgdGhyb3VnaCB0
aGUgTlZNIHVudGlsIGl0IGV4Y2VlZHMgdGhlIFBGQSBhcmVhLg0KPg0KPiBUaGUgbG9naWMgc2Vl
bXMgc291bmQsIGJ1dCBpdCBpcyBtaXNzaW5nIGEga2V5IGRldGFpbC4gVGhlIFByZXNlcnZlZCBG
aWVsZHMgQXJlYSBsZW5ndGggaW5jbHVkZXMgb25lIGFkZGl0aW9uYWwgZmluYWwgd29yZC4gVGhp
cyBpcyBkb2N1bWVudGVkIGluIHRoZSBkZXZpY2UgZGF0YSBzaGVldCBhcyBhIGR1bW15IHdvcmQg
d2hpY2ggY29udGFpbnMgMHhGRkZGLiBBbGwgTlZNcyBoYXZlIHRoaXMgZXh0cmEgd29yZC4NCj4N
Cj4gSWYgdGhlIGRyaXZlciB0cmllcyB0byBzY2FuIGZvciBhIFRMViB0aGF0IGlzIG5vdCBpbiB0
aGUgUEZBLCBpdCB3aWxsIHJlYWQgcGFzdCB0aGUgc2l6ZSBvZiB0aGUgUEZBLiBJdCByZWFkcyBh
bmQgaW50ZXJwcmV0cyB0aGUgbGFzdCBkdW1teSB3b3JkIG9mIHRoZSBQRkEgYXMgYSBUTFYgd2l0
aCB0eXBlIDB4RkZGRi4gSXQgdGhlbiByZWFkcyB0aGUgd29yZCBmb2xsb3dpbmcgdGhlIFBGQSBh
cyBhIGxlbmd0aC4NCj4NCj4gVGhlIFBGQSByZXNpZGVzIHdpdGhpbiB0aGUgU2hhZG93IFJBTSBw
b3J0aW9uIG9mIHRoZSBOVk0sIHdoaWNoIGlzIHJlbGF0aXZlbHkgc21hbGwuIEFsbCBvZiBpdHMg
b2Zmc2V0cyBhcmUgd2l0aGluIGEgMTYtYml0IHNpemUuIFRoZSBQRkEgcG9pbnRlciBhbmQgVExW
IHBvaW50ZXIgYXJlIHN0b3JlZCBieSB0aGUgZHJpdmVyIGFzIDE2LWJpdCB2YWx1ZXMuDQo+DQo+
IEluIGFsbW9zdCBhbGwgY2FzZXMsIHRoZSB3b3JkIGZvbGxvd2luZyB0aGUgUEZBIHdpbGwgYmUg
c3VjaCB0aGF0IGludGVycHJldGluZyBpdCBhcyBhIGxlbmd0aCB3aWxsIHJlc3VsdCBpbiAxNi1i
aXQgYXJpdGhtZXRpYyBvdmVyZmxvdy4gT25jZSBvdmVyZmxvd2VkLCB0aGUgbmV3IG5leHRfdGx2
IHZhbHVlIGlzIG5vdyBiZWxvdyB0aGUgbWF4aW11bSBvZmZzZXQgb2YgdGhlIFBGQS4gVGh1cywg
dGhlIGRyaXZlciB3aWxsIGNvbnRpbnVlIHRvIGl0ZXJhdGUgdGhlIGRhdGEgYXMgVExWcy4gPiBJ
biB0aGUgd29yc3QgY2FzZSwgdGhlIGRyaXZlciBoaXRzIG9uIGEgc2VxdWVuY2Ugb2YgcmVhZHMg
d2hpY2ggbG9vcCBiYWNrIHRvIHJlYWRpbmcgdGhlIHNhbWUgb2Zmc2V0cyBpbiBhbiBlbmRsZXNz
IGxvb3AuDQo+DQo+IFRvIGZpeCB0aGlzLCB3ZSBuZWVkIHRvIGNvcnJlY3QgdGhlIGxvb3AgaXRl
cmF0aW9uIGNoZWNrIHRvIGFjY291bnQgZm9yIHRoaXMgZXh0cmEgd29yZCBhdCB0aGUgZW5kIG9m
IHRoZSBQRkEuIFRoaXMgYWxvbmUgaXMgc3VmZmljaWVudCB0byByZXNvbHZlIHRoZSBrbm93biBj
YXNlcyBvZiB0aGlzIGlzc3VlIGluIHRoZSBmaWVsZC4gSG93ZXZlciwgaXQgaXMgcGxhdXNpYmxl
IHRoYXQgYW4gTlZNIGNvdWxkIGJlIG1pc2NvbmZpZ3VyZWQgb3IgaGF2ZSBjb3JydXB0IGRhdGEg
d2hpY2ggcmVzdWx0cyBpbiB0aGUgc2FtZSBraW5kIG9mIG92ZXJmbG93LiBQcm90ZWN0IGFnYWlu
c3QgdGhpcyBieSB1c2luZyBjaGVja19hZGRfb3ZlcmZsb3cgd2hlbiBjYWxjdWxhdGluZyBib3Ro
IHRoZSBtYXhpbXVtIG9mZnNldCBvZiB0aGUgVExWcywgYW5kIHdoZW4gY2FsY3VsYXRpbmcgdGhl
IG5leHRfdGx2IG9mZnNldCBhdCB0aGUgZW5kIG9mIGVhY2ggbG9vcCBpdGVyYXRpb24uIFRoaXMg
ZW5zdXJlcyB0aGF0IHRoZSBkcml2ZXIgd2lsbCBub3QgZ2V0IHN0dWNrIGluIGFuIGluZmluaXRl
ID4gbG9vcCB3aGVuIHNjYW5uaW5nIHRoZSBQRkEuDQo+IA0KPiBGaXhlczogZTk2MWI2NzlmYjBi
ICgiaWNlOiBhZGQgYm9hcmQgaWRlbnRpZmllciBpbmZvIHRvIGRldmxpbmsgLmluZm9fZ2V0IikN
Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBQYXVsIEdyZWVud2FsdCA8cGF1bC5ncmVlbndhbHRAaW50ZWwu
Y29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBQYXVsIEdyZWVud2FsdCA8cGF1bC5ncmVlbndhbHRAaW50
ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGlu
dGVsLmNvbT4NCj4gLS0tDQo+IENoYW5nZXMgaW4gdjQ6DQo+IC0gVXBkYXRlIHRpdGxlIGFuZCBk
ZXNjcmlwdGlvbiBmb3IgdHJ1ZSByb290IGNhdXNlDQo+IC0gQ29ycmVjdCBkcml2ZXIgbG9naWMg
dG8gYWNjb3VudCBmb3IgUEZBIGxlbmd0aCBiZWluZyAxIGxhcmdlciB0aGFuIFRMVnMNCj4gLSBM
aW5rIHRvIHYzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjQwNTE3LWl3bC1uZXQtMjAy
NC0wNS0xNi1maXgtbnZtLXRsdi1pc3N1ZS12My0xLWY0NmM1M2NmYjY3ZkBpbnRlbC5jb20NCj4N
Cj4gQ2hhbmdlcyBpbiB2MzoNCj4gLSBGaXggbWlzc2luZyB7DQo+IC0gRml4IG1pc3NpbmcgcGZh
X3B0ciB2YXJpYWJsZSB0byBkZXZfd2FybigpDQo+IC0gQWRkIEZpeGVzIHRhZw0KPiAtIExpbmsg
dG8gdjI6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNDA1MTctaXdsLW5ldC0yMDI0LTA1
LTE2LWZpeC1udm0tdGx2LWlzc3VlLXYyLTEtZmRlZTE4NGVjZTg2QGludGVsLmNvbQ0KPg0KPiBD
aGFuZ2VzIGluIHYyOg0KPiAtIFVzZSBjaGVja19hZGRfb3ZlcmZsb3cgaW5zdGVhZCBvZiBpbmNy
ZWFzaW5nIHRoZSB2YXJpYWJsZXMgdG8gdTMyDQo+IC0gVXBncmFkZSBsb2cgbWVzc2FnZXMgdG8g
ZGV2X3dhcm4oKQ0KPiAtIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAy
NDA1MTYtaXdsLW5ldC0yMDI0LTA1LTE2LWZpeC1udm0tdGx2LWlzc3VlLXYxLTEtZWNiYjZhNzU5
NjFlQGludGVsLmNvbQ0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfbnZtLmMgfCAyOCArKysrKysrKysrKysrKysrKysrKystLS0tLS0tDQo+ICAxIGZpbGUgY2hh
bmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4NCg0KVGVzdGVkLWJ5OiBQ
dWNoYSBIaW1hc2VraGFyIFJlZGR5IDxoaW1hc2VraGFyeC5yZWRkeS5wdWNoYUBpbnRlbC5jb20+
IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0KDQo=
