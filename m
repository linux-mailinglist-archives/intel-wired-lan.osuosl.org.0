Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E60A018BC
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Jan 2025 10:02:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC8B780FAC;
	Sun,  5 Jan 2025 09:02:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uWLoH-orh9it; Sun,  5 Jan 2025 09:02:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20925810A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736067751;
	bh=6jRS2vo+ft/M1CnfT6Bo7GTfdvWZas5bnw7PK62KibA=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4amF78opR0eTJlPjA0syd5sZvggr8yVJjvIXcNaoVqHjUsnlZhf/9O2AMLwHGnTUk
	 4kuIU6O5Fo97NRRxb6R81GOu2iF4KTC6yq0p1DLFdm3OIg82k74DJQvYUmeVJpvx/A
	 oqbvf7j1APYY5lANv4xQSdMd9NSS28ESl2iVU+g/zOmnYhFtxBg/xfJMs/QKSGZruQ
	 +dCRphw1+Gg9CENi6Ev76KCK4BFoIhywBbZIOHJ/OMPJV825E2ap9TTahS1Ha20CCW
	 JFaUHy9x2ngwqdt9bPvgEv4H3GwhikJU6HYxBLBaHcYrB6UXqmLV1O1j19d/dA+DlS
	 9X0JQW7afpdsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20925810A2;
	Sun,  5 Jan 2025 09:02:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C542D92
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 09:02:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6351D40EA2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 09:02:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zf2AgJ5QNNzH for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Jan 2025 09:02:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3BC0040DC8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3BC0040DC8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3BC0040DC8
 for <intel-wired-lan@osuosl.org>; Sun,  5 Jan 2025 09:02:26 +0000 (UTC)
