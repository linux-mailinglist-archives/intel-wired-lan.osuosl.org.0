Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C5E5BA798
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Sep 2022 09:47:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 591AE41C7B;
	Fri, 16 Sep 2022 07:47:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 591AE41C7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663314457;
	bh=atRwera6Gi0PCKUDn5VMqzdG32HkauqDKJvO+gXByTU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4LvM+qq9OBsEhViMlnGJ3E5RC6s+xRxL0FNddMnQDsEs06ztITDuxRbAdu7b9XYjf
	 f6/6QDCZtcg/poWnWObYLjtDgzgMeazm0gyqXHLImLbcE6zPeQIrgVUuC+N+gVgnQw
	 r+zocmKYf/4yfDVdsyNVYgxYXvBllRW4N78/Zcp2oanq3UY4UfevLrocPT1Jrj9FQT
	 oNanTsSy+T7c1MvbGDbFaMeOCnAI48sVBPZFXpCEgxkUIwcvR5FNGlyXeAk4gOewE0
	 UGtykzlsCtGwbso5sXjT3lno/OorR3ODZG4e9KZWd4YR8Iqq798kKWB9MhDkyVf1GO
	 DBC46ocVab4fQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2kHTNQb-UBbK; Fri, 16 Sep 2022 07:47:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79B7941C73;
	Fri, 16 Sep 2022 07:47:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79B7941C73
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 83AAE1BF41F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Sep 2022 07:47:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 59D89415FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Sep 2022 07:47:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59D89415FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aeJN064W6mBU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Sep 2022 07:47:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8956340147
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8956340147
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Sep 2022 07:47:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="360677091"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="360677091"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 00:47:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="617583806"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 16 Sep 2022 00:47:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 00:47:28 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 00:47:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 00:47:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iRR4ixGFLjyNyBvYpMd5gEat0do1sqi6D9qPYO/VgDfegtDveLoKXWNUXZu6cr7aKZrSy71j56ERUE/dA5HQp4d1e4t74TCZ4dLOe4IkasaCfXYdwq5/CRCTCgHnxdj6CQxjVaTokv3jnUVber/FnHzivby43cW0Nvt9cHXPIh5Aut+l3DX7/ZzAtWVH9sGGjx/GvK88Hjw9EO8Uf/PAF1YQe8V1PKtKoSY4QY5ZHyjNMU6SUzDk8W/w/bz82Gal4ukkO3CVA27n/xIsvNyRAzRPo891Ai/ZIOdOVzbLyoZPmHOif178vFHMVUMQlUrr3btdplQrVOBR7WlbH1obKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3UcyuqXr2sSPn5yJeoDNLzCuCLqS+gQe762Jei5wPNY=;
 b=Nm76a61jsnjuDigcQWhNCzAfHQJoxao0sqKtpMJ54e3zzTHeVPV1QoAjugsxDMVB1swSoCzNVjR27uYIII+6tO7eUJsQCk3kYgBH1kZnOtVKmQKbnuxO9z/28jvrhjqc9mWAroz41oG8KB9V5QC12l2KuyntisRXjR4Mo1rnwI3vsZ1FH7TRDAjtaYHcDql+4wvhcgyG+1OSQfbTlPrwSJfA3tbwbDiJoEx0Jhc7e6XAcACscRATEzobokw3TexzrT33xHwE2Ak6guJu3XqoGH5BnEjyjQ63TPtQJuRW3ibdudEBp8/9Ch63dDqKmIznpfhMTCUlsJdsdlnHMkkSxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 PH0PR11MB4949.namprd11.prod.outlook.com (2603:10b6:510:31::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.16; Fri, 16 Sep 2022 07:47:26 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f43a:da9a:b75d:e4bd]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f43a:da9a:b75d:e4bd%9]) with mapi id 15.20.5632.016; Fri, 16 Sep 2022
 07:47:26 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix bad page state
