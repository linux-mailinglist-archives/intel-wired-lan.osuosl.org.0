Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF2D90AC9A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jun 2024 13:07:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 964A081370;
	Mon, 17 Jun 2024 11:07:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6XvjjY-nw6QL; Mon, 17 Jun 2024 11:07:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 217C681493
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718622460;
	bh=SAPIRuCST+hvQThkITcmAUMdb5EvdZnawkCrpSx2mEw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dwZ0kYrClkKXcrY1LM1KwPNhZQ4fdZMaP5WD7f2tTnm1XZ7vQ+ul21zaJJ6KMxMAi
	 r1BBorRDms9NmxdgzknazU7x5E6at/4GIgWPnpMiV6QFUu7z9proT8xagTT1C0opQ7
	 qyN3GfWtVD7GRs9G20qgie99NWuEDZuQK/OguZD9ujBQ/xu1MNDe6y9H3hSU2U1YcC
	 VvZZbt04MRGaH2+JHp0plapOSZRb4Om46hNpCC1ZCIwkwVVIgUzsakdftDRaIoj88H
	 V0rSrMVUqePvQSAh44ovW0QPU7CBMzbu+Hmi7A2SWeOqMSBMO/wjVr2/7nLgdxpYOK
	 ahEaAbPRI1KCg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 217C681493;
	Mon, 17 Jun 2024 11:07:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5A3F1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 11:07:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C14F94053E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 11:07:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MQZz6_f7GHLv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jun 2024 11:07:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6F490404BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F490404BF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6F490404BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 11:07:36 +0000 (UTC)
