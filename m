Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C1E54F49B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jun 2022 11:49:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AC95844E9;
	Fri, 17 Jun 2022 09:49:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AC95844E9
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=PIxeBC6r
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VQtwfCtJnsGM; Fri, 17 Jun 2022 09:49:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6EAD4844E3;
	Fri, 17 Jun 2022 09:49:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EAD4844E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 30A471BF375
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 09:49:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 14A0541B5E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 09:49:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14A0541B5E
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PIxeBC6r
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4tKTml-rGG1P for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jun 2022 09:49:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF14641872
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF14641872
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 09:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655459360; x=1686995360;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sNzpzbd81mPkZ/1ABtwpJnJaflSXU27ptP1+KkPAfmE=;
 b=PIxeBC6rb3gI84bfdgQBNCHsscy17u3yS8eL95vk10g0fr8NynNDy1hH
 oCXOLqzJ1diqpeCDIU7a9+CE5y3KqTkHKkt9SvvD+BLfKPKvYnflI19TL
 YE/+AWxL9wfUMtu6PG3zBsOLg7/+ZSVyJCt/tDc/FDOZtjVnPuGf1vrqn
 DUtHsnbC7k3Rsp4y7CKWWQbEhs2pjl5UZNx4ab0m2qKQfJ6kVnOyyS4Qv
 fsnwFOA0O8DoukyRiBGSUHLlVGU3xD4AMUMJISXOnt9W73z/3ssRAZYsj
 kCeKFrR1qUf7JkotiVBhhb2/NhVd7Hhknyoo/e2x7zF50gJeVNc3mmN6x w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="262485994"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="262485994"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 02:49:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="560374594"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga006.jf.intel.com with ESMTP; 17 Jun 2022 02:49:14 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 17 Jun 2022 02:49:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 17 Jun 2022 02:49:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 17 Jun 2022 02:49:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YxqCPTfgla4Grh7i4j6I8WeCmvIhbQ0yiyo+83acB4bAHnq1Nf5svJYD3eOx71++xhV0X9q31xNs2PmgVO7lPjKLmXhZTTyTHl0D9W2rNLIJd/Q7TIHzX/pW0nJ4HOkAM3O4Yv3rdpCPg9UOvbrMJzWgOLvUb2SDuMH2rm7/gPmjawbwCrHsmsuLDzP7WttzrBoPjRI/7nwml7+TRSpI38/FtzqQ6qRqAtqWtQ2lRFwfWYwISKVPWo4jZP5843XzcJJE6qWlsn+Q0ETy1PNqXaVNe4AY58iCXsg+rFcC7AYczqfW/4NVXkShcZiAJ4R2dDrfSUfduNTkmjy6bPpJjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sNzpzbd81mPkZ/1ABtwpJnJaflSXU27ptP1+KkPAfmE=;
 b=NAV2ViujUhJ8amHz0kx5YAy+8W17hZoBVk1SFVdWuvKT4JuRNGYTL6Zyda1bCkhCwB/wcDL7fDIAyrJMhBvy3BTVBbGvhQaHNHEb/bp4NSXeritCXcSJLoIOLU3i4vkqKLlgZiNOlYUlJV1LYK16Mx45ywSWK/khMZLrulRw4dvXip9UYB13b03DDsyEf6+CnQCcKAddJBy/3mGp/iu3ffnhBnBjAIj8BwgbfPJbonxBWKdgGVV5YcB5r8Vl/1TwkDuAQcwjvhyYSHgEInzXg6CZJkziEY9gYglvz4ViJze8QLvolVMPNxLWNkAYTgh/gyuetCZPhvax7OYcYPI4uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MN2PR11MB3696.namprd11.prod.outlook.com (2603:10b6:208:f6::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.15; Fri, 17 Jun
 2022 09:49:12 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::21ae:2153:219e:b4aa]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::21ae:2153:219e:b4aa%5]) with mapi id 15.20.5353.017; Fri, 17 Jun 2022
 09:49:12 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: ignore protocol field in GTP
 offload
