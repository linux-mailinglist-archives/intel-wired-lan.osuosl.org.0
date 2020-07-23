Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA2A22B724
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jul 2020 22:06:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EBE6C228A7;
	Thu, 23 Jul 2020 20:06:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZQtU+ZEhKSeP; Thu, 23 Jul 2020 20:06:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CC2BD22879;
	Thu, 23 Jul 2020 20:06:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 43A791BF29A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 20:06:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3E2E086FF1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 20:06:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id maAzyeJeKxlH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jul 2020 20:06:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E9A7F86FEC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 20:06:20 +0000 (UTC)
IronPort-SDR: G0/OEYc6ZkFEgC1bAix7wdUSk6BO6DHuU631U3K/ko8EsUL9xOOCtZdUJGCG+NLNvXHYLfz//i
 TQG1ayQgnIZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9691"; a="150601731"
X-IronPort-AV: E=Sophos;i="5.75,388,1589266800"; d="scan'208";a="150601731"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2020 13:06:19 -0700
IronPort-SDR: 2O+uJJQ2t43KKg1mlgyFiRFHwWvqgLyBFny2n8pyrwvdCEiFyvfndSWP6fmi+TShNOzxfkqAw5
 ffjXpaFGWtiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,388,1589266800"; d="scan'208";a="432855746"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 23 Jul 2020 13:06:19 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 23 Jul 2020 13:06:18 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 23 Jul 2020 13:06:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 23 Jul 2020 13:06:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cb4IlUcFX52eCvIKSyy2O0PdIUIjQC/C+HiHVpNR2NWtY4iGWqXtmQjbYv5cC/P+QUKn7B7JgxaZIqr1YqUv2UOQYP7qq4fhm64DixGoKqk4bHOhMmBowPI+5o3WQWYHZsLu73HbD3pLdoU9m6gAZpHA3/8I2AvMgj1t7TzPja7+98LE9VjbriTLpKVGPuyDME5idFlc0R/Uukgl3lyV6GLvIwOGyrvJKdsnhC1uoM1NiqkMIb7ktNr+PDiaPPZMQFb9GroiNL7jzktA5ZTfmkv5he6/hhlKdZuUNP1MNDA8lZ5/5aePw1tCqXz039hNZKQmoZpQNuQZd1HeZT/YSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CUmcJq8AM0DGBbI0iqFgIB3cRy/qDITybk7+WCIsjsA=;
 b=SQ2t+S5sxoRSMcz3baIzCtHFZzHCvihE1e0OhVtOWmCVIGYNC4s4EByA9JP4dbdQYeCNFxxSFthGeDOrlmfxDXWm3z8LMJmFMd958c+rBi0gEVva+ZlDg+SysyPhT6uL6PC7TyiPLOwbbz7vCgpYE3cq61GrwrtkZpCj8RtuEqcElxUVBkJcp3OsBp/wJO9CIoo2ofRE0P71jbXNfEzgMd9pSaXnsPwXNdlQJu9P+pMB1G7wwtfelhRdewVI4cgLr+vddioXdsGEreCWREC5bdwsitW0cNeYKC60XBqZK9Kl6te3qKu+DR8LLbMARisVreL23j3GuSFpNfLg2vH3tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CUmcJq8AM0DGBbI0iqFgIB3cRy/qDITybk7+WCIsjsA=;
 b=vtc2ue663vk9RzFjMxI/RDDqATj5qeeLGpvgUMMfKLd9EN1dBfJqOx2CSWOGa9izZrtk1L47srxsMun0+XD8IN91UkBibZ9ys/HwBrIJ4Y1l2tlPny2BRmKShC6Q/tKMis9kjkG8Oxvwj+VtPNhv/6LRS91HGpYvuWQYROnu6Bs=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4560.namprd11.prod.outlook.com (2603:10b6:806:93::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Thu, 23 Jul
 2020 20:06:15 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bda3:d65a:f390:f875]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bda3:d65a:f390:f875%7]) with mapi id 15.20.3216.020; Thu, 23 Jul 2020
 20:06:15 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "kuba@kernel.org" <kuba@kernel.org>, "davem@davemloft.net"
 <davem@davemloft.net>
Thread-Topic: [PATCH net-next v1 0/7] udp_tunnel: convert Intel drivers with
 shared tables
