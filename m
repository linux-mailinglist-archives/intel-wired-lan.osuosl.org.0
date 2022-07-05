Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2409F56719C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 16:54:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9A31826FB;
	Tue,  5 Jul 2022 14:54:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9A31826FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657032890;
	bh=/iHudjDecd9JnNLCQ+DK2Z7E6iCvaZgB5zf/6yekbqs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MDN3vKRlVHbJtBS1XPhAzJEHuXUGhnAkSGjfbuhx82C2yHI8nEFAjXILuRy/uCL2b
	 ioykOYdRLd/W44ZEmGv61N2gzLAlw0mqpv3dchLJJEdgMylrJy8kYJpKNQ4MDEzPwX
	 +0ppPfUQrmRLPgapMUiXHJ4YJUvRXkX29y3WpaC8owp71gZ0J/udkTtG/s2QPUwJg/
	 vzINsJBRkvOE7kqDezJ6UwEBewR0lJdmrq5EnUkfAFVc2H7wBfTkL9g1DZnwqsM6kP
	 RDtieTSB1CMLU7MDljW5iGMREGwCTMYGNuxI0lNfR1oP4MPqyFwO/CXG5qeFgeuMWH
	 dguCsZMYYxW4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CA4Vf4JqRYu3; Tue,  5 Jul 2022 14:54:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D663881DBF;
	Tue,  5 Jul 2022 14:54:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D663881DBF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 95D7C1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 14:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7D05B81C93
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 14:54:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D05B81C93
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZbUnDNLOx2-2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jul 2022 14:54:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2DD181B60
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E2DD181B60
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 14:54:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="369695392"
X-IronPort-AV: E=Sophos;i="5.92,247,1650956400"; d="scan'208";a="369695392"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 07:54:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,247,1650956400"; d="scan'208";a="567644154"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 05 Jul 2022 07:54:40 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 07:54:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 07:54:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Jul 2022 07:54:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Jul 2022 07:54:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S3m4Kh07NNDNe3I961ayJKDlzlwuQXdXGARQaX5+s2eaOHlhoJB4D5OK6vVBS8OMXHP+lLjfTOz9Ep8auU7WUXesb0L6T2vzE8vpHiMtlej7WDX+7iI10lgP24LRsad/U4Lq96/8Q5xSzk/6xMTl4e+bJUT70cQuUd+ZtbGrVsljXPyCyrzYQqB5Z3OSA3jfG68j3E1A5bJx+tnM4xUnGDjMjpqTW/LBskKKF4FzWCwHShUzv204uN67cypNBPFJJiXJC+iU6lSZFGOBHPHw+vJdNdvIo5PhD5h9EhuAkqWExzI+WHYa/CPUfdpP6jp9Kj+MI77E3VpBYQQ8wZhgPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c4wkQXDAlQTe65KWIFDqgqdgrAN7TEt5tncbq2k4ea8=;
 b=l6tiQmb53tGOtRWirvSfyYxlFswfrZulwYTVJxekizAokVhyEr3halOh0voRRD5/l8r+5jfzdpA18hO7hQzcSTvxZ2OukJYtQCPGUP51A99ZVJ5TF3i/Lr8hMyh91BKZeqn32a0ZfpFqCE5f04D2fKyVzhU5/QuC6HB7QKJK4DWM6iePsMl+W/eyOG6Xnb2ecFW1Dc6SY60Q46YsFxwKhIkVlNo3EwRTWkf9hhAmaB5s4uxUpubBweWK9stTsqIpfCgE3ljBeHZQ3SrUZwnwIrag3j3nGuXLmngnC6fXfZxwWldMsVxD3wCHL77qrryoCHq+xYdx8b63Fj6NY1eDxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by IA1PR11MB6324.namprd11.prod.outlook.com (2603:10b6:208:388::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.21; Tue, 5 Jul
 2022 14:54:38 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d1b2:ed18:5abf:364b]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d1b2:ed18:5abf:364b%6]) with mapi id 15.20.5395.021; Tue, 5 Jul 2022
 14:54:38 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Zhuo Chen <chenzhuo.1@bytedance.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: Remove
 pci_aer_clear_nonfatal_status() call
