Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C2552D00D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 May 2022 12:03:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CFD660E9D;
	Thu, 19 May 2022 10:03:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6cVgl69dILo5; Thu, 19 May 2022 10:03:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 880B460BF7;
	Thu, 19 May 2022 10:03:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF2311BF34D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 10:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DAE7583F71
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 10:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7j-KiD0kFIal for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 May 2022 10:03:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B47D83F55
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 May 2022 10:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652954608; x=1684490608;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jSQrQFWYeFBKlwiIlcZ60xTJpmZRWs8877DK0UYsn/k=;
 b=OeIENklCOFJduYLSQthnceeewkLqRy7UEEZ2qXSRXLPALofa8MByFZv8
 qQcVcpyWB34OtXxZpbGq5XvRccr7QsuxgRdRGDwY6DaXPc79vAzm4uDU7
 xd9AB1zJE6PU7/Olp/BugRrcB0URL8lSt1iwOFhC+TvU8qRe/ftkx0fPr
 oNhQL15H4IvOb652Pbe8f5VIbtvCIIYc5N+VXgdvieJoPgF2wtjo2CofM
 2ufM8yf2xfD9j9bIHvAupqv0mluJoFf49GI60cUbigUpwjNNkB00tN8cR
 mRUL2QdkkyW2SJKc1clc3wRTGnF2tl0ib4sTGhSsr2evb0vHeIDXBKUpl g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="332749687"
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="332749687"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 03:03:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="661616283"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by FMSMGA003.fm.intel.com with ESMTP; 19 May 2022 03:03:25 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 19 May 2022 03:03:25 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 19 May 2022 03:03:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 19 May 2022 03:03:25 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 19 May 2022 03:03:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qo9/qH/aa3sgp8CDCyjV2tPMViJWdN4j7cxmNFyfAfqo36en9v3QR+ZvjY19BoTIMdVy8ztJisQq0UN0NNcpaJ3dnPUIjhp6SE7pQoKQvlbeWHwiXDVQ0c/v46yD2KoMOgMxYyRZhbVlxayegW0W+j5nmz/uUC+0FBBKvvsI5GwGo2nDHr+m2kIleQ3A0+N1E9057j90qwwRabv62SNS6P+R3IaVmUYZv/ngVxxS/0uVYsW1oktV/HYQ4xqileGoIki1ut1eDem0oKtco74Pjy6TecMILw1jzFKZCVdM1KnG+AeJoBNtAV4+OkC1avTHvEuc/smtEVrVz2Yk8hGF2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uw4/rbJBh9bEeaRray+6HrhH6FWHhr8kuNH0tL2jgwA=;
 b=GQ3nw3eE8IilCSCo7G8PGtlPCVzmKasztrVwy0YC0L6S2TMMCJ4NgH7+ChNzDl3QjE7WmalQulUf+FHzc0hjbQBvSMQiYOtQ6tPT0x93tH5zPibjjo/8h/uUXErKzql2+ow6G+zgEp5zMwut+5Q3CYEazQ6EDk3gIcnpgcQ9Qg26WPzT97TB4OerhnBmRC3o98+kT95PuUuIYycTNHqpBwIpyg1Of1MV3VvtjkKMqSQNXxTUfpFz14AyOXEKwqIHZpnc9HH4/ke9UD27oWAZkxtJQdIgSB6T8I6gKEWbwLbumQd5dbdtb9iNSL4hfdYXRPjRtrd+degjIXGYPXLa0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by PH0PR11MB5673.namprd11.prod.outlook.com (2603:10b6:510:d6::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.14; Thu, 19 May
 2022 10:03:23 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::a55f:6395:afe2:df6a]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::a55f:6395:afe2:df6a%7]) with mapi id 15.20.5273.015; Thu, 19 May 2022
 10:03:23 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix adding ADq filter to
 TC0
