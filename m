Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF313E89B8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Aug 2021 07:25:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1091482768;
	Wed, 11 Aug 2021 05:25:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AuVmbVMVw0wq; Wed, 11 Aug 2021 05:25:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC34482771;
	Wed, 11 Aug 2021 05:25:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E51DA1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 05:25:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D42F18274D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 05:25:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MBWofhD1W44f for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Aug 2021 05:25:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3644682725
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 05:25:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="202239561"
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="202239561"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 22:25:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,311,1620716400"; d="scan'208";a="672604026"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 10 Aug 2021 22:25:15 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 22:25:15 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 22:25:15 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 10 Aug 2021 22:25:15 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 10 Aug 2021 22:25:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b9t/0KC+i79ZLL59F4fZCKb+rp4W8KXb8CfnPrT5ZxbfqfMmpP80UJ4uT459ms7qG88wnEGFRc5AAWws+OIuncPy5XeGUtsdmD8ZFjOjvJmmsJe5I6N5cfmmaJto9WPF9XfDbmmdROfFjoXsOWLJkktUhXBfCT+4Wxy7BD4O43Su/Uac6O/EDccLv37J8hqlE/UfCV87aLl7r3XWHc4gXXwPPJn+nGoQ0M9yCCR1d8/2T8HNJ2KAwkSulmH1vTkZ7f2N6cTUMQJeWlT2khyaItz8dsbJa1cxBz4EIF9pXvYYacTKrqGErbPMy9HJ54GY0OsmF6eoKWVXGt0sgn9hIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=di3fiINNDaAa69aOLGpkOYlta8LiPq4w8YG6PDzMYzA=;
 b=ggs8K3iCNfzbtJsHG+XUQoaH6l6WGUw1j1PykhoXLqRJa9Abx3QQlGqO3gMRHQNcmNPYlb/IKScbeehpyyh9n6ZThqXxlgRPxyKp3gxfUNNSWMDEP105cHaDAIofNRb0gIVQ7It1+37mxJG9gS+mg/j/LYyp1Lc22GOsvg5OqhN36KY7JpTC4aTbIks9am8yarBOVsh5Ga1WIqvOIoC3g83bCVCeIaLtzQXzJvsljiBfggD5MjIAMHbSBBh41gx/7RRiQR8dU7kPnTTL0IuIxuT+/ApvnSlJ0PN0HzQfVLYMEg+rlWhw+jsiamYbdFdhgiS9pwEkO2ZXbKjAvEFVzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=di3fiINNDaAa69aOLGpkOYlta8LiPq4w8YG6PDzMYzA=;
 b=YI7+nwBVVALtgvZ1zoGanv9zpGzVhBxrqdC0n8xNwO6zWbKjBFgqPz7Cq4OCyy285UMxHXyVSXEOJANKLiDJ+WtHinc7LvzyogfOphEuEkvZdr9l5ONCGcqHNDYoe+1EF+Pb0nWKwPBH+Dt+VvjfbqzIriSMm1RklrNh4up+rFI=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1486.namprd11.prod.outlook.com (2603:10b6:301:e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.14; Wed, 11 Aug
 2021 05:25:11 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c890:d669:a46d:eb03]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c890:d669:a46d:eb03%3]) with mapi id 15.20.4394.023; Wed, 11 Aug 2021
 05:25:11 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 10/12] ice: rebuild
 switchdev when resetting all VFs
