Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7392C8CD984
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 May 2024 19:54:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8EE874181F;
	Thu, 23 May 2024 17:53:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EZQy_9lUCaTN; Thu, 23 May 2024 17:53:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4613C41835
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716486838;
	bh=uPSyPTa1TnCbStXnur2ig0Mc5HNW4PL4AmDWToMEGjQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q5oAyzt4g1A2PzYt4A8kirKlYc9006bjB7l9lsKuxqHyY9GrvTA3rvf/1qoM5c/as
	 tS/egOciTjEUk2YRXwhVzfGYdfvEchhp8ElXPJB7TQn6GSsYTG9IT5qg5l8CkXAYxM
	 ha5t+TcG+RLaFxrLqR0Mhto82uXWfGib06WEwPN9mlwPpT7tiuNZJVZcnWbC+HZSC0
	 u/bV3iGK3uVqqOBTR0A1byDTVNQDqiILgY9DKSUtSWGDXpB62WjNqk/ksSFMdiZ8t2
	 tOw1W5XMBHnkMhC7GAaNrVLsIuZJdnq1W37nmv0WrzABja530+QHtB7DsK5KNTycPL
	 0pzPCYS4qwSjQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4613C41835;
	Thu, 23 May 2024 17:53:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50F141BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 17:53:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 39F9080E6E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 17:53:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z0sqjPxokjRB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 May 2024 17:53:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D5FFB80E92
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5FFB80E92
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D5FFB80E92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 17:53:53 +0000 (UTC)
X-CSE-ConnectionGUID: cWslg+/mQIa1jKzWoOKPZQ==
X-CSE-MsgGUID: /skQbYc7SA+SNhCeKBZfbA==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="16655124"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="16655124"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 10:53:53 -0700
X-CSE-ConnectionGUID: /xTh8I8hSbqiY6y3Ah/tCw==
X-CSE-MsgGUID: 3hGa5rc2TAarAu8tZqMtHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="64962981"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 10:53:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 10:53:45 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 10:53:45 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 10:53:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H5tRyIm3LUibwuiz3UAHlPPSUVLjk6BhhUWo5lDhFHaTN5YlI9SMq7W7HVgEJ0OOOjPM2ycukhGM1gWfXdjWQxYm8uRj3RUuJutx+nYYB5n5Uu+kQvV29B/dsoZyFXnvNRdi+phmmsokFB7QeHcoC2ykcpEpzKz4M4NlGQeswSbtaRP4QIZTtXka/9YHxTZIimztuRpD4y+EaD4BqQWi8wGWnc7cYb+fwOfWW0Qiz9d1/klUQUyO0URNtRgTotJBdcjEXWvsSspSfXFNVDZh6Wz7e2OjoWVRC/zFfFRV3/ZYFdydz4wMeZZ+UAqAaX70ZacZMwTyHcod28cNWyEjdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uPSyPTa1TnCbStXnur2ig0Mc5HNW4PL4AmDWToMEGjQ=;
 b=nqRAhUhw9gfusZVLR19FzI5dmSR7wkhCsKcMQO6NAtmhu+9ejOJMv4kwfO5AXSdCWUgtlwUb9aZT5ngYKTUg7VEMccwUaomBqAVeoyqCrwJ202AO6uN+oCrEe8m8mVWp+ffcSZTJrV9FokAHanG9DwWzSdGeQ//yl8HgnVoSvQClp9T/8gnXgydqAYhqQaBzR7Vj2C1ECZVNA8YR32PF3ijNlUuX1Vqt+B3sR7Bi6TvUrFBhJf3H16KvGqg20JMcZAOsBC7DOR00xjGrW+HHaq2qIb2lS7LGvkfuqniwRIN80XQr3zu9N6uT48BFAv07mM+3nLfVF4e1kyOUVDWVjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW3PR11MB4730.namprd11.prod.outlook.com (2603:10b6:303:58::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Thu, 23 May
 2024 17:53:41 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.016; Thu, 23 May 2024
 17:53:41 +0000
Message-ID: <c4d4c8f0-5088-430d-a076-dc4bd8cfbc55@intel.com>
Date: Thu, 23 May 2024 10:53:37 -0700
User-Agent: Mozilla Thunderbird
To: Michal Schmidt <mschmidt@redhat.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240522231256.587985-1-mschmidt@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240522231256.587985-1-mschmidt@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0056.namprd16.prod.outlook.com
 (2603:10b6:907:1::33) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW3PR11MB4730:EE_
