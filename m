Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3B3991CD7
	for <lists+intel-wired-lan@lfdr.de>; Sun,  6 Oct 2024 08:58:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACF8E403DE;
	Sun,  6 Oct 2024 06:58:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PUVQDRpkxriO; Sun,  6 Oct 2024 06:58:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 442D4403D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728197924;
	bh=XhR8EZ9jWoLqHBtf93ERtxiniu602aSkNLY8qDTtso0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z9J0rrv0os8chnePiD7J7yI/lP4K4CsVqcYoRGNq4EPLYBbVZYO6v8ceT0bX57NRY
	 WZQY1e9gQCV/2lBdfxCJ0k1lY3NozNINP8qG6KZqGCuDvycoV7ivHafEY+piawe9FB
	 8WfgSvN1xRaUdlhtSq1U03ght9olHi+337prYX0XvZ6UdqjYGkjChwKYGAZao9ge2g
	 PPi3PAwdGcQpkwZ2xBKqC+baI1ZupCRbsCA6wcViXE6Gr89/YRm6S9nNUIPMknscnz
	 osjnVUHpUu09kr6UzSYEI2SIjg8J0jAyq5JFprR1/H8dhgILbWLKeIaudjtRvaCZF0
	 sfThXExKUDdGg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 442D4403D8;
	Sun,  6 Oct 2024 06:58:44 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D5A811BF584
 for <intel-wired-lan@osuosl.org>; Sun,  6 Oct 2024 06:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D01CA40392
 for <intel-wired-lan@osuosl.org>; Sun,  6 Oct 2024 06:58:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vT8UVZgREHz1 for <intel-wired-lan@osuosl.org>;
 Sun,  6 Oct 2024 06:58:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7D7BF40391
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D7BF40391
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7D7BF40391
 for <intel-wired-lan@osuosl.org>; Sun,  6 Oct 2024 06:58:41 +0000 (UTC)
X-CSE-ConnectionGUID: rVFbN/cCThaoBYAo5pvEeg==
X-CSE-MsgGUID: pSK7M0fkTSCFlRRVgBTu7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11216"; a="31252985"
X-IronPort-AV: E=Sophos;i="6.11,182,1725346800"; d="scan'208";a="31252985"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2024 23:58:41 -0700
X-CSE-ConnectionGUID: PBAIoz0dSAWf7hcVHZlaYw==
X-CSE-MsgGUID: srz8RaeHR3CRPvHvzsqKzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,182,1725346800"; d="scan'208";a="105890517"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2024 23:58:40 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 5 Oct 2024 23:58:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 5 Oct 2024 23:58:39 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 5 Oct 2024 23:58:39 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 5 Oct 2024 23:58:39 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 5 Oct 2024 23:58:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pRX23pOshLzKsQh3q8bpnSsULWkgty2o6KhqtFRq/aG7vgtIqpn3iaJ/mzno7jDze0sXE0UcXkPuJUieY3kyRhcEi+tlstMxw9wKaDfS/KKuKAw7IbFOptFPJLFicBA6PdKu0mcPEpuko4AxH/Ncc6GFUOBJbkLu3ysaK2B1KIn+syrCqI7ZzwDB/HrOGOgrSLmvuMa5NbE3HZJGKjKLLfnSk06RYTiDPwcclFEcBpRdXOC9RPdr/tyaBLKE4sZi9xGLfLhKkMkKiY7ItaoqVXVG+C7sUWwv1ZcVdGIpBl7nYN+QmoehNhqeawKIVGpPSArXNuA1xPZ6wdp/8E49wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XhR8EZ9jWoLqHBtf93ERtxiniu602aSkNLY8qDTtso0=;
 b=FvCVN25sP6GgRqxczXXJwrtyv5swPC/ksPNK8F9ePtEG1gqaahD9qTtZDhdi/Wni9YTwuKDZoc4xd3xGv55Od9xVm9OgktprGzRerbKuyhX7QoMbdAezF4EFsJ9dN8pnsZSyvCnEAPbrSB5ebjm35YUVVPHbhbH7dYK5iP9u1EvtKyA8hj46KVDb+cqr1qeBT2Drz5sGDDMxRJgGSeURcouVNGaNmaI0dGz86Ggz7JV0FiOXG105nyNF9QXhbOlI/5YQi8wgwo+LrlWts0HwDNEV/mVHOebYqJdspAdnCjSK/3Bz92aEcVLqciZxPeyrWcWWVYv0IjAfeZMI6a94lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by SJ2PR11MB8372.namprd11.prod.outlook.com (2603:10b6:a03:539::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Sun, 6 Oct
 2024 06:58:37 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%5]) with mapi id 15.20.8026.019; Sun, 6 Oct 2024
 06:58:35 +0000
