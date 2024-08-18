Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 208F2955C1A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Aug 2024 12:22:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A24CF80F17;
	Sun, 18 Aug 2024 10:22:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S7xu0V9jvaKf; Sun, 18 Aug 2024 10:22:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 746BB80F1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723976540;
	bh=QI/+lSprotoUSTlPhKuIUFEwWswTbt1Zb6BGeCKI9i4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zqLpj1TKL1k+cyri3+ehOVe9YPthXD58u81ZHY4P81qbQq7v0BdMRRTtT8jshIXJE
	 CI7TOj66pnQG+11L6FzNviV6Dg2GtT/GtWAQ3spKctLWs56jYLMVSdcl+bENbx6Vt8
	 glfHhQ3bxFwkm7gf8cnvYXJQxGF68yXD2WiV3HrtrqB/ifQBkCQ9PnpmgKhYT4X5qG
	 qWR32zXw8HF2ttUxgnZB6K1BJaJIFddpH7H0ChQcPcM3j7litWEV717mUJiAEMbktY
	 3N32d1uMBkREdi9Kg2r2UiBTaATQsSapET/xh4AUvGU+pui7Axe4MsSVyfjpf6O6dq
	 0jl65ET7LohPQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 746BB80F1A;
	Sun, 18 Aug 2024 10:22:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 39B841BF297
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Aug 2024 10:22:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 268B46061A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Aug 2024 10:22:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pbz3sr2a3AFh for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Aug 2024 10:22:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2BE28605E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BE28605E8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2BE28605E8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Aug 2024 10:22:16 +0000 (UTC)
X-CSE-ConnectionGUID: DQlnPUMdQ6SVdGLtNv9KGg==
X-CSE-MsgGUID: zNxLnYzpQJmSLOHSh66Zsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11167"; a="26022568"
X-IronPort-AV: E=Sophos;i="6.10,156,1719903600"; d="scan'208";a="26022568"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2024 03:22:16 -0700
X-CSE-ConnectionGUID: U68OvLJ/Tj+EJkGicjPPOg==
X-CSE-MsgGUID: G+a0yknOQNeqIfiRuCKfQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,156,1719903600"; d="scan'208";a="59935654"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Aug 2024 03:22:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 18 Aug 2024 03:22:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 18 Aug 2024 03:22:15 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 18 Aug 2024 03:22:15 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 18 Aug 2024 03:22:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j+eFdDdGBQDwfn3zSLZYRgDBl9EBSDX/4d6/HpWhOE3vCJLBMMcD8uHf1wVC7lhM9/s8mtiqchp++DY9yfOTpYrNfOgKNDSVr+9JEyjXOXP5kKsUussdoXXx/M33gl4f3duZavekvM7KZzKbSkFoKSysI4d7HPtwOq/bC7lBkMgIPGMsJ1ooqRgoweRtyMcE+Wgt/CLOeTbr+tCrPqKOFgVx9XRiJqpsyT09Av5EWLetkcTkniPXHdalzMa4SgSv5F6tygx9N343fNxL4yh2c/ynhmUXY5UealE38Ew0dc16BbhVxa2sTsLUUjyWftglG8F0WelrDBXgL1u04kf6xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QI/+lSprotoUSTlPhKuIUFEwWswTbt1Zb6BGeCKI9i4=;
 b=nWDR+JsacnuxOj9K2oJZl2SFGhaMyG2lpke0z36nvityrFc+26Vp2glro5i7DTNsH26gaVMtHyrjdrtxcWZp64//+0Sht135pBQAFKpW7zQkep6eftGj0C+WsXv0kRuMORyd3Jb9rsccRXSCW7zeDL3Q8Lk7ziFHqv84N3x0j6PzafBR/5kkeXOMOHdYqSHW/26kCu0NRNpFjbss9IaHQw7spyKLKnehXXIx0Mnu4fuJURFZubI2nwGOFrFV8dPO4hEBMADnLghKHWJmUqK6I6rLhEtERJqxievcS1RwnC6pRJDURn/G4tKXHn+6vIbvgbNLmI5b5J1jH1Rct1ELPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by PH7PR11MB6723.namprd11.prod.outlook.com (2603:10b6:510:1af::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Sun, 18 Aug
 2024 10:22:10 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.7875.019; Sun, 18 Aug 2024
 10:22:10 +0000
