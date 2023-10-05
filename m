Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 786147B9BC0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Oct 2023 10:13:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25C6C4222E;
	Thu,  5 Oct 2023 08:13:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25C6C4222E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696493594;
	bh=BpM7gJC0a2+Q72jRAHo+rgwM2L2f30vRIEqxjtY1EME=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wqXCbuKYwnm1j+AWC5zTGmM7btzPeigMdV6Tl5GFMNd10e8vqVQscFf4ITJw14Rpw
	 vhjiojTbiTilW2IpVwXZPJgj1tb+l8XlWu2ZSAED+q80sLjYF1bT3c2tiiFclwuXpi
	 IAc6p1QFGs41ZJLOnM51Jl5H0t068vVslb2RLSoY8bsNr5x8OlwuXxIaMCwunWQdnl
	 o/wtdgfuTPNUhGIrt6vrNplqOeSRWYH4dvcaFYYDIUOGzOb8oLDsbeYGrZrjR2pjU5
	 oWH1aF61HrwUGFgMBeJte4ffpajp6Acmlg3wjShzfLYDFjvE58KYP8nKBteihAyk73
	 OefwtN7Z5dJ6A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nGFSblEr7yEN; Thu,  5 Oct 2023 08:13:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4EB142208;
	Thu,  5 Oct 2023 08:13:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4EB142208
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BB9B41BF399
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 08:13:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 91056833CB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 08:13:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91056833CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v9g8qHHRMrNi for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Oct 2023 08:13:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C3CBE833CA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 08:13:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3CBE833CA
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="447620282"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="447620282"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 01:12:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="817484820"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="817484820"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 01:12:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 01:12:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 01:12:48 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 01:12:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 01:12:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M+c2RwS2YlhRZjiHkjlkWMGLMnY4yqWv/CZl8zXVzIWgh0wr3LIKP1iLHQCp+cKPbZ9KjYrr1OqKcoxhGFDvsEvvp+lMtfRR/jo4YrL5kzy4tyTVdpxwObMdlFxnraxtXhkpRrKB5MWDQib5UcLUKDm7tqY+6QjESZWiNC1IDjMYuDfhbWJYRXRO7BBRt79sFtjl5E/xVCj6uEe6rMzwSXu4zN32tK/8+wmFsd3+Hw/WFwfJ1Ukg8Lda/kAXkSLyby4yvB5Va8tWJfbeIlDJ0JxCaRiiyvjk4/eTPtkPGo8Y10mV68cDxGo/vzxsfudkKjGADS5vA9sO063QKdl0jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k06pl20ym/lZtrMAiVgRe23GyVlzCv/VYf6n48cKm44=;
 b=ciA8iXiIPZWehVb6tZcBWP9IO1jXVFRi3Og8IrMi2UPo/Mmw+h81t1GxVH1/VoTv65Mec5QKUoZm28pxJsI1jZSUXDT+dyPLL47sJkNLr1IDecRb8CgVawlMeLxQf2vw8oiVPIqbRrJ9T8BMTyeYnYSImd5qKSXkYHLJXombv3W0uDhEgKRyCqqEpHlIgx1gLlnq3NqpRsxN9+4zSiCglD9i6ktgNbs3/HWcjMeAQLprOKxW9kL7ubsYHenI5mo80dQJkHR1vv81nz/vmqU43WaPmefbH09pClJEsrcVV3mTHDghbFY3Q2V88rDZfeFE0GwUNSVg13y4kympbuM36A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SA1PR11MB8473.namprd11.prod.outlook.com (2603:10b6:806:3a7::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.33; Thu, 5 Oct
 2023 08:12:46 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8%7]) with mapi id 15.20.6838.024; Thu, 5 Oct 2023
 08:12:46 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 3/9] i40e: Refactor
 I40E_MDIO_CLAUSE* macros
Thread-Index: AQHZ8R1E+O3hpnUgAEaJ4/X27YCwK7A65NjA
Date: Thu, 5 Oct 2023 08:12:46 +0000
Message-ID: <BL0PR11MB31228D0F81D37F103A031110BDCAA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230927083135.3237206-1-ivecera@redhat.com>
 <20230927083135.3237206-4-ivecera@redhat.com>
