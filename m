Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 739948C5CD1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 23:30:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FB98823AA;
	Tue, 14 May 2024 21:30:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aAJmmJ0xUPMD; Tue, 14 May 2024 21:30:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C4D582316
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715722221;
	bh=XBqOYvhrsixuZIel50QRgRV6J5wLyhXezW5DBTbxhjI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CjzHhW74FiXtj7cvg2Y2YfpjpsC3tA2Z/qsoWAYAjTt2GWyw4lxysf9Hu7jH8pcK6
	 TrYXKxUhh1Iui9NI0DfMJiQ57ifmtjBytTmixVic6lX+1uDQ+lmcjyXdgkHmDcFuwF
	 +cM6++lFjnzJTPfTDF99JxeQ4wUCEvcoW9XFAA60Nq06U7eaEkddvTKwWbSugCE1l4
	 v+rfTshZ6Ut1TiKBsY/1w49b0fvz7EZ5PSA7xOXKkERXpJUYiD0PYtfx/nbpeypVtQ
	 VVXuoCDbRLINQHmxmaUJzcFGVcCkznR03w9defrUs2ImcAXhtV9nsvF37cpDXEYGhU
	 9oQbzMVqceGRA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C4D582316;
	Tue, 14 May 2024 21:30:21 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C0B4F1BF42D
 for <intel-wired-lan@osuosl.org>; Tue, 14 May 2024 21:30:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B8B1141971
 for <intel-wired-lan@osuosl.org>; Tue, 14 May 2024 21:30:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hD5CIx03NAE4 for <intel-wired-lan@osuosl.org>;
 Tue, 14 May 2024 21:30:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DC57E41979
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC57E41979
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DC57E41979
 for <intel-wired-lan@osuosl.org>; Tue, 14 May 2024 21:30:18 +0000 (UTC)
X-CSE-ConnectionGUID: YLZ40MOVSNmoK6+33VlKSw==
X-CSE-MsgGUID: rPBUp+vvSaOYvavk22bFXg==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11956342"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="11956342"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 14:30:17 -0700
X-CSE-ConnectionGUID: DNkdhTTnRCugWntCLs1rHg==
X-CSE-MsgGUID: P8rTLkldTwuqV+l0PcMgsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30756120"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 May 2024 14:30:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 14 May 2024 14:30:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 14 May 2024 14:30:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 14 May 2024 14:30:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 14 May 2024 14:30:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nFhAU4RlzKYYNeYUtxw+O7eFqk4S3zYHO7r7MN8xjt4XTSWn00fgFKTm8sVa41beA/V1Tmu/IJi1J2pia0Pp3IOjfj6VrBKc2zL5Piu5/VMDIyThKPOT67byJgKmOgTShD+ZaYexju4uIzyVGq9A/Ue+E9Ud5eLFnVJtOcxxB8DCpse9PL8wZcsUei22PjzEsIScLgqYvoiMUTufddYJRJwt/ZuN0Kim5cWDFtpE0v5dO94Sh6u0wIkhdbkqKFjjINK6BBXeKV+1Qgy0blgX64UudJArDAJVZSL38jzSQxa6hDCaRf9qmMW+fc8hB0RgJqsfzXy/offRUqgEGAn6aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XBqOYvhrsixuZIel50QRgRV6J5wLyhXezW5DBTbxhjI=;
 b=cSQYYDtcU2zhzxyUVUArwn//x172gB0kpqHhd9zGVbCmQHv85ICEB6bNjVrz/snoK4lnaeRhnlShR3dICQMFWAtLpDrBBmvYMxAjuZIdkSm32SbfwrXBhII69Fi9vRXQEvADc0JQNyKfUho2y2Pf01z3+fNycsT9riR0humdOXsYvVXE7yRYoN0jAR3x+Cjx2wR3/Yyzxs93SwFloOyGbm1KZIHsow3jIUMOBDYddKPC9Uy+CX6YSKFNzpIGtDSO840Dib3OBx6G/eftJ+Yr+JOwx3y7kZUlw43xw7GcF9JwpRDeGsDWX25bkkmHvZLGq+MR/Y3KwYsRSPewqAZp4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN7PR11MB7640.namprd11.prod.outlook.com (2603:10b6:806:341::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Tue, 14 May
 2024 21:30:10 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7544.052; Tue, 14 May 2024
 21:30:09 +0000
Message-ID: <fa77987d-a89a-4a5e-8edc-983ea88b6b71@intel.com>
Date: Tue, 14 May 2024 14:30:08 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240514202141.408-1-thinhtr@linux.ibm.com>
 <20240514202141.408-2-thinhtr@linux.ibm.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240514202141.408-2-thinhtr@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0316.namprd03.prod.outlook.com
 (2603:10b6:303:dd::21) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SN7PR11MB7640:EE_
