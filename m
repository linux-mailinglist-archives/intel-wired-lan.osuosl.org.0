Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C06D5B2D8B1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Aug 2025 11:41:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80C6F6117B;
	Wed, 20 Aug 2025 09:41:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w68-LK1tRkzO; Wed, 20 Aug 2025 09:41:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D393E61179
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755682915;
	bh=v41ZYg9TfiMD+Zl2xOKNM5ZxVgP4258LycqdT8MEipI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8IFn8PlXcknB8IsxgZWnwVJ1Q2nxhuZS1dLW3PYH1bklo9DP4FuDj28Do1ODxOvn1
	 RurKr829pqCWhxYn1JPkMDXEYuspBawWW91sapVLGcEsywb5esR3bFbmEE1ZvGnElH
	 qp90pfqi9mphxjiGGfsddGejnCTEcx8o929mCTtyPS160w00F7A1qlxONANyXAY8Oh
	 GOH1R/C0rd8hAdHnB/6lUmAtBMrBPHmZy+lH+iYioFjz8NOXGyvwIsdiBxOAiaM/OD
	 zkwh9qw/svhWUZN+MNoVV4TbJdB3GDv7BBODlKRLuCIxHIVe8mhqDMEpcNw2gsUBE8
	 NBlTqEkITiXWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D393E61179;
	Wed, 20 Aug 2025 09:41:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BD9AC7AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 09:41:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF6B282668
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 09:41:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j0S4oUHEkcpi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 09:41:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0E5928264C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E5928264C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E5928264C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 09:41:53 +0000 (UTC)
X-CSE-ConnectionGUID: 93gOxzmtRhyFFTPRVW+H5g==
X-CSE-MsgGUID: LPO6gkljRj2RSxWHm6nS4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="68214616"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="68214616"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 02:41:53 -0700
X-CSE-ConnectionGUID: NaTAHaTbS0GCmY6A7EjJsA==
X-CSE-MsgGUID: yLDBd+9bSjCzCs01JTPJeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="168887989"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 02:41:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 02:41:51 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 20 Aug 2025 02:41:50 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.41) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 02:41:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aI4q3crIyGJ/gvhIRB6mIbeVlO1+iowjj8OfX8jMSCv8xc3dL7iZ07KmTnxc5GQLF9JNMcw/mAt/vOpBU1Nn6IJ0tHcuY7iRa16t7CQIFSeAkC1lSqlImG+2WZmM5Z2fyzo7CxF71H/zn+F+9TJKmSNAJaJVqlRw1r6nP3l/Qde4jA4s5GS0wcfVx0AbbtlRvCc/QrC4m6ZrMXXMrmxkWS6DHfKPmGQmgL+rxE09Vt0YjwsHQ4N+A8o2ni9ENS96ng7GmQ4attSPsc9LnKdHyY6YQa5eV0/dKBU4THmvHHsCx96k2AvB3jT9ByXL+im6tvtCl/939xpfUEeFS4TnEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v41ZYg9TfiMD+Zl2xOKNM5ZxVgP4258LycqdT8MEipI=;
 b=muDeXl3jdnLzrAfI5Vz84CPiboz43397cXZI7y2PTIxScPKWoAVwNsgM7GRUlqULxjjibML31eoTMneQVIx5s7lh+ivgBDrtSmxoD2bL+LnQdEKenK/pSBZGxPgbfSyOkU5NWco9+FboyMIhvpoapdd+yRln0mHWwIW/UzsENTydMWTHWlmfDQJlBhKI9dsph/ZhVZX6os2eM0sduaR+TmwZLdWT+ez1xm4hI2hHmmCdsMHrvkL5apo/4XtgVF2VGB2REdHMTuTWoek3cpfs+w8bIuZ1XO/FoalY57d9RtQGHZjaLC4pBNtnxWAIF5wU7ChgHv7f8+wCTLx7QfYZoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CY5PR11MB6318.namprd11.prod.outlook.com (2603:10b6:930:3e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.25; Wed, 20 Aug
 2025 09:41:48 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9031.023; Wed, 20 Aug 2025
 09:41:48 +0000
Message-ID: <089ba88e-e19d-40eb-844d-541d39e648e8@intel.com>
Date: Wed, 20 Aug 2025 11:41:42 +0200
User-Agent: Mozilla Thunderbird
To: Michal Schmidt <mschmidt@redhat.com>, Calvin Owens <calvin@wbinvd.org>
CC: <netdev@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "Andrew Lunn" <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, "Eric Dumazet" <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jedrzej Jagielski
 <jedrzej.jagielski@intel.com>, "Ivan Vecera" <ivecera@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>
References: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
 <CADEbmW100menFu3KACm4p72yPSjbnQwnYumDCGRw+GxpgXeMJA@mail.gmail.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <CADEbmW100menFu3KACm4p72yPSjbnQwnYumDCGRw+GxpgXeMJA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DUZPR01CA0195.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b6::26) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CY5PR11MB6318:EE_
