Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EA472088F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 19:45:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7AC1B41690;
	Fri,  2 Jun 2023 17:45:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7AC1B41690
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685727953;
	bh=qLchuny0lcyj/vAhy1EzyeF3QO93Eht3R6sy7g1G2t0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W7GTcWaWIBDwkhQL4c3fUs91wXBzF4EzWBVSDM2oOzNWlIs4PKIMvTrHoq87UoPLE
	 zdKAwAAjAUq6X8Cow7FRpiWYm9mxiOcZmeuai0LL8NFIystWugZuNPy8vQ/2GUjEPs
	 o4SidHLE693x/MIQZIO8+O0wz3ZpORVpCb1zVYIcR5TB1OHqphUWVirSgqoFTcENOt
	 E2LYcMrMbgI5OzrpHgHJWrSF536CX4qiIpy4q+djRqKQhQwY/U8MglQy2xreMlC5mo
	 P0Oh8NXip0zRs37m7cHxtrh8cuHA2TGf6Gxc+fugSsSN8BB+9yZDIDANZyaoIIcXC7
	 bArznP2ULO0yw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 70eiu6nlRXwa; Fri,  2 Jun 2023 17:45:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4467640BAC;
	Fri,  2 Jun 2023 17:45:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4467640BAC
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1AC821BF591
 for <intel-wired-lan@osuosl.org>; Fri,  2 Jun 2023 17:45:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E5D1040BAC
 for <intel-wired-lan@osuosl.org>; Fri,  2 Jun 2023 17:45:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E5D1040BAC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hmLce37ABfHY for <intel-wired-lan@osuosl.org>;
 Fri,  2 Jun 2023 17:45:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 881244020B
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 881244020B
 for <intel-wired-lan@osuosl.org>; Fri,  2 Jun 2023 17:45:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="359229619"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="359229619"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 10:45:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="737621850"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="737621850"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 02 Jun 2023 10:45:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 10:45:44 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 2 Jun 2023 10:45:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 2 Jun 2023 10:45:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B99tzMm6Rzyz7blcGNwhgGHsZ71Oq1LI2ynXHmUODYG7kF0/l5wQJt6yS/KzSqvSnO7Pvb8YWoYmty3Wd2NOAWxRdqepi0iAPr4Z4qlFkDNyNYicOjC8L3TBSNuafp/ec80eqCv7RVUMNz1muP8cHyX7X3YMOB9exS8YlS2F7DCQhf/xjp2G9b9EsatVze96U9n03d1Bl4TJu8mxoDtKmBJtyAaoTLG4FYvgzXC3h+ZXCNSWzu2Itxdu29AGgI0eGfL3MjFI/Cb+51fPEuomzuXQfWxgwT9lqvyWP8uCAc5Uc7xzVW25lUtaY2nt2EVeDXzYHQTalgF1h2GrHGiWMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RTfHFtTGZxb6UhOQUtjZJU9y/8ZzikJrtJlR52M8ibE=;
 b=Jm/BNBmdYLNq5WA+ZLNheYAglfBHSvpV22GCPOeLpSy2aRalgx6cLdZedOsRqr+oOv9vVIM1cdflgJS56q9A4AAvx05BXKcDngNH3vVfe6H76DfDcl/1z+jFLwewoU52jsbKmPZGhkxT3t39TO+6xdoxDcadFeLrKiTmRmiELwXA+P7eOXgu1dLJr8gUdFoI9drq4YC4OvDncqMftpYrqTXps79fow4P59lbWt09T/o7LbnNAKGpZ8yNS18CHOj8TYyxUsQw4nlzd2pLF0N75Q49VFFaWpZW2ITPGVtOAMo5MXIKanKLUsqAOc4P4UIEo9demzka/RE1rrWSR7TVpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA1PR11MB8428.namprd11.prod.outlook.com (2603:10b6:806:38b::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.27; Fri, 2 Jun
 2023 17:45:37 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%7]) with mapi id 15.20.6433.024; Fri, 2 Jun 2023
 17:45:37 +0000
