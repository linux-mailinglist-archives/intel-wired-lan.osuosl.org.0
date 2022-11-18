Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E6262F552
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Nov 2022 13:48:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA4D240574;
	Fri, 18 Nov 2022 12:48:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA4D240574
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668775729;
	bh=YoSuSwYjw8ij98sYHdrXcaD2//Na/hSNJtzelYeXd5Y=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jX9+FESoPilw4gKYv09dshCv65C6qWX+I8bAA9zpe6E7CMHpzHRuOqUtG69rwezFx
	 0GhediGESIMRJBEofciFR+epEg5rkfyFqZphyNqqm7JiRtbPtovuhs3EsyE5HtWBou
	 rsNFzDCZaIDn5gNoWVh6LzHi+fdT7hJtH8gDjhgTMPIQxm5WnAR4xom5I57aWsrepp
	 72u3DkG9Ae5YLjdk1hdpe7cDUgBbRr9MQoweDXwlwF1jyb8/GuH+uoBZ/VSBHORk6/
	 BUL4vftq1lc8V4CDFRy1OjzaSMk37PV4G2DaVsqZsgSbQpjVzGFDo89+b64xKQdoop
	 6tn4pKkNIR5eg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tB8uyn2v_6-m; Fri, 18 Nov 2022 12:48:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CFDDB404A0;
	Fri, 18 Nov 2022 12:48:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFDDB404A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B9A531BF228
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 12:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 917A2408E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 12:48:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 917A2408E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5CHFt2LuvMZI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Nov 2022 12:48:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59D464089C
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 59D464089C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 12:48:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="377395026"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="377395026"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 04:48:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="885293573"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="885293573"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 18 Nov 2022 04:48:41 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 04:48:40 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 18 Nov 2022 04:48:40 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 18 Nov 2022 04:48:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XK5nveTtM9p8TDBE08+0nSVNfvEThZsp7CmV7zDb4sJuuEzK2AS072OjaQmYUUKaPgpYQSLt+HkDq4/pidVqOi/NCZno4vkix/Iz4d94uLcWuwlcks5xu5co8TfF6+TjnCm1QSy6J8fZd4nDgGYWOJj0GXFnx0cHgrmWJyPpY0s2/blmNlslvPJvYwOzwYcJ6YYMt/6N8Th8tCN8PzeGGbV732+9XBy5znJcuydmySCaRmHkuD8d4pSKbdhhkaRN8hs55DAlx03C03SE6qV5wPWEaD1l9KHabnIZsuL1NcNpKYPLdaArydGP4SiqW4h9sRg/r+HtUyU2kq+n8MldUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L681XHfCgvm6/P+8dQda8cslqN0Zq1RNMyRoJYPk7hY=;
 b=hFYfwSW6yldQLK7WLQyNYED66b/RuWHYK1o6f6lK8RotrrI3JdX4Acu9OKJyPJmDI5ox5lAUlz/t0xBgHdg7p6O9pKZnBZGT8/t39ZNqBJJ/28V63QUsvW3MM8tx+JqhOLcyRx4FRcLlNBR0zazvAlAUvWeY6qmr4ivK7S/kern6xUKBHakiiZ8zZjghHoXUxuEp9D9IZsxtiNhPkn55MwREbSimyzHw/+8F1TjlZO29r4rM6t8HY/M/ga0lu7UbBmHJOZu+UJP6fZHGk7ObcqFjga2b2e2C+QZ6qz8mIAAaGUchgfB/nMlzGdEu0O7Jg5MEvbpcLFjsbvMxQsUJKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 MN0PR11MB5986.namprd11.prod.outlook.com (2603:10b6:208:371::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Fri, 18 Nov
 2022 12:48:38 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::9f29:9c7a:f6fb:912a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::9f29:9c7a:f6fb:912a%7]) with mapi id 15.20.5813.018; Fri, 18 Nov 2022
 12:48:38 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix for VF MAC address 0
