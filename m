Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 113287663B3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jul 2023 07:43:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98F4A60F74;
	Fri, 28 Jul 2023 05:43:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98F4A60F74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690523021;
	bh=5AvMLlOhKeNv1hwJtiVWCE9ZeVZDpNwt8aZSQpfrUPQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yOhEMAKxAg++TOJXjrj8jlLDBpsqpPFph4xzp/NCuJonnI1aI9cWQBjtq3vAHcZzt
	 vFmDaM+RN/7bsNvk8D2ssxg3SaSx04wf+bn0Uru++pYAZJpv9vcf7MIoWWD4bIZOHs
	 2G7y0Xg3cc3o6sZEmpPV9iNVZNWlpTcyxSrMY1Qm7OFv1+urLpptdI/RGnFMXQyWN1
	 jxRtcEyzAHIChsC0MZSYcYkIdgse8tsBxAwxAvCx8aO4gqa0jJDEhDSNX9BvwBDcnp
	 pm8qIIVD9xN0VIAzGa7uz6WJqukD186NydU9c7kPQkxR2n47UaNG9aLItgMPwu7JSF
	 ATf1d98udfNGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hjhvl6Jxouc9; Fri, 28 Jul 2023 05:43:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E94B60D67;
	Fri, 28 Jul 2023 05:43:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E94B60D67
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D256C1BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 05:43:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A7399410E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 05:43:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7399410E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id omFuO9snQehH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jul 2023 05:43:32 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 52E2E4093D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 05:43:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52E2E4093D
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="348792348"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="348792348"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 22:43:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="730606797"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="730606797"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jul 2023 22:43:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 22:43:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 22:43:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 27 Jul 2023 22:43:30 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 27 Jul 2023 22:43:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UgtwcI9/Xlsguj3BNAc3FZG4brNhg//QprirCS+4r0FZlxQJwmLKLBZ1KGSdFDRiZ3F+4+stVFVjGs0tvjwEJ5QdjdyVfl6HEwfxrAJT+DKeYfycwjrSXHagY48iqpDYbAXSL26uzTP8FDca45R2z3NcdpsUq+/Z1MDozEqJpzKoqYZ8INo64cP3zfv7E/lKS2o7P8WoVP0wQVI6UdwaE0T4HtQZBNnRn4gOm/NmHqjJnBvn85ewiDOuMd54ouoKc3rHBdZEatOPUckFjkdAO+b83BGEYvYintk6bUawLt/4mESxTkSsSauIlRsw7vS1FsEdBDfWnCtBVjFIurRfeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OSbQAVVcj6SZRmKjBZaaAUhEK2Ct8cvHF4TTJgVyTnk=;
 b=FobEZSzV4Rffy2z9SHTXfHXuZnx58TTOC7HGZYCqV7v4bAQ+qleljWBVKrQCTRsHZDw3F/KA7lGb4YA5EWj9/UAQRL0LXHUPOW4o143CqLce7r6BCM/xKoOZHWe56BZXLbzhBqzapIP3D7pNUiWzRhO2buqRxteTKTaFA4xwrlPxGE4DlDJ06oxaI2y1cy33HWzVwn1a1g0M5VGe4ReFBRwK+SOczgmsTrd9Q1LWgQQ7o8alINZfEetGxImsEb+TSjfdC9VY3vpLF6lr1JkZ2OuKK1sWXxKR8C8hrBqVkIr+qh+977VkudYflC5KP8IJSVoDh9cAoygw0XGZuLoYEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SA1PR11MB7037.namprd11.prod.outlook.com (2603:10b6:806:2ba::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Fri, 28 Jul
 2023 05:43:29 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec%7]) with mapi id 15.20.6631.026; Fri, 28 Jul 2023
 05:43:28 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: Support
 cross-timestamping for E823 devices
Thread-Index: AQHZv0Iyy9BkA0b+OEGOvWIx3ImPNq/OrWqg
Date: Fri, 28 Jul 2023 05:43:28 +0000
Message-ID: <BL0PR11MB31227413CFB30466D8209A53BD06A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230725215048.1311584-1-jacob.e.keller@intel.com>
 <20230725215048.1311584-4-jacob.e.keller@intel.com>
