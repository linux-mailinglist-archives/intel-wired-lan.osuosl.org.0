Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2AB6A76C8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Mar 2023 23:27:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9439419D4;
	Wed,  1 Mar 2023 22:27:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9439419D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677709646;
	bh=XNliV1g4ExkY5C6jjcT+f37UbZHong59f+yMJlHgyuA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6ph4Ti/vrZBfNRSyNXx+n7xwjS1Arc6w5H7vNabRYrxWN+775x0YmL2Et4uZkOWJH
	 S9sJsomWlN8sunJc9doINmSF4WF2gfqVTDjqGH1ar3PDK+dTHrhaoab5WWlUF0/esj
	 e2KjSHm1Txaetgw4rFtlRpYYGLO6f0f7cxh30vg4CWCKFwNecOpaP6Zh93uWV/AjGK
	 GrwUKyxeSPbC9ppdyrxqe/3BrYy4OdbFZGedSi6M6k7GtiFJECnS66v7A0jAbMZeIL
	 t+JhqB+NCGbelZbTDsHdw4RPZlBnJU2Q3c9FqpA92mKYSfLBTAB/H863G/uue+RNbr
	 HticHnalkRttg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zb475ELyBLCy; Wed,  1 Mar 2023 22:27:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE11E419C9;
	Wed,  1 Mar 2023 22:27:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE11E419C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC6C31BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 22:27:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 90B8B8139B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 22:27:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90B8B8139B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ybWH1IxAhfOO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Mar 2023 22:27:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BE9881391
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8BE9881391
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Mar 2023 22:27:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="318340210"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="318340210"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 14:27:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="817732178"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="817732178"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 01 Mar 2023 14:27:17 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 1 Mar 2023 14:27:17 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 1 Mar 2023 14:27:16 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 1 Mar 2023 14:27:16 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 1 Mar 2023 14:27:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KwfV0Tx2kLVU3Sp8ylYhNt8217yVlFkPNFyP3zK6q75L40JtSOWQMY1ecU2+trjqb3V/Br6EFE/m5/Z/lHbjy8NZRrnZC5mwKvg1vQYS/1GVFzk5gRAJX0318c9/GS97zmPMONtotwc6T64tkO+p0l0W/kHf5zQ+mBZWsMIYDyyTt+QD2BS18XtgtVHcQWJwHVlNslfVx+3GuKTVkoUO6G1BTy6uSAtUrL6CqCIl7XfLWCivLu8iBxqipbOZyYxgFuIxkcSe84h1faCtYF9zMQXE9aa0NZMY1IHfnqnYpfGQYVapAldGLbKT5QlYkymO6hWPnvgqx/6sO/TlsKHu6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yydCU3OqN4HH/XRh0thunZE9j3q4HR6zpQnWqlY247Q=;
 b=lT0OGDetVnxtsC3EE4MFZpza0OYlVouTOC3k+xEvdoNl45C0oVVe7vGZF9YK1K7AUO9gIeERD3AXPhTFpIB2b1no9Ab86570LMSUHLGzHlG5MUDQsPD74zh9hERJUOSaBq+lc9pVUJaS+LfMG6aqKwk3xhCoIyIckZQ6D09ALKDruYkT0Ot0bB1+z0nRTVEyCD9AsRVezSGUSopDIttco8o4ebOGKcVR6YzfWs6A9GL1Pjcjyl+mQcHKbajBy92a/cqk8xQluWFLNAuDaPWjb1jj+JjUslEamQ06qb/lEqZ/TLgCUh1DSTemcxPPL7PtW7a56wwnO+s0G8WgZ3FI5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by CY8PR11MB7134.namprd11.prod.outlook.com (2603:10b6:930:62::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.29; Wed, 1 Mar
 2023 22:27:13 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c2c3:34a1:b4cd:b162]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c2c3:34a1:b4cd:b162%6]) with mapi id 15.20.6156.018; Wed, 1 Mar 2023
 22:27:13 +0000