Thread-Index: AQHY7SAIS5rqPhrgxkKdjTmGYduX/q5Evc1Q
Date: Fri, 18 Nov 2022 12:48:38 +0000
Message-ID: <DM8PR11MB5621522368E6AD66632066BDAB099@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20221031120028.2457-1-jan.sokolowski@intel.com>
In-Reply-To: <20221031120028.2457-1-jan.sokolowski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5621:EE_|MN0PR11MB5986:EE_
x-ms-office365-filtering-correlation-id: 0e296670-71c0-43ef-e656-08dac9633700
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MP7d2dbHFQHhXUyxTa61vadZEaMpJNsVoMYcOvH+h8F754c5r5ReeWWLb3NcXpuDZzXZDofFbQ14aeDDFIrwDvmHffZVA9Lfb7GN8f4D2X4gdo9gJ2T7bD7MCl7HoaQI2MswzGbKA9tj3XiVioQVT4NLLSUoLaaCLeDNCSf9qcZZNv5c/Ge12T9uhUqFb+hBL706X6VQYA6cisGK2/OEKk4X4ejrGhlHtsoLXCcA60FkUpw7md9h4+tccNyQNg8iAes+pt4IN1lg8HX+yio375Gl9yEv5G/aI2YynMyCrX0/WV9AluMWtcOhoEQ/kk6JZD/VV0O9NgreQ59/K8lNS6qLmQkt04ufQMB/pbvoI9nX4awKRBAl+VVQDGvl8W0oiV7ExlNSQLngx/7HgnumqadRmtOsN3s/hKhDsV4iu25R5LLizuMjh7KLHPQv9Fsz64LxZbbQ9tWRHRNLfaFecWsdSDQQ3Jd96rFg/d2hDjIv9FgItdGf6cDk3vc0OGkDLQLe7aAdLxvHhyByuP0Lnf4KSeewtg6k0d4ZJM4jOAsgnuDDWFUeEiy8dIL9FDruybHcHF7LGUrB3g0WvBPT3XTrFimZyPUZr5cNa0QI9f99ib/jeviBuJlwqMX8iQwBiMrkoRKQdYFoRYTk/MlustHBx57brjq03EH1RdwPoWRjdyP5QtzXFZhv4PTXLLzc1b8DtYYFnHU9RC0o7sKj/w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(39860400002)(376002)(396003)(366004)(451199015)(86362001)(38100700002)(122000001)(41300700001)(38070700005)(82960400001)(33656002)(107886003)(52536014)(110136005)(478600001)(66476007)(66946007)(4326008)(66446008)(64756008)(8676002)(316002)(8936002)(9686003)(186003)(76116006)(55016003)(71200400001)(6506007)(7696005)(66556008)(83380400001)(53546011)(26005)(2906002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pUVb4dV1Ldc/ZLgNhmF91Y6iAYOpYpy0mpxMP1knsyhgtqGKTWD2BVHza4sx?=
 =?us-ascii?Q?F7vVhnHVG72sbGWy2wIB6FLvBFlRXDjqJje5mvw7ZA6uBxpOiHQtUcKZFFY8?=
 =?us-ascii?Q?Pi3GKVJyTtqodzt5o4mIekzCJz2xunCEa5Wo2D3uc3KHzRHmMy9G8x+X5po1?=
 =?us-ascii?Q?t2zXTArdkDEkLUF2G+lepqCI+xcXt0noUhhm2oOXuo3kf72p5zOYmTfahc12?=
 =?us-ascii?Q?a/q/YscsOcS6BsV/5PGWtfXzfMkmWMIt0qmIPeEGqeuSj+WbGg2tsob3/zz2?=
 =?us-ascii?Q?rbqjtQniEW72AdYErxLoUk7STUF8YmjrmI7z1LVYESjzGZbXO9ZgvQKnSOX2?=
 =?us-ascii?Q?8Oc39n4LWK4qRqI6C0phZ6hzZ18qOw2P4DNwe+84kZuFCRKGKXAzXqixWITu?=
 =?us-ascii?Q?St6bf+LWZKt7ceHHdD/GtAL9CndyTyc3vZRw//mmw9Ul8sGWO0lAlImnSZPM?=
 =?us-ascii?Q?7qgM3UlcDl4UWo64sWLfmVcfv7pKeScB0+n4+22SppFEfvY6CQERfwtxBGWW?=
 =?us-ascii?Q?hiD20/Jb28kKHpPq9oCh9IveKevIVqVGgR4G5oHSguzF+MbGZD2ySf18mzso?=
 =?us-ascii?Q?3aWwRSjtUWLv8d6HAPPdGkBxk5i8Wce86rI0paIcbdSOzzx87zyEpZ1j+tBY?=
 =?us-ascii?Q?40wXvwQn8cO2YIUZzPBfRZLQbuPvg/TloTWY7HwNK8IikpgEgS9Jr7+D9xhm?=
 =?us-ascii?Q?gcJp7DSJPgyA6xPmWhGthPToH6K7WOeDSE/xPCQlF3CJ0SoccNLi/aRBT1Jb?=
 =?us-ascii?Q?K8q+b+J5MlYTETnNKHTJx+es6R3sso82Rt4EPosirEBBT4OlVp3UVcxLZc2z?=
 =?us-ascii?Q?pSZEOKswwT09vF8GX0s2wS+M+VldRU3eYzelcVShqAPT1ylKYAoBK/UtfADj?=
 =?us-ascii?Q?uM+FyA+I8o0Zapf609Llk1z1sdDpS/uDVIfTwRLowkgRCoT6zaPlJxg/dgH/?=
 =?us-ascii?Q?Oaf09H0Cc1SdX4rnOJsYPZTeFDRnLE7QRzm7F1gl6dTJYHODhzLbHkMccOAi?=
 =?us-ascii?Q?Xm6OggG9+Q4XrMwjls69IgyFjuwRL+S88j6hyiEMmM/JXPeajGWzw9wVCtQB?=
 =?us-ascii?Q?kPStTpzQzLJnlvz78+KMHOXJR6ICAD8gNG4OGjcmYiamPOiSUL1TbGGb006N?=
 =?us-ascii?Q?iCIz7RkQVB2HqgwlVjCe9VUX9sjTjnWLm/rrUFs7QRWHFU9naEWMMb+V4H86?=
 =?us-ascii?Q?1XiPWknngddVcpAfFKQ5K5NLoRDL2xpBLSavd2CMSHS0sKR5CJ12Vp82MgxK?=
 =?us-ascii?Q?gF5dugmECiS8QS94qU4nExijUNdKxFkeuNMSd+ROwwSNp5j03WwlfSYLGRlG?=
 =?us-ascii?Q?TCAqPWu5acNpT9/iPL5DzcifQ+/ilR9RwiB6JQQS28vAfUEONjdWR4SZGkJJ?=
 =?us-ascii?Q?U5wD2HlopJKIa2TbGIEd2XlfPFjC4E62mesL/Mkn2TK3IVrWgsHhqkjLKhgN?=
 =?us-ascii?Q?K07R8rtvHbeLpxuvq2jfJml0O9rtbS3anMrIDtZTZTvao0CiSdcGoYiNrozi?=
 =?us-ascii?Q?hPnA0HD5YONSmeR9pr+s0L2z5WEfvRqFrWDnu5MBzqxVB0S0t83nh2urbN0s?=
 =?us-ascii?Q?p6wrWp8zEqW4elnYPDC+SNPtEeRYTK5Z7kC5SpPc8Rt4N2oO8YjunDMAC4gF?=
 =?us-ascii?Q?1g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e296670-71c0-43ef-e656-08dac9633700
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2022 12:48:38.7785 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MYDgtYk7Avc2jpEtu3GIIzF39vCXbtnMvNhu87bHBRIDTv6AG7fvIxCsEzUsA0ZXhX6kyfhgicgje5YnBhnDeXK+36/3ra9VVj6n3NK7sdo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5986
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668775722; x=1700311722;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kdAvUiNQvR/SHcpVCKSv7rWfsqW08lzuH04EMqYOch0=;
 b=Rc0MpuDxx3DJQ3AEtYJaM7KXfUCfD+IHi2LRBXO2t93InJXKb3eGKZel
 Kub6LBeUUH9+tJE0avZmEihv4QwJctIGYG/L+/IUi7aAXFwwX49EB0Kjo
 Re5NwJCKOGR0nPt7SzMHLIs9omkyUqHfl3kU1KF0giWc9Se4I1MEPIcE6
 ATmFztQt0zbh3StB0v9gKj4SyBr+85/XtCZUI0H3He0TynmeIUR00mVST
 gdnoAg9HhDPR8yx7apiCx9OYO6LQBmrHfkmveNdQaaQDF+A2lBmCG7w3S
 qT8KwhRz25suC2ipvy+fh+qI+P33bTbUzlkiimS5zHi8mTgTDu83w2pXs
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rc0MpuDx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix for VF MAC address 0
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jan
> Sokolowski
> Sent: Monday, October 31, 2022 1:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix for VF MAC address 0
> 
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> After spawning max VFs on a PF, some VFs were not getting resources and their
> MAC addresses were 0.
> This was caused by PF sleeping before flushing hw registers which caused
> VIRTCHNL_VFR_VFACTIVE to not be set in time for VF.
> 
> Fix by adding a sleep after hw flush.
> 
> Fixes: e4b433f4a741 ("i40e: reset all VFs in parallel when rebuilding PF")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 72ddcefc45b1..635f93d60318 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1578,6 +1578,7 @@ bool i40e_reset_vf(struct i40e_vf *vf, bool flr)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
