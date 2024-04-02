Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E38BE895204
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Apr 2024 13:39:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 685DB4063C;
	Tue,  2 Apr 2024 11:39:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cXCnAlpOEzXP; Tue,  2 Apr 2024 11:39:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95F04414A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712057957;
	bh=elbY2e9FNt0KEN+LdrjHhiChnsNs4Oan5qHMZASFBFM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mjHhtt7VaT9l/ry1f3QMhVeeom46vdsKOMMhh5hTcq215QKYwkGxIZYvX/Joven6J
	 +ildGv2YjsWPhRqrYKBYsUlbw8Hw2jpKjFNbH8gcxYAo+epXlT0+V+jT9Icb3o/7BQ
	 dzxx8kEbaiBgf1/T7oUnHjtz+w0NxTTxxbX8IbxPUUpC4cSmwN2W+OMyuajOL6CMaS
	 dvbZb01qGHKI1Zyvotn7+wKb2DS+udJOPxTzV7Jt4NsD8jeEjOPzAya89w4Y5wp819
	 vOE3Mqi0GY1o6jGba4wN4mK/gv9Yuco5gicJ8BL2+n+tolcbgLx1cBhGku2+/TG/UV
	 Rx6XTDNMWMo1A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95F04414A2;
	Tue,  2 Apr 2024 11:39:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 146F21BF46A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 11:39:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 21F854018B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 11:39:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q9VJlO9sOvGU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Apr 2024 11:39:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4A78E404C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A78E404C9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A78E404C9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 11:39:14 +0000 (UTC)
X-CSE-ConnectionGUID: 1g2nEQN1Q0CEnLGYhx7plA==
X-CSE-MsgGUID: BVm5rZoIQryXOEU40RJcVg==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="18580271"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="18580271"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 04:39:14 -0700
X-CSE-ConnectionGUID: 23fyiQoRTECibbbDnnAWfg==
X-CSE-MsgGUID: /8WPkf+LS42u7laHneTOhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="41189419"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Apr 2024 04:39:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Apr 2024 04:39:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Apr 2024 04:39:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 2 Apr 2024 04:39:12 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 2 Apr 2024 04:39:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KtPg8ivlOHZA9hRbchZlOd+Dfh/jKtbzk6xFbGYD0kcFPtg/kceoAjiQTEPWYpkPuCIiU0IQEI9AdX3rfME9Hfco4Lq4+4IgfEu2KfTfG9ntO6fgtWdBZOhRdr7+HSQ9t5XrJaGgTLDMkZqQ2mRAd1upn5QcT9vXy9Q660a1ugsG2pQSAafgVQKJMRqbOMtN6AELT1+CMI+CG5LULcjVCu8oTcWNG1AORq7fuqDZq+k6GONDHhgrlMA9eP+J24pRYebdmz9nFVVdEReRNcReIoIl9dcxO7YrqpX6w2hAr4u8/iYwoeuShlfse5UKjqBAIefflaRlVyBesT2u/cjIEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=elbY2e9FNt0KEN+LdrjHhiChnsNs4Oan5qHMZASFBFM=;
 b=Wxx5xSoh/HiOt7QhOdGvAF6556mryRdUdNfTGPFaGAk5Pf8WdEAQ+ZrNzxR8khF1/YyQqak2VhIfxJqyif8c2Cw5isFqCUrfqBwSCywHBW0v5AgtT+6rLLxfmf8yPtj6v1xDuXQjTJ1DM84U6ojA4dS76goL039ZPpw7IESWmd1sGRbKQ2XxIOpQfC/5IWv8yB+4yj9BajZuIQSqgsup+pWtzKX7i00CkgNYCr27le2KKf9d9lWmVNIgjdBxZnvS+hgi+jE3mH6IsUW4N+rETWILSSHujUOJCPHeqsQZteoZt+eQAtyrjRWE3TOBWSDQaJ5zs3Po8qYTK03pl2mmYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DS7PR11MB5990.namprd11.prod.outlook.com (2603:10b6:8:71::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7452.26; Tue, 2 Apr 2024 11:39:05 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665%4]) with mapi id 15.20.7452.019; Tue, 2 Apr 2024
 11:39:05 +0000
