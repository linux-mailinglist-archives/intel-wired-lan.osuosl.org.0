Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA620842144
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 11:29:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49E3B4193F;
	Tue, 30 Jan 2024 10:29:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49E3B4193F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706610581;
	bh=vFz3cTOdGx3HTVwoTamG2deRVL82AyZBJsVzJu1J2nQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1/OveBL7KBMl3WhmjE7XtI8wdl7NO7yZZ99l+oyH+rCwWuREcU2HLELKyleGUMOZA
	 1ff/LOmKXSwIfvqQObsUHCwLOKZMXI8erdHIGU23UgZRmoKPJFHnSgGwsJtoLSQtBR
	 6lwgFo+/Hd0wlWlq7ASMR+x1DJ3/Hv3gpbDsZLK+FI7Diy7bGAOyHuasxKlSRgt83p
	 jU6gQ/26nZQZlto9BaVopQ7L22VI3ckQx39GJmkKpgYG2AwTonSSHgFXiJ8jg6sTeJ
	 MTK1iev4Y/Ceisv7f8zzs5GR3Rvg9WvEy4O0UhGn0qEaip74k79raUc3A0xFC5hfJC
	 n2dkANC4Y+AkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VMLMBc8UF0TL; Tue, 30 Jan 2024 10:29:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4801641939;
	Tue, 30 Jan 2024 10:29:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4801641939
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 891151BF29C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 10:29:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5DBB661060
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 10:29:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DBB661060
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R6tsODAJV613 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 10:29:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 644C861056
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 10:29:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 644C861056
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="9873603"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; 
   d="scan'208";a="9873603"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 02:29:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="30108202"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 02:29:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 02:29:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 02:29:30 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 02:29:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D/w3tpc9lwBj4mRuPPr8EoyVP1V/xEvArrGSgeZqf/JBQuLCnzCfhEL/PsLK4Or3jM+Evc2GJV8WImcT4CObia4DXOUAVl7UihwirJRr3+D7x9njFDVaBGcYbomtrI2zKNazaroMFZ+ehI2/zQ5T1RurJwsTjBvQ9TyeAyf30XIbmRAEPCZPgghMf0JbyyLhLbvAE9arWOs5603S06UddUjlkzlQsymUenZePN60Ldrl6dnYMQmS0dYXmKWwxBp0pbqyrHZ3K7u6ph+ieDFxTCUPGZzNPge+sXSniXYbQ3rQnO5L3vR0dq6uOG7HHkfV+TpZRdD8ofdamutntDTNtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vFz3cTOdGx3HTVwoTamG2deRVL82AyZBJsVzJu1J2nQ=;
 b=LNvZKgOE/Z418AEWNblU7k57ZlHYuatRbfu41w6CtqC3gx7fxRXjsamgpJwPZFR+S4rFUTbq4uzahgGoMYe0zTAj2muvLpQRWYhTRqpQQp+WaTSah8m/dDPpjpTdM3aB/PI5hzQAOC4WyjfqTwtN2/el9FGtTwhaZrQrifLs4l/AEM0izkjTUq6DAjLqmkOhEhVc7b5n4bBArrpYEiTU3SCLAyMfqxjjvv11NwPX7zTQxPan/ddIxBIfRdYYWnmY9Oic9nboynxUL8uv3Gx2hTw9Bk8ZDQjI6cv6IXpcnxNgVzetVXIOlVqP2FxQYEESfKi/YkkcrBsZFozg1/cqWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by CH3PR11MB7896.namprd11.prod.outlook.com (2603:10b6:610:131::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Tue, 30 Jan
 2024 10:29:28 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::7733:f6b8:e322:f670]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::7733:f6b8:e322:f670%4]) with mapi id 15.20.7228.029; Tue, 30 Jan 2024
 10:29:28 +0000