X-CSE-ConnectionGUID: HEhq2wq3QwqLkX5Nydosvg==
X-CSE-MsgGUID: U0e4J+VyTBmZrrbky9KKbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11105"; a="26558206"
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="26558206"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 04:07:33 -0700
X-CSE-ConnectionGUID: h3NKfhBHSVu3LFi6GMvtgQ==
X-CSE-MsgGUID: d7Nc3DETRJeCvJL0tR0WUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="41104941"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jun 2024 04:07:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 17 Jun 2024 04:07:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 17 Jun 2024 04:07:33 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 17 Jun 2024 04:07:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W1xry0pZDEO+GHJfBk8rLuKeeXA4kb5O00zMcOO3ZvYrlGGgVWCcvQ+lLSlFw7m6wHyvnxHrv9rYXa0GRn1Czs8FuyoPP4XW4UZmD0WELWpwGMgXkLjDB7uoWgY/oqfdnHmUSYKhd6Byl8dIY+J0BS90SJ5pY1Q1HkF/0K/vF+3EEgb7djjCeLy/TbPNExkxw4BJL4D9TCm8JStGKvLBNHuUsWF8JBCjxhY7CFv4V98HEb3RojcVG5RGuDYr0hN4lGXGCwTLKzRFiOvrojZdqCdDimLhKjZhHxTSZQMG4VjzaIchE3WeZ5J95WLiKFgAz5Xz0M92lN9dqTtmNCCuzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SAPIRuCST+hvQThkITcmAUMdb5EvdZnawkCrpSx2mEw=;
 b=fw9mjVafxJdJc+E6hIDQTX/W2QvbJyY0EWh2Jm1J7ThyX3E0P7T7UQxBK2ogJKKyPiFX7SYvMKE7GGa8hVpKSf8n+EOkUZB7Xkpq59Kw4bUs1k/2zQFPHQlA2JMGXuXv16Lv2/lh6BA60VU9GF38sh2USvgsNDSOBgtRzqzpkAbwZHbCJIrRdn+Rs1vJzMJpyRiGU9IIDvvb9cFazB17o2wDN/yljutR2/pZUWc0Qq7rz1aboQ1si8iPecHdVo7vh+nPvhgLTdxs4OlfmjUkOI3nD3WzyOU2FlYekWxIWg5/lzOk7XDpgWNcPRBMOaKdb577HTEBnBmd7ApA48uhqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DS7PR11MB5966.namprd11.prod.outlook.com (2603:10b6:8:71::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7677.31; Mon, 17 Jun 2024 11:07:30 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7677.030; Mon, 17 Jun 2024
 11:07:30 +0000
Message-ID: <ad06d2bb-df1d-41cd-8e5a-8758db768f74@intel.com>
Date: Mon, 17 Jun 2024 13:06:30 +0200
User-Agent: Mozilla Thunderbird
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-12-aleksander.lobakin@intel.com>
 <66588346c20fd_3a92fb294da@willemb.c.googlers.com.notmuch>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <66588346c20fd_3a92fb294da@willemb.c.googlers.com.notmuch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0256.eurprd04.prod.outlook.com
 (2603:10a6:10:28e::21) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DS7PR11MB5966:EE_
X-MS-Office365-Filtering-Correlation-Id: 02fc73ba-db65-4e8d-e478-08dc8ebdae2c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|366013|376011|1800799021;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L2NQUTZpbzgySWo1YlZMSTB5TlRKMFd2dG1NaXgwZGMvR2o3OTlWcWJXRU44?=
 =?utf-8?B?RU9QWXJUYms3cUNtbmp2dHh0QjdMRzNlZUFEMSs4N2V1ZmphYlpnN3ZXcmIy?=
 =?utf-8?B?WVRsSEtDdkhXM1NjcCthUkJoNVdWcWpWWVpUTE5RZWZ5REpINUlrRnVDN3Zk?=
 =?utf-8?B?a21XVFpINm1SWkJxNmxMVUlza0VLT25QcEd1QTBGTEViL0F1ZFp4dURHNmVG?=
 =?utf-8?B?bzg1OGFyZTlyYklMSEhsR3R6Z2tWL2NlZmNVcTBsSEFrRjdRNk02MkZhUUJM?=
 =?utf-8?B?YjNsdFlFVmVsM3VMSjZtL2lZYy9nTDRML0c0b1VwaERLZG1YMmtpV1VPQ2Fu?=
 =?utf-8?B?d1JCMXpGZTk3Sy91Q1FGb0tCd2NlN2M2Z0l1ZEF5R1l4dnl2OENFNExId0dH?=
 =?utf-8?B?OVFSWFlYelcwYmlTUCtrNXlYRU10S1doa1NvS3FIMm9oTWVFNlFrU3ZqYklq?=
 =?utf-8?B?c3VLMXNvZkgrSUFQK1ZNQUVLSDJmSjEwQmp0R1dWaDV5azB5N3FuYkRDa3Vr?=
 =?utf-8?B?dEZieDJJU0NCdFh4aEJwVWdNaVVmNGpId2pSMS9tNjlXRytuVy92QmZFaXp4?=
 =?utf-8?B?NElyeEZIbjlxbGhxYnV1SkF5Q0RpenV2QldOUzhidjlSQU5GZGFkWGhhdlQx?=
 =?utf-8?B?aGdGbW5yZTVmV3RKTytySmR0NVN3c1dTUU9YTk51RG5rQ1VjS2QyVDNWODU2?=
 =?utf-8?B?Vi9iWkZTNlJRcm9hRHd4R2dNdkpJSlc2Vk1LWUkvaXBOT1NST2doZnpad1kv?=
 =?utf-8?B?bkJZN2R4QnFWOGJ1VlpwTG9uWWxZdTFyeW5XMFZZZHFjQklabnJuS3NYcFEw?=
 =?utf-8?B?M3owblE3VjJWb3NwaFRHQ296bGMxeGY0bDlvdW5rL0MwMDU2L0ZjVUpzTERR?=
 =?utf-8?B?VVl6azFyT1pHdThnNmZ3UGZTaVdBQW9iYnlia3JaMDlDNVl4QXptbGZPTWRF?=
 =?utf-8?B?VENoNWF1b0RmL2hyaXBxN1dRQUd6MWJFNmJ3NkU0SmEyQjdFZnVjM08wbXl3?=
 =?utf-8?B?akpoc29JQ0ZwOWRhMms3SHY4MFk3T1pDU0hDUUpYcG9PQVlOQjVlU1huVlFu?=
 =?utf-8?B?bXdnSUlQZmR6R2M4bXFTZ1QvZDlhOWhDYXFieHBQb1p3QlNXYjdYeDVITi9I?=
 =?utf-8?B?NStIbUJnWVZLbEhPR3hJUEN1ZEdJaTdtN0l2QmpTZDVnYnp3NkExSjhHTDJJ?=
 =?utf-8?B?RTlCVDV6ZUpjamttRUdsbUl0VmtCM0pkSCtpRmgrMDhmK3phTktCSzdXSGt3?=
 =?utf-8?B?Q1RzTVdIR0xneForYndDS3pCMDgxU2czaGN4QWlWelcwaUw3SU9SV1B0U3RB?=
 =?utf-8?B?ckVoV1BBL2szc1VWY0VvRXkyZnFRaExQQWJKa3lYMkpScExEOGNXSjJnN29D?=
 =?utf-8?B?eVNSUHljd3ROMXZrb2drUWhCSTVWK0lTdWcwKy9Fd2lpbmNSUjRTQi8wdVk5?=
 =?utf-8?B?WFhaeUwzeTdZY1lDajRQYXpIRVF2aURwelBEQnR4Z0lXMC95Ylh6eTVLek1C?=
 =?utf-8?B?Tm91NmJTZVcvZVZMSWJDd2srVTRINEcrMWVPWE0wLzh0SVR2NzYveTNGVnpv?=
 =?utf-8?B?MHE5ZDhxdmhrWTZVWlREVzRRWkpCOWRRNjZHS2RXZ3lUU1oxZnM4RmJPKzJL?=
 =?utf-8?B?cUJuRzJ1STNUQWVXZTRIa25uY25KRzFwa3NQclM4OTBQeEE0NU50d2kvSHg0?=
 =?utf-8?Q?5H2VhBYyN0nTkjsx3ymB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(376011)(1800799021); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWo3bm9DeXhxSzdxUEtzYmZHTkt1dWlXb1ZMN25FKytQZXVmbVdkSGR4NUFk?=
 =?utf-8?B?d3BCSWZyUU5ETXRGQy85dEdvQVkzQ3kxRlhDdmFJUHU5QUJxcm1YeE9XYXU5?=
 =?utf-8?B?L2VCN2wxK1pXVVdnWGJUS0RRQjQ4cEZ3N3BOQzhKamQ2azErazIzMUh3ZUpq?=
 =?utf-8?B?KzhXR1NZQ2dqMXRzL1RRMTdpMThXbStwaFJaaWl0cnVoWlZFR2NnRFNabDhw?=
 =?utf-8?B?OTZydFdsQVU5eXpzdExVNTAxWmt4VGVoNmtuUk5GZzEzTUxsS1V5blR0WmN5?=
 =?utf-8?B?eEc1bkxFUkN1aWRnRWw1MXpuU3FTZlIyNFBScUJRQUZvLzZYVFliN3dQTm5C?=
 =?utf-8?B?KzVNdG8yNUxLbW5PNGh0ZnZLL3QzK1JrdnlTTitqeGxQYjQwRTc0TGtxTXY4?=
 =?utf-8?B?TDc4eS9VM2hlaVRrLyttZkhBMisxclVXcWh0c3g4dTE4Ym10VXJNNTRJQ1hU?=
 =?utf-8?B?eEFHeGMxVDgrblpGbVhGTnljRW4wTG1WTUdMcWpkMlM1TEpOdk9RazBpOEpp?=
 =?utf-8?B?L0ZiMzFHamt4NU44SVB0OFBKTXYrdXJZYU1rYUh3cUZ3QWl2UVBVNHQ0TmlV?=
 =?utf-8?B?eEM4d1pDVlA3T2d4N3dwQXpKQllnVkk4YlV4SXVQaGkrTFhlUjNJSm9KUjFN?=
 =?utf-8?B?QmdjdnlSTStOazBhcFh6bXlTeDJuTDBsVzRwTmJNTEpmUEo4cTlYK1ZLNzBB?=
 =?utf-8?B?NjRnaUZTcGQyMGpPQnRnU2F6ZFpvNytvODJoUDRNT3gyQzRQdjlTbTJ2UE1V?=
 =?utf-8?B?QTZEMklxZ0xCRlNNY0UyT0JUaUVEK1RLb3lnK1drcXZhZVYyei9zcDFSUHBS?=
 =?utf-8?B?S1lMdXE0c3ZsRTA1R3ZYRVJ6R3VUYS9XT3JQUVJTVTYrUEdjVjZHSTR0TVB5?=
 =?utf-8?B?eWttNmJQZnBuelBtMWxybjh3bzB6a3NFTEpxRjhJUjBNQndGQWdINHQyOGM3?=
 =?utf-8?B?a1lSL1dyL3F2aC9hVStjejViUjdnN3pxNC9EL3llZVkyQ2pmdHhkbkgxNEo0?=
 =?utf-8?B?V1NESzV5VVgrZ2kzV2RKdThSVXl2SmszS1VnU0o0amV3enQ4ZHNXZzIySUxl?=
 =?utf-8?B?VjdNTEhHajh4cEs1RkRYaWpUL0U3UFU0OWxLeUYxN1NyRGJtV1hTSkFtcUxW?=
 =?utf-8?B?VjN2L3BwQ0RmSXdaWnJHWCtEZUF2VkhadmRyVkNXZXVsTHY5ZkRMNTdpamhp?=
 =?utf-8?B?a2NJZElQaEhUY2NrdGxPNWF2QUhNZ0xpTHZVdnM0Wll6ckJNdWcxVmkzaVVo?=
 =?utf-8?B?bThMVjVtTVJSc1dNZEF0M3JZNXNQSFl4QS9PelhUbmhjaG1LY0ViMTZMbUtZ?=
 =?utf-8?B?OWJZd3ZraTY2Q3RscDRRVFZKT0dmYnZRdU50YVlVWTFCTG5MZG1QTTdvS01p?=
 =?utf-8?B?Mlg0a29UM1lrc3pqV1JNdGJyQmtmMUNGS3NLQTUzMFRTbjNWTmxqRXJvMHFP?=
 =?utf-8?B?VXZBWW4xZ0NINXNRNi9ST0xVcFVoT2VPc0VhbTBKN3BJbUFxeVNUL2tXSG1X?=
 =?utf-8?B?dUdmc29LTEErczRkUDYrV09YZFJPUDZjcDBtNHlFcmZieUN6NGh4Y002bE9W?=
 =?utf-8?B?SkxRdXhuODl3aUFCWGxhbThSWldTWDRScnVETnNWNXN2anlHb2lFZG1kQzRX?=
 =?utf-8?B?aXVBSTBEZDFZRC9NY3huS1J5TzBiODNMcnNnQmVqRHNNaGJxK2RQTVZ0c28v?=
 =?utf-8?B?SHdOaTRDdU5rczNHS0pvT0ZTalk1d2lVS1c1VXVuQlJsWEVCV2Y3azZiOHVH?=
 =?utf-8?B?WDJmSjJ2T1lxLzRkOFFtcXdPQW9YN1BvTkl1cExxclQwRys0bTgxWVgyYkVZ?=
 =?utf-8?B?bjEyTmkzcGxTZGhKWk5US3l4K0svSmdSSEdPeXNCRjc4Y1lOV1h3ZitZNGFz?=
 =?utf-8?B?NHpKbnhMSDArR1QwcG1wRGtRRkR5QkNHaEhGSSt2V0RwMTk0QVd5NVhPQTVO?=
 =?utf-8?B?bDNEaVQwOTliRXhzbFlGTVpVK0VSUTY0ZGlvZi9pU0JqL3VpaFRJZEhqUVBH?=
 =?utf-8?B?QThDMmx6ZmNxdHh3RnVIc0hMazdIOUljK0htWlRIV3QxY24wN0pwZTJLVG41?=
 =?utf-8?B?N21ZTjg3VWd5Zm5nLzRIK2VJemRTR0F5aDdSS0ZDR1JWZzhhOUU5cktOVCsv?=
 =?utf-8?B?SjJXWWl0K1lPa1RLb1l4aXIrVUk3d1hOUE9RemdsU1h0QTcvSytQcjdHblhh?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02fc73ba-db65-4e8d-e478-08dc8ebdae2c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 11:07:30.5588 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fEwgiY5n6n/jwVDrnpCHvHx4jxt0VWxLV/9B7Ko4W38Qd/b3gl0HTAXsPcXQl3UrwHj4WHG5B9kuZaEbIyQW6yPGUWakxx/K7svU2n28hSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5966
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718622456; x=1750158456;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=33ZfBZLuhUpDPeTfUb7i5/BNYH8Jb7xW5jLCRwVA02I=;
 b=Tg0qhAaCR3bC5mAqkSRpZOhlaDpXBTDBCgoE3U/St5iP/kenJJj/F6Mj
 MANOdR+gwTJNiYiP3De9Tio9IEb5MicC33GEGVKCY1yRHJxBZzcsVluaN
 hX3nRFhMHDH1y9kqILyheIpGfMliIZ9V5Uab85UymJMYKoJoSSscrAuwT
 JGhoQNXd7QjU9Tw6m6ZmuWZUhE6U5PGQoW+uBgQXd4Pr/gETb51ujpf3p
 aMggW2go09lF5EFxU85uh5ZNVsGlDmszdEhM/scBgHJvImPdke+GJGy6O
 st3ecRbNPZUrrvg0J7GlZBDSQ/snc9Y81sKQNJz2cunbXpCkWdta3xQUq
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Tg0qhAaC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 11/12] idpf: convert header
 split mode to libeth + napi_build_skb()
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
Cc: Mina Almasry <almasrymina@google.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Willem De Bruijn <willemdebruijn.kernel@gmail.com>
Date: Thu, 30 May 2024 09:46:46 -0400

