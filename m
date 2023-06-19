Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E0E734FA9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 11:24:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2D6B610AF;
	Mon, 19 Jun 2023 09:24:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2D6B610AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687166657;
	bh=3Z8yMi3zdAICc2XA92ip146waNHndlx7jzw1O5BigLI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7jCZ8DUJnOluYSsRATOY4Arr1PD1y0ceacbYw2Pmqbudt4/Lo3GV93b8a1TGWJIRU
	 iq26oixAXOJ4SAxHBwUZ6lkATGNzriqaN2FIZTgnrb76C2qFpGD3HEbdlPMRUcZssp
	 8OlGPzo5TuUBF/KZmMoisd6ZAFihlaJx2Nz5SnjrdMEEdgnH8C2jeYpi2nzv2PzfH2
	 mXccqp3n3KSe1IQvBtrmTNaqsU/iwLSdEisjG4wIPlbtlw0AXwjEu03b4t9bAdLtSI
	 cOTsv7HdV65ztXBvEUNIScmT4sL/Nj7Ycnr5YVC/IDLC9G1maa6PxGPTVhyhI1l7Ac
	 PFNmuxacpj0KQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EU0vrHEYhQZD; Mon, 19 Jun 2023 09:24:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC14E61008;
	Mon, 19 Jun 2023 09:24:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC14E61008
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0487D1BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:24:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE4DC40497
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:24:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE4DC40497
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zXKAd6I1n8tQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 09:24:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3AEF5403F9
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3AEF5403F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:24:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="339924426"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="339924426"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 02:24:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="803558244"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="803558244"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Jun 2023 02:24:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 19 Jun 2023 02:24:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 19 Jun 2023 02:24:07 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 19 Jun 2023 02:24:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c0c/nKWC6NBpD2kZPevVXiJmCLSr/GCHVVzilLtaLWOwxImlBWZTFaqPANf7WQEgmuVqO/P3+HZMHd88L2j7/Cpf6LL9p+VtKJ9yTr2eUSAy3Y8ZYLKH7SXD0Ahx63X7zG0HPnjWBtcTukCxp+0ZJH33vU+nHiUtAWd8N2kwETpVd/6UXjpA9+FbM+pQRLZRLZiIJ+4DvJ9MubBCHlAk8lHFu391guF+EVemPHkDSo4HcFKmn64AIhCeVfW5iyS/T74yFWhe30g4jhOjw4pmen2gOtgrY7upvN6ntPescRaYgDsNBDIVeUL3tmcY/yboKYp5HcuZSVn+DKXeLveRDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9KrfIib5Xe6f/Ko56ZEcbFFIJvQCcUTrNDFzS+FahlI=;
 b=TpsWxSyBx4A1dDwmRm68Hkj7u8N0S05tjhr4LSIdEWzc9dmoKaZ8bIrlyZ7VYu5qDbIXIId3zhb5KnT7kKdOnYHiWcFqjcXM31fTPBPt7JzNetZZonyGIprauaRPLyZv36g1bwdKleSzbrmpplDQ3siZG73jB0Vn4DygV0DOeg8dvp40b98aHYRkFsBHco0eQnBa18T3NEkMxrPN7abC1ROdc59+u6AzBO54/yDt3rX/tK+igZ4Nd9McA6WSXzxx3au6s+HN+rPHvfPwx5iQHVg4P55P0cO5uuFiVU+f2gIWnhneeWQax2NpbWSmR6E9vMCFmIfhEoGknIPPMfgV+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH7PR11MB7478.namprd11.prod.outlook.com (2603:10b6:510:269::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Mon, 19 Jun
 2023 09:24:06 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6500.036; Mon, 19 Jun 2023
 09:24:06 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 02/12] ice: Prohibit rx
 mode change in switchdev mode
Thread-Index: AQHZnd//5Jkqvexra0CpYHIoOown6a+R48JA
Date: Mon, 19 Jun 2023 09:24:05 +0000
Message-ID: <PH0PR11MB5013BD436645E3319FDB58D6965FA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230613101330.87734-1-wojciech.drewek@intel.com>
 <20230613101330.87734-3-wojciech.drewek@intel.com>