X-CSE-ConnectionGUID: KCZsjaqNQs21iIsWIXfkfw==
X-CSE-MsgGUID: yO/7skftTjCHtP1J0fw+/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11305"; a="53657756"
X-IronPort-AV: E=Sophos;i="6.12,290,1728975600"; d="scan'208";a="53657756"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2025 01:02:25 -0800
X-CSE-ConnectionGUID: LqDdVO9RR+ixdYoZnYRNtg==
X-CSE-MsgGUID: 4QpwDk73Tim8oi15nsJySw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,290,1728975600"; d="scan'208";a="102350799"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jan 2025 01:02:26 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 5 Jan 2025 01:02:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 5 Jan 2025 01:02:24 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 5 Jan 2025 01:02:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kTzR0AqDAfR8OE0OuQmjS7KLuuyXTLXBh7HFIyRnF69Sdanka45IQKrW3Q6OJmMwnofys1ms4gQ6/JeZ4GkNFQhdqNcU3kP3c3mE6oXFL8zVu4MSK6bdOpCnk/YKnZx1xndF+y5/B4ucIDttVQJmBqyrgcLEi3W+Fd201aJiCKLzpIEg94e/RyxIStYaM9ESKxRR8RbFDKwF/F+ARxkifSWW5d2AZJP7mnEIvfnsPorye3tF/fgwuRePotgNkhSC2z7EkbjOiCAi6FeoIbVs/6KM/sRCoSvOYIYLIkiaRf6e2lRmyjjhudpHXyt5tfRox7diOYd3HBdub/jdo1ySfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6jRS2vo+ft/M1CnfT6Bo7GTfdvWZas5bnw7PK62KibA=;
 b=lVJme3WARh/np6TJ3HE9Yd2ISiP82fOJUH2jkUZSgj9LN1LJrysnehUV9OsxN2DRjCIiHb5ItfPCJohohokip3kIYtznyyFi6oQPm8v5Dtl16MZ5YVhcKBeWBXJKL+xF9Ip4SddIIb2akSu8VPDIvallZVYugHcUaNINNoqm0j0uq9eHA0Cho4vWiUs5yF/RKZ9IVaa23+9XV9ld3M1cib1yqXihyVMU+AzdBix8RRc6GewhX3dkifpfhQgzmPpZi35DluXHzPIeXmfPDaTAfHkIZXuWssEgDIqlSJDPj40v/xyAOMzAQldZ25z4fvGxvEAuvaYcEDYvypyhbTJZHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by MW6PR11MB8389.namprd11.prod.outlook.com (2603:10b6:303:23d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.16; Sun, 5 Jan
 2025 09:02:08 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.8314.013; Sun, 5 Jan 2025
 09:02:08 +0000
To: <intel-wired-lan@osuosl.org>
References: <20250102174142.200700-1-linux@treblig.org>
 <20250102174142.200700-4-linux@treblig.org>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <566d8c6b-eb06-add0-2b8e-a2631d42ef1e@intel.com>
Date: Sun, 5 Jan 2025 11:02:04 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20250102174142.200700-4-linux@treblig.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0014.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::13) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|MW6PR11MB8389:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e1bd009-b2ec-4814-0d34-08dd2d67a230
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QUxZT1YwWlJrWmowWEVWSm5kQStKL3ZtL0tvaTIzT0VRTi85MXd5MGs0a3J6?=
 =?utf-8?B?RVFnOGxEN2VGK2QvSzlMeStpVzhCc0VLMDh1NTNxSGpBTFlQNTUvS0hUU3NB?=
 =?utf-8?B?S3M2TllDRkRzbWRhQjlnWWxhUTVGVllERDdmeVlXTWRyT0o1djNkUnBZak1B?=
 =?utf-8?B?UkNSNHJ1MmRkR3N2Y09QQVgrb0lVOG9DNkl3U0g1bW8wN0NiWG9hS3V6T1BO?=
 =?utf-8?B?UzgwZzhUakg2OHl1WldhNGpISWM3VkpWYXlXVGhNSlhqeWU0MzJhWTF5cFhD?=
 =?utf-8?B?WkUzZThVMW5lZ1pDekN2WFdST0ZsbE9BZmxMLys4S04ycmZDcjNYd01hZEZj?=
 =?utf-8?B?VzAyZTNLRFErbG9WLzZzNStsZDRRcm9qZEhEemhrS3c2Z0xxQ2RIUElmSjVY?=
 =?utf-8?B?QkNMOXVmSVFUNklhR0RERTJTeFgwRG0rTGI0blhGa3BpSm9aTFpweWN3STRp?=
 =?utf-8?B?SHFPVktGZzZrdmpoSHA1NXJyaHVXSTJZWjRnbVU0MGpkK2hSTTByWjczSEE1?=
 =?utf-8?B?b1VGTTByb0RvUnhNeHpPc3cyRVo4VTBXMVFlc3dxYkpsUXpZWFJUVnRjMEJs?=
 =?utf-8?B?V3JCaUVpbldkcGxLYWI3cTRKa0RoQThHSzVnZmduK0FSaGlqaVdSUWRCUmxl?=
 =?utf-8?B?T3lFUG54SzIyRkx6VnJsSnZPTy9xRlhndFFEQ1lPQWh6RjNWZXAxVXdaYnhy?=
 =?utf-8?B?bENYZE9IeU8rSjV3QTlZMmFHNTE5MVlJWEx6S1E0a2YxM0VJSVVrc0g5b1Jo?=
 =?utf-8?B?VVV1TlRIMkM1bDhkSC9hcmlObEZwRmxjbTdnL3ZmeEt5UzZ1MlNyeWt2dXNy?=
 =?utf-8?B?RE5HSkRVRnp4ZjZja3ZwQ2RwLzQwZ2c4YUpHR0had3VINjl4ei9kOWprenBo?=
 =?utf-8?B?NUU5VE1UYkhJRm1TbmgzTmY5S2g2YkdPbTdzbHN1VFh1Y05UdWxOVXlLaEFP?=
 =?utf-8?B?OXlwNGRXc1RWZDF6TjVuc3AxeVFCYVZYTGl6VkhrSjArVDlnWHlPUTcybVFt?=
 =?utf-8?B?MlB4Smt1c28zdVM5US9LL1VXS01hUnVBQVdNeWNYMlgrdnpNNURIT2pOV0RS?=
 =?utf-8?B?ZFNFbXJGM2N5Ykpza3loRzduL00rblRsdTBjOG1RTmI4SmRBV0cwOGJ0Y2l4?=
 =?utf-8?B?ZzIvaGEzR29yaFRUdUYrcjU1Z3owc0o1clFKeC9QclJGbmwzL0RVZVhmajFk?=
 =?utf-8?B?Vm00TU1uaTEzc2pocmR5VUxpaC9qSXRyanZBT09LZG5hM044TEx2MiticUx1?=
 =?utf-8?B?TkdMdG1BTEdoWVdpK2tZcU9ERVp5STQ4RitNSTRRQ0tUUzgxRktUOXd3cnhK?=
 =?utf-8?B?bVpUMXFSV2RZT25oQjVHcEpFdEVKMVFtUUt4Y3g3cndSZkhqbUsrWjdtWG5I?=
 =?utf-8?B?UzFuS1IxVHFxQ0JvVDNPT2FpNHBXSHhrUVV3SXJSR1VUbFovN0MrRVpIOWNR?=
 =?utf-8?B?R25KNlZ2RjNKWEtCenNFR0wzV2dVQ1BRYk82ejRCVkdkWHBSd05DT204ajZm?=
 =?utf-8?B?elZqcWw1L0FzeVNPMzJzQWVOMWFjWGcyS3RWRkd4TyttQ0YvazVKY0UwcDJR?=
 =?utf-8?B?aHpzaWsvQVlYd214d2JBS1p1ZHVwREZiNVpwLzJaendnT1BKUUlxWUt3UVor?=
 =?utf-8?B?bkE5bkFORk9MTXNCaHZJZ0ZuTDN2THBlWjlFL1oyS3R6aEZmeFBuUEhvbHZO?=
 =?utf-8?B?VVhGeStxcnJjYkVvNHlwNW0zMTBDTmdpOVdzWkhPd2ltdUpZbzNwNzIzU2wy?=
 =?utf-8?B?MktkNXZCQzNmU3ZCYWwwT29HVFVyQWNZUXJwVWtZRFdSa0FSQkhsZ0EwVW9I?=
 =?utf-8?B?WDYyTE40a1BTWjQ3RlNOVDk0d0pmWWZ6VzB5Y1dhU3k0dTgvRk9QcldKa3pn?=
 =?utf-8?Q?ELK0t/vOmeSHm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzN0aG9uaU1PbnVCK3poUlhLVEd4Y3k1NEphbC9lSnRRRGtrVEVKRDVkekc4?=
 =?utf-8?B?RkRnRGt0aktiOHVrVk4zb3pNQ0lhUDdIc3hLVG95STkvTHpoU1dEU2FsSnZy?=
 =?utf-8?B?ZHVXMmQ4UTJDTWs2MGtGYzhuYmNWbXpFK1hYbVRsQlFKRW00Um14MG1hVHUz?=
 =?utf-8?B?U2VNUGdOU3hsZUpzRnF6bWpSc01mdS8vL3FSOGx5UDV3OXEwY1d6dTVKdHY5?=
 =?utf-8?B?VG81ZDNMcmlaQWhBcnFhM3lEQzB2QmxDdEdLTURXRkQ2Nm9JTWd3MThjVmxX?=
 =?utf-8?B?ZU5aUjNqVlorREc5OFF2RjA3Q3ZHa1JTT0ZlYXhpa1pCR0tzQmpLM0ZIMHhZ?=
 =?utf-8?B?SWlLWUZBbXBHbG1sdzFuZTN0UXQxTjVXc3ZjeHdYVXN0VGNqb2RRcUpjV2sx?=
 =?utf-8?B?aEdYcmlhSmJoaFg1eklPSzJhWHNQQTkvbEUreWVLZk5HeWR3Zk13QXYwRFoy?=
 =?utf-8?B?ZC9EQkkwZU9KYXRtdFNUUGFoVXI0WTlkTDNXMWZ3czNsR1Joa1V3cEdaZWlm?=
 =?utf-8?B?NUhtcXpTTmtWQ08wMG9XR3pBRkc3Rm4yaTJyRzBTM2VmTk1zaVBCOFkzeUh3?=
 =?utf-8?B?S1hwTXZ0K2lxK0RxVTQzb3VpYU4rV2Z1T3hQZ3ZFMmtJczdFQlltNTBNNlBD?=
 =?utf-8?B?YmJ4NVpwekl4RVYzdDQ3ZklCa2cyWjFtMDRGUmQ1UitkNFlBMzcrcnNHQ09T?=
 =?utf-8?B?WGV4L3FDUHppVE9FNXl0Ym9YaDBGOFZscHdYelZoZmw2ZWJUVWpnd1JicDNv?=
 =?utf-8?B?TlNlOEVMNkVQR3VkYlFKTDlkaldNTDRLTkdmR015U1B4Q2c1ZVM1SGI3aXQ2?=
 =?utf-8?B?MGc1SVpXL3lkTU1WeGxnOGx1L1BQNmZLQWRSa1hlY25LT0ZhSFhxVEx3Wm01?=
 =?utf-8?B?Z1ZUcFNnZXdKaEVyQU1aUzBROU1zbTAyWkFIUGZodGhsUDdJUXdpVTBrdHVs?=
 =?utf-8?B?eDFKTVRabXFDMXRqK0lrQzl1TjNvRkJKU3p2U0FNZ3lRVVFqLzlYWUdlajdP?=
 =?utf-8?B?bzNGYlJWRU1QdHZGTS9pZ2ZsQjVSQWo5dGZ5YVYzNDR2U1Azb3o4UHo2K2Rn?=
 =?utf-8?B?NCsvTkxuc3VHbFlaSzNFRHhDdjBjUEFkSG4yUWZUdjVORWVUeXR1Zk9xVWxi?=
 =?utf-8?B?TFJmSnZWS1RjRUZ4MWloSzNGSG5rNWFEMGdmcWxMWFZIREJ3QkVLRGlpZktw?=
 =?utf-8?B?RkJ5TDFGRTF6Sld0VklqYmdkSmZVcDVpVzNYOFo4WnJUZllwTHZZWklJQ3RN?=
 =?utf-8?B?QXorb0d0bEU1c0xxUjZkdUJaMS9lZG52OHROOS9pM2lXYXdkRTliVXVDbnp1?=
 =?utf-8?B?Wm1GS1pLaE5FWHFwNEdCV0wxZHFZQW9abE9VcmZEWGoycWRSeTRQT29FUE1q?=
 =?utf-8?B?c2k4bm9DMUk0ZEVxYzlnNEtRbWJ6RVRaTFUxbWFrWFN1M1VCZWZZOEovcnJZ?=
 =?utf-8?B?RndxVGcxdzd0ZlBic2Q0NExTLzFxSU9pbGFKaFFoOXY5TGVkZ1BGYUpUNlcz?=
 =?utf-8?B?Z2YxWTVRaDVIRkUweUt4eTVQbjU5YXNxcHJ3LzZoRmNGTnFnQnpaOWFLNHl6?=
 =?utf-8?B?N3dNZVV4T25kVXlCejF3N1pEUlRTcGxmREE2ZE1lZmxvd3hBZ2hZQmo1dWdv?=
 =?utf-8?B?RjhBUllQS0llZUZldWF5VG5QeUJ3b0lFSzRqN3pHcFdCaGFuUnpDNjE5c3NF?=
 =?utf-8?B?RmRNa2EyeVZpQ052d1NranNLaWxLcHExU2dVZ3ErOUovOE1KU2Q2a1dwVUhj?=
 =?utf-8?B?R0twWFpRU3ZaeHMxRU1MbndUQWt6RmlqUGNaWjE4VU5HdmptZW9sNVYzVkJk?=
 =?utf-8?B?VDB1VC9GcEJNaWJnRElobTNXY3gvVUtUdG9pb2UydkZJWW9nRzNJK0Jjaitr?=
 =?utf-8?B?RGJlbEtmNFBueVQraXNTZTFTZS95SmVSWFpYODdGY0loaVAvY3k4dXFBaXor?=
 =?utf-8?B?SFJucDkzbVNwZmRDdC9FNjNRMEtIcnV5MHRPZWtCUFZSUndhejYrKy9idEJT?=
 =?utf-8?B?SnZPNWhoOVVJVktUTTJIZ090dmE2ZHg0dU5DUlhzY3Z2QkFnb0VLWXg0T3RR?=
 =?utf-8?B?SzNEdFZUaEZINVc5cVlsRXNHL3ZyMmttZ1hJUzQ5Z2NnVEV3UEN5TkZldUk5?=
 =?utf-8?B?M3krdHg5NXNoUEQ0Y2tEcnVyb3FsTWdwVmc4enpKME8yTnBaNHZTOGJlcTgr?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e1bd009-b2ec-4814-0d34-08dd2d67a230
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2025 09:02:08.3321 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sMnLHfzFPgA6lNjG9mCCOwQJgrJCImm7qsFXUkUxj8YZfE+Ra5FZvrdkGCzm3f4kjfmgYC2IILTV/E2LXkFxwCIUCDkW1PmYwFgPh7sqXcw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8389
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736067746; x=1767603746;
 h=subject:to:references:from:message-id:date:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5PYEAbqLCpPuW39n7AOf79AIBRdFwaYt6ysHcq1TDKo=;
 b=bX3uUeaNPWNOnVMgYW7X1hFRd+Wdr9zGVTrjzyOlBLbZ09W4ClmDNudK
 zjocTegLPG/5MDxrloQU53EzOLVdcDCTHNoJrKmkgCgyXBHNBoDsxB1/6
 8xTx+OipP0gnGaHMCo8qd8exvf0go7aKk8tgnBF66NEPczWV3Wxz4SCP2
 xhYQgdDc3pO2JxCVKonX/LqpgCvXjlvsyAbw1sKKfCIx4WDBHt5RlhZTl
 VQlQeYuPbedzxpx8qoXOCSjGQWDBeuJT03Qxj7LAeVmeq2OavSEyb48tb
 VIP74h/tkuUM7mwJGVV9TmRYt4q62BjOE7OCaeUITPrIR6GTgTQvFSRSU
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bX3uUeaN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] igc: Remove unused
 igc_read/write_pcie_cap_reg
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



