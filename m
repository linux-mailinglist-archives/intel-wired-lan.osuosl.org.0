Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DBA7D129D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Oct 2023 17:27:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3438070592;
	Fri, 20 Oct 2023 15:27:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3438070592
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697815620;
	bh=dSyBw9Gomb3Em1PggpW2z1z0hD92yx5+xBdLM9bLedo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2DWf2TKQjnT6HLmyZn7nfe7rOfwgJBYrNe+Cp08kay1Q3TwEv5/3qRMoxxtZD5Mh8
	 LFc1qmOTrqw5bFAs7wpx1W5at5YP+5Vv2IihYL8OcqOLhhFV///7yokdhIOLvg2xyA
	 akqp2bcPL7oVTnusNHbOpe+GHPYWyVvpENr3svxkVD/8XpJCOryFZMUSS6+UCmM/oO
	 DUpD0fkAeHaXIvLItJYdnKhD9bVdGpKWrpVnubSJ6IOeuHYIklcHuhy0riB96QoItM
	 E/rXlme5OqL1oC4SSsp/dEOZCnPZQ3TrC3PuQbLz6fSw0WEEePbBehGQpJoqKSyrVs
	 VhcHWZW0+s10Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 27w1QOJj-q_Q; Fri, 20 Oct 2023 15:26:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C637C7058E;
	Fri, 20 Oct 2023 15:26:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C637C7058E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1905A1BF990
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 15:26:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E151943397
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 15:26:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E151943397
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OU3KaYMUdqfo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Oct 2023 15:26:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 06CD740232
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 15:26:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06CD740232
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="8080146"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; 
   d="scan'208";a="8080146"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 08:26:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="707254710"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="707254710"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Oct 2023 08:26:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 08:26:49 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 08:26:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 20 Oct 2023 08:26:49 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 20 Oct 2023 08:26:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WZq4y3nBPqcTrX+C2Cv5OS/g2e85D08oPoXXmqo2DZeBbgbRbLbY5o1PYNUUieCwfNBS/nUuCv/3X+gIJVrpMf1kKZOg7+AWwhRj5rYgLLwHrpNmlDFI38e7PYkejodckjwrtztXOEzwg0kX3wlpoPauie7mI7f7YColB9j6NRC+pQAL1n7mZuoe8OO0EgOg4OM3ape8D8UHcBmAikDT67E1KBI1Gy58xouoq6puphL8DTxKJK4wWWCrNJJxaAEmpfXBYxhl0sLF5XYWKQaOPaT5CNysErYTCImaE/VRknMPVBqRsa1AtXUa/fRQojdQF49LEWXwjT9g/C4/B0Wing==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FcXIe+QmqjafyycVE10ZQMxwyVBJPQZRQg2L0ZScL/w=;
 b=Kbb91w0yc5p/mb4nqhWHsNLs6lBOJyOdw13D2UsAwJb/zP3KyGhwh9negChvlY0MmPDy+890sVjRaPGW7JW2E6wObRvQxsbgPjVFUxVWD4A/ZqtNUsPDzBC/6CSH7GI2VY4AeZ8Kxwb9Uvys1D/p5Nf9YrCL34n3gWKCAzAKPG7AozwdFD4ZrceyCov8IqShwAtjW8HsG86dOQpQgh414YdwvM8HVCMxcFHuKRlzU8hK0/GXtc4yjrEaOJXjDthQPIy3P4zfQXbDeqaZWaxorq7G/sGyG9rMqJTPeQfDbt4Ap8qX6aEp1bU5BrIE7Q9AnLB/DPCPqT3+n4kNZi69rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by DS7PR11MB5966.namprd11.prod.outlook.com (2603:10b6:8:71::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.26; Fri, 20 Oct 2023 15:26:47 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::ad15:2445:10e:7677]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::ad15:2445:10e:7677%3]) with mapi id 15.20.6907.022; Fri, 20 Oct 2023
 15:26:47 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Kubiak, Michal" <michal.kubiak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] idpf: set scheduling mode for
 completion queue
