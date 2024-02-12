Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E45285125B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Feb 2024 12:36:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 26C40404B4;
	Mon, 12 Feb 2024 11:36:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CT3M84EvGdD0; Mon, 12 Feb 2024 11:36:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33BCD40A6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707737810;
	bh=eGnRPXEX2AmrOiuF49SIgSvRGm/CkjvckkzUy5sEuqQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YWdJ8yAuYou7K311CG74Wx/XlSwrcYlKwKoUVVyhcd01l2Ts8qqdTdNnmJkvU/8ZK
	 fjPt89XGwU8fxiinD5V+B0evEM0NM1emlU1uVPxhZrWnYjso5ef+N/S3B0HKbs8Use
	 y+i2XZfYdPN/ebZM9ijUovZq6g0H0Az33Nn4olMfpgKt+tPZ1d8nHgNNLGSM3zP5FR
	 5D3aej/5U48pAoKnC9Yp5ieDijdU5SU7CcwuWMUQZNmjjOLm9Dom2B3NtQg1PFKp1b
	 tDtq1lavDADQ3tWthPxEYYPR8+RU5tKq12JC0QbdV3t6rSUwPCzY5Y/zCjJcmIdte+
	 kZL1v/wILuz2w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 33BCD40A6F;
	Mon, 12 Feb 2024 11:36:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 15E0D1BF59A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 11:36:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 01BC06111E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 11:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lvUUPQu9BP7o for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Feb 2024 11:36:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 50F7360E05
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50F7360E05
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 50F7360E05
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 11:36:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10981"; a="1613097"
X-IronPort-AV: E=Sophos;i="6.06,263,1705392000"; 
   d="scan'208";a="1613097"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 03:36:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,263,1705392000"; 
   d="scan'208";a="7198278"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2024 03:36:45 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 12 Feb 2024 03:36:44 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 12 Feb 2024 03:36:44 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 12 Feb 2024 03:36:44 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 12 Feb 2024 03:36:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NEpxTus84cLRdyL2MCHa1YomzUlSVLdx5V1DhZX5lPlh1l+dwPjJchGiNFZlL+VqPH91NvL+W7Ua4GEbpkKpO/erMzpz+lLzcjD32xhmWiOnxlf9eaiJl62YU3wlB29x4KZZgWsvCMpdmP+3KvNEYBijriPlwXKVZ6yvPUtG5JOPgl1LgQVmRiAO6nU7FRjWKKsBK28QHWVWv1lMqreSg2kk52oK4o42Ud2c1lsOM1qBKmU94J6bg2P46j+8hEUh7QKgBe+1TM5wLs6Bi2RrvqXAYiA2RF9kDkl05m7dr87wYGNg+9x4HKdbNIyfb8K73RMVYu6CCrsMK2AmaVp13w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eGnRPXEX2AmrOiuF49SIgSvRGm/CkjvckkzUy5sEuqQ=;
 b=QnxtMt04BHdvvYT+SiZB/oC9OAwnG7HLh8gvULDpugNMOCzIElyyIQQtL3FC1jbFLEFQwCcnJU9k0JusFAcO/fsxMPlypiNyQxP6iUPIXn+zs2ALsBjGY9nULyhdcAC5VPXQd868Ba5eo0j2kiGTLt21hmOC6SiewraBM5yADUPf8lXbm3ChOe8kOoz1TNuI8TrvhGjaqNus3F+glwCfK/IQp//j66flM8lk7PPZV7TrG86xSLAt1nwgqJN/g+PrWUp8V/J5yKxRyX33jCxUlbQ6com/DpYKx/Eh5Zv46BEyHIwtrz1vA/0KDYbP0FahByLrDfXtzqWpxUrpVR+nMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by LV3PR11MB8577.namprd11.prod.outlook.com (2603:10b6:408:1b8::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.27; Mon, 12 Feb
 2024 11:36:42 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::c806:4ac2:939:3f6]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::c806:4ac2:939:3f6%6]) with mapi id 15.20.7270.036; Mon, 12 Feb 2024
 11:36:42 +0000
