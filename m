Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2A53B21AB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jun 2021 22:16:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABE2A4045F;
	Wed, 23 Jun 2021 20:16:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cxnXDQgSsrtT; Wed, 23 Jun 2021 20:16:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AAF7D40109;
	Wed, 23 Jun 2021 20:16:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E28B1BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 20:16:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C84683B6A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 20:16:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fm9WJRcQGWpk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 20:16:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 75154817BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 20:16:02 +0000 (UTC)
IronPort-SDR: 4TxuvuixytGda3ac0RhjRGCO0gcZnyftinbhCnA3W9OzH7qkATT3ny/ufPCPy+RxrfJf1eNdqm
 /+FV2li0mdZw==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="271182496"
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="271182496"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 13:16:01 -0700
IronPort-SDR: S/1rHVIZLlA3bFYq4PkLEUy0jdPlV+N8ENNLMY+SPnjMd0JsOOg70Crz6o1tm22agn5lPvvzzS
 7GlGDxmWdT3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="623950737"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga005.jf.intel.com with ESMTP; 23 Jun 2021 13:16:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 23 Jun 2021 13:16:00 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 23 Jun 2021 13:16:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 23 Jun 2021 13:16:00 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 23 Jun 2021 13:16:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cS6hQOGFt5pGZR0Kj/Bkw9Os9/pcUFIq9AkL3xgc3jv/5NRk7Petgm7o0NYH2jt4MCY52eXFW1UvwBr4iPGrfJxPgE6sxMH9BrGOq/Dd8Bu9bj6DZwgHzbDd3Gv9lS5wKNCzRyPZXwo1D50tA+dYOg1fNoBIpRQGxGM6kNXW8d5mYjmQppu9QIJG3MNGVmOjoSNX3snZC1p16fTDuVSlck71AVRcGI/p9DrlMgUqSzdGIx+HFPW3we2uYi9bRpZ/jm4tilxB9bJ5HsSfQzDNLlCfTuS4DRYLTF5gkuazKRtksF4l3bbook83eP0bPB0e+FRYb/QBOPCnT+s7CjR4kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wYmG0i9BEko6VENHcMDK914he6QO0ukR1EXLijcJtcM=;
 b=KUbOiPyxqTBMazOPE3wd+t2Ry+KGb4zcU+jF1yR/irF/Qv+UbDRTNYioSofJm0wYO1q9wS+i4fcFFEh5biU1FE6IuR2riHfSTJMkDH6ITn1q07RMlnCZZXMint3Y6lLeb5E3UaFR9PGRXyBZJYPV41mlzjvrV79/TxIgkAlR0tr+PGcHqllqL/yrUw4lsXNiqDM8ujO0dmumT9vqKyRa6NVgaPwPeNT/Qe0LIeNGp+iZB2v2lVAvWCzVRMc0JJdNed2O03QFxUSCtc8mXd5uv3IfBR2fSHN+FcAfh13oeUFvzjKFwDdrkH36wevU727Xvx2cZXlgoql5jMK+KgBklw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wYmG0i9BEko6VENHcMDK914he6QO0ukR1EXLijcJtcM=;
 b=IF2jNkQbAUySUt0wAlzsx4RaJWeYz5/bi2nhtVgHJvnc9OENpYlTOtuRZg4UC+9Y46l1iCso5Ea/QMsfBSM9jCoIfAn8m6fV88nv2EwSZkkjpMIx2M9HaRdaHGeJClyuzXqPI6FXRHakEXa9FwPK5I6qQV7TR/E4Z8zsUoLWfVU=
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7)
 by SJ0PR11MB5581.namprd11.prod.outlook.com (2603:10b6:a03:305::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Wed, 23 Jun
 2021 20:15:58 +0000
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2]) by SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2%7]) with mapi id 15.20.4264.019; Wed, 23 Jun 2021
 20:15:58 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix missing rtnl locking
 when setting up pf switch
