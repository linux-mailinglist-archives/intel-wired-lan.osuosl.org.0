Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 055535BC2C6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Sep 2022 08:24:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A30E408C9;
	Mon, 19 Sep 2022 06:24:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A30E408C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663568646;
	bh=APppKzKqsTCZceK5M5xc7PkywUJmy1P7E0UQBTssUUI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sfrJUHESjxHtb7zzJNkdjWl5Je3BkK2UzFfF8LwLdugfSU4g/xqogKhIrIwsYyIYl
	 Bwar+Fle3mP/LDW3Ioo64WpmtZZ4I3FwpDNBLS/juD3EhV06rgr6RpbO/dd25fzaXF
	 gtGtF7ASt60CLy+2StaVoL0CEsjC69r9aV/ZF9aGVoJ5KkxAQKJbWje7YO03nHSQ1Z
	 BNtJ5XYxpLBLn0ACg7NcNMS3zhsbgENiN+qIFgHOMUe+cC2SXATU296XXfjLevn6zy
	 8tCSAXwvujRc+YHVdJy8y4q38cPLxN+i1U8RA7x+/dxhr/QE+K1faIhjCypodoj/8/
	 gb91SKuKYTgiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MOQHXa6kKPmx; Mon, 19 Sep 2022 06:24:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 606B14031D;
	Mon, 19 Sep 2022 06:24:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 606B14031D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 80FFB1BF393
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 06:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5ADA960A68
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 06:24:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5ADA960A68
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7K7IM-3YFSaj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Sep 2022 06:23:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80D7660761
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 80D7660761
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 06:23:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10474"; a="282342951"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="282342951"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2022 23:23:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="793735971"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 18 Sep 2022 23:23:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 18 Sep 2022 23:23:43 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 18 Sep 2022 23:23:43 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 18 Sep 2022 23:23:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VlXBLb++r0HOHB8jRUUB8F1BAw93ZEnbJOpitYF8kalk5N5NQkLC4b1KA18MIGoAypC5XXZeMzBy5vdK9Obs78glf0AnYxxse3Q2HT00snlXxkCUjdtC1J3I8Q/1oeCeATeSc3ZZ9W8gIVnWk06wB7WsSQstwIP40iV+oLwzS3r8WYI9jDlKu1DhXFbop/Y6ZoZGoAfE2uQ3EtjTgCWxbyOXHUfFeJPRxV4aIgGpyzlRQJjHjpL13TqxpTvwXvjH+UvDXwMJKUgZhO6ktkFHvGMvZbzp4u6RBl2ld1UYbVqyBNC1IpC32LUR/dStDSkLKzSW+4+puCx+PPLBOLWDIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=77+N6sdoRaTYfbYD9Krmxni8Jghq+nF5wNaNDY6jiSI=;
 b=dafyICnil+oQqLEf6pAjzblmsaCYX+42gPcekdzYpcX710DI9s+rtAl4vaj1RvKLS+C4nP1qnMlB0W/nnk0LF8IoL6SMKGqdiFbt55CgKedN+ynRVrU8uo7uuKblDr+J3NxBOrAzUqkh7fbAVHLbuWGl6WZogO/iD3DfNlPiyq3ampzAW/CJc/ary9bRIrtBtmrMGES+zRQmBdwZD/rHtepNxzL6/k77tAXUS5aFnoRdiWi0qW95ta7XYDJaKw7LWMeHWr+J5TuzWCUjQQ1QWFIZvmwsr/kKbf3i+g8gxmvDkAk/PpA+fAbJtzR44uiQzpkQWaGG7/y89syjHUz7yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 MW5PR11MB5932.namprd11.prod.outlook.com (2603:10b6:303:1a2::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.14; Mon, 19 Sep 2022 06:23:42 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f43a:da9a:b75d:e4bd]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f43a:da9a:b75d:e4bd%9]) with mapi id 15.20.5632.021; Mon, 19 Sep 2022
 06:23:42 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 2/2] i40e: Fix vf set max mtu
 size
Thread-Index: AQHYx3Y4Phtd5yhbkU6MrWQ4wXtV9q3mUa3Q
Date: Mon, 19 Sep 2022 06:23:42 +0000
Message-ID: <DM8PR11MB56213C9E7FEEF2E615064BA5AB4D9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220913133836.48284-1-mateusz.palczewski@intel.com>
 <20220913133836.48284-3-mateusz.palczewski@intel.com>
