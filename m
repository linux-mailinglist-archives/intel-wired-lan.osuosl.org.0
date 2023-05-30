Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 94190716927
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 18:23:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0735E83D22;
	Tue, 30 May 2023 16:23:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0735E83D22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685463794;
	bh=B/KHTuZ5OsJH8Uhbp5khokIBLH2PKny8LKFv90h+kR0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PDFI4MpuPpRSFDZOQQOaDE/I/8WIKIP4q8ko64RglUzf9cFQURvUA2w4kjoZ+8wvF
	 8l8Ee4AurIuV9e/SuWjo+ZbsGAhFi7PqEHHNPPKOnAGsclqVzuwzj+jUkUeVeEFHqN
	 eDOcHsFt4165kQ0gkNIilkC8oU+ni2ckH9rqQslASzRkZHKJEMLH/O5Nh3WnbHzJUV
	 Z+lD7IPi8X3sJZ+HP+u0t2Vc3SKPjplf+IpvUtnE43I5d5kdAowDrv/0DrBCpUYgnk
	 bMscrPL492tmrs5MRmkeTrBuUJkkpJ+b4to0iwlkaafNL+aSngBZSrrnaVF+W1/sjz
	 E2engSPgSfC/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WKoR2_WWgFAf; Tue, 30 May 2023 16:23:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CECDB83CC8;
	Tue, 30 May 2023 16:23:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CECDB83CC8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 959881BF424
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 16:23:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7696141F43
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 16:23:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7696141F43
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id smEPUkBX6Sbw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 16:23:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FBEF41E6D
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4FBEF41E6D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 16:23:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="441328247"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="441328247"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 09:23:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="850847832"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="850847832"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 30 May 2023 09:23:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 09:23:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 09:23:05 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 09:23:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WLQyNiWHe/nKChulj6y083FiLa9a4F9v5sFVBYeQN5Db1PDtJ6eAViFMWS7GL4sagNmKTyPch4uTt26dP/jhUloyqk+MHNk74XytCGgG2mEZYgamxwZByg0KreDENSbqf4n0mllQF3ZtGRSzhSOUKp0lXXYS6WHEEBfkQRzZyNFjzbuyJEuEPJdSE3X29JcIeJfBm4yWr0DbzQy3QhP9XSdwlk3vsD8RfiwfkKjn31dJcU+FX9ofOxexFpnH/EUmrcL0WTFYsWBgolaFhAVJVidmqV/DJvxTWXWNqolvmmfSxV7CbhA3Y6Jj5y9Rzgc+xC0lIVBdQyNjt9YeeYO8aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GRYpdF99a85Y/r0mvzSrwtHcvDUw7fOvUqsuzSTw+fg=;
 b=gAathbOispfVXeBU4kEFkTE1Y4p2JKwizFyaFjVLnE06nkN45GfvWEBom0fWxKBZ/gLDZq0NkqO6WcE/zTGg5L22CkdJOaRQWa8ZerKeyshGGAfjVR0raHH7yeFWtS/mn8OvUNxIKQrqn1oRnU/zIwUZMbIbs/FmEYVmASA3bx8r/j/P4otOKhhWujWFsfRcuJJce1AmTV0AvVcCvj2Gg6piyF37cAs9z7QtZxIBQLze6Sh9x6Zo8bKanwFNrpy7UPU24mJ51EuTA1rcaFoHkEaKC3fK/YlOkYDS0bPGSfPIDBlKsaPDWGbXFFJzObPQbxz0sbc8IgYTX/VcIlFrIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by LV2PR11MB6045.namprd11.prod.outlook.com (2603:10b6:408:17b::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Tue, 30 May
 2023 16:23:02 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590%2]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 16:23:01 +0000
