Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AC7B06F59
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Jul 2025 09:47:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5632680F5E;
	Wed, 16 Jul 2025 07:47:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9GTguBunQosU; Wed, 16 Jul 2025 07:47:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5532B80ED7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752652073;
	bh=PUSI1kSM7uYtyGUKzHvW4s1ixPA9Dv4qUPFvyuQ+gP0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VzI4cQjSVSsZvb9at9tPWxRTc4cuM69QT62fepVW6T1U+uJxEgZ6IWltJiIVPeai3
	 aYnHsvkmetwY623NVAu4zf6R7Y3TZN2MHrQSiodiFgCyXyzM4FykW8fv/K+tNHR+yL
	 qfZkWmJINCmb/alXLbZdRiLywaF4NdI8BVJip84h7kpQ7st5eHyeP+mCQC0BFKV//M
	 wXW1YbXZKcPhNK4wQBbvZxwtr8xOfX85rXDTsmgElMktYtfdtyCJK4HBihimqYqAz7
	 fcNfiutCvFMg8EP02GNDaL8Zje+wD7OSOIqLGMsLkn2JvJwgvN64O2FzBKiiVBWzEJ
	 T/tgbDVLT0QPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5532B80ED7;
	Wed, 16 Jul 2025 07:47:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C84A11AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 07:47:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4FB3A80EBC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 07:47:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vVhDz9LImAW2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Jul 2025 07:47:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6F18880EA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F18880EA6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F18880EA6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 07:47:49 +0000 (UTC)
X-CSE-ConnectionGUID: tADgnS/7TfeuzN/qREPd+w==
X-CSE-MsgGUID: zhwuyjYgR0GYuuAxstz0Lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="54743107"
X-IronPort-AV: E=Sophos;i="6.16,315,1744095600"; d="scan'208";a="54743107"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 00:47:49 -0700
X-CSE-ConnectionGUID: 9BmCPNzQQziYNnZW0OJMVQ==
X-CSE-MsgGUID: HWAQQF3OScOZcN0QL49YEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,315,1744095600"; d="scan'208";a="157524335"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 00:47:48 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 00:47:47 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 00:47:47 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.84) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 16 Jul 2025 00:47:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PC6ZHtPt/W0ld2H8o5iep5LkmpMElQhaj6umiSXNhY8HCMGkAeLhSPVvCfOgfBX3HIl+4V+aQIw/hX9nPJyEbAyB8RmnzdWlkcl60mMJD87C1YyoUbffHo816kJzD3Y7VDhKIjbpNyPz+FNkWWf/5noKvDEswiwtZDLuluok6PvNQ8EmFOFgvPRcRGZQOSxTo+rzmqc1d+tvEKzmkNcJ7jvX2o8oI4UZvX+iC6uIGd4riAm+lJcRLPr20LGLOj9oOp7c5c7fgTvxyL8/riyM2BTWthfekj4kf/kiCbPoreefDy4f2D9UbwGe+8/OwkW6iM3Ds+7G1RMO/77kh3Eo1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PUSI1kSM7uYtyGUKzHvW4s1ixPA9Dv4qUPFvyuQ+gP0=;
 b=xB3Diz46evF+1R00nUJn3d4jDUKjrg4c8xKhhT4fKtvACl9qhQeGpxV0//NBcGLJGU423tGtW8XOFk2hnfChyh8Dm6DXWyT6gYtrBycLDCxw2ZTTD1JKKScXJ1oUMiqbFpAnwvlQE/2fwbvM5FiY/CS1pRvT75fg28gm6nGtOrHOa6QowKny9SiPyIK1PTtZIpqSvIKckILLWyWGwwknpnOHUHnHmItTOycvaUk8CA+feT0PbUy2uBBMXZHMjCHdZSHoh9vKo33boaEGIpseuIHjGiOSm0ANPMy9JOLuFy0gDDBlVnWbDtXFPJ73c030/99Rt+3pjZcs0R0W1L+k8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA0PR11MB4557.namprd11.prod.outlook.com (2603:10b6:806:96::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.25; Wed, 16 Jul
 2025 07:47:45 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.8922.028; Wed, 16 Jul 2025
 07:47:45 +0000
