Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D559984A3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2024 13:16:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E289F40135;
	Thu, 10 Oct 2024 11:16:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EZrzUAwMlWPp; Thu, 10 Oct 2024 11:16:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95BB340180
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728559010;
	bh=qYs5RtIQU5YVAu62hm32CjeBiX0wOPWF4+ZUxXZLKdI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oSW22/+L+fDRU1W6k8gCBLtH/z70ZWk9glETdJwgAi+5+C9WdeaYNDmSeScrUaNSb
	 gag5kOr/0s6GiWKhbeUbLcaP+xghL5YvvHKZn2NkXbu096Hikh5Udybk9u/s222RFe
	 D46tZ0m4aCOtgcSQKT3T+hTN9RVIL2x23/TV++v0Fou0oibmnGwUsX5C63T0NP72wq
	 tVmjgDQj1qFwHCkXP9EZCMBi5V5T1lA5PROqWhEG+PpMGoUg3icD3YbRK4OGdDfKZl
	 jG0MoQVZLd9JRzpP74nY8WQjhPwuJahaVG8HM1qxrcINWdvIz9++tqqXkgLgAL+fUQ
	 usIDcP/4hsFhA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95BB340180;
	Thu, 10 Oct 2024 11:16:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7C7AF1BF419
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 11:16:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7728860AD6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 11:16:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qMRSJRnXuzw5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Oct 2024 11:16:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AE4EA60AD4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE4EA60AD4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE4EA60AD4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2024 11:16:47 +0000 (UTC)
X-CSE-ConnectionGUID: gXzRBuGQT0epI7hyeP/wlA==
X-CSE-MsgGUID: 4FMg3P6rRHS71UAfKMQWMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="38495960"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="38495960"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 04:16:47 -0700
X-CSE-ConnectionGUID: MHFp20wRSOi977nOdGYNBg==
X-CSE-MsgGUID: ynfP64mjTnqjduSUK3KIzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="76219196"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2024 04:16:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 10 Oct 2024 04:16:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 10 Oct 2024 04:16:46 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 10 Oct 2024 04:16:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QX371koJqbDvqsGI7pInzlj4e5lBVlpp3RuTA1/RRpsFLbkDZykJB9vuJS/l6pDe67DUDWnyakv2j7RohQBPaUyHKD0emADy3Vt2dlVjAT5/jEq/Ky5HuO6teObHKj7yHacJOiZPe+CQic0AA2HT31olC8PdM5A2WctGCpb+jYYb/FKvgmq4frGoKS+kRDjiApH8jfQwLvHU6G2Z5CAZCnDsincdReV38Ok3e3VHTTAAy+CT9DiTG4s4Nvi14F6IxPP3zO+F0sHjNGYEXRvsk89nzkaoxQ6P30ta9WvRZKkjNLe1RVCNg9PQrxGfPgYCkxC/sSm7SJKrIkHtADVtwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qYs5RtIQU5YVAu62hm32CjeBiX0wOPWF4+ZUxXZLKdI=;
 b=oS1e1TgqVmRAK43devN63c2vlx5+FwI4VHArc9RipxAe65L2zljcddV9vVxV2TL03frjRaZpEGWa2CXsOWLk9dM/xyRxFs4edeEbleynWtDTKzWbsfHGIRB2wR3NTgltUK8syZgFdeuqG/qAF8CqfDBZHsBiyCZlW8dYJ9rpQslMbmJc3m4NQgoFwazZCWdd69ynIWv3wnzehHTPUsRVTdreKEST7EgE1ctZsodrayDfBOu/WK4+ocLgZ+cnZ14+SXED6QSlNa+lKbB4Ltjy4aLMNwnjk6I4sLGI9oPL2ZnXuyUcO+sZ2sLNLmKp5sPIQeZ6PUhN5D1zO45kyxlgCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by SA1PR11MB7037.namprd11.prod.outlook.com (2603:10b6:806:2ba::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Thu, 10 Oct
 2024 11:16:42 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%6]) with mapi id 15.20.8048.013; Thu, 10 Oct 2024
 11:16:42 +0000
Message-ID: <951ec4b2-45e5-491c-ba14-d33eb1f25ae9@intel.com>
Date: Thu, 10 Oct 2024 14:16:37 +0300
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20241001170531.1164289-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20241001170531.1164289-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0024.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:3::8)
 To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|SA1PR11MB7037:EE_
