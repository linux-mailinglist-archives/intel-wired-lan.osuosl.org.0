Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6234A7DCB06
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 11:38:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3161831A9;
	Tue, 31 Oct 2023 10:38:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3161831A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698748735;
	bh=lSzweWlbYkUIOtHMeh5gA6KTONJbaWxabObyInOSjZI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5MlkRzmHwrCMO0dpMgjR8XMs1cbVecZhDZua8dzNhQvnRW+d6Jf49z0jM/rwd3ILI
	 6GgRYAVPNRDkKgkBYFlFuoTKg3WD+7fjD5MERN1N/MrBkE9P4sMtZBPsLitzpZOZmb
	 RWC0CMAK1V8FO4ujMT2aG4pQpKm/WhHeg9koErYS7crZuee4Nm1lPRp7IzCkhsqqiL
	 IcRjyqBaooCH/j/CVf83eNjftkxfVtrtqwuDORnge6g9IH3fdCXBWC8ZqEGzdvRmPb
	 aF2GnKsdp3Zdtt20yKqU9Uhexbhunys53FXC7ClxkD7FsAM1x7NCeaXwbWey1IHB0R
	 gUphI3DnmrtAA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rlupuy2rrID6; Tue, 31 Oct 2023 10:38:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A61E383521;
	Tue, 31 Oct 2023 10:38:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A61E383521
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF7691BF321
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 10:38:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B3674416E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 10:38:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3674416E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yOhWEO7blJ1s for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 10:38:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 83A4540A71
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 10:38:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83A4540A71
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="452535632"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="452535632"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 03:38:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="851203029"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="851203029"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2023 03:38:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 03:38:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 31 Oct 2023 03:38:41 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 31 Oct 2023 03:38:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mScCGnJ9bxPzft7xlmW6jbpuARI7A0jlcv3o4Iv+OGD1a7tAwMhnBfWtzF+vMrdt2rMrdlJvCzivTPPv3ePYZW5DeBbSL3MJcOANFsiESQhI/6KcpyWYSMYSP8XSa7Xga1Nr8c2gPYkxjWZvS4FLyJt7EvAOQFyr253u45pJvcqIqKMcmPmPLi8E1+2jNUalSBBFxDsJL7EplK4eQmuvISRu5aUYsX1QA6bEmuCIvwS3Wk4q5UevGGcNvn+KKFQy5pjteOiYyuI4NORGRBjKIdhR7/Xu+71YFNAPgF7T63dLlHsAvcsZ/HNyC2SJn5kJzouhH53MwZnHxHX36R9tzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=peklBJ2UahR7D6lQE2ZRa7n5ONgIBm/BZ8iFR4kgsKw=;
 b=mSLRLx3Ba0GVtITk80TOr4x954s0iM8nUKQpWQwMeeaQFmAXwEig2qW6BWJ+MbjlCVmJP7RWEX9ZDbn0HqzJ6N1q5jnTVuxKwY/Smr3D+hpWTIVGY1iMWQDEq1Pj9aPSjtxV6VUd5F3EDiISiqxxv7orti6SOX5GPmR58AWYwA1EPjoMJC9iEVidA2yowsDPJCTkmIa6d2rEd5SmeNlP+868GujGC6zf5/eeHGsNVU7ZrjnePHi1AlAu/fHPTuyPLzdE3sWf/sE7lbeupE8trwlFDCe4NNiqvLWBvZMPwnZ5SOShUwXu1gONztnmP13diiPwg8q6eUuDZh5TSpimLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SJ0PR11MB5582.namprd11.prod.outlook.com (2603:10b6:a03:3aa::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.29; Tue, 31 Oct
 2023 10:38:40 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097%6]) with mapi id 15.20.6907.032; Tue, 31 Oct 2023
 10:38:37 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Justin Bronder <jsbronder@cold-front.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] i40e: increase max
 descriptors for XL710
