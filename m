Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEA533AD2C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:18:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52DCC6F4E7;
	Mon, 15 Mar 2021 08:18:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JnLN5uBuGFjD; Mon, 15 Mar 2021 08:18:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 450746F4C8;
	Mon, 15 Mar 2021 08:18:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 58DA61BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:18:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 546DF83495
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:18:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 27VDTdK8TggU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:18:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 117A683104
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:18:31 +0000 (UTC)
IronPort-SDR: AQDHHc/cZvzGJhGLfwzL4JPN2sd7B44WJE1a65XZ0SrbivDznp4CJetPp4oY+eS1BMAyU1LG4M
 35KKmntvzRoQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="189100241"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="189100241"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:18:29 -0700
IronPort-SDR: 8YMlptHcChkS0hx1jhu9WNabaWq6jL0xAH9cgnk/Q6jUpEKJ0o/YQ3d0+5uWvNXeOL9CNH+iii
 2Sf88FLgaSPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="449291802"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga001.jf.intel.com with ESMTP; 15 Mar 2021 01:18:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:18:27 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:18:27 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:18:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P32VQeVKMzucshhuVtLTv+/l8fiYafgVqZy1jk5dISMED7vN9IaLJBEG5EYzNJaPz0yVGQsOHJ4Wo5vuBAYSeE1oVGYkd/S60yffLOlPmwi/FYQOJeDDe58qMwhGj8b2+a4Z7skefIxP1mjolcljKOnWcumPhK+2as9ODftX8si0HCrJ6k/Bq6JG5X85ZKtjZzugDjZdud30LsGvVYKJ4u4V0xhHaDnWMxGYmVBkhptPQO0NgMcnJVxjDLdrl5cy10HeUTEf+w7zysatIJJLN+qgsFu0k9x9SlBQGSPJnGTijhp24vMrZLWNMv/byibDwd9hC+aIbanh4MVkYM9HAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HzunX6p85C0WJCufCADQ9QWEeaYWRITMXn8t4ZrQGSA=;
 b=MiGVHHzEklpxuR55GdukXn9JNtq+hfdZYNZf/wsDM7FdFnhjVBLONxW5R+eM/l8Rd60dNgVNRGG4MvuikHIPlK/dEF+MQubIg27cEoHBipIbFeDcYPDJBL2IFUW0QxLmgVgrxY5sOKzsiwt+3pUhOhZ3Y7TtGhZeSjVgRCQxww2o1Lc4sl6H9lSKE8k/eR5qCFo8m3k3xEuZiCFAYIskl/xdUyyiriK7trelfDwQrr8WWKBpIiPtSRIXuSSC6YcQXbeYShHwHDlc3CCvqM+dxHUYqEpnFXA9kleTBEvr00uRzUEz5uvSAtketZ0elj5cB7bMOnC1uiaLgA5Z+YlzLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HzunX6p85C0WJCufCADQ9QWEeaYWRITMXn8t4ZrQGSA=;
 b=I0Fo+QTq/MVgYtUpV+Otz2twfAdiMUpctSx0SP6+tMYYhmIipvN0S4KTGhed1LCizHxmo8P/aOVfHz4MDZ4mFU9Csunr58ZkyonAZIXQ0lCZwLo7UWXVzH/V3gXAyZtcGgig3D9mjaXldrdiaMm8mXcFMbLI1382TOhrFX0Rdmc=
Received: from DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) by
 DM6PR11MB3260.namprd11.prod.outlook.com (2603:10b6:5:b::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3933.32; Mon, 15 Mar 2021 08:18:25 +0000
Received: from DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f]) by DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f%6]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:18:25 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 04/18] ice: Support to separate
 GTP-U uplink and downlink
Thread-Index: AQHXFJQLaFTBYwbHxkisdGheAtNOFKqEvd6QgAAAcDA=
Date: Mon, 15 Mar 2021 08:18:24 +0000
Message-ID: <DM6PR11MB30991B6E2BDB1E054C6C8896D96C9@DM6PR11MB3099.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-5-haiyue.wang@intel.com>
 <BN8PR11MB379543076ACA37D78FF48E18F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB379543076ACA37D78FF48E18F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3d0d4ec1-607a-4605-8dfe-08d8e78ae799
