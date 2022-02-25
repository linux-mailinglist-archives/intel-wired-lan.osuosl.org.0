Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 256054C4A5D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:17:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BDAE2612A2;
	Fri, 25 Feb 2022 16:17:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aeAzXRQhDx_Y; Fri, 25 Feb 2022 16:17:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA0BB6129D;
	Fri, 25 Feb 2022 16:17:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 61EC61BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:16:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4EE724155A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:16:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bcqzxNuBDFeb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:16:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 98185409EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645805813; x=1677341813;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q9ZvUVcS+hw7BtZhp6ReGe/u7bG9tHXSXk+46h/4SQ0=;
 b=Av3YR9/4nfqS+KAlv+SbHbe1j3tE18LPKa73YUAeomG+TawRfNrj4hdl
 ItVyUXTGPn5V/SHWcNWSXS3pGcrgMpP1V56CDvS3lQg0H9Mo3cMWWWYr+
 FMbH6qoesQi2dsDTawLD7hMykqcnhtFmmgcnf5uE97rEikBw/vZv99tSE
 XucGtdGSzsBI6mqaCbd1fMe2vWrg25IxvKelH1asv2PbGdoHsua+mWBq2
 RzawK4XkNI4lIUSlrLweC8gS2LxUTo8uKTyS+n0bkcyLgzv77C2zmASqN
 1ohovNCwLPw44qzKezAgclrLfdIB60KFUzwQQR5+2K8bEshxNY0iAxSUW w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="252254659"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="252254659"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:16:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="792367904"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 25 Feb 2022 08:16:44 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:16:43 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:16:43 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:16:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jYhMgiAKzotqQBQioLpu3RdRm+KClJ5iTT+Mq/Xm2/T88Dk0R0y3yJJUJ4vM8AH2s4Qydx0PB3bs5DfzWYy06Hkb58QlX0/Ee02pdZD50xtsd3oMB6ZUtgJWIw/YL9iNZNaYQ2+WU9l6LdCDINLyPv3WowrvYDHUte37q8m8Gx5U2akCjU/RfboX11HXAE+Q2zUV7XBKKLLMJK6BECGX299sujDV+X5GSIa4ChMaD2yrQykLuyJPr7zyiQrfuDVQz/f9qjEGRR8HISeKMy4cIwI9Dfx34QWtop0b7S09EzTIpxNOcsdeApUuhpfOnxa7xDvQIXzvKslWiFgxdwm85A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HEcaXWwPTwS1wYBycUnvp2NSCVelYxQyrlDNQvJItog=;
 b=PuHiT8t07sqbVMiSRT7hRGS9zV6KczguQeMzI3mse8gs/xaN+x/Dx99n5K3z7nR9ZupCGftXX2vv1vxOrWnEOiC808BwbL8EPoMTxmstvuwp829NZ3guN7RHKqrriXWbfYQ73A30Y+NpBEYGNjrsyz2bgKyAAG2Ny+ULBC9Ob65GagW17gnZPzkZ/s0rlcQ9JZRl6RBNEB/lPCy3xGY12Ke8zhh91I6lii/fEZjNTiNlhyTWT0KN7NYtBI3RGgAxkiHF6X1ct79Ha61JETb8PBiwSwkp8jDofzyStMUWipMbiD1IUBhSL/Qs6g2BU6o6sZYx/L6s0eek1ypnrjl7hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by DM6PR11MB4299.namprd11.prod.outlook.com (2603:10b6:5:1df::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Fri, 25 Feb
 2022 16:16:41 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:16:41 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 5/8] iavf: Fix race in init state
