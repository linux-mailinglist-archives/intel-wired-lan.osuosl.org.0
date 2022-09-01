Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB905A9B76
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Sep 2022 17:22:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D835181AF6;
	Thu,  1 Sep 2022 15:22:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D835181AF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662045731;
	bh=05Vwc1OAO9txePKug+OwcyevoV8kWS8mvlRArx5q8x0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p68HWVEJrDK0cub3+GM134GJflRzVkvxDyN88fOCi8MIt0ZrlHXIA+1/mtLWPznRh
	 rm8t1msTipKXLQg8BgdB4GQxYvsJ2XxFQ7mPDATSPh1VtxnNq6Nd12Azw9IXFLVix7
	 eAd5nrcINBFohW/2kEaQjpB1Z1GmOy4lI9MhBq3PjESMeO6ghV1k0hxYehXN2ILT+n
	 0k2mK4t4/+QQ/Wf1QUK+Vud5r+dqD+YePUmp0elf/wfCs2rr4Uv9cZbm1/JQwRmwSH
	 dqnofZLIpKImFVUODK48e9tdcm0xpZjGMDU8gixUAIG7md9wcx5tbl2DClISx8sRlA
	 dbC1OJHAN6CSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PrjKhfmx44ZY; Thu,  1 Sep 2022 15:22:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96DE781427;
	Thu,  1 Sep 2022 15:22:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96DE781427
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E2D71BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 15:22:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2429E400BF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 15:22:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2429E400BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XB9uu8pp0yG8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Sep 2022 15:22:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34C82400B9
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 34C82400B9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 15:22:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="297027244"
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="297027244"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 08:22:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="589539848"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 01 Sep 2022 08:22:03 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 1 Sep 2022 08:22:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 1 Sep 2022 08:22:03 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 1 Sep 2022 08:22:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kEJUwSWteqZZ7zeSpijvPgeY8tcwqzG8pdIebsgi4fhT4O7VQXEDJ9ZYBE4zdf4+q6xrsD7YheaZYczerAUHb+TNJ4F8ItZ+R4xqicIJqRwImIhfB+iL/dFxi77KzzgqEW96P+7hGUFBrSgmeqHIA3DQ87DzzLIDMq7CbX4Fslq80GlfOKZqQXptLrUKcb+sHH3A4u/jSdpNO6s0DCFejm6CfXo8xGm7p2x8H5Wln+Mgp1nhlgt3RRiN+QiGssRtgR6p+U1+DFZFT3HVIbbEAXqSalIJ2i6Byx8II1TMspAUgckiuJom5WOaN3wvMmeYmEjYM/nbrt7ldZWM8YBVCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qpCD3hSFPpoN724h9SSCulCziEeToIpPj4dLy12YT1I=;
 b=CDjJeBwiha6soovmXhOl4SqD5dkqLzEdyvsA0LoLncFi0S0mk+TmRCE1+HCwL8H4LKjypqi27pdoHIpsoNDiLcs60GJsI5TH7bmX2JZvmM0tFGZstSyC0d6Uou72bflWKkPUpupo1rKKidjYhUBBysF2CSVAFsc3TFKIBp/v1A3d97ND13LbS/5XQwiQ6ymZiZeAqhOsL4DvwglmvqvVqupiYc3NN20vEFCt3vC6uDdhbEVmE997VYmgwyFxU2H9wWVrK++qrjIF6/mukPQedMSQBLtw/sH0oFBivC0Too1A6wkjuJ4cawC/Naaw7ZvaRFbobCYQZsU7Fd6W0/iZZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3609.namprd11.prod.outlook.com (2603:10b6:5:140::20)
 by BL3PR11MB6483.namprd11.prod.outlook.com (2603:10b6:208:3be::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Thu, 1 Sep
 2022 15:21:55 +0000
Received: from DM6PR11MB3609.namprd11.prod.outlook.com
 ([fe80::69cd:6111:5da1:6f50]) by DM6PR11MB3609.namprd11.prod.outlook.com
 ([fe80::69cd:6111:5da1:6f50%5]) with mapi id 15.20.5566.021; Thu, 1 Sep 2022
 15:21:55 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix ADq rate limiting for
 PF
Thread-Index: AQHYq83TKngpZM8kykuURDjYWcPVi63K1Pzw
Date: Thu, 1 Sep 2022 15:21:55 +0000
Message-ID: <DM6PR11MB3609B0F8B9F786AEA8C583B38E7B9@DM6PR11MB3609.namprd11.prod.outlook.com>
References: <20220809085744.2573-1-jan.sokolowski@intel.com>
In-Reply-To: <20220809085744.2573-1-jan.sokolowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8ec72811-28db-48d6-dc03-08da8c2db49b
x-ms-traffictypediagnostic: BL3PR11MB6483:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OWLvoHfvkOjjtxZEtN7PrqMIUCEo8l9Qj/0WcShCkdM6oREgeH2dCynIdrNv1mxbc+zBq2Vl//M5DCAZsY/dYpn6XOTY/qEcNrdkPlpUgUi970ROTvANkQHFcQfSGaF6R8EJcG2HiLkAl2zSGT0rdtgk4MyG7toVNnRCdYB09kW7QiKMTQk8AcXJmc5/HqArsVL5D4w0Ti8lBRL/+9/e9puLaBWhja+BtmU1NwfJEKt5Nmn3oiGNSW9/F7xwNYZq0Kwusu2S2QV9Vi0V0LEwMi0Wlrvo+bUcVx/+BNO5szLyDcvKheu9AJqh8UP5tTpEo/3wrEKe59fzKY2Al58dTgX4MEmw1AR9QZ2LTZLk7X2f9vlIARPBx94AuPim9Kl1sukL1Ol5Ok8vswN1yhQe25hU+64J12sjq5dqxWM28igOtk8U08OND8FeXcXdPXJA6FJ7rXIjAeZsW24/RadQPH3e9r3lN0uIrUlVDKrwYz7PhY7D2PCOGdHmV5r/Z5JuJ+v+B3xUOTblPd4qbA0aokzdZ8jloQBsV8YPfndGo8QC+oIIJdn69BIG5x3ruBSmVE23O0BJTqtRnbV+s2XVVY1B5BICRZuxePp4Hhctez/oXClHLFeuhEv76w3saskWXHhrzqTWD1vGs6wa9usMCQkz0esj1s6nGQKtekefydHud/a7a2+eDXOfh1SgU05KlrlA9aKhFgxJdF1vf2gpintnXLTy8JGwbXU6IDgVu08xa+dnkJpcUYtaFkxb5YWOUT70LTzA7jYSoJhmBhrq2A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3609.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(346002)(39860400002)(376002)(396003)(82960400001)(64756008)(86362001)(38070700005)(33656002)(38100700002)(83380400001)(122000001)(186003)(5660300002)(55016003)(26005)(8936002)(52536014)(41300700001)(478600001)(9686003)(2906002)(71200400001)(53546011)(6506007)(7696005)(66446008)(76116006)(66476007)(6916009)(66556008)(8676002)(66946007)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?a9kk16zMxUwNwa4seoYrmm/P9MvMFX6z2XqeLAE3RsTQXJPThlBbXd+vQzwu?=
 =?us-ascii?Q?sXK2tTzKaZqRWOYFaHJQn0uvrcgOf2jmkAahQ7J7KnIYsIXrRqS7E2Nux/gr?=
 =?us-ascii?Q?L16lIw3k3VTnjCfDu1/3gDfaZaJ7BFhRCjnTVfpgueNt7RC5AN0tSitBjMNq?=
 =?us-ascii?Q?JvszUKF//RD/SFtsEnhIH779pK5kRGxM4OlfIhBde4cw8oxlsHb14IcJL46K?=
 =?us-ascii?Q?Nd5ScPza8ZpoMb6MfEB5lhE0Om5Ni3kyjjPA5P+kIyh3vPlLMyAmqVts2qiU?=
 =?us-ascii?Q?vy8YcxHDA2F9pFkLVHGXn3jvdIW3cYNT8c20smyPuHZYDjFritGJT2DEPiIE?=
 =?us-ascii?Q?aWvIRGEMK2D7L1HlNsipKRXLu+P9qMt61XF3nRyI2rOpkoop9xqTzK4+Rb7x?=
 =?us-ascii?Q?Zai8nf28nsKQCe0Hkm56oDwjadgherhvJ+Tj4z9gQaP2tQCcuyrSsStfgQzZ?=
 =?us-ascii?Q?RJOUJBZeewlM9Rg5eWsAhPLgYivo9nGO2CA397yFl9BBxXthYIVa8T+wwmEY?=
 =?us-ascii?Q?6fiUmvE9WCEEJYtVw0fziK7npPfMFBlDXg1gzHKZk6o0CVCGLtmMcZEeVFwX?=
 =?us-ascii?Q?Rn/sIpDE4qK+FIhiBstAoGMHIKX8MGuyH+KbGJgMZ31mJ6iENkhcfv+CxuuX?=
 =?us-ascii?Q?W5CvuNeBHueJtqxNXMSS0RcUL1AE5DzrlbgxIzbNtZP37f6Ikqw8hi2ppuSq?=
 =?us-ascii?Q?fV4qX+OTDrlp1xQ/lmygqMv7bk2zODfaWUVm2zZjX74fVnRHcv8dXx3FNL78?=
 =?us-ascii?Q?zQ5hm8Wr7D4c2IzJIJn0pGcDs6YjgfCyen5aUy0YE+QcMAUW6UvHQJoIwybc?=
 =?us-ascii?Q?MW0sGxd5Ed3OcLx3ogu8JO+vI24tZpsmuXpA7dwhatps9IohCczRj60XeJn4?=
 =?us-ascii?Q?AKx7JLrtyo/neohk+2RfxmDjkKN5fEYurfHYVQHLv+nOlhSHX3qjUS5vuVd5?=
 =?us-ascii?Q?5ILFmcepn9EgqN9xMZQcJjG57jgopshn2IkO0UshV/1QCeGp2DOqqond/9d9?=
 =?us-ascii?Q?LbnYcEfH6bNqeN+AmRLRnIHeHfQGOd+prICmc0c2V7SDSeQmOf4kI3GBhFYF?=
 =?us-ascii?Q?lgZfUE1Ye8k6DQFwpVEkd2Z1ftgVXcOR93nh7od1Sk4gUKpKT4Vm8nHUsE6Q?=
 =?us-ascii?Q?0kIs8VCBG3N2UIg5YQzTbGDwe9wzg/f3yQwZGcKRE1HdO7B7isnZrrDS0XpA?=
 =?us-ascii?Q?YYJYqNfOE5DBeA7LeCuju+Nthbx3Spj5+B4CYvZbm+9ZcLdID9RW6t/giHMk?=
 =?us-ascii?Q?ghnV4M+J+fH54qWA6BnuW47ac4aSfghE61NB6MuMd1Uf3CEVl6Q1EN2KqVmb?=
 =?us-ascii?Q?nStpf7abGmfP8Hc5uZfofK+IEHFTW3VNGtiHdkKLX9J4IC6AMp68j7y7dz8d?=
 =?us-ascii?Q?NukdSQ5djKPS3pnWF0D2DdFxG0NW9OND0+eNFwEhJLNiZRTrx58C/g5gjTiV?=
 =?us-ascii?Q?roz64gXT3ddRExuPUrRMabrTa3uy2R8Cl7NNx3I7dTS4VqMCM5tT642ngCA/?=
 =?us-ascii?Q?y0+E6lJvBgrhdpqbOFTAXGwKHWm1iq1GClWCaH+Nx8edWvmN7M5Y9keQvK/w?=
 =?us-ascii?Q?meTQwxkHHGOnOOoy3fHU5Tf/4VAiIkc0U7u/TU2J3/JryMPP5PMFqVD7F2hu?=
 =?us-ascii?Q?Kg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3609.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ec72811-28db-48d6-dc03-08da8c2db49b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2022 15:21:55.7564 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rNLHgOzKHlyZoQZgwrRKGGJkNGglIc8S91YoFWoKlWE5k8OqKM46074FS2u4TukXWAh0WFaKMkdNl5BufTRHSn/XL4FRzmpOb4AaHycVFA4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6483
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662045724; x=1693581724;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Ie8nW8FNIDc0LniLf8sEiuWb2EDFM0+xH9xC0Ha/gfI=;
 b=NhprxpG/NF/tgfFscsS1eb+pKe5U1MHELBZVph7p4mMAMgBETQAD1ABg
 8ZpWqktGh+aRVbKtELyFeQh8WIPd2SZLju4vpGEraUuVzbgXJT3lK8hM5
 +LtVNciZRGJPcYAqMfZw982QWgoNwDKIhCq5lshJT55Rbm6IPy0ZCsuMz
 wFwZd/lcUHh8z6meeZuejuaUimryHzjA9ELELh+XwMvfnosKmUOea1un7
 CAw7EmGNeMFsLQWafEpiyncJS/RnPY2xxvXCT3T2CRIaDiPvPS2L6VWUh
 Xt2f9HkpK2Nm4MyQjKKzcaC6Y3sDxqPuUdRAyk/degJMIA+DrLYr6HfB7
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NhprxpG/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix ADq rate limiting
 for PF
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
> Sokolowski, Jan
> Sent: Tuesday, August 9, 2022 2:28 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix ADq rate limiting for PF
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Fix HW rate limiting for ADq.
> Fallback to kernel queue selection for ADq, as it is network stack that decides
> which queue to use for transmit with ADq configured.
> Reset PF after creation of VMDq2 VSIs required for ADq, as to reprogram TX
> queue contexts in i40e_configure_tx_ring.
> Without this patch PF would limit TX rate only according to TC0.
> 
> Fixes: a9ce82f744dc ("i40e: Enable 'channel' mode in mqprio for TC configs")
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 3 +++
> drivers/net/ethernet/intel/i40e/i40e_txrx.c | 3 ++-
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