X-MS-Office365-Filtering-Correlation-Id: a8d55a2f-dd02-45fc-7b6e-08dddfcdc845
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V1ZEMHUreFBqQWpsblpIcnVLamlKOE12ZTFWMDBjbHRWNUVGd3laWnM3TkZx?=
 =?utf-8?B?d2NYWGU4ZDBIditDQVc0OVZzNnU4bHFTOFNMelpIbVdqQW5vNmkrTFAxVEsw?=
 =?utf-8?B?WDhZa0trdlF5WnFkTkZhRHdjengyakZJbzVKa3JXVGFNaFlSVjBvaWtPN2JE?=
 =?utf-8?B?MWlpcFM0WUZqV2tLVUtrTU5wd3dzNklmYWIrQzBRRXJSZFQ4Z1BwdDFEbDRY?=
 =?utf-8?B?L3pqdCtxV3hlSGRJQnoydVVZcTc0NDlMUTJuUnNYUUduNG94QzBVTGptTnhF?=
 =?utf-8?B?KzdEZll6WkxYSlNXMDNFbDVNN2JJMWgwMXZCdWFoVnY0b3o0SnhVTmdsZ3Bl?=
 =?utf-8?B?UUwzYk9pcGxnT0NkKzUxS2NMdVE1UnpwQkpGY0xzSlUrMTJIb1ZpMEwyLzJk?=
 =?utf-8?B?eFMvY25pU0dLcWNCZTB5TXErTTRTNkg0WEZJTlk0WlRpNFFjbTZjRmkvSDl5?=
 =?utf-8?B?TDNuQ2NHb0QrMlhHbzJoYnBDaEtNZm5MUitDV0pqOWxRaENickxGc2FsbFdC?=
 =?utf-8?B?ZzFGNS8rcHorN1FTVVVrbjJwdG1NYTM4Z0RjemFIVkJpRzRpMUQvVFNkSUJN?=
 =?utf-8?B?bTJpS3dzazBMVVdGeFpwS3Y4emlsYTVsdHdXazltYTRjcFg0bWJOTVZVS1Ay?=
 =?utf-8?B?b0R0NW10MGsxb0hQcTBHL3lvVUY0N0I4WndLK252aklnYVlqN2lIUEg1dVV4?=
 =?utf-8?B?c1NiNnRnVWEvRUhBNncvMml1M0tPR3JwOWQxVk5sQTVlcU0wKzFVNExxYTl2?=
 =?utf-8?B?VW9Db0h3SGVvVUZ6am5rVmZ1c1BPNlIwcHlUeDR2WEZaeVBxU205VDdka3RZ?=
 =?utf-8?B?c1RlU1A3U2tlNVRzaFRsdnBsVFdYUGRDK2JxV25Idk4yVC9Ud3pkSElORWZ0?=
 =?utf-8?B?YWsrK1lJWlpIRkt4VjZ4d0kyTUVhckFNT0Z4aVB4UEQ5emhmQ090SWs0cUVz?=
 =?utf-8?B?S1NUWDdNRFFKZGlqejdqekF5OFF5Tk9FMkR4MVAyZUE5MjVCend2UnE0RVh0?=
 =?utf-8?B?UlZqNjhCa3JJQ0dsMEZFemRCMnJSMU9kZnNjWnBBQUZLcTZvYmJNQVZDMTdl?=
 =?utf-8?B?UkYwN0JJOS9LVlJjMGl2WGFMNFNQWlZ4TkE4Z0xIcjdxTWFvS0s3c0o2N0VW?=
 =?utf-8?B?R0pEZG1rVmRNVTZ6Q1lZeTBXejJROCttWUJxQzFIZGp6YllzV0kvTmtqL1JF?=
 =?utf-8?B?TEYyZWNabi90YXZUMHoyWkd2bWVBVW1SQUttSC9CcGtvcmpiQlRnWno2Slkx?=
 =?utf-8?B?Q0pDWjAvSFNZNWZoWEZ1c3R0NmhHUy9zMnc1YnIyU0VNMjlvN3o1VjQxTm1F?=
 =?utf-8?B?a0F2QVZVQlhpT3FFUTR5bm9TOXpnU0g3YVcrWk5rck16QnZmVVdLLzBUNzVR?=
 =?utf-8?B?cWlDUWR0NHlDanFFQlNQMUduSlNRNWFOT3VZb0RsWEhZbTQwTS8vTmtPYXUv?=
 =?utf-8?B?WjZucmQ5SjVpN1NrNHp4bjk4dy9TeEJpTnVWR0VVMGl4WVZxZDYxSElQM2dK?=
 =?utf-8?B?cjVWWTRNcGRHS1J2cllTWmRhNlkyMndESTAvRTY0aG1WNUV0OC9oa2d4YlNN?=
 =?utf-8?B?aHM5QUdoZWtTNU1YSDdLVENDajJZbERpeFBIMGF5RStCODJmakoxVUR1dGh3?=
 =?utf-8?B?eGIrdktUSWl0YnlqZExoMlJyLzNjOEVia0hLbllSUG9KVWYwdnFzMUozcEJW?=
 =?utf-8?B?dU5QVm1FcVMyQnpNYkpCdmFnRGovQk9vZTB1N3pQUTVpN2ZFRkVxemdiSDdB?=
 =?utf-8?B?V05xcmhCaCtjOThzWHF1R01lWHRqSVEzcFpVREhNNmIvMnVKNFUzcXRWUk83?=
 =?utf-8?B?TENDSTlDUVNuY04xWDNFK2g0bW8yWkRMRWNTcHFobEJSOGdCNXZGM1pYcFVU?=
 =?utf-8?B?UFM2U2VtYVlhaWxaaU9ZZklhOW92d2xwTjhKdFJpNWdqWm43QWxVTm1VK2J1?=
 =?utf-8?Q?VkOA5YNnkIg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b1JTOEFlczREc3hiKzVHemRISnoxZ1M1TWRDUC9ZaXBoMzFLbmVjMlVBOVlU?=
 =?utf-8?B?b1V5T3lXWklkUHJBNU1UWjlXMm1zczFla2x6SDVBSi9SWkY2dXVlR3EzNFNw?=
 =?utf-8?B?SCsxeU1Md3VmK3FHbE4zVU5DMzZBT0pSRjVyWXZVTmRtVFNkT1RJRDVTOWVT?=
 =?utf-8?B?L3NKdHVMVTdpbmVJZCtGZER4T09WbVJPYzBvL0swU1E2YUFFaWxjZ25ONnJI?=
 =?utf-8?B?aHhLUXhESUZjZlNMK2tpd25mSm40Sk9UVjluL2xSU0xkOVNHWEVxUTI2QmYr?=
 =?utf-8?B?M29heEpydlFIOFFrNHN2eFFYL1N6RlA5VHpSK2twRWF0ZjduUFFUNm5lRVli?=
 =?utf-8?B?MUNlUDRQL2RTekNlT2h5dlVNcjJXOXFrV05KcFR3RzZONjhUYUlKTE1uai9Q?=
 =?utf-8?B?ZDNOcGJkM01JVzVySG9mcVJKbUlkV3pjcGFXa3RjSWhpL214V1N1SG42b0Va?=
 =?utf-8?B?MkxWSFRONmJ6OVRZcitqeGdVOUU4QTFvVDgrSFRFNUZ6U3ZxWlVONDc3VEx1?=
 =?utf-8?B?TnY1RkVqck9yUFNYaXJ2aitnQmNHcnBFUzVtZktkK3BzbUEwV3hrZStlQ05U?=
 =?utf-8?B?OG53MXFDaE9ldC9EQ2t1SFZoOWRYMFJvYi9vbGVUeWR3UklxeFAyV0kzakdV?=
 =?utf-8?B?VG1qUTNWbFRTWCthd25sd3RUNmtMemoxUkgzR05qYlBldklPNW9IMGU3cnVw?=
 =?utf-8?B?OGJMWWpUclgzTnhVK1ZqeXFZS2NJN3EvKzVUaExpRW9CbHU0Q2xGdWlxckxG?=
 =?utf-8?B?Vk4wazVqVWVydTJIQWV2b29TVXEzMzd3OThhUVNldFVMRDZMbWYyWTMvT214?=
 =?utf-8?B?aXZkSzEzYnIyNmFBN2szRWdDMUZzOHhGeXdHQTFjN2tiV0daTVNhelRGdG1J?=
 =?utf-8?B?Q2JpVS9yRW5hVFZQdHkzSkY1Q3BkNG5CVkxFVFdjY0VQSkQ3TDhudW1hZ2hn?=
 =?utf-8?B?QUx6T2h1alpCb2Q1eGVtRHJDN0FoZGdRL2hpRVFCbHlHek5JUXkrY0lyVnZq?=
 =?utf-8?B?SEJoaHBFcEtHUzl1QU9idEhRT1FORTNtNzJvRDZpREQrZ3JXNUNQN0hQNFln?=
 =?utf-8?B?MGorQnYra28zL2tyQ1FNSExpbDYrTHVnRVdDTU5JdVlvUXRCVHY2STN3VlVQ?=
 =?utf-8?B?OU1Pb0c2ajFaSmZWeWw5YkYvOExlRDQrbjRRN0g0MFlibW82cVdDSWVpYTFW?=
 =?utf-8?B?eUN5bUNxbW9lL0hlTGhOb1ljWlAvYnlJeWRsWmtnM2VSZzNJUVpQWDN2WURL?=
 =?utf-8?B?QkZBOUprSVdYckFnRTg1em9BRFRHQy9YR3JHSDR4QWFMS0g2OGxNQndLVlI3?=
 =?utf-8?B?clNSMlFMdHFrdzBXVmttcDNOWTVZWU9pUTNtbW84WWhWdmcyTFQzWW1aM29n?=
 =?utf-8?B?MDlrMVZQN2NSTnJka1ROKzZvZVJjVC9CR240Tm5TYjFSZHJBOUQreGNERGc1?=
 =?utf-8?B?YWlCYnpuY1krSGRPMUR1NXNFRUt4RXRjQmJUS2k3Q1pvL1JUd1hzbUgxWU1B?=
 =?utf-8?B?bGtvcDVTMzE5a1Ftd2xwNEF2aFRrUHVERUpSL3FrMkM3ck1mZVNpcng2R1N3?=
 =?utf-8?B?YkdFNG53U1RTa0RlWlRlYzIvRGpGZE1LSUZvMzFlbWhYTExlRThpQ2pBdUwz?=
 =?utf-8?B?aFVPUjVSckdVTmxWZ2EreUZRbWlwL2dYWTNsWnc2VkgrQXA3bFNiTjlCYjkz?=
 =?utf-8?B?Y1VSdE03Q0J2L3ZMd1FwMG9DRGRlT0twRkJUN3dFN1oxRU5DSS9Fb1A3T0FR?=
 =?utf-8?B?dTgxUGtEd0RwVG9rN0FkYmxtakFwcTlDMzR5bXdnd1N5WmlzSThLMnl5a1d6?=
 =?utf-8?B?Sll3bit3WWF3M2ZGekRqd2IrdHVOU2FXNEgyVnJLSSt5b0k3ZHJDTlZVVmZq?=
 =?utf-8?B?SDhrcUNsTkJmTjRsaTFuYUV6c2ZQekhYVUkvTUJOVGZrdUVVUFo4aGlleHNG?=
 =?utf-8?B?SDlDd0ZMRWZ2OGUzQlNJR1UwRU1LeEpNelAvMEQxNmhQcVBGQ0dJaERrQkdF?=
 =?utf-8?B?TTJUaXk0dkI1dTQ3Wk1uUXBMUG9XM1ZFVDd5VHMySUtTQVNHU1BOc0kzcm9G?=
 =?utf-8?B?WFF3ZDhtb1IxSlQwbStXcSs1cTNIZHBNNXo1R3JDTEY3aHFOUWs4TERma3c0?=
 =?utf-8?B?ek1CNGFwRkhxNzBCU2lvamttN01tUG1vSmZOMVJXcEpYeGhxeUN2RUR5OWZy?=
 =?utf-8?B?OGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a8d55a2f-dd02-45fc-7b6e-08dddfcdc845
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2025 09:41:47.9769 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cuLe1vDzK/yiDgo+I2RQcZ+ABrp1D80WlNv8tw2uZ55MGnXWSJg5TcoLwjJ2UKaOg0BkecI5lgRYQKwDCvbWiFuByO4tBcPOWJBD9njvOuA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6318
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755682914; x=1787218914;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=17Bz3VwWZMHHTFWO2vRlLp+Jhuma3ING4zS/FTfOaog=;
 b=PRywEq1BJmbz3xvNhUVIpeqM3HEV/8AqtRWmEM1FXMugzYKkqA/1cOFw
 Nt49tjWLzmxH+Gw1YSlZHqVFn2u0JnzzrzXOmK13P0Hwrw3zqR4VrTPcO
 Z6G7wO1418o/+9s4uzAbgW1uEoy9432b1VUBYyV783WcnXrQMxCQ3fLFI
 0e8lYlwp12lzXP4CJINgrWHdscql23e23hPNXECJLO8iCq/oMiBVR9cvc
 q1G7ypja/+OumJ20n+jQuQLacxhZXkmxympGtR/Re9t6eAxOln4JiY2cO
 b9l+20sdxQQF6lsf43mWbYEgXkmKTNtxf/rqAIBm6phPe3S0vp/zOsJGS
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PRywEq1B
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted interface
 name changes
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

On 8/20/25 08:42, Michal Schmidt wrote:
> On Wed, Aug 20, 2025 at 6:30 AM Calvin Owens <calvin@wbinvd.org> wrote:
>> The same naming regression which was reported in ixgbe and fixed in
>> commit e67a0bc3ed4f ("ixgbe: prevent from unwanted interface name
>> changes") still exists in i40e.
>>
>> Fix i40e by setting the same flag, added in commit c5ec7f49b480
>> ("devlink: let driver opt out of automatic phys_port_name generation").
>>
>> Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
> 
> But this one's almost two years old. By now, there may be more users
> relying on the new name than on the old one.
> Michal
> 

And, more importantly, noone was complaining on the new name ;)
