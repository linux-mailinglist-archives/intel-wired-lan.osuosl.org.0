Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F015C8267A5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jan 2024 05:53:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7CDA9404DC;
	Mon,  8 Jan 2024 04:53:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CDA9404DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704689631;
	bh=lIW7zybaLf1wT2ZDJvPba9dneXUty+VXqVH66Hjpx7o=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5CkdgJanl8afG7Znln6FpBYcItBxRdSFDxXzAGOnu09FWi3CTpRL39eUr4ZWmrZfM
	 cAm+eXTn6UGV+MIG3kWq7M6lWVrQjB1Ad2KeAqUk3ahWxp/CuT/z9cg6a95uspyyQE
	 UH7BwSQj/W78oNBgbpViv13dpquk1yjnUSaJTeJpmYyvVGEwgqzCTvQJ8/jGcPuj/1
	 dNts03dryxYB0APz8q4lKWQ9Qugroq+Cd3BYN8MuHYSMPPlex34cQcj2wVezNhCiDP
	 oN8VBUELv3oc41zzyMXcJi0TJX22igpKqUgtEjOwb4rF70sUYyXrFIXy3biwlsFGer
	 eMc7IrogP+VRA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oAo-V7GkZA_x; Mon,  8 Jan 2024 04:53:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E052404DB;
	Mon,  8 Jan 2024 04:53:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E052404DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AFE801BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 04:53:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8293740223
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 04:53:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8293740223
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uhSafpx-IRVW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jan 2024 04:53:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 692EB400F1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 04:53:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 692EB400F1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="394962793"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="394962793"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2024 20:53:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="23050549"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2024 20:53:42 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Jan 2024 20:53:41 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 7 Jan 2024 20:53:41 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 7 Jan 2024 20:53:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eUuqdH25fIIUr600Jah1q0G7Xa6RZNMFGsHkDuDKaXHYRM7hom3TkdJ/nxUBRU8lBsR5M1IU3AiHJMD/8Skat7Zpu6srNf4hSaAFSAB42YGd/6nNUG20i0qIJVm4901/nodiqlu96JoKWvmokkTeKj1ZsLg2u6W8OE9DTBBljVpmiTBbkWUkp7b9EJaZfFD9NKdsoLTFGlr1iul9ESH8jDAu3u0ndmE0gk3oJYmZQAkbwqWZiymBWlGmmqfcBllGOtqgA9Da4LnOb7cHcPnSYhnNTTt7LLGhbUV9o/9ZOOGiArhay/DMNJvFq03qfOF4dIaNsPtq5m0CCfmvpVwZTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lIW7zybaLf1wT2ZDJvPba9dneXUty+VXqVH66Hjpx7o=;
 b=GoyBF9iYccHxKtXPACa+9d2JxsSs4amxme9jW+8hEfajdJMPcKn4ROxivu6gwAS5nV3300S7TgaTxtmA6c59jQREw+5+9zDtrd112JAWcLkPQWGe8IW8KEIm4L9/L965znwkyiAyEZn6O+aNLi+j0SDkdRpx6kCjWeQsrzOTupEK1xeBHj+m68O7Qh+gDwoqggDIyJvkk7UHN2rp04Hn6Uf4i578kKgAledYcb9BvL1N1Fc7qR4Ac6EK4mTZ6/GE9ZrCbIwBvfHB2iSrAG9Nq+Tg0Sk3He5O4T/m4PJ8b3zXa6x+T6cdWqjpKk7xyAeplI/b4WxPRuQZydj5gBzb2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH8PR11MB6925.namprd11.prod.outlook.com (2603:10b6:510:227::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Mon, 8 Jan
 2024 04:53:40 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::159c:7c99:e99e:a3b0]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::159c:7c99:e99e:a3b0%7]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 04:53:40 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 2/3] ice: Add helper
 function ice_is_generic_mac
Thread-Index: AQHaKHudgxBK3KaVpEKC7X3Rgu2WkLDPi7dg
Date: Mon, 8 Jan 2024 04:53:39 +0000
Message-ID: <CYYPR11MB8429ED3F676CB978B03F2842BD6B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20231206192919.3826128-1-grzegorz.nitka@intel.com>
 <20231206192919.3826128-3-grzegorz.nitka@intel.com>