Thread-Index: AQHYKLKQ3iJ4OyU6xUKxLpR6kxqED6ykdK8A
Date: Fri, 25 Feb 2022 16:16:41 +0000
Message-ID: <SJ0PR11MB56296A38ED7AACA911EB9EB1AB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223123801.30386-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220223123801.30386-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 65e3a83e-7729-422c-e08e-08d9f87a3573
x-ms-traffictypediagnostic: DM6PR11MB4299:EE_
x-microsoft-antispam-prvs: <DM6PR11MB4299559E286E73063127F558AB3E9@DM6PR11MB4299.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B/z7LknAbAl+yDW0W2Ssf2ZcgJHgeLfXV6dk7kPMCiFwEXUTiBGapyeVa/Xi/R8kGBgoDMiz/RYvdMl5JH2WxKxAnc0cFdbgwSsyBtetM1WA5CEje3R3Sly0+mnsmtDA8iectMVlkf7exn1Wew2dCBu4axjSJl+yp7bqd5+h/WRNkMHd7b/hkVkpir01sJM7uuwHAXIl53DTWpsmOb/d8HTmDayijNTPMDBEmzhW6u++AaavJRkWOVt0zBdq3zbWCBrzYoOz1mZh1hGoEdfmLoP5kXyf2G0terqdnJ3yh+eZPJzuWOu/4F2sFkXSqXGKS+NSZFdiKntNev5CXzsENgP90SrMeQT00aTp6zNeRBbtjXOnbx5ntZcNpv53dDk2ZqRn4GUROEe4hbzjqwNl3vJOqnDSI48wzN3D0yuqIOsw884ubK9ToGY4OrM7Mqd6EXvv3wHnO7UDrc65escQpmbG9E5zRjIwaV962qUvY/dmWZTFrCJkh01owuO0zLIkLFLCUvUyvKVzZcQr91iPeVHlcGt/BgT1NsNXNlKOhbpZ+nGvUiuLTCZgMTLdIat9/ejd4j3neaS6/TTmRS1ypFdCN593p76qf/vzUHcoHZSwYP7RgCVF8QJoBooLrXktlMx1j56Byzppjdx7jgWhB7Lssq+g2L3cXIgl+F80UoFIYw+j0iQcJFCKzpM2mSh8R+ka3LilrRcFDb1I2c0NMQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(107886003)(52536014)(2906002)(82960400001)(5660300002)(55016003)(33656002)(9686003)(71200400001)(38070700005)(53546011)(7696005)(8936002)(86362001)(6506007)(83380400001)(110136005)(316002)(122000001)(26005)(54906003)(38100700002)(66476007)(186003)(508600001)(66446008)(4326008)(66946007)(66556008)(64756008)(8676002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6PCC1/AQ7nBKL/LANCSpJzmdONna2WUGGLoOtCXQnUdXZyDkWFfbrPehBr3r?=
 =?us-ascii?Q?vWArEtfJD9LyeRYyRHOrZRX9jJVsv6bvRRPGWWUNTWaTYrsBN7pAo/adx2ix?=
 =?us-ascii?Q?glwMHwqsEg4tGP9YDbFEtxRKS8gr3uVrGPMUSfOPYqUkdDwmj4T90LmdtyBX?=
 =?us-ascii?Q?wxTv+PbRPkEXYMjccR3gdCZfYUVbNnyqNkmn62UGHbPlZ7M1AhUGbbyTqpzn?=
 =?us-ascii?Q?FuojwpH4bLPIzYHyQnXFF267cfXf/I9GXKf0jVvYhiKnu30Efpa04n0ty54V?=
 =?us-ascii?Q?5K7oS4coKehM/g+sSrQi3QTRlF3gWPJsAX2+ZkNljrW5nLmFFBrXIUr4oIBN?=
 =?us-ascii?Q?yTGCraa5cAEdTuU4qf6WqB0uhAs0l3gQI2ttjYofFWKNPvqgWM7RSicjtHuC?=
 =?us-ascii?Q?RLyjgJi8otqr4jVCAA/hE+kANIvE/kigk8vHsDYJEyyPBQASYjY7fr8BjOT4?=
 =?us-ascii?Q?EEmjpRjsG2gDnuRnY6HYeWrPdlqrAxqFOegjGYVjeD+vGHdZu/F3bxLomBJL?=
 =?us-ascii?Q?92Ip78PPQw5+4tmE2O3fl+G6zNQdR49hui6w/IPx89jOxU6919wY2Ip5P/A/?=
 =?us-ascii?Q?gUoI2X1JBp6gqEd6muofobqAOwMNpso0U8HNXcVqt7aSQWcYrbDOOFXcpYHT?=
 =?us-ascii?Q?0vDDif1HxJ2vzR5ffee2qKZG7yQj9HIlz20GBnDne3ciSNL6c0si1fDGq9rX?=
 =?us-ascii?Q?JKHRmGE3wgMyZcDjX3nfnoucAQjm7mmmSYMeanOT2jXPErKrivhyT9r3edyN?=
 =?us-ascii?Q?Mw+PaNi29iRM/fVttNG4yGDHLNPChynyr1wlcnqafM4zJfnK3YqIwjhwLSOD?=
 =?us-ascii?Q?ZgMbTDcPd3cPBaaUNTIp00QBONftKpanTxI/VJJB5pgP0eU5rrxITzuqAsjJ?=
 =?us-ascii?Q?Rsd3n/iahLNWj6vESCT4AMaXHP6X1fa5ZZZA69IsfjpWQek1ebVDAMFBOpx9?=
 =?us-ascii?Q?v/2UXLvCF7kQZVvaW+Fy//mYGPivskJW/jY7ccemLKnhNcXMNyLcEx9bBHFs?=
 =?us-ascii?Q?+63M4TCWIH8u8SX7ebkSSSHDMlmU8shlhmgL2idofxWr+heGpvIyYiIkhn4z?=
 =?us-ascii?Q?0a2mEJq53m9/iiBYC/Vxm7CZuoUYimesPaXLnf9nED/ZjhWKJzMV/4G0d4es?=
 =?us-ascii?Q?TDSZuHq1F9TTIvW0Kn3jjnfknnbEjGUYndHKvwAW2Iy05NUfWZgtHqd+Rfb6?=
 =?us-ascii?Q?YmgeK5w9Dbj+T29CfVMEa429iik0aIqMhft+6C5kRlOvSvl+uP1cWZxRiYXs?=
 =?us-ascii?Q?OnxIQRyJgVeVX58lflHJuB2sdxjZCCWWzkoJ8yMTREGAPUeBEnn6obonSuGT?=
 =?us-ascii?Q?bfq70XObvWb5ou9TKeX7bEetMJhmb0XMpQCceMkCK4pKx3CvuT/mNnOREoev?=
 =?us-ascii?Q?Ii7aLI6NVqHBwSsDOvGNT2v3ts24DFcQb40dmTvo1exys+rjwporqnGc1oPS?=
 =?us-ascii?Q?dqrlf6eRsmdRu5DmIgqyZlDzq25gGm2exyCbwo0XpBIIm0WtKnkwDjDXiEZo?=
 =?us-ascii?Q?nzmmSLJTENBTBH2bF0E5dss/nha9ArcN1+ctV8Vf5++eivXgTbkKiLIPbdbG?=
 =?us-ascii?Q?fK4SeLZu6beQx59Pf2OSU1mysF9bA+aVxwlfScbYx6li0zpUOnVmlnqB7C6K?=
 =?us-ascii?Q?0ujezNnO61ZaJ2f3w/SnW0iZCbdpKy6/HA4HkBXVTaoTeSYrhnK4IexU5WWV?=
 =?us-ascii?Q?qK+Mag=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65e3a83e-7729-422c-e08e-08d9f87a3573
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:16:41.5183 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BUHoBTrXdlpPGDFaIVQzJM0F7mxF4ly8Ntn/4B7E2zMf0dlJenKD++7mvYHmhGMnL4vRkk7RmUHrrLWJsGwi8IZ2kgVUlvZHGoiZ60bBb6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4299
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1 5/8] iavf: Fix race in init
 state
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>, "Burra,
 Phani R" <phani.r.burra@intel.com>, "Palczewski,
 Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Wednesday, February 23, 2022 1:38 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Laba, SlawomirX <slawomirx.laba@intel.com>; Burra, Phani R
> <phani.r.burra@intel.com>; Palczewski, Mateusz
> <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1 5/8] iavf: Fix race in init state
> 
> From: SlawomirX Laba <slawomirx.laba@intel.com>
> 
> When iavf_init_version_check sends VIRTCHNL_OP_GET_VF_RESOURCES
> message, the driver will wait for the response after requeueing the
> watchdog task in iavf_init_get_resources call stack. The logic is implemented
> this way that iavf_init_get_resources has to be called in order to allocate
> adapter->vf_res. It is polling for the AQ response in iavf_get_vf_config
> function. Expect a call trace from kernel when adminq_task worker handles
> this message first. adapter->vf_res will be NULL in iavf_virtchnl_completion.
> 
> Make the watchdog task not queue the adminq_task if the init process is not
> finished yet.
> 
> Fixes: 898ef1cb1cb2 ("iavf: Combine init and watchdog state machines")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 67349d2..36433d6 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2532,7 +2532,8 @@ static void iavf_watchdog_task(struct work_struct

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
