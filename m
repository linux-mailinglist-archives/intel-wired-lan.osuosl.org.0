Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAF61F5E57
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2020 00:28:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 889EF86DDB;
	Wed, 10 Jun 2020 22:28:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q3s57ttIq5-f; Wed, 10 Jun 2020 22:28:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2DD85887F3;
	Wed, 10 Jun 2020 22:28:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 16AB41BF228
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 22:28:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 113A7884D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 22:28:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L+A1t64t3YNO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2020 22:28:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3FC4986DDB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 22:28:23 +0000 (UTC)
IronPort-SDR: z6SOL1hXpFj2XziM+7n5MAQM2pidRRJKNl08bGtzkC6wLz2AwkMwX0IhN+uPIArT+e05RV0WVU
 JbHDgbQUsevw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 15:28:22 -0700
IronPort-SDR: 36kOB5QWyW1LNS3nZSfW03XVZNGILsI9rwhfLGyweuly4jbcDDNbuiXZ7Nxp2NvO2JKA/CVNvz
 iOO6mwitBVaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,497,1583222400"; d="scan'208";a="259432781"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga007.fm.intel.com with ESMTP; 10 Jun 2020 15:28:22 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 10 Jun 2020 15:28:22 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 10 Jun 2020 15:28:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Op5j51xVDnoMzmelfri8ws5Zo/+lDqaB9h/A2tAElmvxGXK84oZImvuWqm8p8Keci00jwMFnafeC7wIq2NuufwPAEJ8XFo/S89pWlUXxjejpFUCrCe1qh2Tw4rF01I9LedekK1xNlP+y8uyDIwgdOwurJ6PVHWRoNkWqixPX5qJ7T7g1sqqQ8BQ8InUPUu6j5xDpIROPO9eEZwF5NQ77gTxGEDPO+Q8RlYtF52iNGTE549mYAg/7yc7UX8a7TOvLnZ/mqG2kH/pATZqgNEPRjutDZ8WxBeOotD7j+w6YZvU8yj7nurz3DLje13UuZasC7gJEyOJ3fmecO5ouyw0lKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IOw+/RWZa07GBZY2IQED9GO7EhRuTS3SGQ7i0TZe28Y=;
 b=gE20IzuxpxwmnXRrgak3KpIRj33DVvebPbE3C9lyzrSVnRphivuN/qGdwkxYChKll33vtz+37JP2tY60gSyOqPSjzfHl0w64HNpS9nwdhAM8FyFQpK3y0H75tCacI5c/KsjiNqfCQXVx/vGmZ/y8WU+NWD5Gd8DhwBU3k+/sqgYeNL6TIHjK4HaENTL/QMPzFs+Hr0qkhcwDXi3Zu++oxRy22jy3LS3iPLZEXReHZWTyBTPhodyBeukfZlCAXK+FnlbeHHK9GTkbbDbuoEcnUV7D2ev1CqPkoCT5Kkjs5DELiOO3AbxnR0KsYfCKCsXNn2OGmUhdgzMKg2nhkMY1lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IOw+/RWZa07GBZY2IQED9GO7EhRuTS3SGQ7i0TZe28Y=;
 b=f06AP2gLFv3CDqDQQLgfBPJn73g+OB6tvESpTGtues20+q4jdreRtbFWEyhJgOAjC7SJYCFmQfi4rjPL5Eiy+5Jejj8bFjrpCLVqf1oI62xfe8uFcM69lgZw7B/dbr58HKOc9aK6LcXGH3FL4VJROGNPyBYKDJo7PAb0bvKoKJ0=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR1101MB2083.namprd11.prod.outlook.com
 (2603:10b6:405:58::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Wed, 10 Jun
 2020 22:28:12 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3066.023; Wed, 10 Jun 2020
 22:28:12 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 4/4] iavf: increase reset complete wait
 time
