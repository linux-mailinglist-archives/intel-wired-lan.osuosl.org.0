Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHIsGGgtnmmkTwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 23:59:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B047018DF84
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 23:59:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BCA584610;
	Tue, 24 Feb 2026 22:59:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xYCc7hdW652K; Tue, 24 Feb 2026 22:59:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 38CDB8460B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771973989;
	bh=7EaMbFEJKVGnXgOXLnuC7SXVY6TmXj065Hta8Rueyl4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rLRJfiT8AX+bFPw3u4LK6xUAPCuWCMRHxX3N9RIVOg/pDua30JD9mJbCnsmy0/tGy
	 Uy0pjsdJ9K0tzK5doMzT5X75hr2y2uBHOINVlB3URXrrC8zy7cdkFsnypgOoYw3o7F
	 k84xWkPudOqg+lj2ylOmzfNhoLUZTPnTXdlf+XVJEZ2GEDlALt9IUwfc3jy1BeU6sA
	 PESkSKuFU4p64lxlZkffmduQoGWyB665YVlUaBI/TfjWO6dq+Ne1mJECUuxs/jioTz
	 kN06bnrXyG5RM/sMCJoEaVGWNhgnxgSYrV34UnRG7nszR/CnmxcxK1BR46419sAOsD
	 WzQAekfTpPf6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38CDB8460B;
	Tue, 24 Feb 2026 22:59:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 101BB23D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 22:59:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E6B80403E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 22:59:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CZYk1rvIreVq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 22:59:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EE2EA4007D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE2EA4007D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE2EA4007D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 22:59:46 +0000 (UTC)
