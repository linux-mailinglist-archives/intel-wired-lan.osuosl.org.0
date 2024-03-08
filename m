Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A45876AB6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 19:26:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E598241C49;
	Fri,  8 Mar 2024 18:26:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QRhz4mEgdbl1; Fri,  8 Mar 2024 18:26:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4E144193C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709922399;
	bh=hSyr0r71Z5ZpBpwsIOzmt6JQMKxBhxNFqvyo7z1Lvl8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gFg+0WZfEeU9pV9pQk4F2I4GUFz6ky6eaUvlRM9/PZV6pbBJJi6T//VCkMBLaesBd
	 g73OjiudBjfWFwOY2oDBUJerbtU0ASC6jZuv6sHPXs+QCfaMjJoOf9O/RY2fPzSJDV
	 g7XH6eb9PsHlhATMjqcfLNxKMvAZaL98LeHCdwb6j36otWr/5jnzSMnK+4kJvU3GGE
	 B6vxPWg6GXDakUArDnOgJ93xScrRGVhFCK/YUuSPzcjJNojpBvrNbM2FIu9ORMnQS8
	 578bUOfB2+1OtWGdMUbJxwApl6hV5G81rODrieuWK0Z36aabwhCUhsh2UgagQ2QmDs
	 1Vv8l9D+5AdnQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4E144193C;
	Fri,  8 Mar 2024 18:26:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 59A2C1BF228
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 18:26:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4518E83183
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 18:26:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xew2YNZkSfWy for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 18:26:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1E4A482864
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E4A482864
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E4A482864
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 18:26:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11007"; a="5252323"
X-IronPort-AV: E=Sophos;i="6.07,110,1708416000"; 
   d="scan'208";a="5252323"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 10:26:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,110,1708416000"; d="scan'208";a="15027162"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Mar 2024 10:26:32 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Mar 2024 10:26:32 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Mar 2024 10:26:31 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Mar 2024 10:26:31 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Mar 2024 10:26:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WXpeNseSw8sF6FVm9vVm2p6301GXRycdBXAd5iOcDy7AaNQ2qu1dYP1mU35X+BK3dNkF0dbqIRkNLI0jkJTzls2oRN5UmRLwIPoPXXo9hO7EStF8VjAW+7kFo7+kKxNZJibuDBor+sMD25YoiKXP20CNHfCf118F9h3epmtutnOp+uCzDdE+bH9cUyIsQ0T58FDA1km2hC28/irwg9ZlrVgxcTMvr4C5bEkTgiBbAMKG+RWwJdIJr3Mw7IK1fBbz1gfW1SYtXc+fDP7MpXMvErjT9nNVwaf7qeCCOc/qtVjJDua8An1C4RwJhNyxJ9CSvXNGSCLosw+TH5SNBwFhKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hSyr0r71Z5ZpBpwsIOzmt6JQMKxBhxNFqvyo7z1Lvl8=;
 b=E/+h7P0V3zbpCCQvsS4sLKOWHNQs3XlvkjOwpf2GR6Eo3866W9AtKcB19VvZSK1iT+jVnHApgo9TszZRZRhW73IftCDhAbnRj4XsoP6Ne0K3AvpfxMc1LTdUYVFF6ShEkg6TrFeeZVKuQU65FYbPKzxVG1kfbYKc+ZKYlKZjWBwNcWYlOm9wfU6c4Fyv9jy/wTe+F73MZhhqpEQuPRcEkecqSZPE54BhALOQcqGRSScMBIKEzPoSV6CrrXzj11vT1+h9tuOL5F+Wl5Jq15GQQTeVluNONCV8h9hyffs45iEa+3/BabF3/BMklxKC2h2DcAxT/XLjWa2WAWjaAUXRAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MW3PR11MB4731.namprd11.prod.outlook.com (2603:10b6:303:2f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.12; Fri, 8 Mar
 2024 18:26:26 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7362.019; Fri, 8 Mar 2024
 18:26:26 +0000
Message-ID: <f13db290-72db-9b43-725f-4c43d7a8e839@intel.com>
Date: Fri, 8 Mar 2024 10:26:22 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Jakub Kicinski <kuba@kernel.org>, ivecera <ivecera@redhat.com>
References: <202403090150.0gkUdeIc-lkp@intel.com>
 <20240308100630.456498c4@kernel.org>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240308100630.456498c4@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P221CA0021.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::26) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MW3PR11MB4731:EE_
