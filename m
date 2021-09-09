Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88286404424
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 06:01:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B13983E59;
	Thu,  9 Sep 2021 04:01:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hRsngNEetYYF; Thu,  9 Sep 2021 04:01:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC97183E58;
	Thu,  9 Sep 2021 04:01:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7BE4B1BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 04:01:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6726161418
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 04:01:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sajtKdN9cP9x for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Sep 2021 04:01:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C31661400
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 04:01:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="200869673"
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="200869673"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 21:01:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,279,1624345200"; d="scan'208";a="513545976"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga001.jf.intel.com with ESMTP; 08 Sep 2021 21:01:00 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 8 Sep 2021 21:00:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 8 Sep 2021 21:00:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 8 Sep 2021 21:00:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A3c5ayhOPuRJ7ZTixlL3ghotMdxhd8e2vuV7d4G9GHFALv2Mqo1n+w2RhEhea3ft8kahWA937r3iwJNjmAj+qcUu8H+Qk4IIN9/fXC+2XgL+kkehh6XVOGZDt9EolAI8gfcjUvM0Sm/yFaf5gdAos4JETMWjei2nJ8+MU+Bjku8cpBmUlODWt4gxOkgQ+xTXb5htraBa7SWRjj+5v9sgisZyuZUoiXF5J1c/xeH73qObBJhC0nghzM6qii6cWSsek7Pc2uqr3u7y7KAz4BxGxXOLlbNFLQCIfKu2gQghrdAGtXwPrXlVXUYB0guGporAcPAlM8aTmTeyAwKyBfNi/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=TjrpSjPHKfBH+L0V0TON4HbD47mllJcEJ6zIj0SQJPQ=;
 b=RqI7j1AM3auR/KeRyD+Al3lZ5hOvp7MVmPho8LGEqT5ZqsT/zqasxgLrQLDJycMVrQSmlt1Yjxm6tbefW+eHKd4I9AVxscImZrmbFJE6UZ+udgqM2CohHaascHDGb6yqfC0yarw0j0bpLnpukRt4Ui0hfafqZpRefplAojztSJNZyMhHCuaRuhae04oEit+DeD5wYKAhytQNHv+Cmyh+/evkodSLPYxv5isAYER/ZQ1WKcyTUZUazwA5jgZ1Li+XGt0DSRngPSttJhWxq2EMLjIVmhMuG1tZpJ4OQZNns9fpYARmop5gsg9xRjbv1XqMWW2+/XgkeL0NJnrxFfrYqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TjrpSjPHKfBH+L0V0TON4HbD47mllJcEJ6zIj0SQJPQ=;
 b=V6EdODiXyIB8+YlUGRDfw2bxvs1GjbyV41viR5IfTOpEjgRN4CxIZTbSzx3CGJ1RPktzVVe0GYovH93A9yTC8nsKgsFwV9VlfGJ/1bYi9L31DVSnoL0X6mWvXphjPY2Y+n2689eIufSdt4sDlGyinphpviypEf8LmE+B/NvegXI=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3159.namprd11.prod.outlook.com (2603:10b6:a03:78::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.25; Thu, 9 Sep
 2021 04:00:58 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739%7]) with mapi id 15.20.4500.016; Thu, 9 Sep 2021
 04:00:58 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 net-next 3/7] ice: Add DSCP support
Thread-Index: AQHXiwc2dcBO/cyiO0WjLUK7n9EZG6uYyb4ggAJ+W3A=
Date: Thu, 9 Sep 2021 04:00:58 +0000
Message-ID: <BYAPR11MB3367F71732104C5496AFFD66FCD59@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210806205356.18517-1-anthony.l.nguyen@intel.com>
 <BYAPR11MB3367187CE2A153676BE1544CFCD39@BYAPR11MB3367.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3367187CE2A153676BE1544CFCD39@BYAPR11MB3367.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 8d50de73-0f68-4395-9442-08d973466e3e
