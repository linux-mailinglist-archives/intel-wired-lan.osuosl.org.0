Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E79E22D278
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 01:53:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ADF22251AE;
	Fri, 24 Jul 2020 23:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7f9OHObxiy+D; Fri, 24 Jul 2020 23:53:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8FBDB250F6;
	Fri, 24 Jul 2020 23:53:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 57A8F1BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:53:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 53F0086B93
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:53:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RvZLI6FHHtLA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 23:53:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A54798691A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:53:52 +0000 (UTC)
IronPort-SDR: 2wIcnjXgKKU/XkPNMh+WQtxH2Jf+3ta6j8qtni6/GTNKrFAKVjZPP3ntHUM/jFdoq+nWRk0tSc
 7r3ow+BACKfg==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="148285233"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="148285233"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 16:53:51 -0700
IronPort-SDR: zSK/KGGlEpFiggukNmrpKQ9TaZIcNqXWfYnQK4FHqeSTWe4jYCsjRynn9X9HEEzuIKckM+943O
 wbC7MHammYvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="463395732"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga005.jf.intel.com with ESMTP; 24 Jul 2020 16:53:51 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:53:50 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx110.amr.corp.intel.com (10.18.116.10) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:53:50 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.50) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 24 Jul 2020 16:53:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HrjM0uYry6hLguQG0HNE99pLqP5bL3yOGA1MrBASRsoWAhKz5wAaU60FGX6gBtv2iJnMZiNPMMPTm0cSpLdrmuXId6eU9tuk5anTOAaZsELy4/x7G7PS3sIThU/c59CM3/ITD8Wr7Kh2/3pGWydhl2IAzsLhk/HHwJXhwJOSBllSa8/7cv0FCyC37lQhkI68En+chs7NGC/16597Fbc2CXYfqZF1QQTfjZDaDQz0+mBdweo8W2ayuU+8VnK5Oo+rNeId2456DPxZhDjfIdngK+/N+6q9hYFaIDFoQNBnaHPK9D6k9qHAoVM51LeuUIQ0xGFRqwknG2szusS+O4YKuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7x5LD/CE442AwTb0Aosbb3ZMjqMGD+Nq9J3ErVGs4R0=;
 b=AnLbaogkyK8D0esWCEhQ7jLkkiUqnz0AwVuHWP8l21uuYy4RFEDoSp8VjV1AoppLsxhKWjskUfvKOvR9/iRYngi1QD2GPwTrisl+7oBEsafw5tFgJ2cWFxV805tfUP5nO+zUKfzTpCEm3XVa1ZlrHBlfQHXf0T7gvtH5QSdWjnrkeDAPgeVtyhbgqQmNnU+zLadhK0E8m1JqoF96ueOYKRez6zdGjktmtQTufvgw4baCKqgFvtBERJDuBROsif7KKLWxGr35bQSSDj16Bq8AoPPWB1gnom4hj3H4k3kSuXjrk4x/9IRYfdN4GnaO1ClwEJfTcKOuuRUYpauAevtALw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7x5LD/CE442AwTb0Aosbb3ZMjqMGD+Nq9J3ErVGs4R0=;
 b=da7W3wD4F1IUXtv7+I480dDoMMSFKHMABObsirXVu/0LdAbf+JQoiuDtxHrcUIMSgLgxa24VsL8XLl4aSj6cJd85wUKo9rUp58A7G/yV/HeQYLpkIBC+YREE/VFP1B4HDHJSB7HwWGJ1TYp1gZC3Ugin5hC0B3Hdd0ALRsnTaeo=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3842.namprd11.prod.outlook.com
 (2603:10b6:408:82::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 23:53:48 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.026; Fri, 24 Jul 2020
 23:53:48 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v6 01/16] ice: Enable flexible
 descriptor RXDID querying and configuration
