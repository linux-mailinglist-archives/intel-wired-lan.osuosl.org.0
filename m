Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E24E336895
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 01:27:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC85F4300D;
	Thu, 11 Mar 2021 00:27:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sJJR-ioKkWYr; Thu, 11 Mar 2021 00:27:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB18A42FF5;
	Thu, 11 Mar 2021 00:27:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D43E01BF399
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 00:27:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C23BE8343E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 00:27:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pP2ZD1RHfdAK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 00:27:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E42E483437
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 00:27:13 +0000 (UTC)
IronPort-SDR: G8dxENJBx2glQpvB3+Ctv1oVYCNo46JwIoK90Nf0+9Mk6D5s34NVk4V/xj0mqKzN1u+peuzlC6
 3JfsUA7e5hdA==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="273627672"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="273627672"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 16:27:12 -0800
IronPort-SDR: NyQxhTjN3aWvR3YQj1739eLXt4Wk7ciBusswLXnQEQwYJHCBFqUwggAp0qLZOgCPtDwZ0E/0Ge
 MATzXCElLjeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="600008498"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga006.fm.intel.com with ESMTP; 10 Mar 2021 16:27:12 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Mar 2021 16:27:12 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Mar 2021 16:27:12 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 10 Mar 2021 16:27:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JgWltRF/2Qwn+Q4Pqmw37EXj6JlT0GufSyGfNVSfF1sM9YpeoNpbUtdvzUoGkapoKa69HuRYBY4SpCKEB1adJSUAFaf5hM4HunvM5PL6lzhESmGGsR9bGE+7CzyryHvu69Dkbt4mRwPPsI9H/FrJB/71YbkcwNX413XCkd7jNqEX5JxIs2kBVJQzTYzD5FnRLcYIVAj9504w8rpxqCM5ePKtEotMVEtbLd1uSBR4+4bqPVE5kd/H0HnJmTUBYoOlIT4STayiNQbEA11iqhNv5rPw4PWF7ek43s72ohyfSHl4QhJ96Wwq5e2CvfCMd19qZcrlRfo/QQpp6DU4yxWB6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bBqLqrYJXS9+Sp9VqY4lKMEw/natZm+SLf4jalUe/zM=;
 b=XU27qR0inlWFhmX+k7JTUmBXQapkhYdizTK47BrKZl/rmmfxIXpkFQioKIjkg5pb523i2igNFH1WQxzaEFI5+YmJ3zcmRFev/K7+CuwtX8lGslTO68ID5ySMCNimRvq8c9IQvfQm4zJZDMgI1KDBqNp4Z6F23dj9X0UuXnm4WBI0gLruXrg+FRyvTo+sRhl3618lPQIm2qw33BoMe03EWuvGOcJmzzBj9quRAx55qSSZwQ3qdKzJeRB4JBatNDnd7GFporqt2u1zYSkLX2q2Bd4jQhVVSR+6BQyg5lESrOSQPmQbi6uyxH9RfoXO4mgXd4TEFKf3aJGTPq4BWYOkJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bBqLqrYJXS9+Sp9VqY4lKMEw/natZm+SLf4jalUe/zM=;
 b=YdQBDcclS6JHCS6VMChAMPaonqCHcCUPVs2bqdcD6I6k87igPbRTWJ4/BbMnt0lqFEfBNFNkPpFO/GGcOTid5GE/jubRCcAJDVgIpzS8a78zUa1a+1GndrVlw7U49znNRgVZ1Cugv2G9z1LezcVralC19q0peezDFUFUPeWTNns=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB5202.namprd11.prod.outlook.com (2603:10b6:303:95::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17; Thu, 11 Mar
 2021 00:27:11 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Thu, 11 Mar 2021
 00:27:11 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S55 06/14] ice: handle increasing Tx or
 Rx ring sizes
Thread-Index: AQHXD5EopNCkIpcHZUu5v/m001CpW6p9+0xg
Date: Thu, 11 Mar 2021 00:27:11 +0000
Message-ID: <CO1PR11MB51054A06063DC01953AC6045FA909@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
 <20210302181213.51718-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181213.51718-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a3a3a2f-c149-4d33-c8b9-08d8e424698d
