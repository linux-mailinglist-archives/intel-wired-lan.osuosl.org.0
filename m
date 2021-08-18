Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F45B3EF8C9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Aug 2021 05:39:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20316401E9;
	Wed, 18 Aug 2021 03:39:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tAQKdX_nR46L; Wed, 18 Aug 2021 03:39:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0E9640019;
	Wed, 18 Aug 2021 03:39:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F7FF1BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 03:39:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 79F5F40530
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 03:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GmPVr3ivMpcS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Aug 2021 03:39:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6CEF40527
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 03:39:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="301827762"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="301827762"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 20:39:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="520733128"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Aug 2021 20:39:23 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 17 Aug 2021 20:39:22 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 17 Aug 2021 20:39:22 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 17 Aug 2021 20:39:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J9mx0FL71gvONpXHu+2I5kQ4aZ+UDtFub019EQKO3KWpQengmio8ogCblvg+cvI7H/lTsw7/GjMhKuBaEfpCKwjKa1JbuueDYlVRTnqdj/puur4rYM+9ccmMW+AeKDsqsFsiBL5sQv2WR0LEaJYe8IOljuseB+eTKPHhchhrBU7F5mf/DAyuS2NYtem41wbrVeiEzzKzZyt453NEE8ylbbQaCR/h34GILb/MB7pc84HXsNxfg12Ee08rVdknmmWEFgQAS2d8ORGgUgEO7zDITiAZI6AanyLa4ZCD4jwONiy8X5OWpjndcs4l79e+i6ny/8U1Kvleg7Yy9PtX08TGOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EqQqp56yASYZgp5/CUAZDIY6vZeaS3IRuhH7eJAcxAM=;
 b=oHWr6O0nA4jmqqGkVMjMn38B99q0nT8CT7bgvgeNs6mkbhkxPUG5vzPXEfu0kBL+prhstmjSJD/dGQKB3SQUT10dteB99iXATFumeDoyga9MNqpC++crfh5+6QRVgstO9ua8lhPa3SiPocNCuErQvIAroLkvVqyEZkKoZYIOgaXsnN9YHWTGKGAZ8++Ibbmom+wmEnbbIn9KOhmnDzkPREII+COQh8XfQbegLtB3C2in4sslAb2JI0j+YAd9ZOr9DvdB1dpVN1sjANO8OcohIRELtKBhx/6siY/7N/E+04fa3ghAw1XVBsFEzo0x2Uribm8e7qqDp/uT8Zwy61rodw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EqQqp56yASYZgp5/CUAZDIY6vZeaS3IRuhH7eJAcxAM=;
 b=FMWZfbuahXShpGbTszaoztBLYzfBSb34TZtkEdXu7S/qCPqzocMrroTQJ7Fds/h2kYUE/1yjBVFaGL8Un3s/QyeGh1arbY5SLEbyuCS8NvXr9XQJTXWoDoPuDD8/tWPDa3sAnZWK9zWD+fVW/50vNKeacf+4EHzs2nSwYemmX5M=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR1101MB2192.namprd11.prod.outlook.com (2603:10b6:301:59::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.21; Wed, 18 Aug
 2021 03:39:21 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c890:d669:a46d:eb03]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c890:d669:a46d:eb03%3]) with mapi id 15.20.4415.024; Wed, 18 Aug 2021
 03:39:21 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 07/12] ice: set and release
 switchdev environment
Thread-Index: AQHXaauqMTSPsxMmPk6WnOyRkSTrWKt48enw
Date: Wed, 18 Aug 2021 03:39:21 +0000
Message-ID: <MW3PR11MB4554E8E9088ED79AB76B13579CFF9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
 <20210625024501.6126-8-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20210625024501.6126-8-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d6880e80-1fbe-40e8-9254-08d961f9c404
