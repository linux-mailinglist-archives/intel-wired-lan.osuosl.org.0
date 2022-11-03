Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00385618770
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 19:26:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F3C1404C9;
	Thu,  3 Nov 2022 18:26:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F3C1404C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667499981;
	bh=QIbICLo+hSKyGVFShTzjsJ25HOVZMc25fSjDDpmSizo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZZ4oeNoT6btpU53nKUWLOR0bXdiYcE+2BaLWDZUHuYkdmKXK3t/yFG6in6Vv7XHEd
	 2AW1uPBkJGbE6+JSU6gnzhQ6bNHUmoEJx83zVKJIkH/pFtMAP8FIXQnOXHzpmtrdMG
	 4nwK06FnnvL5Jz1O6qfpWbILPNlfDeAVAxUCfPKgAXG9dzL6eJXnrqatxKCFtLA76/
	 NcH0SUUWlCK3ORnS8u8BjE6gB67rH9ABWWqDi0erjy0W9dP0wlzj9zHYf/Bno1KSsj
	 +GXqCLrnCqTFQEcdFgvdrLzYRbrKH8/ib01PtyiCr0zYe+OQJhAjm3EUutuLr80uos
	 o0bk1QQpt5WOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f8jyt8uTRLnn; Thu,  3 Nov 2022 18:26:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 74A54404C1;
	Thu,  3 Nov 2022 18:26:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74A54404C1
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2AAF31BF3DE
 for <intel-wired-lan@osuosl.org>; Thu,  3 Nov 2022 18:26:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0E84241797
 for <intel-wired-lan@osuosl.org>; Thu,  3 Nov 2022 18:26:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E84241797
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hBQstNWVSlIk for <intel-wired-lan@osuosl.org>;
 Thu,  3 Nov 2022 18:26:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0481C4177C
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0481C4177C
 for <intel-wired-lan@osuosl.org>; Thu,  3 Nov 2022 18:26:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="309762515"
X-IronPort-AV: E=Sophos;i="5.96,134,1665471600"; d="scan'208";a="309762515"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 11:26:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="585897050"
X-IronPort-AV: E=Sophos;i="5.96,134,1665471600"; d="scan'208";a="585897050"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 03 Nov 2022 11:26:13 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 11:26:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 11:26:13 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 11:26:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y+3GirVsqagpM6/Cwv151R9wnMv46k5p3jZx1D+ZlIbv8M6m1T97MLMQ7Z4vaxF4Q4GyafvlLGfxU0r5HIwThaLStgEMSyXsyIxEKNz9JRsxNOw6XV0FtXNS8kYyq16nYquP5bpBM2p0yRk8Mxk811IZl3oa5DnQqSsK6+H56XJBpmfB+00kGuDRrdtbVzM2D0TuTj/j8NXY9liq+pkt0pogsHGT7pjkFLTk2a3jnrtKe6BqZi0uQXB4JUyeIThkUGrOjbzNzZJeCdZ7dFDET4P/1sv+arT9KDeuDfpxL/YIlSGcL5GnySkaK0HzGrus3dEGW6fOXWEvz0d68uvi0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ILGLs469cyrt8xxXaGOguRuaRK2jTbSSBxuReu3FwQw=;
 b=QZ8ugyF34rJWcW/IkMjdpsHeEXlPRcvax68tDvDgDgK9jmROyMfUMFEcZngFullTFby/7SdYQKBSwWJDUA07b1HA+yIFZrRBcuKhUtKcY7SU+onVihFxPUlEx3/gZtI/j42vvMpjtFRFepSuBoYEtNxAV43sNaAtnawlVRUTY8N7nGwIrvZZAxpOQCVgIbGtEOgOoQypBaQyJTDhtAP6tgm49Q5FcklAA+FASCTp0eT+wyKVQComFQyrMCt+i765nwuxci6LSx8BeGaK3wsSjnUNACoz+y6O4wGgkycGoUMP5Y+7LqXQqeS4IzRb/YbeuXc22P1NPfXc/mkrzzM9VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM4PR11MB6405.namprd11.prod.outlook.com (2603:10b6:8:b5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.20; Thu, 3 Nov
 2022 18:26:11 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::87e2:5ca4:32bc:79bb%6]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 18:26:10 +0000
Message-ID: <f4ab8643-483b-665c-3ae0-62ed3ff97497@intel.com>
Date: Thu, 3 Nov 2022 11:26:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>
References: <20221030045324.25207-1-muhammad.husaini.zulkifli@intel.com>
 <20221030045324.25207-3-muhammad.husaini.zulkifli@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221030045324.25207-3-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: SJ0PR03CA0200.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::25) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DM4PR11MB6405:EE_
