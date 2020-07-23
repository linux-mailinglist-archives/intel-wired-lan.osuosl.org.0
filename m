Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AA422A47D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jul 2020 03:24:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E936D89369;
	Thu, 23 Jul 2020 01:24:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6ky42yJTRSLa; Thu, 23 Jul 2020 01:24:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 70982892A5;
	Thu, 23 Jul 2020 01:24:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B80211BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B461E8935A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VMXkY9+-bXeq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jul 2020 01:24:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0AFED892B3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:24:06 +0000 (UTC)
IronPort-SDR: 7z20I9S9cFQUXtr4FD7FVhFU5WPns11ktrSR5LLNy/7HKgeIouXe4lHgqxgg2oo/5XDLHzbhUz
 aC7ihwdKGhDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="138530519"
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="138530519"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 18:24:05 -0700
IronPort-SDR: bIaBDeDkWzxC6W42Ivnn0reJyHBq2oHGvRnucRd9vcnznxtQ3h+/ZAdj/FZRfqGBj1kIqtEJK1
 dg/LaISS8abA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="328396218"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 22 Jul 2020 18:24:04 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Jul 2020 18:24:04 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 22 Jul 2020 18:24:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:24:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NaUuXAVtIqycG1ItEXKC4TW84NIWibpvwvNTC94UpMIuBN9l2K8siswyphiKduA8XQzcdJKef0M8OwE+SYttDLexNdG86QgGVdEAmdvjvEgeyV1R7dez8MiseQkXfVz/Z5bNq4Eds4zDdk9etSvJm+vgO1UzapNB+fiR6oqt+vskU5JWn5pcFo1c1CTx4JKuooPaKwB0Vznx7VoxS5tttWYKbIYlEPvtVtdmkbQ78OGBSBQ7x3zxDCBYw8rX3/54veus1Y9Q12yJpn0cA0siEN7QKIQr2uOdTZcc5u02PotNYeQyIjQMfJgiCe9KZjLtvOUXuiXe712QPuzX1I+vRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7g8Kqor5vJbHNQmkvC0kgAAo+z/92oS2V0Pl0fGfStA=;
 b=D3KK5KXosoZEW3D/aNP8LE+ZfBV0/Mhxc9v+ryW1CyvrFBkIryvZkivGe1t0x1VfP3w3vtqwXxlnPqA0oYMZH2ZBj8WAfIFydZIXXqY2WueRRO8aE0CTK2c+rPLRUypZR0Gl5+Alw1CMoCxbjoHDpd2+0q8J0qpsxUhlCdr4tOtSU76PqV1ceX6TPY0G2iTkSXQ6bWza3cRbHO1myKACvqXQZIN83vmEzRgzbZOwampfMpA23KbQAL3BGiZvmdl7aTQEbK1X+U934ooeCNy2RHJIOfosxrgxMDVOjKOZDKPoePTtzCiNV+pR4rEwHte6DzFelXdeaEiYWksvVrbsxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7g8Kqor5vJbHNQmkvC0kgAAo+z/92oS2V0Pl0fGfStA=;
 b=VQIrnaZKdeyiJAP/OU8TLpcMJtUOgcCHgK6W4SX9fHLbei6UukkBVrhHJqt0P4LnKZfdGb+BVNpQ6BH7nUSHyfYfgRDC06RyBygEy1QoQQmjNMq8XH2xCaQW8buHD+BpwILo9hMKbVw7yZLBolCQwPZIUwPS6YR41WFQh+EEnL0=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1538.namprd11.prod.outlook.com
 (2603:10b6:405:e::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.21; Thu, 23 Jul
 2020 01:24:00 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.026; Thu, 23 Jul 2020
 01:24:00 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S49 10/15] ice: add
 ice_aq_get_phy_caps() debug logs
Thread-Index: AQHWVgzsGTdByz2k9EC5PwKLZozTfKkUc7jA
Date: Thu, 23 Jul 2020 01:24:00 +0000
Message-ID: <BN6PR1101MB2145066E9FB6204CAAAA6C4D8C760@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
 <20200709161614.61098-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20200709161614.61098-10-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 3b5ab7fd-b630-44c6-3091-08d82ea71404
x-ms-traffictypediagnostic: BN6PR11MB1538:
x-microsoft-antispam-prvs: <BN6PR11MB15389343F78246C0BC0434A38C760@BN6PR11MB1538.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:660;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +gZXOiq7TuxrBdzx7uPq0qgcIVYPC3Gdul3nnQOyclFFEbWXmJg+zk6K59pB0OtfrQ7Q1auW0JKIDecZnJcst8KLjGtOjOxgRw+Ua9b7r64hsDX1pLws8kKgguHlNA9b1rJfWwA/IiFjy/ZIH5qzSAxw6ZTotQQZd25Ps1b3fCayxLg9Wgwr8f0LnyZTAejoawV8SuWGCvP3x0PzykzLDQR7wTkMHQtGO/WnK68n0CzcbKzqhHLTkK/VLuB83RUZs5STu04gvwasZ87GCwOtLP7xuxDzQTUqR+I1eWTj5fMfjlaLCGnTyyyqz4kr5Ej+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(136003)(39860400002)(346002)(366004)(55016002)(8676002)(4744005)(7696005)(5660300002)(33656002)(8936002)(9686003)(478600001)(316002)(83380400001)(66946007)(6506007)(53546011)(52536014)(86362001)(6916009)(71200400001)(2906002)(76116006)(66476007)(66556008)(186003)(26005)(66446008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 6YffQEWmfrz9nx6eJ5XdqGju2sEA2JDXjtvFOYAazsIZmHTivbXe15ytSIJfEhAGT+3MZvw34rlxpYlORx+CHA3zGzOFjIGywKFIcJ1PFWYzW4lNVQU0s7oUUeEoDFy8sOVKBr5/apEx87w/YYHPFF27qPhjmpAhQ54sW6iZgjoWPTrk1k5LKLoSkMGSRRM0JBOw+lQ84/NDzB8imxdx+tXwC5+7vmVAmMzKZJsLwX6cGKFtQ5aGaJr5Ew1Ck9DDgv4tFf1tOJwXTewZe5HtMG13fPgKyUD9vpJLvlAWOWXxm5JOlFqtzkvrqLt8SN8mzhXYOYG6fYV3FRdO0AMfraf/+pcKnDRjFE4LD2eNeGRR3cATSnTDTwTFkyg6Lv2tdiQU8J80Gn3+d5mQtt0HVw1crGP2Srum4f0M6s2O2YL5x5L5PQjf7sNkWjT1B6d4p6pmZn6uVjNHn+P3JVql+8pWhX6yAGP9wCXkCfvMX4U=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b5ab7fd-b630-44c6-3091-08d82ea71404
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2020 01:24:00.1650 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vYCn2aRfbN5B56Rjik4PCukFIefTD7YyPa64/cnxpqxOF+QcFVHXe//kKPXFvvikLdcrsJdQ9ELyshOf8QLv5xF8i7q86mSK49O8KcnWVfY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1538
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S49 10/15] ice: add
 ice_aq_get_phy_caps() debug logs
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
> Sent: Thursday, July 9, 2020 9:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S49 10/15] ice: add ice_aq_get_phy_caps()
> debug logs
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Add debug logs for ice_aq_get_phy_caps(), and format
> ice_aq_set_phy_cfg() and ice_aq_get_link_info() debug logs to make them
> more readable.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 68 +++++++++++++++------
>  1 file changed, 50 insertions(+), 18 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