In-Reply-To: <20231206192919.3826128-3-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH8PR11MB6925:EE_
x-ms-office365-filtering-correlation-id: 54e35195-5e32-46de-c428-08dc1005c83c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UCFNVM6DjrGAOMKtjJCmEFBDjADu+OpId7IyaHEmCTM/gzWeMiegW+9cG+/uNRPwcenyujXgCGPgZWYDT+EEPw8bS8zA7azwz7+dpm18DnydyDVVIxVOPcTXBqAGnq9v546/lj1FkszVSLkjRlFX8uxu6UO900af1RMRs/f/R0TexZhpNXtSet1FBUpFEmRltll6zQ2FhRlewg5IWjW3wRCJdyJXHIzMHmJKQqriuWwS5sKscf2TnhFRrr7kmOfBKwDRgTyRdvIZFd87xNBOgqbcbZdCoipi/Bw7ovt6200tJbJUEwWmx625ArPPjbQ0eYfHImcrd1e0O6rTBID1RyJa+79tRcMO45sfniweE2xlbUiYZSZNMyMQNPhzn6dnQQChawxKRPSBpXjYxEn5cLYGIm4RxVt5reQOxl0/UzEFmG/dMDw0mB0QV1ok97BnEWedH0jmkx1kV+JO/q0T/mRmgnLzcnj4cZCehluNwJIduBAafTc1fC4ntUl6K0Xtt1+erkZVbvqr76UmfqQEeTCiilxduf4b+/Fz7N5cmzmX2ssKC1S8aXSdpW3x5QNnnZrJJG/H9d7hP4noHIEckErn70Z1erbcosuhckZm2xFALqfcz6I8jwZI/75UugmMpuSKV8WAjyN8xokdeWLQGA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(366004)(396003)(39860400002)(136003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(38100700002)(122000001)(478600001)(82960400001)(83380400001)(7696005)(71200400001)(33656002)(41300700001)(6506007)(53546011)(9686003)(55236004)(4326008)(38070700009)(2906002)(52536014)(5660300002)(66556008)(110136005)(86362001)(64756008)(76116006)(66476007)(66446008)(66899024)(66946007)(316002)(107886003)(55016003)(54906003)(26005)(8676002)(8936002)(41533002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JCUF5AuO8LwTidpoPtmUfO0VF52S2upUiaD/bMXzxwar/XqoPurkvR1XKc0O?=
 =?us-ascii?Q?tfP0MFJZexKwwx83F0L/0kt/AbQ8uk0l7iW6Pgcip0es/ot0Fa8x8VOeParx?=
 =?us-ascii?Q?1SotppsJ28qvWDTVqmUe8IJSJJrb8r3N55tXTaPMhbxm+eh4vz3qAhbCPEf+?=
 =?us-ascii?Q?2/7lrZGw6f4h6rvKIMS60YTzqZEzFskKtcVkYhkdVa3sXRG6xvLVtBIDz5CW?=
 =?us-ascii?Q?LC4XfvC8T7DlLslGPu9icmno/aZUMeBLXE/fjXA08t4/PfWRspDLpfwkm4ls?=
 =?us-ascii?Q?5BEChEhB9EoXvyhUUFvTo51dNhtd/AjkTQUv+tmS3LurcB0ZZgMRO1zmVdes?=
 =?us-ascii?Q?cNPzUsqY8yGPypaqVNRk4zPV5kotnWcAtNALBC3ybJZCvqPVz9ORk9md+of5?=
 =?us-ascii?Q?2tueERzKCNX36T2IhwLu47qt5jkoaSLKVP4D1IXZ1DKgDjYxh4Pb0lc69XkO?=
 =?us-ascii?Q?h8z/1ACKWrlk2R8sXiiceM92x2v3ut4j3VD8u2/5RanZsuwrqqwKaJBXon/8?=
 =?us-ascii?Q?5apg6tslDqxE5I3dCE1Vf9BM7ZGKxlfZkmV5bWCoITHlYmBMCFJnK56h49xE?=
 =?us-ascii?Q?8ApE874aVElm2hAqXO0iIcgvBtSMq3PessxcvJVdIRSsXg/K0/0hcz2+0ln6?=
 =?us-ascii?Q?Bz2dB5RHM+UY/LRPeLHCuP4rvzCGqtTsdY3DpbDJsZHFyc/fSMFzSTd/zbcr?=
 =?us-ascii?Q?7cxD2BqTR15tr6QknxKolH/KKokT3aurmPtizsrPk4Sum8BnLFwEYFDNhIaB?=
 =?us-ascii?Q?YPw90/6avsysAPJ88j7pKVO8frOPA86sBHSf+M2f6UY7f0u0nB40uBv4NJyz?=
 =?us-ascii?Q?VbhQVAwUejX/0LSAR+5YFAWJ2RLvoSyh+Q75lnCTDrRS5k1OCuH7A54v+g4L?=
 =?us-ascii?Q?ZS4wVvLKL1JP+e6sbHndU2oIxqXYRyLBoqR1XCNpjnHJ/85FAJF+BcRHtDBn?=
 =?us-ascii?Q?Lm83nLhN6t845pwP07wELIXx+86HjJo4ab1faFD+mJuv/5dgjz36gTjxLagX?=
 =?us-ascii?Q?G3wrbIr6s1laLhuO7ixxcVDj4kTa9m9QWAOdBcvnM2mHsJg1hQehJPTzdsnH?=
 =?us-ascii?Q?vItubOaBFZyhnl4wghoFNOi7ZhCBiLkKC9+Y0Jsr25uXcoT8oJGi5HivOBNa?=
 =?us-ascii?Q?owbEvh8BoKcbHpiQGf8RYGzylOY1Oj9y4rc6RgpANFwfMRDL6zcG4pkBfygk?=
 =?us-ascii?Q?/lZu6MxJ3somcxpffKwCsVNPMyY6NanmAaWRasr6wxS+zT/RNVOBvsuc+fp6?=
 =?us-ascii?Q?kvQm55GP05fMD/zF6Zfghszff6GlpqOz3QKi4nKhOeYHYt2cCZaVqtVxFBV7?=
 =?us-ascii?Q?qnIOqihjy78Op+fwiXQckWCpZz/o3Sikf0OZVM5cLndtZUy9x85KmCFKuE0H?=
 =?us-ascii?Q?rPQMfpgcKg2t6W95HIRa/NuYre3/FEXxIGZ0Vck1gbgHrHTWTSbClov2SGop?=
 =?us-ascii?Q?STCuGpC5uAtFe4CSErU8F86iBZcM63wEqFNfdXDtStGX6KSi8Pz9yqCwPriC?=
 =?us-ascii?Q?wv7q2HStXyJUXWx9HGNIeLDfjrMOHVxlZY0ytD3s9l4w8wLKIFXub8gtTI88?=
 =?us-ascii?Q?pIxZupU/BhOsZQsorTpIEuOR4/wKoirQKBmtbVgHp1GzC9O9n7pvZKGIevj9?=
 =?us-ascii?Q?4g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54e35195-5e32-46de-c428-08dc1005c83c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2024 04:53:39.9973 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oPdxTZCXpHtN3JfBs9R1/Pm+QQ5ZcbRDjSAvAqJSn3Ed38UzyHdML58qgcKkaB4mUbp85sjYs0PGIRj7yiMKiOyCaetngrjHOgnA/0KYZwuwemh/i0ZVHR8tT9aJ3rax
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6925
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704689623; x=1736225623;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yxVxcRf6nQykmVDkKzH4g2ztrIbrYMoyL/0oPx+BM8Q=;
 b=Z/SD9X3HVC+W9bP2mfr1sD905beM2B3lA8JK6Dwx2Wau7EwHVftmP0hF
 lcn6uzZ749uWacZG+7E8jUlHizOKEJbUwOf05969IDAGzR2pKUNXBrHtu
 5XH+08AUkAyj1VsrqsC9LJ4rVt1jLLyavVgD2atU3pUAXFbC2dy2YMP8F
 ZwT+Z2rOGVlmv53E5e49VmKNZ5Z33qAM6OkP5k/MWThklRlknadxXo+4H
 vyPk0ZIBjXTMZsVQf06K+vok12oqA9fSOohqKGP/Dmp2X4GWZkXaKIeFV
 F+2LEzuD+NtRuxlN4NY/QADc5v36tRlvmzLiAEWYoI+oqB7+svD+5Db3t
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z/SD9X3H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/3] ice: Add helper
 function ice_is_generic_mac
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: Thursday, December 7, 2023 12:59 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Anirudh Venkataramanan <anirudh.venkataramana=
n@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/3] ice: Add helper functi=
on ice_is_generic_mac
>
> E800 series devices have a couple of quirks:
> 1. Sideband control queues are not supported
> 2. The registers that the driver needs to program for the "Precision
>    Time Protocol (PTP)" feature are different for E800 series devices
>    compared to other devices supported by this driver.
>
> Both these require conditional logic based on the underlying device we
> are dealing with.
>
> The function ice_is_sbq_supported added by commit 8f5ee3c477a8
> ("ice: add support for sideband messages") addresses (1).
> The same function can be used to address (2) as well
> but this just looks weird readability wise in cases that have nothing
> to do with sideband control queues:
>
> 	if (ice_is_sbq_supported(hw))
> 		/* program register A */
> 	else
> 		/* program register B */
>=20
> For these cases, the function ice_is_generic_mac introduced by this
> patch communicates the idea/intention better. Also rework
> ice_is_sbq_supported to use this new function.
> As side-band queue is supported for E825C devices, it's mac_type is
> considered as generic mac_type.
>
> Co-developed-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com=
>
> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c   | 12 ++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
>  drivers/net/ethernet/intel/ice/ice_controlq.c |  2 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  6 ++++--
>  drivers/net/ethernet/intel/ice/ice_type.h     |  1 +
>  5 files changed, 19 insertions(+), 3 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

