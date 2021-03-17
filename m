Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D867933E5FF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 02:28:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 857FA6F5A1;
	Wed, 17 Mar 2021 01:28:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id beT1XNPB1DWy; Wed, 17 Mar 2021 01:28:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7801660684;
	Wed, 17 Mar 2021 01:28:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 03FE01BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 01:28:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E7E6560599
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 01:28:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sSN7RZO-rHEa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 01:28:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3250360684
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 01:28:04 +0000 (UTC)
IronPort-SDR: 2ot0BGktGfDrZAZ/7bIKZxwFTBQpoMkzZS+b29en4HD1539CObXrCaBXKPsc8OoL3OLXj+RGuU
 p3CNhBBJBP7A==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="274410025"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="274410025"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 18:28:04 -0700
IronPort-SDR: 9MNTEW3cpRUvHIHi9o22PNF+OaSeUSCX34IBLgB5BkGcYtacWTmHgGYK19kffo6rIQnHoHZdHz
 i0az6GZ3X7Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="372169970"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 16 Mar 2021 18:28:04 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 18:28:03 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 18:28:03 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 16 Mar 2021 18:28:03 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 16 Mar 2021 18:28:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=it69J7IGKckBjDgmQ8y2VX5s0xaH1DT6qLfbP7G2RL7rcnlRZftUhix980h28Yud4ENy7aF7QPlROqXJGLNn3+VW6BMEueoL4SwDoR6j8HXvy0zfmqEInDHADUzck3YRIXHEKDgjQL23E7I/ZXiHQXKJQsv4R1e9NivSVPLzjzMbGQyF5xeYluXQvt7tsgwV/NONb5K8eM5z/6UkLVlmixVZhoOYsvFFu9lb/uNJ38A4AoLSnT6W/3HnBGukSs1FwsyF+CvL+FPoJIboBeCfqCz+Q8BjmJMQdPMGuL+ATndmV+7KXjOWXBd9XOwT154kLMOaHDIesedErnkw7s3hgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YIdUGp6MbC3K5G/JPRjXVwEM2z5CNkKMI9IxU950cQw=;
 b=VdVWR56l41OH1dNwZiwWSUgWRP3PQEI8NbeqO2CxRlmDzD45X1uKcRHLJXhC/4dBlWftyHPhBezvsxiaQDVMgxYls2vFnwqYL/ePaLBm54SZrdkCTadQOxqEWTe82aqmExly+kpshSUOxKtncJuNI5yjZCiR8RbhyHHna7bA1jbs+9vH1pw+3vyMwAIjfEM3YR3lWvfI2Eg59o0MdGgOhjM7Vji0B7X9IEKMlvFTEnzrjK+vHe2d/VG4HJ+2P0YruBoLrz5V6fxk+ZmGiRuh3b60EgjE55hO8mQAYF4vQ/PHN4k1cw6LJkZvUu335iYXKjCqAy3LUBhf2QxAQ+SNYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YIdUGp6MbC3K5G/JPRjXVwEM2z5CNkKMI9IxU950cQw=;
 b=vmh3O+b9KtD7VY2HwTMT0h9R2EA0899DaOBH1l+s6nhk4Zucf8zXthk60dJPZIlVbnDJwUSn33iXQ1xlXm/bD94COk2LILQw4XmSPtApey9cEcrbXnlvQ/bIaccF/foNwXM0VX8oLhak1ayUu3FfqN1iQywM6K0ww8VakqiooQI=
Received: from SN6PR11MB3101.namprd11.prod.outlook.com (2603:10b6:805:d8::23)
 by SN6PR11MB2640.namprd11.prod.outlook.com (2603:10b6:805:56::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.30; Wed, 17 Mar
 2021 01:28:01 +0000
Received: from SN6PR11MB3101.namprd11.prod.outlook.com
 ([fe80::28f2:95b5:15a:6656]) by SN6PR11MB3101.namprd11.prod.outlook.com
 ([fe80::28f2:95b5:15a:6656%4]) with mapi id 15.20.3933.032; Wed, 17 Mar 2021
 01:28:01 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Patch v5 15/18] iavf: Support IPv4 Flow Director filters
