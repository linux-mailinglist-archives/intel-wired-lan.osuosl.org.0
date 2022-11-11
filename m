Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE62625930
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Nov 2022 12:17:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C721D40432;
	Fri, 11 Nov 2022 11:17:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C721D40432
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668165435;
	bh=SGSbdwFIvAtjE0X48/K5tVge1xS3is4ed+DSoE9kl9U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LqPo/CiCz+dQPYB+ZCv5NM91KMxJryp5iqYYKsptMDeQ/WoSptTw/aoUwCRIbAkPl
	 N1w8ZZsnf7yar6c+7xICxrSkEzH5u8weiijTY8/oddzy06O57ffwMBnE2Qj6pfKGEN
	 WYwDtIoSQJpf5f+5g9/C0/PAAkSfCVnTgLm4zoGzucph3DJm3iBeXFd7P7IT9xSJrZ
	 Q80zpJddIH5dmvu0b/P0pomWLtDQhQD1IITZZJusAlSzYuKIdAkQiBmnMK5Y8Qju4q
	 I+Kqgp2s1WcRkErCSqMnsLQ12/FpDyG1j1YciLL+pixbPXQHPKWVMBJaSkqoMXtEP+
	 ZMWnoi8LGAuaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y0ckx7pNQ69R; Fri, 11 Nov 2022 11:17:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C43C64015F;
	Fri, 11 Nov 2022 11:17:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C43C64015F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 82F0D1BF30B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 11:17:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65B964015F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 11:17:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65B964015F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x0VJ6crIRzMc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Nov 2022 11:17:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B223B400BB
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B223B400BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 11:17:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="375840936"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="375840936"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 03:17:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="588542360"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="588542360"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 11 Nov 2022 03:17:07 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 11 Nov 2022 03:17:07 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 11 Nov 2022 03:17:06 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 11 Nov 2022 03:17:06 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 11 Nov 2022 03:17:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=awoRTNFeTIzPs5WWqBDQn5EH6fXyECeolIShtdGzJeWY279D30uoiNzgBXqEDzHUjidAR8esmvsTbqAz+5+Qm5yxK/hh7j/BV+m2sDCKyAyXbP+ete/GqZ5o1cvwXVW57XBenvWUALRDOverWxjXfSu7U1ZKhlDacViRvEkN3Sf0Lv8lvoNTZMJlwKCTZq08Vb9ILZjhxDCo8gXsinzM9XNqr9GF0egnLKJcfp5gB8qJQ0bIs54D3Y7cZXlMf8D35y/X2Okpd0lOTXER7rYdPRHtOahjEZrmitINe4JbSj1C3qM8CoCphB1k80mG6EUZCccntaIxTsyzsBD4eLa1Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mTmZ5VRh95ni0/zKf7i2KOEBa3oM72mGH29NGK9Kj60=;
 b=Zs+UghU12KEVcAOC9oVUXLhj17m7mW1ebbO4g3Ekgb/R4PVzfFLjEK/VdCRmYC+VRxBipp5uOerBGBDgvYfvQXQFs2WuGu3C/xC43u8rsSBFYCxSfzjlFGU9kTxto88XLdnGm99afB2Z09Lm5p2S6IUQWiGYRw8TCrkJfWZr/mStLnDdt28AvFj1yqcNAod3YQCSsKKYmZmVc2FCnMC4u2F2bcssnffUIqmB4UVRs01Q1oPO6u0iwTQAbvncbU9QLUVT4IN7NZUi+8a7WY4wmXmsdGPFUUChZsH2EIbpAjDMBOzR55SFnSsPkQCGEKoi6fxtEQPYSIyYf4UIz4skdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5822.namprd11.prod.outlook.com (2603:10b6:303:185::9)
 by DM6PR11MB4626.namprd11.prod.outlook.com (2603:10b6:5:2a9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.13; Fri, 11 Nov
 2022 11:16:57 +0000
Received: from MW4PR11MB5822.namprd11.prod.outlook.com
 ([fe80::c09:ac6f:e91e:8f81]) by MW4PR11MB5822.namprd11.prod.outlook.com
 ([fe80::c09:ac6f:e91e:8f81%4]) with mapi id 15.20.5813.013; Fri, 11 Nov 2022
 11:16:57 +0000
From: "Nagaraju, Shwetha" <shwetha.nagaraju@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: fix xdp_redirect logs
 error message when testing with MTU=1500
Thread-Index: AQHY37RjM4Ec1AkqSEOZ+c5KLkyDJK45vk1g
Date: Fri, 11 Nov 2022 11:16:56 +0000
Message-ID: <MW4PR11MB58223F3830183718092CAB3E90009@MW4PR11MB5822.namprd11.prod.outlook.com>
References: <20221014100232.410542-1-mateusz.palczewski@intel.com>
In-Reply-To: <20221014100232.410542-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5822:EE_|DM6PR11MB4626:EE_
x-ms-office365-filtering-correlation-id: 77f0cc6b-33da-4f59-d70a-08dac3d63ec6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1qC6EGM5Xxy5ujNeD9DSVXHB5bZlyWkDy0FElhbp4DW3Z5IDSP9hTY504VpaLCmngVp+Nb/AHZNhGKSg7DwlQl3vSnEYdSXCr5wxtWPICfXcG5+JNt0u/BA4HVUnV2/qREoOKk97xnRuPWEXZnbtol8kP3m8ymD/UAfggObBchj0SB0pj92cLgNaOABTECUFDAisnFTKTfD994daoXKx7daqREi90WnPWwHSwMDgD9EgwBP2w7ue2y3cZ9LtEZYSWk8OFwIaf0ckm8dvRr295eQpVFLw1XVUx7Erk5z8FHRexC7w1daTzO4J/cx6HqGdHU3fK4oapNxbkm/0fBa+LTjH78YtDLLorujA5skWWWykyj8SI0N7pmnXn8l2Uk0NhDsms9Nl8asOI2Jvte/WxXY5QglPXzJXfL/uj6Nr2Fe/Jpu/eJIs5rSoFUfQwvnqPsyg5xLAiEbMbwyHHJZj9kCNKX7JoziMNkrVir6I0z01OmdI9OQIoFBR3VEnkAzbYB8NJ3Q0nNW1ylcrHMX4VeppC/CjeoMc/NPi/RzSgFhu9TSg2q76nz4Ad2Lzo2PWbPJtbT3nyuxCi+V9NKBKVfln1RW9tGwrWZqImMEZtW02XHij6/cQowXQF2Nclo77skIBQsVvlKq5zXKHzs3/Gtr3ztfctXWj/Zzsr1CLQ9ysE9CW+eCU+ZFAA9fK7lhj4hyuFQIKEHYHdVR3pZobc/Svpu1KK7/q3sPjUkgR99h+rMaDrJE3ms1Lr0qbdZakPtKD1ip+GFmyWM+71UQeIA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5822.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(366004)(376002)(39860400002)(346002)(451199015)(82960400001)(38100700002)(38070700005)(478600001)(122000001)(6916009)(8936002)(52536014)(7696005)(6506007)(316002)(55236004)(66556008)(53546011)(66476007)(9686003)(86362001)(71200400001)(64756008)(66946007)(41300700001)(8676002)(66446008)(26005)(15650500001)(33656002)(83380400001)(2906002)(186003)(55016003)(5660300002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aUxz1+hgCt8SjP7f/YKPBdInan3dpTc6oisMf5tmRvf3tMzTrDzC3Z3j/fZW?=
 =?us-ascii?Q?f58htovhfpNwAB56W9CK2fpsvSUceP2rAOrCC+2zso6WdJoxMJ5nz9WTmIiE?=
 =?us-ascii?Q?WBANulW5kO++f74a+c6b8gDNTcZ1x1dW5TcmZc+G/OU8R23TxWW5qI8Ugw5k?=
 =?us-ascii?Q?gclwGxHWJQhBG7MXFR+srzKioj/NsgufFcOdDnOnx3BiCabn2ubY/+kh82DD?=
 =?us-ascii?Q?M29V/1ac/Qrr1m+Y7Gvr+NV7z7K+Z1ESiEIZRx1kWefYYjrJgrpMhof5dl7C?=
 =?us-ascii?Q?RKe57lmj+doMtsqwIuk2i+huSG4gZnEzaAB9SJ/n5lBORCmKCt+ajd5WANiC?=
 =?us-ascii?Q?gkEFvT41osnqgNHH3O7RwCAI8oQh0DMl7rrPOxD16dFRjn4/zrjO8yQzBMW6?=
 =?us-ascii?Q?PMT5XCzVcg0YjQsHjmBwDeISD4JBYajFutM7p9bogUW1fkeIvEnzagbncXo7?=
 =?us-ascii?Q?H7wHHpMg+WiXmyS/nPU/m/aFrOrPLrKIrVDmDBP0YsKHz8lQfGtYLvUXt5zl?=
 =?us-ascii?Q?bCdPg6Wuq6oveHshcunuvVgITzQOWfnTNLE4cnfZ+qEiKXPEJYXz4B3AT3ef?=
 =?us-ascii?Q?f7eP8kbH0l1TsL3lulv8WrL4lS2FbgsFF79+IG11t0IQXPbIpgcGuNPMn9Of?=
 =?us-ascii?Q?S6tV1Mv7A7GswxHTYiLR58OtzXDP7Igj7YaeJZWOY7g3RS9z9W33VBx+agaK?=
 =?us-ascii?Q?N7GaCD5MBBVzD3Ydtvip5lFJc4TZOruBQ2obtK+SmCHHBkH8gc4PQzgIOSqK?=
 =?us-ascii?Q?9WY9Np9OyKafEQHx1sRyLWzIvK2/ryDuOCJcA+ZQ7n1r7z61wehXY5BlPR58?=
 =?us-ascii?Q?zy4lw8OwXixjVub0ozzbBNr8V0Ovt1CmPr2vJMSIEiAk0Vnoc2CDsSYzd2Lg?=
 =?us-ascii?Q?+Sc2O0LPtRL5o7vJaPKMZ1jEmpXA3iU/AzGRIOt0T/2+Ks2Cm69oJ1Ur3YrA?=
 =?us-ascii?Q?hDVcMpHOLkSUCzyo0x4lxPcMumTqhW+3/F6JDseXVjGHRPoH3ZJ0AgVCb/ot?=
 =?us-ascii?Q?15fvsexv2xf09eTAwx8Vg1r6jVPm69y8s9ROW+osP6GLBsjOxSB8i4Dpym/Y?=
 =?us-ascii?Q?+7WblsN3yx8dd1P59qRhGtSOdxeO9IZkjvknzy9P/JWTKS93CgkHMh7yDopM?=
 =?us-ascii?Q?9t4ASXjlHJsRe5k3sTBOCQhfsn6A7T8a3JBYMQT1SdPhwU/rPcxUIUFqnIyX?=
 =?us-ascii?Q?3XMMu40UQ4oLngm9GZSaEZoJ/l4Iot+zsTdaJ10ViGmvcJQ6vz9t1lENFIkd?=
 =?us-ascii?Q?k+/rLwF4LOzLdfJUIwHbDS/v3psRaLnL5/jPV3c6zilAL2zVK00BG+4Wg7CB?=
 =?us-ascii?Q?qyKrpR60RnEpgKyrQUoF7Edu47Y/2Q/riGllzPb1o54SUBYV/ZsfRH2XpCi6?=
 =?us-ascii?Q?fY4YTEeT0TnQxLyZtPFbQX087mXseb6NAba0589I4PHU55VwWZcvwfZGrvIR?=
 =?us-ascii?Q?wd/j8htD+RMUHj7J6QQcDpFCEWtAYPJ8QfXPB5KL6UzPV3sD85W0Ugonbw1M?=
 =?us-ascii?Q?Rp3iYi6L7vBcDvXjr/B3NMj9eoWS7EASuf+AXd9e4UpTOTFFwY4isYEH8ez5?=
 =?us-ascii?Q?yhTFSKcytvJXeLb3ahbngtNAWwODKhyRYeGghMUs?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5822.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77f0cc6b-33da-4f59-d70a-08dac3d63ec6
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2022 11:16:56.9826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r85bD84PQOT5ZKNQ8IA5c3EaO4XotIIJTrtknUMxFXmwETXWHBJUz9JO8yhOlzwqxvF5g7rtNcMvkSiWgoDGa4C0yZm1/NmZ8o/R8oSUcQ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4626
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668165428; x=1699701428;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zKVe0CEcjeljvekkCsbBT2O4r5AoOyb/7hNF5FRls1M=;
 b=PZP3PlgwpjDxEXpdppX2zXIHodx/JUE8YbRLEOs23BrPJ6Q697kai9bh
 552ZWVcOiaW2IITN/tJK6YPgkCtS8dDN5244m+8UEFkCM51Y7qSQ9ojs7
 W52FJWLY6G9dMjuExbwbgGsXj4QgrTgpUmkkiDmVeAPlLKQLFy+8V1xmn
 s6ZKz1LnMYq0pbEW4YVNV5FUgoPWWr9SmGtDwXnIpQvpyBowOzx7uLFzv
 PyAc0a/ImX/9ZONupMjvoFwWqMIDijgY5Xvz7AS0FJlzDLi6r2LBSNBCk
 iyKkSwf/6Qiemx7u9rj5AGYlo6OUNWoc+nkdyebTA+ZnPMaSCQepKrNg9
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PZP3Plgw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: fix xdp_redirect logs
 error message when testing with MTU=1500
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Friday, October 14, 2022 3:33 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Staszewski, BartoszX <bartoszx.staszewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: fix xdp_redirect logs error
> message when testing with MTU=1500
> 
> From: Bartosz Staszewski <bartoszx.staszewski@intel.com>
> 
> The driver is currently logging an error message "MTU too large to enable
> XDP"
> when trying to enable XDP on totally normal MTU.
> 
> This was caused by whenever the  interface was down, function i40e_xdp
> was passing vsi->rx_buf_len field to i40e_xdp_setup() which was equal 0.
> i40e_open() then  calls i40e_vsi_configure_rx() which configures that field,
> but that only happens when interface is up.
> When it is down, i40e_open() is not being called, thusvsi->rx_buf_len which
> causes the bug is not set.
> 
> Solution for this is calculate buffer length in newly created function -
> i40e_calculate_vsi_rx_buf_len() that return actual buffer length. Buffer
> length is being calculated based on the same rules applied previously in
> i40e_vsi_configure_rx() function.
> 
> Fixes: 613142b0bb88 ("i40e: Log error for oversized MTU on device")
> Signed-off-by: Bartosz Staszewski <bartoszx.staszewski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 42 +++++++++++++++------
>  1 file changed, 30 insertions(+), 12 deletions(-)
> 
Tested-by: Shwetha Nagaraju <Shwetha.nagaraju@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