Thread-Index: AQHZ7XEJWw3h4IAAU06hV5+AJeB2QbBS+ESg
Date: Fri, 20 Oct 2023 15:26:47 +0000
Message-ID: <MW4PR11MB591162F65D0EA2CCC606A172BADBA@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20230922161603.3461104-1-michal.kubiak@intel.com>
In-Reply-To: <20230922161603.3461104-1-michal.kubiak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|DS7PR11MB5966:EE_
x-ms-office365-filtering-correlation-id: 83939c51-0b41-42a1-8bf0-08dbd180f94f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u+i+awQ2H7gdPkvuuOrLYP87qimlrEh+ypJ4h3x/kQnGRts74+aZjFfm5FOLlj604v7Ix5iebv9wz7TlCMKG0ul6QAyn7aHJ6A0n7PRzHMNbeWjca55qQx5hPbAkO1u5AArLf5y4IsYDHoy4ufGCc2Zh0CeCnejovyMZFaoVfbp4wUnTIPYc6Kw3B1JKKPqQFVza1LspaxQd91+TGwxy2Tb/fBX9g+GAib7ATRZWKt2gYbNOafJhQmT9VF4sMZC0TCbMTWYQ1QW6PiqOtEj3teDrfXfsQKiHeD7HzKKkJBqdGfJSwvI/H00IxrCBFZWkraWEHZgn63D21mvlywRk0Bo9CU/HikerLAykKQTzRKOQVjJ3gpcJjo4PSTCFKF7R6BXspjK8sdG4+nFeg8McJYt82WLFsmeoX1Br7PktGKH6QHhpiiH4P6vreYyb6Mo0tsm/OmBxF/aD61qtbCu6AFZSJ4tVTDkwElhFlxhReQy2BVXBC8B2SBikTsnJBIAdtz8ZInYfpPu71vq0FRRt9nQcm2RnN0dSFs0nGxjj3w7SpC2POdLF+opi2Q3bB1OXnmsqvobH2jWDthZ8elmSwgGn7XBKM3ImJ0alrAFEHTSj1KgTPtDVEIOx0mgwGAIe
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(39860400002)(396003)(346002)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(33656002)(41300700001)(55016003)(8936002)(8676002)(4326008)(5660300002)(52536014)(2906002)(86362001)(53546011)(6506007)(7696005)(71200400001)(83380400001)(478600001)(38100700002)(316002)(107886003)(9686003)(38070700009)(26005)(122000001)(54906003)(64756008)(82960400001)(66476007)(66946007)(76116006)(66446008)(110136005)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Rkrsrh4+8WXLSEFsvH3FhczcCc1Xf76xAjQbbrvMkfWaqd/fAxt40PGPJwnK?=
 =?us-ascii?Q?BPftycmJaA2kyMVikaTis9A/x94KIwpPWsK3H4Dy/P48Dq/WGHRwldvjcvnk?=
 =?us-ascii?Q?YWmLzjGhmxr/BHLi3U4vhLptwU2wOz3HVnIDBhjDq1aj6IstEFFszAKbKfa/?=
 =?us-ascii?Q?KvudTrJ/mo58JpkiABNjwZRWfgdaapvBkM9jZx136I/hX6/pzGR51fyutL74?=
 =?us-ascii?Q?sWIgzrBFxojz1BNQbe7LUk2/3lUFAjxxco1QIa7bWh3u86ZqGdlvVcTieqaZ?=
 =?us-ascii?Q?TArXWLknDxeRa8muEfMEOiKzoy86Ba7mq3x/bYyonshZvced4iyOn/XLf7Vf?=
 =?us-ascii?Q?2CHA4m6WGc5xiNSmvktE+8OTi3Iu6ybC2YCRdM22T5Xe+LFgTWsWHd88CGwQ?=
 =?us-ascii?Q?Nu1fT++weSECQwevEvodjO+1A8fd/5n06DMC9k1PAJVuAoszb+1eQw+VrlP6?=
 =?us-ascii?Q?Oegarkqf2kki2OGnBH8cyZBhmMqp6GDzP2EtY1cV7ux3gKDWE3GgHKLW17xw?=
 =?us-ascii?Q?okDjfW0WDzdpPKV12AII6hb7uZ5vvdEigs21nGLvBlItR7lUx6GHSrFRpymi?=
 =?us-ascii?Q?gl64CuLtHlqxfNjPAkCtUmTNIESaMiK+X2kG0/QVNpUhnjCiKxhWdl2kYg1L?=
 =?us-ascii?Q?e07AJEsos4dMXZ6Xm+33Wz6JxGHMIjJSM06pBYeXtcPIbMpI9X8cJE5gPZvB?=
 =?us-ascii?Q?SxQMuhZV57Y+80Y7YcXl9qPxWhULOgysuXBM897XM8iejqFbcUtFoBcb8S1p?=
 =?us-ascii?Q?QNfgWSRklhw6aAFOmv8JtcanMj3A/GWtq5whtAAkCL1uwGOk7UAd2b0p518Y?=
 =?us-ascii?Q?8Z0qWs5o6AVaoZSlwC7wOgczdrmUP2JNgU4ac5A1Isu/TijqfBZDdUQ+s/gH?=
 =?us-ascii?Q?npMg68KZMyuhkiCokcPYqKLbA07raXqqEFs2kX1Bg8curj4XLXhHNKyG45n1?=
 =?us-ascii?Q?hHbEq1xkUNHEk+tOVDLe4oCZykURaGdrkw9Fyn/f8g9i6aT6BT2hvfWM3aqN?=
 =?us-ascii?Q?ugM3A7oQjiVBV6NY49kpwlvUGtEbYAUMfS+NjRBHEb5H1TtyMWX9EjnjBUf3?=
 =?us-ascii?Q?VyiOQakTUsQOiLeLeylLcJ13mfF8NEs8oMdYNxTmXMh3i7Gsn40DZ3CXntYs?=
 =?us-ascii?Q?tzccVs/8PaUgN5JsR/X/fDjDWojcxU9/AWPzO37g8i0bdc1F9rWI0/EWhX/b?=
 =?us-ascii?Q?3EUhK1EoijkN86uTFz849+1wWGdbWAFklMHP4t5UGN4GsXASYXEEFcqfl16t?=
 =?us-ascii?Q?ZODJuWg4tUKRaGiwFZ8FsHjn8iEOTvxiWi8r4tesdAzZ3yxayCiH2nLFgGO0?=
 =?us-ascii?Q?m+QXioNonGgdJQMDYSbE5jyjH6M8OXgFSt2eYeXicCHAyfcFPC69x52JN0c6?=
 =?us-ascii?Q?iGemy+etlTKKh9+ONtpGW4dZn0A1dvwzCF7MBbJhDzZc1HJCsV2c29gV174J?=
 =?us-ascii?Q?O0BpyMZSWeTejZMLfwHI59zFeJiTe3VwoL8FpmnOpTMDl4DGkyqYtnCY7FTU?=
 =?us-ascii?Q?d72Riqn5V+5HxzJd27KbQw3Uo8oTCMzsxT2NM3m8OJ8pnpKAq4T5Iv7maPYk?=
 =?us-ascii?Q?IFYG98dV4G7y9uUZFLGL8RF2guGn1HEGzYwM+mF72YuKWlp5t7YOBZ12id0A?=
 =?us-ascii?Q?/Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83939c51-0b41-42a1-8bf0-08dbd180f94f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 15:26:47.1282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: drFXLHCCpHIlbzfs3cVm8Ev/iMB4qUp83grmO/HJfjvpwqLXmhHy2ML7VwuupG0MsetL2Esk1c4foE89RRBPKJqxv1EVlP22xQAA4Oj5KKU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5966
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697815612; x=1729351612;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xiyifNavXjVU8+evEro1ykgvQmdF9x4cuufEpxjfHsc=;
 b=grWDNk62ksBeQP2CRIcShuynydvezuUJmoDSxCkJ9jLQ4e0xSVSwnILL
 HOe3Q5BJBQFVmwQXeHxDAqCzKk7NbhXx2qNvFQ4aqs/Yv4mN/TjzuGSPR
 DpqR0tEcGJ7GfCq4h7oWA9o15pqdHzlHSCyfPWurfFOUa3E8tYCFCDxn3
 XntCijy5TdaRztldf5YD+qHHp4V2PIaxNzlR6aq4Cu9rhzxLOTbuB0uRu
 GG8QIw6iTl2guUfta8p68zZ0hZykVZdUWytZll8xscblK25fMxcwnsWT2
 D3JbISA2g+uKDlKCHeYFp/KNUL23L5qiu9cawwkY5rBB1ZjygG2cEXic+
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=grWDNk62
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] idpf: set scheduling mode
 for completion queue
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
Cc: "Tantilov, Emil S" <emil.s.tantilov@intel.com>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay,
 Joshua A" <joshua.a.hay@intel.com>, "Lobakin, 
 Aleksander" <aleksander.lobakin@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>, "Brady, Alan" <alan.brady@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Kubiak
> Sent: Friday, September 22, 2023 9:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Tantilov, Emil S <emil.s.tantilov@intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; netdev@vger.kernel.org; Hay, Joshua A
> <joshua.a.hay@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Kubiak, Michal <michal.kubiak@intel.com>;
> Brady, Alan <alan.brady@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] idpf: set scheduling mode for
> completion queue
> 
> The HW must be programmed differently for queue-based scheduling mode.
> To program the completion queue context correctly, the control plane
> must know the scheduling mode not only for the Tx queue, but also for
> the completion queue.
> Unfortunately, currently the driver sets the scheduling mode only for
> the Tx queues.
> 
> Propagate the scheduling mode data for the completion queue as
> well when sending the queue configuration messages.
> 
> Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c     | 10 ++++++++--
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c |  8 +++++++-
>  2 files changed, 15 insertions(+), 3 deletions(-)
> 
Tested-by: Krishneil Singh  <krishneil.k.singh@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