Message-ID: <7d2d0c09-55e0-4c2f-9776-aec68c13e2d5@intel.com>
Date: Sun, 6 Oct 2024 09:58:35 +0300
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20241002165957.36513-2-demonihin@gmail.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20241002165957.36513-2-demonihin@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0007.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::9)
 To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|SJ2PR11MB8372:EE_
X-MS-Office365-Filtering-Correlation-Id: 14395f19-a4f3-4183-271f-08dce5d44c25
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cndZU1p3ck4zSlR6dWNZbWEvY1NCY3pvQjdValZJU01BaVZEWWlxTnhYRVAy?=
 =?utf-8?B?NEllSmdVME9rRTVjU2ZxN1ZvOVZSc0pDWFliSUtna1p5b2RWd29GRFQ3WmFk?=
 =?utf-8?B?Z3Z2VmljdXAvcVlJbUxQWVZ5WFVxWWVpY0ZmZDdnRm5yejdBQk5HZ0JKNC8r?=
 =?utf-8?B?cHZRTnZKLzJTT1Q3aUJHMVFJYTNSUWtOT3I0OGFTbTBycmRvSVMxaHJjUHlv?=
 =?utf-8?B?eSswOHZoVS8yMU01b2JNd3psNmNuakVzWU5CTTZBeEpFR3B2Um9SVGxYdjVV?=
 =?utf-8?B?WFB4T0t0MVhtVXNySkd4UDd1UUVsSVFTeDNtQ0YrdXVJNXNFVWZRRmJHRytN?=
 =?utf-8?B?S2FCUlc0MEYyamFselByK2xwLzlPMDJkdVc2T3BrUlQ3K2lBVHRFT25UYVI1?=
 =?utf-8?B?Rk9nemhHV2pLWVhDSHkwMWJTNm1LR1BpL2c4cEEvNnFORXBLUFBFQUhSNFJW?=
 =?utf-8?B?VG14SVM3RWN4cFphTmViZ2NLNVVRUWJsWmhpMTJld1dLR0N2UXZsM0VyeGll?=
 =?utf-8?B?eEJjOWRPNHFKRHZ1N0oxSWJ4WUY2NE5CemtNUzMzdWVwcW1ZWEVyL3hOK0Zv?=
 =?utf-8?B?TWpqN3NEYnVtMTEyUVFrS0cvQnRJQm5ubTBDUzlpQm5jQTFZYmViQW5WWjRy?=
 =?utf-8?B?Wm1xWVI3SjduSlAvNFFud0FyZVFLZnRMUDJWZ1JUK1J6MmdiMGRlNHoxOVJk?=
 =?utf-8?B?WGkwMkoxd3ZNczVHWkMveU5weHMzdjYyR1BYRm5uVTFTM1J6TEZ4ZU9YWjRQ?=
 =?utf-8?B?bnlnamZqaUNJM2U1OUZQQ3JPem1Ybnp5ejE5ZSsxV2IyaDBaZXpmSWNzVXdo?=
 =?utf-8?B?N2JCbG9nS3JBWjBPaUlEVDBrK29qR0EwbkxUaTZ2ZFJ2WmNHN2hReXJCL0tx?=
 =?utf-8?B?Ykk4MXV1a1RSWVJ0dUttdHpjYXpiNXFGM1dWZjVic0J4YlBRU2U0bSsrVjVP?=
 =?utf-8?B?cDBzVnYzLzkvNlZYa0I0WTBpQlJ5THQ0emc2YUkzYkdhQ1FNWVlHMVNTdC9z?=
 =?utf-8?B?T1lyRGl3WVVVRnpWMFM3VkJrWWNSUGNmQjE0bVpod0VnYUtqdFVpSGtMcTlJ?=
 =?utf-8?B?cUp3aTBWeDdDajZPbXVuZnM3NU1NYmYxK0t2UHB6WUUycGRqRkRDT2dPWnd0?=
 =?utf-8?B?YmozSll6TXRuUFBlSUk2V1FGYnJKWTNWSTRPVFFoN1U4bHVJS1pLb2lueVBl?=
 =?utf-8?B?QUdkajROdUl3UEE5VlIzSTJ0OWxUNkFDQ0Q3dzRIcmZzeHIweUxIZFcxcStU?=
 =?utf-8?B?aEJOazVwellGSmxtNmY0TVIzWVUzUWptOW1pRm9RWXZwTHVHY1ZnbUl0S3pt?=
 =?utf-8?B?VFJWSW1GbWNpSHBoM0FjMVlhcENyUjFhMlo3QWFqN2EvcG5GY3JxQ085UXBS?=
 =?utf-8?B?bVVySlZUVC96VUVnNTlMYXppUWRiZ0JkZFhXTzEvRWI1YUVRV0R2RjFsT2pJ?=
 =?utf-8?B?QjhrSWVzVVNET2F4L2hwV0tlaE1aTUhMbms3R0J2aktkVXB5TXY5bXJUR2VK?=
 =?utf-8?B?a25yOCtFbXJqWURGbUNnUFNzMzVxNjFLSWFObXFQNlh5RDFKQk8rRE9zSldJ?=
 =?utf-8?B?czVwL3BaV3YvRnZlcUdDOHhXdU9rMEVSbXFSQ2o4RUhsamc4dVdiSC9CV2Fy?=
 =?utf-8?B?bnVWRWJMR0ttbDhlekdFTmNVN1FmTi8zRVBTTTlNV1JkU3FWUWFNbHdUZm9Y?=
 =?utf-8?B?clBoN1p0K3M4WE5wOHMxYkN5SFNPbllJc0h1YStCcisvTVg0bEVDYkJBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TUNDTU12eFZNTERDbUpoRG05MS9URHFmM0Z2emhwRXZBQzlMdmQwNXI2Kzd2?=
 =?utf-8?B?TkhrQ056bE14R01PNzZaNitSK3lsTzZmUkZhU3JhZjJodzMwRTlVZGVOWXJM?=
 =?utf-8?B?MzlFSE44dVlWQldIRm1kUFlHbFQ3UUFkOE1PK3FwcVQ3QzNwaEZNVHRuTjVh?=
 =?utf-8?B?bUFOVTE4MWJHaXczdUtmenVHdTlXMXdlbUhhbFl4bFFmQXJmSHNXRHAwV2hP?=
 =?utf-8?B?ZUtBM0EwNWdWdWw2YzUrdXc0cWlqaHRONC9JanhzVVIyUnhkUXdBcy9hdjFs?=
 =?utf-8?B?V0RMVERZT0h6NkdxcEhnMkxhR01kbDV2UWd2dWhZRnNzUnd4NGdreWlGMUk2?=
 =?utf-8?B?dTVTZ1JodmlDWlV2TXdYblVrS2dFa1dlL2F5NG9zZU5KaXB6THhmUXVnK3Zp?=
 =?utf-8?B?WU9jQndibGNGNlRuSmV2OHFkYzJNaWtMSld6ejZTbnZJLzEva05qUy9PamFV?=
 =?utf-8?B?SjBqYytFMU5OSTVCS0YwZTc1NHE1Z2pDWVV4dkdLaUZKOWZYSURRRnFQY3Av?=
 =?utf-8?B?cDUwNGlaTHJrbjhFdno2djZMRG1ORVkwYUpRdG9hZlJoaXBPait1MGVNNU5D?=
 =?utf-8?B?SUtST1ZYODZCZ1FlcDAyM3FkOFN4Ym04dGVIcXdzcUNVNGJ1alhudWJ6TnFP?=
 =?utf-8?B?N2pTZGJPVzlIV3QzRVNSMzQyZlhWK056MnNIVDd0UjNXVko5QlY1N2RZbSs2?=
 =?utf-8?B?N01obGlYUWU4My9lakVNbkNmNGdUU2VLcjUrUFREaWNYczU5VVZmQUMwTVhV?=
 =?utf-8?B?RFRKNndZYkRORGQvRXlLcVpVdjFXcHIwenc2SHFYYklISlJSVU5Ib3ZBSlVI?=
 =?utf-8?B?VGVaUXlYZnZKcEU2UEFCc01PclRuZ21qNGNwYzd4MnRUL0NRbjU3cHFjNUFk?=
 =?utf-8?B?c1RFWm9WWEpXWDJqZmZUd0tmdU5YM0g4WXJYUHhKeitBdlZ0VFUwNTZrZUhh?=
 =?utf-8?B?cXZjUjdWRVUycVY5TG9rY3NtcFIwN3dQWUIyd0JJTTRNdXMzRXo5cEtPY0lK?=
 =?utf-8?B?eENQQkpGTnVCamVpRVEveDk2dDhRZlBMYmNxMGVpWmtKaXgvWWg0U2ZtN2d3?=
 =?utf-8?B?a2tneGRqcXJJLyt0Q2xtR0g1SGhUdklJWTMvdlpTVmxZV1ozMEt3SkQwRjAy?=
 =?utf-8?B?VExtZzI0NEV2OFBTMldsSFozK05yRlJES0JCd1pWUDV4YW1GajQ3aFNCRE5V?=
 =?utf-8?B?R3ZMQVZFenRKQ2NqdDdwNVhBK2YwR0Y1dXZBeVNKM1VtV2tKT0pseDEyMUE1?=
 =?utf-8?B?NEpOUU02NWpsOStEekI5UHR2TURwRGwva3lqcXc2TWN5M2dtSURUd0hpbFpZ?=
 =?utf-8?B?am1mRmQ1bVUxbWN3c09zUkxXVFBRNGhjVWxETi9LN1VXaUtIV1R0WC9YaHpO?=
 =?utf-8?B?Nm96aTF5cEJzci81R1J2NThtSUQ5b2RZMURqS0tPbjhGeEtHQTQ5azNReE9u?=
 =?utf-8?B?ZldrYjRGcTlFaDhnMHRCMGl3aE8yYmtialdHbXkwd1p4Z3lPT2JEd01iai9T?=
 =?utf-8?B?SlcrMmY1SUN6Z01SVHhPcUhYalhsTlBBNHdSOW1jcyttOTVreGRsNVFYWk12?=
 =?utf-8?B?ZzY1ZnRyUk9YYlNSQmlCS1Q4ZldGMTNvc3Zydjl3L0FEU1RycXhWQW81ajdw?=
 =?utf-8?B?eUwvV2pjZWl1UFRHZnR5aGtGd2J0VEhwbzVYa2NCVlZ6Rk1oWjEwSC9laDIx?=
 =?utf-8?B?VFliVUF6RTFZZmo4TmNLanFMU01hbWNnczZ2NXB0YSt1WSsxcm9jOXRBejhv?=
 =?utf-8?B?UDFpWXFTUytLSlJabUZDOWgwdlc3elh1bGJaOHY3MS91ckZkU0xLM2UrRE5y?=
 =?utf-8?B?eWNFVnQ5TXUxY0g3b0pZaG5WSzVUa244dE8zcW1xbFQzd0pSVmp6Zi8xclpP?=
 =?utf-8?B?c3VUWjFkdTREbWFrbXloUVEvOS84OVVoaHI0Y29RV3NpcFpIc3pCOTd1U2h1?=
 =?utf-8?B?RTJ5MEU4UW01UVZCaGo0dm1laU1iTUNFN2ZkRitDaVFEWDlDdVdvakFUK3F4?=
 =?utf-8?B?SUp2RmhTL2hPL2FiaEo2Ry9CT1hCN2xqN3FZVzM5SU1kb3NqeVFrb2JhTURG?=
 =?utf-8?B?ZUxUdXAxc1VUTWhJQllhL0hFRkQ0MjBmNUJOZkdOUmM0V3E3Y1dXYWd6bTdV?=
 =?utf-8?B?MkFTc3lEWldwYXJUVkRvNDNXUmxac3NnYlVpMW1EYStTQW9hRGs0R0NqU2ky?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14395f19-a4f3-4183-271f-08dce5d44c25
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2024 06:58:35.5793 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ThleB59cKlqZZH3uxuBk0bY6l3mfJDsN9WoNo4h5qDVtp0iE5dhW4kyQs6b18Jj00NFFGnOVUxaryOSe2t0WX6EMLiDqwXfMTdi3mZPw4qo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8372
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728197922; x=1759733922;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IowJNeCBmlqOd/vCNgAYsIf8ANNqf+CtM8CmfQg2rRs=;
 b=kECrn/drOohI/2X2RLR6vJ6EG/tnNZUgRVLZ97DgziwjmkkyPv6Lwu1S
 RXJvksT26MJ8LBxRNuzmSL6coHdJhV/2C87nmktDC24gUVzeQkwwyqOwh
 0x3XhMugnosWDAATkzoG1gsydZ+ms3hfiBm8jEbQd0Wn8vxIg9jI3DSk2
 8pW9IhEcZBDkKQGAEQDBWsZ7NOxUgESAe6BH7Q2kJCXWQkAIh2zkTGuNz
 sc2N+av37Gx2gTnFQA26BS3qLTAC7hbVKQVDFOq6u/R4/QoSHofYnR0/Q
 3DVfyosjnIKcW7JuF58TmfTZfi006ntKgOhAWCq6zvrBlQILWO72FoHr/
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kECrn/dr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] e1000e: makes
 e1000_watchdog_task use queue_delayed_work
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



