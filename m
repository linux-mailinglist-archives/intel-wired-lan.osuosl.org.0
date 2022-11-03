Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD1D6188B3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 20:24:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D865361017;
	Thu,  3 Nov 2022 19:24:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D865361017
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667503452;
	bh=/73WCv/VOEt0vUASXqTA5/yKxd/aE6yGfkatWmnDLrA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Bds/CVFr914msQRVbHWYV7VxWQO8fVtyQuU81rjzgbuozLOp+QAZTk0C9INkDNM9z
	 mTktmU396Sgi66e7bO/cpyOJXsK1WFQFs2H0ScBZLPKPYP5q8YKxbzrV6Uv8jYkrNw
	 lvXkA2cXWOnrcKLDRAXHqJK6RJ05Zj2MT18Ywou/rsOaHL52lj8UYPuc2rn6hKrDcV
	 /P7iSBiDaC4p0XQJUI/agfGVus8VBW3GL8V7ME9q/dwYPZCGEA8SNyxNaNfY63kKjZ
	 1L7tV4YyuGhVBUUS0Dvo33Q1DrD8H3cZitmCIgXFh2OMj5RAzKRjhVvTZ012Stpvcl
	 Ga6jZrByPfFpA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vVGSPVXsk43M; Thu,  3 Nov 2022 19:24:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D85861015;
	Thu,  3 Nov 2022 19:24:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D85861015
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 252BD1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 19:24:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0C66A61015
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 19:24:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C66A61015
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rq0y3i9sZxYz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 19:24:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBC7E61014
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CBC7E61014
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 19:24:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="307402582"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="307402582"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 12:24:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="740320453"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="740320453"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 03 Nov 2022 12:24:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 12:24:04 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 12:24:04 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 12:24:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NAwWzaolTrBnioelhqxTeBJHUadSTpys706DnIbT6wXs89SXMmHH8kKMZQfmVJ8NOhu5fIpInYbvUE6uOAheoEb6jIOJv4Imn/VKcfDWilA+O/qcnT3UkWlS5CycGlS4feww4tWEhUZ8Re0mqp2RbiRcexgdEizP7SGfh5xzGp0+Oqs2X/rGnKYlPxn5c5yb3klRTJVjw5OkZwdudk0L4VF7GPR7Gb1ur4ntDToW7mpFJFrxFanKHS0naaSlDxNIynEe3AdiHAL4SWJUgj6yRu0+rdewd1wVe2PwQKTzQHRh2SE4C16ocideRpgD2M/fp/CwW/6MuklAkbHVEi69IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Aa9y9SyUBJFev9+aDJae5Ye7Kdp3/qGycX0pZE69FHs=;
 b=c9wJte9HBJTDOUP8hM2DpKvMi8qkawZn38iSdfzkNLg8CNaF3uGk6hpKU34gb14F0frD3CTgm9WEMZKoer1cpJ553QBN/WSSnODMsihNopxm2306UVQDJA/F3/ZOdQEn0XwvpkH/uCEoHE4rb81XOepsIkaBzxD+dEhwgy0XElB1SEu3Q4bjnEuT1siTskFpS6OpDvfZyBJTZyCjz3aNMfq/Xmcwb917MwTUHcjKSPrxfWoyusfV3ERcYYd9muSghzDsjawbdU1h9NGUOv7HVdn8Q6/G/37VE5gQ87VHchk6GHSA2rNqmlW+vhzDSDN54GNnud7xPsTm/TnsJJvPug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BL1PR11MB6027.namprd11.prod.outlook.com (2603:10b6:208:392::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.16; Thu, 3 Nov
 2022 19:24:00 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::d408:e9e3:d620:1f94]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::d408:e9e3:d620:1f94%6]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 19:24:00 +0000
Message-ID: <552a2244-f95f-a990-19f7-0d94614ddb25@intel.com>
Date: Thu, 3 Nov 2022 12:23:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
 <20221101225240.421525-8-jacob.e.keller@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20221101225240.421525-8-jacob.e.keller@intel.com>