Thread-Index: AQHYY9ePcTbKnv1tP0Wr0z41MuPXxq1Tlt7A
Date: Fri, 17 Jun 2022 09:49:11 +0000
Message-ID: <MW3PR11MB4554E2B2809B9D823479BE819CAF9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220509190118.7507-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20220509190118.7507-1-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d418ae33-94ca-47f6-922c-08da5046a1ea
x-ms-traffictypediagnostic: MN2PR11MB3696:EE_
x-microsoft-antispam-prvs: <MN2PR11MB3696501AAEA3052010BE97DF9CAF9@MN2PR11MB3696.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U1BRCQps3kc6oiME4JnjXuG2e7xg3hyIs+5SwzqMBvrQNAFIdkC36CJlKPO8Hy+iFVYb3UfG9qWJuu9GyeQwhNmGL3DRlZcHySc494kVUob4l4I8XdneS8ZsNqCdV0VFA39pjqe72qeO5H7RU0Nmx4IapaxQ/NhCYbyg4/unK74LoS0Y2faZPSt3DVfkrvqlk5Jsk+soV8e8WvSWuNdyeCRsEfyxeRMVkV45g+pSQXwaXe8Gg5FYVw4jYBQa/z0ATY2YzpTivtzWYOl7af81WODi9NobBPsQJltIqHPB2HA8nikRWcNXRN7Hd+1svte3YD0pHKFMBFT2sqCMTvGgxf2VhtS/3NCKY/cwLH1ub5cOLVg+r/NZEN9x2DpLEqoz0Hjq9oddhphL/lpAD0XBdf1BBvluUeYy+gvQbkqvUzF7lxShSCu3wMqs/Rm/FSoLn410QgWnVD0CDBywBg79VTJMKpGdTWyNv9LpMvxhZMQflDHw16QgFsCj/DrsrVWn8pyDIPxw+cLE58Bhp3/T4FZP5Dg53q1nDQ7r0l+r0h1ES5qWy3cjHDMonDaK/j8b7Q4ULEgQzDYiQIHR68PYlt1dh9uDBDQvB8JPARUlouDI3t0ikdIAJ4ErO1VgNScKWC0dwH40LCJbBzf4xyuWi6LIKHa93QDi95589sV4fomK3/Ttq8cAhhWDJIOsji1xz/+PygneyUbSr+VB8h/A0g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(66446008)(8676002)(38070700005)(66556008)(64756008)(82960400001)(66476007)(76116006)(26005)(110136005)(71200400001)(52536014)(6506007)(66946007)(7696005)(55016003)(316002)(2906002)(186003)(8936002)(33656002)(9686003)(5660300002)(83380400001)(86362001)(122000001)(498600001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dvmXDR3ajj4sjN4acm9d4RxfqjsdWvEheDRFQLbiXGCqA0ailB7e4xvjA0B2?=
 =?us-ascii?Q?/pAoH/r7qWHZJTI6lrIz2VquYUJyRMUXJ+8wuElZ0jWKlY/3DucYIqy+F1Id?=
 =?us-ascii?Q?7hjhlvUIaDF4qzavIn0y4nC7XjducxigxwzJssRl8jvmnzavWj1s2M30ufAN?=
 =?us-ascii?Q?LJQ00g2z9H/ZARsXD6p7X54c/L9RZx/3Mr6rH3jVFxiSCOWUI6y2PuvooZbK?=
 =?us-ascii?Q?+25VEY6TaXhQkGDr/AJZaWjny+YmcfIypLhMBxpd0cwApOPXDxP4PMe5JV/Q?=
 =?us-ascii?Q?Xr0ntG8G5WKZ1nt/T4L91hCG0LYMYXH6dacRep65pWsFOPY8Pa/WLTLVmTEw?=
 =?us-ascii?Q?YGUkbEcK3nIbXgcjvWdU6U1uUtFeJYRXeHoH5h+A8X9hV0vOaCqUMWn6S+ix?=
 =?us-ascii?Q?t6rgoxBpQoL1zOu6RGT0B7S3hbO3vza0dFtcT4z4DXj3KgkS8v9QbnpyJ/VP?=
 =?us-ascii?Q?hrHtRq4emCNrxCsjtE3DfK4KGJCDgO6i4lTTnwObKKR5eXPFVO5IEcD4Kvo9?=
 =?us-ascii?Q?OkjnvvfkUa3hGl/7dJUnPIQL6hSqxLBvnNLE4UK/6b5wR0z05hZO6883uK7V?=
 =?us-ascii?Q?JIBX2c4N2vlM4DfuRZSm7uf+h/obXGYuA59FkoihVKw1Ppe9M/G9OTV8OewK?=
 =?us-ascii?Q?HYYPTW4V5lZ25gLnXPCtNdIuXiNk+A1MPlU3TVh2upZrPmwrhfUTCToLRi2q?=
 =?us-ascii?Q?pJDHdK4abM6DbeXIuvUd8Km/6src9Ez2/nVc4vO3lfGABcMXpHeEH1tJTKZW?=
 =?us-ascii?Q?8ZTS96ReBJ5k7nF5Mzv+IkCICVNx9jl8O8wQata8nKijfIHY/zkL7G2vha7r?=
 =?us-ascii?Q?mvoQVUdHOCf4pcQ+7a++YrBRQMF5ADoEbCgCEwVgbGyqfPS2xavzRqlFaFX/?=
 =?us-ascii?Q?IKnSWLoqn/M7ZmsE/MidnUmWA9T49CUNL0SoXB7lptc9X/bMG8uZx4jA335n?=
 =?us-ascii?Q?aBvtl2ITWAtmfMYKC66ZJ4SXvIu6iS6wDoLqxG9iziASlg+UBmmXoFgKcBHd?=
 =?us-ascii?Q?Ulq0cycXyRg2NJD6sHg1TUeNKiT0vtISYJc+8rSDjHqy1lH1591wHpkKEeeO?=
 =?us-ascii?Q?Xqcque0xGX0bMfntsS7EZlmI3+f9dCEreqoPvB7CC2bXHn1162xFcEjm1mpW?=
 =?us-ascii?Q?azCe31yXNTpIGTeXf/uM5Db22p1AIQlUSNhyXQfRDOsjdTTbnUAae3F8QA9E?=
 =?us-ascii?Q?HFjTusWPAPU+/NU2KAsmZjPOiTTu7uEUc3wRZMygmSusXGSC6MSsy+h1/7+r?=
 =?us-ascii?Q?9q0sVVVgJoC0bL2JYUAPTJflWSPt8dHCp16hXRIa+gWBIOJBfrc5ByjlW1FM?=
 =?us-ascii?Q?YQwHsNUWCjO2/MUtaBthmdEHzk22KoSCjTzzB8uanDivUEkEgZEyDWkd1fCU?=
 =?us-ascii?Q?Wbx2hSMzo//dL7i0tWPggR7U9/6NGcukkndX2CcJ1DMkf7gUwbQIQ+ATn+b7?=
 =?us-ascii?Q?lMzE0P+6phVp06QcfZznwcC2W2jIRxaLts5f1I9T/ovMn2jJSh1ISwuZW9OA?=
 =?us-ascii?Q?1SzETCMRBMksn+3+Qwx0paLogAFCvP6hgQ/Ye9MKDDaVqhv+eLOl/cM8yh0f?=
 =?us-ascii?Q?BMWRabYXYNt0lYJYF2nby6RF9wZpB/D4+o3Kes7q9cofwnCFwryHEQxU0ZOo?=
 =?us-ascii?Q?7TLQhsvHo7GHhqm4ntRq14hLsW7rMdb3ykBt3WtFKOx1k8geOMsae8u7mU32?=
 =?us-ascii?Q?GGGJ0UBYddpU7NidoQTGd2figPv3tLOpZuB0Ys11JVEXjmuuW4Qn8TdcBKwM?=
 =?us-ascii?Q?56vLyLUsNKA2NAai+8A4OmWkDczxiWI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d418ae33-94ca-47f6-922c-08da5046a1ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2022 09:49:12.0159 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IHuo2Je1mAZF43uqMhd8bjU6ooGL1UWkLR3MEIjqdLznppt84St52+1z9HVOdEw6nv3iw8WJDAenSgMAzkB2ei1271R1RShfBuh1A0TLw58=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3696
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: ignore protocol field in GTP
 offload
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Marcin Szycik
>Sent: Tuesday, May 10, 2022 12:31 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net] ice: ignore protocol field in GTP offload
>
>Commit 34a897758efe ("ice: Add support for inner etype in switchdev") added
>the ability to match on inner ethertype. A side effect of that change is that it is
>now impossible to add some filters for protocols which do not contain inner
>ethtype field. tc requires the protocol field to be specified when providing
>certain other options, e.g. src_ip. This is a problem in case of GTP - when user
>wants to specify e.g. src_ip, they also need to specify protocol in tc command
>(otherwise tc fails with: Illegal "src_ip").
>Because GTP is a tunnel, the protocol field is treated as inner protocol.
>GTP does not contain inner ethtype field and the filter cannot be added.
>
>To fix this, ignore the ethertype field in case of GTP filters.
>
>Fixes: 9a225f81f540 ("ice: Support GTP-U and GTP-C offload in switchdev")
>Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_tc_lib.c | 4 +++-
> 1 file changed, 3 insertions(+), 1 deletion(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