On 1/2/2025 7:41 PM, linux@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> The last uses of igc_read_pcie_cap_reg() and igc_write_pcie_cap_reg()
> were removed in 2019 by
> commit 16ecd8d9af26 ("igc: Remove the obsolete workaround")
> 
> Remove them.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>

> ---
>   drivers/net/ethernet/intel/igc/igc_hw.h   |  3 ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 25 -----------------------
>   2 files changed, 28 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
> index 7ec7e395020b..be8a49a86d09 100644
> --- a/drivers/net/ethernet/intel/igc/igc_hw.h
> +++ b/drivers/net/ethernet/intel/igc/igc_hw.h
> @@ -279,7 +279,4 @@ struct net_device *igc_get_hw_dev(struct igc_hw *hw);
>   #define hw_dbg(format, arg...) \
>   	netdev_dbg(igc_get_hw_dev(hw), format, ##arg)
>   
> -s32  igc_read_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value);
> -s32  igc_write_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value);
> -
>   #endif /* _IGC_HW_H_ */
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 9c92673a7240..f58cd6940434 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6779,31 +6779,6 @@ static const struct net_device_ops igc_netdev_ops = {
>   	.ndo_get_tstamp		= igc_get_tstamp,
>   };
>   
> -/* PCIe configuration access */
> -s32 igc_read_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value)
> -{
> -	struct igc_adapter *adapter = hw->back;
> -
> -	if (!pci_is_pcie(adapter->pdev))
> -		return -IGC_ERR_CONFIG;
> -
> -	pcie_capability_read_word(adapter->pdev, reg, value);
> -
> -	return IGC_SUCCESS;
> -}
> -
> -s32 igc_write_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value)
> -{
> -	struct igc_adapter *adapter = hw->back;
> -
> -	if (!pci_is_pcie(adapter->pdev))
> -		return -IGC_ERR_CONFIG;
> -
> -	pcie_capability_write_word(adapter->pdev, reg, *value);
> -
> -	return IGC_SUCCESS;
> -}
> -
>   u32 igc_rd32(struct igc_hw *hw, u32 reg)
>   {
>   	struct igc_adapter *igc = container_of(hw, struct igc_adapter, hw);
> 