Message-ID: <9bbff46f-82ee-422f-8e80-0817f3f28ce4@intel.com>
Date: Tue, 30 Jan 2024 11:29:21 +0100
User-Agent: Mozilla Thunderbird
To: Brett Creeley <bcreeley@amd.com>, <intel-wired-lan@lists.osuosl.org>
References: <20240129123231.31136-1-wojciech.drewek@intel.com>
 <9f2e462d-e034-47e3-a2b5-6618faf1d470@amd.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <9f2e462d-e034-47e3-a2b5-6618faf1d470@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR3P281CA0094.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::9) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|CH3PR11MB7896:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b2e57b5-a7be-49c0-b9d0-08dc217e5674
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mBAc7o2sWAt/dSbAUqJ1m6/tHBPTImrM3icO5ND66odXyH4qwq61M2lFFLLYKQ/qw6IwcQeE5AsS4rwiVzFwLIaS++iisAQm6z40BVTBPOteMJ8ru93J94X7hpNGz5q5xfus6+Iw5rXhpebxfVkcc6XORSYMZlDiC5wE57iETtDjU1MqjVZooqxPtSr0G9PvpJcT4ZbMpKRGWcyHKZhrR9+DvIyI6nYFChvVTv0KVMRf7e9oQ+VFns9TaVqza8E8ZDxwoyE6C6X+KiYBtqSwnrD16qBHoa2zrTgQ9mOd2MuG6+GqzN/wWyh2ErlarcPDrKZSb3WaYvyKQgsTw6iYPlzOk6j/xOQ9prpdf7ys5Qe093SqrgpH+DYFv+aVdmBEWzxEuMfQ2/wEnd/jjXH8ZK1gnUJVaolSmPLbi4WQQjGbb4c6irQLvem009rqniknj/ndu2UXN18Lyd9lgk9sWSYaBiEp2F4drf2Rqc7tyymY++ipCBeuU0N+2+2hB4cH1nUemadZ2+c0cwii8fCuCd9tqr+dEz1IZy+MktyPXgj+zfgrviUtqsmuk2umUJ+kQdchNBY6pAXvrKKKdSWcKLazfedtdeRGG6PKIUSIJTpe9dDOFQStC5TTha2mKBDvT+4+nxAJGnaP0rEMDHyFWxtaaGci5lBfyumV/aO4tV9KsoRr1faR/f3RUe9lEGAS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(346002)(136003)(376002)(396003)(230273577357003)(230173577357003)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(4326008)(5660300002)(31696002)(82960400001)(86362001)(36756003)(38100700002)(478600001)(83380400001)(41300700001)(6486002)(8936002)(26005)(44832011)(316002)(66946007)(2616005)(53546011)(6512007)(2906002)(107886003)(6506007)(6666004)(8676002)(66556008)(66476007)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RkF1bWNmbCtFdXA3NGNqUi90eHNYZWJFTDFsTDd4VnNFUVpzWFdlQTI3MG91?=
 =?utf-8?B?TWxWcDdVZG91Yk02NmFTRFJtVHl1Q2Rqb0dWeXQ5ekNqRHQ0RzlLSi9WYlNQ?=
 =?utf-8?B?Rm1RSjZIOGRaNWNsSFdONmU2b3ZtSFlTZ3FpQk4vWDFyRHNsa0ZjS2huUExV?=
 =?utf-8?B?anZncnQxT1pxaXZ6SGJXRnhrNzBDVERBRGtRRGtGLzI5c3grODRXdnJXWDhD?=
 =?utf-8?B?SUFJVEFPZjg1SERJcTNXblVTdEFHZTJRV3htcGNkci9KVTFHanZoblpzWEpE?=
 =?utf-8?B?dWhoVEZyVjF0STdEK1ZXeWV1WjNsanBranFNUzk0WHBacjRmZXlFTUppdWs5?=
 =?utf-8?B?aXBMdHRqUWlidkV3d1Y3Z1RzVWJEc0RXdkNqNnoxMmxOZEdpYTVBUnZ6NGpn?=
 =?utf-8?B?RE0yRmEzRjNhMU9FRGdhRi9NTlRGQ3pxRDREVUlwa0ViRU45Z0w2Z2dRM21r?=
 =?utf-8?B?REEvaVd5V3hqZU9DeFV5MXZ4amZUYjhLbGdzd0NlYzdzSVZKb0NGa0ZZWWFF?=
 =?utf-8?B?YVBoZDdhWDlCMlRvK1RVcDMrbmpHWnhDeCtoMFRzUWxKak1LdFVNUDkrelND?=
 =?utf-8?B?K3dDSUFtTkpHQ1huRyt5dVpoWTB6TEloYkZNZmRQcmU3YzNVakNWRkZKZ25S?=
 =?utf-8?B?emJXMFNwTHVITlNsVC9qaW4wMk1KUGxRK3l1Vi9MTE9aNFkzSlFjRUVsMVNH?=
 =?utf-8?B?Yk80MGl3NnFHSEd0WVVZaTlYcnByb0k4cXI5VzdJanZDVzVGUWVIL3hrU3JE?=
 =?utf-8?B?TDBGMUJkeTA2cjNGYUFUcnVjd0Z1UFlsWEtOZ0ZwL0xmUWF6cERBTEVsM3Yr?=
 =?utf-8?B?QXoraW1PWi84bElhM2xDNE53Y3hjUlJaNHdTOUVwdGlHNjVueXlacVcxQkE2?=
 =?utf-8?B?UUVpZjFhQktqRy9aSzJOeVNyclVmRW8vMnAzZUtzckhlcXg1K1hDZ0V1dXJu?=
 =?utf-8?B?UWgxcTVLaHJOclZsV2kyUlVtMVEwZWtCbGRXclp1c3gzS2ZsQ2ZQcElSNytl?=
 =?utf-8?B?bzB6QzMvdnIyUEdwQytXREc0RE56V2tuWEdxcnZtaitDOW9IMVQ0akFDczhY?=
 =?utf-8?B?U3kxdGgvRUlESjBKZXhmazRRQ0NZeFV2NWE3SkNGK2ZyMld2K1h0Z1pDR0g0?=
 =?utf-8?B?RnlQSG9IRnU1OTk1UVdoUmNhdnpabVJJL1ZoZDJLVnJza2lEVGdpdHpVcXhL?=
 =?utf-8?B?eG1HSWdnc29OcnhoZkxaZURTUkF2WWg2TzlGREsxL1p4QjZycUs1UUg4YldQ?=
 =?utf-8?B?N1hYd0JZb3phVDN4bGVnMVVINXpUM2U4QndidW1jeUw3cTU4Wjcwek85UUh4?=
 =?utf-8?B?cVpIQisrU1pUTm5nWVpCNVJqWFd2b1FwMnFQbnBhWEVuVThUd3RhUWQ0dE5k?=
 =?utf-8?B?bEc4NGdiMXZ4ajVFQlBXL3dORFl5Y3JZNkY0d1JGSmVBS2ZpSU5tRlU0Nndt?=
 =?utf-8?B?MlYrNm84TU80NjlmN0lZaWVRRXA3T01uV0M4cGsyeFp5eW80bTZVa29IbWZ3?=
 =?utf-8?B?NDQyMEJyYkxqNVBHVVZhWmFDeS9XVXFmUm8zWGVWTWpTU0hUcENrRzdzNCsw?=
 =?utf-8?B?UHZtaG1jRDViUElyUEY3QktHRjJFOGdWaHc1Wm5sSkNaRkw5VU1HUFUxbHV5?=
 =?utf-8?B?S3F4U0JxMVlsdlBURUVIdkxtcDNEbkZBZUtXSU5ManBLYmhXeEV6MHgzRG85?=
 =?utf-8?B?NU9yeXhKbWhaaUR3V0NvM3RGWTI4WXB3cTdZNTM1bnAxSnNnWHd5d3NmdzVB?=
 =?utf-8?B?VzRrNFdoRjdrdVdIS0tmVUsvTWorbkgvSXlrZjQyVVA1NTJNNklkZUVaRG5Q?=
 =?utf-8?B?UUdFWDJiaS9XVTRpcEhSU3pGM3d6N3orSVZSV0xHZCszenNXdFNwQ1NZcGQx?=
 =?utf-8?B?NDVqVDdKYVRNR0kxbFd6Y3FjZXVXekhOemkyMWRtWkNpYlpDeFlvUWNlM25W?=
 =?utf-8?B?MGpEUnlYeTZoQm8yUTJSL0JuRzU1M2pNdHRaSDZWNGJXZHFOOVh4NXdRci9S?=
 =?utf-8?B?bEpsZXlHOWMyTDlpOC9NZDR4QkxueWdCTDhqVjR4K1pHcXlvVWdyYWdXMjBo?=
 =?utf-8?B?RHlXMEF2WVJ5dWc5Z21QWStTeHdIYVdDVWx5N3FYNUpUT0FjdTd5L0EvRFZ1?=
 =?utf-8?B?Q2hrZWdzMUZOMjZycURTNFdkRlVWa0cyMDJlNmYyelIySlhhRWttV1ZWSlhG?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b2e57b5-a7be-49c0-b9d0-08dc217e5674
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2024 10:29:28.2369 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dI7ryWigRkbIUn1lA+Z4e97gY17qG18f4urSt+pj7S0hy+BQiAv73+/EkSL551lw61B97VBVMQGDnitRaR8+wVjTRiCWy48nsDtEIf/3q04=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7896
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706610573; x=1738146573;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Aoea/WEJjuQSOngpBCJnMgDahFBPkVDu4Z4OUARgQVQ=;
 b=KwjHsu76S7AkVBD7CpzpgJPu1I1ypKenWsnuiyqo5TZSBCYruzWEffjq
 xSL2RvdfZXrCzkPcZBEof3o7+m0T6KYklEe4XKl7Sn4qqLPZhxkSNUoXE
 VXAc9fto19ZhpLdZWqvfD6bSfdJXh+idLcQZU7WalF4ifG4uC2n6aV17h
 QlH5OX6Mx1eDe1aiQcUviC7VCvV6z01jKFKDMWEhl3RoizMjQ4DTeF80X
 ZDwy9mv6UbBGvFjRcSR8DJwK5siS7VCtL3wDw3sAU6vR4rNy0G2RmjUZ6
 QYMgp850FWddkg9JKFRPj3ToIuZd+w8/9p3i6Z5ClM5JYL+46V07EW8fW
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KwjHsu76
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: Remove and readd
 netdev during devlink reload
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
Cc: netdev@vger.kernel.org, jiri@resnulli.us, vadim.fedorenko@linux.dev,
 paul.m.stillwell.jr@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 29.01.2024 19:00, Brett Creeley wrote:
