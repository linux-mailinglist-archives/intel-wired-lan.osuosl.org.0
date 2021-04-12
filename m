Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8411535CF4F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Apr 2021 19:19:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CC206066B;
	Mon, 12 Apr 2021 17:18:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8STaUOS1oJal; Mon, 12 Apr 2021 17:18:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 223776063E;
	Mon, 12 Apr 2021 17:18:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E6B721BF9C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 17:18:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF1324022B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 17:18:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zNqeoaSy-azP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Apr 2021 17:18:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 02047401FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 17:18:51 +0000 (UTC)
IronPort-SDR: H/zw9w4ZAp9bCG8R2WTNjgOuVCzzpOb8nVvt3N0K0FjL18vKWS+kJaOyLAz38NqberUgxQyn49
 VN6NK81ZlBLA==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="214709644"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="214709644"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 10:18:51 -0700
IronPort-SDR: +Nlt2pFTyL+VaNI+9gsto8UoERff8CmBKHXZ3iio3mNu4oVt/0PhrPI7iElBr9/O3McFlMDHnA
 8JOM6gctUaeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="388730866"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 12 Apr 2021 10:18:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 12 Apr 2021 10:18:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 12 Apr 2021 10:18:50 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.55) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 12 Apr 2021 10:18:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lhkz+KXJdbz/7YzT9aolDqgkz+aFY0nPynIUGh+QqH5JEdCt80PfEVZh7fvCTZ1lYKQT/xuwu6ddSwitzc/QgrQERHseHPTkidrNn/8Oj9EHf1Yb4iNWIFP9oj7nZg4aC7cqEaTvRtra5NOHipUCShpKE2RAJuI5ExjpAzp+z16ObKVVDHtc8XxbIyoYTgnoYjY/mPovssUZjki7fTNFH++iuCySwU82gJjx0EbkSqeiQipUFbWMiHJPRW4FqRt9VhBaav+BTEt9CHPwgcv8RtJVK41ikLIGzlBkiSOEmiVhRFGoHvf6P5WlT4SsG+sJ8D06+6nUjvqUojywCKHAng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ST3qH+KlxwwflFZ89Rj7zJl7TXM9JplTwbkbq0LO+o0=;
 b=GLiLbImlhALtbvZPK0z2Z4LyKcjxuAHGDvhkfG3CkjthfOi6ANZvqW/aJ26NPwxDEXQHRIKWUFgow6J1FAfp+KyOFCOXgfkvdmKKR1gUZZ28eBScsVRISVEWBgxUExOarGSXUubuYt9z3oI5xwCcO61N+U749kJ6cC3eVWeLgX4H3R5GsKUd2IKunmt2/0gUSruYNrta5PzDSsW+yo6e40UzoBChUMbTpLnqsOREB97bynzC7wxUj89s7qbBdbBiCbVARrifMOLoJ0Q4Sgao5MODnwGBuIcAfJzO7x25iJs9+0sVjRCUmrbbRMc5blx1DAiwKvPPnHz9ut3IafSfXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ST3qH+KlxwwflFZ89Rj7zJl7TXM9JplTwbkbq0LO+o0=;
 b=NiM1qUDo52yPs6BFCRut6ZIJlngk6Zse1QZx3p49e70TYwwc21rjsIXxniRXFIr5Nc+ug95EUnbF4tmkg1uXHv5VsR5fOUU8gcd9axe5BzsjdvtrDk+cp8xA8COl/C4dhftVB+PU0dCyy2O8I6mFj1wrrYJHIfgem+wXkVhn9Gs=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB5090.namprd11.prod.outlook.com (2603:10b6:303:96::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.16; Mon, 12 Apr
 2021 17:18:49 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.4020.022; Mon, 12 Apr 2021
 17:18:49 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S58 04/13] ice: refactor ITR data
 structures
Thread-Index: AQHXJnSm28uX8UDadUCyRsrBs9p0/6qxMrdA
Date: Mon, 12 Apr 2021 17:18:49 +0000
Message-ID: <CO1PR11MB5105CABA30ECC29A2C3F9A71FA709@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
 <20210331211708.55205-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20210331211708.55205-4-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b0a6319e-7f19-4440-7e72-08d8fdd70991
