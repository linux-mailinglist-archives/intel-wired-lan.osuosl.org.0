Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1593380F1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 23:53:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CDD04ED05;
	Thu, 11 Mar 2021 22:53:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4yiIRhHAzjXw; Thu, 11 Mar 2021 22:53:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1156E4ED01;
	Thu, 11 Mar 2021 22:53:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 799331BF333
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 22:53:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9389060686
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 22:53:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6vVpyOXtEqRo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 22:53:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E775606C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 22:53:29 +0000 (UTC)
IronPort-SDR: BpgLOt54f7t8oFCjjQfrUyDzwZxOklI4GEZBMd5PdBLmTYPqxnNYj/3CT10v+KsUOsjKyDDHwI
 hcTLmk/fhqDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="186376685"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="186376685"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:53:24 -0800
IronPort-SDR: tJnyd0rpcveQywY+VX8Hyp1ho+9NTmxIEMhEvoUvlhQT1iNyp3IVgRQHHuKgzA3Yjxdh+RcKac
 aamxfPFx0fTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="370703192"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 11 Mar 2021 14:53:23 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Mar 2021 14:53:23 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Mar 2021 14:53:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 11 Mar 2021 14:53:23 -0800
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.58) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 11 Mar 2021 14:53:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fBYN/zuO390vF0zUBDqOAEJ+T6GM41vUWdxhlTwWWNbzD2PU+2KTuYtPa8y6pKipQhNeEBjRON7HvSXzlnzafrDDfHOepsDM0q3jkGu4dp4ZSqWYSuufIyiX5h163Jkfbzb+HAcsvdvt7BndXIupVvQb90Dp53vmlu2C3aFmU9vqe7ENyHdXeU/dGxNIiUi0pnn0pdwSavtNkmlA1IpljA33mgh+U4om6dfR/FPUzQpXiTMzRP1vbU30WdD/EzJZDUgMGpKClEbrs2oa9XftrdBateB4TSVHyLb1kEoPQILDadIx6MwMBv7vtDSzYn65m1yUZYLLZkQxcBG05V5X4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kj+67loe30QatsGtHP63Z5BWmkN9kT/K/h0r53KhiPM=;
 b=btDYxk8er2vY2jfLD72Vumm2suxdLdm3iChGLegvKnK9aLXHVwN/TDJx2FM021SHOcseOU9LPtA0tnJKLrVstEVEGsDf67VblbCPpj/KtllKnqMkciM/a356eQHZQWWEEJxEyfWM1T1zQsz5tzcuOPjuCH7CSUmPrOOE5l08TLLwRXCIU/EFe9K3wPpOnePiqGH/3CSe4WliyLPfgE4e8trtzXcmPMHP5+Wh/2QOu5RSuWh0QBxd6p+LKa0doIG/eHYWmqRUxbWwJI2ZCSiNtjXUk525lUgUUixHn9LKM/9uBQRx2vCY/uGTq0+vT4JQJjtBCdI7coSFv0cBC7HDVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kj+67loe30QatsGtHP63Z5BWmkN9kT/K/h0r53KhiPM=;
 b=ooNkZ4xFbqFoBFaYXUsulU5tpZ47CAYf8N3JcOGxlmrH6F59dDvAHChe7LRZtE+lx1BDrIh2IObJDHuHDkDKEByVPfUmWVA2KM2XQoVxJoedwY1QDnPLenp4nyqgGXPCK22EoOMpWN7vmoPVmiZdMNEfh8K3qjntcU31Z/bXO94=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR1101MB2287.namprd11.prod.outlook.com (2603:10b6:301:4e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.29; Thu, 11 Mar
 2021 22:53:22 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Thu, 11 Mar 2021
 22:53:22 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S55 11/14] ice: correct memory
 allocation call
Thread-Index: AQHXD5FTEl6zhi9G1UyHX56TNpS3xqp/c3Bw
Date: Thu, 11 Mar 2021 22:53:21 +0000
Message-ID: <CO1PR11MB510529BCFD50B3A0C6AB3999FA909@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
 <20210302181213.51718-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181213.51718-11-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 7b76f6f6-2757-430e-9367-08d8e4e078aa
