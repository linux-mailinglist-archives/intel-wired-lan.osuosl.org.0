Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2A8600DC2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Oct 2022 13:29:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D919340882;
	Mon, 17 Oct 2022 11:29:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D919340882
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666006170;
	bh=kE/d6wVFwVdlhJDH/1v/LXJOvJjVqpKdYCMBIgVNMFs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UOCLavL6d+tuuXFAN1R+DnCIwX17I3I+peOn2cXMkYS1+UgsUxt+7Hiw6SqMu78cp
	 feOlR70BxEMwS9a8NKb3pdZ2hnFrFyDkCqNCDR9rgTtZQs4/XiBkCW12K1qNpsxoym
	 Av/U9XFRhXavUm+nQi3BvcFs4j9sTB+GcItyd8FirGGIxY0FJQffnRmnATaqxNzQA0
	 h28yuaSP6904xVmb3bj9rBe6x4euYc2uO5ZJVpwLh89pzBEjHfyP2WaAqLtPRr1VLY
	 /0BJO+emLJqXN/Qynj8sSLX0bnKJQ5RZqq5uaj7XKDEcB+/m2MAOeHUe2dfoFwgxbP
	 E9mrttMJUhvWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 679izDRsNIIW; Mon, 17 Oct 2022 11:29:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F46B40888;
	Mon, 17 Oct 2022 11:29:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F46B40888
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B76631BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 11:29:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 912BC81770
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 11:29:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 912BC81770
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2U0uQWggZzX5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Oct 2022 11:29:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F67C81493
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9F67C81493
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 11:29:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="392077664"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="392077664"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 04:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="873434695"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="873434695"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 17 Oct 2022 04:29:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 04:29:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 04:29:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 04:29:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AGM6ynrDXmCkBVGh8fnafb90slJxB8t4MmHEkD69nLMApw9f5n17bJTytm0KWEvlrGmQYiqs+heei7vWMFtuzFB/42TkgkjUL75KbDIlpU6p/tlLPjV4LouLj5oDmx4QflADaFoJX42u3GcI38viU1AHN1R2tDVuneZiyw4NwrCvcuLOQ5UusMsE7Gjsn2hy8YBMSBvOaPQHWdJlXDIxqko8m03kdICgnvl1S4ZvHgRX9eI3YgG+PjeO/lNdp+7WLq/AuILZ4DXPA4AjqQLfMjB72nr3ZqSA9vHdabiEQxGgXn0xslb34iuPknAa7ZAOvxMn2xYHoU2KfwS6DrQLcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ne/HU16c7yCOdk/Rure++25yywUVEBdLlQMlIlxSIHU=;
 b=YHIUTbdt1aj0tZiGli/hlUshfdqWlWOuH4mke5+MDgCq+WpnYBjIvlp7m/s6qRLdwTXyMliaomucDJPzv4Dic4Th1bPSlA++Vs9lAFjZTTjy3y3UxgS7tnhvBgaO0o5lBgVkavNXmQoF5M/lxKzU9hGFXAvTv4pVwLbUng2zr5/P3IxM99wH0E6lnH1pDp9jnl5iRaCXKUF+D5FlG/UfdAQU/C90abYAcLMNZKJaPZDtSrpIFpPsRsIGLL6gOAn/39U6ANYUn9S8+cZiSJD7yxRlm8rqtejH6fZe2FUoDpEF8Qh+GQuKonPNzV4gggw0IADpNqnqzPYSFlapIPm5SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM6PR11MB4579.namprd11.prod.outlook.com (2603:10b6:5:2ab::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.30; Mon, 17 Oct 2022 11:29:16 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::4270:554e:8096:6c55]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::4270:554e:8096:6c55%7]) with mapi id 15.20.5723.026; Mon, 17 Oct 2022
 11:29:16 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: Fix spurious interrupt
 during removal of trusted VF