X-MS-Office365-Filtering-Correlation-Id: 3037e7d5-a406-421c-305a-08dc7b514730
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZDJUU29xdVg2cDZ4UFpzdllKU0h5dXBXS3RDLzM1TlFHQ0hsaDRsR3krVHVE?=
 =?utf-8?B?RXFHK1lqbTl0Y3NVbXVjc2NaaDBEZXRraUVvNDUyMGlpZEdqRml2MUtQN1RY?=
 =?utf-8?B?NGUvZkJSYVFFN3BWZTRyWUxueGptN213ajV5NUNWWVdXcXFTU0hwWE5rWVdh?=
 =?utf-8?B?S2p4QVdyNHk3bEtCMHE0UCtHQXdITEE1dGRWVUJIdUVCVmgvZFkzYktQZHNY?=
 =?utf-8?B?TzhQR2Nrd2w4TzFGRWlvWmxCdDl4NlFyUnhSSFRUeHQwUGRBekdMSVZHOU9R?=
 =?utf-8?B?Z3htRGVnM2NrU3RBRHJsMWJYUXFtZWFOYmJ2OGdSQzlGR2FoaXZwZE9zc1Zx?=
 =?utf-8?B?Vmh3aUF0K2NCUHZxVkdJd3ZnMHQxZ2xwcHpMRXZmQ3VuVDdXTXBKSnR2Qm44?=
 =?utf-8?B?TmZZTE45bGlqMW1tYzY5YVNYb2JFbEtXOWNuS25MczNQckk1QzE3V25ZejNV?=
 =?utf-8?B?U0Q5U0JsRnFOVGovWGY0U1dYMXo4TW1QSTJSZ2s1ZG1VK3VqZ1RxYmJjYlFB?=
 =?utf-8?B?NHRtY3RwZ2VDRE1aM0lhUnRlM1cwdk9PTjNiVDcyamExR0ZiYlF0N1BNZFJ5?=
 =?utf-8?B?SU02TzdtUFd2K3pXeU8rbDYzZFF3b1VKbkdLYVpUM1ZQR0ZGL0pZKytROVRB?=
 =?utf-8?B?aEtQbmhXbGIycjZqS0Q5T2VMYjloRzhWNnVHTUt4SGd2OUtlcmtkOXJSRll6?=
 =?utf-8?B?VEFXbzJxKzd0dkQ5emFFQnRzcFBHY3hYOVRWRUwwL3lCZ0R6MTVBSDh2L0h2?=
 =?utf-8?B?QS9uanZXUlBYUW0xUTBsNFlTZ2E2Zk9VdWVDY093bVg0Z2VmVFhXcmdMSzl6?=
 =?utf-8?B?Vk0vS3FYQmJUaEtvUXZBd2wrQy9lR0NseEl1ZzFFZTU5UVp1ME5ueW5VSWVn?=
 =?utf-8?B?cUM0TlpjS3A3RU1qeFFDdUNhQ2pqNXZHcjdMT3VTbWt1eEtlbDhYb3BFTGJo?=
 =?utf-8?B?VzZrNmtoYlBUN3Z6NXNBSHoyZmNybVBBN2FCZ3Erc3YweXYyR1pGSks0RUhj?=
 =?utf-8?B?RXJidU9QQTJGckYvd0wwM25pTXhGQWw0UlEzSE1WQW9wamQ5dTRTR2FyRXdY?=
 =?utf-8?B?L2ZtaEpFbkJqaFMrUG4yWE90SUp1T05aVDlDclR2YmJ6RlZmUCsrL3hnV3RM?=
 =?utf-8?B?Yi9vU2wxdThBbGV1aHN5QTNLNDZETTFrUFhrTWUwNyswbFFOMFlOMzlkVk54?=
 =?utf-8?B?V0ZIQXlhT002NkU4cWIwYktjZ3pEM0FsVHBsOWtwWVZ4WmR5V1lUbmpEWVhE?=
 =?utf-8?B?bEs5QmdMQUtDZE0vK3hLSzY3YnRCVlg1SGpUeEpGVXppNDBQMjdUcUt3STRU?=
 =?utf-8?B?cVAzUWxKV1VDVVNXVmJ6QkxGVTlmbzA1TlVmd3g2ZWZoV3lBMyt3aHpxVGNx?=
 =?utf-8?B?RG9iMldydkVqM3NycDZVWm5hQ0xjMHB5TXRLU0I4Lzk5U2hwK3FvMkFmMThL?=
 =?utf-8?B?YTN4bm4wdGdLdlJKenJLVzhwWmQ1WlNObUxWUFh6TldzTEc4S2xSN1o1TCsw?=
 =?utf-8?B?dHhSSDZ2VlVIeGNhVGZkZENhMjZsRDgrR3krR3plblFiZDBoSzd5ekJWdmlj?=
 =?utf-8?B?QkhZa3p3SVR5WG9vbmxMVnNrNTI1RHdPNU5OQnlDWDhUTGwvR0I3RUxLRkJj?=
 =?utf-8?Q?ZtO9YRh2jgp9J4rpXJrNi2AzlOouSyzdCguXtVIr5Lh0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RU5HWndaK2NsK3lkZVJUNFcyOFNzTEZmQWFTbG9BSzBBVm5FbWlXY3kzZXRE?=
 =?utf-8?B?TzhEcUFVQ3FiYUhpLzVLQ1dhRGJ2ZkRyVWQ2NEo5VUIyUzZ5NmVreEY2aGhj?=
 =?utf-8?B?NUpuQnBKSnFXNW5JY3lFTEV0b01ObndlMnQ2aGRXa3VIOEoycHJtLzdYRnJ2?=
 =?utf-8?B?NUdxS3o0RDdLdjh2eWdXb1NFMEVGWjNZbWV5VDVNQXVySDYvdUxtT0puWEFR?=
 =?utf-8?B?OFhTWVUyT2V1Vjd5c2VVVVlFQmxlT1VGK3pXVTlRNDdrbUYwQkdEVVUyd2xW?=
 =?utf-8?B?d0pjNW5semM4M0dNWlU0TFdiSlN1bTh6bE1pSVNkZW0wSjVEZG5sZ3lzZ0Z5?=
 =?utf-8?B?b2ZXUmhPV1RIZEpZN1FwU3huTm9ubHEwMnZmTDFManM5Mis2Vy8zZFM3SEND?=
 =?utf-8?B?Z3A3RDByNEN0dXlHSjBIWHZSWVpMMkJOYjcwL05vZFlMVWttUWNMU0pqT0lM?=
 =?utf-8?B?NzhySFFVTlVPUVBSK0tscGxaTUpDUlZQM0g2V0p3c1A4d21JL2txMFd0dkxD?=
 =?utf-8?B?b1h5aUltMzVNZWZ4UVBHRDF5QUM0NnBHTWJFTUNSamlvTnp2Y2dDWjM1MjB4?=
 =?utf-8?B?RVBXY1NWS2dHTG5Tcyt2N29jaEtDakZ1MVlTbzA2VUhrYWNFM3dBUlRmaUNk?=
 =?utf-8?B?RnJRdmNUTGZBK2NPbXZZdlhSSjdsb01RcG93SEpCc3ZIL3VuMFVpWEV0WkVr?=
 =?utf-8?B?dER4SUF0V1VYQmtzcmdtTmFWVFhxZzVaR2p2UzBIZVMrallRRkxNa0lMb2I3?=
 =?utf-8?B?K0R2bnkyNEMyWW5GWkRQZytuY21qUk4ya0s3MmJJb2sxdXUxTGY5RmFBSmRP?=
 =?utf-8?B?KzhQQnkwT2wrQkF2S1g0NVFMTXNFSmRqcVJBTm5UVUU0a245eWtFUzMyNVVo?=
 =?utf-8?B?Y1h3RFVPaHNFNVdQTFh2eTUyT3Q1YzZxN3VoVExQL0tjYlBZZGZRVEZtVkt6?=
 =?utf-8?B?SGs4ODhlb3cvYjRrSm83cWxVQzBiUzJYMERqWDJrTHdGK0oxUHIzZ3dMeW1H?=
 =?utf-8?B?cVcxTkdhUFlMTlAyL29xcXpTemZRb3B0YlJUS1kzcW5WOGlJOXg0S1hGZFpJ?=
 =?utf-8?B?UzJSL2hvZjM2YjBpZmdGR1c3dWFtR1JlTjludVlwSEdOcWtkTkcxT21NNWpq?=
 =?utf-8?B?WUZoZll4dXMyU0MyL2g0NTNWTEx1MzY2SVVMTFhQWldjUWNKTzVMdE1rMVc0?=
 =?utf-8?B?eEhRQlJuZGcwaWd0MWtOSmV0M3BkcHE3Ym9EUC9BVkY0QVhWM0I1MDFVMHpM?=
 =?utf-8?B?VEVxeWFkb253aUJ1TnQvVVNZSmtNUjNFTzVzVms1STBkajJDUU1JeUFaZjV4?=
 =?utf-8?B?Y1JTdU5zUnY1SFBwaTNBZWh6V1ptZ0ZtbzJQeisyeDQrM2dqTUxPQjZMdHVY?=
 =?utf-8?B?K01vWElqRGNIVkZkY2Y2RmttOUJKVXIwOGZzSFhZbG1JOENIV3RoWGJnV2tn?=
 =?utf-8?B?ZXJYS1d5b0IyRS83VVZlUG1DTTFPNjRDZVZ4dVVRc240RmN1SmdJVGVpNHZm?=
 =?utf-8?B?QklWTFlkZ3o5ZFN1MkFuZlRHaDhOMUovYlhvaTF2K0ZOMHdDQWdGV0Vqcksw?=
 =?utf-8?B?SW5yQVkycUdqakZDcVRYNFczRWFyYjZHU0tVQ3ZQMVdUTlk0TGlCcGFYVHJ6?=
 =?utf-8?B?Tkd4QjRtZjFYaGVGczBBcTJXWGF4am1iMHNna1VsMHlhdGFhUnVHaGZDQldX?=
 =?utf-8?B?dzdqeU1pemRMM1VjeDB1WUc2aE14bU9KSmNodGVoa1JGUStmMVNkSnBEQW1R?=
 =?utf-8?B?RmZ4ZGd6bzY4VWlJZFZUUHJkZ0UrYzFhNkd0MGdRTmgxVFRtMGMrcFVDUTBU?=
 =?utf-8?B?VU01MjNZMUpKYmlxb0FRZjhVZ2tkcEs0T2YyOFdvQlZIeWdyNWkvWlVMUFZj?=
 =?utf-8?B?U2JJbm1YZ0NxUndwVU94K25pbmJ0aVhFR2lPTEJsajBJbGtUUWllZjJ1MFR4?=
 =?utf-8?B?S2dSczlrM0g5eUFVRU00UWlLdENQSmphQ2psK3RPN005STN3WnF5YnZYMS9r?=
 =?utf-8?B?aDNYMUFnSEtjdDkydU96Tm5XRVc3K2NXb2FuR1U4SVI0Zmp1Z3V3a0NYazk0?=
 =?utf-8?B?ZjBSNVVsZWJmVlRBWkFlNC9IVWQ5NXhLd3JEYkZDby9ieVBDNko1QktXckZr?=
 =?utf-8?B?YzhscW8wYnlzR2pTQ1NxQ2xGVmRwZ2ZoVURYaFRhdjJXYy9QQ2E5VHBWU1Yw?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3037e7d5-a406-421c-305a-08dc7b514730
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2024 17:53:41.2537 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +7yE6eAN9/zJImtYTSOheMaqmkwXGcnalimQyYXW3DO4lUy+Uyf6+CgPCBNOmknskbejpVqcgNEgrXRt/BaOybQVRBletx7dW4huv86Obws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4730
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716486834; x=1748022834;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9rmNmqRYVF819VpWUzSl3ND4rcqYuEViFBrRIDdzMp8=;
 b=QfP2t02TvPuQPQZJ3xqqCG5FE6/Ob6McR2Pf9Nj+H++9c39e8GY+hrBN
 I/MfgmJnFXv1mfK6AsiTQCVEI2dLca9be/hydzNY4R2MmbgIcfSRhvcA6
 ZpiILFVbMqoz6AAd2YKp1FPGWQ9l5VcENGxHSD3bjtlXCID8EBvhXxQJ1
 6oNXPxF7dnA+X9TXAfH8LrtyAblvX2vMa54vwtQDKZMTctn/fir55Maf2
 afzl+70XNswL41hyqphNhabgD8JVCu2LAuXM7uxitW3SXxGuwWMKS6LX2
 A+pkDgRxLI/X3JbCB2rA26i3Kyexi48D7p0YEpgtXqCSNmJ7tOq71mLbU
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QfP2t02T
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: use
 irq_update_affinity_hint()
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
Cc: netdev@vger.kernel.org, Thomas
 Gleixner <tglx@linutronix.de>, Nitesh Narayan Lal <nitesh@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/22/2024 4:12 PM, Michal Schmidt wrote:
