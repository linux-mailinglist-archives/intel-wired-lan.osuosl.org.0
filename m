Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDCC7512CB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 23:58:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70DB6416EF;
	Wed, 12 Jul 2023 21:58:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70DB6416EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689199087;
	bh=GqpKu0EWJmfhBhj5jP0Q3cxuu7OyGUV0D2YgbHXAr8U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vdrupnNSskWaVZEICxNoxp0jzYrqggVPtGGDuORtsEN0xnWLlyhK3SEbKhtIVBKy2
	 FvzjJKpc+OCdZHrB84X+MI9bPJSeulvIfgM8QBIH3E3Rhnnh4yQl7Mi6lyj7sR67Kl
	 rFQLKPyN54ILLSgSxJ4bZeBqLq8hdTTIwur7ttkaBS/qzHx59Vo6gQtrWtvQ1kj23F
	 ExJ7PEUd9hEvyd2qgJsuTTN0fvNSICCZORUgQE3SKg13PQS25o937XzRwTHn6dt5dT
	 NuSxsaN0zZaESgdV50tKP7/TVewjjm8OAneJQAx1Cl47GUfr6G9ZR6OIBuSuzRB2zk
	 NRvycvAIGznnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z6Q8dqexLpQ3; Wed, 12 Jul 2023 21:58:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA9E5416E0;
	Wed, 12 Jul 2023 21:58:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA9E5416E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 71F871BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 21:58:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 493FB416C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 21:58:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 493FB416C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lOw-6lR_YLi3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 21:57:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60F8E40BA1
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 60F8E40BA1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 21:57:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="395818713"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="395818713"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 14:57:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="699013215"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="699013215"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 12 Jul 2023 14:57:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 14:57:35 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 12 Jul 2023 14:57:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 12 Jul 2023 14:57:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c/3CqzN5nYzaKj7vt1mPJ+AcG+ynQMc3erYLJIqQRmLLlFFLdXu0zy8rDudXpfG2uVCzNhfwK41baK1NI6o6AOcrEnFdo/t3J5TKN8vnKuiiIXv/yjrsU32qp9DP9OcX4krBHUq2r/4BXoM033vI7whsrwVJX2bm8eDZgpgPfnFDREXsJbb35PJL+3BwxKgnYNQ67LsT9zIU3I2s9zDoPHf2KaBDkC5/UOvAZbUjSTNTgqiGpmShP/UYqAg95XFcon3APL3WAthYi7NFIJeV+lsqWDx05X3wMU9BwWTV/pVmeRHrJctgOoEroSg5OGMU0hYveqHGNVn3Kv5Nt63Yuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jy0GxZqumFhtCC94fQgjG6P1Oodqa2SthKcHjWujyxs=;
 b=IUDgdRkKSI9lH+0Cv0xipFhXzysYBJk/oGYS1m65n9FFOKD3bSu6jl6xf1OgjDVw/Stp/vN5rZMvZp+sWuLyX6J04nVPjOoago9g85D/YvrjqgUQLY9q+iIbacc2HEmwaJdrh67fDC2oONP9WXb9D9f2FEHqN+eFDwSx5ayeqJxJ4VqpnpYSZJUfaONV41OSAPjQQN5Gku+umrtSRVVIzp23qqKzTp5Efre9afFkkERl61UNOcXOw8WxaZsu1kP4/mhT/w2nfNSTQfssXoDCq7gBUL5smmvAkoTksNLnj9MAGc5gnrSxqN3zVJ8Z9FzwmkKbVdlh0XxzU9DIU1t1fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BL1PR11MB5237.namprd11.prod.outlook.com (2603:10b6:208:310::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.22; Wed, 12 Jul
 2023 21:57:26 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4e5a:e4d6:5676:b0ab]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4e5a:e4d6:5676:b0ab%5]) with mapi id 15.20.6565.028; Wed, 12 Jul 2023
 21:57:26 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH iwl-next v2] ice: replace ice_vf_recreate_vsi() with
 ice_vf_reconfig_vsi()
