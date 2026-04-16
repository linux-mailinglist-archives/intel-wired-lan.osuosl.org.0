Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EGLHNG1n4GnZgAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 06:37:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F32EE40A323
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 06:36:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 943C08078D;
	Thu, 16 Apr 2026 04:36:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kNb_R9feI_HJ; Thu, 16 Apr 2026 04:36:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EEC0480786
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776314217;
	bh=hbQhn9BdombBSdotYhOov2EOlI0v3fjoo0MgyOn0/OU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SdTRi9TUZA85in57l71knzu2vmuPtXAxmrly+KBgBMNw11tOeyykKubcb+cBCAb0b
	 tSStlhAd1r7FTW8QzXnWQgGR8fM7SXkHSqtSK3g1f7ub+cKbJo7ABaLLYMZlxqc/ye
	 voMl9hMH8L+Jwy0kO8ZHmDX5/GhU0eB26Wz15w6K+RpXOW/JGtyMzIOwHA25eps907
	 42hIGPzxCSoWLhmKeMus4rC8ZSKU7XivO+HOo4wH7vy5m3MmF/DwCdMQ9q6Cu87zBo
	 RXieL5lWOOryhKGHyZ4w4lTaeR1+sbHAhDX0oMg5MhI6yMiOxxjremF5z2Pe28AzEu
	 grhMtWDwz6ogQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EEC0480786;
	Thu, 16 Apr 2026 04:36:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 03C4B775
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 04:36:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 008FD4015A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 04:36:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qxWm9eb24Pym for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 04:36:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A27CD40148
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A27CD40148
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A27CD40148
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 04:36:52 +0000 (UTC)
X-CSE-ConnectionGUID: zrejScbXSQ2E/8/gMpIH4g==
X-CSE-MsgGUID: GVvlqFoMRK2STkvRpHgR7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77178929"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77178929"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 21:36:53 -0700
X-CSE-ConnectionGUID: OePc8m2LQzGEfgSb7UNbwA==
X-CSE-MsgGUID: 3HVm+8NSQLi3Or+I8+rDrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="224109151"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 21:36:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 21:36:51 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 15 Apr 2026 21:36:51 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.36) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 21:36:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GqqKIudQEI+JyoCKXTc01wvgtqpLsd5G8UZXQPNjvMaRlWRa3cTBB4RiCHmJkX4NbLdh4HBazArbX5w40CmGPw+KfhDOIqgPPkt1Npp5rp42+DP7XVSt+Xy130WCqQKYenJvljGbRRrRl1sVS9wC2ho7DOpE9+pJ+nNM4O4nll6Tn/CGAYYjWdwnwPOxCNv6JxYFL+8gnUWkBcaOcflLIIAZLp5f58XIsO+EXwh2zwHrfkfQ1F2cdAXdAu67W2ok0lUJdDMw9M6Pv/VnkvWpg2n70Lp6RjEKXlwwK4ekDoIj1DKrLxS6HNRCVuI3avyc4yAuSAsplCSIkP4W2pCitQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hbQhn9BdombBSdotYhOov2EOlI0v3fjoo0MgyOn0/OU=;
 b=lj/GILd8wLikGTCwdlk8S/8NSgwKx+khkAA1x2sIT0PAzXxJCOPyB+hYluNpPbmY8Mgl4WStd6atcBBWCGztDQfA/mz6vxV2yBrDdgm5yE9PJrwvQU35Hfp/QmU9nSWWHW4zstxpf23EdDPlWRGwtNa5r8P0ci1+oEBQO/gEiP0+StCl5JMklOiApltfj/mmwshZYenRhgtRA8o1SzFMXLjSjAX00OOR0avTpV0b2Y2HXEQG5YU16G4+Y+JIwyzoXKzRmrEikbdjZhVmQANT1LfyUz5CacfbWWbIXNbIUQ1pAA1ww9coIFrTmxU4drja1Pn0ygBPoOtnKorzwIm+wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SN7PR11MB6680.namprd11.prod.outlook.com (2603:10b6:806:268::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.21; Thu, 16 Apr
 2026 04:36:42 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9818.017; Thu, 16 Apr 2026
 04:36:41 +0000
Message-ID: <e62469a2-4090-4ab9-9a6e-ba9ce035b717@intel.com>
Date: Thu, 16 Apr 2026 06:36:35 +0200
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Simon Horman <horms@kernel.org>, 
 Petr Oros <poros@redhat.com>
CC: <netdev@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "Andrew Lunn" <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, "Eric Dumazet" <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 Daniel Zahka <daniel.zahka@gmail.com>, Paul Greenwalt
 <paul.greenwalt@intel.com>, "Dave Ertman" <david.m.ertman@intel.com>, Michal
 Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>
References: <20260413191420.3524013-1-poros@redhat.com>
 <20260415163003.GP772670@horms.kernel.org>
 <f30ad78e-1eb9-4c9d-9034-c8873966de66@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <f30ad78e-1eb9-4c9d-9034-c8873966de66@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7P189CA0030.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:10:552::34) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SN7PR11MB6680:EE_
