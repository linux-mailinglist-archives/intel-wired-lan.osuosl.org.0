Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B59300B51
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jan 2021 19:35:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 899B0873A0;
	Fri, 22 Jan 2021 18:35:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id adRzySIlpm93; Fri, 22 Jan 2021 18:35:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1AC8C873A7;
	Fri, 22 Jan 2021 18:35:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C8121BF47F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jan 2021 18:34:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8661F87105
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jan 2021 18:34:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gQXJHc5A7iKJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Jan 2021 18:34:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AB070870FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jan 2021 18:34:57 +0000 (UTC)
IronPort-SDR: un2nNh593dpkAbg5g9dPBQ9/TjNeIF3vkzYtHwYExr/p5brUhdO6wiEIy2u57j3MgFrZi6eksi
 mkIEJaygueKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="178709190"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="178709190"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 10:34:55 -0800
IronPort-SDR: tBcKRt3hSEQS7UlZYLeDtO9EZrHQfdgq+ZZdeYJZJXNErvMPUyt9tsR8F2WBwFdssMYVIwtS1O
 rhcn/X5PYJQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="503132000"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 22 Jan 2021 10:34:55 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 22 Jan 2021 10:34:55 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 22 Jan 2021 10:34:55 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 22 Jan 2021 10:34:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WlhZ6Pdv1AKRypAY6qLbWhLDEr8G9CSr0Qfji4u9D5l5H/MxzsNGIKMvvzWQ5KwsgEhW+HUv+KXTWpiy8gHlfGtMGJsJJmGNCCKPk/IIEfgfaqQyh3OuizsriQYIuCFQnDZnkAsuP831SUQVGSd8UwE8yUfWr5Xp6rAA2wZ6OYG0Q6qkiSJdfn3UPmxOncDARVDP3y47rCTuqr82IWmsTFH4DbQfZMu9AuqSPsEYEY6rDXawSnWfEdJAQzcLX0iHklN+dVREklqSB3dOb4G2ieb+KWhN0owhAfbQ/R5/gE2obWkGQ77HPndup2HqOeAqJEAU+chJ7SXJfjWsk0Qlmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gPPpQbgIqLD+dWIjEeUp4TSdPd2pvo0FQmmQzaxhMo4=;
 b=lQq4k9uHDxAEBXbdTqJBT6LvHjum0tBscLW9628HXqrQpbQiQweZohwLAfeWIvVeHPIo4prER/Yq0fOt6rma3iI8rIN7wE6gMZh2ktqqj/AtnHVpPvqF0pT/jiS5AT4TLlLRh56/iJZuLLt+H0wcWT+1pXjULZpmquxlunLE/QFMqQjT3/4BM3erjVGpT7qMpq+8oNCMRTJ6ofDXxYKubh6/9mdzD3ygYG0LL7Kaf56UdkvvvjjfB8qxUoHfoXtG8sKgQVFrqxviSEL4spRKizztNf6qfy9N6qfVeRu71FjAR9yCRgQu32vgoy7OJunJ0MtmKpMSqBYeCgknstazxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gPPpQbgIqLD+dWIjEeUp4TSdPd2pvo0FQmmQzaxhMo4=;
 b=GMftMSUisUWSyvVX7tfsEm2F1XqojwqRqXh1hF/H5352y1/IkpD75NK4mywjTh6vn5YRX+wIz8ui4kv+Sk2JtWDSByaxXtek/y/cgA2D92FY23+go3w9KPYYda1SV0+qMDJXCpk8FAZjqBOz2HMqhw6lUSMPw26dmCjWQKE+0Dc=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MW3PR11MB4651.namprd11.prod.outlook.com (2603:10b6:303:2c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11; Fri, 22 Jan
 2021 18:34:53 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc66:dd19:b156:7090]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc66:dd19:b156:7090%6]) with mapi id 15.20.3784.015; Fri, 22 Jan 2021
 18:34:53 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 2/2] ice: Fix MSI-X vector fallback
 logic