Message-ID: <791b9a57-2855-4b2b-868d-293a86edb6c4@intel.com>
Date: Wed, 16 Jul 2025 09:47:41 +0200
User-Agent: Mozilla Thunderbird
To: Kuniyuki Iwashima <kuniyu@google.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <5b94d14e-a0e7-47bd-82fc-c85171cbf26e@intel.com>
 <20250715220654.1337102-1-kuniyu@google.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250715220654.1337102-1-kuniyu@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0294.eurprd04.prod.outlook.com
 (2603:10a6:10:28c::29) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA0PR11MB4557:EE_
X-MS-Office365-Filtering-Correlation-Id: b5c4e9b3-43df-4beb-6f55-08ddc43d0d40
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ellkak02YzdjcXAraVoxWDBYMUFpT1dDNXYzSWV1b1Y0VndRemJYYkl3OUN0?=
 =?utf-8?B?UVRHVjQxWXVXOW9nbm1UUEZmZTltaVZLdnpKd1Y1YmdWcnRrOVdvbFpYcng4?=
 =?utf-8?B?QzFzN3ZrU0dHRVNEMGxvL2Mrc1Buczk2WExOMnVqU0VLRWtJMSs1RDUzYmxr?=
 =?utf-8?B?azVyWXp3VE1kMUtvSm9oM0E2T2N2QmNjTE5rc1duTTk5RUtuOTJ5YTE1Y3do?=
 =?utf-8?B?UmpndFZvMDlrRXJ4WjR0S2dYTmcwWXJ5Tk4vTDgzem10NHc0OEl0emgrSm5t?=
 =?utf-8?B?aDl2OGp0Q3lyU2MrL0p6TmlOYlM4M0xnY0ZDRUxMRGdRcEllYUQrQ2Rzc0dF?=
 =?utf-8?B?RkJTWDVlUHhXbnpqZmlqbzBpUXc2VmpKbXVkSTVKNGswU1hLQnpTSHE1UFV1?=
 =?utf-8?B?L3hoOHRSL1ZKdTVkb2tFU09VSXdKSW1xU1VVd1QxalpKREF6eUdPVzZyZzVk?=
 =?utf-8?B?WmVKZmJockhLcEhKVjY5eS9CcWlUSFk2OHE0WEFhT1ZvRHRIWnY3SEl2TDFH?=
 =?utf-8?B?UGw2Q01JQ3VJTkNDOVIrWlBtQndhNnY5RDFKNFY0bWNrZkFFZGNxcWV2N25X?=
 =?utf-8?B?aHNXY1hBVEFvRnpmRjk3NndITDA5N21ya1o3OWI1RFFoQitkMHh6OThoV3FJ?=
 =?utf-8?B?YmNROEJqd01nQUtUbjZPQ0NsaEtqRng5WWdzK1h1MkREVytUMTZTbE80MFp2?=
 =?utf-8?B?Q2FBcnFjeUQwMGhRRFhSWlZTZTYxeUxValpWZGNwNkpxUHRIKzlvWVE5Y2Ew?=
 =?utf-8?B?TDhENkZBelJuZkVCdDFHR1prTzJ0NmdqT0Z0NUsvZU9COTZxQ252aXpHMitQ?=
 =?utf-8?B?QkRJRFVNRDZOUmJ2TU9DMDB3U0U4LzBCd0JuMTAyVmZDV3VpeXJiYWpoeWVs?=
 =?utf-8?B?R2Zsd3dFdDZDZ2NvY1kzRmRzTXJPaTg0Q3FYZnpEM3oxak1vV3dYS3FjdzNW?=
 =?utf-8?B?WFMrWVI5UkNMQzkybytaUytFbkV5VVI1YWZQOTYrRmtFcFlrQTlMOUlVZ3ZR?=
 =?utf-8?B?QTIyNEF6eFNDZm5IWkowT3o1d1JCdFpMbktSMkJ6RExJTlNkUHB0SVF4VHUw?=
 =?utf-8?B?dWZaRmkvMnUvRW1yNVVINU40SzhRS2NZV25sQUlBUHA3UTZ0Q2lZYmJ6WjRN?=
 =?utf-8?B?OE5DVTk0QndZOXRjNE5XL3dvVEFweG5aRjE3Yy9SUy83L1hvNHJSdmlPQ2hv?=
 =?utf-8?B?em92TDEyem0rc0hvcW5uUXRBNCszRDVUODRHWEJ3UWMwbjZCRFVzbDlkcDVz?=
 =?utf-8?B?UmNDYjhwQXc1QU9tWk5JZzdpam5XbjAwaGxCTG9aUG1WeDU3bHhlWXI2OUVY?=
 =?utf-8?B?WGtTV2gzOVJlVWVkS2RoZURrMXdOSkNCQUJ6K2lGUU9sMi9lNTVjUG5iVXBS?=
 =?utf-8?B?c09ZYVZhcDEvd2wrYUprRzhoSFhLUWdDZTN1aFB0NjBudWt3U3p2eno3QW1T?=
 =?utf-8?B?UE5KcENGTk5lTUZ4dTJybmV4Q093Sm5mTTVYT2pqVnBKWWxMZlBPNVFsRXNp?=
 =?utf-8?B?WWJhRnhnYlhieE5tWVhHM1EzUlBZdXdRZVZJUzVDQkJHb2d4R1Jwa0dUbVJL?=
 =?utf-8?B?WjMrVW9mMlZyL0toUjVCSStLK1ZoM1h3cHdKMGx4Skd4eFV3Z1JZS2wrbmhJ?=
 =?utf-8?B?OTRrbWN2Z3NvRHorTi9tT3hUV1l4WkhYc2E1QzNGTm5jY29lZWdybndleGwx?=
 =?utf-8?B?VFpRUEJJRjFzek5wVjNRWWx5bkloM05SZUlXdHh5TjRjU1cyYWhFbHhkRHZ4?=
 =?utf-8?B?bU1TS3VyN0Mrd1VKRlZneFp5cjBwZFdqZVc1bytqdGdzU2VOY081MCtZUFJi?=
 =?utf-8?B?dm1hTkZPMFN2b3RkdTVCY3VrTkhQSmFZbzJtYWdLbE9YdzJ1aWVFSG9rdUhQ?=
 =?utf-8?B?NEM3QkMweSs1RUVqNGdXS0hUclVHOEtZcHNVQzRaM1ppSmVjeEJZZnIzYWRx?=
 =?utf-8?Q?+2xSeRILHd8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cjBtbGRzTTJ2bWRNc1NjOFVwSmFtakdZTHdNeUtqWEpDaHFuM3NaekZVdG9H?=
 =?utf-8?B?RTNOSHNWeStjdlZOTTJZTkR2ZWxnVE9GTStYYmFqQXJhbis2N1ErS3JWYXF0?=
 =?utf-8?B?Y0FzYWY0dUQwa29UNUpPY2VNeUFQY3owZFZjYmx1eUdlb0xxRTVpNGlPbm5Z?=
 =?utf-8?B?REtiazFEWWdqU1llMzNBL0JjL0V1elVjQnpGYnNVOVB2a2Q0akxYVEl2Tjdm?=
 =?utf-8?B?aExiKzBvZm83STlvRWQrTUxlUXpLZys0SG1SbHVCREVPY0NnZk1HU2p5SFo0?=
 =?utf-8?B?enRuZjV1MWpnV3lONmpadXBpSGtWQUIrdk5KTTlYNVkySVNWR3o5dTd5U09x?=
 =?utf-8?B?MHNEbyszZlN0Y2JRWGVEVjJkaldWZ0t5NGV4dFBsRjVMNGduVkJXd0EvUlYx?=
 =?utf-8?B?R3QyWm5HTWhDWDlPTkkwSXlCZWJWYWNzVCt1NUlRVWdxNTJGRExCTlgrTHNh?=
 =?utf-8?B?dWJLUWlsVnViNERmNlZBV1RqNk9zWDJIemJic3FLVUJiaTRBVzZxeXkvN1l6?=
 =?utf-8?B?dldnemp1WUpVUXY5bHB1R1J3dlVZRWNSOE14YTZLWjJ5YVBMb0MzVjJweSs3?=
 =?utf-8?B?MzJsUnIwT1UvYlBnZ1M2MlRMWDBtRmtzZUIwaHhGUFV4UXAzT002ODVud1Ew?=
 =?utf-8?B?azY0SEJQa1RBN2JVNUZBMklnYS9VTE45dWFFR2c1QnQ1UjJZU29NQUxFak5p?=
 =?utf-8?B?dHYvRDZUcXRnRlVyQUtWa3pOYXBRYkxhR2UzMldFZjdobklabUtoVXMxSmNQ?=
 =?utf-8?B?TTFZSWhTdXhxbFZBZ0dubG5CVUdvYS9iL2VtZmIyZUNmZXp5OGJMcTZrOGRS?=
 =?utf-8?B?bUdLQkR0SThsUFUyeEVtMFF3ZVB5bHE4VWg0NDRoZkRxU0ZVMnlaalJrM1lj?=
 =?utf-8?B?V2JlTE1SaFd2bTQvUTBOeG12djM1L3hPbENWTWtGMXFUOFU1WC9SSHJQczhX?=
 =?utf-8?B?ZzVkOGx4QWErdnVsTUJhVC9XQllPbGFySHZEZ3ArMlRXUEVTUnROS1FQK0FW?=
 =?utf-8?B?T1IrTFgwLy90T1dJdWhxeDhYcUNPamFiQnVDV2F1eFNZWEphWVFXWVBrZGN4?=
 =?utf-8?B?Qk42UnJiT1dDKzU4SHdLL1RjR0o2bzZMM2drZ1Z1UjNRT0c2YjJ1czNjMjZU?=
 =?utf-8?B?NnRseHVFemdvUXJwd3llK1AzZW5uT1VPRHpHTDBHQ0M2SXFvdGhHT0Q1NHBY?=
 =?utf-8?B?dEhGcUkzR3VteEw4aTB1NGhwalg1eWVtdUFZU2VWS0JBVmd1dkxrNE5OTDZV?=
 =?utf-8?B?cTl0VUFrRjRFMm8xeTZ1Q3U4aWJJWEtSNVR4OVYvOTlYS2VLMVhOT3NjZWU2?=
 =?utf-8?B?OStXSWdaZkpKeldrMm5vL1ZPL0hsWG4wMFlvYVhMa0tLSVdvK2xoNlM4VVRK?=
 =?utf-8?B?WjlKUXVydlNERENjMTJtT282QmV4L1NxdFY4UmM5a1pyRTR2WjY3U3ZFMVNi?=
 =?utf-8?B?aEl6ZC96aGJNbXE0dDJUYll3aTJuMTNIUVJlTENvYTVzakowMTE1TUtETzFt?=
 =?utf-8?B?Vnk0TjIwdlhNdnRqUWlBMGxqNjVxVnord2FvQWt6NzI3U1UwV3R1dXpsOWtE?=
 =?utf-8?B?TzcrVzhXWCtxcGYwbS9mbmcvRnp3eGEzY3JvUEZsUElXQUpVUzU3K0tDeTZU?=
 =?utf-8?B?ZkhtdThQeWM2aHcySWt1YTJVcEhiemZBVEJic1Y1U1pEZmY5MkFvazRicG02?=
 =?utf-8?B?bUdWWUpEWTNUYXBBLzhaMkNuT0NxRDdqb2Rxb1hoQXpSeFk1Q01rbXJxaFg2?=
 =?utf-8?B?RHRwSmsvWm1abUEyYVMxaTcxMmRwNWp2UktEOUs1SnpCVElLQkkwTkRGaEla?=
 =?utf-8?B?bEMxYWxTM01CN0QrYXlrNTR5TnlwcTdDeG1EQmpMdUNxeTR2TVFqVlNIbFJH?=
 =?utf-8?B?L3dkNjlaUUllYnhzTm8xUlh5V3dEQ3FjR1Z1NnkrZEJEK0NuS1k4MXJoeHZm?=
 =?utf-8?B?MXJFQ3dHZDRGL2hQVFBDdGZNcWFVZCtQUjFXb29YZENmYW1jNnVZd3AxN0hq?=
 =?utf-8?B?cGZiY1dHUWhYL0s5c29UQWcyTFhkb3MxMG9Hbmd5QXhZMnNsVFQyVCtpbmhv?=
 =?utf-8?B?a0xaeDI4Z1cwSVhyQ3h6bmtxOWNobGhaTWdoMHFIT0xVUG9JbmlES1dXbHVy?=
 =?utf-8?B?WWljckYvcDlMa3J5dk13TG1VVE1CNi9SVGZMMDl1MmdVazdPc1BPaFNmU1gw?=
 =?utf-8?B?dXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b5c4e9b3-43df-4beb-6f55-08ddc43d0d40
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 07:47:45.2150 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: As7p/hEsNYUq30P0ir3UbHjH6oGB7zZQuYsNMaRZWhxLtq0CtYAb1xYK9c/fhBY36m0UfWZQQ909MyvTaW8Pj6LU022pVefbyktq5GIi4a8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4557
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752652071; x=1784188071;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PD9rMYsmEL0ahCaCTT3jjleOwE41XkIS727XERiXyXU=;
 b=jEbrc42qE9Q/bbCHKKjTjSrZkAdoYRBkoaLCFFzt1+q/9Y4AanRKqCzN
 SaY7uH0v4HBICSPosZBPmNqohX6/GcdaoqTAjhJLlYvjeodOShYn5rjQ8
 bgB8tOpgXGgU8AMr5bsDlqoMjFQPUBE5Rpd4ewwgZAVy+LiYPmsGwfoAv
 mOUEiB4uTcwQ+WfdpnVNdiww6GljdHLbdhGdNpgfNDwucdg3F2UyAdRHF
 hwBGOw+UGcsbCbkfL+OfAdN207+HhFjFh88DUTDROhMYOSDGf+IuNSV7D
 U3KpJtV9fwz3QOSfYcuMfSA9D3wN0CnAd9S1QwYueypUJ5WZivS5VLqXW
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jEbrc42q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC] Solution how to split a file in a way
 that git blame looks fine
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

