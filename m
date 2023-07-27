Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A7B765418
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jul 2023 14:35:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A959560E72;
	Thu, 27 Jul 2023 12:35:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A959560E72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690461329;
	bh=7t4CVrEDFLgboxQsLoELdC1klab+LjF4suVEcStfCjI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F7hloyKAxOTDnyP4EB+xDcMF8cgUrhTNx36mFOWfjdPmKzI9X4AvYN0N9X1Cgvdbt
	 7o9NLEyEpZomij34hbNsoYEcxU4vbOerkhnY9JG4rShVrK9EsF9y0IFwWW40lcocYb
	 H9huRPGsM24XndQPuhk1CuTOs8q47PlR3MPxyXSmLhmRYmLe9mXnp7cgoDF6JYkHR0
	 C+Yfe4zlMYhC34MFLEdRGmkc/wksAQektpTEXZFkiNOkLDdm15BfE2rY66xzmGgo84
	 0A6s5AurC8QKcc3QLGcUqN/M/Vmkzi+dzqRWGiJshTPb+V5YbCdAhQk0N5RRiJVloo
	 6wFjR3Igfu+JA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rsR2dJFIYTVZ; Thu, 27 Jul 2023 12:35:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86C8F60B8E;
	Thu, 27 Jul 2023 12:35:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86C8F60B8E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC5B31BF47F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 12:35:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 950CF41BCD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 12:35:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 950CF41BCD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wBXp3bSlGcTo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jul 2023 12:35:22 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 78E3E41BC5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 12:35:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78E3E41BC5
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="434568687"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="434568687"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 05:35:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="756617995"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="756617995"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 27 Jul 2023 05:35:21 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 05:35:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 27 Jul 2023 05:35:20 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 27 Jul 2023 05:35:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l1h3nYwmwcQFPayX608YtGN4uXR2WTH+e5gNdDDilV/vKy8LBW05JtVBtRHWUnOV0ESDm27O++PJV59jW8Z5Huc4AH23RqWKQo7ubZQaaEvwfffyzfGX79ao+1VnpCMLCh2csvUaidzH3q5A/C30+NOAWKP6Xx1KMx3qrjUoXrtt5F9QYE7xT/zMsKzxRg6x0r5n5RswZ7ekYUHlFY8iBjPNzHgAz1JSrt6YeeXgh3BeBpfifZnuz0CKbpmK8GTxdzzarc+pDe2Bp7WSwL3VoOUon6TPxdovuCzWV9hlMHPOVya/EnjulECppIO5iYVhFdZE4sx3Sn6yKuhCuLAhXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aiwX2rP5KJz+1GxFh1TlFuayUbo6j3Zr76y0icZnd/U=;
 b=oSG1p3V2xzOuPhaaFRoOG1AvOXBvngmNXFGp5JyCO9wEWZcmOv0KISgAXnz3dcTUBqSQ7PSo7kccACJGM8nnsfZ3Iexw+ylLP9cJy04uEylzIuOPmdpomeRFEaoj9fJQetPDkjlMY18vI595VZohz3BIy2DB7BQp+cA9w6acLgU7N9645XIGly/Enp6HAycZb6oJwtzKxRmBbtqbV/iQw+kzxEsCJu/YsckJmUudu3MoWtOz+WEDVUzyRzJEALs8cywL9ErGF9m0sb30Yqck/jiPJ/UBqIwzgjQ7hBzfJTxyQnoeNmRgGSohhtxFOTDlDvrGRuEa9rPMJLfxp9s1DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8414.namprd11.prod.outlook.com (2603:10b6:610:17e::19)
 by DM4PR11MB5536.namprd11.prod.outlook.com (2603:10b6:5:39b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Thu, 27 Jul
 2023 12:35:18 +0000
Received: from CH3PR11MB8414.namprd11.prod.outlook.com
 ([fe80::a1ff:b7ba:1d51:fa4a]) by CH3PR11MB8414.namprd11.prod.outlook.com
 ([fe80::a1ff:b7ba:1d51:fa4a%4]) with mapi id 15.20.6588.031; Thu, 27 Jul 2023
 12:35:18 +0000
From: "Michalik, Michal" <michal.michalik@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v2 2/3] ice: Use PTP auxbus for all PHYs restart
 in E822
