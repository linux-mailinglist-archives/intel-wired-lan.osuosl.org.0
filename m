Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F413A724E96
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 23:15:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C4E660B42;
	Tue,  6 Jun 2023 21:15:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C4E660B42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686086105;
	bh=Zw3DsZ5q68emIYIPfS6C+Wv1HVGKDB5PcJdEbRuq4zc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H4i5EyJKi6C2xqsQrNkbB60DHpqSlj8Kc+PIOFax6lq8stzKMDAGelkq/B/X6s43r
	 4ZqgdmHCQvVEnYDIroBIT9e2SyQ2U0kuyYHIKj76uKJ/uXKCNW6ThVdSl+NL/nWoRU
	 M6x6J9Iu32+LQdx8oj4Zm+ASEMtz4OwOHD+PdFTDUxOfkNYkWn/MLaj6oIDgeLXqiI
	 32EISDZrhuuKn3uwTcZyerasDdy18QbyKgzriS9Jn/Rdbc3zPCSthaDmKeg1SO9Zqh
	 Bpc3k+wg1oIleAtaBhDXnrOVWD3Fjklq4r/v7S+EpXgO0lZXojeQkNk1ULEEdcoUjL
	 Aucyb+ukJuicg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zDsYilP2B33x; Tue,  6 Jun 2023 21:15:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 840C260812;
	Tue,  6 Jun 2023 21:15:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 840C260812
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E5FB31BF470
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 21:14:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BC7EF8196A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 21:14:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC7EF8196A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y27NePLiFqp0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 21:14:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5253781916
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5253781916
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 21:14:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="420351196"
X-IronPort-AV: E=Sophos;i="6.00,222,1681196400"; d="scan'208";a="420351196"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 14:14:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="659690360"
X-IronPort-AV: E=Sophos;i="6.00,222,1681196400"; d="scan'208";a="659690360"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 06 Jun 2023 14:14:56 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 14:14:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 14:14:55 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 14:14:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J/J6indcFItN/2rx0f1okzJuNB5Vb6mqse1OoCOqTbSNhtRwsvm5nANI+dj/MCzfknT1BBSLItGfBiqWy68sN0vsWklZAoi7sgh+Mb8VAr42KfVHoZDNH3RsM4L3iytsbyHO5/zdTWn9hztu3t/+ujVMUJwUM119PP+RUxTsDG492bngikPN9vBZyWfz52FM3bGZG0iIp4TZCf6f7mp+loCwXXvWfPMazrjg3JJsGYcTe4LOezBm0kLnXh6K9T/Q2nI0j4VrC8dpC5t/PCFj7sAjlbCTrE75MfpllLGEJkfTc9yHY1B1aBMRlxloFBgX/NnfZohqdCZ5CakEgI60Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hCjK/qzzLrxtpblkg8EZnCQOOkCXy3J477R+ZQ2X8xk=;
 b=LPxnPmiAZOlxIf4BXXnV7c2Mc8Pat25cW4fhpI4kOjm4gBUYngmqqnJOiMi+eFxyGBi7A6YWE7wunn2GaOfbaBaqKHjPHdFx1wqpJg7OfI4wRpM+48/+ugG4ZrKUHLIBeu/PUE0xrQsEM+HId1hfC+rHnKlrh5KjLap/t3AUqoyhBhredLjUKQjnYE7I8CRS61AMjYTiSHhPfkFamS7SFVhGb2KSE07t6lRc8UFRp7pG10DzDTE3FoXz0RTPr8/xnVA+8fMX5wH4PvdnDGsFSOozQUUUVRWnNPScqyKNwrjwTi/qzVXpw60E9Bi4awlchLXaiUP8e5sNudJImSfULg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by CO1PR11MB4964.namprd11.prod.outlook.com (2603:10b6:303:9e::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Tue, 6 Jun
 2023 21:14:53 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299%4]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 21:14:53 +0000
