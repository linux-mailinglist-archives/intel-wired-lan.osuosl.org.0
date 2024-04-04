Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2424A8985D7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 13:14:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 85BE260F28;
	Thu,  4 Apr 2024 11:14:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dj0X1gsfZHdX; Thu,  4 Apr 2024 11:14:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DA8B60F2B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712229258;
	bh=VATkyd6fDilZYxmPmtfCOmUx57IbPh1soV4SuWK4abA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6PX0xfz2eZJcHBVwmvWzUUWFtbYz2H6kc+dBt97C/sPSS6xsuyg7JWOmoZiwamkdP
	 uDR/r6zNXA59BzxbZTsiaxGncBQY8hpkHJnZ7tIFW/IrmAxUCmK4n0Af2laRA8vinC
	 z1eajbql5T1IAoFPw9ljMreKvAML3ZDblPwJL7XNeP6urF5K+A5GhFyS9gsl2+nshV
	 faMC20v/yPKR/BxySgVoownQm9B/KZnLHeC1/fvCmVQxDRyEBL8U3pMP8HdBEqqumh
	 ABrvX+gko3RKwLAszUw0Vu3q1W3pq7LUSAE2N6CxewX5/P96w0r95UTaN2x/dvGLFM
	 zAak4TYUTvxFA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DA8B60F2B;
	Thu,  4 Apr 2024 11:14:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 32F431BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 11:14:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E44060F22
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 11:14:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QX9oauJkyny2 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 11:14:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8F0BB60F0D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F0BB60F0D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8F0BB60F0D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 11:14:14 +0000 (UTC)
X-CSE-ConnectionGUID: BwCYKK4CT3CIIdpdCVQSlg==
X-CSE-MsgGUID: lVbG2PkKQ2aGReqDXwlWMQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="18949733"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="18949733"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 04:10:11 -0700
X-CSE-ConnectionGUID: WGtpgTojSN2qsBM7ALp2tQ==
X-CSE-MsgGUID: ptYAUvzRSOWottjKPLEF0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="49715169"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Apr 2024 04:10:11 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Apr 2024 04:10:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Apr 2024 04:10:10 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Apr 2024 04:10:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oMGRGPJlmkk8q0G1i/YGT/+USSNyL48dcJQlhXE0ESVHch7eaUuqNPZTZhmmXAa2x1sBB5fjHXwo4tDweK8eS3T2fN4CbkVEcyXuUZiQ+Xx6Iq9aY66n8izjr+RLkGH0LHYUqXjHWRAnqSVq0HJLxty3xrTkyqoeqZ2wT6qiHrH31flYLBhtB6UEBzPEijRuoLEXw5YmknMmzLGrPwZzjyQvE2IhfYXYGbA9Yb89ivg5EbvVbb4ICEnoHE04fX/v+1t9hsIGM0L9TyBSdM8MP8FKuOTiBZapczsyhKBWzNRxrBKUSYg/oyLyMwj6s4aNvcxrpFcHQdFosL167I5j1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VATkyd6fDilZYxmPmtfCOmUx57IbPh1soV4SuWK4abA=;
 b=cGJRmxMo5oOEmkeqNNOx1hJ7S/mpJ0b8dQGXI6ypTsjkgFpdjGZvJf/7m3OsDSsY/W6iyber62u7lOYq852X5R/mjgU+b2uNWLNANjple0FSFOJy+HJwToyR6D4OjgDugTHw0TiUh+qLMl/nUyr3/2rsRbERionv3/QQPaIuosIgfKBvNXoaD0aAhdgWqwa1R1R0fFEg1HQgjaijpVwHuKb+X3yCJ+lAX8oFwP9mHV1n1vi31buJXuuXzCbZTDQuvy3vn7TlPildqnUhgHxugRI9SMG+y1ujcvvAcvizsD3z3xKPuar+iYXAQ7aNTBbqAyvaYEjT/XQNEPJ9JYwq8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DS0PR11MB7459.namprd11.prod.outlook.com (2603:10b6:8:144::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Thu, 4 Apr
 2024 11:09:54 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9%6]) with mapi id 15.20.7452.019; Thu, 4 Apr 2024
 11:09:54 +0000
