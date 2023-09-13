Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1F779E16C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Sep 2023 10:04:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BC9E4090A;
	Wed, 13 Sep 2023 08:04:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BC9E4090A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694592271;
	bh=/LrEgXPoHRNcIoVtWOzrNIHxgqUaliFkmwRmGoqkD4s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BwDL3+qjD/t4TTeINubvQcLmSwWFc3vCn4u4yB1sc3nQv3hSdTVWI3urpvWkOJsXS
	 EE75wzWVJ3gRaz78vcsrnbFMnIdoV0N6RXaAfH+Ph/v6rIIVRECt9DDlndwwVlNisr
	 tVtH5Ge19j1zgWwQv0/ot7K+kLjMNx7YpceaA/Z7MS0qte51/4JbQkMK/syUsgnuvO
	 2T/AYvtnKl2bqtXfnJiqZNvh7WpPZ/Ni2XWTES5ERyig+qeeHhGtHPyX0xUNgBs8iN
	 enndGVrJpZP20ab04IEg39rpimGY+F0zDriN9HH/xjtP2KoglkRtQDRp/dqEkf1o2S
	 s7sYEtGQh2gAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P8UIWuBcBN6G; Wed, 13 Sep 2023 08:04:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBE1D408B6;
	Wed, 13 Sep 2023 08:04:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBE1D408B6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D042E1BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 08:04:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B4F5C400F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 08:04:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4F5C400F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tn8gnKrZ_mKG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Sep 2023 08:04:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 51E1C405AC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 08:04:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 51E1C405AC
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="377506721"
X-IronPort-AV: E=Sophos;i="6.02,142,1688454000"; d="scan'208";a="377506721"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 01:04:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="859164945"
X-IronPort-AV: E=Sophos;i="6.02,142,1688454000"; d="scan'208";a="859164945"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2023 01:04:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 01:04:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 01:04:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 13 Sep 2023 01:04:16 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 13 Sep 2023 01:04:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cbs69Y0u/eRpub6PkvmxnivuYQRCJimFym5hbpf9zG5ozJDZzRLhEOLtJsk4UhBmlydv+NwgAQrpNYICpwNmNYXjGmJj/ffCfFyhyFhFRuTtAyrikj5rLZDc6isn3fQmP/Am0vSKvPRoG5JdsaGP2bTGtdGUOzcbr3nY/43hXSjwMddCioxzStBjO5+AnQAbezQkxDwsP+tyiwUY9WHOJa2KDc/C5XHDUf0FjNb/wlFZ9q0k74QUm9NSJfKuAThTKuGFrMNS/5zsAI5x8r/qjOAa/n1HG7l7XrJsEF+/NskUOnzQvZOX+AnshqQtZlnmALE3ROEWBhTNaxbQNHngKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dOMrhPPCfPtkXtg1QoEiP/5ajPELjrRBsa4sOwG9sHc=;
 b=V8e1loRLEOrg+rejlx06oIqWCDEFfPPPBeZlKGqt+ViPGwf2HHB9Jk6Vl23fCrk6KCZpczG4EuFrYGn2mLl3plLX58iLTL2LvR6LeZFb937rbAGwWUPV2TEf1Oz7ohFRvteN+1ROBBnhBbYuKUNx1BC5suUyhO2mjlChlWo3q9kv/513/bBVDbR6w4W+kB8cuqFzZSmZ7kTpXDflzTAOTSsXgYAsWwzKKxEXzPOq4px65L1TeFFdfk0nKdzfK+FYBZUZRp3edUuuQ9obN7SgctCWO3HO0+KCIkAcaYRlWqfPiM5Do7cAu2NIZpGrkIZrXKeUd9XI9KAdqOMAj/H5EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by MN6PR11MB8218.namprd11.prod.outlook.com (2603:10b6:208:47c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.35; Wed, 13 Sep
 2023 08:04:13 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::369a:9e50:215f:33a8]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::369a:9e50:215f:33a8%6]) with mapi id 15.20.6768.029; Wed, 13 Sep 2023
 08:04:13 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v7 2/4] ice: Support FCS/CRC
 strip disable for VF
Thread-Index: AQHZ4PxufsCmTd6VrEeoHb7KIhXqcLAYb7JQ
Date: Wed, 13 Sep 2023 08:04:13 +0000
Message-ID: <BL0PR11MB3521EF7769B1D624D4F5E9C88FF0A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230906195704.3651720-1-ahmed.zaki@intel.com>
 <20230906195704.3651720-3-ahmed.zaki@intel.com>
