Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0E67B6F5D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 19:14:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B59941492;
	Tue,  3 Oct 2023 17:14:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B59941492
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696353268;
	bh=GxYSxEPKTY238yG3vjnuxCMY5TcH7Z3a0RI7547ap/E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xvGf1i7U8Y6STsTkj+hHBjUuVHRBrFyfOq5iSL620WJ/ppD6LCjuwLWTrDhUk3kkI
	 7XP5n0fYCKmqCgOEPSkYI7SY7niqSvu4i5EI4CH7ky6bOn3Bj2LLGYne6BPgHPDjwq
	 XTw4FEbQKEnYQ/ivLGeo4u+zrsaU+3wqXXXfxdlSWqRzKxTl7Y5xD8DdF2QZP646l8
	 LPtIkcEaH4HOFCnZDEls8MEvlF6x6qspb4JZ1oJj4MGZn7KNQRLWA9dLbflzNTo/GZ
	 S72wO5R/Kkj4lvzK8dAtk+vJ52wAqNdLr1vYX+MgOKclkx1uEzYEt7SyTqAktze9Fw
	 hu9gya9wBqGgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5a1LPzr1I5sT; Tue,  3 Oct 2023 17:14:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D62404149E;
	Tue,  3 Oct 2023 17:14:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D62404149E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A74791BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 17:14:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E48841492
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 17:14:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E48841492
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r8zbri_wVUOH for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 17:14:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8712B4148B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 17:14:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8712B4148B
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="469211515"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="469211515"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 10:14:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="821336460"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="821336460"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2023 10:14:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 3 Oct 2023 10:14:11 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 3 Oct 2023 10:14:11 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 3 Oct 2023 10:14:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 3 Oct 2023 10:14:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TkY/3+DAUu7PY1YyHAnfoUiLVcCEpQo2NpQicLZdrze0i9idFm7Fm5flQM3r3MbSw/ifyug2x3vlHYE2cl2+jkVpzf/g8S8w2wVFZ+3ZWANLBSkNcO1DfvS9PNs7ArGv7FmNj1JrazGm8z6LmjFUsyMGYajGCi0cSbw3bu12BESBSu2Mw4HO7vGpds43Rn8LpJparMnesSjQ+UyISwI1Fr+7AWnRuFLu0fu0og9E5zgu1DAKG1n9A++zzdMzsZP2AgRzOYQdEtY56L/gEb3iS7L/e4TTVPRAGzdWNYcYkieMWP84rjFWRj3wga7I+lf7eLxpNaDq5rK70MHxprTHlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x48F0pPxAfc3kxWKEPqgvR3IXKYYfXMKaQa5xLgqk/U=;
 b=LJ733oQOYEmhPBZUfdm2k+DdrIKZXwMi2K4gh2ST4GFZDLwKlMyBXOcmD/W6u9B0eOA2WxHvWgSUIFTiIjTw9goX2ZqTK0Hw4Xz53Q+hae1GasdAdxULDnsICEnKvLV2sOd/5bU2pI9gm1/b+4ficS0x/557wczroP6AuKumw6e8qCdxaQeNP4SHi26G7yetTV2pMIzRcF3yJb8vYmi2C677QegOjc8GYEt+6zlmt3LeqkoYCTtUzHpU0hkSPjcGopFIp7GjerjlJXGi8B/cRKoXV4zjKBwGkDvR9fTgnMW9xsh9rDYyi/zGkBkXdQwhhQDG7WwohEvxpvzkO8yeYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by BL3PR11MB6412.namprd11.prod.outlook.com (2603:10b6:208:3bb::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.28; Tue, 3 Oct
 2023 17:14:08 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda%3]) with mapi id 15.20.6813.027; Tue, 3 Oct 2023
 17:14:07 +0000
Message-ID: <a5e933fe-4566-9ae6-9a5d-b3a4c186fe0b@intel.com>
Date: Tue, 3 Oct 2023 10:14:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-US
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>
References: <966968bda15a7128a381b589329184dfea3e0548.1695471387.git.christophe.jaillet@wanadoo.fr>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <966968bda15a7128a381b589329184dfea3e0548.1695471387.git.christophe.jaillet@wanadoo.fr>
X-ClientProxiedBy: MW4PR04CA0117.namprd04.prod.outlook.com
 (2603:10b6:303:83::32) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|BL3PR11MB6412:EE_
