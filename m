Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B340905EA9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 00:42:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCAD4608AA;
	Wed, 12 Jun 2024 22:42:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id odSZqbm8VKk5; Wed, 12 Jun 2024 22:42:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA733608D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718232140;
	bh=7r/G4WMNEk2MGwfPLxIyLG+cC1Bli3jN80KYmGcXVw8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wcIO7j06H5icXD6Ho8KMyjcftH+MNlXMxxrhLLl0aMUkwER01KT/gFGPIZ6+KqgM4
	 J0axZwQw/dcmBCU5Kv70XiRjmdslyMu2Ko/5klus65zgF8WUvui/kxkZndI68PSefM
	 tbvU5mdxSRCp+vAvCq/DcldPYcO3/CYG8dLE7PfxvMEblHPRei57pqgJ+AJbE1mJED
	 2DmOGSz8tJd14XQnwaICYggCb20JsRACiT48tQBHBq2+1LyTJoOu83JU/3N6GtQ59u
	 zuNVcnKmB+YL8xr7Cl5ul3zwUeQy+ZwOuFakiGo8or/q35279G08qAjCXty9SJnRcP
	 Udurq1kcn3T5g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA733608D8;
	Wed, 12 Jun 2024 22:42:20 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D4A8E1BF365
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 22:42:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C1A216088B
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 22:42:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JrS73WawEgYT for <intel-wired-lan@osuosl.org>;
 Wed, 12 Jun 2024 22:42:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C15A960884
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C15A960884
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C15A960884
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 22:42:17 +0000 (UTC)
X-CSE-ConnectionGUID: GCtnzIaRR+Se9Hrf32EnKw==
X-CSE-MsgGUID: 0aFh7SwmSJGp4jMYYQlXIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="18804546"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="18804546"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 15:42:17 -0700
X-CSE-ConnectionGUID: l0QRCDynQLiObGKOWPZ9EQ==
X-CSE-MsgGUID: 2QSNcFYHRCuTHM0N6+xWlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="39999123"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jun 2024 15:42:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 15:42:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 15:42:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 12 Jun 2024 15:42:15 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 12 Jun 2024 15:42:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PsOEU9jdrs/mbWs5iDR+oWnDb3kIK0Ksmk7A93PL/YhMMjT/woEh7kanKsmrQDp1wgEM1WN+dtM7h010m/17rI7MFSLf9u8Pw/pPs9InORT75KWne8/YisKvBDia3/yyNAhhZ6WNPHmeubh/sMhSWvWo9ViPEIfs9EVIsYX/s8Vr5Wy/B7coWQsuoJSLuwTttjxgXGc5hehesu9rSBGWTVI17EnxwwV5CEfGI1vSAZ6sCp6kndblUHHLkbv4gOUmtb6GfILrmY1RkKryDaW3D1fbV97go/9sKnZXGJWkQhPW2YEawxmB0f/Ctlv7lReUVmaD8YDcP9TwhcyZzJKFBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7r/G4WMNEk2MGwfPLxIyLG+cC1Bli3jN80KYmGcXVw8=;
 b=GckWgbr/o6v6jLnGyF4ZqwPB5Hu73l+ik3SHC8Ea+ybpf4moJk5+0JYUMMIYlVclAYKgZb7sZmzHDMVmZsnhPvXTOlZeJd22WqKlGcOidNZWzCWPkNiVLqBqI4EjbYOA6BKnMvDyC6ycsDrqi5Ku8IM286aGnaTCogBzc6QeqS8WH4jY76BfHVehCebG9F8vbLsXeU91EOhK7bcTT+zBtxmqmiiuTnAaoztqUXuzctqNpDCqsc2OKaslcaBo0pdGhbtFrP6fwbaXuKgxJWaJ75vhON5BguPFbQmkS/dTM832BY54E1R58AUvNT1Gv14b2/7+hKx182WSYqEkAu3t3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW5PR11MB5860.namprd11.prod.outlook.com (2603:10b6:303:19f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.37; Wed, 12 Jun
 2024 22:42:13 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.7677.019; Wed, 12 Jun 2024
 22:42:13 +0000
Message-ID: <0f04f2f4-b93d-4fd4-9cee-a82e8bbf4cac@intel.com>
Date: Wed, 12 Jun 2024 15:42:12 -0700
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-6-aleksander.lobakin@intel.com>
 <b25cab15-f73c-4df8-bfca-434a8f717a31@intel.com>
 <7cdd9b21-e597-48ef-91a2-a45b99821b28@intel.com>
 <4e53555a-c89e-4621-964b-52b9b694e1d6@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <4e53555a-c89e-4621-964b-52b9b694e1d6@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0358.namprd04.prod.outlook.com
 (2603:10b6:303:8a::33) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW5PR11MB5860:EE_
X-MS-Office365-Filtering-Correlation-Id: e5956c78-b8e0-4323-c62e-08dc8b30e713
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230034|366010|376008|1800799018;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dDhGQ25pTWx3YVRBQjFjRzRIaUhlRjgrWS9rR01iUHE3YnJGdTd4aUYwZWti?=
 =?utf-8?B?QWxHZjJOMno3bE5reU5ESU5BcHNtVnlGRGRoVVRzUUpVbW9pWTJvR2FRbUs5?=
 =?utf-8?B?NUdLd0hoNitmaDJuYTRsbXJJUzFCempqRlRmSFNFbVFwUkF0ZVdTS3Rhb3pk?=
 =?utf-8?B?VklZYm53bWtCMjM0U2YxcC9jeDB3MFNlNDhBaUs3ODA0LzlOZ3pwZzNmMHJN?=
 =?utf-8?B?ZmowTER3T3NMeTZQL3I3ZEV6L2FHSUhBdTBOV05xeFNldVErTk8yckxjR0w2?=
 =?utf-8?B?Y3ZGT2JNVkNyNkJILzJxMnJGTlIrOGw0S3RBeTZpTjJHS09XYVRkR1RiZFpB?=
 =?utf-8?B?Z1dVT0JFL08xeFd4MngvaFlNcEZQRTE5L3dQSVpOU09UNFNIeDVtc3NyT2lo?=
 =?utf-8?B?R01YRlRKZmFpVjUvMk9zdnVnbW8yMkhhTzc4V2N1SWNDVDU1WnJiS0VvQ0Rl?=
 =?utf-8?B?T2NpQXZ0MXBXNEVOKzNGYjhWMmZrMWN6WXlOVTZ2UlFuUWNmVDMrSjYrUUFt?=
 =?utf-8?B?c1B3TXBFRzU4cG1vYklGN3lpd2ZYQU4ySzNYMnFWUU5pTTVLK0FQNjNmVDFr?=
 =?utf-8?B?MUhLOHZyaXRtMTFlVTJVT2IvbEt1ZDdLWG5BcDUrcG5BVy9GSnViTTlIZlNY?=
 =?utf-8?B?bzlhRXBNbG1BZzhkS1hjTHpSSWk2dGpwMzBNOVlhTzN6VzdFM0VWcHJONFJ2?=
 =?utf-8?B?eDd4QjMxZEYweWxLeS8zOFRBNk1VcDFPUFBpRTRxSGdSSktkRE1JRmRSZE1j?=
 =?utf-8?B?UGp3YUhqOUZkamdVRDA4bk5DY2dRRFpldWRvME0rY3hYOFZ4QXYybjEyNXFS?=
 =?utf-8?B?L3FTRWxUcEdrQ2s3Tk5aMituZ3pWcFY3NUdVdFJ2dVBrUTRCamFjckMxcEN0?=
 =?utf-8?B?MG13bUV1VWg0RG1CMUtnS3NrYzk5VHcydFVKOXFWOU9jQ21yelN5S0lpQkVP?=
 =?utf-8?B?cnh5UDlLZmUwMld4UWhDVkE0QlZHWkNDMHBjVnkwckN3aDBiaXhIN0dGNGhD?=
 =?utf-8?B?WUpGaVBxWThtVS9kUjNrVjRBazVETXFheFZudkhIOC9hWm1abHQzclVJRWI3?=
 =?utf-8?B?OXpLUzAzTGdyemRJYnVndU4ycVYxbkRlMjB5K3hURkg5ME1kL2t2QVFHbkMw?=
 =?utf-8?B?VnNKTGhrdVlJZjFoWkdNR1g3UXVRNDBYckh0NkZZR1JTU281SEU3bGJNczBW?=
 =?utf-8?B?bDFrOE03S0t0b0xoUzhVWkM2aVlVM0YyOTRQa2dqUjFZSVdWNG5JQWJQVjhy?=
 =?utf-8?B?Y3EvS0NGbXZnZkhRYXFCTTcxV1R1OElEN0c1RHN4eVlXTElzaUQyNk96RVVS?=
 =?utf-8?B?bnhkbFlYc0JjR21YQnVOQldxSUFHRW9SdXBkRnl3UEZ3Nm40M25wK3QvV3NY?=
 =?utf-8?B?VG9Yd2VRYWRkb0JtQk5PSUlMV0FYTm5yWWk0K2Z5RCsvZ2dMWkhUcUxrY0Vp?=
 =?utf-8?B?dlIxYUQwRjRwVXZybEtaWlBFRW9WWS9jU1UzN052alkwai8ybkZ3Y2k4STNj?=
 =?utf-8?B?NlhOelRESWxCMUwvNGE1Z3hGZlVEKytsMnJXWkY1dEY1Vml6ZmViZDdMa1RG?=
 =?utf-8?B?QXVXZWZnVU1UQ29HbUtqbFY2UUhYdzJ0UmtsWVNINUZQMkpaNWZjOWxFN1ZH?=
 =?utf-8?B?QzZxZGJUNklVQmhLRHhxT1pQVW1TVmZ4SW9JWXhkdDdqS3JFbTFHN29lSjB2?=
 =?utf-8?B?M1BQaU0rVU9qV1JmZnZnTlFvRm9lNml4RFBydlRiWS80YVBqM3NoSVBidTFs?=
 =?utf-8?Q?dTrU2nYRXvRG6OT0aKqfDa6DNG5Tzw/pO2xpXkW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230034)(366010)(376008)(1800799018); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTFjeEZiME1BUHBkVnlFem1oYWlwU3ZPWVZpWFVNNHdwY3FmVmJodlhTWmxl?=
 =?utf-8?B?S082SzdkS2lVTVVveWIySXFBckZNUktkaWMybkhvaGZ3c0FDNG5DSmE0cjRS?=
 =?utf-8?B?UTVuUzhQNW1UUHI5S0VkS2crcm4ybmxVY1M2bzJEZ1prWEk5MHo0L0U1TUc3?=
 =?utf-8?B?VVlPclhDM0FLbmVhZGs1dmN0THdWVkVZaHUwTTB6cEJmU21QODl2c1dkT09u?=
 =?utf-8?B?REg2b3kxQ1VYRVpVQkwwT1p4VFZRRjJFajJnbDV5TEtUTWpRc2FJWGFMWERG?=
 =?utf-8?B?UDI5eHBWTGlPVGhPWGtJT0JJSEpTTWM5dEJsT2JpTmJDbFNSSmM5VVIvaS9J?=
 =?utf-8?B?cU9JSTN5REdxSDRBT2RUTWQvZEo3THJTZGVkcDhUQ0VkWkEzYzJqQ2IxeGox?=
 =?utf-8?B?d08yOVR5RFcvaXhNdW4zZ0pORG9id1VINGtKWlRPdFI5L2VqNWpSQ0IrelVU?=
 =?utf-8?B?M2FDa0xtNTFqcHJQSTV5T3Jxb2xpZHphbmI2R1RpYnptbnN3UGNQN2lSNVc1?=
 =?utf-8?B?TWVHT2N2TVFTcHl3MXhVa1dwWXQ4NS9iamoxREh5dDhaUWNpb1U3VmJHQmtE?=
 =?utf-8?B?RmJYRWVBemcwcUFxcllDOVVVSk5NM2dtN3g3NFdXTGkyS053SkF5VkhvZlF4?=
 =?utf-8?B?Syt2cWNZYktjY1grTXpvN1ZKakFWYlpvdmdOOWJoMkZGM0tiY1hONWpaNFFL?=
 =?utf-8?B?ME5Sa1hWeVAxS1JNUm83MVFZblN3R3BCWEs4OXdNNHE4Mkd5TUthUy9sMnNn?=
 =?utf-8?B?NGxpYmcwdjJVRDA1QU53NDZyRkE1ekpFWFZITUdVLzJKc2ErZklsMExFNlB3?=
 =?utf-8?B?T3d1N3VETzJOSStQWFdtTmh4OWoyQnBqbXBwK3BzelcwVVg2TDZGVHNWdm0r?=
 =?utf-8?B?Y1NlakNiSUtac2JCQ1p3UXZBRndCTG9MSEFnRHJ0WHVvVElMV1Y0ZXJXZEc0?=
 =?utf-8?B?MXlIYXU1Y2gzZy9ZVTd6WHdxZllLeDJHcUpOYVNYOFNuRDhxbTM0THRXUmRx?=
 =?utf-8?B?YjFFelEyYzBLSnhDd0FKVWFwN1Q0czJpODIyNzI2ZTU3akg5ank3M3JRaVdq?=
 =?utf-8?B?T2UzZkpVRlk0WDYvd0FSUy9SSjUrOER6SVJ1ckdMR09RYUJJZmZXcVYwRTc3?=
 =?utf-8?B?eVdLdURyNHVsVzY3T0liTm5RL2lyeXR3SW44a3ExbkFlZWIxWklEZlJNNktH?=
 =?utf-8?B?REZ6cFBVdXZ2TVhpYVplRlFpa0Q5UGpEVzNnN2RiSHRKbmFDOURGN0MzZElV?=
 =?utf-8?B?S3FGYnFsNThYTEwvYjlySWdZMWZCVm11QzJPV3RWeHRmSEZmR1BxV3NNVWZW?=
 =?utf-8?B?dGRYZi8rcmt3RHJFM3lJTGZMK1VlbTFyTXVhdEY3d2FOV0F1NkIzZ0dPeVNI?=
 =?utf-8?B?SzFSOVdLZEIzcnBXbzlycm01K0duWW56T2dUemxseUdZK1lDM21yUmJlNEpa?=
 =?utf-8?B?eWJLN1VLNDJpN1IwcXVnRC9vbzNkeUhVTWkvdk9xQWhPQndOQ3pUVm5Fb3lj?=
 =?utf-8?B?Z1dybTZHckp5bDhmK1JCZlEyY1Q2RUlKc2VIdHpQRkJKcWlJUldnMjU5aDRm?=
 =?utf-8?B?REtZZ0w3Skp4ZTdNRUVXWnlGK05Dd2dyakxTQ3FJSmJkaDhJQ3NrdjBxUiti?=
 =?utf-8?B?eHBoWFpqTy9BNlRYUDlDR2tGOXdBaW9Qc1c5NSt5NmRSVm8zd2djWlBQSmtn?=
 =?utf-8?B?dzhxSnpWQnc4a0QrdzhZMVZwa2JMS1FKT0FkNmhoZDhXYjNXc0NUMzg4VzBw?=
 =?utf-8?B?YmJMWDczdGNVWEFBeGNhVU94bWptNTN3UisrRzlXR1Arc1BiTVZmT1ZpdXVa?=
 =?utf-8?B?b0lCQXB1MTNYYzVlZE13cnRzdWVBa0dZOW03cG13ZWpZUlF1Y2hNRHY4a3Nh?=
 =?utf-8?B?MFoyRlhRYWppUFBzL2p5UVJKUnA5OU5xdnZlLzlBWi9NbURiZnRsN3ZiZFhI?=
 =?utf-8?B?c2ZnUHZrMUYyN3EyUkpvQ2VrVjkrUEtJb1JkZjVCZ2NOSmN0L2I5UEkzaHla?=
 =?utf-8?B?RmM4REZVdXNRS1dOVFFVeTJqbUpzTENjQUxqWWVXaDJtK29DdFJGRVJQREEw?=
 =?utf-8?B?MVA0ZjB1NE1TQStlUGxxYzlDbURMaG13bHhxRjRWV0dyRUd6OWEycDl0NHF2?=
 =?utf-8?B?WkdRamJRZXhXczZzY0VrS1p1eVg5REJRbGJZQ2kzVmo2bExTVGx1OFZ5SXJi?=
 =?utf-8?B?enc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e5956c78-b8e0-4323-c62e-08dc8b30e713
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 22:42:13.2361 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5RZocK32gmWWl4q+cwXdmlIoSpSzVRHUu0YoRGDiTv8TIHMLYfOkSKw4tAcODBIqaKnySok+pabpdSur2NyBOPfqmejln0Ejx45l5/x5/QI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5860
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718232138; x=1749768138;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9JIzt0K9u5IzTvJ5XtuXAExyLk81A2+a1HyJRcfbmBQ=;
 b=SX78G0aLFzm2Xrkl/2JESr7WVCPjz1hgO2JJpYOYOKc3oBJXRwWkDech
 M1gN1OF991KnDdPig0HhufzhNz19Jk50DFL0UvKq0OjGB7Infu9zF3E+a
 J8exJ4uNu1ZC4cex1ZngYv2nqkzTEuwT98TccGVESKKyX7XUvz0Jf5lbH
 6SKzq7TRXK8AoXiv60vpCOR0VSpzlfYgT5oyIL2EtrSlbSNCKBdUqEfpF
 ViRZ0WPMffpR6KgWAIeB4r9WoL+noqJFzPUKDbK/tMI7hC0px8OmGHiN1
 4Oh/TG9XBCtk/ExU0T/3QI0xRPqTqpRcPVwzaYq9T0eSbDxOaFy/aKWhX
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SX78G0aL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 05/12] idpf: strictly assert
 cachelines of queue and queue vector structures
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
Cc: intel-wired-lan@osuosl.org,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/12/2024 6:08 AM, Alexander Lobakin wrote:
> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> Date: Wed, 12 Jun 2024 15:03:07 +0200
> 
>> From: Jacob Keller <jacob.e.keller@intel.com>
>> Date: Tue, 28 May 2024 17:43:34 -0700
>>
>>>
>>>
>>> On 5/28/2024 6:48 AM, Alexander Lobakin wrote:
>>>> Now that the queue and queue vector structures are separated and laid
>>>> out optimally, group the fields as read-mostly, read-write, and cold
>>>> cachelines and add size assertions to make sure new features won't push
>>>> something out of its place and provoke perf regression.
>>>
>>>
>>>
>>>> Despite looking innocent, this gives up to 2% of perf bump on Rx.
>>>>
>>>
>>> Could you explain this a bit more for my education? This patch does
>>> clearly change the layout from what it was before this patch, but the
>>> commit message here claims it was already laid out optimally? I guess
>>> that wasn't 100% true? Or do these group field macros also provide
>>> further hints to the compiler about read_mostly or cold, etc?
>>
>> Queue structure split placed fields grouped more optimally, but didn't
>> place ro/rw/cold into separate cachelines. This commit performs the
>> separation via libeth_cacheline_group(). Doing that in one commit didn't
>> look atomically, especially given that the queue split is already big
>> enough.
>>
>>>
>>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>>>> ---
>>>
>>> Having the compiler assert some of this so that we can more easily spot
>>> regressions in the layout is a big benefit.
>>
>> [...]
>>
>>>> @@ -504,59 +505,70 @@ struct idpf_intr_reg {
>>>>  
>>>>  /**
>>>>   * struct idpf_q_vector
>>>> + * @read_mostly: CL group with rarely written hot fields
>>>
>>> I wonder if there is a good way to format the doc here since we almost
>>> want read_mostly to be some sort of header making it clear which fields
>>> belong to it? I don't know how we'd achieve that with current kdoc though.
>>
>> Since commit [0], we need to explicitly describe struct groups in kdocs.
>> @read_mostly and friends are struct groups themselves and in the first
>> patch, where I add these macros, I also add them to the kdoc script, so
>> that it treats them as struct groups, thus they also need to be described.
>> Given that one may use libeth_cacheline_group() to declare some custom
>> groups, like
>>
>> 	libeth_cacheline_group(my_cl,
>> 		fields
>> 	);
>>
>> it makes sense as I'd like to know what this @my_cl is about. Here I use
>> "default" CL names, so this kdocs looks like Ctrl-{C,V} explaining
>> obvious things :D
> 
> Sorry, I read your comment badly =\
> I think this is enough to have it the way it is right now, as you anyway
> has something like:
> 
> * @read_mostly: read-mostly hotpath fields
> * @rm_field1: first read-mostly field
> * @rm_field2: second read-mostly field
> * @read_write: read-write hotpath fields
> * @rw_field1: first read-write field
> ...
> 
> I mean, they are already sorta headers, aren't they? By looking at where
> the next group is described, you can have a picture of which fields
> belong to this one, given that the fields must be described in the same
> order as they're defined in the structure.
> 
> Perhaps we could do
> 
> * @read_mostly: read-mostly hotpath fields
> *  @rm_field1: first read-mostlyfields
> * @read_write: read-write hotpath fields
> 
> i.e. indent the "child" fields, but it doesn't look good I'd say?
>

I was thinking like put a blank line between groups or something, but ya
I think its not really a big deal. Its more than "@read_mostly" looks
like a field name when in reality its more like a group of fields.
