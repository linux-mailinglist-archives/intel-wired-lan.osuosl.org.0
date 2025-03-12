Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D10C9A5E805
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Mar 2025 00:09:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 389F4810E8;
	Wed, 12 Mar 2025 23:09:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s_AenUWtn_Hc; Wed, 12 Mar 2025 23:09:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76B978116A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741820950;
	bh=v085Q/FZbBnWpudluYUL64Xqi9iSp9tkVP1l1VIakjI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xvM1X4OQ6PEbe1O9p0qfW0Y1drbVcg/ehmQthR5OlO4W6mWLwudpf6Ql51Y+V0izx
	 ZN6EVH0cB49Z0fLxBwWH0kAbYZaMbExbdA91jHGzqTxWhhshKiawMVSB75umqnPvaK
	 JbZ9X5Wc9oitBX2cZkTbQOM4xhbOWN+hdpqOSsbSJFG4Y7Yz7WN1T7cnNyU32TbTtC
	 BGEYJQSgLgclsPyuJ5x9UeIuz1vfFkiTOt1EeOIN7ARmY6sQoFYXmSYNmI6lImRkpC
	 6mbw0i3IZ5mFtRpuem7uZzSf256MRQQzQBOw0rirSQ09IlzcoHxrZi58+omRQPBDUt
	 ov2mpaL+sII6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76B978116A;
	Wed, 12 Mar 2025 23:09:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D4C7F1DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 23:09:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ABAE440166
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 23:09:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dP75Ckba5M5a for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 23:09:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AC7784012F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC7784012F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC7784012F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 23:09:07 +0000 (UTC)
X-CSE-ConnectionGUID: lazWIIIQSXC1kEy0ZJNMpg==
X-CSE-MsgGUID: Yvc+x2fESfG1dSzB8zMbSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="46831060"
X-IronPort-AV: E=Sophos;i="6.14,243,1736841600"; d="scan'208";a="46831060"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 16:09:07 -0700
X-CSE-ConnectionGUID: J+xyiEV5S1GuebuAtvF7XQ==
X-CSE-MsgGUID: gPHG2DqJQYKoHdSG6a4tBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,243,1736841600"; d="scan'208";a="120736385"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 16:09:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 12 Mar 2025 16:09:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Mar 2025 16:09:06 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 16:09:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nHYsiUigZ2ddiW9heKEzS7r8Q1pg2WSalBHMZ4X+pKAN7quLo/bzHT9G6yJEdzIvO0zGyCU8dw2XOhtPTR5Fl+7uE/igNbzuBPLAtxOXjBj0Uq2gvIVCW+jm9KU0n5wGdg3WfYehoTggjGLudFcLUsyhendTnK43sO/6UZXjmh23Vr+5iGFXIK7V/hlzzwa0oUiKRmNCy5/OlyP6h66dGENAkLXiWe7zo2Llz2G+aLgusBqiKtKeQF/dNzDQ/c8i2bnnascJoEu44Rf2DJeaPiBIuyNvhlua9W8x7u8WB8V1CjMDcO39uu2dQ97E1AnSTki/dCSZGrw+xRjDU+a8qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v085Q/FZbBnWpudluYUL64Xqi9iSp9tkVP1l1VIakjI=;
 b=AkR6fWLilB9UYOCMywNFXj00/jcYb/mQ4l1vfbEdNOCaG8O3KOeHX8y5B9r5lxrRvgercle1cqbMm5wmsnpUizTM8yhWXrjE8SvCGrlp9rpGcLf3krFNAiqVqhZp/cqiPkTRfge8rkgDZv3pX1kyjvgv0VxnLCCnqmBXpglvtyg+b399U7hTRpm8T/3BqeKHJobYpuheCJ5j+MkvGUn0UK7KpZpdHpUJkYzZuBX9MZXLic/+5UXe8gnaY9m6bXELd7Whw+n7A9Wz34AAOw/6Gqvey0k6NRC078hLDaKYDCN2kQsIF5CG8UdZ9iSDTLQE7lprx1vcwxTpMQzpxa4GvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB5064.namprd11.prod.outlook.com (2603:10b6:510:3b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 23:08:58 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%5]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 23:08:58 +0000
Message-ID: <0347b9da-1b62-4763-849b-269a69135649@intel.com>
Date: Wed, 12 Mar 2025 16:08:55 -0700
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>, Michal Kubiak
 <michal.kubiak@intel.com>, Milena Olech <milena.olech@intel.com>
References: <20250310111357.1238454-12-karol.kolacinski@intel.com>
 <20250310111357.1238454-19-karol.kolacinski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250310111357.1238454-19-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR06CA0014.namprd06.prod.outlook.com
 (2603:10b6:303:2a::19) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH0PR11MB5064:EE_
