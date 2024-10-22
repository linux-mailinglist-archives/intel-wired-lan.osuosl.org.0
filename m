Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 089499A9A75
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 09:05:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C43080E42;
	Tue, 22 Oct 2024 07:05:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X5fY_cPs8_gs; Tue, 22 Oct 2024 07:05:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD61B80E37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729580746;
	bh=kZLPspvvFPusbddhNPyDseLZ+jNhFDa24/3uHE3sHvA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M9BWskYX4igT8Su7l71XksxzoFENvjBKxu9Qw/Dh/6a/6mmeu6BEw1Znc9GSvPbk0
	 zKFOuMwu6DFt6DgrH3Qf6sbbUUAhzj4nJ045KXOF/tNhQ0bdYgzCv4OOzEK0n+JqAx
	 ctpdWT9YbK5R+VvnjX8kEsPEYbMfreIE3a/obg6xh9afpgesc84TOaB7jh1W+IJl0h
	 eYSqZEu24EajCyaSLMyQ9CMfyib+x6GqOoA48FnwU7hHOC3v9YemtykNCpG91NvZg1
	 9Cwxf2wGF9JtFsPBobgD3p7Fi9RBpw4bcF97oCwvvJ/jmQ5wSjBFcZuFhSc7Di700y
	 u8KEzBjqmkBiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD61B80E37;
	Tue, 22 Oct 2024 07:05:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 814073A23
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 07:05:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7BF8380E36
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 07:05:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iZbMqxLyP8Zv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 07:05:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 834E780E3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 834E780E3E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 834E780E3E
 for <intel-wired-lan@osuosl.org>; Tue, 22 Oct 2024 07:05:43 +0000 (UTC)
X-CSE-ConnectionGUID: VbKNruQ7R9ilvsiD4uodBw==
X-CSE-MsgGUID: 9fXl/M/QRjK6mvom7rZ4FQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29250252"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29250252"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 00:05:43 -0700
X-CSE-ConnectionGUID: Shpl2DUjQY+KdiMED7LPSA==
X-CSE-MsgGUID: TnQbTjEgQZOSUfDmxxT9OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="83766028"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 00:05:42 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 00:05:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 00:05:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 00:05:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EoooFc2pLQCHoHit6uE5wfx5GY/eSMNrGmossf/dLG8rQE7N8Cl78Z+L6N5EggntdULIASqQDHZXJTDHd8mUrosdITbsD5iXus0OVgUVjsG0eCk+dvbAwyKibe80uAFtDJxr11sW2z90uAmJZ1WSD0EISwSkLeVymEKM9eWB1bxImte8C8OHW24BXminAV/bhQw/r+oUH2NFOoCYpdYpKn8O7pANMqqEopCjNswJArSy7nzK6nEkRotIlRK2ZVzpy05quL7Xs/iWW6YRDdH0Sc1M0p6iSUhtMlJtVMzYbX7cS4u+mzkodBc4IVCANxUwQmytBDeP/jnuqGoe9Ea5SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kZLPspvvFPusbddhNPyDseLZ+jNhFDa24/3uHE3sHvA=;
 b=xK+7FBpMjdTimdLCKP/i6/elpv4UcRf9rjAGf/sXA6EeQGMGFvUwbp+LD7XrYeCpRJlieVJkzlw+lAovM2oh7kXopn85MNe8ualo96NaOqzjpRmky+d2qJl2PZFfQFQAOLowQGT6sCKZCt/LbHARJ66UGTMCd1+5gwLp+Xtjw/CMX0/56X95nj5Pks0hTigS2hbzF+kHw5arf4xbaWclp/MG8Y2lowdIAreDytvAxGq9cPHL83iRB4W0EEjjuCnK5trPjO7vaSmIxJGVv7CVdmBFNGcqLflzt/sMoXs6xXJbSdP2EIWdmQ75PhIc6I+eF/LSUkxrOBuSldRRZPhQZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by DS0PR11MB7831.namprd11.prod.outlook.com (2603:10b6:8:de::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 07:05:39 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%5]) with mapi id 15.20.8069.024; Tue, 22 Oct 2024
 07:05:38 +0000