In-Reply-To: <20230613101330.87734-3-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH7PR11MB7478:EE_
x-ms-office365-filtering-correlation-id: 3645637a-b0e1-4ab2-84f6-08db70a6edcc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fdMax5LlR5ba2xJTLYguTKNfMxHntnURALI8wel9K+7C1V+WbZPskoqife1lTvYzuxY9Q90ei5+2MCU5BBsTGQUCNMPHHoiadbGW1cM+3aSVidYhOUEDdW4FUzFCiy0/yPgE8nUTkwkql5KDBhrbfCDUtILQS6YQrNx0Dz8s+DuTNmCy8m/2/+0yFkOelOyGr7L8KjwuE6iMe/LxlMEMKs09yU5HIfAZpJ86wwXsRwJLDdKZC/71auKWqiOnciDNs6R1xplIzv6xUyT/Xt66XIgR9DG2dY4k5TSyH8C8z5nL1v/2QK02BI16rEA+Vybx4fNEJ9dC2TobNIkFNt6ZgnJ2BxkwAXw9Zw42KOAgTmSYvmK7nBa00As6BWaTJ8umxMVEgxhEc6xABnRQcJqyrvimDpHUZitX6j/y7dGaGZQo2K8RrLXdLQs/T1u/vgsQ8wwWT/W/rMUOOlLpRPDHnT3W2yxeW2d64Q2efSXhCWn/HtY5S/08eIyZJ70vv20laiwHuCJ8AZzyC/5ZuexNAEVjpQeSgHckwKKAyyinhp1mGrZKgxhyCgp4izWeK5zOPjB1d35Gx/zLW/XXZRyBYRLvi6o8TmUewAS/CsJJIVU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(366004)(136003)(376002)(396003)(451199021)(53546011)(66946007)(8936002)(8676002)(64756008)(66556008)(76116006)(66446008)(66476007)(38070700005)(26005)(186003)(9686003)(6506007)(82960400001)(83380400001)(41300700001)(38100700002)(5660300002)(4326008)(316002)(52536014)(54906003)(7696005)(55016003)(478600001)(2906002)(4744005)(33656002)(122000001)(71200400001)(86362001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aY1SPZ2PbQGqW9rJHgwPCXN4Fcv0UP+k9bJ93IhJcJCwH0o4yW/pJi5oc0Mt?=
 =?us-ascii?Q?SjfqTrxNFFT8u970t45+fSCTZZ4KFl0vnU+J/MDtQV8d3m6MopgDp/bVQWCI?=
 =?us-ascii?Q?d1HFz33czWZ+SrXle58I4DOtblvuyJa1DjfjBitM8HTUcE0j95DhqbCkNrtp?=
 =?us-ascii?Q?4LfExHYeGG/KHpVUjmpYDfRrqFqOm2Wedr4lvNxeQbVHnbjYIA367IFpJPAw?=
 =?us-ascii?Q?iz6U06oHkwHq2iGBCLl9aHO95ZQqjgq5qIUIyugZ06QmSLQu/dBDtFJD032O?=
 =?us-ascii?Q?8HcdVjHziuEdwiCIbp78ij/Lt4iws59ERUBtFZ6CeIWKlmOXOnE0DjNi11Fe?=
 =?us-ascii?Q?QJKOBbPrYxhO6SLC2ecgELdBta7zCI5tai2w504NBgvHeBgxjc39uckXzOW/?=
 =?us-ascii?Q?YNc6HCIMLz2Ksj4+OtlRpLHRIw1qSJ7iy5FTBeEBrFeBOQEmAJKjq/ouY6ij?=
 =?us-ascii?Q?LTsV1x0OKg4H87Soge//HbmbTVVSFmT7u5pV/Vm2BPF87zFP2N1cb/Z21Bf2?=
 =?us-ascii?Q?QRRLOSsSSZCHIleAcDRA9ZXbh26TvtSMdf087A3V+hdakSZqX4YgCGNVgQRY?=
 =?us-ascii?Q?yt1HwHfhN86asY+21qm5yt7vLToU2CU6Mz53mTjkQyHm52F2JB1C4PRFhVQw?=
 =?us-ascii?Q?KtIrCwc4rYLJeitF90g9nL9FmKp1wXHgcXr95SAa/w35oeyHcRyYmNL2yCOG?=
 =?us-ascii?Q?lMcu4jXm3DrJlpu0fJzuHDghyMtRM26OTPm40rUOKczJiA3LUHS9Nknv/WQ6?=
 =?us-ascii?Q?wSp6ERrugV3sjWG/BoVg2rTTwbhNLUwXjB+Z/rdZd0QwClSQvnodlsy4yZ+D?=
 =?us-ascii?Q?5851d52P7X7tNmaT63DqwCzWNHPXYG5eHM6WWXirx5QQVClFuMThih2kATjw?=
 =?us-ascii?Q?q663svV2//kejwQUKJcpdby4srDwVAn4dn30wpHjqHbv1EgrkPUkmWGqHM/R?=
 =?us-ascii?Q?0W4k8tqLlnf9LZ5dAwfqgx6n8/IHxJ7Uz031U0N3RlhzAunVN3CeKlvKQlOK?=
 =?us-ascii?Q?TVyrxhb845NuNNYaEYLpRPpy2wAqR5nZ49eAvsR74+v/1mIPX3A0qi/BFVeL?=
 =?us-ascii?Q?3PW0a0VuMDPa7nlO96sbndRBpyKuuxfZ1p+1dvzfMai30BVuMyTlv21bWXvB?=
 =?us-ascii?Q?S26yne7cIJ3fFXbbP/vITSpVR0kkONrTpJhRuaLZLwYDPDDnsg9XNtbPCiKo?=
 =?us-ascii?Q?QVlTGewZewWDmVz9niil6HfZ9zWixU/1nfwWn70piKUmt1TQCTYtziGWtqDV?=
 =?us-ascii?Q?Q8LiOo2+IkCJ7fTH0rSQxMtkc7M8scLiPzjY5TsRMLu6KTB5GdvF7yYfufDf?=
 =?us-ascii?Q?3kZZo/1p8pCKgU6jnGim9ODchXWJdmXYzCwwtPwD1dJTN+Nh/ZGyrDLflRaH?=
 =?us-ascii?Q?Tgu216HLFSniwfJd3quKsIn/+YRaWeWW3w/VwviJHEBEjas0tMKtIP7f5UV3?=
 =?us-ascii?Q?z5xr1ILFMt92A891iSARBClBQy2yOSKbshOKGIvI2U0XJo8ldpvwYssNfnIK?=
 =?us-ascii?Q?oROnfDnBo3RwrSp2xZK9RK4ea6QpiyWbxpNU+kotgs/ixRc7HzGwtkXvAYg/?=
 =?us-ascii?Q?mv4X1hC7jbf7ago3yaAq30DxeKja3nZeXDP0oZPtRWGWbnLwUCt2GA422Kp7?=
 =?us-ascii?Q?Og=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3645637a-b0e1-4ab2-84f6-08db70a6edcc
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2023 09:24:05.9109 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NIWzr5FhALBOz9YZLbHlwk0mreRU+hTBlo2LEnVL+d62MoEo6v4rHd3JH1TaUytZJwb4kSQPIKorbrxPIWjfwI/vFgvMviUFNUBVjkGzEnQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7478
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687166648; x=1718702648;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W+DRvVZC+L1l6jzIFwiN66tj3FonbEP5VCxR+B6n0jo=;
 b=VSZILLG5l4qYyb0p/aWCjTLo/9mrpYOrgH7NiaNy14yr30lQZf2JiQ3+
 bGIKaJmrXvB8DNqZtNVrV6RP4Jn9ksAi4pSZXX/eGakh1UvtU1vTkShsh
 4RAJce/JQZM6FdLvrFtUvDCGTya9sRw4xU2O/onHv2qKf2230Kg+0S14n
 98OcBUBp4o5LC1piI0onAhYCR6GXQ7t13TvGgGclSgaS6YItf2qNYHjz4
 wbhCq8DEg/4Q0DZz0F91QtzME83oPmwDiy+QfwZm/Yj/d1vhS6wCpR3UH
 oiikH1mJXKQJk55wQDsDHwDSoFIUe+XeIqnkZ07l5Edt15HBxvvvqt2mO
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VSZILLG5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 02/12] ice: Prohibit rx
 mode change in switchdev mode
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Tuesday, June 13, 2023 3:43 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org;
> simon.horman@corigine.com; dan.carpenter@linaro.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 02/12] ice: Prohibit rx mode
> change in switchdev mode
> 
> Don't allow to change promisc mode in switchdev mode.
> When switchdev is configured, PF netdev is set to be a default VSI. This is
> needed for the slow-path to work correctly.
> All the unmatched packets will be directed to PF netdev.
> 
> It is possible that this setting might be overwritten by ndo_set_rx_mode.
> Prevent this by checking if switchdev is enabled in ice_set_rx_mode.
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
