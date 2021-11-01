Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F34E04419C1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Nov 2021 11:20:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71FF06063C;
	Mon,  1 Nov 2021 10:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d4wwiXTtP-yk; Mon,  1 Nov 2021 10:20:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F24F6059B;
	Mon,  1 Nov 2021 10:20:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2B5CF1BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 10:20:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 195916059B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 10:20:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WW7_G0bSYahV for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Nov 2021 10:20:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0CEC2600D1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 10:20:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="294445862"
X-IronPort-AV: E=Sophos;i="5.87,198,1631602800"; d="scan'208";a="294445862"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 03:20:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,198,1631602800"; d="scan'208";a="539744987"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 01 Nov 2021 03:20:49 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 03:20:48 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 03:20:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 1 Nov 2021 03:20:48 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 1 Nov 2021 03:20:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oXLvOZHbP42RJaomi89jTF1j+ToNJELnIoCgKuCU0xcZpUVHzCfoS7fFiQDXjBIW/BePGfdzmfY+a249hP6XyOiW2FAN7NH6vOmaUoDGjS83X7ZicA4u1Bkyb2vFEx9txJ+HGEpYMHz4yrKZ4juUVrzMsWxc55YPQ18u2invoZVXBeOkPtdxMYBOw3hG0okjrN21G95/LGidoRb+8najmNElWRqGF8P4d+VIIBlZ5MGkvsbVExI4b34TA5G2fwV9yScJ7v0lu6BfpRMtYtd+oOS3NN4m5NxiPKoGVazKO129zE0M3op/jrsl2mQTWyA+7Kg9KAB/mol5CkN4Yffa0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dy0ZyBVBiXf9/fDzOsN3HiO36EpG0sWA2oAVGsBVAuE=;
 b=LSzMhOETdrwXYaGUBIrq3axJ3P8eDHVrVOubUBoPFPKsrot5ivrYEFlnTD0dzq1jZU0CgRahhsZA/Z1ojAozQYrCd/TBiUFuD+9D7p2S5l/fLh9/rr77xa7dRvzeLu4xI2xS9OQO/IQhPCpiasU5QSSyuI1aBFNewtP5DBBg4B1BeK+fS/mUkGnEpCjvhmF3vE2c0V8g7O7iBGrsqwgxxHiqWz3GUNjm5hD0bY1oqGOMPkAikDjeXE4aF4ElDn6NWjGNSRh+IT+EBbigvo9ynGZ8dnHpu4QDdYfUyPBLsV6vrENa9ZWIEoazPDFqGCeB9j1AABwHKC0sQINGkH0Vsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dy0ZyBVBiXf9/fDzOsN3HiO36EpG0sWA2oAVGsBVAuE=;
 b=LcT6j6qwPFC9b2Fg4nNucTeD/rp3GvSYlLUMlQX09mjGACFiR07U3BXl1Ljgs2VocLlM7VPBi9+ZrKiLsxQhUqV/znam03vJ8GBqatSb3J1DqN3yOhIAk6dg+2Mz+zzRR19beq4a9zZaM7tuLjCyQPSgr7kMiMPn4B4LFbC6+yM=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.15; Mon, 1 Nov 2021 10:20:47 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%6]) with mapi id 15.20.4649.019; Mon, 1 Nov 2021
 10:20:47 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: Fix not stopping Tx queues
 for VFs