X-MS-Office365-Filtering-Correlation-Id: c4ff6377-04a6-4eca-0d8f-08de9b71c144
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: EwChHBu816CvSH5SEoZrWZvH5XmL9EfE6ouirHn33IMwUn/53ZObrL1cXdzAGIQyrLH6DekH/pv7UpTpwHfwdQj55/7KU3oXSNOEHSOkFR3WqEvPJTSZU++q7lsf8VVxGLaDjbMgDMlHzOXMkUhJxKv1t09xX8Wn0trgajF9JfHDcA/NK20B4RwNDYo/v7POui2x/LSpZjwhBNxKgwvz5XknV8Hou5lYH1N6vY3dggNGiXnsyvYo9IY2FT0YiAYAgcaIT9e0LSDnLwSDmIYZDtwhiqC/jDUy1QgZj3aBIQ/BXuapUciKXek7K42ta6sikq1moy/peCvIo8NTMYqch4/JXqT6mgC7oOZ0Hje0Mk0sSZxMJpnDCHXxaLNXf/Hb97S7a72+U1ztm85Ja1X6/AeKXtBl4N2hj60mUj3AnT1zZdLxN8zDPZAPrvNBTHHHDr8mK6Uvu0+UaxtRLXmx04UFkyTTX5cyyziwcXDORQHcbzz3lVMN8B+CuAxWh+YqJK8buWsT/7y/PTRMWd/ztX+1qy0Mxhcn0rgQyKqhqm9poedWwXjtbKjrwUl0bxI01+P8IBxCmhDWoJEetT5lPqwJAdtW2q+MKtEJ81CSU4m90dxCv7+ZcYd1mjsuB2gjbDCAsTYfsHD3bK5WZoFQQ+4K4vZf/zoFLNT3wXdQTx5LZ40XlNEQk9c8oF8cg+z5HTnYsiY8U8cUPDTvydu8nsuoi+5SP3luutl+iA8KTBU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmtVK2FtbmEyajZGeUpGVGxSSlFNcWFWS0l0VjllSXJRN2hvWVp4RXhMWXpY?=
 =?utf-8?B?VGJOTUlEVlFiWk5ZZDVsMzd2WWZPL3VDb3d0aGFKczRORWMrcDF6dU5kbW8z?=
 =?utf-8?B?NUZWRjZsSXR1SUlqUGdaUTVYUkYxZURjcDJaQnd0dFVJWk04YVdURWNNQm15?=
 =?utf-8?B?Zll2a1c1UUhVK2psM0RUbGpPK0x6bUpQWFFsRHh1ZDBaSENzbEtJSjRSR3Fx?=
 =?utf-8?B?MS9ZanNxMXZaclYvZ2o2ZFVQcUNnSStsOVFGZXEwSno3cmJQd2I4Q3hwNW9o?=
 =?utf-8?B?TzRWam42dU5mdnJoVnY1UDQxTmZhQ1lCZDZYU29SMi9pSGtndGdjUm9udUJH?=
 =?utf-8?B?ajRnYjg3eU1Fclh3cmZaZ2g4VFFBbUtzMGgrVGRSTEx1bVd1YXltVWgxcDlj?=
 =?utf-8?B?ZGNPTmxpTTFqeldGMXVrM2JGbUN3M2p3RVFoQVQ0LzZBT2tRenFDc2xpcWlK?=
 =?utf-8?B?MkdpbnZGRXowVDl3YUp5bktqZEtpdzcrRnlmNlVzc3pIR0hKTVhhNTE0N2F6?=
 =?utf-8?B?eFkxZFpsOW83VU1GRmkreGJuZGNDbUl1aXBkZE91Zmxhd2lwODM2QVpVSTZC?=
 =?utf-8?B?Wk5qVU4zUHhhOGFpa3BWVTdhRHlDNmtWdXhrZGV0cFZhT1VwdnBuVGNmVXUy?=
 =?utf-8?B?MkswYTBRWG1oWHJFM2tHZ3dxZ3BsTmlnSXFyWHJDTlJjbmI3cS9ETjZQdk5T?=
 =?utf-8?B?N2xqZWtBYURZNDZiUW9oWWJSRDI4SERqUm13MU5SQ0JZQWNETXg2cjEyOWY1?=
 =?utf-8?B?NEJGNzlqMUZMVDNVN0Q4TXJHTTBWejUyRFZ5VWM3Y2NTcWlkMFJweGNzV2Zu?=
 =?utf-8?B?MXpaSFdOVFJGK0w3L3pwZXFndGhyR2dkMnlxQXIzRTRoSFUxcU5PdThWaVo3?=
 =?utf-8?B?TWVqRTVZN2d6M0pKZVJhcFFIQnF2MEpnSW0yanc0NEtvVExEMjh3S3hPNnNj?=
 =?utf-8?B?dE1rRFozTXdtMVpSenMwVHFkZnJ1c0trVngwRCsxTVErOWMzblFONUZMQ3I1?=
 =?utf-8?B?UEQ0c005aHljQXVYTjdvODNwcnJqa1VYUTdiYlA4eEhpNXpKM0ZaenZpZkM5?=
 =?utf-8?B?a3l0Zkx5TGFQdzlUVU53dThWemxTQm9JcHFYM1IxODBvVU44TCtnYVFiU05E?=
 =?utf-8?B?dUJOSEV5a2RtU3VpS3FLMTU2bmxldnlhdGZwRFFkeG4zazhLQkVUTE85ZlZt?=
 =?utf-8?B?YVJITnhRMUJneTV3Z3k4a2NUaERoaUpORU9aOFBacEh3UGNtdGhPK2pXd3R5?=
 =?utf-8?B?c1B5RXNiZlFFQ05ncjRDSHVKRnJjNXA1dE50cTVLaXJ1NW9xL05DMmpqakhS?=
 =?utf-8?B?bXlrK2FDTDgwaGwxUlhPZXRoYitWTjh4STc0dFZ5NFduTUxGL1pDM1Jxb2Yw?=
 =?utf-8?B?QW1Ga2lnTmpVSk5OWjJNaXdoOXNzRWhoWUhMVFNYQ3h6c0Y3UndIcjl2UVE5?=
 =?utf-8?B?dHhPVTJhbStmSG1sRldyOGkxbUI1SVdJdWFSTkl4WHVFbXB6TG15MGM1Z1Ra?=
 =?utf-8?B?UWxCYW1ENnZCaS9sckNUVXFCYzlRNnh1UzI1V3hia2tsVWovaHY4SW5CbExt?=
 =?utf-8?B?OExha1pjWlhYMnNMNm16MWxUSTNmaTV2VjBnUmY5Ymw0OHNkN25VbW1Ib25s?=
 =?utf-8?B?RFEzbDlYeExJbWszeDV1MVlBSTRZVXpJeXd4QTQ1enhGZkdsQUw4ZE15dEFW?=
 =?utf-8?B?MndPbTNMNFp5T05ZejFINE1CcHVGYmpXTU1BVHp2V0NxcXE0OFVXNlBsVlZK?=
 =?utf-8?B?dGNkOHZUSVA5TFc4TWZHSXd2Mm9PeEx0Q3JVTmJ1MXBvNGpVUU91S3Mrb2s3?=
 =?utf-8?B?MUhoZTBFZXp2QlpvL1poTUVWNVU2VXNUcVZaQ09SenFpaVhPWCsveVBpTVNU?=
 =?utf-8?B?MDlPaktaMng0SFJHVFpkRjEwR3dLODhsSGtvaVZRUER3NkF1NnRxSEVmOFJK?=
 =?utf-8?B?Ym5DSmlMS2tjMlRnN25YU1JTR1RCSUh1VHpjNk4rODlWZG1yTllWZHlIWVVF?=
 =?utf-8?B?YStRNFRWclhIYjZPUXNIRXBMNkU5c2tRcllIUWE0WVhsb3E1SXZvWklxR0ln?=
 =?utf-8?B?MEVUWUtVNjhQdDFLaktsZDNQUmhrRWdrS2hMd1RGMU80SEtpdU90VmRCei8r?=
 =?utf-8?B?SHdYT1ROU1E5U1RzZEtacEgyQkUrVEZGTEVGdjY2U1BrUUg2RGRFZUo3L216?=
 =?utf-8?B?dXJSVWZxZVBtdStnbnU2U3hwbElRRCtXcUdSMkhDejhyNFA0ODB1UUpIbEVK?=
 =?utf-8?B?ZVBybENPL0dBNkpMdnQvSHFhUEZveXVEOEhuN2hmcGxiZll0cWdRbFdtWmFt?=
 =?utf-8?B?YmlJWm02dzE3Tjc4L1RYYVRuV0NXT3p6ajN1eWJRSTU2VlY4TTBoczZCRFEx?=
 =?utf-8?Q?5w221A/+8IhMyfHo=3D?=
