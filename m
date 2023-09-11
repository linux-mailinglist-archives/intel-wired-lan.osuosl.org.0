Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BAC79A2A9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Sep 2023 06:59:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F1E540951;
	Mon, 11 Sep 2023 04:59:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F1E540951
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694408392;
	bh=1MKnFTjyj0budBXIiIuIo7aKMofIP/JOG+L7jRPCkX8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CGnbwmUGjnXpgqwqGpHZmfdsxiwwcu7qRhkVY3ZPi4LTm1NPGVLYU4lMxBW2fU86r
	 Mg0Nt6dCVDI7c8ri+jiLeaAkZWHcFtlWpG2K03q1/f6dYwTdyzSLxM0A148Pr68s8B
	 cbJeYWrhbOfVTGP3PyYE2lJacnA2OP9cbaJoBZ/9FOsZi81M9Z97ZoX4vv7Fs8RFTR
	 zcCnQqWx0+4io7WPGMRUmPbkiO6kBTPBy2RmMtoWZqrkeWo07MOznpH51Lx2h35aP+
	 oVd1vSwxPWcsdkmKw6kdEFsrulCAXYOb5/J8OAukskMWIZFjrB9FmplfzAuUmApJKk
	 /nR+uKRGzGmtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IJuHRQRZDGhQ; Mon, 11 Sep 2023 04:59:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 856C440922;
	Mon, 11 Sep 2023 04:59:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 856C440922
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE0D71BF255
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Sep 2023 04:59:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 88F3860DF4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Sep 2023 04:59:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88F3860DF4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YLN5f674YIYC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Sep 2023 04:59:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 154F460687
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Sep 2023 04:59:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 154F460687
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="377910640"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="377910640"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 21:59:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="808690314"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="808690314"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2023 21:59:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 10 Sep 2023 21:59:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 10 Sep 2023 21:59:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 10 Sep 2023 21:59:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ss7eBTMXS4JxXP91ymiMFIsk6YPgfeVfAbOStZsqymZ3Jdd+6FqXvvvSxIcC2HUNcDUxKa0d3Wn+4qhTqPQy9KhVt6tTL6u7NeIgoCTC/BPVJpVUMkDNBht83+/E5ippIBYVeLecc4DmZXJw32xh/lrXtlSgp0Vh5OGYI1xm1DDtxFAMUy0P6k5VcW5Osv9gvPa7EYm4ascyKIMxoM3cVHVd9A/G4PeDPFDugvKqVis5bkHxfALI8N/pFPQpve+NvvJjaugoC8+7dg7gkBLa3+jQ/IqoSF9skNVB6Alc03BvG4DeSAKtV+fsSCCOks+cwgmjMHDrHyRK0xstEO5BJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WFQvl/gZQWqoMg9/xg84ffTWboYPvb7A2fX6qlbrNLk=;
 b=fH10I+ahocRFWGr7IKZtPDKFvXojxuK49UMjYRyU8/mvSCPlZpECMiYFUAj+PZjCAgZa7U+RQWmnP6QgEZvC53lL5DraeAzCF9TRpia796BN9VSmwNJDHgRVKR0IJ7YPEjSFtNdV4HoXV1gfXgziXPTJMRUBItyHRf0wwyY/7bA3VFviA3WzdcFcxifK4nfiyduLTtmb5H9LJw5UzcB1VMyzFhMeizwHY1u72/dV/AlymEqM4IzxZi1lpp59+16/fnUzwZSnNxzpSojulnVN7LSUMHukzrz3emCNSB9UUQT6SqvmSiD1oihIzmuxaISNisx7x/9emAadrOpYzoqZ4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by DM8PR11MB5704.namprd11.prod.outlook.com (2603:10b6:8:23::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.34; Mon, 11 Sep 2023 04:59:38 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d%4]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 04:59:38 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: add drop rule
 matching on not active lport