Thread-Index: AQHYi8qunaj4UKijfEKJGWlSpvN3ta1v5o7w
Date: Tue, 5 Jul 2022 14:54:38 +0000
Message-ID: <BYAPR11MB3367DAFD96C16A5B50EFA0A9FC819@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220629100334.60710-1-chenzhuo.1@bytedance.com>
In-Reply-To: <20220629100334.60710-1-chenzhuo.1@bytedance.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7ba398df-bd0e-4bf3-2c89-08da5e9648d0
x-ms-traffictypediagnostic: IA1PR11MB6324:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wTy+OyxDXq40oTp7AZlkVFMusCRB0QUwvHqNHRR1/iD9NSToTbgLjCLzggznbXcFxu3cpBlhL2bDBP2a5MztsFpwU1EuokqSDKYdMC/R+1RP4O9pzC3lmKw8qblTD9FM0pxdhSMRh6T32aaCRf4LuKYCEogY1T7Mv2dqiHx2Z8gAXFHOO+9e9LPtMI+x2RV6XDK/0EqaWETGbb9VE/ZnnJE0F1tFKBG4ixk5qmpYk+EL29szDEYZu3bEhHaBZKnrT+AJBa0fNo4FFy5einG9qwjLc3/QBGu6TuR5bo/IpUIZmbkbrUcWJu6gtKQqXXkgjZIij2hhHhZBEq9bYOtJ59KrJ/yZGlmiM4WLUtEzJg2uvJlfphEZ7HWkF0bvEnwk0rCVv2JUWMeavwfe3rLm0130cJa0TIxfcVGppksWbKQHjHVHEbLrTiIT//WmxsBoh07eHtO0n93tvOp0Dl5+0Azk9aHOHG6BkyjxlEx/khLL8b5C418wMeEvtLytwTo4t3RjUuwXEGOdCMgZ6JZje0P/9LgeXzldvwLHZmZpLMt52wcWOd7+ok6YgUjf6UJEtv0x3N3KXpUjGCALl65fj+RiG9UO3u8b69ptWRhxO39uLD9sdwC0ou9xce5P2CWsFdzPyv5mNTFdB476KAC9Z4YZa2XsIIASOzzcG7TJBB8OxWPZF+zN3GfIq0rWcAARWW9BJ7my58OV64dlErMsEcZZR0AQ7cPo/C25DqwTpnqrtMB6zivQTy3tqJg6uzRtx4U172BprcNoUYKECPt9rx3VbH8DSWzcmOvhp6Qk7zeLQUQ2iK0WBWcdvPOFTXQGctHRmvaRYdFFmzY/ylUqYQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(396003)(376002)(346002)(136003)(38070700005)(921005)(82960400001)(54906003)(316002)(122000001)(86362001)(4744005)(8936002)(5660300002)(7416002)(83380400001)(55016003)(4326008)(8676002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(52536014)(9686003)(26005)(186003)(38100700002)(478600001)(71200400001)(53546011)(7696005)(6506007)(41300700001)(110136005)(2906002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mwGbPcLX6l/pa7+yaHwHm2PU51MOyGICfp6d2EDSbNEKpYu+DS0tbiGp0dqF?=
 =?us-ascii?Q?ut6nZ/TG3qz/RbkC2lLvLwQ1kJX7BWkB1m6BjNfpvP/YdnlOlzHc8JhoxjMa?=
 =?us-ascii?Q?sT2Yjpwv73oI+UPga4/3uO/wqEenLajYNkrYodS2+VW/kzxZFpzpLOXGEsOw?=
 =?us-ascii?Q?rflOCqpoTkghnlEmFPmcKtPiDJkx/tqx+URcoBAuhXPmTD769Ogt98dub/ff?=
 =?us-ascii?Q?c6kLUK7SSgQVDWlNbz5DD5lZWAAAQV+KhGnvNr1TYp4FbvZDHn0x7FWt7AQM?=
 =?us-ascii?Q?cIjnaEtUoLxZPucv9cAs/ggpIi2pSBZbYKqD2Z38V6nC0/cDlQnGuVXKFqWg?=
 =?us-ascii?Q?OdziPg21lTJ9R2OVrbCaT+R8TfY6gFiBl6ewzSNkFu2t9lVSBR1t2APj91EP?=
 =?us-ascii?Q?+YfUr9NiG65D6vSszwHcJIL1qkWSAWGvBlGpmIiBf5yDfyDUlwe3ZktUaOwI?=
 =?us-ascii?Q?8ix3lcq2Aza+xSCAEUXf9ySwzC8XeO6EMRTl+FCRJEt0aK6eU9jHBS0OAOSW?=
 =?us-ascii?Q?jGm/uIeU/qKRYnSEtEv48v81Pbb2NEsKO4yormgBBCyomb5qnv4MiKLQLoNT?=
 =?us-ascii?Q?BV8s7F3iqgdIuJ6ieESVrRk9hI1QPIn5wQ0+uI8ggVlPKFLLSPNnBehTAQwP?=
 =?us-ascii?Q?Ar+eYsOG7PcEdFX4picE3MXPjxnU2uSfI9y64YjSLHa+S2rPWP7ffwsIQib/?=
 =?us-ascii?Q?+qK425VKTzjlPhGU9dW5mspNe5rxjCI3SPxnP+mjTHszlPiO6UT5N1yYMs6g?=
 =?us-ascii?Q?LR78P/0tLStxIVCtNCeNvdcV5TRRcLmSG+/WugCPBaSWk2u0w/GdaAXPj41F?=
 =?us-ascii?Q?sNkqKXuV6blWeag6SgxNYdLeKyuDOFu2t/ZbLBdO+kLKsQrBGRPLYNQMv8dH?=
 =?us-ascii?Q?A7QKo/udtfWSqNq/ScnVNouZmEi7pCARWe4tHLx46HFZMynraIPJC7qZK+8a?=
 =?us-ascii?Q?Yu+w6wMKiBNGWF3EvJNx+oovPsbIfJCcLH7Y6NW9gDHg3+XhIxwF0tIjMmec?=
 =?us-ascii?Q?+B1dCUsOAkPWYsCGMT5Q+Ar+vu7kwSf1YReNKWSLSKK1jXWRq1Ry6GKl2Nj4?=
 =?us-ascii?Q?tqoG8WOFiwj3P0hXhlSJnofI0gh4re937JhsXFgzilXWV1+PtO8p4hF7WiVK?=
 =?us-ascii?Q?dMKwwwMzoA+DLE136LnBPN73QCTsV3YSYf8uhhLDMZ/50oNEfbsblVZ++vGx?=
 =?us-ascii?Q?GNQc38C7LguNe7ocUlzU4s/0IQafSQHFVk/nUVc3OOp2q6hOxwL+w0381AIW?=
 =?us-ascii?Q?PacF+Awvi9bvqNVSX1mUh95TDQsE2SO3zXcy5u6PGFCvG/Q133bUcWzDBNZx?=
 =?us-ascii?Q?Xajs9eraH0JF5DYytdw0b+qusS9vsdO236xmfEwtgrxriDdv/goOqslCj4qS?=
 =?us-ascii?Q?xnHZTN/kRS/oqgVY8C89eCyPR+7vMbzydXss2IeoRjku6QRg8kWGK87VEPUK?=
 =?us-ascii?Q?woZdkRduvAbvR80qxyAI8rxV8MfYG8CEoBVKDOVyTdNbAC0Flb1u/ILlDejn?=
 =?us-ascii?Q?ue6bkaSciL+51bED6Qqm48kZ9KlrHnxQHprSI/HDwkE3tS+xkvYyKJLdm5Cx?=
 =?us-ascii?Q?vmaj363IeGeneWYsV861CvyhytionXxUdZNZjEr1?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ba398df-bd0e-4bf3-2c89-08da5e9648d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2022 14:54:38.5741 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gkr7mTe3YVxxZj5YYwj4VECzLzat1wffX01LGfrOWIAjN/265iHoj/1vVzejxWGrxbXJGwobWy7MMg3AIoyBsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6324
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657032881; x=1688568881;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iBKR9Aj20FSy7Uhk1hSvpjqxBxnX8KLuzOenjKTPUJc=;
 b=V6kswJVGjTrJJ3c7wo/I/sFC/VyA7ciPXV5U2ixtMANsrc2tsbMzMmns
 o7v+LjwTUTrnppNE810BywItX4ddi2kr0w+XL2leCpQWxd+1HXeiumYwO
 aVawHeX60aPMo/kXAtbUnhvHwsz9mb9655fEusLq79/Z6UJ0Io7EC0DD0
 7LYSRjPMVIXwHKCE4yRlvbJH31t61gzmev/zei6Rlc0Sf+OZe0JRXvtXk
 s2hUCzqhbg8gsVmOW1bSGKBkkMeDPVEQ2wk+rYLdvKK6+4BuRAEL3XHAu
 MwonyYtc6kkxC+e4jsZv/yrn7YDHQ6DRmSHaJI8vb+o+JBRWAkR+7JBQc
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V6kswJVG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: Remove
 pci_aer_clear_nonfatal_status() call
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Wenliang Wang <wangwenliang.1995@bytedance.com>,
 Sen Wang <wangsen.harry@bytedance.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Muchun Song <songmuchun@bytedance.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Zhuo Chen
> Sent: Wednesday, June 29, 2022 3:34 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; intel-
> wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Zhuo Chen <chenzhuo.1@bytedance.com>;
> Sen Wang <wangsen.harry@bytedance.com>; linux-kernel@vger.kernel.org;
> Muchun Song <songmuchun@bytedance.com>; Wenliang Wang
> <wangwenliang.1995@bytedance.com>
> Subject: [Intel-wired-lan] [PATCH] ice: Remove
> pci_aer_clear_nonfatal_status() call
> 
> After 62b36c3 ("PCI/AER: Remove
> pci_cleanup_aer_uncorrect_error_status()
> calls"), Calls to pci_cleanup_aer_uncorrect_error_status() have already been
> removed. But in 5995b6d pci_cleanup_aer_uncorrect_error_status was used
> again, so remove it in this patch.
> 
> Signed-off-by: Zhuo Chen <chenzhuo.1@bytedance.com>
> Cc: Muchun Song <songmuchun@bytedance.com>
> Cc: Sen Wang <wangsen.harry@bytedance.com>
> Cc: Wenliang Wang <wangwenliang.1995@bytedance.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 6 ------
>  1 file changed, 6 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
