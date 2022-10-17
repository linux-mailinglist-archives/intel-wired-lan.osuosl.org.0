Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B83B601B17
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Oct 2022 23:13:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E915D404DD;
	Mon, 17 Oct 2022 21:13:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E915D404DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666041212;
	bh=M/78/IUHwc/vclQJQV2y+Wz/Akl3YTjpTHFB0lFP8HE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gv4c4IASVxpBEK/Uz8icmaMruq6Yjp9Dfxhbs3NFkQ6tWOgb2z8yC55MhfXID0n3w
	 cmc2XlyqLmnuuDo29yURUDufccvLI0L0oAZdOZinBUYc6RHHgMfg6EA5j3AaU7rDKi
	 35MwbZ6V1+wIHlUFOI9r20JJiEpkMCvcNEhfNTs2N7fS+MjzAvXCb4fLRWxvB4BLeo
	 Fz3A6k5mn4bCmt5M34fkVlKA0V2+M9tOn5iciRN/p6CktTwyXh9QZt2AEXLQ4Lh4ke
	 kE5SjXJfy4jplkSLqvY54XQiH/eeY646dbvSDk667mhiFHaLZrsc5gF0y44ac5pTFO
	 Q6utCusl756jQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fNoT9vs0NlTk; Mon, 17 Oct 2022 21:13:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97766403E7;
	Mon, 17 Oct 2022 21:13:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97766403E7
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B65161BF291
 for <intel-wired-lan@osuosl.org>; Mon, 17 Oct 2022 21:13:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9062E82CAC
 for <intel-wired-lan@osuosl.org>; Mon, 17 Oct 2022 21:13:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9062E82CAC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mMnzuqiRA96N for <intel-wired-lan@osuosl.org>;
 Mon, 17 Oct 2022 21:13:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C80D982CDE
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C80D982CDE
 for <intel-wired-lan@osuosl.org>; Mon, 17 Oct 2022 21:13:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="304660162"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="304660162"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 14:13:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="957491946"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="957491946"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 17 Oct 2022 14:13:18 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 14:13:17 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 14:13:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 14:13:15 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 14:13:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q9YvtyCwEAn15/cHGmN/VS5OeLnwrYnFKw1jA/JtDAiiS5176nWsgdZzd5GxTj0SGbd94E/rsXvMqZYEPwueXBBRZSKbi+8ti/GxTUF+IqtxLBf6eNRjEtouzps0hBfg8oS2ItbYmNhw3YneKy7dmbnUr4ShOa449H5bMEuqr0J89Hmr4aTk1ByZf7IxhPHvRrXfcY6w4Z7f5QumoakskP0g81cVsvajuQsvazf2KsyKT/neqRrXgq3QNqF/omo6l3q6L/1VJjLtFwK9693stOBTBBVWAM9cAQPtSWPqjwxocuhEGNS2Hz/VfrdfEX2s36m96MdK83ToOFPSHXls1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vb9qRX9/GBGtREykEXuZNDYCwmXAg6fpK6Cru17XSoU=;
 b=DWwQoKBllc+OrQ9nwprFEEcYh56veALZwtYh1uCpYR2PZmb1ADAKoBhnowDiOQGLXyGd0/sfU/vEZ9ix9xRNogZPnHGI1hM5F4/JF0xiKN+QQa2HqWAPr512KIFnT6nqB2GkCsFju+jDijcEuXxjc3v6KDszD1Prs3VYhho8G7NT/epsCRoHfrIqljnhi++r0olP3kghCvDqYQ0N2k+DRW/aNvi3HBb84ueyWtfB8RGmwHGx43Bcg2nUPKr2LwCmNG3vPwPo3pyr7TddAEOIwU8P7luhZao4n6O21281XkG/ckCfQgGVxOHObWxkKfdmrotO8+Z6rWFeP8+6y6r3gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by MW3PR11MB4619.namprd11.prod.outlook.com (2603:10b6:303:5b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.30; Mon, 17 Oct
 2022 21:13:08 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::19f4:9008:905b:3b8]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::19f4:9008:905b:3b8%8]) with mapi id 15.20.5723.033; Mon, 17 Oct 2022
 21:13:08 +0000
