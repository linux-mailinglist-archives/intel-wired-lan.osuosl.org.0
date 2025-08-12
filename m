Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFBDB23A27
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 22:45:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5AF1606EF;
	Tue, 12 Aug 2025 20:45:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1OG6p5Zm0zJN; Tue, 12 Aug 2025 20:45:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E531606F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755031509;
	bh=2cO/UFwPtgKZ+7i4za7jpEfgdw3GdKSUDVR9/AYVkVU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5e5PSqq4VD8mUpvV1mhsb8wbTz9JeUNyRBvJcCldszxQmwjYXBLOP95usaqnBmNza
	 L2nw3WYW22/yOHO3Zhdjqz3KPcgXkuY1T6To3vwtZdGld2dXGDziWski9kXn3pNnrR
	 8e+tzQTYHMPoVeyHCbQRel9iktqxOFkuitY5b5cHEhRSntjlC1Ys7UZp7tr8ejScY7
	 jFNmd5xsgixYIfDSSGrtieveFPXnCkHlC1HlIYeS3KxPeOGiopSAwYeKwR9eNhS0pp
	 zkjuFWERAr2gEX0qKTydgQjlaHguFN0WoZqDouUAbE56NpyhAt4a/YmXQG7wzk8V5T
	 jisc1CY+DTcmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E531606F8;
	Tue, 12 Aug 2025 20:45:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 906261C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 20:45:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 82236606E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 20:45:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iZCYKfGIGPhj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 20:45:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8DADE606B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8DADE606B4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8DADE606B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 20:45:05 +0000 (UTC)
X-CSE-ConnectionGUID: NZFg+6rVSNqrTN1/DNuIKw==
X-CSE-MsgGUID: bvXA5TnDTRaEjIOdNEgEVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="68774541"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="68774541"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 13:45:05 -0700
X-CSE-ConnectionGUID: EfHl1EwyS3uwmjv7pwwjoA==
X-CSE-MsgGUID: LLpCWtQ6RAyIN1+Oj36jSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="203473160"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 13:45:05 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 13:45:04 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 13:45:04 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.52)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 13:45:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jzWGdTS9bN+hOPyGlAqFpz08cM2+H4SGi4ekAN7vKcLGUowRfLkau+YLAQvksOhUtpzxnTggwPqZsAMlimAErq2weRlFb1Zvgf+7F/blQ4hEtRK/Wt5xSM6hzarfLj3efAGd78Iwf+RNvVUvQpS0cxEP9fVwcPK8uVJ/fiNYNhsLM3Ez73drpU6ELPuwwhv3N0aq3yGk6BJyr2le7dN2uGwqNU6+3hgO6YMWoArDVjBf6El1XEUjHGHhf496bfrf6SWsrJLblFic0PCX3fWG7cyotbKawkw0RznzyWQBPue9V4ynzxMX0pwAlb/lT7kqWWGMtYrEQbXM8oPZnhvBCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2cO/UFwPtgKZ+7i4za7jpEfgdw3GdKSUDVR9/AYVkVU=;
 b=r67OathJdcgTyrWjT2gtltlsgJs9aRNbZAdblh5MV+RwyVupbp1NYWutlcKJb3HgokDAFhFtZm5TaQMdMjJscOvQ177PLlLuaNPEEdq4zn832ckbU/9X/a578nsmPBzWGB0o74ARZ0k/bBle+1FtYDgE2xP8tnS3VBgLwzCmZ6QSXdlPNuKFJSrTfI2qy/TYUBLrZTCf2p82LAM3uOXqSjjzJ6MRhBpVvuiaHyE9c9tGxXY7VhaDCkXtzHwad5KQ3cj7iJB5wtOamDAZcsHYRX5F9YP5MD15U2AxIy9OLMv91O15UBjQ7M4cvO3VRTl6bicYZgGyS6DtyGSqScY5Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA0PR11MB4720.namprd11.prod.outlook.com (2603:10b6:806:72::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.13; Tue, 12 Aug
 2025 20:45:02 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%5]) with mapi id 15.20.9009.013; Tue, 12 Aug 2025
 20:45:02 +0000
