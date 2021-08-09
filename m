Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6FB3E439C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Aug 2021 12:09:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F049A401EB;
	Mon,  9 Aug 2021 10:09:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RacB6GkGRSCj; Mon,  9 Aug 2021 10:08:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A0EE9401E7;
	Mon,  9 Aug 2021 10:08:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 99EE41BF334
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Aug 2021 10:08:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8753982A28
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Aug 2021 10:08:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vjZwJqMFMP1h for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Aug 2021 10:08:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4FDFF8291C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Aug 2021 10:08:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="214390614"
X-IronPort-AV: E=Sophos;i="5.84,307,1620716400"; d="scan'208";a="214390614"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2021 03:08:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,307,1620716400"; d="scan'208";a="420804255"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 09 Aug 2021 03:08:50 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 9 Aug 2021 03:08:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Mon, 9 Aug 2021 03:08:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 9 Aug 2021 03:08:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T/5rXi8UUzdqxHPO3mz2fBvhns2tVNIT12obrgV8HMN7OZYNVkF6p+oXOk8tSEj/dL7ZqImb0+HKTBpwC2u38dfTLNpERWVAS39+g4hyLXBqZfU0Yj2HESuWku9pbbYjKEgrghHm27w9LCZssWV5sfQi/WubwPh3L6bL5QJ78PuMOTU3bDPiHBFvbrJxPN5odnBA5m789n2BubiZf/QFWwFOh/MtVZJzZsqApl7seTfTxK3/ZGIlXGxqIKvEoqV23I4aU2mn4hn80lO73TrKjy5YboPVaSqmxWpTXqcLKJAneojhYJd09XQ18JMYi9Je2IcEeURx/JxKolYNy10icQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NhU1MrksKrPBrqdn0og1+WpZcxuvLI6lT0q7uGIsGfk=;
 b=P6htr+v6Q2ToxJAFBs+JIPpqbmAUK7h25HMvoGIj1NWGffBtnIE6ZFp2uvfGC067Z1DaYQOXe9IRc2LD8K+Lh7S+q6hsaI0kharWazxXR0m0IUJDZXEkVHxlRL+TQnpT5f4LvdR8jEYpT+7pf7JsfFh1YUFjGWWRuZLO5futUh9xmLP16id+V+GtBP5QrjQMyukZPKEUkQ2QFfeGxAx2gwvXukwHUOdUcZiBhi+eW5+2OsoH+K4cdZw4HdoNSof+WeSxCVBtYSLz5w7J2R/tkAXwsKGv5yjUBer3Iq7DG1VI8TCa3lneg4Bp26ELyBg+n8LK50u8uqnOLQJM1eqjlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NhU1MrksKrPBrqdn0og1+WpZcxuvLI6lT0q7uGIsGfk=;
 b=JN1eTj3fwNQ9Wzqe3K0IF85h/F9bmHXEUZeuGZ1lyKg837gnA2Nz2LfMWmSUouWKNtRixtHDJzPwFFJ8qs7N9MyPVc358TujMAnVvWdGETUPkhdix6rn7D6DnxM5Z/K6G44NkVQ2uV1tayjANsGFtpW8XQj8dmzGvvf4uKFatZo=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3831.namprd11.prod.outlook.com (2603:10b6:a03:b0::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.21; Mon, 9 Aug
 2021 10:08:47 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::4d0f:77de:b513:595d]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::4d0f:77de:b513:595d%5]) with mapi id 15.20.4394.023; Mon, 9 Aug 2021
 10:08:47 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 7/7] ice: Fix macro name for
 IPv4 fragment flag
Thread-Index: AQHXepIU/euir6q8KUS3OmzVd+tgQqtrF44w
Date: Mon, 9 Aug 2021 10:08:47 +0000
Message-ID: <BYAPR11MB33673D166DD721B3F127A2BBFCF69@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210716221644.45946-1-anthony.l.nguyen@intel.com>
 <20210716221644.45946-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20210716221644.45946-8-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a304f49-1491-4c33-78b4-08d95b1dadbf