Message-ID: <9b5c6653-3319-3516-0b50-67668dcc88f3@intel.com>
Date: Tue, 6 Jun 2023 23:14:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Simon Horman <simon.horman@corigine.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>
References: <20230606111149.33890-1-przemyslaw.kitszel@intel.com>
 <ZH9S6wPIg9os8HYa@corigine.com>
 <1e11a484-af99-4595-dc1f-80beb23aae9f@intel.com>
 <ZH9hS9BBDhy9lIG1@corigine.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <ZH9hS9BBDhy9lIG1@corigine.com>
X-ClientProxiedBy: FR2P281CA0138.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9e::7) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|CO1PR11MB4964:EE_
X-MS-Office365-Filtering-Correlation-Id: b1fa9e23-46c2-4470-9e25-08db66d3121c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EqOmPa50kZinLL26v7McxdDE/ZGFz/XcSqzks5Sy+J0+MIYKt/r1d5GhVmnyv6xZ4kDmPXI7Wt2DPvd5SgCWWCvvtlac6tvfHOZat6Tmd9hNEssCGLhsQ7kN3BkkDSdcV62Z8tAughIPsYqCVofqAXEoX93mkjX46o20JwEdz7tx/2kzXxIYh1EKoBoDsUVPxB9s1MGJPSmvCIFCn7N2Zm3JIpzZ0qsjuTzd16w6Qv/Zhz9inqcWqRifhtwYzdEOPi7dlyyLwOOkPoTh40bwvTbeXBqvFSeacQb+7UdEAa+tWHoKRTo+CiZGvfRq/LiHxtqc7jwNPqWNp5zZoFVYImNJwRZTx4amYwIuZ1Tpbg3+4Y7qr7QuyRKdnvi7/LXSabk7Sn/lmhJ7MCxf3Zz0QpvJFPuiT5xBH7gychkY2v5UoHmE4Tc8KXE4VHEweH/jvaZnBGGIGGFw5LAWPkbzqlJziUXElvHaypCMJBDBxJ6yf+9j6s4UV069ti/T7WTmsKLI1EgvIn6Ui3N7Og/U9fCUpTLOknxdu/KYtJYjDw41kCaTY4n7HchSPhTLXw3ymJT4Kz321D+3tV4sqY58M33hPf/qXZMuT3EGO/YIcPkea2YdYXD2MDV+LqiXYeSPOu73M7rP8MVdQ28Ob/IZbQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(366004)(136003)(346002)(396003)(451199021)(6506007)(26005)(53546011)(6512007)(31686004)(86362001)(2906002)(36756003)(186003)(82960400001)(31696002)(316002)(8676002)(2616005)(5660300002)(8936002)(41300700001)(38100700002)(6666004)(66556008)(66476007)(66946007)(110136005)(54906003)(6636002)(4326008)(478600001)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUJYdWh3cXk0ZXVUU2pkZ2VNQ1VScm5ydXM2NmpaQ2g2ZktVYWdqUlYra3dr?=
 =?utf-8?B?OXdIbmN2cjI0U2ovNGZOWmo1Skx3TTQzL0p0aC9VWEM2RTEzNDFkU01raTlk?=
 =?utf-8?B?SHoxcUlNaTZ0blowM3J4RlQ0WmY5ZnFFS3VmRXhXeXRHT3ZmQUFSRlNOMEFD?=
 =?utf-8?B?eHhTb2t1SC9SU3VweEpaUWJ3dFYra3ZBYUVGNUtXQzhWNHRhYkFxRGFBYTBm?=
 =?utf-8?B?NHZKQ2xpMHFmelY1M1dDUC9HbEp4U0QyR2FTcmdmR20rSUlWYUQ0Vk00ZHFl?=
 =?utf-8?B?eWxpMFliSnd0SHJHaU0rRXVNa216WnNXYVR2emY4ZDhMQldxK0xkRHVvR3oz?=
 =?utf-8?B?aXl2TXRQYTR4MmpReldFTXRKNzlpVjRqcVM2bEV2Q2hWZC9XSzhPRmtNZDQz?=
 =?utf-8?B?elArRmdOUXphODNKay9haGNpeU1yRXFSWDBOSFZIU21tTEo5d0tIdkMvYmJl?=
 =?utf-8?B?VVZNSC9VYXBYR2ZCTU90R3NWQ1lIYXh1RU9WaGMrem52R25WYSs1bGVpSk1l?=
 =?utf-8?B?bmw1VHlEcS83YXo4MTYyR1g0OXVSMFdXSTNBN0hnUVA0ZHErT0JYN0VxUGJq?=
 =?utf-8?B?SHp3bk0wb1B0UmFlYUNnUUd5Rm5CWE03dUxmUzdocTVrNW9DblZRUGtPK2F4?=
 =?utf-8?B?MkwxZUR0UDU0OFlnSFlVZlVyZzJHTnZlam10YVlsL05hbGpiMWlqV25qL2Vj?=
 =?utf-8?B?TDZXdEZreUhVK1l4dUd5M05HaEpsaDBUdjlqZHV2SnRRRjFmUkxKKzNiU1h0?=
 =?utf-8?B?YVB3NnplM3JiYUtyays3K0E0YXE1VHlWaGtMRWRGWGYvTFRuYjZRMmdubGdC?=
 =?utf-8?B?MUkxMVczTlJVdVRLcE5ndmhpTWNndU4yVzZIVGs3RVNUMWhTZWk3a2FJcFVk?=
 =?utf-8?B?T0hVUUs0emIwVDMzWG9uTGZkTUx0ajc2d3REY1JidlZnSVEyVS8rNjBaRkJh?=
 =?utf-8?B?dlM1U0J6YytwMVc2Sk5DZ1ZLd092ajkrUGgybGdRSzNEKzRNbXd2L1pmUHMv?=
 =?utf-8?B?UHNQeW5kazQwU0tqTXBnK1JIVXl6WTcyRFk5ZW5PSnBlVnZlTS96TnFINHZv?=
 =?utf-8?B?ZjRHSjNkQkNnSGc1MHFSQ21rVzB0NzhScTZieWVrNmg1bmFrWlRySEdrZ3NN?=
 =?utf-8?B?ZFJaa2ZXeTBITUF6Ymptd0VkWGRYVko4dDZiSlZDM0Z4aEhaZHQrbTJSYzVw?=
 =?utf-8?B?VVo5bUpTZGo3WG9HM2lGUEJGSml2bGpHbTcwcGVFQkJzWS9DVlU2c1VUVzR6?=
 =?utf-8?B?UUVjREZWejhuWnl4eC9BQ1ZmaEdvVEV5RjJ2emlCZnIzbmh6TDFuYkVjVmVn?=
 =?utf-8?B?WS9rYmFEcjVsRW03NFVFL2JlWFJpRjQyRVVjSXRMaldsTE5XQy9DWWUrTXZN?=
 =?utf-8?B?K282Y3d6NWZsSlVtZEFQR2JDdE5EK0VHaVkzVE5xWWtPQkNNRTBkRjBLZ3JG?=
 =?utf-8?B?UHQrU3BHZ0tWcXErczVVY05NeEc0VmdaY0ZKMXFlUXYydWo1bW9aN09oUFRm?=
 =?utf-8?B?bnFqLytxdkRaOVZ3Ui8wQmZ2cEhPcWszdnNYNmRMTjVlN3pqVUE3OVkzUmJs?=
 =?utf-8?B?eHhTZ3pMcjYxdzJSQVNpTCs0a2NTOU9Qa0VDelV2WmlxbTRlYXJZcFhqN0p0?=
 =?utf-8?B?eWdBQ29Dd0VUQlRKWEJ3cDlmQ3RwYVhkblJMazdwRUJXYk8yNmd2UVhMWWFl?=
 =?utf-8?B?cE92YThEb0R5UlBCODI1U0ZrV2pWUDFya2NMeW54a0N2U3lUK0ZrNE9XUjh3?=
 =?utf-8?B?bnc5MEhyQkhuUFFMaVZ1UTlNWWYvYitybEl3VEU3Y1VwdDVaaCtGcVR1Q0NT?=
 =?utf-8?B?c1V1NXhpUXhnbGorNE03TDBBejM2S1dCZFNiaEI5UmhZdFEvaE92QzFFaVZp?=
 =?utf-8?B?WmRST2JpUGxWTXhNbXJNRTM5c1FRK0FmUVVScXlWaytwMmJlK0RVOFFXaVdB?=
 =?utf-8?B?OWpTNi95LzRjNjR2ZDE5S2VTOGo3aGRvSTAyS0o5bWVSNm1LanNJWjVOdmdH?=
 =?utf-8?B?Q09QU0dsMXZ2YlNlbVNDek1Bb2Z0WW1hOWFrczJFbk5EaldmQWJNZmlvQURQ?=
 =?utf-8?B?QmUrY0srL0hLMkgreVY3Ylg2QzJDOTZaYVd4eWJiYk1zd0NHSVQwRjJzT283?=
 =?utf-8?B?U2FiajFrR2laMTNuYzdSczQ0S2tmNStaWXFiMW5xa1RNTUVSa3ROeXB0d3dF?=
 =?utf-8?B?Qnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1fa9e23-46c2-4470-9e25-08db66d3121c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2023 21:14:53.2515 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PIZAuTM01pIPRHJqZ+Be8py0hrvAKfkYqbzOi4oR9O3yqwlnWlQCKZbP56KaaR5lacgOkrFs9KWKOElJi76kbth4gsT4Xa0hj9AgxJfGmG4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4964
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686086097; x=1717622097;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XG+XwPNGsuhRlprl6bffcVNuIhNGL7VdlkO4MPidtsE=;
 b=RYItn0lSoQgGtO4Ez0uojwAg8C0RVcEOosq7P+illypRkS47V3A8Zvn1
 MW0aY7N6ZBHRznfRTGT9ZPKtpqXGzj0fG17h/C7NBfDeFhxOIDjRZerWR
 MKNFxWZoKqTo1AxKG0we++9D4VhBhLKfG2ECKlmfFqok0mE/6CdmcH6Qa
 ehYO/Z+uEwlzdLNbmoElvSAJeVHWp4k5irJlDJw6IoS0IoqWj+5E8EsN/
 r1PtbvdLnY5hvyfLMkBNoj7AGaaFrGVEy4MhVTxf9ccCd9it4tdhdtPJu
 m4agaqz7hrrHDnLCx2SMuZsm3WaLGDYWVQQeK6JxwsysTs/2mLVxH28eY
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RYItn0lS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: clean up
 __ice_aq_get_set_rss_lut()
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/6/23 18:39, Simon Horman wrote:
> On Tue, Jun 06, 2023 at 05:42:53PM +0200, Alexander Lobakin wrote:
>> From: Simon Horman <simon.horman@corigine.com>
>> Date: Tue, 6 Jun 2023 17:38:19 +0200
>>
>>> On Tue, Jun 06, 2023 at 01:11:49PM +0200, Przemek Kitszel wrote:
>>>
>>> ...
>>>
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
>>>> index 6acb40f3c202..af4c8ddcafb0 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_common.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
>>>> @@ -3869,6 +3869,30 @@ ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
>>>>   	return status;
>>>>   }
>>>>   
>>>> +static enum ice_lut_size ice_lut_type_to_size(enum ice_lut_type type)
>>>> +{
>>>> +	switch (type) {
>>>> +	case ICE_LUT_VSI:
>>>> +		return ICE_LUT_VSI_SIZE;
>>>> +	case ICE_LUT_GLOBAL:
>>>> +		return ICE_LUT_GLOBAL_SIZE;
>>>> +	case ICE_LUT_PF:
>>>> +		return ICE_LUT_PF_SIZE;
>>>> +	}
>>>
>>> Hi Przemek,
>>>
>>> I see where you are going here, but gcc-12 W=1 wants a return here.
>>
>> So that it can't see that every enumeration entry is handled here? O_o
> 
> Yes, that seems to be the case :(

it's the same on gcc-13 on default (make M=...) settings, I think, I 
will post next version that is passing that build, even if to make 
integration with new gcc easier
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