X-CSE-ConnectionGUID: 2m40MPc4Rk6eEXXV61fABQ==
X-CSE-MsgGUID: aN315XvaRQiX+u8o3S0VwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="72881459"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="72881459"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 14:59:47 -0800
X-CSE-ConnectionGUID: 9pbX7DylRkSm0RiH8O/1Ew==
X-CSE-MsgGUID: diu1QKCHReiSQVQBmncqRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="246605807"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 14:59:45 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 14:59:45 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 14:59:45 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.57) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 14:59:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P9PBcyahgfINczlPgVzekqdWq5/0q4yej22/EyrFA3nXxkBWD7KjmMNPUQif2iQ76qv2FjI/ETJiwdvEl6uzi/DzJVxBerdbj2V/XaHDtkkA35wZM0TosJfa0SVlYdw8kUPipa6hg4dPVnEN3EBND0KWA3sfRbAe+jPbIbbq4Sj3IU08CR1dXjEPYwg8HHpWDAgVN2XJLAzxqQFyTeUHqcoGfNDU43Lk5nqmuK9lhZjWsc53ELIog5JX1t/Ze8ajPb41K/rEtLiVVMlZYRiP9XYnqsrJUcE9k9v2tuRSMPpr9j/xXAjBJGKoJijIiNLVFLoRGglbcipWhSgEz05fiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7EaMbFEJKVGnXgOXLnuC7SXVY6TmXj065Hta8Rueyl4=;
 b=WWNG2YBzExN4ZDDi5BdPL0MijayWDaZ2Jgqe27j9g8E2ss9YbBxklZFO/o0b5q2dR2awXB5w8vmBz1bttiWATBko3q2K/Qynf3BIIXlqik76MRSwpeXEMXouZTe0ik7gUJi9g7GlexB2ggHKOEbLeI8dJbyda3e1OPGJq+O2MuHET1JEE+WY0KBuKwl0zrV46c5v3aVUM4u7IXNniavguwKO0cFZ9Wabb79hc69oJVt+YUvELxeWDciMrjTwY9FpJy4tQtsJMo3XWR0HM8uz/5PPHr8sdZsB9uT7nghycXTAX/t9KMKmotjiOdt7Kb1An7P1if7iF/sbsahn+48bpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by PH7PR11MB5863.namprd11.prod.outlook.com (2603:10b6:510:135::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 22:59:41 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 22:59:41 +0000
Message-ID: <842bb101-d73c-4470-a01e-f49f96847370@intel.com>
Date: Tue, 24 Feb 2026 14:59:36 -0800
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20260220004027.729384-14-anthony.l.nguyen@intel.com>
 <20260222162835.23954-1-horms@kernel.org>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260222162835.23954-1-horms@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR05CA0030.namprd05.prod.outlook.com
 (2603:10b6:303:2b::35) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|PH7PR11MB5863:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ea3c3dd-54bf-458b-c951-08de73f86491
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NU56WGRBUlNBN3JJbXlRRmQ3b212bEU0Ri80eWVLZU5HSEZXN1JiQ0xSeWgy?=
 =?utf-8?B?UCtPYjdXYkxpZVhhQWRhbG5sZkNTQ281SVRBWXlRaVR1K2RyNERtVjl4YVRs?=
 =?utf-8?B?ZzBtK1daRERtdk9qTjQrZUdXZ0FSTlVWdmt1SFM5cTA5VjBtS05rUHowSXhv?=
 =?utf-8?B?anE5dVg4T2kxWnVxYXg2cmticXRyOFh2OGdpUHdOdEkrN1k2MnZrWnFkQUFj?=
 =?utf-8?B?TEhWbFpGZ3k1RXk5akFpQ09VNjlsdlQwVEVkaElTSW5aMGdmMnlzK1pleXJH?=
 =?utf-8?B?ZXE0R0IralpkWHU3R1hKeUx5NXBiM210SnJSV0F1eHZCMTYybjdNdjJvSFQ1?=
 =?utf-8?B?NXljbkRwZmlyeGhmNkhSZ2FlSjdCZUxISkY2MnlEWmZhS3I3ZGNBckozNERU?=
 =?utf-8?B?ZTB0VE1mVW5yckVVL2lxOEtYY1N5b05KWkpBSytlK0NqeFlJYnBhR1FQUVBY?=
 =?utf-8?B?MFJsbzlUYzhHczRWY3p4Vmw2cmkzajdkcjFVa0JkazNlZ1VLU0hzb2dDUVA0?=
 =?utf-8?B?OFNSbG9mNWFaNDFLdkw2UDM4YlhvVzFqQW5uaVhRd1VoMXBwUFMwQ3EwSGNz?=
 =?utf-8?B?L0hPRXgxTUV0RmttTExQS3k2d3NBTFRhYjVQc3MzUWtTdW9pL3Z0aHE5djh6?=
 =?utf-8?B?aUNYQU4rSktSbVBGS2h5S0lINW1SZG42Z0RSTWlRek9ZUVRBUU0xeVgreVFv?=
 =?utf-8?B?WGZXVXJXMXh0WWp6THNZUnhDUjl6QVNwOFRQMmJ5aExLQTE3NmJFcDZCbVdX?=
 =?utf-8?B?WlFFdVp4Um9PQXFTUytvRDNFZVJGa1B4aUxEdG5ibGc1djFOVXlHTCtWcWFl?=
 =?utf-8?B?TUJUSVVMVjlrWElwWk1yMStKc09mZEZiWlFKdEZPTGgvbmV5N01IU2tNTER4?=
 =?utf-8?B?UWd3MUM0ZmlYRmhQRWpHNE5jb2RLZVkxdTh6NXI3bGt2aGFlZHE1ODdSbEE4?=
 =?utf-8?B?Z0xWTk9pQjZIdjN2M2NyN1VvcDFCdHUvVEJvemN2RGExM0Q5QncwNUs0VzVY?=
 =?utf-8?B?ZHZnREw1dkxMdWh2Ylljb20xaVhldW1UbE9NQlV3bzBKbzdFb3hDQjRnVkxW?=
 =?utf-8?B?MG9JRjJZRGpXcmZ4YUtxbHIvREZQa3FFWEdzMU03NnljaHRuVVFSRGsyMkU1?=
 =?utf-8?B?RW85aHNMc0V1b0VSQUNjWC9seFlVZEF3MzJaUWdaemFURkFENk5XY1VaVUVj?=
 =?utf-8?B?bHZzVGM4dFVOaEhySUVXSDdQTm9sS040YktMalUyTFBqQUh4V3dSRmxQT3dI?=
 =?utf-8?B?V2hObjVwVnd2MDNvUGlUYjFzT1gxd001VWdSOXB4UUwvYUUwL1lNTjlNSU0z?=
 =?utf-8?B?SjlidEY4Q0FnZ2pGR0ViUDJScTg2ZXhManJEcVNjZzZobmdQZnlOdHBDSTBG?=
 =?utf-8?B?Zk9xMExIQVFvdlBSUHlTV25PV2VuR2YwS0Nzck9OU3RjNlhaMDBTU1g2Ym1C?=
 =?utf-8?B?YVkzZHNpWTBzNmVmSGRHNWVqbVNZWUlXdFNkekFUaW5GeFNNdVNtOCtMVW40?=
 =?utf-8?B?ZkRDNWtqOHN3YWpIdkxQM2FtUCtuSDh1RkVKdC9hZkhydWlVU0lFbGJRWWNp?=
 =?utf-8?B?bk5sbHZVMjJtNUFwcWtLajdpZDNaMzlQb2JqZnB1TnNLdGR1UDJnYzBRTGJG?=
 =?utf-8?B?R3JLNGxpQVEyVWl2ci9TV1U4Y3dtZGRPK29MTkVrb2daOUM0ZGVJd0dkUjh4?=
 =?utf-8?B?Qmk0UCttTFZpRitRNGZqdzNFTGRsVTc1cmRwYmxCSVQ1YkVLY1JDc20wWVRQ?=
 =?utf-8?B?MjFQaHdYdXphZmFDdXRIS0hmTEVzOXR1UE1ySkw1Z3pOTFN0VjVuVFdWbXVk?=
 =?utf-8?B?SWhXY3Jlc0VkRm9UcS9VdE5jU2lJUWlzc2xmd3g1MTBKR0RmbkhaOHdVZVZN?=
 =?utf-8?B?UEJQQzJKdzlxa0tlK1JWZnhIdmt0UDdHZFB2UktMVWJGdmpTYlA2Z3pnd2lK?=
 =?utf-8?B?NWFSNUhmY0JHODhuSXJRSVFVczFvVlkvMXg5ZG9JZUs0aU1QT2puR2RYWXNV?=
 =?utf-8?B?S2gzOEhZSUF4RlRlQWM3azlVbHdTc0s5ZXRNVnNoUGFCQTF3TzNCTjlOKzRU?=
 =?utf-8?Q?zfevp9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjM5cytGMlpmTzM2ZTNTZTFROWlSQzgzUG0vTVZReHllMVRtMmFPSnpobWVp?=
 =?utf-8?B?Rmh1MXFzUGdkT0hTaFUzZzFhYzk5Y0xpUHR0S1VUdDNvVzBSdlJuWEljeFNR?=
 =?utf-8?B?V3RneEN1cVpGL1pBbE5SNktBT2xCMzcyUUpxb2VmcnhPNVY5QmpaZVdoT041?=
 =?utf-8?B?em5nbUxLMzM1MCtkT05xa1ZSQXhpMnlXdXhvTWVDbGZwK0dBT05BZzg1akEy?=
 =?utf-8?B?MGxOZ09PckxrcjVEUUw2bE5vM2JOYWZSa0RLS0J2VnhFbDRRNit5d1dTTUYz?=
 =?utf-8?B?NmFaUTYvN21QOWRhckRTaVg5RXEvTlVVQ1pjZVFxVThiOXg4R3hpaDR5L1RE?=
 =?utf-8?B?YnN5RUZSSzN0RnFRc2VoWjc2bEJMU1g2Vlc4enlEMGRGZ1k4cVM0SnlZc3Fm?=
 =?utf-8?B?Q2JCQVcrNWxQOTh1SjJPRE92U0NDaWc1Qnh5RFRpZExjai9mSEl1eE9CWW1X?=
 =?utf-8?B?YXRtZlZiVVlSR05YbTY1TWlveE1KbDJGRG1YcEY0L0pVY0h3aHZRZlNwR21H?=
 =?utf-8?B?QVYrYWhyWHJBVDVzc24wQUV4Ukl4aWNsa1B6enhrNk5hWUNXNjdxcUZ4OHlO?=
 =?utf-8?B?NHR5VklpZ0ZSbXJhRjZ1MC9jUmhrUnYrc25yN2E3OS9CdzlXZjZkbTBQSTJQ?=
 =?utf-8?B?N2VHQ3kvR3FlRlNTRnNCeDZieFVUSWRJeGs2S21JdlFMcFFrY0w4M0Q5SHhS?=
 =?utf-8?B?M3pRSlQvTDR0RDVCYmY2WEFiZ1NRMVVna3ZrVzlEOWROYXRteEJiMTd6dXE5?=
 =?utf-8?B?RlZld0JidDIzVUR1UjlBR3NWZ054N3JKNEJ3WmFQempRRldUeFdGMEhlZTVU?=
 =?utf-8?B?cWkzY0h6eHUydm5GbHROY0N3N1RBL1k5ZXh6VGtYQ1paN1RHVlhKRDAwVE1J?=
 =?utf-8?B?NFFFZEJCUUNjMUw2K2hTb2J4N21nQzZaTHZ6bkNSVU8xTVlhUWVwbjJoSTJU?=
 =?utf-8?B?NmUzSVNEOG9vWldSRkg3cmFsbUhVWUowVnYydVlBRGJjeFYvM3M2R0dCTE5Z?=
 =?utf-8?B?b3cxTmVaTjFVN28zN2VONWowcktYVzZBdElsRnNPMUlSOWRqLzNsTW9jUWZL?=
 =?utf-8?B?bjVvN0lwdyt0aU1laFZYZ1p6UGtsLzhZaFhFUFNCVzdBUHZ4eWRUOTN2UlhV?=
 =?utf-8?B?T3dJVUd3bDFHRVlWQThRM2Nvd0JCYjVsK0lsL21oanpYRzlKdG1ONHZFWlNu?=
 =?utf-8?B?bXZaM2ZydEZLZzJaS0VsSHpIeWtYRHVhYU9XbVAwMG8ya1lwQzBqR081Q0Fz?=
 =?utf-8?B?VTA5a0xLdVpha1ZvQ1o1SGNoSHpnc1F0enpXdGNsS3ZLTW5lemh0OGpZcUFI?=
 =?utf-8?B?b082YmhYN0pLQWhKYjJlckFMNklVN1A3UzFSQzAwVGN1VE13bU9XREcwK1V6?=
 =?utf-8?B?Z3dOOEtvR2RITmwxY01OckpyaVdkNkh2a1ZyeFFZWTI5SmxkSXhUdDFHeUJr?=
 =?utf-8?B?eXRQQjZZbFZqZXE1N09qT25FRjFOZXBDUk5FOUN3WGw4N3Bpd1JGWTZySWxl?=
 =?utf-8?B?cTZIUkpzZlZweGdRRDFGMTNmYkZocW56T2dPT3dnVUR4cVRzMy9QMm8zclJz?=
 =?utf-8?B?eDNOUlEwYVlNdjBhcnA3SG1LL0xFd3A3Q2VNUU9aZEdMbjcyWHNlaVVlc0pH?=
 =?utf-8?B?YkFKZDhpVXZiV3paT0J4V3hSNzJDOXJqZEVqZUdjK0FuUjJpUG5MTnV4V21Q?=
 =?utf-8?B?eGRsYVJTSjROTld3elZqZWxOaHE2VnBTZTc0dUJ5RG5sSTlsODZjYWFRQkM4?=
 =?utf-8?B?VERaUFNOVVF0bXFOODNmVWNTaEd2RDZYOVd5OW4rVlpuUEVRRzRidE1QclZ6?=
 =?utf-8?B?dW8yVUIwQnFlK3EzMzA1R0hnZkJPSXRIVGhPTlNvOE5NaDR1Q0I1VWFsWVdJ?=
 =?utf-8?B?NzVmV2ZZdzA1ZFZPL2JWMHhjNEVwdS9HdUdpcTJIVFpSNzlHb2lONitaRHZF?=
 =?utf-8?B?OENRcnR3dW5mRjN5QmF1WHAzeW9GbVdsc1d3WENNUlBQL3hNNkVZT1E2ZjJ1?=
 =?utf-8?B?T3dhVGtLOXdObVRET0ZXNFdoZVhFbnJMemRqb2gyTzkzMXl6OXQ0dDBiblN5?=
 =?utf-8?B?V2w4OW9MUG5aOThTdVhFUXU2b1Bxb3dYWUJpOEY5YmJ1UjJxV2IrdW1iU0xQ?=
 =?utf-8?B?YzJHRmhjTFRPNWR1cytzRnVaZk9GU1RNL1UzVENobW1BR2dLbHlFWEIwc2VX?=
 =?utf-8?B?VzFoUmRvRUhnL1dsMHRtSDZMa0Z3WHM0RlFkY0lOQXFDeFNSR2R0VHdUMTNh?=
 =?utf-8?B?UUJYalVBOTBnYTBjd0hIQUszbkpGTjBGdHpaSkJTWUY0K1BsMjZGR3lRQm1j?=
 =?utf-8?B?djFqRUE0VU1Ca2g0bUt3N0R6cmM2enNSODJwTzcyUVc5ZTdtZDhnM3EzY1JU?=
 =?utf-8?Q?HFLJx5OSGSuD82cI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ea3c3dd-54bf-458b-c951-08de73f86491
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 22:59:41.1860 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +w2boIOx7vSZuPosCSUn+8lJyCjvVEChpzftK7bdB64CVMyR3kdkan0MdtWp/hkvklrqntqxvRbtauvlLy+TaJ1vZdo7nlSQvRpImE+CczQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5863
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771973988; x=1803509988;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4oGNHnitTzjMNxLX+GYKrtTDjeHMYZKxbjD7ce6l7bI=;
 b=BjrWOyaagCJy6azYfX6PwGMv4DzgVKYWds6NYbXcmX33AsGjtZoCiMZM
 fDvL16ybHY/UJzUaIJ63AI9uyLG1JX1E44oGF1WF2iAg0qGUGGkqnF06a
 OtEnFVBCj4Ay+niVJ7+5x/LRwWhVMVYftG21bVKNNgL0i4p4kyKySfqbc
 NClbwYfaW2dRecGZoFFebtmWeylR4As+OQqgx7kAe1hQ/5p/SUXcpVxje
 CVZ+TFmpl4wJvmCVJZcavmNP4gdU9us1ZaK1UC+aN9xAwKwfMTvBK132o
 Pqi+IF2NwFWD4+LupHS+fIEXNW74YBS4HAihlEAqwgkzARJjDcNOWrr/C
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BjrWOyaa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net,
 13/13] e1000e: correct TIMINCA on ADP/TGP systems with wrong XTAL
 frequency
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
Cc: piotr.kwapulinski@intel.com, brett.creeley@amd.com,
 emil.s.tantilov@intel.com, sx.rinitha@intel.com, brianvv@google.com,
 jedrzej.jagielski@intel.com, edumazet@google.com, boolli@google.com,
 decot@google.com, avigailx.dahan@intel.com, joe@dama.to,
 przemyslaw.kitszel@intel.com, Samuel.salin@intel.com, en-wei.wu@canonical.com,
 aleksandr.loktionov@intel.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 david.m.ertman@intel.com, pabeni@redhat.com, pmenzel@molgen.mpg.de,
 richardcochran@gmail.com, aaron.ma@canonical.com, kuba@kernel.org,
 sreedevi.joshi@intel.com, willemb@google.com, netdev@vger.kernel.org,
 joshua.a.hay@intel.com, stable@vger.kernel.org, davem@davemloft.net,
 andrew+netdev@lunn.ch, tglx@kernel.org, sridhar.samudrala@intel.com,
 vitaly.lifshits@intel.com, dima.ruinskiy@intel.com, rafal.romanowski@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:piotr.kwapulinski@intel.com,m:brett.creeley@amd.com,m:emil.s.tantilov@intel.com,m:sx.rinitha@intel.com,m:brianvv@google.com,m:jedrzej.jagielski@intel.com,m:edumazet@google.com,m:boolli@google.com,m:decot@google.com,m:avigailx.dahan@intel.com,m:joe@dama.to,m:przemyslaw.kitszel@intel.com,m:Samuel.salin@intel.com,m:en-wei.wu@canonical.com,m:aleksandr.loktionov@intel.com,m:michal.kubiak@intel.com,m:jacob.e.keller@intel.com,m:david.m.ertman@intel.com,m:pabeni@redhat.com,m:pmenzel@molgen.mpg.de,m:richardcochran@gmail.com,m:aaron.ma@canonical.com,m:kuba@kernel.org,m:sreedevi.joshi@intel.com,m:willemb@google.com,m:netdev@vger.kernel.org,m:joshua.a.hay@intel.com,m:stable@vger.kernel.org,m:davem@davemloft.net,m:andrew+netdev@lunn.ch,m:tglx@kernel.org,m:sridhar.samudrala@intel.com,m:vitaly.lifshits@intel.com,m:dima.ruinskiy@intel.com,m:rafal.romanowski@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,amd.com,google.com,dama.to,canonical.com,lists.osuosl.org,redhat.com,molgen.mpg.de,gmail.com,kernel.org,vger.kernel.org,davemloft.net,lunn.ch];
	NEURAL_HAM(-0.00)[-0.849];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,linux.dev:url,osuosl.org:dkim]