Thread-Index: AQHZtQIZ13vflvbvA06EPjy+e65ex6+2rZkg
Date: Wed, 12 Jul 2023 21:57:26 +0000
Message-ID: <CO1PR11MB5089657167D0099B1E0935AAD636A@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20230712204730.326331-1-jacob.e.keller@intel.com>
In-Reply-To: <20230712204730.326331-1-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|BL1PR11MB5237:EE_
x-ms-office365-filtering-correlation-id: 914087d3-8e72-4525-297f-08db8322faec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LyMHVLqZMFeMhYYaKL1pG8J6Y5iJECc9wmJcqWvway1NmBjIIGVVMgIjjsB2XyhaE3AE7WFn6xcyXWjsxk2PEzacKuYXVVpPmlAX4cqO2FXh4E+igbZuMEfuc22qS8UqCmNI3wkiOUJplwSteT8WBboxL5qLLNc0xOlVc+JAT1fff1fDE69trYD4qIlQ19YcQhwS/BM19Bwt0vD+YMC+uTmrjg3muuvnjhfhSacEnPWTkmj7LdJYWCvFisPl1N349TQNyAF6MlP8jxdXyUMhMjVeWlcSFsFFuz4/crQFjTpcFvD/j/aQ/mQVhAMuL+HaLwAKnAJlZpE7Yro3hIdfW4GYolslsvmNsFDMp362RCvSGU85TICkEPEu7CMUFpF0pUjMSACPy+9ttbwK8lnZwQ0PwQoU5fYb9lFZonawH3jCr5reMB7XSrme9vY9y0+a5Xhm+gfn4IJovKCkavPqv73gh7ZDCoPM2S+qLa3JvPzG11Y7eZtjyWYrBwyRbJD/aQBfkcXOWxYtetY5BbCzsD6jkfRQ3xwPinX5fbNsufUx5F06RHvuWqhu/IEsWFwaifBzZoYjaef7GH3rVRkeqMgDlA2WBoaoy/vMFJZlolGlUCe4R1uhVpnvS5UFs9f0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(39860400002)(136003)(376002)(366004)(451199021)(52536014)(64756008)(66446008)(66946007)(66556008)(66476007)(76116006)(316002)(2906002)(6636002)(41300700001)(478600001)(8676002)(8936002)(110136005)(5660300002)(71200400001)(7696005)(55016003)(122000001)(53546011)(9686003)(6506007)(186003)(83380400001)(33656002)(38100700002)(82960400001)(26005)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JIFjrFgW7LILY14kn5qE6qbU5Wb3z5CecC5cUqMoAfaAambF40jBYOpEmx7V?=
 =?us-ascii?Q?nIqslk6+LfTAg8UftAJVHyKVZ0ASYx66x4uuxJGtRx0p4QfeWr5VBmuuwRuU?=
 =?us-ascii?Q?GnZRTYHPmpyb/HNZJd0nkRKQ4SjHNbqhpCvjxJRI3KyEI7Gor7/E13ZgPTU6?=
 =?us-ascii?Q?d8GTY/kY1VGLq8IFKEvqCtXMNSZRQvvZF4JwjUv1bNGIV5BWQQ1zk//FZhlE?=
 =?us-ascii?Q?HlhAml6uLLmKGeOCBq8LOhgHuguQd0GkBzAJAFWESbOFLk05/oRb4ugkjbwg?=
 =?us-ascii?Q?R1vZZRPKQHIY1n/zi8MUBXF0kHdrUEr/YIvNwZ0mXjVjYHckasroHsonhKui?=
 =?us-ascii?Q?2xS5qJUYNa3g8d4rz6GGOJ/6M6TqpxlWzaUHn+0e/QPQxpfB1octfgTvninf?=
 =?us-ascii?Q?OJnbi79Zou85e1BOWssmrc+shgXQBqmCtw1F+qqh+w+KUwuE5T6VhpzlQHLK?=
 =?us-ascii?Q?RX0NF0XUQlUZKZa6KaGkbFPokaCSQHv6Jy0ABXijWsUegGzLL4MywtWmi7pd?=
 =?us-ascii?Q?ca5L+RoYpdhEvZtjy0JmPu+LpmgA0RwfIUXQg64xGHYmynkTta211LroRbAL?=
 =?us-ascii?Q?rsGadPjPjmLIY0vNPc88wvQPmyxkaCYGL42Zk658B4cCsi1BsHlSm38Gye25?=
 =?us-ascii?Q?L3Ad2idNRwBbx32kFcI8eDY2sIQvBOJVAq6A0HPfse1ulTHPpSstgIM9518h?=
 =?us-ascii?Q?uxmgsHlxX0ba++fw+kmoQmVGLRdF4KzRORRQRP1u3V2wRhdqwQX++0V8zzUN?=
 =?us-ascii?Q?DIgu0blfmo1mZGk6ZTbsK6M5ZPYEgWChtJ5jz8krE4BbWX4jj8wRrbNm3UA8?=
 =?us-ascii?Q?jcZHDJtgNJdD3pBgcYIb6eAIXlupi0gocd/j1rWg1jPXuIerMXmWikLb6wCj?=
 =?us-ascii?Q?6tQfZTGH0bLw3MpuIe87Cqcz4TA1a05f/eouHysvZ7VZ2pTkbPBzbpKdi1DI?=
 =?us-ascii?Q?fh7GWC8rhTGrO9z4FX4tDrm2d6d6WxMh18DqrNGfae+k7LMmVs9G/Qf8VDlV?=
 =?us-ascii?Q?zdpEGEcAaTLQVRM1yyiQVC120rAePVCZFBb4NU2/MnzPNNGZ8vy6frwu/LE9?=
 =?us-ascii?Q?0eMrVAklmIm5xLApBrd8GAU/TFr8ATzdNVVBra3xbmxILsvJJBTh2zZqTyiv?=
 =?us-ascii?Q?q02roA0NsE506wQS4lhtV/8B95WeNicHFHkKPBW17wUGLwmO3mrtFnE9J+Ze?=
 =?us-ascii?Q?QmMqW3vNblLwRH9/wZh6ktLHd7QU4Fb9GqC+ynLHUn+iZzYPYAKR5Y3f9Lad?=
 =?us-ascii?Q?Ii5X8K5LmZBeIYJJVGkv8muNPMKwytzhUq8BG5VG99ju7RjSNJtaJxH9uN+O?=
 =?us-ascii?Q?55kZ5wP41utJ2g1vOfOYibqako3JEhgJt1R908HFauFMw+IOmbzRrKSxsETb?=
 =?us-ascii?Q?uo7iagP+DZ3lSr/agLYKJdmVAWrw9PvUaVSC1DY1dI/7G08b5X237VoXEywS?=
 =?us-ascii?Q?WTY+Ni0SY5gjTLfjgaDsAjYHCYPiFKSvNVmNgXdyEYKmDQhXs3QOcWSouaQd?=
 =?us-ascii?Q?YZoOXJlgfMXxKj3BexnuPCb+PLAIdUcAttfZrw7lt7TLieyzTxfJwb3US65R?=
 =?us-ascii?Q?yS7wRf0WnKjbBkvMXgCyPIiXKZmXMYuJ5NhW2zR5?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 914087d3-8e72-4525-297f-08db8322faec
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2023 21:57:26.4930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DUB1IKhuLZDuVbX1/DBMLXbGCHFi6gu2Kt5LJKurhuqw8gh092B4XufNDrSJP/SNLRW3BsIjvC9WZ3OySAzCS1AvJyhk47MClzcf7vW5mWo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5237
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689199079; x=1720735079;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=M6QrOQzhhIoQicvl3mE4lqy8nfoQ7izDV0ePk/dOpxc=;
 b=AfP9IrZbw5xU6AOO7JGIv5iIN6py+VZy1GocrajTTelwKvxS/R0m9KPi
 vz4tLgjkdDA+lWQ7TrhCIBp1/hrrM8mQ2XJXbEDYyuT5hw7pI9oJiAZjA
 POAlWlLsnh071K4FvdMTEKo7vB0pBsNBB32HBEejdFvj39jD0wC9nk6in
 UAOi1FwC17KBVYne04wHyHsRq+L1w4LBkXVEvNqs6V/AgHWXVPd59oTig
 VndrYRSIEs+t/cHrd7D8uyILl+aKdLHMJJdXYgIDkBUsTfxkgCvFP0pLk
 lFYZaMzBxgqItHIVHRSEkHDOJswhUlOvDEp1xSk4R4amIveroWvD+bowK
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AfP9IrZb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: replace
 ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()
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
> From: Keller, Jacob E <jacob.e.keller@intel.com>
> Sent: Wednesday, July 12, 2023 1:48 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: [PATCH iwl-next v2] ice: replace ice_vf_recreate_vsi() with
> ice_vf_reconfig_vsi()
> 