X-MS-Office365-Filtering-Correlation-Id: 13810e88-554a-42a4-f99c-08dbc434271f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JMAYD3ZSHM76wZjFmzenHKlu4qeXI3eMMr0ZvsC5RHmdaT+3DiAT1mHQBG6TXfHCIZuRZ6fdtOYJ8d6kzW6ZnHRD1iN9+5FLIGzK4OSbePodIYYwa1TubTWdFZRA6uSOGgGuslhNy1pIjJ9vPEyVSGSPXdA/tx0vBveBLnjjt3VV84FltfSuqMBA9dof//bcsB7x0eQO9S3S4+ngyIGFpmIvLuev0d7gAjOhT2XFJ6TXKkPa/bZAwVZxKfBUDh1Vlmq/JV06zEc8VEDthpH3vqmUO3Jo7tGABAys3izHpbXZw32i/yT5BKB/Q3ALTegw5LsrsvCZq8cgVCfm7ZdP8ZFUknifrV6LM8OtQKw5qu2P5M9Yl0KIz0ZFypuJBakHlLj/tFLlZ/TOqNJNI6hYqedD3Z9miwFuZGVnjXaWHCpDVyOyI+ABoJ6yxJHfEaSkRxt6s3LPCKl7JVHQRP7PlY4Da04DnHTP3J2KxsVowLScjCl6nE1+/9bruiGwJaSdFKafUm5gDjYWCTlbD5P/RLH2Ad3P0b/EAjQv8SvE3j8bCIVBzvWDblEglrcuJUD1KvLbdHF9jFHMWxs7zMzndgVHoG1SNguTud3+J6bGxxOT5+unTsFCzhTAIm5d8DMH/VG/7b/QzaRZYhlU5p1XzQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(396003)(376002)(136003)(346002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(478600001)(316002)(66556008)(66476007)(41300700001)(66946007)(110136005)(83380400001)(31686004)(82960400001)(6506007)(8676002)(4326008)(8936002)(38100700002)(26005)(86362001)(2616005)(5660300002)(31696002)(6512007)(6486002)(53546011)(44832011)(36756003)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cGl0NkM2MlNrOEVBQnMyZEFMOWxSUUY0RitFTWg4ZUE1ZXBmeVJDMmdlSVpq?=
 =?utf-8?B?eldJb3ZyMElCMW03UnlIUVBpT0U2ckFxQXBuVzY2cGd3UVltZkdOZTJFR25t?=
 =?utf-8?B?M0ZYZlphWUQ0UE9CV2dYWHh2UlN6Vm8yMVdXT2ZnZEkrN1pHQlNRZllvZk5Z?=
 =?utf-8?B?bThOOVhkcFlMOW9TUjNLZ2JTNHloRzlkZTBhTnV2a0RJbUVvTDU0bHcrOSts?=
 =?utf-8?B?TkVGeldOdjB4cE55U2VaY29VVGMyZHVIbkpxWUdZRUd3ZFFGbTNhc2x3cTk0?=
 =?utf-8?B?V2lKa1dLZjQ5Uk9mL2tSVGN1dzRQRnVsQzN3Q2pTUStGYU9OcVNiTFBRVkpm?=
 =?utf-8?B?eEdrUXBycGdYZGlkajE4KzRYbjM2UjFRMzVZbkVJWmtaVXluZHJUdTd5d2c2?=
 =?utf-8?B?dTJ4MHBMZS8wUFI2Skk1aXBzRldOZmh6OEZSdkdOK3ZNSk8zNXlxbXFmSVFR?=
 =?utf-8?B?ZHRyVzdINkVXdU5LdlZnQkM0MlZmb1ZkU3k4T28yQkhEOUI4TThQSUQ4VnVx?=
 =?utf-8?B?SzBZT3J0a0lhU1ZXVFEva0FZRm4zaFE5b01VdG11M3FjQitGakhKdjlLVGgz?=
 =?utf-8?B?eUNFZHRHRGJ6eEFEN0doUDBVa21PZXIvV25TKzBBUjhFYWpEWklidUh5bzVa?=
 =?utf-8?B?bVN6QnNUMDU3b25uZ3BzQ2FtRWwzTVRNeXJqV0x4OWR0ZklNVi8zYi9lTnky?=
 =?utf-8?B?clNLS1pOQzJrTytvdFFvTFVQSEJ0YnhHeVNRYXk3Q0VmcW1aZTR2UE9zSXN0?=
 =?utf-8?B?b1JNQXBvMGd4MUxXdWVrVDR3L2ltSWgxUWJ2NXhtNitpVmtZeVJMMU0wTjJm?=
 =?utf-8?B?UlQ4SG9qOUk2NnZ5TStzRmFKRmNMUGJYWFZHQkQ4aUFPUzJ0SmhWV0FPZ2cr?=
 =?utf-8?B?QlpkWEZPM2FsSVVjc0lvYVF6dXFNdk9qalR5RjA1eWdJYVQwZjNGMFNVcmht?=
 =?utf-8?B?NUp2QXhVN25vUHA5VkgxaVJvWkI2clpSSVlYYVA0YU50UjdJYWMyTDZDam1S?=
 =?utf-8?B?QXBaVkM2MXVGUDh5UlltT3FWV0JVTzRjRW9iWnhDSFdwZnVWTnZ0MmVlRXpv?=
 =?utf-8?B?MFdTU3o5V3pPTlJmemlxZHZtbUJQeHBtUlViMVM4WlBHY3lyMUU1cm1WSkFw?=
 =?utf-8?B?V3pDektFanY5dnFxVysrNnp0bWVlRGhyamlEOHlaR3QwRnhZQ3gydlBWZUVa?=
 =?utf-8?B?bERRRCtZaDRPdStWWlh1VHVCQ1ZQczJHbjZJd1dlVGF5NWFWV2U4OGVqcFRw?=
 =?utf-8?B?VU1Cd1hQcWJXTm0vVW5zbVFYL01QMXYvblM0MEpXalFSdjNxRElJc09Ec0FV?=
 =?utf-8?B?NjZxeE00YllsUGVWbVQ3a2hCekVUeVJJWWx6bE5Vd1BRTlVRMHVLZVEybEVT?=
 =?utf-8?B?T1UvRElxdXRkWnF0VHo0d0wvZlUreE51bHE0QjZCMmhiZjNHL2c2VFdsM01X?=
 =?utf-8?B?RlpaejRnbnJTVlRhMTFqSEJBTTdIWS9kU1lqQXVXWDg5TXpWOHF1aWphT2xo?=
 =?utf-8?B?MSthY0NzRk9NNWZqSDFCYURMZzFEaHI2cFNCK3BEaTBNSHBxaWk3aWhkbSs5?=
 =?utf-8?B?aklKNUtCQ1I5TlkxbVFNbk52WVpicHNCOUJmUmNTY0MvSVdYZEUvMFF6S0Z0?=
 =?utf-8?B?VFdja1NsR29GRFU1YkphZXpOTVhzNXhmQ0hLOVZVR1pMOVF3ZGc1NnFGK1g2?=
 =?utf-8?B?MW9QV1VldzR5c2ZKSFAxS1JBNm9wQy9XNkx0cjJxamp6d0NMRlExWEtIbWlq?=
 =?utf-8?B?QUNmTWZkeHFoTFFOcDFFQnduOFdvQXUrcGwrK2p3NGRKMDVTY3N5eVQ3UzNZ?=
 =?utf-8?B?d2Vsam1GRmFiZ3RuYit1c3R6a3BDb0F6K21TUS9uVEJmVWJVS0hyQUgyNDJp?=
 =?utf-8?B?ZGFsN1Uva3VBRE9ZdHorTWI3QWUvOVNYMW44dDZEMVc3dXZrQktIb255bzRT?=
 =?utf-8?B?RkJXSjNZU0dYME9aSFNNbHRNdmx5dmNWUHhoSGRkWlg1bkJUVkxKT3JnRDJn?=
 =?utf-8?B?dVM1UmpVTlliRWg4RHlmZ2xzK2tYTHFmYnExaXZkVmNzcWtxMUQ3WHZFVWEv?=
 =?utf-8?B?amU3THJVSi84dktLc2c3akZ6WDhBdVdTSWdUTGNaSFpVaGJPdmtFU3NZSTlt?=
 =?utf-8?B?YlNOQVEwbStxSjVUL2lhZjF4eTFiYzVrZUU1REtWcU1pT09IeWs5ZC9FMmVW?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 13810e88-554a-42a4-f99c-08dbc434271f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 17:14:07.8669 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3z+bYrcJGdaAl7gNv6dxY2sv4ttJvwnAocekxcBq7TFx/K2PeVewoZaAzoDuJk75q7+ko3gxmZ9Vc/bVwckDkvW2I/SElQn1zs5HyCLW/hg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6412
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696353255; x=1727889255;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hHAqYhqSwROKZJWbkSMqAKxJjmE0SImGGYt1jCmqaTQ=;
 b=X7mlHKc/Rm2PAhqUEJ2nr+Xt1sLZXZ/tcoFaU0LVtwhXqA6GSXHB+JT8
 XWsR0Ri6PLhlR3pjQpmQu392jC1rHacZGRu+RqlSu6ShK0fMiIGyCAHHT
 2barLEbz+egvA2iQQVbap6BMT+iCp5dIIMaqOv+o7+0FgpzuS5/9bBEK/
 ova10xt0laMeMIX45CVb8+fm71ppIV1/pA/6Nu2FmNMsnVNQ9ef6lON2J
 xVTvjax8oDROr6TT+oAJoBEPvRo+WIM1oTCwE9IHWA7lTOg9dNCFhGRvW
 51TiotrAlbQGV9n5d9t5cxSoBE4AV5h744E1Ws85/H0mdZoJX4NzYqQis
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X7mlHKc/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: Avoid a memory
 allocation in iavf_print_link_message()
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOS8yMy8yMDIzIDU6MTcgQU0sIENocmlzdG9waGUgSkFJTExFVCB3cm90ZToKPiBJQVZGX01B
WF9TUEVFRF9TVFJMRU4gaXMgb25seSAxMyBhbmQgJ3NwZWVkJyBpcyBhbGxvY2F0ZWQgYW5kIGZy
ZWVkIHdpdGhpbgo+IGlhdmZfcHJpbnRfbGlua19tZXNzYWdlKCkuCj4gCj4gJ3NwZWVkJyBpcyBv
bmx5IHVzZWQgd2l0aCBzb21lIHNucHJpbnRmKCkgYW5kIG5ldGRldl9pbmZvKCkgY2FsbHMuCj4g
Cj4gU28gdGhlcmUgaXMgbm8gcmVhbCB1c2UgdG8ga3phbGxvYygpL2ZyZWUoKSBpdC4gVXNlIHRo
ZSBzdGFjayBpbnN0ZWFkLgo+IFRoaXMgc2F2ZXMgYSBtZW1vcnkgYWxsb2NhdGlvbi4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGhlIEpBSUxMRVQgPGNocmlzdG9waGUuamFpbGxldEB3YW5h
ZG9vLmZyPgo+IC0tLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmly
dGNobmwuYyB8IDcgKy0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDYg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lhdmYvaWF2Zl92aXJ0Y2hubC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9p
YXZmX3ZpcnRjaG5sLmMKPiBpbmRleCA4Y2U2Mzg5YjU4MTUuLjk4MGRjNjlkN2ZiZSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYwo+
ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jCj4g
QEAgLTEzODksMTggKzEzODksMTQgQEAgdm9pZCBpYXZmX2Rpc2FibGVfdmxhbl9pbnNlcnRpb25f
djIoc3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlciwgdTE2IHRwaWQpCj4gIHN0YXRpYyB2b2lk
IGlhdmZfcHJpbnRfbGlua19tZXNzYWdlKHN0cnVjdCBpYXZmX2FkYXB0ZXIgKmFkYXB0ZXIpCj4g
IHsKPiAgCXN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYgPSBhZGFwdGVyLT5uZXRkZXY7Cj4gKwlj
aGFyIHNwZWVkW0lBVkZfTUFYX1NQRUVEX1NUUkxFTl07Cj4gIAlpbnQgbGlua19zcGVlZF9tYnBz
Owo+IC0JY2hhciAqc3BlZWQ7Cj4gIAo+ICAJaWYgKCFhZGFwdGVyLT5saW5rX3VwKSB7Cj4gIAkJ
bmV0ZGV2X2luZm8obmV0ZGV2LCAiTklDIExpbmsgaXMgRG93blxuIik7Cj4gIAkJcmV0dXJuOwo+
ICAJfQo+ICAKPiAtCXNwZWVkID0ga3phbGxvYyhJQVZGX01BWF9TUEVFRF9TVFJMRU4sIEdGUF9L
RVJORUwpOwo+IC0JaWYgKCFzcGVlZCkKPiAtCQlyZXR1cm47Cj4gLQo+ICAJaWYgKEFEVl9MSU5L
X1NVUFBPUlQoYWRhcHRlcikpIHsKPiAgCQlsaW5rX3NwZWVkX21icHMgPSBhZGFwdGVyLT5saW5r
X3NwZWVkX21icHM7Cj4gIAkJZ290byBwcmludF9saW5rX21zZzsKPiBAQCAtMTQ1Miw3ICsxNDQ4
LDYgQEAgc3RhdGljIHZvaWQgaWF2Zl9wcmludF9saW5rX21lc3NhZ2Uoc3RydWN0IGlhdmZfYWRh
cHRlciAqYWRhcHRlcikKPiAgCX0KPiAgCj4gIAluZXRkZXZfaW5mbyhuZXRkZXYsICJOSUMgTGlu
ayBpcyBVcCBTcGVlZCBpcyAlcyBGdWxsIER1cGxleFxuIiwgc3BlZWQpOwo+IC0Ja2ZyZWUoc3Bl
ZWQpOwo+ICB9Cj4gIAo+ICAvKioKCkhpIENocmlzdG9waGUhCgpJIGhhZCBhIHNsaWdodGx5IGRp
ZmZlcmVudCBwcm9wb3NhbCB0aGF0IGdldHMgcmlkIG9mIGFsbCB0aGUgLVdmb3JtYXQ9Mgp3YXJu
aW5ncyBpbiB0aGlzIGNvZGUgYnkgdXNpbmcga2FzcHJpbnRmIHRvIGhhbmRsZSB0aGUgdmFyeWlu
ZyBzdHJpbmcKbGVuZ3Rocy4KCmFueSB0aG91Z2h0cyBhYm91dCB0aGlzIGluc3RlYWQgYW5kIGRy
b3AgeW91cnM/IEknbSBsZXNzIHdvcnJpZWQgYWJvdXQKdGhlICJleHRyYSBhbGxvY2F0aW9uIiBo
ZXJlIGluIHRoaXMgZnVuY3Rpb24gc2luY2UgaXQncyBzbG93IHBhdGgsIGFuZAp0aGUgc2FtZSBj
b21tZW50IGFwcGxpZXMgdG8geW91ciBwYXRjaCBhcyB3ZWxsLgoKeW91ciBwYXRjaCBzdGlsbCBz
aG93cyB0aGVzZSBlcnJvcnMKPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZf
dmlydGNobmwuYzogSW4gZnVuY3Rpb24g4oCYaWF2Zl92aXJ0Y2hubF9jb21wbGV0aW9u4oCZOgo+
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jOjE0NDY6NjA6
IHdhcm5pbmc6IOKAmCVz4oCZIGRpcmVjdGl2ZSBvdXRwdXQgbWF5IGJlIHRydW5jYXRlZCB3cml0
aW5nIDQgYnl0ZXMgaW50byBhIHJlZ2lvbiBvZiBzaXplIGJldHdlZW4gMSBhbmQgMTEgWy1XZm9y
bWF0LXRydW5jYXRpb249XQo+ICAxNDQ2IHwgICAgICAgICAgICAgICAgIHNucHJpbnRmKHNwZWVk
LCBJQVZGX01BWF9TUEVFRF9TVFJMRU4sICIlZCAlcyIsCj4gICAgICAgfCAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+Cj4gIDE0NDcg
fCAgICAgICAgICAgICAgICAgICAgICAgICAgbGlua19zcGVlZF9tYnBzLCAiTWJwcyIpOwo+ICAg
ICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfn5+fn5+Cj4g
SW4gZnVuY3Rpb24g4oCYaWF2Zl9wcmludF9saW5rX21lc3NhZ2XigJksCj4gICAgIGlubGluZWQg
ZnJvbSDigJhpYXZmX3ZpcnRjaG5sX2NvbXBsZXRpb27igJkgYXQgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmM6MTk2NTo0Ogo+IGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jOjE0NDY6MTc6IG5vdGU6IOKAmHNucHJpbnRm
4oCZIG91dHB1dCBiZXR3ZWVuIDcgYW5kIDE3IGJ5dGVzIGludG8gYSBkZXN0aW5hdGlvbiBvZiBz
aXplIDEzCj4gIDE0NDYgfCAgICAgICAgICAgICAgICAgc25wcmludGYoc3BlZWQsIElBVkZfTUFY
X1NQRUVEX1NUUkxFTiwgIiVkICVzIiwKPiAgICAgICB8ICAgICAgICAgICAgICAgICBefn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+ICAxNDQ3IHwgICAgICAg
ICAgICAgICAgICAgICAgICAgIGxpbmtfc3BlZWRfbWJwcywgIk1icHMiKTsKPiAgICAgICB8ICAg
ICAgICAgICAgICAgICAgICAgICAgICB+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KCgo8bXkgaWF2
ZiBwYXRjaCBwYXN0ZWQgYXMgYSBxdW90ZSBzbyBteSBtYWlsIGNsaWVudCB3b24ndCB3cmFwIHRo
ZSBsaW5lcy4uLj4KCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
YXZmL2lhdmZfdmlydGNobmwuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2
Zl92aXJ0Y2hubC5jCj4gaW5kZXggOGNlNjM4OWI1ODE1Li44MmI4NGE5M2JjYzggMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmMKPiAr
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYwo+IEBA
IC0xMzc4LDggKzEzNzgsNiBAQCB2b2lkIGlhdmZfZGlzYWJsZV92bGFuX2luc2VydGlvbl92Mihz
dHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyLCB1MTYgdHBpZCkKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgVklSVENITkxfT1BfRElTQUJMRV9WTEFOX0lOU0VSVElPTl9WMik7
Cj4gIH0KPiAKPiAtI2RlZmluZSBJQVZGX01BWF9TUEVFRF9TVFJMRU4gIDEzCj4gLQo+ICAvKioK
PiAgICogaWF2Zl9wcmludF9saW5rX21lc3NhZ2UgLSBwcmludCBsaW5rIHVwIG9yIGRvd24KPiAg
ICogQGFkYXB0ZXI6IGFkYXB0ZXIgc3RydWN0dXJlCj4gQEAgLTEzOTcsMTAgKzEzOTUsNiBAQCBz
dGF0aWMgdm9pZCBpYXZmX3ByaW50X2xpbmtfbWVzc2FnZShzdHJ1Y3QgaWF2Zl9hZGFwdGVyICph
ZGFwdGVyKQo+ICAgICAgICAgICAgICAgICByZXR1cm47Cj4gICAgICAgICB9Cj4gCj4gLSAgICAg
ICBzcGVlZCA9IGt6YWxsb2MoSUFWRl9NQVhfU1BFRURfU1RSTEVOLCBHRlBfS0VSTkVMKTsKPiAt
ICAgICAgIGlmICghc3BlZWQpCj4gLSAgICAgICAgICAgICAgIHJldHVybjsKPiAtCj4gICAgICAg
ICBpZiAoQURWX0xJTktfU1VQUE9SVChhZGFwdGVyKSkgewo+ICAgICAgICAgICAgICAgICBsaW5r
X3NwZWVkX21icHMgPSBhZGFwdGVyLT5saW5rX3NwZWVkX21icHM7Cj4gICAgICAgICAgICAgICAg
IGdvdG8gcHJpbnRfbGlua19tc2c7Cj4gQEAgLTE0MzgsMTcgKzE0MzIsMTcgQEAgc3RhdGljIHZv
aWQgaWF2Zl9wcmludF9saW5rX21lc3NhZ2Uoc3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlcikK
PiAKPiAgcHJpbnRfbGlua19tc2c6Cj4gICAgICAgICBpZiAobGlua19zcGVlZF9tYnBzID4gU1BF
RURfMTAwMCkgewo+IC0gICAgICAgICAgICAgICBpZiAobGlua19zcGVlZF9tYnBzID09IFNQRUVE
XzI1MDApCj4gLSAgICAgICAgICAgICAgICAgICAgICAgc25wcmludGYoc3BlZWQsIElBVkZfTUFY
X1NQRUVEX1NUUkxFTiwgIjIuNSBHYnBzIik7Cj4gLSAgICAgICAgICAgICAgIGVsc2UKPiArICAg
ICAgICAgICAgICAgaWYgKGxpbmtfc3BlZWRfbWJwcyA9PSBTUEVFRF8yNTAwKSB7Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgc3BlZWQgPSBrYXNwcmludGYoR0ZQX0tFUk5FTCwgIiVzIiwgIjIu
NSBHYnBzIik7Cj4gKyAgICAgICAgICAgICAgIH0gZWxzZSB7Cj4gICAgICAgICAgICAgICAgICAg
ICAgICAgLyogY29udmVydCB0byBHYnBzIGlubGluZSAqLwo+IC0gICAgICAgICAgICAgICAgICAg
ICAgIHNucHJpbnRmKHNwZWVkLCBJQVZGX01BWF9TUEVFRF9TVFJMRU4sICIlZCAlcyIsCj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbGlua19zcGVlZF9tYnBzIC8gMTAwMCwgIkdi
cHMiKTsKPiArICAgICAgICAgICAgICAgICAgICAgICBzcGVlZCA9IGthc3ByaW50ZihHRlBfS0VS
TkVMLCAiJWQgR2JwcyIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgbGlua19zcGVlZF9tYnBzIC8gMTAwMCk7Cj4gKyAgICAgICAgICAgICAgIH0KPiAgICAgICAg
IH0gZWxzZSBpZiAobGlua19zcGVlZF9tYnBzID09IFNQRUVEX1VOS05PV04pIHsKPiAtICAgICAg
ICAgICAgICAgc25wcmludGYoc3BlZWQsIElBVkZfTUFYX1NQRUVEX1NUUkxFTiwgIiVzIiwgIlVu
a25vd24gTWJwcyIpOwo+ICsgICAgICAgICAgICAgICBzcGVlZCA9IGthc3ByaW50ZihHRlBfS0VS
TkVMLCAiJXMiLCAiVW5rbm93biBNYnBzIik7Cj4gICAgICAgICB9IGVsc2Ugewo+IC0gICAgICAg
ICAgICAgICBzbnByaW50ZihzcGVlZCwgSUFWRl9NQVhfU1BFRURfU1RSTEVOLCAiJWQgJXMiLAo+
IC0gICAgICAgICAgICAgICAgICAgICAgICBsaW5rX3NwZWVkX21icHMsICJNYnBzIik7Cj4gKyAg
ICAgICAgICAgICAgIHNwZWVkID0ga2FzcHJpbnRmKEdGUF9LRVJORUwsICIlZCBNYnBzIiwgbGlu
a19zcGVlZF9tYnBzKTsKPiAgICAgICAgIH0KPiAKPiAgICAgICAgIG5ldGRldl9pbmZvKG5ldGRl
diwgIk5JQyBMaW5rIGlzIFVwIFNwZWVkIGlzICVzIEZ1bGwgRHVwbGV4XG4iLCBzcGVlZCk7CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
