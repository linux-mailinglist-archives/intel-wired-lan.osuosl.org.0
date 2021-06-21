Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3FE3AF836
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jun 2021 00:02:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C8786400D2;
	Mon, 21 Jun 2021 22:02:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l5nuT2wyapY4; Mon, 21 Jun 2021 22:02:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD17240165;
	Mon, 21 Jun 2021 22:02:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2016F1BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 22:02:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1930C831C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 22:02:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AW8DvC6zmOiC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jun 2021 22:02:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CEDDA831BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 22:02:45 +0000 (UTC)
IronPort-SDR: NXoHnVplx2po4WF6iiV1E/0Pa/BXZcAGH9XwYoLfvOAYnP5Ec+ekVWEiWkauUOlg8kM3aM1bq3
 qUmggR+VGltg==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="206980671"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="206980671"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 15:02:44 -0700
IronPort-SDR: MQ157sLnSKZJdI674TO1xuKwDUn8ZfugYcxBg9KSsiIkBx3doVsVhJ+burvNpYZWWKND/VnqTL
 BjcBRW7zpVSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="454031764"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 21 Jun 2021 15:02:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 21 Jun 2021 15:02:43 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 21 Jun 2021 15:02:43 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 21 Jun 2021 15:02:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YCJTUGH4E4qRWjdu/xelZeUQ1wiNxb2xW+TJJoo2nNHKylftdy/taYoGLXMk/JKppx2ngO1z2+/PpRsS9k7Mwbcz570DgxfQ6pkvk54YS/3lunE8rici9MyuPiu98E1SyIr9O0grHrevXclV0CVaXeY1aoWjWZHvMMquSB5JNmtL+eOSlYuAsvenHU1Ui0lShKMLL6ob6uzydLGXeouOg9gld7hegyF8znhzXE4yE0sgXcHbR+Me//xccNug8PAqePmzdijKkO5QIo+oSZLwI3pF1VFlDF0E6KweTYqLSLuaU9eS6ak4Z84j/hvqOQzKwoEIgI/4HENKsBOVFx0u3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZVVScchgsBY430wfh6/4k7e3Oaooy+ZM5z6ejdQU1hw=;
 b=MkKOgero7t8bXK7i8tR4NwOu2FdCh8BpWEsqPG5yhBm+DtIHITf+BtbIaYGCyfWL07Dxxw5GaYYze9Ym8MXdHxZwJRTRlR03QA/RCYOgRYQpeunNPEYb9Ps3bR3ApWtwe0iCvceMiYtyZ02unIzfjcuJID4PoOcqRXBP8QSKIcRP+HB4yynsqe2AmQTA/U4ZiOrbfz1qMuoZUHrzVqdj0P2jEUuNr7Y8U2VHGb5VRHfbBuFIsIMGMI7HlvxKiaXt65LgUrFaI8fXY3iVXZBE5LBESQWhg16f1GhZawwodMss6YkI2fKHvqd48EcpXrbg8V34bHkRfRTXHvZKQIk9Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZVVScchgsBY430wfh6/4k7e3Oaooy+ZM5z6ejdQU1hw=;
 b=nfj06OTKrcOlqmdRbfv/jjM9achu7DRgso+K2PhJ5NW0TZtZlwk4hv5Ptkw815bW9l1bKUQi3Qgl/1MROIh0PaVZlZ2fd2XFoEpovLSsvcnlVMXeAD5gEzfzHKBrm36zUGa2BvDTg0kBY3GWSV3D9v7oQIGRC/Y9eAMQXEcyN8w=
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7)
 by SJ0PR11MB5616.namprd11.prod.outlook.com (2603:10b6:a03:3aa::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Mon, 21 Jun
 2021 22:02:40 +0000
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2]) by SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2%6]) with mapi id 15.20.4242.023; Mon, 21 Jun 2021
 22:02:40 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/2] ice: remove the VSI info
 from previous agg