Message-ID: <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
Date: Tue, 2 Apr 2024 13:38:59 +0200
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0202CA0004.eurprd02.prod.outlook.com
 (2603:10a6:803:14::17) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|DS7PR11MB5990:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7PJRy+dV3d5KB73XmOpJXNrZUIdki8usx7rYsZlokFeELL6Zhe9CwTFvOLUWjhr4CzzIl5PmYHjqeXKEPAQkweBbym5Wgp4FW1kTBgigdocLSKoOdKGRbWGZIjZY1Sk4wAKK+m6vrMSN8RE4viyiCnC3cEbO/hCe+5RMgHizzUNEneEb6bqe1rXyygektEJE4qN5tkTxupiTaDuKUVLVjYLBr6iBWLIRmoF6u7uTV2D/jodk2ZG3+y8OUYpF7+J2MRLa0Oz0bjlFg8DPxKyn7ZnrnZF3mUz8i20haB331WRkNy0k86lE2hPTuOwWpFMwiSVOlb3c6r+T6W7lUHVw+WvGUq0pqH8L216c+yBK3t9AyQqwWAt2d1cpcZOiW5iHAtF24VnZUiC2H0UL1w49wUIYNTwmmcNqqxXWmYT/r5hxG1YaE5UmaRSNaL3Nn/npQYT15Hr36TKOvKd0IhcdN7RvXpZcz8kJ/zz49/XPpxtucs6uCOYq14fhkggb+yihVJQKJ2/jZQGRCcKpHs79tMqv7EMTOs7ahm/3+ZO9zrf0vfK0k3NW1Vqg6tBJgBNe9hvmV3DGALW/QzQuB4uldpW5Zxjecvk6/XQd+jV7KYunTx9BvLLlzgzimHuHdTyQKppmAKoRE3vfhmlIUpZ0XU/WRneAFy6tlDywXSqCIEY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QW02L2FFbnRYTEVRMmhJT1NXNkJ0SmhaUFNpb1pTaXZDVE41aTQ1V3dWNldY?=
 =?utf-8?B?azFwQk5Ba3FlWHYrYkJUSkhHU00xUm92ZFQwcUFnSjFYMGdJSW4zU0FLOUl5?=
 =?utf-8?B?cmduSnVXZ1Q5UXo4QVdaRU5TNzR2RTY3REYrcHpETllUMVgxMVBtUVNIKytD?=
 =?utf-8?B?YzU4ajYyNlBUWmxOMHNQZVo1cG5aOUcrSFhlOGh6aERkRHMwVnlIbndiRlgr?=
 =?utf-8?B?U3JwRmVYL2FtdFZrUCt6TmRGY2xoekNCeTZWeXJXcFFpR2NaeitydlVlT1B3?=
 =?utf-8?B?QVlEOXBjQ1FLcUJRMXo0RHJ1bXJXRTlrVC96N1k1MUpvb2hucG9LeUpDeTYz?=
 =?utf-8?B?WkozKzlJMUk4SDZNdnBMVlF0SzNqMXBZVjA2NW1vWkRtVlQyMnhXQ3M4dDY4?=
 =?utf-8?B?cjZPNWdEblhvdUFHb29DaGYvMG4yZW5hMW56UDA3M2tsSjRZMzQ5MGZRek1j?=
 =?utf-8?B?bmtCT1BBMnM4eEVEN3JkeFlpbFlSRm8yNTlvaHhXNmJEUW55K3Byb0pRamZY?=
 =?utf-8?B?UGFtK3hRazhvQUVkNW1vWnVQL2g4blVPdDh4OG9KQU9MUVJ0dm4xamIrcWdX?=
 =?utf-8?B?L2QzQ05hMVlRMXNRdzMxMzBYOE5ZblVDN2xpMWhUQ3hDMWF1VXExZTZQdFJC?=
 =?utf-8?B?UUVaRCtDdjFMQUUxdDRtOHRDei90aStVVjV4K0l6a3EzYUkzNnVhTFBpVlZu?=
 =?utf-8?B?K0Zvc2xmVWZ5OWZUTDRML0YzVW93dGxGRk5ta3d2cldZV3poZEVmNzdIbjlt?=
 =?utf-8?B?TGZrNnlSMXdMeEU5RlVYQVZxSkhJVjhWS25WSG9aVHhYT3UwandSSXF0dG5S?=
 =?utf-8?B?bDNPRXBIbWVmT3R2R2ZrMXJUT0hVVG44MUdZMEtBd1FBcC9jbWVJRXZZRDRV?=
 =?utf-8?B?NTlOTDUvb2tYNjgyS3paRkpNNEZEb0ZLZUNGU2d3R25uc0ZzM2pGR01zYWhy?=
 =?utf-8?B?by9XVXBqZ3Q5NDJ5ZVdKanE1RDFSdVB0TFFTcHVsd1NoRmtYSGc3R0hDbnNw?=
 =?utf-8?B?V0lPRVlNcC9lSk5QOU43dDRQQjFveEdoUU9sK2UyV1hlYVRsSzdpYXpvaHFX?=
 =?utf-8?B?UElOeWh0aVlxSFBSMDhoMS93VG9rN2V0Um1WK09VN3I5bk1wTGtVakxTM3pn?=
 =?utf-8?B?NGNrVDdPRGRpTmd5dFdERXpIdWNoUUF5MXpJQ0lBUVZkeStPVjd4aWFUdHhn?=
 =?utf-8?B?UFFnQ2F0T2cvMktsTVlRNTliS0JxQjFhaEJpMmJqYk1QYUZpd015TWh4dWk2?=
 =?utf-8?B?bExrMHpaOGl5aTJ6Zlc4bC9vY0wwL3VHdE1HOVVwbFhuclVmWE1mYU9kMHNq?=
 =?utf-8?B?M2NEL3p0S24rYXY4WS9KR2Jpb0pFbnIrRnBiaGpaWWxlTjZ3RjByTHlKUERS?=
 =?utf-8?B?S05uL1N5YThhaWJIWE00b1pJMGUwdkVKNnlaRG5jZkkvNFQ5SnMyQmxGSHFr?=
 =?utf-8?B?UUd4VDVoOC9MREhVeTlZQXlsdzdNamh6UVhWSjQyRGt4aXFLYWZESzhpS0VE?=
 =?utf-8?B?ekJwZXIvQlhpM2R0TjZSSytvam5JdDFBZWVIVDRydHdJWEpyMW0yL04vZk5x?=
 =?utf-8?B?OExtTWdpa1drVlgrRmJGNjFXOHhiUDVMaTRRSE1kcHdPQ3FuMnNQY1czaWt2?=
 =?utf-8?B?ZWY4REpRTXdmSUM5ckR0RkExc0pRazBZQXJOOHAvbUpHR1FTb0NJVHFENjBp?=
 =?utf-8?B?N2kyVHR0MzRyOHk4eTVRSWdNajJBQXZJUDlWbzdYYW53YUNEdUJOVVJTcFNH?=
 =?utf-8?B?R2hZeVRVS09tTHhsc3NZSm1GVkhpVEkrRERzUFcxdkU4M0tGWGZXQ0dBdTFl?=
 =?utf-8?B?d0RKSklHV0w1Q0l3bjd2SzZSTXo5VFJyblpkWW5WSWRnM09NZDJhVUNGT0Uy?=
 =?utf-8?B?eHU1cjE5MzJIcXpSZjhwN1JYT0gySUl2WnU3MWVYQmthaWlicHhpZ3hpQWE2?=
 =?utf-8?B?Z1dvTkU3QkhGeWRYMFpleCtXSlU0Mm92dW5QaWlYM1lmTW9rYWJoV1ViUGZa?=
 =?utf-8?B?VjhSZDZNZmlWMmZTR2pTQlVNdnJ5K2pEWTk5ZUI1c3psYmtSeUNOOStKNWY0?=
 =?utf-8?B?bDRISThBUWNGQzZCL1hiaDk0VzF6S0tvd1ZWMkppUHdOaUpYbDFqbzVZZ0t6?=
 =?utf-8?B?MjRDVExPNmJzeGppNzcwQ3ZZYnVTS2VBL2FvVEJ4RDByRzB4SjJrQWdDU3BK?=
 =?utf-8?B?cGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 940daf50-6c08-4bca-d998-08dc53098074
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2024 11:39:05.7244 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HldfzPSAE449FcboGh+ykX3qV3BkQTBkXfkxnVKORuUvPdTtzlfA0MbFuZnmx+L/rOwt9XFvhs0NPBn7hT0FNbkN2OVab22Ds7OLReO/OQQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5990
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712057954; x=1743593954;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=viGhDwFo5TcmLgtrdNLbypmzM+UfjE73xFG+txx1xcw=;
 b=LWdRp7K054S1zAF/x6ZASX+7hjNcVsa8iI+LaFKJNfuBQkDx6iYwofdo
 H0lbLB30vi+dp+FRIBsfL0iUygOIAkN1Ua89SN21TmqPpMIUILJvXn6Za
 lI0rGJFmcTPTqVFaXJGbMH8Hx+dpj5uORIJ74Ca4bbOEJbcxWsA7Ti4Qv
 6d3gDPSV8PN3PP235apUDifsqoI+apGH9RtM+AyHLXUvJJSDNLXeyQgju
 0tBK5B5lPsyvV+eoPjyKC/F9JYaCN5dKu8U0DJiipVeViLpiVR/DrAjJN
 kgV/WpHqSseUEZRAy7wDWyxTXQ9WyLV0J4/0kCg+ZpXUrIS4zAUn1V7QV
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LWdRp7K0
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] ethtool: Max power
 support
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
Cc: pabeni@redhat.com, netdev@vger.kernel.org, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com, idosch@nvidia.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 30.03.2024 22:57, Andrew Lunn wrote:
> On Fri, Mar 29, 2024 at 10:23:18AM +0100, Wojciech Drewek wrote:
>> Some ethernet modules use nonstandard power levels [1]. Extend ethtool
>> module implementation to support new attributes that will allow user
>> to change maximum power. Rename structures and functions to be more
>> generic. Introduce an example of the new API in ice driver.
>>
>> Ethtool examples:
>> $ ethtool --show-module enp1s0f0np0
>> Module parameters for enp1s0f0np0:
>> power-min-allowed: 1000 mW
>> power-max-allowed: 3000 mW
>> power-max-set: 1500 mW
>>
>> $ ethtool --set-module enp1s0f0np0 power-max-set 4000
> 
> We have had a device tree property for a long time:
> 
>   maximum-power-milliwatt:
>     minimum: 1000
>     default: 1000
>     description:
>       Maximum module power consumption Specifies the maximum power consumption
>       allowable by a module in the slot, in milli-Watts. Presently, modules can
>       be up to 1W, 1.5W or 2W.
> 
> Could you flip the name around to be consistent with DT?

Yea, I'm open to any name suggestion although I don't like the unit in the parameter name :) 

> 
>> minimum-power-allowed: 1000 mW
>> maximum-power-allowed: 3000 mW
>> maximum-power-set: 1500 mW
> 
> Also, what does minimum-power-allowed actually tell us? Do you imagine
> it will ever be below 1W because of bad board design? Do you have a
> bad board design which does not allow 1W?

Yes. in case of QSFP we don't support 1W, 1.5W is the minimum.
This parameter tells the user what is the lowest limit he can set.

> 
> Also, this is about the board, the SFP cage, not the actual SFP
> module?  Maybe the word cage needs to be in these names?

It's about cage. Thanks for bringing it to my attention because now I
see it might be misleading. I'm extending {set|show}-module command
but the changes are about max power in the cage. With that in mind
I agree that adding 'cage' to the names makes sense.

> 
> Do we want to be able to enumerate what the module itself supports?
> If so, we need to include module in the name, to identify the numbers
> are about the module, not the cage.

I hope that my previous paragraph answers this as well.

> 
>     Andrew
