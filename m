Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPgrC7o3e2mGCQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:34:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB81AECEC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:34:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 272C280CF2;
	Thu, 29 Jan 2026 10:34:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wcTUl6l3S6pZ; Thu, 29 Jan 2026 10:34:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BEA580D13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682871;
	bh=b1QOJ2QJNAEFSZnU1Tn04HmojKAMobu9JMT7IsMugtI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7mJlaW9awnfz5nSeMVDpDH5JQODDqQg3I12UCqmLW+rn4DORW05B67pHssa9qo7k6
	 4v5wjdTpfb5M3iwT7RdISKn6NuzlGd5w73HBWlq6rSf+nKKnvqZHC/RvMgVodo070M
	 t8xceqDF78x7ACmWrtJ28eqSnEx/6cqKSj1p4TfmDqUoyVm6V/KZ77GfRKQrZxSA+5
	 UlR97CcM/2j/loRShC0LhsAVM4H0+2WkhalkH5dcQEAtcBypMeb75F9htn+lvwnGDX
	 3BknZOOz6yY9Wlngavi78J+CEiJZCxZn6OOmsUIT5jJWPGP/iUVcYzzcGp5tiTVRde
	 cvcmKhwjAxaTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BEA580D13;
	Thu, 29 Jan 2026 10:34:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 21D861AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:34:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0495B40592
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:34:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3JfaADvSCzif for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:34:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D86EF4051F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D86EF4051F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D86EF4051F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:34:28 +0000 (UTC)
X-CSE-ConnectionGUID: L27qh6eeRK+5LKKkHthkCw==
X-CSE-MsgGUID: CvgyIgdPTKynsbj94wcMLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70890939"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="70890939"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:34:29 -0800
X-CSE-ConnectionGUID: cn6gOWURS1Gak1o8QNRbNA==
X-CSE-MsgGUID: W+I5/XI+SiuU+oNEDm1hPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="239275077"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:34:27 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:34:20 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:34:20 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.62) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:34:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xH2gPClpQW0Cn42IhFmNLBAyLsbf1NRuNhpN3KeJZUl3uJIgnaNI9pOCFVU7yUv7y3stD0knlrcnTxFmoxE+iZ4QYt93keBK7gyE3oRnW0xbHCeRuWCaiAJgoX0xDI2S+SuKPYZse30axTp15MnFD/j8S7O+Khkcm2UYZi4lB6gYpTjE+Xbm7jk1/PbmD3mIIs0wbqOiIj+II8H/N0gLa3enKalpLDGrljL1s6kICxXVfItcmpptOOAzDEx5F6SSghcbDTAeuM7FRDfxkQoJS1J3Ix5I/c55Nzlcx/qRbeb1dcgOEbtCKwMxMRFC6z3nDRj95lFhS05DNLWrjdnu5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b1QOJ2QJNAEFSZnU1Tn04HmojKAMobu9JMT7IsMugtI=;
 b=xG/FoTdKbPhCp8hBFyCXQRQ9agY4dfkIcK6A7bFJ7sStRwSynHbS7sa61ET6WCtxyJbWwfvCBEZ5Sg53kz51u9tMYJ6h+TKZ1ZZbJ5F3heJO1KRL2K4b7WBBwja4oWa5P5Mbi4mz2kZvN0/VfKr3I0CuJDGAg9BIdkHhksUbiwZRoM1DHmY/kNdvz9DY2Haw7OjVOyqk5DBSohd90VUWXQA8B31QiOSwH8ajmTUVUsTi5KRF5TyVnPxB/CNMBC+RKUeYqnOtBdDoWEKHPbNLE9qJJFDrc9tUUvQfG8fVEDMAUnGzVmKcI+O+WMmWIoc94zxcJ537gkYy0q/WG+kidg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB4956.namprd11.prod.outlook.com (2603:10b6:806:112::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Thu, 29 Jan
 2026 10:34:06 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:34:06 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 26/30] docs: kdoc_parser: use the
 new CFunction class
