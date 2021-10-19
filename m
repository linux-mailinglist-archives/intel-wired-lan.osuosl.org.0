Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 933834334AC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Oct 2021 13:28:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3D3240220;
	Tue, 19 Oct 2021 11:28:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jWV0xFYXQrl1; Tue, 19 Oct 2021 11:28:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3794C401C3;
	Tue, 19 Oct 2021 11:28:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC0AD1BF958
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 11:28:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA42860B2A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 11:28:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 52Dz9QiSuuj1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Oct 2021 11:28:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00D37606B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 11:28:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="289334400"
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="289334400"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 04:28:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="443843721"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 19 Oct 2021 04:28:34 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 04:28:33 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 04:28:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 19 Oct 2021 04:28:33 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 19 Oct 2021 04:28:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S6sRLnKJ2TL0fbNdTkoRfIbSNqJJv2iTSTB+9JSFdhD4pdheZueDIgmaIm17Sx56ZtoPk7or0k27OQ6N1PsSN1GFhjITFyqq/uC+W4QPO84SJiLdGkx+0vzKluvOwxDFHdf1XCnLADxucdEoXG9r2PzLOFVOK2kjd9EoiNd9YUGSW/6aKZhG6iavKyS7eaQObHWuircx4CEhP13mr8ADhoiV7HrghPtONvQJ4eY/31UL8XoqpvaFr5l/2/ZVCqdYS1PsOmpFDlodLZLn1zgvIcprCaW01TkS+sHHAVYyDbiLVE8TVglf2QXSkWdPWHWU6RaWFhDOQiIidhK8nPHBOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lpBfh98Pq5+L7PELpfIH6w374w5UXyNF9xqUdbpFLmQ=;
 b=N2IUEkGUNWbOwOF7nqQf4o+R0UEFjPT9owbK08+Hkcm6UmoypAYx5Zd1kPp9M5ra+DDiJ9Jgvh+UBR4SQMTzYAqoGBSWy8jMA77OYsqhs+v1GL0JnnYvHhDnuImK75tfHXzhiS/ZJl+D246n3AKSlKQsoz1atSarCN9LL16ZESNRXACaoNRblBCcn6od6V59XBMJGIIoGstio3sCyZsU61oudLc0bDY1HCh2aqzNnPWJK5uwnuZe+nYcTVOrbPiOzcHi5qKudt0+SBgbbjdsUNN5RZsm2I91wZYtyBgG0110t1/SBenJ3MK1QDdMQdNhWUpSpMmKsIVWU9zSjiDApg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lpBfh98Pq5+L7PELpfIH6w374w5UXyNF9xqUdbpFLmQ=;
 b=OCyn14urnCSH4WURcv5KFwuhaAm5oHCPApLvk9HSZFqtw8AUSdlUn1vECeX8LIYqvUj8JL63QJjr3AduV6MbW9jNn6Uvfs8l+iTmRFFdTPUPl4pjYXBWPhPUinmGqWTK8If01VgZhFs3ZfMQCKVYb2ifqJYBlsTxDz2E06TzPWo=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5589.namprd11.prod.outlook.com (2603:10b6:8:26::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.15; Tue, 19 Oct 2021 11:28:31 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%7]) with mapi id 15.20.4608.018; Tue, 19 Oct 2021
 11:28:31 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] ice: Add support for VF
 rate limiting