Message-ID: <72483651-72ca-48b3-9726-b3acc1873bb8@intel.com>
Date: Tue, 22 Oct 2024 10:05:44 +0300
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20241018171343.314835-1-jdamato@fastly.com>
 <20241018171343.314835-2-jdamato@fastly.com> <878quhgxel.fsf@intel.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <878quhgxel.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::17) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|DS0PR11MB7831:EE_
X-MS-Office365-Filtering-Correlation-Id: 70501cd5-0235-41be-0fbe-08dcf267eeda
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MC9BQU15aEFKRXIxY085UVhtdTJPcFRocERyTXM5NVZlUTRJc2x5OC9LNUN2?=
 =?utf-8?B?aVFGMXRidzBCQUdZaXp1M3N1cVk3c0E0bFRtcTNTbnZYVzFGTnpWSFF2L3pm?=
 =?utf-8?B?QmVyNTdsVk9XRkVGL2NldEtmOGpuN3J6dzhsTXIxajdPWXRNdE5hTEtlZ1l1?=
 =?utf-8?B?Tko0VG1JZ2RJZUUxYml4Q3hTS3RZUmh2L1hNOXdYYXZJcmlnU3k2TWZUcDJI?=
 =?utf-8?B?SENkbGIzOThuZkJsTk5SQi9zVElEU0RoU0tsZE5TU0M5U2VqYTR5M0E3RC90?=
 =?utf-8?B?UTFiUXlqcVJTa3dWMU94bHBEbTBOMFlnT1dxYzM0dFFZbjhCcGJsYnZYNjhB?=
 =?utf-8?B?Nkx4bk9xNkRLODFGdElxQWNqSm52dDlPbnlSQXpEbWZ2U0tDRktRR2NoZnl5?=
 =?utf-8?B?VGR0dnpBR2MycENjalVMSEJEaVJFUnVWYm9YMlpkWGs5aTI4bnFoZmpuNnZx?=
 =?utf-8?B?ZHY3S3JzZSsrdzdsQTJFRmpzaXZOSGNhK09rMFF0OW9iOTdYWE1uMFgyM1BV?=
 =?utf-8?B?MGpUc3NhL1ZPR2gwNEZPYWp6VTlPczZja3JGeDN4dVB2YlJaODRNYitKNTFx?=
 =?utf-8?B?bWFMUm05ZE1mTjdSZlVGMXF3MEU1M2NEVEtpYURpWVJ5cWNLOFQvRE0vT1JE?=
 =?utf-8?B?Z2R2TUdJeDhmNmROM2xDNGFoWkQrc0FJNmQyMnEvbEx2UDJRem96aU5HeDVj?=
 =?utf-8?B?SGQvUHNuQmF4Z0RYY1JTVi8wTW9BK3I0SkJNUTZaUTA5VmhnRk5ORkpkWFR6?=
 =?utf-8?B?aFJrTDZOT0d4L2loK3VtY3hjT1d3MFdzS29aVFF4dEhybEZPKzFRRnpzcVhx?=
 =?utf-8?B?a3dBV3JFZEZmdU0veW02aFJ3ZU56TzBSVm9LS1Fvd21oVEx4MExJNWZYNlo0?=
 =?utf-8?B?WEFWbTFPS0Jzci8vSTYwQmRXOUtTeGpwZ0RLM2RJNUpWZS84dzBWLzU1dm5P?=
 =?utf-8?B?ektjemNCUXhKaGticktKbHFyRnV4THBuUEJGVzY5WWNZSkpmV2hnd2FHbFl5?=
 =?utf-8?B?TDQxSG01RkI1NENrUHB0eEtpWW56ekxtMmx3OEhVUC9wa0k0V3JZd3ZqRHFp?=
 =?utf-8?B?ZnNYTURpRzdmZGhSYThUT09XMmM0WFU0ditXeERtYk5ZK01vdVFPMHJIbVh0?=
 =?utf-8?B?WWh4Tkw5Ukg2cUtXWE5tbzM5cDRIN3hJM3FWQzJFV2NMRWFzZXd5SlU4ajlu?=
 =?utf-8?B?RjVuL1V4T0N3czNyZ2lhYitVVjNOZml1bWljZ05RZWVPRHBVeWlpOVR5UGs2?=
 =?utf-8?B?OWVjUWJIMFpvU1BxcWhDakNhSU04Z1FnVVJrbFZZaWhxN1FzdDhhN1BnTThO?=
 =?utf-8?B?a0V0emxNY3hxR1lleGM0NzVVWUFGcVk1SkRHOUJkOVVWUEVjVVo1NnJvTm9V?=
 =?utf-8?B?UDdYSXc4ZnJ5ai9CSlpiTUE4NnRKL3lSb05nT0x2VDVSdmJwc0hpaFpIUUNW?=
 =?utf-8?B?YjFRdU8yK3FmOW5nRHFpQkRSUENSSVJOVHc3cHFsUzJXTjlrQnMrek0wY1lz?=
 =?utf-8?B?ZHR6OUV1cHRMNzdKU3dyczVNVFhDV2pIWWdIanJPdFVsTFFTbUw4aWVTZ1Fs?=
 =?utf-8?B?ajh3U3dtVXRJWEZ0RmUzcEdoNzUxQ1FQcURvRHRTd0NYNjk5cTRhTHhiYk40?=
 =?utf-8?B?QTdjNWRCTldXVnV0Q1h4RVZYNy9nUHlzNVBRdVV0SG1zVGVjejhpUW5WaU1C?=
 =?utf-8?B?N0lUQkVleEJtV3orbWl0aGxFbk45WWhHa0dJVUVkR0plMVRmTHlZRkNJSVJY?=
 =?utf-8?Q?GfzhnQw9Jo39JVG+VsERz/sr3/cygKfNKt2cRh3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0lHSUNia0YvV281MHZYeGdCTk9SQjJZME5VMjRmdEZGMTF3QUZxcTQxT1Az?=
 =?utf-8?B?NVJGYXZZbHJQbmVMTHcrdm5RZVZNMnNtaDdmeTdhUWdrVkpnV0NHdjg0bzQz?=
 =?utf-8?B?ZnR3TEVBb0NRYkdmanlaOUtxNDBxc0wyNFJxY3RvOCtHeXdEdFB1K3NTY1JS?=
 =?utf-8?B?dmtmWGtmL0RkdGpyR3NsbzdQdTNsa3F0WUV3OXF5S2xOTVdPN2I4NHdSaUFP?=
 =?utf-8?B?WnZQY0RydFg4dWpUSlZHNUJRRmtIaGVhMkhPK1YzOTdJV1NQSnVkV0VSb3RF?=
 =?utf-8?B?dEhSNUJYbENxWm5JeHN5NmQxUDc0UEVUMGJrRUFrdGYxSE9OTk1tcXMvcGhu?=
 =?utf-8?B?UWxMTFQ2S2FkekJvQnlUMnZRei9Za2lMZGtpMytZRDZoeC9KM1NlbnBmTlIx?=
 =?utf-8?B?YVJicmo3NUJTT1FESUYyTHcySGFLSUFhc3hKMThEdGEzT2hQY3NMSzhVZHF6?=
 =?utf-8?B?MVlWZ1R5VEhLbkF1T2ZiMm9MMUVjSE1QcklnaWpYRSt3T0kxUnBCVHNrQ0di?=
 =?utf-8?B?a09mK216REtMTmpWY1pEZmhWRjBoajQ0dXpoWXFiUkZuTWlkeXphV1ZqVXJL?=
 =?utf-8?B?dDRPQUZNZEFTdDhFRVpFbmZ3VWhwSzBHc051UVdGbzQydjJmd1NQNkkwOUov?=
 =?utf-8?B?dlY3VjJRSXhHTVhSditlazFyQncwb0RPVmVxczAxeGdVYlBYRWNhTEl3bGZR?=
 =?utf-8?B?bVVIZW5RUit1dXgwdmdCNjNwMTJ4ZVpocE1vYWxKZU80QkRnRXRGU1c0bVpU?=
 =?utf-8?B?VFBnU21EelczaU1LOWJxMDNDbEJvbkNNQkNXcnN6Sjg4ZEJiWXhCNEM2cHoz?=
 =?utf-8?B?Y1JRamd5cVJleFN4OHk5bGJqekNvLy9JUk90S2RIajdBVGR3dnhXQTZYZ1NP?=
 =?utf-8?B?SW12SFJwSHl0M05Id3pRWG1SaGZzTGdWZE5NK2lvL0phMi84QXdhV2VXK0p0?=
 =?utf-8?B?YldmZHY1RU9Md21qeU4vN2ZhMDV0M1EzVklkS2lDTGxZZG5MaFpmYURlRXdT?=
 =?utf-8?B?WnYvNDdUY0JPWmdDWXoybzVpc1dtNVFqM1NCVU1xQUY4YW1IWnNZN3oxY3JD?=
 =?utf-8?B?SWlvaFFadzZGNUM5VExyejk1NW1wN2hzTHY5WXN0L2VjaVdsZHRtbCtxdmV1?=
 =?utf-8?B?byt5bjl6b1NseS9hYm93OGxJSDd5OVZtcjZzcU9lMmM2ZGlrL2ZxOTRvY051?=
 =?utf-8?B?UmlTWWZZWUdKQ3MyZnkxcUVVWmdIWUdnS3UxenJZSkk1Y05XWS9MRE9rQlNo?=
 =?utf-8?B?S2VWeVVTR0RYNTZqT29rQ3RsNEhUMzdlbDRGc3hPdjJxYXkzTnN1dU1OQmhx?=
 =?utf-8?B?OEl1MDgrQ0s1NEE3WUN3dFNqK08yWEgwY3NUelhiMUppbkl1ZWxDQ2kweHE5?=
 =?utf-8?B?L1hkK1JtT25XWERPVlYxV05ZM0FFc25XajRJU2Zja2NXM2xPaTVzRlQ5aStD?=
 =?utf-8?B?czZQWGd1a3A0VldZU2pJWnNmYVdJUmhMbFJicytsZ0p0N1ZsNG1MbjlLZ1JK?=
 =?utf-8?B?TnFpVkVNbVZVa3lvdTg1eEhObWtXK2FpL1NzQ1cvL1RsdytFREtCSlVnbGps?=
 =?utf-8?B?UkNDeGoxNm9PcEp2eHZUWTJTNEJQdFRwTUtYb1VtOXJFNjlaSG5vcGIvM1dV?=
 =?utf-8?B?ejJpWGlVK1p4SWhjcUNUQTBRQys2T291Sm1rNGdDWXdLcEF1eGxTRXg5R0lT?=
 =?utf-8?B?bUpmZDRDWXJlWklKWWczaDE3UVFjWUxQNm1FeEdpZXJ4ZnE5VzlGVXRWTWZN?=
 =?utf-8?B?OEJmWGozWkxyWDBjQlBxZUlzcU1IMkMzVUw3ZUlXenRseWlBbmRTRzdmOE1P?=
 =?utf-8?B?U0J6TE4wdGd0d3FrZ0d3ODlqNWFadmZmVDNoeTJzZXlaVXNYYWlFd21teXl1?=
 =?utf-8?B?WTViRmg0akFsdDYwK01seDhDQnZaQ0REV1FubnU3VUdlbW5FSDFtN1Zpd0pR?=
 =?utf-8?B?b0Fielh2eGFicVRDZGlTeXA1WDkrcVJhNjRLdG9qTWVkTXozeXg3RHYxNWZx?=
 =?utf-8?B?Z3Vab0ZxV0UyOFA3dzhZWjlub2NxUlZNSXhtMWdvckRpdHhNbjg4cGorYTFX?=
 =?utf-8?B?RGlBV21oeVUzYUVrM2N1L3Znd1JHZ1RpNnpCaFRibUJDZGtjRlNoQjdXdEFN?=
 =?utf-8?B?THZ5RU1wcVNOamw0b1lVYktTWFZmbUFIa2E5SkRiTnlMN0R0SVl3b08rUXNO?=
 =?utf-8?B?WGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 70501cd5-0235-41be-0fbe-08dcf267eeda
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 07:05:38.5493 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bnaiJdRZ/hgXVFpq368pn/1SYbeeLzG3qzN9M6melcrnx3q3x41xexhyvgw3Gmd986wEIA1BYIAQTxYUknAyL5iT0xjT2Z6McInBGd4zE5A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7831
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729580744; x=1761116744;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=36XX0txKeDa66PXTELI4k/tkxGBe/2razGq0Rch+8jc=;
 b=lnD9q1x8sKYGvYVsgxSntnlS7ZN8IzSDQjxBEQ7PFsnwrM7/5O8tM0cg
 ZStc8X4Sb8n4Mih0YCVyPz1uAw5qqMML8dOq4c0ckFE/0zR83OCWpeugb
 moEiCbpiaeAYoK7Sq/70ZmKQp8PchJY8meUzVNI0FHuU6KfBpBuC4rtcn
 T73Nd67BWFVOiiXbnzNzpDAGSclWO/qcyX+r31yDowaH6CywK0rmp5lP8
 mFfcOP8iSnt651QEAYsauJKcvEjTF3qz7KGZRPdbbr3X0UWhphyd0E4PU
 ZbRGT4fJ7javN+Lt6u+5dMPy1TjZadrPHAYyk6Yj5a6U/NT/pqksMeMLS
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lnD9q1x8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v3 1/2] igc: Link IRQs to NAPI
 instances
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