In-Reply-To: <20230906195704.3651720-3-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|MN6PR11MB8218:EE_
x-ms-office365-filtering-correlation-id: 7dbea7c1-3ac5-4856-5eca-08dbb43004c0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fLCNjBQAa0LGSbylmlotFg7JaE985VxKoneQVythDzfePp+vPv8eNmVZegPyFDJJX5ODJG31WsUXckzQnt4DwgXfhrHNryEW1R/xoF0uEXALqqpETQeCHSo8k3RfvmMWzTRLj99hEZO1XBa3tpP7owlPEgwD68G1m8WQgLCyB7kMucqJQklb06O/G/AV4IBRbDkPOxGS4udGidrcdOK5TbOaaCI/mlSykfnj8nblr/E60i61JcW0wNTNu2ITQOnt6T1MGUJxEWQLWWePGl/4M7s8yNiG+FNAoVraB+t5cJNlMFPpTBZAKGM7C9A26l0emhry+ZT1EWGKvXAstNY3fU75baihOixukcZ0p2gye4T57JI5mYNv07JukJT/ulwMs8elG4w7/ThAHUVdXbHE89ak3ewJVd+txLke3Z9eSENPvQjLrjtJgLgCTGndJnQl0cj9xweD3uKEfvd5gfLXpVtVeyP5FvKQLFDX56Fian+GCC55IQyuxF65mabHWHWSmZEbd58CdEu52mZpPuqQGDKfVtemlcZqJFOF3rRIhuFBaY6frw/+zIz7TWqS3/+j+yu88206jkGzQw7J/nl6Pb8Cb7gq8rA52izIBwl3m3HLID40LqIK6IJQ+P873p6i
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(396003)(376002)(39860400002)(366004)(1800799009)(451199024)(186009)(71200400001)(7696005)(53546011)(6506007)(5660300002)(110136005)(86362001)(38100700002)(38070700005)(55016003)(33656002)(122000001)(82960400001)(107886003)(9686003)(83380400001)(26005)(478600001)(76116006)(52536014)(8676002)(316002)(4326008)(8936002)(64756008)(2906002)(41300700001)(66946007)(66556008)(66476007)(66446008)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ct0TgCAtWq0V22/iNHgQ6OcnXi4zrtPlYyvzSNJMlQL0eQaLYGHAdZ3SqL/u?=
 =?us-ascii?Q?Ys+4F4vb9BX5AR2l9y81Jtj7B8dxiPXXbKQVwcml8AeZsSJh+fq6SDRTHRLQ?=
 =?us-ascii?Q?FDFDDCS9lkZXUaOZSrAfDNwFTaUzUT6NyDda0JsXLQI2SEGSNrJUfgxP85mM?=
 =?us-ascii?Q?5F5bMz1SyiLHhNtLn0DiSOt1nCyh92Z/tF+1ekWbePyzAAXaMbJ7P2PgqCC3?=
 =?us-ascii?Q?AmGVbaBB36uMdzKtcEC5UxpdTsVTJRwM9PTH3xx2mXbaXzYP7afjKRkVUFZm?=
 =?us-ascii?Q?Crpn1VwSTQiN08NHYeaHBordG6Wsj3XKNo6xnxEHOPgD8tzWJnZEH0LhuzXn?=
 =?us-ascii?Q?G6F1JW79/VO5FKJmke8lOdCCRemYINXs7xuinXkvalOaYct4wYtkmy+YRUrB?=
 =?us-ascii?Q?jIIpT3bJG00XhXMFWi06+FrovzgonudCFRmSv5SB4vizcxKkdbMfjckfVWWS?=
 =?us-ascii?Q?8eNmW5w7d3TsX825v1gbJ7wFyfPtAAN6owc6bcBbFELV0SkePjy/HqIR6Gwk?=
 =?us-ascii?Q?0XE79Ss8Lqm7eAM3hDdMUcIdt7FffrJUcn+HVgfj/7bcGbxRgW5cU/1MzouV?=
 =?us-ascii?Q?XqM7DpJd9H6GictAOTC9HSFP5OxjXVJrqovU9L+7LPltZbKTpNE55mvYD3Ik?=
 =?us-ascii?Q?sGXeDTBmB0wdC3pYfZnz3pcVHOMLIDd79SLIrpHOr7xWnvjTUZJ0M455HqTC?=
 =?us-ascii?Q?SMN3u0si780dgRsWKEmdSGCxkG25cwdKpHPdMZDgyOh/mfDvB/7BMrvzbp1O?=
 =?us-ascii?Q?DGAi3EOU4oKewA0tDDCGwACYBCl1aOCCCxzHfVTkKN5cFzgpSk08bkB7d4+0?=
 =?us-ascii?Q?mZHFeaikc0oBu6t61SS0IA/Van4pna9A0Ioy7hZ4MuSe/sVYF+WuuxmRi2Pf?=
 =?us-ascii?Q?8MjiH++oa8ro4qEVBxukkHiAEvp5KI80+VUtT+Px3OezxLYtCux7cYN2wk4x?=
 =?us-ascii?Q?jK4vgmF6jD1lrP2clPSWKfSnZRyrVMXQ/RTptj758xg4cGjlEGurnJp6mJPL?=
 =?us-ascii?Q?u4PFGKu8GWbIiVx1wmUaOSU8oiPYOwN1SHNQAvNE4Dw0FYpo1UlBnk5ZN4Ow?=
 =?us-ascii?Q?TuKV95PUUVC8PTJ2NjZ2qYcWE5QEEDnu6twfVp0Q7pdlTBmMI+777b//eZRh?=
 =?us-ascii?Q?NQmIch+bUPL6VqGjoaHJFiPvjZBqxOb31pyerbTeCFjIIpmbDcMSrbTcOb75?=
 =?us-ascii?Q?CvOeN2y8XHUw9aIJtlEEmN3WcOm98GHaTQzyWz+FUAJ/4n2/NguxnSBGBzNT?=
 =?us-ascii?Q?lVntlij6tmYlSQGL+c3N7JAtk7FnW3WSDlchj/246Sxx3ZpRUIxP4g5oNvez?=
 =?us-ascii?Q?tOCiuOdAqLhZTPYURHotCTEDM16bqqLNcwLxy3YIsgotORV/UBRufmcOl7Nr?=
 =?us-ascii?Q?4ipsHd41dc0ze9FqBSelkNhN1SlJOtprInhn8qMcmHIDIdYnIxDCttc1IfUG?=
 =?us-ascii?Q?pQ7Pc8i6ioP28VGd6/gUItRbTB3zkvMKwhRwCzHXpyhWOMePkpTf3+4zqAuk?=
 =?us-ascii?Q?fX5NOJ3BcteWCVkm3jxIR0IQFJO5XI2MxOvSM0d5o0StqhW5IHAsL6GZEnez?=
 =?us-ascii?Q?nBgX4751MHMUxH/mcQF1pWNjhcMnn4pvSTWvj50w5j4K9LVqR4f10bAMucUP?=
 =?us-ascii?Q?5w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dbea7c1-3ac5-4856-5eca-08dbb43004c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2023 08:04:13.4064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Il45CHmJLrFycBf2bRc/m8ylE2umDuKiCH6vBzHs5h0fAX4fZ5/IQ4hK/NELIMsE1MK7FLyJ74Xl4m0/kaZUrHTl4gMB4OXpSfsxGv666Rg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8218
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694592259; x=1726128259;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KA1WKL6++Gl5JGxOTfEl7lWqHYOxrG2WhJ/WjCuXZoQ=;
 b=byd3wXYrtPitxPl6dVoGWCI7oyK2HvV3s0hELIVVxVDgORT+BHJFf5mY
 hAXTez8A//RH3499SKgm6tcXin9He8fD0mD/eznKMtZwAP67v/sDW6Rr+
 3g2Bu7BpVn4MujOuFuZYHiZhf5PeZxaQwEW0kr/5Ac2umrS/4yfvYt2SR
 YQtVG79Ucg7go4eg7Pc8hM9DV0/h8PQzvc59uxM3y72SfNwngC4mXTazX
 6ibpa/r9VpeKji3/1gzIr476u/FD7K1bNv0h/62GX5JLyyKjt3YKlpahe
 uU8mGBQZW5yl2ZyuPWrkjMRGhfzPKOD+9aEL1p7/VTf4xZdjg1B3CZcIa
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=byd3wXYr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 2/4] ice: Support FCS/CRC
 strip disable for VF
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
Cc: "Wang, Haiyue" <haiyue.wang@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ahmed Zaki
> Sent: Wednesday, September 6, 2023 9:57 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Wang, Haiyue <haiyue.wang@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v7 2/4] ice: Support FCS/CRC strip
> disable for VF
> 
> From: Haiyue Wang <haiyue.wang@intel.com>
> 
> To support CRC strip enable/disable functionality, VF needs the explicit request
> VIRTCHNL_VF_OFFLOAD_CRC offload. Then according to crc_disable flag of Rx
> queue configuration information to set up the queue context.
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index b03426ac932b..c0c3e524c523 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -486,6 +486,9 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
