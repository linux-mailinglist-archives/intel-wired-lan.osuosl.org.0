Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4F273F836
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jun 2023 11:06:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 91C0C416F6;
	Tue, 27 Jun 2023 09:06:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91C0C416F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687856812;
	bh=/tJ920jnTcArp3C9sprd96G2IiBtpV8qRPXBMl+Zbd8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SqIlZhW0PcVLzzCkFl+Z+794Nw+PApXon7/Oc804d2cus5MAJ6FruVjf3p6Wz2Gpp
	 V8VY11F/tyP4KQ4vzO9c1ORpnhY4Su2JbuWfsRnM1VhDcZDdbEZndVfxT7j7AtFxNy
	 JpLFidcbfqiHg8W+G+YeFLjnLxUh0LOcfv79nPQTVONDxe9orjXe7dFxJnag01tLky
	 inmHLf8BS6dprm9+mg9xHGzY2qktIwrC2GSylo+dwoeZFRpzTrhPE9K08/usiFImUc
	 ulJFdodzxLGs7Cn/ajSWAuLanhqCXOXrVjnbkepsok13w1G4l0gH6lY1gZzcuuPkVB
	 tBeHE/AbJDOPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x3irwLmxxIo5; Tue, 27 Jun 2023 09:06:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B809416C9;
	Tue, 27 Jun 2023 09:06:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B809416C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F89E1BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 09:06:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 03ECF82095
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 09:06:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03ECF82095
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D3Ki45D0eFtv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jun 2023 09:06:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2F2D81457
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2F2D81457
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 09:06:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="425187609"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="425187609"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 02:06:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="666627208"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="666627208"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 27 Jun 2023 02:06:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 27 Jun 2023 02:06:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 27 Jun 2023 02:06:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 27 Jun 2023 02:06:42 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 27 Jun 2023 02:06:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GR623Za81Ukol/d9gU/5Ar8n8s1yN1z/I+bJE63CLdZOzzaLFE4xuz/TUffxdnnO6FXEmeYW87+Jg+DCWMJyeR2yvQG1kb5h2/DL/ADR0ZdenTYhL+3tXtvEtoITB6myyIh0rpkAkvJjCKzFtaECTpiaiobxWYuGbB1wf2dcgBuBQr9hLe75i/mliopEfUtb1DHbJduoKQidV2bXFbTP6b3TskyJX8sl8KJp/UeOk1H2Bsd84ZT7nMOO/uewPWFW/+xtYMgqpDKgNYrr9Z0BwAbwGU1FDXBv/OohM46IjnlvLqTdHfSm3hsJwlAaKW16frdor1V/30VWpXuWlos08A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Syaymp+XDugt/udJ6fPumVkAiGeOKAKB+LTVRMMyyk=;
 b=PDPNTO4BtwJ6oNTS1ePTG0mhoQBdKLyRpskuHFpQVvatTh91sYZCqrv7nxwykIR3OgikMZyG3TdJN7mgoeJOgRAlscCgITaXDcJJYQqQmQMp03utTt4HmOt7uy87GL5uTgV/Yoe6aFW19tH5GZTJolETwEftzQK7OXP4ASvgcQdf5ixSw5n/KEQlTU3Zc3QrPkjTxY/YU7vJwGH9GhRzNOT1DLeymR79nYChQwYw2Fc+qpYgzYXf4tgacN3bFWspPd0Av/X7aWgfqAN0Z2j9gE0e3xvmKVBaE+LlIV7JwbgVHSFUWNRWg+pXsnGU5WQCiVJkuF36ekswbq5Tbigrnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3047.namprd11.prod.outlook.com (2603:10b6:a03:8b::32)
 by IA1PR11MB6394.namprd11.prod.outlook.com (2603:10b6:208:3ad::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Tue, 27 Jun
 2023 09:06:35 +0000
Received: from BYAPR11MB3047.namprd11.prod.outlook.com
 ([fe80::66e8:b847:cd10:10ec]) by BYAPR11MB3047.namprd11.prod.outlook.com
 ([fe80::66e8:b847:cd10:10ec%7]) with mapi id 15.20.6521.024; Tue, 27 Jun 2023
 09:06:35 +0000
Message-ID: <d9346449-17d4-01ac-13ea-fbb53d2d683e@intel.com>
Date: Tue, 27 Jun 2023 17:06:25 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.12.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20230620100001.5331-1-lingyu.liu@intel.com>
 <6faec056-c703-90f8-6ec7-ba587fad853a@molgen.mpg.de>
From: "Liu, Lingyu" <lingyu.liu@intel.com>
In-Reply-To: <6faec056-c703-90f8-6ec7-ba587fad853a@molgen.mpg.de>
X-ClientProxiedBy: SG2PR04CA0199.apcprd04.prod.outlook.com
 (2603:1096:4:187::13) To BYAPR11MB3047.namprd11.prod.outlook.com
 (2603:10b6:a03:8b::32)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3047:EE_|IA1PR11MB6394:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b7d8dd4-e138-48b1-e98a-08db76edce68
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TxVzL7u6BUB3pO+UyKRDMdw80URrV0CVFYDs+mysNbqRgAAZdD6s04NH2qqjTAleAMXNYYDQadA4Mi5G/BdQqmlL6tQkgLYTWDdM1Z+iDN5B2PVNOL8lA38/wotYV846yvc12IVVJmoRjwl48Yn7TRc7Oh2lcuL23XeOMWD7jWGaVc9mC5OZo38Ec5J4dpSGD6fCUxuBEbkqpuzn11TV5Ax+3XoEnll8Uh6kS4xpZEh4vlvJH9/XZUE0tJOikqO3rdOlXFwu5fllXh8EJQXQ9o+BXommKTM9z7UaWtu54Hapxn6XdQVbPlhE79jsySB6ZcQHdHU0UffNxmz5dJpaK0yzjhrogeM62g96fxoJlu+snoEjqVlhXFt9ZBWR55ZqAfwuo78dzhA6rLkOoqEu2B24ChQaaWXb2G2/3B1vLvynw7GUl3AlkrX0rChBfVxQqQEaf+vMh+/l7ILw1V3kpWWGjKcqe3drN5ziEW7Shv2sn23UlAiFHnINYzX4YtOi39hN2b66G4v1VWIxlxCy3zzkgOiKimnn7bJ6hnLe6gJClXFTkUX4DPQuuDhcrMU7QUPl5w2JSd0FslW7l6WVPIyKbOedBciuhdras3PUP84HQOi8Iy9x2BpijKKSMyvdPRhrr/sEDAwZX1e4HbLdJA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3047.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(346002)(366004)(39860400002)(396003)(451199021)(478600001)(6486002)(107886003)(26005)(2616005)(83380400001)(6666004)(6512007)(2906002)(186003)(6506007)(53546011)(4744005)(41300700001)(86362001)(36756003)(38100700002)(5660300002)(66946007)(31696002)(66556008)(316002)(82960400001)(4326008)(8936002)(66476007)(6916009)(8676002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UHNkVThkdWkzQmpkcWJYeEg4TTNwZk1HellMSFBPZE91dHFTbnlYN1I1dWVY?=
 =?utf-8?B?UVppM1MzWHEzMVhZNk12cmRyYitOTndzeUZoL2RVSXd3UVRvdlFYeGFqYVBF?=
 =?utf-8?B?MzNIOVczdXk0Q0dPK2ZMdjZKTTFndk41N1JiRUkvN0c1VTNaRDU0TmFZUndW?=
 =?utf-8?B?OHJraXdYV1VLcnJxdVE0UGdOUkVQYzZqSkNIWVNydncraHV3b2pwLyszVGJM?=
 =?utf-8?B?SWVFQmVWZmUyMVUvbXhiV0h6ME5mTStvV3FER2FrWUxEdXRZQVVCb0NxZlNI?=
 =?utf-8?B?Ujc3MU1iZ3RtTzBhd3ZleWVRdjdWNWJ2VFJDSGkraWUrUHBDTS92bnp6VXU1?=
 =?utf-8?B?bVhMU1RGMjZidlRKUTcvMENGNzJCaC9vS0ZJVUdqQ25aTXVNanErZXN6RmlE?=
 =?utf-8?B?c2s4a3dmMW1oS1dHeW5pVU9Db3lsMnloUjlla2VoVlZLdGdscW9ZNVE1SE0v?=
 =?utf-8?B?SUI4eHZxSGlBb3MyeHJWVVQ5L1NWQW5WMTJaR1h1VTVuRjJtQnlnak1mZHFQ?=
 =?utf-8?B?VlI1MUUwUHJZa3RYaTVKTmZrbkE4U2E0WTVOYnI3SWVUTEliWXljMWY0eTJO?=
 =?utf-8?B?SWhmSytCdHZaZE9MVUhyalVTTGN2Z2J3MEpxeHpsY2plZTFIOGtGd1hScjc5?=
 =?utf-8?B?Y3hDK2Z4V1hnSlQ1bkwweFlaTzhhUS9UdTVvQ29sd0drM2lPVUdpNmthbDRF?=
 =?utf-8?B?T3pvVmNheUllbCtpNHdlQkJnQUxWa29VQzZLWm82cDBtZ1cxVFZ5ekFHRkJ1?=
 =?utf-8?B?U21ZRisxamJBeG5QcGFBSXBHcGRxYThVQzZDOG5hZDF1a3JrcUtxc2NYdG9N?=
 =?utf-8?B?cTBGd2RlenlWWEptS0NQMnJ1clhqRFA1dmhRVHEvb25xT0x4VUF0MXFIcHFQ?=
 =?utf-8?B?RnM2YXFQaWk2aEtOelBIdzVINmwyMlNQWWRBZm4yZlFKc1dKa0wyM2xYTk5N?=
 =?utf-8?B?WFhjMTBMV1VhdEQ4RUUvZ21oV0xSSTVYVy8vcXRjNGM2WTlrWDNXenA3RFVu?=
 =?utf-8?B?WTJvNzZnUjFoa3k4c2FDamtaMVF0aEZZeGU0bmZQVlJya2Q0cTRRWVhWU2JU?=
 =?utf-8?B?cnFoQWVlSTNsTTkvN0h1UTAzaVhuL1ZlWHJYK0t4N1JEM0hzK0kwb2xmUDlp?=
 =?utf-8?B?aUR1YWNRL1VlKzRMTEdsNDYvZVJyclVNZGc0TzNpUkp3WHRjeklTUW5Eb0Uz?=
 =?utf-8?B?R3lTWTZYS3h2aGY4bXg2OEhabkRyUUUzdkZPcEZKL0o5NFk1Wnc3V1lGTURW?=
 =?utf-8?B?cXB4TWZ6Q0JmN3MyWHNFU1JhTmhhREpqci81RWI0VDk1V094QnE5SGJaUGIz?=
 =?utf-8?B?ZFErbzJiUjNCWTBqT3BHVXZvMjZFSGk3TWx1YmFHUzh5VXY4NUZ3Y3V2OUhD?=
 =?utf-8?B?RWM5NGpoSVl6WDZDMzZQTGdQVVd5ZXVhZ20xSjl2a3RkQllDYjZxV1Rwa1pj?=
 =?utf-8?B?aU5QYm4vLzZqcXoyY1A5U0NLK0ZwR1pwTkJ3R0dHUGg0YnJGMUVwSFpKQlcy?=
 =?utf-8?B?Uis1ekd0YlFBeDlZeUZRWG0vbEhBQ1B2NGJOVTdIRXg0cXlDNzRHVUdiSENI?=
 =?utf-8?B?T2p3bFI0NThRdnZHSC9PazFGZVpYdWNzNmQ1Zlg3aTZOUGNTemFiM1BQSFcy?=
 =?utf-8?B?eUFOSDVQZ3ZhTjk5SlJrRUx4YlNYdThmcjlRMjFHQlNLR1I3ZkRocnVUR1pV?=
 =?utf-8?B?Ylh3Vk5yRzNMN2VpS1J3ajVaa2Z4MTk1eFZMemtDQXJ6K0Zrd0kvTGxJQjQr?=
 =?utf-8?B?ZDNIZ3Z0OW9HQ2l1cER1MHBzc2NkOHpQb3JrM3g5TkNMZVZkY2pnUHg1Qk1V?=
 =?utf-8?B?RkdweUwxVDU5a3ZoTllzeHN1Vk9JZ2g0YnNkNDMrcnh3K3VucmFQbWZVYmVL?=
 =?utf-8?B?aU0wREpTRjVVYlhmN1JKVSszTXQ1OTZJSUNrNjJyMmY0OWpBWmRhWTBoWFBO?=
 =?utf-8?B?RHVKUkZkckpWYjRCWXNEeE5NK2toU0tzWWFyNjhpeUU4bXlZSWEwdWpMZmRi?=
 =?utf-8?B?a1NHQnlCV3VBOHhIVWZQNmQvRFRPanNxcmswYlpGTCtvU1F3Tk1RNXNROFNm?=
 =?utf-8?B?M21heWRzWHVYSUJQeE5TL2IxMk9xTkZPeWJxSzlFLzRwc1J4UEdLdjZnbTRa?=
 =?utf-8?Q?e3iRDu0Frha8Yeq1sp6QV3oGE?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b7d8dd4-e138-48b1-e98a-08db76edce68
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3047.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2023 09:06:34.9169 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m3V8v5grx31b2Pw/Rq/pp+GEHcvENaXXtg0T3/P5Nn8098GgEuuw5MJ985D3yR9tk1cDrqE18JXBfF55RkyreQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6394
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687856803; x=1719392803;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fMrPgcaz802tOWvnIbITVUimQUZ8/MQQJiYPXD5rySo=;
 b=G/6rTZubO0ROQfkKwWc8yA4f0SwkHgALxi24dYyYmHsdtuXxRmxwlTQ0
 AnZ65dvY98vUXVyaJCV5OuEPJG5vuqx1Jg3ltmvwLYFJ1b/z4sIAhsG5W
 TdZhSIzSZJxAWXwxCQJVzrouHZCJZjI/18bX/BdaPXD5Ssxkomzu1bxo6
 8yopIdbsC0TwqdJ4yUT4DOSeZoHAPazjVH057V5XxwNA1iqCvs6TVAGDv
 h9u14NN2D0KNUhg87K8402tS5HIujghJPpdtWMQXtg5LeHQAF46QBjjxx
 UfhdBRG+6hhz49ZDlobxZ2o+q9qOguMWCdToqUmtG4HOMssoLr+0jOI0F
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G/6rTZub
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next V1 00/15] Add E800 live
 migration driver
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, intel-wired-lan@lists.osuosl.org,
 phani.r.burra@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDYvMjAvMjAyMyA3OjA4IFBNLCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIExpbmd5dSwK
Pgo+Cj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoZXMuCj4KPiBBbSAyMC4wNi4yMyB1bSAxMTo1
OSBzY2hyaWViIExpbmd5dSBMaXU6Cj4+IFRoaXMgc2VyaWVzIGFkZHMgdmZpbyBsaXZlIG1pZ3Jh
dGlvbiBzdXBwb3J0IGZvciBJbnRlbCBFODEwIFZGCj4+IGRldmljZXMgYmFzZWQgb24gdGhlIHYy
IG1pZ3JhdGlvbiBwcm90b2NvbC4KPgo+IFvigKZdCj4KPiBJ4oCZZCBiZSBncmVhdCwgaWYgeW91
IGRvY3VtZW50ZWQgaG93IHRvIHRlc3QgdGhlIG5ldyBkcml2ZXIuCj4KSGkgUGF1bCwgd2lsbCBh
ZGQgdGhlIHN0ZXBzIHRvIHRlc3QgbGl2ZSBtaWdyYXRpb24gaW4gbmV4dCByZXZpc2lvbi4gCkhv
cGUgeW91IGNhbiBoZWxwIHRvIGNoZWNrIHRoZW4uCgo+Cj4gS2luZCByZWdhcmRzLAo+Cj4gUGF1
bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