x-ms-traffictypediagnostic: CO1PR11MB5090:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB50908AB835DEE83623345AC6FA709@CO1PR11MB5090.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SzoE+R7keyCzdFOEGbFkCy+lbycbMA0uOZIpsW8mSAbKnt884HlfuKivDt+k60UXJYYyfvCrE5oxnM2IRsRs+Exzwv3MdFgWmvhX5UUIw3EUtTc4ZLihei0LGPYJ1x7RL3hcdzf/YdPmlUjJDYq2vs99ubVmM2LvNdx/Mbjza/+pG7S/89zoqLc/T8w0znARTc9jqMFCK5FjBHjnzwiMWwtCCAvtR/9FYbNTL3j08qxBEh7R+5j0MXjicY7//p3Eq9MOKa/Rt5UN4HAWsV1JgetJBtLB0ovc/CwFhkxfLsZ1SlYNn3XG3alPANbRy1aZoEdgzJwdrgNFHsKJ4dtC8LQsGNDy5lAoz1mxEJsMq7+WOw4riB7GYnXqXwUMrUnqDC6e/AQ7H2Zq728CQ24ljkKyp090aVMrLIST4Tm/PVj/joAKgLSNqpA3VWw2TNePCefmYM5UT/n+0TfjtD2nBw1fOZWDnzEHEeJTknHVfmCQzb/Fzwq7Pe93n4sZZOPMdSOYU4jro5BfuNQ0t24EEa+p/Mr7e3YdSxgjITnmcWrFBgU7sgiE5sCmT8sXePPzTiAuY/pBUQgFSsA6Fo2wGPr1JwWBPjre3luzoXFTe40=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(39860400002)(396003)(136003)(346002)(2906002)(71200400001)(76116006)(66476007)(316002)(66556008)(66946007)(66446008)(64756008)(38100700002)(55016002)(6506007)(53546011)(8676002)(186003)(7696005)(478600001)(26005)(110136005)(9686003)(83380400001)(52536014)(5660300002)(86362001)(33656002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?CNKZHBf7EyJdrpaTr84K+r8PP2j8wemWYy1vT8u40exXnJ/9JYJTj4lCs5Y5?=
 =?us-ascii?Q?HJYFAk2DN6pjiCY9Xtb9StyMWhkjrevBuosKyDLB4oLav1+CupsTpxwn6xr8?=
 =?us-ascii?Q?Yg6YV6FMdfQ/cM4Dd4bGr31CWAAlkKkP3z6R/4RvugEIhP3/o/8puH2zSxnC?=
 =?us-ascii?Q?8lUmGVinFVZ0QhBowU2ttGKF0HRPWQyziEGrc3n8ihVkHk2hqT/JIjQjXoMq?=
 =?us-ascii?Q?uvdviAXBX66CM0P04KirOIdES79OscNSxhPO81FYX2TZyutTCl38PZPVeXhO?=
 =?us-ascii?Q?ARusiHj9MG4Z8ZLE44KePU4Ttb9izpZt3cPxOj600g8HVcmvq5xXroJDluuy?=
 =?us-ascii?Q?80cPPLRK+Ca4q3WByqAZk/k+FF5frjyZg+aiLius1pdvODTric3LPHJz9nB+?=
 =?us-ascii?Q?xnbi+0nhO+/EW9bggPVdtZz12w3KcUD8nJiEAeox69zdIc4iGQO8wf4tV0lh?=
 =?us-ascii?Q?/PIVWDKYWLG/SSVyy32X2KsLbrj2RwNGLO40terd4Jn6adhECWqRJ4lFWlO6?=
 =?us-ascii?Q?anvKIy4N48v5Bk/BN8/WsxQn6AS6UPXqWsotN6ot31VrWhv4ZomFYCd5ySlG?=
 =?us-ascii?Q?CqFf/ruGCaOXqfDW8aZaY8IPyUbQsu1RcO/7x8qyPKOpkIbx85U/+qemFBa0?=
 =?us-ascii?Q?ZkxckXfArgUsZaURuNTVwKthcGvE8ucOzo4Dr91BmU25oM7aZvTWuzMoGDhE?=
 =?us-ascii?Q?/CekWL5htXRHvrs2I2KC+0c0kzo06DNYm+xqEtfBPkE0kLvcSD4JrDgdAFUI?=
 =?us-ascii?Q?dnaFLXGZUU2VxZV7C0uSAbVIr0azOqPoa/hn9VWsFo78NDUJXnD4q9+jXJHb?=
 =?us-ascii?Q?tPX+ohUd+yCurNSWqEOtTEQIKxswGYYULgDXSLRrmn7rx/LhGWkmznucgva2?=
 =?us-ascii?Q?DAt7k1C2NOx/os/zBKTrLuifEGD3g5bUqzM/QZKt3rCbRU6TrdeXXhUYs3z+?=
 =?us-ascii?Q?C4eurSTI6WfrUdS+2mULbK1W6xHhJZiWMOjp0TxXLxAlmNzRgpjfcnKzGPSN?=
 =?us-ascii?Q?WGWUYLsTdkyLupFJ3+2GYMS5yEAziM7Usjg4/WNkUBXEkxCNtn2oQtvizO1E?=
 =?us-ascii?Q?adkxW7hLPjjQ1l+qzZ/ThXLjzeIDWZ9xT65/iEZ20zUkJ1893KPblNmpsv9r?=
 =?us-ascii?Q?wiio+gIib1rG3zdA46z4ElUxWnIB6Oygp3FZHhyaHz/ZYhJW9aWCxI4Pmfj3?=
 =?us-ascii?Q?c4Y07m5adkw4dZ4zDIRNnKnYEGR0ny9Px40m8EtodH/iRXqJQb9mfp8FTaYu?=
 =?us-ascii?Q?V2e3IMOCd9N3lU/me/5RFsDm1FME5mEtsw+PlY1GbRyaJiE1+0SaZuj8LiWC?=
 =?us-ascii?Q?M3SjBtSNTaxZ1XOjUwvNjRh2?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0a6319e-7f19-4440-7e72-08d8fdd70991
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2021 17:18:49.2743 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3/7Xc+lHLTMy6vYUmrcXzyFkxwicmuCjmepRcjOXU+SFKEIPvfql28kSCZAlcSPdjLMps9fYVPwCyVkaCkOTHpBCH+FbQ4wp0Dph49sQDt8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5090
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S58 04/13] ice: refactor ITR data
 structures
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
> Sent: Wednesday, March 31, 2021 2:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S58 04/13] ice: refactor ITR data structures
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> Use a dedicated bitfield in order to both increase the amount of checking
> around the length of ITR writes as well as simplify the checks of dynamic
> mode.
> 
> Basically unpack the "high bit means dynamic" logic into bitfields.
> 
> Also, remove some unused ITR defines.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c    |  3 ++
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 15 +++++-----
>  drivers/net/ethernet/intel/ice/ice_lib.c     |  7 -----
>  drivers/net/ethernet/intel/ice/ice_txrx.c    |  4 +--
>  drivers/net/ethernet/intel/ice/ice_txrx.h    | 30 +++++++++-----------
>  5 files changed, 26 insertions(+), 33 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
