Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D66667C30
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jan 2023 18:06:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 89D0F4018B;
	Thu, 12 Jan 2023 17:06:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89D0F4018B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673543160;
	bh=wdEboMiQHa+UpdnXMlj6mu9ouikM7nOA2vXoA12OA2c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1X8Zm9AK1G74DuFZ3cTj5YYoX5UjtikoQl+LixvOf/fhl1q7NmWgdpgGLXoChL+7n
	 8nmsrKQTSfs5qpeB8orM43ZuDucC+iuLWlRzWg/ymtcen89M2yNEP2x4M5sfOnpmI1
	 ow3SH7fAiGjlyIyx+syY1q8rbWXfLgv0tvYlKhdhJ84FtMimL8a6h2LHNC5WV9clpb
	 K9lhuL0+EZuiWpOASZJIY193Pii06rf9QEIgmZ96TT9mPZQsYHN42aG2mS0lCTkRc7
	 TrvrykEVtt7DvOumHhKwbi7Lzj8ewGd0KweKnsJY2MjXprw+RqHWht28ckP3YwN9FU
	 tn31xYc9EEdTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rXbRX0R9Je6b; Thu, 12 Jan 2023 17:05:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72BFA4016F;
	Thu, 12 Jan 2023 17:05:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72BFA4016F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D23D81BF46D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 17:05:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A880F4016F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 17:05:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A880F4016F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id phrssK_Jxi20 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jan 2023 17:05:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 604DA40154
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 604DA40154
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 17:05:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="410000147"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="410000147"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 09:03:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="831772206"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="831772206"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 12 Jan 2023 09:03:00 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 09:02:59 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 09:02:59 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 09:02:58 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 09:02:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qk2qmeh4eV404yjowYJVlGqHhho9cxdjqjfN3lbyQIcHCxUDT1r9uJa5JHhsfa52cMsBbGrE30F8Uq3dA99dBOXY7vcdjk2gzo7gGScB5yYXDlor4/jF4LXaXav7mPIr6NSSgVeLMp3iolCmLOZv2RWkd9dZCFQn9xmuFJPp9EOHoCMHHeDOxchMeYzWOuDIjaBpoQhGalti3EAP7w1TnVbwJ/whwhfLnCTpoB+7D2xrfEzNWE7gOYxUODzzMGZO4AdeUBbzTa31qmvlgu8XhjqSUhbEgPuAbR9kxeqnJCSXCMbMcJx7e034179NtxjJyNpyeO5JKibiwSdSYRO3LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+1AgZPWEL0E0jxhqgGsJhEcuDq0HudiZQtQDkvycGsk=;
 b=JXEKlYlpVK63hZ5ONdV6jwlcRGUwC1W7BHk8isWlz9VcA4k51mg0jP0rstenaXIrGT8F6QECzSpQTbopO8RqfLC/BjcxOUVFCrNhpM2bdNO8RwIwBWi0NFcED6hDP5hHcK+RQlur1R6rDMlL8SqWpCtP5zJu8YT8fWKO9f28SJsPhMSVO/+YVuAkgsH2E29akgIy+Ciq4VWFqeGzbfdM0uNTMrJj1trUzV6FQWTWGBq2j6tV1/gPGAPoXsnHNo45FQOzpquMDM6P6O4NH0Q6YqGtGjVgS82SQ04o/qC2A/v1WVeOlDz4aEpxDBmoX5rfsCobzvP96nOlaxbzj5afFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by SN7PR11MB7994.namprd11.prod.outlook.com (2603:10b6:806:2e6::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Thu, 12 Jan
 2023 17:02:57 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5d3d:f1f7:d54c:f117]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5d3d:f1f7:d54c:f117%5]) with mapi id 15.20.5986.018; Thu, 12 Jan 2023
 17:02:56 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: memory leak in
 ice_vsi_alloc_stat_arrays