Message-ID: <200925f5-b29e-4601-9e2d-32bfb390be4e@intel.com>
Date: Thu, 4 Apr 2024 13:08:36 +0200
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>
References: <20240404092238.26975-14-karol.kolacinski@intel.com>
 <20240404092238.26975-19-karol.kolacinski@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240404092238.26975-19-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA0P291CA0007.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::11) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DS0PR11MB7459:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uKEb6G8FDOKhhpFk8XkTWHw7YNzzEiQ5q3E2llecUGldUs9/mtTRd5IuGUscjfXZYJAh3jM3vZm0z30i93ADL2yI2ubyJwMiaU9++DtmAYwh3yq7Zow6BLfnY/kMQV9E89wlay/MgOloPf7S0Mi9IEii+ZT3sXO9eoQGheN8ZnxliHjtLkQs5eELqE2kcUL3AGEKTdmPmuNzm9FuPLqnJfaOcITjidJEE4HajxbWT02QZo6oEh9Yk9RF62f0FmUWUiUtwtGGQM8ySCOuHfXK7E0Rm1zt3ScHdwttPJ28UpA3QY8gpRBCVRdSSYHU22hxK1vZsFy+OiUiixtpIOkFC8VnIICx+cWWUSQocuPFP7GZILqkjyJbKS71X+K0UVw2kTU6U2lRZo8JUn80u8984s8O9suCFrbilZKy1XgD68AFdmD3A4t8mFA7ERjP0hoan00C5Yn8g2MGYG1YVicHOem9FcjtaFK1tdVuyDclCuDvPdkXJLjczpCFuiX1MT11q/wp4YdjtkIy6l+ydS6T0UC4o9HddRzrlUv03nuMOjNq+xFb56vQhelS8MJop3fNnlvfc5jr5vCZuIo6NcHbqoLHnIS/+X5W8ifaEuEw0S+VeiVO/nv5Rr4CpbHcN+CjEo3DiPdMkLGQiCtx6KF8Wuejldj987A8F4MYFM8pM5o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WS9vZ1YyWG9HbHdSa1ZHQmI3M1FKNFNVV2JmRkpCUWhVQmdiZ1NOZ3VYeFIv?=
 =?utf-8?B?cHZyM01nRWdRTHY1M09USDYwY25ITk5IL29uYWdUVU94bTBLSlh3Vlo1VStB?=
 =?utf-8?B?ZkwwM24rUU85L1NPMnl2Z1h1ZEhZZ0duNTRDZ2Q3REpHaTVEUytBTEkrYkhs?=
 =?utf-8?B?OVlyWXVjandGYVJGbExHMkFOay9kRWd2Nm5IK0dyelZsV1lPZUhjUlBHd0NX?=
 =?utf-8?B?RjBaQ094WUMxZVF5Z3p5MUZSZUtDSVVsellaOFJSYjBXZnhxWFBlbUNEM3lK?=
 =?utf-8?B?bkx3VVBPNFJBQWVJdzRpSlNkV3ZDeitodkFpcXdKd0tKYVZHT3ErTHgwdFdR?=
 =?utf-8?B?aDZDMGZDbEJydENvc3lpakhIMzZjc2dSK2FhcStJdWdTN2NLSCtOSDkzY1Jm?=
 =?utf-8?B?UHprcGJybDZpMFpUN2tFd1BaZmxVMDJFOHMzbGMzYVhQVWFMVzRzcWdRVmpC?=
 =?utf-8?B?aTREeEFBSHBXVWs5VmpDSkVaWkZXYXU1Y1JyYUwwWGtoSEIwYVVuSCtHWWxn?=
 =?utf-8?B?MlFyMnNtZkhhRTc0cmZqZU9OOHJTb2VpL3VaRThEa3M1MStmZjhQMWZrYkpB?=
 =?utf-8?B?MGloSElWZjRlYm1ueXJiRDEwdi93dkEyd3ZpQys4MVZINHowZFVJVmUzZDla?=
 =?utf-8?B?Y1Y4NC9xTXoxR0ZScUlGYktrbS8rV2Z0ajJ6ODhBenJKU3hCRW5UWWN3ZU91?=
 =?utf-8?B?azBhenJZcEx4eGc5UEhISXZOZ3BGMFl1OWhtbVpyR05RYTFkaXNBYTBuWHZi?=
 =?utf-8?B?Z3lNVGl1cU9RTHFORzZJVDg1T1VQNUYvc1NNT3BNTEtqL0dZK1EwMkF4QXhD?=
 =?utf-8?B?d05jVnF0SXlmL3Z2TWFkOFNDS2VmRHBCRE5hQSsyMkJsNjlHcEVMZDltUUNx?=
 =?utf-8?B?S05qZ3liQkhGZVB1d2xMY3E0R2ZIbStMdkZYTDVyWlVCL2hlSnVNZ2c5Zitr?=
 =?utf-8?B?MTZqQ3dvbmhrTEp5cmJIcDdTNmtPS2J3cUhSaEltRHEzMjJrZHM4RmxMV2Er?=
 =?utf-8?B?TmdybVZ4WnhOQk4rUWtldUJKS1dSYlorWjhOWnpMMDBZTGF0TlBsckszSHVR?=
 =?utf-8?B?Q2JOSFpneUpFYkttdFdFbU0yckQyYTFRS3JIV3ZobUdzRkVFNm9VTTA5YzJS?=
 =?utf-8?B?UlljMzd4MWpYYnd2MmxvTy9PbHl3d2JQOHMrWCtWYzdGVzhuMHZ3d0tKWTZB?=
 =?utf-8?B?M1dMOXo2NEZBQXdjU2QvWnVSKy9qYnFXalltTVU3czFBdHRQaEpmQy9BaDEw?=
 =?utf-8?B?a0VBVGl4elBCMUQyK2lsbDRtb1BrS1gvK29zUGJZUHVvRnU0MHRqeTBOVnQ2?=
 =?utf-8?B?Z2Mza1lBclNyZVdPZTFhV3I0Q3dsaGRPaDhmZE1VY3puT0ZLeFVBTjBoY2k5?=
 =?utf-8?B?N1BReDh3RXI3ODM4UVRtTzBhQVI3K24yY1BKNzhEaGxtK3VDVDFLZ0xyOGxo?=
 =?utf-8?B?bTNhN1JubWdaVmRIZy90MzlMb3pTZ0R0ZXEvWDhoc0taU21ibEV4QkRCaGQ4?=
 =?utf-8?B?VFRHVDA5bTZuT3BXWTAvVUMybjI2OFZMbWk0UXRWejV6bGx3REdZaXZxbmhP?=
 =?utf-8?B?a1Nzdk1OcGVNOHRHcWd5WmhYNzZySkgzWE9MdVQxNWN4dHhCOFB5QTF0YlBS?=
 =?utf-8?B?dWhOUkxwd0RnaEJrN0lsYVk0eFU4bVdBc2oxZytmN3RaL0x4OWNoOUNPczMw?=
 =?utf-8?B?NGUrSHNtU1ZsWUJZY2NGTE1TbzBQaDZtWGVoZHloc3ZFdmg1QkRPWGZYSWtL?=
 =?utf-8?B?eXhaNEZvQm1LYjB6S3k3alJkTXNYMVhCbkZHQzBsaGZOZXFKWkZxSVU4Ukl6?=
 =?utf-8?B?dVoyeml3WWFqZ1YwWXZOVm9SU2FqZkJndlpKYTI2Qk9mZzRFVG9DVDdibml3?=
 =?utf-8?B?Q0VvWVBMMi9hdHVvenNZaWtVeFVSd1FGa3ZCUVVseTFSNXNrZExNQnZINHVL?=
 =?utf-8?B?Ty9nenRCdnhWeHVTUTQ4eVV0ZFB6Nk95RCtxdXdtNDNBQW9vejgrcHlzM1Ru?=
 =?utf-8?B?dDJsK2k1ZnVzRHorZVI0QnVsdjF0S3E1Y0NreWRROHZoUUgzd2ZWaVJUTHBp?=
 =?utf-8?B?alU0a0dkL3BVbVlMUnljZitGRktMb0RCbHNGYitxZjZmMG9kREFqVVcyZE4y?=
 =?utf-8?B?aDBBN2lDdEc5Q20vMFdmd0hRbVBqSWpETFBJRk9PSE5wZDRKQzd0YjJVakxl?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 10f2b1ac-11f1-4274-f09b-08dc5497c173
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2024 11:09:54.4244 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dm7EKzYYOrLixcNRc0lpaDCL1BX/ov2cqCoz+t7c1d/BkjZwOZqcLZtIKPhJLrPjdVN6i/voVt0oA+cYjUD+WFAZiRK7uTAU4a3pE563ZD8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7459
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712229255; x=1743765255;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jicOXk5jQO5RcRcsPwLwsCx8vIYHHj7YASZDYPi35Ec=;
 b=dBmyS/fpP0w26Yw8AeyOGcQQrN34EQEbJQlR+QZUrdcDKli+i9yqyQX/
 yFoX0lOjwRNGRTMNDcT8/yahh3jJDIk2X/v92+xNL/20BAYFe1AM9KwAZ
 QEU8r3CE+iFbrJUSp/CuFj36/eRp6/qN/qoUsxxEd8y0wtLRcIqrOcypN
 IQIsLw2rCV0TaQTW+T07LJguvq6mQlDCPYIIxLFPfrAZgtrh0tOS+R+6t
 i0RSGptrvbMoaNZ12BvCU86hF/rRyHrsPP7AhMG3OBBJQfrEmFTW9qYo/
 9Ig1wxHfogXeZxzLHSRmWPtJdfBeg7fg/mX+dhAE5PbxaPzS6ZH6qNXVu
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dBmyS/fp
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next 05/12] ice: Move CGU block
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Arkadiusz
 Kubalewski <arkadiusz.kubalewski@intel.com>, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>
