Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C84928D18CD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 12:43:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F2E4940BB4;
	Tue, 28 May 2024 10:43:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ii0tJWm4uN7Y; Tue, 28 May 2024 10:43:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEA6740BC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716892998;
	bh=JptZ7XwNXvcna8MjAbsH1qrUiWNiltaSNXCivkyCy9Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=URY5OqyRSx/RttiH2Cmcv2pMSX8UHpfB+4jdG+Yoic/49Fe+rUToL4/AFsOdeMQnd
	 Nf1cDtDiPLXXVV+9chZdQWkiiGWwUprGyayNc7qPMCyfhtsxvqZju7fOy5kLIAh7M5
	 sxzPzMc3fk+vjCwas+7HYs+VffW4h6PxfFCE1NvJ0VXAeyZn//eJzb2qR1PIoVsa7c
	 XQj6p2UEmT6AYrhRz4/tUJySsiXeh3Gd4UoO7O9DXN4v4AvxihM5XiTfB6My+xNSIm
	 jC7h6UbmJXYsrYQU8dC8g5vJhnR2z6u82tIkw/t9M8nMaNTAzfOMtks+rNusSZoYmK
	 29laCwqeQRpiA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AEA6740BC7;
	Tue, 28 May 2024 10:43:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF8431D26AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 10:43:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BB34A405FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 10:43:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EgVUYmCPhC_D for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 10:43:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 63B77405F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63B77405F9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 63B77405F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 10:43:14 +0000 (UTC)
X-CSE-ConnectionGUID: vXV+IcJaT0OpTs+IFrI/Ng==
X-CSE-MsgGUID: T8UT/Wa9TYSi7SCmyVyhxw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13054412"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13054412"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 03:43:14 -0700
X-CSE-ConnectionGUID: Kqdcr7GDRjinxo4+0VnJdw==
X-CSE-MsgGUID: tO6ard4kQxyzR9Zx1SckDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="35513042"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 03:43:14 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 03:43:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 03:43:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 03:43:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jzCI3BTKJPm9Y1S5c4njgscMHbt4Tm7TL0Ic5N+P475KKZ2djoa8Kz+7EG8rhZmiZAZJ32LAeWkR7JftVu8xi8V/sAC/RC9UACXsjGm9y0nbD5jVfwyaOQ2hg0hXRmlLRxbZ6n0tu5yvCLEHgX8Y7Rs7hLqJEY06u0jJumRkO+19r8VJOD5kP9C92iIRkBtU9OFl4qJeRqU6XNLK6mMrbjNAICyOVK2axmZJpECM8Nr9DguzZ0MY6Pmk5lDiUUCPTfePjweiVqqoYQ6GpaoYey6ZzHPxNDfstvyLqcJLiUGgZRXrAq3Jejgyitq8N7vVya+e84yZcZwl8KSj+v/WrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JptZ7XwNXvcna8MjAbsH1qrUiWNiltaSNXCivkyCy9Q=;
 b=bC4L7X6sj1NGIgNvMZ2wkwGJfTaKFT85s9gltfe8WolJIOGgKss8kmH98ofZVlhSUdrFm5KGf6c72SAxOgLXH3CBck2+eTvB7ZqiSlzlLu+Tcu4N3SKk+7EdkPGpFhasKmXUvz1WnfLsO3NhrVEgzMyxfibFz8SbePjk1wuf3ogLdOop9BGjpmBrpdPKabFC+zQ6J633ewxZ9jJpeEMlJ8XW95VT1X4ydGKkiO+cjUwuqkCHI6IbWoRzgEmQvB7xz5Q/Z/L/7V1vxwzwc23XCY3x24ybDCmt4l7YUi29Ukik2+e7CG6++A5gEoS78yP3GaYhbqfK8OF/1QxwYQYHTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SJ0PR11MB5183.namprd11.prod.outlook.com (2603:10b6:a03:2d9::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Tue, 28 May
 2024 10:43:11 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%5]) with mapi id 15.20.7611.025; Tue, 28 May 2024
 10:43:11 +0000
