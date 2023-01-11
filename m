Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C34976664E2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jan 2023 21:35:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C8858200A;
	Wed, 11 Jan 2023 20:35:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C8858200A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673469308;
	bh=26K03mZLsm2GCTmPK1cYrGyFXjCvoMEp0YoqLhkkcfY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ILQfTOmvN1F5G2O/eoG70mdo6sc+mhaWoZPzHQiYd0TbYT8Kdqdmn0qO43cgFp2Sd
	 46+/uNjtsGHPmkE+b/7YhBjnrUmjc+A73BIPyKmGsFTtGKbwFjZQs2G4K3uGCv4A0f
	 7Ck/hUmAWLhfZG0noZGNrH9xTLqWaqXlq5h3YsiPO+q5kjxz3Jhg2zzFv7TDrxHcLC
	 8K86rzCTg00Y7om0toVDLWrSClzDAr9ppDRScjECkwPlTAh4n4mx5EXEkSt/HBeBj5
	 ThaZIYL3j+H0l7TwQ6gcAjWPdYQfxZ3ly9sPnWot3NTWYFigqYXlv9c5XQVDbr4I/T
	 hPPz/lQ/vOq9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lb2VxFROb3Nu; Wed, 11 Jan 2023 20:35:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3E1082126;
	Wed, 11 Jan 2023 20:35:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3E1082126
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CEA191BF3E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 20:35:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A66F9402FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 20:35:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A66F9402FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SOWO1_9DaKXO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jan 2023 20:35:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 449A24017B
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 449A24017B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 20:35:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="321223182"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="321223182"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 12:34:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="689887500"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="689887500"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 11 Jan 2023 12:34:59 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 11 Jan 2023 12:34:58 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 11 Jan 2023 12:34:58 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 11 Jan 2023 12:34:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cwc0e9qXa97s9pEK6OfMR+HjqshO3/j44nnyJ3YQgD62q+vzPPJC+0otxDZLs3F/qIOOTwKRa8OxH2jEpy0A+PdZxbDbla/r0SmtMUhPHgelxz8KFzD8ozyF87Fop9bCOS3KPgAFpSHmJx0fS0z/8dj2rG0kWM06cUKeuLLRqNZj0z7zFIA5EXr5qy/bLEtZLr1nHEy6m6dU/jMwwICi3s46nLvlXA2n336jvcMa9ch2JQC5ENPeKBYEZgmIJWfLVK/SFyPnJr91KOnv7BdIIGEYqDnye6Y1vjHk6L4iU/yP0BtRmtH21CorADUXAnZbd4F1EF25k5f5PXmOjo3bOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zm7llIYq/SAfiK6+TA5p9RugdS+Dq7VYxOZsZ491RHQ=;
 b=C6wzrmLD8Lzt2noksHut/2U043yJog4yhOlLSE9TQXDKWyhFm88DgLnjlvm1gGNKUkoLfohNO4vWIS60ytFlU/mQ5Cn3dGuy/2HICMFBXJrd4QJ7FV90zCkYnYoPZKynxnjo9dz6YqNWuc0rpLbG10PO1BFU4m4BgLG4AOY+cmzDj/2DNjgl8gnQjwR7SwPsCoQWKAXIKDkVI9nDgDMG/UZVuH0CRIBVKEf5dLkJZxU7MEcO0dtbwlVXdylTj46LN9k+BscnfuQceXCCuITxEAdsya9/bpihian0XCUqH1qDXYJBd8UH4exBlGUFMzWjOh2vVN96p06AZDYQqiUUlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB5050.namprd11.prod.outlook.com (2603:10b6:806:fb::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Wed, 11 Jan
 2023 20:34:56 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5986.018; Wed, 11 Jan 2023
 20:34:56 +0000
Message-ID: <ae89713d-b912-8dce-1325-70fa96cc40ff@intel.com>
Date: Wed, 11 Jan 2023 12:34:53 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221221132502.1099843-1-mateusz.palczewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221221132502.1099843-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: BYAPR01CA0059.prod.exchangelabs.com (2603:10b6:a03:94::36)
 To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SA2PR11MB5050:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e05e026-5153-4b49-706c-08daf4134cf8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4d7A+fDzanoys+S9UtC1PTUwrF6drIlKcvZN/qN26Q2lQP/wfODz3J9QVfIr3BDX84O8qcbIhuVJiqpEYr7bDtJZn9epBuo6BNUr9Io9IV3JTDHUAREyoH30QYQZPdh4oPzCBlj4UPIvGbL63dDdvcT9g8F9OMo2yUAiy0Ssa9fSdP2Yo2H0roAToVS2QiPIxOMZFSHuwkwa5uTB/qhcXkVNuF0L+1E4sNxL/f3OQ3UOVuOlIWCKAmNHSaFLQsozkQo/Ob970RJJuGlLzLRg858LtKtSUOgwYd6xYls8jkzF/y6Y+8i2ee+VTlbD6t04Yh/+tzIcn7cw/12EXb2qoCfcXi1najtQ5AW/RReiVt2zZmC2Z1v3EMMgEQ4d8Pur5CSwcfJLkpxHcRqgi3W2BX0uMMlkK8SiocwDBp6ovknfPaVfK28Sd02tSKnfFSRhaMtqgrne22r8ueA2vvKeTcyXzGjhujR2RXMnpW1YkaIOBpC0fLaB708SXwbgC8ykc80BkT5AM3Bfoo9MpRDpBSoX//akC44iXhre2fGSmnX84/61kPh+Vu4/SyNSyul2ApzNmb3ayh5/4JvUyb5Mbtjv7LMQeUp+WonZX06y8eYJofZ/bwlvg1meS5lDjMqDdKyTOGqqFY4OfvCnCb1NBBclIEYJMR3XY4kIB+/sLDtH5g1G3851EyngRC7Bm1Kgy0m9edB/v6rrZfjm1U3LRb2qjZ9c9nk51wNnDd5KZK8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(39860400002)(366004)(376002)(346002)(451199015)(66946007)(8676002)(31686004)(41300700001)(2906002)(8936002)(5660300002)(36756003)(66476007)(316002)(6512007)(66556008)(478600001)(6486002)(6666004)(53546011)(6506007)(26005)(186003)(2616005)(31696002)(83380400001)(82960400001)(38100700002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2x5T1I1SnRIakg0enZ1UHNQOVVhN0ZNQWRPK3FETG9WS3FvSzlxdzVCdTNH?=
 =?utf-8?B?cU1FYVNuTHVObmQ0Q0krU3FaUzlyVG1PbDk2L0I2bllIbE1tQzMrL1dXNTgw?=
 =?utf-8?B?eFlhaXRycG5aSlhsa0pDVGR0d1AwRGhWMDFkRDZuRVFPMk5mYjM0R0lZanp0?=
 =?utf-8?B?VENDK0JobnVBT3FOWnd6WCtpbVBEUnZzemg0clNibUUzZHlEc2swZWh3K3F2?=
 =?utf-8?B?ZkJObFUwOTh4UnAySWZqM3dMbFJSYlNUYmVOMGM0QU1sQ29sTHlJSzBMMWVC?=
 =?utf-8?B?R2R5cEM5VE9GakljZzJadWpPL2x3dXRkMnpGRlZkWkxFTklzUkNjNEhTSTFQ?=
 =?utf-8?B?ckVuQXA1TnhJa2x2K001RFI2K0pIM2NXWmJPbE9kSmFIN3oySEJCc1pReWZx?=
 =?utf-8?B?MTI5QmwvN2lpbTdtSHBQRkNmc1JWVGlpVFljcTZ0bjVZZVFSVzRMZ3ZjTlY2?=
 =?utf-8?B?eXhyYldrMjhrRm5YYVRjVnpQbXVBNHkrNm9yTk0yL0gwbUEyZ2gvMXBOek1R?=
 =?utf-8?B?cE1ZRDhhT1lHaUdpTm9jM1VHclNUSExXOXpMbjNFRk9ybzlqajJGanNLUGJa?=
 =?utf-8?B?V3FtL3o3Ni84UGJ4Uko2UU13djB4aEUvb0lxU2JvT0dyZTh3TTkya3dON1Nr?=
 =?utf-8?B?Rm9jbkxNL0RLU2wvYysvUjZPZytJSDRKaFpaaitESGM3S0dWV3NJUXpkc25P?=
 =?utf-8?B?ZnFleVFuN2tpSHVUR091QVZPRFN4blJ6U2JNcnIrU1FST0hld2RtbUI5blhy?=
 =?utf-8?B?ZVVNRklYM2NoeGxrcU4zQ1VGNy96UE5ZZyt5RHFFdDZXOGZIeno2K3VVbGlx?=
 =?utf-8?B?T0ZMNnZFclhvZjBBeGg2VmVTTmhvNzFnN1RMbExuOWlaZldBa2EvNDRCMUJh?=
 =?utf-8?B?U1VXbDlGUDl2QXY1QlpSeHhTWmEwd0JRZEJISnJRT2hrUkdxK1luZGhQOWpS?=
 =?utf-8?B?OWxxVXArakVmcTU1R080SFZ3K2hyeXpjejhrMXJFMHhUeHVGTStZcE14bDYx?=
 =?utf-8?B?R2RlRHBwRy9yNXFGYWE4YjZBb1ZTSFN0RDBmZC96dmhOUy9YWHFRemtFeExp?=
 =?utf-8?B?TDBvaFEvcU9RcG55VzVKNGY3QTc3a2toaHlrTndWVzBWdnBLOWhyMlFNVWsv?=
 =?utf-8?B?YVVNZEhXNTAvdHVFMit3a0cwRGNrZjQwVUhBaUlpc1VkOUIzd2IvVjdYbTVz?=
 =?utf-8?B?SFhPbS9UblBHbVpsTWMrL3dTWWYxVWdkS0pmWUhvVmZFelN6K3pNLzFEc0cz?=
 =?utf-8?B?T0lwZElqMXpjbE9HazNyU3c4K3NTVkdoeDVtbzV4d1pnVWR0TDkrbVdiaUwr?=
 =?utf-8?B?UWJ1TmZMQWZHN3BOU05OdTVxSER2UkZMNkQzTms2eDZyOWpSVWc0cGdMY0JG?=
 =?utf-8?B?VTdzRTk1amNxL3dyWHh3eEhVMjBIeE5QYmJ1ckEzSDZWTU02UkdBZDFFZllv?=
 =?utf-8?B?VkgwdFpvOUlMOW5EcUpDVHBvUFdXbXJLU3Z2UUYwTys0azQrL2dwZGF2T3Iv?=
 =?utf-8?B?WUNNVEl0bHV1WTRneWM4b2FMaFRqV2J0aXVOL2tXbUVrclF4TGRxangyWjlT?=
 =?utf-8?B?cXFaUmp6UEZBdWpJeW9FdUh3b0VLc2pOUEFzSkxTVEZmcmdZOTM3Qkpjc0xx?=
 =?utf-8?B?YUJESitPTk0zOTliQXBKY1JFdTVLNkhQR2xNR2h5cTBxR0ZmN2lkVDZQN3k1?=
 =?utf-8?B?RTZHSWlUbHFKYVN2T296T1JVSEdMdWtnUXZNOCtiMEt6clFCUE5kcTFXMHFt?=
 =?utf-8?B?V01LK3FiSkRhSHZERFZxbnBnbjJ0d1ZvcEdOZ2FOZ1NTWVI1M2FUMWQySjgz?=
 =?utf-8?B?T011MUE5dll5QzRyOXVKTTdPS3lQNWEyM0VjMU11VDZJL1MxTFBJUDJsMFZL?=
 =?utf-8?B?d0dZNDB3dVdvMHBOWkxSQXBKcklPRUhVN1R3UkFSaklFRUgxaTMvYnhpZlAy?=
 =?utf-8?B?QXNsUjVyMW5CdEVlMGZQa2ZpWnIzdlJpTHVKdXJUUFRyZCtjcFVQRzJxc21H?=
 =?utf-8?B?emFVTlZUUEZsZWppYWx4ZWdWZnlwYXIyVUdIdEpKZ1hzSWd0Y3ZWN3cyR0hr?=
 =?utf-8?B?OWp2NGhzdmNOZDFrTEF4L1d2cmNJd2dRaUdIZHhEdWxaRzJ5eHpRNWlROG4x?=
 =?utf-8?B?TDB0UUtmdzZ6TWlWZDVGM2IvbDJobWtRSGpEMS94ekdvZ0dPTGVYeXVzY0FV?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e05e026-5153-4b49-706c-08daf4134cf8
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2023 20:34:56.1439 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m7B0ezDLyU1lWy/PhemlPMzP1ADkSe2McvexIjHBBig03SMADnD/kjCqX+cYt47ie73kGWsW7m4mft+EJsIpMufYyGV/jC7MoRRTsBsJqBc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5050
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673469300; x=1705005300;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BlaQN1kiRbhFyXvMP3fav7MmQ9lqYi/0kLQpyksq45w=;
 b=lYRojOe+LM3JdIR/0qjiNqunqleAVvKD5jys7k+8At3QiHojm/D4/gnU
 OkK0acust8a/doc8O87hBw+ps7PybaozykwP0Z0KvByLWPBfwhIsVkAb+
 NdvwrdREd8lv5Z80VNRwe96Lu62kXIJ3eryAKy6/DvQMwtCtpNjJfXacm
 29e3QrgUaYehBm2/LX4Om+2HY16k07pe85Ss6MSqTkCBHa5BvC/rOI3Qa
 5k5a6jAl2AvbZa31OOgkiH6FMt4BJgKmxKJagJz+cJFU/Y8aLZ73eZXuw
 i4v66b1YEqudzDUcKIdR/tmMSffCd/tMiwEfzMXNiItmL1PjO5CD1pY/z
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lYRojOe+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] e1000e: Disable TSO on i219-LM
 card to increase speed
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/21/2022 5:25 AM, Mateusz Palczewski wrote:
> While using i219-LM card currently it was only possible to achieve
> about 60% of maximum speed due to regression introduced in Linux 5.8-rc1.
> This was caused by TSO not being disabled by default despite commit
> f29801030ac6 implementation. Fix that by moving the part of the code
> responsible for this outside of adapter->flags & FLAG_TSO_FORCE check.