On 7/16/25 00:05, Kuniyuki Iwashima wrote:
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Date: Tue, 15 Jul 2025 22:33:40 +0200
>> Hi,
>>
>> I have developed (or discovered ;)) how to split a file in a way that
>> both old and new are nice in terms of git-blame
>>
>> https://github.com/pkitszel/linux/commits/virtchnl-split/
>>
>> The purpose of RFC is to ask if anyone is in strong disagreement with me
>>
>> There is more commits needed to have it nice, so it forms a git-log vs
>> git-blame tradeoff, but (after the brief moment that this is on the top)
>> we spend orders of magnitude more time looking at the blame output (and
>> commit messages linked from that) - so I find it much better to see
>> actual logic changes instead of "move xx to yy" stuff (typical for
>> "squashed/single-commit splits").
> 
> FWIW, git-blame has -M/C to track X-times line moves within/across files.

those switches are great, agree (with a tad inconvenience that you
likely want to specify -C10 to have it work harder)

but even then, I find my "elaborate" method superior, as it allows for
easy "go to previous revision on given line" operation, while with
simple squashed/single-commit variant there is simply no previous commit
on the (new) file

For example in tig (which is the state-of-the-art tool in terms of
interactive git archeology) you can simply go back on given line with
a single keystroke (likely to go prior the "static" kw removal, to see
signature changes made prior to moving stuff into new file), but with
squashed variant there is simply no place to go, what result in the msg:
"The selected commit has no parents with this file"

This is possibly resolved by specifying "-C -C" for git-blame, but it is
simply so slow on kernel repo that I didn't checked how it looks.

> 
> 
>>
>> Cherry-picks/rebases work the same with this method as with simple
>> "squashed/single-commit" approach (literally all commits squashed into
>> one (to have better git-log, but shitty git-blame output).
>>
>> Rationale for the split itself is, as usual, "file is big and we want to
>> extend it".
>>