Message-ID: <b169b20e-f782-6723-9697-215258d6f3a3@intel.com>
Date: Tue, 30 May 2023 18:22:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Alexander H Duyck <alexander.duyck@gmail.com>
References: <20230525125746.553874-1-aleksander.lobakin@intel.com>
 <20230525125746.553874-3-aleksander.lobakin@intel.com>
 <09254e7cd6fd20f899f8a4ad3fbaabf223802503.camel@gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <09254e7cd6fd20f899f8a4ad3fbaabf223802503.camel@gmail.com>
X-ClientProxiedBy: FR2P281CA0035.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::22) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|LV2PR11MB6045:EE_
X-MS-Office365-Filtering-Correlation-Id: 93699ac5-c8f2-444a-0054-08db612a232e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CgCtTZ6FryiQ6uey0ojbQXaaWsgJ1whPH0A7SC1mvBgkIj+xxaxOaqAz97T03G/3pRxYq7bwjXBAkNxXhHi61qx7d6wZNxlh3w6nuVUqyQ+G7zLHVGQ1Ezr3BLDAXpKi0Psu29HSzc0K1/TZijSSWwINuffmC4CefkpmsXL+3HJl+vHvyVF2dG2GCFeUaSDDFIemasNOB01MniI74z2ks7gjBv1KcRgog4vP2v2E/vlgQ5sc8o8wTkIZ2T6yEBRI4N3Qtm3l4gZfbQdhkCxtTSZste3vK1Pq+y51sQHRyyCVjEAogxDIl/soD5qjrIj4+Tzs2nzW1TRoE9bijxw0vWzOiAgtX5VDrUkPW/2tkFfMXa1+KD+mCsBc5ay1Zq83Q7i6VVUDb4kVMA/e6kPwyDFVxab+UwP0pnzx/+6HScwAH72QZalUY6gJGJWLNTyLZds+BT6Jz4larYBsdKaNTXkJXYHE1hadwD3i+YdwUHEg8hitcLUDVO7drNbrREjgOa9fCd/MOR7dMcncF//GKW7W2RbAoLspgwsgsl6UxohLrypnnDEOtNLt/9UrlAxge5RJmEozYiKz/yIwuqJAI1bEUbn8hagXv1WPKJE427wqnYX2+vRrsbkHgfIPyERMpC32Pyy8ajib6emclg6x2g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(366004)(136003)(396003)(376002)(451199021)(31686004)(38100700002)(316002)(41300700001)(6512007)(82960400001)(31696002)(6916009)(4326008)(86362001)(2906002)(8676002)(8936002)(6486002)(2616005)(66946007)(54906003)(7416002)(36756003)(66476007)(66556008)(6506007)(26005)(83380400001)(478600001)(5660300002)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SnBvb0J1WVlTV1dYT1Jia0lnMms0UDBTamJzSVE4ZWFVMGtMN09DampPN3I4?=
 =?utf-8?B?aDlhOVlRNXE4aEExQVJnZCthd2ttM2Q1dE5qcGMzeHJaOEFVaFZGeFhXZlpp?=
 =?utf-8?B?cnRMOGRyd21jaWdYNW1jRVZ4V3U0a1FnckJyYWhONjZyQnBkSTVkSjJEYUxO?=
 =?utf-8?B?d3RQUGxFS2JZSmJyWEtlaXAyUEhiMjB1c3dWUmJ6bWtnbFh5NDR5Z2Nub292?=
 =?utf-8?B?OENTeHJFMWZmb2FWYWQvcjArNkxxYU9jODFtQy9zaWZNbTBQSTBCemRzMkRO?=
 =?utf-8?B?S2lJSTA4T2JiQ3hoaEVMcG50Q2FDQTZkc2NBZnJpQWpMM0lzQVFxbkpMUGtB?=
 =?utf-8?B?bmtkR3Q0QUgyM2NjUTdDU1BhUUF1b3diWDdvOFFyY2xLdVVqUG9rUk9WaDJa?=
 =?utf-8?B?RVZnQ0Nwc0l6VHdZaTdLQm84QnFYZnVYVCs3L3dKMHFLVGJHbXJtbEpybmVm?=
 =?utf-8?B?dmw2RVNLRlEzN3hZdFBPRklKdXNFbDFGU1plWEJIcXd6a1pYMHk1ZTJRZHE2?=
 =?utf-8?B?dDNiVmZXZDhrWHgzSUhrOEt6ZnNUVDIrQkp1NmVxRmVIcTFjb2RFVEp2Y1U0?=
 =?utf-8?B?N1djdVZIc3ZkQzVabUcyT05OcWt6ZndVam81YlFGbkhFWkNsaWE4TWFOZ2NI?=
 =?utf-8?B?N3VMLzZlR3NwYjlybEtMTlpRN0dvME9TeWdaZnpyL0dvL292ZDFQeUdEc1R4?=
 =?utf-8?B?d3BKdFQ0bEhzalR3VklENmFYdDVLcVRkMXZsNnNUa0tiZ1BFN1VFQkZOazl5?=
 =?utf-8?B?aXRmTmtqaE5XWU5DZFlaVVRoRWw4bVJkV0U2WkZJbE9uVEJOS1lnYjY4eUgw?=
 =?utf-8?B?T2NrcWFjSjBOTlNtRlNWOUdOQVNjTGIzV1AwUGNHY0J2OE4yYm1RRlhONWcv?=
 =?utf-8?B?eXFLc09qdlJEamFWeXIwZUlZYzRsK2xMRFA0SnpLZEZ4Zk43V2V5S2l4OThx?=
 =?utf-8?B?Y2ZSeHVCYmRoR3cyWmlxM3hCdVQwTTlNeTFCZGFHVi91eUNHL1FuNVdhL3dz?=
 =?utf-8?B?S0haVjEvUGVySUZMMEhuNFlGckxXTHpFajdFWlFRZm9FU2RGYVE2SHhQMVpR?=
 =?utf-8?B?eVd6QUZyVWR4T1dJOTh3UU9HclNEV2xjMXhvQWN0d1J3TlFSQzgxMFVtOTZH?=
 =?utf-8?B?VTBXUUErdDNrdHlXanEvOXpMcHVDMVA0b3NQc0hpeElJOEUraERBSnJwZm5h?=
 =?utf-8?B?WU1MMGR4OWQ5WEt2aUhtWTVyWXQ3R2FlR0lkakpqRWM5Wjh0K2ZQWU5DRnU5?=
 =?utf-8?B?L3RPZld2QlIrMkhCdjJoNTFzMGRwU1lDOWs0UWdqbGdoMjRES0ttdkUrUits?=
 =?utf-8?B?U3hvRExxeGYvSS9td0MyWUszbmZWVUIwb0JTMVhhb1Y1T2loRkF5TCtPTFBl?=
 =?utf-8?B?UnFLQU43UVczK0R1VnB4d0VGRVk5WVBiRTA2NkV5NVcrV0RPakJMMDJ4SGlw?=
 =?utf-8?B?QzlDZysrZFgrcEtOUnJodXRIeWU3eXhlakMybG9SSjhVLzB5cUxRL2trbm1n?=
 =?utf-8?B?cTBzWXVHWDV4a2Fhem0zbnNNeXBJRmFNaVBadVJFUVRqRy9hUXQ1clN0Y1BZ?=
 =?utf-8?B?L0EzcDBRNXc4M3dKOFRGU2g4SFAzL1BiQWpDWlgwN1U1Q3pzelBjUkZxNXEr?=
 =?utf-8?B?cWhncmNIMWg4aEhPellzMStoWTRQenUrNzNnRUV0TWROeVpYNURmZENqNWVl?=
 =?utf-8?B?bkdxZEwzaVorZkNvTVl2VGRXZXRkOUxsdWN1bElUMFIycWRwdjBoNWl0R0dB?=
 =?utf-8?B?cVdhVC9iRHp1b1FxVHhya29mcGlSRTJ1QUZVY2o2V2MwODFZdkRHV3dLSW9K?=
 =?utf-8?B?YzJkN1Y4QUEzNFFuWGJBSDVvdFN5Z2ZXeFhuUC9UV3dSRldYRVVxQlNuQVZT?=
 =?utf-8?B?OW1UTlJ0Wi9kS3lTbmhHKzR4NXhBR2FaK2duRXZWa3NGajhSalk3M2c5RVZW?=
 =?utf-8?B?NVhTbnNNY2pYdzFVd2JxZzFPTUJkUnY2SDFRNkF6QXBvQnZIQ0I5eHd5U3Vw?=
 =?utf-8?B?VURQK1p3MFhoS3Y4TDYxNEFycHVrUFhJMDFjcFlkdytNQ2xISHcxK3lHS0po?=
 =?utf-8?B?b1FtdWgxdTgrS0VrcWZPTWcwbWZCYTFPUHRCSkRmWHdGdHVnTTFMYUVaNmlF?=
 =?utf-8?B?dUJqWmZRa2dUUTg1SDQva0xCQ2VZbnZWYzJxTkpEZG5EbGJnTytXRnFYWjNM?=
 =?utf-8?B?cGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 93699ac5-c8f2-444a-0054-08db612a232e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2023 16:23:01.2870 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BrnidGOiGv4uxm8kfyQJx9dFSCRAp7esg/3mN9Pg3jKlH5q92a+sK1sFx3MYk3Ol9/HZLthiLJb1y8tJogkG43HEvAxbq/+V/5Q38Rvi6tA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6045
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685463787; x=1716999787;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DAfJCUwj+5kQ4sJYpwHu4Oo2VQ186Nv4l0PzejRSLBs=;
 b=eS24BIKtR5f2E9njgq6XQQfsQjr1akOU/QoPMRtWsHRrvr4evOXgP/Ur
 KPjJwE4wXEEL97f0L85FznOMKqCXzaZ9J0PH5pHlbXRDKr0sNr7eBiCM6
 6pUvDcOWJNhPJb6xhtgLnSpCcaDkcJFL9cqSvCh4uI+uL3QiIWt2eeS4m
 KrQBe1V7PqfDZwNRSUTeogKTjDv2IS8a9hVFB62IFSeIMj2YBMgqh30rk
 w/OTiEX1jwdgA3C7519q2q2Ru9dvbu9do25jR0+ZuSnYVoQSg5Dga2yOe
 PQfd8LX0+7YSThPOjqUmugiX6MDliP13uNDwgdHbN9A4hQdi/oRY0GZyF
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eS24BIKt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 02/12] iavf: kill
 "legacy-rx" for good
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, Jesper
 Dangaard Brouer <hawk@kernel.org>, Larysa Zaremba <larysa.zaremba@intel.com>,
 netdev@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander H Duyck <alexander.duyck@gmail.com>
Date: Tue, 30 May 2023 08:29:10 -0700

> On Thu, 2023-05-25 at 14:57 +0200, Alexander Lobakin wrote:
>> Ever since build_skb() became stable, the old way with allocating an skb
>> for storing the headers separately, which will be then copied manually,
>> was slower, less flexible and thus obsolete.

[...]

> The "legacy-rx" was never about performance. It was mostly about
> providing a fall back in the event of an unexpected behavior. Keep in
> mind that in order to enable this we are leaving the page mapped and
> syncing it multiple times. In order to enable support for this we had
> to add several new items that I had deemed to be a bit risky such as
> support for DMA pages that were synced by the driver instead of on
> map/unmap and the use of the build_skb logic.

And now pretty much every driver doesn't do map/unmap each time and
keeps its mapping for a very long time. And now Chris noticed that and
says it's not supposed to be used like that :D

> 
> My main concern was that if we ever ran into  header corruption we
> could switch this on and then the pages would only be writable by the
> device.

[...]

> Since it has been about 6 years without any issues I would say we are
> safe to remove it.
> 
> Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>

Thanks!
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