Oops, this needs a fix that Michal posted earlier. I will send a v3.

> The ice_vf_create_vsi() function and its VF ops helper introduced by commit
> a4c785e8162e ("ice: convert vf_ops .vsi_rebuild to .create_vsi") are used
> during an individual VF reset to re-create the VSI. This was done in order
> to ensure that the VSI gets properly reconfigured within the hardware.
> 
> This is somewhat heavy handed as we completely release the VSI memory and
> structure, and then create a new VSI. This can also potentially force a
> change of the VSI index as we will re-use the first open slot in the VSI
> array which may not be the same.
> 
> As part of implementing devlink reload, commit 6624e780a577 ("ice: split
> ice_vsi_setup into smaller functions") split VSI setup into smaller
> functions, introducing both ice_vsi_cfg() and ice_vsi_decfg() which can be
> used to configure or deconfigure an existing software VSI structure.
> 
> Rather than completely removing the VSI and adding a new one using the
> .create_vsi() VF operation, simply use ice_vsi_decfg() to remove the
> current configuration. Save the VSI type and then call ice_vsi_cfg() to
> reconfigure the VSI as the same type that it was before. Since this might
> update the hardware VSI number, we also must update the vf->lan_vsi_num
> field to match.
> 
> This new operation does not re-create the VSI, so rename it to
> ice_vf_reconfig_vsi().
> 
> The new approach can safely share the exact same flow for both SR-IOV VFs
> as well as the Scalable IOV VFs being worked on. This uses less code and is
> a better abstraction over fully deleting the VSI and adding a new one.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v1:
> * resend, since v1 appears to have been discarded
> * dropped Fixes tag, since this is going to target next
> 
>  drivers/net/ethernet/intel/ice/ice_sriov.c  | 19 ------------
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c | 34 +++++++++++++++------
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h |  1 -
>  3 files changed, 24 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 1f66914c7a20..ab96a5596d09 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -733,24 +733,6 @@ static void ice_sriov_clear_reset_trigger(struct ice_vf
> *vf)
>  	ice_flush(hw);
>  }
> 
> -/**
> - * ice_sriov_create_vsi - Create a new VSI for a VF
> - * @vf: VF to create the VSI for
> - *
> - * This is called by ice_vf_recreate_vsi to create the new VSI after the old
> - * VSI has been released.
> - */
> -static int ice_sriov_create_vsi(struct ice_vf *vf)
> -{
> -	struct ice_vsi *vsi;
> -
> -	vsi = ice_vf_vsi_setup(vf);
> -	if (!vsi)
> -		return -ENOMEM;
> -
> -	return 0;
> -}
> -
>  /**
>   * ice_sriov_post_vsi_rebuild - tasks to do after the VF's VSI have been rebuilt
>   * @vf: VF to perform tasks on
> @@ -770,7 +752,6 @@ static const struct ice_vf_ops ice_sriov_vf_ops = {
>  	.poll_reset_status = ice_sriov_poll_reset_status,
>  	.clear_reset_trigger = ice_sriov_clear_reset_trigger,
>  	.irq_close = NULL,
> -	.create_vsi = ice_sriov_create_vsi,
>  	.post_vsi_rebuild = ice_sriov_post_vsi_rebuild,
>  };
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index b26ce4425f45..0edb2e2ec681 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -265,29 +265,43 @@ static void ice_vf_pre_vsi_rebuild(struct ice_vf *vf)
>  }
> 
>  /**
> - * ice_vf_recreate_vsi - Release and re-create the VF's VSI
> - * @vf: VF to recreate the VSI for
> + * ice_vf_reconfig_vsi - Reconfigure a VF VSI with the device
> + * @vf: VF to reconfigure the VSI for
>   *
> - * This is only called when a single VF is being reset (i.e. VVF, VFLR, host
> - * VF configuration change, etc)
> + * This is called when a single VF is being reset (i.e. VVF, VFLR, host VF
> + * configuration change, etc).
>   *
> - * It releases and then re-creates a new VSI.
> + * It brings the VSI down and then reconfigures it with the hardware.
>   */
> -static int ice_vf_recreate_vsi(struct ice_vf *vf)
> +static int ice_vf_reconfig_vsi(struct ice_vf *vf)
>  {
> +	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
> +	struct ice_vsi_cfg_params params = {};
>  	struct ice_pf *pf = vf->pf;
>  	int err;
> 
> -	ice_vf_vsi_release(vf);
> +	if (WARN_ON(!vsi))
> +		return -EINVAL;
> 
> -	err = vf->vf_ops->create_vsi(vf);
> +	params = ice_vsi_to_params(vsi);
> +	params.flags = ICE_VSI_FLAG_INIT;
> +
> +	ice_vsi_decfg(vsi);
> +
> +	err = ice_vsi_cfg(vsi, &params);
>  	if (err) {
>  		dev_err(ice_pf_to_dev(pf),
> -			"Failed to recreate the VF%u's VSI, error %d\n",
> +			"Failed to reconfigure the VF%u's VSI, error %d\n",
>  			vf->vf_id, err);
>  		return err;
>  	}
> 
> +	/* Update the lan_vsi_num field since it might have been changed. The
> +	 * PF lan_vsi_idx number remains the same so we don't need to change
> +	 * that.
> +	 */
> +	vf->lan_vsi_num = vsi->vsi_num;
> +
>  	return 0;
>  }
> 
> @@ -699,7 +713,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
> 
>  	ice_vf_pre_vsi_rebuild(vf);
> 
> -	if (ice_vf_recreate_vsi(vf)) {
> +	if (ice_vf_reconfig_vsi(vf)) {
>  		dev_err(dev, "Failed to release and setup the VF%u's VSI\n",
>  			vf->vf_id);
>  		err = -EFAULT;
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> index 67172fdd9bc2..ad648009a238 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> @@ -62,7 +62,6 @@ struct ice_vf_ops {
>  	bool (*poll_reset_status)(struct ice_vf *vf);
>  	void (*clear_reset_trigger)(struct ice_vf *vf);
>  	void (*irq_close)(struct ice_vf *vf);
> -	int (*create_vsi)(struct ice_vf *vf);
>  	void (*post_vsi_rebuild)(struct ice_vf *vf);
>  };
> 
> 
> base-commit: 8d5bc02673a4fa9f5db4e9e949f41cfc68ae1758
> --
> 2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