Thread-Index: AQHYyD91e4h8NOim9kymsJ2VuHtGLK3hsIWQ
Date: Fri, 16 Sep 2022 07:47:26 +0000
Message-ID: <DM8PR11MB562186856A57B76613D7D3A3AB489@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220914133913.489614-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220914133913.489614-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5621:EE_|PH0PR11MB4949:EE_
x-ms-office365-filtering-correlation-id: 962b6f99-bf3a-4a3e-e9df-08da97b7b306
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B8pUlngYxG4JLiJeUNqCopK4BGgp+7xkthtjjpl0y0rDTHNA4cJuO35rR26VnI4LntWfw9qv9K+FcagkQiSglhCWwdQADmTWvmTrsfBoR/YthgHTDhY0gyhNFTsKtN18kdGmgFWR5GX6v2tEdLW9gZlabVknGGJPbk+ynv8U/ygahZgtHWzi2Azr4efHy2Ip6NrSXkDJ4FzauH2n+DtrlwvlLnbPf4iAitqbN5LlwDkgaPVvdnqdwLDOk2kTy/gaTWVe4TrOIejF+Vl4xH2jhReog50dAxKLWdakk0wVsaWEUZR+FfgMPSKHTRhOZ5E0OXvGUwAi8NH9HseEYUx22nq0H9Iz6m+CzCPm0DwY7PVlPB5lopKtnnRB0qDRKgsoRqyDBqkVw0Nm0fRKIkMfEUMYjU5FoJdNVDoM1ITy0eez+uBTaZFj6IoUGOSvjGkiuqJV2Yk2B4lBaeWfDxm08Iqcakm1ZUDP7HPIaot5nHnkJd40aSbUgmlbqHaMtiLXh41Ma5CRtyqEqemn1eHVZoQn2bTwhVfTy5yaCDqSkkJadCDb4nSnFrEX/jAesgzNE03pQEuQvoC3DJESt0U2km9GR7mo6ktVvWNaiuMT5Napo9okxOfvZln82n3qRY2TtewfwHHRPDhvV3Nw3pPTzF7Ulvv54GJLOteeLlM1fpr7ig3aoF2WOMkflwm8Z1CVo8QIPjgL9Z+1q/c7atFwweBBE5JU6YTxIlIdXNcEFiz+5NeR8pOiV3/ILNIIHeo6CXgIna+sxKAn2VOdi2jKKQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(39860400002)(346002)(136003)(451199015)(107886003)(186003)(83380400001)(122000001)(71200400001)(9686003)(316002)(33656002)(26005)(6506007)(53546011)(110136005)(7696005)(41300700001)(82960400001)(478600001)(38070700005)(38100700002)(86362001)(2906002)(5660300002)(52536014)(8676002)(64756008)(66476007)(66556008)(66946007)(55016003)(66446008)(8936002)(4326008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gewe2Jz58gdn0rHleS3miun72ej7obP3FZTwU0FnxN0+YLg++PVzPDfH+PSg?=
 =?us-ascii?Q?V0h67/pYS4iWWeK0VHR4QjIaRgg1Mt6FRjyQ/jICSdDLEOh2GJA+HznHoecR?=
 =?us-ascii?Q?X5WfbNYgtraKs7QvTAmA89EnCXiAcDo2G9PO1/oFrHOkI5OJsLhUHT4Z5POO?=
 =?us-ascii?Q?y2z8bHecWePXxl1ZJbA0JX1jXqcPP1smP/3XcvRfeG4eFP9ySE8AU9ILUpra?=
 =?us-ascii?Q?DhCCDIi9mrLskWVX0CkEQQIZ9suabHLvd9rJvuRpOKQ2SjXgPuExiyg5K+TI?=
 =?us-ascii?Q?Rf5TAlp1TUosWFBUb6U6wnrpuS/pR/SevMlqMn2PcEC47pZsBA7RLadXNCFD?=
 =?us-ascii?Q?IqChmeZOGTy2YH1I8Revq6UddrG6is8SrSBK6ULS1XcJ5Pemv0Lhwxwh8gSX?=
 =?us-ascii?Q?/9vFxuNY4xkjkNNbrWJpwbH9MCZH0T1uzjQ7iWr42Gim0uNCUPntl/M9kYNn?=
 =?us-ascii?Q?S5zvqsHjy053gejPD2LVnqo5FIjKKtKsdQ+5zDrfEmY/xGuS6zFpJtheL5fh?=
 =?us-ascii?Q?2mE/QkUo1B63BelGm44fj+ywO7TLPyyap/Qa18AHyHleHN2FV7QCnsDPsek9?=
 =?us-ascii?Q?9SYA+bDUUYe7YPwcia1QY2I0ICq4M20bN2FO0aVXPQZ9sXbp165M6TAjQIH9?=
 =?us-ascii?Q?NQyyqmkAgf32as4sdcD6wgXrDHULSc8t9iv/T6wjGHJgTABSnraaW2VnlFes?=
 =?us-ascii?Q?jA6R5avctydgzNxC1SvzfywcAzXeV2TxEAO20wB1jBuXgNXuYikYMoZsJS63?=
 =?us-ascii?Q?oTlxPWICvr04abXC/UunTZWM/i23zUNTyYjcMX8bLJGFgJwBAhnywvEcC55f?=
 =?us-ascii?Q?wbb5vRB3v9xfzZuQ0hlBggInaFodC1nFQzxDG15zXcjYc3iFqt9R4Mx9Iami?=
 =?us-ascii?Q?Lcke0S3BUDshhjp0iUuPIsPrJ+2ovkB96voVGwnT/SZbZrboqi7+xngDmq55?=
 =?us-ascii?Q?agm5yNwU+rbM2a82+/WlpSlwDN6Z1tbEuy2PS2b3PTzSh3D2pxiUA1xg1fT5?=
 =?us-ascii?Q?mlcvkZX6C6vo1+nytSjHZltqq3LTT0edWMT8Xdrv9Fjs01E1x4inAyJsXREN?=
 =?us-ascii?Q?jwXxeT2dnpooiY5z/rq19nw52eM/N3BXBL1SfPaS/GWg8v+n62KjKNO4tL9Z?=
 =?us-ascii?Q?NBfK41M7my1vr6Qpjs8zJNVNWmGUfepvR2kMAG3/iqW2GVrhfQYsSUY+EUnQ?=
 =?us-ascii?Q?JkG4Ljjdyx9ZpmhH99RcIkvR5mNn/R+tTYnf7sBOjJ3I93xrDYcyeaAps5Gv?=
 =?us-ascii?Q?YXJGZ6iRpgrbaa2mljFoon9nWkDb5UdOkZFWPUN8I3Zz0EEZAIP0XJAkncDq?=
 =?us-ascii?Q?mhEra1M/G6opbo0dctI+WMNRjRaR3WZo0JrSl/5/aJrmyGktCUBCIg6VLJbj?=
 =?us-ascii?Q?MGqBXk5njycJ3Hd26IID4mSJd7c9KcpyD5KUDFSBKYzgUm8zQwQNWdLm2zx9?=
 =?us-ascii?Q?xyDBbZztzSzco1Pz653JYGQ49wG1XSGBE+oLO3PyOgD2r6faqh3K5p3Pnj5x?=
 =?us-ascii?Q?ToEiDjp+2ABDB4bmLJKWzhZI23TreGEWgzbWNpTynR7uzT35S85c2EVVlUtK?=
 =?us-ascii?Q?4j49wbTKFwpNeJLhW0yaJvZVCVxmjR+Pnb7Rr1M8ZB4KRObzgJ/lh3XE8zZ1?=
 =?us-ascii?Q?0A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 962b6f99-bf3a-4a3e-e9df-08da97b7b306
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2022 07:47:26.4105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wKNAo4mvDgVeNoAHH16Zb5PpK2P64oudxehlt2TVZoTsmy+zBXkPm02ycq3C7jIqTVgRUgeuxBO+Q8Lu+6k2oIPgTMYNS/RDSdf1X0Byll0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4949
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663314449; x=1694850449;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C8fHZGmWBSoxtQUIFn1IJu3rLFhI6gcNxVOgPhmkkyA=;
 b=LmYS0i24elcfWfgQAHUo0Xm9z82iPPYTWzqzOVowsGDnj0MZ7uyuaDG1
 VOxd5d1i4Yo3Y9aC3nt8pG8k50XJMiD6vpJssI47lQhlbxo3sqpuB0c15
 c7ouFT7rPkY8fajSNE+tqaconw5OHYu4EYFSyTNtpLIuGp2FS8M7bUn8W
 fRo/0qtRUz7WHFwXf5qCAMIyystNGcYIude3Hfm4QFXHScCVa70TlESpX
 wKjtKqCkUw8rztgDapEOrdTAF3xms0A6u2U0X7xvr+yj6ItcX8/BwmFJi
 D1YPJ946oquQD+Ei0d54QI9rUhGmfmWxZVI27a/zcXi/aSCIHlrDs7Uil
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LmYS0i24
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix bad page state
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
Cc: "Zulinski, NorbertX" <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Wednesday, September 14, 2022 3:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zulinski, NorbertX <norbertx.zulinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix bad page state
> 
> From: Norbert Zulinski <norbertx.zulinski@intel.com>
> 
> Fix bad page state, free inappropriate page in handling dummy descriptor.
> iavf_build_skb now has to check not only if rx_buffer is NULL but also if size is
> zero, same thing in iavf_clean_rx_irq.
> Without this patch driver would free page that will be used by
> napi_build_skb.
> 
> Fixes: a9f49e006030 ("iavf: Fix handling of dummy receive descriptors")
> Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index 4c3f3f419110..18b6a702a1d6 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