x-ms-traffictypediagnostic: MWHPR1101MB2287:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2287217B3AEE90020CF4C988FA909@MWHPR1101MB2287.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:138;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bBy4GvaXdq6EaXMoUvUqtDaKlEnRd7bLQSCUhu8jQy0cskJJA5ReArXq3oyrktmyiF1C8awP+bca5GVcYxg7Fozl+Hl1b8L16EL3tqkyicjusJqm3OKINu3eAOjiyn4/XJ0ivo1ybcs4+R8of765wIFXm+Y8z1MC07uDhLrSX9naQelimX6VmQigxwX4nHoG/fYmjsr4WsZjjUM7N29ryvTU3yLn+RcxUJVh0SqawFkMscKgCuSSfPvRj1OlpeyHbuEACCvgL6FdRnfD7sNo1bIBjHaoM4IB1/tWHVSKtfBExEyjhRLH6sB+SZkp80U+vkPu+Si1g+6LBZM5Lj5IlRBGvkP9atGFrWIctGJ9UrAk7orcZ3srAqdY/b//rrO0JmqwnFCdJcPFkLu/t6dj5aX9xYZRvhQxNLSgif4YELaMafgagzVfMLKuCa97yvd7Jq4sVNVh2oXBz/pLPP6Dy8rQurTvUtiUih0Due/A0OUxBZ1V+VpyOvMimw832qO0S2Nhu1snmIGULTDnSkb0pg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39860400002)(346002)(366004)(376002)(396003)(33656002)(2906002)(186003)(316002)(8676002)(5660300002)(52536014)(55016002)(9686003)(71200400001)(86362001)(110136005)(4744005)(478600001)(26005)(53546011)(76116006)(7696005)(6506007)(64756008)(83380400001)(66446008)(66476007)(8936002)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?048tWLln/Q7tIiwXB1yhzEOtMc1qTrr4lXpEeLthSG8uEQy+2yl8WOoBVY9q?=
 =?us-ascii?Q?EI2VWHlmLxuY0lVz8u53N7as/nL6wZFpn73Nh4+actWwYbJ7cxjj91xSb2Tg?=
 =?us-ascii?Q?s8A1IgovMF5Y3eCmHO2CJ+5oz3a9XkOgg0G7TzRDA3fKkrEoLWQ/tdv+4SLv?=
 =?us-ascii?Q?LGxG5T6qo2iSfksUX4wUFXjkPfPT1QZt9141GRXTG70Lxtfk58bBS7L+bVrn?=
 =?us-ascii?Q?dCxXcmIKMyhVBeLjoI5UegjmMgRNrRjswA+znYy73dvM0kodz4j5WwIB3tMG?=
 =?us-ascii?Q?ufoSjRokC9Q410c1fGP0NIbOiGLmbYu19FHSNars5BhMMW881acT4DJaaEK5?=
 =?us-ascii?Q?90KqMKzIeaIRWT6deKZgiXylI0tFcu3PrQ/YYcppKTjy98MclYp9MICgd4b7?=
 =?us-ascii?Q?V/WVDC2pDMw/csitfHedePmAdi95EPnS1S9KW5B0gu1TMxDKBt05w/Yz6GOG?=
 =?us-ascii?Q?85W20e6ZL5s3yfFQXFukV5zSUhc7o/SnzjvfiWj1uSYarqqDEaTcg1DAWaYc?=
 =?us-ascii?Q?l8o1jg4cVdAAXUOO+AldTGWvLA0FCljWHIjgLQpRZ7UTqXAF+xtJMM36QLJQ?=
 =?us-ascii?Q?BuxyTkg8GQLdF14T0rybAPYOjWSXiPGXa/f3K7WBcj+hxOuqmETHVQQX8S/N?=
 =?us-ascii?Q?ksPE4RV2yOuDin5C3Eni4X7OZkxxK+OTWgtzTOYlspQ9kFeW4eGSxeOe+NFN?=
 =?us-ascii?Q?8lwbNdS9Vw5voYfl2GbsjMvnpvSkoWx5gq116NYcZxQkczDg94tQcyOGrSx2?=
 =?us-ascii?Q?60YFm3YSKoP3F2+M10zacCW50MtEkJARCZNsxBZ69lLS2czVnwd3d5JGQRKn?=
 =?us-ascii?Q?NxeaH9Nw6pKrXOsPwdDCCBo+6AAWCjKkvojT8FbY1DvZM4h8CadvwvcR6eB+?=
 =?us-ascii?Q?FHH49rJHhuO2KLbUjpWfr4+q7E4rSqgBSiNcw2o104SeBglmSgxPccR2jOze?=
 =?us-ascii?Q?qaw3G+671N20MBIgvdkGtLFB5gENVDoPpt2WlfqFiaT15rUOvmBPXqHlMqfn?=
 =?us-ascii?Q?+m4U4WBT1tHXcVeUDq0RlV0dvmDCOLkCT5HlDLxXagdhhqJKoFdKsnvqoorq?=
 =?us-ascii?Q?6CH9XFzWQyXcrmdwuxJl9KxffttPTzDI/uQXOeqGxuVc0R6Okf/RSuPdtc7E?=
 =?us-ascii?Q?evQz4z3+nde0Pr34rbK5TJpoV7U5rSEOTzvkqFGmUkRREmW7KxD450VqUIWh?=
 =?us-ascii?Q?VRdoBtrfO4nFqg1LIp6qKRkO9wAxiKRnSWtCcESNFG44RZpYoWtTfUC4m44A?=
 =?us-ascii?Q?SLawq6P1HnS6NpbQvwhWaSM7T0xnne/7T7Zli1CZpN4JSGbgyWbcx3QJBjUn?=
 =?us-ascii?Q?f2Sv9nj7QOfBw7dnQMoRdg5Y?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b76f6f6-2757-430e-9367-08d8e4e078aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2021 22:53:22.0201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6icO3f9IQ4mOsl4qhTKxvxBIuFhH9UotxPaxOhpy3GQmP/puSZRZdErxOYnZoaG9NlVYedQD0dSrSf+XpN9pCBMNx69eRMrCs99JIJCs/QE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2287
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S55 11/14] ice: correct memory
 allocation call
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
> Subject: [Intel-wired-lan] [PATCH S55 11/14] ice: correct memory allocation
> call
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> Use *malloc() instead of *calloc() when allocating only a single object as
> opposed to an array of objects.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
