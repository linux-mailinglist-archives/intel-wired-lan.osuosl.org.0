Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C449E7C7A43
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Oct 2023 01:15:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A9CC6149A;
	Thu, 12 Oct 2023 23:15:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A9CC6149A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697152526;
	bh=YEkCXJt+Zau+83n5QpgNPwZzko1ROWeiCxm+O6Z6sDQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iEqey5b5rWeGplyCMigpvsqOjau+HcQ1ahOzmGsK2SgnVjFQw+Q/dxwnZJOlwnAIG
	 V23y0nzcyo546yaTOSNuTyqOiQ3NKrfQ0n1rpuX/w850slPoQAdIX8tmSga+u6BIwa
	 AZUjQYjfttL4JHYg5i+eVNZxXPZOqyqpxAa73ZvMMZnntT5VHVO2eP74Baqje7PTmW
	 b2jScoLiJgCAWhZWvQ7cax7URWBH6aTlJyyGak1zXltByIa9NmhmCSb2vVTeXZdIrr
	 2YOI2PvhIOMy4PLQoB0m6QXvOW1bxSq9NnczAodrxUg2a8XMRYtRvb1GkPCYOOpnmd
	 D3Egx7Y1EYGQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id myxipY_nS-1x; Thu, 12 Oct 2023 23:15:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A715C612FD;
	Thu, 12 Oct 2023 23:15:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A715C612FD
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4E8861BF327
 for <intel-wired-lan@osuosl.org>; Thu, 12 Oct 2023 23:15:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2AD4B40864
 for <intel-wired-lan@osuosl.org>; Thu, 12 Oct 2023 23:15:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AD4B40864
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y1HQYNJn2G2A for <intel-wired-lan@osuosl.org>;
 Thu, 12 Oct 2023 23:15:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD0774067F
 for <intel-wired-lan@osuosl.org>; Thu, 12 Oct 2023 23:15:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD0774067F
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="365320832"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="365320832"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 16:15:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="731102494"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="731102494"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 16:15:17 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 16:15:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 16:15:17 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 16:15:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fgwojhJ3gHVkFqN9dOyIpsD27IOb7p3u/5Lg4XjoM05kMWL1iRsWqnwEu+hkNgPA+L8AR3PoxGu5sk5g6XZVhSwbsrXeU0xQny2RyY3cnO8p/R6p6Vda2lqib/WX1Ep6oRYMqP+7wdJzywb/IFnmDP4Cn79YFwY1yggxUdPnDwcpOIdkW8jII6gs8jCH3oyQmBlq0jFDjRfVSu7eR89X2lZkpKc0lon5hgfG2amF9tV9IqJx+H8+VylXyos5yRHm60O/tWt0PDsdGohOIsrGjuOwAlRE4TZOeTUTcj+cX2luyLwtMmKjbrD84AAvA5WcNBguypaHJ5KMbUl8LCoIgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=veY/pJsnup0u2QHdNqpAHwIxHhWiHr49yefkiDkGYbo=;
 b=eJcUm/PKZX4iNoVO4U0AJZ6qBagWUpX2DYqyC+OhuwBiDl19NTaWzT1AtCpSFVUrAXxt9g7ElM5nzrTLYLkj6fl6GSE9W2ukNe3hboJbW1kXU8Z3/t4cJ8px5pA59mnAFqLlE2AyEt6qnCjhQVWVP1sMae+zV+kuP5KaFT3ee6DiVvY4eW1oRHdyzCbCQjfG6oPRP7giicjV8eeVoCp+CRQ1YknuFVhGAMyAXR/a1ejMI1g7F+YP14uFiBnP/aUvbHEtokb+CMqftFUN3H3Q//ba7B/kpZB7qfb6okAI+aX6uvXd1TlOR0jn4OUJPY4iYGB+LW/Sx6SxlCuXv0pQgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW4PR11MB5891.namprd11.prod.outlook.com (2603:10b6:303:169::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36; Thu, 12 Oct
 2023 23:15:15 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%5]) with mapi id 15.20.6863.043; Thu, 12 Oct 2023
 23:15:15 +0000
Message-ID: <5640ea70-854f-4348-962e-23d225edbd8c@intel.com>
Date: Thu, 12 Oct 2023 16:15:13 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20231011110411.204700-1-karol.kolacinski@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231011110411.204700-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: MW4PR04CA0153.namprd04.prod.outlook.com
 (2603:10b6:303:85::8) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW4PR11MB5891:EE_
