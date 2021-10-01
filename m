Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF3441F72D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Oct 2021 23:59:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0E1C60753;
	Fri,  1 Oct 2021 21:59:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fYwSoBSwU3fi; Fri,  1 Oct 2021 21:59:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C9C3C60718;
	Fri,  1 Oct 2021 21:59:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3088C1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Oct 2021 21:59:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F7F160718
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Oct 2021 21:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wedCd8uRiZl9 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Oct 2021 21:59:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 743E760711
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Oct 2021 21:59:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10124"; a="223694123"
X-IronPort-AV: E=Sophos;i="5.85,340,1624345200"; d="scan'208";a="223694123"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 14:59:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,340,1624345200"; d="scan'208";a="565296363"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga002.fm.intel.com with ESMTP; 01 Oct 2021 14:59:11 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 1 Oct 2021 14:59:11 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 1 Oct 2021 14:59:11 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 1 Oct 2021 14:59:11 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 1 Oct 2021 14:59:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bQ6ANNh+G773Wx9ZB/Wj1KMl4Gre3eRiCFiNhPFjhEKEinAifz+I5iZr3hWPAGA0sjL+LKqDT/sfImKj1DODtzPhi5NfhvS78qWFhVXs8OXNhKJePh/+VndIZ/oDXR6MTEC+8UYczVWOyjQcHZe3uYLiEq8m0NWIUXQZsRaUAyIHxEmuaDxgVzo0oSU4ergEyn11PoxMGCXIuJ5SNCAtuvQwrj+hPO2DPWELrwi1qC8j/UZx06/rPXjE7JGHRPn8zfzwJWGcZyDYWp778ZvaKPjyKBHd9Ohu1fREBylEFEUA41Gl9dODUkvzgt+T8qRSHbWvgMVkEATNXDCLWEFzzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Narlp8NLpusxVGeIR/LXn00UaJgul6+q4v5Y1eC0F4=;
 b=O47KV2yESV0mg30PmEFYLgXbOYU2Wasb/KbkIldlBSHjFAn21A9Qq+PqkmYjV5MkWDAsiuV8KxxNlTAPgEeeP8c0ZKk1Rr4qUXPbyxXavJwxhVSJGxivJZq8le/jgCrZrXJGgmD4MGtvIKVolZPWIHabpNNXCz7QhvbdnLr4UR/rkbvq/Fn6PhCiNb8QzT8L+QnO2Zb4vKmNk4u4joqcqTCFqGPlKcPplp021C4o66xK39J8C1qNWfNuXBR6LxOFCkPZTgM7bzpM5GtQrCSLrpZhKLOsDrEwm8+4CjWvuy/QejlKXNFIYoLZm9fKMsS5B1wb7UwbpMl7cAx2oqqJpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+Narlp8NLpusxVGeIR/LXn00UaJgul6+q4v5Y1eC0F4=;
 b=b1SvL5sFPFZryy7gtCeCeeKY1pMM4W2tDNWgqhm17mfADrip1FzctASamfKASD1A5Vf0HYYjpgg3sPwzLJ8ysjU8AdMfLFgPawg5vZda1AGLZ03ONtjyiOMhb7yvawUhpzoMmrXQkMYd3ls8YBf7F5rz3z6+qucH+FbAFxOad5Y=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3120.namprd11.prod.outlook.com (2603:10b6:805:d6::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14; Fri, 1 Oct
 2021 21:59:05 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4566.017; Fri, 1 Oct 2021
 21:59:05 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] iavf: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2