Thread-Index: AQHZu+pG0w7nKPAoP06khpU+mivauq/KyaKAgALK6WA=
Date: Thu, 27 Jul 2023 12:35:18 +0000
Message-ID: <CH3PR11MB8414A9B72F72B39DEF51D734E301A@CH3PR11MB8414.namprd11.prod.outlook.com>
References: <20230721154424.11834-1-michal.michalik@intel.com>
 <20230721154424.11834-3-michal.michalik@intel.com>
 <89f4ec10-2e4f-49ef-f7cd-0a74ccd1f854@intel.com>
In-Reply-To: <89f4ec10-2e4f-49ef-f7cd-0a74ccd1f854@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8414:EE_|DM4PR11MB5536:EE_
x-ms-office365-filtering-correlation-id: 28ce8ab6-16b0-4659-16d1-08db8e9defb8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mfBXZR7AJUWwGa75RTavz/udi2rezzclKv8WyacHIZkDmFjUFxUbR9069ouD1WZuzZ7NLO7yFz1QRbvJaUC8zaV4HHI3nHckkW4sdz2RG4zMGg707iQcoKbKY49+gNr4gLHRJCVES0ZQDcZLvoLmPH+tqdmgy9v1IGCsU8YxVPTj/bDH31joDNjb5OEWWP4RS7F8qhXdNk24IJVhxuUJ6WE2yY6dnwhiE18k6qYp2nuT04lBk06byXVcY1fCOy7XBFE1dVQF8jJApqvw7mCE1StC1UOHp+26ntk7d+oXSBJLq4kps8o+DD8Vcsb27z3dGV3me1gpJFaHbEgpldD6n6X+9Vp0N5c8wOhB3NxgKubLNvdPM2c+h2UIazHUmLc9VDy25nLc7ZUhQtvwDc3q+jM3IrqyP8prIeAyokUk4B6RVM01THjr4byEJvruC6ghlKtO8sdkNjBuaRMfbztsp+gzEe8kjjZ6B6LNgQO4NMsMte2OiKUbzXY9cR2OvM1Uxn2MWdELYFPQBPOML2HY1iPaqZ1vaOFHhJF6eP9BYzN2cGTn6XR4XHD+XgEeLAg/1UeJ7B6Af49mRynLLFaLRv+xOGjTxOT+km9qFwsyiGk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8414.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(39860400002)(366004)(376002)(346002)(451199021)(38070700005)(2906002)(83380400001)(7696005)(71200400001)(4744005)(38100700002)(186003)(52536014)(5660300002)(86362001)(107886003)(55016003)(33656002)(316002)(26005)(6506007)(53546011)(8936002)(8676002)(41300700001)(4326008)(66946007)(64756008)(66476007)(66446008)(76116006)(66556008)(966005)(9686003)(478600001)(82960400001)(54906003)(110136005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SktUd0JJZnkzS3ZWTjB3d3pvOXdnSjVTT3JiSXRxWGRVRUdSTFpNbTRRa2RT?=
 =?utf-8?B?Z0pyckZmQWpkTTdQcTFhSkliM3BhdENtRHM4U2VBTCtLT3dJbEJIdk5Bb25Q?=
 =?utf-8?B?ZytmdU9xTGZ1eUpPS0VSQThzRm9IeUdlQ3VSZ3F1ci93R09kUHFwZ3FDZzc1?=
 =?utf-8?B?VmVLbjVvamV2ZlRVM0ZMd3dLNC92bTVleGc5UmlRSnVCbWhqTGpYbnhyRkgy?=
 =?utf-8?B?UEZobitXUzVBK0xla2d1dlhDck5qWE16WS9KR1UwZy9NSFBYdjJTVFNzaXVt?=
 =?utf-8?B?S2M4SC83b0U2VzZ5QktUU1BnbDZ1SHZxWlEwSzM1cXlsN0IyZXYvcmFVbDVR?=
 =?utf-8?B?WTZCMEppYmI2MUNLMmdNekxEZ3Yzc0gzeVNkeTdYMUFLelptWkhRZHAwT1dJ?=
 =?utf-8?B?eXZXcmZtTFdZdjMzM1UrL1dMY0cvc1I5NmFmYTVzdS94MG5lYzlhQkNzTHk3?=
 =?utf-8?B?amE2ZjZSVHRqSFczUTZPanNiQndTNUVPcExlZHp0TktwTXZKdmxiSnVEK0VF?=
 =?utf-8?B?aVVXOXJ6dlJkRlF1cGVlUkpQMElIMTgxbnJlc0I5U3NOZGN0eWQ4em9vL0Z6?=
 =?utf-8?B?c0ZYRys1VVk4L1FvT3FlaWxKWlFPOW13L2ZSZU5TL2xadUhhVlhqZDdhRlJS?=
 =?utf-8?B?cWVlQ0FDUWdHL2sxOVBJRGJSZkhLSTE0YzJ3cnkva3FDMGFrV28yNGNybmRr?=
 =?utf-8?B?NDdCSG94L01hZTJvQ0dzTUNGZWEyb1c3eGFCcHpZV09VTGduZUgxY3lmR0ZK?=
 =?utf-8?B?bHk5dDllWW5XZDRlVVJydTRXcXhJUnpobHBNdmNwSmtHdDh4KzRSRUhUc0Ey?=
 =?utf-8?B?TldiWTdYRGpURjlxYS9PVllmcFU4cjI3UTFDekpZaVM5ellhMm13VE04WlMz?=
 =?utf-8?B?cVIrV0ExV1NidkxNeVliM3h2WVNGWGpGUXRDdGcycTJvaWJ6NkVSWUs0Vjh6?=
 =?utf-8?B?LytoS0h5ZytjUG1LSytKUjd4ODdVblE2MU9uMUdxcy9ZOWE1bVF3ellPaFl6?=
 =?utf-8?B?V3dOeE9FMEtocWdQK2JxMUxycmRUUDMrZ0d0UWNqbUpFbWZPVy9rYlhpK1VX?=
 =?utf-8?B?ZGJsMjJwNVBjOVJNcFZaN0xNWVNhZDI2SlNnS2lZOXhNVytYUFJNbi9jOGFn?=
 =?utf-8?B?ZXZubVpEVmRYWVdsK3UxUE13TjE5RkRiK0RJYW0xU0VLQWNzeStrNnhRanJT?=
 =?utf-8?B?RDFHSitlT09FejBsT1BvVEtPTm5SSVNncXg3QjRocFZ5cE9GTUdWQUVxZmg1?=
 =?utf-8?B?T01qUXcwT05zYTNucFpGTHVNd1l0UXRSU0hBeWg5blRGM2FuekNQclJnT1Mr?=
 =?utf-8?B?ZEc3RzJCbm05U0pMK0VWV1VnTTVJY21GMnZHM2R5UWx6eSsvaFFKcnJPQy9w?=
 =?utf-8?B?NUkrVkl4ajVjb2ZlMzQ3QnZ3KzBQQ3YxSVltT2FnR29vOVBYMmZ1dzNrWmV6?=
 =?utf-8?B?N1FDNFB3bmxveHc2bFRUS1lNQ3Z1UlhRUHFoRHU5elNiMXFtSElEV25vK1di?=
 =?utf-8?B?b1JjazhHNnlhTXlheUNqVkM3c3Rtb2VTdGgxYkFJaWZyVTEra2lod1hQNFNz?=
 =?utf-8?B?RWt2ZGgvZjBramVqZSt3M28xc295MXNpUnhCZENvVTI4b2ZNY0tXUlNPa0kv?=
 =?utf-8?B?UXJqYVB5QTYvRWkyaUNuQzhLSEdEcnpLcTNPaDJ0dDFnaCs0emtlREYrZ1VX?=
 =?utf-8?B?YlZ4amJ2M011MnhITU9zd3JnSEhHaTBuYXEzeUJvT0JuZzhZdEh5ME4wd1ho?=
 =?utf-8?B?Nm0xRWJETEZsa2lPVldrR2syWnlGVUlQUFVZZkR5ZGc2NHd2K0I5Wko2emhS?=
 =?utf-8?B?SC9HNUJHYW5Ga1BJSm5pZlh4ZE1hSm1oYVl5WXRNRUpjZWd6aDErRUlPWkFT?=
 =?utf-8?B?TXplbWJRVmNKZXIvLzkvaC9TdWlMeUZvdnBjR3MvVEJTVE5oQjNlQ1l2dm9T?=
 =?utf-8?B?V0ZsUTZpRTR0RURzbEpYOEFma3NpOWZLUXlGbmtPaXJzU2RRY0hJdCtJZDY2?=
 =?utf-8?B?TUhyUzZkckx2Vmt3OTBqRy9EMDFHbEgzc3RJcTQwZjZzY3pJbjBYZzlEV1ZL?=
 =?utf-8?B?RThuOUd6UVFSekFIdG5TT1VpczlrbHpmYlk1dUxFYmRmT1JXRFpZTi9nTGZ3?=
 =?utf-8?Q?jdz24LA5xizOoj5URSqI98u7i?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8414.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28ce8ab6-16b0-4659-16d1-08db8e9defb8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2023 12:35:18.5339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xRXdGsb+jMerCZHbqt9IlMU3RLIWgfGA/8N65GpYcyt704+wWkJOHH+2H3OQpI9DVfePg73OXIgeiLSZ4Tvaqv/rAtmMGlyA023Jq3JxM20=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5536
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690461322; x=1721997322;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aiwX2rP5KJz+1GxFh1TlFuayUbo6j3Zr76y0icZnd/U=;
 b=blWIMJk6mmerf0uxV5XEatfIisBCAsxYg1qto0Yc4mTgNh5ASbGzuj2E
 GlxXNZU+EeaHM0kLePVBOAKfY1g59/PphUFAei6o8+WQ4Gp8d8UhxOIkO
 Ert8JZRgNrqf2CBh4WkmwLeymnwKnISg1Q85jl3WQ2eSNTZyYkCxxFjXy
 zk5XMDklKjPM+ulRttf7XTnCYrbV70sPJ+e8/9ynTQNe67TEwDVPaVLft
 m1vNAcIACALPGGqduIKQ72MlemyGyYclZNPjG/AO7pj/SbqYaSwI95RY0
 EatvQDhMJlXXc0DB8SkTYtA/OvEUGaZFS7tnBCkPfHMgY9FUySgQqr0Nj
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=blWIMJk6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/3] ice: Use PTP auxbus
 for all PHYs restart in E822
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 25 July 2023 7:52 PM CEST, Nguyen, Anthony L wrote:
> 
> On 7/21/2023 8:44 AM, Michal Michalik wrote:
> 
> ...
> 
>> @@ -1927,9 +1945,9 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
>>   	/* Reenable periodic outputs */
>>   	ice_ptp_enable_all_clkout(pf);
>>   
>> -	/* Recalibrate and re-enable timestamp block */
>> -	if (pf->ptp.port.link_up)
>> -		ice_ptp_port_phy_restart(&pf->ptp.port);
>> +	/* Recalibrate and re-enable timestamp blocks for E822/E823 */
>> +	if (!ice_is_e810(hw))
> 
> Should this use PHY model since this is coming after it [1]?
> 

Good catch Tony, I changed it before [1] was available and forgot to reverse it after it's here.
Will update in v3.

BR,
M^2 

>> +		ice_ptp_restart_all_phy(pf);
>>   exit:
>>   	if (err) {
>>   		dev_err(ice_pf_to_dev(pf), "PTP failed to set time %d\n", err);
> 
> [1] 
> https://lore.kernel.org/intel-wired-lan/20230717221713.2249044-1-jacob.e.keller@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