Date: Thu,  4 Apr 2024 11:09:53 +0200

> From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> 
> Move CGU block to the beginning of ice_ptp_hw.c
> 
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

[...]

> +static int ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val)
> +{
> +	struct ice_sbq_msg_input cgu_msg;
> +	int err;
> +
> +	cgu_msg.opcode = ice_sbq_msg_rd;
> +	cgu_msg.dest_dev = cgu;
> +	cgu_msg.msg_addr_low = addr;
> +	cgu_msg.msg_addr_high = 0x0;
> +
> +	err = ice_sbq_rw_reg(hw, &cgu_msg);
> +	if (err) {
> +		ice_debug(hw, ICE_DBG_PTP, "Failed to read CGU register 0x%04x, err %d\n",
> +			  addr, err);
> +		return err;
> +	}
> +
> +	*val = cgu_msg.data;
> +
> +	return err;

	return 0;

since @err is already checked above.

> +}
> +
> +/**
> + * ice_write_cgu_reg_e82x - Write a CGU register
> + * @hw: pointer to the HW struct
> + * @addr: Register address to write
> + * @val: value to write into the register
> + *
> + * Write the specified value to a register of the Clock Generation Unit. Only
> + * applicable to E822 devices.
> + */
> +static int ice_write_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 val)
> +{
> +	struct ice_sbq_msg_input cgu_msg;
> +	int err;
> +
> +	cgu_msg.opcode = ice_sbq_msg_wr;
> +	cgu_msg.dest_dev = cgu;
> +	cgu_msg.msg_addr_low = addr;
> +	cgu_msg.msg_addr_high = 0x0;
> +	cgu_msg.data = val;

Maybe initialize it when declaring?

	struct ice_sbq_msg_input cgu_msg = {
		.opcode		= ice_sbq_msg_wr,
		.dest_dev	= cgu,
		...
	};

> +
> +	err = ice_sbq_rw_reg(hw, &cgu_msg);
> +	if (err) {
> +		ice_debug(hw, ICE_DBG_PTP, "Failed to write CGU register 0x%04x, err %d\n",
> +			  addr, err);
> +		return err;
> +	}
> +
> +	return err;

	return 0;

> +}
> +
> +/**
> + * ice_clk_freq_str - Convert time_ref_freq to string
> + * @clk_freq: Clock frequency
> + *
> + * Convert the specified TIME_REF clock frequency to a string.
> + */
> +static const char *ice_clk_freq_str(u8 clk_freq)
> +{
> +	switch ((enum ice_time_ref_freq)clk_freq) {

You can declare @clk_freq as enum and avoid this cast.

> +	case ICE_TIME_REF_FREQ_25_000:
> +		return "25 MHz";
> +	case ICE_TIME_REF_FREQ_122_880:
> +		return "122.88 MHz";
> +	case ICE_TIME_REF_FREQ_125_000:
> +		return "125 MHz";
> +	case ICE_TIME_REF_FREQ_153_600:
> +		return "153.6 MHz";
> +	case ICE_TIME_REF_FREQ_156_250:
> +		return "156.25 MHz";
> +	case ICE_TIME_REF_FREQ_245_760:
> +		return "245.76 MHz";
> +	default:
> +		return "Unknown";
> +	}

Array lookup produces more optimized code than switch-case.

static const char * const ice_clk_freqs[] = {
	[ICE_TIME_REF_FREQ_25_000]	= "25 MHz",
	...
	[NUM_ICE_TIME_REF_FREQ]		= "Unknown",
};

static const char *ice_clk_freq_str(enum ice_time_ref_freq clk_freq)
{
	return ice_clk_freqs[min(clk_freq, NUM_ICE_TIME_REF_FREQ)];
}

> +}
> +
> +/**
> + * ice_clk_src_str - Convert time_ref_src to string
> + * @clk_src: Clock source
> + *
> + * Convert the specified clock source to its string name.
> + */
> +static const char *ice_clk_src_str(u8 clk_src)
> +{
> +	switch ((enum ice_clk_src)clk_src) {
> +	case ICE_CLK_SRC_TCX0:
> +		return "TCX0";
> +	case ICE_CLK_SRC_TIME_REF:
> +		return "TIME_REF";
> +	default:
> +		return "Unknown";
> +	}

Same as above.

[...]

> -int
> -ice_write_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
> +static int
> +ice_write_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 val)
>  {
>  	struct ice_sbq_msg_input msg = {0};

It's not a changed line, just a reminder that `= { }` is preferred over
`= {0}`.

[...]

> -	err = ice_read_quad_reg_e82x(hw, quad, lo_addr, &lo);
> +	low = (u32)(val & P_REG_40B_LOW_M);
> +	high = (u32)(val >> P_REG_40B_HIGH_S);

	low = FIELD_GET(P_REG_40B_LOW_M, val);
	high = FIELD_GET(P_REG_40B_HIGH_M, val);

[...]

> -	/* Log the current clock configuration */
> -	ice_debug(hw, ICE_DBG_PTP, "New CGU configuration -- %s, clk_src %s, clk_freq %s, PLL %s\n",
> -		  dw24.field.ts_pll_enable ? "enabled" : "disabled",
> -		  ice_clk_src_str(dw24.field.time_ref_sel),
> -		  ice_clk_freq_str(dw9.field.time_ref_freq_sel),
> -		  bwm_lf.field.plllock_true_lock_cri ? "locked" : "unlocked");
> +	/* For E822 based internal PHYs, the timestamp is reported with the
> +	 * lower 8 bits in the low register, and the upper 32 bits in the high
> +	 * register.
> +	 */
> +	*tstamp = ((u64)hi) << TS_PHY_HIGH_S | ((u64)lo & TS_PHY_LOW_M);

	*tstamp = FIELD_PREP(TS_PHY_HIGH_M, hi) |
		  FIELD_PREP(TS_PHY_LOW_M, lo);

[...]

> + * Clear all timestamps from the PHY quad block that is shared between the
> + * internal PHYs on the E822 devices.
> + */
> +void ice_ptp_reset_ts_memory_quad_e82x(struct ice_hw *hw, u8 quad)
> +{
> +	ice_write_quad_reg_e82x(hw, quad, Q_REG_TS_CTRL, Q_REG_TS_CTRL_M);
> +	ice_write_quad_reg_e82x(hw, quad, Q_REG_TS_CTRL, ~(u32)Q_REG_TS_CTRL_M);

Is it intended to write the same register twice? Some reset sequence?

This (u32) cast before `~` is not needed BTW.

[...]

Thanks,
Olek
