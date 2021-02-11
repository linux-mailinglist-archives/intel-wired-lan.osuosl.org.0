Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB05F3182D3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Feb 2021 01:59:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A9DB87544;
	Thu, 11 Feb 2021 00:59:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aHxoaFDqLQzW; Thu, 11 Feb 2021 00:59:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 78DDF87542;
	Thu, 11 Feb 2021 00:59:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D52A1BF20F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 00:59:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 659DC8753E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 00:59:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id baVrrq1lh0aH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Feb 2021 00:59:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6FE2C8753C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 00:59:22 +0000 (UTC)
IronPort-SDR: oQCcphyyi0ynJUmmmYBkcDFT6ujlkMCz7O9o/iBBEM4lGiDnBGlZSzcVIdYOiILrGcYy156yKJ
 b9zvPRiMqYzA==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="246242841"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="246242841"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 16:59:21 -0800
IronPort-SDR: XXEPYMy6u5XzPsYw/SPXQ+tsUDTyGowpeZ+Pj9Zr4F1gkSeLhEHhBP7II2zdNEQPyylflWPR1M
 xx9y6hQfGfBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="397027157"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 10 Feb 2021 16:59:21 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Feb 2021 16:59:20 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Feb 2021 16:59:20 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 10 Feb 2021 16:59:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O/X38D3Fc+3wO1zUxIltB3wPqONqXU+E0aFiueW2FskT772/iMDmvFaAMrZyNnVntJFTej5pOX5o+9V5vEO1cDxTxnTqJF49xroVgBlrygoHBwV9vlp0hkAqCrQEZvw7RPfGSfI03VDv6X+I6D1qUjFhx2f1ZSPKtAynAryeU5mgAcprlgODhWQ9v2Y0w0CZGfDkUQQLSDr2ilqVWfmnU8yUAtpylxe/oWDGOJbs+/okV2rM1Mk0IYVifZ7D4fkB1K2NnyvZF+gXmKxS95svush46+kvUtcSvmaTvwMvWa7n4cF9luKcV/Zp/bf2CBzQhMfSEZnrzXBV0U0QLsdouA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QY0bTayfKoAm2IyaiPGiasWOEpDseC65eeQo2FhxYLM=;
 b=YBdOlpOQXY/Q0fHmgD0UP/zer0pPSavr/tXuUZzBHaWy3uk6+qS5RuwZTi94oKOtvs2r9hX+5F4w0oaVsYpfsgS9WNRyYnnTymTfvYyGVYsrOEx4oOl1Y1J+qOcGul8ZHjsaFK9mN0uweAy9UyylK/LkTJV0Z6S41HYAsHj0WN3KENk7z5yrAOwCrwqwA97KLNb3DHK6MPIK+7/mwH284eb1RTrhIODB4gCM4XEcC4BCJdG3X5pjsbG+X14tHHbodEO15lIXKZMeDgvTXZ456OhXEzx3CUBjk6T4Cf0zQ2DY9WGB05fnKYZDwQTCSwnIJtUPbPCZBynv7m0Fat64Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QY0bTayfKoAm2IyaiPGiasWOEpDseC65eeQo2FhxYLM=;
 b=B5wSHZd+H9rozZU/jLllnOL7iKFC02r9KEUY4YVeGsEW2rqaTxrGbfjbY3W8QIKzTtum4sOOBzt+8pWY9FEBIArZo1rbqkZlPaQ1y1qdheokcxiggnHQ5Nzku7r1kIEmdAf/eTr3PavDLPNC/Q0BZw6fEyRXqvz5MTQCCaxAZTE=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR1101MB2207.namprd11.prod.outlook.com (2603:10b6:301:58::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.28; Thu, 11 Feb
 2021 00:59:19 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3846.027; Thu, 11 Feb 2021
 00:59:19 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix endianness conversions
Thread-Index: AQHW+5va4vpqbN3NhEGazzLcXse5I6pSKi/A
Date: Thu, 11 Feb 2021 00:59:19 +0000
Message-ID: <CO1PR11MB5105CCB57B069F3ADD9140D1FA8C9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210205084852.28545-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210205084852.28545-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.212]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f7b5be1c-a5b9-4b6f-466c-08d8ce284336
x-ms-traffictypediagnostic: MWHPR1101MB2207:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2207676158FA9FDFA1E2893EFA8C9@MWHPR1101MB2207.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:101;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IFzfzXowCeVBI48a3Zc0d9ZGVEYFWi37hnAQp7jfN93cZVqxmByOvnbAL0UftmeUpPBVfn1DjK33v/6QnR5WP/RxkGN6mSZo/XJk/IAKGe+9poS++hXELUVZUcXmotio3aThsfZBvJwBve8TJS91cixI/irtGAUx5xqYPClr4seU5XjTHx7VwEWCQlZx8cIsBh4FOHZI0f6gVuZ4LOelJzf/+GYiOisJb51gr2wC57glZVsNRfAHBNtO8Vmv7gGBPqRsoiea3KKuzWvphZI4k2oz3pqtis4Cbx+sPHaBrYnTpNhSPeQlfggN5f04eZbeAZwmAq6CbJsfOXspjVd+C8fIeVaIBWI6Gr/5EA021T2Gh3yTvuK7FH7T7Zc0S5Jr0E8LtVjvNEPPlKNA+7x5Zs1NIXoTmFJD7ir1BvZyW42of2i1dUFCgmZeSd6ChH8P+PPiwJfISYYmRZDcT27AcQLLqJqwMqjSRQOwoVnG+bKnLZwbcM2WtrHArM0TjXxm4L1asHHUTIFRmXZfWUZfrQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(396003)(366004)(136003)(346002)(376002)(83380400001)(4326008)(478600001)(9686003)(33656002)(7696005)(8936002)(107886003)(66946007)(5660300002)(52536014)(66446008)(316002)(64756008)(71200400001)(2906002)(86362001)(66476007)(8676002)(66556008)(53546011)(6506007)(55016002)(186003)(26005)(110136005)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?n31x4DWboy7azosk7Ph+8MgcRClhlKyzsz8szZpKAGWLGeUkGhSNTs/tAdQi?=
 =?us-ascii?Q?FKZKkJLFwzzlkSQUiAPskcc8U2L6X9+bn324TsqDNtfhadIYufrS0AY9RaLk?=
 =?us-ascii?Q?sD0hFsGBE9Rl76IJSEDyAnkHypZejoSInpHjIpjoNymWiMlKgy9+jLe9rUCj?=
 =?us-ascii?Q?C5pM26nospyRRJcrp9x967bvSAdblggb+PyZlchkh4s/PwqMOs0O9ba5nSc1?=
 =?us-ascii?Q?ep/9QJWbtg0bN3z9XxxQBMq/w9bAbfwZgp8K20dFphkW9PexU8rTNWY0tc+D?=
 =?us-ascii?Q?LtWh4JkjI4NqWPStKMgNfaQp7JUHYSSQgL5OXNrmxUuWrZ0ArjD1ZvjY0QH0?=
 =?us-ascii?Q?5+oftCHtWUtpifGAesIFRDIXWfQDRg11I6ai8xiAmlWapoh3MeFD+zX7nNkg?=
 =?us-ascii?Q?BVyLY5iJcC2158zkqxzcgRE7XY/cJKYCA4r3E+xKAvt5NKdQkRiZmHgkAd1T?=
 =?us-ascii?Q?Pa9qWtalvflMNH+uCXWIkVEJXj6ytuE779eirm08Vevj1ROkHKU+S2v31+5j?=
 =?us-ascii?Q?hk3Ff/VjQCyysZ6ra1JdjzFqLQzsy6Y1XabNl03PlqNJoYwx2tQCRRWkuIVO?=
 =?us-ascii?Q?lcEaTjQXBBYLbWkO2mX1u6V8ncgXI2V+YK0gq813x71YKvFdHHclV6cI1v/N?=
 =?us-ascii?Q?7wre7h5cGgJI7LOO6MwPlwn7NIjL2LecTnqJUDGcB772zqGxI3cHLXQFSv01?=
 =?us-ascii?Q?rgTxrHY/HxlIqEcrvxrKKMFDRa8ore0L5bRP3knSB6pqB5FrDpLg+Tc2nt0J?=
 =?us-ascii?Q?jCyUCekTnbk5BR7YZTPNYdDHcKcXhp9GsqZEayNZSlPl7OmHHzqXJMwBzapo?=
 =?us-ascii?Q?0KURwtsCo8XmGofeBq3YKPx4zgyFALAnPASObyb5mI7jqCTupUJT3Q1fnKuV?=
 =?us-ascii?Q?WJw5M/9+cOnEcwUHnAg8VgjOOqbVgyawJ2pItamp65EnJumHuB4IU30o/Ym0?=
 =?us-ascii?Q?KoROXoRy9/yRcKbVpg+VAfyBb+eN1orMd3u19Krn1sjwnk74+5zSHEfILrkb?=
 =?us-ascii?Q?6XfpV3/52DJKyL8bi3Y6PqL/W6Yae/v5d74JILv2ODxXLshng4iAh+3sJZQt?=
 =?us-ascii?Q?JRW/8nYT7eDJmGWSwNtKjryhpKFEJZ0Kt7ViiOWJWsau4M3+EB5UjonavbTX?=
 =?us-ascii?Q?zECvkO8pUdSwfVh9kKnILX9CSqtNxrFcxDDVrmo8JEzEKuco+HUnV7KIANI9?=
 =?us-ascii?Q?yMtv5bKWvero/alk0KF1J8uNeUSxZPKffeHQAhz+UBC3NNCdFm7qIEqujPR8?=
 =?us-ascii?Q?5/hkdcdAShr+qDRsdAUGAGqsboDUJMQyV4ZfQeJ9n6k9emBwCGEX/Oksrg2n?=
 =?us-ascii?Q?rw/PBuQyw+iqRFhYB00VKFlj?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7b5be1c-a5b9-4b6f-466c-08d8ce284336
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2021 00:59:19.3055 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rp/AiZ3AJonsx/vBX3Yp8Qf+OjUWGOS+p1HhCfZvWJ93A9empZ74fsMNGKTfNMOZjiYZnuxWnxVfgGQdkMNyNgfqurJY2YzURfMzZeQH5vw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2207
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix endianness
 conversions
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
Cc: "Ciosek, NorbertX" <norbertx.ciosek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Mateusz Palczewski
Sent: Friday, February 5, 2021 12:49 AM
To: intel-wired-lan@lists.osuosl.org
Cc: Ciosek, NorbertX <norbertx.ciosek@intel.com>
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix endianness conversions

