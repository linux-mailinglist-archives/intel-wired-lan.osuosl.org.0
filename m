Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2F46E9D8E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 22:59:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B6EA540BEC;
	Thu, 20 Apr 2023 20:59:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6EA540BEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682024383;
	bh=sSsABOOcAcXQ99r5ru8wWdjnBSzMHUKaK4RW6XTvjeA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fLWfRxUg8IpMgmXdSsBaXtFvaFpgi43OxpVIGytQUmH+Acrt2V0xpJZUyQUn39m3G
	 9lqHdF/ZnN3TPM9VskIhi7p5t1aPolj5By2alc63shjT0kAUq59ajSSyP3f0nrFWfF
	 ZQONgqhNJzjrMWgoedQobmS47M1Gxjj1PU3MXM5WPCNFJkn83ELGctAcEjD/wghX9J
	 8USPRhErVkDUTmV6ht6JE3yHqktt7Aeo9NurY4/cY+sCoWwUjluYdzaUyVvthR5l3N
	 SMvqhwWnBFrl2I3ynK1pqQ3AMMTRTlg7YlQ1fU1X4olgRwCYDZpjL5poF/TUlYvXVF
	 einpztKHLt9pw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ss9NZAyA6QsA; Thu, 20 Apr 2023 20:59:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A9258401F3;
	Thu, 20 Apr 2023 20:59:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9258401F3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0F5FF1BF982
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 20:59:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E66D4417D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 20:59:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E66D4417D5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eI8DTQqjhQ5v for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 20:59:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA186417D3
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AA186417D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 20:59:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="348640442"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="348640442"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 13:59:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="694713947"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="694713947"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 20 Apr 2023 13:59:20 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 13:59:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 13:59:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 13:59:20 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 13:59:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xxe3altjeNjXl1MPFe5EwKoJqS9Q8W2PU72pa23oeBf1r9gmqwFFHiyoWwGpNASSQdVWpZQbdKHk/s6zjXiS+j0KR3p6JIr7jYqLRxKv4Y2mWLtFUdvO/BAab6m2PaVYGYk3u3CS+D0YtDnwL24cku0Frpv+7JqTzYqY8r/z1ewlEghgm2vyhEcQOVzZ6gsMejxd6vqkTfM24dTdd8nr9fj8VwN4265FbKJxEEqZYxmJcrTqg6nc+WwI0wXVPbqoMUCQolywEbhnx5d2ak/vqfSArO6FSt0ZPh/9rcWsXrUe+UsQL9uYtJgkCRUjDy6wBiM6Gn4vCOXF4SJZ/aewAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rx5GmBFq7RAn41ZdC0QCZeztvZEl2XA4RnfuVWx1j5k=;
 b=AVAnxjLafWrLLfqqr2ChNe3PYCZlUUQmTqItFQkCaRCl8sLBECQBrLBPrEi8H4PO5vwcc6WBCZDKRs1fzPVNFGvWqGLoa2Qz8YzhBGq0Z7oioupyzHwseki/kmIorBgv7vgoXQM/geKnCv2ALFAmLT6pU19r4ugCorY9jH95OCBzLqwwo57inAY2/TnYJnCnXunGArmxZrGGQC/BfmCd0ERnL7ArihprBF48/sMm/Uc+4CoNpkUuGaTAl/rAY8qgzoRA7rwpnVgU6YBmMoEFwSy3o1NLAYY3XUXkGFp2N4i9PmQ9ZuF0oijOoMis+0+JrQcaFD0jdS4gnQ1wl0W24g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by MN2PR11MB4517.namprd11.prod.outlook.com (2603:10b6:208:24e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.20; Thu, 20 Apr
 2023 20:59:17 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::bf74:c4e3:c731:b8c7]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::bf74:c4e3:c731:b8c7%6]) with mapi id 15.20.6319.020; Thu, 20 Apr 2023
 20:59:17 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 3/6] ice: remove
 ice_ctl_q_info::sq_cmd_timeout
Thread-Index: AQHZbRe3CFrnkZMs2kyfh/3iIFrcpq80uOyg
Date: Thu, 20 Apr 2023 20:59:17 +0000
Message-ID: <CO1PR11MB50282F4A4FC1BE5C98A50D45A0639@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20230412081929.173220-1-mschmidt@redhat.com>
 <20230412081929.173220-4-mschmidt@redhat.com>