Thread-Index: AQHWX8dIqfLMKTfuhkiHDJfcuSiXjqkUHOeAgAF8+QA=
Date: Thu, 23 Jul 2020 20:06:15 +0000
Message-ID: <bfa03cf8613ada508774a2e6e89b9b01bfd968dd.camel@intel.com>
References: <20200722012716.2814777-1-kuba@kernel.org>
 <1af4aea7869bdb9f3991536b6449521b214ed103.camel@intel.com>
In-Reply-To: <1af4aea7869bdb9f3991536b6449521b214ed103.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cc61d14d-6858-4bae-5331-08d82f43db13
x-ms-traffictypediagnostic: SA0PR11MB4560:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB456029A69BEA287EE89758F4C6760@SA0PR11MB4560.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BkIfl/Lq+G4dYQb/WN35o5+TV6ticHGvUYIQmxueFXwOrg0Njr1zH0ZH1TvBh4+YyDaJNyi4J/heFMkp4ZW38YM/4KDdy9ezpq3vxEaUy65oYPN9aJvhIszOkqk7TRjFKgZ1/CEY5Y5TZonfR9m1kcUV1qzf+8/kGsZx//YEF3EqmDt3/DS59DHQRyBqzNlMwBVjbhPXf3V5ZiInny1GltNDKtYQIiajJ59bwBOgu10USzsyvC3mpnaS7U1juaCSuF+5zOwOaDTwmBw0CoaK9wV3qDQczgdmEdX6mGOCd3vMAhq+4wtMC7CSnu7WvTr2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(346002)(396003)(39860400002)(376002)(2616005)(186003)(478600001)(26005)(91956017)(6512007)(76116006)(4744005)(6486002)(6506007)(110136005)(66476007)(36756003)(66946007)(8676002)(71200400001)(316002)(54906003)(4326008)(5660300002)(66446008)(83380400001)(8936002)(66556008)(2906002)(86362001)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 8yfFw9FEu5XLP58h+A89yvRK+E924xh9wJ//oP++EHh0nkOPYqsFr2z1smVBOBfaSF8hP1Zt2tbqVvrhu8jBmLZpxbOhny2JeSv12BVez7t2f4JCTLZ7/WPAHpijL5qcct1vRY78QfAT+c3GdJ09jSzoGEzp4VynX/J1pOOzNUwHfLGavqMZNbM34B58rJbFododV1QeTMcnaLXKtKippP0qntsIOQUDc2DG7q03W4olbYoN72kkN2nqjNxr0YBqAmFV6hDy0/jKySG21aCgYLPSP++SucrYwF/WF1wDX/VNH+3u82rrNSfqEf8+78WHRH2ChSorrj8ymlcsFcyNf3f+LqQ35hA9E85URDchDM0BmrCeLIjPYdXfocUV6O5/o0aEIFlkvtNBgvLd3fXpAXwykD5gRFMcfGuCSAOkRvTDhJT0N0vw12d8BZ6AILY8j7w1Zj+tyoRTSF5onWs4UgtgHoDZ4ZDNFTPa5Snhhr862b18f+qJhXqgFpwd/mDm
Content-ID: <8BC50F193B7A6544AFA3EC71C12877E4@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc61d14d-6858-4bae-5331-08d82f43db13
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2020 20:06:15.5397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OJ6wMm1mEmujA0l2uZuZlrLqQp61ZZEpIKwOQ1VALzQwaAT1yvrKX6r6E7tXEZRA2Grlu79mP/sMtXjuq9ihG1GpPP8tww8CYAQnO6jZVVE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4560
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 0/7] udp_tunnel: convert
 Intel drivers with shared tables
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2020-07-22 at 14:22 -0700, Tony Nguyen wrote:
> On Tue, 2020-07-21 at 18:27 -0700, Jakub Kicinski wrote:
> > This set converts Intel drivers which have the ability to spawn
> > multiple netdevs, but have only one UDP tunnel port table.
> > 
> > Appropriate support is added to the core infra in patch 1,
> > followed by netdevsim support and a selftest.
> > 
> > The table sharing works by core attaching the same table
> > structure to all devices sharing the table. This means the
> > reference count has to accommodate potentially large values.
> > 
> > Once core is ready i40e and ice are converted. These are
> > complex drivers, and I don't have HW to test so please
> > review..
> 
> I'm requesting our developers to take a look over and validation to
> test the ice and i40e patches. I will report back when I get results.

Would you mind if I pick these patches up into Jeff's tree? It will
make it easier to test that way.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