> irq_set_affinity_hint() is deprecated. Use irq_update_affinity_hint()
> instead. This removes the side-effect of actually applying the affinity.
> 
> The driver does not really need to worry about spreading its IRQs across
> CPUs. The core code already takes care of that.
> On the contrary, when the driver applies affinities by itself, it breaks
> the users' expectations:
>  1. The user configures irqbalance with IRQBALANCE_BANNED_CPULIST in
>     order to prevent IRQs from being moved to certain CPUs that run a
>     real-time workload.
>  2. ice reconfigures VSIs at runtime due to a MIB change
>     (ice_dcb_process_lldp_set_mib_change). Reopening a VSI resets the
>     affinity in ice_vsi_req_irq_msix().

On an unrelated note, I wonder if this sort of reconfiguration could be
avoided so we don't lose such configuration....

>  3. ice has no idea about irqbalance's config, so it may move an IRQ to
>     a banned CPU. The real-time workload suffers unacceptable latency.
> 

Given all of these problems, what is remaining for us to completely
remove this API so that future driver authors don't make this mistake again?

> I am not sure if updating the affinity hints is at all useful, because
> irqbalance ignores them since 2016 ([1]), but at least it's harmless.
> 

Yea. To be honest, I suspect this sort of code originates from
micro-bench marking with irqbalance disabled. I certainly remember folks
telling me that irqbalance wasn't helpful. In reality I think its
because when doing bench marking or testing you want run-to-run behavior
to stay consistent while irqbalance might be changing and tuning
parameters differently due to other system load.