In-Reply-To: <20220913133836.48284-3-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5621:EE_|MW5PR11MB5932:EE_
x-ms-office365-filtering-correlation-id: a87f90dc-9287-494d-242c-08da9a077f88
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 29uoaNFswMQvrKVECT0D2v08qnBbKJ6fLXl7qhRSILldps2SrM8Fs4uIY8gJGlUG8dvP+wdj5kg4ksHxJAursOuFsi47z8bKgKt75agi1bznZ3YjwcdgyMhGnPZjKhb9OKn2RkuCJGBQaGbCqOchbOVWZCxQCvs6RAqSPW1dUvYT6+jf7smNfC5t6Bf5IXRfXXc+StjINdR/Jib2HS5naKnDIEHgz+DSUafySrGJ6io8XH5cmHDN0TtGTcsExec5tBe0Nac3EHHR3ocVF8g0e5lel8xKju9gNHBnzF0GutMphY3I9tI2IloT83Huu/QYHH7WeLfU8/+KZMovCTbGNx0xVmSfaa2hojTNwHMu/z02hwWI9SqPOWdTm41r1pE/KsaO3GATWX8dr7SUc4vtAcd9MDOTBbCWHG+kWFDLCkaM+x4Dyn5S+BX1hpyLKQGrQwrLQ8jUbH9thijJXMH0m1ttBB99CJXMOf4SgUL5eDBUAkTP9Q8RzHHclbQwb65le2gBjjEF9YZJAfFK4RHS8pGwjEkHOsnwpD4d4DgfhbjpKSq2caFQa007YCyMcWxcbUwgDbTvq/ZUnVmvzBKmBnX2EGjiET/lSlHpTn1IvGOk0wZ/823JXjgHTSNDMYRHjARCmNMGl3irHsP2Km+SIGX8ozkZPVHXvtdlVW/i2HXgEHU4gKfL0AMCPdoDBODP/zHP3LN0s5DU0uSPmjF+2bRTWixdPqWyovSa7HtwCXf/1xFdQTINtTFM7EL+l7rRPW6Y+Ey2Szxblp0v27Wdrw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(39860400002)(396003)(346002)(366004)(451199015)(55016003)(2906002)(8676002)(8936002)(122000001)(316002)(86362001)(33656002)(38100700002)(110136005)(76116006)(82960400001)(66446008)(64756008)(66556008)(4326008)(66476007)(66946007)(52536014)(5660300002)(83380400001)(186003)(38070700005)(26005)(478600001)(9686003)(6506007)(7696005)(107886003)(53546011)(41300700001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kUA0vwLX2IZug62LUbMMHKkJ7kwlivhthNV1Gp6gvJmNFfjp5WJkpy581nH9?=
 =?us-ascii?Q?cfnsCMCNGLv/THcCzUgMOPaJZ+9HkDmC7XKPNDVDMabp+R3vGJh0CHuyodf8?=
 =?us-ascii?Q?iN8wiMug2k+J37ulyivZNUYUZnOIXTPdQXByEa3x/7M4CZkw5UajqwB7cO5Q?=
 =?us-ascii?Q?qo+9cwT4OhszGvfgunwrOfSQ7eRz5KVWwhmIhH7dljOCddt5yVQDZUlNod4/?=
 =?us-ascii?Q?sUqGEiOnpO0atJ1IWcUYODU/0dFqN+rIqFcBt4/Cp2Tx6EIZkt7EGltYKHT8?=
 =?us-ascii?Q?PkIg7tlhhi2IgUrB9tTW3CzX4oDlvgzyfj3JwuCKDXlrIm7Qsf5sZ4/Nw7EP?=
 =?us-ascii?Q?OZYzxaF/yNTdmqE42vjeMBHDEpEYO2LhNMu10kYHTo5+E3odX9e8iv6oM1ok?=
 =?us-ascii?Q?epP0p9sAejjbc7O2AYKGFkrInE3Q070dap2qDfp4rpJpPLtHhINuH7757WeO?=
 =?us-ascii?Q?nhpfMXkoamtdNMKpctBKuTFdDaPqUuIMwra8Smf04WJvAoUkFc16ximYRMA4?=
 =?us-ascii?Q?wwT94PEViADzYyJUJAlO/gw0Xe2I+v1herJ7itff6MsmbxPBV7z5z6CvTIOm?=
 =?us-ascii?Q?Ls+D3kcaKzxsaZ5zSuYyNWY/ugJ3yaZi/A926DqNfM3u0x+y27hd2/7tUa5Q?=
 =?us-ascii?Q?3WonLBBoUCuNGw535c4Vq2wEZs+pDFRnX/QGtZs/GfWnUhaWEAWbD3jsjYxU?=
 =?us-ascii?Q?lVt0Z98DfqDh5O+uTaKGmeESlrAekS/j8LnGfvpUwADpezLUIKSeoNUWcpo0?=
 =?us-ascii?Q?c+y88GlL553decSDe4pebPxnWjmw0qZWT8r/RMATAL1Tr0CfMQe9zLJC46ll?=
 =?us-ascii?Q?x2ngcS43r1WZWfb97ohCuHweJnQcKZjkXslE39m1vKofxSRPGZEZ39W7vm3C?=
 =?us-ascii?Q?kpi7IYO8BUV78AMKRuSQF4m72bqmE1OeJF+hgZ0fDxerQc946IWRTS0Gj63Q?=
 =?us-ascii?Q?igMzXs/d780zojF9BaypNr5OWrlafoBVv0drv6UUu4MhIEbYqzWnBKZh5tvD?=
 =?us-ascii?Q?WykbwCNiN2wvxgET4gTJKt2urOahzJsYZAwNch3KquKQTbJChBw5te58UrOh?=
 =?us-ascii?Q?UFCUofxOFOxk80II4sB/aTJAu/g2zNQPhUx9mXkf9I+OKJBVZsNjATE1mw4x?=
 =?us-ascii?Q?RYUcnoRPFLJ0Ke7I7HeNpqE0+vkyHVf0dN5uED1b3v8bb1y9qcKvq87cu6Z/?=
 =?us-ascii?Q?npzen/itMEV0dfIlBd8l5kWfroqOKq+BqzrZfgBuNWaBD+JIp9+O8srnOD7K?=
 =?us-ascii?Q?GIYtQf9Q2GxRUSkdqwqWyNqk/uV4Y/zBNK75+ay1/F2O/9RjphoVgutUhESE?=
 =?us-ascii?Q?rKOZZeshpX12HJ6+/2v3vO+AEZjVppLIqwBl+1z3tK8N+w938aOPV0bInEqg?=
 =?us-ascii?Q?F5Bhwpp5VbNrDA5z9Av19eFUn+S4FaHVNMpcRvpUVa5qShE2sWjihGo7/iNh?=
 =?us-ascii?Q?NMnwEiLihjaCMo3svOhLaIj9oPITYiOKtTGTGDoN6/5EIbxYzbbcXMOOEvgP?=
 =?us-ascii?Q?a+KLzkX7uKkAMF9sXNMemepGyf7fz/wH90NrItj/45UYQV5f/Uy1kMTVG/eI?=
 =?us-ascii?Q?tu8L237PHDZE07arAEIYd73AxOyCduWmX9VNcAfdktrlrbu6i570XKNoldvE?=
 =?us-ascii?Q?DQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a87f90dc-9287-494d-242c-08da9a077f88
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2022 06:23:42.0798 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Uf+OmuvIE7yGMOHnnhSLtxOMKDzq1C0Je9N4Hp0UwrraSNuMkK9vFUyh3rBy1YirySCO7eAifeShpUIFuOCxUd/guXRKM3K0vT5qlEwW0GY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5932
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663568639; x=1695104639;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q89ULhGu8bQ0h38Ra6G6Fe31aSipVib8bCK4+w7ODFY=;
 b=Vb2bn+Ubu78aCU4Fzsu9fGWCEBOK+X+3x0BRBDCVp21TnF0OfbJEm3Np
 qAwT3viPMrvtTvMIWrABw6jqCaEW5jIoMGbR9gfRGu5JwlYwfMNPQSD5Y
 fCntEKMrhwb8FQ8ooqx4444lXeNofvmX/avd8K/Phtf4BPmah80yYkuvf
 2jUONimwunJBQNXQzz8TUrdsDXRat0RHJTARygrE2eT6wEyi06IJhKgHU
 /HtyymlSafbu3Ld0R7WqvpYawhnaBV5amsweLeqaRcGwHEXYeBUoF6741
 6gXT/C0WsetiB5qF7vWZ4RdDNo/HuZlJYg2uxqNID1FvRViWViM7lblXt
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vb2bn+Ub
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] i40e: Fix vf set max mtu
 size
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
Cc: "Jaron, MichalX" <michalx.jaron@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Tuesday, September 13, 2022 3:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jaron, MichalX <michalx.jaron@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2 2/2] i40e: Fix vf set max mtu size
> 
> From: Michal Jaron <michalx.jaron@intel.com>
> 
> Max mtu sent to vf is set to 0 during memory allocation. It cause that max
> mtu on VF is changed to IAVF_MAX_RXBUFFER and does not depend on data
> from hw.
> 
> Set max_mtu field in virtchnl_vf_resource struct to inform vf in
> GET_VF_RESOURCES msg what size should be max frame.
> 
> Fixes: dab86afdbbd1 ("i40e/i40evf: Change the way we limit the maximum
> frame size for Rx")
> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Fixed one check regarding !max_frame
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 4f184c50f6e8..7e9f6a69eb10 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
