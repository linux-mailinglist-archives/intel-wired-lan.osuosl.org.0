Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C593331F9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Mar 2021 00:43:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 228A64EBAC;
	Tue,  9 Mar 2021 23:43:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iojVF17q8Ta3; Tue,  9 Mar 2021 23:43:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1D094E99F;
	Tue,  9 Mar 2021 23:43:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 379441BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 23:43:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 24EC94E99F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 23:43:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5D2hTO7A39Ec for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Mar 2021 23:43:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB1FE4E818
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 23:43:02 +0000 (UTC)
IronPort-SDR: Ox90i+3mRrTqQuzuOyEygqojhwo5qr5hktId4rmH6nQmKsNoNKTS9oFZdXgZMxDVWFBYgE7rY1
 vsxPIixJtFEA==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="188386810"
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="188386810"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 15:43:00 -0800
IronPort-SDR: ml0eQZCAMP8bQ+BZ/le5QtjxKBDqctQCBekm0BWUYcmZNfsI54dQTKp6QH2hQW/DRJJEB/zAss
 YVvhnFgXpO4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="599537857"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 09 Mar 2021 15:43:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 9 Mar 2021 15:42:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 9 Mar 2021 15:42:59 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 9 Mar 2021 15:42:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XqjY4Hb9mFnYeCCKkMba2Jr8vXq6u22x+U8WXA6qo1PXsqcq49S2ehGodFoSsuRlv7nFLTNLozGItGeXNxo2HrObnFvq7dOH2lGGYmdtg7RgUIbxMBc/+NAHNZmWYbuvDfBGeTTvxnQCH2Qtnvx1GipdbpbObuFvlEO0hq85HVZo+nzP6lmU3zVN9b6ciOwXhJN/kGFeic9cw0T6x4sC3Ncq5P3cm9sMOof3ObeZgy807ocrXX+aUc1ajrYje7dd8syeDUlYpuZ4uxikikA/GoNUROHWVgh7T1IBZNmKZqxVdMQBYfu5N3uezmJOsRCuv1H7MajFDSEjLh03pwmsjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MJYYhi3NpL8KjIk6uF6GkDSH/7Vi7N8CD27NfL3NmCg=;
 b=eL1pCp8Kn6oVNoCLBSwm+8FFS+Lc95CnLtbhq4sLqfUa1h1kkxQ20dWF/lS1ggfjKbxQ3m7qXIW+y1ieLvMF9TepAnRZmIDWf8/vbF4xO6V5uxYpgyfRjjX/wqtTXK3Z6a1WjaOZ25KjuDABfwvP/oK84zeOcX2w/aPOQUyZr9u1u+uQOa6N60gt3NCZjhJS9NVnz1hJF4hJFum9i1GTO2184EC62E6yUh9cHEsVtS7haieq3XQf8/C0U3UE+Do/KJsDbPGWBQlyeIlGiT/TQXjiqTW1+eFLPHqCiSkec4pjYy9Wp4TW30WlkqYIfIsVrARX8ubsjEogUpoxoe7lKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MJYYhi3NpL8KjIk6uF6GkDSH/7Vi7N8CD27NfL3NmCg=;
 b=Q6BRrgaJW8TRhZhEclP9gC6ez3SIUb/5CQ4ZqTD8cxLIL1iAiqbmyTBPyhB04sMcOCeO82LIL4Im9jzlLj1G2WPBgFnJhfEzGP6OdZ4N/7mkvMNgGActgkDodyZHqEcfRNe6DT/AdVteOGxxMir5Nzft53Sgl6aAaazE0hGk4Fg=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB0016.namprd11.prod.outlook.com (2603:10b6:301:63::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.31; Tue, 9 Mar
 2021 23:42:57 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Tue, 9 Mar 2021
 23:42:57 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 1/3] ice: report hash type
 such as L2/L3/L4