X-MS-Office365-Filtering-Correlation-Id: 71bbcdcc-6ef4-473c-e08c-08dce91d0488
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NFJEcWJuVlFiOGYwK0w2RVVyNktXWk43ZUZIWkJjVGNwZDk2YXZwWSt0dm1s?=
 =?utf-8?B?RWxuRysvMlVydmxYUWl6ZHlEYXh1TzBNdVRUekZnZDBFRG9QNHQ3NnNLdUtQ?=
 =?utf-8?B?a1kzRk1PWGV4cytPelV3WFR0bHhiTnpvdUNVSUJIdzFJd2ZvN0xCNThuTTFO?=
 =?utf-8?B?Q0ZMc1lVbXpsRWJKVXN2U2hjNGtMYm1rSWFFWktBVTRwQitIYmhUZ0FEcmJ2?=
 =?utf-8?B?NXZpbGsyY0RDV1BWWGp1T2dCMHdZSVdGZml0MkhTZFJ4dllvMUxldHpIeTZ3?=
 =?utf-8?B?bmZLcGdqNWRNYjJLUFZ1c2doK2FZVmRxcjIyL2FnMld4ek1jRnNPQmpjL0xJ?=
 =?utf-8?B?VUkrOWhRcXord1RFVGVLWGZxUmo2eEQ1TFhxaG0wcG45STNMblZpbFF1anZU?=
 =?utf-8?B?UDhuYkFIa3J1VFQxQ1FIb0JlZTlSZjkyUXNEUStpRnJKTVF2Qi9XWDBVRjlr?=
 =?utf-8?B?amQrNEZ1bVp5dWtyZGhzOWRvYWI2SlRFS2RSaS9hUVNpeHpSVVl4bGdTandu?=
 =?utf-8?B?amxVdDU3aVFjRXI1c2E5NWIzckVlZDJwMVllYXgxQnRmeUJBMnJoMlBzYWVU?=
 =?utf-8?B?QkxaMitqM1A1UkU1ZjNUQ2tXektwd2Jta2piMmJQVmNUZUZhQW1UaHBVS2M1?=
 =?utf-8?B?Qk9BM284RkRBOXJSWW1ZcG82RjhjQm1BcTJac2hNYjVhV09HZkRwTThaanJK?=
 =?utf-8?B?dmx5bkNwRGMzR2NXYjd1TWI5ODJuczNHREgrcUErSGNGVnFvaDdnMWlsVlM5?=
 =?utf-8?B?b0ZCVVI1YjU1RWFrcVMyUDd2YnJ3RWttMGJEa2JWcnhPVVZqUCt4clhGRkpw?=
 =?utf-8?B?Zjc2cDdsalhtMkx6S2lTSEdwbmQrNFBFcUZmZFhWcHFHUDZNSGdqb1EvbUg1?=
 =?utf-8?B?c0pzYWxGdXhPdndCZnhtMVhCdVJlYUZ6Lys2a1MxNHlqN1BVcFdCNjhKVlIy?=
 =?utf-8?B?V3dNeWUxNmpvckVHR25SbTA3VHpMNnlvaWVjZ25TejJwNTFmcXZrSjFLdE5H?=
 =?utf-8?B?cFE5VENSVGxqY045a05ybmZHK3ladG1SMlFHRUlnc2RRVm1HN2FzNTZHZi9k?=
 =?utf-8?B?UDE5MjdPc1NLVDBqb3lLQWtZNmk1MWRTS0pnRUx1VHlaZHhuanhZL1czazdU?=
 =?utf-8?B?R2tiVWZ2Qk8zUWZLV0Y0WndZWTVCL2VkVVN2aG03WDN0Qzk5ajMyRjJ2Y2hP?=
 =?utf-8?B?Q2FTNVJ2MEdKcUdCbHRXcVlSMmMrL0dUSDd5bEtUN0FYZGJzYjdjWFVyRWcx?=
 =?utf-8?B?WjJLcVBWaGF4ZFdseGczVDZhcTE0UlpPVUpKRkZVMUdlZFpRcjVGZ3Nyd0JQ?=
 =?utf-8?B?SWl5Q3Fsb0FsUi8vV1ZTM1RNRk5uSWxMMDRKclNNU04yclhMa1BXUk5CRkFx?=
 =?utf-8?B?OVQzbkRGeUEwOFVJOWRJS0tmbU5NZEYrQjVPK3dRSFFsVnZWK1A4SjErS0NL?=
 =?utf-8?B?Tm9qU2xrcmVsV25tTWdOTmZiNlJyaU54WUV6YW12ZGJyYUlyNTh6WGZKeUpS?=
 =?utf-8?B?QXJSaWdXMzJPRXZSNzVjek9FUHZacW5NT0NuSFBDcGhCWFZhVmVoR1h6QW5T?=
 =?utf-8?B?NFZsMUZMU3JqUlVvZnFxcy9TN1RjNTcrSjArT1VxYTZ6eDJoWFNqdTBQSEF1?=
 =?utf-8?B?aFpvN2pEdUVPczh5eGoyQ256ZnJwaTd6NlozTktSUGd6VEYycHdMYjdOSXlE?=
 =?utf-8?B?Z0x2azgwOXJTS1VxRkhYa1BhalkvZTZiOXpZeEh3SmVGNFJ0dEM0YjRBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RXRsU05SeUk1KzFVZjllZzZYVzFMdXlWYjhmb2VZekQ4MU5RRllReDM2OTBj?=
 =?utf-8?B?cU1pYWtheTY0TVEvNmE0cHovQmpvTzVOWHZodWlXZC9KM1p6dzZmdEpiQ3Jx?=
 =?utf-8?B?T29RdnY2UGF0TDI0clU3NlRFR3JBVWRVWjJOdUZrWSt2OXRNUjJFS0plaVVm?=
 =?utf-8?B?TUE5ZEsrOTIwVlpROXdWRWR1bGtmYlJLV3BGUXViWW80QjZzTTFhQ1BramtG?=
 =?utf-8?B?MVR6NzYwbFZVc25hZmRWYVo4QUQwQnUwOG04ZjhJTmtDMDllSC90QUVqRllu?=
 =?utf-8?B?THNVUlNjaFZaVEUwcUNRRWd4WlJacUcvSXpFclFxdkgxQitTaVl4VDJmNG9k?=
 =?utf-8?B?R1d3bnM3azcvZkI2QW51WHEydDc4TjRoUjdJc0pBSVhCRDlXSmFLVVh5R01Y?=
 =?utf-8?B?ZEE5UkhZY1NxVHhlTWVKY0liVGIwUWZ1R0Z0cU1iK3hBeWJFNnpDNVZlTXlL?=
 =?utf-8?B?SUJ5MWluTXdhVXpVYlBHWEVXSVhnT1FrbVkvc0VjV0lRUVJxbXlSc2Z5dnVG?=
 =?utf-8?B?VkFqUU5DNXdYQXErVzRZdC95UHh3YkVQK2xLN0E4VkpUVHJ3bGw5YlJoNHZV?=
 =?utf-8?B?OEJZYzI2azNQTStiYmNjbVVFVmpyblR1ZUdWRXIybjdzYkdTazB2bWl4cDR1?=
 =?utf-8?B?ZjNORFI4OVRRMXk1N0ZZRERLK2pCaGhSNUZUNitSYXQ4SFB0SnVyN0NrNzhS?=
 =?utf-8?B?QklyNm9sMDdmcjJwdFVNNUdkK3JRMVJJZXBaN0FrWmVTb3RZR0xTQ0QxVzBp?=
 =?utf-8?B?UWVuZkhkRnpmK2ExNUZGSGVya0xmSG4rcmZwczREZGRBSnd5SDhqaElHOEtr?=
 =?utf-8?B?QkhwdTBQNGF5UVNZZ2t2VHBWeGt3enhJejJ4VDNobWsrL2VnaUEwTldsa0h1?=
 =?utf-8?B?U1dvN09IN2trRXp1RjlEUmpuUm5iSExvSEZjWC9aVGR5Q0dxK1ZOY2ZSY3Nx?=
 =?utf-8?B?NXQwWjJBeE9ON3V4MjBJbitZVDZZdkxNYWRFeU05SUZyNWpVc01KeW9LUmJU?=
 =?utf-8?B?SWJSUXhpOGo0aVJIRWduOFVwaTB6aCtQbzNaMlMxaDhWdkdWcXFOSXJUVFpr?=
 =?utf-8?B?QUovUEEvdDRxYWd3RjlBVmdqK0tMSEtPVVNydFA3OTlyZ1FtMENUZEFnR2Zl?=
 =?utf-8?B?STJlUExLZk5kRE9JSDNTa2Z6cjJjSW9BaEhZT0Q5azRKQzh1cVJhSkNKUHhJ?=
 =?utf-8?B?M0RHMllWTnRvaDc5d21QOWxFSGJtYXpXN20wYkM3WVNUUFlZTzU0MUJDUU9M?=
 =?utf-8?B?Wk5idTFBRTAvdEVXclB5b09KelZUTGpCYmRZaFBteHVIT2psbnR0REx6VU1x?=
 =?utf-8?B?WnFmaWt0SThKWWhmRzFCcGNoVTVnTmhyUGRCTHd5VFg1NDh4bEd5b2t5eEFl?=
 =?utf-8?B?U2lLKzFuK2dwSFdSZk9abHQ0bmhaQno5ZE1sbU9uZitUdjY0Y3dsTTJQZHpZ?=
 =?utf-8?B?em1jT3hsMTE2QUg0ZWw4RFFKdGJNdnkyTlo4K0Rlc3VLd1AxRnpBQTEzUmg4?=
 =?utf-8?B?WmowZzlUTXpxS1dVWitZRDdFcDJ6WDFMdUF6d1V3aWN0WjhNejhkREE0V2ZR?=
 =?utf-8?B?VXpOZnpnQldyQjM4UVlWcURlL0J1Y05ROVhFZExCMEJMZVc5cXRyR1JVdWVB?=
 =?utf-8?B?RGs1YTBpekgvd2xuKzF4dFFESWdYbFJCRnlrT0RrakpLNkkzMlFnemlqeElD?=
 =?utf-8?B?elRveURXa2M4eHpzK2tlTzU1dC9FbWxndmFqdlloSHZTN2lFVWpEcnFoRC95?=
 =?utf-8?B?NFVUakVSeFI4bm9pWWZnOXhFVkVXRTUzdDIwM2JqbzZwdkVVNlBwekVuQ21B?=
 =?utf-8?B?ZGg0Z2k3blBxdXlQNGtxUWZPdnFYUERRNkJyK1ZvaTd3aFhoaCt2bWxnOXEy?=
 =?utf-8?B?UnJFU2xUZGY2T3ZSa3dPT3pKeEdMUFJRK1FuTjNXai9PenNKcW0rcElSTDl5?=
 =?utf-8?B?elRWcC84YklSMFo5ZzhvV3hIZlc1aDQ3SVBaK0JIN2plMVJQbGszVHpvSWJM?=
 =?utf-8?B?NmxkRFVEQ2RZY01vUGtnSVdmQU5hMFR2QTBUZVd6aFdPTEtqanBzOWtMdDlv?=
 =?utf-8?B?QTNWRWdETkJ6UDdSOWhqbC9xdzl6QXpVZjRsN0JxSGk2eTM5Wko2WnJGdU5E?=
 =?utf-8?B?SGRhRUNSOXlPWExnTEtrZEc1WDk4K1ZvZmVGR1RTN3Y3V2hBZitycGdQWUdk?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 71bbcdcc-6ef4-473c-e08c-08dce91d0488
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2024 11:16:42.2347 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WC9T/zD1Z6XozXV4IoNT0zdjE+UK70CRfQTyjcrTkSJNNHS+hMH2iox83Be6Czkiv0ElX1kYXAErqw6+aTizwcZHjQqOaWB+hFAbbUwNvi8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7037
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728559007; x=1760095007;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4lzp3+H6i2MrhNmDBbNUrJpevr5JPnv64t44onbmzK4=;
 b=mc7aWon1Ck5+wMZJ4w8CJcgJ5WxDOQfwC+mh6IPrvWRi7ONGXCxhTNJo
 0FLvQ+JyWhJ0FkLi4nF7L2oskW5Me6H62zG1HoPmGJ+B/qF7mAKcgxrEe
 xU4QH6fB7TMNLxAEr/Hz6DJLqkqE9Gbjm4sUPKDmglTXZeT1DegdhqHwc
 nqs5j6a0m5ObCTBQ1mHzxVfRuynurIb1RlGnslJWgwvwPeHvZ/RrlFdeq
 DcnVx0rg3ewITPcWHzQvzsYjgjv0VC8vQSIXYrn9yvkaQbijEenEvKsGV
 qOPWHW5C1EhtI1GKrrOR0kgD03lTMY0vEx4y9IemFyhMNlC7UEPd6U7gJ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mc7aWon1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] igc: remove autoneg
 parameter from igc_mac_info
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 01/10/2024 20:05, Vitaly Lifshits wrote:
> Since the igc driver doesn't support forced speed configuration and
> its current related hardware doesn't support it either, there is no
> use of the mac.autoneg parameter. Moreover, in one case this usage
> might result in a NULL pointer dereference due to an uninitialized
> function pointer, phy.ops.force_speed_duplex.
> 
> Therefore, remove this parameter from the igc code.
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_diag.c    |   3 +-
>   drivers/net/ethernet/intel/igc/igc_ethtool.c |  13 +-
>   drivers/net/ethernet/intel/igc/igc_hw.h      |   1 -
>   drivers/net/ethernet/intel/igc/igc_mac.c     | 316 +++++++++----------
>   drivers/net/ethernet/intel/igc/igc_main.c    |   1 -
>   drivers/net/ethernet/intel/igc/igc_phy.c     |  24 +-
>   6 files changed, 163 insertions(+), 195 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
