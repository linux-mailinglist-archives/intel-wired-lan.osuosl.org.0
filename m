Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6397F74B068
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jul 2023 14:02:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 002AA41B41;
	Fri,  7 Jul 2023 12:02:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 002AA41B41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688731357;
	bh=szyIBGdterbaLsSYv20/Hg+25c+hpENKFIaU01fIraQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LS9w9HrApaxRd7fdi0DioH8JDjsnuQJdOAizAykvlamhz41DHOYmEwbCl/AXfp5NA
	 yI+vqwHU8QY/SZP+YKe6lBLvkSrFT+e/hTWheY1DSY1MRwCrVRQXfp/HuyJr2RTZSC
	 uSiVGMmJBJ+MYM13JaLe8xeh7+Ig5JkLcQGzcf8xpPaw7g8hDN1F3pAG3ja4qHDKo+
	 PbUBCmAv/fLSFVm4CpDSMR0N0PaCqusPhphLKQyorh+dkkUN8JSG3lyzX2ARpKPyEX
	 1RdzhhPo7bn19zyJj4yQPw2qHlojHeBwskWIk3mICtZv9nig2BJwNYh5PkZspIfvwf
	 G5dQA/Kh6JpYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9korvB0Mr-JT; Fri,  7 Jul 2023 12:02:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C028741B37;
	Fri,  7 Jul 2023 12:02:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C028741B37
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6AF8B1BF982
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 12:02:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42FCA400CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 12:02:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42FCA400CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NJnevn3O4DwU for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jul 2023 12:02:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BD56400C5
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8BD56400C5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 12:02:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="361343176"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="361343176"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2023 05:01:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="785345209"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="785345209"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 07 Jul 2023 05:01:34 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 7 Jul 2023 05:01:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 7 Jul 2023 05:01:33 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 7 Jul 2023 05:01:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=baU/aFj+G/0fVYCYmK52/QjknJJyZjXOD0VxRNFNqi6PE2ab4bUNKldEbD5CND3Wvrtx6XxFCRe9XE4UKzxYO5cALb32xXoIAtFLEekPNABrgHkHHzs5SRyiNRXeWQbdC6bfXDq7o2afvKgQgC9Sj0nbGXHnktTLWOgUJnq2M2SPpRJrGartQPmqbt9LZt6RUyLKqNQXfeD//tP2FqJMDWWNeaiP+unaEx6Z+abrmEr7gRJvf7/Wf4RHhC5V/o1DiPT8cx7LjSDPMNvI5/tbMZEeocKabAxRgNaFczb8qcQ1ej8p46+2ABG6MueFns37b6CCfy8W7FWjNv2OPvbprA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HC66F3k7zXbhhF5oBVSxxdDa+4b2STetobj4E4C6+dM=;
 b=PA9uw1nvuE149hsdf6LPpgmvjcoPeDZbO1IuBbfg/SzXJvOK61XySjyh/UyetEp+kbcxFM9D2wiY2XDeEyDxJRKnI4C3EUF3S44R5i1bQG8YMMnUPkKbWg0rxZxMjgHpoigeL1wF3yhPT/HhfHHPPcGJEdhgzqW+x4I6Rhdu9M9UCdIwSCezQco/zYzxKfRMdCNYvdY1LPL6J7r16YopJxJHHEryvgRjcH5kqrBv3bS8vcL5aRRjD3xTAuX7U+F7g7iqGkLOSM7ahWQ+/2MNwZETZxqdUPh2r3BV9kFyAjLSrLsFH1xy+1ayuo7htPyl99YYAvf1ukxWCCNRaE113A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by BL1PR11MB5351.namprd11.prod.outlook.com (2603:10b6:208:318::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.24; Fri, 7 Jul
 2023 12:01:31 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::93f8:ecc4:eb28:7e65]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::93f8:ecc4:eb28:7e65%4]) with mapi id 15.20.6565.025; Fri, 7 Jul 2023
 12:01:31 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 08/10] ice: enforce
 interface eligibility and add messaging for SRIOV LAG
Thread-Index: AQHZo8Xb6abrNvoHC0ioi2UyvCvUZa+uTebw
Date: Fri, 7 Jul 2023 12:01:31 +0000
Message-ID: <PH0PR11MB501394788D6D98DE54021148962DA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230620221854.848606-1-david.m.ertman@intel.com>
 <20230620221854.848606-9-david.m.ertman@intel.com>