X-Exchange-RoutingPolicyChecked: uDUwW0/f3u7kIwYPHrGsL9Bmt/6ErD0GZIbp97pEyWw46HFah5G3DAobIzX4cBIV/c0+ANanrA95DcHJr1fd3NkC2HxZevHtiEa8pBZLzoHv57RfUd6aAm51w9B+6mKHeqU+OOBJ/7i+H1QN8tY0gksiyuXE8IFtQ1fneaQY9IonU0hLWIa7NsTa0grL5LbmIikxMXe5yvWuVRyVDSiShOY6vItlB32bU8Sp9nDagxqYCXlLfDQ1HKUHh7GBO1uIXS8EabHNp05GutRueY6oLHqsaA9HWFt7P2GaZz9jmfo4lh8K2drEQJ9DgAFFkrW8LhUSDyydqZebw751huuJ5Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: c4ff6377-04a6-4eca-0d8f-08de9b71c144
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2026 04:36:41.7243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5vTEAD20NTMph4GM8davWnOlS8RpvaMn8JNXa7/wMSiZfbc2UUTlx5B3T6o1+qhKbFTXLaaekG6AtRgPeu2ZvcXdCgG8EEs0cmGpJ99EVJA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6680
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776314214; x=1807850214;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZZfEeLrTwrmrEypYMBXIiZOfObfp0ImwWfwaFXWwZKg=;
 b=W7MCROA0JnwzBWV2hMYrHra7PtOwavd1tZ0dqUj+n6Vd8/8185B2wDu0
 J1dTaUq5H53s3R1ifIt2PUOXrFh3CBzSRNkRIUY7U1Hkc0fms770QlKie
 TUoWvsSQuRjMN4gVcg+9vTfoDj8p4m52tvs4LPKj0o5oejRy/xxG836OR
 s5zDq4U+DgdPem3ystn6VUtSM33OM4TSOe3OXx8Lc/Vf1kzATKED/v/4c
 uOC2fx2aspVaCvsRXXSeDhTN268Yk2vnIC9d4UgRnTt3E56+q6vdOh9Ky
 VHoj5Ysdg2wL1m7QCEzCieLM4tTpPiLs8La8Gl2kG9eL7/BAygeOhPVfn
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W7MCROA0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix infinite recursion
 in ice_cfg_tx_topo via ice_init_dev_hw
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:horms@kernel.org,m:poros@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:razor@blackwall.org,m:daniel.zahka@gmail.com,m:paul.greenwalt@intel.com,m:david.m.ertman@intel.com,m:michal.swiatkowski@linux.intel.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:danielzahka@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	ASN_FAIL(0.00)[8.3.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.1.0.3.0.8.c.b.5.0.6.2.asn6.rspamd.com:server fail];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,blackwall.org,gmail.com,linux.intel.com,lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: F32EE40A323
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/15/26 23:22, Jacob Keller wrote:
> On 4/15/2026 9:30 AM, Simon Horman wrote:
>> On Mon, Apr 13, 2026 at 09:14:20PM +0200, Petr Oros wrote:
>>> On certain E810 configurations where firmware supports Tx scheduler
>>> topology switching (tx_sched_topo_comp_mode_en), ice_cfg_tx_topo()
>>> may need to apply a new 5-layer or 9-layer topology from the DDP
>>> package. If the AQ command to set the topology fails (e.g. due to
>>> invalid DDP data or firmware limitations), the global configuration
>>> lock must still be cleared via a CORER reset.
>>>
>>> Commit 86aae43f21cf ("ice: don't leave device non-functional if Tx
>>> scheduler config fails") correctly fixed this by refactoring
>>> ice_cfg_tx_topo() to always trigger CORER after acquiring the global
>>> lock and re-initialize hardware via ice_init_hw() afterwards.
>>>
>>> However, commit 8a37f9e2ff40 ("ice: move ice_deinit_dev() to the end
>>> of deinit paths") later moved ice_init_dev_hw() into ice_init_hw(),
>>> breaking the reinit path introduced by 86aae43f21cf. This creates an
>>> infinite recursive call chain:
>>>
>>>    ice_init_hw()
>>>      ice_init_dev_hw()
>>>        ice_cfg_tx_topo()         # topology change needed
>>>          ice_deinit_hw()
>>>          ice_init_hw()           # reinit after CORER
>>>            ice_init_dev_hw()     # recurse
>>>              ice_cfg_tx_topo()
>>>                ...               # stack overflow
>>>
>>> Fix by moving ice_init_dev_hw() back out of ice_init_hw() and calling
>>> it explicitly from ice_probe() and ice_devlink_reinit_up(). The third
>>> caller, ice_cfg_tx_topo(), intentionally does not need ice_init_dev_hw()

ice_cfg_tx_topo() stops calling ice_init_dev_hw(), that is the real
change that patch does, OK

>>> during its reinit, it only needs the core HW reinitialization. This
>>> breaks the recursion cleanly without adding flags or guards.
>>>
>>> The deinit ordering changes from commit 8a37f9e2ff40 ("ice: move
>>> ice_deinit_dev() to the end of deinit paths") which fixed slow rmmod
>>> are preserved, only the init-side placement of ice_init_dev_hw() is
>>> reverted.
>>>
>>> Fixes: 8a37f9e2ff40 ("ice: move ice_deinit_dev() to the end of deinit paths")
>>> Signed-off-by: Petr Oros <poros@redhat.com>
>>
>> Hi Petr,
>>
>> I don't intended to delay this patch.
>> But could you follow-up by looking over the AI generated
>> review of this patch on sashiko.dev?
>>
>> Thanks!
> 
> I'll take a look as well. I recently included this fix in Intel Wired
> LAN update last night, so hopefully nothing too problematic...
> 
> Sashiko says:
> 
>> While this code wasn't introduced by this patch, the restructuring makes it
>> more visible: can this cause a use-after-free if the nested hardware
>> initialization fails?
>> If ice_cfg_tx_topo() triggers a topology change, it performs a CORER reset
>> followed by an unroll (ice_deinit_hw) and re-initialization (ice_init_hw). If
>> that nested ice_init_hw() fails, its unroll path frees hw->port_info and
>> destroys control queues and mutexes.

here is a talk about "prerequisite for the problem"

>> Because ice_init_dev_hw() returns void, it swallows the -ENODEV error and

and here is about code that Petr just removes, IOW, does not apply


Plausible sounding comments, yeah, I hope we will not drown in the sea
of AI content :(

for the patch:
I have tested that it does not break my test suite (it was me to start
touching ice_init_hw() and friends), and both code and human written
commit message looks good,

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

thank you for fixing the code after me!