In-Reply-To: <20230412081929.173220-4-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|MN2PR11MB4517:EE_
x-ms-office365-filtering-correlation-id: 6169dcce-e2de-486d-fbaf-08db41e21b28
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QLAZ33T6t7wG+IrKHjnsfAWBrFamETzLZGuZTAeOvF9lXNK3X8C0Zpm7LOLVFkO5TC/Kl50/gC8E9R5AY/Qsli8266MB6LbHIGl0t7qGL+mU72aVb+ugqYuY+3oqCIylLHleRCDN0g2FhuubfUQ56T3FcDaDMDoPdZD60TiKywdabm7Lrsm/N3hzQtKfO8B5gMbUusP/0x2O25WpvlM1siwfWcSPWvcM+XdiJugb9vVEfXAc++nF5Gcj+pAjOVyDMo7tbO5/gxG8wLjTMcJJk5C7c+rmhJMsFO3mL6PpkpoZU9g5jpy9FnFYCttFHX/P1hT19tiLI5SGQnZee9oHCColaw5PV/Ad+M19XFo6deWSNFFXp0KluctkQOmZ4gd6xp9vuA0Fv8nwQ7dNr4E0QCr5htuYiohTT7PmF8pIolQhfoJK9Pay+tXt4j+NwXtj9L/X070oPgF/chbMCbh/xMti3mBXscNh+PWJn4zDEUNwr4qd3/Vv4H6EwI7knGnSXTyq0GtyKaRLBOuc/EB3YnZpC5r4WAZ4/LrbGbt34sevSm1rnsIqI2TH2JO7YoikdFaSXtnHUSSXu09Dp7/Uyl6emhgXA+S9KYJaPSMJPZWAd019TkvXWg6tqBA+4Vb4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(136003)(376002)(396003)(346002)(451199021)(38100700002)(8936002)(8676002)(54906003)(122000001)(41300700001)(82960400001)(5660300002)(52536014)(4326008)(316002)(66476007)(66556008)(66446008)(64756008)(76116006)(110136005)(83380400001)(66946007)(4744005)(2906002)(38070700005)(186003)(7696005)(55016003)(478600001)(71200400001)(33656002)(26005)(86362001)(53546011)(6506007)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hWRUMxffzHjBuBA6ShPAJCxBkN94tKr+hsBFNS63CRppQBKa6MCQ+NjiSYSt?=
 =?us-ascii?Q?quIEpMho+PHuOU1nAH5MdMxAU1LtLF44skL5a/PoecRQ5ER51ZVSs8wQsbMf?=
 =?us-ascii?Q?J3P18d3i5pDabvBBs2minSepRajTKNVQDVXDQ5SnmN/epyeIiLIaQWoG8Vtz?=
 =?us-ascii?Q?aWpVsNsxpudfVB7Kx+1T/c1VO/GKXg+vIVa5cRh71t5xzYRsOW/s+cCG7bya?=
 =?us-ascii?Q?ucNbx4N7FaKIRu4hkqQXgp71YHY/Ndc1AkQLAer1o4pE50wZrUWbZdaq+sHT?=
 =?us-ascii?Q?iwd2gOvoQ/D8qyS+AuOMtIeL4D0vKEL5HohN2XY1PlulfD5qDa1OHMQgZs9w?=
 =?us-ascii?Q?/hc0uELgYZ15U3VYMqbYk008xyRM6dOAKfEmKWNwx+Kqck6AHrzmBC5VDSiK?=
 =?us-ascii?Q?GHCsTdYgbsdH9RLvBQvEKuJKCBpSfHd4n/kYF9J5TIhoDCwtJ3dbfPA6b0Id?=
 =?us-ascii?Q?FsxJx3PW7u34H2s8NJw0hrD5HDuzt2LfhuRePo4eGcaopQjfD75qFsn1X14x?=
 =?us-ascii?Q?Z61t/f26Mg8pK7Lt7X2hTFEE1WCDEr/tyhF5oKcDk6FqX8cafFjFCjUf2IhL?=
 =?us-ascii?Q?Km/g/5vZUYw+6SBjMfICNg78Ujb1bnrgYbaAFO/Rwdob7n15Liq1mNpJhOiS?=
 =?us-ascii?Q?o8sP+V/Y6WoJhAkSy5/QSi4Ssg2wEh/R678VZXWl7vCCZ7foTeTacf03eeGl?=
 =?us-ascii?Q?TuK5SXJjqv7F8Egx16L52+3QVMaYCWV7SArwsC8jNWBC7eAWkKNQrHY63VJP?=
 =?us-ascii?Q?0hXNTr8sap/U+2uUyQny9ux+hoglu6VVRUisfEHIBYIGQe/5c9BwHYG+xsbQ?=
 =?us-ascii?Q?NsG6kzRMUTuNjuB9EP+1z8VL4EdKxXaCcKbEfg9IMaQjOeyYpVCIsFYZaQU9?=
 =?us-ascii?Q?jpvhPx+6CkLSs2uwvM+MAQnybKtE2BlNlpZ/ctHYJ5ifgKl44ypy2WC3BuF5?=
 =?us-ascii?Q?vz+Cl9tlMuGi1L+yzAJk4HNeVEfxXo+RNjkqFr0VuSQxLpCtHcIQAOAGtAZi?=
 =?us-ascii?Q?/8Vo7bqEz3jd5HX+TzQpsc3E9vhXZctLL09nH61oq5oAFe0s3ZdiWL9eA7aA?=
 =?us-ascii?Q?+Uz2RSkEDGTEOZv7Ff77NBQ0h71OiJUIYHdtJ7xbNhivfV5XhqFZdqeMHpmu?=
 =?us-ascii?Q?QMFZMNxKA8XhOwfzZw8caIXWLTGrHDc+YVUxqpYlDhL/H+7Cq0TpTu9GB21F?=
 =?us-ascii?Q?J0ZzOJ6r+sHubQ62NH8nPnkn5Eb2fvs83ALC5uGKEmes+ajnK5RQDgFC6EfC?=
 =?us-ascii?Q?nmSkZkQ/5t5uE5SV9Efx9oJu86TxOcq+vvP3F3GnwH1LKfG9ml4nrS0FHwri?=
 =?us-ascii?Q?LQ5SNvfWstEl8YpwXiB5RnMcc8bgk6/s7fFPh0K9wmkh69SbTFr6lC9V3Zn6?=
 =?us-ascii?Q?jgQc2sQm0MxVBuJYOgx+KOEH2DhjifvETTwneEKHm0UlovJyQA9TxAjdmxoK?=
 =?us-ascii?Q?2lJvqUmqSPSuUar2xgPgwG4qGxjBabmTD0eubO9cJ2r/UVrwBPdz5dQz5pbB?=
 =?us-ascii?Q?2TSh3kkDP45uB6bj+0rttMU6OEK31T5HOjq8Rg97dBZ+mUxRcIYkppOGfawZ?=
 =?us-ascii?Q?vEsKlXuPcrcjqsu+3HLCVT7Ww1Hs/lrIBgHY/CifmQiOEtdC+Cw9dYlIM+2j?=
 =?us-ascii?Q?Sg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6169dcce-e2de-486d-fbaf-08db41e21b28
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2023 20:59:17.6624 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kPFAi7KE0XGvss8EO1XJFFypofHvtxB3ypSCjiACbi4KjDoX+LwMpTPb3qHYqyLgQ7W9njxTrB4uCjgq2VYLvqAI/RgMaYuiFsxXlqjo11o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4517
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682024374; x=1713560374;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+cb28UIPeEuhjAShnENhElL3Dpi3HamC/6qH7WYH+Pw=;
 b=lnsP7OhAFBBa1VPcdR5P1jX4EHwyQDTSAO/RLPijk/yBGfgEuVl4HRDl
 so481nu79h9Z6otE31TBNRFsbo6Rv+Rftc2NnhJWa/wLEmIYfeUfV9zkg
 c00XlxU+YgD0YfId9vTrWNADx0UeaHzUt3zQXU85KIlV0cVcFV2sYOhvU
 u/F6mBCoSplTEsGx17IIUJueHycWHdrCr4s5AnDbV9g68ZzF02tuKVPQ8
 /oi8J8hSy36CbP04OKpK6tbXVyLS5bLph2E+brzpHF9szKjm1tfTE/G//
 4kcO7n+NHla4u6TgcnTwEEB0Nq940PtEAQcknLN9AME+DI2Z37WcVRw87
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lnsP7OhA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/6] ice: remove
 ice_ctl_q_info::sq_cmd_timeout
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
Cc: Andrew Lunn <andrew@lunn.ch>, Simon Horman <simon.horman@corigine.com>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Michal Schmidt
> Sent: Wednesday, April 12, 2023 1:19 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Andrew Lunn <andrew@lunn.ch>; netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <simon.horman@corigine.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 3/6] ice: remove ice_ctl_q_info::sq_cmd_timeout
>
> sq_cmd_timeout is initialized to ICE_CTL_Q_SQ_CMD_TIMEOUT and never changed, so just use the constant directly.
>
> Suggested-by: Simon Horman <simon.horman@corigine.com>
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c   | 2 +-
>  drivers/net/ethernet/intel/ice/ice_controlq.c | 5 +----  drivers/net/ethernet/intel/ice/ice_controlq.h | 1 -
>  3 files changed, 2 insertions(+), 6 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