Thread-Index: AQHXCj5LsFNAGRkK/EKP1IqjbhZUYap8ZrJw
Date: Tue, 9 Mar 2021 23:42:57 +0000
Message-ID: <CO1PR11MB5105FC921482051B3485413EFA929@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210223234707.1170711-1-jesse.brandeburg@intel.com>
 <20210223234707.1170711-2-jesse.brandeburg@intel.com>
In-Reply-To: <20210223234707.1170711-2-jesse.brandeburg@intel.com>
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
x-ms-office365-filtering-correlation-id: a946f2a7-1e6a-4a2c-4d72-08d8e3551183
x-ms-traffictypediagnostic: MWHPR11MB0016:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB001678831FEAA47FFB1A86BAFA929@MWHPR11MB0016.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HyZSf2w4002TmpHhpwEnRZtnOjDy7lV3uOXhtxJc+3p0G9f6a2rrGKnAaSNl6ychfwsF2UzNbFLPMWfggYKNuZTmJoUZAwvsSW4NtEYDcDwgDjlPhMj9oRpmH3/HCLyNtqMMGXj3/BZeRBagcPIuSjjKj1KRs8tlKv4ilfwnD8OBczvWrhyFNgw34K9hHeVL6+X5AKcu9hAoVeJwFBk/j0nDrulz460phZql6nQ30qSjbYz/aejOUvb0AdERTrKGcCsJH0aOgJqgcKwMrNQC26VFgnqHlcZoi3MlOp27m0RKXNoDGh1cvq4LBD1gR1xPbLfQ4zXnHDnqvcvaOGcd7n1rfRtRJ6PE+aD8zN5JUxl/tu+ASMzV/JuGJOdN+fzHzeCo2zDRPEYZ6PL04QsM9BvF8ba5Zisx1Fw3RtxYZakedMN2JZlowZDOUIaCY0STrHHU7KeHmaLsXjRaesgLZJpCRZ+BnVHJ0wW2d7/F5Zhqwu5pv3/XyXS+QbibYiAlGurdVQDC4L2i5RCliMG3mA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(39860400002)(136003)(396003)(376002)(366004)(64756008)(8676002)(316002)(186003)(66556008)(26005)(86362001)(52536014)(6506007)(53546011)(55016002)(71200400001)(5660300002)(33656002)(83380400001)(8936002)(76116006)(66446008)(66946007)(9686003)(478600001)(66476007)(110136005)(7696005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?pQa222EsjGDSlXRM1TnVY6UBYV+w9TMaTiJh7We1emEDyDEPW6zz38ZLavbT?=
 =?us-ascii?Q?MJaYcBhtYWafsEPrurD/cDl6TaoMNN5jdWLXyaGKSMz2eI1H8INeCw/ltGhb?=
 =?us-ascii?Q?NLXiR4HjCijBucX17HewELTEDfKa/V4mOuAWtr+0ENO7Pk+4IwccPh89CxPk?=
 =?us-ascii?Q?sjkazR4FaxOTvnQKRUD+2dwZTUaKWzdFhEUbsBXEOk1htsKLC01v6QBnnSCl?=
 =?us-ascii?Q?dGS0DTA7CIUVhjOFsjioig3NBXpwqcpWoRS2tPlT0br1RH+SlfxLAeEcg4Tj?=
 =?us-ascii?Q?V9H7l7kRc7tHOXjjw3zN41ro0PNDGC4m67hsiqI+E9DVkS2idZ7/YPtgH6vc?=
 =?us-ascii?Q?sNshWkETFpoKXp0YtoDtukt1j7hNZJofTSqljbicT3YwE3Ea4VXVbgAxvpXB?=
 =?us-ascii?Q?OVbCAh2OVlxwydi6XyHUSVr89mvUJija4ba9y0qrQ2Ac3ulbDNaLguQ4lavV?=
 =?us-ascii?Q?CmkK/7bpt9Ecje5/nHFCUmhbakTtoWTTV97cGOm+P2UJI9eXuorJgsdyGUqO?=
 =?us-ascii?Q?RE4yzBdJWxlkoE1kFx0JYRqnTgloQVOa9oPlE46RmgQrSFdwKFIFvlLEShV1?=
 =?us-ascii?Q?khpPdUucCX1l1V7ldwwg9ZX8WQ5gWaQjJ9VQ7cQ+24noRJxS2kDdPV5doCF+?=
 =?us-ascii?Q?n8Y8zpEWXhu7BBntP1RYZzAPx1FzCd/C5OyrsNSLkEhyAtdptJCw4l+jIiR6?=
 =?us-ascii?Q?gst8x81gyHy8Xm9MNtFL0hzALLo6ksBOM471er2ybuWtGdkIpMrJ68ge0FmT?=
 =?us-ascii?Q?whHSD/Uk0N5UMSwsjPfbhIHBJWBkjofXDeJWOmtG41tecq9ENORQdx2vBFUg?=
 =?us-ascii?Q?4iL/Nq4B108tnGPm5pQbXdNRLZ/iam/CSosSnLWX2cA8Qgtepuaw6mlU0G0b?=
 =?us-ascii?Q?EYJ63WhErUUxFAW7Srz6LWEoACuJFzAZsMq0IjlxWEMN8kzkn07hiVbpD9IR?=
 =?us-ascii?Q?ScDM+13fsj9aiTgd6UbDr50Yat2EW+GtmaV/ae3oUKYZiMyZxYXqgvlpgxAV?=
 =?us-ascii?Q?X5FAzyK8qk4QlGXct/n3d8z4zWqzB5V/Xc50VDnzRb7A05onTrWx7tkmOJ+/?=
 =?us-ascii?Q?i2deUoi8KfAQtYzD1ADBOmQMWREQsRpbPHbTf6IMqKWJnauab8wB47vX+9Ov?=
 =?us-ascii?Q?Lxmb8UQVcZJog7zFx900dbMD1jqktCNbdIhlgQ3xKv1dkjrExRvqkTxtbpsf?=
 =?us-ascii?Q?7rgy7/Thvz6vgAEY6RH0auHUT2tShN0mVXBJn2aYtzZLvSPA6c0r4N4LbggB?=
 =?us-ascii?Q?bQ2hFSBiY2qJn9C26fl5ioPJlBJMwxv8CdOX8U5vKt+hfKnIGgMss3zMfTHQ?=
 =?us-ascii?Q?Bw7I1SkOYshrRL12mryaTF5C?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a946f2a7-1e6a-4a2c-4d72-08d8e3551183
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2021 23:42:57.7821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aREh3edgvOOyb6TrVxGlTzyMyrT18RwPQhPqIQTTmP4CB1m30x6miOxX+WDqlTsvd3VAL+HR+iq6CSq3GDPVxWaacGwLbZAfP2fzKazEKTM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0016
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/3] ice: report hash type
 such as L2/L3/L4
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
> Jesse Brandeburg
> Sent: Tuesday, February 23, 2021 3:47 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v2 1/3] ice: report hash type such
> as L2/L3/L4
> 
> The hardware is reporting the type of the hash used for RSS as a PTYPE field
> in the receive descriptor. Use this value to set the skb packet hash type by
> extending the hash type table to cover all 10-bits of possible values (requiring
> some variables to be changed from u8 to u16), and then use that table to
> convert to one of the possible values in enum pkt_hash_types.
> 
> While we're here, remove the unused ptype struct value, which makes table
> init easier for the zero entries, and use ranged initializer to remove a bunch
> of code (works with gcc and clang).
> 
> Without this change, the kernel will recalculate the hash in software, which
> can consume extra CPU cycles.
> 
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> Co-developed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v2: [IWL] updated the initializer of the ptype table to remove PTYPE
> 
> NOTE: this patch generates an expected checkpatch error due to the tricky
> structure initializer macro.
> ---
>  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 147 ++++--------------
>  drivers/net/ethernet/intel/ice/ice_txrx.c     |   2 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  23 ++-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.h |   2 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c      |   2 +-
>  5 files changed, 50 insertions(+), 126 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