Thread-Index: AQHXYWhiAv1PDYcJrEmk+IckdqRXC6sfD2VQ
Date: Mon, 21 Jun 2021 22:02:40 +0000
Message-ID: <SJ0PR11MB5662462FAD6D49F28BF8D1A0FA0A9@SJ0PR11MB5662.namprd11.prod.outlook.com>
References: <20210614214607.41749-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20210614214607.41749-1-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 2c54438b-c238-4053-c7af-08d9350049d5
x-ms-traffictypediagnostic: SJ0PR11MB5616:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB56164F86B4B07668E39C9861FA0A9@SJ0PR11MB5616.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gkyHPjJv+JpsrjoRbpY2huGlT+pO4Mn3U2bG9jUtxbA6XHA6/Z2QwQJ+LEXw6ADTBEtjpy/CY1h1mLN0C01FF5CT+euObO/KigG4fvSbN2iOO3upfYN4C3Uwk9dEhzMZezmFJq5uo2GCb5b5wDxAnybmpyAIfx6jeBDG1MTBKW46/88/uMhizF6xW9xOGMi0Ns+FUYlpH3YvLq6yDpkuaxycyRKrKaGztljw0moY+OM40ybwZzfRgtZCnEzovRrWJfrj4xAAD2ZKJ5oB5xoSmvdc1Gyfwu2U1EJ7JiKvdf64Z78S392i7spw0/rDq0C0C+0icE6xjDgVXKkovq6FY/TZFC1XAaeJLf9c7HhaAe8qFupBcXcndtT2pjaZuos+1Pz7T5ocNvSzzZc55QvSqz2FqqPPRJPWKP76enJg0TfDCNGJaKd6fsru4b3BGdAGYdqXBcyLRnmxKIJB+oh7/KVNLsynp1YhaKRNUe4hm6guQc8RlVyd7JQX4MraNfW7xV+IX1LKqua16uJg2vorpO+tQb5RsmZIcWWDz8qW68LJFcG3VPmMmV44YjhQ/IzhjGEylej07UY8JDLWxa06wy1UGSTodMlgFPwce827RHQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5662.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(346002)(136003)(366004)(376002)(316002)(110136005)(52536014)(55016002)(2906002)(9686003)(86362001)(4744005)(66556008)(76116006)(33656002)(66476007)(66946007)(66446008)(83380400001)(5660300002)(8936002)(6506007)(7696005)(53546011)(26005)(122000001)(478600001)(186003)(8676002)(71200400001)(64756008)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/kD5tN0x3jGR9JLN2v1dJv2QnP5NK+5HgBgW3ye8gbtJD5S9LA11/k4CjbK+?=
 =?us-ascii?Q?sPX3ZEdECPQ0LCcqIUgLDuiyzlbgm0EWyUKn7mII6b/0CpHoG0UfR12GgLWD?=
 =?us-ascii?Q?g2Io7ddUxzX6lIZCHQipiuDfp6nmsQRlJyBE10LQ6vU8gUFZqFYJEI6st7ts?=
 =?us-ascii?Q?Je1n9u19cFM4SfZN7HMFjiQ9JwqCW1rJnj2bT726exqTPfinujDFrEhnqJ/Q?=
 =?us-ascii?Q?y5VFJEXUPX3Bk4TqoonkGiMcTfHKulFzCRJGg0ngVw/9Frv15VwUlCaW52xH?=
 =?us-ascii?Q?5XLU1S0RDJB149cBSbtQxD75ITaAQrHhUMjKHbZ6e6wW5e56SLtMZkVy4N8w?=
 =?us-ascii?Q?5kelSt1IDPqrTvhXd+mJyWGR8rM76fissBE0HbRLsiYGf2A9d+PkscFJPnjF?=
 =?us-ascii?Q?oxHKvmzL3b1y0IasI8ITHPMsKC/oLI9ByaCZBLmF/zwtsDODDQldBPYfX5Nh?=
 =?us-ascii?Q?z9dmAFCIJiVYeKmUQfqfylbUj2yUK+HINyJeNfW3HbVdJrMRPfyMwc1KHgBD?=
 =?us-ascii?Q?4DnGRmsJblN0Ha6bNTHlvJ7IogALXktQVLFC2GbKKkU8dJuSiYVq9wLdYOft?=
 =?us-ascii?Q?KLFSlGgA4fsegUtrvKPr1TiEDfcPRW6t2Rqg92X/PfPLs4M6MagnOE33poaz?=
 =?us-ascii?Q?oS/SDphAiX05gYFsHqXYhwueME1i0K6R1E+0TAPJZ+3sGcPkjEBZGpjxEWes?=
 =?us-ascii?Q?8CqjKygyIu6i62AYTg9ABsJxf/iJmKSuRDAiIujWbdDQP281YTrJs6eVKX7g?=
 =?us-ascii?Q?5aSaCxbQZbTC149L4QNz5wupkpfyvHS0e2Xr0mgNIgdlW1xW6ZEnoU9XNEXB?=
 =?us-ascii?Q?j0pqEVgfMUEoWWQHHjL1Xet89HiVrFSWWmiOd1ShxHDK8hxmb0YGZPvix5xw?=
 =?us-ascii?Q?fxletkVQzl7Ymogf1+KyVT3Dml0yyo8yVqEyiDd0vum4suwi+x3XGqI0nQnE?=
 =?us-ascii?Q?TqqnolqzOVHQAbIq4p/V8rXByswVHRNkAesD063vFpG+W/x1UUkHL6Xhn2gp?=
 =?us-ascii?Q?k1QufTwpzIwnuU3mK4CaBJS50U578YtE7cSk/BKIfX5+4iWW7FWrRycoW0co?=
 =?us-ascii?Q?5DQf7ieW6Mr3QUU14jpriA9ATKa8acEvVYk9au4Yw/Fy/AKOb4XcgaLP6OyS?=
 =?us-ascii?Q?kivJzdb6Qc5P1SpKxdBk5G4nK9sEcGOfPnANTmNjl8hcU3CSJ6FIM+qk6gRa?=
 =?us-ascii?Q?ZVNOH4U0d4cS594TB8rjmC+12Rjxcabko8Fw6rVHr7fXpaemO9tG38wgeJxv?=
 =?us-ascii?Q?kWXMsL5xZTO9tuQLg4NtlNrqmeg/ZHFiH7JijOVOq0zwKiB1TiYpH/Jmc1AK?=
 =?us-ascii?Q?YZ3X69fadIBZkGcsKp/rzzyo?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5662.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c54438b-c238-4053-c7af-08d9350049d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2021 22:02:40.3579 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ljpya/cHGg0D+ps0mX8f/9faiFGkAvqYfuCyGxRtTB41uSXdR5NH5iNd1J86YcuM+pMZO3pxezwVyXe8T3s5CHO6lb+zdkFPwO8dzRDiwY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5616
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] ice: remove the VSI info
 from previous agg
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
> Sent: Monday, June 14, 2021 2:46 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 1/2] ice: remove the VSI info from
> previous agg
> 
> From: Victor Raj <victor.raj@intel.com>
> 
> Remove the VSI info from previous aggregator after moving the VSI to a new
> aggregator.
> 
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sched.c | 24 ++++++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