Thread-Index: AQHXFJQB38naSQKlkkOaQtnqsk5cDqqG2jVwgACWHWA=
Date: Wed, 17 Mar 2021 01:28:00 +0000
Message-ID: <SN6PR11MB31015B03081DE204F82E348FD96A9@SN6PR11MB3101.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-16-haiyue.wang@intel.com>
 <BN8PR11MB3795903520731FBE05EFA539F76B9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB3795903520731FBE05EFA539F76B9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.46.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f3cf8263-4392-43db-21f1-08d8e8e3e76b
x-ms-traffictypediagnostic: SN6PR11MB2640:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB26409989F8CE10261D7F0CEFD96A9@SN6PR11MB2640.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:800;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pLLDsqoKL3wQiXOMmDfZt9lFR4Z0JVAuqKQVqdt0WBXcS08bJw6/J/m3Lb6kNkL1e7ncOTtoGlF10uyhBxUd6hxrEnDpi6Igg5Poxx3qqvo+xEEa+nctg+c5RR7cYylFrbgAkeEMPgH3QXHkeS5CxXaUvLTgHGqn++ETgONu8oFFwJ9uDLUdzbjngXOv9FjX9NNEji3K3byn/eg/f/44BBTrbgUDPW81zBk8ceMDlmnBVpw9ADacIjGZQmQXbXLayhWODkI6ZTh7u7y2gdw+wHNG0UljENZpKONntnh93wzOPAWt6xx20F1qp9GcQLTDE7wcBiEbpmhJAH7DC03F9hhQmdi7zmJ0dhilneaBzq7Mw8nVmYRTH/5Oy1JZIm+Ec7lwNgG2mUnd1cc4CeGKEn290XskQGGQxuQcgk+jwVOQHy6S9qBaCpEWrs3gOaxoBhefd/GZwzwsxh54G6TUKtaX6x56m4Y4JbtZmu/pVaL0aeNKuu5NEv5R9l6DnQQgwqCreLU4braVXuL8lfz3Ew==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3101.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(136003)(39860400002)(376002)(346002)(5660300002)(6506007)(66556008)(83380400001)(76116006)(316002)(26005)(86362001)(9686003)(4326008)(107886003)(53546011)(55016002)(71200400001)(64756008)(66446008)(8936002)(33656002)(66946007)(54906003)(478600001)(7696005)(110136005)(186003)(2906002)(8676002)(66476007)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?PgbtH+uH9GTn4xlEgQr9EjkpUj8wCuf0f0fYuMO6toTO4/F7QNbMbaualIRP?=
 =?us-ascii?Q?LmZ/M20GYReg0HNDwCBvAU1o6JaRWu7GQ4g5ZW3nXg/sjm3Z9z8rHeCqlcZZ?=
 =?us-ascii?Q?orxIWiB2Jbrq1KVx09Su5sUXu7ixSLShUYizzXKGiKan+EecBvoeepnpjJzH?=
 =?us-ascii?Q?cPjmmfC2qdT5IOYJVVecW2UHkVnsNrI0K3nP+t3XX/RstzkS4Qt9FHtsL2e1?=
 =?us-ascii?Q?Qn2aD1lJMFx3aODWIEsN62O57xuTokFtNYpm8Wa1cEQdOOilwYDeHCE5UhTO?=
 =?us-ascii?Q?ztMYixo7w0H6ErazlHDBplEVrW3qxJ1fyxRtWjvMLnL1cjdK6On0RjG/XCYq?=
 =?us-ascii?Q?4eijZiHJycE77zjnN0sfU7yC23SQtoyEUFQIvA+/dD8hAf0Bcvf9c8xRHdwf?=
 =?us-ascii?Q?pfrrkXchswgWqs8gfrP/s+W07WOCZCnCPub4fXY4PVypPDcZcbIB/+L/PGqU?=
 =?us-ascii?Q?x97dwte7lmD+KegVGxzhXKP8/jEb1nwwGOYDIpwL+lhjHmPWrUihNQcmwXRB?=
 =?us-ascii?Q?mR5j8zNBLAx4ZUSzg3dCtZGuyL9a9nD1liCyOWAMdydMXaxk6zvIciv1USbE?=
 =?us-ascii?Q?jsulH5ivkvw2cLn38Pfm+9TJgbdAOY0XkuVDaTQWSHiZ3WBCZLdovkuky2M+?=
 =?us-ascii?Q?N+pZvxhzy4N43oeITH5E1Y0AmcH+C7HKCl4dZd3KIeJSdNbsx+mrI2T1Smo2?=
 =?us-ascii?Q?STuLbKI+dW1EiJuuELqb7WqInhtbuQNzNNWgZzP6uw7EN8mSz2Vxuz40qBkZ?=
 =?us-ascii?Q?Y3QKx+kKI8mbxl465dinSVWCMdk5odnHDlJ9l/xojWrwPoF9E3+LnFczQANd?=
 =?us-ascii?Q?WZTOpLccjn7UvGy0db799GlAI4FXwa6k1h54iUkZjkf8XJA+9KB4vOwD9hPj?=
 =?us-ascii?Q?pxv5wCaeTLj4gu6++hpvV0Pyy+lpu+Sg7KGfFjJZCsaLeFolwJ+8cY3vonZ0?=
 =?us-ascii?Q?ItMtZrOb/HlVNbnOwMsgFQ2/soztJ2ePY8F2sQ3LYVFx1BYwCVL/W2iAsQZa?=
 =?us-ascii?Q?zeAKPcHD3yp+v15jb7lTRNFpjB5jzrZHYhJo+CN4kkmvkkGghp0fcRfULlXt?=
 =?us-ascii?Q?ehvDoWEG/S855yY+BZCW/qnqMEQ0HkmQCOTuYzCOborkcWAHYRzRmvvVF5J4?=
 =?us-ascii?Q?M15zbquDp4h3Zb7wrVbW7c2SH1AaB1RVutWnF4JaaucxI1m6p3GSQqEBNiJs?=
 =?us-ascii?Q?o83d40GupUztIun+oXlaa6p/RZXU6bzhDBkOHcxk8P5gFv6uVrDNG85582Gi?=
 =?us-ascii?Q?I49Pu4dtAoDz4geILNS9MBUcvgr6y0CIF8liAH4h6DjPuGhDlHwDvNKjoh4o?=
 =?us-ascii?Q?ACw=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3101.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3cf8263-4392-43db-21f1-08d8e8e3e76b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2021 01:28:00.9284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kf+Mi2eptZ+p2Tq6BwSbysYRWltiPLy5HHHRvNStPS9mJSqMVHHpWYPIZkrMkFaLLxPLlqbcm1dR3J/Fwyje5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2640
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 15/18] iavf: Support IPv4 Flow
 Director filters
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: March 17, 2021 0:31
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; Liang, Cunming
> <cunming.liang@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Chen, BoX C <box.c.chen@intel.com>
> Subject: RE: [Patch v5 15/18] iavf: Support IPv4 Flow Director filters
> 
> > -----Original Message-----
> > From: Wang, Haiyue <haiyue.wang@intel.com>
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; Liang, Cunming
> > <cunming.liang@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Wang, Haiyue <haiyue.wang@intel.com>
> > Subject: [Patch v5 15/18] iavf: Support IPv4 Flow Director filters
> >
> > Support the addition and deletion of IPv4 filters.
> >
> > Supported fields are: src-ip, dst-ip, src-port, dst-port and l4proto
> > Supported flow-types are: tcp4, udp4, sctp4, ip4, ah4, esp4
> >
> > Example usage:
> > ethtool -N ens787f0v0 flow-type tcp4 src-ip 192.168.0.20 \
> >   dst-ip 192.168.0.21 tos 4 src-port 22 dst-port 23 action 8
> >
> > L2TPv3 over IP with 'Session ID' 17:
> > ethtool -N ens787f0v0 flow-type ip4 l4proto 115 l4data 17 action 3
> >
> > Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/iavf/Makefile      |   2 +-
> >  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 404 +++++++++++++++++
> >  drivers/net/ethernet/intel/iavf/iavf_fdir.c   | 428 ++++++++++++++++++
> >  drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  40 ++
> >  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   8 +
> >  5 files changed, 881 insertions(+), 1 deletion(-)  create mode 100644
> > drivers/net/ethernet/intel/iavf/iavf_fdir.c
> >
> 
> Re-send to Bo, as a new member.
> 

Tested-by: Chen Bo <BoX.C.Chen@intel.com>

BRs,
Chen Bo

> > --
> > 2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