Thread-Index: AQHXtTcr4KGKjWnxZkWTba36qw6v6Ku+sALA
Date: Fri, 1 Oct 2021 21:59:05 +0000
Message-ID: <SN6PR11MB3229FD578A9B1B87A33327FBC6AB9@SN6PR11MB3229.namprd11.prod.outlook.com>
References: <20210929133715.149736-1-karen.sornek@intel.com>
In-Reply-To: <20210929133715.149736-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df8b4f23-80c6-4c03-3e26-08d98526b004
x-ms-traffictypediagnostic: SN6PR11MB3120:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3120081DA5473E7B100BB69CC6AB9@SN6PR11MB3120.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pOvMk8RiGov6u9yJSerZz7qbibZLQQt2FHFiz0IFt9sMKBurJxV1Nnxnv+3WHOtskoi484oTJY9Wc20q2TooPGJe2PRUCnnHbnZZoM1D3fEHyDeCzc5kwqOFIwvZ3HT2P/N1waIC0scszQuHam/ZQ6d57+2uBq74rmDipSs57hH9xT7W2x/wnkhheNvnBCXzEqKZNVvT5zIv828UHlcAJNV56JDN7e99+JipDBZkArYAzUJObOzkfCt3xZa145cSI5f5UK6lHIKYyJwHhAhqJubg49y1HnQYZcD6+f9InCMpSEmjeUgfFVgKlRlxC3RBV0U8bloDDVjOc9Hp8VuJsTDesAoM2xzM9K0sT2l8i7Q7Hn5FRIW5Uo+kjmbddLDLXsRiQpOgLORgSyDfWyQJY7tyfrMVKkGTmMJa/e/L5FoaqgRe4DTOykm77vnT23WaCSyfojccp2GK5WACRLWqF0qvum78iiS/xw/PunFzEW/iMN1gSXLNjBrfabMi/jeAGNGu6MtpXk9i0QiKcxHeY5FI8+WgRISGldfu3lNet3ECfaZTmlz/DlD8qo9lVjdPwZoWTqzatso2fYKFiRKXatJq89GP8Uij6UC3wJtZnAX8juvf0Ryf5G89jFwHzA/P/ZfoC3DTGGBmu9Dteel969ZQPPkXH8g1erarnRm24Ev9xTwUpHQJDRdzpM/DsiQKaWa6RcGnPimlF94zNlNQqg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(7696005)(52536014)(55016002)(54906003)(76116006)(26005)(186003)(122000001)(86362001)(6506007)(53546011)(71200400001)(316002)(8936002)(9686003)(4744005)(4326008)(110136005)(38070700005)(8676002)(33656002)(83380400001)(107886003)(64756008)(66446008)(66946007)(2906002)(508600001)(66556008)(38100700002)(66476007)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ERMC1q/RmgQ0ko/5ptW+iOrK/74v1rJaKqKo1P5VnYkToUmGdxK5w4/m+k53?=
 =?us-ascii?Q?1Q2Bdd7OEBgEMzul6XVgINFUgowfREupXmrEx6XJYZI6PjhD3E0+oSAzu9Rq?=
 =?us-ascii?Q?YH95nBWJdavQDdIrGRiqOaW/NWs64NtWUnzXWCuFSn9kNBd4qoW+j8sOyeQh?=
 =?us-ascii?Q?8u6QRik/oIsdFxnJaAm9Lz+D7jVFHskaM5ra8U8pzs4B15Dxa1KxyVldCGhT?=
 =?us-ascii?Q?1lTVLsN+WvkHGrHjsryyNW6J/NkGFgSiA/LxVYOcmxDJxHmx9QRn3mS5Bx1b?=
 =?us-ascii?Q?ongQT9QEfsKKntmuhbOxDkXgyKgmJEY4doMxQbYtj789KwB7JmVPmopA0b84?=
 =?us-ascii?Q?s/jEvbYDdd4yJbCgQVDDvNYdWO1GDhaZeeDt2lbO+slYO8gf3hX8T93Uxkf+?=
 =?us-ascii?Q?jV0uT5RZy1GB2GWqmkkrCSqnUdqdWzK27SUNx0EvTxb1WiBSy9ppGHlrHR8+?=
 =?us-ascii?Q?kcHuycMHe9yqV0ScN4z0rgkRAHigA5UpV7UMvi6zAn/gYt7bKWDgtlR09z6C?=
 =?us-ascii?Q?5fWtfcoynZqKDVrDUm4otetG82P8nb8ToLLuwW1MpQoErZ753/K17JcFn3ig?=
 =?us-ascii?Q?+mtZtBULCHnPZd5o+W/0JCebXctqXe0xNGdz7UVNOoesh0HgUJVZJ8n6yNsf?=
 =?us-ascii?Q?FAJD5d+pRBv++hpXfSHrh2R5gQtwlMx5kpc3Z35PcrHBsl0X0DeZxvLhbIy2?=
 =?us-ascii?Q?KhmNxkrjm2Gj9Z62cDXUr03KCwLodu7fO/K6FYW+NN+Q0x9GDQ7fUpwjJXDs?=
 =?us-ascii?Q?49ro3Q1lQgrTyVtoaBSsfQbDarhY9AhfSVLz2ej2i2NFEP8uIJrpbCtM4bLO?=
 =?us-ascii?Q?I0ZIlFf/pKu++jTKhbSgoGmNCaHXeUl1BR5MhfrhYOy3AjlMiit3gyw5+C/f?=
 =?us-ascii?Q?HmLzPdiZ6THn7YLrR/i1EqK+w/znj185gSSgcdOuEDO8m6htdW/z6WakNJ1W?=
 =?us-ascii?Q?Y1YV7q5A4Chw/H3HeZmGixGjqMwjWXK5mcdoH8ONrJA4F2hyawf64QV8ie2g?=
 =?us-ascii?Q?Tq5WhF4i4D7zNNQ6V7POrD9hmDhNO4Z7QrD5CahL3MKkFIiYUdLB4pkq80S1?=
 =?us-ascii?Q?lVtdPHrvuBCP+iaJ7EElea5uSqyG9yeDWq0Peq/HNDUx2oP0fJo+Q6p9hxiV?=
 =?us-ascii?Q?uLOnjl7PZxd1Ok3/FeJm05lsJakZoWBuStSW6JBxwxhTSn4HIpRUoDtA7I/f?=
 =?us-ascii?Q?u+/At0F0PVmjQWW28gC2rXUb9sxbo4h0OEYjnwcKmIhaPgkc42sxOVZ5h7lj?=
 =?us-ascii?Q?f275IwPiUX3ldBwCo5cW6lKtOBVDpLSY658GnXko0Ls+5L0wRMMVEya6wSsP?=
 =?us-ascii?Q?kKHKi/IRNzS4lt3yjyt0UzX8?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df8b4f23-80c6-4c03-3e26-08d98526b004
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2021 21:59:05.7675 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3nCvoTFUS1X7/2gvQEFzPz1ss0AMlvs7RxftHx2lQJjlp4m+8Ydt8BEplYEQIYyRZ/nbIYOhQUJ2HctMtg0xPkn8ProzdYZ77K7IHhkSyr8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3120
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2
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
Cc: "Sornek, Karen" <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karen Sornek
> Sent: Wednesday, September 29, 2021 6:37 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sornek, Karen <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Add support for
> VIRTCHNL_VF_OFFLOAD_VLAN_V2

Why is this the same title as the other patch? As this is for the virtchnl file, it should use 'virtchnl:' and reflect what this patch is doing.

> Changes required for iavf patch "Add support for
> VIRTCHNL_VF_OFFLOAD_VLAN_V2"
> to work properly.

Please explain what this patch is introducing; more information is needed here.

> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  include/linux/avf/virtchnl.h | 330
> +++++++++++++++++++++++++++++++++++
>  1 file changed, 330 insertions(+)
> 
> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h index

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