X-MS-Office365-Filtering-Correlation-Id: 4dbe4d3f-7338-4a73-ca28-08dbcb791792
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vQbAkn0qEhU3sNF8DXQ4U2a3ogmr6cqSGNp9EJAPkIITW+c16bx38mSsH5SoqdAsIn0PBufIKeAP0RjTcVRJUxQusWB1+WO4I12DythVEUm6vCYw1QEEnT0pbkTuQAHgorRzqBrOkEepw2VH0EmRpEMpEPmTZvzqmpSM0TT/syqH/O0cEqYEZn7Tg6ABU1kkP7hCw8mGfszpCWgvbpOrFOGoMos352IYoTaGL0eWQOuJKjUY7EvQ7bK4i+wcAuUVPDcfXerURLeq5Z+lWDEnt8HyUJryxapB/e0A1jHZfyS8iBPDJHCCATu9OcqhlimN7tRteVD91KG6zbKvzZHWJ0cp/8c/GBYQJ6CxG8MTPKZkAOEyX9G8BuWn8br2ads4ixZvZ1t3esVvJlWYIeb7MyplWD/tAgNdEX1/s95SO3n5pxeNm4+AiyOXjKJWr7MjnuaQcVW1cVIhyjkEzghm2bvZ1GdtW0K2yq2+7Q3YV0CKwwhUgIQmN5NR95/X1PQM+MHbs+ElGpfYEeWO79Z4Bi1BHFrEGiJ0VRLT0pfAaWl9WXK9Wo1r3kqEMyVw8ykPHihvEAwi+M/yKDlagWOvXg5KQE3lNIqo78iI41TEUZP8dHdHLY/dwdJ0qsFHCshIK85ddrq7chZCYfzIDOhXgw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(39860400002)(376002)(136003)(346002)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(2616005)(66946007)(26005)(66476007)(6916009)(83380400001)(316002)(66556008)(478600001)(6512007)(5660300002)(6486002)(2906002)(41300700001)(8936002)(8676002)(53546011)(36756003)(82960400001)(31696002)(86362001)(38100700002)(6506007)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YlM0bUpQWDM5NUp3c3FaaFhvVkM2ODNiTS96Vy9uN2tuTFdtYitoVjBubElt?=
 =?utf-8?B?UEFsMWFEb0VGUEpiS2l2bkdHR3dYUjJVMUh5dkVaNFJTN2J2dDRFbTZRS2pK?=
 =?utf-8?B?TDFMR1JsdzJwaEdIbUpPSEVnTzhoT21CMlNjbndLY05PbU5JZnRUdjh1clFa?=
 =?utf-8?B?WCtzdEdrNzlTek1NeldOV3h5UlNaSDBFaU95N0VnRHMyNzZnTjZwTlBvL056?=
 =?utf-8?B?OEVDVXZaUis2TlpWWnBtZTNQa2lsTlZTbSt1cGQ0ZDlyYkIzTG0rTE1vWUo2?=
 =?utf-8?B?Y0NQOTQ4Z2pBQSsxbzNweENOWVFlT3JsZkRrME9FU2ZpSTRMdFVYWm00d2w1?=
 =?utf-8?B?R3I1L3c3b2VhMThja2xQMis5NnVUdjQ1aTdwUndFWkVTblpKRFJmaUdDdEgw?=
 =?utf-8?B?TmMxZkloQXZVRFFkc2ZDSG52STM4ckREV2tXdmdRbmVhMnl1ZFAxbWpFVTZs?=
 =?utf-8?B?M1lQMWZXRnNEamRuRjJyLy9QZFFiVkt3cWhwbCs4bkR6MjZEeFRVeHJCT0ov?=
 =?utf-8?B?aHA0NC95V25kNnBTQ2M1MTJsVytJVnhZNGpZTTZXSEdob1hnSkJNaU9mUjV3?=
 =?utf-8?B?QXlVWkZXSHhPaFhka3NGT3RNSEcySnk1K0J0SXFrcEtNdlVQWkZpSW9EUjY4?=
 =?utf-8?B?d1JIYlFodEM0aVpZd2JLbmhrbkNPS3FkNC9WTTNCbUtRbDJJNUdjOVN5V1px?=
 =?utf-8?B?b0dSOVpKa0svNE5yTUp3c255R2UzV3lWWi9GcEMzaGFmOVFMOG52VXRQbW55?=
 =?utf-8?B?bFdqYTVxN1lIaGd3NHRyVHBwenk0NWQwa0RvSlQ3RnVzR3FvQmROaEFBb2xU?=
 =?utf-8?B?SmpqbUh2QlJjZ1BLSmdPU1VydkdCbVMwaXc0M01ManFqcUJjK3FBa2I1Wjhq?=
 =?utf-8?B?QkREWVlnNjNqZXhjbTIrTTRyQzdkK09qL1lpYk8zZE1NQk9xSTluUGltNUJJ?=
 =?utf-8?B?MmI4NlhzRGRLTGp1cXNOOFlaTGhmOWhuMUdEK3pTVGl3KytwQzhHcmFsbkNJ?=
 =?utf-8?B?RFRQN2tFNnkwQWlWSE5ZK05SY1gxLzBXY1c3RXZGNEFRYXIrWStLTEIzbDE0?=
 =?utf-8?B?ZWowa2c3SkJWZzVHNUU1K2huc0ZRVll3eDMvVm15VncyRzIxdFB2Rk5qMDhx?=
 =?utf-8?B?TUNKOXdLakVSMFhRWi92RnFJL3ZqaFQxZkgrY2hRYXMyYVZMdTZlTm41VlNN?=
 =?utf-8?B?SjA5ZDRldTZXL3REWHYzR203aXRhL0ZibGZUamYwRjYvQmN4bVYrZVcwN1Yz?=
 =?utf-8?B?dVNJUFE0L0JucWxIL2tLcjdYZWRmZ0UxUW9jNldGdjJ1Smttclk3Tllodk5T?=
 =?utf-8?B?dTVqaFR1TDFidDhsVVVGME5tRDlzNVJoWko2TFBLdlUvQTBaSGV2VnVTcDJC?=
 =?utf-8?B?aE91Y3ZSNlF5S0tBVEw5dmJneTZGYUVrTkZ4ZTRxZGdROXVQUzZtWWE1QWFl?=
 =?utf-8?B?Qnh0UDY1NmNMZDhQczBPbDhKOGcrblJoMnhPNDIyMzJja1UwczNFRFJxZFlZ?=
 =?utf-8?B?eWZVSjB2clE3Z0xPTzVVYkxyU2FXTHBzOTZNaG95ZHZGTzNaQmdubnJZa3BH?=
 =?utf-8?B?ZEhUanJlUEU1WmlIWG93ZnI3elI0Vm5QczRoM1ZiNTFqZVFqREJDNXpEZUs1?=
 =?utf-8?B?SU1yd0twdWVaYXNydDlxMFBFM3ljQ2FkQjZackdqQkpSVFJrTExsRFVoLzl6?=
 =?utf-8?B?b2hQNjF6eG5JU29hbkRJMnFEZzBCeFZkY3pJQU1vZElrbkVwYTIrOTkyKzll?=
 =?utf-8?B?TmpuS1FSR1dGemUvcTlJZWFzZGF3bnlPdFM3bzRFM3ZXUlRKdGRWdnhzMlJB?=
 =?utf-8?B?L0FTa200WC9SUEhEeGg3d0Z3L3RSUlpJVlFRS2o4bTUwY1hkWmpJRUphVFk3?=
 =?utf-8?B?TXBUTGU2V0FZamNxbFQ0UFZGVEJjaFl5N3pZSU5vR0dyZDB4Nmg4MDRvQ0E3?=
 =?utf-8?B?NEIzUFUyelFVWFZwRG90YUp3Q1hHN2pKOWU0NTRzZ2lZMWFzWi9vMUVxZ1Nv?=
 =?utf-8?B?Q3dLVHNkN3lQdG9CZXhNMG1JOU5oTWRuY0xkMWRuM0dibjEvY3MvN2JNWkxW?=
 =?utf-8?B?QnZTeDJyZndGTG5FWDQ2MnA2SkdRbzdCUTJqNmQ0M3JXSzlMSkpLUEpVcjky?=
 =?utf-8?B?RzFXaUJmaStPbTM1Q005VlFxMTBEbWhmYWJ4ZnVRMFZSTEJzTUFIOGlVVVY2?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dbe4d3f-7338-4a73-ca28-08dbcb791792
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2023 23:15:15.1283 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /3P9yqbY3FvecuLXbABLFz/zaq+3vpW6jZ+o+gfW8i9Qj4KPQo8JcJOst1vxgvsjS+WdHiJPxZvf3Ql3q3LtFLbQn5Bn/o+kS8pQ71LLqxY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5891
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697152518; x=1728688518;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TYmtObcMa2jkR1Q/vkiZL2jqFFORCj4DPtr1j6KHUJM=;
 b=VHzq8dxqmUA0xJG60Z0J9BhKPV62WH1ZloOs5RspBv8j9kZuERWsqDZK
 zTSRGmIuwIeJauYqAmHzB05ZjgP6BqzNaKEy0m5Hc9hA66sPa8vRvu0SQ
 yaAPws4e9q8BttOZ5Nfco/LWMEEJu3CYmONAxVp5+b91mlkRh8ASIrpi1
 vmTq8SC0xv7m6eZ0fC32fWquI9iFmEXJ6oG4UuAZVl5C//u/aimEtCMOv
 C24BDbwWa+PWt1YzR16Vtw6C1X61K8fFYz0NuE6o/ynb6+kyYwhVtPP1e
 nYk1u3kjPaJQBF08xL7aQhMmcXcrw9PhMiCfilr/5BpGIBEt0RVijXac+
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VHzq8dxq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Re-enable timestamping
 correctly after reset
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/11/2023 4:04 AM, Karol Kolacinski wrote:
> During reset, TX_TSYN interrupt should be processed as it may process
> timestamps in brief moments before and after reset.
> Timestamping should be enabled on VSIs at the end of reset procedure.
> On ice_get_phy_tx_tstamp_ready error, interrupt should not be rearmed,
> because error only happens on resets.
> 
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c  | 22 +++++++++++++---------
>  2 files changed, 14 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index afe19219a640..a58da0024fe5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3176,7 +3176,7 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
>  
>  	if (oicr & PFINT_OICR_TSYN_TX_M) {
>  		ena_mask &= ~PFINT_OICR_TSYN_TX_M;
> -		if (!hw->reset_ongoing && ice_ptp_pf_handles_tx_interrupt(pf))
> +		if (ice_ptp_pf_handles_tx_interrupt(pf))
>  			set_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread);
>  	}
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 1eddcbe89b0c..7e548a634f3f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -684,7 +684,9 @@ static enum ice_tx_tstamp_work ice_ptp_tx_tstamp_owner(struct ice_pf *pf)
>  
>  		/* Read the Tx ready status first */
>  		err = ice_get_phy_tx_tstamp_ready(&pf->hw, i, &tstamp_ready);
> -		if (err || tstamp_ready)
> +		if (err)
> +			break;
> +		else if (tstamp_ready)
>  			return ICE_TX_TSTAMP_WORK_PENDING;
>  	}
>  
> @@ -2444,12 +2446,10 @@ void ice_ptp_reset(struct ice_pf *pf)
>  	int err, itr = 1;
>  	u64 time_diff;
>  
> -	if (test_bit(ICE_PFR_REQ, pf->state))
> +	if (test_bit(ICE_PFR_REQ, pf->state) ||
> +	    !ice_pf_src_tmr_owned(pf))
>  		goto pfr;
>  
> -	if (!ice_pf_src_tmr_owned(pf))
> -		goto reset_ts;
> -
>  	err = ice_ptp_init_phc(hw);
>  	if (err)
>  		goto err;
> @@ -2493,10 +2493,6 @@ void ice_ptp_reset(struct ice_pf *pf)
>  			goto err;
>  	}
>  
> -reset_ts:
> -	/* Restart the PHY timestamping block */
> -	ice_ptp_reset_phy_timestamping(pf);
> -

Was this intending to get rid of the ice_ptp_reset_phy_timestamping()?

>  pfr:
>  	/* Init Tx structures */
>  	if (ice_is_e810(&pf->hw)) {
> @@ -2512,6 +2508,14 @@ void ice_ptp_reset(struct ice_pf *pf)
>  
>  	set_bit(ICE_FLAG_PTP, pf->flags);
>  
> +	/* Restart the PHY timestamping block */
> +	if (!test_bit(ICE_PFR_REQ, pf->state) &&
> +	    ice_pf_src_tmr_owned(pf))
> +		ice_ptp_restart_all_phy(pf);
> +
> +	if (ptp->tx_interrupt_mode)
> +		ice_ptp_configure_tx_tstamp(pf, true);
> +

Ah, we instead restart all PHY which which is the same as
ice_ptp_reset_phy_timestamping. Ok.


>  	/* Start periodic work going */
>  	kthread_queue_delayed_work(ptp->kworker, &ptp->work, 0);
>  
> 
> base-commit: 2318d58f358e7aef726c038aff87a68bec8f09e0
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