Thread-Index: AQHWW3YIby2nNwacOk2Fm+l+mF6ubqkXdFsw
Date: Fri, 24 Jul 2020 23:53:48 +0000
Message-ID: <BN6PR1101MB21453AE3366C5E06C7DFADB38C770@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
 <20200716133938.46921-2-qi.z.zhang@intel.com>
In-Reply-To: <20200716133938.46921-2-qi.z.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c8faed5e-c334-495d-74db-08d8302ccf22
x-ms-traffictypediagnostic: BN8PR11MB3842:
x-microsoft-antispam-prvs: <BN8PR11MB3842756864607A56A391331A8C770@BN8PR11MB3842.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:751;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ge1zHjMY50DtS7NIYW1XXoQfqmMwWpjaysHqGILDkuHrXJgMArmb3artKIehj2Wx+oEesoTC6xgMsbCFC+SP4IgZSjifZ+gaHIhGn60W23xUWYEauqOEIx9fGoV5gtg81Vr/DSNChjUYrZ6ZkgDmNX3pDIx9Da6O17As1FQJ+iKtL/LwfmpYSAlkWuSSjOQYwquSq6XJ/T3wzu6ri4dziN1le0CL34PZW26xiTqYyTlZp2xa2Q7fVeGlgoaVkpeeUWrVpGL8DZboDIatlghuxO0+7iqcJwmAXr9WMHc4l53OrkyLaKqga03cTGcVUQja
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(9686003)(6916009)(2906002)(55016002)(26005)(186003)(86362001)(33656002)(478600001)(64756008)(66556008)(66446008)(76116006)(66476007)(66946007)(5660300002)(52536014)(83380400001)(8676002)(53546011)(316002)(7696005)(71200400001)(6506007)(8936002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: +PbgNlYHV0QR1oZQ5TMpVvubFiJMdJ0/enedyJ80Gq46YZh+tJERlkpGf0MShw55SnF6FnBUfUesamOKgAZp6DXyxVPHBAnKHOB636MIM7E42ce5WD+/roWABqesPyfgUvqFGxjcb3OAWzkXAB3K4RTp3oguCvGsNLjZUF5OtjKsQ26KZmPX4T3dLsyQH+P8QZnLCgrpqRLvHGdcCIRfXjTLGQLjWuGuLSbArNFLvmBPTOGianbYkhXGcCaCq/mmOczYUL/DQSA5qw7pVnHV8W+ITqNammlK7uPZ0HHuW+ba0Xmn8uccSIZBR2Qfnpz0il+367T37LRcc4r9pTuQAuz5/rt/6bHKZ2ozI5hxPELJ9gzyDIGzCabfgVskMJEZwFrF9JYhCFnwEOHMEBbvuf+7bE32DpdOn9nR1H463ZfiAKX+D/ReYsw12S+VJYlyfqayQATbW2cvoDXUOSGni1oPgiLVvmCM6Em00ThxsRk=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8faed5e-c334-495d-74db-08d8302ccf22
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 23:53:48.4221 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UALRHyGRcSpIBuxWinibg9/T+yXv3bW8NziGo73C+G6/2/inzku8tOMl/71kRs2yE7g/i9bVgY4vHc+X4HlK+wnhGXEGAEwj75Ce14L+Hf4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v6 01/16] ice: Enable flexible
 descriptor RXDID querying and configuration
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 16, 2020 6:39 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v6 01/16] ice: Enable flexible descriptor
> RXDID querying and configuration
> 
> Add support to allow VF to query flexible descriptor RXDIDs supported by
> DDP package and configure Rx queues with selected RXDID for IAVF.
> 
> Signed-off-by: Xu Ting <ting.xu@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h             |   1 +
>  drivers/net/ethernet/intel/ice/ice_hw_autogen.h  |   3 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 108
> ++++++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h |   3 +
>  include/linux/avf/virtchnl.h                     |  17 +++-
>  5 files changed, 129 insertions(+), 3 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
