Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yL1+NzCAjGl9pwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 14:12:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A691124A9D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 14:12:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79E7B40A30;
	Wed, 11 Feb 2026 13:12:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jHa5C3iHK6Y2; Wed, 11 Feb 2026 13:12:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A97B740A84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770815531;
	bh=ZcV3r9MPfviPprZ8F110KyIwqjft2ww0GlQcX9fJTzY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lQ4DCtw5Pz+5cEIahZQPTQ++Zx7nx76xFbTjUgoNfGNxsYzPI9QnRB7MmtTTXUHic
	 V85ebKWQmqKvT0yKW2mw1DEp2i/hNXq9IkfkYxVcCrJljYim/vyfOi5hYsWNZTKBjE
	 Bze6CqBb/ErLSRT3WkS7nWBHKQNwi6hPoTIwKADxjFaS4kQOpfs6RWu/8uvu8qgFk3
	 c2l1rRmjpJrWRNOa0mLbCPYOUnxcpKuPrQPsHK7gOZa92MQcf+TTohQRbmDQQXVggI
	 qVSUizs+JY2biZPfK993eh1h+QGkKXDbPBjpMDQkuAPYLPUXc0eZA18TIPHSWaJX2o
	 W4D4wEkjajlZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A97B740A84;
	Wed, 11 Feb 2026 13:12:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2772323D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 13:12:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 213D983F55
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 13:12:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cP7ItxAK4NoY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Feb 2026 13:12:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 690C683F54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 690C683F54
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 690C683F54
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 13:12:07 +0000 (UTC)
X-CSE-ConnectionGUID: UN/46zLsR26qFTEbc+oTIQ==
X-CSE-MsgGUID: VXW2+5cPSoeDt41PD1N4Vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="71860243"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="71860243"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 05:12:07 -0800
X-CSE-ConnectionGUID: nlWoNJl+S8KQC5bsFpWL1w==
X-CSE-MsgGUID: r9qWYFLGTl+zNJiJXIlr+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="211842195"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 05:12:06 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 05:12:06 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 11 Feb 2026 05:12:06 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.55) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 05:12:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GGRK1BwfpGcaF1DBxF0fQ5ZxOnvmOojtyagYPQagbHeYzmO/M1XxpV2Vlsaz021+RwhDFJbFtWpf/AHbnk+hW5BKLsxIElpddaclAx3U95MwEMG4jdDjjGNlw77U1/ilEOt/R06YvQClL84yAm3XLQO5RBbc6mLrJiHnjtTQ5gObBnwKgSrFs0wbRpGZ3+18V+trykdMG+UL0NJdXugLHxazifitApSUk9nAu82HhMxF+x9vsdv1KINFSks+TjowRZrprj12KmxentJ2PKW7UQj34ZSOhRYiqgQoU14DO2eYAm8ryBK3ea/ToREjxumuK/9tW+uObfNB13isY6McBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZcV3r9MPfviPprZ8F110KyIwqjft2ww0GlQcX9fJTzY=;
 b=m6pkiJ3IAWuKphtnmqKV7khByg0QENcf5aZavJn8GGcb0Y9ZY5aJf43GxgIzmG3zC5Xk1jJXJMCBw/Lk5xUh7MwSvBzCwD3Dh9DGZWfQnnYn8zpwZ/1cGPiKdtYAbbgptRKL7AqH/p1sSHWFUSWzjIJuRdwTVme/Z8mG7vlSawtY7nMdEZgIA/GYjSXPJzENMp0tlL7CCh2vdp0UpglOaR7jpts29+CAiquVWgIANvoT3j4/VDaOyzn2twvL4cAcy8J0vOfdYpSUsaw1NfBFYZTKDbVxUqVpKDO31y6GeedLRQJKl1WsZH9Vo0DFf5+r9V55/tXKwvKVxr493V+eeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB6051.namprd11.prod.outlook.com (2603:10b6:208:393::12)
 by LV3PR11MB8556.namprd11.prod.outlook.com (2603:10b6:408:1b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.20; Wed, 11 Feb
 2026 13:12:04 +0000
Received: from BL1PR11MB6051.namprd11.prod.outlook.com
 ([fe80::6291:3487:3e68:2af3]) by BL1PR11MB6051.namprd11.prod.outlook.com
 ([fe80::6291:3487:3e68:2af3%7]) with mapi id 15.20.9611.008; Wed, 11 Feb 2026
 13:12:04 +0000
Message-ID: <745b1cd3-3e02-4d50-b1cb-0463ae6a9dd3@intel.com>
Date: Wed, 11 Feb 2026 15:11:58 +0200
User-Agent: Mozilla Thunderbird
To: Timo Teras <timo.teras@iki.fi>, Vitaly Lifshits
 <vitaly.lifshits@intel.com>, Todd Brandt <todd.e.brandt@intel.com>, David Box
 <david.e.box@linux.intel.com>, Len Brown <lenb@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <marmarek@invisiblethingslab.com>,
 <jeremie.wenger@edu.ge.ch>
References: <20260202103257.1972097-1-vitaly.lifshits@intel.com>
 <20260210131158.1055ad48@onyx.my.domain>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20260210131158.1055ad48@onyx.my.domain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0007.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::9)
 To BL1PR11MB6051.namprd11.prod.outlook.com
 (2603:10b6:208:393::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB6051:EE_|LV3PR11MB8556:EE_
X-MS-Office365-Filtering-Correlation-Id: 97377a16-0989-4ded-625d-08de696f2657
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?anZsVVhJRXFQK2RuMXJSNkM4alNSTjQ3bmJ6WlRkVjJuSWVTSmdMdFBaWm1W?=
 =?utf-8?B?YWpjNFcxQkNEem9XYmNQVFp5Q0V6eXlXdUZJaWpIZE82bXE1b3g2eGNXbWxt?=
 =?utf-8?B?OUNQMlc0QnNHL2hKdGdrVjgrdHVIYkY5Y0FEaVJIdm0zODQvRHZaZnEyN0hy?=
 =?utf-8?B?WGdOemJoczZYbUVRS2FYQTFLSjk4a1pLeC9xN0lQeW0vUUFyanNmaHlFdVBJ?=
 =?utf-8?B?aDVGenpsajhkOWlGTnJWR1lLN1JmNzc2WXg0dDU0bzkraDNyS1FSK2NDbTR0?=
 =?utf-8?B?WDhTWG8reno5Z0hnZWtUWVBuLzhVbzFNQUhndkV0MGhSQVd0V2xnRVFPUHF6?=
 =?utf-8?B?YkRzZC81MWtobis5Y1NpZHhGZmpPZmNOZnMycWQ3eklVelN0VDU4aFkxRG5W?=
 =?utf-8?B?V2xqajcyREpQb3BLd1RxQnVSSjFnNkR6UXU1WFNTRU10M2FnWS9pdk9KV3Mz?=
 =?utf-8?B?YU51ckVWTnhVS1NSOXhOZUhqQkV2M2Qzb1U1RVJDdHVqTU95c2p6cjZ2aXJp?=
 =?utf-8?B?WWhVeUpxZ2hqS2ltYWtUdUxvc3Y0aFdSWENHUEh3RkQwTWZ3cWo0TkxiU1A3?=
 =?utf-8?B?ZzBjK3NEMkRxSFI2VUlvSnFtWVVmaWQzTHRMTDV0U3J6TnZmNk5rZ0pvS2FW?=
 =?utf-8?B?ZXRrK2lBaGpzamVQMFd1NmJEaERtUHFUZTF2Sjg3TjhMSk9KMnZsWk10aDZQ?=
 =?utf-8?B?Wnk0d3FUanhSR2ZpdVdpYS83K2x4MStQODVBS0ttWTJLNEVaRlFBOG12dGFl?=
 =?utf-8?B?eW4ySEJBTHZLUm00Sk5hOVBLbmZaMlBTcjd2SmdwclJwSkdIdnZaSndBTTJn?=
 =?utf-8?B?K1ZGdDdVWENXaHg0eGpQMFg2NGlReVdIREFGeTNtOUE1Q2krQzAvUEVla0Q1?=
 =?utf-8?B?N2dsaUo4L3QwUER1QnIxMUtqUWhra2JlYnp2bEs1Y2gyZHlVRnMrc21MQjJN?=
 =?utf-8?B?ZFM5Y3p4UXFxb1gyQzRVNFhoWEdBc1MrU3QvUzhmOXV2blJNUm8wMzB4R3pS?=
 =?utf-8?B?OXBwdUhPS1VibFdTUDVrd1o3SHdvYTltNDhUeWZxRTlFZXJzd0M0MjhOc09H?=
 =?utf-8?B?MUJHYWwrNFlFOG1vbVpsSXFhUVdBUlN1ZHVsYlgva2RqR1RlTXRvWUozZjNZ?=
 =?utf-8?B?WXdidnVLSjRUTVNPMGxMSjNkOGQ5R05Ib29CaDVzQkg0OVBXbDByT2IrNFlG?=
 =?utf-8?B?WGVHNnYvbm1BQXU0UWJQblRaZHZlMkRsT2g4SDZBMHp0SUdBRVlGdnlvUkVt?=
 =?utf-8?B?YjhvdWRBVkpTWSs3dm5ub1NZNWlxK2U5NDZ1aTRXdXcvZCtxQTFNT3RuWVJU?=
 =?utf-8?B?ZnRKbFJyczBZRzA3WjBTdElUUlJFc2Vla0thQVVxTm13QTh5dFE3aWRqMXQ3?=
 =?utf-8?B?bkFZYUlNaEo3YWZaV082NHRkalp4YTZhVjY4RWsxRURTZVNBSFdUTFRZRStV?=
 =?utf-8?B?VGRMcnhTSlo2L1hGcDRseW9OSE9OOFREcXhIektHSFBXS05BT1BuVFk1eUhF?=
 =?utf-8?B?ZmNNN1pTZXNLOUpFTmtDallNTWYyMmJRWjgyd2JiSTJXeHE2dG5TRld0RUxF?=
 =?utf-8?B?SEltdEpQMkJEdEFBa0ZvSmxhM2pUNFFsWVVVbnNreXJ3ZEJvKzNNSEZWTjFX?=
 =?utf-8?B?UzJ0VmtEUG1FeE9hQ2VTUDhHSWhxRTZaaEx0Q0l2cVQyQk55VS84QzN4TXY5?=
 =?utf-8?B?R3ZRQ2E5dlJkdlhBQTBIUzV1N2pBVzFXSzZ6T2x5Q28rallWeFFUK2hQTVNX?=
 =?utf-8?B?Z0JXQ1dxcU9sZXNZWGM2bGQzMlpuZEFVWDlYTXR6dFBsTExyc1o4Q3NQNTFW?=
 =?utf-8?B?RXMvMEtWa2x3V3BlVnNsNEtManNOd2hwMEk5d0tCYngrOWFyUG5DcDl4K1lH?=
 =?utf-8?B?VXBsQ0JLTXdoWGhwWTV3bmxESFFIZC9LZFpoT3VCTXhCYzZxQ0svUGR5dE9o?=
 =?utf-8?B?akdXZzgrMmZXQVFiK0NGUlpZbHNaODBYamlQeFN1bk9pNzdKT3NoenlLZVA5?=
 =?utf-8?B?M3ZlcDJZQTZxODNDWUcrT2phSFJ5OVdxczUxMkt5U0ZJT0ljTWJmVFBFdWIw?=
 =?utf-8?B?dTByUUc1K1NINUZORFNFRUdDSzl5OCtYUjRyeHVzWHNZdlhCaTA1R1BFNUZY?=
 =?utf-8?Q?HLVw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB6051.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L3JIcmxyejZyRi9JU1RleVRhVHlWbDZnSEFGSElBYlp6aG5jeEhBdUwvbkE1?=
 =?utf-8?B?UDU3K29MZGx4bzJmRTFxVDNBcFk5dGdJbXoyM0RrbytnT0Z1bXZydTRpYktV?=
 =?utf-8?B?NVJiVVZIdGZYVUN6NWZTbXc3UmhjUGlybkM5MWJXdzE1VHVpNFBCeFQvdm42?=
 =?utf-8?B?L0Q1MUJJMlhNS1hSaHZELytPcElZS21iZXF0OFhTOFNTQU9ZY0FIb0x6blBs?=
 =?utf-8?B?TTJGdFVrWTNyS2dxTlFIZnBXZlNTMkppTnhnbnZtRXhpbDFsa2o2NWp5cXdU?=
 =?utf-8?B?NzZyNld6Q2xqZVlTUDRqQkt2QTVWMXZtM2NlcFVIQi9SZWZQS21EMHR4b3d6?=
 =?utf-8?B?OWpqS3ZucDJscElQS2RvaDBuQXU0SFhYYnBVdWNBYVNmWm1iOVE4SUl4R1pB?=
 =?utf-8?B?TFM0a29RZnZObFdncWZhdG5sZ0ZwUlNkcHMrZXNscVJOWGZxZDBYOFdaR1VN?=
 =?utf-8?B?S29sYmt4b00vSHhzT1dZbWxZL0szelBJeWpEMCs0alBQNlN5dURJSjI0bGdH?=
 =?utf-8?B?NFUraHBPY1NUT2VvcTA1QkRLMXltNzVlN3BtcDBwNFc0UDkxdW01Wi94bFlL?=
 =?utf-8?B?dGtXYkJ4YVppbjJ2R2ZDMndoSDlOSDJISlU2dDJaa1M4Z3lVYjI0YWdtTk4y?=
 =?utf-8?B?L3pQaEFhcXF6Y05wdzJQd09kS3hMK1pHT3gvQzlOK1dCMkV6RkdEdUUyS1da?=
 =?utf-8?B?dktwOUNOTFBSbWc4eWZyWW54WFlNMTBjRnZEUWZUSEMrWVVreHV5anc2dEpQ?=
 =?utf-8?B?NFVsekZNYzdDYm5xU3RDbnZ2WmFVUEkxdmdOT2hoT3gyUXh0OHNvZmhNdzVO?=
 =?utf-8?B?K3I2UjVjYldLcGtDWFUyMy93THkzSDNUMEVMMC8wbmNjMkVUbXVOa0RQM1lq?=
 =?utf-8?B?UW1JSEVLekZnNG45a0FzYUwySW1pNm1ma1orQ0lSUXduMWZEdEk2RXhRa0t5?=
 =?utf-8?B?akpTV3dQUjVaMnovd1NBeXJ2cXgvZm9WNXVTQ0JIZ3ZwU3FEWkVDcWp1SlI4?=
 =?utf-8?B?bGc4WlZQNXFKMmdNUnpOeWtWSHNtbDRBT0ExVGgzNno2dEpTUDh3QzI1Wjcw?=
 =?utf-8?B?eEFQZ2kyVEVwcng3aFR0cGRqR3R4a3lBNFBJWm1wNFUreTlxYnEyRkZGVDNh?=
 =?utf-8?B?dkVmMzFtUEJYeko5a0xNYWh1MGkvZVZwbEpnUWVhTi9iMkNCY1E0RUpYL0cx?=
 =?utf-8?B?cUhyRzRocXlpUGVqdW1wV0ZEaW9kTEZmZHlNRTlZZnVLSC9BeURjdEkveUY0?=
 =?utf-8?B?QnFoemNJd2l3QUUvZzZZQlN3SGRHazQwZjQvcnNrdFNaVCttWENLUWdHaW1i?=
 =?utf-8?B?OEs3ZU1CbTAzSWV0VytKWWJPdDZ2ZGo2T2toNWVKR3RmZzJKY1BmMzVlTlN5?=
 =?utf-8?B?Q0xGOVpqWkdUajNmWkhYZEtQNkRobnJQRmc5QnBRdlZNOWo4VXFzYWNJQ2dJ?=
 =?utf-8?B?ajhHeHNmTDhibDI1azluSkNuUmJpL0MwY1B1ZGVaMmtuQlNiTk1Mdk1aWGUr?=
 =?utf-8?B?VXQ5Mzcxa3ZPMHltYWxscWZqRENCWXgrZW02Y3hiUkRQbXZkUVhaN0JNeER6?=
 =?utf-8?B?T2FvOEVuY1p2VUttTjczb0I5eHhNeFoyelZMNUc4MWN2bDZ3TmcwVk9acEtF?=
 =?utf-8?B?Qnc2SUI3WXplMXVRZVN5NHpPL0psNUNzbjZNdW96OTJLNVJpTkNzcE0xYXFm?=
 =?utf-8?B?bFk1eVpMKzJhK1A5SDFaZ01wWjdaVTF6L2kzQzl6NnFkYWJnZldXN0F5M3JP?=
 =?utf-8?B?Sy9ucTVNZWQvQTN2Y0FsbWlnVVlSQnBBcU9jMEJZQnZLdWh5U3ExSFUvZ0pP?=
 =?utf-8?B?WnNjNC94SUdzaWdBQldiS05WY2FyNHdtY1dYY05GWncrditQK0VkeVhSMCtk?=
 =?utf-8?B?dHloMStnUW9DNnJ5UFhHWWZDMWM2em9rVEFiQTlzRGdoK3NvWWhLTndjMnpJ?=
 =?utf-8?B?TnhaMnIzN3lkUzA4WVJtWnJOYzBid1hNODgveDFBWVdkZjh1dzFkdEFZRE9Z?=
 =?utf-8?B?amxNeTZpV3lKV3FNNkdaVDRkc3creVIwNmdKSk9vT1krTXhnMGFxanJYQldS?=
 =?utf-8?B?T2VzZ2lVdWVQTTlyNUdoNFdRYlpUdStuaTVUTmFlbExUM3JnRzJPeTMxU0Ry?=
 =?utf-8?B?MTlmWk5ZZUFxVlVIcWh5S3hOT1VjNU1pMlptbmRDaGVhbklqdzd0UDlNeUxB?=
 =?utf-8?B?dW5YL285Q2UveS8rZVRuZ25Na2E5QlZtRm8xaE9OQ2liYzZlVkswRndmQzNX?=
 =?utf-8?B?dFJnZFIrMElrblVWSXJvWUpPYUNiYW9DZnpHMkpjVVF1WFdORFRRU1dVblJa?=
 =?utf-8?B?bVh4T0h2d3ZxQUxTSHJ2QmVuMVZIRk9uRGxlRTVteXdPS29BUTR3My9hcW5J?=
 =?utf-8?Q?BmOp+4RjufaUDjL8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97377a16-0989-4ded-625d-08de696f2657
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB6051.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2026 13:12:04.2381 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bgcs8Wk8HUZWlp9di/YQEIJJqsDhwYNwT0TeJwzmJQ/cmltjuTgTcm2dNfc5dbzKaIPbpIa6oNO5/0oAkXHGzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8556
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770815529; x=1802351529;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xwZRYDGdieagdCfd9UY7ctAZ/V09n5PKJrwrTJkM7LE=;
 b=gF5zvtRpy4GjWzDwK0BysTua/BL5ANrj7qHYcu+rPZ9QdJ+uSRrK1YVn
 Aay4ibTofKDgllt+U/E5bEaTI8e7dX9dbBIX5k9hPySM9Iu5/jNeiOKjN
 VAL4QK6KEUUocvpnOJqxYLMA1NgMEYvtQaWm9ifVymO1lt/a4v32XpYB3
 OOKs1PW3Up4QyPlxewlgcS5XwtHAtpqooNF+c3oo2cXVAxeqrNtCAWsiw
 g64U3k38BS2jV+VNJDx69POqN8+V4pqsqUIePh2wrCgtj+TPovgLl3Igj
 0A/KNO2uy/gQYwe84TUK37KCn+oORmlAL3YcJreWPywIYw17Tg7FbVjgP
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gF5zvtRp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: reconfigure
 PLL clock gate value and re-enable K1 on Meteor Lake
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:timo.teras@iki.fi,m:vitaly.lifshits@intel.com,m:todd.e.brandt@intel.com,m:david.e.box@linux.intel.com,m:lenb@kernel.org,m:marmarek@invisiblethingslab.com,m:jeremie.wenger@edu.ge.ch,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 5A691124A9D
X-Rspamd-Action: no action

On 10/02/2026 13:11, Timo Teras wrote:
> Hi
> 
> This seems to retrigger the malfunction on a Dell Pro 16 Plus PB16250 laptop.
> 
> CPU Interl Core Ultra 5 235U
> CPU family 6 model 181 stepping 0
> 
> Please advise if you can reproduce or suggest alternative fix?
> 
> Thanks,
> Timo
> 
> On Mon,  2 Feb 2026 12:32:57 +0200
> Vitaly Lifshits <vitaly.lifshits@intel.com> wrote:
> 
>> Commit 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
>> disabled K1 by default on Meteor Lake and newer systems due to packet
>> loss observed on various platforms. However, disabling K1 caused an
>> increase in power consumption due to blocking PC10 state.
>>
>> To mitigate this, reconfigure the PLL clock gate value so that K1 can
>> remain enabled without incurring the additional power consumption.
>>
>> Link: https://bugzilla.kernel.org/show_bug.cgi?id=220954
>> Fixes: 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> ---
>> v2: add comment for the PLL timeout value and revisit the commit message
>> v1: initial version
>> ---
>>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 6 ++++++
>>   drivers/net/ethernet/intel/e1000e/netdev.c  | 3 ---
>>   2 files changed, 6 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> index 13841daba399..8e88aa9048da 100644
>> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> @@ -1594,6 +1594,12 @@ static s32 e1000_check_for_copper_link_ich8lan(struct e1000_hw *hw)
>>   			phy_reg &= ~I217_PLL_CLOCK_GATE_MASK;
>>   			if (speed == SPEED_100 || speed == SPEED_10)
>>   				phy_reg |= 0x3E8;
>> +			else if (hw->mac.type == e1000_pch_mtp ||
>> +				 hw->mac.type == e1000_pch_ptp)
>> +				/* Increase PLL clock gate timeout to avoid
>> +				 * packet loss
>> +				 */
>> +				phy_reg |= 0x1D5;
>>   			else
>>   				phy_reg |= 0xFA;
>>   			e1e_wphy_locked(hw, I217_PLL_CLOCK_GATE_REG, phy_reg);
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
>> index 82d1d5fe51d5..8f0eb822610b 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -7755,9 +7755,6 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>>   	/* init PTP hardware clock */
>>   	e1000e_ptp_init(adapter);
>>   
>> -	if (hw->mac.type >= e1000_pch_mtp)
>> -		adapter->flags2 |= FLAG2_DISABLE_K1;
>> -
>>   	/* reset the hardware with the new settings */
>>   	e1000e_reset(adapter);
>>   
> 

Hi Timo,

We do not currently have exactly such a setup as you mentioned. I will 
see if I can procure one for testing.

The PLL timeout change proposed in this patch successfully resolved the 
original issue on a couple of systems in our lab that were previously 
experiencing it, while keeping K1 enabled.

With this patch, and manually disabling K1 via the private flag, does 
the issue on your Dell laptop disappear? I expect it would.

We are aware that there are some systems in the field, for which we are 
unable to fully solve the Rx packet performance issue with K1 active.

On the other hand, disabling it exposes us to a power penalty more 
significant that the K1 itself - blocking PC10 affects the power usage 
of the entire system, which, in turn, may prevent compliance with 
various regulations, such as Energy Star.

At the moment we do not have a configuration that allows us to achieve 
optimal performance and optimal power settings on 100% of the systems, 
so the K1 control flag has to stay. The only question here is that of 
the default value.

The PLL change further reduces the percentage of systems suffering from 
Rx packet drop. Choosing between a default value that blocks PC10 in all 
situations, versus one that deteriorates LAN connectivity in a small % 
of cases, the latter seems the better way.

--Dima