Message-ID: <43e74464-029d-431f-93e2-809d64371c4c@intel.com>
Date: Tue, 28 May 2024 12:43:05 +0200
User-Agent: Mozilla Thunderbird
To: Ricky Wu <en-wei.wu@canonical.com>, <jesse.brandeburg@intel.com>
References: <20240528100315.24290-1-en-wei.wu@canonical.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <20240528100315.24290-1-en-wei.wu@canonical.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR2P278CA0041.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:47::10) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|SJ0PR11MB5183:EE_
X-MS-Office365-Filtering-Correlation-Id: ab54a552-9c38-4a7f-22c9-08dc7f02f848
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|7416005|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UkRmZ3FwZnBzZndqcGllR2hlaDlmV0pWTUNTY0RFWkdZL1BwTng4N3Y5MGFa?=
 =?utf-8?B?OTVqRDZEWjJTWWczYUFWNG96ZDZSNWpmMGN6aTU3dE1yemlDQlhESzl5dmVm?=
 =?utf-8?B?RFFMcmIraDk3RW5qeXFGSTU2bk1Tc3VPck5seWZXaDFicVJCUWdwUnV6akZw?=
 =?utf-8?B?S0oxbStOMlFsSVdOZlg5R0w1OFNCNTMybnE4NEFCeFNacXdmbC9ZMkhpTlpZ?=
 =?utf-8?B?bDZLS0hMc0tzTjJZb092ZDZpVTFBeWpGN1NTV3dHU0c0V2VsM3loaGJUWHJF?=
 =?utf-8?B?d1dBSlNlNkhzNmtXc3Voa0crUUtOZWFScGZHVnJ6TlRSUnlPT3JEVW9iSFBa?=
 =?utf-8?B?VEFuOVZsRVg3RjR1VmdDTlhObUpIM0ROUmMybTc2RSsyN25wNjBaWnJnS1ZD?=
 =?utf-8?B?ZUJudU15Zk9VVW9Uc1JtT0RPRTBubG9TUnVuWWYrZ3JDWEVpZDN0RXlMVHMz?=
 =?utf-8?B?blpqbk5LMlo3Tk1HMEgvTlZpZDJuWkRSUmRBWjhyOHhxTmI2TCt0WDZ3NWl0?=
 =?utf-8?B?RThPbzZmOGFBYVJWVCtQZ3lkMGVrSmN1WWQyb3FmTDQ1TzhOM0V3RXZkZFFQ?=
 =?utf-8?B?WHBFYVd6RlF4aEdyUUptQjlud1Y2ZGhLaFM2cEoyR3kzYmI2bW1IZTNnaWNy?=
 =?utf-8?B?bTJ3eXo2U05Id29BUVdDcDR5ZWFTRGQ1dzZON01wRG9ESDVrendxZmpvaklQ?=
 =?utf-8?B?RlJTRGVqUHJvRkYzTi9zM0JSUkIzUDJLZWIrSi9YYk1wOEsxYloxa05qQmpS?=
 =?utf-8?B?SXZhUzBHbit2VFcwamRZU1RlK3Uya2RGU3dLOUEyQUZKN1JCS1ZYaTZRRXg3?=
 =?utf-8?B?bXduZ1Myc3B5d1p6UGMrOXNkOGNSU0pzUUdWNDFzVkJYVnBEQi94VnJuRXFC?=
 =?utf-8?B?aGFWVVJGZTlaMEZPWU9uc2NHc0lUaVlWVXl2amVDTktobW5MQmdnYy9DRGRR?=
 =?utf-8?B?ZVRybkRObHY4TGxpeE0zV1JBMnROUjdRSUNIL0gyZnNPSEZQSVBwVFI4MjNh?=
 =?utf-8?B?TzZsZmxmdlFEbkVub2lDNTA0L0ZBRXpIUkJvb0gvbytDQVQrRUMrL2VNanFN?=
 =?utf-8?B?cGphaTBHSVRidjJtZXhCQ28yZk9wY0ZLRTI5RGpoOGlKWnF0YnVrQ0NUR0Rm?=
 =?utf-8?B?Y3A4azJBbjZIdTYyU0JzQVgxaGZFTFZNaTl0c3hoN2g5MXJFUlFEcUQzUkZF?=
 =?utf-8?B?WmtDVE83RTB4cG8wY0ZacmhaaExqQTJMYWNjV01KOXVJMXN0cDJ1M0ZjYXJL?=
 =?utf-8?B?QVVOd001OUxPY2l2MVdRekJvRnJkclBqRWN5WmJXWVN2K3ZZOEpGTFF1Szkr?=
 =?utf-8?B?SzQvOXBLRlVub3RweEp2a0xES3hET2tBQU1ydVRHVzk1NERRVXhhL1VSTGFo?=
 =?utf-8?B?T202Y0pzQlJ0VEwzYnBxUGR0N1NWREdsN0NQYnJFd0hEUHFzS3lvZ2tMUE4z?=
 =?utf-8?B?ZFgxNFRwUWJicHdmZDhaYXAvMFVhQzBka1Q4Y3F5eU8rc2o3NllyNitlNUp0?=
 =?utf-8?B?Mm4xMGFHL2NTZnJIeGpIZnR6dGJUMkpLSEJIKzFvc21pc1YvSkR5NFhyQ0lu?=
 =?utf-8?B?Sk1ZSG9iZFBNVFZtRGdpZmwxZTFENndPbjRUdVIybTNnR0NEZHNHOHFnTDFI?=
 =?utf-8?Q?CtczkqAHtZc8RnSSJHc/1vR7BVDF4IGtSGBSTxtdB2Qs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(7416005)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cHFDZkhVZmh6QzFyZThHai9QUWlRZFZqSXl3V3JzT1lEOHh6T1RkdWlBUnJv?=
 =?utf-8?B?a0lGUnJFUnpaMnJ2VjF4U0l2akVYWDRKRFVJUk9wYjZlazFhZjV4M1l5R1ZH?=
 =?utf-8?B?b2xrUjFrQ1Z3STYxVzd5UldsbnFoQ3QxeGF3dUpRMHJ2cllDbVQwVXd3NTJw?=
 =?utf-8?B?UjRuaHdaZWJ6cnNXbUFlMlVXMkxidFkzcXBWald3RXlwQk82RjZXTUVIWVUx?=
 =?utf-8?B?ZGkvMHlNSFFBeWEwWUNiL21OM0VNdzJ6YmNMWS9DSlU3VGJic3A4VFBoNy9h?=
 =?utf-8?B?RmNtMSt6eWkySVE4WWtJR1Azb2VJWFhscWlrNjZYcFpWb2U0c2tWVStRKzBJ?=
 =?utf-8?B?aUlrcGtKL3ZWOXFQWFExKzlvWFJoSnR0VEJ3bDRaNkxhNVZjZUh0dVZzME9M?=
 =?utf-8?B?dzVSQlVjLzUyNXk0ellGUmc4WlpReDFsVWlpeWFtZzFwWXhKdU9yUVFzOTFI?=
 =?utf-8?B?TDJMSXZkRnIzdC8xU1ZrNXJ1bWdlOGNkM0gvU3pWaUR3OENNRlFCckxnWFFk?=
 =?utf-8?B?SkFHWVBFRk9GY2UwdFF6SG5DM1pWQmJkSUdGekdIc3pYcndLR01mVDRXVWNj?=
 =?utf-8?B?MnhlRXRBd25qcHRtbm5nV3RzMmhrVmdNSHZLQkZKbjVmbTdxWm1kVjV2YjFO?=
 =?utf-8?B?NWh5ZEZhWmZ3cnZhOVl1amUxaWZxVExMNWZJZ2djRmhtODNoVzF2TERVcHFR?=
 =?utf-8?B?S2NMSlhiMnVaYVppMGZjdkVjZVNNa3lNS2JzdkpIUzJlWTUzd051MHpDaUNv?=
 =?utf-8?B?aU94cFR2UWZzbGNhaDBRbUk4TG53VWN2OC9xZDZXWmQ5UUR2WjFIZFk3Tncx?=
 =?utf-8?B?TEN6Qkt4dWY3QXluUzlVMkpmanVBRklkMEdGTXpmOUZyYlRtQ2ZuMERhc3Fh?=
 =?utf-8?B?ZWhCTlpzMWc4TFZKUDd1dmVxTVJpNXNZbzFkeVdORXVtckMrVFNYa01uTmkr?=
 =?utf-8?B?WklDTE9PbFErOUtqSWM4andqZ1JuTzg4cXYzV3ROTzVCMFBmTEtRQUpZUGdL?=
 =?utf-8?B?MElUdS9uMW1mYWt3bUxSWW9qTW1wcmV3dFgyQURuT25xS3dFQkxDcDUwdVZG?=
 =?utf-8?B?bk1WSDB2ZmNPNjhZdHZqMHlNZG11Qm5Geno5R2V6RGJ0VEJXY0N4TFhlQXgw?=
 =?utf-8?B?ZURFU2g5RGFFdCtiR2g4OWQ1cmFpSG9Cdlk4elRRbU1pa0wvNHVaQXJtcHZO?=
 =?utf-8?B?SUpjTE1XeHJqSHFTVWZCR0VHS21hTnhtMUwrVGNoeFhjZ0U1eWpqcGJMY2dG?=
 =?utf-8?B?WTZSeFQ5YnNaSjh6UTR5MnBNV3NWNlZsYVdLenVKOHlKUWFiek8wUWIxZXB0?=
 =?utf-8?B?S0o1TlQ2ODl5UHlzbFlUSnR2SmZna2cycERvQStldEpNc0MzMHlaSmtxUzBj?=
 =?utf-8?B?bVprL0ZSNVR6RXNIR3p0cWk5aDFlbnFmbjhkMmZmU3Z6aGpKblppQUxTL29x?=
 =?utf-8?B?eEQ4NWZRYlZ6eGdJM0dlV0ZLQmEwc2ZKejZNTlh6cTdLZ0RjOHJnVXYzbUJX?=
 =?utf-8?B?bWt5czBSeUY0bkQzandwK3dXN0UrVkYwZ3JRbkV0aDBvVFhXYXM3S1NsSi9Y?=
 =?utf-8?B?eHpPdjNSOWtjOTQ0emY5cUMvZllPNWVrM0tHR2FpOUNzd1pJWGhwSUI2dEtH?=
 =?utf-8?B?bXRsWTBaK09rNWprU1lEZVBtY0V1QnhGWk9WbGh5dXNIRHBta2RnVjRnZTN4?=
 =?utf-8?B?c1E0a1ptZkpIL1lSV3o4SHNFeUZyUzIrL1pNVnc0RVZPcEJFanZSMVMxNEFP?=
 =?utf-8?B?UG9XTEtwWVZHWkhHQ2RabFZyYStXT0tvVTdWd1RKRThCRmwzcVFZdi8yMFpB?=
 =?utf-8?B?VUpFQmlydmZlbDBHckNsTjNrZkRnajJpUStaQUlZWjYzTG5IQ3hhMU9zWkMv?=
 =?utf-8?B?ejFIQmtiVFVuSENzRjN5ZGtubWxCYW5nUTZycFNkTjNyTndVVG1zTjMyRXNV?=
 =?utf-8?B?ckFVK2dlWlJOZ2hJL3R3M0hkcFBDdzFiVWtiN2NLNUVndElhY3pjazFRZ1o0?=
 =?utf-8?B?ZXBhR0gyVXZiR0w2VFlNSG13Y0NyMXVCU0R3K0pIcFlYQzNQN3BUTGJySlZW?=
 =?utf-8?B?cGp0cThaanVMUUFTTTBCM0VBVnd6ajBjTEw3eGVEa2ZCdFpXOCs2WFFtdHNP?=
 =?utf-8?B?U3p0RHhGbmUyb3hPMUloQ0lvSStibzZLQXAvN3dIWElNeURvVzkvbWpwM0pn?=
 =?utf-8?B?Q3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ab54a552-9c38-4a7f-22c9-08dc7f02f848
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2024 10:43:11.4358 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n2Ok18jz/82tZobyMhR4yBjdAwecNBxJlfavw0CSygeu94fiI26Uqm/XjC+z15GT+Vx0wHTVlwxk6L8lS2B6OlHeHSXq3VeS2wTLtcOGgUE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5183
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716892994; x=1748428994;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=niVGndCkwD4ZvR5tGi88Mn8T48SAgIiceCpvD0lZvYI=;
 b=NrDsRiEPlBoPIePECw+NJGBJMW5/qX0Bzke++FXdJqqdyVZtwT2dhPzd
 6aklqJN5nQyy/boLYju86G/uPDth2kMRYfBkiFqjrw89+N14CEO/0e19/
 Lv3lgsRa+nmehY1OCSb9qB+52LXvxdxu+QUsCVHJ/VLFPhakB6J2+pxeQ
 julaT0Q83MjjpTT73HPriSm7I/Qt1MpvVEq+lofnADEXJf6zN29+g6O6Y
 zXpIt9EKEPVdafO2swGMtD7C9TsNmhcuYqxItiOsKLbZM2VdIMA1rt5sT
 +KRVSDdJOpFEPnm/gosZM9KLNfcREAC6GXotowVkgILkYfOKq3TC/tbG0
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NrDsRiEP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: irdma hardware init failed after
 suspend/resume
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, rickywu0421@gmail.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 28.05.2024 12:03, Ricky Wu wrote:
> A bug in https://bugzilla.kernel.org/show_bug.cgi?id=218906 describes
> that irdma would break and report hardware initialization failed after
> suspend/resume with Intel E810 NIC (tested on 6.9.0-rc5).
> 
> The problem is caused due to the collision between the irq numbers
> requested in irdma and the irq numbers requested in other drivers
> after suspend/resume.
> 
> The irq numbers used by irdma are derived from ice's ice_pf->msix_entries
> which stores mappings between MSI-X index and Linux interrupt number.
> It's supposed to be cleaned up when suspend and rebuilt in resume but
> it's not, causing irdma using the old irq numbers stored in the old
> ice_pf->msix_entries to request_irq() when resume. And eventually
> collide with other drivers.
> 
> This patch fixes this problem. On suspend, we call ice_deinit_rdma() to
> clean up the ice_pf->msix_entries (and free the MSI-X vectors used by
> irdma if we've dynamically allocated them). On Resume, we call
> ice_init_rdma() to rebuild the ice_pf->msix_entries (and allocate the
> MSI-X vectors if we would like to dynamically allocate them).
> 
> Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
> ---

Thanks for the patch!

>  drivers/net/ethernet/intel/ice/ice_main.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index f60c022f7960..ec3cbadaa162 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5544,7 +5544,7 @@ static int ice_suspend(struct device *dev)
>  	 */
>  	disabled = ice_service_task_stop(pf);
>  
> -	ice_unplug_aux_dev(pf);
> +	ice_deinit_rdma(pf);

I think this should be called later in the reset path IMO.
You should call ice_deinit_rdma in ice_prepare_for_reset (replace ice_unplug_aux_dev),

>  
>  	/* Already suspended?, then there is nothing to do */
>  	if (test_and_set_bit(ICE_SUSPENDED, pf->state)) {
> @@ -5624,6 +5624,10 @@ static int ice_resume(struct device *dev)
>  	if (ret)
>  		dev_err(dev, "Cannot restore interrupt scheme: %d\n", ret);
>  
> +	ret = ice_init_rdma(pf);
> +	if (ret)
> +		dev_err(dev, "Reinitialize RDMA during resume failed: %d\n", ret);

And ice_init_rdma should be moved to ice_rebuild (replace ice_plug_aux_dev)

> +
>  	clear_bit(ICE_DOWN, pf->state);
>  	/* Now perform PF reset and rebuild */
>  	reset_type = ICE_RESET_PFR;