In-Reply-To: <20230927083135.3237206-4-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SA1PR11MB8473:EE_
x-ms-office365-filtering-correlation-id: d3457c5a-2dff-42df-36f7-08dbc57adbb0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LI8dHTbzfoM0+tXczn041gLTNZk6lzjplkqdoLsD4ci7tAB0HcVnUVMI7sGHD2OmgzGkdmbcQFpgSDb8ld4nsPpPWZKgevUP7bhJqbGC+gPrvyF38kS1Sbpbh/QCsOhK+66dQwixzXxpNUHAbuPwJaylVH8cVo7OISV7wWc2bHhTfzVzKbdHGexoMp/SVC+/gCQSpaWBCmq6H5LrwMsruocdWF+WlgAib3pOdnSycAB0S7gOCC8AJQRQixhCfE3Zk5gXZUYayBgSsoU10HMTRiHAf517r/bfzT9PTPSGJcoKXvOQH0CYUayZwxeeOdXxhYyJCZWwr16Zn6XRuiVhgiZIRPwjBUo0UkIOsh+M6mt9pQmtyL6LnSMJvs455bNnA+M9g7FLiRVggvYnf449n6CM2QwBlTsByx5YCtUEWyRLYT1jr6DbF9Ei5070GE9QC7TSST0bYka50KZTL8qTbboqate14Pn5x34oYcwQ0RGNIoTf3xeAkKtlfMJwmqU2/Zr5odiyoA2rWjQXbzKGf2E5RrvwLWI2hl5ePLA1r/7Lzhgkg8hdEq/UadTok5itmP0VmpGJQ2ZiUMUYqzAurEtLeflREb9pqFcT6qIgp2bU2Ei+xeV8rQG5mT1KE/Ux
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(346002)(376002)(39860400002)(136003)(230922051799003)(451199024)(1800799009)(64100799003)(186009)(66446008)(53546011)(110136005)(54906003)(86362001)(66556008)(66946007)(76116006)(66476007)(4326008)(41300700001)(33656002)(38100700002)(2906002)(8936002)(52536014)(8676002)(38070700005)(122000001)(5660300002)(83380400001)(82960400001)(316002)(26005)(55016003)(64756008)(9686003)(71200400001)(6506007)(7696005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GadgDvS6jUnYlF5f4B+blPKyV7is7CAxVWwLmoKTPCWhv++UFftXbiWZjimW?=
 =?us-ascii?Q?uuaLZxtnZwtdS/oRA+zHn3Mio21Rh3LmBuyU0+vsP0JbO0sYApGmCdOmit10?=
 =?us-ascii?Q?dO+DzANjpagm5IsnIuuTDAPNfjUfr0DJQgw5ib7iHMuWXHwHlH8DTU/3Hg5G?=
 =?us-ascii?Q?btMaW22N2nKgK4r3EiGZpGROBknyzKz9CxbV7xZxXcUlDT0JVQioRpeQLtXG?=
 =?us-ascii?Q?+rm58Ry+h17eT/qNnBU0dPcikJY4pD66L/2PSFbAfiUWTH5nlJ1r/37IL/zb?=
 =?us-ascii?Q?5wLlQoNqpc6TVIfP+ByPGGtbWWpTwsbg59riiJPYHgdw9R4weht9UM1Bhq8S?=
 =?us-ascii?Q?EQ8w/ywknkaS5duodhzJgmX4cNW4babHXpiWVUanLAI+QMThmger8GIXDlzH?=
 =?us-ascii?Q?lhrXfTNrfjtfDO0QwymqJSOb21o8TQFz+dvg6dFaGnWAn4vqdHyR/dFTfOC+?=
 =?us-ascii?Q?HCklXr8VV5MiVVicHcXtYEFJANxj+0MavHI8CVY9vl+tt5eJRB9qMBJQ1z/X?=
 =?us-ascii?Q?xwX0Gc+OEdErr3maFguo35/zpOQYDJhuCC006UMnaCPAouKt8Dz0+ysGIgjC?=
 =?us-ascii?Q?UcJMuLOjKWiH/hUm3Yr9c9kX/70C7YagP7dt5y1kW3FuRBBaXbADl7OF60vm?=
 =?us-ascii?Q?oA4BIn3uL0nLeA7R95ttYOu432PQrnQvwrwazM2hAh3XLGduVulqXjsIBkJn?=
 =?us-ascii?Q?ucfbZKoW1+vdXe/UD7LO58uBDequHJs23hSlnrr4UmfYBXQUNwrtcpZw2dQn?=
 =?us-ascii?Q?t55srlfyv9FetFuQRAYqTBKxbQALGwoVPlfcChTai5r34iz6c5BAklshgidM?=
 =?us-ascii?Q?5YV5SbDBJY389ThaFdJXmLvtPzKRrzfm5Lpmuehh6Rlvguj15n4TRh4kwbH9?=
 =?us-ascii?Q?vfp9wnM/QkIi1+qZ8J9zQCBWDIjJVMNodHxF4IrSIKfhuFT9KcJ82qitHiVF?=
 =?us-ascii?Q?/2E279Dhu1vKNGTB9c4ZOBGEzCPsd4m78kGlefyk4jUZL4db7qaETVMSxxn4?=
 =?us-ascii?Q?76VLs75HUoZbs9BzBW4YtxlLppJObsKSrGR7KA4fBQQmJomSG4DXTIuDNsbV?=
 =?us-ascii?Q?/TY9N0f85S5vZofPIoziXPHDZ7d1C8qOUKG1Z5iU5tZ7hIsEnY3WiLN5zKA3?=
 =?us-ascii?Q?c/FpCTpZkGzfEO6IS7CILmAtAzwudAbT1qU9/GQp5rrOSo1Y0vp5rZnGKFiM?=
 =?us-ascii?Q?SKdCvy6OVDecsHvbvOM5dO6+LbMA91k3vGMgDH+xEVMCCT1ZNih9Axp8L8kY?=
 =?us-ascii?Q?0glpF4m7065bMhnkufUYnBiJ5difEcn5pQ2Adi7TuSwn5JD24/Gn/ZB529M0?=
 =?us-ascii?Q?W5y65OuU8Zt4Y1pOeytGRFHCfc3jFmSz4Lepe7Oe0maw165KK7wQUGeYZY1O?=
 =?us-ascii?Q?y0Fu9YAGpFNCO5dmDUnFy87nVyG3mKef4S3bBLkV8cyxB66F2SbqRu5t9/1u?=
 =?us-ascii?Q?5QLxkrumZrmTd8DN445xqDwrvqMYncUQD07YG+Tva0EuRDDxBDoSeeTWSWXE?=
 =?us-ascii?Q?L478tPVVeVT0ZJ1NBcl9ZC8AJj8oar8U8QNhFUO/YRCdFiUTwdjpjAsTCpwA?=
 =?us-ascii?Q?219H+o+WFlPPPGEWEX14LkF5j71wmdNa8di4P/tGaYCq8KTRKpHBMVtR6ySI?=
 =?us-ascii?Q?VA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3457c5a-2dff-42df-36f7-08dbc57adbb0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2023 08:12:46.5361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B6gHrXK03Pr1PfxULIWW1yHhrkyPfFct6YEnO7FUfDSf0dCLz/WPHUHeObWJ/4BT5vfFbUMnFxbKkmJR0VjbwxJTDfTn46kaUnsHZdr4mKGTly2jAVJJlXxrcVbjlYhD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8473
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696493583; x=1728029583;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0CEbG8yhdk8+VVRjYu0rIg53H40tqrLxDGGd9KDKhfg=;
 b=hwDfAlTHj2xZrYPfx4oXPBQEbiLd0I4GXO0Dkhz+zQLfA1Dx3rN6fFBd
 9FIa5dlCMe1nA12b/SgufXfgCZO4jtlNLVpFyz23zWjlEyFMY3QKX5qDb
 UA/rGKWWtzLK1weDCFsEQiYR6LBZt3heAyZMytgxETyTmKxqXnOen+FOS
 6BdKQj/0hKSvzpKqI2TozK9L/yCPk72MVrTz4NcbiuJ0X/k8uzIRwi1hd
 Fk1ql915XxDgmgSHenguABd5iftm95acGERiloTCCxb7537n0u5lFX3dX
 u/x+1PpVSoOjd2gOpWk2WYgUTR52mauVXzsPpJ4i0Gr8cbfCVt9nQb7Kg
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hwDfAlTH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/9] i40e: Refactor
 I40E_MDIO_CLAUSE* macros
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ivan Vecera
> Sent: Wednesday, September 27, 2023 2:01 PM
> To: netdev@vger.kernel.org
> Cc: edumazet@google.com; intel-wired-lan@lists.osuosl.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; linux-kernel@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; kuba@kernel.org; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH net-next v2 3/9] i40e: Refactor I40E_MDIO_CLAUSE* macros
>
> The macros I40E_MDIO_CLAUSE22* and I40E_MDIO_CLAUSE45* are using I40E_MASK
> together with the same values I40E_GLGEN_MSCA_STCODE_SHIFT and
> I40E_GLGEN_MSCA_OPCODE_SHIFT to define masks.
> Introduce I40E_GLGEN_MSCA_OPCODE_MASK and I40E_GLGEN_MSCA_STCODE_MASK
> for both shifts in i40e_register.h and use them to refactor the macros
> mentioned above.
> 
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  .../net/ethernet/intel/i40e/i40e_register.h   |  2 ++
>  drivers/net/ethernet/intel/i40e/i40e_type.h   | 23 +++++++------------
>  2 files changed, 10 insertions(+), 15 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