x-ms-traffictypediagnostic: MWHPR1101MB2192:
x-microsoft-antispam-prvs: <MWHPR1101MB219265FF825BF9E886B2B7DD9CFF9@MWHPR1101MB2192.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vI7IKy4WTgfeCfhyULJqSQ/cz6Msu/fuUgxEBtxUe8hLfBFt8CIaexe/2KBeaCdieX68HMIWQ0BwRt4ECEN2t34d04DhBN+us+QyTriY4YwXKsSPPwowXFlc9j/k3WyR96jNJzYuFP/Yrx6euy854ZUKzyiMBE3Acuo7xWdyVwvbsDtOS/26xIsjHNTG23SL/e78cG2h5i5ZPkxeW+4uyIyVjE14iocRVwsoijLB/X/gaoNSITeE97pK6q8x+m3TEah59r0/sPJGbHaAS+kDN63DOcBsJ/pWM+jHXakzMwxXYEeWCHfoUeY5rwJ14S4bdioElLjWXZM47QtAgvkzvFcn9mcC4UeA9liCkjIzykHNWvloGBXQb0UzuuISfawipu17s4hG+HtqDPini9hhGczl83sBG6JV69+xu82moxXVzuA8ctYlfXNSUNBJy+Lm4H7I83MXJxImEB/Tc8p4AUNFYi9Ggx2B4/La5HkTYcCtNg4LhvPiYL8fWTfcmTPonDBFseO7vVrBbz08TaQvjZiZMUz8YU6NpGaqt6qNfN05Yxhm2SmBwryP/w4X1ww4IbtR+ap7M5XPUo/rsCss4B480am3Am8J+GGmsl2YJjugUeXUTiN5kwiyBzUQUCWYLbCExlyJ5m++m0Ij1mLudWqV/0MbkxXZcNpeQu+PaQIv0L9DOdOxzIJ7cUiPBf+tHgWmzYwlwbTdkHEeUYjDJw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(396003)(136003)(39860400002)(366004)(38100700002)(83380400001)(8936002)(6506007)(71200400001)(8676002)(7696005)(26005)(86362001)(52536014)(5660300002)(76116006)(2906002)(316002)(66556008)(66446008)(64756008)(66476007)(55016002)(38070700005)(66946007)(186003)(478600001)(122000001)(9686003)(33656002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tKCnf759vnR+skZi5jDPsYZRwdvqB4bE7OAGsrSrUznRmXF4VlvOLRZJ/DYF?=
 =?us-ascii?Q?JEMgMgvSObpIu+ZS0ttxNmJ4f+zt6DSM1WPpbgHyIylELFHgjAb+qmUUHC6p?=
 =?us-ascii?Q?4zQFAwWq0mwB7dcTXqKrYMzz/aeWD4s3VXAt3AG7sST90hxX2+qgtkfrx2I2?=
 =?us-ascii?Q?Dfuu23MI2rL46XdFsGV1F5ValuuA6FFt2zVVwYJcThZAgZeVO5O6FTLj9iqs?=
 =?us-ascii?Q?F/o/ziZipK3ZX61bKCsnmIskzci9kmP2XVfGJ5f2hL7CZCEcX11mAQFdKtxc?=
 =?us-ascii?Q?O/5Bk4p/bqF+ci3GmxvauZjzlVu+Dj+J0ab4fREOz0JdIOWsv2/KGxQXwyrh?=
 =?us-ascii?Q?AQ0+3Hq7FoXBwGqCxsKVVGo36wpnJ4dVGVmy9NZLMegdojYNJ89uwWKlnrhZ?=
 =?us-ascii?Q?N3e6ponJaooKDpjjZeeuXin6tUPv+PDt1cmELSKL8HsjCx0XKpoSMGg2ilhm?=
 =?us-ascii?Q?E6dbIHZJ2CUBd/az1np9hjwgvMCKERYgit71kHABJQBpCQJi0m29nXKcPh7L?=
 =?us-ascii?Q?BbqM17PBhDW5eXINjBLskpGYZcFi8DoWTi3g/26KM6BcC2qbfjPWTPdgsGrN?=
 =?us-ascii?Q?mIhqyHt/+H+vJP1UTHyhVifEvypAbikjCV9Bf4YlXwfnweAAFtpINLpOg6uc?=
 =?us-ascii?Q?j3zKC85eWG6HVs/MQsNONKb7iv/52XQUnH/sl5qMmqev5uNMS45b1O6Y5+w+?=
 =?us-ascii?Q?j3tYDyzjeF0ti0w+Wkoslx4JUlPCqr/2d10cpji7WbmIB4W5K6hnCl/Vqy4K?=
 =?us-ascii?Q?kpYEbOzQMYNUFnPfOh4fbGy5Ms0WXf8T/p3t2Um5KNCE5au4T8JtZehMCfwT?=
 =?us-ascii?Q?qNCRKYEHrqoJqHxYyoP1fAqstv0TOa5uSIIHP0DbOTVqkp9a+9CIY5Q4f3Yb?=
 =?us-ascii?Q?BnJ95QnuksFNgNob/Eo1nhCoV/PVsvzRwrlDiPA+WfHsDfErSlhcUETvZzbB?=
 =?us-ascii?Q?tfQ6Lc+f2xZyapp5gd9t4sdqN5TErJCFe+pBQ+enJ6F0Zvm5EVL0b9vAiGPC?=
 =?us-ascii?Q?1TEkX1rXHJknmi2Q6OdhUmHQpD6Ay6ShZd2IejITlbcWEnDKUQgk7Fq6xbpX?=
 =?us-ascii?Q?NY/dSqTTPtHQfA5oLARNwvtHPNp8ams4hnAhKVFgNsfNgjqLfenOhSvGL/Fp?=
 =?us-ascii?Q?cKP7Hq+zj2zCBEOlwwDhagQFWvyiKIhVyOZkS8adzAlIfpUSQo6m1uebgA8Q?=
 =?us-ascii?Q?8vWBQUiAL3Qm25Kexqztyo4b951y4BeXVsHLLgr89b9sso5ZzxLKI/N3ZqZb?=
 =?us-ascii?Q?wfUsyMVDDo8T0a5Dsbz6b0CpNnDmfCXAZ9S/SOvA/PUOjJcsm/wdEhrzz17D?=
 =?us-ascii?Q?tJAAtLIo0gJkerlk3GA8a/33?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6880e80-1fbe-40e8-9254-08d961f9c404
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2021 03:39:21.1636 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o0rA73Q1boanMEmr17QAmsWVCCUE24iiqClnBLy2pQ0MzogbY3r9c4VaTLQzN9uK5EQ2yMuFzYg8vNX6EipXOo0Ge4mjDQa5nLHrcDr/b2k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2192
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 07/12] ice: set and
 release switchdev environment
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
>Michal Swiatkowski
>Sent: Friday, June 25, 2021 8:15 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v3 07/12] ice: set and release
>switchdev environment
>
>From: Grzegorz Nitka <grzegorz.nitka@intel.com>
>
>Switchdev environment has to be set up when user create VFs and eswitch
>mode is switchdev. Release is done when user delete all VFs.
>
>Data path in this implementation is based on control plane VSI.
>This VSI is used to pass traffic from port representors to coresponfing VFs and
>vice versa. Default TX rule has to be added to forward packet to control plane
>VSI. This will redirect packets from VFs which don't match other rules to
>control plane VSI.
>
>On RX site default rule is added on uplink VSI to receive all traffic that doesn't
>match other rules. When setting switchdev environment all other rules from
>VFs should be removed. Packet to VFs will be forwarded by control plane VSI.
>
>As VF without any mac rules can't send any packet because of antispoof
>mechanism, VSI antispoof should be turned off on each VFs.
>
>To send packet from representor to correct VSI, destintion VSI field in TX
>descriptor will have to be filled. Allow that by setting destination override bit
>in control plane VSI security config.
>
>Packet from VFs will be received on control plane VSI. Driver should decide to
>which netdev forward the packet. Decision is made based on src_vsi field from
>descriptor. There is a target netdev list in control plane VSI struct which
>choose netdev based on src_vsi number.
>
>Co-developed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice.h         |  23 ++
> drivers/net/ethernet/intel/ice/ice_eswitch.c | 394 +++++++++++++++++++
>drivers/net/ethernet/intel/ice/ice_eswitch.h |  16 +-
> drivers/net/ethernet/intel/ice/ice_main.c    |  19 +-
> drivers/net/ethernet/intel/ice/ice_repr.c    |  12 +
> drivers/net/ethernet/intel/ice/ice_repr.h    |   2 +
> 6 files changed, 453 insertions(+), 13 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