From: Norbert Ciosek <norbertx.ciosek@intel.com>

Fixes the following sparse warnings:
i40e_main.c:5953:32: warning: cast from restricted __le16
i40e_main.c:8008:29: warning: incorrect type in assignment (different base types)
i40e_main.c:8008:29:    expected unsigned int [assigned] [usertype] ipa
i40e_main.c:8008:29:    got restricted __le32 [usertype]
i40e_main.c:8008:29: warning: incorrect type in assignment (different base types)
i40e_main.c:8008:29:    expected unsigned int [assigned] [usertype] ipa
i40e_main.c:8008:29:    got restricted __le32 [usertype]
i40e_txrx.c:1950:59: warning: incorrect type in initializer (different base types)
i40e_txrx.c:1950:59:    expected unsigned short [usertype] vlan_tag
i40e_txrx.c:1950:59:    got restricted __le16 [usertype] l2tag1
i40e_txrx.c:1953:40: warning: cast to restricted __le16
i40e_xsk.c:448:38: warning: invalid assignment: |=
i40e_xsk.c:448:38:    left side has type restricted __le64
i40e_xsk.c:448:38:    right side has type int

Fixes: 2f4b411a3d67 ("i40e: Enable cloud filters via tc-flower")
Fixes: 2a508c64ad27 ("i40e: fix VLAN.TCI == 0 RX HW offload")
Fixes: 3106c580fb7c ("i40e: Use batched xsk Tx interfaces to increase performance")
Fixes: 8f88b3034db3 ("i40e: Add infrastructure for queue channel support")
Signed-off-by: Norbert Ciosek <norbertx.ciosek@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 12 ++++++------  drivers/net/ethernet/intel/i40e/i40e_txrx.c |  2 +-  drivers/net/ethernet/intel/i40e/i40e_xsk.c  |  2 +-
 3 files changed, 8 insertions(+), 8 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
