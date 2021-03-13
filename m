Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 686D3339A5F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Mar 2021 01:16:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B22674ED26;
	Sat, 13 Mar 2021 00:16:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d193lMenk9X7; Sat, 13 Mar 2021 00:16:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 597404ED1D;
	Sat, 13 Mar 2021 00:16:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1EEE51BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:16:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 16A754ED1D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:16:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0SiOOnsQgH1F for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Mar 2021 00:16:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1C3AD4ED0F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:16:05 +0000 (UTC)
IronPort-SDR: jOAK2OYAC3ShTKtgAL2f9RrS1+O0ziYV/IWKV1EN9BKVGmLY2zNiM3xa4npZeyiO5yNPWk7Cwz
 9PKEbw7OvCgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="250274157"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="250274157"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 16:16:04 -0800
IronPort-SDR: 4zNgUfBcNdtu6Wa3Qh8hzT/X3/6UE/jay46LHqY/Z0+ROlyT1v0AYcV4sA+kVxW9dJYIH0fyUX
 7k6rI7M77s1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="510490401"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 12 Mar 2021 16:16:03 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 16:16:03 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 12 Mar 2021 16:16:03 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 12 Mar 2021 16:16:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DMM3z0/fQca5+9x7VwQiv5eAJJxiWt3fDsUAYwocJd7WFEhcAmERDRJVVxPArqAsh6bsCEA/Hmckyv63PWHCR38ZYx8sgPsaNeksBjXhGpH0X0EpSToaEVGx5q9dq5eR7ygBdmHlBV4GvN7pKX1SJ1yMD4dvxfSFGUUi4BKwq0OkT9RAXD4Uw2hydozjzsszUfd6hfltQ5UpwGcEl5ZANVbskVP1dj0kDn0uE+D2ZlWha8TRFMpk/zkQjKu2WUie3sq+K7ENW7trYwMMKZizTkZcsiaG1Rv0olPsSTZM4LmtFad42y/rpXDAJNlzfDYrc3zBhz1634EmdEO/rii7nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DEFe+M2gADxaC5sfRRlkWpchkXKGO/d171m+9HRcvaA=;
 b=hr+MSmZlrGh6xDPLFR9j8RMNROl9Ztii1YHLx5xqaQPeV8RrI/TRPaXbl9ZTXb37j2im6EKIOva0w/uGBDN+SYbZyBPpHFKNBSzh7j7xzCMWK+uPnMJElp9n0BVNGchFjVk3ydMhv/tY3/LrHnh1GYA+7d5gQkKCsNTBejdsU0X2qIlUV4rDRT1hCJbabOz/dZkWLyhvaE/8C8iOcHSqBZnS4YptKV6M5Xk1VvnMfaPbkvJ+1D49+8lNn7PIy1qB6vJ4Zc9cGOkcGlce0f9M/SuwHRgTF7Kn/6h0J3kaORSgMGMXCVpSBEL4JCRfmdwMDdhR6SHubwvLR5FacuFmpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DEFe+M2gADxaC5sfRRlkWpchkXKGO/d171m+9HRcvaA=;
 b=MMHlC/7sqX5AWi+RCDfphwF8MOzmIa6+R7oKB5Ha58yWnG8tXIyX6ur4pJVDjm1V1NX0xqzPSmSsqnRbN5BnEZW+flKne50IhLdb8eHghPXT3n3m8P0St4hdW5UwN1uYTFmoZR8SLyiMgZpsDcU7aogwPUMmL540Q8fyisOtT4A=
