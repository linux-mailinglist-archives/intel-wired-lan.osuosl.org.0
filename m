Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE15B1DF041
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 21:58:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A95788A83;
	Fri, 22 May 2020 19:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sjr8us+1rscH; Fri, 22 May 2020 19:58:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DE28388A5B;
	Fri, 22 May 2020 19:58:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9FEB51BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:58:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 894D688A37
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:58:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nry2jTbx82-n for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2020 19:58:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F12D888A2D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:58:20 +0000 (UTC)
IronPort-SDR: ApfRnyPNcZ4LkckLEioC7IRvWsEGNLlVYmXSwAjgObmKrZpMWnFocR5LAwXC9UbkgIPPWcWmos
 RLz118ILdvlg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 12:58:20 -0700
IronPort-SDR: FpHDa6Be/CHd8mJzTfKgUbUgsiW1z1st121Hoz1GqwL80MVdCMF6uQiURQxod1NmTUy3YIuzNJ
 Yr/L1YyOcVdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,422,1583222400"; d="scan'208";a="254446323"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga007.jf.intel.com with ESMTP; 22 May 2020 12:58:20 -0700
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:58:20 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX116.amr.corp.intel.com (10.22.240.14) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:58:20 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:58:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dUNnov0e9L+UEpEVoiCwPEI2tkkcstiwoIk/OKJMOiXtQaVy3U2ikufnNKF7FAmYUmKSXF5ni1EOadftANfVJNdObVEJqgPhLOoAxbZUZSQ6Nyza73WQl+h2UHfy4zKlWeHHJD1JUSahZWYzWqAkSvcODCOmdEl4CUmmZ08ayHBfXTI3WRpMo+EMzIUU4zBHGuy9Z/hukmdKHjPAxgIi0EQB+vGaqUy/4+Q6458AVqITI9fni/FRTMHLaNQS5O4/RkU5hZYSa+MN9Y44J6PmbKbgRSrrefhWZXD0yj3IZm+uFrgIS+hLF4oN+njdeA4VIlTibrR5ncOwsJNvtvKMOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ztrJ0EQsgzAwJ+eNtQSCmURe7zIozyOdoyPpFWCJfds=;
 b=GAJTacJhcSsfAVRx7qAnhaYc9kqecZKG4hxyYbSPCYMd86H4aNyRh/zZJ0JK0Fwi27Bnx5BKH3LYaeo5hEXUbiG5466tfnlUtZLvPPqM7KLd/zSB3Hmc/16BRRnvLvIvcvmd6ITUeTl7AkDwXdhs4wd6taApmxCzFqH8CzDqmdHY2Euxe2kDPgdWEcsYlaw9E1RcmGBaeJHJJn6CkKgb3diUDS1HTdS+gvoVXZYdTJ+c1MrJuOQncThHFaD6q6VV7Ul6TiuE+F9cmR6fqUPh/NKy/1v+w3kak44jXSgsWUiGFIi2c0ibTiBGE2q7ZZWeI9x1L+JPxWYVSQEfx6BeUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ztrJ0EQsgzAwJ+eNtQSCmURe7zIozyOdoyPpFWCJfds=;
 b=t2HtagkIf/XCe+cf81jxwX5JjWU3hRRR53cPoj0mq0iclSYjFUjSsa1HBw91xjexZFH6FYN0QubZKIWLKo16Jdg3WIOdyB3duz0nn9nsCgGwYeaF/OrAMeMh26taxhv7mMM2pOc88r+dl70g8GIiW2jgY0WJb8pPpcp28RlL0Gw=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1577.namprd11.prod.outlook.com (2603:10b6:4:a::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Fri, 22 May 2020 19:58:18 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3021.027; Fri, 22 May 2020
 19:58:18 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S43 07/15] ice: fix usage of incorrect
 variable
Thread-Index: AQHWKxqN9R5Pe3nD/0+OukR0kOkJOKi0kFkA
Date: Fri, 22 May 2020 19:58:17 +0000
Message-ID: <DM5PR11MB165944489DEC8280569E2DE78CB40@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
 <20200516003644.4658-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516003644.4658-7-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 76201cdf-997d-4c9e-bb6d-08d7fe8a78b2
x-ms-traffictypediagnostic: DM5PR11MB1577:
x-microsoft-antispam-prvs: <DM5PR11MB15773775B69C27D563E8F74C8CB40@DM5PR11MB1577.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0G+o5WZH+FVWWkNTkgg2M4v4HGgT78GmpPEGc5N/lY03HiRYohZ8+rzzrPDhW43IqQB1SK0RxoPPLLG1JwENYWewYwFZqSDu+MC2oUR3LJac1qlU4DROZL3SKsS8L9wRphDnVCIQWu1mZD0U2DJ+A/uNBFyVCpsf4029MnxUaXCyC/jGJOJs4r8Y7wFCdKnpnWkc6TbfF5EzSWleWW2/ofl29kgggDT1iVn55kyNdtQ85Hw609gIZHC2spku2FfAI0xguJEFrCNtqf2PUi0u8hJSsaV0Hn+28ylKUqtVY6qnSMPOKuuSpHBAHEKxgP9T
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(366004)(396003)(376002)(39860400002)(136003)(186003)(6506007)(9686003)(2906002)(5660300002)(33656002)(52536014)(478600001)(316002)(26005)(53546011)(6916009)(8936002)(66446008)(66476007)(64756008)(66556008)(66946007)(76116006)(7696005)(4744005)(55016002)(8676002)(86362001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: N7yxc77p7UuCv1r06p58+9gjs1yjOYPpEsolXZGmDIV6nKDtqm5EIC/Dd7Buk5CrGP9qzjWF4uHsGZDDq1xgBXFGFgpUVx4Gd7N6in/Q6PG7MZSorcASfhuf8kkgJH8liVVdoIAkKbCgrgrNkx0ChK+kXR4FvFRGmxxn77WcOW003F3I3ctvb7AAZgfRhILjDy01y7F3vZVYgY/xu1YIEH84GswzJm67bM781LNU80Rj4blkP6M9SPiCCyVotB1c3vLW1dH/n04+YargHUvEP78bMbUw0fvirMrxn15nAg1qvmWiOl9iyQk5ziGXboK7MUzrk6xpjggzL70xD3IdgWpQJ1krAHnKu5ANpsd3EqSatelZ9pnWgAadYSnEbF3U0K6l4qaBNqme4ZxcCUFL21s0sQblY2gxfQBR3sog1NQD9xhw8Q2tVDqJmNqkwAEXMNtwJlRrQZwiyib2tRZyPfF2Q4Q2bq8Y100kxSj3QYU=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 76201cdf-997d-4c9e-bb6d-08d7fe8a78b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 19:58:17.9306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BmPn+GLi9gjBn2jBEwX+WhR5EcEdyoLlycnUgqhxflV43/93JjbfXY5ytiAIhO9EV1KKvkUGxsX2maZ178RkELBjZRRzV2mU5Kcl5LmFMyE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1577
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S43 07/15] ice: fix usage of incorrect
 variable
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
> Sent: Friday, May 15, 2020 5:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S43 07/15] ice: fix usage of incorrect
> variable
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> The driver was using rq_last_status where it should have been using
> sq_last_status. Fix the string to be using the correct error reporting variable.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 +-
>  drivers/net/ethernet/intel/ice/ice_main.c    | 8 ++++----
>  2 files changed, 5 insertions(+), 5 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
