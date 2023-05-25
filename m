Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4F1711767
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 May 2023 21:29:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85DD283AFC;
	Thu, 25 May 2023 19:29:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85DD283AFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685042987;
	bh=K0Orxo+PdGotvQ2f4PUDD9Sbb7LgeQYZjSKmVsVDq9U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tB0OYSl9GYs2Bl1sgVkDcdM9GhR4CMX3AoSq06di6Evsc21eklfL18A10DMC69YZY
	 TTJwO4NYWcvqrMTfps588SL9haM8uqKwj5Y954/kvvd45g5hfMdTjtFnYRjSk7igum
	 tF2VdsTkP9KFUdtSSIuvljOX6Y2vtiIBP3U/8547u2SXTkhonJjLHQWaEdi7tao4MF
	 pCG5V81Er+V/aQpSNWVRGQI2XjQya5I04g45kLADMX1mqBNBklNUeN/wJ7fW3q4vmH
	 pbKYf7Rr49xfG2VndJldiegXZdM9JrLZ0PaTZX6otb5Vn3aQhJC2KWXRNpssq9eHyl
	 Tpfi9T5RsdF1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 99Xico395bMo; Thu, 25 May 2023 19:29:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E5C28354B;
	Thu, 25 May 2023 19:29:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E5C28354B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 306041BF275
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 19:29:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 07DC540320
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 19:29:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07DC540320
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sy7goa6U_Dwl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 May 2023 19:29:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5566B4012D
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5566B4012D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 19:29:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="419744917"
X-IronPort-AV: E=Sophos;i="6.00,192,1681196400"; d="scan'208";a="419744917"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 12:29:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="682452162"
X-IronPort-AV: E=Sophos;i="6.00,192,1681196400"; d="scan'208";a="682452162"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 25 May 2023 12:29:18 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 25 May 2023 12:29:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 25 May 2023 12:29:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 25 May 2023 12:29:18 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 25 May 2023 12:29:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F/PWj/pjUPgwpXDHAiI8cTeukUsIQjaAdDuy7phcIemKtuSDUUetbrBZQ9Ed2UTCD8DXqU8oVas7hQSlcSfePX8M1Wg8Z2kMosYM3dKa29k/dnhDogPWWFKBQqR595sF2JL2BcZVu3VgtL4aJpcU3FFpdFJr15p1jo0RQ1v5SdMaKNF5tvGKKxAPYwbp+k+sZ6Kg7Pbp9A74qcATKX8Za85EqdxRoZWmcdNvav40UIlpYM5MG8msIsZtu7DVjKSSziK5sXrtQndk2ZT58uv9hGqTm9y7OOGW4KzSz8DdMJk+O2kfCoqcVjyVBQ8p3OKKFOnqcxdNF8IhywnbtpK4Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wDG3tscYdh4NmDskdqaGRoHLbBDOfrpt15E9zFBzdd4=;
 b=hyrTjT0H9MSUlVZcA2P4gDPcdZuUubOtJpYgzNElk8PhpE0vmzPNsz5xfQ4KV1iUlspzBiojpQt10fszUz4QHYQXckFMd9gdS/eGs0rS9EsHAeTA0TFcCRcSjTsyT/Hxdz5w1pAOKs6pz+X9PYgJlJ1SIkxp+QZWP1LG3mAhCL3Z87W0jRN4NEG+wIP7sbNtHhej4VYEyfkIAZjy8Fy0jc7LbCCEvB2wS2LcEsCOrY92khmYDtYRWk/e/VLLNZJGqKfMYiGt7wbL8wP3J5wgXrCNpt/spPZVzKu7sFIIfoiUOYgv/mD882y8sRr/pGJZ1DIektmTnvUdWos30qoqvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by CO6PR11MB5633.namprd11.prod.outlook.com (2603:10b6:303:13c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.15; Thu, 25 May
 2023 19:29:15 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::788f:25cf:e3b6:cd23]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::788f:25cf:e3b6:cd23%5]) with mapi id 15.20.6411.028; Thu, 25 May 2023
 19:29:15 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v2] iavf: remove mask from
 iavf_irq_enable_queues()
Thread-Index: AQHZfRH04d4TIFzNnEGKXpBHem0us69rhBFg
Date: Thu, 25 May 2023 19:29:15 +0000
Message-ID: <BL0PR11MB3521A6769C089D898CAB189B8F469@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230502152908.701880-1-ahmed.zaki@intel.com>
 <SN7PR11MB742025D255B60E06F8FDA48A9D6F9@SN7PR11MB7420.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB742025D255B60E06F8FDA48A9D6F9@SN7PR11MB7420.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|CO6PR11MB5633:EE_