Thread-Index: AQHXXqkMuq+IuPzghEqQOgX1DcRTeqsiG78w
Date: Wed, 23 Jun 2021 20:15:58 +0000
Message-ID: <SJ0PR11MB56626CCB05BC3E0852356C4AFA089@SJ0PR11MB5662.namprd11.prod.outlook.com>
References: <20210611100141.6089-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210611100141.6089-1-mateusz.palczewski@intel.com>
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
x-ms-office365-filtering-correlation-id: 927da623-1b25-442e-812e-08d93683b70d
x-ms-traffictypediagnostic: SJ0PR11MB5581:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB5581E9CB7BAB38549F3DB35BFA089@SJ0PR11MB5581.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:663;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e50Zj8BDIRjX0qgKrGSQziNpx3BYvCn4a1nRz9rh/QSjmQfs5oz46M9LZHlIcCeeDhk6BnMoC531bBPcqE9qBbRYy87nNwFyQllw6x57ZqP43zH66tc6Lh3IKkxVduszaxuHgaXsXsdCfr8GnDIUdNRJT/me7gFH45s4sk3vDmoMDYS/25WAOUy48Hi9fY87pBvDUCKkgxBJ17tHlF0HyXmH6ymenbTmMGecVue3rE4DFyYGtPb2SyRxZ/5LwD28wlLHL0QQ/1AQjxaK8VZtf4WcBQk6faJ6nQUSyMi/cBSwinHCn8tMGwdM1nhjARvNCAxw6K27I7kMT6eV+DIOLfYvpuxShUON2BGjLDkEtncOABNEvKbagLuSwUP9P2i6rpYGD+UIoDta/umCeDc91V6l+KKFdocFei6Pbsf5i5lKO0KTtYoWxIDrPnhmS6UHtkSno9vvxq2JH7xpWooDLR1r4yGRJaRKJuWGyqHfoX9x3FIiW8cEKcD9AKWqXj5DT5O8F5YnUW8qyZ/u9yHlcxiT0PYfpq4f45+4Mgd8Zk2kzP6560nQV5PwuxjT3sybdlpiI6TIDBdwdYb6GfgWQkHk7h5RaN6er1UVz/gBhVc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5662.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(396003)(376002)(136003)(39860400002)(8676002)(110136005)(53546011)(107886003)(6506007)(122000001)(8936002)(2906002)(4326008)(38100700002)(478600001)(66446008)(66476007)(4744005)(33656002)(86362001)(5660300002)(76116006)(66946007)(316002)(7696005)(52536014)(83380400001)(9686003)(55016002)(26005)(64756008)(71200400001)(66556008)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MP/eLXUWrICEYAeg4O9AO8JAqnh6v0i82ejoFNTuRYGT7LWm2x8NcmzGiR9q?=
 =?us-ascii?Q?zgS9l7xRDNkOb7SxyJ43xnacx17rIU9N3mn418U8SrJs22qz3tHajPVkjfkk?=
 =?us-ascii?Q?AuuGYLYvS+WMp8n0HbdHFtl0FXEx73L8PV7FfNXiYdKQTFtLeFoHrq5gWipX?=
 =?us-ascii?Q?2vdcVrViqmSETScdBgoV86/rlmUVedInmrKeTUFLh/EQbSRlGnhWLu9i0Y9S?=
 =?us-ascii?Q?MXMO+PNkkRbbjYl8cWc20/Mw+eJuqkNOrJ+N4ohhMKmc6azoClM3ViZ/v20n?=
 =?us-ascii?Q?aDJ1sF4gOa5ugQ1yBjWNAu69MYEizLK/q82UD6Sa1LHPoK2JzJyVuwCgIvO7?=
 =?us-ascii?Q?wnddHVzlArdC1I7VJw5C/NjzijmZsqoxiq/QPh7wDRYX80fpMxI6Swc5XzGl?=
 =?us-ascii?Q?Sd2VnyKjx88IrC7XxIcuRlWmexipDqRal/5XDdW+iCoTx1kRblpTAuPAoq0Q?=
 =?us-ascii?Q?MLmDFJ4PIR4+nfuYp18iNPbfDXqRu+IqLJt6dHLUJadWtEfw882FcgnRYirh?=
 =?us-ascii?Q?CBfQzmEnbcwHrcsXsuQoa692xz1ZBXrI9GGeaISQlzBgFc+rJaqbuoYTuUtG?=
 =?us-ascii?Q?W8O5T1dD26i/UENjjaY9cB4k0goMpYcwy7Uyn9MiZvvDA0LhL+SPeD5VC+22?=
 =?us-ascii?Q?ap28WYS6+Ozyc8zs7xG9pbySEVAx1mcwCm/bCnlZ0XRLB0eNrakQBEwbmPbG?=
 =?us-ascii?Q?GzZcDfBPQAL0yreUgaA5peWEncvPsorTyj48BQqRTqMNULg1mfp47kRwQ1ZA?=
 =?us-ascii?Q?IkqygtdmSXgLgXgAGvi2Y0NXbhyLs/zq/ujQxiR0Ek+lYcK6A7tkiGmTNPKo?=
 =?us-ascii?Q?Gvf9IAF8jDBjp+A04Ft4VYaMbmx4f0GEd9IGR8cP1qHqJ/+qqnX8o43RdbKw?=
 =?us-ascii?Q?8hNj5CA+NAwU7TRw5dDcHz8p9xhkor/cOHKZuN6Q30DU1y8UmIfqJQ4CLLqs?=
 =?us-ascii?Q?H7AX8Wd7v44Z3yQWmixsac+77ZeNH2zOVpa4G0FIRFVJj9DXxgOzugpoQXNA?=
 =?us-ascii?Q?nA7CWrnHqqVXl8hvKBM7sCiZ5MBfw8mDSlipq8JrxVwOq7ssQF+sMlp4DCoN?=
 =?us-ascii?Q?SPGu/SUZORjkLuSJcvypLYyAbFplxY4eAQ+cZrVhBoawQnswRVsgeJQZQlcg?=
 =?us-ascii?Q?4fstcLRD2hzzu3ZNU7LRbBefpUV4mI0Wf5xu36iwsY4J01fgINJGK/vsQ0RH?=
 =?us-ascii?Q?AQyJOz7CvanayWJC2iXvNHDSlPD7F10quzryPf68pB3HFQ5tYGSDX22BEz2y?=
 =?us-ascii?Q?hUjvSsMqhTVQ2MJFXtyIeemkzq45pUe9Gh7/85XT6nEeEvrrO1pDHpzr8ck3?=
 =?us-ascii?Q?nPt7BDA4TvTKq1WbVLahE/3R?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5662.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 927da623-1b25-442e-812e-08d93683b70d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2021 20:15:58.8879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oPEAQtViKn3lF6HN3B6R186wbzUm0Fcus1Q9fjp0Yh3QwxzOSsqC0Z1WpZsdJTSULV9TYlCcHa3xdKTdLKu1NuZmi4z78tudtq+52wsGMww=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5581
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix missing rtnl locking
 when setting up pf switch
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Friday, June 11, 2021 3:02 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix missing rtnl locking when
> setting up pf switch
> 
> From: Jan Sokolowski <jan.sokolowski@intel.com>
> 
> A recent change that made i40e use new udp_tunnel infrastructure uses a
> method that expects to be called under rtnl lock.
> 
> However, not all codepaths do the lock prior to calling i40e_setup_pf_switch.
> 
> Fix that by adding additional rtnl locking and unlocking.
> 
> Fixes: 40a98cb6f01f ("i40e: convert to new udp_tunnel infrastructure")
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