On 10/2/2024 7:59 PM, Dmitrii Ermakov wrote:
> Replaces watchdog timer with delayed_work as advised
> in the driver's TODO comment.
> 
> Signed-off-by: Dmitrii Ermakov <demonihin@gmail.com>
> ---
> V1 -> V2: Removed redundant line wraps, renamed e1000_watchdog to e1000_watchdog_work
> 
>   drivers/net/ethernet/intel/e1000e/e1000.h  |  4 +--
>   drivers/net/ethernet/intel/e1000e/netdev.c | 42 ++++++++--------------
>   2 files changed, 16 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
> index ba9c19e6994c..5a60372d2158 100644
> --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> @@ -189,12 +189,12 @@ struct e1000_phy_regs {
>   
>   /* board specific private data structure */
>   struct e1000_adapter {
> -	struct timer_list watchdog_timer;
>   	struct timer_list phy_info_timer;
>   	struct timer_list blink_timer;
>   
> +	struct delayed_work watchdog_work;
> +
>   	struct work_struct reset_task;
> -	struct work_struct watchdog_task;
>   
>   	const struct e1000_info *ei;
>   
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index f103249b12fa..495693bca2b1 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -1778,7 +1778,7 @@ static irqreturn_t e1000_intr_msi(int __always_unused irq, void *data)
>   		}
>   		/* guard against interrupt when we're going down */
>   		if (!test_bit(__E1000_DOWN, &adapter->state))
> -			mod_timer(&adapter->watchdog_timer, jiffies + 1);
> +			queue_delayed_work(system_wq, &adapter->watchdog_work, 1);
>   	}
>   
>   	/* Reset on uncorrectable ECC error */
> @@ -1857,7 +1857,7 @@ static irqreturn_t e1000_intr(int __always_unused irq, void *data)
>   		}
>   		/* guard against interrupt when we're going down */
>   		if (!test_bit(__E1000_DOWN, &adapter->state))
> -			mod_timer(&adapter->watchdog_timer, jiffies + 1);
> +			queue_delayed_work(system_wq, &adapter->watchdog_work, 1);
>   	}
>   
>   	/* Reset on uncorrectable ECC error */
> @@ -1901,7 +1901,7 @@ static irqreturn_t e1000_msix_other(int __always_unused irq, void *data)
>   		hw->mac.get_link_status = true;
>   		/* guard against interrupt when we're going down */
>   		if (!test_bit(__E1000_DOWN, &adapter->state))
> -			mod_timer(&adapter->watchdog_timer, jiffies + 1);
> +			queue_delayed_work(system_wq, &adapter->watchdog_work, 1);
>   	}
>   
>   	if (!test_bit(__E1000_DOWN, &adapter->state))
> @@ -4293,7 +4293,8 @@ void e1000e_down(struct e1000_adapter *adapter, bool reset)
>   
>   	napi_synchronize(&adapter->napi);
>   
> -	del_timer_sync(&adapter->watchdog_timer);
> +	cancel_delayed_work_sync(&adapter->watchdog_work);
> +
>   	del_timer_sync(&adapter->phy_info_timer);
>   
>   	spin_lock(&adapter->stats64_lock);
> @@ -5164,25 +5165,12 @@ static void e1000e_check_82574_phy_workaround(struct e1000_adapter *adapter)
>   	}
>   }
>   
> -/**
> - * e1000_watchdog - Timer Call-back
> - * @t: pointer to timer_list containing private info adapter
> - **/
> -static void e1000_watchdog(struct timer_list *t)
> +static void e1000_watchdog_work(struct work_struct *work)
>   {
> -	struct e1000_adapter *adapter = from_timer(adapter, t, watchdog_timer);
> -
> -	/* Do the rest outside of interrupt context */
> -	schedule_work(&adapter->watchdog_task);
> -
> -	/* TODO: make this use queue_delayed_work() */
> -}
> -
> -static void e1000_watchdog_task(struct work_struct *work)
> -{
> -	struct e1000_adapter *adapter = container_of(work,
> -						     struct e1000_adapter,
> -						     watchdog_task);
> +	struct delayed_work *dwork =
> +		container_of(work, struct delayed_work, work);
> +	struct e1000_adapter *adapter =
> +		container_of(dwork, struct e1000_adapter, watchdog_work);
>   	struct net_device *netdev = adapter->netdev;
>   	struct e1000_mac_info *mac = &adapter->hw.mac;
>   	struct e1000_phy_info *phy = &adapter->hw.phy;
> @@ -5411,8 +5399,8 @@ static void e1000_watchdog_task(struct work_struct *work)
>   
>   	/* Reset the timer */
>   	if (!test_bit(__E1000_DOWN, &adapter->state))
> -		mod_timer(&adapter->watchdog_timer,
> -			  round_jiffies(jiffies + 2 * HZ));
> +		queue_delayed_work(system_wq, &adapter->watchdog_work,
> +				   round_jiffies(2 * HZ));
>   }
>   
>   #define E1000_TX_FLAGS_CSUM		0x00000001
> @@ -7591,11 +7579,10 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   		goto err_eeprom;
>   	}
>   
> -	timer_setup(&adapter->watchdog_timer, e1000_watchdog, 0);
>   	timer_setup(&adapter->phy_info_timer, e1000_update_phy_info, 0);
> +	INIT_DELAYED_WORK(&adapter->watchdog_work, e1000_watchdog_work);
>   
>   	INIT_WORK(&adapter->reset_task, e1000_reset_task);
> -	INIT_WORK(&adapter->watchdog_task, e1000_watchdog_task);
>   	INIT_WORK(&adapter->downshift_task, e1000e_downshift_workaround);
>   	INIT_WORK(&adapter->update_phy_task, e1000e_update_phy_task);
>   	INIT_WORK(&adapter->print_hang_task, e1000_print_hw_hang);
> @@ -7736,11 +7723,10 @@ static void e1000_remove(struct pci_dev *pdev)
>   	 * from being rescheduled.
>   	 */
>   	set_bit(__E1000_DOWN, &adapter->state);
> -	del_timer_sync(&adapter->watchdog_timer);
> +	cancel_delayed_work_sync(&adapter->watchdog_work);
>   	del_timer_sync(&adapter->phy_info_timer);
>   
>   	cancel_work_sync(&adapter->reset_task);
> -	cancel_work_sync(&adapter->watchdog_task);
>   	cancel_work_sync(&adapter->downshift_task);
>   	cancel_work_sync(&adapter->update_phy_task);
>   	cancel_work_sync(&adapter->print_hang_task);

Hi Dmitrii,

I have found that in the past someone has already tried to change 
delayed work instead of watchdog task (59653e6497d1: e1000e: Make 
watchdog use delayed work). This was resulted in driver crashes and 
connections to reset unexpectedly (d5ad7a6a7f3c8: e1000e: Revert 
"e1000e: Make watchdog use delayed work").

Because of that, and unless there is a clear benefit to using 
delayed_work, I recommend to reject this patch, as the risk of 
regression is high.