X-MS-Office365-Filtering-Correlation-Id: 6987da90-c6d2-4944-485b-08dc3f9d4425
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HULBBG5hTUqivkHKv9z6JEmDn4OZMX2XDvdQ1ImGq7PeeKaQIjXI0JFc5PuXXAXSot+fBbTtDcYpd9WFD5c6jvuh+kBxVcWANzjRLMIMzrEA33rWz/bkPxc2gQNBGSKCZzJWplnyI9hz1YnWzmZBruxmqaerEp4SRF5mkjVbk/vQIjH77DbeZ9qt+NZ4PffkI/v/o2L8eI5vzeA/+npVRDJ4BpfRU3343LilnQzclE4pmgCcGdxB9h6KAVyS3zMX9giUDJG7xjlzjqB6RIbruV3R5o/XyZtm2PcOCJlXdd0wU1jvdz9Ao3SRsYl75mG6mQjw1n+DBwxkXnuzjqBmwOazacYe8/b0jop/3XMw1dbSoO4izdKwY0D7odSVaGAlfF8g/rX1//JR6PgIdQk8bym6O0pOalmTmyK4Tfk58vpem8/pr5dBZ1/zCfNtKXL0UejPgWvXZgLvywZITVszpwqwLuMgC2Yl/3XPBvaRlX2KhVj8l4eBI611EZELFnEe5Pn7BYDLfz1jz5XVccnzh9mkA099OSv7mRI4AQY/wf+rEGSs+fVPCpoStbnBCzvNJ6gF4oiuVaa2H3zVCI5rBhVe490c/vjc74VuBIl46LM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TW1PNWhFRjZGcU54WmNuREJIRkxWcnBkemYySm9iZTJFU3pZSXlTaFQxZjBr?=
 =?utf-8?B?TjFvWHBySGlUaXpqeDZUSHFUTXR1bFVIcVVVTmV3SmhVWkRuKysyWkN5ZTJS?=
 =?utf-8?B?T1A2dVk1ZjZ3dGVwdzV6b1ZqV1RXWmNGY3JZOURUK0Z0anpJU0lkWTJoOVZP?=
 =?utf-8?B?UE1zYlc2VjcwekFjR0ZYSEdmM251bzRtUmhnT05LRU53dmJaRVJESnJERkQ3?=
 =?utf-8?B?S2VSempldkhENUtCZVkxcDhsR3BRdmQrNkdoWDJEWWlXVmhadGlWNmtVV1Bz?=
 =?utf-8?B?cjF3Qm9tdHNGZjVUbHRZZjgyd2hHNVZEUGNKYWJDbmhnN1lkWklwbVV5WEJr?=
 =?utf-8?B?aEtDVHVqdWpOR05JMjgvbENrdE1WREJib3ljVlF3cnd5VGJJVWoxbUVVemNX?=
 =?utf-8?B?aUdDZ0sxRWpSMmp2UlZJRVhHRkREUVQ1NjZqVWVlQU9xemQxbWxqM2oyRnVn?=
 =?utf-8?B?L3NVZTdVdXA0RWlkbHlGc1F1UEZCQ0ZCZUZuYmhWdDB0WkRMNDNqcnpZOGhR?=
 =?utf-8?B?U1dIbitjemQ4SExsZXFDUjRqeUdZbW8vQ292M2Q5T0VxR0ZRWHdYUWlERDF2?=
 =?utf-8?B?YWlvWjJyK2JqQk1uT3k5aUJBd1B2eDhybWZnbEFmVndFTGdKR3NNSFdMRWpa?=
 =?utf-8?B?MkRNT1VJeXp1U3hsdW1GMnJUWEhMb0Q0KzRNNmFiZGIxS21qYkFmeXd4VFU0?=
 =?utf-8?B?WnJUTk5UT0JGVC9QK3JuNDZlalU4OXVoM3JVSWtOZkljaENCTk81VEZTRVp1?=
 =?utf-8?B?TXQ2NHltQnJvcWhDazdod2ZzSTRlYXZiVGR0TENKdFZOOHp2d3dNL2dWaGFr?=
 =?utf-8?B?U0tUbjlPanJXOXFrNG1nKy9GWmtlTWl6dUFacXRUSysvQ3d4cmVuRk1reUhC?=
 =?utf-8?B?SEYwRUxmOVIyTEE0bnZqNHA4UThRbG5VeWovdnRiZVN1Q056K0M0bE1DR1dW?=
 =?utf-8?B?WEUvd1NYcWxGMWtkZjM4a0lyR0R5U1hJdG8yM3B1RUkwV3RBTUJrUmdLQzRy?=
 =?utf-8?B?YWJlUU4xRTRnMGx1YzFjRGZncG1RNEh0OE9iNEhwaVI0KzdOMHJ0dzRZUUFH?=
 =?utf-8?B?NSsrOUxoUWlqSlFRWnhzdW5YRWVsMEZJajFTUmx0bnlVdlQxbVQvS2IrUFY0?=
 =?utf-8?B?UWdlaGJha0VjVmYrdG9vbUplVzY5UThCamdIYjcvT3U3MUxJb2UvaWVhQ0pL?=
 =?utf-8?B?VDhwT2dMcE1FSkdIVk9XKythSFNadDV0U2trQUtlWmpsbTNnNUs4cUI3NWtP?=
 =?utf-8?B?TnVEcmRYNGF6UzhjaW1ydmhlN1R5VG03UkF3MWl0UE5wNkRFYmluZFB4WUd4?=
 =?utf-8?B?aFUrZzFlQ2RsTXl5Z0Y3V2JvZm9FaHgxWDYvU293bUZVa3N3a3JHdlJlbksr?=
 =?utf-8?B?akk5Ym1tbVJaVlAxR1ZlVTREenpvTXRHUCt3ZWp2dWVpVEErdFJGdXFFNXph?=
 =?utf-8?B?Q0N1L0hXVzdZM2JHRTNjZzZLRkF3Z1lKZlQ3RVV0SDU2QXFrTzRpRGhrRDB1?=
 =?utf-8?B?SndrR2NaTnBmeHp5MERVa012dXhvT1VWTFk2QVh4ZVhXYmdWR3dka3lmTUkx?=
 =?utf-8?B?Y0s1aFNRRkVJQjNPZXdoNnJSV0l2NDh3RlgwT0pzN3BMUmVxVDgxVmVvdnJG?=
 =?utf-8?B?aFFzb3MxcVV1eXdxMkJ6VnVybURUaXljMVV3Q3FCNWhBSktGTnJPcndCNjli?=
 =?utf-8?B?RDl2OVd6SG5VUHYvbFg4dUxFbC9MTDczVFJmaDVGbmhBa3BBYWJIR2hBemFB?=
 =?utf-8?B?TG42ZnJRK1BGcE5xc0tKay8ycEdRcUJLWGN5S3pUNGFNdmRhdWVjUUY3c0Rz?=
 =?utf-8?B?UWZnZUxhWlFvK3BGRExTNkU5VGpsbXoxdzRpRjVXMVh1UDZRUkxCM0ZLL3Vo?=
 =?utf-8?B?V0syS2dXdGV0L0U2RTV0bEdnRllXTUZFZysvRGVXUVZRanUxSmpGYlYyRjZy?=
 =?utf-8?B?aWNIUTNHK1BkVjhhVlB5MGNxWVZNNUc1dThsb1BsdXl5Nys4KzJUOXBzSndw?=
 =?utf-8?B?ckpmeHZIL1UzeEhIZ3cvOFd1WUlIQWo5R0laVW0xaldvWjk4a201YTVTS0d0?=
 =?utf-8?B?K2xmVkR4dThsVVRvOWZDeWxsa2htNkIzTnUxbzZsTTcxaGVBcmsvWkhsRm1n?=
 =?utf-8?B?RFE5c3BnbXlOdUd6SlBINCtIaWhzWWM0SHdQay93Z3dwUEk1TWF5TFU1c1RZ?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6987da90-c6d2-4944-485b-08dc3f9d4425
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2024 18:26:26.7352 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BDw5M4Zgoc/EF9Z3p8MFtltOr0dtbBrCAC+0O0cNb9XXpDkdHMHPsN3svcTDT6lyRS06oo5vLAA4fmipFZDAPXfli3CxU+apzPFrS5f1lzQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4731
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709922395; x=1741458395;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iDnLy1u+JYcdwX3RxKRXB3HV8bHG+bno9khvqhB/jdc=;
 b=nZuCV/Ku3MqRFZUTlIfbFIVjmT2cNwuQh3+rAXeYG6RCtsLOqk4b8mgI
 rUBA9X4xrc6KAXimK1PdnZ7u6+XCe+jalSse+f0gpiou3GWTzNja5lKtf
 u0YDhh5zWnEAwaeQ+GPUAvD6a0G9PDnOqigqHW0JitIJRtcdXqJYnaytp
 nFR3y56+tH0DtaARQjSzMbXgGJ7YU+FO8ONTpnD9rODippOHg+JCRxrAK
 yb7pvs/DjqJpVKdId4SqWfPHWuTaicQJf0FWiucHBpMoJTM+SRBYadXB0
 /UT9+Eh3CRqs4rTY3mN57S9sOfVrKIGQOLjKX1AXCShWOO+KHlBa9C3H6
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nZuCV/Ku
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [linux-next:master] BUILD REGRESSION
 8ffc8b1bbd505e27e2c8439d326b6059c906c9dd
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
Cc: netdev@vger.kernel.org, Linux Memory Management List <linux-mm@kvack.org>,
 intel-wired-lan@lists.osuosl.org, linux-mtd@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-omap@vger.kernel.org,
 bpf@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/8/2024 10:06 AM, Jakub Kicinski wrote:
> On Sat, 09 Mar 2024 01:52:56 +0800 kernel test robot wrote:
>> |-- i386-randconfig-141-20240308
>> |   `-- drivers-net-ethernet-intel-i40e-i40e_main.c-i40e_veb_release()-error:uninitialized-symbol-vsi-.
> 
> Hi Tony!
> 
> Is this one on your radar? I suspect netdev@ gets CCed on the reports
> because of it.

+ Ivan

I believe it's a false positive:
https://lore.kernel.org/intel-wired-lan/63bd858a-fe07-4eda-9835-d999e2905860@redhat.com/#t