x-ms-traffictypediagnostic: BYAPR11MB3159:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB31594F192BA89AD990A5E72AFCD59@BYAPR11MB3159.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JnBhAoSpV9PyWS7ypKd2zEEf8HC7nND4aINiSVensdhl7CafUJE8o6KLpz7t3ourI2UQj25geErK+Bnjaz4mYlFPDkfHwhIA+zMnX6dJ/XM6koqTPqxHq52SaF2Z7X8gwMmUsWAJBN741xSfvHNgtb/fp39FpS4Y0rYgZsTOhkNj672djgT2h/oEOvx9uP1fsW6e9ceUKSnbtoEUk2hgFqBDKuB8/gda2wOmohvLUa9g8nQQlPQNz9t1UynGX5v33xFCutqmjgydddCc+5kRolo2bOCtb7Vcg7pqFrvBkESBn+/fO8k64iAFOKyGuD+SH59/GUh9wXUXBMNmyBRXhU+pf/RVPISLlf5ee9VE0KOmkP/C2SEk6Kgs0AAu12+ZOplmfU9fT6egj77ax4EmQU5zlk/w4MjvpntDjnRc9uCXU1LxdrzdnsjZBn6CGhJUMMiC4WVI0tqpUMeNLp5qsfTsz6sN01g30bbhuXx7YRUEs4P8KFgRsP3IoK+CEQioUl/BGboLFEgfJB34G47PyA9nn012cqdtz1Z2RWDIIyuRt+7sBExkKJiZeaVBtZfNfRxdu84c+QLYi8bCQSMNvW/FrHlfHVEY5OQH/SSWJ7izOKr+pboS+rQCvToBu7+x5WGCn1jf4hmy5pXTb02k3tDNe/61CAAVemfni7rMtvb+z+6M/ilAqe3n8ZjfFF6STTWvoIMOwrXWVBzac2yomA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(396003)(376002)(136003)(346002)(8676002)(33656002)(64756008)(66556008)(26005)(66446008)(66476007)(66946007)(186003)(122000001)(38100700002)(76116006)(5660300002)(8936002)(478600001)(52536014)(53546011)(38070700005)(7696005)(9686003)(110136005)(316002)(83380400001)(71200400001)(6506007)(55016002)(2906002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nVLAJr6g+5xXB/DQiN6glbQqpzCOWIycv/LyPiosmNTr358BhXEFAMWZXYLe?=
 =?us-ascii?Q?L+zAP22FQiuAI2OczWFGIkM8eKeCyAVekcP1cAWlqjjj8pzvECWmti5YmDnC?=
 =?us-ascii?Q?63cQU2sGMcf/n2ezu/UbgDyZ3NAMrvpm+Ju1RWGWykIv8DSsYg7UtZbFcEeW?=
 =?us-ascii?Q?1ksbBcwm3f+mGPN0c3FjLr3clKNdSfHse0bCCZVx1Z4GygDIq4BBmAOa7lud?=
 =?us-ascii?Q?vxt2vKE9sWF7LgFuTkfMVAKgw4kd8TS4NjlLyUVv3C0sG8UK8mfnVdOuWmTV?=
 =?us-ascii?Q?Ycrw3b+HpHCL/HlTz7/BjI9jBXeqHF5z42F2aVyA6CVnEzT+NlZsAnIxnvtH?=
 =?us-ascii?Q?YaPx2xUgcf4kzWKC3lpvWgsPXNW8tU/fBKVy4hF6EHfBzzs6IXaNlb2K2sIc?=
 =?us-ascii?Q?BnAakWRElt0YZacd4imdAWTY0cZeeo1SOxHhnlQpwmAFRct9UaI6lF9feiQ4?=
 =?us-ascii?Q?Pd+rEIwzNIHe91U+picxocN6MhhXgUU2IRZaGcdNumHkF5z/i/6rs1cRBTbC?=
 =?us-ascii?Q?FCdKFfRtHZnWru6TBDQSBwCgB9MhkaDkEUbrhIxsZ/YcYAUiSS5uBBzMucKO?=
 =?us-ascii?Q?/mTJMet3dMznebOo5ZH98GCE1T2HMHp76xhpeVX7QJuT/708qUN333XiK4Rf?=
 =?us-ascii?Q?Um9pdkEkiB+WF4ZR5tQygDv27nWHs5MM/vqfbtdyTbVli3/3a9BqEeiLy3jD?=
 =?us-ascii?Q?NjqTJx7QwWVTfcQb8hGQukG8cYHeIusKkkDvTQ4eziWleDNG5n2YK6qxc2NT?=
 =?us-ascii?Q?yZlY7DrPJ7zhQ8oCKeye+qAzR7FHxKOAE5N3QtmJl0bGgZr6nx/5jSUnI5fM?=
 =?us-ascii?Q?iqddcbJ7QQTfHgXKSZJd3auG34kytq9aj2Q0yQ1xIavTwSIlwBJr1O26ZBJS?=
 =?us-ascii?Q?ZowTJbGncpqQvrELok6GCPFceeSkxXrbq+oy5kjV0NKLlcA+QbdJHmZXoSyl?=
 =?us-ascii?Q?MyOFtcjhAIKCLLVKcUOn+qvq6ArUI1XOUfoJGhxJUF2OahhG+7elOwz0pt2M?=
 =?us-ascii?Q?H+vG88NIZa6qfOs9PcAvcDIXFACSAiUqJhqkVGLZe4P+xsfLDQoPUF9ZWELl?=
 =?us-ascii?Q?/gs0zvLQnhBv6Cy9CZ/rqgQ6IuiAVmcKU+H4UwEzA3m42XAVDjxu274kTdGR?=
 =?us-ascii?Q?m0ch0L35Ne7TthlarExWB6nZ1jMJfu0H4QaLZWjelAPcShFoGxI3cSNRaQ9+?=
 =?us-ascii?Q?OqITdAsLrZPq2QtLMaepq9VRra4MDJSE7YBhGIFHNMjVB6HibGhiwMw0jU8O?=
 =?us-ascii?Q?+JIM4zrlQgElFsGGbvIIHbGj7tAIkBnesSYEuWnBelB/Ea+dEVPoKFRIUsEw?=
 =?us-ascii?Q?fPz7cMITnvavfxtGa9OPT7SM?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d50de73-0f68-4395-9442-08d973466e3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2021 04:00:58.3236 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8T+P9AElySqe71baIO4f9jCgRLgOQtPTIu6wx4faV3IWY8p5Fr8/jyi8aBHKwPJwcDbOfRkosvKLXmSCgAgVDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3159
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 3/7] ice: Add DSCP support
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Tony Nguyen
> Sent: Saturday, August 7, 2021 2:24 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2 net-next 3/7] ice: Add DSCP
> support
>
> From: Dave Ertman <david.m.ertman@intel.com>
>
> Implement the code to handle submission of APP TLV's containing DSCP
> to TC mapping.
>
> The first such mapping received on an interface will cause that PF to
> switch to
> L3 DSCP QoS mode, apply the default config for that mode, and apply
> the received mapping.
>
> Only one such mapping will be allowed per DSCP value, and when the
> last DSCP mapping is deleted, the PF will switch back into L2 VLAN QoS
> mode, applying the appropriate default QoS settings.
>
> L3 DSCP QoS mode will only be allowed in SW DCBx mode, in other words,
> when the FW LLDP engine is disabled.  Commands that break this mutual
> exclusivity will be blocked.
>
> Co-developed-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v2:
> - Add implementation for ndo_select_queue to remap the priority to
> match the DSCP2UP data
> - Adjust ice_get_pfc_mode() to return 0 instead of -EOPNOTSUPP when
> CONFIG_DCB is not defined
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  18 ++
>  drivers/net/ethernet/intel/ice/ice_dcb.c      | 225 ++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_dcb.h      |  19 ++
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   7 +-
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |  12 +
>  drivers/net/ethernet/intel/ice/ice_dcb_nl.c   | 188 ++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |   7 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |   1 +
>  drivers/net/ethernet/intel/ice/ice_txrx.c     |  34 +++
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |   3 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |  10 +-
>  11 files changed, 468 insertions(+), 56 deletions(-)
>

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker> at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
