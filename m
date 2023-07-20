Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7662375B1BD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jul 2023 16:53:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E64BA82215;
	Thu, 20 Jul 2023 14:53:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E64BA82215
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689864787;
	bh=ySc8xoxKpWxeWp5dZucKYrWluOUqzLWIhrE/JoU5iME=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lh2FKVKayJGjiK4gPK52pOiws154ZGCIJ0E9w0wY7BZFlMkBL1SpZpCEDB4VX/ecD
	 HURjfE9+tn6sm/JAR6LMLMCCD0s2mBqQv+YiODmkEXBSsfud+weQLPjk9PFVIupxUc
	 yc5OyPGfeOk3Cq/zfPgHMn8c84NHf/zxSxmZx9NDBB9nbe3DlFlHEbu8clR1eTTVZq
	 KjRQF8IHmnESRzHVktK/Z9scNmoZ4ug6AGAoLabp/o70xcx/RaOyUtwh3aDaBgrVpz
	 VSgUY9OTK0Xd+6aEC9oWSRo/YtvH9LLBcfJd1NSJz6s9lAZLeqbeKj7ufXbXLzvZP+
	 KzWg+XdLvXNcA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9yFzrkmQI4WJ; Thu, 20 Jul 2023 14:53:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B62278220E;
	Thu, 20 Jul 2023 14:53:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B62278220E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 34CAF1BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 14:53:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1A0BF41694
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 14:53:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A0BF41694
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DjDvNPqQni1K for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jul 2023 14:53:00 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 56441415AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 14:52:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56441415AF
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="365648113"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="365648113"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 07:52:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="971060397"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="971060397"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jul 2023 07:52:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 07:52:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 07:52:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 20 Jul 2023 07:52:58 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 20 Jul 2023 07:52:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dsd+RUQtSOEgL3JbhobYYdzrd0syQYL9R0gHEJwhMww+qHwSUrQlxyabHZL6PY4oXyI593cunK3E3wQmj1hfi4iLGfHmpegKFWXzCtgH4DLYuRE6e1XBrRAuKf1afIytoxfp09U9K74v1NY1YV0bznc90nyk1zsvNCZN6Gc7yK6Z/ffSDLViVibcTJAUeEsWDBKmLsdXXBoNIMy4W0OB2yNm5pMdxRXDm5QKZEdezZdGTPjvodbXnaht9K4mi3SaRSV1dGDEkAqgNGMIKsyfOa7TgGfjNT/esG7e/cPmyeqO9RZt/gZ1AofA1y47PD81Sj5eWV4kBe5oHuIIRFzEEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=We2iILMUC9C0ZlprgyhdZE+nvMqUdxHB1s87OJIaECw=;
 b=nJHmMzGMwnAZxXN5kN6UIg96eHkW+NqknNeT0pCqY7icnbCoraAS/+iKnIDTyTUkNM4UNnmtokMkcTd+Gt/SSeLNehny3sT75Vvtlbm7mkTXznLg7qpV09oVx6eL4u+sQukMw+XthOzkhrgU3Xn1KLc9OjiMNLiKTcJ9MSfySz8prCyyRgHp2Z4/sWHQOh6QZ1IQy9ly4n8+geckDOWcv6pj5VFfuJ/bOlBdgyQu02uzU0T7Lp8A7BTTX3CEsxfXvKPtrvlQ6n7sEqWUe5Bt4Cx9LfAWWbrvkoqGjwvDKrplaYWjQ//59a/eFiObSvG2O2Jzi6ZV5Ih1YCFkDRONcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8414.namprd11.prod.outlook.com (2603:10b6:610:17e::19)
 by IA0PR11MB7377.namprd11.prod.outlook.com (2603:10b6:208:433::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Thu, 20 Jul
 2023 14:52:56 +0000
Received: from CH3PR11MB8414.namprd11.prod.outlook.com
 ([fe80::a1ff:b7ba:1d51:fa4a]) by CH3PR11MB8414.namprd11.prod.outlook.com
 ([fe80::a1ff:b7ba:1d51:fa4a%4]) with mapi id 15.20.6588.031; Thu, 20 Jul 2023
 14:52:56 +0000
From: "Michalik, Michal" <michal.michalik@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v1 3/3] ice: PTP: add clock domain number to
 auxiliary interface
Thread-Index: AQHZuwO+mlaHgyaU+E+BtMAfOe8U/a/CoDEAgAAcjpA=
Date: Thu, 20 Jul 2023 14:52:55 +0000
Message-ID: <CH3PR11MB8414D50FF4FD05A2B9AC7167E33EA@CH3PR11MB8414.namprd11.prod.outlook.com>
References: <20230720121357.26739-1-michal.michalik@intel.com>
 <20230720121357.26739-4-michal.michalik@intel.com>
 <MW4PR11MB58001A57F548565754EB5044863EA@MW4PR11MB5800.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB58001A57F548565754EB5044863EA@MW4PR11MB5800.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8414:EE_|IA0PR11MB7377:EE_