Thread-Index: AQHZJazDgrvNy/BaFU2tISzzydYFBa6bA8vA
Date: Thu, 12 Jan 2023 17:02:56 +0000
Message-ID: <MW5PR11MB58116DC5649D511678C5A5E5DDFD9@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230111103630.17629-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20230111103630.17629-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|SN7PR11MB7994:EE_
x-ms-office365-filtering-correlation-id: 05de8861-7125-4533-6fea-08daf4beda2f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5rlcwmCRIckwLZ3hVh4tC/e1Cvrx6fj2UK+G75Go+8NPNgirjFwPtfRa2LenQzx2vEiLf/wcA9QlkyXzLIo3ml/nhkxXD6/lplF7okzKCI2Kzo/LKqVToA9IsIoUvM5p4h10gYF06hZ7voUzNAcxQZhTJGlgP78pTJlm6iOBoMcwIm/9JJWcvSiAb929/hGVwJXNvCN6JO3ZNra2bHYawhywUTMvG+QNnK5yx3rFnjGyedi0SYiI+5E3h99nQjfOJ20EU+4loWYbx131ULQQHZbvjcO+McFC2mNDemJgBhwTDvA7wxpRLrSVv8EYMuOsWNv4WP+QMWFTBQPtbLE8F3RrIApQ3PhY69sVE0I9zcKdGC3ZWLhu1Y1f70UsuFCEgpJJZe59clFNI+upAZH3JVc0VAVP8u3jfpaWTBEbJog5iZBVYMq3Pf36Z70cp4qAF33YtXlCCW184gqCnH1UK3evgg4t26z30U8Mjc4P0skM7bW7Rv46uMKayRdLQf8Z+NACgCB5kGB7JZy06ekcyE3hr16Qml8/660grQjkRu7nt5FPJDPoMkNviZYAAfPoq/t+ks+oe1QfwQ90k9Exi7L73uZVQ3m9I18GeFs5p8Foh7Mmo1olRTqmH6cxH1Yp2iJdx4B6si8RTOaKlLNBCnFfM49CqdofhtpLHzaG7bLkYWB5BQTe4iyYnjL7olgk/Pq4uEJwueok1P4jt1zsHQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(376002)(136003)(346002)(39860400002)(451199015)(82960400001)(38100700002)(122000001)(33656002)(38070700005)(86362001)(8676002)(54906003)(66476007)(41300700001)(110136005)(83380400001)(66446008)(66946007)(4326008)(66556008)(76116006)(2906002)(478600001)(7696005)(55016003)(52536014)(316002)(8936002)(5660300002)(4744005)(9686003)(186003)(6506007)(26005)(53546011)(71200400001)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZsJHtW/GwktJTjK+avQ69Tjd4C2H/BjrMN93OmchFmlvUqHk7ouywWiR0tsa?=
 =?us-ascii?Q?7DuUVCGjt7bnF0otc1jHvJ6vUA1QMta3f2kEcbwSPpQZmWD4Q/76m0c3KO12?=
 =?us-ascii?Q?ryn1w2C8uUbUWr04+8Ifu9gWqKalVzI7PVmQnNEU0liQ0aPpW49fFKue+kFW?=
 =?us-ascii?Q?wM54EzKM2NTnGcfiFYpwIF5rYtscIC9+0ZXsqRth/LXgZMen8PZW4J4iydnc?=
 =?us-ascii?Q?0z2OrXafKE774a7tqAivOY7SsTTUqP7zPRO2Zqh1LuiSDPsi4ya4Ka5qwxNg?=
 =?us-ascii?Q?ILg40JDPnGYpBzPiBaoOejJVutO+V3ft30pJCu2AlTXmU9bAJ5SvyGibbjzQ?=
 =?us-ascii?Q?FV7X2aHTTqEe8YLvxYNBxdGglHTftO/pQvvDty8PfdaxDjFMxsRDH0GEW5j3?=
 =?us-ascii?Q?xbXajrDSYBnczjY0rZLQMhqzCGUZPYDXhWQQ+BT4KDPR0D/j8IvW8m9cF9lD?=
 =?us-ascii?Q?8PtM/fKsZQSt+63cMY3XS+UBmoKSGi3w0fttst1gRwzyWS0i8zF9n38Vqvcs?=
 =?us-ascii?Q?3uR3OkWmPuwOX7Pw73Aw9Ml1F+OFCvv/VzK+dhMPgJQ7YbCCcTkkYjxhT4Ps?=
 =?us-ascii?Q?yyAgfiAzDMwlG6NX/RjfzrHLhWuWQuh61UddQ2Y3wL8cqEuQRDTTtOg3NGSY?=
 =?us-ascii?Q?jRDfMZXMOEDvwnbOXFRS7dCVCM7yWsVR6zB4woJuh5iKCm8hF6+4dviDPkWY?=
 =?us-ascii?Q?IGR99oFg0wl4yfbH8iiQBdBvjFHgU2IUoJvJzn7eSvbON6+OEww4NtN9XCH8?=
 =?us-ascii?Q?++wwd/iah9A5eOgtg0XG8znsjWLFwPetA9LS0UubQI+kSFlqoAin3KYqkjOS?=
 =?us-ascii?Q?CGT++eO3CEMWSMxuR2Cb5QuTgLAuxSYEqm0oWDXP9OZVL+Shx1Ql7RY1YA1l?=
 =?us-ascii?Q?FC4f3FMN9hjtnv/d5YLeYWBSjxMJj6w6qp86TNMdvBgFvkk0w6hWd8EHb99p?=
 =?us-ascii?Q?UwGXE26JyVcO+3TXNj88aASRt/7MnLLqYsQN4jmSFE/87NDSFGTub8Lld20v?=
 =?us-ascii?Q?oxQ0jiezMBeRCf2dBTjZFPQtYK20ZaxrnEW2y4TPX9oodxbbRfK2xCUS5tBu?=
 =?us-ascii?Q?TlFhUMlGJoACDjEmoeBYXhkK+3AM708oOhwbxBx4HqD4uZSzzrylc3Rt/yMC?=
 =?us-ascii?Q?Ml2KKwdGR5rlZhpGkT6nRdM7qlrgIP0jh+ffHqQDxa3wrFb+E14FQdNMhHx5?=
 =?us-ascii?Q?kc9EQ0ofU7BjqXRu/+O8oPPfNbjCyhrULxgoZPr2cDcFJG2NMPVgqH6v4WpD?=
 =?us-ascii?Q?BS8wSeiZyfaSDX6v3sxsublJk6leTRqRYricQJluj/BhmYN7yVKuFB6iOPOS?=
 =?us-ascii?Q?TrQKqyu+VjMJjxf08M9zezFkvBBZDwzoS96t5KsJMcyt5942lfD8huZBazAD?=
 =?us-ascii?Q?vHvUCyTe+FVOpPwM1Qq0BEcWMuyPOHXhWYjTQEPKksOUAT9iCyA12jHY6sRW?=
 =?us-ascii?Q?UlPg6RVghkPMaAiouZbZeffYedvn60h53iL4x8Ae5pEqPNcOiQaLb/aAaz91?=
 =?us-ascii?Q?NAQCKFMAyqESHTBMmDfqRK9r2iInsweJGI3Z7MWN1ZVIDwe8YPz4Rza1rtlq?=
 =?us-ascii?Q?oqDd8q1Ahw4V2DqLDxgeZf3xNQhPQSsawdEKjP/rGQfwtS0JrlQu/ntO70cQ?=
 =?us-ascii?Q?yQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05de8861-7125-4533-6fea-08daf4beda2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2023 17:02:56.7227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TAK5XK1+qFHVYHg2YebLsU4i8s0EhwMFdnrT62tHbPoMyDzHi86HrND5E1XweoeARbWDkh5lYAv4hOqfAu2eMq8USCsfHO83nv3KJ3SlHyM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7994
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673543151; x=1705079151;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=14JdF04sQllzGBV49t63Xjmm6+XbKXPaDUNjy9n+uN0=;
 b=m+6zi5H/lMZ5ybIITRHKGd0hCdZAycaMJzw0ifG3+GMvPcPL6siJRNck
 nJ14uw6xjK6LOpvGPCKjDS7wOkUupFtwrfde3Lrqk00L6QJgunqxyhA9s
 37mratSmdPXF9pCzow935OxWzw95GySjr9TWVABTweXUeoj74PXkBUMuD
 6vQ/N0tNCElXuaTYO+Kz3tc9ehVbbW68UzPI7T67X+r64knIb5hG5C5tR
 sl8NiOgBjZ7wbaNWRNOAussXrRb8NVpGvry0FqWC7OBIWR36MOO6QIVQt
 3ny651oj0JeqtOvBsYWvKVN+5uI7hJuz7Dr2lHcLalADRBZnrJYYuUu74
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m+6zi5H/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: memory leak in
 ice_vsi_alloc_stat_arrays
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "error27@gmail.com" <error27@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Wednesday, January 11, 2023 2:37 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; error27@gmail.com
> Subject: [Intel-wired-lan] [PATCH] ice: memory leak in
> ice_vsi_alloc_stat_arrays
> 
> Fix memory leak by checking if stats were already allocated before
> allocating new one.
> 
> Previously it was completely broken, because new allocated value was
> checked instead of previous one.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <error27@gmail.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> Should be squashed with commit eace2cbe7f5f
> ("ice: split ice_vsi_setup into smaller functions")
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Thanks for catching this!

Reviewed-by: Dave Ertman <david.m.ertman@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