x-ms-traffictypediagnostic: BYAPR11MB3831:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3831E97DE1745D1862EFF065FCF69@BYAPR11MB3831.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Sim+9aIBq+/KZzVQ9q5iiOld8i8ZIq/SEi8f6riOx8ujoZUbCKrBTmgIwLHvtew1Bt4spqD6K4YmHySHuomRymD20raoTJtPzL1eIEvPL6M46QYZrTHRjDy2wwxgWdciVmVju8c5Wq/i1NgoIgwDzn1LfNeGY82cYpAt1QA22EYShznB6QFDeEGROi5EOvXe0P7yEjT9JOX0ki+PkFkRqMlq+8Jc0q57JX2skX9BW8KNXiElQ32umN8XzFNYalh+IdLLNiekYjl/LESV9BMCcvDs5dCpnUmb3edSsOeEiHrWrWSSX7hX7/DScv8vxAhkRmhgcB1vju9SUMC3lBtA/6snhBCssGn+/YsE3mqQjk8u9zIEswGZ+cutIf0gmOwPH8nWPVJP7CQ8D++xAre4AXU1XfL8yxnNaSOmT/fbr0lwVlPR4qbcRUSLb0368aysD7fTE2eRfllHybBBb6/m33NCCiMV3QXOEqmuk2MHSzPO4GYDNcgmvAX2e3ub+nMnb0weqpZRQeq4D4Li1cA4AVDPoEuP4O/RmuDIaZ0JJ5mgUM4ghaE6Hdtq0+QlDxgEMofOSSawSPogAVejgzbdB8bJgR8EkxZxKP26RyWEp9WZxGGgbqyIf4D9N3YZq0wuZViFpd4OTExM6NMGcm/JLW2Z7H9B9j8ZSl5VEfml2Lq6I78tey5JSK6jiibIA88ExZuZw5aSUkmxc0Ef/reTsg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(346002)(396003)(376002)(366004)(110136005)(316002)(8676002)(4744005)(2906002)(55016002)(53546011)(6506007)(52536014)(5660300002)(26005)(9686003)(33656002)(186003)(83380400001)(86362001)(66446008)(66556008)(66946007)(76116006)(478600001)(7696005)(71200400001)(8936002)(122000001)(64756008)(66476007)(38070700005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?36JRT24Uy0tXejQghAkP81VdzU/WaonXIR+6Dz2mtqwSMsmT13hSxOpzgRBI?=
 =?us-ascii?Q?wSKnDjr0DY+3UGU/TqQiuRkTJkhuK2marnuDl2a03OZNcAEZZuTg6KydRjmy?=
 =?us-ascii?Q?SBMGxZKmIO8ubGuByIz8EzAivPonMlbPsSWI113UcEP6akAFXwdaGny+p1kw?=
 =?us-ascii?Q?zzePPKaiQdrJDbhTBKTe36djYdbx1OhQrRHZWJDlNPqL+3VvVkYArmH3lfXf?=
 =?us-ascii?Q?k2DE9NVE++Rqaqy0GLw64ajohPAEQnvSr/AOs36YE+bvFjrqkw0twJVGvItB?=
 =?us-ascii?Q?azr0fnI/Eh5zoQp/rftSds0MawOU+s8Nnmvg8Njc5rhlbpO3rx5dmsJUoJDH?=
 =?us-ascii?Q?KHkLG6GQSaRv2cwzwjTKJWDhbgjkwqZzfHYvf6mnnafShaHM1NqRHB8NVxH1?=
 =?us-ascii?Q?pfVHhvCRUUmfP8Ytu35y6BBWG3ad2+NcRxdz538oPUEXEp/YCEPLaG8nXrih?=
 =?us-ascii?Q?B+N5jhC64w3CrRdyAfUSP1YpbgMcpSj0NzX3RSSrAzp3sGGj36b9migZ+p4v?=
 =?us-ascii?Q?bIFtTPVKHxMrHiKICwqgFclLnOvcE/V+zigZkbdDRxupDPvGK2kqO2fCqUC8?=
 =?us-ascii?Q?0oZ8Z/ranGXACqJ5e2ehhjSbOURJktdvsq0n6bBUfy8NAIJN9E0MJDX1Cuno?=
 =?us-ascii?Q?n+KsLl6KZ47+NpbcJma2ClIZPI9oUd+30E7msNcvRrXdaQsn3l7KrI9+cdyx?=
 =?us-ascii?Q?LPp9WaerrklpbhRD/8zixqOP4Qzo6X1QqeUf05fynKWUyJLHtq7jqGPSFjID?=
 =?us-ascii?Q?nWpDD+7HDttdnLSTfcm8fEWFMZAB9OWRpxkxx3j+HedeG2aQWet9LwFCUxWG?=
 =?us-ascii?Q?LUZZnoUu2qDSg7W2HSn/QOM6SG2HYT+BOHRWoTjadf8t3IfOYs8d/+hMRSrs?=
 =?us-ascii?Q?Lvejz0BzisagCvWVAZpI8KVuV3leCl4JsrM+XaiQ62T6Ijh9TAcVv7SIwT/O?=
 =?us-ascii?Q?mJhEpuy+5+2e9LV2pRnwhFi6tEJHdTZCqgHlBDGbwjLZNkT1hzMpORTp25fH?=
 =?us-ascii?Q?MdFfwoX5FrRcjTHvMTp+mTt7mu/XaxQr0i4OeTn477IkeEPBByw1nsXJIBz5?=
 =?us-ascii?Q?p4+GCFlcXKWyvPABiS28qnkpXUrEXmXx3y+pL8uZ4P24zXufSfYW6jeJF4WV?=
 =?us-ascii?Q?Y9MT84ilDXHVYrQQHmnQT8eknGa8OQYLxSbRlatKKRKl3m2i1s6mY4xF9wNx?=
 =?us-ascii?Q?gAqSjDGA2+19UG3GtDwepV1EtkaWRezcFBmINYwM7IzhH7ArxUCDNgy+Hocf?=
 =?us-ascii?Q?mH86PkEBF4hnJKGzj4jd7k1eD0IuDbZWlXLu2TQ62pHPAgaK8vqeI8VD/4au?=
 =?us-ascii?Q?SjP96ix7SFPO6jM0hey+iXR/?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a304f49-1491-4c33-78b4-08d95b1dadbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2021 10:08:47.5842 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lcKLN8siolgB/uuU+i18MZ14GVq9nXRkyNZG+sS1H7Fvj3lyhafDJKceWGD1KvWS/IEC2YywDghqDzhsGaOBzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3831
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 7/7] ice: Fix macro name for
 IPv4 fragment flag
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
> Sent: Saturday, July 17, 2021 3:47 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 7/7] ice: Fix macro name for IPv4
> fragment flag
> 
> From: Jeff Guo <jia.guo@intel.com>
> 
> In IPv4 header, fragment flags indicate whether the packet needs to be
> fragmented or not. The value 0x20 represents MF (More Fragment); fix the
> macro name to match this.
> 
> Signed-off-by: Ting Xu <ting.xu@intel.com>
> Signed-off-by: Jeff Guo <jia.guo@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.c | 2 +-
> drivers/net/ethernet/intel/ice/ice_fdir.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