On 10/21/2024 8:48 PM, Vinicius Costa Gomes wrote:
> Joe Damato <jdamato@fastly.com> writes:
> 
>> Link IRQs to NAPI instances via netdev-genl API so that users can query
>> this information with netlink.
>>
>> Compare the output of /proc/interrupts (noting that IRQ 144 is the
>> "other" IRQ which does not appear to have a NAPI instance):
>>
>> $ cat /proc/interrupts | grep enp86s0 | cut --delimiter=":" -f1
>>   128
>>   129
>>   130
>>   131
>>   132
>>
>> The output from netlink shows the mapping of NAPI IDs to IRQs (again
>> noting that 144 is absent as it is the "other" IRQ):
>>
>> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>>                           --dump napi-get --json='{"ifindex": 2}'
>>
>> [{'defer-hard-irqs': 0,
>>    'gro-flush-timeout': 0,
>>    'id': 8196,
>>    'ifindex': 2,
>>    'irq': 132},
>>   {'defer-hard-irqs': 0,
>>    'gro-flush-timeout': 0,
>>    'id': 8195,
>>    'ifindex': 2,
>>    'irq': 131},
>>   {'defer-hard-irqs': 0,
>>    'gro-flush-timeout': 0,
>>    'id': 8194,
>>    'ifindex': 2,
>>    'irq': 130},
>>   {'defer-hard-irqs': 0,
>>    'gro-flush-timeout': 0,
>>    'id': 8193,
>>    'ifindex': 2,
>>    'irq': 129}]
>>
>> Signed-off-by: Joe Damato <jdamato@fastly.com>
>> ---
> 
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>

> 
> 
> Cheers,

