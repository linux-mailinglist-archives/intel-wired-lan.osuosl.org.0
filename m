Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 085953FD7D8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Sep 2021 12:41:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3EBF60703;
	Wed,  1 Sep 2021 10:41:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ib4XAFO7SjJq; Wed,  1 Sep 2021 10:41:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FCE26072C;
	Wed,  1 Sep 2021 10:41:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C3A91BF681
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 10:41:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7794340117
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 10:41:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zg1qcAFLv_ss for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Sep 2021 10:41:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 664DD400F0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 10:41:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="215579227"
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="215579227"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 03:41:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="520224218"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga004.fm.intel.com with ESMTP; 01 Sep 2021 03:41:25 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 1 Sep 2021 03:41:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 1 Sep 2021 03:41:24 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 1 Sep 2021 03:41:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H/Q1zScwSZIcqdF/qMheE9VsL0cdrQGX4aQwzCxr+GEYB9Mf6+Xe8QfhxmG9MiAs+HHxL6KU9UTO7lo6RNoCCv8mY84BSbqvZw0HImHGprPMith1UZn4zJH8dsfl7CI/10NUsufc5n0QO2SUimoMmJhGcxgec73kSTCY5eOOchlu+0lumV0T4l7RClX5SLwRtqbDbHQbVxJRwhtPe9CKdCpTQipziH3QmE3SPdMTwguAQGjtono0jsjhnxcVIuAF4cAbKkZlS+zlYGFBRm12u9YreOnaYnPXYrwY8Q6XC5iMguxD+huCvQEUcG+3/h5MIAzyzuaxrg6zvgqvaqKOmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=u/Hqa8ZGq8VnqJ18n12VgtNb0Xig+zT1cM0TbaX46lQ=;
 b=Lu6IJTyscKabcfh2PGkR/lPNnw1g45YX6xoGy5WOXcivW37VJSwkQwzfbUqL5OH5Qwt2b4FcNMU+zF8moeUD6i1i6SSSK+t+LCx0DjwWZvh9WY/Qnn5CQTJ65JFwbnldYFqjD/1wj52AR8dGNcWuRSUR8CeLscESxgtVP5xd4i+Z4fm++TiUPDnF7IUKcBOkZcifyePLUUazKezr+39FvGN4nlr1/6dXr+cKMGlDGrnv+EUESB7vkaugCvxmEeKqEu1Q0ln4fSsv4NYg+KMg7WkX+dYqm3NcmhUAiKcPUUVgvG3Yat8UhBtliEiGLp3+bnuswsJ/03QzQMm1ZgDRNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u/Hqa8ZGq8VnqJ18n12VgtNb0Xig+zT1cM0TbaX46lQ=;
 b=AJKperDL19fe7C6mUEIoA/Ku2/eeYYPaYSk0dwZ4+bh6gDQQ2opgdl1eQJa0WpOgRPZKLTEUeoFBhAW8WnBObMihisubSqzbUZ/nDu0tnYYwtxzG5gfSXL5wluh0FbocvXI+uSMS6Wl9o6UYtIxeWx+5q/seISnNeECZn4Eesio=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MW3PR11MB4650.namprd11.prod.outlook.com (2603:10b6:303:54::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.17; Wed, 1 Sep
 2021 10:41:22 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%8]) with mapi id 15.20.4478.019; Wed, 1 Sep 2021
 10:41:22 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v4 12/12] ice: add port
 representor ethtool ops and stats
Thread-Index: AQHXlVdNmjJ5kDuxuEuWyOMyKmX6/6uPEPrA
Date: Wed, 1 Sep 2021 10:41:22 +0000
Message-ID: <MW3PR11MB4554325EF24F737D6CEEE6DD9CCD9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20210820000859.680522-1-anthony.l.nguyen@intel.com>
 <20210820000859.680522-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20210820000859.680522-13-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63c0b1eb-4ed1-4c2f-9411-08d96d350a79