Thread-Index: AQHZ1ycBTLeo9uCFF0uJtSnLmfaW9LAVKxSA
Date: Mon, 11 Sep 2023 04:59:38 +0000
Message-ID: <PH0PR11MB501344BB6E8849A630C0C83796F2A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230825071319.2230108-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20230825071319.2230108-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|DM8PR11MB5704:EE_
x-ms-office365-filtering-correlation-id: ec0f0f34-6bb6-4460-0724-08dbb283e6dd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OluAHws21tVKkoIDwpb8RzGjEitJWggbGAY+THTkVVP0NuaBDGDdBHGbL4P9+g8gNNDQFN19szNXik6DdHo9mH2kFdoYtJu++bPD/abKrcf4GUVzETUXWvjADYlYZ4eT4QpEulOXsaD7SPNV9rKi1Zn9akAYGDJO8kCeEN6+aVco80ff59QdoHlM3s1bzImEzNiXyQL19wn9DQs10s3geuA6idGVvjaQAOS2z0AYs5X8GcBpFFKOb6FMv7oHhzseaAnbNslrJ26A5HoHvYABnG+EY68avjo6BrFx+VdiXKcGSgeOaWuvY3H2WsCv5EqQ/qlgnjRnWeUBZNGX/kisxIzvn7Pf24tVm2xeOwIIlUMVcWFMpMLd/giHXvX9RRuA+WkUeTBFn9ac3nj5/cumbeCX1OwE6NHJS78duBMOoMQaRlckb+wz4hvHUx4e1KshhQ1yIPJmI7uey0sc1F90XUkL5PWPVH9rVENPa9/w4ZRfkFSl+jfJyBOMcrirfcOlhstN5Q/rJp6Ob9fDA7XLaA5v3dKgJJEQHa+fxPpCulWNT4O1QXSDbrNnkLtJ6xn1ToNxJ2jmjVWK1C+uPpLDpB1BW6rYQUZk3LGIG1P7oHM+PzyqmfHdV50f/oNZtsNZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(346002)(376002)(396003)(136003)(451199024)(186009)(1800799009)(122000001)(53546011)(7696005)(6506007)(71200400001)(33656002)(86362001)(82960400001)(38100700002)(38070700005)(55016003)(26005)(4744005)(9686003)(83380400001)(478600001)(2906002)(110136005)(41300700001)(52536014)(316002)(76116006)(4326008)(8936002)(8676002)(5660300002)(66476007)(66946007)(66556008)(66446008)(64756008)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XIB2XAHGFBnxqfAKWtsEIgt+SHB6CnClHJgrxrPEXI8gtF72P3W8ErzvBwGb?=
 =?us-ascii?Q?bio5IK6R1P1v0Z64pYHm15DcEJg2nOtzxlTzPvlKzCq5OovzCvmVOV1nDJtM?=
 =?us-ascii?Q?IHl1qDF3wWFTH4MozoeRFYdoTzKhrbwJqxAVBXxvrK/udAw9AiZzHsPySz8j?=
 =?us-ascii?Q?76M9fAiHuJj7P652KE6SrilqixnsivRuClfYFvpV4ebLdbO+YESkDIDw5j8o?=
 =?us-ascii?Q?m82cYePpF8hNCP4CvkdtGb4/I7aiW7xCIf66lbNRgmzlTZgf3rK6W3NydiNS?=
 =?us-ascii?Q?Bf1OBKHIXowCYa8rntHtuAH88xw7Xu8kpsGK6K9dOIGp7R38GKFEsZTJCu8Z?=
 =?us-ascii?Q?7fdKJDcZp0qEkKb2avbvRz6s/eEJ50dNzagLXHjyxOIDLvRvhYTBe00tkd0t?=
 =?us-ascii?Q?tTP5DtrW0TLWmGPfeitOgZZJKxfSqPewoqxRa6hi2gsgO3PRv/qvW52h+i14?=
 =?us-ascii?Q?PUR+4fVpeRsLt7GlZFzklroI+o+0/fyd2VEvBdpVesRNvXE+MaIAYDUGvpPB?=
 =?us-ascii?Q?hhmmVq9nWHOF0gpp6fmae290nLv9gkMYIDl+FlyJa8SnllyuGTpn9cskCSQQ?=
 =?us-ascii?Q?vU4T2K9e8G5Lr6O9JYww40xtNLLr6hZkoHbXpffGcv9HUzpfcvrrr9NUxKon?=
 =?us-ascii?Q?D6Z1f5uDXqNGMONj+Qp0UNDkr14kDtux90Bq5q9cXN5mNrPSvuUD/WFPfeto?=
 =?us-ascii?Q?M4ugnS8ixb1Mq2d+6lGDQUhwcXFsvFiXLyDYdcIuX2GMkBFq0uZjux0ux0nX?=
 =?us-ascii?Q?dEcrpoQJ2GmbhwvGGMb4mQQQxcaQI7FlVfAJbWNZvTDE53cBI2lU1ApmQ5Lm?=
 =?us-ascii?Q?WQDsKytQXl1YJORIE9FEevhk0LoQa+PaZy2oD2gr9JO3KAPsiYN4UaPMZtbo?=
 =?us-ascii?Q?vTqpolzZSUkGpsA43MFQSoxE4wqu61KeeXfR2mr0ufZ1MPIq3//DZ63YYptd?=
 =?us-ascii?Q?glxmpvjRJ7jaMJV/3/PP8Kyz2781JCH8qJ+Qcsqr0S9hZGoFGmz1aUrNqRHW?=
 =?us-ascii?Q?Wny2dH+DK0hVKQEow4NQn2sKB1Bv7pZdSDa2EcY9XAbr/WPV1qstGy6FO0np?=
 =?us-ascii?Q?nSDkaxgS8KvIJjxJBEc4JKzTBgrhdqzWM8UAYv9tPUAclxnfdJP+mCas+qSU?=
 =?us-ascii?Q?HEXD69lgfZN/DqL/PyyhV9wbEvPB2osVhzx+LfXQaP3rmcebb1xJjrFqNqe4?=
 =?us-ascii?Q?GHKghg+qpSbfHIQliEpQ4cZlsbeZCugtT/M6Ltck1yadVH+H7DZTIdizg/vA?=
 =?us-ascii?Q?1YDQUnEuVcxXMk/cqWIDm7bYDEDPMXYOdhjtu/TQpjj97emMgCSs/NTKuo9b?=
 =?us-ascii?Q?XBj51xMcVw73A0vjoDtafYSn21Tbv+8NaBq8AmxWHEFfpDlA+xmaNqhh22pL?=
 =?us-ascii?Q?zpUQ6idYoBkcQTjYaN2VRevukcWNQL+MHJaODTyDnc8hz7j6pcMRjpToW0RN?=
 =?us-ascii?Q?J/MSefafl+p+f4FY82YyOLLmXoJYnHNOB5hHvUKf7IVdBH0VKBSI3uN7FOyA?=
 =?us-ascii?Q?DFonLuw4WEZ47OGxj65sHzjJRG9FCSdZO3aqb1KFyVQvUOY1WG2dejo9Nfz9?=
 =?us-ascii?Q?Da764Xy8cfK/ojJ3/5Vx9gzXg1s4nRMhby+Ck34W+KkeD6AJnN8o/Ib221Db?=
 =?us-ascii?Q?lg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec0f0f34-6bb6-4460-0724-08dbb283e6dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 04:59:38.6721 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +s2BFebWKS4rBoYW5Hi/lkyirppZhuU82rJf3oqpapfPM6QZfIZfylb6ALQYDixBzwy3uyF+yecxeIX98OnBxwxyRawENn8OlhTnxa829yY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5704
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694408383; x=1725944383;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6puRT//mEzTYS8jMA4hok+Lq80+EPHmEvb7pYtogH5w=;
 b=N4txFdrNAIdGEsss7TCfdV23XOydaM4TdK32OJdjTprdcXazC4TyPYJl
 hrIIc2ABWlZ6WgGuRgwiloTEjbgUXxpiyEqg71cJRnuvxuUbTG/1JsEVc
 e1lUsGFNTIaTYgP17s88gjT09MsuWqLyDWzCzIBKsQ9GVD1cw5tyGTsMt
 6OBHqDcb6krnduLkP0RYncoNRaSqDc0xY9G8bL5s1NUlJ3VwMM855BVHp
 xX8gK9h3AI3ckrc+Z5ESGk5xP2kotYKgMQyQBD8FHEqb0Jrqd69R/TrYm
 6fM0anR3hMXSyWbj9JmI9fm8bG2RYTw0+0lcO8k8dWbrI3iL5GZo6Ol4x
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N4txFdrN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: add drop rule
 matching on not active lport
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Szycik,
 Marcin" <marcin.szycik@intel.com>, Simon Horman <horms@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Friday, August 25, 2023 12:43 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Szycik, Marcin <marcin.szycik@intel.com>; netdev@vger.kernel.org;
> Simon Horman <horms@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: add drop rule matching on
> not active lport
> 
> Inactive LAG port should not receive any packets, as it can cause adding
> invalid FDBs (bridge offload). Add a drop rule matching on inactive lport in
> LAG.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> Co-developed-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> v1 --> v2 (based on Olek comments):
>  * remove zeroes from tabels
>  * style changes
> ---
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   |  6 +-
>  drivers/net/ethernet/intel/ice/ice_lag.c      | 87 +++++++++++++++----
>  drivers/net/ethernet/intel/ice/ice_lag.h      |  2 +
>  3 files changed, 75 insertions(+), 20 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