> 
> 
> On 1/29/2024 4:32 AM, Wojciech Drewek wrote:
>> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
>>
>>
>> Recent changes to the devlink reload (commit 9b2348e2d6c9
>> ("devlink: warn about existing entities during reload-reinit"))
>> force the drivers to destroy devlink ports during reinit.
>> Adjust ice driver to this requirement, unregister netdvice, destroy
>> devlink port. ice_init_eth() was removed and all the common code
>> between probe and reload was moved to ice_load().
>>
>> During devlink reload we can't take devl_lock (it's already taken)
>> and in ice_probe() we have to lock it. Use devl_* variant of the API
>> which does not acquire and release devl_lock. Guard ice_load()
>> with devl_lock only in case of probe.
>>
>> Introduce ice_debugfs_fwlog_deinit() in order to release PF's
>> debugfs entries. Move ice_debugfs_exit() call to ice_module_exit().
> 
> Nit, but the function is no longer ice_debugfs_fwlog_deinit() as it changed from v2->v3.

Right, will be fixed in v4

> 
> Other than that, LGTM.
> 
> Reviewed-by: Brett Creeley <brett.creeley@amd.com>
> 
>>
>> Suggested-by: Jiri Pirko <jiri@nvidia.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>> Reviewed-by: Simon Horman <horms@kernel.org>
>> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> ---
>> v2: empty init removed in ice_devlink_reinit_up
>> v3: refactor locking pattern as Brett suggested
>> ---
>>   drivers/net/ethernet/intel/ice/ice.h         |   3 +
>>   drivers/net/ethernet/intel/ice/ice_debugfs.c |  10 +
>>   drivers/net/ethernet/intel/ice/ice_devlink.c |  68 ++++++-
>>   drivers/net/ethernet/intel/ice/ice_fwlog.c   |   2 +
>>   drivers/net/ethernet/intel/ice/ice_main.c    | 189 ++++++-------------
>>   5 files changed, 139 insertions(+), 133 deletions(-)
> 
> [...]
