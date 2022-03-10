Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C68634D43AC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Mar 2022 10:43:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E7F160FBF;
	Thu, 10 Mar 2022 09:43:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6d6Qpa0-R1UJ; Thu, 10 Mar 2022 09:43:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40100605B7;
	Thu, 10 Mar 2022 09:43:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0DE291BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 09:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DEDCC408D9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 09:43:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SFaa94jvrxty for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Mar 2022 09:43:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 68CA7400C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 09:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646905417; x=1678441417;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SwcCBGRUBPTXABry4nlhEesZsnEXXXhYbfVk81xsk7M=;
 b=QY4qr3H2adI5wwEk2PYkkHZaIYd3PYf9mJZUGkwJl9XmCB9K2OwjeIES
 yNH0kD23izWKdo2LJVlpKwSRp0zJIPYc3JT6MuGWo5Aze7umksr4kijhr
 HFGkrs8wle1ZOCPiNXgIg9MVyR3Q8+2aHd5SdP819cYu7XMtluFIF/M28
 3nNzs14zYOIN41CrBinhiZxujuOdN/oEN2RBJKCfCBoZ4Jz3dC4bx+7Rk
 RY+m6wy+u0LS7MHMrb+yT1URunKIv/WB+UJVm5xvxOmdFtllK1lx4yVlJ
 Wt7/JM7zl2Qf6aluXB31y6CKkOj9BQk1kRuc4X2h99PSJk60/uGaocaP+ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="255397336"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="255397336"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:43:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="815637452"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 10 Mar 2022 01:43:36 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 10 Mar 2022 01:43:35 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 10 Mar 2022 01:43:35 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 10 Mar 2022 01:43:35 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 10 Mar 2022 01:43:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hAWE9BAwwf9dK7B9X/pikVQvFeUgJ0+U2bX7wHUd+wEL0XYrNWGJXCpDAYK5QTsYp54/ibhrMz58Q9i2VdCMr0eKx/XtDi/JMDOD5sbowTLr0Z0PaYuLCRCduCv+9H5E9U6t+kGIHcHGTbUmPRLiOdUPdFZdDTh653d2tj/TyXDG3IKHgAsXKsjAcB46RLhe63st2tHnGB2GVjrrXBb8k4b872n1dycEF7jIaDTpCtHkXdVJXULle9IEv2Dgkhodl8+crBcumu8oHVoqMA2BfDmoQeO4JOpcVlhGQlq1u1OCcScK8b1WY/aCcsAxjfobI/rY18e7yR3RI0z1CeOu3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i+boTdRjN2J5HaH7Rmza7Q1hJgfQ3kT+Ucr926/cBSU=;
 b=fS7l3lmwStpKZOL4jslga2VMUQlXXGBkXqsCRp9d9Wxe1Xt038xGCsF3RC6TXEE7BmSUUwweF6EDAOblezlFCU0O3rQ3vd8QrueKQr2U4G3lDd/n15ojHFoK5OSR7BMvxGR7zsMbkhPRGKs7/uI/70Surq2CEqrDYptaFgg8EH0du93RoaD1m5O1ahMl1i32MhAsn9y0Mmz4d1UapMbkdKGp03OBrEZlv9KoN2bjgoaBKOlXY7kylCQrILsm5TfWLQ8TeaVnR+aKj7EfKMzkDI1XBuaNvblYzorHnmLyMvSk/DwUYAbsFMQIOZ6HLeF3LqT6OU7d01WsdcOHQY97JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by BN6PR11MB1299.namprd11.prod.outlook.com (2603:10b6:404:49::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.21; Thu, 10 Mar
 2022 09:43:29 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a%6]) with mapi id 15.20.5038.027; Thu, 10 Mar 2022
 09:43:28 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Add support for double
 vlan in switchdev
