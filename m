Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5244583CA1E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 18:33:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E29B581A23;
	Thu, 25 Jan 2024 17:33:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E29B581A23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706204034;
	bh=dq8RQzj9kGqNgAFmWSKhetsKzbxAUkkZvS9Yhud1B6s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0YS4Sl7dDbpzi8KHneQZuu9bol9Iy/awD1w1Hbdcvlx8afzbc1HoRBbQXNN42hDRo
	 L1WUDeGSrm943+ZQboJ1EG4ENwYVC6pJGBwXVh56mqZR9rzPWrGvwQwWqWtpwtly78
	 S9vM0AMxcWVbb7T2AGmjHO+dX/SyjprE3WCqFR3I9zAJokdNUtXGtHNI9eP0kZZLIY
	 t+YQ6IHvcClloeeLiC+RIQbVRlW/M4yLlXH0ECiZPlG4DAtioczftSRV3erHfmR1Ix
	 gy7MXL+UXGNJCazINSDeGCQbrmuzh2sSPIKWs5dcaTd9hhEv/c6OPWtzxpbT14O/1W
	 S4JrhwJhBPTNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2X_vpwc3FyG7; Thu, 25 Jan 2024 17:33:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D702B82162;
	Thu, 25 Jan 2024 17:33:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D702B82162
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9DC7E1BF303
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 17:33:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 703FD40332
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 17:33:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 703FD40332
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1m5UvbcGILGC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 17:33:46 +0000 (UTC)
X-Greylist: delayed 430 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 25 Jan 2024 17:33:46 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B640940610
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B640940610
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 17:33:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="1155234"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="1155234"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 09:26:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="786827177"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="786827177"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jan 2024 09:26:32 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Jan 2024 09:26:32 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Jan 2024 09:26:32 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Jan 2024 09:26:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AwGizQ10zfX4r72xsKJW8PntYdZzkjr9/n5bmWkBrIIdS8iX+DygrH4gPPLQVWU/pCxDyvd+aiEIvpwvpyiN9JBuRqrj2crc1iAfBNLdH+e5Q6jwO0BzEkKOa7Z3FUQODHxvlal5ofscZpoplIAmYaQb6uxzkmuP6+1QdCIkryusOi6xe4eyLeZRjx3CdUA6SOK6mmajW5DFz3UVemsD5MzuKy4OojsnK+31LxIbxDA+3Z3VzpSeoj2alqmU93dM6ZaRzekgiE6teloe92mUauKeWn8ghM6LSXmKW0aMCIfGa1qILdll+Ebih5swcmwF8qQZKit7H8REwqlXljq/ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dq8RQzj9kGqNgAFmWSKhetsKzbxAUkkZvS9Yhud1B6s=;
 b=NWCqDHdvPnES4a2PH9GwmryW27eA6VmTE9ZNC2JbShNPU2BLeWqy/WSecMHDKkDKeqzrBVeTljXLA2L07l7c3XKwJRo9sDDVavCs+b0ba0biQ9a5y+ETjGMmP11jLoMOKazXccazJmqNCxwLPLm+bIreCyvS6BjEjXvu+/7HszXZSBGl7IahyE3WFiMhWxd9UyW/NPL7vGPpBNVjgqHXYmy7ZgbxPAX7WuV+vKNVT9ESeee3bVSEkNbY6dX6h3APSj3BDehBNIA+Lvwbj6VDWSaE9x4HebUnUaOWTLFVBF8L0PEVDwkaKyElGNH5tk818QBBCsg6R+02r6QtN7eZ2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB5951.namprd11.prod.outlook.com (2603:10b6:510:145::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Thu, 25 Jan
 2024 17:26:29 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::c164:13f3:4e42:5c83]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::c164:13f3:4e42:5c83%7]) with mapi id 15.20.7228.022; Thu, 25 Jan 2024
 17:26:29 +0000
Message-ID: <956020c1-c06d-13dd-d6fc-27835c9dba4b@intel.com>
Date: Thu, 25 Jan 2024 09:26:26 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Simon Horman <horms@kernel.org>
References: <20240122182419.889727-1-anthony.l.nguyen@intel.com>
 <20240124212654.GA348897@kernel.org>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240124212654.GA348897@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR05CA0027.namprd05.prod.outlook.com
 (2603:10b6:303:2b::32) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH0PR11MB5951:EE_
