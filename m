Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCB265FB73
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Jan 2023 07:33:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70D5A82179;
	Fri,  6 Jan 2023 06:33:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70D5A82179
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672986792;
	bh=7TIv7YNObYMrxbg2hR0sNec67XjUfN6D8KPMPyJ8CbU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vu+AdqSAHGWU3N5O9udXRaBIKeMoAmkjiiW6c3DdFd/xPvMdSKC0OK7aQrIUn+eGc
	 9o7w7sAihWjdbEE5HV+xZYfjNiyILZXGLsYigVQTKIKPAsiOV77T2gQ86mMNT+xPEW
	 nxdqCcIWthJrCDuHg52B3+NBDs6u0mm6mbGDNkBo0ESoSAGRqOwijoIpqmEfkRHcxe
	 Ao/s5FHDYLcwC7cdDSJMaFYQGNBJQz/Ykhc9RPpqm8z4QOjjdZiN/Lk9c10M1mxk0X
	 +2c/nuuSzWUICR+C7UnUYZVbn4e0JvePYQOZ3UH/El7LNmYTYsyEzRVeiPH2XWOu7q
	 J3FMcC8YW4DIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c0K5bDbRzcyK; Fri,  6 Jan 2023 06:33:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 245FA8200D;
	Fri,  6 Jan 2023 06:33:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 245FA8200D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A9BC1BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:33:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F1088200D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:33:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F1088200D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MkxaP3lFDJtO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Jan 2023 06:33:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AE4D81FF3
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4AE4D81FF3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:33:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="321125250"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="321125250"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 22:33:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="649242197"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="649242197"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 05 Jan 2023 22:33:00 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 22:32:59 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 22:32:59 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 22:32:59 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 22:32:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cg+BWWQRTP6Qfql2uqJF3ggEwQLGjaNLD/PRc29OfgJ6hV2HpJfj8VWfSaHpCI8KHpC+mLY4vUIau0A5Ok576w7lledE+UAl1I9ateSgADgTUsjJvrmKeNSIDrjBb54wApFv4Fzc+I1adEjQu+SKqnhxf4+dpeAv9bXaXiupaafLv7cCZuc4wWmHvcIpZtWGBKhmva8puv9kWdtdpZQ6Ix6FzyZN9gcge0mn+/erJLU1PIaXuWOTBAuXoKp/1YwfZ9F8LbEndPgaWMyAXlPrg1AuvTem0JvtP2ld1f5pNBS+PHDFkNdnekd26Yl2JQp5TcpvL+dr12viwO+zIKHBDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H4z0fDf3hdB2mp3HQgXhbFphGvpLAWIBvsHVBziGzI8=;
 b=FJaoJeitx/lH0WSCuwC6jF5GiC0MivUUOgPhFdVXtSh6oSjSQP7F1EfHvJa4XLdUtUQ3js2cLZEFusL78YTlgTRcU/ZQIETRToh25wy6F2RhjgbUIkgxc98hs5BcHPLqPC+zUPtl0YIiJYTOLm2KO/HHFDCswpiaBsv5fFqC7/jaBH+kLAVlzu/YmaWm9pLUsxgQKD1oLdMRfI4mRx9JqD6wiWA7fniBz6AVE5bA84IDzwnJmG9FebfU5/ChVdGB0zYHqWqma/a/ZoYMwTLufvtJO2NoDfL8Cr03tED9QtTpVMUHmE63coc0wmeAcAsq+O2DXO1f6F+Nftfhd+hEUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM4PR11MB5294.namprd11.prod.outlook.com (2603:10b6:5:391::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Fri, 6 Jan
 2023 06:32:57 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5944.019; Fri, 6 Jan 2023
 06:32:57 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 04/10] ice: split
 ice_vsi_setup into smaller functions
Thread-Index: AQHZFTMF637KYUMRVU60k2nDCV2qpa6RBsvg
Date: Fri, 6 Jan 2023 06:32:57 +0000
Message-ID: <BYAPR11MB33678C0AB554A6FC3CE4C6EBFCFB9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221221113822.12858-1-michal.swiatkowski@linux.intel.com>
 <20221221113822.12858-5-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20221221113822.12858-5-michal.swiatkowski@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DM4PR11MB5294:EE_