Thread-Index: AQHXpcNuNrevf+bf1kGa+31UrozzN6vuyJTA
Date: Mon, 1 Nov 2021 10:20:47 +0000
Message-ID: <DM8PR11MB5621ACCA9DA616426E8EE369AB8A9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210909213809.27461-1-brett.creeley@intel.com>
In-Reply-To: <20210909213809.27461-1-brett.creeley@intel.com>
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
x-ms-office365-filtering-correlation-id: f1d1f1c3-b13c-4c5a-f9f2-08d99d21456a
x-ms-traffictypediagnostic: DM8PR11MB5624:
x-microsoft-antispam-prvs: <DM8PR11MB56249ABC5E68B7DCD455A5F7AB8A9@DM8PR11MB5624.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BXZFe1Oq8+P+KLGr0MolD55e2fh5voOy/qP0HDZEez3jJiEdHFcgFZKO4gVyX8LhjoT4FRhHma2p/ETmsScnKLYUmvno1hWrQ3W6kQ8nSow55hhwqX2xYf6CBlecmUqM4u6IFaDDQeWfL3QVp6U7kd52bxBHSvOPwX6hCjWZ/6+LCMeUUcBPbogNt8POyFj5r9a3Ot7IomH60R9Ma4GLrbiOAlWus/XAf+GlDC862dGievoNO/KdSSQvk04bgS8OL876hbakdCszby4RGDnUnjtYp0fYt21joG/uMem8JVV7qyZerXXzkFhgKXso1fXeKaBpP0CKusm1o6BxPu8vpkXTKzfOffRoSSbYV58K3BZ74fNMwL9H/HTs+NuwHh6yOAJdfrj4R9/hvNwYSAwaBfNOx2iNIRrObrn0hjZE1keiiTfFnijAKZM4JcmWfpg9mvniiiUP0wD4j76gEffl/Kx0bl96fomxwNYC/Jbx/fF/gb9ULpmt0enuctHNSuFe+LnrgjpAcKkjcNX/ASAdVsOpifVsSxviNChWXMIko06XbLllMcw8/siULJbw+hbXPsFG28RPKqpJsXW5VY2nBXw6ZceJ7aXW0vew5IsEv37dSWPsRov5dGmzgHi0EwQZ4G/ixJ7EGUBZvlBg+aWuYNFjwCmkS3CxC9x9flVjMhxfAlTIM0Jxub6CezyHSleeYDdo43vq3X5FNcBI5j6ccw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(110136005)(55016002)(38100700002)(71200400001)(186003)(26005)(4326008)(83380400001)(316002)(508600001)(9686003)(66574015)(122000001)(2906002)(107886003)(76116006)(66946007)(52536014)(66476007)(66556008)(38070700005)(6506007)(53546011)(8936002)(8676002)(64756008)(66446008)(33656002)(86362001)(82960400001)(5660300002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?aygNu1PT0oEtx4S5OrU//wXdqu0mpoeFHphwiUoNcOwj81Ype87mx1GA2R?=
 =?iso-8859-2?Q?1/BXYtXeyyuUg7hHgNKlHSEGSIjs6RHxnOgMcw3+NGF+DdDGZ39dAXiJg8?=
 =?iso-8859-2?Q?k7H9gs7UGeVvthfsRdv3PrT7Qw8674upsCxxMf9jIdBmrmGBwDBPrjOx/q?=
 =?iso-8859-2?Q?9ewkIoieDDxhwkOHGYFnnHJMRyIB7YWbuJ7cl/Vijm6v9rj19XU12dHJvF?=
 =?iso-8859-2?Q?l7CYrw1UDaEvIYOv3fwBsu6a/+zzhSAOtF2qq5s0/N7mvQZb/xSTQb8rlw?=
 =?iso-8859-2?Q?KnXQQfKWGUpIGP4KxiUl4ysawo1/IuxwWP1SfPP2SHXvDmUVs/6nnWpvto?=
 =?iso-8859-2?Q?174gjsRDBZ1by3suH1eNFI3xCJKWdoQS+E/XsD6OYx49B6cqYz5n5ZNEcB?=
 =?iso-8859-2?Q?X8GjZIe8lWlnKfiZa6UPd88ZagqPWLl8lSWHa0bNpfaY1I+ZkOrwiTs+LY?=
 =?iso-8859-2?Q?R+V5TmsvNHc4FPSjACuSv2FwIi12q7qjK/OpHXk7JaJx5jtKJ9Fn512GJc?=
 =?iso-8859-2?Q?0OS08DPph7cjMb7oClQhXmloZAM5KFazx1NxlgSP7RWxPCzXqhV2GiQZyH?=
 =?iso-8859-2?Q?ef/vtqraG16r07K7R0Dt4tv9LH0Heqb+cCtmtfDboLNbJL9S55273eAotZ?=
 =?iso-8859-2?Q?YqWoVxMVMM7QFy6OawGhfBZzKn0BOnB3tN9feH73cxmabRK+FxRuQ6WSHb?=
 =?iso-8859-2?Q?995hbuJHzjHJeOAZ27ipj4N7Gg52uvurYhs/GbDioRYIlNZiXV9uln9vXQ?=
 =?iso-8859-2?Q?cGh3GpKeWDxskp1o/5SRYBPb6b6ddWU/qKiw4qoIu7UJUWorjVsNt0PdgG?=
 =?iso-8859-2?Q?aD9jUgihNBdYxrq9N3wz6Ig6z2aC6zGsPgyZo1hl3Utq1hUxnpNr2Owu3g?=
 =?iso-8859-2?Q?PD0lzzftli6t75fxzJdCc8WZJ4tgFQgGfo6rODkISRkXHfqo5KhWeFyGZH?=
 =?iso-8859-2?Q?t7gXsQqQryMUPlSflTBvHZ/pDqd6Uj82eAdKp+kz+osme8OJZ8k0T+6NmF?=
 =?iso-8859-2?Q?Lc1O1lCQDaQmz4UyQ9UXzGlfFL5M+MSRaFdItVdTDuaGuOfOE+FGnp8EKy?=
 =?iso-8859-2?Q?GNjUK9c4tvrzfdnq49e5o4n/Pb/Ml6gantLikzk9GCBZrw9APB4bQdP93H?=
 =?iso-8859-2?Q?0OyphdY4OVk//8kh6GJW8E9E1zzdXK8C5kS/ZAYvVecS69tGdQjmlUzaEE?=
 =?iso-8859-2?Q?P0VQfWkinAQgypEDyZtedd6mW4ZxyM7CnowORDeTLls/4zJIkhRaEPIzWl?=
 =?iso-8859-2?Q?MtgJYwB+0c4Q4jrdyBENPpEYxHOCv4W93UMAU0NlFZS8ljyesknh9vjxUL?=
 =?iso-8859-2?Q?wHkAqv5HKn8XoLzrS8SXOhlyCOA7ESUWCvMaweCwF/rIAOtt9IT23sJnJt?=
 =?iso-8859-2?Q?lA+ngh56JL4/kpnujiN9yp34i2DqgDL65xNvGkWgTBgeWWfhcwPJhGp2Cz?=
 =?iso-8859-2?Q?NUSHETHYTZEo+VAUiKLuxc4jNm/un33Y/XNDWhFlv1loAz1Y95xe51f8bL?=
 =?iso-8859-2?Q?DYT7K8wUvCAYL2uSqDfemsSJ4jelF6Ghc47GiGqnCMsFVLnOrhn5zh/1/u?=
 =?iso-8859-2?Q?5BmYddzjp1O9cz1fFY8INKuBcDqEtUubcbodpLOJDRdCdIHUlnI0PX09qS?=
 =?iso-8859-2?Q?b/ISiDY7D4w5Owo7LDAv2iDqicNpvbAQFU0ObnQu80HYLRqxYYlH6JpayM?=
 =?iso-8859-2?Q?JJwEUWBWx+G2XQm/ZAox4wzxkkbDz9kRDhKnOhL68V4E5E888M2NV5D29V?=
 =?iso-8859-2?Q?aWUA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1d1f1c3-b13c-4c5a-f9f2-08d99d21456a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2021 10:20:47.2820 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HCTLIrHM5N2ESunxgse9w9oJCmqmOAxq+My08okhDY7km9FK1VANBCzUU/EX32zjHhzEnG4XH3CyqKgMw4UmoJ7r78B5GK4HR/iRDaZz+us=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5624
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix not stopping Tx
 queues for VFs
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Brett Creeley
> Sent: czwartek, 9 wrze=B6nia 2021 23:38
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix not stopping Tx queues=
 for
> VFs
> =

> When a VF is removed and/or reset its Tx queues need to be stopped from
> the PF. This is done by calling the ice_dis_vf_qs() function, which calls
> ice_vsi_stop_lan_tx_rings(). Currently
> ice_dis_vf_qs() is protected by the VF state bit ICE_VF_STATE_QS_ENA.
> Unfortunately, this is causing the Tx queues to not be disabled in some c=
ases
> and when the VF tries to re-enable/reconfigure its Tx queues over virtchnl
> the op is failing. This is because a VF can be reset and/or removed befor=
e the
> ICE_VF_STATE_QS_ENA bit is set, but the Tx queues were already configured
> via ice_vsi_cfg_single_txq() in the VIRTCHNL_OP_CONFIG_VSI_QUEUES op.
> However, the ICE_VF_STATE_QS_ENA bit is set on a successful
> VIRTCHNL_OP_ENABLE_QUEUES, which will always happen after the
> VIRTCHNL_OP_CONFIG_VSI_QUEUES op.
> =

> This was causing the following error message when loading the ice driver,
> creating VFs, and modifying VF trust in an endless loop:
> =

> [35274.192484] ice 0000:88:00.0: Failed to set LAN Tx queue context, erro=
r:
> ICE_ERR_PARAM [35274.193074] ice 0000:88:00.0: VF 0 failed opcode 6,
> retval: -5 [35274.193640] iavf 0000:88:01.0: PF returned error -5
> (IAVF_ERR_PARAM) to our request 6
> =

> Fix this by always calling ice_dis_vf_qs() and silencing the error messag=
e in
> ice_vsi_stop_tx_ring() since the calling code ignores the return anyway. =
Also,
> all other places that call ice_vsi_stop_tx_ring() catch the error, so thi=
s doesn't
> affect those flows since there was no change to the values the function
> returns.
> =

> Other solutions were considered (i.e. tracking which VF queues had been
> "started/configured" in VIRTCHNL_OP_CONFIG_VSI_QUEUES, but it seemed
> more complicated than it was worth. This solution also brings in the chan=
ce
> for other unexpected conditions due to invalid state bit checks.
> So, the proposed solution seemed like the best option since there is no h=
arm
> in failing to stop Tx queues that were never started.
> =

> This issue can be seen using the following commands:
> =

> for i in {0..50}; do
>         rmmod ice
>         modprobe ice
> =

>         sleep 1
> =

>         echo 1 > /sys/class/net/ens785f0/device/sriov_numvfs
>         echo 1 > /sys/class/net/ens785f1/device/sriov_numvfs
> =

>         ip link set ens785f1 vf 0 trust on
>         ip link set ens785f0 vf 0 trust on
> =

>         sleep 2
> =

>         echo 0 > /sys/class/net/ens785f0/device/sriov_numvfs
>         echo 0 > /sys/class/net/ens785f1/device/sriov_numvfs
>         sleep 1
>         echo 1 > /sys/class/net/ens785f0/device/sriov_numvfs
>         echo 1 > /sys/class/net/ens785f1/device/sriov_numvfs
> =

>         ip link set ens785f1 vf 0 trust on
>         ip link set ens785f0 vf 0 trust on done
> =

> Fixes: 77ca27c41705 ("ice: add support for
> virtchnl_queue_select.[tx|rx]_queues bitmap")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
> v2: Update Fixes tag
> =

>  drivers/net/ethernet/intel/ice/ice_base.c        | 2 +-
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 6 ++----
>  2 files changed, 3 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c
> b/drivers/net/ethernet/intel/ice/ice_base.c
> index c36057efc7ae..f74610442bda 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
