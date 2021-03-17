Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE1B33E608
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 02:28:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F3014ECE8;
	Wed, 17 Mar 2021 01:28:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H56gJkmbtMMT; Wed, 17 Mar 2021 01:28:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C11ED4EC0B;
	Wed, 17 Mar 2021 01:28:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 222571BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 01:28:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 155E84EC0B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 01:28:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iMZncRyN5XqK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 01:28:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8BA64EBD4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 01:28:23 +0000 (UTC)
IronPort-SDR: KyExS+5e7JyV6CyxGZ+NiAldImGyDJbp+aUHyE5aduDZLZ+LM5jtMn464q+h9wWtQVMGHVQsZp
 nX8qD2kLkekQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="176962983"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="176962983"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 18:28:23 -0700
IronPort-SDR: PKrJEeSY/K7sowW+EtuETo9oTZpLePQyneMoQ72ddxTqjbBR67PsAAgjiLLmWNdT5tQI5N5ERs
 DoY/btYHN09A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="372170002"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 16 Mar 2021 18:28:23 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 18:28:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 16 Mar 2021 18:28:22 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 16 Mar 2021 18:28:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l+UI95QAtZIB4pAUwhgY0yMSbWR26ocf2Mnvp1C5EJAEE12fO/UOetm15/BdlrcKrTBjtU6Hory7clM5SFlP8dX2sA7QTtVkhN0fOwwO8PlrohY7kjBmUYNDJAtjRCUpe+m+fkZH3DkDfWSZpn8T3egeG7+4pEwIHkel+wGDBPmXwm9Bk2hFtR8h27+HP5LRS+Y6XyCdDFPFjC5pmP2wHGBScUa1MiP/U47SHqKtjO+wPcjx175VnfNX8v8ZlNgXc/PBcZ/GYiJAJQ0MOiUXRpJidx1fHBu0eA48OFkdOFrkf4EeJ3qfBJKRk6zDO4iOZzLPKJXcmqyHZcnLEHmtxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hJ8iJnqQhv7KGFYfTS718vzKh6f9zhgXNxRBPuRYKZ0=;
 b=mO6PnizMSmw9Ev0iAx3AitLHmLtpWw3wErDuoqExWIeNPBt0qB8LrLGmh4/tmFJpqVRijDd3iBNBbhUaZ6pwanBzX6OKKNZQDlWaqECTws0DmkVo4Wnr2Dj/0y9RyjJ3QXVBoTfMEKKXPTq9ozE9X5x0zoQMdgf2hwg/ap+N2HWBYffQSwe4bphx2lFYeJkEYb/H+ndGqmTBma0ODMrWBsXSceoKMKGd41p1ezCLqzd538DsunWYxYIOyiLCIGz0FSLgrG9aqrLs+nkDT2Wwwe5/zvunHi6mA5WGZD8ZCq9oS/xHHKBYn66MQXo8YMTSNTbyIxb6wHjLSpva3acd9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hJ8iJnqQhv7KGFYfTS718vzKh6f9zhgXNxRBPuRYKZ0=;
 b=MWrNWt1f9KGZWebL+PPQ0dkt+Mij2NnvutXYlESrqtK5uqYvx0+ohdQ07PFqpqfBxBEgRHXFeF8ooFf4KG9kWtyu5lROo4O+wj3Lp/0v520FmiV1tuC3gRCWZ6iRd9eEnnP5ItD1yDyGA5CoMpVTxuKr3vI9YixTgh5p02uKRu0=
Received: from SN6PR11MB3101.namprd11.prod.outlook.com (2603:10b6:805:d8::23)
 by SN6PR11MB2640.namprd11.prod.outlook.com (2603:10b6:805:56::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.30; Wed, 17 Mar
 2021 01:28:20 +0000
Received: from SN6PR11MB3101.namprd11.prod.outlook.com
 ([fe80::28f2:95b5:15a:6656]) by SN6PR11MB3101.namprd11.prod.outlook.com
 ([fe80::28f2:95b5:15a:6656%4]) with mapi id 15.20.3933.032; Wed, 17 Mar 2021
 01:28:20 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Patch v5 17/18] iavf: Support Ethernet Type Flow Director
 filters