In-Reply-To: <20230725215048.1311584-4-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SA1PR11MB7037:EE_
x-ms-office365-filtering-correlation-id: 506e2335-fa03-44a1-1dac-08db8f2d91da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UI0Si+ymwMNouvUdXj3KMofmi7BEbwY1m9nrgBRxXbS3YrDRGVIEJPORf14ynzCByUdKGR5VaE/qIMQMpKmP5MYH91wbhGTFZL0ItZDWhtqSqe985AoTrfts7Wri40CUTj1VfiaCvq4OJQ8l0FEKoB6YGkHBmHS7Aq1qyXhYUTupQmyqZs2r79WTmBQAplDM6hveuiYVy6yLwFwRYb+kkV8+ZkovvxysR6Oyq7Fi9Lau5MBL+NY6uoJqf/vNxWhMqR+v1xJiu5oI/UNIK0T2wWTdxQxBvCvrTFKWe5dquxFd1BvRpENJEL6oTDYJttMCleUNYd7w4BKAzRdTrtVpEd08hOUmBPdFDO9rJ0zGuVTQffEwDAvLPHphiXVGyLXBtrMvPrJDgjWIJTofyG2Mqr9Bd/nIgLv9aV/mnjNPTn0b0zv4QgLGfeBhdsmDY1ed5+pLoaMRbPsKr+QyMTj38PRxFUfQ1mJ5cjLgS+XMmNEw1IrK3qts32hs+/0nyBTJiWVWKjFPxf9anMpPNwKjxgfV+HPzV3xxQt05OtIopWS2b4Ysr6EBBc8bF2ZFWJFurdnuHxfl0nW2W6FgRWh6jPWMGMmXNLJl2OIz5XlmPkWw35jifV0K3nfsFRG1D4HO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(39860400002)(376002)(136003)(366004)(451199021)(38100700002)(55016003)(54906003)(66446008)(82960400001)(110136005)(64756008)(7696005)(9686003)(478600001)(71200400001)(316002)(8676002)(52536014)(41300700001)(76116006)(66476007)(66946007)(8936002)(66556008)(5660300002)(4326008)(122000001)(186003)(83380400001)(26005)(53546011)(6506007)(107886003)(86362001)(38070700005)(2906002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?B5Jy5jBsOnvZHAj3tHRnNurqtpJc++SDml6+Zs/y6cRwXdN+6HRTQs6+aB28?=
 =?us-ascii?Q?u0Nnq7jDYkr8lGZDghjTJpEsLh9ywtcBpW/WnwzgMlsOixxTS4CxozisBgXq?=
 =?us-ascii?Q?egfHMUzZO59SkJmF5dCE+5BXwLjAXIxy8Co8O75Fq6BE2WrYK0mmXKFI4Wv1?=
 =?us-ascii?Q?l9AZ8UvWOU55W4MiWDUY3pZvPanqIgmR4bG4hlSuebY+wMr4RCP3CnbfVpzz?=
 =?us-ascii?Q?KbknJ64uv2tMUuTFqizcuy+7pQU92+U1Tqezoj+al6horrWldrQmi6dhLC2c?=
 =?us-ascii?Q?U8CqjbYWLwzne0jboS+G9fy18jneivXW8SpkONt622hBFDo3WY8PJOl7H2jg?=
 =?us-ascii?Q?MvJ1gGShkBuzdRNQhgUQeXWrhO/NUIqOI6TV8fRsNrNtd04Jf8mp0Xbx2CpG?=
 =?us-ascii?Q?SBzPPbuFrMtg/Bm9uw0EJAZ50knuOwSiBbfPNpcPdZY5hviY5TkION67YJgX?=
 =?us-ascii?Q?RQb68qEyXS8pmN9lucBajIOmCFOPn54e/P3Qv7BnFsNEUeApgzTRD6zuBpoA?=
 =?us-ascii?Q?YfqrdwKyOglI27NkrEn2Nk6voumx+QhyLuiYq7GZW1u4LNoy2wt4NzsBe/Rc?=
 =?us-ascii?Q?2N62GW7qyvl5NnAFqYUpRMH4z4iCCAY0QdxfwLgx9XlJpX4QYwjwpbOJxbHe?=
 =?us-ascii?Q?MhBWgF7rGa82aaf/wGRlQEfzMMVFhI5ebC7Fg/Z60W/vWVTTe8BS6JfqIyOT?=
 =?us-ascii?Q?PxeeyCwqk2X5bZMAMWk/rTL1UDfM4BfLbdacDcNm4ZjDTSgzioRyqOm2ag8B?=
 =?us-ascii?Q?RJ34uCzX0XNLckUc3BsOwEXrkit+VWOwrIFsM+nBghIng9M+uiuGgDzvlKPf?=
 =?us-ascii?Q?k6WykR3ftPco3nUerQvb9R5+yv55nMC+J9wkaYGi6tlnMx8HtzrHo1Hgl75l?=
 =?us-ascii?Q?sWsPW2MdPpCNGXfiSMIZp5F9pLFdF0Nx/1JUN02t1xjMveZfjxMxBs6f0zGG?=
 =?us-ascii?Q?XjmqM5pFNzlvMpCP0nCGcBVE7y+j8dbxsS4Lc6fqoVV1BBvxx8hcyy+R3os3?=
 =?us-ascii?Q?UoWvnh6Jfe71uu3JhUYBWfgdh87xIDP25Sc7KaeeuwVLDVOTJbvG0St/vhz7?=
 =?us-ascii?Q?ZIo+MxEUzOoW/SQElTLA3JfqFx6d3D+PLi/8Er0URGNCLdIcxlqvk3CPvFJh?=
 =?us-ascii?Q?QNXWxCQASW51Bd4bT492wbW1KFhoihCa6Mrvl+DEK555RMPo1iNCtnhegU9J?=
 =?us-ascii?Q?bbmDm5EOjsPwoGjFZFyQMJM1JigiP9kbkYbYZgjZXf7AkYOIXU7cqi/fstUA?=
 =?us-ascii?Q?2P9pq/38ARN6AXkoKIpg7bqOn0WItuWWRC/pzXyUM8F9XcJXMt1oS6li/fKL?=
 =?us-ascii?Q?2XtyuAMG4quvCyz3Ka0JFN+IH759s/AT3DC6PUpLPK3RwawJsU96lmw9sIMo?=
 =?us-ascii?Q?tEtkOM/obBoZtoQArOXXdNJJ8ezUAsmJM4cA9bnzPMGnBWNpvhpmP1YzhfIB?=
 =?us-ascii?Q?Vq2VgGjgwDS1Hmfb1dJkKaRGmIgyXIpPU43DwFCiG164AGdDzTwGBI4KUCPK?=
 =?us-ascii?Q?BvYIJ/X5A4v6KjnGa9Uhaxhh433mBHkh5ANxsWIbhe75En5T1R7swOhvPyKr?=
 =?us-ascii?Q?Q4ZMUwbFaGohxRFBUhafuF5VwVoSbf0gvjDcRwHJZfiM+EiD9FK3S4gOaeQM?=
 =?us-ascii?Q?5g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 506e2335-fa03-44a1-1dac-08db8f2d91da
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2023 05:43:28.6086 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tyDM18ujXgKDadGbJEPN9geQxMqLX6ZYaf60kAlKjMhahqQZCZwB/d1Ugx5iD0/6u+0R8M6LlvfpsU152XJpZ6S3Xc/R5rJlVItPeEesu9DDhaLHt99aRE+efQE9cfl8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7037
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690523012; x=1722059012;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xwyWUvzx77WWPZx1VGw6GtPerclngOC0nXJzMLgWegI=;
 b=AUkmUGQLX/8Gi0UD7zlYNtqvQcqSujZpemWGl3eQTvCOIxAoTebs2FXV
 LwIFmD7gaG4DLLxmvmHiIdCF+H/74HJRMTvKXXl4CGjsYG0l9MM4Ce5ed
 Wnh1ckLj7j/N8E+JQENQQ0MFix/RksoDVtYb3+OS7uhumnfu6vGv52aqj
 taSAwOE2/G7WOdYCU1RVIQM+8Sc3roFmeo5vN152hUnQjhhN8odddwoJz
 at2Fr35Kfc0qXPtZIkVfsD0gpISWSNvjjqdFKyamYq+JkLE+Idt3MirKE
 7h5pjhomORXpIDaYh+F/tIJvMLg0G7dFzQyks7FjtZHqDTaAKKQCw0Q+k
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AUkmUGQL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: Support
 cross-timestamping for E823 devices
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Wednesday, July 26, 2023 3:21 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: Support cross-timestamping for E823 devices
>
> The E822 hardware has cross timestamping support using a device feature termed "Hammock Harbor" by the data sheet. This device feature is similar to PCIe PTM, and captures the Always Running Timer (ART) simultaneously with the PTP hardware clock time.
>
> This functionality also exists on E823 devices, but is not currently enabled.
>
> Rename the cross-timestamp functions to use the _e82x postfix, indicating that the support works across the E82x family of devices and not just the
> E822 hardware.
>
> The flow for capturing a cross-timestamp requires an additional step on
> E823 devices. The GLTSYN_CMD register must be programmed with the READ_TIME command. Otherwise, the cross timestamp will always report a value of zero for the PTP hardware clock time.
>
> To fix this, call ice_ptp_src_cmd() prior to initiating the cross timestamp logic. Once the cross timestamp has completed, call ice_ptp_src_cmd() with ICE_PTP_OP to ensure that the timer command registers > are cleared.
>
> Co-developed-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v1:
> * use ice_ptp_src_cmd() instead of ice_ptp_clean_cmd() which no longer
>  exists.
>
> drivers/net/ethernet/intel/ice/ice_ptp.c    | 29 ++++++++++++++-------
> drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  2 +-  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  2 ++
> 3 files changed, 22 insertions(+), 11 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
