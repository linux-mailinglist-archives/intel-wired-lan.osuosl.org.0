Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 037EA6454BA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Dec 2022 08:39:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 78C9040B42;
	Wed,  7 Dec 2022 07:39:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78C9040B42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670398775;
	bh=C+KkKgjFBvDkfcwMw+vtUSomIymz75W6ZcQLjozzgSk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2fylly+TPYyg8+CjSQoxToDIobno/bsXo7hyZ9EwWwsgmPq4BFcPCDu/D5FBHyyDu
	 iwTjGV+bCwPeZkQHJot7wu3uYvJLOMOQbbXVCMGczooyWt83Wb8fHxp+fTMWv9GqTY
	 ChgQ7TgGwN0IQ5GcFTGdSB/uQnzLgoMnYBp4Lzy+Dr77Bes4AajqMhQecBIU3rs2pl
	 OCuCHFnVTb0wOUIGYdREBt4I9mSThdwSwtFMtdO0XN4f0ZiJLntHdjKdFQ9AQbxaKv
	 4j/OtPRU8jvHqZEVwkpNBFCJlX10EpY+G8rtyxyLRyBITF767c7VMdGd9cfAdUlUhr
	 5pkVIkjg/5ctg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ueSuGqazktpg; Wed,  7 Dec 2022 07:39:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F87840B56;
	Wed,  7 Dec 2022 07:39:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F87840B56
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2236F1BF28B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 07:39:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0946D61091
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 07:39:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0946D61091
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lKIZXpWCnUQh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Dec 2022 07:39:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0EA961088
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D0EA961088
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 07:39:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="343856294"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="343856294"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 23:38:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="715094986"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="715094986"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 06 Dec 2022 23:38:58 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 23:38:58 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 23:38:58 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 23:38:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NS5HRJ1t4XqhU2FKmsNAPLu4jm/RlNfqaq6Vyfuptlux8BVG0opk59Tf5Xh5svuRzG2y2EDNeO8yfdxZsBvgMugaNHfSpy9sobbWAssDEMRrRaLXGR/wLsiFsa7vJiODF76QmlzvPdFJLDEz/HS+ERUBrvh3U9Aeyi35XVLWmaijTsKeNwZOoq78xjQ6TOECKS7QbCERI5sd5Xec/iUJDsFejU7SvR2yBBLhTKYGE7mA3uKMkDn2O+wOGsR1W17SS5bKboYq927Xr1MhY2/pKyM25nCn1mSHYCLcbasZ8EtiXSZZrvaz7ENB7LUMwbMdPZVfVEwcOT/vjgfqiCLHvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=85KdVl0+x9lMUIYC+IeOFqbL3zvdRL0kmWJD/JSK6D0=;
 b=S3AKfPedqUoz9R5L611/ouhXUpfd2TQq+UndIjkDxfWSnreL2MpMf9dpOjA4+dFEIj6agi+lM/VHlnUC299QFIPhKiwsrp0uzyu1aWkh8dfsbcrK/dromySM0L7T7iEfHyQCXSRPc3gygRcmlpo02OoLyaJmDaLopjA0REUdSFkHWuAmM5Jq7355QyC/6QGwkulLL1mEx7dSrkFvusOLJFhEteBOnscIMbfeiM0Ax1fk9NYbK4MDFD2pYFocRZG98kJQdxVSR5TMhVI/1s5XYgAGwPwhu96O3IBT9QyswMFoMF0umjSx++cuJL6+OfWOCZGCX6s28y3CTDz7d8YXLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR11MB4034.namprd11.prod.outlook.com (2603:10b6:405:7d::32)
 by PH0PR11MB5951.namprd11.prod.outlook.com (2603:10b6:510:145::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Wed, 7 Dec
 2022 07:38:56 +0000
Received: from BN6PR11MB4034.namprd11.prod.outlook.com
 ([fe80::c535:5a52:6c0d:566c]) by BN6PR11MB4034.namprd11.prod.outlook.com
 ([fe80::c535:5a52:6c0d:566c%3]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 07:38:56 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [e1000-patches] [PATCH net-next v1] ixgbe: XDP: fix checker
 warning from rcu pointer
Thread-Index: AQHY+H8qEWHom134MESBPZQu2xe5+K4/9boAgCI2pOA=
Date: Wed, 7 Dec 2022 07:38:56 +0000
Message-ID: <BN6PR11MB40348BD7BA4EF8DD7C923D05EA1A9@BN6PR11MB4034.namprd11.prod.outlook.com>
References: <20221114231623.1666767-1-jesse.brandeburg@intel.com>
 <Y3OPUMJ3iBqmsK8P@boxer>
In-Reply-To: <Y3OPUMJ3iBqmsK8P@boxer>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN6PR11MB4034:EE_|PH0PR11MB5951:EE_
x-ms-office365-filtering-correlation-id: 80dbab8a-e1c2-4f70-3b4b-08dad82618ec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d4sJA9jcfGEySSMa/LrfA2zP57MygeblsKZIExGpU6UWneAMeHMpJ0nfxiufkdi+/bKQ43e/yNqT+wIY0wL8ScJThPqaiUFD/T07e0kSH73njDi1D7AiEJ/xVKEjnmrxaI4v/PIDkx24a3HuMBsGoInME9gIkh4rAUsjMBrqeycLdYfajwrFLFpYUUwHHKYrTJpReYdFQZvZaNJMlknrXcMS4cKVQNCii0pYjKbNHotXKAKlEkhtSaxF8+aja/bWWtSdzq0/JC734QllPUwWO3yelvXIP7PH3Ihn867a8mA0Yd/sAAZ1omsF+MkOJmvtkqNY7rZ8ky886hsAM5pyf9Sdv1GQcVeH/Tq1IJ/ZfSiFhJdyeU62P7h3owGZ1TGUy1DERQFiYL0qx6/9PiwDhO9FeSxCrQdbgxIJ+bC6wors7vZl0jVQyjEmMSiacf7QvkrcnjwUM307Do2QFD7Yv1cXlp6dWdkm0VGogldr0Te8xWSRUpp8Jeg/UqwIjYlo7CBpWJCd+n0rnqFUQ3tCgQJecTkwVeSVSejZm8v3zOvpdKCXC0lNKKkr2eoluS12z41opQEqaDO/5judv2Kg4td6akNHcpnx5QZnyljVyr+EK6Viw0J6oOE7NmpPMYk/ZBZTB6HZyhnPFDS4Fh8EKEULEsM/GyhDVcIcMpVuw0qVKx72S01Q42eubyhrru6ZB6hAvc9V6Mk9v3ppu4+YIg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB4034.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(366004)(39860400002)(136003)(376002)(451199015)(76116006)(478600001)(122000001)(66446008)(86362001)(66946007)(66476007)(66556008)(38100700002)(64756008)(2906002)(83380400001)(6916009)(71200400001)(53546011)(7696005)(6506007)(33656002)(55016003)(8676002)(26005)(9686003)(186003)(41300700001)(5660300002)(38070700005)(316002)(52536014)(8936002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LunsIIkVn9FoTJk+67ng0BlnSi/c9YmD4hh+aTV33nmgvlbM1zxKrtTCGJ1e?=
 =?us-ascii?Q?ZcIgJu06Q/zmsJW3Zw3mAf87JMdsxXgwpYrAMhqDgv+Qws3CtM5iMWigd0Rz?=
 =?us-ascii?Q?2QaHV/9VLWxHR+3mL5ARGjL7JV2Zz2//MOUy6FwJIqEokn5MpZJcACO8Tp4V?=
 =?us-ascii?Q?+wXpbbQbQj+EjU+2sn7+N6dY3es1MbXRj6SowEOY7plO8UUHLb1u8EAzuQf2?=
 =?us-ascii?Q?SUbnVT3HAod/ibkhPHbIPUOA+TwYt6HK+Vnus5IHho+d2kTr94DJIALSZ3Xm?=
 =?us-ascii?Q?2XD1CRRv5Ec4iJnKMZ5ntzzMN0Y5UsjJ6NNlIl9ueJmvDIA6gYiL0NImUfHO?=
 =?us-ascii?Q?owek5y6sel3fevzle0RG0yMvQjIphc9g4p2RKPlV3/2xfoWaCFwTYXZH7xBW?=
 =?us-ascii?Q?I3pEfMPvnK+/sl5aUjn1sEGDwfoC3MBXNC94SC4qp9wmfu49cbmhFG2rhIOK?=
 =?us-ascii?Q?7tFS02MU7dPC3Wy6xvzAb3KuyVIeGVC8yHIUdsuqikol07tEMhQUmd+GjCRg?=
 =?us-ascii?Q?8/AG2FCeJFB/Ds2bd+iF7gIz/NwEQQ5oO8ad278hitrXdNwN6WtUNS1Acl11?=
 =?us-ascii?Q?Q3tE7melUXzxzVLrB+F9OzsGkF4VCXAuiihbspZu+h09PtEeBjOw0hCrM8MU?=
 =?us-ascii?Q?+pbWCGiPai05s6lCzzy0aaOB5wCRv9PUvE5t8g/2pbZYzLsfDrLk+kz0yMCA?=
 =?us-ascii?Q?ja3iRc2YHWVZirvmnP3XefaRJkt8dzmwxXhQ57Xo5P+YH2XhvKZZ55TTVbbH?=
 =?us-ascii?Q?QJgMA8qrfiUYXl7BLujaU9GVPjzFyr/cC53DmmWQCYxbE+Rl3ckH/XLgIiay?=
 =?us-ascii?Q?OPOQYoCt4gHdK3DmMisbo5LQqu52p8MDnbY2lztE1769fFaGqk7qxShlViz9?=
 =?us-ascii?Q?wSp5VXAga/xen2kElFCUPbShBFmK2nyIMOvCqzLJP5T4X5d1MAQ0qCXUpEcF?=
 =?us-ascii?Q?Q9iGcP/fS3k/caBfmyd53smZWkyr55T8O053qLPe9YatSfLHYHJNM2BUmaQC?=
 =?us-ascii?Q?P840A/GTNQtSI58AxOqNrRimaijbMi2N0eUgx/4HO/FkENiOctPiawvWuV5g?=
 =?us-ascii?Q?1QTy3zN0P1tbSM+fSgtFq0mUhQYsUSTUysXUAPFhf9AGk5wcULLVxnbcwTYW?=
 =?us-ascii?Q?buqxknoxR6c4WnE22qmb9LTnTIrvbD5npGjTqOxI5+sJm3co/yoa/9vhjijL?=
 =?us-ascii?Q?k95LU5m8aB83oW8Md60UrLhNihN3cUTNS1xzccLsa+da0nf0yzEfeAlj+EkG?=
 =?us-ascii?Q?2Rfszlm62VMN6YgX8ZIp+GSL5wzZ5DF1V0xPB7RWAcEHhFH9I8uAK4lr0fgg?=
 =?us-ascii?Q?aujhu78+1Q8aeW53T1tcCWf3T5AzqbKs5B0cRhobmMgbkLsatN94G/tIe50U?=
 =?us-ascii?Q?SJjPmwCSSNQWmrVZnm+HVQNySL7klZu3lwsRFmJnkfcg4DcfO9iV+cOwgHDR?=
 =?us-ascii?Q?arHhFnyssVIOzWmhes5+rdEePSO0lihM9oVCS0wlAIyl2ik9HKXUvSmZntVn?=
 =?us-ascii?Q?TYTcDWMdzE0hKZs9zyPq0DPkDW9WvgpqL6HBtdql9BOmxkyKEzkITKFvK3ne?=
 =?us-ascii?Q?zkTdfeR+EkL2HZGdeg+euCcfDT3QKXAQ0N/RpC75?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB4034.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80dbab8a-e1c2-4f70-3b4b-08dad82618ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2022 07:38:56.4213 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OvgSLTCAp+zbxlQ1sOYSVS83UlUyiBUOMk4DflTnE8efYHTqwW4MFjev9zavpv98xdynyPnLZRmFkKVAhuuR3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5951
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670398766; x=1701934766;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=SeT4+817sBz0hYegNL5uG68NwurQ5FkGZgNY2TN0pT8=;
 b=mXUQL4ZQCUKlJZ9wN5rFFe3j7tZ035q3s2Q3lH29txWaG0/yUfEmHojj
 H815F/F+5rKu2l/llQ8/JEsPhMs1Ep9yjRKvupgog4a+KGW8js/iYl7Fh
 ZEnlqynsIlBoA5fTt8bVefVSm1yLa2TJn4jHvBIfC92DvnVcTFzFvfs0k
 rnK5AMn5fQamtr2rdf+zug30YEKTQ6XBdQtoaRX9MapPoHm+8edyfv4Pw
 LSpBA6IxYOmh65w+DMTKqx2H039fLjz4bVt/7CGk6m3w7rqgSwiGe2Kzs
 QYr4tLFua4Z98opjR6hauW9RTXGSgIGnekgBYRn8YfrcgqJUt37Uv0dIB
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mXUQL4ZQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [e1000-patches] [PATCH net-next v1] ixgbe:
 XDP: fix checker warning from rcu pointer
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



-----Original Message-----
From: e1000-patches-request@eclists.intel.com <e1000-patches-request@eclists.intel.com> On Behalf Of Fijalkowski, Maciej
Sent: 15 November 2022 18:39
To: Brandeburg, Jesse <jesse.brandeburg@intel.com>
Cc: e1000-patches@eclists.intel.com
Subject: Re: [e1000-patches] [PATCH net-next v1] ixgbe: XDP: fix checker warning from rcu pointer

On Mon, Nov 14, 2022 at 03:16:23PM -0800, Jesse Brandeburg wrote:
> The ixgbe driver uses an older style failure mode when initializing 
> the XDP program and the queues. It causes some warnings when running 
> C=2 checking builds (and it's the last one in the ethernet/intel tree).
> 
> $ make W=1 C=2 M=drivers/net/ethernet/intel modules
> .../ixgbe_main.c:10301:25: error: incompatible types in comparison expression (different address spaces):
> .../ixgbe_main.c:10301:25:    struct bpf_prog [noderef] __rcu *
> .../ixgbe_main.c:10301:25:    struct bpf_prog *
> 
> Fix the problem by removing the line that tried to restore "the old 
> prog pointer" if there was an error, to make this driver act like the 
> other drivers which return the error code without "pointer restoration."

I think we could just remove the pointer restoration as there is a high chance that driver will misbehave if setting up resources failed. It won't work correctly with old prog.

> 
> Also, update the "copy the pointer" logic to use WRITE_ONCE as 
> many/all the other drivers do.
> 
> The code here was modeled after the code in i40e/i40e_xdp_setup().
> 
> NOTE: Compile-tested only.
> 
> CC: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
> 
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