Thread-Index: AQHXFJQEPpWwFqVx3EKnv4yUuuwVw6qG2oBwgACV7cA=
Date: Wed, 17 Mar 2021 01:28:20 +0000
Message-ID: <SN6PR11MB310135832E7C7B646A0ED14AD96A9@SN6PR11MB3101.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-18-haiyue.wang@intel.com>
 <BN8PR11MB3795C42ADD6041DAD7B8EE31F76B9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB3795C42ADD6041DAD7B8EE31F76B9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.46.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 05b58917-60d7-42c4-d09b-08d8e8e3f2da
x-ms-traffictypediagnostic: SN6PR11MB2640:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB264094FD54DD1B6D0B5295E0D96A9@SN6PR11MB2640.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:800;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cBvaz1vpuLDbArXGxmUhBsK19eB+7G1tFS2LuBI5fexe6sD8cnlVKdylvOFUQa2VQb/cZc6ShEir2Y3QPAyDLOh09zbqpG6JhImwPXc3G3Afg9oQnUgqoxiZ1h+Gj1uIRCF8zjT+uENT43tKSfajKI5qYg02UdM+iUc89s5AsLQTBJSM4DH98swdaJPzR+936z6Zb7vy68ovzGK1iLjNsqGH25XeBI7l1nNqjKA8INlXm+hB21S7mtMdYy3nJnLH3/8BLUqqs4uc13PAkszIe90IUTYdmbH00FVve6cG1zVfdB6Rpmm9EFsOMyZDpSeiGTs4/aBjvSr9qtBCfQWN1QRMWAvKs4XxaC88zX8Z1om3ZEpJ02nr6EDdQhiS35tOBhumbtKKvGDiXrPIU8IV0b2LLqgYP3ax+7orow9kaSsVO5unxY6mr8EU/uyqxKhIOMuk1lVoq5DRvax6o/WsYbTPP3LAP070YyOTA7gNdnbVx5PGefCz2Bl27GGWBkL3cThe0H0PvTcHmJqt3IR++w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3101.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(136003)(39860400002)(376002)(346002)(5660300002)(6506007)(66556008)(83380400001)(76116006)(316002)(26005)(86362001)(9686003)(4326008)(107886003)(53546011)(55016002)(71200400001)(64756008)(66446008)(8936002)(33656002)(66946007)(54906003)(478600001)(7696005)(110136005)(186003)(2906002)(8676002)(66476007)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?+5R9YxQ8nOD2cgLFc1yXRGgPPg7ld6/hyEqXZhq7caz11oFAkFmtGeIaeMLq?=
 =?us-ascii?Q?iPjtEqWoYbCSX3AtXh6pTSxIWIncNyjfqAUUc8LzMRPt0SQwLKFrZC8tKMZy?=
 =?us-ascii?Q?/VjxSJvAhWhyP98/r6oDccjILPpYo6EB6sowGbIbr89jalSwKGOKdsdHI1w/?=
 =?us-ascii?Q?kGM1YtfiWSJ0ZhlICloFqfJzTF+OB9MHgnCWugjDskDJF0EecoXL5sFy4Czt?=
 =?us-ascii?Q?5cCk3zArefcBjhCZEvvv/H9BtzmYY0qre7L0H6nHPVYQgl08p3W1yDJC4L5R?=
 =?us-ascii?Q?XFDUP3qANBzvohmDINuEzuzBizkL61QBduOvsv2GbtdD0TnD3WCVbmQJKsf0?=
 =?us-ascii?Q?BKAmkZhizKZUAOJNjUF0NzmTs1GX73iBY+qg8Ngk0PTxcTQgFyUyMPDNDfKB?=
 =?us-ascii?Q?wuA5kgtiJl0w4omjvbiVbRjnfTAHGZzYl/cW5gHzJmCxV0P4iPuJILysMCgU?=
 =?us-ascii?Q?uqSaTVNn2nu2Q47OW55npC07M5r/5qn/YuRE1HBKisgUOonEPqu7AMrRFF1r?=
 =?us-ascii?Q?DlTcRuQS1prNMEJshWLFpReTMK4w/HrPKUY+aJL8ZR/Xa4rrmcuYZWYxETpM?=
 =?us-ascii?Q?9AERlbTbUWpA2S2zPdYG8fZrS4o+TCRYpFf5F1PeNSHNWVu7qvFZHw/MCQ05?=
 =?us-ascii?Q?FQOJKrDMDGffbn1I2TujgGxpo1El+KfDm524kpMHnZoWC9KNqmqh9wqKVz7H?=
 =?us-ascii?Q?kGu90qUamVVnV2AstCS06d7W9rVwMUzJnp5vo6C+cHGOZCPwjQqvnm5Fj2NO?=
 =?us-ascii?Q?5jQ+7SPrrpwhzj1I3bszQgeXX8pqsyW3D0i6Z8axqyPF4pkDZk54gNejcMI9?=
 =?us-ascii?Q?WJpPmPuq0QiES8d2mmOeKHB1/3vVXhTFxo5Rn2CfFK3rt5JO6LKGlIiMyo1W?=
 =?us-ascii?Q?3A64HIzyYDk4VRiKOxoMwc4GKov2CG0NSJALMUoGxGE2YcRGVfQsTVVoqc83?=
 =?us-ascii?Q?WhTgNoQ4Oc+C3dVMO4kon6plyrz0NK3Cq6sMDk6x+SNwHThXdBpxwIkUegHY?=
 =?us-ascii?Q?zHtg8vgBieMWoTTChRSofpRXsocU7grLfQhW98G3gzP7prW8EVdRf0LZHwrc?=
 =?us-ascii?Q?qf1t7rNDZy5+es/5qfuA7K+uLR0NzX97f8BYyWPkepxYjTDZQb/HK9/k+gG3?=
 =?us-ascii?Q?ax4woyK0V8uqcDCmGsC1ElZFhSsn9nnIRGHVrKLZO5HIl/ZnnayrsXP8RDAL?=
 =?us-ascii?Q?j5SNGUB12jPlA+JOkiNQuvjMT26hdYeKHCmLzJCZ14COaZaGNAOJ+i5EbSIF?=
 =?us-ascii?Q?bDmikesmDBOZNHSXvOXEg290SH/Y8p1otlCJLwkAu123R4Wx9f6OoWtE3isJ?=
 =?us-ascii?Q?St7Tzl3tDEGQ8Qaxha7i1jmk?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3101.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05b58917-60d7-42c4-d09b-08d8e8e3f2da
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2021 01:28:20.1032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2JrXxitnaiIw2wurmyOBe2mSJcTmpZsbo45MQr3jV9B3sSHpwCdwksCkwfnl3QX/d86/4sZcUCQ3wsNK+qo3Lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2640
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 17/18] iavf: Support Ethernet Type
 Flow Director filters
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: March 17, 2021 0:32
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; Liang, Cunming
> <cunming.liang@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Chen, BoX C <box.c.chen@intel.com>
> Subject: RE: [Patch v5 17/18] iavf: Support Ethernet Type Flow Director filters
> 
> > -----Original Message-----
> > From: Wang, Haiyue <haiyue.wang@intel.com>
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; Liang, Cunming
> > <cunming.liang@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Wang, Haiyue <haiyue.wang@intel.com>
> > Subject: [Patch v5 17/18] iavf: Support Ethernet Type Flow Director
> > filters
> >
> > Support the addition and deletion of Ethernet filters.
> >
> > Supported fields are: proto
> > Supported flow-types are: ether
> >
> > Example usage:
> > ethtool -N ens787f0v0 flow-type ether proto 0x8863 action 6 ethtool -N
> > ens787f0v0 flow-type ether proto 0x8864 action 7
> >
> > Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> > ---
> >  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 12 ++++++++++
> >  drivers/net/ethernet/intel/iavf/iavf_fdir.c   | 23 ++++++++++++++++++-
> >  drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  8 +++++++
> >  3 files changed, 42 insertions(+), 1 deletion(-)
> >
> 
> Re-send to Bo, as a new member.
> 

Tested-by: Chen Bo <BoX.C.Chen@intel.com>

BRs,
Chen Bo

> > --
> > 2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