X-MS-Office365-Filtering-Correlation-Id: f8186418-c8a3-48bc-f943-08dabdc8e1d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rQS5n4IonTg0O28Waru+Hn9qhAnyvbcIRdVIrY8ZrKGT3TlRLhX0BnV3kkaWJvSjOHKPNvDYPC2q5A0g69BWjvyzO6MuhXRcRQtFqXNPLpzN15THBjMCP4xBE74NWfwDChQr6DKuw6boU6OMjbrZnmdW5GaMptptck2CjcB7eGbh1aStS4wGNStVSYDM1knV1erTDHUsxWhx8BrR+RIJQStWB4dvtDY3Id7MidhS9tyj214DvN7GRjQL2NYWdf/sdjfpg9YzF07kvzjBIsRhDmyU+fhK9vmPj5/wXU7ToQD2RIJvSkyPOrJ3fDBfOSp9AMhvWqT/f3dYr4P3IxYtSxysSxApUf86snUpP7yx0yTC++oK55G8a4IyoJkSwjDCL5gIVhhKhT3NdcvN9gqJHspUWhxxE989EdNDzxDWPIckQazldNWlbhueallg2QWRHbpRfDfl+yNztZpJnjqVN+YJB7g438N/gMGZUhxJnIt6l1y6kjqKn6Wm8IDz/59oIGYSNkraXMH0EPtVmugz6mgBVfVwPcAxWm/+lERrnrKNJGrFzoIBi7CtTGpCUgT+djdkrNAYMQEzPWL/W4xUVNesaIglrxNb7PqkdnGd8t6naqdivL8XrEB5I6SCXaNkgBhMHzWWV9wcMyWwjWVW9ziIIbEjS/Pobm/tZxlMItGBGX0daiTwXREEXKaWehhAvbSIgZ1tl3hdLBMWSn8Xd13JsCGaSlcD+gjmQInN9LNgxU4qYoHM2LAqlz4iD7+q9T8k795nqTYv3Hl//YnGda1KORhrWMmR8+hLDoyRS4U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(376002)(366004)(136003)(39860400002)(451199015)(36756003)(2906002)(31696002)(5660300002)(66556008)(8936002)(4326008)(66946007)(8676002)(66476007)(6486002)(316002)(82960400001)(41300700001)(31686004)(38100700002)(86362001)(26005)(53546011)(2616005)(6506007)(186003)(6512007)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TkQ1WTFBYVYxRWhKR0FiLzNRY1llWm9DaE82VnNZT0xVQTVlZUc4bTdqOS9z?=
 =?utf-8?B?OFpLUzVQay9BRXFNR0FUU0RlTkFVQTZtbUlac1hzT0FzTXl3TVFHM05DNHRF?=
 =?utf-8?B?OVVYRmlDRDJWcW9rNVkxLy9tZitrNGtmcit4WW5KaGxPWnpiV1pnZUdrbzEx?=
 =?utf-8?B?Z0hsZWRWUUhScEJwNWVJaGRmb3lTY1BkZERYTDk4MGFvUzkxMWFZYm9rUEk1?=
 =?utf-8?B?MzdDQ3VIaHpGQ3BiSzBQMExOZGNoUmtzcEFIakhUbXIzWXplMnRyVnNvNUR5?=
 =?utf-8?B?d1VjMUcxc05QSmtTT2lyUFMzYUlsM1MwTnIzbU5zcGFONUEwTWlIclBWYlhm?=
 =?utf-8?B?RnNrUm8yZm4vaVZOZml6azV5Y3dtdytxam5pc1N4S0pudGdUaUxxM2ZlZXFq?=
 =?utf-8?B?bWxpclY3dzZySC9XM2VyVGVuZDZwcG9CUG1abUtadUJGMStrTkozMmZWWUp4?=
 =?utf-8?B?WnJ5VVNJd2NyclFRV05HbEVNVURaS0E5ZkpPVC9YVzh4SnBkY09IeWJVWWp5?=
 =?utf-8?B?a2tWT0U5YzA1NW9NOGRVYmFrWFo5K0dEaGUyZndRbTBMUUxhWm5DV0xiQlJi?=
 =?utf-8?B?V3FpSXEvSWVoTm5DditSMmgydUU1MGtmWkk2US9SSW50ZmVsT1BtdEFRNWJh?=
 =?utf-8?B?a0lMYmtVTVR6RHZQWTF1aFI2Q2JWeUJYeHJQanlSOHFFcllBUGtHVTQ5QjRs?=
 =?utf-8?B?M0t0anBFZllNK2MzV0ZqaUd1aHhBUGx3L1lpZ1hqV3NhczJsVjlIeUh4ai9s?=
 =?utf-8?B?VDRuTDJRMGRQMEkreVdYc3VzRTQydlVZeUc2ZjdVM3RISTNQYUE4NFBvUXJ4?=
 =?utf-8?B?MWQ0QmZiMFZhK0NLODg5dlR5OWF6ME02bksxR1liWERoKzdnbVNxRUVKeFY0?=
 =?utf-8?B?U1Z4YS9GTy95VjFzc21QN2dSTnNVcGN0UGMrT1Z3endIcUdMNkIxL2hmbnpn?=
 =?utf-8?B?b2FTd2JTamhFZHlEUW13aEJkNEJ6SjZwVWRsTU9qODN2bld2bEwwWGRDLzZ4?=
 =?utf-8?B?RU1LczFrZHlxZUxybGwzckZNeDNZY0d6Nyt1em9aZXBOa0JmYVkxaGNGbVN4?=
 =?utf-8?B?aUNPdFEwVGFHQ0MvRUdVaUhza3hFbHErdWEzR3dtVkU1ekFtTi9EUXk0S3c1?=
 =?utf-8?B?OU1yWjJhbXVpLzZtdE9FOTRoVnkySlQrc2Rac2c2NHV3T1FneFN2NHVzdlRn?=
 =?utf-8?B?a1JIOVNRNTdDbFl4YlN6eWhEWm5SWHN0WWlMSzRqeTdENWpxd0tNWE0rSXhL?=
 =?utf-8?B?a2IzbzdjZ01oZTd5K3EvTmpRVWJMQ2RuNU1QNHl1anhZK0NGb1hmTW1WRW1L?=
 =?utf-8?B?Wno2c21kN1JmZDFMdkVSdjdqNklveS85VVdQSWk1SStIdDlUV1dwbk1mY0Iy?=
 =?utf-8?B?cEViMWI1Tmw5MUVGY2owS3hNaXRPdTg0cXMxWFBDcDQxMHdYVnpSdmQvOXN5?=
 =?utf-8?B?bFlnTUVhODZpbjNFUmR2VnpsSUpoa1RKSGp0eklWSmE3QURwV1dkN0FnRi9z?=
 =?utf-8?B?czZOZ1lkMFBIcUNvTGRaTUVlbVBYU3FuYzhGUUtFaE0zaUhpTWtPeWlzVHpB?=
 =?utf-8?B?RFlPbWpDM0svSzFKQkNMZkVGMnloTjk0aTh4NzFzUFB6OWV2K3ltVWQ3dFV0?=
 =?utf-8?B?MG13WTJ3UkdqelhmemxaeEZ2ZkZ1NzA4TXN0a0NOTlVYdUU4Z2RxYnVqTTJi?=
 =?utf-8?B?bnFSVWJRSTYvaXJwRVAvOFBtSWw3SGNNWTZxQVZjVUdseml2R1FiazFFS1hv?=
 =?utf-8?B?NjU4dU9Ta3ZTWWsxSDMvL2I5WDJPZml2T1NHUW1HMVVHQU4vRWJRQnBmcFJT?=
 =?utf-8?B?MWV0WVA4UVVhL011Y1poRDF4SEZsVEwrc25QVUxEWVVIYlUvOEN4RGIxNnk1?=
 =?utf-8?B?dG5hcHFtWkhQRkhhdE9OcjJvbHlZc2l1ejgrVzNoUS9jT1UrNmlQQUw0T3NF?=
 =?utf-8?B?dUpYcGxxRDFtemJna043UlZTbUxPQWlJMEVpUEMyZkRaSVdsMlV4VTJZaW5Z?=
 =?utf-8?B?NGh1VjlRdkd2TFkvaWpEa3VVRDBqbkx4aHNlYVlVOGh1Y3N6aUxUUWhZWm16?=
 =?utf-8?B?S2hUTThXeUJIZWF3THhSaFN2b3UvQlMvWUJPZmx1WTJzeWJBSzVkeXhJa2J6?=
 =?utf-8?B?TVJDNUdBMlBrV1RwR2txdDNMRnVLa0tJaW9yeW5wb1pteStaVnFrSlN4cDlM?=
 =?utf-8?B?TkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f8186418-c8a3-48bc-f943-08dabdc8e1d3
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 18:26:10.8252 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gERCfO6TTumH8mkMtOzoBjKy27h0SthxvMnjMwvbqyDJsiAksw6ZWbdSu6kuXmuUSzA48Hp+UXVWb8SkGE4iwN/7ipsuqVqocoZTFQdX7LY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6405
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667499975; x=1699035975;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JAKYnVNRpnwfzXVU+0sVE6jV9tx1BqVeaX4lRSKznDk=;
 b=LprEW7zXtIWZtM1NqYyEoFkb1EWXQpmxCGj1MNvZ2yMtmpqZgtaw9rxm
 rztPeSM6PmXdKN47FXTiT4XfR0B8Ie3MD3Z6etAyklXG1+drlNBIC/6Ew
 PAPj9YZWTGCWEBlQ/PUtROXKC51c8v5yY8RNRiloKCKkMKqTsYCtlt/Uh
 SHBDN7obot3mtKb2DOp8vE7HQ4WId781nGRTmkT7p7z3HfmAKU+gxptRT
 St8P9EHgRtCtyRt9XJcF/gybWDaH1O0d3InJU/BsgGkZ7SvjYJG77pduF
 Qmnj3SA6kZUIrLASUV9Zjy91G/1rLlCFX4/+fst7ystcyImW6KWV9aKeu
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LprEW7zX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 2/5] igc: remove I226 Qbv BaseTime
 restriction
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
Cc: tee.min.tan@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/29/2022 9:53 PM, Muhammad Husaini Zulkifli wrote:
> Remove the Qbv BaseTime restriction for I226 so that the BaseTime can be
> scheduled to the future time. A new register bit of Tx Qav Control
> (Bit-7: FutScdDis) was introduced to allow I226 scheduling future time as
> Qbv BaseTime and not having the Tx hang timeout issue.
> 
> Besides, according to datasheet section 7.5.2.9.3.3, FutScdDis bit has to
> be configured first before the cycle time and base time.
> 
> Indeed the FutScdDis bit is only active on re-configuration, thus we have
> to set the BASET_L to zero and then only set it to the desired value.
> 
> Please also note that the Qbv configuration flow is moved around based on
> the Qbv programming guideline that is documented in the latest datasheet.
> 
> Co-Developed-by : Tan Tee Min <tee.min.tan@linux.intel.com>