x-ms-traffictypediagnostic: CO1PR11MB5202:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB5202727BF4F2E2E5E04178F8FA909@CO1PR11MB5202.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h5BIqdHEeHcHc82qTxdUKd4lWG9qvXhLiwQ8POtW+UG+Od1ARbmsZltbSlhBlrGSZ4WxPdWkwzjQB82PfiWuaNOABKTdyETnL2jtwbnTxfIFcuRe3u/RNy4o5pCdOkPISoLqIgNBY2LYi0tPMvWZIOU7u+T7UesOgOCtpA4F8bGaQrK7UYABNGBIE+M2s6HyWSE6tVJvUF3YjfL+UDBXIcrHmC21boSM1xFng+TZ3LoyCGySrVZ4VXo2JuqwXtsj0yt1RBCyANwM9FO6NquHHHN3KjU2k3OuJJEsvJo9oBfxm3guD4GR2INtHQzjs3ARaMNJvWUuWRahouuwi1QDiuMXAtzSJ5yD3bqBVekRginkfSRWXvPiy5OMqOx4Oe+aBYEZ/MDyu/NqgkvDtAMYbxEJPBi5+cylv0HHM8fJm7HSVAIavnP0ez55W7a+oEGIpk/V3pBXgJxxRsKTjOWzkcaxsMKI5mPnI4Zt72AzhEx9fWN8ukN7Nsiu8CL3eGKJHuE5/+EDuEsUucR6LHP3tA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(396003)(346002)(39860400002)(136003)(53546011)(8676002)(186003)(83380400001)(5660300002)(2906002)(86362001)(9686003)(478600001)(6506007)(26005)(7696005)(33656002)(71200400001)(76116006)(55016002)(110136005)(66556008)(66446008)(64756008)(66946007)(66476007)(8936002)(316002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?NJjkQMe7TwS5H2W7GUS5sBNpQi6htJqFQnInsIQ5QMz9BI8ihPRH06O691mX?=
 =?us-ascii?Q?hzW7idpGQHL0/r4RGVyFTkXjmCCx81rw0cq7Ohfy4Gfqd9ImfRqTXWZj8wgX?=
 =?us-ascii?Q?lzF/PC9zZAWsVNlQCxWwIM4SLWxsu7978EGeEFHaRLsXg6zZOYVolP4Aky3b?=
 =?us-ascii?Q?NYEOSOquqCXNkgqAD/eEEq69oOoEMGzZHOjPET/ZdZDua/YWLyCoVqrkWRWR?=
 =?us-ascii?Q?f189h1EywVdFFvEXPMRHFIvArPOjo4Fb8JoW1DtoGA02m6h2NtkagH/SJxjV?=
 =?us-ascii?Q?Tsm/0wfeQuitoA82V5TgCEL0PvmWOrEqd5PToJXJtKj4Jc85lYPCm5qGMo/G?=
 =?us-ascii?Q?5xhLZ9Taen/FLevPYeyvaHUPjEZ8zghKVpSCk4bdq7q8DKJDU2R5ght/vt0q?=
 =?us-ascii?Q?EG9F7hNdYdQ1obAuQBzFanDovinA1nhTuJes7ialpzcAs7Oxyy1VPRaq+bOj?=
 =?us-ascii?Q?tAVOOOdDEbWbiJTrlpsGugXyQgZYJaj2GJfhR5dgwmR2RT21KCsjUjIYWmPs?=
 =?us-ascii?Q?bfbiXSAC8ktc7MuI+hEtNRUH5nnD541CsOZrgUyGqTx+9q9Et99ZqZBiXVx1?=
 =?us-ascii?Q?lhxdV3dq7bEJbW9dHI+fmJgb1Vu3wzrzvWeL2G92h1IaaoD7SwsM1OjpwXwo?=
 =?us-ascii?Q?9i8kS9a3lmk66uvM/OBUynNLwZ9NT6oZyA0N3/FLtHBE5puZKOX9AR3Gnb39?=
 =?us-ascii?Q?2pjgvPuhIxkhgskSHwdm+gYduoqHJE5XdDo50ZUeIn31sjmJmy3MyhkwcY1q?=
 =?us-ascii?Q?o9MZYIYbVHbZGNdgynVy59wmJ9PmbnpGI18r1H72rM1Nh4l9Vr4HUj4Iygsk?=
 =?us-ascii?Q?psN/De2DsVWdlaKRIJ51pIrufDzzB2gk4qlnQm1m2ubRRzNLADw4y0kkaClc?=
 =?us-ascii?Q?sHdCuAmoxxlwtH5JiD8pidi3yH0Z6Howx5tQhcCBAc9T0ASqjBz5wqONin+l?=
 =?us-ascii?Q?pEhhkypgYX27srBhQkRH6vn2V2ZS7etscSbelVnuvr6YfUxRkuBRgny4wO7S?=
 =?us-ascii?Q?HiaDVQFmRW7vHr/SUArVQWE1GrKBbsjDUzWSCxU26Y/TG5xOECJD/P5Ela+8?=
 =?us-ascii?Q?f4b/plPmkSLBf/hT/8mgCT1JItwCcr0MYSdTdujg07lzxuGcO9ijyRrJjet4?=
 =?us-ascii?Q?hE8ixScX/JBl9QX9cydcbzjR5eSUNYXeC3EnwhqnlPqtjJiVfaAHVT8rdNik?=
 =?us-ascii?Q?nMBoF1jKGWyLsleFnuxs/EVhGXkJ182sFmFDppJq1Q4ouuUhC8rHW/UseiLG?=
 =?us-ascii?Q?Idrd/+K7PXG/P6ppjVlLb6BLFq0/YQec4u7hHzElT0GHBxFVmqDqhxJzmgyu?=
 =?us-ascii?Q?GrQlpdx6UkBDRnNUgDAHQ+tP?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a3a3a2f-c149-4d33-c8b9-08d8e424698d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2021 00:27:11.2834 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mE4Ae30WS+1Oy0YzACC7r/oERQMhai6GphnvOfTFw8NszzIb8b+Kn8MvaDu9Rn+RksboSGAPbCcaWce+NO7vZyXCNzAbmK9a3qCIRGEgedU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5202
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S55 06/14] ice: handle increasing Tx
 or Rx ring sizes
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Tuesday, March 2, 2021 10:12 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S55 06/14] ice: handle increasing Tx or Rx
> ring sizes
> 
> From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
> There is an issue when the Tx or Rx ring size increases using 'ethtool -L ...'
> where the new rings don't get the correct ITR values because when we
> rebuild the VSI we don't know that some of the rings may be new.
> 
> Fix this by looking at the original number of rings and determining if the rings
> in ice_vsi_rebuild_set_coalesce() were not present in the original rings
> received in ice_vsi_rebuild_get_coalesce().
> 
> Also change the code to return an error if we can't allocate memory for the
> coalesce data in ice_vsi_rebuild().
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 123 ++++++++++++++++------
>  drivers/net/ethernet/intel/ice/ice_txrx.h |   2 +
>  2 files changed, 92 insertions(+), 33 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