Message-ID: <57dbf4a2-237a-4a54-a35b-4d6f3d720c39@intel.com>
Date: Sun, 18 Aug 2024 13:22:05 +0300
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240815131144.2953402-1-vitaly.lifshits@intel.com>
 <ca7af4aa-74bb-4e19-9121-141c3799e22a@molgen.mpg.de>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <ca7af4aa-74bb-4e19-9121-141c3799e22a@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::13) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|PH7PR11MB6723:EE_
X-MS-Office365-Filtering-Correlation-Id: 71cfa610-b43b-4020-11b3-08dcbf6f9eae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SzBCcC9KdkxyV0R6OEo1SUNUZDhRWis3eEJHTnRUYnRjbWVVdWc2cDlNbDVs?=
 =?utf-8?B?TVdxM3I0MUVPSlpMaUJzZFBYN2VBMlRNWnBFOFZYdkJiZEdGZG9raXI4Y2FH?=
 =?utf-8?B?NzM0MGxzV204Slk4WldrVXVnK0Qrbk90SjZURXFobmNrQWVENnVkeFF0Rmsz?=
 =?utf-8?B?SjhRcU1mUE1PV1BUOXphbndPOG1wSTBDc1NST1dubmo2V2p4WHc0TW0yb3ZQ?=
 =?utf-8?B?Zm51c1RXZnMvWXBjNjNNcC9KSXJyQWl3Q0MwbExNSEFFd2liYmhqL1BvZ1Bl?=
 =?utf-8?B?a2hkWjRYT2hEbllBVmw4VjhwL1JtdWVzNXVJK3lheTJ6YWMzV0EvNGEzSm16?=
 =?utf-8?B?RGRhMVlWenVvM2ZZb0FkYXAvUFE0TDdlSitaaHpyOXg3TnJEc0Zud005Tjla?=
 =?utf-8?B?a1k1VWM2djRqQTF0M3k2bDBDM0ZDcEtrajlCZHZWQ3ZGZjdTUDd4TjhrNm1t?=
 =?utf-8?B?VWptNWZScitLUFhkT2VVSjV3Yno5UEQrK3dFSnoxalQ2QWdCRm05bldyVDFk?=
 =?utf-8?B?aitBWEY3RzFKaWFaTjRDTjRPRHdaMlNYM0dKbko2ZDVISlNBVU9EaTNTelg5?=
 =?utf-8?B?ZDRZSUpxT2VsT1U1VGp1VWpVVXVHelI4R2FRWFlJQ3lEWmpFbEd6dnZ4TTBI?=
 =?utf-8?B?MEFKM1FNZmdKVVM2RHBIK2FvQzBIMk9qdEFxUEVZWFF5Q0V1SUllK3RKTkMw?=
 =?utf-8?B?Nnlad2JRaW4zNGJ4aTR5Y0hEWW84TVNJQVl5RVFSWkN0THF1L1lSLzhzT3NY?=
 =?utf-8?B?UlZ4M252anp5KzhucTR0QmRrZWhCelBwTUxpNGdoaVBFZ1BKVVpaeTVxSTEr?=
 =?utf-8?B?THFIWlBJNTNyb3N2QisrbUJBQVBla3V2cUR0Tkp3K2RXSnFscUd5UUU1NWNy?=
 =?utf-8?B?R2NROVBBVG9xZkJlOTczOG1YU0VlMGc5RFZVS1lkZUdZSEpuVU9MOGlaamtG?=
 =?utf-8?B?cWFwbDE5OHJPRWtsMmhuZC9RK3ZPNFdPQkhrV0RudC9POGpFaGliSElSWHJW?=
 =?utf-8?B?dGIrbHEvcHFLbVc2N2FRendBQzRyRXVsVmhzZmNYbHAzZTcxLzd1czcvWktE?=
 =?utf-8?B?NWdnY3FjUkhkdEg1RXhMQndpTkFydHdhMXBnbEtRYTlCbHBOS2Z3ZkFRMUM5?=
 =?utf-8?B?bVVnNU5wazByM2ZSdHU3Umd6Q0l4UThiVTdGQWRwS3VreXlUYU53UkRXY3h1?=
 =?utf-8?B?MDRzKzJCSUM0NVNLNEl5d1pwU3lXdytWRFRpNzdJRThyZ21wbWJMekpVMHpp?=
 =?utf-8?B?d05QR09iVmt2blYrZlhoaGlDeGN6V2FaRTVBRUlzRlRPc1RiYWNkZ2hJYWxa?=
 =?utf-8?B?U3NVUWR1MEtnMnhndzZVei9tc2FDK0ZDbFZxM0dZNjhVM1NOVUpUOWkxTnRR?=
 =?utf-8?B?OWFwSDVaY3dMQjFOanRLSGlLZEdROTNlS0RYTlJpVWRqOXVUZlQ0ZmNjTzM1?=
 =?utf-8?B?K2wyOEc1NnY4Vmw5YUNGeGNWNEQwajV1cWloNVdqK1VLMDB5ZjFLeU95bkIw?=
 =?utf-8?B?NXpOTEV2aHJDbHVOeS9MRFhUTWdlQkZKemFTSlN3VmxTemVLakRPWldnWmlB?=
 =?utf-8?B?akJNZGZOeU5kbHU1WVFsdUp2MkMzUzNjM28vV2R6NnMyUEMwaVZDaEhsVkxD?=
 =?utf-8?B?SCtWL0xwZjVpWmthaGJQSVNDTUNERHVKVmswbFhzMDRyNVJxWWtZWFZINi9Q?=
 =?utf-8?B?Y3dtc3BRY1BKYzZHaUsyRy81ZnNHZUEwVFExa1BOcDFiZDBlekhtZlYwdjl0?=
 =?utf-8?B?MDYvelJjNmUxbVJqWXJhZmNkNkQvRXRhcGZWSXIycVZUT3g3TTJsWm9WeDdS?=
 =?utf-8?B?NXl5UzdNWDBDNGRxYXdRQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXRSTExISEFGVjRnQ3BBVVR5Y1RWZjdSV1B3WnlOQng2TGpETzJyVDhBWS9k?=
 =?utf-8?B?ZU0wMTNmOXAvWmtjWjkvbmU3ci9hdXZXYnl4eENFWExtVjZDTFVHOEQ3UWcr?=
 =?utf-8?B?SUVYZWZKbkNBVUNGMUt6NEswQTdZMW9iVkY0NWlLSS9menNQMExxY2JjS1BE?=
 =?utf-8?B?VGtEY1BHcnllcTdOOUtSb21sN1cySFhWcGN6bHpVU1pwRmxuK1RrZzhWbDQv?=
 =?utf-8?B?S0NVUEhlNTRDK3A1YmVJMVJTblQ0T2FieVoyYTIvaDBVWHRzYzA0aU13Y0Iz?=
 =?utf-8?B?RC9mQ0o4bUg4Y3cwWURGTWxHa3h5aUhiWXoxS3FBVklXWTJxREtIT0tGN2ox?=
 =?utf-8?B?TGtrL0hXRDVyWW55RFJIL2dzTmVlQXdCSWtXTXZ2NnZtMFlPV0tPWUxWcGlM?=
 =?utf-8?B?bTZRYnRVTGRwU1dka0RNOUlvU1ZPZTUwWkJJcnFXanZ2Q3R1OXEwQ1NldVM2?=
 =?utf-8?B?Vk5XZE1IMWRTL0tUSlRjUUt5Q1FvS2lBeVpiYUh6b0hOUkxmWXgrM3YvNXFs?=
 =?utf-8?B?ZkRvWVBGTzNEeXRERTVHek9nd3hhSnd3akxBL0hPRWdKMEwzYXY0d2VUWDVS?=
 =?utf-8?B?ZGV5SFB4RmZCVVRJUUw4c2I2bzRYbWV3ZWk5emFDL1RQNjBrdk1DOHJTLzRS?=
 =?utf-8?B?RTd3NDM3cnNsZ0h5TUFXNmcrQmhlUFBIRlhaUnB4SFRLUUUyeVhVS3EvNklH?=
 =?utf-8?B?RWpBdDI4ZERMTmFwNWhTWmRYSnpZK0UraHBFMTFPRFdFeVU1QmVDNStyRjFw?=
 =?utf-8?B?dldnWUdkeFhTUndHbDVDMzlIVklFRko0eHVERkUyTUg4aExWN040QmViRjZ3?=
 =?utf-8?B?V1VFdXIrM0x6Rzd5bjV6WFB4UE5zVnVIM2VpUklFYUYwRTBaN3RHVWNJaVZi?=
 =?utf-8?B?ZzJIV0ZIYVA5SEpDaWVaM2dILytOUmZLYSs2UThQcjlKQWtQbENzWS81Q1dO?=
 =?utf-8?B?MVNVY2UydjVBN1diTHVSUllGVi9ZNHhDT0I4Umd0dnM1eXBybDdQdStOV1Vr?=
 =?utf-8?B?NUpMRlM2SWJWamg3bklRNnROZ015M25WaVRVM3Z6MWlHYU56NFlvUXhqdXRj?=
 =?utf-8?B?ZmZINm5XRlRieFdwL3hWR2JXZTZtSFllL2E2YlZKdXhKejhJY3puYjhNUzhy?=
 =?utf-8?B?TXdUd014d2ZGRUpCMHk0UXJkSzdMQWJsSnVQWGhMUUE1YVRYMnR2SG9UMUZN?=
 =?utf-8?B?MWIwaS9WTUpvcmM3eWVNMHBMVnI0aUVzZEZUcjFxaFVmN3VnNmFoakxGc3Fj?=
 =?utf-8?B?UXRkemhPSi9pWVZEUUVTa1lYZndxOGlCQUt2OHh5YzVNMkZkVEtMTVVjQk9x?=
 =?utf-8?B?MTBRZ08xeFA0YUYwOEFRTmx2R0Mvc001NzNKcFAxT2hhcmF2R1dwaENqS1p6?=
 =?utf-8?B?blA4Z0N0NlJNSXRZWDhCdjF5OERabEJQQWJMbDRMNi9mYTMyWnFPYnp6UVhC?=
 =?utf-8?B?UFRRRmNJSStqNU5EK0dOZzlMdGJuQ2JIeUw2WlBBalRpWW95RjFwK09aekVz?=
 =?utf-8?B?MnZhMGpvbEN5bjAwZzVIV2FxTGtMYnY1K0JTWk0xNHFIclUvSGVudjBmWERQ?=
 =?utf-8?B?bDRrR0FYRU5icDdRM0d5SUxweVJmUGd0dUpvQ2t1Z0h0L1ZHdk5Ca2E1U0RK?=
 =?utf-8?B?MVdPRFV5NE9DRXNzeG9tVlVHVFRuN0E2cml2a3BkeG14U3ZnSW9EdlRCc0gz?=
 =?utf-8?B?dFFva0EzVDErcjRSMEY0M204Z2lwRGtaelZmNldhcmhLM0FwSEIvZ3FrRHp5?=
 =?utf-8?B?Y1l5a0xvVlRDR29TQjRqL2VPdVRHMFpjL1krUStsN0xuOFYzbVZkSUk1VUc5?=
 =?utf-8?B?dlY2VzdBTHF6eGpqcDBEdUJMREx2RHJxYXFYZEtRTHprcnVCZVRoV1hRS1hI?=
 =?utf-8?B?a2pwRTZBWVlUTjdYejkvVm9hamJaZFJETW54a3RtbFJobEpLUXl1L2IrdEhN?=
 =?utf-8?B?MlUwQUZJNlpYbDdiditWTWZ1c0NkdHZmVVp2YkFtN29vZWNDSm9yM2Z0TzNQ?=
 =?utf-8?B?bUhrc2toa2NBWVQxRUY2emZSK3ZUN1pVR0xPZmlPc3JIK3Z0UDZrRTRaOGxs?=
 =?utf-8?B?MDFJNTMwcGpuZGNkUFlGSDlFVi90bERIT2ZVYWpJOUl2bCtlNURTQ0ZKZlZW?=
 =?utf-8?B?T3Vna1Z5bGQwNHYrUFZWbGs3MUM2dzNkdlNBZjJhTzZUMGdyckRyUlg1OXBk?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 71cfa610-b43b-4020-11b3-08dcbf6f9eae
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2024 10:22:10.6967 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oP1Q14IFBw2DvFO/I9J0m3ED0AnGKMDrXbYKzjkniHso9xOvrflJGjBV6fglas33ukGX4pJy4aUb25ToVBjv8TBVlnGSvQTQg2pxnzadBjU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6723
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723976537; x=1755512537;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bTxSnNa8x/Wgjgre9+uhAPYuLCC8fkjEpTbOU9W+S+g=;
 b=HJtEVVTF5mxfxyGMw3qiVYRij8ejmfUO3fjhX1o7enx7EJdyGGu501l5
 mRGwKKeB8C5z03752rJTKmHiVZQMQGsti7yrk8kvW9ltJdp3NICRU+X2L
 LqbFQ+N/WsD87JSFzxfbF4X644qML0COLxKaaO/zRFUYAWhYUolQ7PH1q
 zhOBN3ns/gxF8oGTM0h6JX5hJjNsBD9nGhf4bd0JcR+smIxBwf2rAMINp
 cE1Ed7vrf/bPmLHcjZ3A5ay8rYs6D7Eji+zoh8Bc5E93zjL4YK3zdo24P
 2TsRreFvaOZDZy/sSggtzteEBNazkJFg7vGicAByn077oMBxanHxGN/N0
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HJtEVVTF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: change I219
 (19) devices to ADP
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Paul,