X-ClientProxiedBy: SJ0P220CA0010.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::14) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|BL1PR11MB6027:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c6e94ff-74d0-4805-85a5-08dabdd0f5f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5agixpMLeuZO5RHfofUcf/PU8vpHSsj/pYvrPFDOfkr3/+vx81SryOYVOBI2rek5zNwii7CQHfD3NObeu1BERsJGgZrMVAEft30foXLqZyrgUZmwDuo0teN7+Ik/sdQeEYo1O1xzMRlielrLv4cvarjWCvZ+Q4aMo532W0PwxxSt5ByuEb7G0x3ZOnivx2u8pOSGITgmRA9cap4Lx3H71yMPCeFTjblFT4zlXpckJwV/uqheZifFbahjUCav3Qz4j7ou3ldjmAqtnk2FXKlqi+ybaPxfVmuyLyLwgIE8aMUs8TVF/QF1hlhfb4csks0jAidMCo0qgAvH4HapUjHnaevaveo6WlUpRo2i4y+n/3QRiCZnJp6oNb1BzmW3yduIChc50x1EjweXAY9lJtp9Jw7woN3NzIBPJxYGYck4X7HD3A3Y4i0DVkBEYsdSJRrKqeTi7HVxSwp4tHqHnTir4juCPOPWlu/FMMcOQam3iv3atT8aLYSwBJJ35baYp157oWYTS1UniKabBm8kgrgyrk+WuNhCBz78RYF0GWv4fHUOftVtgFPOUAIIi4DOA3oI1ZRKXCDhxITiuR5GzpP1YrXh1W26LwEhlrk3OXlB/gw1Aqfel/d/Ndx1vRzS0laJ6rAUhNEDFPnsRVRwf0/4mFtU/Cer4StqcNHskURIqPv5pUMAufpUIJV0NoK3x7jLW/CR/QpduUvajH2XcceE/rB/G/JcU+5P5ulgSGhPdcfqjjKeBpqucFqSjN1TS95B7bdyLwT0XxxguE2H1CMkrtszQsr/uyB07Yylew76K14=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(376002)(39860400002)(396003)(346002)(451199015)(66556008)(82960400001)(31696002)(6486002)(6666004)(66476007)(316002)(6506007)(478600001)(2906002)(5660300002)(6916009)(66946007)(6512007)(186003)(53546011)(86362001)(8676002)(8936002)(41300700001)(26005)(2616005)(38100700002)(83380400001)(36756003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2h1OTZEKzRBQnBXWEhUbzhGZmphODIwT2hkVEJZZ2E2d2tuUjM0TnJ3WjFP?=
 =?utf-8?B?UU8xYjNiZDk5a0lrL3NVK1E4TGtMVjI1aVd2OG1HbWlsOEx6a0pSakRLVy9X?=
 =?utf-8?B?WWRvZFlIczlLS3NDRTg5UFlXbVBEbzZ0TjhSYkFUbkU4Y3R6Y2hrSlcxTm5L?=
 =?utf-8?B?dXJ1SUZZUHV5MDg1WUd0aHNyd3JDNVdxWVdkMTJpVFU0M00vQ25ldU5USWVU?=
 =?utf-8?B?cSt4QUZXK05KejhQZkd4bDVUSEo0RjEvOWt0M3o2YWppYlRFSFJ4MURDVGpo?=
 =?utf-8?B?ZEsvMEZwcFdzK2F4YWI3VU5uQU8rMHozaE5pRnV4aWk2dGNhMDVIL1FUSHFJ?=
 =?utf-8?B?TnlMM3RpU3NoVk5uT3R2YUZ6dnZBQjE5cXVoYmh5RUl6MFVnSVg1bHRaMW9R?=
 =?utf-8?B?dHZMcTVrZTZyWDhvZDI1amxQUElRYU0zdFdHYkhrVGdHc0tRNE93c09WeUhl?=
 =?utf-8?B?VlBOVzBLS3NOREtJd0drL2VNeGZYQjY2aUNpYmlhQkVrQWpFRk5yMkVxem5G?=
 =?utf-8?B?bHc5a2dtTzJlL3BqcERXL2VHdDAvVTBnaUJjK0NncS90eHlpUlk2a3lhdFUz?=
 =?utf-8?B?dlA1TEQ4bmtPMXUvRmh1bG9VZHpoa0ZidFU5WE0yN1pqTFFybXU1YzZnRWN1?=
 =?utf-8?B?SXhJTDF5eU90UWgrYkh6UDRiVTlNTENydUl3QjQ1NHpJWkQvSGJGSXhLNjVM?=
 =?utf-8?B?OGZnTG5Ga1hPT2JXTkpDckV0UkZaUnpXTUYzNTdqcElHR0o2RmFIUVVia1Qx?=
 =?utf-8?B?c1p5aEMyZmtlS2xoKzY1NEtRNjRDVW80R09wUU9xUEt0b293bGhkVlhoOGF4?=
 =?utf-8?B?d0pobFdoSnp0TUUzWWhMNzdRa1JBekhJQlk2MmhVQjlORHlTaytQQS9tcWFs?=
 =?utf-8?B?cnc3MjJDNXdGRFBxSGJZcHJsaEJleW10OFlWa0hhbktoYU1td3ErcGpnMS94?=
 =?utf-8?B?UHJkODBxaUdJRWVzNkFsK0ZHSGo1cmJ5L2s4VDVZdkNjNE1aWHhMTzJlWlhS?=
 =?utf-8?B?MkVnL0o3V2tIaUloSkErM2NoYUFQVE1PV0kzOWlrVTBSL1ZHUFlORmlIZFVQ?=
 =?utf-8?B?NEhvQUFVVGdTZTh5K0VuNWQrYVlVQkJQQkVNenZ5cnVzMmxKc2VmSDBrYXJv?=
 =?utf-8?B?VWRZSC9tdldyNEdvZmwyWExCWDVHT3JFaUJyNFB1aU4xb0kzWm1BWVpuOUNG?=
 =?utf-8?B?TVc2WUxhN1ZIRWw3OEs5ZXpzQnppWW1LZFJQemQyc2trOXhDV0Q2N0t3VVhP?=
 =?utf-8?B?R1orNmNLUWRLaDdTLzFhMlJKL3pFN0VNMFl5b1dVcGVwTkxWVlhVQmtVeUFr?=
 =?utf-8?B?Zk9PSmZvMFlWSDd0QjdEcTR3Z2FybnRTKzNtVFVuVG9EUjd5L3k5ZTJ1WlZx?=
 =?utf-8?B?dFp0c0hNMm4zcVgzM3VuS3Q1NythOXBINEJ3WmoyRzB5ZUZuenY3V0tCWVBY?=
 =?utf-8?B?cHp4NkNtVjJRb05WcEhJcGxCZ2RCZlFrY0kraTZSd0thT3lqMlJ3bzBOdzd0?=
 =?utf-8?B?TXJDcWNZUU5mSzV1cE85eVRRSFRKQkdCQnQ5eUFsWFVtT0hIODJVZ0Z1NGRK?=
 =?utf-8?B?ek5xRFc3V1hQd25OcWdScDRYYXdZSnNKTGpFQlQwUXhHck95bFdBdExyb3F3?=
 =?utf-8?B?cjFWSHR5ZXlQNGc2QkVBa05ZREJTSVdVREJOQml1Y0lPbXBxN1d3cU5uRkli?=
 =?utf-8?B?MzNLdkpPNWV1SHBNTmc1UUxPMVIweWwxMDNObllTZTQwNFd4YVhzdHlRQy9k?=
 =?utf-8?B?dzI1cG5Sc0tMaFAvUEc5dzM3aWN3MmpuY0c0SFJUdCs0Y055S3lmcE91Zk5a?=
 =?utf-8?B?VnRmbHJyT0gydkVZRW1pV2o2UkRTUDVlODM5OGduTytjamd0eXFFV1pmSGQ4?=
 =?utf-8?B?NEdIbmR0OW0wQ200THo1MzNNMnJwWHZMUDFuaVB1ejFIQ3FTUExaOGtUVkdp?=
 =?utf-8?B?VjVKL1FybWVtUnpXZ0Q1OXlxNGlpcDJ1dDM2dEg5YUlURjZ0alhsZTAvZURY?=
 =?utf-8?B?aEdncFpSdWluZ29qTEFHTVpWcWMwNUU3MWd2cndkai9kSG81bnAzdk04d1lh?=
 =?utf-8?B?QWxHV1l5M2VhcHg3bmVtZGQyTmVqd2IzaGZHdG5wK1Voc2o5V2NYWWVUcGR6?=
 =?utf-8?B?Y0V0M0wySmk1bW1FckUvR25iZ1E4eUVMUmg1N1RvWVhRaWVTa2orTGN4eUFo?=
 =?utf-8?B?dHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c6e94ff-74d0-4805-85a5-08dabdd0f5f9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 19:24:00.6464 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jWey1gb/x7CNLcM7huFyNC1NmjtqYpCCUxt6RN6L+nhr8gCnnz05uDBa4AVTa7N3u47JuM2sQcJozCa8oNfl01WErxfUtTyP95EBbbdLJRM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6027
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667503445; x=1699039445;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cnLIuzP6qPpZyIYeOy+NPMoGKDNxRcZNl/WQu3vvqxE=;
 b=nGkMbZEGQVihEYt2uIpycFzLDcfZghSP9AME0gGaZvFZMv6Kp+MYalKG
 nd1wU6KLhNPUlzvGl5H//Kcv4/8azblBj6I5a7/v8mYt/RbztPKeb0YuZ
 /kRegLORN83j4AO7aQjsrWcCP5RB7jkwQG7BCq6dF0ujJauguoIgvqc/P
 em9Sizk84T8T5TBlSPVmvMY52QLDg4AaBfx76J4+7hYkK9l+nfRFv3qc4
 AXICDiGbhDFvGTil73iVJn3CstfL2JA3R2p7z2NVO1+Z758yTtbWshzLU
 UApMINJ81P0Ye30Ejqk+G3vc4rnt4YJJ6vCJxEMELtkWJ2pZcDXelyRv/
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nGkMbZEG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/15] ice: check Tx
 timestamp memory register for ready timestamps
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



