Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9E222D286
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 01:57:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1965F877E7;
	Fri, 24 Jul 2020 23:57:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HfdR8QvVSX0B; Fri, 24 Jul 2020 23:57:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4351E87852;
	Fri, 24 Jul 2020 23:57:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EFB6A1BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E96342514E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:57:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ihsKhK-HQvd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 23:57:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 8984425048
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:57:03 +0000 (UTC)
IronPort-SDR: stNZ1KLFgzX4tPd7JJAcCK/ToKa1OzbSrwmhlmBnJrY2734G+Zbct1EMZcUyj7KA4BKkhqEZDc
 2Wd8HuFres+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="149983008"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="149983008"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 16:57:02 -0700
IronPort-SDR: Rgue18e74P69sBzYZFck2L+8KDIDimE7/8jQ9l3FzJu1D0h+VfqheDrzg3F5DzfHeiAwK/trq3
 3ht5VWd4DAnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="311576803"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jul 2020 16:57:02 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:57:02 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:57:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FyKv/AZ3AGgFLUSH8oCXl77emuGMicjWNs1H1+nyRv/psVYsEcwjFwLZrAkUCuIdBL1xBi/9YWqct7XOiVKwOkEDPiXXY3tM8WVrXHopPTB98XZ3QP2B7kKUi/MZOydQ9UvqdiC5NuG4LZgOPQr8IlbC+NUBe7Huo+lVEKhTrP9OOFazNG+EfthH8rjCvRSNww2SjhiDxXFDS4q6czcrukaHA/rkngFNLpB73Hj8QafcCp7V+quuS1xLB2e4cGF+3o6n4G7Z2vFgFZ7pzz+dkJLg1eXKt7SIXwG45wcrm6pPglhJo6HDka7YPgiwNBjYFRalF+gmCdGMSiqVEuXfcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ALuNOurnWfEXfyOhnPMfSh0Ab8uZmuj43C7RpKR6suc=;
 b=LW9KkzoAi2f0BbrdFYwdwYRz5o3h2JAKJ/FX8IvFwjfBG+2dVtaRA0XVyn23vsbtjzzKJfbkIZMwNUwc+B/6fWvN3aKBc4C/EmnS/h9k9SMHqOMiJ4XVSoRLIAyVHhtGChqdvxoc0gJXGpwE6Bp9IX7WJ6Hg4PcYVVaQ4heKqYUwrwTOhxxgwV8wbWxCajm0s9NWMp3mjYykIviMF0sIWOhB2LRN1adbkagh/28bl+de1zLQe+z6s3PosGS3iIJaRJ/FllxfEU4iJ6jTAGSs4z9fvsv5O/bsCWbl4j4fqZ7XlayLY03w9rjvgKhBi5C86yCeDiHdXvk6sOAnTnoLPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ALuNOurnWfEXfyOhnPMfSh0Ab8uZmuj43C7RpKR6suc=;
 b=VL2FO5t3ZhKsQ1HvzJ+iBI9/LXLpboPKkm0iwlkVyVeYXfLQhGvK7gMZA98VOlk+AfR0aocUuX1xQGIqRYuO5hV51xywxQ9DmRMaXt0HDEQi5UO/rdYoowK0d4E4Bg7nlOWG23alBQUvIL/Dajb/R3DdSe0NZkEbM8sG2rc5Kqc=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3842.namprd11.prod.outlook.com
 (2603:10b6:408:82::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 23:57:00 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.026; Fri, 24 Jul 2020
 23:57:00 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v6 08/16] ice: Support RSS
 configure removal for AVF
Thread-Index: AQHWW3YcLtzb/ft3jkGgej4C87UIG6kXdT4g
Date: Fri, 24 Jul 2020 23:57:00 +0000
Message-ID: <BN6PR1101MB2145C1E9B02C90FAC084C83D8C770@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
 <20200716133938.46921-9-qi.z.zhang@intel.com>
In-Reply-To: <20200716133938.46921-9-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 3a9311f2-e628-45e7-779a-08d8302d41c7
x-ms-traffictypediagnostic: BN8PR11MB3842:
x-microsoft-antispam-prvs: <BN8PR11MB3842F6BAA88A3E90F540D5B28C770@BN8PR11MB3842.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:538;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zYDsAWB7dew7ZYGSiRNynFKZ3bFy2Mf67SUMpf0v3MhtJITG5/WOIT7rfdwA7ep4o6aaeDPE5Hpn+D++CV7Vyg/PuaPz/yYdMT43DBh3BUNN70YdHMq2tFooTUx00tppgWcbYLhMnWALyHK6uVELdfuuXZFhSscyrhiGck/AZOR/caM22Y4MWG11Q5ALzNQpS5xoR/D649am1MsJFSc826xu8ViyOskr83bAoXn8tawapKHeTbCHdnwEaLQIpbRFcOclpDusMYD1F6/pNuPCP0GEmdvN+8NqzzujM0mWlNcMg+m9X9qmueeMOU11Rdqo62UFNqL1WAZ7ySnQhgxKDQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(9686003)(6916009)(2906002)(55016002)(26005)(186003)(86362001)(33656002)(478600001)(64756008)(66556008)(66446008)(76116006)(66476007)(66946007)(5660300002)(52536014)(83380400001)(8676002)(53546011)(316002)(7696005)(71200400001)(6506007)(8936002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: aAgzTANvSaY2nHejPFO3vNJRJd5LFX9C3tcFzLpOAdZkrzoPf13vLOkyyE0/6Ks4G2zDDIAXI607f5WdmqSUBA0e3tKvUOpiOAEOEmI7fu5gttPUr8vCYY13MGnjF6UHQvTh44piO1cYjHkpqfrDitMoCcKP4vRiPw/O619dlkBgECwgnxcsrf1HooPNTq0iBGvjuuIUBXuVgyl8WmWi3/6A23xETLhdlFveDJCeMafXxWwIk1QDTHd8SPdfkD7HbMBinK+u3I1CH/mGShT13h5Cv9Ga8shpUDxNgC4SJD0t9O+5sE3BFZ85YE7U/IL8mGib4nUr7XWwTAQmu9IBGF/PLoyq3OgdfIR+uC1IKG1x1TggUfZ0krPLUqTkmDixxY1SUgoEHb3tFZdmSJ1/o2CVxm/lj+AS9Pawxfy5uj10bs2YV5E4X8f8b/wRpJTIhzicHtVXqg5Mn7nQpFNJqOTwLqtWJtK4uKhyWeOQtzdibxhdql8Z87kaiaD8dpNA
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a9311f2-e628-45e7-779a-08d8302d41c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 23:57:00.7028 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ctLnxarqyqZzJsBIrrTZh9DTMUWOVJtyAzkhhyzTwRC/+lJBG8UvyQCO9nq815O2HfNCwXZw+1UMKOKyLGkvHSTiwLzfus91agbuIeKPG/0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v6 08/16] ice: Support RSS
 configure removal for AVF
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
> Sent: Thursday, July 16, 2020 6:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v6 08/16] ice: Support RSS configure
> removal for AVF
> 
> Add ice_add_rss_cfg's reverse operation ice_rem_rss_cfg.
> It is invoked when handle VIRTCHNL_OP_DEL_RSS_CFG.
> 
> Signed-off-by: Vignesh Sridhar <vignesh.sridhar@intel.com>
> Signed-off-by: Jia Guo <jia.guo@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.c        | 90
> ++++++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_flow.h        |  5 ++
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 17 ++++-
>  3 files changed, 110 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