X-MS-Office365-Filtering-Correlation-Id: 85bac2d4-0162-4af0-e25f-08dd61badebe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c0dMTEJITTg2RHZ1THJialozYWFkcGJ3aGNad0hCbnMxa1o0b2RBQkNnb0w2?=
 =?utf-8?B?aGJtNVczVHlZS0xwRTloTi9JM0k3YzZsTzUzMnhzU2dlc1M0THRSWXE1UEJH?=
 =?utf-8?B?MklwZXliT0pmcTlkemxJOU8wd0pQZ01EYlZPMkh0T3BsbHE4dEh4YkF4NW5Q?=
 =?utf-8?B?WkpUMDM1TFZCdWFTVU1vejBWLzhIMHJ5ajg5WVlRcGtIODYzWlVHYU43NUtZ?=
 =?utf-8?B?OEZQdE81V2Q0Tngva0pDbHpFTTROUmFzb1dOVWpvZ0M3bXFYV0NSNzltUkJY?=
 =?utf-8?B?MmpZYmdXZXh4M0h5amtHOEU5RXM5dVlNalZObXN0MmhWN3FDeXcvbWlYS0lB?=
 =?utf-8?B?WXZyNysyZmtMUTBESjRhQXd4ZFpDbk50NWpwSkdOU1ZxQklGSzI1NnV2QXNF?=
 =?utf-8?B?T3ZJM3VCamI4V0tUVkJjcjNvaVYwTDNqVWNMemVoM2xIdkJRaDhCVUdDY3NO?=
 =?utf-8?B?S1JkSW0xU05sQmtmL0drcXpUUm1DVGczajVQenAvMkdZUk9uL2o5cGhDZjc1?=
 =?utf-8?B?TWp1ZDVjSHVBWmpaWm1oMi9mZDRZZlpzb1F2VlZMY2xGdy9JRzhSYjAySlgx?=
 =?utf-8?B?SnBUdlB1M1k5R0RacTQ3elAwRHFuNGQ0djRoOS8vNWVmMFRZUWJjZnZVYTV2?=
 =?utf-8?B?NTNodGN1ZDlQYzZ4dnlsMDNIWDVsZklOeEdxSTMvK3dpeHF3TmtCalhLMWRH?=
 =?utf-8?B?Ris0SGxPMXhPSWpaTFIybXE4aWo4YUEvRkw5UVMrY0c1elc4dmdRalhnRFZH?=
 =?utf-8?B?SCsxclp2ZFk5QzVzVGt5NmxvZFpXdlYwOHhPeVJmL3RVRkFvbjZYWW9aS3Iw?=
 =?utf-8?B?ajcrcWhpM0FmZU5YYi9CQStnWXQyNnNXaEZQWXY1cFNGWWRTL0puTkNXR3pC?=
 =?utf-8?B?SitIT3dVbkdNMHl6QjJ0cmIxSXl3M2wxWjBxcS94SW44dHZmcFZ3eFZFNUtW?=
 =?utf-8?B?U0xYOUJ1NW4rQTV6RHNEbEpzTGY4L3V3ekFSVUlTUWpLWEJBVEdENlZvU1ZW?=
 =?utf-8?B?d1hIbUFLNDJTWFJGSzVvVW9mOFZtS1JSRlNUVzlPcUV2OEI4NE5RMHpBakd6?=
 =?utf-8?B?ekhFMmZkWlA0a0ZPL2J4UjUyci94ejJWWkJkQzZzYlgvdlJ0MTBYNStYWFVa?=
 =?utf-8?B?Y2dQMWsrOXZjczlMUTUrcHRKb21GNHpmWDJ6eXE0WmhCVXNLaE14UG5BaENO?=
 =?utf-8?B?RVdGeG5oVmQ0Qy9WSDVNUEFVaEFTVFhuT3RFSVB5Q1YweU5yZ3QydlhuNEx6?=
 =?utf-8?B?N3N2cStGLzVUTVIrR050U1BNWlV0VmZscDltR2N4TSs4ZmJXb0o0UVFGMUlp?=
 =?utf-8?B?NUZXYm4yZzFiemN1UnozemdqbTdQUmNvcDd4cjBlcXBEWEhiczJsckVzSTJt?=
 =?utf-8?B?ZVR5K3VaZktwSXA1MjFVYXVPSXpabTlxUDl4a3Q4WW5ubE52WlQvSXd2TjYx?=
 =?utf-8?B?QW5hWXdMQXBBMGN3UkZwcG5BSG1UenJ0QnFqalBGVjBiNmdjN3owRUFUNzJs?=
 =?utf-8?B?cVQzNS90dTZPeWpaWTFpUFZua01wSjFkcWtSM1MwK0duaHBHUlpuOEowODMy?=
 =?utf-8?B?UnpSWmxaVnlmMkJLUnN1dnNTTXlFMCtGWmJBT01UUXZLb2RIRHBhY2wzZDRB?=
 =?utf-8?B?YWxYVG8rbGFEM2xGUkR6Y1JpRThsQnFrRTR4QWZBZmZBY1R5VEpFQjYvOFBj?=
 =?utf-8?B?a2tYRnBKRmp3NUZlMTlvcW8vVnBaZ3U4aHV0U3hMNmZtdStsZ3JTYnNrblk3?=
 =?utf-8?B?VUpCNEtnbWpnbnEzeXRiRlpaNnJqcUxsZXZqSzZRMzVCZE5sRHVoUVV0c0R6?=
 =?utf-8?B?NWpmSTZCT2FKa1E2MXBwNmlYUzlrYllnZ1gzbmV6aWlhUDJET3U1Q2wyclVQ?=
 =?utf-8?Q?ekUiZdy1HdHNm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MEx1Wi90TWxSOVhaVVRLQ1htYmNtalhCdEl1T2V3ektEV3o4bmFCMjJiMTJ0?=
 =?utf-8?B?bWR1UVd6OXlqakswVTh3cDJ0enRYckZaMUwvQmhJZU52SFhsYzRHUysrZVJT?=
 =?utf-8?B?aFA0MmxKNFl1NWdGaElLaEJvRE1mY09pS3JwQmpVdGtkS0ZtZzY3LzRrQm1T?=
 =?utf-8?B?R3VPeWIvY0hkQWcxa3NpRVVRNkFPbUxhZWZtdGZUUVZMeGM5ZnVMTDBmbGpN?=
 =?utf-8?B?S0o5cVUvVFdQNlUrWlpuWTZFdnVUdHA4UGd2cXlwdVlCTEZBd1RtUStLWEdB?=
 =?utf-8?B?YVJRb2tBN2ptR0RnblR6SnRkb3hBdVIyR0ZhMldjUm1zcGdSWFhnRWJxSVZj?=
 =?utf-8?B?ZnoxaWhzMXlVNXZaak5IaFJ5MUVGZjZZVmxiQytFcTRmcEJBZDZJSSt6dkhB?=
 =?utf-8?B?OGNkaEtxZmxjdnNrUUdiRGk4cFUrUmlBZWJpSkRzVGk0bzY5TURuenFQMTk4?=
 =?utf-8?B?elgyTmhqK1J4SGRkSjRvaHdwSEJ0c2dGSldRekRjSVhKSUprbzBVZUxLcE55?=
 =?utf-8?B?M052R2llRzN2ODI3TUd5KzN0ajUzL3BUbUxVbElpVCt5cmd2NXdqMy90Um85?=
 =?utf-8?B?ZGVqaDRGQU01cXJYSDE2eGhrdjBsU3dlUTJGZnRGeEovT1dhYVRUaEdRQS9t?=
 =?utf-8?B?QnVCc0FjMFU3VzJyM2dLMmNRMXhxVnRDajhrRzRMRXFQeGxBa0pIK2REeG1Y?=
 =?utf-8?B?ZFJXM3BWcWZKMzJ0NzRzR1IzMDBhc0YwYkxXTTJxUXFFWElJVTVRQkVOeEln?=
 =?utf-8?B?Z0gxR3JnZTkveXZKTi96MStLMTM0bGd1dWJuYTlvSXVJWGQ3QTR6ZWxTeDJR?=
 =?utf-8?B?b1AyQ3UvczBac3V4RVlTZHRZZUpCUk9hZE42ZGlZUWxKQ3VJWXBHKzFuVUVp?=
 =?utf-8?B?ZnA1ZGI5aFd3WXppMVNsaWM0OTIzYWxkSFpoVTZxTUhKZjh0aXpVdEpjN01i?=
 =?utf-8?B?VzdleWYwOEZFQkxqc0YzaDNjNmZRK09lUXJQY1Z2TzEzUXN6K2FnUy9WMG01?=
 =?utf-8?B?bWk3OW5NZVZrUFpRRWowZ3F3SkV0ZytBMXZQOUV0dlhkcjlqNmMxajZVNlNJ?=
 =?utf-8?B?dnhoVzF0VWE4Njk4MDFYajhPaXlMcTVBMnR1V2lPQ3Y1R256SEV2SmQ0eWd6?=
 =?utf-8?B?NkFlWlBZMThzdFJRWVE2WnNCTm5heXFvUlozbVcyekZoLyt3dURpdTJ1QWN1?=
 =?utf-8?B?ZUNUU1ZNcHR2ZzhHT0wwWDFTWk0vV2pqZjlURXJNNjhIL096ZzlUU254VjA5?=
 =?utf-8?B?aXhTZEtqa0thUnRXUHF6MGs2THBleGdYSVh0Z2s5UGJzL0hCTmt2K2dHWG1s?=
 =?utf-8?B?Y1pyMk1oMEhwRjVrdFErL1ppSkV0am1TZjlySEllY3grUEJJWm1RZkZDZEd5?=
 =?utf-8?B?bTVGWXlBSkdrTS91dm9jYVl1K3kyTmR0VVlEZjdHSlNlQU9OanBwbTQyTmE5?=
 =?utf-8?B?WlNoMFlDY1ZWbFluOWQ5dmVTVHdFd0E2LzlSWlN2NEd3bzg5K0ZqdEgrYllo?=
 =?utf-8?B?QkxZN2lEZHNlbW9tMjRGT0U4VWZzaDJtSzVKKzkxK2l5VFdyd1ZObHl5SGFQ?=
 =?utf-8?B?NVBaRXRxcVJ0VDRxUk9HdWs4NVFtVm1Hdk4zcTRHWG53TWhnbU5hc3JwU3JL?=
 =?utf-8?B?SWF0amlYRWdJN2R6VGFGZmtFWDJ4N1VtSFpEalVEN25lVmFSRUNHaTk1UlYw?=
 =?utf-8?B?czN2T2Mvb3RWWTJTV081VDd1SGdDcEU3MnRkb0srTjhHdmRpWERkMmZoaGlt?=
 =?utf-8?B?dEV2WUl5UnlmVE8zVmVzWGU2UWtnMklkaGVaWHJTWVJvbFNqemtvaDgrMmZY?=
 =?utf-8?B?dG5XanBVY1hxMTJpU3JXREtyT1hWb0V1bTFzeWJaK3pXczdqNjR4RzNMdi9P?=
 =?utf-8?B?cVE3cWswMFpXcHBkdUFzU0dYWEcxQTV4OHR3Zk5WNVRkV3JLVHFKWlV5ZHg3?=
 =?utf-8?B?YWpNWjl4YlpkeTBEbXJGSklGMGM5Z1I1TWthVTU2bjROanQzbytveGdpY21C?=
 =?utf-8?B?L1NjeVpRUndERndWZ0VDTEtFakVoTTBHNDlacUZJcWZVck1GSndUUm91K2Nr?=
 =?utf-8?B?cXFlanN3VTFFTTBPaDJBYld2dUdVVHQ3b0RqUDlHMWZVS1RKS0FybERXNGgx?=
 =?utf-8?B?cDlTbkZ6SXZKaHExZ0tWWVIyVFZ4ZnRqL2xwTGdpM2czbENVcDREc0MxZFNE?=
 =?utf-8?B?Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 85bac2d4-0162-4af0-e25f-08dd61badebe
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 23:08:58.7511 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EKb/lXcpGZ0eKVLAS8j4VPM1trYiNQV6bwDxARbo8HV4T8AKGww8kCWiAGWJcxIMEFdXRRwU+ULHtZrP93kfaWd+4w+jFUDtqwx3u0Fk7zU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5064
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741820947; x=1773356947;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P+RQlHNImiuK8MNfPP7OmP34X7TY32oMaZaOUgqySpE=;
 b=HZ7xgUn3d4Zpr05UMV3d2kLFtTMC561diI1D/jAG1YIhTjcaIpkJ26EQ
 TRWOyXuduauHPh+bDTjUhdyXd1q6PXclILhCzHBdl1GIfqVHeoWDVhLf7
 sTyvJdUun90KBgeQFAqJ3nV04f1W/q9y+HWmYYU6Gz3TH1fnMImC8iHJ0
 HFdcdr4C3kvG25eUlEs9saVAPKgJ/c7Fn2LaWYlJKGFZqdhzoHFkgZc7C
 lVYaIO7bA0QoBLfVt8RQvWIju+LqkqZu6iL/K+9wg+pXvr6Yytea2un6S
 DkxHiW0wZbd2Rkz/iQpKhSEqCA6hVwzECTbTh1dioW2JhKGJWoYn02QPa
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HZ7xgUn3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 07/10] ice: add multiple
 TSPLL helpers
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



On 3/10/2025 4:12 AM, Karol Kolacinski wrote:

...

> +/**
> + * ice_tspll_default_freq - Return default frequency for a MAC type
> + * @mac_type: MAC type
> + */
> +static enum ice_tspll_freq ice_tspll_default_freq(enum ice_mac_type mac_type)

...

> +/**
> + * ice_tspll_check_params - Check if TSPLL params are correct
> + * @hw: Pointer to the HW struct
> + * @clk_freq: Clock frequency to program
> + * @clk_src: Clock source to select (TIME_REF or TCXO)
> + */

These two are missing 'Return:'

> +static bool ice_tspll_check_params(struct ice_hw *hw,
> +				   enum ice_tspll_freq clk_freq,
> +				   enum ice_clk_src clk_src)