Thread-Index: AQHW8CTXK1biffT8+EqmJjmmN7nuiaoz+gIw
Date: Fri, 22 Jan 2021 18:34:53 +0000
Message-ID: <CO1PR11MB5105059157EA22D0915D0379FAA09@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210121183806.23030-1-brett.creeley@intel.com>
 <20210121183806.23030-2-brett.creeley@intel.com>
In-Reply-To: <20210121183806.23030-2-brett.creeley@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c7a863a2-3eb7-42d9-7e0c-08d8bf046906
x-ms-traffictypediagnostic: MW3PR11MB4651:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB4651CE710AEBD3D6DEC93F12FAA09@MW3PR11MB4651.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p3KFcJDc71sZ2FS/dIaG55tT5cbw14z7a6awXwlDuIiZlJjlbncVUUNF/URT8tZ39PZDx9jDkFX0L9CmHbVsT+ZSorgo7x3E80fVfOfzxbbPG4c3v55ZIG+ha4hYr7jG2+Jg5LnTEqopsAadRO2QVxSlD5EUVbJsz6TpX1lkxsP7pXZkPcORr8DwiyOAU/cx2CM9fCV0zgjQkg5uohYaWMXBjwA5mfD5yOcZCCkJsdfisfSJPy9XaS5QQBeu6tqM0qbvQMFS60VxwGfC5ihnsaVF9cE2vg2KXQy00PHEzPRvFNdU60b79YImMsY55mmr8GuIf+xN/MEg/E808oTBC0CaQvpuV3h9JRLOxYzL4sq/eOV9PWgpBfATPez0n0A1KjIE1yrlCMnsmU0bn6JbaQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(366004)(136003)(396003)(346002)(26005)(55016002)(33656002)(53546011)(76116006)(66946007)(66556008)(9686003)(66446008)(64756008)(6506007)(8936002)(83380400001)(86362001)(66476007)(478600001)(110136005)(2906002)(71200400001)(186003)(52536014)(7696005)(5660300002)(316002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?g3VBmYct9F6rtLwR8F7R++Z+f/sSndAnPijmitFubSRCssjcW9jRdb7lj4BZ?=
 =?us-ascii?Q?LRnyg/BI2JN3IQ0ZhFCQDYTHoArGbYSywY1QVdPVVbIc54+C2YrhQLw8IFoV?=
 =?us-ascii?Q?6GM8LgyX5KOdig5N4hreMs93xQ63ZnXjS7CPzp1Kkv2VToGYiGu6LL+ysr9Y?=
 =?us-ascii?Q?q4KJqcBBku9N3wdKqy9GqzVSiOM/KNXvnllFX8Dx/XCV3uOKSwHCNni+wXvm?=
 =?us-ascii?Q?kd1+VvUX3R52v22EcrYGfDSko4Jjx2EpepO98YgIbecDlb/KNQWuXrxJXQ1t?=
 =?us-ascii?Q?xpIjOzdpQ6BmVbgWUrK+ZEf66PclHvBXgrPgKz88Q/g9D2a3+RMmXWlwff7O?=
 =?us-ascii?Q?KiaPMXYR0Aen3p7KJlHeiTQ3hYJ9y/7KfBzO1XQGfZMlTCPAGGmp3rqm03Po?=
 =?us-ascii?Q?O3Jz5gib10Q70N39HoB3MWz3VDu+cDpRczTJ44O0/tTMOOXccCq/f4BpoMxL?=
 =?us-ascii?Q?8UXZF23yeJqAaSUQER0dzCc11sM8H5g4NTpaLJGOEXDVGKUd0ij0fX6yjf+7?=
 =?us-ascii?Q?/YilldGxOWymgvTtE15txrBmwaQmzSu1pD8/48uVxD/8eVZbPcCR2n8FO6PZ?=
 =?us-ascii?Q?Q70rJv0B5gr79yWWU/HdDjUnZbJTFnnWcpK6qbFZkdag5tIq2IgiI6zRcg0r?=
 =?us-ascii?Q?cf7a4xYLC80jReYMLBC5+g4JPFiSh49c7MQfIIVI63JsXTDoLUM7q/hAg8XF?=
 =?us-ascii?Q?y1MJQ96MFviNnmAouVATcsdCWdnaZeE7uV5Yidt40AevsxDPlIwwCVNpbNfY?=
 =?us-ascii?Q?EsQl75c4YX/EJNmQqYPJvrm6K/8zIr+umgasJ7LW2yAqiaVA/KeZgmrQHZlt?=
 =?us-ascii?Q?/dnB2yrnPxaUBjOQrPZhP19oIXpO6hQENshUAJvtWVoLBRmkI8SYUvX1upAt?=
 =?us-ascii?Q?Ega/u/6Znc2W69NxT2dU24p0HQxIeKYAflCFn/iszriup9VOSzN8yu0KHh2T?=
 =?us-ascii?Q?FeJw+lJuNl0FVTK+7j2ln0nAmfkFVoRiiHF76IxbxxQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7a863a2-3eb7-42d9-7e0c-08d8bf046906
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2021 18:34:53.4109 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0uGZnyXi0afrwYUl0OuOXSuSd23gUzPwaAQoj9GEUFA7QWoK+w3GhGEwNsA8vgPl7Na812MOx1GeHjdXIULvej9FUP2Sl1dsqGt6Pt61SK4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4651
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 2/2] ice: Fix MSI-X vector
 fallback logic
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

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Brett Creeley
Sent: Thursday, January 21, 2021 10:38 AM
To: intel-wired-lan@lists.osuosl.org
Subject: [Intel-wired-lan] [PATCH net 2/2] ice: Fix MSI-X vector fallback logic

