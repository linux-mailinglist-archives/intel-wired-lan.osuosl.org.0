Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA59745B91
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jul 2023 13:50:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D93898164A;
	Mon,  3 Jul 2023 11:50:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D93898164A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688385006;
	bh=BgH4+8FYU1x2nYx2rxxWw5IWdPH2sZ823JV4peSW4I0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GgSbwDDyVPj/UonzRU+pDRM+mYi179eYlDlp/S/0MBLC/kJethYVsDW7AK4mHlnuh
	 3bA0wC3x+jzyu55IqzUuE7olUipXZd2uceVmVm/cjXZcXKoDSn2DEieY3bxhJDi80i
	 qPM1V5cS8b/IP0VHEvV+Vgz/AZMdQ4Ve6+c1I/6/KbyDEKExRuWo4bgdmhAqWUXzbY
	 50F4S8yO+VHTB/GhwNlmbPAo9z/L03bVECDyDI9DWlpesRm1o1jCGO60lG2kVv7H0k
	 kGD2ZjcwN8RSl702Re+UeGcYela7eMQCa2D2+Ve2vQorFITpBTNxuTjSWAA2hCgqnF
	 +cHEwh9HZ9p4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qadBppxcfNPB; Mon,  3 Jul 2023 11:50:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77F53817AC;
	Mon,  3 Jul 2023 11:50:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77F53817AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 55D2D1BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 11:49:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 27DB0415A9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 11:49:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27DB0415A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NjDdXgqys4QP for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jul 2023 11:49:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2EA1C414CD
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2EA1C414CD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 11:49:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="360339623"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="360339623"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 04:49:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="788504800"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="788504800"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 03 Jul 2023 04:49:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 3 Jul 2023 04:49:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 3 Jul 2023 04:49:56 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 3 Jul 2023 04:49:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yaht1LIG7Izwi2IVJZLC8IdtYo8ESYeUg71tDYMgqO6cOUBJ47eXpZ2egwCmSTKUU0vR9GosbC8YykeI6Hyu64ziVzNQNcP1L4pZXKWKeYvTsxhI6d+O0iM/WA8OZeT+WlPdapDb3gNKrX3PNO9VfaHfH0/zfOMH5WaMKjFzWFGEukzw0x1Jpl7mLEnkeB+IVGzsMUtXDcsTdChnZSpetXPTaYWizaRse3YeUqjg8xcU16lQYd8fw9mvGveEATdniApvgaldzm4sR6G6fQYsaCBGCyK7nzc7mMui9yWYZIRRwWLbyayBRWhiLKnID4wBzrwJazA/8jIvVtBcpcd+Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9yxkD1XYm3evceABat1r8eBGgFDcYrX1ZsDSYtJOr9k=;
 b=SKrjj9l7uxMZTYSsAcgedLL1iSNCxyFV5j2NnJbzOahWd3gOdYK2eGKC2deh8W7feJKZs/DHkJ9DS6sqF5NvrXpOrfpTs3XtO+izsPeBSyJZ6M0WcLuvPlq42khZdKJi3SQgtDIvn1LBn76QvCBYXt33qK0aGQYv8BaDuvX555yPJ25yF0vU1kJPqvhDfkkoUtvurb4f2KAsExgr1B1cvOqRrtB3P3ziX4ftvaRf28vpDDuDsQvP0q24sNweOcOgyohvUVqgiE8x7zrwVHeYOiD00R3tDJ9hG1kqFVwW9EdNKYfuPKAl/yd4fKIG31EU6e0GsYXmeDud/UbNV71ehA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by DM4PR11MB7205.namprd11.prod.outlook.com (2603:10b6:8:113::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Mon, 3 Jul
 2023 11:49:49 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 11:49:49 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 5/6] ice: refactor
 ICE_TC_FLWR_FIELD_ENC_OPTS
Thread-Index: AQHZmTTBfmWPNHNGA0e2krD+qJrLY6+oFm1g
Date: Mon, 3 Jul 2023 11:49:49 +0000
Message-ID: <PH0PR11MB5013583C91FC74944142B6079629A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230607112606.15899-1-marcin.szycik@linux.intel.com>
 <20230607112606.15899-6-marcin.szycik@linux.intel.com>