Message-ID: <4f4f3d68-7978-44c4-a7d3-6446b88a1c8e@intel.com>
Date: Mon, 12 Feb 2024 12:35:38 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, Yury Norov <yury.norov@gmail.com>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <c90e7c78-47e9-46d0-a4e5-cb4aca737d11@intel.com>
 <20240207070535.37223e13@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20240207070535.37223e13@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB8PR09CA0033.eurprd09.prod.outlook.com
 (2603:10a6:10:a0::46) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|LV3PR11MB8577:EE_
X-MS-Office365-Filtering-Correlation-Id: e79b7d0d-737a-4563-303e-08dc2bbee217
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: k/zyasEUUcrTO5S+qf6XYQqhewKtprthJPJaAaIei9eHfHr4VWsk5BZOWHOC89d4Ku7iY/FI4smPkWYTWDA6ycRcUXQnTBdMFn7kYMN7pGgcjbutRSe8BLPz6LhmWrZ3lm9ek700F1r50Y8fmQ3iC1l3QYcY2yq1/ZD/mmjFpbTpVabDjmwgAsacMcyA/ImjSuFAQ2vqWf55596vFUAUeCLwOam7ctqu+CD8RmnxAFiIViP27/mUxOHbQBYXbtFfLwX/CxI1s63fnjKR8CvUDgtzSVUh1mbH+tKfzGg23BPmTG72AMVt2SHqH5NHEREP9RMfRmg3ey8ZPflOvZICqVtL60ouvJg3ZQnFmF0cSXm9jYK3OWn7wAUgNdtX7IDkpo6P16cWbfs8MFJezdcAcfzK6inOpxFlwkkq5mB6Kvbnke731EA7P8j+IknI0cqLlLPSVZSCwixs8oxXgm3BwWhi31Gxnu+99OKSzgMe59ed9+EzD9L6F1i3Q3yiYaRlby1Ptl3BHGadBZCbaXUajBBvS15KYXhIMUHCStC2mKvw/VY0SwsOMmYH2lKl7HS2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(39860400002)(136003)(376002)(366004)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(31686004)(82960400001)(38100700002)(86362001)(31696002)(7416002)(2906002)(5660300002)(4744005)(6512007)(478600001)(26005)(6486002)(41300700001)(2616005)(6506007)(36756003)(4326008)(54906003)(110136005)(66476007)(66556008)(316002)(8676002)(66946007)(8936002)(6666004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?djF0Ly96QkNXaHVQdlVBUWJwSHZSRW5LSDlLY1RmZTV3S0V1N2JMY2Z3VVl0?=
 =?utf-8?B?T04rSnZqU1Z2UlNWa0h5dkdpMWF5OSs1U1djNXBFMVNXM3RUdTNDVnFpV0FE?=
 =?utf-8?B?SGVvd3lyYjh2SEU1UlA3OGxDcG51MnpuTW5yL3Z1MXMvRDRsdXVpdzRacWtj?=
 =?utf-8?B?V3NhV2dZaUg5MjZLNml2SE5HOGJSenF2cUJTa2pGdHNyUDdnYmVWUDFWMFRK?=
 =?utf-8?B?Nm9yT0doeUk3VUd2YXJ0YytmaDdyOG9RUUVpK0JWQjdDMlp2ZFhWY1hYYXFn?=
 =?utf-8?B?bVhtc3lsYjdYVng3YVhjOFFDY0krbFRuQnNGeHg5ZXI4dFVpa0w4QTFDNThy?=
 =?utf-8?B?Lzl1cjZEZ20ramFZV3MxUlZkWTFPUHViSitvNzBVSHQzaW42RTdpL3VYM3Iy?=
 =?utf-8?B?Q2tja3p5WXZTVGhPSjJGb3NpRTJkbVoxbFN2YjRicjlSZTNkUjU0emFJYmR4?=
 =?utf-8?B?bXdCSkdXUkljY1JuNEkwemlKU1BPTTBOZ2IvRnR1bDhmYjNIdnBTODVWaGdo?=
 =?utf-8?B?SEM2TzJsQ2psWVlCeG5NaU1DQkJkYmlwaFJrcXd0NFhaT0trbTByTmtsUEJa?=
 =?utf-8?B?SzhLMDUyY0hXNktzNnVQRXJEL2puN2orY3dHaUllWHArYXNmSzRVdFF0TmV3?=
 =?utf-8?B?UFdjMnh4RE9lSFluakUyaFNSWkdUMmVoNkc0bHFaa21SNDZGY0d0RVEzbTND?=
 =?utf-8?B?VURLcDVSaFE3c0xZeXI2eWdiekFqZU9RdVNjNW4zTHM4eUF6aFkwbXV6Zy9u?=
 =?utf-8?B?YXo3SE5mTVpjbW5vQ3ozUElhdmhLbTV0elQ3N044Tkh2S2dFSVkya1NHeEI1?=
 =?utf-8?B?QTFmU0VRRlY2RndmcTRZSEk0QzVrNFFmcEpzN0kra2N0ck5zVUUyNVhadkZx?=
 =?utf-8?B?eGhKTzlyZVVYRy9lWVhUSXJvK2lNRFpxOVJFclRyajdqMnM4K1lqSWpQbXBs?=
 =?utf-8?B?K0lxY1Nla2lPQjVoaVdqbHlhcXBPMTloWXM3dWZZc2gyZEx5VWNXa1VLRXo0?=
 =?utf-8?B?aTdxMjg0K0JPTTdXRGZGaHBaMUUyUHU5cTNKd09VRnpsUzB4RFhHSlp6T0pt?=
 =?utf-8?B?NHBZTzU3MDlGMG1VMXB1TVZtSnFuNzNDUnM5SGZIeDQvSno3L29iSnBXbi9q?=
 =?utf-8?B?aXlXeTl1cnBNODkzUG5SSmZNUUNKTjVPNzQwOXlxeXd0MWYxNjRSVXFtd0p3?=
 =?utf-8?B?ajV3TmVZWS8zeVdYRVVQbjZMNWVFbm1CK2JpbFRhcEdiNjFiamRtMFFXcnhp?=
 =?utf-8?B?cGdGYjZGQlR2UXg3RTNIZ24rbTRpeXRKbXkvZlZCN3RaRi8rdU9ReVVoMWdK?=
 =?utf-8?B?ck1xWXp2dXR6SW53NlJRQXN5RHNKYzBqa3oxU0hxekJ4MWNIcDh5QythNjhj?=
 =?utf-8?B?bnlhcWRwSEZyWC9ZMVBwdlJsOW4zY2hzdVgrUTF4WEU3eTFIY0ZicTk1M0tF?=
 =?utf-8?B?WkpybHc0bXp6UTBKWkxiUmY2aFhkZkQ5TVp2Q2NZWEJWTDFPcXVLWmg0bytM?=
 =?utf-8?B?d0cxUFF4bkNObGJmZE43YVFpNS9tK25IOHA4MnBobVhaVVQvZWJTYnFuUDc5?=
 =?utf-8?B?K1NEWEJiaFhCeXZqMCt4N2gvQkxLd3Mvelh2SkttTmw3eGNOaWgyaTArUFd2?=
 =?utf-8?B?UlJSTytpeWVOWGxINFZHWWRSSHBWWlcwbm8weUpTSFRSbnZ4NlcwNmI4M3hC?=
 =?utf-8?B?cU9vN3hsbHpkR1BzNG1HQWdZRW96TmpLTmZjQnR3N1JPWEFuY09wTkxMSVB6?=
 =?utf-8?B?RjlsOE1pMk5sbXVpL0U2ci91OU9ZNzUweThlQ29vM3o4OFNXdU9YMWF1cWlv?=
 =?utf-8?B?bTdEcHJLdTZZVURiZVEwaXJ5SGhmbEJnUExCZmRaMjJLWEdmQS91K0hmTjY5?=
 =?utf-8?B?Y0NxaUtsN1pwUmZ4Tnhmb3JXYUVyc1VkUzdxUnFoZ0lVb1k3U0w1akRKcThW?=
 =?utf-8?B?N0JkVElRMnZGU2dEMlhoa1pRS1JWUStXcjBFV08xYzF5NXFPMFRXMnlqRFBC?=
 =?utf-8?B?U3IyeVpVNWR3SGxwNzJ2MXNYY1pzU1BpUmtTajc0N2FtenBSNmc2SlJERjMx?=
 =?utf-8?B?MmM3NlFpZE5EWXRuZEl0Nm9ENU5YajVOOUNUU2h3SWE1UjNBU3RZZmRCUTdW?=
 =?utf-8?B?SVN3M29oaEJBdFF2RnBuTEJKbWFNYU9CTmphZkl4MFFCVzZYbGJiZkdrMUhi?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e79b7d0d-737a-4563-303e-08dc2bbee217
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2024 11:36:41.9075 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g4C5EGAgche6JnRfDKSy5T2YRR+YmR34RRzrdRbHJB++/f1rWtFE/WGSu2Gh5BU4DreBnqdsJPESPZp77B942B+FoOyO0lIndc313y3Y5ck=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8577
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707737807; x=1739273807;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3ccc0grCwYplG+M5q3JH37X/k2IgYtWIzIMLyVDe38Y=;
 b=OfnMwLSzr92RKiYcvC41/QrQUaNX+TgXxGnFhDqM9WDV9NvxQ2aGTxbA
 57bq0zSE0V1UW/nOdaPLyL9Y5GzbCebMniRpqsXD5IYPvCg5f1GQmOgog
 TJm1b+sd8e8DPQN/Xlerpou2+1kFu5lCR6319/pqCVcrgNnFCog2Qfd+c
 o6ASWicwOs4JSM9k4qHeWGwmApPxn8n8VFrZK6HFV8drRt60D0dxgVhzD
 c+4Tbl4FxIB2pQe/4H2Nm+QIvsFxv+8EUGTdXGGA4OQEtlJo1mn8WsPKo
 G1wDgB6/GyjaD7r+nz0WQU5C2PHH1IIFlEYuLHtE54p4lHrmouPnAosSx
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OfnMwLSz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 00/21] ice: add PFCP
 filter support
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
Cc: Andy Shevchenko <andy@kernel.org>, linux-s390@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Ido
 Schimmel <idosch@nvidia.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 dm-devel@redhat.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Alexander Potapenko <glider@google.com>, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Jiri Pirko <jiri@resnulli.us>,
 ntfs3@lists.linux.dev, netdev@vger.kernel.org, linux-btrfs@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>
Date: Wed, 7 Feb 2024 07:05:35 -0800

> On Tue, 6 Feb 2024 13:46:44 +0100 Alexander Lobakin wrote:
>>> Add support for creating PFCP filters in switchdev mode. Add pfcp module
>>> that allows to create a PFCP-type netdev. The netdev then can be passed to
>>> tc when creating a filter to indicate that PFCP filter should be created.  
>>
>> I believe folks agreed that bitmap_{read,write}() should stay inline,
>> ping then?
> 
> Well, Dave dropped this from PW, again. Can you ping people to give you

Why was it dropped? :D

> the acks and repost? What's your plan?

Ufff, I thought people read their emails...

Yury, Konstantin, s390 folks? Could you please give some missing acks? I
don't want to ping everyone privately :z

Thanks,
Olek
