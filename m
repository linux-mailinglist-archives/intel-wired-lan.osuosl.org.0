Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E9AD158C2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 23:18:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B1A660AC4;
	Mon, 12 Jan 2026 22:18:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DWbeEiXqvKDv; Mon, 12 Jan 2026 22:18:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33B6760B97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768256321;
	bh=GI1Zn7u+TKeVGwZcQjjgaWDYSJE3ZtyU7ApUnkecPdA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qtPw1AlIDcKOr8RvXlKMZpMoLdbzRFmYS3XGbFTqkZe0ePdNaEpRwxcW6jRX429di
	 VbkYtVj0bcRpRiuYf5E1ad+G8P8+F8Gs+Z/4grPtjSy/vYM8EqQ1EGVa3FvAE1DlQB
	 HIqJYjWvTrAL5P4PrcUvMOH16z/sCkvxT6YpRXKe5VVLjxi35QDEvHAcgLHKi4aNvy
	 cXnPwaW4tuagUPCVLzX952UNfbBP2FXVrGLSubSd4DEsPdoyfZfBhJppCiMEdjxgMl
	 p0iX6g0aPuKNoXfLn517PzRHH5X1u49u7RKyGiLP910agVt6YDSsNTWEAeLT1pqg2p
	 QYXhYT1GaLyUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33B6760B97;
	Mon, 12 Jan 2026 22:18:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id F36501CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 22:18:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E4D1D40217
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 22:18:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DlL2jC0B8H70 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 22:18:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0842F4018F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0842F4018F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0842F4018F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 22:18:37 +0000 (UTC)
X-CSE-ConnectionGUID: uDSQeG+fSWqQUjFwO+syXQ==
X-CSE-MsgGUID: lrR7PUXOSCycAObZmQiOUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="57093705"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="57093705"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 14:18:37 -0800
X-CSE-ConnectionGUID: C8JHn9FAQZa3u85baxeMhQ==
X-CSE-MsgGUID: oVUAZtT9S2+PeUPpOhV9Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="204115848"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 14:18:36 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 14:18:36 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 12 Jan 2026 14:18:36 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.17)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 14:18:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ID5dIfAHo6FC4v7waZ7OMH7FrLlCJlUlMkGpFw8AXGQ3x9EtycsbYeg55D5vVuHw3xv5kDOZ0rkTjAlLr3Tejxc+yLrdgeQNLnpLR4IzXypb4XgISs7VQ6hshFgPBFYYJSVWOTOMYAYKXpH3vyYmH1KHLuij1O9pCb1muwr415sBYzOa6jTC927eJ/bgpTqSML5rdSJtuXvGLvvB1DeUYL4MYTHi63v3YY5QoleAe2ZlOBVkpLQISlSAWDE7wfCX0nOsVSQkowxt/PC9iT2Qh3q/wH4TDi25v0KH6qxuOld1mzMLLBPNuNhAybvEEIJNx2Z2S9b9nG3iQnan61YIfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GI1Zn7u+TKeVGwZcQjjgaWDYSJE3ZtyU7ApUnkecPdA=;
 b=Uu0K2cgnNWU7dayTQwIVe1y8cVl7AIrzgGNLbSd2LnU/zADwO5T+xTCSAbOVSsbxAVy1uP8oFeU7zgvSClq6iazL3zYsR4sxUeDE/3JnnnzRJytML71/ISQ3+J9p6DkUrc1yLnyqbUGY3S9uF2EzD7QrswMym588kjIKdIsNJAj/wCCOJ0sejMyRsPx6w7ImbPp8qYpbrpVgJ+XsFcqwoxJSr0aRX8PipHZpw4O6AY28CDtvRFUzuGx6z9FGoY8f1f0BRU69WYJ5tu7o9YRePHz3yLn+5IJElvpvDu480orE0aeaopWFSLdsNskno1EkNGxsXjDuW6B4ICPUC4/HaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MN2PR11MB4582.namprd11.prod.outlook.com (2603:10b6:208:265::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 22:18:27 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9499.005; Mon, 12 Jan 2026
 22:18:27 +0000
Message-ID: <fea216f6-7956-4b30-a2e7-d8fa1be70742@intel.com>
Date: Mon, 12 Jan 2026 14:18:23 -0800
User-Agent: Mozilla Thunderbird
To: Jesse Brandeburg <jbrandeburg@cloudflare.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Tony
 Nguyen" <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>
References: <dddf6b9b-74f0-42cc-bf1d-5fc8b8d4df8b@cloudflare.com>
 <3d40d617-a31b-4a7a-86af-66d2c938c114@intel.com>
 <CAB1XECX2wzCqJVPBfxPeP_eddjNw1HwUjEj868EHzY=HR=iqqw@mail.gmail.com>
Content-Language: en-US
From: "Greenwalt, Paul" <paul.greenwalt@intel.com>
In-Reply-To: <CAB1XECX2wzCqJVPBfxPeP_eddjNw1HwUjEj868EHzY=HR=iqqw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0291.namprd03.prod.outlook.com
 (2603:10b6:303:b5::26) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MN2PR11MB4582:EE_
X-MS-Office365-Filtering-Correlation-Id: 5284bb04-38fc-4933-a162-08de52288178
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7142099003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bmZNamxVR0orU0xVQ3VuQXBrM2tXbDY2UHkxdHF0b3E5aUkrRk5COWYzbUlo?=
 =?utf-8?B?RmRvbE15STFadUhuMnpKckdwdUxraWg1Ri8yeXE2M2tWaHhyYm5RaDJsSzkz?=
 =?utf-8?B?clJ2YVovNGd2c01WNE1VekFkSmVoT0JFVUs4WXZGZlkrK2xBUFZVbkowRERM?=
 =?utf-8?B?K3NNNjlaTFZlVkt2Q3ZXTHMzc0E1SFdMK3RieDBKQTZ2TGFIYXp2YzlBWHgr?=
 =?utf-8?B?end0UmhpbFVtTzlQclFFWnRTZ0FCa1FKY2tCUTRMdzNucUZocFZvOWg4QnFK?=
 =?utf-8?B?aHY5NW85OWJZVzRia1VVZVI5RjJ3UVArdHpNckZWdk1SaTBFcEZRM29OUWRW?=
 =?utf-8?B?ZGlnb3E0NWlaWjNBWHV5WnorWG9odytsL1p1YXFqTjJtTkNXS2RDenB1MTJi?=
 =?utf-8?B?OWZpSDh4aHc0YUlGUmVPTGlmeEI1QStKemMzTXhPOWo3NnlPYnFGbVFVME1x?=
 =?utf-8?B?eFE5RS90WXZ6ZmFXZmt4YnM2Y1FkOEkvOW9XaGw0U0R0WkpLMlpBblJ3bHBB?=
 =?utf-8?B?ZHZMRFNsZm1kNnk2S0VkNjVDb1BTMzNWeUNuUjlhQzJ4bklXMngvNHVzSXla?=
 =?utf-8?B?MGcvaTBrMnhzL3lzeDVIZmI2RXFWUERCL2F4UXhDRUJWOGh6SWRxVC9hVkxV?=
 =?utf-8?B?Q2sxcmpKREMxTnQzSnROMlI3WEMvSkNvOFllTW1iaTIwVHphdkhXR1VsNlFN?=
 =?utf-8?B?RDVtSzAvZnRSeU5xa1JFYmhuZEM2Ynh1NEtSdEwzaGFIdU5zaHd5VUFHYjNX?=
 =?utf-8?B?RGk4aFMvOWtRdkxQNmo0ZjBmd0lGakFlZzhveUsrRlNoVzVRN3BaaTZzY2pF?=
 =?utf-8?B?cUNDUGU4emhidWRoa0lBbnZ1bFRJUkN4TzJ1WU9KTVVyM2c2SkJ2bzY0UTNK?=
 =?utf-8?B?RlJQTlhwVUkyL2lKWlRWOHlTR044czByb3hsTTBTTURIR2RQMDdKMUVzSytJ?=
 =?utf-8?B?Ylp2TFV6dWZLeVo5c3E0S0RZc2F2UExtM0ljZzlJSjdXcWJWWWlOMHJNNzl0?=
 =?utf-8?B?OVVZdXNTd3pEd0ZRTTcyMWx6N2lhakJLaTVqdkVXalBPalRtSXQwMHpVczJG?=
 =?utf-8?B?MWtRZm1KV0ZRVDBGeEhXdDRURUJFLzBET1BkSS9DR3lwckg1ekFBbUZWMTNX?=
 =?utf-8?B?L3krVFZwQmd0UlVTTDdhWXlzcGNMWGZ4ajMwRzI3a3JVTmdDQzlEMTlZMi8v?=
 =?utf-8?B?c0hnVjRaQVExREVNN3hhLzZWU1BCNjMrVGJoTExwYVpXNnJCR0lpNFdYY1cr?=
 =?utf-8?B?a09RUFk0RmkyT1kvdDNyZ0IyQU9va2hDSjM3Y2VlUnpqZXd2aTVYRmgzT3R3?=
 =?utf-8?B?eU0ybnZMaytaMldxZ1lzeGkyR29UblBjVTdzYkliOXlKK21BSVVmNUF2cUdU?=
 =?utf-8?B?RFBwVjl5T1IwRlpYSUpDeXdicnorL29WOHBWSDd4WnZEZ1B0NStvWXZwcWor?=
 =?utf-8?B?b2VxN2ZTbTJ5RFBvbEZMWGxvQTFLcHBWSjR3RHRHd1FHMWZiK0c2WlRJOTBV?=
 =?utf-8?B?MUJuWnpsNXVzS1lPcS9Cc1AySnNuVDJGMXQzMWxjb1pDeDhGOFhuaGd6S0g4?=
 =?utf-8?B?T0MxMm5hMytTbG9yUWExUFV4RWcrdWl6L1VXVDhpbUJUNmg4cWhOcUV6WlJo?=
 =?utf-8?B?RFdvVmo0aVUrRzdJOXV2TjgrcytoOFRUSUV3QjM4ZHM3bXRjM2RTSlNXSytS?=
 =?utf-8?B?eXM5WkpmUlB4aGlvak1GQXdQNWtRTUpjWTZScFZXZjRmVVR5a3JUaC8zY2pn?=
 =?utf-8?B?Yy92bUF6WVg2SXkycEJiTG9mTFd2TGJyWmwyaHJkaVZtQXRpd2IrZUlBQXFv?=
 =?utf-8?B?R1VUeUNRQVBoTU9VdE9BTnY0RnV1dTVFWXkycWVNS3RWOVRzSURlS29zQnpY?=
 =?utf-8?B?OW5zanJxZTVpQjBBZmdqYm03VTdsRWtNU0xZbzd1TGVLenZzZkY3VktvUlJx?=
 =?utf-8?Q?eGQ9vB2xdS8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7142099003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1UvTTdDTzVUTGhpTjV6UE9oRTZOYmwzQjMzbnMyS1M1aFVQbDJNM3QwSDRP?=
 =?utf-8?B?WFJZbjZvUDJYN1ljQjI3QXZHdmliSEEvc29NM3pOZDNRK0tRMDJsUEtyTmht?=
 =?utf-8?B?TWpxZHZEc3NpL21hSmJyMFA1UVIyNzdNNWdGa0xRcEVJMjBHc2ZzWGlpUWNo?=
 =?utf-8?B?TGhCTUxEQTVIYm9EZzNNNGlvUUovNFNzTk05VGV5aXFvUUtYSWNNTndwWHJX?=
 =?utf-8?B?SmI1S25HZ1N0U3d4WVk2dzdaeTFBSUhDd1BBdEZMOWxLb3QxWlAyTEs4UGEv?=
 =?utf-8?B?WFM5bzd3QTNKSzFNalJZUjA4YWx3ME90YmdvVmpjdTZuTG1DYmVUY3VoWmhJ?=
 =?utf-8?B?dXluc1RzdXFadHNoZ2VjQk1SNDN3M1hLUW1wazdpdURNbHhQbUpLb2hpOHp0?=
 =?utf-8?B?aUxmNlh6Ly8raVV2V3phUVRUWTNsbEpJbnJUMWdjOG1rRytMek9Qd2pMVDNz?=
 =?utf-8?B?dkRZRXBkNzlqdTZ3ZDRSdjRVNCs2MWYxYzlDQldGVXh2YTJ1bnlWOWhqdzdx?=
 =?utf-8?B?cy85SkNLK1RrblI0SXNvN2pxVjVtSW1vOCt1VFlLMmNwalNuNEZvWkE5NjY0?=
 =?utf-8?B?L3BYRlZISXFUaTcyNXNjWTB1dDhLTHZQMFJLRVVKU3pKRXdsbnVpWnlwK0VW?=
 =?utf-8?B?QVRvemhoRmJVSTU1eUhWaWRpQmdpYjhtL3l3bHBjUDZTY2xYSUdNMEs4Qldj?=
 =?utf-8?B?VkxvbVQ0Y3dueWx4SGJ4US9ZbFhlQmFtcVIvVkIxb3V0WjBUOGpYR0xSUVNV?=
 =?utf-8?B?TE1WZitnc2kxWDE4a212eXdpZEhQSVExNTl5S0QvczZuVzQwUDBvNTA4N2ZY?=
 =?utf-8?B?UE5FTVNUcHczSGdPM3UxMmozOGNmMWNuTGgwNmpLTDJobVF3a21aaHZSMHBH?=
 =?utf-8?B?dVM0RjFEMzF2L3FQTWFJWXdzM25tNTdkUmp0SUZqb1FBT2dvblJnZXRwam9Z?=
 =?utf-8?B?aHZQVGgxMkw4UndYaE9rQkhsN1UwT2k4UDN4VmxOWnN6eklxVVBHSzFCVTVk?=
 =?utf-8?B?Y2NtNjA3WTJsRjdRMldaMU0yRVhLNXM0MzdrNTV6V0VjOXlCMFhtNXhyU1N3?=
 =?utf-8?B?Ymx5Vk9VbkY2SDIva1luQ1ZEbVVrN1dlM0pQeHo4NXJnbGtoUVNrTmRlQ3hQ?=
 =?utf-8?B?bW9jYityOS9sUmxNVUVWK2VQVVNnM1lwT3BzTXJOSzFKdGJIOG51TUx3eWtY?=
 =?utf-8?B?ZnFUNFM1TGZrY05Ca2tWMDhMSEMyRk5xT2dCNTR1RUpoTXhoYzkwWHU1Zk1s?=
 =?utf-8?B?ZzhJMTNXVW5KNzQ1R3I1eGdWd0xXNVVmazZQNjZneGVRNVVaeWpzQ3p4VjRQ?=
 =?utf-8?B?WXAwN1JuMU1IK3UzUFRTb1ZSdmZwS013blBVNWMxSjlUdDlYcFkreGJSRDY2?=
 =?utf-8?B?eGRmNkNhZzUwR1RQNFRZd0llK3h2M0JtY3lBYnMyYXlLeFV3ZU5FQUphZUsv?=
 =?utf-8?B?NzZBNlhnRFI3RHpCbndGZUcvejlSZ0xlMDVOMUcyWlZIVG5tcUtCa3NUdlVX?=
 =?utf-8?B?bGh5QjA1eUZMRUFQd1NORkNrdlY3MGVFY21KMC85cGkrZGlzWWprUFZLVEFQ?=
 =?utf-8?B?dHdGOFNyN29LTHcxYjcxN0J4MGN6d2hralc5MVpHV2tFempQcFQ3K2VFUGVU?=
 =?utf-8?B?elZiWXlkajJaSFIyZkRKWGpQcWpWaEI0RHlsTTNWZkxiRXN6bE1vaXlYSHRG?=
 =?utf-8?B?N2ZERHdiRnB2TllYWUxHcG1rYWZvQW0vVFNOM2QyV05lMkRuWWFXWmJ3bDc3?=
 =?utf-8?B?OEM0M1M0ZS85bkVVYmtyNXZpbVZCUExTaWxDT3RHYTgxclBXTWFXSHU4Mldv?=
 =?utf-8?B?VGFyZ1E4OWlleXEwZ3NwUG5vdXBHeTNVSEhkVjhNaU1kcEd3TkFXQ0pIblow?=
 =?utf-8?B?TVpqVG5GTnVQZ203RmczMWZLSkl2NHY2SXNRQ1FiTnBOeGtCcUNwVi9KYkRa?=
 =?utf-8?B?TlR2b01uaGlnRkFYbzVNOHFVWTNTdU85c1d1UXJwUjFZdjcwMlJySDNLS0FO?=
 =?utf-8?B?VGpGdE5pUlROYmFnK0E3U2lQOXllMGw3Y244cW42dlpWVW1DamFJaDlhcmdk?=
 =?utf-8?B?V1Z6eDFHVVpYSlh6dEE0NGpYRVgxTkRHbnZISTVRLzk1bUV5WWtzL002WXhL?=
 =?utf-8?B?UHIybGo1YU9MeHdsTnhiL3NjVEpEK25JdmRZdy80NlBWNFZKNmJOdDJidW1j?=
 =?utf-8?B?U2M0N0QzRmlCNWdhSmM1cGl2ei84UnFuUVVtTnpxcldNbmdtTGgyN3k2a05Z?=
 =?utf-8?B?a3VnVndlOGEvRnFhZmlBTXRXVSszSFlYSFJaNFVCdHZYZ3FzTWNpRlB2OWhC?=
 =?utf-8?B?QlRCWEJWTkVvRXNyN0EyYlNuQmdGcStSZWM4d2NVbDdpVVFTalpCUEw5ZWxX?=
 =?utf-8?Q?box5v9lZUlEHkFFM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5284bb04-38fc-4933-a162-08de52288178
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2026 22:18:26.7072 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TOCYCSjr8iioHWbz7vqr6XXeZF9bnt+XWXdrP22fm/aCmTrMRotuf3sJ1XX2EF/oippw6rA3dxVoGV8MjuSih6KCIAVL05oaHyc5dW21WAM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4582
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768256318; x=1799792318;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DxdhUWXcy2IvH1jdugyd4HrBCohiyuQBTCm4r+6OnBs=;
 b=ned1L6xW2Yf7/dp6sXIsEqFzQtGaLndkeD6W3skDgCHoDLWyQoDJPbNm
 yjYSbES+9+WmxZQEnhh2iTl35VU2YH676XnXebwijzZy7Y7MJN1zz4D3L
 35mHOnM4mXa+kChvCY8S4V7qCFEZjHKbgWe3Y6or044nYlg+qrXthxFj1
 M9rJgKSMtt26hBNGd+6q0aJxeBRboieJSIajzDEeZOKZAIEuHHKqM4zTi
 X31fT8rs1W2svYm5WH5QPQZfMtiaJ53slx2nsin38ZUy2ePM54dc5Rrqi
 UvN9pvGVR+wfaWMiXbcStfYTYyIOMa6VH5BXUeJrWm04VgzBWXPV2IXiQ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ned1L6xW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] BUG: ice: E830 fails RSS table adjustment
 with ethtool -X
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



