Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C474544F6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Nov 2021 11:27:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80DFE4044B;
	Wed, 17 Nov 2021 10:27:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ER4rCmR2Awrr; Wed, 17 Nov 2021 10:27:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B9924022C;
	Wed, 17 Nov 2021 10:27:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 98F5C1BF853
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 10:27:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 86B566067F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 10:27:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ETCOCTZmag8b for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Nov 2021 10:27:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 52D2B6066B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 10:27:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="220807139"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="220807139"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 02:27:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="506856124"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 17 Nov 2021 02:27:43 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 17 Nov 2021 02:27:42 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 17 Nov 2021 02:27:42 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 17 Nov 2021 02:27:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pc2/NxzCTvDiQihe31P3LBK70FQyeeH02fZdjPhofGJTT0J/3p6smxcLop4hj9T5xC8lyeRMrqK4+yYvd/985AdNm4h9V2BBLyclbCqoAY99+leVPbS0Bezwk+HNkhbgRNObnJKgxrzmJon70bvZ0Oq4vKqNhtFZyILGy5bk0PWMYRZTshmbiPC+4qUdbbIwITpduSTwzwxduWEXAjvSOgeDpH9lw5mGFlN58eCxPc6vcaLX6SP//amXXptQlxMoHCjjPsznBYzrYmOgekNQH125cUgyibAaUfVARvANEzKNJqojJpKm3adEaRXCmiMBtnFn4fdOT5vK3P9lScUd7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZZgOlZIIgF1pWv2ydQvOaUUsjzgzw6OAcOAUGXPOKxs=;
 b=e6HgRwr00JG33zsWxotkyyN3Ynkse4nRdF3/uvudqB9Bt9U/Xb6gA+B3BDBonNlNpDAa6uefN23vxlK7U2JwQtuYRgoV4ofo22B34cJcTNgeuEUDGb1lIUB/QdLoFTxpHLRKOk9a1ugEOl2kkyaN8SwGAuhm7oRiK8RDKwjuRh6mddCJdNEtAHF8QkonXUqIy1qhgbVK2ExSqzKCFBicBqTkNV38VrEbUPQjAVkbbmW3RIuxW7eVMI+uGDwF8+dIGiW7ez0CcRZ3+BC+FPhUbYisNu43Ya8HGZyyjFSPWWwtwXP+nbmsOeVjfS0fkiDhvVQ0mdBaWQqgcVyDJNCCKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZZgOlZIIgF1pWv2ydQvOaUUsjzgzw6OAcOAUGXPOKxs=;
 b=RylqzBpZIi5URnFFSG9UCk3dhoIHEw5wf/Kpn5SeU3nbpKI8s664Um48xM9Cfrp5r0VSJud8V7JTT0VpljV63ZHSKY0gA9DgPCZcaLGwuDDgPlwzA5GNXjDTwj5GIVUU2DQUWn3aYNsT1OyTYRSOFtMAvY6MCsJUVTVnRWSecSM=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.16; Wed, 17 Nov 2021 10:27:42 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%8]) with mapi id 15.20.4669.016; Wed, 17 Nov 2021
 10:27:41 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 14/15] iavf: return errno code
 instead of status code
Thread-Index: AQHXWWPyPGnLUm1ASUyZkc0fDizd86wIiI+w
Date: Wed, 17 Nov 2021 10:27:41 +0000
Message-ID: <DM8PR11MB5621EE379CD58A6542F88A55AB9A9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
 <20210604165335.33329-14-anthony.l.nguyen@intel.com>
