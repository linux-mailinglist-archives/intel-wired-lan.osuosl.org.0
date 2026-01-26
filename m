Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOYKO/TMd2mxlQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 21:22:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0228CFE8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 21:22:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3598816A2;
	Mon, 26 Jan 2026 20:22:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kIbzm_5oftlX; Mon, 26 Jan 2026 20:22:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 746E781747
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769458929;
	bh=mFlmwo7Jj54Bd0NM6dQoaybwn6pzZSGpm1ePcA4OUWs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LvMOZJzucYUAR7KRMe/DZasMGU1P86iUcdoqvEczcSwR3nxGuD1XvuMKB5+CyW4ka
	 rJrSb1E27Crr8ekqVsA6WPpxY285o4wfte81Tw7drqfGDObtBQSq7H9kG7IXkBad2R
	 8cdDaOmsOLivZPMqvj4GxXMx+sw0elXXqUMY0VBRmcIN1207j7HAbnqPKRPlKv4k7c
	 9Fq5HJgzzpdsjmbfJtKQ6EAx5NqJBiw/1hXeBWHodc9b5polUOWGYa9zwQroHe8Wzn
	 DF+4/6i5Aa4H3Q2urUb9n0Bw+BLFdXxcSRNWGV8ofXO1vnyv1FooyQ3ujy9gnCl1N4
	 E404C1JoRkcJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 746E781747;
	Mon, 26 Jan 2026 20:22:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 52A30118
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 20:22:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 366A481604
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 20:22:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FifLMiUWSbPJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 20:22:07 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 26 Jan 2026 20:22:06 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0CC2B8156B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CC2B8156B
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0CC2B8156B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 20:22:06 +0000 (UTC)
X-CSE-ConnectionGUID: VD9bAINPRceAy3EGqcqMQA==
X-CSE-MsgGUID: b2DfVjbWQHC3M8YrlxObRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="70613683"
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; d="scan'208";a="70613683"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 12:14:59 -0800
X-CSE-ConnectionGUID: aQhPo5w2RciMgX3TlMXDtQ==
X-CSE-MsgGUID: /n6Ibt2gTuiYI4hFvxE4Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; d="scan'208";a="207650556"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 12:14:58 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 12:14:57 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 12:14:57 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 12:14:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FE+D8kRQcSb3TkbGs8RSGU4RTMpt/tO20zYqb+nfnci3g/DXC4JkM/AUSACHsoRWr72FTNs0GtwKrRotPmoN8SGhHocKAbn5x23dxsnForRVZU/yXSYHsOyAxy06W4DywCejxVwS/3Nl59aYnMR68RWUi2VGAuudKztKkXAQhXBHwdInAjPPqis77wULx613YrrWaJKYkDPPt3ZvG3mmhZbf9+giouOsIK9Lwvtbx1lJx3eTmBPQ8p20r1N/Aeur7bzXL4Hc20vbu+39EW77UPJrGDiM5aHPYHjOlDEi9+ZwLY97bq6kIrGeMVjkDCDLh7ZfEktnykxF6B7l11A6LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mFlmwo7Jj54Bd0NM6dQoaybwn6pzZSGpm1ePcA4OUWs=;
 b=WZZGp9NU5UFQsYkWM9eQR6Rf0zEiK1WlsjmJ7frmcyrHBKSj3NZ13Vp4hmRWQKaeCuSWjCBRWNPUgCHw1ngSC/kJaoIUctjvG9BeiP/eYMbTTQFcfcTQWH5biouY9rAL+hP48pw3pmAGwxKbF0n3NugUYYcXhQjZv8USR03frb+Q3gkmrtta4P6B8Y0VWrMM9a1We1c5n3Uz+EXYZlcVAC4G3tj+DUnkk+fJGjf/K1XTt4ARBH6m7gq6prJkOPTCuPuyb7GT3htS47MftV1Zay7/945YUyqDCaqTOV0v9Xy63no4EVp8GvPMtAso0nENlc4J9mKcme2RnBdOu8wDhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH3PPF76AA2D882.namprd11.prod.outlook.com (2603:10b6:518:1::d30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Mon, 26 Jan
 2026 20:14:48 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 20:14:48 +0000
Message-ID: <d1656bbf-3de0-4aed-82ed-be214baa4414@intel.com>
Date: Mon, 26 Jan 2026 12:14:46 -0800
User-Agent: Mozilla Thunderbird
To: Michal Schmidt <mschmidt@redhat.com>
CC: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, Przemyslaw Korba
 <przemyslaw.korba@intel.com>, <netdev@vger.kernel.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Anthony Nguyen <anthony.l.nguyen@intel.com>
References: <20260121-jk-e825c-fix-missing-timetamps-v1-1-f090eabfc823@intel.com>
 <CADEbmW0roa=NKwB2kE7DJ0n_W5=Rqk1LJu3kri4u1Rkc8h-KvA@mail.gmail.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <CADEbmW0roa=NKwB2kE7DJ0n_W5=Rqk1LJu3kri4u1Rkc8h-KvA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0342.namprd04.prod.outlook.com
 (2603:10b6:303:8a::17) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH3PPF76AA2D882:EE_
X-MS-Office365-Filtering-Correlation-Id: 849c57a9-3e33-4ac0-c840-08de5d178dd8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MDZwZ1hQWjFhSDNKVFpRZ2RIRTd6Mmc3blM1ZUVuWXB0TGEreHFoYTh3Z0p4?=
 =?utf-8?B?dmhvTi9OWnNHbm5qRUtIMlFFRExPNzgwUmdCOHowdzl0M1NtN0wzL2lJNDZC?=
 =?utf-8?B?RjhjWEp1YzIwQ1NOWXlpOWNvaVJCbkVnOFBWUFpwc0FVbWo5eTdaR3I3TE5I?=
 =?utf-8?B?Rkw5VTJtVWNFRVFGSzZVNm5abXpvcXZaRGt6OGpMdlN4dENRQUd2cmZKZUQw?=
 =?utf-8?B?QnlWN1RTWkJnbGVhL3FuakpPUThXaDU4cE5nN1lCSHJhbFlxbHNjZEM0SGhR?=
 =?utf-8?B?NGxhU1ZrZnZWOVhaM2FIUVA4U0lha0J0a0trVFU1KzFCcmovdlBrQVFnajVt?=
 =?utf-8?B?RWtvWDJrNlIvcXVwc2M2L051eUdmV1d0VGwzMWtUZTNNcnNCYUlBWU1wWVkv?=
 =?utf-8?B?d0ZJUzgyUlRheVRWNTMxNlUvTmxaeTM1TlNzaWp1UHRmWHZLaUpPYzRwZ0pz?=
 =?utf-8?B?a2hCc0MyY1VOQnZ1aEhiY25DVlN2T2JwaHZKME84bWVUS2l1QkFGSzhRM2hR?=
 =?utf-8?B?RmJ4RHRSTzJmU0NIeTJlbnoyZzhLaUV5WWVXSGZaYmNaV3QxNXlPRWdGVzc2?=
 =?utf-8?B?STR5VWVLcW9wcmpTclBQZFYzcWZNeVhqUEFwaWdDbjN6ZE8yRlhFaVVzUTBB?=
 =?utf-8?B?cjBVV2VYRFFSOGZjVVNFN0JjMTVpajFNVUF2VWRMeGRsNzNVanlTZmlyOUww?=
 =?utf-8?B?aWNscFNvejhDSG9oTG0zVk1rUW9HLzU2UDhWenkrVGtvb3I3bWYzZloxZDVl?=
 =?utf-8?B?ZlF0MUxwVHdYbzIyS0EyK0Z5dDRXUnJNYTFpUWFJb2sxS0JRMitoVTlxUkhp?=
 =?utf-8?B?RkF1Rk84bTlCS21jSjg4cXV1M1FHRDIxMDJyQzZmQStYT1c0V3VNVUlQemVH?=
 =?utf-8?B?VjRZUHIrVkN4U1daSWZYNTZGaFJpRXV1OExnSjdGTDRNUVIrQVp2M2h5Unln?=
 =?utf-8?B?TGhHVlVoYVJYZVFzQnVCekxETGZnSVpiREhZMjFFa3YzTFZGYWUyZTVyS2lP?=
 =?utf-8?B?VHZLSS8xWVJwZHd3aWpqZGdWK2hoMlJwSkowMjk4L0k0Mmd4QzhONkdkNVZJ?=
 =?utf-8?B?MDByK2F2Ni9hbHgweWtSUUVSUDFHaThKUnc2Mmd3U05mM2p2eThEdENFZjhx?=
 =?utf-8?B?aWNSY2hiWGtYM1dvQ3ByNUhkMUpyR29obExVdkVtcUtuNmIyNmMwZ25objhs?=
 =?utf-8?B?S0ZybDNBakg2ZWdTRTZNK3NiNXd1azJYTWcwbDJ2S2xBY0REUnNqQVVpcU1a?=
 =?utf-8?B?YUxzZk13R1NXY0I4WXRZNEtsQUtKMW53a3hZdVFCQlEvMzloQ1hGS3NVcmpS?=
 =?utf-8?B?S0RLNjRJQkFNbTlab09sQlR1Z0lYUnBGWGZ5RW8wV3ZpQUpHajN5U203bXhm?=
 =?utf-8?B?Mm4wbHRnSHRkN0EwUjcwOXI4QkFZSldhbjJXTXllek16QzFzMUM1Q0dDMzBo?=
 =?utf-8?B?U1ZmZzNyUUhyUnV4QS9lc0Nlc091MG9mK3NLQ280NVd0ODFIcmMrWUM3MkZL?=
 =?utf-8?B?OEQvQmNNV2xPYzBLUzcvZ3VRbHZKUThvN2plY25GaFhqM2dEWVh2V2JzcW5q?=
 =?utf-8?B?Vk9pK2N5cEdPK0tNdWVvckhjUmljZzBMSEpoN0Nnb1VhZEFXb3lRRG9NVEdU?=
 =?utf-8?B?UTY1bm9CWVRCUmYrVEpYdzlIOFJ0dlJSSG9ZdWRjb2p4U1RHZVVVUlBFWFhq?=
 =?utf-8?B?YXUycXUrZ3M2UStEMU9IenVwTno2eFAyeTAycUZJdDdGOW5tbjZsOU9vSmZp?=
 =?utf-8?B?U2VRbXBNUEdiVmZQV2lBTUNlTU9rQUJHNzMxN2dnM01ROGloaUZxdjdQL0ts?=
 =?utf-8?B?MU9SVHorQVNOWXNDRGxMNVdZbXhxYW1kQ3FqeFBzZnUyZTJKZU9MamNOOHhP?=
 =?utf-8?B?S1pRdjArS255MjdBN0tBaUVlaTJDTnROVSt0dTRiZGdUWmUzNk1KQlBxY1li?=
 =?utf-8?B?OGJrMEZvZHdnVE9uYlg3NDA3WWRoL3VjV28yMzljSE1YKzRDVnVwK1ZoaW5x?=
 =?utf-8?B?V2Q5azdFaGZ2VDhvR2QxM0YrLzhpb0lSQVZWTDFPOFBNeGh5MlBRamxNbjFl?=
 =?utf-8?B?REFpb1pJVGwzL1F6YlFNdUpGNTNVc2RBVTJpVTBhNDlDempWRDBiWmNZRzEx?=
 =?utf-8?Q?/EV4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aTZsa0pOalZ4REtERUZtSzNYMG15dDJFV0lRL01vRU4wN0J4TlpKMHlDL2JH?=
 =?utf-8?B?T1RsQVl2RmliNDJQNkdIWUF3SjMvL0NkK3ZOSGZqQ3JNSzVFalp6b01vSC9v?=
 =?utf-8?B?OFVVZWVGd0l5TmF2TnJQcDNmM0dpVDZ0QXdSbDc2THhmUTZ1aFZIN0JOMlBl?=
 =?utf-8?B?SG9KMjRVczNhN3p3c3hqMFVMdW9reVJTYzl1RGwxTWNCY2JDNVQrN3YrT0VT?=
 =?utf-8?B?TkdLWTQ2YWZYcWdNTEwvTys4Y2FHQjl4TVBhVEJzazVUaTVQcXI2TnNQbTJ0?=
 =?utf-8?B?ZnRIYjA3MWdyNWhFT2liWlpGWEVtUDl6VndJMnVFVVByUng0dGp4YmVHc1VI?=
 =?utf-8?B?djVuOWR1N0V2TTdJYUhORVFnT1IwbGFacmVJYXU4SWIyaTJkME92WjMyT29R?=
 =?utf-8?B?SVJxaUYzWDFlTFREMXA5QkQrQ0s2RkMyUDhMMWFlTVJXZnBjZU1UMHZqRHhy?=
 =?utf-8?B?azR3eDAwekdsb3psYkI2ZldmSTdYMldKMDNFcEV3ZDdhd296OUtYaVZGQ281?=
 =?utf-8?B?T2RvYTl5TlU0T09YVlcrOS9uSFE2ckJUMEc5TkhLWGUrZ0JmRi82UU03M0JS?=
 =?utf-8?B?OWFqVlJMNy9hVFpuS2dGQ1hYZjFla1RtZkVmck1VRjc1NXBja1RuVnpzZkk1?=
 =?utf-8?B?Wm93K0tQSG5lYkFaVzJkTzd4bHdKS2dyeXE2eCtaM1VlZXFFdHZSNVM4T21Q?=
 =?utf-8?B?WjR3eWZlNUd2ZERHK0NrZG15Qm9sYVZZU0xvdUIzZVRxSHIycTZNMnlHVlBV?=
 =?utf-8?B?aDZSQTR4cjM4SUpidDRxcndnTkh5ano4ZW51YkZiK0ZYMlJpbFpySmk0MWNu?=
 =?utf-8?B?T2pKQTV6VHVTT1BEdUhXZUQ3dzZ4ZVl4OXVhR0N0SGd6UHNyL1B3YXRZeTNR?=
 =?utf-8?B?WWV6NUE0dTdhQmFVNG5hdkt5ZURWUzFlb3R4RTZwbVg3VWtSRHFmUEJ6Unhu?=
 =?utf-8?B?YVdMY1lncjBGVEpuUUFZdDRza0c0b2xoeTNMa2VnR0pMSnVkSlZ3QlRKbmpa?=
 =?utf-8?B?MlhZdWtKcW0yZnB1WGxFUUl3dVZsSU5kNktaSzYrRXRYTUQ5ekl1M1F0dGhB?=
 =?utf-8?B?Y1FKTmt1MitWcUNnWERLNE5GcksvSGxSaWozVFUvbDBBeVNpdE5aNHBXaFJN?=
 =?utf-8?B?V0EyTUJkcG9ta2lHcE0vblFOZ1l4bmF6aUZhKzlScVpzMG5lRWIwbSs5emx6?=
 =?utf-8?B?QzZNVlVOU2F3blh3NUdhL244dGFST0hXMFRWZ2tXdjBIbHFnV2NCRWFzTlNJ?=
 =?utf-8?B?N1FlZ0ZoQldPOElIKzNYcVhHTlZBcjRnTGN1a2VIb0JaNjlScDRSZ2VwdHY4?=
 =?utf-8?B?RERoSFBLWUxOdXB4Q2lLcXBjRm9TamNWaXhXWHZoZU5GbWZkdXlYQm5HYktT?=
 =?utf-8?B?cFlaUEF1aDdWVjJoRkdpNUNqdVd1ejIvZWNyd1NjOFg1TzB1bFl4ZU51RUlN?=
 =?utf-8?B?TjdFaUZUNloxbk4xN3lFR25aTko5OEdvVFUzejhWWWgwSWswS3gyaHpVcEVp?=
 =?utf-8?B?YWMwc2EwNVpPeDAybjljTUpxWVdYWHptWVdwYWdmSEhoUkZJMGsyT1lqekJP?=
 =?utf-8?B?Z3lLRTBxamtRSnVWdzlseVBUUk1KaGswRWZoMk9zVzZjZC9EQTMxNkIrNXNl?=
 =?utf-8?B?Q0JlMjlzTnRlbFUrazhWbjE5UmtpcXBYZ0grb0cxVld5SllMdWN1WmlobFp0?=
 =?utf-8?B?WTZCUXdsbDJFcFRRQUE2WEJPbnBSZXZhSzdRODQzd0JGRktrRjJOa0ZwMjVU?=
 =?utf-8?B?UlRETmZmQ2lUTmJ4Y3dubFhDTWZHT0licFQ2cnhSU1pkNEt2ZUV0eEY2YWNw?=
 =?utf-8?B?QTgvWVZ3NHh2bjJZNThMQXpFZy9kdVlNY1VLUWc1MVVYTTIvWEJUMjREQ2tO?=
 =?utf-8?B?bTV1MTNzNVlOcm93QVprVHNzbEoyaE9mZ0gyZmdZSkgrbTViQzU0RWEyR1dH?=
 =?utf-8?B?YldnMUp0TG1VNjZtcUJaT1R1d2VrSGxqZVZoeXRneDQwZE92M1JpdjlZeEdm?=
 =?utf-8?B?S2hiTjBEMFdpbFhvclJ1NUQreHVlVWpTakFLR21HQkhmSXNsdktBMCs2Y2o5?=
 =?utf-8?B?VDdXSDJZTDdSUzJVZ1ZJVVdoT2N3bWF2MDlzR0RHNkhIL0xPM2NJaCtXaWdU?=
 =?utf-8?B?cStaNkV2WlhtR2pJMFZrL0wrYVN1UHpSWlZUbkpTZU1ON0xrSUgya3pxQzdL?=
 =?utf-8?B?VVEvYS93anpzZzd2VVVvVE4wZnBVWnN4T2NPWlBjSXJTemE4OVF6Z0xERDBS?=
 =?utf-8?B?bXp0RWlmZ1JxTmpQbE5HOHhwWGd1N25BOVJZRDU1TksrTWxBRStJdlVWaXo5?=
 =?utf-8?B?Y1JSYVhhTkpUSzlLN2lzT3RQb21hSEZsOEdMZ0ZldGlpeUQ3Ym9mZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 849c57a9-3e33-4ac0-c840-08de5d178dd8
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 20:14:48.2626 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kVgHvvQ9ibsu5gNoMxFOmnFwpluouEUAAjK/Tyb7pJz2jWIW40//qCXeGeQ89kNvieZRysyJf9ZfBIbAX0nXbnX4o8RAamVOsyj3P5nPfAU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF76AA2D882
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769458927; x=1800994927;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P9nmycIUCKwvXtlfXebfgmhYbFNWu/T5JximebCstMQ=;
 b=Uf+v9983lhvbuTRmpYcR6RFr4dbN9bpNjaDviW0Q51duCi2zie+HuNEl
 w6GAOxdxmyKJAc2e5ejHsSA9hRUQ0NliCTDtWL2CNWH3Oos+En+BIWy7J
 yxU/wLLKvPctKe8tp32t2w1FzTEewX9W/2uID4WrYKE2pSt9wzmle20Hl
 wr07f6vRzchMlNHrVbpzE6Vgj0KCszczqNwmKG+Gv8KO45wz7/jIau0eF
 d/gftzDFag3d44qvwZrfeLWwBeSDEQ9w8vhXwaxKQGPbN+7gtk2rp/1bl
 HekeAMnPf6bAYLZtSFd2sGTYg62ITYjL57k6kVW8Chcpe4EP/dQZiVsBy
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Uf+v9983
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: PTP: fix missing
 timestamps on E825 hardware
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mschmidt@redhat.com,m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: DB0228CFE8
X-Rspamd-Action: no action



On 1/26/2026 12:30 AM, Michal Schmidt wrote:
> On Wed, Jan 21, 2026 at 8:01 PM Jacob Keller <jacob.e.keller@intel.com> wrote:
>> Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> I applied this patch to a RHEL 9.6 kernel and my colleague has tested it.
> He wrote:
>> Tested the build: kernel-5.14.0-570.81.1.iceptpstamps.el9 by running
>> G8273.2 noise generation test (7.1) for more than 4 hours -  have not
>> observed any issues. Packet rates normal and inter-message intervals
>> are regular. No delays, timeouts, failures.
> 
> You can add:
> 
> Tested-by: Vitaly Grinberg <vgrinber@redhat.com>
> 

Appreciate it, thanks!