Thread-Index: AQHXqM5U6UheuU2MDE2bzQXB6nYLCKvaZtLQ
Date: Tue, 19 Oct 2021 11:28:31 +0000
Message-ID: <DM8PR11MB56212C4C4651323DEB010FBCABBD9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210913182219.70446-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20210913182219.70446-1-anthony.l.nguyen@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1c7ffd28-ddf1-467b-e2c4-08d992f3948a
x-ms-traffictypediagnostic: DM8PR11MB5589:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM8PR11MB5589C2979187D859826F4217ABBD9@DM8PR11MB5589.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:158;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 79wjdwr5w2634liOHFEMRBao2HrH4+YjTkdrNuss2fLiG2/W+nIzqtAYQqK8Booy28v6p2sD9APVDFDXsOXtNPpJREKeR2ijbvZrYQlsh67cQ9Dt886F580m2YzRd8pDL2guzgzoWIoSUVaXG3gml7WLQDs/dRkT4BhG7o8m9D2b0IPCttHlXNL3e+aGHS22/se5xkL1zfXE9qLv7/qn0PRxZ5N3N+fiFw6p2ZpdPY+4lnwEEPtvtCGHEz02wK7O+b63RPGekh8Nknjd19pTqxUND6Tnkd85lFdZ6e3wBH9XXPE7z1861x63MG3JefHd7v2eidrFF5bLciqfLhYopXIs8jo7o9XmKtT7RbRWg4EkUdK6JJvedqgjdWt7BYO4deD3pTsrzyqYJ5uHg0LHZjxf1aj0u6JV9JbfPyj+7Z03bWQxMn4+Xbn2548M4SeOgud0xacn6YphG5UFiX61UO426Ddjr6NrwkCMHFnmd1vx8AzOycue9CIV1aoaJI/UCRWCZTMI8+kAnztMbcRuH3c6XJ2F4V9gvnFVzthHW+z0HzovNL6aTN4+JLtgJ1l9AL0oLH0caLy4Bj7qcicOv8p4uzUY2PGXEvNzJ8eUV87bYwQxyFkfIj16GRD+J1ni99fArogHQQnVyRCcSDOSrC5P9WBRFb389g1uFERvwYUHQoRFxtN74DFNQD4DezkK2ECjFEbwzRfOVLdnhlUm0Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(66574015)(66556008)(76116006)(38100700002)(66946007)(66476007)(53546011)(26005)(83380400001)(52536014)(33656002)(110136005)(7696005)(8936002)(8676002)(6506007)(508600001)(2906002)(38070700005)(64756008)(66446008)(82960400001)(55016002)(122000001)(30864003)(9686003)(71200400001)(5660300002)(86362001)(316002)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?Yi02EKS5wVRZ+oj1VkwY09p/yWOT/oNLfhSUh1e+4z9NgZFEI0h0DZjbE/?=
 =?iso-8859-2?Q?oaFaH2FooPnFQCLNMLFoPyLmhPblfNUNdG6bWiF7j16/UoL5AzCnXnzYGs?=
 =?iso-8859-2?Q?D2Eh2XZrg86GZlz5I1MQW0Lw2txwN1TlgmFD2KKeQT+5cA93Ju3X0z0EQV?=
 =?iso-8859-2?Q?QSihAQtzPMpr65QUfnH52Ahl9/dQDgVtpdnRZMu46jFX3lAd/K0UmnURss?=
 =?iso-8859-2?Q?j2KoP6QZoeyT5D+OGokqRf3ulE1Cpt0xwy8BMYjr9NnFm2Njgn0PB3wb92?=
 =?iso-8859-2?Q?fFBGpqDP/w96xxlCpL+/39R2hsBTLflP48cNE2d5BsbotHF/tBvCNaDzBn?=
 =?iso-8859-2?Q?3gQkknJOU9yyjx2DgkOywO2Wam6b4iXEcdVLK74tFqR4oIL7bQIFtyQjDV?=
 =?iso-8859-2?Q?pvln3Po6xgat2Ht1BFM18ryvgpgsI2D92JrT9S0/x20Vmtwwb88f/UZAy5?=
 =?iso-8859-2?Q?KIA4TjDZVxrVwHebDaOsYWQ800a+vAMNTXnFSoZnbsUrlFoUIx8U/nlnZn?=
 =?iso-8859-2?Q?TtjThyN4q3ZkNOsq/AKDhVzzbTKVMZNGI0gnj33GYSDsalwt9IND7QpT38?=
 =?iso-8859-2?Q?BfhZ5/jSfbGte6AbN83O9yKDroGsPNYK4ZbKn1finFlJovJJtboL4BOwVL?=
 =?iso-8859-2?Q?5E16LJzKQLYKpKir21GYrj54Je0+tRjfsOzs6IIF486e7UYfbfIPMd40bl?=
 =?iso-8859-2?Q?9Ya3or3KyFjEhxslTgCgkawLrToqt9ho+YN82Dk261l7yjSLoIOa6IZ7NW?=
 =?iso-8859-2?Q?VzaFRgAhUHgkMWRk0L30o3j/YdXBWxenJ2CGvgHrRTZHe9vuegG1ZTJjCr?=
 =?iso-8859-2?Q?VH6XtTOg4cjm8SrBUOWHFfvqJkNXN5AZZnuAqnpK2L/b1iPkDC2N8kAb9m?=
 =?iso-8859-2?Q?SB1a6AgjfUB/1b0Cid6664aa/qDK7/lgSRZyE4iBgbiiV8r3/A1RicDRXo?=
 =?iso-8859-2?Q?RluvnFZKIDsUSUbmIaUFDcWLb6ZbJGfk1ClS/S52z8ffvz75m2nvXhuuq/?=
 =?iso-8859-2?Q?hTVLpZMTSWhBzlLnIiDZ45vr3+eIWWboZxro64b/dHTykqHTidHDB1MlXS?=
 =?iso-8859-2?Q?RlP85w51JD9ATXMG2J/qu1d2zXWJdzfjxycJRnrOSj8zEtIXQZAVAwPTZh?=
 =?iso-8859-2?Q?P6qzpBVV970OKp4Uv1LDO/HrMJ0bZsc4qNNivmvMEUL3u5VlqqUDx58j7i?=
 =?iso-8859-2?Q?UVUMcCf4nV1TR/YenrmzvTBPFbXdHMmHo70VruteXrquiAjW3ShFurvDml?=
 =?iso-8859-2?Q?t7+A3B/ZioO0tJoHIavNZQWrWnkjSwGxxMyrIN8dHS2q+nm49+Ou5hZArm?=
 =?iso-8859-2?Q?Z42D+SieAs0K+YIFlAG5JSWTV6aVKkEUt/xVu8dHrmHLGyV+umQtmUbJqO?=
 =?iso-8859-2?Q?yXMvEduIBI?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c7ffd28-ddf1-467b-e2c4-08d992f3948a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2021 11:28:31.4871 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x8OdKpXQ1C6A1nwXUJO2eIXDn/1tNJUE+l4yjxqqAMCQYfdETzgSJ1AeSEzkdU8QaRL2hUGpyAXsKmIm0OyPhDekDZ+LdEspTVA7u/ovV+E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5589
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Add support for VF
 rate limiting
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: poniedzia=B3ek, 13 wrze=B6nia 2021 20:22
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Add support for VF ra=
te
> limiting
> =