> Alexander Lobakin wrote:
>> Currently, idpf uses the following model for the header buffers:
>>
>> * buffers are allocated via dma_alloc_coherent();
>> * when receiving, napi_alloc_skb() is called and then the header is
>>   copied to the newly allocated linear part.
>>
>> This is far from optimal as DMA coherent zone is slow on many systems
>> and memcpy() neutralizes the idea and benefits of the header split. 
> 
> In the previous revision this assertion was called out, as we have
> lots of experience with the existing implementation and a previous one
> based on dynamic allocation one that performed much worse. You would

napi_build_skb() is not a dynamic allocation. In contrary,
napi_alloc_skb() from the current implementation actually *is* a dynamic
allocation. It allocates a page frag for every header buffer each time.

Page Pool refills header buffers from its pool of recycled frags.
Plus, on x86_64, truesize of a header buffer is 1024, meaning it picks
a new page from the pool every 4th buffer. During the testing of common
workloads, I had literally zero new page allocations, as the skb core
recycles frags from skbs back to the pool.

IOW, the current version you're defending actually performs more dynamic
allocations on hotpath than this one ¯\_(ツ)_/¯

(I explained all this several times already)

> share performance numbers in the next revision

I can't share numbers in the outside, only percents.

I shared before/after % in the cover letter. Every test yielded more
Mpps after this change, esp. non-XDP_PASS ones when you don't have
networking stack overhead.

> 
> https://lore.kernel.org/netdev/0b1cc400-3f58-4b9c-a08b-39104b9f2d2d@intel.com/T/#me85d509365aba9279275e9b181248247e1f01bb0
> 
> This may be so integral to this patch series that asking to back it
> out now sets back the whole effort. That is not my intent.
> 
> And I appreciate that in principle there are many potential
> optizations.
> 
> But this (OOT) driver is already in use and regressions in existing
> workloads is a serious headache. As is significant code churn wrt
> other still OOT feature patch series.
> 
> This series (of series) modifies the driver significantly, beyond the
> narrow scope of adding XDP and AF_XDP.

Yes, because all this is needed in order for XDP to work properly and
quick enough to be competitive. OOT XDP implementation is not
competitive and performs much worse even in comparison to the upstream ice.

(for example, the idea of doing memcpy() before running XDP only to do
 XDP_DROP and quickly drop frames sounds horrible)

Any serious series modification would mean a ton of rework only to
downgrade the overall functionality, why do that?

Thanks,
Olek