Thread-Index: AQHaBb5OiM8LKewLlkiniVMNFvgQgrBjwPZw
Date: Tue, 31 Oct 2023 10:38:36 +0000
Message-ID: <BL0PR11MB3122696E3C531245EF91D05BBDA0A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231023143557.18241-1-jsbronder@cold-front.org>
In-Reply-To: <20231023143557.18241-1-jsbronder@cold-front.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SJ0PR11MB5582:EE_
x-ms-office365-filtering-correlation-id: 0cdd1502-5572-4d57-a83e-08dbd9fd89e7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zSEyhd1roaEWeCVY9ZsqNZhS7dtFIyrAS373Nxu9RSAFrZ90JAM4K88B5L71LzO3+Dti56qXP5Q0N8XUozW4DqYEJdLwXsdUH7weigC+CCoDx3gkIOsDWQu0bnb4u2risY1pQVQscmtjZZ5ZtRau/4Sv7UDIhQ3pgnIEMOInjipGHevSNPmwbRsDjBJB0DZpnspmsNetNv3EDG+4TwZbwZm1Ax8og/Qm+wAz/bxhRN4aAGk76oVXjqdOIMZRrdQcWU2L0AB2vgQO6wnwDOjNfFG3bVJ93riauzpOk7yos8X0nyqVCmvZizQkgpHfQVTAM6FJ0Yck5xzJ3Kzn6muYQkBpgwiZ3a8JyFWf5vwjLXAPitnqRG35oqOXJ2xHoT4EV9wA+Ht/8PqpM3pA7nbi4MXdvinn3enDg+6cfIql5Fxgn01vn+U0rhkMvScQ08HcAXhi/Y8wMBtFUB562jMyQ4aJR3zPDMhfSE0/z8mpxNiJcWRwQu2vjXZfiTJUJ0tj0hQJx+/b0q2seeyQ9W9xYwplPINbji09ZjjZf5+h/KZqjUbqA45b7x58Vd39uqPFD2FmU+CxgjIGL+gqvg5IeaN/aZhp8syRnwl2ZcN83NPh1tnhw2UZ0AE7PBTzO8MI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(396003)(376002)(366004)(346002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(4744005)(41300700001)(64756008)(316002)(5660300002)(52536014)(66446008)(8936002)(478600001)(2906002)(8676002)(76116006)(66946007)(110136005)(71200400001)(66556008)(66476007)(53546011)(9686003)(6506007)(7696005)(55016003)(26005)(83380400001)(38070700009)(122000001)(82960400001)(86362001)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?h/0+3uSfdEjF1+ZfmvXokDPfw0TNQvs/4tti7V4/v/fAWfjOu9u0r758Sygq?=
 =?us-ascii?Q?NyqPFdQBQSFsRqEWDAbWZm0vkIqjXbZA5GbI/qovaIoxZJmf1G0VrG9Ns3yR?=
 =?us-ascii?Q?CjyQfHXFHt/3sXCxwWhSgffkT6ljNMaDKSruK4SI4+MWYWseJywW4JcaOWGM?=
 =?us-ascii?Q?xlwrTmwL2xfK+RPavrXEZ/cK3vflA9BeRGFlZiLkmOgK5BdBnokhTFj6F3t7?=
 =?us-ascii?Q?w5OmIYoi31oLQC5dbm9ziM+FgDKR/alcvlSNVE29UWiU6jcfrKHpcGIxZF5r?=
 =?us-ascii?Q?HYl5fJOIYXiQN72EedlE7Y1SJoqgMHtLvyQPdPKmz2b1vc1aUCRmWfMLmH8W?=
 =?us-ascii?Q?BZhZmYnjdFtLhU/sOgBzjNnDE+e4dCbFCdBNkIs/444w/z76PvaP2Cru2tFg?=
 =?us-ascii?Q?fVwDVAkvNgLZQOJdwEHnYMyFKhhVrpGmLf6zzonnHu7MBMLGiCFTzoHsl4Ng?=
 =?us-ascii?Q?lqw/BvlxbYUNJRNX67CqAhFm6jxGF/6nqCMbMfL0oX3GNTm4h7qv80t+8Rgo?=
 =?us-ascii?Q?bdcDHlS3T4ACJGcGhxUhuYq+ymvAqPgoAVOArGOE3BzrETR7xOJlhiY+1cGR?=
 =?us-ascii?Q?OynVYsHNmPO7cvhLoFFFwGBP5WHydVOGwXVeYR+58waA/OnAFEPUY0e2YvwY?=
 =?us-ascii?Q?UYmcnRJFn5G6ZOWNJJBqBvwcLEN6L8Mz+jn8H42PrsS2Mw+CgYNVodL0BdVv?=
 =?us-ascii?Q?Y4uvgeYYB2jd3v+mIXYy78yC3I4AdiUbD9JCV0WVhYBD3rJL3uzPP9mfe51k?=
 =?us-ascii?Q?ziR/kfHDaa0VpaTXmh5QNjOqbzLK6hUPJNKOLNM7GcUizBuRr+Ud1bmAN7PZ?=
 =?us-ascii?Q?UOz7YlFkfXnH+5Euv+iExeVXhvdhviJYFrg2cIUC1QWMqWkI1dAqcDBPXf4R?=
 =?us-ascii?Q?34moU3IF8CS2NGY8u2zLGeUoNtoEYRf6WrQlesQWdkaL+uDVJRbRIIkFpQCl?=
 =?us-ascii?Q?vqhIxjz61g8GTFDWju0hHCmRUOTDH9Y8DtAiH0ed4WpXsCUJlSTqIXBkSvXw?=
 =?us-ascii?Q?eKkDrgYOFspfjR6tFKGoQBYqmjUhHlFzZrVTCnAfMNo4mI38M5K6cS4KZ7Iz?=
 =?us-ascii?Q?EbayVU3DGFWwEgE8HqC3n1sbeCwbdWe1sfUIYYxybXHQ9tICz+5SxuvJsauD?=
 =?us-ascii?Q?gktVFMQ/IdRqLa57E9jyXagSUDTMHBisdzkSZv5WO9/TLlBaxWOcXAHSDnOq?=
 =?us-ascii?Q?+KhX+I5HGi4lUGvHwUrAkY37wAPelV8TmsSZIRwyNQU/0fvkqMxdUArfyzsx?=
 =?us-ascii?Q?sYKGf+AHZBTr4AqCvPbaAVdKUQI9cYuJpBe+MWsqDWOSwdmD4cbidAr1V+5E?=
 =?us-ascii?Q?AT8JaBIx/CpewDdHGXLwOlSiim83b5pl6IaVl2gyiC9WDBwW+BioNAoYTbKj?=
 =?us-ascii?Q?Mce4dg1m+vPJpaJHu2oLh1kGwIDJW3xCBDkloOwoERr6PfmjudSPVeLLNy8T?=
 =?us-ascii?Q?5xRsjzSiQ6BC7N6mkNuIrVHMgW69n9uAsIHK0rAXZ7EPHtm3vQB9w2z9jjA5?=
 =?us-ascii?Q?BxOiRq4wUWkaEamxzgDTlA9S4jT7GyzDqHU7tmObjULxcrFAnl5YTWgq6sbj?=
 =?us-ascii?Q?IBpUQZjh1umJfVkdGYurcZjPoflsPCGQ60EVMnaT+Hi9SiQ0nQr399JjQ6oh?=
 =?us-ascii?Q?Lw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cdd1502-5572-4d57-a83e-08dbd9fd89e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2023 10:38:36.6105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RNtQ+2fAQ1f8MtpnaOvjKMzs8EOf9BBPsPwLSFyQFKIr/pBFFnjzzaUjREnsJin66x8wMmXqcagep2mf9OahkVz+eTeNRK4NnOWbQ8FNmj/t5Nw8JiUQ9ygw1b34GOAO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5582
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698748727; x=1730284727;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pE+sHrMZANfb2R6QrpNykeM9l5baDCvS7nb9G4I9BaI=;
 b=M3G/+UHLMmZ382ow7NSnkdmVtZT408u7GEYcXeH5PLxpSPULMvAQmuQn
 hGljOKqpRjYDTu0d+lpMhwnFnoo7176t+9bYMWxtElbD/xuY3oe0m1mdH
 bnXL8liRVKXdTjVkWPt+6sb5XPid/PebU3S85T7iqzU4nbZ8UW/sjiecQ
 8c+h55FHxLFM+jG91B1DNpaBjbadLafKV8eHwFL+blFEdh7iUskUKAZGU
 OBmeffR9jVuKPaGh0lponzM1s0UslGrVjcYimoieGkI4PUKVsiPn1nnlQ
 n/XdUcVjmoJToa+FrULcMJGMkmfFCRX2bPbiiQKTKlvIAXq0MmyoeGc3U
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M3G/+UHL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: increase max
 descriptors for XL710
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Justin Bronder
> Sent: Monday, October 23, 2023 8:06 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Justin Bronder <jsbronder@cold-front.org>
> Subject: [Intel-wired-lan] [PATCH net-next] i40e: increase max descriptors for XL710
>
> In Tables 8-12 and 8-22 in the X710/XXV710/XL710 datasheet, the QLEN
> description states that the maximum size of the descriptor queue is 8k
> minus 32, or 8160.
>
> Signed-off-by: Justin Bronder <jsbronder@cold-front.org>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 23 +++++++++++++++----
>  2 files changed, 19 insertions(+), 5 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