x-ms-traffictypediagnostic: DM6PR11MB3260:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB326076A76E9F0A8FF11B4EC2D96C9@DM6PR11MB3260.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ETIFqQC6+GW3fCFftpQMYbgS0ON0m4m7s3lC5BrnQ2G3+Vspjzg7w1BIq2BXR0bGvMNTSn+xeacnOx30zll2KLzRYCZ2c0VEVUxbzHZY7KziHe6MLG5lMBnV/odsG4GOC723eII+bB8YLfjZQ68Jz2F2Ns9wS2mZ1yROUeNUeujQZ78MdWMDriIDWQqH6A9o+zEmcpgx10IyW+GZlFx5IuOseC1D8EgOOnWw1ts9a1TSUK+lrvDrZaO93SxCrKJ4KK2wtkQWPfnX4hneAxS2fRA9x4K57nFHVq4QfMbZ9TL9/SszaFX1fYLI8r2KdDNL0Zh7F6jQK7LLJJNvbJX1dxTrxVrZmbrEK8pZSRIBYZd2GkwGaUrWiHgSrYf6hZQ7+utlLNEOmTlQ6Qruz2PGphPxYdm7p/f2JkpQ5f5USKUJO6h7djlaDGd2uTys1FpjLnwwsXq1rP7XXcdLGPb9jU7Fq6gDE+kLZi0ewAGT9aAUMpt11FKE8dhIAUoNdveOWeyvj3v0rUfKHUbGPP/4uIR7lhLZcHcSlt4SoQco5Yv7AGvqi8vOC3qbs72w8wuIjYPhjO5R/k+7EtVxHZhtlsZZYTrPigYzPzE/1a6D7N41xlQ4Qvg6KZvWVS6fVQiXbCUcjxLpZe6UoAryQjYPOA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3099.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(366004)(39860400002)(136003)(346002)(76116006)(64756008)(66946007)(7696005)(66556008)(66476007)(186003)(966005)(5660300002)(83380400001)(8936002)(66446008)(8676002)(107886003)(52536014)(53546011)(316002)(478600001)(86362001)(55016002)(33656002)(9686003)(2906002)(6506007)(4326008)(26005)(54906003)(110136005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?a3fF9QBpuAOwQ+ZuBWgxsNJJZVK2QEpJHDXypYC0eMtthuf40mPg8k6we6D0?=
 =?us-ascii?Q?UnwvB3izEwJjJqbgYSF5yxT+VQ8+va3wrC+zD/3+PFo/fsDpMHhLapwX31Oa?=
 =?us-ascii?Q?5R6zWUhce/wUIo/SUb5SCwRXc/3QqWRaFPgFXtSoZw5OZLqBzwtlYurkLfNR?=
 =?us-ascii?Q?9srTkaVa4fs/W57hWK1J0BsMarMAqIRIBsABB1qXt3L9cHk5RzCQzkSVQkxD?=
 =?us-ascii?Q?uXFjjklI97cW7af6ODy+6pSzgZi9xPiZ87fZaOlCHRJLEPJQ2hJmIZvGxrRr?=
 =?us-ascii?Q?25VVYkp171JNQaN8YxLS/uWkYmBFj18P8iw4rmkLAR4fIgKR9XiBQcSc4QtG?=
 =?us-ascii?Q?NJwhPVrTu6oqIQdXDEwHwMghY0T9HOz5zUKkspSUHUbyc9vxg04e6lyjvMic?=
 =?us-ascii?Q?4gWpvoVO6hKx7fww+nyCnUNbiEM/Y/odOww0uC4TUeioj1WrKsCmVHaz2Mh7?=
 =?us-ascii?Q?8KZ9LdCnYulONWneE2vP17bf1DSSNgHdMPeTuD7LmTQHgyOduHtzAyQq3Qbc?=
 =?us-ascii?Q?PDolsRvf4XfChv5YvIWIsoCTNmxHiBMH56ye4MrlIrFUSeIVLo6i0MDCp1Er?=
 =?us-ascii?Q?+x1Zwfi5z/y9wPs32p/UtJYysnS4wx1PNbM4sg2I8o6d5SNhgXbJe/oG0T17?=
 =?us-ascii?Q?j5mXXa388mF4vltZ0wcbiMkVxvhX5Zz6u8qq6Y4prJJjvAJrH9Vq4RMgGNcq?=
 =?us-ascii?Q?nIci5JPh7PCYnP4LM383GkJhEK/ZJNIwwE0WESOLvYVFPVfANKbbMGYCSqjV?=
 =?us-ascii?Q?0WdfSeX3idGm4/K3cJ7Ge4f5Dz5BinQ28fYbdAeXhRnzJgcq1sPaYzU7wCyU?=
 =?us-ascii?Q?urk/0QlzVsjPvkBJ1Ej5m2neK5pm419HvGZ/MEek+f9wcvUPi+ZY3ZHbnFtG?=
 =?us-ascii?Q?XePo9RkLOPZQN3GKhHzXKHL0XpPLR+tr9i/29mdbFUe3uw7HPX3ZT09EP6/0?=
 =?us-ascii?Q?Lt+uzpfcynjYR9+51thsPjciaWNd3KTDoYV1R1IyHJD+mAmefEAXNhUAoWDZ?=
 =?us-ascii?Q?7odD5Mt09JHjZol2h94jSwS9HLLMawiAb9wiwx2RiiNqBUnMTXnfcqne2TCh?=
 =?us-ascii?Q?xgw3SOnUkbF0bQx9SOU9b3BmabOMBm3kfJInKWWxMBrQYNkR34ZvIfqTCOMo?=
 =?us-ascii?Q?0DPU/+2WmOMMck37xSShg7aHmtah5PFEcVWCMTRBV97pY+I6gbGotxzdfigq?=
 =?us-ascii?Q?WCGK+J6C+tCJUt06j9gBMnMCVl3THqcRtCpgmAMxo/8VOdlXGvUbp1KNH/Nz?=
 =?us-ascii?Q?lkKVMUdKhF0AUiH7Ha4i1vFY9vWeJCIxvyFADnI20tYmuFWlo8jZj8U9KGcN?=
 =?us-ascii?Q?mo/wtuIPc7HqWvxDLFJd/jMd?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3099.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d0d4ec1-607a-4605-8dfe-08d8e78ae799
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:18:24.8629 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B84GXw3VCbY3Vb6ZCD5UoRm5ayrz2bGHkWYeiv8/95DbSi2I+zeZ+2Z/lWenXdxJ6zfZB06USWs1w6v1zp6MAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3260
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 04/18] ice: Support to separate
 GTP-U uplink and downlink
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
Cc: "Nowlin, Dan" <dan.nowlin@intel.com>, "Liang,
 Cunming" <cunming.liang@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: March 15, 2021 16:17
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nowlin, Dan <dan.nowlin@intel.com>; Liang, Cunming
> <cunming.liang@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; Chen, BoX
> C <box.c.chen@intel.com>
> Subject: RE: [Intel-wired-lan] [Patch v5 04/18] ice: Support to separate GTP-U
> uplink and downlink
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Haiyue Wang
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Nowlin, Dan <dan.nowlin@intel.com>; Liang, Cunming
> > <cunming.liang@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>
> > Subject: [Intel-wired-lan] [Patch v5 04/18] ice: Support to separate
> > GTP-U uplink and downlink
> >
> > From: Qi Zhang <qi.z.zhang@intel.com>
> >
> > To apply different input set for GTP-U packet with or without extend
> > header as well as GTP-U uplink and downlink, we need to add TCAM mask
> > matching capability. This allows comprehending different PTYPE
> > attributes by examining flags from the parser. Using this method,
> > different profiles can be used by examining flag values from the parser.
> >
> > Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > ---
> >  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 106 +++++++++++++++---
> >  .../net/ethernet/intel/ice/ice_flex_pipe.h    |   1 +
> >  .../net/ethernet/intel/ice/ice_flex_type.h    |  61 ++++++++++
> >  drivers/net/ethernet/intel/ice/ice_flow.c     |  88 ++++++++++++++-
> >  4 files changed, 241 insertions(+), 15 deletions(-)
> >
> 
> Re-send to Bo, as a new member.
> 

Tested-by: Chen Bo <BoX.C.Chen@intel.com>

BRs,
Chen Bo

> > --
> > 2.30.1
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