X-MS-Office365-Filtering-Correlation-Id: 411cfe49-9df7-49f8-51f8-08dc1dcac437
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vyZdaadMdHpKKKCuLptMwPkvEj3Y3CTuvF08RgL/v+ovVnkyP0NgdbSOApJigXViLfCgXtarqGHKSoPqJR/vQPOiX00T109m2Rxy7+fsXi9XMh+4KPnFd7JAnRV1n44dJbRJfGiFbgM/CVIpdEMQmzSWc9KY7uPuZwZTaUlsjvrZpNDM44vUSQkUsMZX9b2bNOXAICSpN5oWe+qPNox/t9UYPyrAZdUWO8SJBVVe3BZqbnKGNNm6hNAZUMFs8XGtlaFwOZ0bqvJ905o2uzH+qtfFcJA/GfkBflWPuTBdgVYlKe5GPQbQ10eWA+PYures1f/ygHjREneWDbCpEhlypbAJcMd3XYK/A2DoA8mYAjfLtKp/9VSAF4iktzvWyP7RU8C936oOATZ8xYmPmS7vn6mljqhwmdTGxc3la/7G8jgJTsZ5JMrG29v2mzvMPazuf8l+5+CyBJGdN7LCUhuLbIdazIWithO2MRrTTrK2zshpXC+Vuzm4jQDG0d8w49SQNELjyh4AFruqULxaEWPNw8i1p3QCUDvvFAPSW/h1CH0uFbYfkTDmAWkO47gvVXrWv+o35DPQs/+mePggJJf6va+uX99l9NkNmhmZ9xuPU7v1c6STewawwzfSri1GQjQhqoUZqbM2Um8gRysRzbvofw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(346002)(366004)(376002)(39860400002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(31686004)(5660300002)(6916009)(2906002)(4744005)(66946007)(66476007)(54906003)(66556008)(316002)(8936002)(8676002)(4326008)(31696002)(6512007)(82960400001)(6486002)(478600001)(86362001)(36756003)(38100700002)(2616005)(26005)(53546011)(6666004)(41300700001)(107886003)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tm8wWitBSXl2QU5XbXdmdkovYU1TK1JYcndDMU1CR1VNeStsWUs3TVJsSDND?=
 =?utf-8?B?UE1sWTJtMUU1cUhrWEJUcktBMGJNNVVvYUN0bU9lenA2dGdvUnBQb1pnSWJr?=
 =?utf-8?B?VGJxNDd6SXNYaFk4MktndS8zcUtBazVmcU1qQkdyTm8wVlhjMVo5WXh1aFNF?=
 =?utf-8?B?SEVSM2hzT0lpclk5TEIyZGdRSW9tNXdiQ1F2NTVvNXAxcWxrUXYxNnlsUmF6?=
 =?utf-8?B?QUhIVVI3TzZpdXhxVnRKdVd2aC9LdEp1QnVoeWNUMnZBRDNPYjFLS2k4RXc0?=
 =?utf-8?B?dVZHZnlyMWQ0L0pTT0lxZ3l5N2xMVzBENGJhR1d3Wi9NUUlYaXA2YlJFZVlD?=
 =?utf-8?B?MnhhNXdMSURubk96Y3AyWmFGcDJZek9uQmlxOHZWbmI4MGZOMmtweWhzQW9G?=
 =?utf-8?B?UnNsWTlITGJEQzZ2bUtSSlcxL2g4SytJUDVObC9WdTZiYWpPWFU1UmUvYThI?=
 =?utf-8?B?Z1F5ZXhBb25pOW1zWjVVTzZybDlKZ3ZTL1d6UklRdEVpdHR5b1F6aHJJNUN5?=
 =?utf-8?B?ZmhXSHBSaFF0ZDhtSzM0OXdjR0FiNWpWZ0k4cDBPbzNkZVVnenZhVEQ5bnZP?=
 =?utf-8?B?c2Q1ZTRPZnpEMFhrTUtUS2RPQXVueW1TZ1MrTThwWDBVQ2I2bjk4ek8vQU5M?=
 =?utf-8?B?V3A3aEkxampZeTZLMlg5aFFjV1FTUXJNclI2cm1KY3pONHpVdmZ1eFRFdHlC?=
 =?utf-8?B?bUZlbTNjeUg5UDZyYUU2dkFBT1I1clRham9ZT0IzS1U3VVltOGxTU2gyOUZY?=
 =?utf-8?B?VVVROG9rTHpYNXkvY2orRmtWT09OSDdiejhaSklXYllPb0xOdEdFeVZmSXls?=
 =?utf-8?B?NEpreWZwbElZZXN0VEVhbUdBTmRIK0Y3dUV2MEI2TWVQUk92NjhhRkQrNjNu?=
 =?utf-8?B?TXo0Tzc4NWRUTjBtWWo5TmhpY1ptRWNVNGhiQTBzdDJ0S2o5djlmbWtGZVIz?=
 =?utf-8?B?ZW9mSEdpbVAwNlZwNmNaYTNZOEZSQmU4RjZyUVRTbFVVbDNHeS81cTlsUTBE?=
 =?utf-8?B?clprR1dQbmtFT3F3TllkZlZMTnZrMUM0VTIzMmlZY0lnWWsrRW92QW52NC92?=
 =?utf-8?B?WjFtYnZwZndMS3Y5c3R4SVIyUUJoZDZLQ1NhcTVJemhqaU9sSHk5MmhwVHlE?=
 =?utf-8?B?N2FGdFk4aXpWZ1c0TmlLL1hESmpaaWVqTEpramV6RUZDQXBjU3dhOHNWemhk?=
 =?utf-8?B?Rno5SkxqdlRBTEczU3U5amQ2WGZmSjZIcmpXNUtpZUlpd0RkYXRMMkR1cjVP?=
 =?utf-8?B?cXl0MDYraFQvZ2Nrd1E1YWhZQUhJWlorN0ZtMWl4V3FtQU85Wit6NGY1WCtG?=
 =?utf-8?B?c3hhYlRpZFFUVDhOWHlkOFRVQ3RZOE5EaFA0RFNYSUlnYWRvTjRTRUxJaTU4?=
 =?utf-8?B?cGJpOHlLeUZ2eGJaMWNndjJzeFF6MUZKRXYwa3VUT243L0FPTEtXUUgvVjI5?=
 =?utf-8?B?aHZXTk8rUDFHR2dEUEJJSC9EK3RlOGNVOXRUd2hWcTRnN29RQnFoam00eDBs?=
 =?utf-8?B?UzdCRW5tdURBVmpzdFV6YmtQZnp0ZGVwWGUyOXdFMmN5aGw3WWhra1JHZ2Yx?=
 =?utf-8?B?QzU1ZXB6bldyeG95WklIaXVrOExjUGg5VUlHUTdTSlVSV3BEZFNSMmx5L2sy?=
 =?utf-8?B?THFHR2ZwTWVNdHlDUDhDWFZiSnRCdGdVR056ZC84Sis4ZVNjbU1WemRtemVX?=
 =?utf-8?B?TTF6OTNmWE5ReGgwZ2JTWitudERFYlVFOTgwRFEzek5mTzBZTmRQZ3V1c0R1?=
 =?utf-8?B?OFhaNklQaE5ZdG0vZWhzMFpJU1I1cGl3YWxMZjFhMUxwS1dkSzMyNzE5ZXNo?=
 =?utf-8?B?Qkg4NzJERzNmUTAwSTlzcGlHY3A5UVh3SUFMWk4wRTJiSlBwcVBWbzE4NWJw?=
 =?utf-8?B?MGNFRXNVdlB1Mk56QlA1L1RpY1hnRmpVKzkwSFlEa01HMDhzTUNYd2t1VHdE?=
 =?utf-8?B?QURGK3pINm5WYjZHdFRWd3FxZ3k1WlM0THVPYmZJQVQzNVNRZjJ5VWRFdjdU?=
 =?utf-8?B?Q3pRRmpBK2w5NFA0eDdUK1NxRGR2THlJK1dNZjZidkVkcjVQbDRxanNhc3hp?=
 =?utf-8?B?aG4vMnQ1UnJwWVFzSDZQOGF2NU9SbUNrNUlkeDFxdWh2NzlTMURpeGNhamQ2?=
 =?utf-8?B?R2VCU2VHUkdiTmdFTnp4VDdXU1VYQlovNHNidzVGQ1hRNXVyd3BZTk0xMnl2?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 411cfe49-9df7-49f8-51f8-08dc1dcac437
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2024 17:26:29.4445 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pSjOwu++b0ccUXrvY/kw8JfKaxPj5VXOAlbUlX1pKPwWK7EGDtoL6/LixYJn5zr/sHwnVlbysch3NTewpMe7DfCvXqjT/odLUPzRGId7G+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5951
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706204027; x=1737740027;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VqicemPZRJtLI3pOsi8mmCUBiiegRcMZubTz82nvl2Q=;
 b=crJmA6jnXhaed2hP6zgDOt7FMvo6ZWchkPU/EoepHYVENTwNEwNi/ikQ
 691vzsKiW4nkZogxrSuRq0N3W4HPddTShzyCJ0/vxrZWFkQ87zXN7rshF
 QNe6tSeSLVD8A2AOV5tBEWO0AkbCHiHCg6b02Ehliprzx63BqHfKCDYmP
 wzTlhNfwPZzOYDtMsw7tiXyx7ZxV3XMDsi820Ej0EtC8ZFQOcIsk2xt3n
 81CjDH9gMKIKfAf5EqmtyhO24mDcVNkVmOWImZBvpQX+Jz5fcttJNCaG8
 EfNOPWpmilvvWa5rontM6XAWso4FiSm4ndMPHt2JOQ5Jg5A1doSwPDxRp
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=crJmA6jn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: remove duplicate comment
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/24/2024 1:26 PM, Simon Horman wrote:
> On Mon, Jan 22, 2024 at 10:24:17AM -0800, Tony Nguyen wrote:
>> From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
>>
>> Remove a comment that was not correct; this structure has nothing
>> to do with FW alignment.
>>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
> Sure, but the subject doesn't seem to match the patch description.
> And, Tony, your Sob seems to be missing.

I was just kind of passing the patch along to IWL. I'll modify the 
subject to match the description and add my sob when sending on to net-next.

Thanks,
Tony