Message-ID: <8e65d308-a64e-96a4-1ed7-4cc27282d65f@intel.com>
Date: Fri, 2 Jun 2023 10:45:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>
References: <20230602012827.25938-1-muhammad.husaini.zulkifli@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230602012827.25938-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: SJ0PR03CA0369.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::14) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SA1PR11MB8428:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bef5247-d985-4a26-0aaa-08db63912c55
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iriYe30hmAQ/9YAJZbBUs+G2V4S8H+r3ocYyxWz2QNdPKXXFh4SssNjvk7UBhZLCuo0dVs+flyWsqvFUodhT7Gsfmy/ApUc3kSUKD5OrJsVSWsYnaPlglhKCnJqImt6OWf0pVVbXL+rryk37Yuu6a8mzZt4DHXGGmE6CiHbSpD3odP0qox0p4Fq2IVCzzUyoLLsJbA2WSDODa1KNbWQUdWw1BK+GVPfvTTTcc1OlgIamShKcvl4FjOT4J1M4rBjPTfwpqWrn03dZUeAU+NEpjrlX/HXoXIbnZ8pOy82oOlIh5bKPCAefyDim13c6mj7XvkLihUULMYkIBeQU87hioEr7dSBTEmDFJFcyHKlORZXB1ulhgH8KdE3cJpCYkSNXMwl1DavwxUW6YzbGCXB61tMBd4VpBBahm6hYTImng0+GtJWIZWQqU7uW3+njYtTpZMPPo7zhQL4/KNQB/oWl0S5yLz17eLwstAQ5JBabwEtbxdfS6fMZcq9j6KxL4Ip8sZifgnZ1DvR115mlIp1i+3nfac8RiTCnvZ10KZ7yIgh+2WFA9US9EOwLlIrXftTPqXM1yLxyE8PtPsPMHJfkn3U3+wmAJCH/1PKql+saTt5957cA7RNww6h2y4MBFaZtj2v5qaCEqA+4Qbosgs0W9g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(376002)(346002)(366004)(39860400002)(451199021)(31686004)(38100700002)(478600001)(66476007)(66556008)(66946007)(6486002)(6666004)(4326008)(316002)(31696002)(86362001)(36756003)(83380400001)(26005)(6506007)(6512007)(186003)(2616005)(53546011)(82960400001)(41300700001)(2906002)(5660300002)(8676002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S0VOdVg5Q2didHNLVEpLdEtTVUhuRGptQ3dXZmxLdFhMbHhTb3c3Q0lBT3ZK?=
 =?utf-8?B?UDl3Nm42K2xrVnUrQVQrYlF5bVRkRWRLM3lFM2dLWFdLK0xmZUF0RW9aemJ1?=
 =?utf-8?B?SHJXeXVNL1ZFeWN4MmxYM1JUbzB1dk1BdFBoWU9PU0QzZ2VrUUs2MzU2ZWhO?=
 =?utf-8?B?VG5DQ0xxWFgrU2VDdUt5UWgrZ1hGU1NJVDJpd1NjSElTNjhCaVgrZ2huU0dU?=
 =?utf-8?B?M09lVlJZS3dPaE1Fbnd0V2hLS1R3NWV4REdjeEppUEkyR2tybmNFa0xzR2Nm?=
 =?utf-8?B?VWNZb3FnOE5DeEhUcitXZTQ5V3gzdHFzblFyYms2V2ROQ0ZIM1o4MnpNZTM1?=
 =?utf-8?B?aVNoS044ZTloN3B3eGJDbDBoanRIMGluRHpUclp0d29XaDRiQmNEeXNmUkJC?=
 =?utf-8?B?dnBDUXRnV1kyUDdjdFppeU90cWtkcm9Jci9tZjlqUzB2STdIcDVTQ0VHVmV3?=
 =?utf-8?B?T0x0YUJDRDlDQ0RzRC8veTR1ZEk3SFYvNzNhVWllQiszVG1KWVlWWTlSVDVs?=
 =?utf-8?B?UW5sS3VidkQ5NHNDaUo2eXRRUU5kd0xOb3Nqc1Fnc2RPUlZIWk92SVRncEM0?=
 =?utf-8?B?dStmenR4WmwzanpDQjBGWEN4VHZIZk1OWXJFTEgrVHBDdUtpTXYvRVdXTklF?=
 =?utf-8?B?Y0MwWUxmSzVuRSt6eXhCQUtUUXJRNUNXVXRBQXhGRm5IdWRCWGovbFg1djBv?=
 =?utf-8?B?S2d3Y21HL2tSdGlxZk1EeXNxWTVSUGRHQURjV0Z6YU5pRG1idk5DWURzWVo1?=
 =?utf-8?B?SEJTdFFoRnAxaVlTMGpGa0ptZ3ZxaXpQVDFwZzQ4ZW9Xc0t2RWJjZjRONnhp?=
 =?utf-8?B?MUozRW95eXRoQUpqTlR4NEpENzh5WDdQRTlwRDRvaDJDSHR2enN2bE52M3RH?=
 =?utf-8?B?NHp2UFU0bWswYWdmSWtiTEV3aGJvVFNpZUpQbm5ML0dmWTBBZE5BZkpRUDBv?=
 =?utf-8?B?cmY2aFVYU21kaklWcDFTZTlFWWRYV080R2dqS3BxTDZjcWZPV0pvZjBHUDFE?=
 =?utf-8?B?L3RYZld2bFdFMnF1aTdTR1BwQ3E1aTlTdnJUdDgvT0dQQnhKeTJyeUM4NVJC?=
 =?utf-8?B?N2ZFVmZkU0xvbDYyUnEzZ2xOcFdkVG9rWkFYeE9jVEdBT1N4VGlLTUFkYXVT?=
 =?utf-8?B?eE5JZHlYN2pxQVZTUTlxNi9wQVFPak95dDFsRFhHOXUyUktMcTNJbnJIbys1?=
 =?utf-8?B?S3htT3J1Sm53TmlmS0ZKbUd1dHpqaFZMS1RKWWtOM095UUZ1bitGQjRLbG13?=
 =?utf-8?B?SDVhSWlqVWViSmRSYkNSTkpQb2oxWllBYjRkSWc1T2lxZzdpWnZrOWNVQWdk?=
 =?utf-8?B?eUkvcC90bGMrZFVhQXVocGVWMWUrOGFsc2Z2RG81T1NFTjJCb0NYdnBlK3Yw?=
 =?utf-8?B?UFFVaWh3SWFyV2lSaHkrQTE0aDVyVE01aWxwNEV3V2lOMzRYUUh3elNaRDZj?=
 =?utf-8?B?cnBKeDBIeDhZNUFwYUt1STVPdWpKS0REOFRrOVl6ZmpmMzhRQ1BDSG1vaUV6?=
 =?utf-8?B?bjQ5aXRTQ2NCMDhWWjh4L0gzNUZRWDBBNzM3ZGJjS0tzVENQc3BBYlJwd0xn?=
 =?utf-8?B?Ylo3c0pDN3JzN29OczhtNkZjak1VYTZwSEVRQmhwbm5MczJqWjZvTDNLTndr?=
 =?utf-8?B?U2hCdGhZMEprMUloRGd5WkVuS1Erd2w4V0xPbEhTaGFqUEJlQkZhZ0cxSE04?=
 =?utf-8?B?ZGc1T1VUNFhsVWVsRnZUelVHY0hiR3ZhRWQ3N3NaK3hnS2s0WGYxQ0RzN0ll?=
 =?utf-8?B?Mm1wQTBFNVhVRUhGNktlOVk0cHNJUmRJUTh1OXk3M04wUWduazZjSnZFalRa?=
 =?utf-8?B?TzdZcnRPT1lKYm9qclhONUt2d1dpRzhHblhUa0FoNmxkUnpXSWw1R3RHamxX?=
 =?utf-8?B?K3dXRUtqd0NXcUtEaGRwMzlCc2h5UG9Dc1R1czFKQ2ZRUDRMQzd5OTMrK1V1?=
 =?utf-8?B?aE9OOEtZd1YvYnR3a1BFWlo4Y2hFemtIZFdaeXZubVAwZjhqV0dYMnFYODBo?=
 =?utf-8?B?SFVwTHF4dUNnWThpYXlDdUdHVFlhRm0vbktIT0NrMGdlM2pNelM1aVJseklY?=
 =?utf-8?B?enFPSVVqbm9QVGQ0KzVFK2JLT1g3VU92RVh2WlNXRGF2OVo0SmJZcGxFcndV?=
 =?utf-8?B?L0FUNWdUL01ORDNmZnVsOTA1c1BoMG5Jbkh1UkZwMElTQXVoeW43OWxEakMr?=
 =?utf-8?B?U0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bef5247-d985-4a26-0aaa-08db63912c55
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2023 17:45:36.9953 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5LFJo3aFOHY/ie3JX0C3y2ZIULbe2v34cdvuK5KQYLhLRzKvc5i2bq8nSquxH5wQPLcIMn9dK8+458nUzNk5Kfy5J5vKRmBHYlmrR6E+WQc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8428
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685727945; x=1717263945;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dIhdWhKhvyHQJSkrqULih5JcrzoneqjzwhcnWagNiok=;
 b=ih11cuIP+pT5P2PECUomPGKCUKIUax+mlEB/Sh0QaqPJ8hjqO9TrVQTv
 p18fEzcya4unXChPA5dgXUPk+JOKbczW7tMQOlN+ugFlYjSsknxXSxrsN
 mPQiN737UnxHmz0MEIHWsUDM/VejkebRVAzSubpbPnz8xGuUegvsa7hRp
 WnS+mLKbIB+yc0t9L0uYTWgo/RrX8ndbP/u6jJqtsMkXFvGP+d6zoA5wG
 x3NOQL8HcHu2xsB1NQOBjFRmEt5/JiRtmM62vJihftMpV0sH/VLIgtnW4
 lrj5OzeURKy1aEOtAxBwuaPa+mkY/6ZxYiokGmGUqEoguqUb3A8Qu9ujC
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ih11cuIP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: Fix TX Hang issue
 when QBV Gate is close
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
Cc: chwee.lin.choong@intel.com, tee.min.tan@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/1/2023 6:28 PM, Muhammad Husaini Zulkifli wrote:
> If a user schedules a Gate Control List (GCL) to close one of
> the QBV gates while also transmitting a packet to that closed gate,
> TX Hang will be happen. HW would not drop any packet when the gate
> is close and keep queueing up in HW TX FIFO until the gate is re-open.
> This patch implement the solution to drop the packet for the closed
> gate.
> 
> This patch will additionally include a reset adapter to perform
> SW initialization for each 1st Gate Control List (GCL) to avoid hang.
> This is due to the HW design, where changing to TSN transmit mode
> requires SW initialization. Intel Discrete I225/6 transmit mode
> cannot be changed when in dynamic mode according to Software User
> Manual Section 7.5.2.1. Subsequent Gate Control List (GCL) operations
> will proceed without a reset, as they already in TSN Mode.
> 
> Step to reproduce:
> 
> DUT:
> 1) Configure GCL List with certain gate close.
> 2) Transmit the packet to close gate.
> 
> Fixes: ec50a9d437f0 ("igc: Add support for taprio offloading")
> Co-developed-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> Tested-by: Chwee Lin Choong <chwee.lin.choong@intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> 