x-ms-office365-filtering-correlation-id: 0662ce92-7693-4faa-9a09-08daefafd9ac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vTDD8Ec8tY8WjJgnr6eyE+3lg9N3Z6/7pUTpkl0ijGXDAwsvujnD1Hz78HASVxcomVwvON3JlAWxX6hmzYLtNB5IJTOKCyskT9MjlzQmOmprjyMMEnyv4putcJYssO2r6RP4XiyAGsru70IBx7IfAVYHrAM+mh3PnxTOU9iV/jBC6vkCJKBvn56abFiIEQ6j3QtA5+jnS2hI8pqKH7JP4A76PwLE3Q/l1uABTRlWP7uWyg1LZwHzy7ciTsrDmj+JTFb5i1knBnNLiIpgM34UBvodsJrXreJuI/K4P1hWqsFCGqbBCQYe4PSqyCv62XheurdQHJT/5sewCgVB8/YOGzWds3Iz65kR+PbNkpg31dconQtyEmL5H/x6VgNsLFt4FJybyraF5KFnqqUYyx1Bi0O9i1qtDnVdlUzZZUtKQBIJmpAnreZsy6WfSpHqQy58tlh7pvTYtSrgSqqXyj9+fNmsSwMvXvN6aUH1jqahXYJwa/vFWNqsix5kCn4DaRHPm/VSdhYaebTi2VtX+ffkkLlsBme1R5YTsB5XwIpdfLzqbZnptwR26mfnTVMgQ5fhUXqUdz8yoGvuT88fnckE+lYLuofDgbkPKUtWjpaP0Ti0DtscC6+6NPtApyDdCRLNe7yvKzEJ/rSW7b/9dHyJ9Pms63eisQMOcyqV2nI7TUwkyr8vxHreadm8hXOz5SHTONbl4fMAMmi95d10QH46AQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(366004)(136003)(346002)(451199015)(2906002)(5660300002)(52536014)(71200400001)(8936002)(41300700001)(478600001)(4326008)(316002)(8676002)(66556008)(76116006)(66476007)(110136005)(64756008)(66946007)(66446008)(54906003)(9686003)(55236004)(26005)(33656002)(6506007)(55016003)(83380400001)(7696005)(186003)(122000001)(53546011)(38100700002)(82960400001)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3b7PJe5cn+gTLSc1sh4hOZb5KprmQD4M9seFY0CvQR9mv7AGsdhDpQum6mZ0?=
 =?us-ascii?Q?8Xdw+/v25szqQAEzmJEmz/j+8ZcJFVrq3uOVyHAKjsaq3yk8xvyP1iyjNxm/?=
 =?us-ascii?Q?QCgK6Scg2YD0hIItH9Jcj/w8Nd4iTvm4pjphsCfuwr/1VxGwjjc71DjwrQpy?=
 =?us-ascii?Q?OEnufzsK5ifH0XjiuAp6T6laDlOnusdZUWPZvyQDkMC19OdFdjCtmYAC0OEy?=
 =?us-ascii?Q?hNgUSDfXZpjgU0kpC/gDVc1FkhfqNCmjxlWTutg8FHfPFiDVslvYWdLXlSEP?=
 =?us-ascii?Q?lrJWOvTL2NLDoTu2qtWDfK1QxLCoMqBXbyYroAUrpDrSP6XiV85stnlRhzvn?=
 =?us-ascii?Q?1E19+My62y9OZYQdGfJzzgzLx2mYviJH5GLr9GdkRATXATso4dxZrd2mcw/r?=
 =?us-ascii?Q?Dksy/naTHBIhCcASk3pI2/rkqZUHFVCumSVmYEP898yml8eJ1G/TeyVejLEU?=
 =?us-ascii?Q?J8mnxWlaai9ojtitmfQRKeVGjSjVXrPVuGLESyyXp4PaunXbopjQ3RLGcu7T?=
 =?us-ascii?Q?W5xukmx8gLOk+rhP8AurDKRG0rbntKJdukFp2wTPSL7euJd0oBChxdMQIbLS?=
 =?us-ascii?Q?D4e+4/mP5TM0Rncc+NnZp0/jf0YEWPV1OlTefv75JWIVydNtIQQpNAXhWUkY?=
 =?us-ascii?Q?e2StbPAmMCAFre1GFK50+5fjcw9YKmtr34N/v7qTEU05COmhHAKxgVp4l+O4?=
 =?us-ascii?Q?huj3Ar90kn7paAIeBYTAEQ9DRIHf5r3qPLSconSY4nsoc89vDNTZM3bjqTHd?=
 =?us-ascii?Q?5QIvagHUqXMU0h/L7jR49fcYz8QqtPrJvN/UZxjK0VOq5VgmMK01c1U6HPlo?=
 =?us-ascii?Q?CJPIincG0tzJCq1RbJJ0WGWvsggwwIwzpEnYxYHqzpPUr7UHUKBCheAZyiIu?=
 =?us-ascii?Q?kbC0ECJ76ad+MU7YbNn4tbr7Y2ZuRGwgPUeMs7iup85jTKBCY0IJ6uW6+uxf?=
 =?us-ascii?Q?9XKolyISsB4+NiYlfkYVc/KC60QZsNFFdDDpp8MmvkNrKAcJLgxFdnGq8Sqx?=
 =?us-ascii?Q?pj/bc2U/h3IrRtOnyqDvgkUYiKfliC+c9h6aSS7HWP5cRfXNgAqixu7QX9Kq?=
 =?us-ascii?Q?gNkknTEAT6PmnlnpOnrYiNoqViFmYs2K0juRpJwr5pIhW0iqQCJz65QzHVNx?=
 =?us-ascii?Q?fFuoPGi4YoNSZ7tvPzF13cmOU9RG8ywQPWgkM7Y8tm0gNxw9EH1X/Hl3RzLx?=
 =?us-ascii?Q?ohHWiIV+VgYhAir8Ct/78stxxlgF06MEASERXagxnTAktam2aH2MQ0pXsSMl?=
 =?us-ascii?Q?wZCWumaGa5Dsr1kt4xlvZ4ux6wWQ2/0/pscv1RursMUMVrDK+DvSDerqlsHs?=
 =?us-ascii?Q?MZC52NvMVryFpqv37MJqQKFxgvsiKzhZCwN3nz2Dq2hZ8v/letAEcKehQOdf?=
 =?us-ascii?Q?fckjaj6CuQEKTl/yHqq6ue2hOYAFMDIQmdeA7kgvtYjJQOlCWd8KP+oFXeMD?=
 =?us-ascii?Q?3ap/6hXZtXR78KyzAZF7AsJZH4vRR9F+QFC++uDrU7GTXitoJWq9m0wTaLHd?=
 =?us-ascii?Q?di1WdTuGQlPzanvL1veU9/sFFgdkyu2Si1bbpDg11Nq4d8bRjzgtqGFsLiT7?=
 =?us-ascii?Q?6NSfmuKBpogo9vOkPG1TKq+42mTrpKt18T82Ll49?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0662ce92-7693-4faa-9a09-08daefafd9ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2023 06:32:57.6316 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GuUbML8s3jTsxuxe7WK1/ObwZltcYKMIYd/D1eItrZTv/tMpQsv6x5B+GUrR+/CjJKwfYmBKEDhxfSDDGqJlmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5294
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672986781; x=1704522781;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zlrDmvD8zZ+J78OphXJ1wNVvMA+U6eVQqEVTQHuBPHs=;
 b=Gityz515BsIwZctvaOx/JLYQ+6N4BGxLrRY53QmrihqE/3AbffyvtwSb
 bQhzU3JZyVGtVqkY03q7O0m8Y9WpCYSUQpGIXgEHpGl0QXW5xnTAui/7o
 Q6nvf50a/35mKXvAJXbkNEftvxK/w2wpS5yJ5TUOPGe6MMRJojSVcOJ+U
 C8IejA8iOrUOoZYcccGGK8UM4EDhb354BwMX1JConXks5N8NR25GFiwYu
 v37f824W7WXYJ0t7SGbHdIWoCtSGKlrBwkSjEOpmzV1zyjneDoTclCmsm
 cd7Bqvkr4tUPtxpXQLbg+VarUYQ659R2SkNgYEWZ//pS3x54ZPzNaRCek
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Gityz515
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 04/10] ice: split
 ice_vsi_setup into smaller functions
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
Cc: "Ismail, Mustafa" <mustafa.ismail@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Mikailenko,
 Benjamin" <benjamin.mikailenko@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Kaliszczuk,
 Leszek" <leszek.kaliszczuk@intel.com>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Wednesday, December 21, 2022 5:08 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ismail, Mustafa <mustafa.ismail@intel.com>; Mikailenko, Benjamin
> <benjamin.mikailenko@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kaliszczuk, Leszek
> <leszek.kaliszczuk@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Saleem, Shiraz <shiraz.saleem@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 04/10] ice: split ice_vsi_setup
> into smaller functions
> 
> Main goal is to reuse the same functions in VSI config and rebuild paths.
> To do this split ice_vsi_setup into smaller pieces and reuse it during rebuild.
> 
> ice_vsi_alloc() should only alloc memory, not set the default values for VSI.
> Move setting defaults to separate function. This will allow config of already
> allocated VSI, for example in reload path.
> 
> The path is mostly moving code around without introducing new
> functionality. Functions ice_vsi_cfg() and ice_vsi_decfg() were added, but
> they are using code that already exist.
> 
> Use flag to pass information about VSI initialization during rebuild instead of
> using boolean value.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c    | 984 +++++++++-----------
>  drivers/net/ethernet/intel/ice/ice_lib.h    |   7 +-
>  drivers/net/ethernet/intel/ice/ice_main.c   |  12 +-
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c |   2 +-
>  4 files changed, 469 insertions(+), 536 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