X-MS-Office365-Filtering-Correlation-Id: 010bea6e-1959-464f-4570-08dc745d0830
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q0M1akUyV0lJUzN0OG9WeC80b1F6WjhEYUtXRDV1OHF4azhZeHkrTDdwUzVi?=
 =?utf-8?B?SHhiUlhUa3JEWlV6Z0lEZnhKNktabDN0eHJyajRhMEw4dDUwQ1J5OFpiNmhj?=
 =?utf-8?B?ZVNpN2NFcTdMT25ubUJINzErUUh3QTJZSm5GS1FaMHlramwrUEN5d2NkNjVk?=
 =?utf-8?B?N1JrZ01qaW92T0RCSWJCQUF1bjdTbkFJN01wcXlSYVE1Yk5wcThkK3BCVVdB?=
 =?utf-8?B?alFNR2xqNFBJQ2tyeURVMW9LSnhydU9NK25YQmw0bXdFOFhWM2JTTEhHdmlT?=
 =?utf-8?B?VTNVQnA4SXU2aGRNeTgrTE16QXBWUnNNOWJnZE4yQjJGSFArKytGMjFwZkJz?=
 =?utf-8?B?UkNqR2ZNRmtEcVdSTTZUWkl5YjJHd3FKSVFwbTVRaHJTZC84Q1plWklIN2F2?=
 =?utf-8?B?NzFBd2NrbWNVZlJmUmZ0eXJNRnBRa3RuMEZqamtsL2sxOExFbjAvaTB4UE43?=
 =?utf-8?B?VFlYeE9IdDMxZ2FqRThpSjMranM5Vi8wZ3VUaitua2FodXk0RFlsL0VqWS9l?=
 =?utf-8?B?ejRrZEswWktuQW9YYmNxaFJ1WS8rNzdyMlE5cmpTVkZkdmI4WEd3a21SU2VI?=
 =?utf-8?B?RXpUcFRWN2I3OWFSc0VRMXZyNWZSOCtNK285YmZDZDN5d2dpS2ZGeEsrdGNE?=
 =?utf-8?B?L2FuUkxhUENyRFRsTEVxWC9JS2pKY1V5QktuZHR2NUJyaGxRSVE2d3UzUXNY?=
 =?utf-8?B?Z2dORW9Ga2QvRDFuN0VRbzNNMHNoNGh2YWlJdDcyNjNpcW00QW9FMmovdnQ0?=
 =?utf-8?B?LzZFbzB3YzRLeW1rVWg3VEVrS0Fzb3Myd1JjVU82YUpJcDQ5a0FlQWk5emQ5?=
 =?utf-8?B?NDFUY1ZVZXV4dGEwbkxpOEcxWGVwYjdNR2xoRU5IdGhXVHNDUEJWclJaNVAy?=
 =?utf-8?B?M3RVZjV4YzBXOSt1L2lKVlViS3RyNUxGWlJ3UmxQdGVoWVVSaEZEUklMSE9X?=
 =?utf-8?B?U254NllhUGVDeERZM1l4alV1T0M1Nzk4UFliR2F4Z0VmMlNvbGZmdHFqaFdM?=
 =?utf-8?B?aGswMWEranlWaGo2M1J4OGpnTUFPRFN4T3JHQjRzR1VvdGx6VGhDRm1ZVXRD?=
 =?utf-8?B?RmlIN3ZvYWRpTDAreDhPbmtFQkcwWko1Y2tTaURtZDZHT0dxWm1NRXhGWHpG?=
 =?utf-8?B?bWpVYUdnRGMzU0VRVHhEaXI5dm9yZFhta2EwbnBtZ2FmOXRIV2h0NjBBa25M?=
 =?utf-8?B?R0tqOWZIODJ0N3NZUW1kcXN0eUxuRGdhRlFGSklRZjJiTTMxWnZNTjhhY3BR?=
 =?utf-8?B?ZE1hS0J0cGNqR2grczVoaEw1eVRwcWVMVW5OdjFNRkRoNWgrektxVjFuRklp?=
 =?utf-8?B?a00vRU1pTEVPREZld1BwN2s0WUNCOTV3VEV0TzdRMnpoNlJXOGVtM1EvaUtM?=
 =?utf-8?B?TkFIaEViSDNUOGZRNDB2aUt4T3g3aU1VMmhwdnVweXJERFdZWDhCeEhXTXl5?=
 =?utf-8?B?UGJXMVYxOXo2V20vUjl0S1NvQXpWREFZY05YbXVEcDZBUFRGd0lLMk8wUlZ6?=
 =?utf-8?B?MUU5Wk1OUWtaU1cra2RwWnhDTGlOaERMblhuT0J2TVZEdVZYZlRXOVhKZmh3?=
 =?utf-8?B?L1c5K0ZmTmx2cXFMQTBkb0JSWUlqNEJ2UEdkRDIzNXZQRzFvdkhwQ0VRbWRx?=
 =?utf-8?B?dVhCV1M1SU55TDBTaW5zNU5UdWIzdkQ0a3d6REN3ejFPWFNWaDAzWnE5ek92?=
 =?utf-8?B?TWcyTUl2VHhnNVRBYnRzUFd4RDBtSDkxTjhGSk5GMkdMZHNPTndzMGFRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDh6TkhLV21tM0ZaUHJmcm1vRDVHUkVGUkgvcHhrK1BNZlp5SE0rcThGRmIx?=
 =?utf-8?B?NHNSK0JhWVBxRWZvSzVjOXpxeFNnSTFHM1BHVzRxazJVWFgwVVd0U1Y5T0wy?=
 =?utf-8?B?c0VqaDJIRmpZUGtBWGlWbWJsd2FqS2p3NkxsekZEOU5tTUdjQ1FmbnE3WVFE?=
 =?utf-8?B?Ny83UVBHR21lVml6ZE1ZRDdmd0lRcG1TQlp1MVh4aWdBVVkvK1k5bzNCZmpL?=
 =?utf-8?B?U1FTQk1xQkFHTEN2U2FFcGlwOFpnMkpGN1hlcXNhb1VabmVtY3U5aXYxVEc3?=
 =?utf-8?B?clg2VWFuWk5oU3c5SllpNXN0Mms5MU95MFZIODdUczJWZkJxaC9JQzEvZDhr?=
 =?utf-8?B?MWJMc05Yb3NOU1FreHFYRndjUDhjN0RNTEhDemM2Q2RHL25YL0t0Y29GbDJm?=
 =?utf-8?B?NzBsN1gyNEh4VW05OFJScDdTU0tMUG1aS2J5VEpYc2FKYU04c2pSRzEwV3hx?=
 =?utf-8?B?ZS80T05NR3RBcXdRZ3V5czNKMkEvVWpjSmdZVFFQbWhVUXJaaHE3WW1Yd1BR?=
 =?utf-8?B?RjZHM1VkNW50amZQbGFaU3pPRUwxN2JQdWVkeU1UdmJ6UEpTN1ZsSWFic3JY?=
 =?utf-8?B?Mmc5Vm80N2IrRWNYNE5VVURlUis5Qm9MM1h4VE9CUURpbjJHSEtTUWFIK1VU?=
 =?utf-8?B?bmw3UU95RjRadWJyN01XS3hzUkVoTUxpUHJlSWNpaFhZWnJPUmo1dGtJOHds?=
 =?utf-8?B?SFdnZ3hSRFFMTEVaU0JlekdZZFV1YWx4R25uaWNqRFRhWWxTc0o5VUxaeUFW?=
 =?utf-8?B?SUt0aTlqUjUrUlJFVCt5cDBxVkU2cmpNc1k1YU9PZGhKYzliU2VML2h1L2pu?=
 =?utf-8?B?RjF6eGEyRkRoV3hERjJUT1pIVTFqcFVBS3k4cThoTHNGeUdwd3BBdkJvRVRI?=
 =?utf-8?B?SFRoeTQ5YmtSZEtJRzJ3OFNMQlluZ3Z3blc5NW5HNXR1eitmZHBQVkxhbTNm?=
 =?utf-8?B?Vy9zS0N2U2RYWlhPZ3VSY1pQaTcrVkJXQUt0dkFJb2p3TFNmaFh4ZVoyUFMr?=
 =?utf-8?B?Rm9VOGwxcFJSdm12dzE0OWNoT3FGbzNIRmZxR2srQlNIaWdwaUtWaFVBbTFZ?=
 =?utf-8?B?bFZTNXdZcTI3RDRFN2pzNWtoNTVWMFU0VkMwZnplU2xTS0pTaEJnWlVncHI3?=
 =?utf-8?B?cjBic3YyMkE1WkRrbzhEZi9iUXlKZk1nbmtSOE9BSG4zaVNJR3dKYmhEWmwz?=
 =?utf-8?B?c1lDbEEreUJ5dldiYUYvVm1kTS9ENS91YXVUNDE4UTVXdHBIUzBjMU1LMHRn?=
 =?utf-8?B?Q0VHNEJLZmtILzh2aEtrTDZ2eUQxUzJTdkVtMGNVN05TejFpRnRrdlRBRU5t?=
 =?utf-8?B?ekpkTzVrbWczK2licUphU0VsQ3RQRlFGVXp6ZkMrWDcxcHV3YkV4dS9DaU9k?=
 =?utf-8?B?VkF6QzF2OUNLUnVPcHV6dVdQcjlpVHNoRVFhUi9Bei9kWFQ5c1Q0aDAxald3?=
 =?utf-8?B?VlhnSUl0Q1lqeThEV2NyUlZlVXd3a0o1bnh0RW44d09saUJGSWV6VG13WlJv?=
 =?utf-8?B?RW81cWVaNVVQUGI5a3RLVVgwWkV1YTV2ZVVDVDZyNHBBNVByNG9xLzZXcVNy?=
 =?utf-8?B?clBxR0tsYit5S3JVY0hVdGl6c3ZNNUlDSWlNRWd0eGZDRTN4ZXZSQ2hVeFRF?=
 =?utf-8?B?ZlovZVE1SDl1TjZnNTMyUGR1Y2pnbzBKRjVPUnpaUmJ4SDFSRGtDenhLTWRj?=
 =?utf-8?B?WXJWU21MWWNCeDU3NmFXRDhDQjNiU09zWm85M29KdWdyRnI5SitmYW1vYmVC?=
 =?utf-8?B?dWFveUh0bDMyS0tmNnBxTWRaR1lyVHZWUFhwN1VCYVpSS3I0ajZ1aUFjZ2lt?=
 =?utf-8?B?TFE4dVVwOCtFMzJETkxIUVFaY3RmWHo2T3cxRHlUSDNzRXlreHg0eUV2eG9Y?=
 =?utf-8?B?VG1OeDl5clhDTjUrYUxmUmFHUHVPOWl2aGNrMmd6NlNkZVNPamM3NnRwcTFW?=
 =?utf-8?B?T1JjOHRnYzJIdVVxUlc2Zm80dDJsR1JpclVaTlF0STBoSGZ3M1lKLzdPWU9H?=
 =?utf-8?B?NmZhR0Z6WFlXTWgzRmpPN0svbWlzOWVRR2JDOUVFS0pJQ29neXVaNjBNL1Fi?=
 =?utf-8?B?Vm1nRnhiaXlJREpnWGh5T3YreUV3a2VVR2poTGdJdnFsNjZHSEJ1WGtkTEpP?=
 =?utf-8?B?dGhaNnk0WlFFREQwWjBwOVVVNHQvSU1NU09rNGdRZVROVlllZk0rd2JTbzIw?=
 =?utf-8?B?eGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 010bea6e-1959-464f-4570-08dc745d0830
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2024 21:30:09.9170 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nx9hqiI2dWtEUStpyP0N2KubxvKC6j2AVAhoZLrIXLOq0+gIQ1G9YL2haT8m3PyYH4Wc+lYWlP+ej8ErFqwdZZo706jdK9Z1okaNUAQbHtQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7640
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715722219; x=1747258219;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=de8lRM+9sVZj6t2Sr095PI6x7BDSqVQQfJ4+dUwmLy0=;
 b=S9CLgEUZZuPeTh9kjQYE38oheC7kAUu8th1loFT6L2WiCi5WBd7W8N5x
 QI0UPMKoxIgiCgI7CBpEPwTuW62HlENhrJIWSYa8TgcnLc7omvNUwcJ4J
 saeF45LdH/viqSwrrb8c6ExHWvm45DjRvrcvVxo7UrZLCo41wjxh5dD7C
 R4qCiSstCA4oKGCTRo5SSTrLmPEVAfk/T9I4Yb0tvNWpD5QChKLj0b6+p
 A+ab2ucQgYrnr9+PzkjGYKEGojcShlakzo6erGGSN6CzdNqsC+OQWSl2/
 lamB3C/fdfPGO5k9Q/bzzYwEzoW2miFoNWac8hLTqXx9V6W/yIP2+evFX
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=S9CLgEUZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net V3,
 1/2] i40e: fractoring out i40e_suspend/i40e_resume
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/14/2024 1:21 PM, Thinh Tran wrote:
> Two new functions, i40e_io_suspend() and i40e_io_resume(), have been
> introduced.  These functions were factored out from the existing
> i40e_suspend() and i40e_resume() respectively.  This factoring was
> done due to concerns about the logic of the I40E_SUSPENSED state, which
> caused the device not able to recover.  The functions are now used in the
> EEH handling for device suspend/resume callbacks.
> 
> Reordered the function, i40e_enable_mc_magic_wake() has been moved 
> ahead of i40e_io_suspend() to ensure it is declared before being used.
> 
> Tested-by: Robert Thomas <rob.thomas@ibm.com>
> Signed-off-by: Thinh Tran <thinhtr@linux.ibm.com>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