In-Reply-To: <20230607112606.15899-6-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|DM4PR11MB7205:EE_
x-ms-office365-filtering-correlation-id: 0470cd12-4d58-4d0c-5893-08db7bbb9aed
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GfaX+RF88pQCRQcVd5Mmwz8RtPSBzJ0+7IIAtJ//kApYujI98XbV964OSDPQ6we43K+hlAHROovC5Yh04TSI5mNPWB1HgwUZ+Xp2WvQYkTYxaE2BHUOV77b8zdPdIsWNV0C0j48JUx48EZCL26abZFrRs3n+Fn1ul5njo4wFF7ThWDm/L18mQe22VMCCE0NnDAeIkQGDyWO/iOl7xJpDATFWzWV5mUx1WdJAkroduRwiRe5FF+8sWTgsfKSFV9jSn3TW7n5lW7SO6PsQLeKaH63+DXfwfbyNolwleHw8WCqFQjcw9dCe5179iYkcx+AA9d5fXuSzl2cZFXEcF0H37hudYkQqB79OzR9ErQh+ohr96qhMLbfFS9FolpQVjVSgfH0ENR18L26ywkmJqhxsZX1m3JqB8YcBfnEqA8bVzDmURZ2sDE9CXgUJ7BqtNSU+bYDiHTJu4fmsL1zDFQ5cklz7dhfTsQHMrEcwk6aDSs6YhX4EnY9OBVKWUauGUcIaev7zcVFF+OgTgcatjd77xbp7Zjt3H+WuOUzDgV/Jk/9QhRIrmvyArecJC3IKG7kJNpiaylMbdQM0xA9svOuJqphODRDqVZt/qDJdnWQzRpw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(396003)(376002)(136003)(366004)(451199021)(26005)(82960400001)(478600001)(9686003)(71200400001)(6506007)(86362001)(186003)(38100700002)(54906003)(64756008)(4326008)(66556008)(66946007)(66446008)(66476007)(83380400001)(110136005)(7696005)(53546011)(76116006)(316002)(122000001)(5660300002)(8676002)(8936002)(52536014)(38070700005)(41300700001)(2906002)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8+5ubE4p2W1Q4vVVfaBQeCzkmKoX7EC4bJCf0BPjApWMsDYSAuoSDvVlpRLP?=
 =?us-ascii?Q?NdU1/l+mXr2bbSdSiWM0yTi5GlPpAsh0Mm6GXEG2TXV09n+SC0TRWqOagoTy?=
 =?us-ascii?Q?PNk0c81CbpNh3P5EcBrNcBC2eIhXvpZ+kRx2WrvEODWfTizdWJVAVMFX19zJ?=
 =?us-ascii?Q?V4IejNIE2+ONdOmJHVT0lXeU2JA0ndyXO1nnEh8JBjj+cGlXbUgQdvBDtTDH?=
 =?us-ascii?Q?lxkq1ckROUNyd5JEqeHHjuxwKKoHh5h70SxYVE1BI2ugrCjU93iEe7NQnUoj?=
 =?us-ascii?Q?uSR5RtVqoLFcUegMnjZ6J4pA306QvJMvyjU2JFL0kzQDi1UmSd2gNH3GplPT?=
 =?us-ascii?Q?7/vbWnX3CSL9pz/Mq/UU74ENtRyrig44XficZA35MRsU07oUm/zHMt2KhaAl?=
 =?us-ascii?Q?4hyrhKHrm94tOXthIDMft68mjcePV/RNHz743HoiIBHbif6YbnroL/Z2VSOd?=
 =?us-ascii?Q?+BHB2EN676MuwutsaZrGfLSl2Br8eC8erKaw7+pEI+ZC3BfLabLLu5bqtZEQ?=
 =?us-ascii?Q?3CySYe0LQIgWK4sFgTl5UCTGQszXagYOVh+2alu651H185prl5dZzqlYSbpf?=
 =?us-ascii?Q?j2c8izgAC9zmKMOtuAev/fSFDU3SVNIEjKhJ/oiXlhG0k4qmE3RIHp2hAptN?=
 =?us-ascii?Q?RZUxeagZ5QxCTc4iFRt4IyX8V/0WQzoDCTbPxbKZ/yEDL/4nN/JWxViPlCJ+?=
 =?us-ascii?Q?TsmMRtbCjJ2CD8UzM1rK6CrVsL+ImWeSscUkLBwIJ+0i7ZyT6LwSMnPPrEHU?=
 =?us-ascii?Q?F8coNy1qNAp9ht5SW9cTBLXVN+x3xiezdookyteV7zLM5AHqbhaLPXGzeorq?=
 =?us-ascii?Q?NH3Y3pLxRCgQIC2QXi+zOXGtceJvOygqlz1coR9Z0KEWJiPqLU6fa94E8Ihn?=
 =?us-ascii?Q?fpo7IiPpMhSZgqtgLPxsSIYH96nJ2jRxSXjOF8j47nPYmmRq34kro9vYpuE4?=
 =?us-ascii?Q?pxZM8N2xm3IRZGDIJ8lE8Rx6kC8wqpY1WuhdiwTttFBUsWEK8Iw2ymXeuxtZ?=
 =?us-ascii?Q?d0aw4kNjolIybpoixb/FHVB1eBM5vyRbeIo0NABQj790An4IpX4DZWqERdj+?=
 =?us-ascii?Q?alpFPD1V2R1/adtqNNoR4nvwORPAOmPS7W+Ay6pEoNu6alC+V0c9oISPr/m0?=
 =?us-ascii?Q?NXQ+UjulCscWiwqJdjSKVAvu47Thl857nlPP2sSOaj4YklMY2+pyD1DBWl5D?=
 =?us-ascii?Q?H1yY3kmd6xfCpyoaXlM0XwJL5As6XbecgcMpT/8pmMAOy9BZe/eD4/kqd3TR?=
 =?us-ascii?Q?5gDyv6iyta1CF/6PD5YfFfWBCL7y+vJW3BjYedAjbQGdgBeCBG5icMFY3bBI?=
 =?us-ascii?Q?rP387Iaf5ilmqOEcUtldkDc+ukCEz9krzu0UiwDQRoClsPHD0elXt+YzHWUB?=
 =?us-ascii?Q?wIzG6B+JUEO5/+PFhlQa1RYe/151z2aL5sp2HJPhEjieHDL8N1n3f2z8CYZv?=
 =?us-ascii?Q?Qo+bzIE9zxxGN2FTyerGIB32Ldi0Qvt2ULvCs6YD8tiwWSm8IC30W2KDn3dB?=
 =?us-ascii?Q?czD6HXMkevOMvgOho5+JWm0lA9MIRTfVymS+L1/8kblLJFTx63S3Z5nCFvCn?=
 =?us-ascii?Q?uWp269IxiKzWF60XyKy4fiLqpq8aB2iWvBPlo2slVnAOyKl+KGNAaTgvkxtw?=
 =?us-ascii?Q?FA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0470cd12-4d58-4d0c-5893-08db7bbb9aed
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2023 11:49:49.1396 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FKWXB0d12IalfrZ+YyymdyGD+GgoV4bfuNIMTzghp0Pothik0gYmYgQev0khFUcN4QcPR7D0/XwWILQL5hH/BDerpyoluXyi1R1zxXcQSbc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7205
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688384998; x=1719920998;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5eFyKUrWIJjDYTuM2t89UG7eMFP4p61Iud7wqedwBFE=;
 b=Dx0AQjGrGWFwehNH1seJTbHsxRCSBIL6qb43h5wO9R9S8WKoLz2ofHN0
 7a9bbiwlF7OCP6BvuA/xXrvj9wQpQwvgdYMtVPdgXYhZVcjH8oocuIiPH
 cJdYNPyZr5U5aIZrFBo7pj4qhGniKW4X147b/gm9SnyEEf6Gx7trBoK70
 ig59xZ8XfOLb6J6MMSb7M810EuRpgMzOw1lXetT/3Zc6jMzZsXgREt3eS
 S0iBANmvtxF5+zSduCfG20vCN8ZkOMhQP/V41QxXUvRhb4yMniocGS2AI
 tfSvr1FO1kOPX5hRh4ezQDRyPfMXOapgMjEklI/theFVSf5ayTiFN2tEm
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dx0AQjGr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/6] ice: refactor
 ICE_TC_FLWR_FIELD_ENC_OPTS
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "idosch@nvidia.com" <idosch@nvidia.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Wednesday, June 7, 2023 4:56 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: jiri@resnulli.us; netdev@vger.kernel.org; idosch@nvidia.com;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> simon.horman@corigine.com; kuba@kernel.org; pabeni@redhat.com;
> davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/6] ice: refactor
> ICE_TC_FLWR_FIELD_ENC_OPTS
> 
> FLOW_DISSECTOR_KEY_ENC_OPTS can be used for multiple headers, but
> currently it is treated as GTP-exclusive in ice. Rename
> ICE_TC_FLWR_FIELD_ENC_OPTS to ICE_TC_FLWR_FIELD_GTP_OPTS and
> check for tunnel type earlier. After this refactor, it is easier to add new
> headers using FLOW_DISSECTOR_KEY_ENC_OPTS
> - instead of checking tunnel type in ice_tc_count_lkups() and
> ice_tc_fill_tunnel_outer(), it needs to be checked only once, in
> ice_parse_tunnel_attr().
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 10 +++++-----
> drivers/net/ethernet/intel/ice/ice_tc_lib.h |  2 +-
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