Received: from SA2PR11MB5114.namprd11.prod.outlook.com (2603:10b6:806:114::19)
 by SA0PR11MB4733.namprd11.prod.outlook.com (2603:10b6:806:9a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31; Sat, 13 Mar
 2021 00:16:02 +0000
Received: from SA2PR11MB5114.namprd11.prod.outlook.com
 ([fe80::9f2:69c7:b467:184e]) by SA2PR11MB5114.namprd11.prod.outlook.com
 ([fe80::9f2:69c7:b467:184e%5]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 00:16:02 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S56 11/13] ice: Correct comment block
 style
Thread-Index: AQHXD5GUn4azp9tne0euWLT4omgEd6qBHN3Q
Date: Sat, 13 Mar 2021 00:16:02 +0000
Message-ID: <SA2PR11MB51143B21EB01C1A7457674E6FA6E9@SA2PR11MB5114.namprd11.prod.outlook.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
 <20210302181545.51822-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181545.51822-11-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5c0bf087-0655-4a7b-6104-08d8e5b52fae
x-ms-traffictypediagnostic: SA0PR11MB4733:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB4733CD820A0FEAA040718C02FA6E9@SA0PR11MB4733.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:178;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N1+2Rcl27Z/mZHAxnqXnUjf6a8W5gPEpuPFoMdA7qvpn8VertA81UZznnpV8YEcoKnki05UOYTYESj5/lQYVv24TgEGYG0FKo9T+uEa5BtvHmRgRRBko/9nhRtwq757Abkw0fWU3ygLrUUckZUIr3tZrAdBtAEuWJpEcK+ciLEFkAaNJfn3rTcxZIQLh1C5vbch8dXxCLZLHUp+T7SRsL2wLVCEOopEYbN9ZZexp94+dLr2zC9i6E235Sqy5l5dUWHT2gNS1+XXO5UZDWWSvefQnrJ4Ledzi6P9Uvn030gevh2TxkSkzmQoJcXUrqxNSTgg359Rw4k5POd7Er5H/YSoJom+BjvBG1ZaUMLayAS6xINs34pFZtnrAj/AV6GJtet8kY9aZQ27YKhPhBODwSTQbt4M8M5VbesRQSKOucyRl25/wH+f9tiaQD07SsMByyQzUXt042OPHsNac+ejOzWRt1uP+1pqmpHnVGvgwsnb3T52sPM2D8ELXYd62zWQvs+m5gEwxiNsoFkO8dHgXrIckzaLn7NKKENqb9LiYK+pHSq9Pm23SIaYoVYQslsYf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB5114.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(396003)(39860400002)(136003)(346002)(66556008)(66446008)(316002)(26005)(186003)(8936002)(6506007)(76116006)(478600001)(5660300002)(110136005)(8676002)(64756008)(4744005)(66946007)(53546011)(55016002)(9686003)(71200400001)(66476007)(2906002)(52536014)(7696005)(33656002)(83380400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?PJ5U6YFqREbv9+/ZNE/i6ZvFA0wPxRFV+6Y3b4F3CXKP+DMW9nwbEctMtoeC?=
 =?us-ascii?Q?LwWz4RARW3y8MLhVlzkYTkFn7ugkC0chXSb/QEd7eEw/TCrXtpDAsYfMhge1?=
 =?us-ascii?Q?n+ZXiaUNBG2NdkfEW3dfrWXQ+FGeCjrNmDnjfH6LSH/TMXV4moLbSGG4jRDO?=
 =?us-ascii?Q?qymDoNJWq+kzvnhDWTH7MSayXyfxYEUSUJkmYZr3w5bSNkypS5KUFaOUNoOc?=
 =?us-ascii?Q?l9rGiG9gmA9fWcgHiQM3PjGLV0ZKZDckC2G4PVh9Gi2toYhG0eu5FGyX/nin?=
 =?us-ascii?Q?VUJKyUwZ8wgavqLZV6+B790BK8tY4SvyDTGNiU4Yd3mjeKJGQokeAaQLg0JU?=
 =?us-ascii?Q?UV6v57ejGsJLz+r8Shh176b6IB2Jy0YjfK7W6REQu/4jABSAsyK/+hUvhWon?=
 =?us-ascii?Q?QQgK4wyQEhhuRTncdw/3sWFtdIZGP+QM2yhqokZ2JhNN9MuOf/dfsoQ89Sb/?=
 =?us-ascii?Q?josYx+NkDG56kFw2GyT6muwzvGq2zOZ8wH0R0fcgGpw2Gq+sWt4nJ0CjI+co?=
 =?us-ascii?Q?cihFho3diN8InkawwbGb0UWxMqhFtW0FUiInvP2Qav/GUj9/o4Zn0+3N69AF?=
 =?us-ascii?Q?niIXmB3yCzf6V/b2H4IjW3hSgGAv7tRtTZZUMuGXlIwZZY3DZqLvI8mkwWlV?=
 =?us-ascii?Q?7gk0D7DeNVUbZTPO0CZWqxY9wiVXbf8T8ePBAXEl2YuHc4jagk28V9luWbCF?=
 =?us-ascii?Q?/iDvFdu3PB6HxWCw9chX6HDF0HcsvFR1QuY/bNDVVWHt2hDXaSmnO4IELFEj?=
 =?us-ascii?Q?huXjxcY1WA1gwxmTgfBqJTFhHX5+uRAkr/mxeeNNjURDBc0eIDxfLZ41yRQQ?=
 =?us-ascii?Q?2xiKpUQlgZqvxMgJ5nQUQbtZ/bClsRroYOtrvQZV8uTSsj8EqJqa9DqDh5oI?=
 =?us-ascii?Q?SOrz/ibv7Tyr5XCYxK7xB40C8FVZ0xqv28VhmTHdVMNeUPDKZcT3yOgz9+xc?=
 =?us-ascii?Q?2f1f8swQf/qJs5fN8qnHeFY3ulY5SJXLPpoDk99RTC+4oRH6m2uP2Z5CJw4o?=
 =?us-ascii?Q?UU3Um2CVU9hmmNZbcP8Ama+xOViN80z3EHM6sEHrR/O+ecU/gMW3/emZ+2GD?=
 =?us-ascii?Q?LeaZDlOjWFgnR9fI/qsGFp/dgCtw06yNpxRFyzO0iWrIeE8Th1AKtNmG2gzK?=
 =?us-ascii?Q?w9sC+ckSOJeZpNbh7Dm3VF92zs4huiM1jQjv2MHBaNOgrGxxWMy3Vx2bpsfb?=
 =?us-ascii?Q?cO5+EJpYpwzEfPWvCAEPeO46WRqHbnJWjTs0WVUzxHkSP0MT/b1IHpPLRs1q?=
 =?us-ascii?Q?MJiz0g1JDqJoiEER53+oix4qXrM7Nw/mc0Fl5yAp9AWEzGZL18tkyrngCprJ?=
 =?us-ascii?Q?GJFvhafrqIAM75yvwMDNM610?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB5114.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c0bf087-0655-4a7b-6104-08d8e5b52fae
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2021 00:16:02.3300 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gXlwrOdRIcS/n7R5mGXJU+eB4Q2B21e14684eiAYa9STc7MdNFnZ5yu4n+AARmjPg3utr3PBRpDsv/8zLxWC2EPpGMZjRQJORuAP/yMiSo4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4733
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S56 11/13] ice: Correct comment block
 style
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
> Tony Nguyen
> Sent: Tuesday, March 2, 2021 10:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S56 11/13] ice: Correct comment block style
> 
> The following is reported by checkpatch, correct it.
> 
> -----------------------------------------------
> drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> -----------------------------------------------
> WARNING:NETWORKING_BLOCK_COMMENT_STYLE: networking block
> comments don't use an empty /* line, use /* Comment...
> FILE: drivers/net/ethernet/intel/ice/ice_adminq_cmd.h:1428:
> +/*
> + * Send to PF command (indirect 0x0801) ID is only used by PF
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