x-ms-traffictypediagnostic: MW3PR11MB4650:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB4650697FAA87577600D562099CCD9@MW3PR11MB4650.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6Ham+Udj/yh5vdUCIWTcAHMRUpg3vukmD4c6QjoubYdIWq3ZjGLs2PTl+JkrZrsAcgxWdCY9o+9AJul0ie+HmL0EhpxpQRvFS+K/7Do4wpl1AxD1pMAAr72n/eYu+UwJ1HcLPvnKqR1gYaYzRkDikHkg6yjwt1+6jWk45phCLj2HOpFoTPoZ0rOb7E4vikrxcdi7WYEigs66+MjvGBDwu08PhcabLO/tPo8QEnWq2OjhBaJ6C1GQP280TZ4aIh7UAzHVKt3wXJOnuxOPKbw4YZi03IL3uqz/NWaUZC+Oh5rReE2pxHsi4MQwXykyOSkTUF4cOF6OQvLvjSEvyXCN66tOhQw5vSQv7z6DM0119AilfwE2eogfdbe7py7jKSQoDa5yP4lmLq0bSaX/0UsVI3uzqdhAj5Pu2TC4T64eQWWsj8bo2odnj0syi18yLjGwt7pdax0DrmJY0o/J4zOQ5jAdPvGEX8XWT2XFwkQg6G8fLlSP4M68hmymuUet9WX3noGvluuGzFMdKPoVsJ7mUIlLjJpvPpab2A4K+MPelrKFuwTy/89oWkVcB6LIzEH35A8VUL8I4gqDSusSt5u09tq0wdppoC6FH7/mzXFGP684MqfKf+XL52R45nLyAR4g/VmSeA1GcD01wUjoGzQmTe14j1jbOWf1wY/F17610pmoSlaBg+nLeCcjhBCjX8yUQnKYCuhwekU5DS1fhf0E7w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(366004)(346002)(396003)(39860400002)(83380400001)(26005)(64756008)(66476007)(110136005)(66556008)(316002)(66946007)(71200400001)(55016002)(33656002)(5660300002)(9686003)(66446008)(186003)(76116006)(8676002)(38100700002)(8936002)(6506007)(7696005)(38070700005)(122000001)(478600001)(86362001)(2906002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YFGAU/q9x6021H1U0UnD3cwcoAyqpu+VvtObl6a0Ru9tZNjs/lpkWPDnRMPg?=
 =?us-ascii?Q?5nl/9x6jbpXOs0PCdO2gsNpngiyw3I9tV6zQH1XoeWR4zUuoNQl4OcMXYFU4?=
 =?us-ascii?Q?fTaSWNKHRIMRwgtPsBCHzitT/JZu750UfX8aQZ/tzjAdJ8U7OujY5wvUAaNn?=
 =?us-ascii?Q?sJ3zuwDY1GZVF0NUZeY160J8IOHgbW5g666kEQreqsnu5KLpNHzlVbDsfMME?=
 =?us-ascii?Q?722NduKedRjFEccp1ON9rs9tbprQushepa4spE9pg8BGiHyxu2FZbyaa9DND?=
 =?us-ascii?Q?/erNn27Dd1wOUIlH19s0ywBOsWcgm4Vu7Hb1LCOD/h8MQXhKIQJQyDdItkSG?=
 =?us-ascii?Q?plXZqNH0ZhQZaEPaIeKIe4FDxl/prHGHapXK4Btdt0w4VjY4WxoIsvjuE07a?=
 =?us-ascii?Q?+1gvn+2WGXtLZ3ozn73iQnkBncjy+y1w+EDEyDONw1bOK+Dyayjml1thSri5?=
 =?us-ascii?Q?h/mn8oRbahTV6Gc8EsaXDlRm29Q5ed7M/KFjdPnQDQNeG8xL/caH/6A1hSpE?=
 =?us-ascii?Q?DyGNaTVOiDD7il09LdzfkyHm/dFRHWw/b8105IhlrWHQ+4M29bDEKQ8MNwM+?=
 =?us-ascii?Q?JYgkMwBB04VqrbiDNyjEfZYhxUd1awO8tCe5/EeI94Om+PtGRTqwaz8n4+bF?=
 =?us-ascii?Q?e/hr/E1y2DuwZLJnK5qtHpvMLX7c+XlVghSyLfBJqiRmpVi5hkNDOHGhzTwc?=
 =?us-ascii?Q?VT+mV+6hAiXD97d3G8p7OdF7djNHUzGRLQz4qDPZ+jt0DRvux6aOQHVCHlSO?=
 =?us-ascii?Q?LB2t8MfMxmzVCnvkYUThJ6yAPSUWTJNG1TZEkrERejyAFWiAWQfMv8pz9i2S?=
 =?us-ascii?Q?IOlGmWNfOPthxgr4+RWi4uW+ycy//QHuJogCsJDc/SL1KCc4Uj4BU7DJT5uy?=
 =?us-ascii?Q?5nnbVoKqtUizhRH0VV2smnd7oHcY5HIb+ikCcoZdPEndBW1g8Cz3XOPcZFvb?=
 =?us-ascii?Q?aiV5adEQu1LBtrfmLHOs2fxv4ZqqP8+YKMYyduEym02usG8FnEfyNQXHZw0i?=
 =?us-ascii?Q?loKhqzZy8ZI3OrZa9FpwTWrKMP6TTHl6tUDdG0YmRkFuoX2wrz6x/6wio+pw?=
 =?us-ascii?Q?Ib9GKLJf4d7qbDeTYUeWJWMVfGyAjxMRbRWxnrFnRrzHkknCJ+N6g+sOrS76?=
 =?us-ascii?Q?mSBkrhcUB+CP17ZHEEb2szJgiMcTwGATddZDV+iePcq1TxLJvzKu7xftHpU+?=
 =?us-ascii?Q?H9FiGaqBFxfPgsDF0RFW9BqMLrzUUyHgp6HJoFRTVu/BpZhtfZ1LW0wqI6CU?=
 =?us-ascii?Q?0p92RGB3lmcuHBeHV4uozfmNHI/Bh0FTitZLigvD+YQkyqGi+lF0UNipF8Ia?=
 =?us-ascii?Q?hx2jHehCpVi1YEkTRUQrJ6Pp?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63c0b1eb-4ed1-4c2f-9411-08d96d350a79
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2021 10:41:22.4880 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UXNcLUCLhO8pKHjiARvGaDZvZncnjf4ErOfUO0JmqizwahYrwwIAoQEwF5wQlFy/dHGvvyz2ebAns/BErkUJh86gyocdDUW6eZ/Heq8coVs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4650
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v4 12/12] ice: add port
 representor ethtool ops and stats
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
>Tony Nguyen
>Sent: Friday, August 20, 2021 5:39 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [next-queue v4 12/12] ice: add port representor
>ethtool ops and stats
>
>From: Wojciech Drewek <wojciech.drewek@intel.com>
>
>Introduce the following ethtool operations for VF's representor:
>	-get_drvinfo
>	-get_strings
>	-get_ethtool_stats
>	-get_sset_count
>	-get_link
>
>In all cases, existing operations were used with minor changes which allow us
>to detect if ethtool op was called for representor. Only VF VSI stats will be
>available for representor.
>
>Implement ndo_get_stats64 for port representor. This will update VF VSI stats
>and read them.
>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice.h          | 14 +++++
> drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |  5 ++
>drivers/net/ethernet/intel/ice/ice_ethtool.c  | 55 +++++++++++++++++--
> drivers/net/ethernet/intel/ice/ice_repr.c     | 33 +++++++++++
> .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  4 +-
>.../net/ethernet/intel/ice/ice_virtchnl_pf.h  | 13 +++++
> 6 files changed, 117 insertions(+), 7 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