On 8/15/2024 5:16 PM, Paul Menzel wrote:
> Dear Vitaly,
> 
> 
> Thank you for the patch.
> 
> 
> Am 15.08.24 um 15:11 schrieb Vitaly Lifshits:
>> Change the MAC and board types of I219 (19) devices from MTP to ADP.
>> These devices have hardware more closely related to ADP than MTP.
> 
> According to what metric are they more similar to ADP?
> 
> Do you have any bug reports or test system with problems?
> 
>> Fixes: db2d737d63c5 ("e1000e: Separate MTP board type from ADP")
> 
> So, it’s present since v6.2-rc1 from December 2022. Why change it now?

The device IDs affected by this patch have not been released to the
public yet. It was found during an internal review that the appropriate 
board type is ADP, not MTP.

> 
> 
> Kind regards,
> 
> Paul
> 
> 
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> ---
>>   drivers/net/ethernet/intel/e1000e/hw.h     | 4 ++--
>>   drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++--
>>   2 files changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ 
>> ethernet/intel/e1000e/hw.h
>> index 4b6e7536170a..fc8ed38aa095 100644
>> --- a/drivers/net/ethernet/intel/e1000e/hw.h
>> +++ b/drivers/net/ethernet/intel/e1000e/hw.h
>> @@ -108,8 +108,8 @@ struct e1000_hw;
>>   #define E1000_DEV_ID_PCH_RPL_I219_V22        0x0DC8
>>   #define E1000_DEV_ID_PCH_MTP_I219_LM18        0x550A
>>   #define E1000_DEV_ID_PCH_MTP_I219_V18        0x550B
>> -#define E1000_DEV_ID_PCH_MTP_I219_LM19        0x550C
>> -#define E1000_DEV_ID_PCH_MTP_I219_V19        0x550D
>> +#define E1000_DEV_ID_PCH_ADP_I219_LM19        0x550C
>> +#define E1000_DEV_ID_PCH_ADP_I219_V19        0x550D
>>   #define E1000_DEV_ID_PCH_LNP_I219_LM20        0x550E
>>   #define E1000_DEV_ID_PCH_LNP_I219_V20        0x550F
>>   #define E1000_DEV_ID_PCH_LNP_I219_LM21        0x5510
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ 
>> ethernet/intel/e1000e/netdev.c
>> index 360ee26557f7..80f8e23bc4f5 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -7896,10 +7896,10 @@ static const struct pci_device_id 
>> e1000_pci_tbl[] = {
>>       { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V17), 
>> board_pch_adp },
>>       { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_LM22), 
>> board_pch_adp },
>>       { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_RPL_I219_V22), 
>> board_pch_adp },
>> +    { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_LM19), 
>> board_pch_adp },
>> +    { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V19), 
>> board_pch_adp },
>>       { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM18), 
>> board_pch_mtp },
>>       { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V18), 
>> board_pch_mtp },
>> -    { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_LM19), 
>> board_pch_mtp },
>> -    { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_MTP_I219_V19), 
>> board_pch_mtp },
>>       { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM20), 
>> board_pch_mtp },
>>       { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_V20), 
>> board_pch_mtp },
>>       { PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_LNP_I219_LM21), 
>> board_pch_mtp },
> 