The current MSI-X enablement logic tries to enable best-case MSI-X vectors and if that fails we only support a bare-minimum set. This includes a single MSI-X for 1 Tx and 1 Rx queue and a single MSI-X for the OICR interrupt. Unfortunately, the driver fails to load when we don't get as many MSI-X as requested for a couple reasons.

First, the code to allocate MSI-X in the driver tries to allocate
num_online_cpus() MSI-X for LAN traffic without caring about the number of MSI-X actually enabled/requested from the kernel for LAN traffic.
So, when calling ice_get_res() for the PF VSI, it returns failure because the number of available vectors is less than requested. Fix this by not allowing the PF VSI to allocation  more than
pf->num_lan_msix MSI-X vectors and pf->num_lan_msix Rx/Tx queues.
Limiting the number of queues is done because we don't want more than
1 Tx/Rx queue per interrupt due to performance conerns.

Second, the driver assigns pf->num_lan_msix = 2, to account for LAN traffic and the OICR. However, pf->num_lan_msix is only meant for LAN MSI-X. This is causing a failure when the PF VSI tries to allocate/reserve the minimum pf->num_lan_msix because the OICR MSI-X has already been reserved, so there may not be enough MSI-X vectors left.
Fix this by setting pf->num_lan_msix = 1 for the failure case. Then the ICE_MIN_MSIX accounts for the LAN MSI-X and the OICR MSI-X needed for the failure case.

Update the related defines used in ice_ena_msix_range() to align with the above behavior and remove the unused RDMA defines because RDMA is currently not supported. Also, remove the now incorrect comment.

Fixes: 152b978a1f90 ("ice: Rework ice_ena_msix_range")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  4 +++-
 drivers/net/ethernet/intel/ice/ice_lib.c  | 14 +++++++++-----  drivers/net/ethernet/intel/ice/ice_main.c |  8 ++------
 3 files changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 6efafe7d8a62..619d93f8b54c 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