Message-ID: <4418ac5b-bdca-6a8d-16b1-302568482350@intel.com>
Date: Wed, 1 Mar 2023 14:27:10 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Petr Oros <poros@redhat.com>, <netdev@vger.kernel.org>
References: <20230301204707.2592337-1-poros@redhat.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20230301204707.2592337-1-poros@redhat.com>
X-ClientProxiedBy: SJ0PR05CA0009.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::14) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|CY8PR11MB7134:EE_
X-MS-Office365-Filtering-Correlation-Id: 69416ad5-bf62-4e16-4d27-08db1aa41afe
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4CuZXggDGLuDTHJO3MePT+CwHcMLW1i1fktJ1sa9/VqlpXX+kD9h+Nu5QYLR5EFXQJsqxHleB9hlLt13AtSdAQrU4btkQK0AMoMTP/2vuB3EyPmDcU2Dw83P6tV4LbwGrrxIgfVlsZCR08LRv92Xs5cX4rtzCYke6sj6qZOi7qcWSpQqaaI6q+HmUV8I4kdkMvYl+9aBCVWrA4o42yPXBlZ+SCqNISDPNsAXWzS2Pm4yZDb4tkb9FjnLGew3MKIdrjIC+XRhIfmxiuWgZDeSjIQWlEI5n9qg28+L3+rl0xXpVdDP2BV2HNMIYmKGxyw6Igri0wljElepfRiZLsZiwTUaFnzEw+rsA5e9LedZVmfil/1oUAsvNij/DG+fJc5I/vMtKAvYXAa76ZVRngIaXAb+tZtzREajf30ib3sRv+xFGI8BGnAmqSUTXCJoati3M4WtyVktdgkM7ayPal7SW0rjHDjykgEEjhh7vbW7MYf+fZSoGHzt4UYX/hRKg0Cs423CnCxZXtfNVJH/tBb+3oS/XTe+HsoysXLY5FrwgMxke1pv1IFY0lrLcpB4K8LF/zDqdSGz/Kc/BgNSD/dn0jCLjTMHtiShJjGCydQnyAG6+tP7O1CKmwIK/R0jL/8sN+JbDfcVqEm+RHgE6VaOnAdy7Dlir+u0iyo6kis5/ohaxLF+wbkIV5qssbmZSLhQMwg/xSYPy0Kt4gMQvYqqKx66wPuKih/VXymWYAhlQ4g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(376002)(366004)(39860400002)(136003)(451199018)(6506007)(6512007)(186003)(26005)(53546011)(316002)(6486002)(44832011)(36756003)(478600001)(4744005)(2906002)(5660300002)(8936002)(31696002)(86362001)(4326008)(8676002)(66946007)(66476007)(66556008)(31686004)(38100700002)(2616005)(83380400001)(41300700001)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2xvdkxDdUszUnJZdVl4bzVyOU9EL01EbkRySkhoT1htK1E4YmxwNEl5OVpZ?=
 =?utf-8?B?MTgzVUp5WEYycGZqaTh1ajRBV28vUldkRUxlenJxOTN6aDJ5M3Z3TTdjSU1t?=
 =?utf-8?B?RlBqMTl6Z0hEUHJFWHNrbmk5bW9SbGJ1NFhaOVg0K2ZENXdFYVh3M2NscWpH?=
 =?utf-8?B?cmRBbUwzYm1XR3EzTmlpcCt5dCtQbXRrM0s2OGtFeDRGZXRBdHIwVlBHdStJ?=
 =?utf-8?B?bmpwTkdJWlFHcmRpWWVxZi9aYXVvcG10bTQ0SlVqTXBZRlJkS3JzcFRkS093?=
 =?utf-8?B?YUswRm56TmY5amRhTEJhZU12TlFMUEtvV0Vub0hVS2lXZzBrZnkvaWYrNVU4?=
 =?utf-8?B?aWtVMDdoVjlYUkxXNUZQdWc2NnN2NTkxUmw2QWk0TmdCWlRGemQ5aHpmZ3dz?=
 =?utf-8?B?SC9FMFI2S0hvM05YQzl1MDVNcGlJcTlPYml2OXJ2ZDZWUVB3bW1pdjJ2UGdB?=
 =?utf-8?B?Y3o3dCtGM1N1V1o2MG01N0poUlBGMmpqWTFDR3VVeGczWVVLNERRVDhDMU9Y?=
 =?utf-8?B?OWZTbG16T2RBZ3JWQnE5VSt5UEhHWEw1U253UWhrWFd1R2lYK0gzRDNYMVRV?=
 =?utf-8?B?VUtWc3N2MUtIWk1KcjQ5UzRja0NYV2tGdnRuamE4OU9zRDhDcS96eXA2NG9H?=
 =?utf-8?B?aDNXUFYvVmk3UStlcmFabkRMOXhJVjh1MHZzTDZGOU1HVVplVC9ybldmeGds?=
 =?utf-8?B?MDg4WFpYSHpWWVlyQTBCUmNpUXRGM1lNWjYxVFRYbERHTXlyaUhmNXZWV2Zn?=
 =?utf-8?B?UG52WWtEYWswUUNiRDVEblk0aEhYUGhsbDNrRkU4cDh6OFo1V3o5OHB1S0xC?=
 =?utf-8?B?KzNuSGdrbUo0TFdOaC95b0xaTmQzMHl5eGZFMDlRVmJsTE12VURmRnQvaEp4?=
 =?utf-8?B?VWthb3kybm9qK2cwcGpqbVJOMFJMNjlrUTNkdXdRQk9GKzhiczBxVDBxaU5T?=
 =?utf-8?B?ZEJIMEdzMTVLbmlnZmNWQ1JwckhxekErS1JPRWhiVWdZdmJVT08zRGRWR1Rj?=
 =?utf-8?B?dDVvb3NqMXgwM0t1SDY0em9mUEwyakNXZHl0RzI0NjZ5U2NZQ3pzSnRYRDFO?=
 =?utf-8?B?VVk4NGhMWlZMbmRLMjZvSjAwdmhTQU9MSnk2em5hQ1RXdWhKc3ZXbGpORjI1?=
 =?utf-8?B?NzZhMHYzSklLRkxJdHZ2SnZzQ0xvYjY5R3VQSjFEN1BrdUY3RUtFRy9YVUt3?=
 =?utf-8?B?dUczQlBVSkV5RzZpRG1vekZlM3FVNUJaTDkwTHlYdSt2TEtGM3FaUlIycytl?=
 =?utf-8?B?alVQV1g4bkI4bkczd0xpT3psbW9wTERMMGlOckUzRzRYN09oWkpHVzBxL0hJ?=
 =?utf-8?B?SDk2Ynp6QWlEdzhwangrNkxYTmErOHlHMkZyNzVLcm5PRmliU2c2cHhGV1Jv?=
 =?utf-8?B?U1hhMHNERldrL3o1M2MwN2ttSlBEMk5UbEtUMUxzbGdCenY4ZFpMaTBqQnBt?=
 =?utf-8?B?NVp5b3Z2SXVmb0FWZWQvQU9WREE4dHpwUVJIL25kSzc3dnNnN05xcEc5azQy?=
 =?utf-8?B?VVVicDB6NUhrd1M5UitldmFhOERqTnYzR1hmdW1hSUw0d0l5ZDFGSDF5V1ps?=
 =?utf-8?B?ZEN0UFl1R04yRVBqbExaRzhSeVVNNC95bEplQXcxcmVwRTRwRVBGUCs0SmYv?=
 =?utf-8?B?M3BNaEFSb0lOSy9MV1JLb2V1dGlZMU4yRWQ1SlJFRmNsUjdOWGg2ODkrVWV6?=
 =?utf-8?B?TFJNZXo1bnNhNHQwNHRTMVBzWjJuQlBuLzZhL3ZLTmtSTFE1Y0k5Rzl5MzRW?=
 =?utf-8?B?NUIxUG55bmw1MTBGdWl5T3NzbnFyVVE2d2JrZjN0b3hQY3JmdXExVW82RU1Y?=
 =?utf-8?B?bEZ3MENZcUh3cmU4VVNFZlZmUGkwSFZBN3pUSEVGRzZ1eDd6cWVEVWVvYmsz?=
 =?utf-8?B?blRMci9XWCtYeFVON2IwR242YjlYcitlNk5oS0dHdjlxWWNMcjB2VHZnMk45?=
 =?utf-8?B?NUxjamF6L3d6YlpYVTQxMWt5ZDNkclE1RlZ2MVA0eFprOE5GOVZ4S0RUeW1V?=
 =?utf-8?B?SWs5T2xscG5IS014Mm0ydnhHdFBOamNGZEdkaUlrNDYza1VLVUk0NU5TSHdm?=
 =?utf-8?B?cEJEb01Yb1pick9JRTFqdlZvNHpvdGZyc0VwekdWNWFwdk01OVcxYmowa3hz?=
 =?utf-8?B?a21GMjlUVjdyV3ozZnhPbjBtUHAydGlUOElhVnhnU01CWmd0dS9CTy9vRGFS?=
 =?utf-8?B?Unc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 69416ad5-bf62-4e16-4d27-08db1aa41afe
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2023 22:27:13.5389 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TvmzblEziKeK7AN0ASfC4t1VQhGc2PVd5y5T7SXGTP9ZPSIyYgt2FahmScVlha8DWuKe3rJOKg1J/ybNH9KfO4QXZFJ6MwNy76lxEZCPT5I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7134
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677709639; x=1709245639;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mPcYqPx9AfT+RP2zgzZcGLzFdYKEGzO3iTsDIBL1oMQ=;
 b=fX/58rimX1zGnWvIKWwDrY3YD6TAyp0bVO3y6bNFrPvSxds2+6Ode2SI
 33WthxiUNk1lObM9OpfWC338Jzubq5LZpJVxKh8gIWidVUpiyWMI2hhBV
 fGor1vhYucKA0XV1aaWAqMAKEGuXh7WU05Dt6atUEM7r8K1KBcuuEXnpM
 /4ynxFLjQ2n84HTuPWNVivjl2pxoeJxMGax6CxyqRowI+Qf+hJVCb7LEy
 9amwYpvxFlO3VnYGS5ZnK2jPlXZla2g9WlD7kxZmYq+PSZz42ZbjEWX5J
 7+kePi9VTHGQNp353ja1lGzUpBcvIHOy2IUBfiP/3/rAbizhWQoAVvrEX
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fX/58rim
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: copy last block omitted
 in ice_get_module_eeprom()
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/1/2023 12:47 PM, Petr Oros wrote:
> ice_get_module_eeprom() is broken since commit e9c9692c8a81 ("ice:
> Reimplement module reads used by ethtool") In this refactor,
> ice_get_module_eeprom() reads the eeprom in blocks of size 8.
> But the condition that should protect the buffer overflow
> ignores the last block. The last block always contains zeros.

...

> 
> Fixes: e9c9692c8a81 ("ice: Reimplement module reads used by ethtool")
> Signed-off-by: Petr Oros <poros@redhat.com>

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Tested-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Thanks Petr!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
