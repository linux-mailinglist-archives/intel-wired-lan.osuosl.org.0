Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6961A76BAF4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 19:18:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 097D640C2C;
	Tue,  1 Aug 2023 17:18:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 097D640C2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690910288;
	bh=HBlI3ONKXj2uKnkeA0WIX25L2PDkLIGBqILzXJNNqP0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XIbjABmq1fbcjZPjP4cX/5o+XAM/63hxzM5Wu6q2A/jArXrBm0FuOxoN/Fqy+im7A
	 svj4dATfMOOneyVOQChB5VjXcVFTwhNq3JFdN5T8aNDBk6GaltpmGOwbdVSBPpug69
	 HyBBnII9HBl0AGhv580Dj07doSjk5bUbzGH+RkLiUmtWRDsY5JxjmFz9yo3L/5v+Cx
	 2jh4udZu+YkdP6xZEGZJ//DfOTTwxSupj8YWpxpLz2oT2J5+AVn8TvfZA30wI83Uk6
	 YmUabw0z9gNbWt/rA/676paQURSZZ6ENXE+fCsExK9ayePz3RC5yBINYwTb5kj02lu
	 Pqg/aNUrSeFIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E-9TRHs0ttCH; Tue,  1 Aug 2023 17:18:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B075D40547;
	Tue,  1 Aug 2023 17:18:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B075D40547
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E1111BF964
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 17:18:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 62C0840298
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 17:17:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62C0840298
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SbBW48xUMBKT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 17:17:48 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 26BB140174
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 17:17:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26BB140174
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="359407042"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="359407042"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 10:17:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="842808072"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="842808072"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 01 Aug 2023 10:17:07 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 10:17:07 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 10:17:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 10:17:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GsIG6AmEsVMjZMxfASbnelcQquRXcUp+RbOQltA+XwAvwPCmAXwpVZ0ZScVBnUw9dOO9Qex8MoCFCpG755t6ITCOiKQd/axGMX0Yu9LluQv25IKZPsNlaqOmat42hIENtORP+UwsOOVgOZr21oB4ksSqY2bUOmoVMnD80bVYVgvxY1vKOagzE++vkOr/ggWI1Ziy6ANxQa0tyLBT/ptos088gBbvFsKVs52LMKpSu7mqsZEj4arbJL3VygR3F9syp7CL1/Ah0CnoCyyuH+3jOOUxTtqhhCN9Te7n/l0YDP+qd3DXUSm9YROHr/vb67s7IHe/JmHtcuTbF1MD2N5FuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hbAMr1KlVBcY3xejFqEp1ZQIPuo/S9EggkGif5hsi94=;
 b=U5oYHWoIEK6bPyxYpDd0ieX0ci3G8xEcBSM5hhxRK5KRz2ulBCRdgWoI4lecVLi7btW3t7/EunoMMRln1uKp+PO2Iq8jsopi03DBrnQirAGGj8YZd+w14HuH4PGtOsK/SwZLvWPRZIwYJzu5nr6fNnk6JIVhS1TKIa9IYVydmJYJKtWvxzUZaUfFenU/gIvD8+xDHHaw4tfnMYmy79b33UX9Gn0jLJHeaMTiwqw3zgUIWiJ1tQIVVyV4bOZBeY3U/6zcstgFDJG0hmqRXX9EsIzuk/3UHDTeETHk4kB8rnFudTH5Molk4Y9Xt9ThNTcSjbrLicrNukbpIOoy6oiBmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by MW5PR11MB5906.namprd11.prod.outlook.com (2603:10b6:303:1a0::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.42; Tue, 1 Aug
 2023 17:17:03 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6631.043; Tue, 1 Aug 2023
 17:17:03 +0000
Message-ID: <7a83e627-6e03-c447-77f8-1020973fa4a9@intel.com>
Date: Tue, 1 Aug 2023 19:15:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20230801111923.118268-1-przemyslaw.kitszel@intel.com>
 <20230801111923.118268-2-przemyslaw.kitszel@intel.com>
 <d4d5324c-8d4b-b2e1-78c8-5c3015b5c03d@intel.com>
 <47815c47-b8dc-6d37-b869-0fba22e3a71b@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <47815c47-b8dc-6d37-b869-0fba22e3a71b@intel.com>
X-ClientProxiedBy: BE1P281CA0128.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:7a::18) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|MW5PR11MB5906:EE_
X-MS-Office365-Filtering-Correlation-Id: 22940389-d22e-4bb1-58f1-08db92b31fb2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GuuB+UUKCG6pNMK7xyaC2lQtV8Bpbd1+orM1zRI8qWiHuVZSyUoQ/45rUMV/t6Fa+7ISMLTkUApWZzS9EoDSKBsEhBVWXYFSuISwYzWwE2Xn9PybEDecCtDQc2ehbpqbXshrJXeZQmDiwQRnVze9dQru1qtmetaVBVDJMGQ4bsxCnk77Snz+wnjCnr8Cx0Jt8xLyb2TAe3g0XtSeaXtOz+9wCM+0eYZknxCbAHz0vzOJNDewHndNaH6+kLT0UAzy6VYKSOycwBPU0EgqKGYzJFTmSFNL5O19/IStQhTu7+IUvrlKT3Hj/9yI/Csaor/d+v4LvTBcYilVXHkQuw0aNtMWUn6Uu2IO6RLN4X9NAxQvju7Rs6NSC9iewPCgdgixAKFD4D8lr5Ksd/QjrAnWBiKN8i+1W/0oEyjtJRyXB0dMyGEMkO2oSCFEUBN0n+Yf6LMuxU9QaxIgW4cu9inffxEWrY8Rx7rIqNl0FS0jkw4XiAtoiC1A+4Sg77CWlyOmPFmBFrDLaHo1VBBaqSWGm+B0ZzyJ7ZKE5n9jEs+zl8zxfDgLneQCi5+61SPvXTpl968ytdSTqyUFdLG2ItXFywyf3RbR7X9UHD04yiFN9fS+7Q6s9pX/dR/R8Rnanr8m2pUchkKGcfJkC+Y4bLOV9w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(346002)(396003)(136003)(376002)(451199021)(6512007)(6486002)(36756003)(53546011)(2616005)(26005)(6506007)(83380400001)(186003)(66946007)(66556008)(54906003)(37006003)(82960400001)(41300700001)(86362001)(38100700002)(31696002)(66476007)(6636002)(4326008)(5660300002)(8676002)(8936002)(6862004)(316002)(31686004)(2906002)(6666004)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amhCRWlWeFphQ3Bvem5DS0RuSVpWNjNEekVZT0duU00rUkNTQWlacFl6ODBD?=
 =?utf-8?B?UzNMTnBXM25YYXM0blFlTDJ1RXFxdHVlc2E4L2pGS21MU3pFdEpDRGlTK1Vt?=
 =?utf-8?B?UklzSkhON3VrbUFtbWNXc2ZpVnVlNDhKblVDekR5RG4wOEFKZ1FPcjRLKzNV?=
 =?utf-8?B?dXpScmZTK3hmQ1pveiszdENOQVArakpnZHFWRDNPNlprMWpoaWIxcU8xemxt?=
 =?utf-8?B?KzFDSVZaL2hGSG1EaDYxaFpNVEtyRkFmckxqejhtV2FqRFFGeW96Vlh2NnVI?=
 =?utf-8?B?UmY1TEZGYklCZCs0K0FFNlZDVWFxQ2NHMVhHcC9hOTVoNExqa3hhTVFVZjJ6?=
 =?utf-8?B?d3MzWERINUdEWlkyTWE2b3B6MGFiUjJHcW1JZVZrZ0RiVE9GZTFtVHJWQnRp?=
 =?utf-8?B?NkhQV092M0FvWHVOTlh1SzFPSVFaN3lWM2paUGZRaHVBa1RhcjlrUm1ORlFn?=
 =?utf-8?B?VHk4REM4eFJ5NEx4MFdzOU9MMkJHaklHUXh1aE5FNTRlTFJBTFltekpXQy9P?=
 =?utf-8?B?L0d1aWYzcVZ6cEdSWEUxTFBvZFZmL2xKMk02M0N0VTNLNTF6UE1EVkQzOG9r?=
 =?utf-8?B?TjJPTFVzZURYdGhLSkc2enBNb3BwdnBxZjMvbWUvSlREa1JXSFFIVEZncE9i?=
 =?utf-8?B?YzdPV0dZQ1hCZGFRUFpHQXRIY3hsNjQza2NFTmZyQVZVNGNUUS9IVE1EWUNJ?=
 =?utf-8?B?emFJZCtTOGNWMXBVaWF5RlpFN01Qc244S3I4c2RwMTZBOGNBV2grci85RWlN?=
 =?utf-8?B?WlNlZGJWL0MxV3hqUXMzRURoZklSVW5ENVhuWm9qRlR4cFJzZjVra3I2Tkwv?=
 =?utf-8?B?LzlvbzZIRG54c09HODllM3RqUEMrUkdTdHJWTjRXaXVZTXdWaGgxc0IzbW5v?=
 =?utf-8?B?TnRvVTJxZTFRNkVReXlxY2dzTkwwM1VybWJmWEpESEdybU1WaGVQTnNVcXJN?=
 =?utf-8?B?bVBoaFlHTFBhUkVIdDltODNjeUZlTGZYOU1ONE1yMEMxZi91a2NHS3duRW4r?=
 =?utf-8?B?QlBDVjVSb3RJSWJUS3hHb29KL204WndjdVAvMVVUTUZxaFBsd21LSFZrKysx?=
 =?utf-8?B?d3hSblhtdS9uV2g5UzVZVHB2cTVhQkN5LzZhWTl6Y3IrUUNQNUg0Q0cvTUdp?=
 =?utf-8?B?WktQVEpjN2pWdzdhcXRMS3VhM0s3TmxPNWFJMXh5c0hIQ3o3ekJCTnZvTURC?=
 =?utf-8?B?aXNwcjZoYlZFYmtKcFBkMXhiTCtJYzI1R2tVRTlYRHJ5ZGxHdGVHYWF4cVl5?=
 =?utf-8?B?TlF5aHQxQWFzNjgwM1FWWVYvTDdiTWJHQ1dKTHA0Z2huRmV3NW5mTnNtUDN6?=
 =?utf-8?B?aHEzZE5QQ2RkNENyV1pmZ3o3RmJtRmR1SDFrcGYzTENUUEwxTWFQbUVpSDNC?=
 =?utf-8?B?anFtaDRzMkxGdkZvYllYUzE1Wk5Ea3hzWEErOUhiV2t4QlFiZkwzVjZkZklU?=
 =?utf-8?B?Q1BVSnprQjN0bDJ0T0pvOWZHRGdEUHdYNDUrU1NpQ2ZlSk9KUEJUcHlQNDQz?=
 =?utf-8?B?WWQzb3BmdlhMT0MwY2VzLzk3Kzl6NVY2NEc1M1VaSWsrbjdrcGp1NjI5dGdz?=
 =?utf-8?B?dGtHYVh0Y1l0UW0vN0FudURJZUhrUGdOdjhnZjhBOXNPT0VVaFBkWkJhbmdG?=
 =?utf-8?B?b0s5ankwUVE5ZDlmUm5XcDViZm1qUDg1eEZZam5lYng3b2NSWHB5WS9CUy91?=
 =?utf-8?B?SUg0UEkra04yVTAwM1FlTlVaSnNwSlArcUpoRHgvVXBZOUF1R28zK1IzcWRv?=
 =?utf-8?B?czJqNU8rVFZWRTh4WXQwenZJVHNWRnZLL3VKU2t0ckxaVms2SVNmNmZNQ3pI?=
 =?utf-8?B?NG5yUlhLSmFaOENHNlcxTUZENFF4L2U4djBFZ2FDaVdMTzdhZlU5UEJVS3VK?=
 =?utf-8?B?aFNhV0p3NXhxZ1BKRmNlQ3gwRXVsanA0V1EvUllqOVpXcnBuNkpqQzlZN3ZG?=
 =?utf-8?B?cno2dGs4akJBQXhsSlJiTmE1ODEzcXBYRDZUZ0NONUo4T0xVdlpoQUVtZEgy?=
 =?utf-8?B?NWlDbXBtNDlFYjBNUmZtWk9MWlh0cUNYMzJOcjM0WlBPSHIxbElOVG1sOXlJ?=
 =?utf-8?B?bFpyV3k4U3BCMHgyUkNWampHUnF2cHRZU3dBU1BmaHNzK1RRR3o4ZlVsVjE3?=
 =?utf-8?B?MFZCSmFiY0t5aDlHZEVuc0ZneWZjam0yQWpaYzF6djZ3bm9sSElnbTMydmh5?=
 =?utf-8?Q?IXCkRlXJSNROWr8Udx2ylNU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 22940389-d22e-4bb1-58f1-08db92b31fb2
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 17:17:03.3986 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WLG/Gkqtfbc5/7iHs8KJDy7Smy9PNZEMjj3HXaG9tUOL8581e6RxrKqHuTuF2p083UQDTIqgdZx/9GD04zDDebxIQOEn9YvQ/SMZULWfuDk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5906
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690910268; x=1722446268;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ux9st9WOFYfxc5xnDnfTlfZU8k5psJY2ekgFoRWh0J8=;
 b=F04YdIDRbyk9oIAcjfL+fMCRYxb0uZuo5RR0p2HpazCKzrvj/2p9j+qO
 zOc+UCirMjhMcVURSC22Bu+Kn8bkc3L6TCxPIfn8IVcJxJMbqs9LR2srC
 VJEh98OMSPicvhqHXm6+KOc4Uu560x3geoGKVBW4f2Bc2KYx9nr2Eur7u
 xA5oo5rbzSppD9CvuqU0C0NL3ffDnAKV3UjAynpAvMg/Of7EDTSiNquNi
 B6yn7ZQtj/wxsqF2VT+9oUAwy9gorS15qI5XDEG62M4E2xCzkZnwIqrXq
 RP+G+po+ijqowYW6AKMyLvCz4gv8+SxBbpOzZxLeZwzmpIwhz1iu/gmcE
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F04YdIDR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next 1/2] overflow: add
 DECLARE_FLEX() for on-stack allocs
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
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogUHJ6ZW1layBLaXRzemVsIDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPgpEYXRl
OiBUdWUsIDEgQXVnIDIwMjMgMTY6MTg6NDQgKzAyMDAKCj4gT24gOC8xLzIzIDE1OjU0LCBBbGV4
YW5kZXIgTG9iYWtpbiB3cm90ZToKPj4gRnJvbTogUHJ6ZW1layBLaXRzemVsIDxwcnplbXlzbGF3
LmtpdHN6ZWxAaW50ZWwuY29tPgo+PiBEYXRlOiBUdWUsIDEgQXVnIDIwMjMgMTM6MTk6MjIgKzAy
MDAKPj4KPj4+IEFkZCBERUNMQVJFX0ZMRVgoKSBtYWNybyBmb3Igb24tc3RhY2sgYWxsb2NhdGlv
bnMgb2Ygc3RydWN0cyB3aXRoCj4+PiBmbGV4aWJsZSBhcnJheSBtZW1iZXIuCj4+Pgo+Pj4gVXNp
bmcgdW5kZXJseWluZyBhcnJheSBmb3Igb24tc3RhY2sgc3RvcmFnZSBsZXRzIHVzIHRvIGRlY2xh
cmUga25vd24KPj4+IG9uIGNvbXBpbGUtdGltZSBzdHJ1Y3R1cmVzIHdpdGhvdXQga3phbGxvYygp
Lgo+Pj4KPj4+IEFjdHVhbCB1c2FnZSBmb3IgaWNlIGRyaXZlciBpcyBpbiBuZXh0IHBhdGNoIG9m
IHRoZSBzZXJpZXMuCj4+Pgo+Pj4gTm90ZSB0aGF0ICJzdHJ1Y3QiIGt3IGFuZCAiKiIgY2hhciBp
cyBtb3ZlZCB0byB0aGUgY2FsbGVyLCB0byBib3RoOgo+Pj4gaGF2ZSBzaG9ydGVyIG1hY3JvIG5h
bWUsIGFuZCBoYXZlIG1vcmUgbmF0dXJhbCB0eXBlIHNwZWNpZmljYXRpb24KPj4+IGluIHRoZSBk
cml2ZXIgY29kZSAoSU9XIG5vdCBoaWRpbmcgYW4gYWN0dWFsIHR5cGUgb2YgdmFyKS4KPj4+Cj4+
PiBTaWduZWQtb2ZmLWJ5OiBQcnplbWVrIEtpdHN6ZWwgPHByemVteXNsYXcua2l0c3plbEBpbnRl
bC5jb20+Cj4+PiAtLS0KPj4+IMKgIGluY2x1ZGUvbGludXgvb3ZlcmZsb3cuaCB8IDE0ICsrKysr
KysrKysrKysrCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+
IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L292ZXJmbG93LmggYi9pbmNsdWRlL2xpbnV4L292
ZXJmbG93LmgKPj4+IGluZGV4IGY5YjYwMzEzZWFlYS4uNDAzYjdlYzEyMGEyIDEwMDY0NAo+Pj4g
LS0tIGEvaW5jbHVkZS9saW51eC9vdmVyZmxvdy5oCj4+PiArKysgYi9pbmNsdWRlL2xpbnV4L292
ZXJmbG93LmgKPj4+IEBAIC0zMDksNCArMzA5LDE4IEBAIHN0YXRpYyBpbmxpbmUgc2l6ZV90IF9f
bXVzdF9jaGVjawo+Pj4gc2l6ZV9zdWIoc2l6ZV90IG1pbnVlbmQsIHNpemVfdCBzdWJ0cmFoZW5k
KQo+Pj4gwqAgI2RlZmluZSBzdHJ1Y3Rfc2l6ZV90KHR5cGUsIG1lbWJlciwgY291bnQpwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXAo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3Rf
c2l6ZSgodHlwZSAqKU5VTEwsIG1lbWJlciwgY291bnQpCj4+PiDCoCArLyoqCj4+PiArICogREVD
TEFSRV9GTEVYKCkgLSBEZWNsYXJlIGFuIG9uLXN0YWNrIGluc3RhbmNlIG9mIHN0cnVjdHVyZSB3
aXRoCj4+PiB0cmFpbGluZwo+Pj4gKyAqIGZsZXhpYmxlIGFycmF5Lgo+Pj4gKyAqIEB0eXBlOiBQ
b2ludGVyIHRvIHN0cnVjdHVyZSB0eXBlLCBpbmNsdWRpbmcgInN0cnVjdCIga2V5d29yZCBhbmQK
Pj4+ICIqIiBjaGFyLgo+Pj4gKyAqIEBuYW1lOiBOYW1lIGZvciBhIChwb2ludGVyKSB2YXJpYWJs
ZSB0byBjcmVhdGUuCj4+PiArICogQG1lbWJlcjogTmFtZSBvZiB0aGUgYXJyYXkgbWVtYmVyLgo+
Pj4gKyAqIEBjb3VudDogTnVtYmVyIG9mIGVsZW1lbnRzIGluIHRoZSBhcnJheTsgbXVzdCBiZSBj
b21waWxlLXRpbWUgY29uc3QuCj4+PiArICoKPj4+ICsgKiBEZWNsYXJlIGFuIGluc3RhbmNlIG9m
IHN0cnVjdHVyZSAqQHR5cGUgd2l0aCB0cmFpbGluZyBmbGV4aWJsZQo+Pj4gYXJyYXkuCj4+PiAr
ICovCj4+PiArI2RlZmluZSBERUNMQVJFX0ZMRVgodHlwZSwgbmFtZSwgbWVtYmVyLCBjb3VudCnC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBcCj4+PiArwqDCoMKgIHU4IG5h
bWUjI19idWZbc3RydWN0X3NpemUoKHR5cGUpTlVMTCwgbWVtYmVyLCBjb3VudCldCj4+PiBfX2Fs
aWduZWQoOCkgPSB7fTtcCj4+Cj4+IDEuIFlvdSBjYW4gdXNlIHN0cnVjdF9zaXplX3QoKSBpbnN0
ZWFkIG9mIG9wZW4tY29kaW5nIGl0Lgo+IAo+IHdpdGggcHRyIHBhcmFtLCBub3QgZmVhc2libGUs
IGJ1dCBvdGhlcndpc2UsIG9mIGNvdXJzZSB3aWxsIGRvIGl0IChzZWUKCnN0cnVjdF9zaXplX3Qo
dHlwZW9mKCoodHlwZSlOVUxMKSwgbWVtYmVyLCBjb3VudCkKCkpva2luIDpECgo+IGJlbG93KQo+
IAo+PiAyLiBNYXliZSB1c2UgYWxpZ25vZih0eXBlKSBpbnN0ZWFkIG9mIDg/IFNvbWUgc3RydWN0
dXJlcyBoYXZlIGxhcmdlcgo+PiDCoMKgwqAgYWxpZ25tZW50IHJlcXVpcmVtZW50cy4KPiAKPiBT
dXJlLCB0aGFua3MhCj4gCj4+Cj4+PiArwqDCoMKgIHR5cGUgbmFtZSA9ICh0eXBlKSZuYW1lIyNf
YnVmCj4+Cj4+IEluIGdlbmVyYWwsIEkgc3RpbGwgdGhpbmsgREVDTEFSRV9GTEVYKHN0cnVjdCBm
b28pIGlzIGJldHRlciB0aGFuCj4+IERFQ0xBUkVfRkxFWChzdHJ1Y3QgZm9vICopLgo+IAo+IEkg
aGF2ZSBzdGFydGVkIHdpdGggdGhhdCB2ZXJzaW9uLCBhbmQgdGhhdCB3b3VsZCBwcmV2ZW50IHlv
dXIgcXVlc3Rpb24KPiBuby4gMSA6KSBTbyB0aGVyZSBpcyBhZGRpdGlvbmFsIGFkdmFudGFnZSB0
byB0aGF0Lgo+IAo+PiBMb29raW5nIGF0IGNvbnRhaW5lcl9vZigpLCBzdHJ1Y3Rfc2l6ZV90KCkK
Pj4gZXRjLiwgdGhleSBhbGwgdGFrZSBgdHlwZWAsIG5vdCBgdHlwZSAqYCwgc28gZXZlbiBmcm9t
IHRoZSBjb25zaXN0ZW5jeQo+PiBwZXJzcGVjdGl2ZSB5b3VyIHNvbHV0aW9uIGlzIG5vdCBvcHRp
bWFsIHRvIG1lLgo+IAo+IFRoZSB0d28geW91IGhhdmUgbWVudGlvbmVkIGFyZSAiZ2V0dGVyIiBt
YWNyb3MuIFJhbmRvbSB0d28gZnJvbSBtZSwgdGhhdAo+IGFjdHVhbGx5IGRlY2xhcmUgc29tZXRo
aW5nIGFyZToKPiAKPiAjZGVmaW5lIERFVklDRV9BVFRSX1JXKF9uYW1lKSBcCj4gwqDCoMKgwqBz
dHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSBkZXZfYXR0cl8jI19uYW1lID0gX19BVFRSX1JXKF9uYW1l
KQo+IAo+ICNkZWZpbmUgREVDTEFSRV9CSVRNQVAobmFtZSwgYml0cykgXAo+IMKgwqDCoMKgdW5z
aWduZWQgbG9uZyBuYW1lW0JJVFNfVE9fTE9OR1MoYml0cyldCj4gCj4gRXZlbiBpZiB0aGV5IGRv
bid0IHRha2UgQHR5cGUgcGFyYW0sIHRoZXkgZGVjbGFyZSB2YXJpYWJsZSBvZiBzb21lCj4gbm9u
LXBvaW50ZXIgdHlwZS4KPiAKPiBCb3RoIHZhcmlhbnRzIGhhdmUgc29tZSBsb2dpYyB0aGF0IHN1
cHBvcnRzIHRoZW0sIGFuZCBzb21lIGRpc2FkdmFudGFnZXM6Cj4gcHRyLWFyZzogdXNlciBkZWNs
YXJlcyBzdGggYXMgcHRyLCBidXQgaXQgdGFrZXMgImEgbG90IiBvZiBzcGFjZQo+IGp1c3QtdHlw
ZS1hcmc6IHVzZXIgZGVjbGFyZXMgZm9vLCBidXQgaXQncyAiKmZvbyIgYWN0dWFsbHksIHNvICJm
b28uYmFyIgo+IGRvZXMgbm90IHdvcmsuCgpTYW1lIGFzIERFQ0xBUkVfQklUTUFQKCkgYWN0dWFs
bHk6IGl0IGFsd2F5cyBkZWNsYXJlcyBhbiBhcnJheSwgc28gdGhhdAppdCdzIHRoZW4gX19zZXRf
Yml0KEZPTywgYml0bWFwKSwgbm90IF9fc2V0X2JpdChGT08sICZiaXRtYXApLgoKT25lIG1vcmUg
YXJndW1lbnQgZm9yICJqdXN0LXR5cGUiOiB5ZXMsIHRoZSBuYW1lIHlvdSBwYXNzIHRvIHRoZSBt
YWNybwppcyBleHBvcnRlZCBhcyBhIHBvaW50ZXIsIGJ1dCB5b3Ugb2NjdXB5IHRoZSBzaXplIG9m
IHRoZSB0eXBlIChwbHVzIHRhaWwKZWxlbWVudHMpLCBub3QgYSBwb2ludGVyLCBvbiB0aGUgc3Rh
Y2suCgo+IAo+IEkgaGF2ZSBubyBzdHJvbmcgb3BpbmlvbiBoZXJlLCBzbyB3aWxsIGp1c3Qgc3dp
dGNoIHRvIHB1cmUtdHlwZSBwYXJhbS4KPiAKPj4gVGhhbmtzLAo+PiBPbGVrCj4gCgpUaGFua3Ms
Ck9sZWsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
