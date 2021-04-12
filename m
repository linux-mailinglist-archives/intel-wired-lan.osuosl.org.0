Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB1635CF72
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Apr 2021 19:28:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C618C83C23;
	Mon, 12 Apr 2021 17:28:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bn6jgBEzNbVC; Mon, 12 Apr 2021 17:28:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5D0483C17;
	Mon, 12 Apr 2021 17:27:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E46721BF9C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 17:27:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC25E404C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 17:27:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JdLiM6Dy7hPA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Apr 2021 17:27:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CBFFF40370
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 17:27:54 +0000 (UTC)
IronPort-SDR: DU0ZSASLxFKWxn2Ps9Hhr8ppGxrVUI5HBPiK7I3M9xKdk3TcxSL2Fa681gVAgccESsryoFoNa6
 BnPrt4ooqWjA==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="194273519"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="194273519"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 10:27:53 -0700
IronPort-SDR: beRkw0iy+xpVv3ACDSH++JsgMnzXKIbTi+cYvtnQ7PL70K49OS5+5jT7r8r8VQgCx2VR623CUI
 678vy1hi6qsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="460252090"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 12 Apr 2021 10:27:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 12 Apr 2021 10:27:52 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 12 Apr 2021 10:27:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 12 Apr 2021 10:27:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 12 Apr 2021 10:27:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KN9EnN68Jc3YaHRc+nFDNLtMPZUMKj9K5A5zRrz6a5uFNQdM0U5waakO7ss1mRAmWsjdwPyeq4r1utE6XlpqkwLax2kacEOxhQL2mHz+fvxhweOsnsuw+iEjVbRTYSO0dQMmEck/+H60qHwQeKc/lFANQcYKor/q1cAs92IX54JRxCYgiN/jwGBfgVEcI5TyrpwVu/395DlKZHxjs0K3uvlhLnfv5LYeSi45KBRiW4uQP0AA48B/PturuT79uJGfzC3krLWtq8C3tkC1MF9g8Kdyxts2yWDR1+dsHWJpX2mbsvDU1sRTL5PIYS+WZwWzkYQ8O3eu1ssN9EHpQ1ZT9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WDjKph/tDQLr7Kmo0boQYaTpEdglR6vp7+fbkqOCHxk=;
 b=Dpmt7mTszPWNCBmuAjzH3eZaVBw6VHQcVtoQPG/dU3THErvu1bAKQCtdYcFzM8DvOOl4pn3GphPmnhLFjuzbsauAR4ubvGS8w2ojpm1QZBSQoeLCbHct89UBmHarySor6eg+jwu5xbSWqIDJuLu36CSFOE2wi026h5rusCiBPANEwCjb/WYal6XD5kdWDPDwNGvyO3k4rbvQHZZympIh9Z/DmFYBDhmjgpzlKpj7hNU2YkjCmOcyOKEjKB2VMephvOGESJuaJ3FeCQ3e9m1XBVvtR1wlH5gqpCwcRjWWiHf5ODPyHgQbOhSBdjAV/njaHR87iIN9jASlU992AIrGOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WDjKph/tDQLr7Kmo0boQYaTpEdglR6vp7+fbkqOCHxk=;
 b=TJSuxjaEMsENnw0YMzpAHIvt8CIBhTpVrQwnKUKeyt5HSceBb0cWM9J/yTm9OVQqmUV92bCxVLjEbNaYoV14iasD8v0x2oeUE8eg3Ks0wnCIqB9mDrlXIdIUJfzsMa3AdhjeFqQdmsR8cZLGhc4ypQ4h6t/KQxNqLBwhsIqush8=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MW3PR11MB4746.namprd11.prod.outlook.com (2603:10b6:303:5f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.18; Mon, 12 Apr
 2021 17:27:51 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.4020.022; Mon, 12 Apr 2021
 17:27:51 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S58 03/13] ice: manage interrupts
 during poll exit