Thread-Index: AQHY3LQGsUzJ27zBWku5PSgH2B4F3a4SfdXA
Date: Mon, 17 Oct 2022 11:29:16 +0000
Message-ID: <DM8PR11MB5621B09536756FBE254E939AAB299@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20221010142222.591646-1-mateusz.palczewski@intel.com>
In-Reply-To: <20221010142222.591646-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5621:EE_|DM6PR11MB4579:EE_
x-ms-office365-filtering-correlation-id: 5d02f0a2-9951-46bb-9cbb-08dab032d32e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /4YNmjmLAA7fyyrIm3OfpTaVFMxOHeen6EakD2EYrAodOT5kd5lH5zkYmq2JwK8cEug8GJAmcvaeYYWmzY1516ibUoWf3HYvNKDgwSU/LgZ0vKexgHZDdobHPI/yARKnRe5dN8iFheu8u/ZROl3VnEBM/3CzlVzgzzz53c6/YpYbOaYzTBbl7huDPS4cgcwPDu5tmxaVM5FLWP1s1wrPa5Agi8m+A/Z74xpi+e+G5TA4Yl23yyx0GhKi/tyMpxA9CS7xKpBHb5X/3U++HL/MW1TuXkgLAmoaKg/GTNIuDY5mRiN4th+n8PpZRl3mStvNtogkSx+MHSpRCdz7jCat+GkRBzJ1W5W1zwTB3B4IvU+gjQmv+2iAnqgdOpiOQWtLV5mviwqLcxtc2r3IIWpvMp1d6hiIrlMvmk6p+1/vfCPpUPQtWlmnyEUw/FAZvCeIRt+qsmm0YLK02EWHozViaMFhEZIeqIzEjsQ121a5gKF8asYytsHR9BHJMsqGV9Io+BZiIiZlEPiJtS/t8MXTLB5ASXNa3i0Clc+bv8qxtO4Juag1w8uBy/jAelMOUFg6G+79k4xOv5sAz0jdVan7tidaVkfJHeA2VmS0siCxRL0BetRHTYlAKsq+s53omteIRwH9Ng14fJxW8b1nPO68jWzTrU8jvLPpdpPc4nlLMB7k3aL2jG1vCRmxp5hmtskgEhLFQwKQ0sBgpDvdXDY+5FA+GldGOTpBtGysv4hFb4PS27i4mqujFBkuyQSbyZ9RUz7+R7lCsTrZ+xGJlWivJA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(39860400002)(346002)(376002)(136003)(451199015)(38070700005)(38100700002)(122000001)(478600001)(82960400001)(9686003)(4326008)(33656002)(6506007)(7696005)(110136005)(316002)(186003)(76116006)(66946007)(66556008)(66476007)(64756008)(66446008)(107886003)(8676002)(55016003)(71200400001)(5660300002)(53546011)(52536014)(2906002)(26005)(8936002)(86362001)(41300700001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pG6SiwOJhgGKPLBRST+DLcLJcjAYRnNKgTBdGNId08uGcuT1aENV1VkqHdmQ?=
 =?us-ascii?Q?1DSZf8Bt3OsSF94Ii6w7ddA0tMmcTlqE4blrLach9gx1pL1Zh03+kjaL6PWn?=
 =?us-ascii?Q?nUQtcjLDKmAXQYmgJ/KMsXgS/IdY+u4sHANIGYNa3b4qGScVgX/X1BJlKFYv?=
 =?us-ascii?Q?eayzSP5UV8hL/4bu/gTX/OA3aaeji4q4PB5TzKMzcc57EBSlJEviilEMgGDG?=
 =?us-ascii?Q?mwrlADLAiC+jCZQ9/sVcV6WPiUnY/5UxK38Sgcz+XMHgmu48VQZBoVVeU/b0?=
 =?us-ascii?Q?w/5pk9Di3VLW6Q3ecWkukFIKCyGLni7yfTLdIHKYx/7rUQRHoHOb5j1wlhd4?=
 =?us-ascii?Q?wuTruMAxpfVvHcYosfIbmqWXjgs6p/lhwmOgnQOP9lV8nGZOyBm7Twwvh80U?=
 =?us-ascii?Q?FForxUT+UDTkn9e2Yu/kpsAlj4GaUrYE3ecvVVpgtALXj+OuqI8iIYWKwRDc?=
 =?us-ascii?Q?Q3v3qCNEIJueeLb/CmYKL1AgZtA6bdxtFAcVqhvTVBe3qCK48bhRqYaIvGLE?=
 =?us-ascii?Q?KadPYrfJt0WeyJ1OMdlKJpE4EBuBhyv8GYPcfOB8XxzHZzAAA9HoxmE+r89T?=
 =?us-ascii?Q?jptbKWJjEwdwEXnto59TyQGWBOm9O1Y1IRW1HXgLl/FxloCaK3WfGKzcosPG?=
 =?us-ascii?Q?lLCu3X93EeDRtjQ3wEXtKA+8s5e6XV0aPO4TpFz/PxudVj5IlInKyjOkjH++?=
 =?us-ascii?Q?OtV00jNKYa/qWs5PkN1vFYZn3MqMY5ZSblhYWRoTlQTXPhIdXfLvtRPftrun?=
 =?us-ascii?Q?6HA3HQ2maubgZwTsQCI34XmhcSMV1rrpfOzgoP5yA2rPMQumFTWZx8Fq6bnc?=
 =?us-ascii?Q?UyFKIu0a8kx4PENETsx0FJDJIT88IdhZq/f3tmF3as3WQ4F0bneuCNzJaDAX?=
 =?us-ascii?Q?v1iQzqQJJMkPD4vzEtyahzF2rQ2NdDBcVV9w+zj6/DULKnEtz3PMdjmt/Anx?=
 =?us-ascii?Q?hVdjj5jM0iLFI+OPn2Jp7jI2TnQgaJXpH0Yr+pkr7315bnO+OSAByp/yBQTl?=
 =?us-ascii?Q?8E38yerw4Vof3io+oeLQYurfPj3eNAm4t/0lM3uFEl8Bl0IQByVqFu3B3HXL?=
 =?us-ascii?Q?9/5fj2sF7L260zwTOdNsdA4H20ypu2JjtHIY6fZ3CagqlWgpk/JQNY/xMswS?=
 =?us-ascii?Q?1xAp0M4gqg+BxRdePpOAdFNlCwfJWhb5f6OKviVIAczoluaZudOdGgNC5GPx?=
 =?us-ascii?Q?83+YJBfiUrxnRt50BvNmWyGoGWsrKjoEp9ZdtM7vxMSh3FqWNDXwnGqeKXf1?=
 =?us-ascii?Q?MjHup4euV5QQrEhLCTFAl7JLr/ilTzuYOLZr48upcmB96bniiPRHAP641mG0?=
 =?us-ascii?Q?01Q+hsUS2uCrMNj43580kMEiLw7OU4PW0vZq2w97dLH/Fz7qTvdepN0yAlPA?=
 =?us-ascii?Q?mCv9VVGCocZc+Lczdv4Tzjq9weIKbRZkMlm9Az5lEv44QzQ2s2bIoGlFlKj2?=
 =?us-ascii?Q?G//0sicHP4BeLernZEyxGKzzibkd8VF6XbCfEgkNgl2pK8D/o1Ahp46a1WSZ?=
 =?us-ascii?Q?chSFiVYCU39bTUqvr4uKQMAIUiqTLPT49eI/1xlejnL33FhqQwejeF6A83To?=
 =?us-ascii?Q?zM6Id+Gcgm72cfJo4HCODxsZLM70hlVjxGlf8pqWynF1oJYkct5mBOGTlsEN?=
 =?us-ascii?Q?Mw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d02f0a2-9951-46bb-9cbb-08dab032d32e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2022 11:29:16.3622 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qYJJ+AUaMC7E5H8QN9/pxVWiMWrCKUGGa6LkSI1Qn7z1Db6JL5RXWL4+XFdT24FumH9Dmcz19TzFM4Po+P2gqXRquWr+XZwDBcLEZeGHmgk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4579
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666006163; x=1697542163;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EBBf+hLtnM0aSHwX2XURwOo3+JzzuWKZgIx453VNUow=;
 b=a+eK5fIkcBVKdsi/n+c6MhyyfJBjQwwoUXGr+32cKs3ysmRMPQLYDBlJ
 Fr3lGNzD1pQ3+qVTywtZKnqNoq9s2HXQNs5A93mLpHtHG16V8+HJKAg5p
 GF4I6BbvRz/1jqPV9FJlECa7t7gzrbLNkbTng/8w3peKNWniazmYtovLS
 vaLFLQVEm+YpPgGm+kXcjkE6ARmVLzE+Oeo1L0O69QdUnt+ouDi1pWkyf
 gs3E9erxmOZF1nzbiDJ2v+uXSy6QZzj2vPpsD3sxv9cfW1qvDzryfHk0y
 AlBmBwE6070fQtX1iIcnbWNMSjz/hjTeMmOtm9qEKbK/T4zT5VeqfgVLz
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a+eK5fIk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix spurious interrupt
 during removal of trusted VF
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
> Sent: Monday, October 10, 2022 4:22 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zulinski, NorbertX <norbertx.zulinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix spurious interrupt during
> removal of trusted VF
> 
> From: Norbert Zulinski <norbertx.zulinski@intel.com>
> 
> Previously, during removal of trusted VF when VF is down there was number
> of spurious interrupt equal to number of queues on VF.
> 
> Add check if VF already has inactive queues. If VF is disabled and has inactive
> rx queues then do not disable rx queues.
> Add check in ice_vsi_stop_tx_ring if it's VF's vsi and if VF is disabled.
> 
> Fixes: efe41860008e ("ice: Fix memory corruption in VF driver")
> Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Addressed comments regarding initilization of variables and  added usage
> of ice_for_each_rxq function
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c   |  2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c    | 25 +++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.h    |  1 +
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c |  5 ++++-
>  4 files changed, 31 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c
> b/drivers/net/ethernet/intel/ice/ice_base.c
> index 9e36f01dfa4f..e864634d66bc 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -958,7 +958,7 @@ ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