Thread-Index: AQHYKLeptppGtpPQM0yDZv9gyxK/5Ky4dNqQ
Date: Thu, 10 Mar 2022 09:43:28 +0000
Message-ID: <MW3PR11MB45544E7AF02934C98D7C017F9C0B9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220223003830.25565-1-martyna.szapar-mudlaw@intel.com>
In-Reply-To: <20220223003830.25565-1-martyna.szapar-mudlaw@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 70e04d87-24cb-4d77-d9aa-08da027a6e06
x-ms-traffictypediagnostic: BN6PR11MB1299:EE_
x-microsoft-antispam-prvs: <BN6PR11MB1299A7978B79CEF12BC1966E9C0B9@BN6PR11MB1299.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: anpgWBxjUfe5+BwYy1ommQImJjDaamR8IpvYPbXmPN4oFkKXkdgnURtdP+xcl+lWlIqGwAFOgUDiITWx4kxHU5WIU9YDHgbQ9X09RauX6YKYnrkLbQcOn2XNXa8cFS7jt9N4Ha11Q40WOA28PvPD36JQtmVCgwFk3M3v7ZJpwm6YJSpOVnGtEjTI51bKixE5XGFXhHry3H/1Gi4L9TO9jRCX9kuE7r3CBDFXQT7MR/diTCgtD3UIwFpfvWc4EsDfe6t2gpHGTi7ZEh41sxViMBjyIgn7n/i5bOfpb+EJssHfk5kXQ1Z1G9FE+CFTk688TLSRdxIBulHNkqJ5Yl2fmBppVFZ0ypcGsASWTXMclzCFXxav/3IsNZlbZ8v2dAfUIvaEB5Raor4aIo/QensOmmTTxg13uG6ZAIf5yviaG8I1cOFHdDUl+Gqks4v6eeVQSWGbKikqL0CatAb6NV8NIN3z2b4K4VjRgcaxo8Hf5Po6jjCFGxv1cD6uoPwxwDjsdoQ+huDWSsJ3IfNKvbugB/rH0AaRaqWWqF83jAA3IhZ3LOsBmMIS1eX4PzqtBm8YHRquzZZql4dKExSFG3kGv7QHIQC7bn1L/Ppb16kLwqN5oa/Ojh/ndnVKCxKGxcHQ31stDsuz5PdyJB+3y9tmRSL9ED5CO15T2GJaobSVXXMf+tSdUIWxG66xKq9aLAyvjwwggus8mP/zWS1OT+xxXQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(9686003)(64756008)(54906003)(316002)(110136005)(71200400001)(4744005)(52536014)(8936002)(5660300002)(4326008)(66446008)(66476007)(66556008)(66946007)(8676002)(76116006)(26005)(186003)(107886003)(6506007)(508600001)(2906002)(7696005)(38070700005)(33656002)(55016003)(122000001)(86362001)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xXQBjlwfpPpRyksR8XQflhvd9yhrgZ2ORgpsLNoNfq082teDvmA0iqc785Hv?=
 =?us-ascii?Q?j1DWtNCiaxQhEsNHnep7NNQSX4dgPyJoVi+KBWVFjivqCzN4ViMZPpBB1FxY?=
 =?us-ascii?Q?Hxx8hN7bI5bbAfKyQfMAhhKetCQyM5M5iJuaP5TEgBCnINRydY7YdhEsciwW?=
 =?us-ascii?Q?EcCPFomUNtOahAVyFR0rpGWn7YyXgBSpLFqVUhiFPT6n+YHdk9/Ia5VwSJ3R?=
 =?us-ascii?Q?uFBtMRT3SUvDK/d1nmhkIttlU1wQjao3WkHzUxiV12qGiZYF++KK7gNwoi6D?=
 =?us-ascii?Q?d1KKCF6GScb9M6jB3emLj+hamDjh26v+fy+eeQcQX84hdXA3F3oCLPBfe0k7?=
 =?us-ascii?Q?7v5cWnH9/AudyttVBfUP3+eS9oZMtsLKUh2+Je49gO6GLEv3MFHTR5RyGd3h?=
 =?us-ascii?Q?AmhPNA9RvJuUHTIiE1h+wHrFpAAyT8an+4fqJ14NtjtBtMmAV1q8bdDHPbCy?=
 =?us-ascii?Q?LqcnA0OOyeRtt3Xxd3i18MszwLasWZ1kRizX7WVJa2Tb3u70ihr75r6iFgvO?=
 =?us-ascii?Q?qnMtuHON712SDSHwf8QGPIkgHFTQJnzNL2dQqfo6jq9QUbViGi7Yv0yh/0X0?=
 =?us-ascii?Q?bxtWhnSH+YpHCxhCVOIMFV+fazhnTeSxTQrDqH0Y3Cff26i0sllgZIdLUmQ7?=
 =?us-ascii?Q?wqTAtNMHPM7ee1626nzXfXUXjhYiaBBlfgJJ3Jj6VR9wl8uSw+Y3a9t44HZz?=
 =?us-ascii?Q?1WNPSDpQ6Gp7u9RE17QRx9bTAESHAPm+4zeG1w40EUvjnFSNZx/5ijn7siij?=
 =?us-ascii?Q?8DcjZDK0yfKulWgnpahZ9miOsPEW3cO5vxCwEP8760LX8SFmxuD0gTCxjyyj?=
 =?us-ascii?Q?V5xAwRbGdWHCMgd4x/DsPnX9esis7NUk8vhHikhl+bpDETE55AGig6Wwc3Hx?=
 =?us-ascii?Q?HeCxpRNtqiOPjJOIVpLaV2vH64wjuoGX0+S0SQJDp7yyZntr8UOHsmO8+NGP?=
 =?us-ascii?Q?A2Px5x67PzqTtBsPl2dgtrCqfiCc3Zvclh0E+7f7g0Wcq8KGg7O0KB1geEEY?=
 =?us-ascii?Q?fnco0WzlntXZDhvvmwoyq76WR2xS+W/vDtOkAj3Rd1i6ydkoZFFe3QRZ7jvf?=
 =?us-ascii?Q?+D6pIbWt76yRRfdXa8Sb2GgjmIOy27gyIUCxRmjEoRF0h3K/DDQN+AXsOB0C?=
 =?us-ascii?Q?PyABQi+SU8vbh9kuPtaCbCUwpiPiEbGOxZO4tUdvIbLr3rGNOo/kBcsM0grA?=
 =?us-ascii?Q?HG81S+nkQG6c09etzveKi+KROPu2WtrRDn4QRBJLxa/PTpAlYVDqcnLa3Jxr?=
 =?us-ascii?Q?m7s2mhyagd4iHhi+Snye/s95iyKQROyjycIZKzvULQsYisjUxybImzuXZIeJ?=
 =?us-ascii?Q?I0THH2FhBnF5uSyh5MbECwWGVQ4pVccShkOozD1H4DHOwIDh36XZkHc9t3Wx?=
 =?us-ascii?Q?eI2o/kZes0peEG41EWzQXm8N5bIeSdwVsRwbg82089n4+eQcZqbGM8o5CJ/t?=
 =?us-ascii?Q?YQjFtDnHxXFirZ4IxaSXMZmFGd7Y9WzGNIq3ZtlDYEK3kud0fR/fiw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70e04d87-24cb-4d77-d9aa-08da027a6e06
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2022 09:43:28.0460 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O67aQEFZEWAapf1WtZ5gb0frlWR8zKAmlNzJ0pDlp8RePw8wO0BXi4gC8i2irdAYoMTfqbY4i6CKPFxnP//h+8c2QYgTCA88f6AZduAmchk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1299
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Add support for double
 vlan in switchdev
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
Cc: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@intel.com>, Wiktor
 Pilarczyk <wiktor.pilarczyk@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Martyna Szapar-Mudlaw
>Sent: Wednesday, February 23, 2022 6:09 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Szapar-Mudlaw, Martyna <martyna.szapar-mudlaw@intel.com>; Wiktor
>Pilarczyk <wiktor.pilarczyk@intel.com>
>Subject: [Intel-wired-lan] [PATCH net-next] ice: Add support for double vlan in
>switchdev
>
>Enable support for adding TC rules with both C-tag and S-tag that can filter on
>the inner and outer VLAN in QinQ for basic packets (not tunneled cases).
>
>Signed-off-by: Wiktor Pilarczyk <wiktor.pilarczyk@intel.com>
>Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
>---
> .../ethernet/intel/ice/ice_protocol_type.h    |   2 +
> drivers/net/ethernet/intel/ice/ice_switch.c   | 230 +++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  43 +++-
> drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   2 +
> 4 files changed, 274 insertions(+), 3 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