Message-ID: <f2ed5bd6-f3b8-4529-b9c9-28e05aae83f7@intel.com>
Date: Tue, 12 Aug 2025 13:44:58 -0700
User-Agent: Mozilla Thunderbird
To: Jason Xing <kerneljasonxing@gmail.com>, <davem@davemloft.net>,
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <horms@kernel.org>, <andrew+netdev@lunn.ch>, <przemyslaw.kitszel@intel.com>,
 <sdf@fomichev.me>, <larysa.zaremba@intel.com>, <maciej.fijalkowski@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Jason Xing
 <kernelxing@tencent.com>
References: <20250812075504.60498-1-kerneljasonxing@gmail.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250812075504.60498-1-kerneljasonxing@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0033.namprd16.prod.outlook.com (2603:10b6:907::46)
 To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA0PR11MB4720:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b838f84-5928-4044-cacd-08ddd9e11c06
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZlZyOGZqODBKQXhwWG10RGJBdkYxV1ZJODR2VDh5NS90SFpHazFWZStDRDBo?=
 =?utf-8?B?eUxNbFV4S3JrdURzRDM0MUx4UzU5cVJFUkZmRkp3YUFFVzh1dVlnWlV4MVBV?=
 =?utf-8?B?cTdRbzRaSTlxQmdKdEl5UERwWWJXY205RzhFVXpLdjUvdGt2SWJyUHNhSDk2?=
 =?utf-8?B?NzlZak9OQzRoSTlBSUJQbStHQUJ4aCtHb2xNVmlvdmJNTzlESkwwUUtNdHRa?=
 =?utf-8?B?UTg4aVJQdFRneVRNemozZm44WlAwb3VVK21IU0dwYU9xbTRRLzl6UldBOUVG?=
 =?utf-8?B?a2pNRzhKL1hRZGdsUHNsd21sTVY5OSs5MFpkVzRxL0k2U1NUeFFORlJMaTF3?=
 =?utf-8?B?c1N0VWxWTnZkR3FwTGxOSWwzWFBRd0ViRExyM1RRNFRwTFdQSmJVVVpEZGJE?=
 =?utf-8?B?NmJhMHdWZUtNNkxEV0Fhd2Z4S3A3RG90UThMZnpNOWZsRVBpNlg3OEVBOFZh?=
 =?utf-8?B?RmM5K0syYU5Nb3BwbG45UXdJakx3Q2thczFpeUVtS0UvQTRFSWhLbG44anp5?=
 =?utf-8?B?cHo4WWhVUjVyRFMzS21oUFBTVGkxTUExYzg1SjFjdUhrVkV2RmZDRnNLUmhE?=
 =?utf-8?B?NGQyNUtlS3JhR3VVOVNpZ2tLSUFERHp4QnIySXVPR0s0Wk14ZlNrZnZPWm1W?=
 =?utf-8?B?blJHTnRyT3JZdzlwU2JZbTM3K1l3Q2NFWm5TQyt2Y1hudDZwUVlCMkNIY01R?=
 =?utf-8?B?MGJSWGJKeDJ6cTlxTnpsdm9QSmZNYXpBKzE0S1VZVDk1ZXJpeGVSemFvMnU5?=
 =?utf-8?B?clhCRm0vSWNCMEUwV0xvOVJTMDdQWm1oZTRjQXNqU1lWZ1kwWDJTWHVDWS9J?=
 =?utf-8?B?aXJCR09OOStibjcwcDVBZWJmUTlMT244Q0JPNHNZcGpCQ2IrNFNLTVpYVlAw?=
 =?utf-8?B?NTZLcmw5QzBIb0JFeGJKOHFwSVF2VnJ1dnlCT2xEdlRQNHZ4OFdUQWJES0g0?=
 =?utf-8?B?czJuREpWa1JiSTExY1NYSG9tUzhkOTFOUGFYU3JwcVUzamgrU2RVVm4rekky?=
 =?utf-8?B?enNiazhqbndMMFNrRU9jZ1JNSUFpZTc4L1lYdC8vdGVNNFFKa25INTMzRnRr?=
 =?utf-8?B?QnI2OXNrbWliSEZZSlFPa0EzUzg0Si94azJTV0t0V1BoNE9iS3lMWnRkQ2tW?=
 =?utf-8?B?eFR2ZCtxVVlYRktqeDJGVmpPVUdMdHU5STRMTGFJcURDUkM5aGkzWDlCcnJQ?=
 =?utf-8?B?V0hoZ2tsNHUvWUxYRHhpK05id01iZDhvMThhTlltVkxoU2Q4QWxkeHRNS3Fh?=
 =?utf-8?B?SlYzR0hJU3BUYTBFOHVNWTA3WDVuc2g4NTlhcDBydlJBR1dpZVlLYXFjSW8w?=
 =?utf-8?B?Y010MjFMd3cwdlJmUHlzUU1yVUNKT1krQ2c4d1lPeWFuY0NRRzllVEpMRGps?=
 =?utf-8?B?dDhJRXhnZlRoMTJ1YmgxVlJ2bHdoZnZvUkVOdExDd3ZGRktWQi9kUnpKU2dH?=
 =?utf-8?B?UkgzOTlNeXB4RDJkVTVuNWFlNDlucHZKS01ZNk1ncnlZSWl4SXc1UEdTb3BM?=
 =?utf-8?B?ZG5wTXVFU1F3TVM1UG5FRFNpYUc0cWZUS0syL256cGNxOFc2S1ZUTyt2MTZa?=
 =?utf-8?B?VEVkVGJtVk5KbEY3WDVWdGtkS24xOTFIWDREc3FRM0hzSkF3N0xoNHNHZklU?=
 =?utf-8?B?OWJ5S3NWMUs3K1M3Z3JMdWtZVzZkY0x1Q3dQUUhpRy9Ta3VMaXNBQ2pSVEls?=
 =?utf-8?B?UWcyUklIRUpaTlMrNXd2bWlRNERHNFIxWGxBZnB6UGNHd1RwVHRERXYxVWV3?=
 =?utf-8?B?RHJRcXV2UldiMEhwT0FkNUxBa2VmODdqeEZ6TFVWbnlseCtodS9NU2p3dTB3?=
 =?utf-8?B?aHhJa1BBSHl2OHBKcDdZR2FTMEFXUzNmSUZzNVVDMVcrY0FmSlc3eXJQb2J0?=
 =?utf-8?B?Sjl1TG9KbFJzKzBRek9QeGNhQWdYRExXN2ZnZDlmaCtkdHQ0eEtHcE5ka1RR?=
 =?utf-8?B?QzR6bVptNFc3M3NYZ3kvaWV0akJ6eTk2aGlmSE10cUpnQkNjQ3ZWQnpzbHZU?=
 =?utf-8?B?dzFlSmRVa25BPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0VkUENnRnZ4UDlKTlN6WWFTampCd0NMY1NvN28rM0c2d0sxdFFiVEI4Wms1?=
 =?utf-8?B?WkxqRjBrMi80ckpWeHU5WW54dkFBbnE2YWtRcG9SbzN2cXNyUGZZR0swRUh1?=
 =?utf-8?B?QjZtalZnLzY5M2ZqSFJnQjlrTE9xSUVkbmtiU21rY1oya2JXVW1TaDZIWGlY?=
 =?utf-8?B?bXpNbENrSkhpcDFLYkxldFBoRFphcHJPUk5ieUs1QnVtbnN4S044VnJWNCth?=
 =?utf-8?B?OU5RRTUrTDRYNjFteXZNbzVTRzhhc0FBU1RzamJEU21JTHJpV1ZqN2lxTlVD?=
 =?utf-8?B?M1ZsMFM3U2swczd2Z2FvbWJIamRQN094UVZHK21ZZWhQanNrMVdDWTFvR0VL?=
 =?utf-8?B?bGFGRGdpZ09ZUXk2K3ZwYnJEZFppOXFPUTU0ZStQZ0x0ZHovSUxFUHhWT1J5?=
 =?utf-8?B?SUNvOG01YVFaV1FYRGxoKzFQd1BsQXlIZXFMU0R4QldtaTltZjR0VExVNGNn?=
 =?utf-8?B?bGdnb2prY0E0UGZWVGFHckVYU3Z0c1N6cmtuU1VXajdmY3NZM2F3TXk5S1JW?=
 =?utf-8?B?aE1lUkxSV2FpUXhGLzd1NFVoODgzb0NpTjllU09EYTdLRWNJU3JRU0ZaN0Fl?=
 =?utf-8?B?bGt1VUpYdWpRbGtYN3JNVUFyUzJ5ekFaOWNlUHNaUThMSkhTQk43VW9oL0RZ?=
 =?utf-8?B?SkthbzEvdEpha1hnL1VQTlplcmRCekZtaHpyd1hraTRCQ0pobzlVdzhZQzAw?=
 =?utf-8?B?VGhnSUdVNVZGdkZIOFpwdW9ReGpEYWUvNkMxMzVpTWZTQTdlSjdUSm8xelFR?=
 =?utf-8?B?bFF4RXlPdzAvUWhvZjJWUTdiUU53TnJjMDdObUJXSThoeVNxWXVobHpmczRp?=
 =?utf-8?B?aExOc3FYRWtsVWJmeFYvYjQyRFR1Yk9JbzlxWTJ3eG1laEh2K1o2RWxBeWxK?=
 =?utf-8?B?eWJ4MFhEN2U4eUI4RDJkMTRxVko1cGFqT2FhWTJWUjRYRWxSZkZTRUNSdHc1?=
 =?utf-8?B?OE9aTENpUXY0V2s5aXBLZWFPODh4Nm9vOEFRYmtpSDZ6U2l2RTFBdmpRcVIz?=
 =?utf-8?B?SWg5MmlmMU1OdmhuVGlacDBZb1J3b1V3VE1xUmJMa0c2Q0lEY3ROMlFocGt4?=
 =?utf-8?B?VGp5dUlZRUJXcGkvVDZSNHFHb29hdG9PUVFLY2kxblR0L2ZuZFVsZFhhRGo4?=
 =?utf-8?B?RlFIK0NiSkYrbnhaK3JJVUhyOGFXNi9HVUo4SXNZalhvTkVGdUtTazJnb0NJ?=
 =?utf-8?B?d1lyT0VZcUV1WlVpd3ZlVndtb3lTanZkVEhFMGQwcmVjTzNMRkYxTFZxT281?=
 =?utf-8?B?bThVanpDVGFrUFdqdVZxUXRlWWdCMm9KVlJZVllmUXdVMTdjZ1hHZERhSVJq?=
 =?utf-8?B?MzBreS9rSWFFdDRaZUdoQkplZit4bTZUM3Q0WkxVeDgrNytZS3BGTjFCSkNn?=
 =?utf-8?B?blMxT0VqaUpsNFRJRm9xNlpkUnR5TXNoc2RrRGFwR3JqUW1ralhTR2lOZk5N?=
 =?utf-8?B?THBxUTNJcjRSdVVLVTlSLzNZR3VETUNUQ010eUZLdTNTbm43YXpKK3NYd2Jk?=
 =?utf-8?B?cFFSVm50VWZrY0hLWVRsU2t1TEpsY1FPTUY1RmpZVURnRkVJZit6dTAvcDU0?=
 =?utf-8?B?N1JqWVdnZldPZHhXVVJyL2VoRjYwdkdTRjRWY0RzNUtZaWZUL1p3YmVDT25N?=
 =?utf-8?B?T1ZhZDNHNkdQQjVtSmV0RGpjdDFwdmtYaDZvRDZ3aU92VjZlUmZSY3ZtZFVC?=
 =?utf-8?B?V0grQnI5alkrL292R2pqaFhuQ0M3UjRoSnlPbm9zaXZCWkVlenlBcHdNcHZ5?=
 =?utf-8?B?R2JqdTlIOFJWYmx6eWdtdUJrVXZaaC9EcTlvbk80ZHdFaDl2R2E0cDBBTlV5?=
 =?utf-8?B?S1hETE4wOExqV3B3WmIzZ3htMElhMEV5OGxlaUN0KzM2dEVmV2hjSldVUHUx?=
 =?utf-8?B?RDIxd3dFczRSb3Y3a3Z0amJwUDZUMGFUbFRXQS9LQ09NMDFJS2JpVnBzN0d2?=
 =?utf-8?B?SnlxSzJ6V05HaCtjTzVXbmNaK3ZPWHJLSFRRM1ByR2NHTjJweXVCK2hBM1FD?=
 =?utf-8?B?aGgxajk0QVJqb3QwTVZVdmhHMGdtektTbCtsaEJwamtEZSs5U2lkUXhocWJO?=
 =?utf-8?B?SG82Z3c0YUZVMlY0cm9UY1BDelYvOUplUGh0YXY2QVlrMmE3T0R2cTljNVMw?=
 =?utf-8?B?WHFTNnFwOWdueTVRZkNPaXBXb0RRN2t6TnJxYXFsMjZoSmxkL1RQV0ZicFRn?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b838f84-5928-4044-cacd-08ddd9e11c06
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2025 20:45:01.9349 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8d4WnA9SdKPMoE5xTKIMpnNDQSHUs2fbVFmeGGIOPl8otN4b8bqDMhX+nQR1FhdLuXmbv0vMcsqv/RSDrBn3+nTq1fP+Xrv4D9RPGSk0NqQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4720
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755031507; x=1786567507;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/Vfmw9yuwjbqkNhRiyyBAcNqWP9GGYDsBmJxOkqJ5Rk=;
 b=cw0TFITVDwLpfzBE5DyuV34IaW6bhtCSzhlcS5863+9pWmGa62nFfQaD
 J3MNs1kfbIywILGtJrD+/y2xPIWpY46K1NVhHa8aOVBS90paMrGr8PqVV
 A5VFOcpx9ZrNIANdAEwm7ZdsRM8uBhN+RYe3NspW5FfLMicTaN3uJEd3/
 0QYWqq2EnHBE9VWaXkJ6qAwW1rMp3f878oR1QmtmlsO7lh6bRv73fBzHj
 Bc/w5CZ64j+p15MZdaCUkrjsdIuvybu0UzKw59Q2C4sBmpm04aLRl7daw
 vZjXcV1Blt4dol+ueLR1pO3zlCiyqw2b1an2zImqKw65xwk7MTzLqdh/z
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cw0TFITV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 0/3] ixgbe: xsk: a couple
 of changes for zerocopy
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

On 8/12/2025 12:55 AM, Jason Xing wrote:

Hi Jason,

A procedural nit:
iwl-net is for net targeted patches and iwl-next for net-next patches; I 
believe this should be for 'iwl-next'.

Thanks,
Tony

> From: Jason Xing <kernelxing@tencent.com>
> 
> The series mostly follows the development of i40e/ice to improve the
> performance for zerocopy mode in the tx path.
> 
> ---
> V2
> Link: https://lore.kernel.org/intel-wired-lan/20250720091123.474-1-kerneljasonxing@gmail.com/
> 1. remove previous 2nd and last patch.
> 
> Jason Xing (3):
>    ixgbe: xsk: remove budget from ixgbe_clean_xdp_tx_irq
>    ixgbe: xsk: use ixgbe_desc_unused as the budget in ixgbe_xmit_zc
>    ixgbe: xsk: support batched xsk Tx interfaces to increase performance
> 
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   2 +-
>   .../ethernet/intel/ixgbe/ixgbe_txrx_common.h  |   2 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 113 ++++++++++++------
>   3 files changed, 76 insertions(+), 41 deletions(-)
> 