On 11/1/2022 3:52 PM, Jacob Keller wrote:
> The PHY for e822 based hardware has a register which indicates which
> timestamps are valid in the PHY timestamp memory block. Each bit in the
> register indicates whether the associated index in the timestamp memory is
> valid.
> 
> Hardware sets this bit when the timestamp is captured, and clears the bit
> when the timestamp is read. Use of this register is important as reading
> timestamp registers can impact the way that hardware generates timestamp
> interrupts.
> 
> This occurs because the PHY has an internal value which is incremented
> when hardware captures a timestamp and decremented when software reads a
> timestamp. Reading timestamps which are not marked as valid still decrement
> the internal value and can result in the Tx timestamp interrupt not
> triggering in the future.
> 
> To prevent this, use the timestamp memory value to determine which
> timestamps are ready to be read. The ice_get_phy_tx_tstamp_ready function
> reads this value. For e810 devices, this just always returns with all bits
> set.
> 
> Skip any timestamp which is not set in this bitmap, avoiding reading extra
> timestamps on e822 devices.
> 
> Modify the stale check to apply only to e810 devices. It is not necessary
> for e822 devices because the timestamp memory register will prevent us from
> reading a stale timestamp.
> 
> Modify the ICE_PTP_TS_VALID check to simply drop the timestamp immediately
> so that in an event of getting such an invalid timestamp the driver does
> not attempt to re-read the timestamp again in a future poll of the
> register.
> 
> With these changes, the driver now reads each timestamp register exactly
> once, and does not attempt any re-reads. This ensures the interrupt
> tracking logic in the PHY will not get stuck.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c    | 41 ++++++++++--
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 72 +++++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
>   3 files changed, 108 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index ebe910326963..39c68a272c6a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -655,6 +655,9 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>   	struct ice_ptp_port *ptp_port;
>   	bool ts_handled = true;
>   	struct ice_pf *pf;
> +	struct ice_hw *hw;
> +	u64 tstamp_ready;
> +	int err;
>   	u8 idx;
>   
>   	if (!tx->init)
> @@ -662,6 +665,12 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>   
>   	ptp_port = container_of(tx, struct ice_ptp_port, tx);
>   	pf = ptp_port_to_pf(ptp_port);
> +	hw = &pf->hw;
> +
> +	/* Read the Tx ready status first */
> +	err = ice_get_phy_tx_tstamp_ready(hw, tx->block, &tstamp_ready);
> +	if (err)
> +		return false;
>   
>   	for_each_set_bit(idx, tx->in_use, tx->len) {
>   		struct skb_shared_hwtstamps shhwtstamps = {};
> @@ -669,7 +678,6 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>   		u64 raw_tstamp, tstamp;
>   		bool drop_ts = false;
>   		struct sk_buff *skb;
> -		int err;
>   
>   		/* Drop packets which have waited for more than 2 seconds */
>   		if (time_is_before_jiffies(tx->tstamps[idx].start + 2 * HZ)) {
> @@ -677,24 +685,45 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
>   
>   			/* Count the number of Tx timestamps that timed out */
>   			pf->ptp.tx_hwtstamp_timeouts++;
> +		}
>   
> -			goto skip_ts_read;
> +		/* Only read a timestamp from the PHY if its marked as ready
> +		 * by the tstamp_ready register. This avoids unnecessary
> +		 * reading of timestamps which are not yet valid. This is
> +		 * important as we must read all timestamps which are valid
> +		 * and only timestamps which are valid during each interrupt.
> +		 * If we do not, the hardware logic for generating a new
> +		 * interrupt can get stuck on some devices.
> +		 */
> +		if (!(tstamp_ready & BIT_ULL(phy_idx))) {
> +			if (drop_ts)
> +				goto skip_ts_read;
> +			else
> +				continue;
>   		}
>   
>   		ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
>   
> -		err = ice_read_phy_tstamp(&pf->hw, tx->block, phy_idx,
> -					  &raw_tstamp);
> +		err = ice_read_phy_tstamp(hw, tx->block, phy_idx, &raw_tstamp);
>   		if (err)
>   			continue;
>   
>   		ice_trace(tx_tstamp_fw_done, tx->tstamps[idx].skb, idx);
>   
> -		/* Check if the timestamp is invalid or stale */
> -		if (!(raw_tstamp & ICE_PTP_TS_VALID) ||
> +		/* For e810 hardware, the tstamp_ready bitmask does not
> +		 * indicate whether a timestamp is ready. Instead, we check to
> +		 * make sure the timestamp is different from the previous
> +		 * cached value. If it is not, we need to re-read the
> +		 * timestamp later until we get a valid value.
> +		 */
> +		if (!drop_ts && ice_is_e810(hw) &&

I want to refactor this check to use a bit flag in the tx structure set 
by the tx timestamp init function for e810. That will make this a bit 
more clear and easier to re-use in the future if another hardware 
variant needs this but is not e810.

I'll do that in a v2 after folks have had a chance to provide feedback.

Thanks,
Jake

>   		    raw_tstamp == tx->tstamps[idx].cached_tstamp)
>   			continue;
>   
> +		/* Discard any timestamp value without the valid bit set */
> +		if (!(raw_tstamp & ICE_PTP_TS_VALID))
> +			drop_ts = true;
> +
>   skip_ts_read:
>   		spin_lock(&tx->lock);
>   		tx->tstamps[idx].cached_tstamp = raw_tstamp;
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 6c149b88c235..55bbe76ce0bd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -2417,6 +2417,43 @@ int ice_phy_calc_vernier_e822(struct ice_hw *hw, u8 port)
>   	return 0;
>   }
>   
> +/**
> + * ice_get_phy_tx_tstamp_ready_e822 - Read Tx memory status register
> + * @hw: pointer to the HW struct
> + * @quad: the timestamp quad to read from
> + * @tstamp_ready: contents of the Tx memory status register
> + *
> + * Read the Q_REG_TX_MEMORY_STATUS register indicating which timestamps in
> + * the PHY are ready. A set bit means the corresponding timestamp is valid and
> + * ready to be captured from the PHY timestamp block.
> + */
> +static int
> +ice_get_phy_tx_tstamp_ready_e822(struct ice_hw *hw, u8 quad, u64 *tstamp_ready)
> +{
> +	u32 hi, lo;
> +	int err;
> +
> +	err = ice_read_quad_reg_e822(hw, quad, Q_REG_TX_MEMORY_STATUS_U,
> +					&hi);
> +	if (err) {
> +		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_MEMORY_STATUS_U for quad %u, err %d\n",
> +			  quad, err);
> +		return err;
> +	}
> +
> +	err = ice_read_quad_reg_e822(hw, quad, Q_REG_TX_MEMORY_STATUS_L,
> +					&lo);
> +	if (err) {
> +		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_MEMORY_STATUS_L for quad %u, err %d\n",
> +			  quad, err);
> +		return err;
> +	}
> +
> +	*tstamp_ready = (u64)hi << 32 | (u64)lo;
> +
> +	return 0;
> +}
> +
>   /* E810 functions
>    *
>    * The following functions operate on the E810 series devices which use
> @@ -3091,6 +3128,21 @@ int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
>   		return ice_clear_phy_tstamp_e822(hw, block, idx);
>   }
>   
> +/* ice_get_phy_tx_tstamp_ready_e810 - Read Tx memory status register
> + * @hw: pointer to the HW struct
> + * @port: the PHY port to read
> + * @tstamp_ready: contents of the Tx memory status register
> + *
> + * E810 devices do not use a Tx memory status register. Instead simply
> + * indicate that all timestamps are currently ready.
> + */
> +static int
> +ice_get_phy_tx_tstamp_ready_e810(struct ice_hw *hw, u8 port, u64 *tstamp_ready)
> +{
> +	*tstamp_ready = 0xFFFFFFFFFFFFFFFF;
> +	return 0;
> +}
> +
>   /* E810T SMA functions
>    *
>    * The following functions operate specifically on E810T hardware and are used
> @@ -3306,3 +3358,23 @@ int ice_ptp_init_phc(struct ice_hw *hw)
>   	else
>   		return ice_ptp_init_phc_e822(hw);
>   }
> +
> +/* ice_get_phy_tx_tstamp_ready - Read PHY Tx memory status indication
> + * @hw: pointer to the HW struct
> + * @block: the timestamp block to check
> + * @tstamp_ready: storage for the PHY Tx memory status information
> + *
> + * Check the PHY for Tx timestamp memory status. This reports a 64 bit value
> + * which indicates which timestamps in the block may be captured. A set bit
> + * means the timestamp can be read. An unset bit means the timestamp is not
> + * ready and software should avoid reading the register.
> + */
> +int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
> +{
> +	if (ice_is_e810(hw))
> +		return ice_get_phy_tx_tstamp_ready_e810(hw, block,
> +							tstamp_ready);
> +	else
> +		return ice_get_phy_tx_tstamp_ready_e822(hw, block,
> +							tstamp_ready);
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index b0cd73aaac6b..b781dadf5a39 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -135,6 +135,7 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp);
>   int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx);
>   void ice_ptp_reset_ts_memory(struct ice_hw *hw);
>   int ice_ptp_init_phc(struct ice_hw *hw);
> +int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready);
>   
>   /* E822 family functions */
>   int ice_read_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 *val);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