Thread-Index: AQHYW8S5Izk2gJA9jUugvcAWJ5Gcia0mF0RQ
Date: Thu, 19 May 2022 10:03:23 +0000
Message-ID: <MN2PR11MB36143756B2546DC32C4EF3F98ED09@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20220429122708.978369-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20220429122708.978369-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c23814bb-3ec8-446e-507e-08da397ecf86
x-ms-traffictypediagnostic: PH0PR11MB5673:EE_
x-microsoft-antispam-prvs: <PH0PR11MB5673963DC1E6EA61C8F54B478ED09@PH0PR11MB5673.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +O4v/y2hHA5WPX9dftYBllpLmW8xMXGycI8XyAQfgXjOjFf6QNJL0aM+QWtQO9PIwffX22+VYYzdbc4Zkn2nl6zTz/HMcCTLnUgit328NAXPF/AqDm2IaLKPzn8ByRzH/yX72RYe3GF2VALrp/KzcATuKmflEkaBd3bsDuYByzM/oajxmbLPgP7sppA8Slo1N30560MKvflhJdHqMtUY0C2EEjMiZUKX12GzLUZyUShlFu3m3fwELh9FY6AAqeqLOuV2bdhPhif3V4UyIJm+x9fWrq1HZzmXHkU1smkdMCvHDPSJK1VXSycNnriEimHaLehZ/Cwsmlg1732OzX0/NMqQOTkjBf7IN9wNqzR7Oa9UV9ygkYjSX6qFKJawxKKpo3KcEwBCMdc5E74szcD46bOFyQNdXb4q2vM8GMhL9NeXgM4QBJzZ7B+MJ1K8bKch9XDskla2wKitIusNiiycGOmRDMH3pwAO1l/kPuYfyYe0tGlMnFxmAIjY8y1OJJCDfqdT4ebD+7Dq8gcezUY5C/Eog+ykJ5ZjVFFqHkfUccE/mVEBGX4Qy1opeh08fyb0GtnRQjnvMrLcFALh66pc3OTb4itJVqo0EQlGpAcFxIoEjqFjZbzrhgK2asmh3TK33HI3OBu5A3oeNNjfCVD8GP4nvWaEf6i8Q08EAvc39uID4zyGybijA28X0m0yX8N0MtnLyi0W3bxLofiJk0ugKA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(9686003)(66476007)(66946007)(38100700002)(4744005)(66446008)(26005)(64756008)(8936002)(53546011)(508600001)(71200400001)(52536014)(66556008)(76116006)(8676002)(86362001)(55016003)(5660300002)(33656002)(82960400001)(7696005)(186003)(6916009)(2906002)(122000001)(316002)(6506007)(38070700005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mMp9311qDMfkvgjFIQ8S5lnLvZArUcEEtf/y5i3v8eW9gWSipQmiu+QcAlVe?=
 =?us-ascii?Q?VvTEhj8ay75AS0BVASS3JVBaKGCGbyFtD57lynb5aNOJqdfQAli6XjOmtw4U?=
 =?us-ascii?Q?i5gK3Wpzpa8LVGqNV+nqgzucgu+lnXK/z/8TX4A+mTG1T3GYdDJnLy99F1tW?=
 =?us-ascii?Q?tVhPQLe0smorK8hObenNaBg5oAHZiXiPjvCiPgLwBFKN4PDSbCZZeJCJ98HB?=
 =?us-ascii?Q?vH5ar1g70UeyMq5am/Ygc76mP80/BI1tqmPvoytiYB8E5KSE5nDffIWtInmh?=
 =?us-ascii?Q?FkeYZVyMEB2arPV0VyrEiSf0Ji3TQdXUyHrNJLZ9zdDraEyLm2DiEdhC9KYD?=
 =?us-ascii?Q?kWOH+COoQfoBctezOPO0yoh5u82xuiDUKqk7Hcwmp1wY0yo6XPW5GBCF0Lui?=
 =?us-ascii?Q?OJLow/qm50j3wbr+s1eqkC7oh0I3gtOWC6CUvN6F8IWW2yzyfwZW6FlTXq0v?=
 =?us-ascii?Q?USLJ/AKQiNbhIZ5jbPdK8wqOHZwzqalq2bqefqZufobr8+Fmoe9SbTEgy7vX?=
 =?us-ascii?Q?LrSts693fnAl6MVpWO+Nnd0lvZ5I1+hBDGsk5a8msfMEegubPkZNAgIkXRvK?=
 =?us-ascii?Q?AUqms6H+xmBEqY2DTdajkCtLVRliPRZvhtxR/f4hA34ElzzMilDKzv1zRRpx?=
 =?us-ascii?Q?FtKiH7b025Zx/Y896gniJ7uWZoK9Fes1uQer17JFDy4oJc+VULtACmUWizct?=
 =?us-ascii?Q?gcBZ5GgiRiWbdaRbmjtYv0Hk57JCh20Ns7XJvGuegmfqvvva9mYjj719zlme?=
 =?us-ascii?Q?irhZzMeeOsgdcy1iyywuayDxHwv/QHQcjiz0FvigkKaBAZypenul0t2g9w97?=
 =?us-ascii?Q?tyq1b4yJgiJ2mvsyKWUYzdIaj3Dr0ZObuir8FDnoMYPLb4UnU0x0IX/rknAh?=
 =?us-ascii?Q?Bf3KuXFOp4AHa1lEPwsF5YSQSW1PGWcGbuyUOvTV910nHmimbSsKqByNf7+o?=
 =?us-ascii?Q?OQO3UuXx/AFvcj2h2zum9GeLsBSYGQltadWV1ZcTIJv4hB3oCOsrQRxCwFJv?=
 =?us-ascii?Q?DsdiyifMErI+uem/oHUVF7qHOmSbVwT3LZzXgF6yWxlUh5qWBNtPuH+V5KA+?=
 =?us-ascii?Q?Ki1xVgD86ewBYkzkzVJbZznruC67IzMchp+t0NU35HPb6pYPllan2tVRIuwt?=
 =?us-ascii?Q?nUxtr5GlTeVU4cK5IyWTRnj/iBY+TZD6vmLUPKSLAodQSwrs1uF+i/ksCKKG?=
 =?us-ascii?Q?IYPZxygZlt8qZwWKcsciLLTiPj5hKrLtRURNX8PL9xqqt5HyAn8F16sVle/V?=
 =?us-ascii?Q?690e9givkK3TPgqqptLteaq3xBGZQgez461nGzKIq/mfELh8PuQoxYtTjZoB?=
 =?us-ascii?Q?7HnhJzLVu6ZFM2xDJRlY6FetQ2j8/mJigEWBTT+XyLpjL8N9/VhzGt4xmeSK?=
 =?us-ascii?Q?VnVyS2fqZxB+kwzuteyE+ixdbl7Cs8x6caDmBG1CPLLyfsALzYXUZEwogo72?=
 =?us-ascii?Q?PghC0nT5EiyE7SFzU9D/ulnH10m4oVq57PGBAbvgoJnKDCgLSV4iRx4oKmYq?=
 =?us-ascii?Q?sHLPqMp7uHnr4nPRt2zRxip9KL7idpSJXaT4nBSs+rL/+kB/0hMz1d2CSCBh?=
 =?us-ascii?Q?Ot1DswfTvn1y9zIFSq215JFi/B/2jdArm3nRrCkdRVtQT8euAWHGdjOsIyNC?=
 =?us-ascii?Q?/7f68NW0bTcGoLcJqCEkpgbKTrAxFcNja61GPkMSE7UydnvPiumw01EDfcdp?=
 =?us-ascii?Q?ta3xyZS8+wdFq+NuOC8DtnOSImFJcQoPzpod85voG0u3EmB92m/+9Sjw5+jr?=
 =?us-ascii?Q?e5fKdrZgxDNFruOahFj1cCVWUF406TA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c23814bb-3ec8-446e-507e-08da397ecf86
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2022 10:03:23.6382 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jYZI92cjtWizJxoAOztFBkoPb+FGCUTIQnzA8iew9iLVBxqglvLE90luZnMbDoumUGeRQRcdy9JUHrET76XGWDoFj7ePaYr7i03BQgMVmQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5673
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix adding ADq filter to
 TC0
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
> Jedzej Jagielski
> Sent: Friday, April 29, 2022 5:57 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix adding ADq filter to TC0
> 
> From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> 
> Procedure of configure tc flower filters erroneously allows to create filters
> on TC0 where unfiltered packets are also directed by default.
> Issue was caused by insufficient checks of hw_tc parameter specifying the
> hardware traffic class to pass matching packets to.
> 
> Fix checking hw_tc parameter which blocks creation of filters on TC0.
> 
> Fixes: 2f4b411a3d67 ("i40e: Enable cloud filters via tc-flower")
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: fix commit msg
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
Tested-by: Bharathi Sreenivas<bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