Thread-Index: AQHWO1yFGCROF/QarEmTvuvsFwu/aqjSdg6g
Date: Wed, 10 Jun 2020 22:28:12 +0000
Message-ID: <BN6PR1101MB21458A1961CC7FCDA9F58D778C830@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200605170946.23494-1-anthony.l.nguyen@intel.com>
 <20200605170946.23494-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20200605170946.23494-4-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.207]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c9b537b7-94ff-4775-0c73-08d80d8d8fbe
x-ms-traffictypediagnostic: BN6PR1101MB2083:
x-microsoft-antispam-prvs: <BN6PR1101MB2083C6841FA747615F625B6F8C830@BN6PR1101MB2083.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-forefront-prvs: 0430FA5CB7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h5Wu2WU5kdb3+dg6E4gFsSoAaHcyJ5+qJ5HXs4yyAoX0H2o2JW5d7dyp19TCQ0LDc0JGnzHxsL9LyZHCkxCkDXS6ER77Gdy6i1KpuOl4xdgx+fl3yB62B+KahmSz9FRyF/xApBCqUTT2505O2lHixeXSNqJudIiMOteiNEu/OXYw063L3WQz3sR1S73zegkMmk/Ty0CoR2BueX9tzQItGGHjrPWzodDv3mpbmKyVbyUSQKCS4MmOErQHDqu1JfoAx5jt8u/rPyzaQhdE8+NitQGxHKUati2ncA8PbKvXo1xSWKCxn/Ba4leR/ItH1u/V
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(396003)(39860400002)(346002)(376002)(64756008)(9686003)(76116006)(4744005)(7696005)(66476007)(26005)(8676002)(6506007)(316002)(6916009)(83380400001)(55016002)(66946007)(53546011)(33656002)(66556008)(66446008)(5660300002)(186003)(52536014)(2906002)(478600001)(71200400001)(8936002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: RP8m6EVFTJ/hIbWUDYJeWP/6eAuu4oOI1l9Z6ElxLLYkhdFyrAPeR4sdTqS32peL4Nu1GBWKA2SfffuZM8IGqaUq1PN5Y37KBQhBqqHj3avEUpmbMb/LXcQsG2Qvrv9gq8fuCYcsLpZHqivJdd8pLCYj7+De2O/f+2zceUtiaKnjZ9W5g48nWBX4g71B0FCbKCiF8KdFSqlmSRt9fWQW9ywJHvhMBJUSsWoJbnjeGGg41OnP0CDueAfbL2fs2sOq6kLMlq0Pc52XssQspJ3NgMzIr17bQJSgi9UAzk6+0G3P/29FF77J1w3Q+zQVG6N533uPoD40vT1zH68YzUw4ha6yK+v1SeUg0xSVvq06vdsgPH4/GuQp5poqcLmFMRYAN/8aujwXjsbiJ3QNpeI+hV3APmkQ0nHD7sUQS6W9PvyH0zTJygeQLFGV8Ka4M8ZSVyuGtT9QtRZ48jXHmDWjYslmVNJwSapHhz3Lv6/ZW6pjhEnZDkvpTWyqmO6Jde8e
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c9b537b7-94ff-4775-0c73-08d80d8d8fbe
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2020 22:28:12.4442 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mx+fJKF4r3JsSHn264k6fQhyQdB5bsgRV0kyr2p/A1MP3k0+zqveDbcDXxEVDRIWiampAiXUfqJDhF69sfPhoEuombg7wvLLVV789E7CzSA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2083
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 4/4] iavf: increase reset complete
 wait time
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
> Sent: Friday, June 5, 2020 10:10 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 4/4] iavf: increase reset complete wait time
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> With an increased number of VFs, it's possible to encounter the following
> issue during reset.
> 
>     iavf b8d4:00:02.0: Hardware reset detected
>     iavf b8d4:00:02.0: Reset never finished (0)
>     iavf b8d4:00:02.0: Reset task did not complete, VF disabled
> 
> Increase the reset complete wait count to allow for 128 VFs to complete
> reset.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h      |  4 ++++
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 12 +++++-------
>  2 files changed, 9 insertions(+), 7 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