Thread-Index: AQHckPakafOZbCpzeEKp3Of4ViRPOLVo86HQ
Date: Thu, 29 Jan 2026 10:34:06 +0000
Message-ID: <IA3PR11MB8986D9DA1AD0A85991E97D3FE59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <4ca4e256922bc42ce1c86e70c20e6a35a599fcfd.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <4ca4e256922bc42ce1c86e70c20e6a35a599fcfd.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB4956:EE_
x-ms-office365-filtering-correlation-id: e738f409-f4a3-4976-9f2b-08de5f21ee29
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?aXlnWjhCMlhyajNjR2QwRldtWUFFU1VxaVdERXhuci9XbCtUTnJXMktINHRG?=
 =?utf-8?B?bEg3eG8xU0htcUY3K0RvSUkwZFlpZEtvWFI1MFk3b0xNNU1Pd1JLM0taNzFz?=
 =?utf-8?B?MDUrODNQZ2hMaDhUcnRGeC9pVXFTbWF2aVE0aWJqbm1na3JPQUJjeityYVJk?=
 =?utf-8?B?WHlyYUlVMFd4UUkzVmt6UVF2TUhvZ2dWRSs2OFlxVDZ1cHZZSDVkYVBrVzVN?=
 =?utf-8?B?ZmRJLytjUGJYNVJIUlJQRHUraEF3Mk5PYUxTV09SdHdoOVhHN0tmRXFVZW9E?=
 =?utf-8?B?SEN0NFdOL0lTOUxjUU9hVjQ1YzhaUDNDajdWUXpMV0lBaVN2ejI3WEVYR0NO?=
 =?utf-8?B?c0JoYUswNUIycUNOTzRNSkR6TC8renpNRkNxUUkzRmU1VGVmVWRGMW51cHlz?=
 =?utf-8?B?Rks1dllSVlRMczBBdVM4OFhtUEVvYkNVQjRGZkxuMmFYSGt6NlNMc3FUalFS?=
 =?utf-8?B?Vm9DUk94RHpobWtPZjhidmtYTFNLWFVzTCtaa1M1U3hLQmVIRnhoZ0JyazhK?=
 =?utf-8?B?czM3ZVd6QXI3c3lyUU8wajJPYy9lVkJPRm42RE85Uyt2VE50MitFVFd2dDZY?=
 =?utf-8?B?ZVBmUkxGckxHYVRkTlZTZVQ0eEJ1ZjU0V3hRQ0xBMDArcnlYVmNmTy9hQ3hz?=
 =?utf-8?B?bmRUS2dvamFaaXpJMTVsb01aMWx6RWxNUTFmdlRyZGZwOWxnRnRZcWJkc3FP?=
 =?utf-8?B?QmRiV3FSMzV0NEdHYlFJSjdIbEkzbFZidHlmdkdTTXU0OHNzRTFVSGt5WW05?=
 =?utf-8?B?Zm5VL2cvU2lqemc1TUNsM3dpTmcxNDRFTWNUcCtrbE9zU0NDQkVBRGNkbTF2?=
 =?utf-8?B?aXZXT3ZDWE5SRGgyVnpPbUplZVQvL0ZDd09aVVk3QVpqQ24zcUV3NUE5TElt?=
 =?utf-8?B?YThNb3VSTyttRmhxcml3SGRrSjA2WkMyWEZBUlNqaVA4bUlLZXc3clBGOHZt?=
 =?utf-8?B?RG1GamRoOFhIb24zQkY0bURCbEUwdTgzdHJndFl5bmJ0b1pCVmcyYjJrWFpS?=
 =?utf-8?B?bnc5VlpIRk1JSjhMZ2Z6S2t6T25LQlI3amRia3QrSEpaZWg4ZlhEZStnOFRx?=
 =?utf-8?B?Qk9EdFZtUXhldkRJSFhvbVBVWTNGQlNjakllMUVSVWhCK1NULzVsMXFFWDVW?=
 =?utf-8?B?ZHpnVDNROXJ1enRuY0ZvdXVqV1E0ZVJtS2VQL3dxVDdWUmh4STJsQTdVc1ky?=
 =?utf-8?B?KzZURDg2Z05WcWRTaXYzL2R0SkZLdlQ2SUtKcnZ5K3lkbnF6K2I3eEt4cjB4?=
 =?utf-8?B?SXFYaDF1dC9seWJkb3U1MzVxbWJCeUs5RXJRNHRxZ1lwcHpEWEp3bENzcEh5?=
 =?utf-8?B?aU45VnErRFVVaU5xQnd1NWZsaXNsWjFSeTJic3dLbUtpM0dSNzBCeFVpeklS?=
 =?utf-8?B?M2hmTXgzcnNiRnozVlJXQ1M1RmkrUXZ5bmM0aEIvcG1VQi9lTzJIQ3RLUkl6?=
 =?utf-8?B?dXIxcWMyVTVjaVlhLzdnaXNJaTFvQTVmTDNNMTRrbGZNMDB5eUxhMDdzR3NV?=
 =?utf-8?B?TFFPaHZUckxXOXprK1Q2UElDMzZpYmVOeExYTUlHT3ZuSzYzYkZ5RXBPRlVV?=
 =?utf-8?B?Ky9hemJLZlc3KzdaWUhpRWsrZlRQZzhUb2lhS0pscWVRcExYdFVrTkxGMlVu?=
 =?utf-8?B?R0lqbC90SnAvQzRaWGxobERrWXdVbm9nd1BocGp5S3ZDb0hQZ1N3ejRPNFd6?=
 =?utf-8?B?K2JFZ2haaEtGbUFidGRHdlJvUUd1am1xVmRkK1MySE9DQUw1T3pTRFN3dTFz?=
 =?utf-8?B?aTlFREFjMS9kaWFtYUZ1NTdnb21LVFArb1dkYVVTVE12Ylh5TW5HUlVBeitX?=
 =?utf-8?B?cWQ4c3BmQWxSb3VnU3U5RXZoZUFjSkFKY205dVAwSnZJeHcyQ3o0MTN4azh4?=
 =?utf-8?B?cVVKVFRwb1Qva1FnVmdIUkV6cTN2VFVOZ0xLYU9rMno1SGt1WE1JekhXV09t?=
 =?utf-8?B?NDNybmxEOVZYMWc0MU1YNnN0Q2UranREZWsxQkZ1aDFjcHpWR2dvL1BPVXNn?=
 =?utf-8?B?MTU0SjhITmxZSG5hZWNycFQ3TlJTR2VhWEZmNmdQSENtZis5YWs2MVlTUDFT?=
 =?utf-8?B?TnJhMWdQanZMUkFBQXE3RUk2RmRpeTNtMU1YdkFnR29wWkVGaXJyWk9xWm91?=
 =?utf-8?B?SHNtSUNZV2dVZ1pWWHdEa2VucUZWdVJremJkQ1hZdTllOUt3Y3RzWlBpbkVD?=
 =?utf-8?Q?P49ey3e/Dyirh0MjJzyx8D8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?alJqRWNwVEtES2hlT1lDL1c1K0hrMmRCdTY2WEZySjVVcmJJV1pyc0VwOHBi?=
 =?utf-8?B?NjFmUzNYUXhldXdXN01PNmJ4SjZFV1h2dkZvNVhaMUFlZzdzM3QrK3lhamVs?=
 =?utf-8?B?d3lreGdyTkpkRE10ajJjVUZManFQRHVsdjF2QVNITWQ2bk5iSlJwTGdVVCtm?=
 =?utf-8?B?TmUzTXBGTHlrUkVxb1VXUXpuNHR2NUpWWmRtUGFGcldwWGYvLytaMWl5ZmYv?=
 =?utf-8?B?R1NkOTZ0WjhqeGFVU0xzeFpmU1hXTWo5VFlLQ0kwMXkzZHBjTTZYVVpXODRL?=
 =?utf-8?B?ZUR2WFZPZUdJeUlKd2hJT3pNSndQeDIrTkRnV21nVU9hR3JMaGh0STd0by9l?=
 =?utf-8?B?YW92OWdVVmQ0VmdkcVpwdU8vWWtmdlFoUjg1YldwTFcvMzdyM01tK3liMnRY?=
 =?utf-8?B?a1NqWjkwWEJjb1hCSlU5SGxzZ2ZJSzdnSncxK0twcUJ4cUtXaXladlZFeURX?=
 =?utf-8?B?RDZ3UlpIcHRHRmFzV2oxd3ZVVTVwUk4yVFgrdlcyRnRwa2VKMU9pR0ZCemtO?=
 =?utf-8?B?Tlk0MzZ0N2xrSXJTQkhERUNac1ZudEIyMmNpOFhNTkN3YVVhZ2IvM3VLT2ZN?=
 =?utf-8?B?cjBXSUZvTEVlZ3Eyc21KUUNhWjM5TWNaOXFPdE11MUtKa0p5NHkwejhDZkZk?=
 =?utf-8?B?RUFYbjV3MFI2VWpuRTR1K2lsTVRPNTF3WGpHWXg4bnE4YzMzZTNScWtxTnRy?=
 =?utf-8?B?eWxKUHl5bWlEdUJRcnBCUmo4VGtGaXIxVU1mcWIyOHQyWkxVVkNFOExYKzY1?=
 =?utf-8?B?UTBlMXV4SWJUZ3dMdUhRR3A4bzFKSmk3RDZkVllOZ3dUYjd5b0NkemtwUVZV?=
 =?utf-8?B?R3h3Ni9NZmFxWWtMcjFCVDhQcW1ldXhtRlVOMTFyOERsM0JUWGdWQ2w0TDEz?=
 =?utf-8?B?d2RXa0JSZG0rSmxMVzNZcDdoZ3BOVllNT3JMZWp3eGQ1UFlEblpUWWVqd2ls?=
 =?utf-8?B?UXBEbjhTdnFDL2hHOWlXNnh2MDlLc2ZFVmFTUzY5MEZiR0F1L2hxemU3aXZW?=
 =?utf-8?B?a1RhT2R2UmhIYUR2ZmZ5S2tGR0UzRjVibkRCU2xHSmhNdnRSUXhtN0FVUkRT?=
 =?utf-8?B?MEFKS1BFRVRnNXRZOEZhU1ZvQWVaNk54QzZxeUoxOStqZ2lzQmIxQmdSTlkz?=
 =?utf-8?B?a0N6REtYQ29EWnFWSXQrcmhySTRMVWNLUFptWnBwYTRWMTF1aHVyampsYWlq?=
 =?utf-8?B?RVlPRnl2TjJYVU5ReCtLMjlFb3luOWk5bUVINE5yYXNqVGJ0a1dROUlzcDN5?=
 =?utf-8?B?OHNRTVZMNmU1YUdOdE1SOGJIOUZRZmRnNTFNREg2TGNrQUZHOFV6d1JvVm5l?=
 =?utf-8?B?L0FkRnI5Q3ZiRnZMYjEyY3pjbWt4Ynl5S3o0QWJpeTlyc2R3R1lMZWVYbXhD?=
 =?utf-8?B?RzFVaEdQa09yNjRrWTgvLzJ6OHdlUjVEb2hnT3pjdjlxQVRsdjQ2cVZZaXRR?=
 =?utf-8?B?SzB1ZlVIdmtSVGJGSlppSk5KQ291TXprU2hSZnFUTklMaHpUdml4ZHdIR1hp?=
 =?utf-8?B?VVhLTjMvM1ZWOU4xWEd6MFBTdHhTcjBpRVdBbnJQbUMralc0d2V1V08wWnU4?=
 =?utf-8?B?VmdRbzdZeUdrS3dlOGlmNWo1d1pyYlVQbFJSa2p4UHFMUGNaNG5Rd3cvaGVU?=
 =?utf-8?B?ZFJicmZraFNiNElDYklPcU5UMmFkVEZxdi8wRHdTR1Z6SEJWRjJYMElJSHZJ?=
 =?utf-8?B?RXRBK2tkS3ZyVG9obHRDL1RMbjN2TVZrSTJzU3hsL1V2S3F4cTJvTklWZThF?=
 =?utf-8?B?UmJyRVc1amFLSE1CeU54elFsVDd1bkNsR3hlMTZyQW5teWZsbmVkKzFQcDNU?=
 =?utf-8?B?eTRPU2tuYUxacXVmdFRWV3lSMkcraHR1K0o0Nm5ab0FSSXRvRFZTbS9lZUI1?=
 =?utf-8?B?SVJNZlJiUDN4WmtTc2JwTkgzVCt1ckYzRkErV1FMZms0RGFmRzZkVVhOWE5K?=
 =?utf-8?B?b3pHRlJqZFdBbExYNlZFKzd4YktrSDhkU0hpc0RubXgrWS8zSThXWlJIMEZB?=
 =?utf-8?B?NmtkNTdhNmpvS0NnNlNtRVU4SHJFemRzcjR0RldGVUpZRlFPd0RDUTFzNHZo?=
 =?utf-8?B?VklnRUhQY0doRW1VeWtCanRCbTFNQTdVOUJaRm1tMDllVVAzeVk3MGlBVTg3?=
 =?utf-8?B?UUVobnZpaVptWkttMndFcHpjbFlTQU1YK1lKWEdVa0Y4TytRR01lV1hLays5?=
 =?utf-8?B?d21Dc0xOMnQ4Vnh0L3M5MC9FdmF6elNUQUZleW1KZFBzZDFHZlJKMm9wZ2Ju?=
 =?utf-8?B?TW8wa0hIRGVudjVVM0g1bGF0cmExWVAvN1JZeXlzOEdIVDZHWC9qRnUvWVBj?=
 =?utf-8?B?VklOYWZnbjMxT2JIWVkzNktDdjA2QUwxcU5IamFVb1JPNlZKc2tkdWZ5cTZp?=
 =?utf-8?Q?+97IJxWnKNo8W3Jg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e738f409-f4a3-4976-9f2b-08de5f21ee29
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:34:06.7401 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OaijW8ihHBZHi/ox8P/14vyzBKh1G+UxAGWxkujz8vCitcoeL/jbJJJNguNaCk5MJt7tsYnKSAFSGRURF2j3wNjGzQqmkJfg2nvuoJ4o/YA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682869; x=1801218869;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b1QOJ2QJNAEFSZnU1Tn04HmojKAMobu9JMT7IsMugtI=;
 b=SG16S72KrjqFl0RWVOkV2IPm/wwIim5N1eqBvW6OaqB1uK/Jjt1KikN4
 /+ZkNtcIAv/FXuHG7LG7XtdXENropbjlz/d2LSBKtHxdNYaC36T8Ie1it
 7XUPlVCDwkdcRtJlObd3N1NDTqOcYh2uc2YBQAJ9f76p6yR2r0vXsKRq5
 k8OCyjJ8MBHf/YQxunRJ6sUzRCon3V8B/5qs5O1Hgiia2BnUVXtq6tUhI
 ug8/ITTc5HjliKs3iZR4yDPDXLGCLKDm2G4bw8C+nXiXxNuKqglHUKqlf
 8L5H7lpO08NeTwwUZQ9R6xycuOFbW7GlBQY7qAXn0IaYuUVtMgfS04sGJ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SG16S72K
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 26/30] docs: kdoc_parser: use the
 new CFunction class
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:email,osuosl.org:dkim,IA3PR11MB8986.namprd11.prod.outlook.com:mid,lwn.net:email,intel.com:email]
X-Rspamd-Queue-Id: 7BB81AECEC
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDI5LCAyMDI2IDk6
MDggQU0NCj4gVG86IEpvbmF0aGFuIENvcmJldCA8Y29yYmV0QGx3bi5uZXQ+OyBMaW51eCBEb2Mg
TWFpbGluZyBMaXN0IDxsaW51eC0NCj4gZG9jQHZnZXIua2VybmVsLm9yZz4NCj4gQ2M6IE1hdXJv
IENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz47DQo+IGJwZkB2Z2Vy
Lmtlcm5lbC5vcmc7IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBsaW51eC0NCj4g
aGFyZGVuaW5nQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsN
Cj4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFi
QGtlcm5lbC5vcmc+Ow0KPiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4g
U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHYzIDI2LzMwXSBkb2NzOiBrZG9jX3Bh
cnNlcjogdXNlIHRoZQ0KPiBuZXcgQ0Z1bmN0aW9uIGNsYXNzDQo+IA0KPiBUaGUgbWF0Y2ggbG9n
aWMgZm9yIHRyYW5zZm9ybXMgYmVjb21lcyBhIGxvdCBjbGVhcmVyIGlmIHdlIHVzZQ0KPiBDRnVu
Y3Rpb24gY29udmVuaWVudCBhbGlhcyBjbGFzcyBpbnN0ZWFkIG9mIE5lc3RlZE1hdGNoLg0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBr
ZXJuZWwub3JnPg0KPiAtLS0NCj4gIHRvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5w
eSB8IDM4ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQ0KPiAtDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMTkgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
dG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+IGIvdG9vbHMvbGliL3B5dGhv
bi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+IGluZGV4IGQyZWI5M2Y5ZDQ4OS4uNTBkNTdjNjc5OWJi
IDEwMDY0NA0KPiAtLS0gYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4g
KysrIGIvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+IEBAIC0xMyw3ICsx
Myw3IEBAIGltcG9ydCBzeXMNCj4gIGltcG9ydCByZQ0KPiAgZnJvbSBwcHJpbnQgaW1wb3J0IHBm
b3JtYXQNCj4gDQo+IC1mcm9tIGtkb2Mua2RvY19yZSBpbXBvcnQgTmVzdGVkTWF0Y2gsIEtlcm5S
ZQ0KPiArZnJvbSBrZG9jLmtkb2NfcmUgaW1wb3J0IENGdW5jdGlvbiwgS2VyblJlDQo+ICBmcm9t
IGtkb2Mua2RvY19pdGVtIGltcG9ydCBLZG9jSXRlbQ0KPiANCj4gICMNCj4gQEAgLTExOSwyMiAr
MTE5LDIyIEBAIHN0cnVjdF94Zm9ybXMgPSBbDQo+ICAgICAgIw0KPiAgICAgICMgQXMgaXQgZG9l
c24ndCBwcm9wZXJseSBtYXRjaCB0aGUgZW5kIHBhcmVudGhlc2lzIG9uIHNvbWUgY2FzZXMuDQo+
ICAgICAgIw0KPiAtICAgICMgU28sIGEgYmV0dGVyIHNvbHV0aW9uIHdhcyBjcmFmdGVkOiB0aGVy
ZSdzIG5vdyBhIE5lc3RlZE1hdGNoDQo+ICsgICAgIyBTbywgYSBiZXR0ZXIgc29sdXRpb24gd2Fz
IGNyYWZ0ZWQ6IHRoZXJlJ3Mgbm93IGEgQ0Z1bmN0aW9uDQo+ICAgICAgIyBjbGFzcyB0aGF0IGVu
c3VyZXMgdGhhdCBkZWxpbWl0ZXJzIGFmdGVyIGEgc2VhcmNoIGFyZSBwcm9wZXJseQ0KPiAgICAg
ICMgbWF0Y2hlZC4gU28sIHRoZSBpbXBsZW1lbnRhdGlvbiB0byBkcm9wIFNUUlVDVF9HUk9VUCgp
IHdpbGwgYmUNCj4gICAgICAjIGhhbmRsZWQgaW4gc2VwYXJhdGUuDQo+ICAgICAgIw0KPiAtICAg
IChOZXN0ZWRNYXRjaChyJ1xic3RydWN0X2dyb3VwXHMqXCgnKSwgcidcMicpLA0KPiAtICAgIChO
ZXN0ZWRNYXRjaChyJ1xic3RydWN0X2dyb3VwX2F0dHJccypcKCcpLCByJ1wzJyksDQo+IC0gICAg
KE5lc3RlZE1hdGNoKHInXGJzdHJ1Y3RfZ3JvdXBfdGFnZ2VkXHMqXCgnKSwgcidzdHJ1Y3QgXDEg
eyBcMyB9DQo+IFwyOycpLA0KPiAtICAgIChOZXN0ZWRNYXRjaChyJ1xiX19zdHJ1Y3RfZ3JvdXBc
cypcKCcpLCByJ1w0JyksDQo+ICsgICAgKENGdW5jdGlvbignc3RydWN0X2dyb3VwJyksIHInXDIn
KSwNCj4gKyAgICAoQ0Z1bmN0aW9uKCdzdHJ1Y3RfZ3JvdXBfYXR0cicpLCByJ1wzJyksDQo+ICsg
ICAgKENGdW5jdGlvbignc3RydWN0X2dyb3VwX3RhZ2dlZCcpLCByJ3N0cnVjdCBcMSB7IFwzIH0g
XDI7JyksDQo+ICsgICAgKENGdW5jdGlvbignX19zdHJ1Y3RfZ3JvdXAnKSwgcidcNCcpLA0KPiAN
Cj4gICAgICAjDQo+ICAgICAgIyBSZXBsYWNlIG1hY3Jvcw0KPiAgICAgICMNCj4gLSAgICAjIFRP
RE86IHVzZSBOZXN0ZWRNYXRjaCBmb3IgRk9PKCQxLCAkMiwgLi4uKSBtYXRjaGVzDQo+ICsgICAg
IyBUT0RPOiB1c2UgQ0Z1bmN0aW9uIG9uIGFsbCBGT08oJDEsICQyLCAuLi4pIG1hdGNoZXMNCj4g
ICAgICAjDQo+IC0gICAgIyBpdCBpcyBiZXR0ZXIgdG8gYWxzbyBtb3ZlIHRob3NlIHRvIHRoZSBO
ZXN0ZWRNYXRjaCBsb2dpYywNCj4gKyAgICAjIGl0IGlzIGJldHRlciB0byBhbHNvIG1vdmUgdGhv
c2UgdG8gdGhlIENGdW5jdGlvbiBsb2dpYywNCj4gICAgICAjIHRvIGVuc3VyZSB0aGF0IHBhcmVu
dGhlc2VzIHdpbGwgYmUgcHJvcGVybHkgbWF0Y2hlZC4NCj4gICAgICAjDQo+ICAgICAgKEtlcm5S
ZShyJ19fRVRIVE9PTF9ERUNMQVJFX0xJTktfTU9ERV9NQVNLXHMqXCgoW15cKV0rKVwpJywNCj4g
cmUuUyksIEBAIC0xODUsMTcgKzE4NSwxNyBAQCBmdW5jdGlvbl94Zm9ybXMgPSBbDQo+ICAgICAg
KEtlcm5SZShyIkRFQ0xfQlVDS0VUX1BBUkFNU1xzKlwoXHMqKFxTKylccyosXHMqKFxTKylccypc
KSIpLA0KPiByIlwxLCBcMiIpLA0KPiAgICAgIChLZXJuUmUociJfX25vX2NvbnRleHRfYW5hbHlz
aXNccyoiKSwgIiIpLA0KPiAgICAgIChLZXJuUmUociJfX2F0dHJpYnV0ZV9jb25zdF9fICsiKSwg
IiIpLA0KPiAtICAgIChOZXN0ZWRNYXRjaChyIl9fY29uZF9hY3F1aXJlc1xzKlwoIiksICIiKSwN
Cj4gLSAgICAoTmVzdGVkTWF0Y2gociJfX2NvbmRfcmVsZWFzZXNccypcKCIpLCAiIiksDQo+IC0g
ICAgKE5lc3RlZE1hdGNoKHIiX19hY3F1aXJlc1xzKlwoIiksICIiKSwNCj4gLSAgICAoTmVzdGVk
TWF0Y2gociJfX3JlbGVhc2VzXHMqXCgiKSwgIiIpLA0KPiAtICAgIChOZXN0ZWRNYXRjaChyIl9f
bXVzdF9ob2xkXHMqXCgiKSwgIiIpLA0KPiAtICAgIChOZXN0ZWRNYXRjaChyIl9fbXVzdF9ub3Rf
aG9sZFxzKlwoIiksICIiKSwNCj4gLSAgICAoTmVzdGVkTWF0Y2gociJfX211c3RfaG9sZF9zaGFy
ZWRccypcKCIpLCAiIiksDQo+IC0gICAgKE5lc3RlZE1hdGNoKHIiX19jb25kX2FjcXVpcmVzX3No
YXJlZFxzKlwoIiksICIiKSwNCj4gLSAgICAoTmVzdGVkTWF0Y2gociJfX2FjcXVpcmVzX3NoYXJl
ZFxzKlwoIiksICIiKSwNCj4gLSAgICAoTmVzdGVkTWF0Y2gociJfX3JlbGVhc2VzX3NoYXJlZFxz
KlwoIiksICIiKSwNCj4gLSAgICAoTmVzdGVkTWF0Y2gociJfX2F0dHJpYnV0ZV9fXHMqXCgiKSwg
IiIpLA0KPiArICAgIChDRnVuY3Rpb24oIl9fY29uZF9hY3F1aXJlcyIpLCAiIiksDQo+ICsgICAg
KENGdW5jdGlvbigiX19jb25kX3JlbGVhc2VzIiksICIiKSwNCj4gKyAgICAoQ0Z1bmN0aW9uKCJf
X2FjcXVpcmVzIiksICIiKSwNCj4gKyAgICAoQ0Z1bmN0aW9uKCJfX3JlbGVhc2VzIiksICIiKSwN
Cj4gKyAgICAoQ0Z1bmN0aW9uKCJfX211c3RfaG9sZCIpLCAiIiksDQo+ICsgICAgKENGdW5jdGlv
bigiX19tdXN0X25vdF9ob2xkIiksICIiKSwNCj4gKyAgICAoQ0Z1bmN0aW9uKCJfX211c3RfaG9s
ZF9zaGFyZWQiKSwgIiIpLA0KPiArICAgIChDRnVuY3Rpb24oIl9fY29uZF9hY3F1aXJlc19zaGFy
ZWQiKSwgIiIpLA0KPiArICAgIChDRnVuY3Rpb24oIl9fYWNxdWlyZXNfc2hhcmVkIiksICIiKSwN
Cj4gKyAgICAoQ0Z1bmN0aW9uKCJfX3JlbGVhc2VzX3NoYXJlZCIpLCAiIiksDQo+ICsgICAgKENG
dW5jdGlvbigiX19hdHRyaWJ1dGVfXyIpLCAiIiksDQo+ICBdDQo+IA0KPiAgIw0KPiAtLQ0KPiAy
LjUyLjANCg0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0
aW9ub3ZAaW50ZWwuY29tPg0K