x-ms-office365-filtering-correlation-id: 3d3d439f-fb6f-40c4-bd1e-08db89310090
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y8/FHNgN6iaDfvoVdAGMNSYQRVG8ex9wn2Gy9F0u6s0CG5+9Fai13AdzWptKCdWDypya6+7L7uIe+IcYysGBd8HVZZRGWWd8fk+sX9Tuv8y6nqaTMOAFbtCPXESlNIjpxhD6JmmQz6N4ia8I1lGbEF8xUKCM21ZiOwx6cyL+IZYJCF8OK9/VfBLZKqA4nYqln80OCFsSH0/ZiZX0Y2Zt7LXghbgxFeXargi90Y+2M4JtxMnajk3Si1AXooziX9YUB30/92jYfHWEhHbSQR6Nh3dpM7x+mDCuPqfvbXg5LRRoArRxmOQ2A5suLOnBYG4KVVR1SNBdn4RdX2Znnhnta/PwRtWg0ZqXFwjEZ6GWTcVYk36tAPlo7ktaMyDjxAhLAhnSEtLeK5abHKYE44n3Nx4gYtr/EgUklHtxnM6ZKlINqhFly8ZsFNd7ZKeU1Dxqk+ENPcfs5K/105efTwoHn/OfobzPowBoGWYkOxZkdWZfOqoB3Yn/mAstUu5qkG40d8KoOC/jnwlmBDOGNgDYtJOWlmAl/kEwThluK2UUBZEW1mIXJU4KWOHn1KgU0LkHE3NHONyhvxFkaF3FxrQzGe+2z/x+WLGuCDkRn6TZLa7tJLadliI1xMmw+Jt+gqmg
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8414.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(136003)(39860400002)(346002)(376002)(451199021)(110136005)(478600001)(7696005)(71200400001)(54906003)(186003)(122000001)(316002)(9686003)(26005)(76116006)(6506007)(107886003)(4744005)(2906002)(66556008)(5660300002)(8936002)(52536014)(41300700001)(8676002)(66946007)(66446008)(64756008)(38100700002)(82960400001)(66476007)(53546011)(86362001)(33656002)(83380400001)(38070700005)(55016003)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kvQeC5Mddf0/yCSIx3H+H/cjOLORI3kiUnVsVkYrgojQBG+c/8KCVvC/7r6a?=
 =?us-ascii?Q?2ifd0nsPXs2Bi+Y5XKhpeFUztn5fTfvQvK88L6WZMTbb12p/5yUvBdGdMboH?=
 =?us-ascii?Q?NgllTO/c7ulyKgdFGu/OoWKO5mVaZ7vdSveN6gYJCi16a/wNIsGhNBd7HNdu?=
 =?us-ascii?Q?tleEnzDVBOiBdShOvhRSoQFezY45+CYy33hvTDAJMKzC4APs646g/fVQMBhL?=
 =?us-ascii?Q?KKCUlvHzpv9/jP+myyfKRM+G0sz5EYpnAtfUL/BOzPha28tkm6uV/VZfydZO?=
 =?us-ascii?Q?0LNaJ6aHQWOLAi7CViJmDAACuApc0MYE0ygp7N2YD7qMupM8nMJI2aOpWV3e?=
 =?us-ascii?Q?Wt/bkVPvzmR64GD29jDiIt/knrQyRChsT84w6tjzIBqmo+2Ri+wkfG5AIOZf?=
 =?us-ascii?Q?/P32OctNjQu+tHwNcqyhGGfo8zEsvvCquIsPss5QON2EXOcJX2B052nEZGMr?=
 =?us-ascii?Q?7hwtqznUTQ1g97IRd2a2BpVoWw7GcyXF+vsjYenNkUDXg7aiQxhDacNe6K7E?=
 =?us-ascii?Q?OfTZbrZk/nPzZnB4JaYsMe+9lCLna+nP31PB66XujmyvpsvjvmgDsQw7EyqU?=
 =?us-ascii?Q?dbvuohXNXi1tH8VGqN5b3uXoFbWmQQihyR4L2+LNeGFPKZdQpUql2lzo80x3?=
 =?us-ascii?Q?yq5J4pmqIL7jqE8udra0Tt8Ru8LtiS2XRDql8xX57vimojfmMRXIjiCfV0vy?=
 =?us-ascii?Q?s3DcR4dBS9IRfUsaYsyOirXnuIm1tW32n67dJN0MWxEhMLP5Shs+LePYXPU/?=
 =?us-ascii?Q?CoLAnj9+XUllxh07/wiCu87wGwFtEdZGmft5mmxERKypDklpfNvDMvnKQ9SI?=
 =?us-ascii?Q?mCNcxsTIWvBM3ohsoOwUfvbHW5PV3C0L/kIYsSTC3byDWfi3kNkeiexDTmne?=
 =?us-ascii?Q?78NCJDXkFzzKO/9YNAqo0pFVwk0NscN6GExmJRwb/7asMfCCYjAuNQeEAYan?=
 =?us-ascii?Q?WQOwe3PAEuqv1QOXydVaWkLtoahHGbp+Tj/fZECAsbzKjg2Sl5WAjInJAnf4?=
 =?us-ascii?Q?dHKV2kQhJ4pKFSnxdqU5svvOVHeKAwbbQ2lxJuVZqb38tMJtLl3Tiq+sK79v?=
 =?us-ascii?Q?r0SskLhaqfJgg9AeJLURCbMm/4diC/2uF3Yp6Pw5MVFUzXeBRJrhIgFBVax+?=
 =?us-ascii?Q?om2AWqH3TQgeMxfJH/iUDcw6qlb0rPXaT2t8E55YElRLRxcshHs9XR+s+OFD?=
 =?us-ascii?Q?A1ME7g5CbinjJj6mPcvaQRks/PBLNOF5fCQoypC04xVzV7w2BVe9nFstKTZf?=
 =?us-ascii?Q?pAsOw/D5J2FXq+VgsUg+Z3yJVeqIJ5K8HlcUDRQilbOoyvz+VFqTyx7eV/Po?=
 =?us-ascii?Q?k2J6rwc25kq0HhHv8DAxiin7MSkIfb1b3BhPzEFM8eUHQN72X3RIDrdHyEot?=
 =?us-ascii?Q?YhzazbVzRc/AFxw4yCRsoWIhHkix91KwUB9WS/ql1ZacH6Drif1xxzmU0g5r?=
 =?us-ascii?Q?nTE20cfTG4ZVWPGNMgjeH9kQQ9Rlo8ZzdMH0mCeZg+mSqLQsdL3NiukTKSd7?=
 =?us-ascii?Q?k/McTq7IpKKDAwTo/r8kWW+OyAZ2GzjFyhLqmiuJlVul0pk8c2guyAuxwm7S?=
 =?us-ascii?Q?Ug+eannUdSO0yn/ahB0P+SIrAJG8EAqVFZiY7TO6lLwd/EiHdV+/OFP1rjzt?=
 =?us-ascii?Q?4A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8414.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d3d439f-fb6f-40c4-bd1e-08db89310090
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2023 14:52:55.8498 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2ntqNAe1fc3QvlKGRQ9v7JVDrgZyDiR+UU7w/bojIFqbchr3cDJ8G0S967PHW7vopTYXFykLa2ASGv3kgoDdCEKQCGFYjlAYSYWjqs2Q7FU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7377
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689864780; x=1721400780;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GNHm+bteBh87gmfI8Ae+/ec3knyTpGCKDmtXbdkYzT0=;
 b=nLELWC54/wW2tMNL9dGCzl0pQUAPRjkTaldQb2RozX/V4FGf8WnZN7HO
 INv/snigSvTkBEaHK517s21/iPhecif7qAMJuMHThO07sd8yEDwYWVb13
 S8Wn8Gr3Dok7qkzdfIXxghifpDnuee37+jS0HmtByxpBEmHfa6COJteF+
 mRXJBA2qXpxUY6JdON2QUIsP9Ci8Fddoyiwi2Fcwu4xCpOrxf7om8TNBr
 4E3/ZU3AIZM+OucSNhd7pMj9GnFqSw0VbmHp2K/ScwpefadDMcheyLMIP
 1Y3HySaad0DWmBNb9qIg54Ltb2VzLnFbrAq42MY9xS5CwPBGQu3YAFcoR
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nLELWC54
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 3/3] ice: PTP: add clock
 domain number to auxiliary interface
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 20 July 2023 3:07 PM CEST, Kolacinski, Karol wrote:
> 
> From: Michalik, Michal <michal.michalik@intel.com>
> Sent: Thursday, July 20 2023 2:13 PM
> To: intel-wired-lan@lists.osuosl.org <intel-wired-lan@lists.osuosl.org>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Kolacinski, Karol
> <karol.kolacinski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Michalik, Michal
> <michal.michalik@intel.com>
> Subject: [PATCH net-next v1 3/3] ice: PTP: add clock domain number to
> auxiliary interface
> 
>> -       tmr_idx = hw->func_caps.ts_func_info.tmr_index_assoc;
>> -       if (!tmr_idx)
>> -               param_idx = ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR0;
>> -       else
>> -               param_idx = ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR1;
>>
> 
> Are the parameters ICE_AQC_DRIVER_PARAM_CLK_IDX_TMR0 and _TMR1 used
> anywhere else? If not, their definitions should be deleted too.
> 
> Thanks,
> Karol

Great catch Karol, thanks - will fix it with the v2. 

BR,
M^2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
