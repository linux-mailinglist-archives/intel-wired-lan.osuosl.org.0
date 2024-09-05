Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 451CF96D68F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 12:59:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE13380C0F;
	Thu,  5 Sep 2024 10:59:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dIVuNlM9EGBH; Thu,  5 Sep 2024 10:59:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9184E80C77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725533970;
	bh=gATB/020lF7oxXY3mwTYRn1CCxD4U6eSV5S6DezpfH0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yVhzRpweAGJodiuqiap1deeqAREUHA3ZCFw6lzBdsBbB0L1ijcc04gxi04nJXPZhL
	 v5kCgyV3JxsYGp7sLa64nXGtH1ElA6LWMoX9LcHQCz7EsDmuvfF0S3OVYbh4tLV2zp
	 YSTDYHXE4mbXZCLGLB8iQQd+IuGZZsqhIJsMgL89eMKtYV+eRSPHvf2NEPSnOjwGAr
	 PFbaq0NLyf7ZsPksaYpLerKVoEyasQtAR5WjA5l7LnI29E6yFXLz3WhBxB0u68MP3j
	 9ii5pOnsIYPqYS6cKgJ/6Cmu7yeYHs21GpzG4VWCMaRxj3jL1EVwBuyuAZTWHydsrg
	 JI1zi5b//p1Ag==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9184E80C77;
	Thu,  5 Sep 2024 10:59:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4FCAB1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 10:59:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C1E780B84
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 10:59:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A97T0sgYwGLx for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 10:59:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EB02280B4C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB02280B4C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EB02280B4C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 10:59:27 +0000 (UTC)
X-CSE-ConnectionGUID: 5F1IG8rTR3GgZvKEjBVA+g==
X-CSE-MsgGUID: OocK2kasS0q9oHjZmMbYHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="24105818"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="24105818"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 03:59:27 -0700
X-CSE-ConnectionGUID: k2m5IKiUTBKvM9SJ0vqkqw==
X-CSE-MsgGUID: Mx5LcExwTZOxprSw/OSQcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="103043102"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2024 03:59:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 03:59:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 03:59:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Sep 2024 03:59:25 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 03:59:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BwXaJOyArFNubFvY7bUXp0tK8NlQn7co9No4uGeRbP1t82LdJGZUjcNKXOtx2+mbzbuuO7ik7tULh1932Bq+C8HAglLpAXPIHHCKLoXigUTuzSeGijKOTUhoaf1Mf8O5wbV4ROlAhObit9CIRPYkhbw97a0WJRPIjqOIgCWRD7sB/EQfMkhlgq7nHl/dDGhRq5FMC6ApMExkWlQWWP89L4jMZZGObxBr5/WoeVcSlUDcWN6C0kqHY3OfVnoJlWjD1FaJ6pcPE0kLIEHjsTgDOcX4Yr3hP3xgGmA9QBgC2rWHoM+KvII2Tc/rtnZ2E5KNzIF2MTxwViKnf5d37Cz76g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gATB/020lF7oxXY3mwTYRn1CCxD4U6eSV5S6DezpfH0=;
 b=Qr3St8tanil7+L/l8KwALGDUFOdaITNn4UBsziL5PxNkkG/KD0fghWLXw1l4jR+MIk4Sr71axixtS499bnyY1NH+Pk3Z+/pxHuD8GrH8UdPVTjFK+keieLaq1ki+8kz6qsBjV2jD67v+Mdf2mcXqB6cY4LZZesqE47MabknYkwRP+KsKnn8ryKdf4LdQixq+5L3gMk2FxDQIhE0G6HQnOwH4Zf2WhGhm7l/qwX84uFvdArLmA4fa9KhTxmCuNJAGX42JpdqXejvcj7JEDq2jz5ngl5XLlw9d3ww3+xGKbrNuN5Vtix1SouVgO5U/yWY6ib/GMfSami/JCCaj/9h3Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MN0PR11MB6134.namprd11.prod.outlook.com (2603:10b6:208:3ca::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Thu, 5 Sep
 2024 10:59:23 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 10:59:23 +0000
Message-ID: <6c32336c-09ef-429f-8bf8-f591e90ae32b@intel.com>
Date: Thu, 5 Sep 2024 12:59:18 +0200
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <mschmidt@redhat.com>
References: <20240905091410.26909-1-michal.swiatkowski@linux.intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20240905091410.26909-1-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0411.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:83::27) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MN0PR11MB6134:EE_
X-MS-Office365-Filtering-Correlation-Id: 7318037c-f1e7-4602-3480-08dccd99ccc1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NURXV2xZVFhYcDRlQnVHTFp2bTJKWWlxR0dGUFNtSWF5d0sxbHMvNFRLY2Q5?=
 =?utf-8?B?QU82VnhmbmNnak1rbGkvWWRTeHFQbG52MThxS2tWTXQ2TThKQmtaNmdGLzBt?=
 =?utf-8?B?YjEyQTE0eEp3cXZRWFlnMUREb1JNOVBIRVN3MjN2bW1uRHFGek0xcldscndy?=
 =?utf-8?B?TE1NSDlvNExxYmJMaGZkRE0wdkkvaFA2alJjRERiTnd4ai9TenJRSFkwMUVU?=
 =?utf-8?B?aWhPOFJXUFpoMkp4cjJ2d1RaZFFGSUdBSGZKQW50N3dNVmQ3eDFLWU9FTEdv?=
 =?utf-8?B?eU81b2ViUXJjTkZNelllcjM4NzI3UmZXMTFmSytOa0xaMGp1T2taaVY3bVJn?=
 =?utf-8?B?ME5yWkRPNzFDWTJ3ampndzFBM0JWemZIRitNZVZ3dTZqY0NvYWVaY1hZZWMr?=
 =?utf-8?B?S3hWVk1EUTYzOW50OXIvdjZvR1RMa3VCbnpEU0c1RmJac1VObk0razMzbE91?=
 =?utf-8?B?cnhzZ2JnY2s3aHo3U1NjMVBSK0F2UGN6anlQL05nMVkzMUNDV3hxcVhXbW8v?=
 =?utf-8?B?QmF5cTFuNnVueUZ4dXNsZ3dYOUg4QkY4bjNmQVMrdVR3NXUwNnVYNGxPcDZD?=
 =?utf-8?B?d0pvemlkTHVodDlscElsZms1bjM0U2lLWW1EQlUveWhsTmhnUjluS3YrYUlx?=
 =?utf-8?B?TnM2V2R3WS94NkNiOXBPTzMwSS8zQk8wTUd2eWt1NzZsM3dmdjdyYzZQbWVp?=
 =?utf-8?B?bFZiUmN0VnpGWUV0OTdwVXB3cmJGaFdhRllUdlV6bkVmQnpvS1hQKzBZbTB5?=
 =?utf-8?B?Y0lXeEZQd1gyL29hUjBuam1FYllLaEhtRDN3T2pOWEJ2S3pCOFkrWGp6UmNC?=
 =?utf-8?B?TXVPOG9kcThJbXFXWWtGYjVWNlRFeXdPd1RuVzJuWEhpT1VRMTJYOTZuL0dF?=
 =?utf-8?B?VnQxWEdJRjdlc1ZhbWw3Nldld2ZJUmNJY0lGVE8yUW40ck1weHI3aEZma2hB?=
 =?utf-8?B?SC84M25pT0p2NHc0ZDZZRWtCSEFXSUFCNFE2OU1hOFNERjZMcjNJVDFWZFM5?=
 =?utf-8?B?ZUMrWjZoN1lGVE1VKzJETk5iZmsxUnpPTFhYOE5wemUyZmlLSFA0dW5Rd2FP?=
 =?utf-8?B?TTZHbHpESis2RUhzZ3ZvQTd1bThoZnliWXJpQk9xemRCZ0RmKzdHRnlkMU9W?=
 =?utf-8?B?TGZXTkE1My9sc1VkQ1VyWWtXVkpzL1NaSW1uMkxlclVtaFR1Q1F0VzZaeFoy?=
 =?utf-8?B?aGZSb3FqaGNORTRta3MwK0pqbXlVSlpvR0tWNzdiQUZSYUx2VHdGYTkvU0hD?=
 =?utf-8?B?WExWSlA3MlQ5S3hYYTc1NEh0ZCs3dVdpWnpVcllIcWFIMTJjN2RZNE54R1BC?=
 =?utf-8?B?SkxNam5odFR6Q2VtK3AyY3lLMnB2NmZ6TkUzU2FMV0JVdC9rbExLaERuVi94?=
 =?utf-8?B?SG5EcmJzditCcnFENm5pcDB1UlUvd1RiOFFEM2dGcFM3S0NoSE12VDJ4WmxV?=
 =?utf-8?B?SVFyZEVIbUM4SGdVamo5WHNKYlNpRThENzNXTVFjTmtVWXBjVGc1L1RnNEts?=
 =?utf-8?B?QjBPTUZxWjZOdlI2NXprOG9mMFl1VlE3Y0VJK0ltU1UwUW96ZStHL1ZDYVVY?=
 =?utf-8?B?T3F4dlBHZEswREZIUThiZnB0UmtRaGhmaFB3RXA1eU52UkpwMFZDV0xpWklC?=
 =?utf-8?B?aXNFV283MnFvZ1dNZHdzc21kMGl2QzhNeXpVWVJac2tQeC83MTk3Y0h0Sm1G?=
 =?utf-8?B?UjkvaGxRNFY0OER4QzRiWWdUU0U5ZmdmN1o0czN2OUMyQ09RZThWRU9VcWV6?=
 =?utf-8?B?ZUtmZzJZRHpuR3d1U1lkYk8xOEUvQk9JZDYzSEI1SlRrM1ZLVEFTWjhmLzBr?=
 =?utf-8?B?TEpQMElIZlArOGZDSjE4QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEZGUDVoT3U0bkErOTRhRFBUYWIweG5JdFl2djZaTDRLVjFkRnhqMDE2TkFl?=
 =?utf-8?B?L0RZSWFhMG9QbEtIZ0luUlNTZVV1RnprbGRzM0oyZUMyK2Faa1U4S0JoNVN6?=
 =?utf-8?B?MFo1Q3ZINkI5L3ZidVpZMzQvWXJnOWg5dmNwQVBKUkhBaDYyUHJMajJnUUVV?=
 =?utf-8?B?Q2d0Zkozd1RFaTFjcU5RanJRT3JMYkIwa1k0eXI4YVlmampYU0ZhTVRlSU5N?=
 =?utf-8?B?Y2IwTEVtN1FoNHVHYUtlNlpkbXl5SzJWUHZxOExZL0JaYnlDcWxQMGk0T05r?=
 =?utf-8?B?VDlkS2JwQkxwMGhzSExpMXd5enlBZTZBSVZJQ045M3F1M3IzQXdIUi9HWCs1?=
 =?utf-8?B?VGVMSkVrYzhxcEsrdndjNnBVeTl1TGxVOW13OGQ4QzQ2aTFWN1dnUTgzSU4y?=
 =?utf-8?B?VDdvaDV3dEcxYmoxMzVpaFNOb01QMjRrL05ML3A3MzBsUlJmZzh2d0ZnendO?=
 =?utf-8?B?d2pteldlUWR6ZFBjMVlMdHFUOG9CcytaN1NJNkV2TFZXTEZpVmUrUWI1N0JY?=
 =?utf-8?B?TXMyRTB6K2N1eE54alNnZ1FZZm1kTmkxY0ZQVEVHaEd2SEtqU2g0aytnNjVR?=
 =?utf-8?B?bTJXSitjNlZCMllVV3hFZXQ5bWxtMDk3cU40ZmExWEVwY2pnbWhqTG4waUcy?=
 =?utf-8?B?cCtESTJDZE5YRTJzZXRnb0diTFo4NzZUVDg0bnNuKzc1MTZFUE9JVHd0Kzla?=
 =?utf-8?B?REs4V3hieWZlRmRsclc0bXRzVWpHbTA2Q2xFRmtqMjhqb0xCVFBHdEp5cmZx?=
 =?utf-8?B?UmpWNnlocVpnRCtyRmFKWHVYWUdaZnVydG9zWk1sUjVrdTZiaXhBQldXeWov?=
 =?utf-8?B?bm9VUDF5WDVOUFk4UTFoZjJacWkyb1l5RnFKRjc0S0JEVUZjOWhlVDE1TG4x?=
 =?utf-8?B?Z1ZDYjl5S3dKOFBaaVJQVDNYVzNkODhBb2lMZTBZaXY0dDQydDRXMkFqZ1F4?=
 =?utf-8?B?T1J3bkFVWjBmeDd5ajJjQmhVSE1iR1dGRmpvOGo3TTU2Z0lid3B4RFgrajhv?=
 =?utf-8?B?K3Z3U3pGczd2dlVJYlZkNkNzeFRZMUx0aVVGZGY2cFM1bFRMdHVMeTNYZXh0?=
 =?utf-8?B?cGhtSkRScXIxVmpZcFZTQ200TGlRckFsUllQRlplNlFlb2lOUUNONm1GeW1z?=
 =?utf-8?B?aDhIQ2ViUzgrK1duMjV1c3pYVERJRUxZYlhoVnkveVpUU0JZRHMzRlZ2SlVz?=
 =?utf-8?B?RXJjZnhnd1I0VEdXVXdxWTN1bWRlZlpmM1duUnZtVVc4bFJ5MTJ4Q09reFZo?=
 =?utf-8?B?Mm5XUHBwZVRqTnlQWVI0elN1b1R1djllc1BaOUhlMXprNmZpb2VoWkNGbkVP?=
 =?utf-8?B?a0hIL2FjNEpEL3VvWkd1dkdaenhmeWtqbitEK1NjZE9abGFIcXMwd2J6MkRQ?=
 =?utf-8?B?MVVDN294UUZEdFVic0REU1RmS1dDZnB5cmx6WGVjekxYeGFtUk5SdmxwNm5j?=
 =?utf-8?B?c29uWGd2S2J0dEJ4YWFKaXBEOVJ3Qk1KRnc2Si9oZkxvOUd3dTlvbER4eStB?=
 =?utf-8?B?cFArY1ZVc0MwMGY0Ti9PdXVhTTFvSGJ3VlJmQVpjdmNRU2ZHWnAyWExtcnJI?=
 =?utf-8?B?Q21MVFZBc1BGbVp6N28yRG9FV0dKZjI5NzI2RDZ0VFIrSmRjNkliOVBGK3RO?=
 =?utf-8?B?YlRaWWgwL3pEdWtjMHBJZitvWjdPSVQwQWVlMHdaSlBuVXdtSkRWcU1kWlFz?=
 =?utf-8?B?N1c1bHBwUXRuOThwTm5vSkY4bDZrNnR6UzN3aytKQ1JyY1pCcVFLVm0veVJs?=
 =?utf-8?B?OWx6S09XNTNoUDJGeGxBa0VLY096cTlyRnJpRUtxb3k5SElFTGE3S2FQZEdp?=
 =?utf-8?B?VDFjRm4rTTlHQ2ZxbDRWU1JBTHdpUHV3QnRkNkQwRmxqTkJWZ2NzczFBbUYv?=
 =?utf-8?B?OUR0aTBvazVrSjBlUEVEanVvOVdaMjZvUTh1emFCRlh1V2sxSmNiYnpxb29o?=
 =?utf-8?B?RWd5UHF4aEF2Z0l3Y2RqZ09uNXZvM3JzVWtqVWJNd0FpLzRmUXg2U3I5Mk9v?=
 =?utf-8?B?RnBtU0h2cXZnemZsYXFERGVQTEhtaGlsNTF4NmNwdFgxejZZN1NKb09CWGp1?=
 =?utf-8?B?cTd5ZURVN2t6bW5WK1RzTmcxOGMvUmxLY09VWFJSeUFabm9kNkNLTXB4OWJK?=
 =?utf-8?B?clFGZXh0RWsxTzBKYUxhTm4xRzdDcFF3VjRwUnVVOG45U1VHc0dwcHNjdGJq?=
 =?utf-8?B?NHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7318037c-f1e7-4602-3480-08dccd99ccc1
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 10:59:22.9522 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rL4K1R+4jCwdBHRcrnwN0NiYx/7tCIHQgXKgrnftE1WU8b51tcbZMTOUiaX0iHNBzbVeODRoY0WirBZG8PkWOsllSWlal+9zCWJDIuyDduo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6134
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725533968; x=1757069968;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D2uz/r8pCwGYgivE+f2C/vBvpA6kjl4jBxBrL+1eAiU=;
 b=BB8R8TInebODWiKQmzkQawIbKK4QnIoA0nUAJqTL3/v43faK57HuBnVI
 cBf5ipc4GXQY5zImkHUxhuIGz0PC8L9f0m08OOuje9D8G5ktknilE/PfF
 v4lSg5yLnmA7YgbeR9YsimMmMF+nx5vKBKtDVqiRtaJnjHhM1OPNWoKyC
 KjrlCDVZJJsWctzfAy2IhvJGM3aYM1g+r3o0sM/awfmnwtTfpVj47xcRk
 veIWiuD01P90pamd0gebePj/Dwp9fyn1knbMKZSKvdxbcClUWWKfd5xnQ
 vIwpsCeZMIvbFvTRvCSi+4Cle2gf/gFlhSQhjF8p0D0yls8IXwNP4BK6q
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BB8R8TIn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net v2] iavf: allow changing VLAN state
 without calling PF
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/5/24 11:14, Michal Swiatkowski wrote:
> First case:
>> ip l a l $VF name vlanx type vlan id 100
>> ip l d vlanx
>> ip l a l $VF name vlanx type vlan id 100
> 
> As workqueue can be execute after sometime, there is a window to have
> call trace like that:
> - iavf_del_vlan
> - iavf_add_vlan
> - iavf_del_vlans (wq)
> 
> It means that our VLAN 100 will change the state from IAVF_VLAN_ACTIVE
> to IAVF_VLAN_REMOVE (iavf_del_vlan). After that in iavf_add_vlan state
> won't be changed because VLAN 100 is on the filter list. The final
> result is that the VLAN 100 filter isn't added in hardware (no
> iavf_add_vlans call).
> 
> To fix that change the state if the filter wasn't removed yet directly
> to active. It is save as IAVF_VLAN_REMOVE means that virtchnl message
> wasn't sent yet.
> 
> Second case:
>> ip l a l $VF name vlanx type vlan id 100
> Any type of VF reset ex. change trust
>> ip l s $PF vf $VF_NUM trust on
>> ip l d vlanx
>> ip l a l $VF name vlanx type vlan id 100
> 
> In case of reset iavf driver is responsible for readding all filters
> that are being used. To do that all VLAN filters state are changed to
> IAVF_VLAN_ADD. Here is even longer window for changing VLAN state from
> kernel side, as workqueue isn't called immediately. We can have call
> trace like that:
> 
> - changing to IAVF_VLAN_ADD (after reset)
> - iavf_del_vlan (called from kernel ops)
> - iavf_del_vlans (wq)
> 
> Not exsisitng VLAN filters will be removed from hardware. It isn't a
> bug, ice driver will handle it fine. However, we can have call trace
> like that:
> 
> - changing to IAVF_VLAN_ADD (after reset)
> - iavf_del_vlan (called from kernel ops)
> - iavf_add_vlan (called from kernel ops)
> - iavf_del_vlans (wq)
> 
> With fix for previous case we end up with no VLAN filters in hardware.
> We have to remove VLAN filters if the state is IAVF_VLAN_ADD and delete
> VLAN was called. It is save as IAVF_VLAN_ADD means that virtchnl message
> wasn't sent yet.
> 
> Fixes: 0c0da0e95105 ("iavf: refactor VLAN filter states")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> v2: https://lore.kernel.org/netdev/20240904120052.24561-1-michal.swiatkowski@linux.intel.com/
>   * add missing state in case of delete
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 19 +++++++++++++++++--
>   1 file changed, 17 insertions(+), 2 deletions(-)
> 

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