x-ms-office365-filtering-correlation-id: 5b5cd5fa-2076-41d2-f8ba-08db5d56536c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7wGPfMOYcsEgXd/Sy7j1GdJnWHBKyTtmztJk9KnHP2qnEd7BlsIwEAb5fGbeIKE5+xY6qyVukpm13agUu29rFkPuSKcM47l9wEv1+KLC+0f51AfIHBQdeMOYHqRnmSkj9qUmhv2/X1xbp49WIl/4+iykvkokUoyQYLK/BvikgDPlbAjOiCWV1xNp1iM0lWuK5cOFyOYa7w9qOv6rNjhuFt4Iap0fLCODm+CQKEPxQ0wi5IFwnwUxxJO+mUARF1tN/WQVeBaWulQoNSuBhKqhsFn8nWUTSvVwiiAupVO6QKd/4FwecBItzEe1Qzc+vhhKeWlRUcD7hlcTrmsuh/vJMNTt6YRVeit3N7pS5cas2dU5nbau9m9wetsfO3eQAdaGbZLQeWC42ZcUSJBuqN4DW8ghlunR5Huf6KPxqEtw+sawXDM04V65HZQj0oQafFGO9IfpeDm2AOYFUHzW49lMBYZ8nBrPbFcbX9vRa2ycOd7oPZ2eAIJmg5L/5zyJSFTGWIQbd2w7X3jxHKhhlQ248v8rAJTwtH481HdeFYb4i9IdC7mApxzNPOx47tEeh1fmv68lid01ZJjbUa7MSBMrmoTRYjFiD4/aAQpAuIZzpdM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(366004)(136003)(346002)(39850400004)(451199021)(83380400001)(2906002)(186003)(38100700002)(33656002)(38070700005)(86362001)(82960400001)(122000001)(55016003)(966005)(8676002)(8936002)(5660300002)(110136005)(52536014)(64756008)(66556008)(66476007)(76116006)(66946007)(66446008)(41300700001)(7696005)(478600001)(316002)(71200400001)(26005)(6506007)(53546011)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L/E/xvz20vVJDBSoaF4sSolikD6taYefBoHm2/7zeJI+wJwl25r6GHf3oZBd?=
 =?us-ascii?Q?BYLDedbnNA00a6S5v+5C0J1oXWlvf5IxJbfaLYP8c5eIXfOVhiSwpCN+Emiv?=
 =?us-ascii?Q?PRxUiVIZmW8S0Nf02TwvKPNhU7rbMxh5mf2PwXsw6XasVBf3x0qn1KArxhsJ?=
 =?us-ascii?Q?TvMhRg+5yr709RHwpNZmcE74TWiyf0owTRLGx/n/rQKgYwKWwV1GFh1hTRUW?=
 =?us-ascii?Q?0/WNjiWhGYdn2xkzoFpPjMGqrDicslmx94UChK5Yt/8KHS17kWnusm+HS/K/?=
 =?us-ascii?Q?WxqITbNaCEPKXWe56vfnwDcdUtVsRqkraP+ynwxLuZiWxnS9OAq3ly9RO1wd?=
 =?us-ascii?Q?Qof2wuse7rYqxqWxd6BRvCt0XlnFF24c6MhKSMdDswxxRtfOKg0f/W37Du6m?=
 =?us-ascii?Q?hCFbgbscLj9TZBi0ZqR8Gq6MSqA47SQP1QvTwZC9Qs7Ct2FkMTk2COHm9/FV?=
 =?us-ascii?Q?O+0KZhk5HRjmPSsaO2acXSzmnvhVlSD+/MUiwCeHx5vaE4umCYu7u+gUi0jL?=
 =?us-ascii?Q?dl1NufC3tVMeW/RmbVdtGDWnHcG49RuoR+o33CERH+twOg8rWVl8nVsm8rM3?=
 =?us-ascii?Q?3AFptSomuDAvO1m0vSgFEPIwh/vTr5h9bz8xmPDK2l1ImMx1Hz4hZz8o2CAJ?=
 =?us-ascii?Q?nAUXu3M/IffBLbzRqegeUh6XzBAqUWmeyFa8j/odRNDO8+fTol5s90lA5buW?=
 =?us-ascii?Q?1VqoqFFEqHpweDMYlERAVvoVXAVyA/ejdo7iM3ZhoAY0kfyGcji8X47vv4qq?=
 =?us-ascii?Q?uYw/3R0Gh5o1apKKOI9lu3WEfgDACfJMM8kVfxOF836Ya0lFqQcwDnZb5Sap?=
 =?us-ascii?Q?YpDSYLOSr2IsRidBGIr1WWOksUNg7/wGAXLMuTzFAy2+CPmlBdb/PFqeW0Ap?=
 =?us-ascii?Q?UVTnL3TSgtIgzy0Y50pHO8gHnjVQGXnSh4nv6AeGsg7V5bhIKuvbnQ9gab69?=
 =?us-ascii?Q?Yte0OEuV4dN1AC4wTRbZElrFBpwwdyR2wIPXGqNCxCk6QpjA6bT0uDkcTMi0?=
 =?us-ascii?Q?m1z9FW5jtT9ksKOUomuv54ddjL/1eXjwVb078TTqlW6HQtUhkP6GHwus/6Lk?=
 =?us-ascii?Q?rdftnKnkr60nwW5XE2OS16e03twRlr10sWHwpb1LfHNRuxbq9UaMnSnGsAij?=
 =?us-ascii?Q?Q9XWBBhq/XIBaWTF2av7N4oJbW1sZQVSw+zPSeCIQ6nOkqOgFesqoL4frc+W?=
 =?us-ascii?Q?omC9YuG3VcmIdaSX5MmOJPQcFo5YzYRS4rDcgSKwj7ycYdNYIjG26KFJlJmj?=
 =?us-ascii?Q?XTsrYKxkbouMm63MBHBvRcdi73xyrVtrxoJSzTZFP+kWbBZfxcbkHls7sZoP?=
 =?us-ascii?Q?6z70d8oELdYjidvZZTP6ZjpNzLMtzpMI/hK29byMMjBoMenDBacpwMk/EuXm?=
 =?us-ascii?Q?PJ/BWlpvDC+xlXUvx4WmiDgiMcMRihJ08rUdkyWx8kc4YOKWQeQRUxe6bn3Y?=
 =?us-ascii?Q?rpjg0Zq4plKv6XwnF94ZNTe1MCYRjAEvdED00xl8WB2KLLk5TfwOTzQ8bv+Y?=
 =?us-ascii?Q?Dd+IzgH/XtL4AWou7Y4R1mnDTIQLJEmPvBEFBoTUR0K0UxNALGlPFyOkExEJ?=
 =?us-ascii?Q?IhRpzZmFxZgE09p2i9jPdLLSTOESkSFggqxFRI6V0NrwWvxf0nlNUpC6wbsG?=
 =?us-ascii?Q?lA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b5cd5fa-2076-41d2-f8ba-08db5d56536c
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2023 19:29:15.1021 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4VjkJ4MZKjegOycL4H5EDraF0shNSWZkeFZzDlXkpPAB5sCKq8AGHBXsvPrwR9HDUPY1orGml0PBU0n3rqhc5Ufx43pnzS8bRU3QC8snYKM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5633
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685042978; x=1716578978;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=p6cdbqR5T2SDPxWV4DZuOGDNehO0toxGniUtHsIMM0A=;
 b=dtxGf5MN74BDhQlugz6oy/q5y2dW7mO1QFQuFKI0dzrxARAPi4/ORB4h
 WR945q0wC4Jt8Ihb46m2+Vmfgn07sjES0Di3/4kHBvMmNqJTfsJSnhFjb
 OI1ki0VLPQSIuV8X/uW2+ovFFLHusRnH/3BvIdcKj1dunLkV9z4JyPEhe
 f9djxlJq9PbWHz4vJoDy2JnrqvBg4+Cc73KLjDdgd/QlcbARDBRHlEIVw
 5AetZt0/KRzFvNOoV7tfzKCC7jGDxXK6AeGOyoeWT9FcJVwZINPfqw587
 YhK1IDFdvyd4++KwEmsMoIZXcs4uNdqrvZPwezcXleyYnf4A/zEBhO7nS
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dtxGf5MN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] iavf: remove mask from
 iavf_irq_enable_queues()
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Zaki,
> Ahmed
> Sent: wtorek, 2 maja 2023 18:19
> To: intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH net-next v2] iavf: remove mask from
> iavf_irq_enable_queues()
> 
> Sorry, I accidentally sent this as v2. It is v1.
> 
> Ahmed
> 
> -----Original Message-----
> From: Zaki, Ahmed <ahmed.zaki@intel.com>
> Sent: Tuesday, May 2, 2023 9:29 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zaki, Ahmed <ahmed.zaki@intel.com>
> Subject: [PATCH net-next v2] iavf: remove mask from iavf_irq_enable_queues()
> 
> Enable more than 32 IRQs by removing the u32 bit mask in
> iavf_irq_enable_queues(). There is no need for the mask as there are no callers
> that select individual IRQs through the bitmask. Also, if the PF allocates more
> than 32 IRQs, this mask will prevent us from using all of them.
> 
> The comment in iavf_register.h is modified to show that the maximum number
> allowed for the IRQ index is 63 as per the iAVF standard 1.0 [1].
> 
> link: [1]
> https://www.intel.com/content/dam/www/public/us/en/documents/product-
> specifications/ethernet-adaptive-virtual-function-hardware-spec.pdf
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
> v2: modify comment in iavf_register.h and clarify commit message
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h          |  2 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c     | 15 ++++++---------
>  drivers/net/ethernet/intel/iavf/iavf_register.h |  2 +-
>  3 files changed, 8 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 9abaff1f2aff..39d0fe76a38f 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -525,7 +525,7 @@ void iavf_set_ethtool_ops(struct net_device *netdev);
> void iavf_update_stats(struct iavf_adapter *adapter);  void
> iavf_reset_interrupt_capability(struct iavf_adapter *adapter);  int
> iavf_init_interrupt_scheme(struct iavf_adapter *adapter); -void
> iavf_irq_enable_queues(struct iavf_adapter *adapter, u32 mask);
> +void iavf_irq_enable_queues(struct iavf_adapter *adapter);
>  void iavf_free_all_tx_resources(struct iavf_adapter *adapter);  void
> iavf_free_all_rx_resources(struct iavf_adapter *adapter);
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 1ad0fe7f6dda..e18d7cacf99c 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -359,21 +359,18 @@ static void iavf_irq_disable(struct iavf_adapter
> *adapter)  }
> 
>  /**
> - * iavf_irq_enable_queues - Enable interrupt for specified queues
> + * iavf_irq_enable_queues - Enable interrupt for all queues
>   * @adapter: board private structure
> - * @mask: bitmap of queues to enable
>   **/
> -void iavf_irq_enable_queues(struct iavf_adapter *adapter, u32 mask)
> +void iavf_irq_enable_queues(struct iavf_adapter *adapter)
>  {
>  	struct iavf_hw *hw = &adapter->hw;
>  	int i;
> 
>  	for (i = 1; i < adapter->num_msix_vectors; i++) {
> -		if (mask & BIT(i - 1)) {
> -			wr32(hw, IAVF_VFINT_DYN_CTLN1(i - 1),
> -			     IAVF_VFINT_DYN_CTLN1_INTENA_MASK |
> -			     IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK);
> -		}
> +		wr32(hw, IAVF_VFINT_DYN_CTLN1(i - 1),
> +		     IAVF_VFINT_DYN_CTLN1_INTENA_MASK |
> +		     IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK);
>  	}
>  }
> 
> @@ -387,7 +384,7 @@ void iavf_irq_enable(struct iavf_adapter *adapter, bool
> flush)
>  	struct iavf_hw *hw = &adapter->hw;
> 
>  	iavf_misc_irq_enable(adapter);
> -	iavf_irq_enable_queues(adapter, ~0);
> +	iavf_irq_enable_queues(adapter);
> 
>  	if (flush)
>  		iavf_flush(hw);
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_register.h
> b/drivers/net/ethernet/intel/iavf/iavf_register.h
> index bf793332fc9d..a19e88898a0b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_register.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_register.h
> @@ -40,7 +40,7 @@
>  #define IAVF_VFINT_DYN_CTL01_INTENA_MASK IAVF_MASK(0x1,
> IAVF_VFINT_DYN_CTL01_INTENA_SHIFT)
>  #define IAVF_VFINT_DYN_CTL01_ITR_INDX_SHIFT 3  #define
> IAVF_VFINT_DYN_CTL01_ITR_INDX_MASK IAVF_MASK(0x3,
> IAVF_VFINT_DYN_CTL01_ITR_INDX_SHIFT)
> -#define IAVF_VFINT_DYN_CTLN1(_INTVF) (0x00003800 + ((_INTVF) * 4)) /*
> _i=0...15 */ /* Reset: VFR */
> +#define IAVF_VFINT_DYN_CTLN1(_INTVF) (0x00003800 + ((_INTVF) * 4)) /*
> +_i=0...63 */ /* Reset: VFR */
>  #define IAVF_VFINT_DYN_CTLN1_INTENA_SHIFT 0  #define
> IAVF_VFINT_DYN_CTLN1_INTENA_MASK IAVF_MASK(0x1,
> IAVF_VFINT_DYN_CTLN1_INTENA_SHIFT)
>  #define IAVF_VFINT_DYN_CTLN1_SWINT_TRIG_SHIFT 2
> --
> 2.34.1


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