Message-ID: <b58bdbc1-9da4-9093-6ebe-7f205cc6b1b3@intel.com>
Date: Mon, 17 Oct 2022 14:13:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20221012155535.666933-1-benjamin.mikailenko@intel.com>
 <CADEbmW0wNym5TJiXeJ+zABb3a5eRvSdPZqWYnDwB6KnXUYK8nQ@mail.gmail.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <CADEbmW0wNym5TJiXeJ+zABb3a5eRvSdPZqWYnDwB6KnXUYK8nQ@mail.gmail.com>
X-ClientProxiedBy: BYAPR03CA0036.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::49) To PH0PR11MB5095.namprd11.prod.outlook.com
 (2603:10b6:510:3b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5095:EE_|MW3PR11MB4619:EE_
X-MS-Office365-Filtering-Correlation-Id: bf168996-6ddf-4fa3-da43-08dab08463d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zDvlYywrG0IhGQZ22wicZc90HCQ+epfygWGs8mtKtS7G1tDaS6/QVvPtLJK8x2fdyAdW4WdOS6odMNnU3gvYFnwAlLpHFu7sqJGr1SPWznP8FAw2Nr2Qz9jDrhV1AQGHG+7pN07o3JRJItTMtMJQniSluQvZBEVhZ3xPJVnTbNpiPyDWhCgPl+3Xx/NIg/U25aBx3rV0cVRoWEpp+Bm8Q0eOn1SAnBdKOLgdKJnNVyv4TAN7AWJ6miFRsz7NGOI8qzK9nV3rXUSRiZNekJULrUC87LkHwhCxTofEQ1gRfU2+TS2oEMCqn4VacgTCsByAptqFiFTaM4/aH3RwVXJIPlX7KEn/o5LKT2Ic21tsymU0sZCc4JYZcD8k0eXGN9ce8vNF4gkHMZ9Ah0MGXtTyWgoP+c9sDLfxIhcm/Vcvxv32dzvlGnmiutnYPk1Ev7LvwMBR3cKJNxyyOXqQJqiDVluMVHb+sNWhX+TrSGo+NvuohrWPEIcHb0E0Lrz6oJKqLyDtbawNetR8dHo2UxUFNMNttJCYTlsHoAUAU8ap2IkHPI/DIYVc4dZzN3oBA3OrEQf/0DSUhgxyexSSHpcgO3FeZCc2QAJ5Pp3yqiV2yaVMvZkViCGDfGs91wC0MdokDbJFLbwMTv/mEaHDLUdGev4DxYUz8f0kmDe22gmT3tZFFQ9PZh6A5QXaNWGrnBJs0s9IzzE+PUN5Ys68UicANsVsoMLDuzJDnF/FcK4f98/SxWgM36KFnkkZ8nhAcePZEcGLcznOHNQ4lPPNq6wKnblXbwFvS20ZikmV4DzLEYw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(376002)(396003)(136003)(39860400002)(451199015)(6916009)(2616005)(186003)(26005)(83380400001)(31696002)(86362001)(82960400001)(5660300002)(2906002)(38100700002)(8936002)(41300700001)(8676002)(6666004)(478600001)(6506007)(53546011)(316002)(66476007)(66556008)(66946007)(6486002)(6512007)(66899015)(36756003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NEZkU29TK0Z1clVoNGRlMUZja1FuY0k1WDVDakRuTGRQaUlxTlptc3Jkd2lQ?=
 =?utf-8?B?K3Rub2lPSkVYM0t2QW1oTFdlN2lhNTVPYXN0ZXpRTDA2OHZ6by9VcFAzY1hN?=
 =?utf-8?B?YjdFRDZ5UmZEQkQ3ZUtBc2oxYSszL2JWTWVKT290WXNnV3VyTHBTRFZzc0dF?=
 =?utf-8?B?K1lLdGlRNExZb0M2YjQ0UzZsQmsyeE1mY1JtRHNMQVNvRnVJRVQ2ZWg1SEcw?=
 =?utf-8?B?WG9YQ1g2OXp6azB2cU54ZDVRYlMxMUp0aDd6UElwK1NJVFZBTURDRnVnUmI1?=
 =?utf-8?B?alR0blRkM3hkTnh6VzVYR1hhVU1Hb1A1SGRwOHlDaUtRMklyeTVvcG5zZ0Vt?=
 =?utf-8?B?MEpBK243QWFnOTBWeXlzek9XY1hrR0ZmWFZFTVl5T2NGaENpUUEwYnNPK1ZY?=
 =?utf-8?B?MHN1VmhCM2ltdXNzZUxWQjVmc3RCTUhhUkUvQlBSOHk3aG9RcWxYMUwvc3BJ?=
 =?utf-8?B?cWJPRXZwQVI2ZmJTL2NxQ1JKNDRNd1YzdVg2bE9HZzl5Q1hsM3RJeFRZRlBi?=
 =?utf-8?B?ajZnRWIxTWJaYXlxWnFNajFYMUJtNDdBUXhHbWltbTJleDZhK3o1N2N2cEhG?=
 =?utf-8?B?MThDeEVsNTZ0NFpGK1FsbXVWVGdSbW4yMjQ0SzlWbmkwTldwV3hpWjExYmRk?=
 =?utf-8?B?c0NOcE9GQmdENkFjTGkwcjZwVGk1QUhCenc1OU5kWkhtR0xxbU1TYVBzTWNj?=
 =?utf-8?B?QTRHbzFVcFJSWThNaTBzNDRwY0FSU1FwMWhWWTNQVy9vM1JrY2g0R2hzVnl5?=
 =?utf-8?B?WWN0MjRCVyt5VWF0TUMrTjgyYXJDVFhhM2xIV083cGR6MWpmM0Z6b2RnaW1C?=
 =?utf-8?B?UGp2QXYwQTJzWWxRbjFXamxQOVU2OUFLdi9ORnZaYWhoaGVldDJpVUk3bDY1?=
 =?utf-8?B?c05ydi9Jb2dBcjVJOXJsODBrUHQweHdzQzh1RWc1RnFpaW03WDRIWjcwSmx0?=
 =?utf-8?B?Wkw2N1l5ZWZvMEVYNCtndmVQYVFJU3N2SGF5NWMvTm04N3dLQ09PZFpiS2dU?=
 =?utf-8?B?S2haNFpIbG41WkgzSjg2Z0txYjRYM0kyNDNFd0RTdTc4clh5NVI3b210Y2hs?=
 =?utf-8?B?RnlFand1TmhrUUFqeUZCZCtXOHdtYUpXdGt0ZXJoeXZXaFFsdjZsRUcwZFpu?=
 =?utf-8?B?Zy9CZSt1N29DdUh4RDlaN2tEUFlpeWI1Wlg2NHNxU1hBQmR2azd5eCtXbHhl?=
 =?utf-8?B?bjRvQitMaEdHREVKWXpSVDZ0SlY5TDVVTTFucjYrZjlhYWdJa2REN1JvMEJl?=
 =?utf-8?B?Y1JhLzI4ckY0SjVzU0dyaDRqUVkxYXFSVDMyVThxbHhQV2pEUE1raGREVlB2?=
 =?utf-8?B?amVQWHdPV0pmaU1tcGdjM3VtQWdZSzNRMzJyR1kvNkR4R2RlWi9ZWTRZcWlY?=
 =?utf-8?B?KzZiblBKRXhOc2tWb2lKb1JOUTNTWlk1dit2Mk4xOWMrRGFUeDVJUXE0NFFr?=
 =?utf-8?B?akltTDU1WjlvTUF3ajdOQ0FkRE50R1NhMXh5aHJwRlRZQ1ZWRmlGSW80Qlpn?=
 =?utf-8?B?a21xcTRGM1RQT3FuNW1GVHpRbzZlY3VIb21oQ0V3MlhYWnpRMjJ4SWtwbUFD?=
 =?utf-8?B?YURaeEZmcFp4ckUxNGdSbllwbkV2eEN2WER2MkQwOGJHM3ZYYmNLYngvN1h6?=
 =?utf-8?B?UVBXSitlUEw5UzZ5R0RnY29tWlo0NmpKUkliVmRqWmNOK2xRZE1kamd6b0U0?=
 =?utf-8?B?Nk1adWRzK2tTS1c0REJVckh5MUU2VWlqWXlyRTZvMEtSZXpBNkFNejdzaUcy?=
 =?utf-8?B?dWlSNnFDZXQ1RkhERlZmd0pDUncyZzJhbEVNSktDMjBjVCtSOEEyK3pMQk9m?=
 =?utf-8?B?NWl4dW8xdDQydFVsMWwrNEtlNmhTV0FJd3B5Smloc2xhZmNLZVRtVXdjanV0?=
 =?utf-8?B?VzRkQzRyTUwvcTJkWkU2TWdveHllSXQ5cWl2bFZxWkdnS2R5aVFYZjZ1MlRF?=
 =?utf-8?B?OCtPRE5laEwzM3RVWGZPUUYxakh0dDJkSFlkdVZRYUZPYzRLazdraVFyclhK?=
 =?utf-8?B?QkJrR3NRZnl6MENDMm1QakV4UnJ2V1JWY0pNaFo1NTUycmxwTHh6dUJDVXdx?=
 =?utf-8?B?TVN5U0NqdEpHR2JjYlk4K1FJbjkvenIzZmxuRDRoQzB5ZXVkVW1vblNHUldJ?=
 =?utf-8?B?VURLendQSG9ESnUvaHEyaXl6RmMzRVZRUkhjUU9XMGVkaU5XUk1nV3A1SS9k?=
 =?utf-8?B?d0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bf168996-6ddf-4fa3-da43-08dab08463d7
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2022 21:13:08.5014 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f8soQKjN2rWPMoqqsSoI65uk6TSLSmcQAeRlC3zH3OaIRuk9hH8LAbBuIyJJiLUhP8GSnDPN7bmzLrFiAcnTyDJVXu97/Bczaripc2GZvbM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4619
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666041198; x=1697577198;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=e7NA62MnxBD9GHZ7l2sIP7ekIg+91nO3afL0o0gajmM=;
 b=OOjj3NRahKw2pqFHJUsiDDDURWdlzoIYEfeFX87dHpNL7chjfOnr6hvT
 ugX2efkUo5cE0N5p2o6JizzgEkvKRLiELVwuLH9jP6azh+0gbH0vOXcSn
 53ak4U/E7JLft/Ke6yRdZp4y2H9VQdlq2PZeFl3dsB3eVzPwRYvwNJ7gb
 y0AkhDNIhCz4JYUDf4Qo4cPDKrDjbtw7KxXxRMl/XVZ4l7HfhAhUuYzKy
 gqeoakvRqaoNCUXnGIDHF08A3uSiTzvayXl6LNc/jGlRmCuE3OtCEm+Ye
 Z84FwDx8jpr5aQs4urOIU/o1d8NK/csy1JsCmp3XrJVvd1gi//GftkWaU
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OOjj3NRa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net, v1] ice: Fix l2-fwd-offload toggle crash
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMC8xMy8yMDIyIDg6MjUgQU0sIE1pY2hhbCBTY2htaWR0IHdyb3RlOgo+IE9uIFdlZCwg
T2N0IDEyLCAyMDIyIGF0IDY6MDMgUE0gQmVuamFtaW4gTWlrYWlsZW5rbwo+IDxiZW5qYW1pbi5t
aWthaWxlbmtvQGludGVsLmNvbSA8bWFpbHRvOmJlbmphbWluLm1pa2FpbGVua29AaW50ZWwuY29t
Pj4KPiB3cm90ZToKPiAKPiAgICAgUnVubmluZyBuZXRwZXJmIHRyYWZmaWMgYW5kIHRvZ2dsaW5n
IGwyLWZ3ZC1vZmZsb2FkIGluIHF1aWNrIHN1Y2Nlc3Npb24KPiAgICAgY2F1c2VkIHRoZSBkcml2
ZXIgdG8gY3Jhc2guCj4gCj4gICAgIEJVRzoga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5j
ZSwgYWRkcmVzczogMDAwMDAwMDAwMDAwMDAyMAo+ICAgICBbwqAgODYxLjUxNzgwM10gI1BGOiBz
dXBlcnZpc29yIHJlYWQgYWNjZXNzIGluIGtlcm5lbCBtb2RlCj4gICAgIFvCoCA4NjEuNTE3ODA1
XSAjUEY6IGVycm9yX2NvZGUoMHgwMDAwKSAtIG5vdC1wcmVzZW50IHBhZ2UKPiAgICAgW8KgIDg2
MS41MTc4MDhdIFBHRCAwIFA0RCAwCj4gICAgIFvCoCA4NjEuNTE3ODExXSBPb3BzOiAwMDAwIFsj
MV0gUFJFRU1QVCBTTVAgUFRJCj4gICAgIFvCoCA4NjEuNTE3ODE1XSBDUFU6IDYwIFBJRDogMTY0
NzEgQ29tbTogbmV0cGVyZiBLZHVtcDogbG9hZGVkCj4gICAgIFRhaW50ZWQ6IEcgUwo+ICAgICBb
wqAgODYxLjUxNzgxOF0gSGFyZHdhcmUgbmFtZTogSW50ZWwgQ29ycG9yYXRpb24gUzI2MDBXVFQv
UzI2MDBXVFQsCj4gICAgIEJJT1MgU0UKPiAgICAgW8KgIDg2MS41MTc4MjBdIFJJUDogMDAxMDpp
Y2Vfc3RhcnRfeG1pdCsweGIwLzB4MTQyMCBbaWNlXQo+IAo+ICAgICBUaGlzIGNyYXNoIHdvdWxk
IGhhcHBlbiBiZWNhdXNlIGR1cmluZyBsMi1md2Qtb2ZmbG9hZCBjb25maWd1cmF0aW9uLAo+ICAg
ICBpY2VfaW5pdF9tYWN2bGFuIG9yIGljZV9kZWluaXRfbWFjdmxhbiB3b3VsZCB0ZW1wb3Jhcmls
eSB3b3JrIG9uIFR4Cj4gICAgIHJpbmdzLgo+IAo+IAo+IFdoYXQgYXJlIGljZV9pbml0X21hY3Zs
YW4gYW5kIGljZV9kZWluaXRfbWFjdmxhbj8gQXJlIHRoZXkgZnVuY3Rpb24KPiBuYW1lcz8gSSBk
byBub3Qgc2VlIHN1Y2ggZnVuY3Rpb25zIGluIHRoZSBjb2RlLgo+IMKgCj4gCj4gICAgIEF0IHRo
ZSBzYW1lIHRpbWUsIGljZV9zdGFydF94bWl0IHdvdWxkIGF0dGVtcHQgdG8gc2VsZWN0IHRoZSBj
b3JyZWN0Cj4gICAgIHNlbmQKPiAgICAgYnVmZmVyIGZyb20gVHggcmluZ3MgYnV0IHJlYWNoIGEg
TlVMTCBwb2ludGVyLgo+IAo+ICAgICBGaXggdGhpcyBieSBjaGVja2luZyBpZiByaW5nIGV4aXN0
cyBiZWZvcmUgcHJvY2VlZGluZyB4bWl0LiBJZiByaW5nIGRvZXMKPiAgICAgbm90IGV4aXN0LCBy
ZXR1cm4gTkVUREVWX1RYX0JVU1kuCj4gCj4gCj4gSXNuJ3QgaXQgc3RpbGwgcmFjeSB0aG91Z2g/
Cj4gU2hvdWxkbid0IHJhdGhlciB3aGF0ZXZlciBpcyBmaWRkbGluZyB3aXRoIHRoZSByaW5ncyBt
YWtlIHN1cmUgdGhlIFR4Cj4gcXVldWVzIGFyZSBzdG9wcGVkIGZpcnN0IHdpdGggbmV0aWZfdHhf
c3RvcF9xdWV1ZSBvciBzaW1pbGFyPwo+IE1pY2hhbAo+IMKgCgpJIHdhcyBnb2luZyB0byBtZW50
aW9uIHRoaXMuIE5vIHNpZ24gb2YgYSBsb2NrIG9yIGFueSBvdGhlciBtZWNoYW5pc20uCklkZWFs
bHkgc2VwYXJhdGVseSBtYW5hZ2VkIHN0cnVjdHVyZXMgbGlrZSB0aGlzIHdvdWxkIGJlbmVmaXQg
ZnJvbQpyZWZlcmVuY2UgY291bnRpbmcgb3Igc3VjaC4uCgpTdGlsbCwgc291bmRzIGxpa2UgdGhp
cyBwYXRjaCBuZWVkcyB0byBiZSByZWplY3RlZCBwZXIgb3RoZXIgY29tbWVudHMuCgpUaGFua3Ms
Ckpha2UKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