> From: Brett Creeley <brett.creeley@intel.com>
> =

> Implement ndo_set_vf_rate to support setting of min_tx_rate and
> max_tx_rate; set the appropriate bandwidth in the scheduler for the node
> representing the specified VF VSI.
> =

> Co-developed-by: Tarun Singh <tarun.k.singh@intel.com>
> Signed-off-by: Tarun Singh <tarun.k.singh@intel.com>
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v2:
>  - Make ice_sched_set_node_bw_lmt_per_tc() static
>  - Move ice_cfg_vsi_bw_lmt_per_tc() and ice_cfg_dflt_vsi_bw_lmt_per_tc()
>    to avoid forward declaration of ice_sched_set_node_bw_lmt_per_tc()
> =

>  drivers/net/ethernet/intel/ice/ice_lib.c      | 174 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   4 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |   1 +
>  drivers/net/ethernet/intel/ice/ice_sched.c    | 130 +++++++++++++
>  drivers/net/ethernet/intel/ice/ice_sched.h    |   6 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 160 +++++++++++++++-
> .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  15 +-
>  7 files changed, 486 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index c6d849222dfa..fa8f42e80851 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3590,6 +3590,180 @@ int ice_clear_dflt_vsi(struct ice_sw *sw)
>  	return 0;
>  }
> =