In-Reply-To: <20230620221854.848606-9-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|BL1PR11MB5351:EE_
x-ms-office365-filtering-correlation-id: 78d9867d-7f7e-45fa-8b32-08db7ee1e749
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zBTlyiHSv0q/SWroVLzPR4L+dqbAj3fABwhqoypgihZ7PVLC1TvNiy5KM1EnT0waBmY8Fr1ieu5yX5GZ7BQjViDsyE36PkBdTapj+t7omeAeoLLNbv4sxhnLK31AWGkwXUxF1l5FTWZOYhkIXTI5VpU5S6K/iIXkn4zrK05kxyc+Xzn3x4wvUPFv/X2/gexzwo2XUj6n33m2gKCH/vOCZOsoQLr74RqUVrZkRgmHx4yV+YdUUOCXIuX5XSdsKB9oI5Uv6zA88r0wF6Y66Y1TtwaCCdnUmI6is5m9lHbYSC1gbCYLSqmNTwYDnfowbZcIbwU+zEVWPE/lQ2gtEsNvJ+bLo0UJF534/EVJkSd8638+yYOQE5+45/L3l3KlFr7/dOuu/PfW6mgpHJWPccUVzxShQBCtMBq3A7LFptkNgaoreu2EQwdmYtyELW3BkXoCINBGAx+Cep75QRDR63keMz/Z1JJwdnxVH4ThjTm36hvqHYQb73gbkz1qldYTie/I28DpmCQJFRJ1KKucpeHquiJSrvTB2/Zz1dqPsJ/WCV6/e3anLe8dpNxVua4AQecPc2XUgIpjhswexqKbO5kP/zatecQDOls8WRVPfCwOD3wnF+K7gfo3TG3U7olWdiaO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(346002)(376002)(136003)(39860400002)(451199021)(83380400001)(82960400001)(122000001)(33656002)(86362001)(38100700002)(55016003)(38070700005)(110136005)(54906003)(71200400001)(7696005)(41300700001)(478600001)(9686003)(8936002)(8676002)(5660300002)(52536014)(64756008)(66446008)(2906002)(316002)(66556008)(4326008)(76116006)(66946007)(66476007)(186003)(53546011)(6506007)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lBf0hZ0x6kmD/O5Iv8pppTQJzjoMJk6s7ZOZAF5BRvhVgUPEW7YL43+65SeV?=
 =?us-ascii?Q?BW6pZJIE/ACpmhFlVcyL5nyyCihCvjiDq68a7sa3eyhqo6GfIHlUONHSabEH?=
 =?us-ascii?Q?+gezBq7D/AMTnxDLMAk3prk2yzWtSrYrJ4Bn+FtWaLQPaS9abEpWjVigi5FK?=
 =?us-ascii?Q?YCY+hBpdd82o1h4AcuKiVHpW4VRbfTNaRb/8dwmaRmgLaA0wkxrpM3IT1sfR?=
 =?us-ascii?Q?f/XWHKAoR7WS+mRpeKz80sTJwujIo/xvdv+KGdq+ZbcJSEMn0GXraMLsWcLK?=
 =?us-ascii?Q?DTpCzWxRWc74snk+mD1hgj+O3h4KOV566gON+p9cHdAdvHSdAcYOBlXanljx?=
 =?us-ascii?Q?/iOFezNcAaqY4oYtC2WLYoj78xrvXoIMqGGkVQWcK3A3gMZSkj+xreZUiGU5?=
 =?us-ascii?Q?AP9K9XrNgSbSTWwuR+cWYYxEtcxZ4bj/5bqsZYoNVMGwvNWhlFafbVXfYZqO?=
 =?us-ascii?Q?WDqC3OsoGdBB3tbK73R4Oz458zuzkAkSEUqudmFDRC9+vYzBThYriqvGmRTh?=
 =?us-ascii?Q?dW3zxZU1KxlX2hFX/wTKHBvCvJ7YZ5TmGcH8VrKx4iOU6AJ6mg73YoXJIDVB?=
 =?us-ascii?Q?3FINCOTMLRZZRKXXkPhMKeFPEGxVsHDjhiOyLBH+Rg6yhT61bNw/wCRYJQKf?=
 =?us-ascii?Q?6v5df3btP+b6v/4f5nQi7KO5insiWf1Wv2Ip23sjj3TQYpvGJLMdZLOzBHgl?=
 =?us-ascii?Q?vtYd9VQqlZuoKj8J12dx0rMTXEC4Bg8T3YixsySzL7S1fP1cjZU0rJSfnw10?=
 =?us-ascii?Q?sQPT9orviQutk+EAABDGlDGFHbcKIlcbxkgJg1E3FcUcXDGzA3cBf5xQhncn?=
 =?us-ascii?Q?rO/NQUOV3878o6UaOFXjXOHlrkfFFT/ZV+wMCz8tFtpAEfA2haMRlvLsEojJ?=
 =?us-ascii?Q?P+9CpeBuNA9O4xcFfrilk/+lgEMoApbkO7U3zOp+aKsfu1yvC4oYD+XtXGIh?=
 =?us-ascii?Q?OX5K43HPEv3lHOr+1WYdt89sK4AhbXG7PuLNuPDeWeNysJ1uEz3RVBuzNa7p?=
 =?us-ascii?Q?DgQVqgB8ucU9JSMrjTftU8SXwt2YSeTJ5PIKAgJy/PRnzbwioj7ZdFmDzHQZ?=
 =?us-ascii?Q?YpqF9p5PwCy9OwfgsB9UppMvEGWMbvU+hQeXb6jicDd6haSEpjsKo7LlV76l?=
 =?us-ascii?Q?lxOKIUkfU5uPIvBuaYSlhtv9tNZf9VrrYPETBJLiG5/KP97P37rfp05Gxh9R?=
 =?us-ascii?Q?MIoW5as/ym0fAPNSV8jKF113O7h1I0l3NAr+60/uETpZvI8SA11hUTHt55DO?=
 =?us-ascii?Q?POE4wTEYjAnduf3aEOI/VredHtnnIlV6MfTLRSzTuAMGO/ZDUTLIftx2G+hi?=
 =?us-ascii?Q?QCwsxOBnsoNrjKR0hD2fVxrbXioJZwVxH5Upxoz9dG4lo+66rwtmnG1UJ8ey?=
 =?us-ascii?Q?I+Pq9nRiBAUVhtTulLoyYoJ/P4QNalwQ3ME0F7D+C2RTK8CsIEezlYHSlFzx?=
 =?us-ascii?Q?H7/PAjipCzx0UDHO3nOVgLbJsw935YdxWTdL5ikpv6J0E5kZkaauX5KoVN5C?=
 =?us-ascii?Q?W+XjrDFnaPDW+8/oQsQASAmtwELSqU93pvQQmbDtuWuoF5KQ9uJBbTGiVe41?=
 =?us-ascii?Q?APssk+4kA256Er5ip9AdLwfN/+XOGqrNc0f7ju6iaRv/NgEjPaXDnRGYIM2Z?=
 =?us-ascii?Q?nA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78d9867d-7f7e-45fa-8b32-08db7ee1e749
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2023 12:01:31.5680 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RCZF1CHtLEPZlo7s2uGcoh+niHVHSC5MQZLQJMEDl7POurPgABymIQM0sNi79hUx7ZaXjD/5GkEStjaF1ATmREUoR4dJkXBZGImm+wFI+9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5351
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688731349; x=1720267349;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p1M6fvbyZGjneVrvdRWYjsWrlstJnKf6blnwv9DOgA8=;
 b=m6Zf9MAvtuUeaFCTS033Ar4xLGbnUA0mDrMj4apRQq/4Xg8qgw6YD/P5
 LJIC5Q9sFOoqAoDSRH6qyW+oUfbvHZJwKkXX+R0ALQrtKZbzmpRmr6Oz2
 cSCJwhYPYV7uUQQLRgAMHKYscZnq9ugdjKUOWv8I38xQLdzAixvuTvwy2
 EbneQdTLFBn3h9AFh1B8Zio7Xowv17/JPYCg5FLrXgrjE/B7cmSxwRn5a
 Blgp298IgAoEVEu9KaW4ekdM+dye9IXh+yb4p9nPqO84tpnCiiyOZZoea
 MZMj7KUPotMOoyEdkKCh6EXkjntm8+lnuobCF3c7ssv/X6FPCtocGQcS5
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m6Zf9MAv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 08/10] ice: enforce
 interface eligibility and add messaging for SRIOV LAG
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
 "bcreeley@amd.com" <bcreeley@amd.com>,
 "daniel.machon@microchip.com" <daniel.machon@microchip.com>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Dave Ertman
> Sent: Wednesday, June 21, 2023 3:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; bcreeley@amd.com;
> daniel.machon@microchip.com; simon.horman@corigine.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 08/10] ice: enforce interface
> eligibility and add messaging for SRIOV LAG
> 
> Implement checks on what interfaces are eligible for supporting SRIOV VFs
> when a member of an aggregate interface.
> 
> Implement unwind path for interfaces that become ineligible.
> 
> checks for the SRIOV LAG feature bit wrap most of the functional code for
> manipulating resources that apply to this feature.  Utilize this bit to track
> compliant aggregates.  Also flag any new entries into the aggregate as not
> supporting SRIOV LAG for the time they are in the non-compliant aggregate.
> 
> Once an aggregate has been flagged as non-compliant, only unpopulating the
> aggregate and re-populating it will return SRIOV LAG functionality.
> 
> Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 89 ++++++++++++++++++++++--
>  1 file changed, 84 insertions(+), 5 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
