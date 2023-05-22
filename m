Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8056570C29C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 17:38:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FB54613FD;
	Mon, 22 May 2023 15:38:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0FB54613FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684769919;
	bh=wmqUQk7F6Sgpy1ig1qgnGjNVh7l8jotMsCug2y9qUfA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kkidPgzUen7BIC/ksoFw/ZgM+VYAgULQ9t6aPRkd/aiB80mHwubPiv7WKTAGau68B
	 CGQ9YNSqvkMvMIVn7FXvC+EFQ66efSPHobpuTySQ68nv/g8RiTZgJs+Mz7uI4sdhEB
	 m8/refhW5G/U/EyggEJQqXKeue+XwB/GSEBKmvVpgthTQDUerI+1/cut8Q//h74phm
	 QLF4p0JHmmtvw5u3GXDL564ad6CIITsZUyMamgOkAFuf2x9or6iC69HQpqZhqYruFk
	 qc3iDBPuj+DMUJIQNQMnQydLYaTEyY7/g5nP1eoDZVFiaISQ5/lSOgGEOVP/dSLv43
	 +S+pH1LbrOaLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ew7M5I5tfwvu; Mon, 22 May 2023 15:38:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECC7C60692;
	Mon, 22 May 2023 15:38:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECC7C60692
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 898E91BF393
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:38:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A3DA606F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:38:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A3DA606F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CiMYFMfdhxjS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 15:38:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0663C60692
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0663C60692
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 15:38:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="418663486"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="418663486"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:38:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="847872386"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="847872386"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 22 May 2023 08:38:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 08:38:26 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 08:38:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 08:38:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 08:38:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CIzriQiJBOhLaMBnYPmDNMgU/k+x43eATAEtzOmcE4Sgqc0bx2MsUN2fP0enHLoBur3QzH0kI/fEnQEuQBYJEpRWHVOnxdcIMbvcLlB5guNIxR/0ksNrPYg3jRCOhO8/DEcf4eRVvO6XY4L48RbE9y+hVLyKCpWS2+87jmZSRR2c87cCszXZQmIzAMP+MhQSKw7A2m5xTdUKLOs6hqAwR312ZLRFzLy19dY03ohEB9mqv+OvwX3RJjJWZsOh3h0C1ocR/L7x1nvun/9q+ST5pi2EpFveftU5OXgMlriLenVmvx6TD3vS4QE6XbK/AfIIPS8+whc0OQ6gvChq39JpOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8SaE9vlKE+xmYCzNeFA9ikP0nPURwTCIRh1lpuSTgRY=;
 b=Rl4qkotMFhCWGZwZvzconKNV19uYzN+AvGw6W9uMNHQggQ+4PlGwnFkrfE7SLRs2FjF9UoUkfyuvlHTwtmRbSUye16iqNJIs3vHodC7ItPaDRe6M9+KgyKxbN2tL9yiUGDPbNjEduoFrpMwvfwdo+aBNo4yscF89nM5yoU2iIma8Cl3KUGk+xT6cm3iSomiHnNR/Zs+LyoeO7uvLThs3fo5Rpya07hBtDkVsEK3CBjx+sxwM2O83fnhxTc95gKZY9AaonuZOqvQ4NFtBjgxVYOrLMMRAanQDKQiRf+A00kddZgnE6Hxmuq0krwAdKdH6OY6ETHMB9SZG4majJsHhjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by PH7PR11MB8569.namprd11.prod.outlook.com (2603:10b6:510:304::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 15:38:23 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590%2]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 15:38:23 +0000
Message-ID: <21522575-f6ef-5c8b-4a0a-0f2c208afa66@intel.com>
Date: Mon, 22 May 2023 17:36:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Larysa Zaremba <larysa.zaremba@intel.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-2-larysa.zaremba@intel.com>
 <0c40b366-cdb5-f868-00c3-d8f485452cce@intel.com> <ZGuEWl/LwtXxYgkE@lincoln>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <ZGuEWl/LwtXxYgkE@lincoln>