In-Reply-To: <20210604165335.33329-14-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 8d952860-1be6-4b36-2534-08d9a9b4e327
x-ms-traffictypediagnostic: DM8PR11MB5621:
x-microsoft-antispam-prvs: <DM8PR11MB5621517CC8D7014A8E29A9CAAB9A9@DM8PR11MB5621.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Rqp4aiHknTAxY9IdGX37TGc+Z5ycVUkI2SJ+1Gx4Cmwu9SbTYdTlTipUMo/KV8Hi0khmhAE0MQSXHX6qIKUBe+bqOmpeeJ8IG89BjfwHbL0xREkPX+0aoWHz1RMuCIOwsIPsjQF4S3CqTlD7+9W4lF5R5yXn2oyjrw+cYseJ3wqiLHb190jzGCC7xYMiA60yocQLMU8l6ioidsfEg0L+t37ltEqKrFO2ISm+Q+Jorcab3HKavyOFQWfGRs01WIm2rDa2B9MVMX2pVaR6J2EbpyVTbO8GWSMgCpZ/zXl+98fYan46+SGMRlUXZlBrNH9ePxZCfvoBc3CLULOAyYxKH5riNgFhvftTZ/FILPP+SeVQlCYGKt4rl/SCmjCHv4uakEWCLzdIM8302c77ljifn575pmzNDnLy1U2hF6heIIYDgFky+1pF1ueSyT0HO5amq5BXO+iALNI1UXnON4tD22ZpAqYlxHF9+irQzM7UNMt67uQg0bYNNUkOBFRQ6tMdg9ieEByy9exF3TrMaHpv/38HWetNOTznRzRRs63RLWd7coXyvI+Nv8SZR28caN9UEGWNFXnLUqn5wrcjFzMk9tWBTwGWkyhGAepsSDFsXPFXF8t6NxmmaVLuM3Od8w5J0S0gYPKkUWntAHyLcMzrbL1nFBnulH4fXK2Ga0pfUcwJiMwH6W200ckfBy3AwXquVNrtFSBHsKLDaG20fNv24A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(110136005)(53546011)(5660300002)(8936002)(8676002)(122000001)(26005)(2906002)(4744005)(316002)(508600001)(83380400001)(7696005)(71200400001)(66946007)(64756008)(66476007)(52536014)(6506007)(66556008)(82960400001)(86362001)(66446008)(186003)(76116006)(38070700005)(9686003)(55016002)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?F4pmPEKHgMHny1n4F9jrvAwEqf90hTZpKUb4PEGr0QYYZFzaxJf6tMAJza?=
 =?iso-8859-2?Q?rLtyQ5epawbQRKLReIHN4Mye5nvqiPT4HdK6289W84pDriC9GONfLl3erf?=
 =?iso-8859-2?Q?PdkRj25VzT9k0Z+V2EbrRjk8ghbeqfvoxMo6BaQd4YrlYhj+jH5HhFOvDY?=
 =?iso-8859-2?Q?uiNkpEa5X1IXqY++EZ10e1wt0Uvt+HWajU8qEQFJ/17EebqNonPohrHqPi?=
 =?iso-8859-2?Q?KzzecPNkA95zsuKrv044C9SiGVAfR3B6vm0uaZ8A10aj1dgnrXWtT+Hq/5?=
 =?iso-8859-2?Q?ypma3w4bvYezbYxaq59v+p+m8Btd2y095/AMMTs4S6jC1MgqB3vlhwdtgD?=
 =?iso-8859-2?Q?o1m6idQxroAQYbwpCV7aciQYbHNjMqXieqGX4KL5JflppxzWVRXGfXdtrw?=
 =?iso-8859-2?Q?r3yT8BxCzHjZBzzmX6jnRr5AJtOARrVZYfA2IASeMMeE8bq3XottW+UmMe?=
 =?iso-8859-2?Q?5x5QQgxcKIIRa2/cQmNBLWp1vBsS4vYzYyzphjGBCsNLWg2IVfBkNYcSvH?=
 =?iso-8859-2?Q?UTQGrhalQEDPCJlfxKRUDH8jYTLpiLIiOerWR49VohNDGWjZLkIJaUcpTr?=
 =?iso-8859-2?Q?4Urnnwu4a4BVkLRwaWW2I3hgKx92qA7P0gp1OGgbnDic5xbJVu5qNEVdpe?=
 =?iso-8859-2?Q?ta50XP4nNJXeBFkOoXBBO9bpYQw1RnoOOW89vPBYeIKyZBjg20t5/mgSj/?=
 =?iso-8859-2?Q?oTwRniCEJNBHABw4JtrSVgQM/WxPGm6ud/A+BPZkTO9yS7JjNRqplG4LcD?=
 =?iso-8859-2?Q?lYeoMNxtiXtJhIEeTbuRsdiHVg8vT1ZYmSPGPCwSoXyGcY36R7pMWh93Nk?=
 =?iso-8859-2?Q?o3LxindDpzHsDklPUiWi8Gk47KpP4dX7TPOeSn09WWggrWqOXAWEKZVUmc?=
 =?iso-8859-2?Q?4TmChDyKM43CZdJ+KH7CHlMD955c/U33cIeVI1h5cQ0KTWl6HdqH2T6ABj?=
 =?iso-8859-2?Q?nchQgC7d1CbPdTlsfwjuWNp0VaKh9ZUHRXuhbs5IESMtEI6m+ZtOGZFR7A?=
 =?iso-8859-2?Q?vhwhxfYo+iZgSPFggxbTw3wRUR+0oA56dqEXOX5+OF/W37QebmFfv+ejM7?=
 =?iso-8859-2?Q?jz/p2IH7E6z88e4p0RIw0xfzdYwyA9WcAwKJSF6CCE/X6vIbFcSrtyY+sw?=
 =?iso-8859-2?Q?CFoAw2PIsWKcplZ94VBXqYti/bKKOn38k/x54g1APIa1NxvBQ1TCHxpUtV?=
 =?iso-8859-2?Q?v0IGipp/Y4I4ph4whDOyt9lKEl7oPX3L+rw3+1xg5J20LETDpACvud2Ze5?=
 =?iso-8859-2?Q?mGZZB00qKUFWrfIxasAZitA2GaYsrc+IT0sNmmaBQE09ud6eDhMQ4J30Jd?=
 =?iso-8859-2?Q?x9a2qkCOBfrCxprt8mSg+j+7cvvDsQqTR4ekiCBHPXBXKjcs3/Dvt96MAz?=
 =?iso-8859-2?Q?aYBqRNdX4k8EDh81ZNrMqMxbQh5QVV8Ib4Oigs68STgq7CBSUSokBMX+u/?=
 =?iso-8859-2?Q?oZDTLxqarGi5a7JFdPtWWKXZlJoF38/2MFmuMysqEaOTB7Ni8Cdu1CmQZe?=
 =?iso-8859-2?Q?n63Q7PeYnkIlTqDhpwvB2RVwUUVe0YZ/k8keTXu+aYfSdwhQGyhnqJx1/Y?=
 =?iso-8859-2?Q?0zIsbLm8w4ujNdMe3P8JRlp077C57gDDTLuNRbSZ9UKyEXVY5EWnnwkExG?=
 =?iso-8859-2?Q?qpZS41EET2doNkaClDkJ1yGAggcXIsN+zYvoNVahLawXrkQgIfgSwwKnmv?=
 =?iso-8859-2?Q?F5gwJU/LOtiplwgKClJv4X7GW+uruzQrlEb6Yg/Y47nDrjfyMI7Ym4gkPJ?=
 =?iso-8859-2?Q?/xYQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d952860-1be6-4b36-2534-08d9a9b4e327
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2021 10:27:41.8622 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4D+OTLVJ1y2M0T1Sgt3Wky3a1FqQtl8L6baq2J46JNHlmEiFFQgm7oECucP41uUhvfkHIcpzUoebkwFcu4yTTKilG0ChuDC5DgS20rMNdn0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5621
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 14/15] iavf: return errno
 code instead of status code
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
> Sent: pi=B1tek, 4 czerwca 2021 18:54
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 14/15] iavf: return errno code
> instead of status code
> =

> From: Jacob Keller <jacob.e.keller@intel.com>
> =

> The iavf_parse_cls_flower function returns an integer error code, and not=
 an
> iavf_status enumeration.
> =

> Fix the function to use the standard errno value EINVAL as its return ins=
tead
> of using IAVF_ERR_CONFIG.
> =

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 892aa22b39da..7730de0ef236 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