Have you looked into changing the initial netdev features to prevent 
this? Seems like it would be more effective to have it off fixed for 
this MAC over turning it off in the watchdog every time.

> 
> Fixes: f29801030ac6 ("e1000e: Disable TSO for buffer overrun workaround")
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>   v2: Fixed commit message and comment inside the code
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 12 ++++++++----
>   1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 04acd1a992fa..2f5cf125ff77 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -5307,10 +5307,6 @@ static void e1000_watchdog_task(struct work_struct *work)
>   					/* oops */
>   					break;
>   				}
> -				if (hw->mac.type == e1000_pch_spt) {
> -					netdev->features &= ~NETIF_F_TSO;
> -					netdev->features &= ~NETIF_F_TSO6;
> -				}
>   			}
>   
>   			/* enable transmits in the hardware, need to do this
> @@ -5326,6 +5322,14 @@ static void e1000_watchdog_task(struct work_struct *work)
>   			if (phy->ops.cfg_on_link_up)
>   				phy->ops.cfg_on_link_up(hw);
>   
> +			/* Disable TSO for i219 to avoid transfer speed
> +			 * being capped at 60%.
> +			 */
> +			if (hw->mac.type == e1000_pch_spt) {
> +					netdev->features &= ~NETIF_F_TSO;
> +					netdev->features &= ~NETIF_F_TSO6;
> +			}
> +
>   			netif_wake_queue(netdev);
>   			netif_carrier_on(netdev);
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