> +/**
> + * ice_get_link_speed_mbps - get link speed in Mbps
> + * @vsi: the VSI whose link speed is being queried
> + *
> + * Return current VSI link speed and 0 if the speed is unknown.
> + */
> +int ice_get_link_speed_mbps(struct ice_vsi *vsi) {
> +	switch (vsi->port_info->phy.link_info.link_speed) {
> +	case ICE_AQ_LINK_SPEED_100GB:
> +		return SPEED_100000;
> +	case ICE_AQ_LINK_SPEED_50GB:
> +		return SPEED_50000;
> +	case ICE_AQ_LINK_SPEED_40GB:
> +		return SPEED_40000;
> +	case ICE_AQ_LINK_SPEED_25GB:
> +		return SPEED_25000;
> +	case ICE_AQ_LINK_SPEED_20GB:
> +		return SPEED_20000;
> +	case ICE_AQ_LINK_SPEED_10GB:
> +		return SPEED_10000;
> +	case ICE_AQ_LINK_SPEED_5GB:
> +		return SPEED_5000;
> +	case ICE_AQ_LINK_SPEED_2500MB:
> +		return SPEED_2500;
> +	case ICE_AQ_LINK_SPEED_1000MB:
> +		return SPEED_1000;
> +	case ICE_AQ_LINK_SPEED_100MB:
> +		return SPEED_100;
> +	case ICE_AQ_LINK_SPEED_10MB:
> +		return SPEED_10;
> +	case ICE_AQ_LINK_SPEED_UNKNOWN:
> +	default:
> +		return 0;
> +	}
> +}
> +
> +/**
> + * ice_get_link_speed_kbps - get link speed in Kbps
> + * @vsi: the VSI whose link speed is being queried
> + *
> + * Return current VSI link speed and 0 if the speed is unknown.
> + */
> +static int ice_get_link_speed_kbps(struct ice_vsi *vsi) {
> +	int speed_mbps;
> +
> +	speed_mbps =3D ice_get_link_speed_mbps(vsi);
> +
> +	return speed_mbps * 1000;
> +}
> +
> +/**
> + * ice_set_min_bw_limit - setup minimum BW limit for Tx based on
> +min_tx_rate
> + * @vsi: VSI to be configured
> + * @min_tx_rate: min Tx rate in Kbps to be configured as BW limit
> + *
> + * If the min_tx_rate is specified as 0 that means to clear the minimum
> +BW limit
> + * profile, otherwise a non-zero value will force a minimum BW limit
> +for the VSI
> + * on TC 0.
> + */
> +int ice_set_min_bw_limit(struct ice_vsi *vsi, u64 min_tx_rate) {
> +	struct ice_pf *pf =3D vsi->back;
> +	enum ice_status status;
> +	struct device *dev;
> +	int speed;
> +
> +	dev =3D ice_pf_to_dev(pf);
> +	if (!vsi->port_info) {
> +		dev_dbg(dev, "VSI %d, type %u specified doesn't have valid
> port_info\n",
> +			vsi->idx, vsi->type);
> +		return -EINVAL;
> +	}
> +
> +	speed =3D ice_get_link_speed_kbps(vsi);
> +	if (min_tx_rate > (u64)speed) {
> +		dev_err(dev, "invalid min Tx rate %llu Kbps specified for %s
> %d is greater than current link speed %u Kbps\n",
> +			min_tx_rate, ice_vsi_type_str(vsi->type), vsi->idx,
> +			speed);
> +		return -EINVAL;
> +	}
> +
> +	/* Configure min BW for VSI limit */
> +	if (min_tx_rate) {
> +		status =3D ice_cfg_vsi_bw_lmt_per_tc(vsi->port_info, vsi->idx,
> 0,
> +						   ICE_MIN_BW,
> min_tx_rate);
> +		if (status) {
> +			dev_err(dev, "failed to set min Tx rate(%llu Kbps) for
> %s %d\n",
> +				min_tx_rate, ice_vsi_type_str(vsi->type),
> +				vsi->idx);
> +			return -EIO;
> +		}
> +
> +		dev_dbg(dev, "set min Tx rate(%llu Kbps) for %s\n",
> +			min_tx_rate, ice_vsi_type_str(vsi->type));
> +	} else {
> +		status =3D ice_cfg_vsi_bw_dflt_lmt_per_tc(vsi->port_info,
> +							vsi->idx, 0,
> +							ICE_MIN_BW);
> +		if (status) {
> +			dev_err(dev, "failed to clear min Tx rate
> configuration for %s %d\n",
> +				ice_vsi_type_str(vsi->type), vsi->idx);
> +			return -EIO;
> +		}
> +
> +		dev_dbg(dev, "cleared min Tx rate configuration for %s
> %d\n",
> +			ice_vsi_type_str(vsi->type), vsi->idx);
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_set_max_bw_limit - setup maximum BW limit for Tx based on
> +max_tx_rate
> + * @vsi: VSI to be configured
> + * @max_tx_rate: max Tx rate in Kbps to be configured as BW limit
> + *
> + * If the max_tx_rate is specified as 0 that means to clear the maximum
> +BW limit
> + * profile, otherwise a non-zero value will force a maximum BW limit
> +for the VSI
> + * on TC 0.
> + */
> +int ice_set_max_bw_limit(struct ice_vsi *vsi, u64 max_tx_rate) {
> +	struct ice_pf *pf =3D vsi->back;
> +	enum ice_status status;
> +	struct device *dev;
> +	int speed;
> +
> +	dev =3D ice_pf_to_dev(pf);
> +	if (!vsi->port_info) {
> +		dev_dbg(dev, "VSI %d, type %u specified doesn't have valid
> port_info\n",
> +			vsi->idx, vsi->type);
> +		return -EINVAL;
> +	}
> +
> +	speed =3D ice_get_link_speed_kbps(vsi);
> +	if (max_tx_rate > (u64)speed) {
> +		dev_err(dev, "invalid max Tx rate %llu Kbps specified for %s
> %d is greater than current link speed %u Kbps\n",
> +			max_tx_rate, ice_vsi_type_str(vsi->type), vsi->idx,
> +			speed);
> +		return -EINVAL;
> +	}
> +
> +	/* Configure max BW for VSI limit */
> +	if (max_tx_rate) {
> +		status =3D ice_cfg_vsi_bw_lmt_per_tc(vsi->port_info, vsi->idx,
> 0,
> +						   ICE_MAX_BW,
> max_tx_rate);
> +		if (status) {
> +			dev_err(dev, "failed setting max Tx rate(%llu Kbps)
> for %s %d\n",
> +				max_tx_rate, ice_vsi_type_str(vsi->type),
> +				vsi->idx);
> +			return -EIO;
> +		}
> +
> +		dev_dbg(dev, "set max Tx rate(%llu Kbps) for %s %d\n",
> +			max_tx_rate, ice_vsi_type_str(vsi->type), vsi->idx);
> +	} else {
> +		status =3D ice_cfg_vsi_bw_dflt_lmt_per_tc(vsi->port_info,
> +							vsi->idx, 0,
> +							ICE_MAX_BW);
> +		if (status) {
> +			dev_err(dev, "failed clearing max Tx rate
> configuration for %s %d\n",
> +				ice_vsi_type_str(vsi->type), vsi->idx);
> +			return -EIO;
> +		}
> +
> +		dev_dbg(dev, "cleared max Tx rate configuration for %s
> %d\n",
> +			ice_vsi_type_str(vsi->type), vsi->idx);
> +	}
> +
> +	return 0;
> +}
> +
>  /**
>   * ice_set_link - turn on/off physical link
>   * @vsi: VSI to modify physical link on diff --git
> a/drivers/net/ethernet/intel/ice/ice_lib.h
> b/drivers/net/ethernet/intel/ice/ice_lib.h
> index b443ea46274f..0cef9b665d8c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.h
> @@ -116,7 +116,9 @@ bool ice_is_vsi_dflt_vsi(struct ice_sw *sw, struct
> ice_vsi *vsi);  int ice_set_dflt_vsi(struct ice_sw *sw, struct ice_vsi *v=
si);
> =

>  int ice_clear_dflt_vsi(struct ice_sw *sw);
> -
> +int ice_set_min_bw_limit(struct ice_vsi *vsi, u64 min_tx_rate); int
> +ice_set_max_bw_limit(struct ice_vsi *vsi, u64 max_tx_rate); int
> +ice_get_link_speed_mbps(struct ice_vsi *vsi);
>  int ice_vsi_update_security(struct ice_vsi *vsi,
>  			    void (*fill)(struct ice_vsi_ctx *));
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index e8e114db8304..1d1a0a359c7b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -7411,6 +7411,7 @@ static const struct net_device_ops ice_netdev_ops
> =3D {
>  	.ndo_set_vf_vlan =3D ice_set_vf_port_vlan,
>  	.ndo_set_vf_link_state =3D ice_set_vf_link_state,
>  	.ndo_get_vf_stats =3D ice_get_vf_stats,
> +	.ndo_set_vf_rate =3D ice_set_vf_bw,
>  	.ndo_vlan_rx_add_vid =3D ice_vlan_rx_add_vid,
>  	.ndo_vlan_rx_kill_vid =3D ice_vlan_rx_kill_vid,
>  	.ndo_setup_tc =3D ice_setup_tc,
> diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c
> b/drivers/net/ethernet/intel/ice/ice_sched.c
> index 2d9b10277186..a3b957621a03 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sched.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sched.c
> @@ -3783,6 +3783,136 @@ ice_cfg_q_bw_dflt_lmt(struct ice_port_info *pi,
> u16 vsi_handle, u8 tc,
>  				      ICE_SCHED_DFLT_BW);
>  }
> =

> +/**
> + * ice_sched_get_node_by_id_type - get node from ID type
> + * @pi: port information structure
> + * @id: identifier
> + * @agg_type: type of aggregator
> + * @tc: traffic class
> + *
> + * This function returns node identified by ID of type aggregator, and
> + * based on traffic class (TC). This function needs to be called with
> + * the scheduler lock held.
> + */
> +static struct ice_sched_node *
> +ice_sched_get_node_by_id_type(struct ice_port_info *pi, u32 id,
> +			      enum ice_agg_type agg_type, u8 tc) {
> +	struct ice_sched_node *node =3D NULL;
> +
> +	switch (agg_type) {
> +	case ICE_AGG_TYPE_VSI: {
> +		struct ice_vsi_ctx *vsi_ctx;
> +		u16 vsi_handle =3D (u16)id;
> +
> +		if (!ice_is_vsi_valid(pi->hw, vsi_handle))
> +			break;
> +		/* Get sched_vsi_info */
> +		vsi_ctx =3D ice_get_vsi_ctx(pi->hw, vsi_handle);
> +		if (!vsi_ctx)
> +			break;
> +		node =3D vsi_ctx->sched.vsi_node[tc];
> +		break;
> +	}
> +
> +	case ICE_AGG_TYPE_AGG: {
> +		struct ice_sched_node *tc_node;
> +
> +		tc_node =3D ice_sched_get_tc_node(pi, tc);
> +		if (tc_node)
> +			node =3D ice_sched_get_agg_node(pi, tc_node, id);
> +		break;
> +	}
> +
> +	default:
> +		break;
> +	}
> +
> +	return node;
> +}
> +
> +/**
> + * ice_sched_set_node_bw_lmt_per_tc - set node BW limit per TC
> + * @pi: port information structure
> + * @id: ID (software VSI handle or AGG ID)
> + * @agg_type: aggregator type (VSI or AGG type node)
> + * @tc: traffic class
> + * @rl_type: min or max
> + * @bw: bandwidth in Kbps
> + *
> + * This function sets BW limit of VSI or Aggregator scheduling node
> + * based on TC information from passed in argument BW.
> + */
> +static enum ice_status
> +ice_sched_set_node_bw_lmt_per_tc(struct ice_port_info *pi, u32 id,
> +				 enum ice_agg_type agg_type, u8 tc,
> +				 enum ice_rl_type rl_type, u32 bw)
> +{
> +	enum ice_status status =3D ICE_ERR_PARAM;
> +	struct ice_sched_node *node;
> +
> +	if (!pi)
> +		return status;
> +
> +	if (rl_type =3D=3D ICE_UNKNOWN_BW)
> +		return status;
> +
> +	mutex_lock(&pi->sched_lock);
> +	node =3D ice_sched_get_node_by_id_type(pi, id, agg_type, tc);
> +	if (!node) {
> +		ice_debug(pi->hw, ICE_DBG_SCHED, "Wrong id, agg type, or
> tc\n");
> +		goto exit_set_node_bw_lmt_per_tc;
> +	}
> +	if (bw =3D=3D ICE_SCHED_DFLT_BW)
> +		status =3D ice_sched_set_node_bw_dflt_lmt(pi, node,
> rl_type);
> +	else
> +		status =3D ice_sched_set_node_bw_lmt(pi, node, rl_type,
> bw);
> +
> +exit_set_node_bw_lmt_per_tc:
> +	mutex_unlock(&pi->sched_lock);
> +	return status;
> +}
> +
> +/**
> + * ice_cfg_vsi_bw_lmt_per_tc - configure VSI BW limit per TC
> + * @pi: port information structure
> + * @vsi_handle: software VSI handle
> + * @tc: traffic class
> + * @rl_type: min or max
> + * @bw: bandwidth in Kbps
> + *
> + * This function configures BW limit of VSI scheduling node based on TC
> + * information.
> + */
> +enum ice_status
> +ice_cfg_vsi_bw_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 t=
c,
> +			  enum ice_rl_type rl_type, u32 bw)
> +{
> +	return ice_sched_set_node_bw_lmt_per_tc(pi, vsi_handle,
> +						ICE_AGG_TYPE_VSI,
> +						tc, rl_type, bw);
> +}
> +
> +/**
> + * ice_cfg_vsi_bw_dflt_lmt_per_tc - configure default VSI BW limit per
> +TC
> + * @pi: port information structure
> + * @vsi_handle: software VSI handle
> + * @tc: traffic class
> + * @rl_type: min or max
> + *
> + * This function configures default BW limit of VSI scheduling node
> +based on TC
> + * information.
> + */
> +enum ice_status
> +ice_cfg_vsi_bw_dflt_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle,
> u8 tc,
> +			       enum ice_rl_type rl_type)
> +{
> +	return ice_sched_set_node_bw_lmt_per_tc(pi, vsi_handle,
> +						ICE_AGG_TYPE_VSI,
> +						tc, rl_type,
> +						ICE_SCHED_DFLT_BW);
> +}
> +
>  /**
>   * ice_cfg_rl_burst_size - Set burst size value
>   * @hw: pointer to the HW struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h
> b/drivers/net/ethernet/intel/ice/ice_sched.h
> index fdf7a5882f07..11ad8336899f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sched.h
> +++ b/drivers/net/ethernet/intel/ice/ice_sched.h
> @@ -104,6 +104,12 @@ ice_cfg_q_bw_lmt(struct ice_port_info *pi, u16
> vsi_handle, u8 tc,  enum ice_status  ice_cfg_q_bw_dflt_lmt(struct
> ice_port_info *pi, u16 vsi_handle, u8 tc,
>  		      u16 q_handle, enum ice_rl_type rl_type);
> +enum ice_status
> +ice_cfg_vsi_bw_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle, u8 t=
c,
> +			  enum ice_rl_type rl_type, u32 bw); enum ice_status
> +ice_cfg_vsi_bw_dflt_lmt_per_tc(struct ice_port_info *pi, u16 vsi_handle,
> u8 tc,
> +			       enum ice_rl_type rl_type);
>  enum ice_status ice_cfg_rl_burst_size(struct ice_hw *hw, u32 bytes);  vo=
id
> ice_sched_replay_agg_vsi_preinit(struct ice_hw *hw);  void
> ice_sched_replay_agg(struct ice_hw *hw); diff --git
> a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index ee3051b8ed15..42fb112fdea1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -5,6 +5,7 @@
>  #include "ice_base.h"
>  #include "ice_lib.h"
>  #include "ice_fltr.h"
> +#include "ice_dcb_lib.h"
>  #include "ice_flow.h"
>  #include "ice_eswitch.h"
>  #include "ice_virtchnl_allowlist.h"
> @@ -768,6 +769,40 @@ static int ice_calc_vf_first_vector_idx(struct ice_pf
> *pf, struct ice_vf *vf)
>  	return pf->sriov_base_vector + vf->vf_id * pf->num_msix_per_vf;  }
> =

> +/**
> + * ice_vf_rebuild_host_tx_rate_cfg - re-apply the Tx rate limiting
> +configuration
> + * @vf: VF to re-apply the configuration for
> + *
> + * Called after a VF VSI has been re-added/rebuild during reset. The PF
> +driver
> + * needs to re-apply the host configured Tx rate limiting configuration.
> + */
> +static int ice_vf_rebuild_host_tx_rate_cfg(struct ice_vf *vf) {
> +	struct device *dev =3D ice_pf_to_dev(vf->pf);
> +	struct ice_vsi *vsi =3D ice_get_vf_vsi(vf);
> +	int err;
> +
> +	if (vf->min_tx_rate) {
> +		err =3D ice_set_min_bw_limit(vsi, (u64)vf->min_tx_rate *
> 1000);
> +		if (err) {
> +			dev_err(dev, "failed to set min Tx rate to %d Mbps
> for VF %u, error %d\n",
> +				vf->min_tx_rate, vf->vf_id, err);
> +			return err;
> +		}
> +	}
> +
> +	if (vf->max_tx_rate) {
> +		err =3D ice_set_max_bw_limit(vsi, (u64)vf->max_tx_rate *
> 1000);
> +		if (err) {
> +			dev_err(dev, "failed to set max Tx rate to %d Mbps
> for VF %u, error %d\n",
> +				vf->max_tx_rate, vf->vf_id, err);
> +			return err;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
>  /**
>   * ice_vf_rebuild_host_vlan_cfg - add VLAN 0 filter or rebuild the Port =
VLAN
>   * @vf: VF to add MAC filters for
> @@ -1309,6 +1344,11 @@ static void ice_vf_rebuild_host_cfg(struct ice_vf
> *vf)
>  	if (ice_vf_rebuild_host_vlan_cfg(vf))
>  		dev_err(dev, "failed to rebuild VLAN configuration for VF
> %u\n",
>  			vf->vf_id);
> +
> +	if (ice_vf_rebuild_host_tx_rate_cfg(vf))
> +		dev_err(dev, "failed to rebuild Tx rate limiting configuration
> for VF %u\n",
> +			vf->vf_id);
> +
>  	/* rebuild aggregator node config for main VF VSI */
>  	ice_vf_rebuild_aggregator_node_cfg(vsi);
>  }
> @@ -4719,8 +4759,8 @@ ice_get_vf_cfg(struct net_device *netdev, int
> vf_id, struct ifla_vf_info *ivi)
>  		ivi->linkstate =3D IFLA_VF_LINK_STATE_ENABLE;
>  	else
>  		ivi->linkstate =3D IFLA_VF_LINK_STATE_DISABLE;
> -	ivi->max_tx_rate =3D vf->tx_rate;
> -	ivi->min_tx_rate =3D 0;
> +	ivi->max_tx_rate =3D vf->max_tx_rate;
> +	ivi->min_tx_rate =3D vf->min_tx_rate;
>  	return 0;
>  }
> =

> @@ -4899,6 +4939,122 @@ int ice_set_vf_link_state(struct net_device
> *netdev, int vf_id, int link_state)
>  	return 0;
>  }
> =

> +/**
> + * ice_calc_all_vfs_min_tx_rate - calculate cumulative min Tx rate on
> +all VFs
> + * @pf: PF associated with VFs
> + */
> +static int ice_calc_all_vfs_min_tx_rate(struct ice_pf *pf) {
> +	int rate =3D 0, i;
> +
> +	ice_for_each_vf(pf, i)
> +		rate +=3D pf->vf[i].min_tx_rate;
> +
> +	return rate;
> +}
> +
> +/**
> + * ice_min_tx_rate_oversubscribed - check if min Tx rate causes
> +oversubscription
> + * @vf: VF trying to configure min_tx_rate
> + * @min_tx_rate: min Tx rate in Mbps
> + *
> + * Check if the min_tx_rate being passed in will cause oversubscription
> +of total
> + * min_tx_rate based on the current link speed and all other VFs
> +configured
> + * min_tx_rate
> + *
> + * Return true if the passed min_tx_rate would cause oversubscription,
> +else
> + * return false
> + */
> +static bool
> +ice_min_tx_rate_oversubscribed(struct ice_vf *vf, int min_tx_rate) {
> +	int link_speed_mbps =3D
> ice_get_link_speed_mbps(ice_get_vf_vsi(vf));
> +	int all_vfs_min_tx_rate =3D ice_calc_all_vfs_min_tx_rate(vf->pf);
> +
> +	/* this VF's previous rate is being overwritten */
> +	all_vfs_min_tx_rate -=3D vf->min_tx_rate;
> +
> +	if (all_vfs_min_tx_rate + min_tx_rate > link_speed_mbps) {
> +		dev_err(ice_pf_to_dev(vf->pf), "min_tx_rate of %d Mbps
> on VF %u would cause oversubscription of %d Mbps based on the current
> link speed %d Mbps\n",
> +			min_tx_rate, vf->vf_id,
> +			all_vfs_min_tx_rate + min_tx_rate -
> link_speed_mbps,
> +			link_speed_mbps);
> +		return true;
> +	}
> +
> +	return false;
> +}
> +
> +/**
> + * ice_set_vf_bw - set min/max VF bandwidth
> + * @netdev: network interface device structure
> + * @vf_id: VF identifier
> + * @min_tx_rate: Minimum Tx rate in Mbps
> + * @max_tx_rate: Maximum Tx rate in Mbps  */ int ice_set_vf_bw(struct
> +net_device *netdev, int vf_id, int min_tx_rate,
> +	      int max_tx_rate)
> +{
> +	struct ice_pf *pf =3D ice_netdev_to_pf(netdev);
> +	struct ice_vsi *vsi;
> +	struct device *dev;
> +	struct ice_vf *vf;
> +	int ret;
> +
> +	dev =3D ice_pf_to_dev(pf);
> +	if (ice_validate_vf_id(pf, vf_id))
> +		return -EINVAL;
> +
> +	vf =3D &pf->vf[vf_id];
> +	ret =3D ice_check_vf_ready_for_cfg(vf);
> +	if (ret)
> +		return ret;
> +
> +	vsi =3D ice_get_vf_vsi(vf);
> +
> +	/* when max_tx_rate is zero that means no max Tx rate limiting, so
> only
> +	 * check if max_tx_rate is non-zero
> +	 */
> +	if (max_tx_rate && min_tx_rate > max_tx_rate) {
> +		dev_err(dev, "Cannot set min Tx rate %d Mbps greater than
> max Tx rate %d Mbps\n",
> +			min_tx_rate, max_tx_rate);
> +		return -EINVAL;
> +	}
> +
> +	if (min_tx_rate && ice_is_dcb_active(pf)) {
> +		dev_err(dev, "DCB on PF is currently enabled. VF min Tx rate
> limiting not allowed on this PF.\n");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	if (ice_min_tx_rate_oversubscribed(vf, min_tx_rate))
> +		return -EINVAL;
> +
> +	if (vf->min_tx_rate !=3D (unsigned int)min_tx_rate) {
> +		ret =3D ice_set_min_bw_limit(vsi, (u64)min_tx_rate * 1000);
> +		if (ret) {
> +			dev_err(dev, "Unable to set min-tx-rate for VF
> %d\n",
> +				vf->vf_id);
> +			return ret;
> +		}
> +
> +		vf->min_tx_rate =3D min_tx_rate;
> +	}
> +
> +	if (vf->max_tx_rate !=3D (unsigned int)max_tx_rate) {
> +		ret =3D ice_set_max_bw_limit(vsi, (u64)max_tx_rate * 1000);
> +		if (ret) {
> +			dev_err(dev, "Unable to set max-tx-rate for VF
> %d\n",
> +				vf->vf_id);
> +			return ret;
> +		}
> +
> +		vf->max_tx_rate =3D max_tx_rate;
> +	}
> +
> +	return 0;
> +}
> +
>  /**
>   * ice_get_vf_stats - populate some stats for the VF
>   * @netdev: the netdev of the PF
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> index 6333b651d18e..9de19cc97f48 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> @@ -125,7 +125,8 @@ struct ice_vf {
>  	 * the main LAN VSI for the PF.
>  	 */
>  	u16 lan_vsi_num;		/* ID as used by firmware */
> -	unsigned int tx_rate;		/* Tx bandwidth limit in Mbps */
> +	unsigned int min_tx_rate;	/* Minimum Tx bandwidth limit in
> Mbps */
> +	unsigned int max_tx_rate;	/* Maximum Tx bandwidth limit in
> Mbps */
>  	DECLARE_BITMAP(vf_states, ICE_VF_STATES_NBITS);	/* VF runtime
> states */
> =

>  	u64 num_inval_msgs;		/* number of continuous invalid msgs
> */
> @@ -172,6 +173,10 @@ int
>  ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, =
u8
> qos,
>  		     __be16 vlan_proto);
> =

> +int
> +ice_set_vf_bw(struct net_device *netdev, int vf_id, int min_tx_rate,
> +	      int max_tx_rate);
> +
>  int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted);
> =

>  int ice_set_vf_link_state(struct net_device *netdev, int vf_id, int
> link_state); @@ -304,6 +309,14 @@ ice_set_vf_link_state(struct net_device
> __always_unused *netdev,
>  	return -EOPNOTSUPP;
>  }
> =

> +static inline int
> +ice_set_vf_bw(struct net_device __always_unused *netdev,
> +	      int __always_unused vf_id, int __always_unused min_tx_rate,
> +	      int __always_unused max_tx_rate) {
> +	return -EOPNOTSUPP;
> +}
> +
>  static inline int
>  ice_calc_vf_reg_idx(struct ice_vf __always_unused *vf,
>  		    struct ice_q_vector __always_unused *q_vector)
> --
> 2.20.1
> =


Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
