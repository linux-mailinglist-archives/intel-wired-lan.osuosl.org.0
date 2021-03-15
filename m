Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6160233AD36
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:20:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1106A6F539;
	Mon, 15 Mar 2021 08:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 05AogQJUsy1U; Mon, 15 Mar 2021 08:20:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B3376F52B;
	Mon, 15 Mar 2021 08:20:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0539F1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:20:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0144E831E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:20:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fMxGx3auMx9J for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:20:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 08ED3831E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:20:26 +0000 (UTC)
IronPort-SDR: JOucwy+DJNUm9X4D/Wn62FxOiI9OOSHkC1I8ugbIDd3QhGJejqdlIBzWvHW+Xd0ch0ZCLKnKYp
 ZZARBhbSj8zw==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="274094860"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="274094860"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:20:26 -0700
IronPort-SDR: HgCHQVGBhkZMqRqkR+qMxaTujHhcpVGIvxjKCm+Xfd24Lj6fZNgcosHOzEsrwVvBzUBj2TEifs
 1H3RRNnpE+QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="378427463"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 15 Mar 2021 01:20:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:20:26 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:20:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:20:25 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:20:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HmTQkoUD9YdB9WhVpgZB+RRPz5k7XhBzJ+lYIH5OfBKGhDY92gQdWoRWs977I7MX+PIazqX627FP/WPE/3yfE/AYVBXxxBa0hN0MaNMAe4m/ZpiaDXJkYf5+ecX9xgBPxmTbqQp7f+/x1gYN2yaJrLo50teItnULte4a4CvC8HlXcz34o+ryay0fW2yALuaXoCgzb90V4yOmumVHUMAuSRjjtBlRi+zGd+SahHzPXS3hG5v9kBdqPubQmyK7UN+k+1QqMhBg8O8NFnf4RzJGTx6QDUYt1AbHuWLfNUfmU69RH6CqH5Kek6john6kehPanRLzjdF8E3VKEVvEGa5krQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iTE4FGFhaQwNRDQZGQGfqx4zGfGvaNh3geU4IfZHJaQ=;
 b=Wsoz/kxlJIJk50BSFmUpS5v1FRql7xNzQNw5BgLMdfzFf9EJFKPn4COdsUWyAS2CCBIQff+wGNa0qDQ1z9ZgCYnlrwCE4iThClEshxxh2xscfgMO94lvgSw+zMYqlP9RQG+91MxLFvOXX7vF3wBmf/wTdbinHveM8zBXRsdu7h6C+KRj54f+A6uhBBP6B8J+m6/SoADxv6YtAIYBNPfAPCekLfvtCjaPm3DZ/+OKJUM7sUhFEmjhBpVuwEa1VckJzCocYzD9d1F80kz1EeeHUALpG0HY2hoXbiyV/kg6cylRzmA+IjuzIF1MxAdtKT25VxcaDLMKCqbjVuzU6vBwNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iTE4FGFhaQwNRDQZGQGfqx4zGfGvaNh3geU4IfZHJaQ=;
 b=XIuAc9HquVJEB6UnToXD5VYAwnk2R6Zl0aqYqMiEI4JbJdvm2WOhKaLTo6IHsCUkRy8tFZonmG3mE6ISDQXC/l+h7yaBm9BHfDK97YU0MoJq6TbuXhAu78QchanxwuWwUlyb3bVJM8FiMOpJn9bWREKagR0Ngjhc0PBPxxfjJrg=
Received: from DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) by
 DM6PR11MB3260.namprd11.prod.outlook.com (2603:10b6:5:b::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3933.32; Mon, 15 Mar 2021 08:20:21 +0000
Received: from DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f]) by DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f%6]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:20:21 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 08/18] ice: Add FDIR pattern action
 parser for VF