On 12/17/2025 3:32 PM, Jesse Brandeburg wrote:
> On Wed, Dec 17, 2025 at 3:14 PM Greenwalt, Paul
> <paul.greenwalt@intel.com> wrote:
>> On 12/5/2025 11:37 AM, Jesse Brandeburg wrote:
>>> Filed at:
>>> https://bugzilla.kernel.org/show_bug.cgi?id=220839
>>>
>>> Kernel: stable-6.12.58
>>> NIC: E830 100G dual port
>>>
>>> When trying to adjust RSS table # of queues on E830 with
>>>
>>> ethtool -X eth0 equal 8
>>>
>>> we see this error in logs
>>>
>>>    [ 6112.110022] [ T303140] ice 0000:c1:00.1: Failed to configure RSS
>>> hash for VSI 8, error -5
>>>     [ 6112.528002] [ T303170] ice 0000:c1:00.0: Failed to configure RSS
>>> hash for VSI 6, error -5
>>>
>>> This command works fine on E810 nics with the same driver.
>>>
>>
>> Hi Jesse,
>>
>> I have reproduced the issue and I'm looking into.
> 
> Great, thanks Paul
> 
> Let me know if you need anything from my end.

Hi Jesse,

A fix for this issue is in review on IWL, "[PATCH net] ice: fix setting
RSS VSI hash for E830"
https://lore.kernel.org/intel-wired-lan/979e42ca-66fb-4ca6-b68f-c10b4e441369@linux.dev/T/#mf07d85c072f472f8add658f2cbeba8de79ba31b9

Thanks,
Paul