X-ClientProxiedBy: FR2P281CA0037.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:92::6) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|PH7PR11MB8569:EE_
X-MS-Office365-Filtering-Correlation-Id: a9e02455-556b-4659-5db5-08db5ada936d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1IlpLtYX9CdP75nVbjLhkvoP9VdZVGkfclGTzMoDFjDIoOSH9xqxpOXWhQFMkc4ecuIeuJtgLMdI744C6t9VF5bzYxRBm4PCV2BT2KoisDAJrchSSj2L6jv5iHain2vEud7P4mwAkFKR8nhgee0mLzUQmjuRQWzUvOguw3psKiH5cV0XjoIH29o+CsmdNA6Yh+2cTUw+/994QgvblCKk8Xuhpb5ibWhrZyIrMR712+XD2U4WeBHAYgfnAGGX4rISslXlzk9KZk/adqNr3U5YO8YX9Yv/bAz+F55j3jVbcf9ASOiKWYMsDI7BRoK12vQpUUojjbig0FA7ewg206U0JLiGTIEp1qWt3hPRSyx2l36Qt3gcbbdORhABph3ehhAsNvWirKkwgRcWO/kBvTZDgTHYIebXTgc/qW7XM5MUg1WRe6qA2p3zO1Mp6zFJ4TLfDFW6eXaHphJ4MT8VwcyXIsciOtpvXYlHb5dUo/wUxn05FUYy6a8xP6yBDKFl5uBIXqaCg09KmtO7TlIolHhRSEmlV5Ihc55cGVUwOA248LNBlNAH73OohMRe/FXvDQ7bA0rIPAFjQ4ifOy0iGcyTMhvDo/eDtUC8/P5xPA0igZgUiRbxKvu5ViEEHoG34SroI1WdSSKr+mA/sq3T7rBKXw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(136003)(39860400002)(376002)(366004)(451199021)(38100700002)(82960400001)(86362001)(31696002)(36756003)(31686004)(6862004)(8676002)(8936002)(7416002)(5660300002)(6512007)(26005)(6506007)(2616005)(186003)(83380400001)(4744005)(2906002)(41300700001)(6486002)(316002)(6666004)(66476007)(66946007)(66556008)(54906003)(37006003)(478600001)(6636002)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1FUeWVxaEs2bThOK2NWZlhoSm5qcmpqNWdrdDZCeEdzUHUvMzJybFVsYncv?=
 =?utf-8?B?NWFoVS84UGU4cnR1Z2pPMWFrTy94YTVBWlhXbWVucVF3eFd6akdPSFFBZlZ0?=
 =?utf-8?B?V2hsZ056aXROZHJJajRIM1cxOHNNK1B6VkNnNGhrcEd1WGIvMzhqcUo2akdk?=
 =?utf-8?B?UVNXeHR1RWpKSmUwdmpOM2N1YnpEdzgvSmZWRVNrZ3BvSGt5b3hwT3BqRWQw?=
 =?utf-8?B?andLRzY2QXVhSGp5UllvVzZsSElhSzh1U3FuODA1TmtUd0pDM3Z3ZGgrbmQx?=
 =?utf-8?B?NjhTb1I3eE1vVDlkUUNQL2tldVNmb3hRc2djdXNySkordlh1Rnhtcmk4NWx4?=
 =?utf-8?B?S2xZK3MxUnF2YmlSSVFEL3FKai9EeHJkcE9Gc1ZrMjR0YTFVdjlma1l5bzYy?=
 =?utf-8?B?ekNKRHBwNDVWbUhoRjJPUmJpcWhNNEJqV1RCWkVKQ3RFbWFzc0JuNE10WEtZ?=
 =?utf-8?B?eUk4Wk9teUo0YUxjdmg0L3FSMWg5bU53akZGamhEM0tpemMwd3JqMTRDZkVM?=
 =?utf-8?B?czBXS09LWGV6RW11RXJxbXRiTkM5QURTODcvVzFVRnQ1T3daV2owa0JYcUxY?=
 =?utf-8?B?Nlg1aXh3UHVxdHovZWI2WHdNdUIxLytLRk12cmsxY3Z1aGo0d0lzZWFaMlVL?=
 =?utf-8?B?ZllvTklPMk5XcU5WaHR2ZjlkWTNqM0NXQnlmaXlXSEMwVm9kZEdFczVqMTZN?=
 =?utf-8?B?OFV4clVNRVlpSGp3N1M2Z284YkFFQXcwek0rZGdFVGwwVDJ3cEpGTTdoUGxm?=
 =?utf-8?B?eHY1RnBXdHd1dVBKclZwbGFld2ZMRUNqWUhrTU5UWCttMVBDbEVoN0NZSmk4?=
 =?utf-8?B?VzdheW96UWt1UTRYNzdidVpIWU1ZNVVWZEhtWTEvNEZBaDFsMUNTU2dlWFFv?=
 =?utf-8?B?N3Ryc3d2a2t4UGlYL2VhQnpGZnMwSHI0S2dBT29zWTM5SzZzRVhBUFVDODVp?=
 =?utf-8?B?Sngzc3VnQ0ZvazZMcFFMakJ5NHprdmxXOFJVS05vRzBmbkVmSGxjSHI5bjcv?=
 =?utf-8?B?M0RXeUhGTTRlRUg4OFhzVXpWR1hIcjFkYmx3OTNrWmVMTDIyUGt0UlRQUUR0?=
 =?utf-8?B?MnJyWDB6T2NCNHJNREk4M0Vkc1VIVU0zM3hZY1NoQkFiOHUwa0JDbEdBY25N?=
 =?utf-8?B?d25DcDdKaFZSdXM3eUJUeXJCZldCZVBlYVhrcmtmV1dnWk1yeUNkaXgrbUIz?=
 =?utf-8?B?cUExamp4NnBxZ1hrallQdStST1FJT1FqT3BFdFRFYjJ3aDVWaDBhbW5icDZm?=
 =?utf-8?B?eFlGT1JGUnliMFk5TVo4Z3VLWlFqYlJtSFpVaWJHM3FuNHE5V1FTdC9jck1O?=
 =?utf-8?B?UTJteU1TWENtc0pZd1hYdWJJekhPSXZtdGlSOXBncWEzdEpaSUhxMzh6YVhn?=
 =?utf-8?B?ZmxhWjNkRlpzdXh2VkxzNnI5eTMwdXgvY0RVdWd2REtRTDE3L3JHWDZZYzBQ?=
 =?utf-8?B?ZTljSThOUURaZDNmOGFselprenpoYjczSEVCZzIvVnUzT1h3N1hvODJydW9C?=
 =?utf-8?B?SXZCdHRSYUNTaTZCNzNQUGlVakFvZzRLRzdKd2lEWVFJZ0tjOVJnQWkxZXFh?=
 =?utf-8?B?TytnLzgrTGV2WVF6bEhTeXNNQ2FqMVRjRnQ3eDk2WmdHendQL3o0OHp2KzZq?=
 =?utf-8?B?dzFtYXdQRjZ5QUdFazN0SEcxWDFqYVhIT3ZmUmloK2dsU3p6c2VLbUVBVXEr?=
 =?utf-8?B?QWsxWWtPVDQ3dm9lOHVnS1FhcSt3SGxvNTNOOEVTTWppM2wyUHpHVThFa0px?=
 =?utf-8?B?YnREanZXa2NlL3V6STVEQVJBZGpjaTVpejFWVEpuRjZvc2JhVDZIa3RINFh6?=
 =?utf-8?B?dkNCZldoWmJnWHp1MXdMenQrUDdGLzBjUVFOaVA2OTduL09Gc25tREhWaWVl?=
 =?utf-8?B?TG9aWlVOYjJObmVDZzg4ZVR0amNKaDJjcDVsYU9pSHFKSExXSVl5YTdjZmlv?=
 =?utf-8?B?OVRwYm51RHBHSjkxOFNqd1lJYlhjVHNJUXBHWGVNL0IzRjQ3ek5ScEYzMEFD?=
 =?utf-8?B?djUzWG11R0ttdzVWQSs0MjRCYlMvRWpiNTVjQ21wSk5oQU9WWUFjaml0eGdC?=
 =?utf-8?B?STJCRzJyYjVMek9TSjk4aG5Gd25rY0dnMFhqTm45aC82cFlDbWZ6Q21zWXFn?=
 =?utf-8?B?SE8wTzdaREQyTFVBSjZLc3c3NDNUMGFGMTE0TjF1M01HWHdZR3BUbnc1c1pW?=
 =?utf-8?B?QWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9e02455-556b-4659-5db5-08db5ada936d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2023 15:38:22.9066 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jKkmTRG2QqWGkNoG6e2Jic672U8y4n4qp23ZC+KvVa3WmIG9SqgQI0+0O+UiP8b/cBNvRnDozJp2QUFGBDCC0/Ji/tXUciVStZFBecN0IME=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8569
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684769911; x=1716305911;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a99glYtVOOh7MQUVguw278t4hOU5XYPRExI2+yMD/zE=;
 b=GKLwhlbn5fbqMxvCbSFzZ7GCN386OrwRcgqhuplsDCc6xupPkrRgjUea
 Qz+fy+pl2fp2kAM79YisG+o7HYwmGnyMC6C8nqM8DCaNbCyLwZn0Itihc
 LahTXchfxISD0umjUm/BGrDjTZ/2Ado/HJlu6O7kSe26ZwNBqy8vjEY7s
 SFd6Adg8eLVmuG0uIX7OmOb4bCWdHlv4EJY/wFg4lzU7in7kXDYCPQ1Y+
 N+L1s8lfUqjmTAoT1tjxEW6SUwzRwuz2HAyNp6ac+LyQ3xaYspFXHlLjj
 ziPQ+9QMZ/A1Y2fIhdKxf/oatUJacoEFn3A2m35uF7FbnWUi2l3BFrxVr
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GKLwhlbn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 01/15] ice: make RX
 hash reading code more reusable
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>, Alexei
 Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Larysa Zaremba <larysa.zaremba@intel.com>
Date: Mon, 22 May 2023 17:03:54 +0200

> On Fri, May 19, 2023 at 06:46:31PM +0200, Alexander Lobakin wrote:
>> From: Larysa Zaremba <larysa.zaremba@intel.com>
>> Date: Fri, 12 May 2023 17:25:53 +0200

[...]

>>> +	nic_mdid = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
>>> +	*dst = le32_to_cpu(nic_mdid->rss_hash);
>>> +	return true;
>>
>> You can just return the hash. `hash == 0` means there's no hash, so it
>> basically means `false`, while non-zero is `true`.
> 
> Agree about both hash and timestamp.
> 
> Taking this comment and the earlier on into account, I'll name functions like
> that:
> 
> ice_get_rx_hash()
> ice_get_vlan_tag()
> ice_ptp_get_rx_hwts_ns()

Sounds good to me!

[...]

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