X-Rspamd-Queue-Id: B047018DF84
X-Rspamd-Action: no action



On 2/22/2026 8:28 AM, Simon Horman wrote:
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
> 
> For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
> ---
> e1000e: correct TIMINCA on ADP/TGP systems with wrong XTAL frequency
> 
> On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware
> XTAL clock is incorrectly interpreted as 24 MHz instead of the actual
> 38.4 MHz. The commit measures PHC vs system time over 1 ms and if the
> delta exceeds 100 microseconds, reprograms TIMINCA for the 38.4 MHz
> profile and reinitializes the timecounter.
> 
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
>> index 814698807f3d..ae35ac479026 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> 
> [ ... ]
> 
>> @@ -3905,6 +3905,80 @@ static void e1000_flush_desc_rings(struct e1000_adapter *adapter)
>>   		e1000_flush_rx_ring(adapter);
>>   }
>>
>> +/**
>> + * e1000e_xtal_tgp_workaround - Adjust XTAL clock based on PHC and system
>> + * clock delta.
>> + * @adapter: Pointer to the private adapter structure
>> + *
>> + * Measures the time difference between the PHC (Precision Hardware Clock)
>> + * and the system clock over a 1 millisecond interval. If the delta
>> + * exceeds 100 microseconds, reconfigure the XTAL clock to 38.4 MHz.
>> + */
>> +static void e1000e_xtal_tgp_workaround(struct e1000_adapter *adapter)
>> +{
>> +	s64 phc_delta, sys_delta, sys_start_ns, sys_end_ns, delta_ns;
>> +	struct ptp_system_timestamp sys_start = {}, sys_end = {};
>> +	struct ptp_clock_info *info = &adapter->ptp_clock_info;
>> +	struct timespec64 phc_start, phc_end;
>> +	struct e1000_hw *hw = &adapter->hw;
>> +	struct netlink_ext_ack extack = {};
>> +	unsigned long flags;
>> +	u32 timinca;
>> +	s32 ret_val;
>> +
>> +	/* Capture start */
>> +	if (info->gettimex64(info, &phc_start, &sys_start)) {
>> +		e_dbg("PHC gettimex(start) failed\n");
>> +		return;
>> +	}
>> +
>> +	/* Small interval to measure increment */
>> +	usleep_range(1000, 1100);
>> +
>> +	/* Capture end */
>> +	if (info->gettimex64(info, &phc_end, &sys_end)) {
>> +		e_dbg("PHC gettimex(end) failed\n");
>> +		return;
>> +	}
>> +
>> +	/* Compute deltas */
>> +	phc_delta = timespec64_to_ns(&phc_end) -
>> +		    timespec64_to_ns(&phc_start);
>> +
>> +	sys_start_ns = (timespec64_to_ns(&sys_start.pre_ts) +
>> +			timespec64_to_ns(&sys_start.post_ts)) >> 1;
>> +
>> +	sys_end_ns = (timespec64_to_ns(&sys_end.pre_ts) +
>> +		      timespec64_to_ns(&sys_end.post_ts)) >> 1;
>> +
>> +	sys_delta = sys_end_ns - sys_start_ns;
>> +
>> +	delta_ns = phc_delta - sys_delta;
>> +	if (delta_ns > 100000) {
>> +		e_dbg("Corrected PHC frequency: TIMINCA set for 38.4 MHz\n");
>> +		/* Program TIMINCA for 38.4 MHz */
>> +		timinca = (INCPERIOD_38400KHZ <<
>> +			   E1000_TIMINCA_INCPERIOD_SHIFT) |
>> +			  (((INCVALUE_38400KHZ <<
>> +			     adapter->cc.shift) &
>> +			   E1000_TIMINCA_INCVALUE_MASK));
> 
> Is adapter->cc.shift correct here? When e1000e_xtal_tgp_workaround runs,
> the earlier call to e1000e_get_base_timinca (via e1000e_phc_adjfine in
> e1000e_systim_reset) has already set adapter->cc.shift based on the
> incorrectly reported 24 MHz XTAL frequency.
> 
> On affected hardware where SYSCFI reports 24 MHz:
> 
> e1000e_systim_reset()
>   -> e1000e_phc_adjfine(0)
>      -> e1000e_get_base_timinca() sets:
>         adapter->cc.shift = INCVALUE_SHIFT_24MHZ (14)
>   -> e1000e_xtal_tgp_workaround()
> 
> So when computing TIMINCA for 38.4 MHz, the code uses shift=14:
> 
>    INCVALUE_38400KHZ << 14 = 26 << 14 = 425984
> 
> But the 38.4 MHz profile needs shift=19:
> 
>    INCVALUE_38400KHZ << 19 = 26 << 19 = 13631488
> 
> This produces timinca = 17203200 instead of the correct 30408704.
> 
> Additionally, the subsequent timecounter_init call uses adapter->cc which
> still has shift=14. This computes tc->mask = (1ULL << 14) - 1 = 16383
> instead of the correct (1ULL << 19) - 1 = 524287.
> 
> Should the function update adapter->cc.shift = INCVALUE_SHIFT_38400KHZ
> before computing timinca and calling timecounter_init, matching the
> pattern in e1000e_get_base_timinca for the 38.4 MHz profile?

Hi Simon,

Yea, looks like we need to do some adjustments here. Also, the AI review 
I just ran on this is reporting another issue that we'll need to look 
into. I'm going to drop this one from the series to not hold the others 
up on this.

Thanks,
Tony

>> +		ew32(TIMINCA, timinca);
>> +
>> +		/* reset the systim ns time counter */
>> +		spin_lock_irqsave(&adapter->systim_lock, flags);
>> +		timecounter_init(&adapter->tc, &adapter->cc,
>> +				 ktime_to_ns(ktime_get_real()));
>> +		spin_unlock_irqrestore(&adapter->systim_lock, flags);
>> +
>> +		/* restore the previous hwtstamp configuration settings */
>> +		ret_val = e1000e_config_hwtstamp(adapter,
>> +						 &adapter->hwtstamp_config,
>> +						 &extack);
>> +		if (ret_val && extack._msg)
>> +			e_err("%s\n", extack._msg);
>> +	}
>> +}
> 
> [ ... ]