Thread-Index: AQHXJnSi2GXOE9vlH02bkFQncjh/pqqxNUXw
Date: Mon, 12 Apr 2021 17:27:51 +0000
Message-ID: <CO1PR11MB5105844C6858DAE45FE7F2E9FA709@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
 <20210331211708.55205-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20210331211708.55205-3-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: f1191c6f-3b0b-4577-7ff7-08d8fdd84c7f
x-ms-traffictypediagnostic: MW3PR11MB4746:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB474652A44F7C5618D6114EDDFA709@MW3PR11MB4746.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g3sFI31ETxmaxj3vkI6yg5Ya5ATmwWxIpXs0FQUWSk0kpm1iM4q1j/2WWGqVt6912Npi1OKqY4tjNlYdQgeS7gXUJPycS0NouuPlK8NNsSwnzgSoDiDVfUa+xYFa3eeLH0oS1QTAQpg+GEE3Iw3fHWjA6SinkWO7vocmlg3/E/ajMQJSjqCk42r64UR1MoM2IRUxJI4osL/R9RwKqkzNSWCj4MKqUR9I9kRqXCZMJTZbQ6lgTUiHqfsnF0H1tzf0I/dhA6Qc7kqDBk5SAdF6S6Ph8N3qZB+l18OT7Bqiv9NRI7dSC8zsC16kTLcFH4cYQ637p69wX/99YpyYdSNFJ6C9jRN9ZFd2jrGHReh+BE57q6H4SYuDcc3JcKmtUCp33AHJ0rci4MsXELfJY6cwNQMh8cljmFHOcHXI3BaTc4pYMj53ir6Nz8/+UN2V2ylIR/SlhOMlu5I1Bgv/Z4AFjYqrTHPLTgcumdHpCxGJcXSSNX1kpgSf7LbTxWV3Q5WRDJSyEHqJkz2eC6HZO5L/hIldTQwUgaVROpoIEdpPhwQSSwp4Vq68xRMGALFn0W+YyuOjMyFxxP3LxW85YWeg33iMcMu4n/JzkjrAySxgIwc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(136003)(346002)(396003)(39860400002)(9686003)(8936002)(71200400001)(33656002)(478600001)(53546011)(7696005)(86362001)(83380400001)(186003)(38100700002)(55016002)(316002)(66556008)(8676002)(2906002)(52536014)(66946007)(26005)(76116006)(6506007)(110136005)(66476007)(64756008)(5660300002)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?/cwaMv/AgCkJ4GpPNUiRaEGHXyRDYnqnm7NZdqXrU8IOBW2cazcFndh2t8F9?=
 =?us-ascii?Q?4y9IgpY9rAzdJ16VjWSErWjvXxQBqyPaM/p+cGfMdsdrbZsIkqWbKBaJt8Y3?=
 =?us-ascii?Q?Stc6jpZZz3JzhOp6/c8tmFJSZa2cZtQFKiQ6jX+oDwcU0PhTtfhLVLc0CkL4?=
 =?us-ascii?Q?0JDDcunrShqTPoNgdsS8Vj2G7QiLHWjJzVQ79ylXnY65hD77w0H6T2e1Af4S?=
 =?us-ascii?Q?gsnYwe04d/irNLi1pS4ZjvPFiq8Yi3I8wgQcL6J88KH50QVaBTqun8nWNap8?=
 =?us-ascii?Q?lbfE8xKVXGacQ+nZTRxw6MavMMDLr8TJqxV/mycvgBCr3jJRoaU0nn603TDJ?=
 =?us-ascii?Q?e8Ldgu4HFQYduv3G+rll14P8slJxXkArbx1Uw2rh73AhM8udQYKqx+SPD5ke?=
 =?us-ascii?Q?JCO1ayJAjOjJ3lmQhobDZjni+RIUoN6834PFqSrlccqd01OKanGo05LfF1XW?=
 =?us-ascii?Q?pgm+/iaBxn+X+6xcttndppXdNsVm3JPmxa0ciKR3ZvRu75uCioJkpEyaINaT?=
 =?us-ascii?Q?T/l88gQ1INoSrjph9R4X5KNFQVfAFfjEHpOxsuUtYn8GNv7iem7CMZzom7Ld?=
 =?us-ascii?Q?TcyEd1kkOQT3Of9QDo8n8ZGv7DBacz+wcjK8bKX1A/Zf7hIZM3khoGn71u4P?=
 =?us-ascii?Q?HEfcSWN8M5aN6mZfQWTQHDdHlGJUH7SmWydSyrSZKTo3l502YF6bviJD85mj?=
 =?us-ascii?Q?3Fkqh652k1YW2AgqYAyZWjeYHhiX0ApNME/Y4WaINQmAs7t8j219XYmmDCF3?=
 =?us-ascii?Q?tT+MUyF9NxpLwohZofboOCIA/YYEbYHwhwAaE1jFzZrP2R/rKv3yUfau3nya?=
 =?us-ascii?Q?RC++6H3dbGDMQbqKYR1PBZR6Dvw0pd//nCtutwdREMqnYX8W9LxY6F971ue9?=
 =?us-ascii?Q?m/qvFSFNownknSMjJfRGfI1XPW22mOVuBrm9raeJsT3HzhJFOw7JJ4hb4wIu?=
 =?us-ascii?Q?McjWK2s1wUrEYadmrDGaIqdffgHQsVYECmccUaVyYgFdlOtQQAElLnT61hsD?=
 =?us-ascii?Q?ps1GeDVAf8UflqhAKeFcrpq62Ef0K0vrg4lm02sO+fCbxNIA5T1rxxh/5wSx?=
 =?us-ascii?Q?MSYhw7rmh1Q2Y039mN0Ln0+AjasFR5s9C4HmahVg086qkVnfhK3VEJhtMouP?=
 =?us-ascii?Q?bJjWKqtYCkL01iIhtu8maNpogLaUuXbeqCMbDwqSQ4Cop4NUU9IdwRY5uzyH?=
 =?us-ascii?Q?KV8vqLFm7PtIHmxerQWFhlfZY/gWbT/eqwy4pVmQ1GQHvfIcm4UvfvDS+G3b?=
 =?us-ascii?Q?9sKPT/TOef1ypVwE0a8GCrne9x0zDUCXmzp3d4nKoh7JDk6mx78dh/CwkIEs?=
 =?us-ascii?Q?4xtU7isSEJ7cOcX1IOXohjDh?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1191c6f-3b0b-4577-7ff7-08d8fdd84c7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2021 17:27:51.0435 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fPJ4OpIGmA9RXCRSYzOS8Hu5pD95VYgt+W4PcAXroerhQLqVUcEcp6619ZQk6+Kb69L/jaCIBpOMSxj2B9EAIkUcOvXX3fgBvBcZxVmy2WE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4746
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S58 03/13] ice: manage interrupts
 during poll exit
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
> Sent: Wednesday, March 31, 2021 2:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S58 03/13] ice: manage interrupts during
> poll exit
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> The driver would occasionally miss that there were outstanding descriptors
> to clean when exiting busy/napi poll. This issue has been in the code since
> the introduction of the ice driver.
> 
> Attempt to "catch" any remaining work by triggering a software interrupt
> when exiting napi poll or busy-poll. This will not cause extra interrupts in the
> case of normal execution.
> 
> This issue was found when running sfnt-pingpong, with busy poll enabled,
> and typically with larger I/O sizes like > 8192, the program would occasionally
> report > 1 second maximums to complete a ping pong.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_hw_autogen.h |  1 +
>  drivers/net/ethernet/intel/ice/ice_txrx.c       | 13 ++++++++++++-
>  2 files changed, 13 insertions(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