Thread-Index: AQHXFJQgPg+t1tVSrUm5ZdiwSnawZaqEvo/ggAAAUOA=
Date: Mon, 15 Mar 2021 08:20:21 +0000
Message-ID: <DM6PR11MB3099349448C54828E89DA901D96C9@DM6PR11MB3099.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-9-haiyue.wang@intel.com>
 <BN8PR11MB37959E6CB9A88E2DE3F40403F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB37959E6CB9A88E2DE3F40403F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 12d926dd-a716-4c41-d1c2-08d8e78b2ce8
x-ms-traffictypediagnostic: DM6PR11MB3260:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3260538B49EDA38C45237DD8D96C9@DM6PR11MB3260.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dSQjmVKh5LdCaQ9z2AieaBLInJIpF4JiScTfqYT8NEyGAaczu0Fy09HX8/ywxyNEAwXLyYjij9py7nlQlrwQfPvhf99Q29dUIvWRvDBBTMGTfpCVVUH6P7A6hLh07a+MeAkQC14iudTtsbMzkn3+pMBas1id7wyLkLdLKE49PtI7PNPKydnrUH9Ily1TsqBSeUo7pCHmmfwufsDoWjFNE42d98DvTlojWZlt51f4rGTCynmlQwwfrTarkM3tUW+q2+cyVGOuFcxkNKhwVNb055ckzzU9TC0xMI/xtji+IL6PZGPQe6d2IkEEToaWswP8qOFNLfa6u5KGXsqbEeq2qhKI1JHW75kc0MLKX04hYHWImUQTRRdeEFpcJVnK0D4qqyx/gfC1H1ODzHoeOJxjS+IJdaNgwDVT2txUhbeY/IVd7E8SrDwbI6N29CHgFFFBiFJZjvrZQlr5I0AbcaW8Jyxw4Kzzm9nsJQly9xR0S+u0Dc5/Q/jt3Ey98PbNqfkCJlZctQOOylW4fo9B5eNpSo74GN08NFnFuA7Hz4qcJ1zXZFI1QfB4UtPcdjOZ/YIuNQTocy1+Wj4w/kOCMI7hvYPXu1WGZDKp5L/DlaWstG3ooINBHH/nujfmnnTxkrRTs8TB12hiVjsWGQ7WOgTd6A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3099.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(366004)(39860400002)(136003)(346002)(76116006)(64756008)(66946007)(7696005)(66556008)(66476007)(186003)(966005)(5660300002)(83380400001)(8936002)(66446008)(8676002)(107886003)(52536014)(53546011)(316002)(478600001)(86362001)(55016002)(33656002)(9686003)(2906002)(6506007)(4326008)(26005)(54906003)(110136005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?WGlR2k4E5fv0tVSocSCSH1WshAS3BY8LqqAc7ArQ6ADICMheOD278AAPtUag?=
 =?us-ascii?Q?0jGgAvuMWgIOT6kzr3OUE0gREA+Us+VSC3oVBt6qWDvGQCypBe3wrbkTnTdl?=
 =?us-ascii?Q?+pDBimFyMgIG0upKS4Zr7oucSBvv3NPVjTzRZ38lCQXyc2HZqxGjHN1Rp2ZX?=
 =?us-ascii?Q?i2QOuFDHWMD+QUa8hFthfDxI1PBnpXxl5SE8PNN1P8yCEzqsmfR0jK4wG16M?=
 =?us-ascii?Q?P9z4Vexp7YDtNHngYY1aef3t09jagXIMVGNdnBHvNclEB1aofhm//xJ3Otll?=
 =?us-ascii?Q?xBiPmUyjRa61d0F08cAhW2sx3MTR65pPHab1q8b4W+iOhpD8Ue59xhrMn9Qd?=
 =?us-ascii?Q?Pw+Ik2CgqpU1JAZsUGra5n4SUOgm/iWe6jcJueTWhD5nWFtW35cI+HJLBhO8?=
 =?us-ascii?Q?SKVBqfWDEY9VZreVXICDtbopeNsj3CBoeZ3BkCJ+/+VWFASucn2Ziyh60JiH?=
 =?us-ascii?Q?Hz8mueLcEeOm/dq7EYf/RXkMQ/WyYdByP6cxTkrzD40YP0ktzRuBO+ibxwZr?=
 =?us-ascii?Q?5gcQlLgJZo2R2ag4JFKNSaOnvTY8VcxwTqTk4eZDeMe3iX8yEB224ng5pg+r?=
 =?us-ascii?Q?kETMXOHkMnL4lW113UJvkujQ+ODxouPQItRrtSUFkcg38VOjXZU4WfyIkjIA?=
 =?us-ascii?Q?ESx7Bu3SJZdE5HOWA9tczYiklqBOyy36+DSYSlvf3Qot7FbJomOnGApfd3k0?=
 =?us-ascii?Q?xZEjAwN1VelV8eUSL2PTd/dmbeXxmPmQjfk9omHSMeM6hHp0EuT2KzU2i3Uo?=
 =?us-ascii?Q?vKYwN+EQNnJlAtXAPACLeiHbj0T0vyfyIL3UH3Tp4i53Umw7d9L4C6iSefVZ?=
 =?us-ascii?Q?xFsbc4DWr+onpbk3ra1x1lAq0hbz+O8UXLD51SBdlT2KrxkbWU47+mDHhPFc?=
 =?us-ascii?Q?phFVjrhG+hO3T+bcfNZhszK8qK7iR8VOtPaIDwuWoE25sNiOnDaVTsAS9rZL?=
 =?us-ascii?Q?w6rGnly140rtxoKyAlS4Al8IJniQkvC2X0KCkK4qMviuEQh9L5PcqbFWfSzw?=
 =?us-ascii?Q?CN9iP6L0e9neMcvAHjfJaR0nRXDk94hlGqbUmCxfgMUfFxpEPEafOhXwQhYU?=
 =?us-ascii?Q?UpIncwFlbxW5XzsbcnKqp4oyAYvFcIL6BnMLEsJ5auGivLh5bg4b0N4SOQUx?=
 =?us-ascii?Q?blzIjc/QicpEFTVXT1hPcOvxo3YypgqpW1Y5kzsqqOiq6X9VJ8DsEo3Y2lgW?=
 =?us-ascii?Q?71CqHgdkggaJtMDZM01rz3Fj0a3LwNs3g49e6C+G//IUgjJkB/rE941SibJJ?=
 =?us-ascii?Q?BbceQHNlb+0YIOozIQpwJsHFaDKCHjveWfoEoj/lkBJxZlmk/bJ06UPQkjRE?=
 =?us-ascii?Q?hk5hsjuFLxoqG28X2LqXB+Qi?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3099.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12d926dd-a716-4c41-d1c2-08d8e78b2ce8
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:20:21.2071 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lH2Kl7SQFuDg/YzPQkutV0/vDBu0+a6pkEQeWBxlD0GYth9lREVy0GO5wvfmos+Xm4qrf3/5mzvxnrI3UjpmEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3260
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 08/18] ice: Add FDIR pattern action
 parser for VF
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Cao,
 Yahui" <yahui.cao@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: March 15, 2021 16:19
> To: intel-wired-lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui
> <yahui.cao@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; Chen, BoX C
> <box.c.chen@intel.com>
> Subject: RE: [Intel-wired-lan] [Patch v5 08/18] ice: Add FDIR pattern action
> parser for VF
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Haiyue Wang
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui
> > <yahui.cao@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>
> > Subject: [Intel-wired-lan] [Patch v5 08/18] ice: Add FDIR pattern
> > action parser for VF
> >
> > From: Qi Zhang <qi.z.zhang@intel.com>
> >
> > Add basic FDIR flow list and pattern / action parse functions for VF.
> >
> > Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > ---
> >  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 348 +++++++++++++++++-
> >  1 file changed, 346 insertions(+), 2 deletions(-)
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