> This ice change is similar to i40e commit d34c54d1739c ("i40e: Use
> irq_update_affinity_hint()").
> 
> [1] https://github.com/Irqbalance/irqbalance/commit/dcc411e7bfdd
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---

Makes sense.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  drivers/net/ethernet/intel/ice/ice_lib.c  | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 5371e91f6bbb..0f8b622db2b5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -2587,8 +2587,8 @@ void ice_vsi_free_irq(struct ice_vsi *vsi)
>  		if (!IS_ENABLED(CONFIG_RFS_ACCEL))
>  			irq_set_affinity_notifier(irq_num, NULL);
>  
> -		/* clear the affinity_mask in the IRQ descriptor */
> -		irq_set_affinity_hint(irq_num, NULL);
> +		/* clear the affinity_hint in the IRQ descriptor */
> +		irq_update_affinity_hint(irq_num, NULL);
>  		synchronize_irq(irq_num);
>  		devm_free_irq(ice_pf_to_dev(pf), irq_num, vsi->q_vectors[i]);
>  	}
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index f60c022f7960..a5d369b8fed5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -2607,7 +2607,7 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
>  		}
>  
>  		/* assign the mask for this irq */
> -		irq_set_affinity_hint(irq_num, &q_vector->affinity_mask);
> +		irq_update_affinity_hint(irq_num, &q_vector->affinity_mask);
>  	}
>  
>  	err = ice_set_cpu_rx_rmap(vsi);
> @@ -2625,7 +2625,7 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi, char *basename)
>  		irq_num = vsi->q_vectors[vector]->irq.virq;
>  		if (!IS_ENABLED(CONFIG_RFS_ACCEL))
>  			irq_set_affinity_notifier(irq_num, NULL);
> -		irq_set_affinity_hint(irq_num, NULL);
> +		irq_update_affinity_hint(irq_num, NULL);
>  		devm_free_irq(dev, irq_num, &vsi->q_vectors[vector]);
>  	}
>  	return err;