Nit: no space after the -by i.e. 'Co-Developed-by:'
However, if this doesn't need a revision outside of this, I'll fix it up 
myself.

> Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---

<snip>

> @@ -240,21 +232,43 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
>   		wr32(IGC_TXQCTL(i), txqctl);
>   	}
>   
> +	tqavctrl = rd32(IGC_TQAVCTRL);
> +	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QAV;
> +
> +	cycle = adapter->cycle_time;
> +	base_time = adapter->base_time;
> +
>   	nsec = rd32(IGC_SYSTIML);
>   	sec = rd32(IGC_SYSTIMH);
>   
>   	systim = ktime_set(sec, nsec);
> -
>   	if (ktime_compare(systim, base_time) > 0) {
> -		s64 n;
> +		s64 n = div64_s64(ktime_sub_ns(systim, base_time), cycle);
>   
> -		n = div64_s64(ktime_sub_ns(systim, base_time), cycle);
>   		base_time = ktime_add_ns(base_time, (n + 1) * cycle);
> +	} else {
> +		/* According to datasheet section 7.5.2.9.3.3, FutScdDis bit
> +		 * has to be configured before the cycle time and base time.
> +		 */
> +		if (igc_is_device_id_i226(hw))
> +			tqavctrl |= IGC_TQAVCTRL_FUTSCDDIS;
>   	}
>   
> -	baset_h = div_s64_rem(base_time, NSEC_PER_SEC, &baset_l);
> +	wr32(IGC_TQAVCTRL, tqavctrl);
> +
> +	wr32(IGC_QBVCYCLET_S, cycle);
> +	wr32(IGC_QBVCYCLET, cycle);
>   
> +	baset_h = div_s64_rem(base_time, NSEC_PER_SEC, &baset_l);
>   	wr32(IGC_BASET_H, baset_h);
> +
> +	/* In i226, Future base time is only supported when FutScdDis bit
> +	 * is enabled and only active for re-configuration.
> +	 * In this case, initialize the base time with zero to create
> +	 * "re-configuration" scenario then only set the desired base time.
> +	 */
> +	if (tqavctrl & IGC_TQAVCTRL_FUTSCDDIS)
> +		wr32(IGC_BASET_L, 0);
>   	wr32(IGC_BASET_L, baset_l);

Do you need to flush the registers?

>   	return 0;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