No newline here please.

> ---

...

 > V1 -> V2: Fix conflict and apply to net-queue tree.
 > ---
 > ---

no need for two '---'

> @@ -1521,6 +1521,9 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>   	u8 hdr_len = 0;
>   	int tso = 0;
>   
> +	if (adapter->qbv_transition || tx_ring->oper_gate_closed)
> +		goto out_drop;
> +

clang reports issues with this:

+../drivers/net/ethernet/intel/igc/igc_main.c:1524:6: warning: variable 
'first' is used uninitialized whenever 'if' condition is true 
[-Wsometimes-uninitialized]
+        if (adapter->qbv_transition || tx_ring->oper_gate_closed)
+            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+../drivers/net/ethernet/intel/igc/igc_main.c:1632:20: note: 
uninitialized use occurs here
+        dev_kfree_skb_any(first->skb);
+                          ^~~~~
+../drivers/net/ethernet/intel/igc/igc_main.c:1524:2: note: remove the 
'if' if its condition is always false
+        if (adapter->qbv_transition || tx_ring->oper_gate_closed)
+        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+../drivers/net/ethernet/intel/igc/igc_main.c:1524:6: warning: variable 
'first' is used uninitialized whenever '||' condition is true 
[-Wsometimes-uninitialized]
+        if (adapter->qbv_transition || tx_ring->oper_gate_closed)
+            ^~~~~~~~~~~~~~~~~~~~~~~
+../drivers/net/ethernet/intel/igc/igc_main.c:1632:20: note: 
uninitialized use occurs here
+        dev_kfree_skb_any(first->skb);
+                          ^~~~~
+../drivers/net/ethernet/intel/igc/igc_main.c:1524:6: note: remove the 
'||' if its condition is always false
+        if (adapter->qbv_transition || tx_ring->oper_gate_closed)
+            ^~~~~~~~~~~~~~~~~~~~~~~~~~
+../drivers/net/ethernet/intel/igc/igc_main.c:1516:29: note: initialize 
the variable 'first' to silence this warning
+        struct igc_tx_buffer *first;
+                                   ^
+                                    = NULL
+2 warnings generated.


>   	/* need: 1 descriptor per page * PAGE_SIZE/IGC_MAX_DATA_PER_TXD,
>   	 *	+ 1 desc for skb_headlen/IGC_MAX_DATA_PER_TXD,
>   	 *	+ 2 desc gap to keep tail from touching head,

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