Thread-Index: AQHXaaunfGwMipvfKkep/VE51opnBqtuDwlw
Date: Wed, 11 Aug 2021 05:25:11 +0000
Message-ID: <MW3PR11MB45545E3C5C4611FD468446F99CF89@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
 <20210625024501.6126-11-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20210625024501.6126-11-michal.swiatkowski@linux.intel.com>
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
x-ms-office365-filtering-correlation-id: 0f28bd6c-08cf-4d4c-52a2-08d95c88643d
x-ms-traffictypediagnostic: MWHPR11MB1486:
x-microsoft-antispam-prvs: <MWHPR11MB148625EA570085016B63E05D9CF89@MWHPR11MB1486.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:517;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LKuJKBGfuzjxs9qHibfySOk7Vx1Foky9V9ugIn/3vywJRj9CoScdABOfacuBmQobmvjpKVKasDurTfddjp5aqtb0Jlwc5CAQgKPHjFAMNgTE9y8cF81TeqfshCEAPG3IadsSzwr5Vbs7oLEc96gieGad8H7RA4aSthSfxpz+p1pxrmrzN6JV29/af6hlxlQw/OdrEpG7Z03j3JA+sOcSzziceEjaa2UE9QRV4tfHV1+5Mm8XNfGnkyX170VE/dHqZAT4OdLRG7wJyOzyEoBO7JxejcljJpoP8JMfxAlNlpt4phUiRK0wT3hKF2ylcdjzx/4lMLhI7MqswzWlrK/7sPq433lQBqbwnFsDedsaTgzpAudiO3yvnMF0A+s1S+zFF2DVlzdvqJEzjElKWZYmKlWYElx35rc6BXVIIz8OyF8c46+ka466S8h5yTjPJZz4505U4N9GV3ute16HN/Umh+7Hxse45/Kj/sr0mn+9AzK2T/yKbjN1QuFS7I8JJ1e4ai2U1Q2N+OzRkOP9Up0HJpWwYwkuhcYQPh8E7B20W+XDeg+TUqxfKC6ZPQ4/YSL9SUF1MoHaYesTWRva/WogZhSgKJM5Y5uLl5RStlJK0hoViebaiK7LAWeH1SDl0BtVaASGg8B0Swb6nzc7EqISdQjHthCNNUKfncb6lqwS99x9NlpIipjk/TQqexhEJAzj+E0R2KgZYA/7bJs8uSkwWg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(39860400002)(396003)(346002)(376002)(478600001)(2906002)(52536014)(6506007)(38100700002)(86362001)(33656002)(8936002)(122000001)(5660300002)(71200400001)(26005)(64756008)(83380400001)(186003)(66446008)(55016002)(110136005)(66476007)(7696005)(316002)(66556008)(38070700005)(66946007)(9686003)(76116006)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/QAFl3UIFLhiFHUZhMW0x3J0mwEoyWTg4B2I98WQCqdHlPpDVOgDGYMCP9i7?=
 =?us-ascii?Q?ypHmnygYLjYhw59OuweV1n8fcvxGfgJvNQKWPtuxR2TrCzuEeuNyQiiOHMyi?=
 =?us-ascii?Q?AE1RSVmlA0ExtL3o0SfSe3Tr1cxqizjo03q1esuxtrabeEG85d72g/oPWdwr?=
 =?us-ascii?Q?cQCO0NV9t6NlvSesWcUglQRo/5I4BfYebAiK4QbtUDBHeegcbUQD1ovnrqdj?=
 =?us-ascii?Q?Xh9b+lvhp+dFPGcI4uegUJfjIoE8HC/GR2PUbieZ1bIJTfyTrJM1RssmQ7mV?=
 =?us-ascii?Q?JlTFIsZJRt+TVTjJtchKCP4yruBkeVkf6t9nVg23X+93QAfDy6StPxxAorJI?=
 =?us-ascii?Q?5ALkDEvThMCMwKyWSypIjTySINBFjbWlsDHDc+EEE3nvQsmRPyFNWnHXlO+g?=
 =?us-ascii?Q?PkEiL6Nv+c68gqiu89Ag7TYzdAN5YGKlEErkLiMpOPhesXbJgTqj8oTeEMxf?=
 =?us-ascii?Q?hYSDY6PaD2XkYAZMyz6CbaLSYLwuoMJvGDPr/vCcLQqAMZidOwMMal4ZsD3U?=
 =?us-ascii?Q?RujBIDuwOFVjS1zpKCV3m4wm471zXqg+YCeTW2ILZE7wBocdRag2LW6WRBa2?=
 =?us-ascii?Q?EQeq2THwZZ/nylR/B2dozcwT1ktNGfTxAvrrVhvDvrNqcTBwfMMyY27WQMzi?=
 =?us-ascii?Q?6LbixflTw+9UKpIst93gey987eOncUWmKyheGirFBw6ltm9M0scz2tb5N78V?=
 =?us-ascii?Q?3eWS9tKLapGovfjjqr9/FuHwl7GPOMDhEhS1eLuGqZU/lpwl863s6t2LUvCK?=
 =?us-ascii?Q?soRGptfDmiUrD9738/wlwJMIx9jNdNPSSeGLd3JsPcvJraldoVkr/WEVeJzf?=
 =?us-ascii?Q?BrHPCuMUXgg/9P1oJw95SYa5yhnLF7ztAY4kGfN6Ljich2oOPrJN3Klhdh9y?=
 =?us-ascii?Q?aZcsur04O7N1FbxNs4IUiKfUI2T1A9MY/cPye5qEl+55Nsb06DBVFM0WwhsK?=
 =?us-ascii?Q?kLZhWPzxH1pZ6XRLTpaOBBoz2lyx8vOaPRB81gfKBGV3tSykfd3a/Q4P+h2a?=
 =?us-ascii?Q?tk5Tg6nQtCUO3Rml4x/VAjYTlowzP6AZnWZ0BiiJPLtwxp8m94Ct0UnNyvK+?=
 =?us-ascii?Q?Zk0cndYAKvANTREe4lWjh2WRH5AiCQhK+QHJRxwjuSH/7mBlgmAv0j3ZY9si?=
 =?us-ascii?Q?emxZ6YmDU6VAWkjjae900Jag+3ed3Wr5bH6TjQR1PgveeFrY8Woq5BEOhH/g?=
 =?us-ascii?Q?2sUG5DChJ2Ye1jIp9660WofukaeMN81biAciO3ETmBA+fMqjhEJ4G3cobgXE?=
 =?us-ascii?Q?070aFdLjdERGFdULEjoFwu8VBsIbYUbDcrqarVIUV7q9Lz+m+QA3NyupIJrV?=
 =?us-ascii?Q?yjAR62RzEUsLsXL1deR+l/jD?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f28bd6c-08cf-4d4c-52a2-08d95c88643d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2021 05:25:11.6066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mbfK+ewaWLkaqrRegWyQd05Dg+nRcmLgFjcCxXQJIQw1vvLp3wBjHOL1sqVsmCDoe2xyMK9ZTJGFEMisvmrH4LzPvhab4ax5Dvd/iKImHlU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1486
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 10/12] ice: rebuild
 switchdev when resetting all VFs
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
>Subject: [Intel-wired-lan] [PATCH net-next v3 10/12] ice: rebuild switchdev
>when resetting all VFs
>
>From: Grzegorz Nitka <grzegorz.nitka@intel.com>
>
>As resetting all VFs behaves mostly like creating new VFs also eswitch
>infrastructure has to be recreated. The easiest way to do that is to rebuild
>eswitch after resetting VFs.
>
>Implement helper functions to start and stop all representors queues. This is
>used to disable traffic on port representors.
>
>In rebuild path:
>- NAPI has to be disabled
>- eswitch environment has to be set up
>- new port representors have to be created, because the old one had pointer
>to not exsisting VFs
>- new control plane VSI ring should be remaped
>- NAPI hast to be enabled
>- rxdid has to be set to FLEX_NIC_2, because this descriptor id support
>source_vsi, which is needed on control plane VSI queues
>- port representors queues have to be started
>
>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_eswitch.c  | 83 +++++++++++++++++++
>drivers/net/ethernet/intel/ice/ice_eswitch.h  | 10 +++
> drivers/net/ethernet/intel/ice/ice_main.c     | 11 ++-
> drivers/net/ethernet/intel/ice/ice_repr.c     | 20 +++++
> drivers/net/ethernet/intel/ice/ice_repr.h     |  3 +
> .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  4 +
> 6 files changed, 130 insertions(+), 1 deletion(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
