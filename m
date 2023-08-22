Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C2D783827
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 04:48:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 952A840412;
	Tue, 22 Aug 2023 02:48:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 952A840412
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692672486;
	bh=qysKVTAWkU7P8QIVnRl1uATCFHE3mhIBa/Pl+mFnv9Y=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0vG2ALih4ePVM3vGYRSk1EO2qCJfvsuyBjM3usTMV6yrOX2KUs/oBJdLMmuJsoMwP
	 DbxjnHW3s9XljE+LwjzxWxyBy2z2vN4TjbTYe3xubA9MlB0ds8ZioxIRnHJgIYFLBX
	 H02T2jUMKElBnaSue8iHgwTM0a4w0Zd2moKtJuriV22Ihh26eIx69o0ljIa1ILqWmj
	 E/ygmFYgnjn7Lbd7AkWSCvSQauGbSMjFDF4XYS6ArWQmIg+zXpsaKIiHYQ9tMVrTn6
	 JjfWSbvWnp2TCgcJn8eVlitn7vsrpjzbNGA1H9XghSZxZUc7NS31QNbT1QlOFVZaDg
	 yHrOyfFwBS/6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M7y5Y15RHTdV; Tue, 22 Aug 2023 02:48:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 08A804014B;
	Tue, 22 Aug 2023 02:48:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08A804014B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 245A31BF328
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 02:48:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F1415408E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 02:47:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1415408E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qXZF7iaITQuQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 02:47:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5B712408D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 02:47:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B712408D8
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="377513710"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="377513710"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 19:47:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="736049545"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="736049545"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 21 Aug 2023 19:47:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 19:47:57 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 19:47:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 19:47:56 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 19:47:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OqXoWsNJDUhjE3x1AefPN7oQ8E7XeEG+GHKOCpR6D78krIhDNYUsU27oKSzsY4Jt9kKNVv4/qpOdgBVB8N8SlmLNnDtJP8/xF3sKArNs1f3UcMtQbUwPr2+xtSzo6FyBAyQ6qYm/Tl/D0FewMDpSJ1ZfxiqQlc2ucpuDDCyyf+pZRD9Pe7XVc+TsMqp7VbWoO7uTefrGb2JaPSEzUgi3ojovdNHR500/cKIrsMzWB6sffUm22M/fm4Syz7XU9Qo/qZBbOU8RFvCkGOgqqHY/djSi3q87Mf6suGtR79yfsFmfCP1PfSjHkginRWXXDYdXftHFuVsCgjROmoSJ5SpJaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qt7n0gnz58LY599y47JDFeBhCBEbGlaOLn/0IqC6ANI=;
 b=LL50pMtaS8ayO2SrqYvQDruk9I09H3a58e51257WnVt74ZMgVu7RcQORDKnI6shitmnBdlD1UhsqW0aGTwr5eKQra3yWVTwpPFvaob/MrxY5Uw1N6jWifjeGYS35sUcdcmFMKxHkAhZ3LL2xN0Rl080xa02WeiNYJZ35plEFKO3Lja2nhz0yMoZ0B4g8kE+Xzyg7/wc7WjL5kMSFiuwZ0RjyiqS/ki/UIs2G21hqXaCniivQqHOEC41QtE4iSshoWkNhPxKwyuhdBhzruYk+9DQ7+sTRklEHMuOyqGzLUpoqbGfxzr0xp4/87FgM6Ei3ELG7RkGjwS5ehUFEa3kFgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by DS0PR11MB8072.namprd11.prod.outlook.com (2603:10b6:8:12f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Tue, 22 Aug
 2023 02:47:53 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::ce6:bce1:eaf8:ad80]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::ce6:bce1:eaf8:ad80%7]) with mapi id 15.20.6699.020; Tue, 22 Aug 2023
 02:47:53 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: Simon Horman <horms@kernel.org>
Thread-Topic: [PATCH iwl-next v5 01/15] ice: add parser create and destroy
 skeleton
Thread-Index: AQHZ09ijYFelMPzDika6yBhxTGMJEq/0WEWAgAACnwCAAAB9oIAAeckAgADI0oA=
Date: Tue, 22 Aug 2023 02:47:53 +0000
Message-ID: <DM6PR11MB372326A9056D496FF937B927E71FA@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230821023833.2700902-1-junfeng.guo@intel.com>
 <20230821023833.2700902-2-junfeng.guo@intel.com>
 <20230821072037.GB2711035@kernel.org> <20230821073000.GC2711035@kernel.org>
 <DM6PR11MB3723437003B055BB7C74AF63E71EA@DM6PR11MB3723.namprd11.prod.outlook.com>
 <20230821144738.GD2711035@kernel.org>
In-Reply-To: <20230821144738.GD2711035@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|DS0PR11MB8072:EE_
x-ms-office365-filtering-correlation-id: 734a23e1-3aa2-46fe-d24a-08dba2ba2ea6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 93uZyrQLsqUJQW9+0Pmho9hTfJEWdKfaOYBNv9Ng1i5ojVI8L/I2fSyXBQ+raQ/zmWaXnod3TmkoLo6L92zNAHMDeLg/Ek4otKPWY9vWSB5ge6mpVgTi0O8UThTPXmq5IKAxuLvaYwRXAoLsNbUGt9HRywdbO0My1c+WAAM0ahH2yqQbbHSthyVCRSJMNiMDtriNUtpWAFT5hU9QO7FnSQTgsPOxKAjE+2aVUxdES3ROC9wNjKpon0NGxuIvQmSRjCww8FCbF4CSzwsVpoJxSLppvP7IKLOBbFncTQ32cBZpV1j7jXz1ETp8/jQxRHuIZMTUHIJNNhBPimy9wriuwiZ/n5u7vjA5+XT7DFP1KJctMHnsxCfm895xb/kOZOG7vsP6ZHxjQATuHdbVd1nDpBZJacXc20OJ/rn0jP5VjCHSFFoTkllMf6a8EhRcTeQtP0PamLQYgblmiF2dJkN/NKJKSE+9/FhXTUwvgEMF0cOBCs+oBhRzX4REZMkwQD5j7NtwV0qsEc4Knyex3+d5LcauVnh/oG22oVIBE1pi2hlaV9JIQa7nLznEm3n1UEC2O7mWNJUKjcOZWm65ttzkWQxv3fZUuvsDjdygyGuBQduCXqI/qhnVz26U9fdROOoX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(376002)(346002)(366004)(1800799009)(186009)(451199024)(54906003)(6916009)(66446008)(76116006)(66476007)(66556008)(64756008)(316002)(66946007)(9686003)(82960400001)(8676002)(8936002)(107886003)(4326008)(41300700001)(122000001)(478600001)(55016003)(71200400001)(38100700002)(38070700005)(53546011)(6506007)(83380400001)(2906002)(86362001)(7696005)(5660300002)(33656002)(26005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Poeu92bYwjQa1jiWTF0/TjLS/1sNs5mWd9o0yUwOiG1sXcOdW9WfRqDziR1P?=
 =?us-ascii?Q?3zzxn7ctFqbf4KodwQo4+09uaPNlIj4UJNIoUvOqPy5Y47PZ7V1Dc/Bn864P?=
 =?us-ascii?Q?6OSMns6y655yYv4XgMsaR3AdDeqHDfyol1GqIbVRL5CXSo1ngmrSFnXv9A91?=
 =?us-ascii?Q?JzntY8BzE7xpbe02pD60ieFNeR1jY49d/oXab3Ntuq7ieubTygCh2NIbLVbT?=
 =?us-ascii?Q?NcoTnTE4qQuYk8LoMwzhTxhRQ2WiYdorIJ+gWumjiNbGefSfhV7+Gvvi89AS?=
 =?us-ascii?Q?lg/EWMeRgXPjLcaIV5DZ5R460ij9Fh3AHc160YXZCNCTWj29NY/dYrJTOjIV?=
 =?us-ascii?Q?Wdbr3n1b4dJwCpy+TrqLzBZqgjFqn9E6fo6DCrk7s3VZulmT+fKIoU3DLCCG?=
 =?us-ascii?Q?9g03Jdv8HkIJhABCgZ9EZpeEjqqixLTNcc/SmKTwZSnDz/Dqh2AOIL1UFwer?=
 =?us-ascii?Q?morFGkqsBb376nmjGS3CVF97YYiEE4XjocTzrKqC4LUEywmAt1TGNoDc91WG?=
 =?us-ascii?Q?00TdU2kasKdCWia7TbTU27Ln5WqntFIn0onA+EXoYz8vBVEieR/QWJgTktYM?=
 =?us-ascii?Q?pGyjbSpr163IBmlqBzrjq5yApTOWF4HB5e9S87bWfmaBNwsVKN4/2mIqbhkJ?=
 =?us-ascii?Q?vQ/vIu98YPTSxYf4I+7oQk5vz6Xorrh8k5I/sgQZ0qSmQVfq4QP+q1Leq9nq?=
 =?us-ascii?Q?yCW+BAyxITRrFPmkAPLHsw31WvdohyH9jtEHMy+5uF6uIUqo4zbqdAtVKfDv?=
 =?us-ascii?Q?m/bpyScGBuOFwUy8T9jk7pI+473xdTSSdAYpLphPAKEY54v67Z0BqP4VtdSs?=
 =?us-ascii?Q?NULXx66sEcqoOqgbvqy2u/7OPSNVfr6CEdakm3wf6vhtGH8T9hE3FJQPBvwQ?=
 =?us-ascii?Q?o0Db5GawtXZnH4CfjzLRdCCpdsCaDK2QP5wHt4FyApMVMsNrYyCF9wbwcxwt?=
 =?us-ascii?Q?BSLR0PNAIPIr3Ts33QO1F6qxyXQ5N7kFkxIDynZl/xx4PUXFaWsLJtf3Qc70?=
 =?us-ascii?Q?7MJgVj/cRCRSv/BY2jddLVhQijFfVT6AJB48eslwM2aSEuhFpDW0diz+rkGX?=
 =?us-ascii?Q?UzoUp/CjlkbvqbT0tVmGExbCnrnQVrK+uTBhFjwcToKVqBSAULb5HXXiyViP?=
 =?us-ascii?Q?SL7ooIGsgFgZ+4ZsVygzZEBYQ3anYDVQSEY7aAC4McjHAi71mnLdDzMy6m+a?=
 =?us-ascii?Q?IFkYJKiapDDji6hPhZ4FC2Zxn4d8krKtwzRmg2yAlLQcB5TGcwjqmdKYgoDo?=
 =?us-ascii?Q?xl6/2Kxoajty3O9BPuSxwGgHNKmgeo6vylfEB5Wfknu7bVhYw6oC0PVdtFrs?=
 =?us-ascii?Q?ZTCYPR/S3Ew3z8B/3DAPT06fNLkP+x6rLbD57HDe82PtMZIGQhDJWiS/FuBT?=
 =?us-ascii?Q?e/1BnaWt97r0K5XLfNJAw+ZKdCGJmVvC/zR2f1E757h6cDsSMslmultJXNo1?=
 =?us-ascii?Q?SU/01I+ur+b8lPmuJobiQFG6VwYgk+FmqnsIV7yQUFkPrIUzB3PK1UV8AiTa?=
 =?us-ascii?Q?iovlwcLueclfw3mBtOhOpha9MghEnnjACZrq3d2ZIwup7+Q4KFG++eyHT+Um?=
 =?us-ascii?Q?xv6j7C1t3HawRXSlveYDOY0qLW1J9ltd/nwMRtUb?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 734a23e1-3aa2-46fe-d24a-08dba2ba2ea6
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2023 02:47:53.2942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pxbMubA1dy86MqEDGsKND/J/KgWAypBDQVQxb7kP4f0Prtdhgosl3/N+pfpeWKmnxxDbrX2JvZIi90QThq3GzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8072
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692672478; x=1724208478;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BtDQu689l5EsRTfVCd1DT55IiUDXdOoyDxkv3hfhiQ0=;
 b=XoVHgzBcE0d90XgMwmXwFKC48VAiv7vKUehaClP+3blg7VUHBrlRXhMD
 GPmgve/72fLr+HufClnSv4t16bVKwxOa0QLCQveWFnI3OPp9bhlpYeYQM
 LopTPx0qlyeX0JKxNrXWZdlVqPsrKPuqjsHyFiIUeKtdXeZBW+HQjZzoI
 o+/VTOfQ73O/+ppvM6Zqq5cltka38g4rUrOQj5igWjsuE1HKRHm+XDMsq
 ZAtQTTs/iDSPY3EWLBZiYmn8rzYye4F/GGkCn5Wj2xBgSez5VHvMYHVJV
 XagybNjJf1QZXjQTgCijeP2KsBZHSZQmdWm6xIvZPK6sKPdCFeuFNuODG
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XoVHgzBc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 01/15] ice: add parser
 create and destroy skeleton
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
Cc: ivecera <ivecera@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Monday, August 21, 2023 22:48
> To: Guo, Junfeng <junfeng.guo@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>;
> ivecera <ivecera@redhat.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>
> Subject: Re: [PATCH iwl-next v5 01/15] ice: add parser create and
> destroy skeleton
> 
> On Mon, Aug 21, 2023 at 07:34:38AM +0000, Guo, Junfeng wrote:
> >
> >
> > > -----Original Message-----
> > > From: Simon Horman <horms@kernel.org>
> > > Sent: Monday, August 21, 2023 15:30
> > > To: Guo, Junfeng <junfeng.guo@intel.com>
> > > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
> Nguyen,
> > > Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> > > <jesse.brandeburg@intel.com>; Zhang, Qi Z
> <qi.z.zhang@intel.com>;
> > > ivecera <ivecera@redhat.com>; Samudrala, Sridhar
> > > <sridhar.samudrala@intel.com>
> > > Subject: Re: [PATCH iwl-next v5 01/15] ice: add parser create and
> > > destroy skeleton
> > >
> > > On Mon, Aug 21, 2023 at 09:20:37AM +0200, Simon Horman wrote:
> > > > On Mon, Aug 21, 2023 at 10:38:19AM +0800, Junfeng Guo wrote:
> > > > > Add new parser module which can parse a packet in binary
> > > > > and generate information like ptype, protocol/offset pairs
> > > > > and flags which can be used to feed the FXP profile creation
> > > > > directly.
> > > > >
> > > > > The patch added skeleton of the create and destroy APIs:
> > > > > ice_parser_create
> > > > > ice_parser_destroy
> > > > >
> > > > > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > > >
> > > > Hi Junfeng Guo,
> > > >
> > > > some minor feedback from my side.
> > > >
> > > > > ---
> > > > >  drivers/net/ethernet/intel/ice/ice_common.h |  4 +++
> > > > >  drivers/net/ethernet/intel/ice/ice_ddp.c    | 10 +++---
> > > > >  drivers/net/ethernet/intel/ice/ice_ddp.h    | 13 ++++++++
> > > > >  drivers/net/ethernet/intel/ice/ice_parser.c | 34
> > > +++++++++++++++++++++
> > > >
> > > > Perhaps I am missing something, but it seems that although
> > > > ice_parser.c is added by this patch-set, it is not added to
> > > > the build by this patch-set. This seems a little odd to me.
> > >
> > > Sorry, somehow I wasn't looking at the entire series.
> > > I now see that ice_parser.c is compiled as of patch 12/15 of this
> series.
> >
> > Yes, thanks for the carefully review!
> >
> > >
> > > >
> > > > >  drivers/net/ethernet/intel/ice/ice_parser.h | 13 ++++++++
> > > > >  5 files changed, 69 insertions(+), 5 deletions(-)
> > > > >  create mode 100644
> drivers/net/ethernet/intel/ice/ice_parser.c
> > > > >  create mode 100644
> drivers/net/ethernet/intel/ice/ice_parser.h
> > > >
> > > > ...
> > > >
> > > > > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c
> > > b/drivers/net/ethernet/intel/ice/ice_parser.c
> > > > > new file mode 100644
> > > > > index 000000000000..42602cac7e45
> > > > > --- /dev/null
> > > > > +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> > > > > @@ -0,0 +1,34 @@
> > > > > +// SPDX-License-Identifier: GPL-2.0
> > > > > +/* Copyright (C) 2023 Intel Corporation */
> > > > > +
> > > > > +#include "ice_common.h"
> > > > > +
> > > > > +/**
> > > > > + * ice_parser_create - create a parser instance
> > > > > + * @hw: pointer to the hardware structure
> > > > > + * @psr: output parameter for a new parser instance be
> created
> > > > > + */
> > > > > +int ice_parser_create(struct ice_hw *hw, struct ice_parser
> **psr)
> > > > > +{
> > > > > +	struct ice_parser *p;
> > > > > +
> > > > > +	p = devm_kzalloc(ice_hw_to_dev(hw), sizeof(struct
> ice_parser),
> > > > > +			 GFP_KERNEL);
> > > > > +	if (!p)
> > > > > +		return -ENOMEM;
> > > > > +
> > > > > +	p->hw = hw;
> > > > > +	p->rt.psr = p;
> > > >
> > > > It is, perhaps academic if this file isn't compiled, but the rt field
> of
> > > > struct ice_parser doesn't exist at this point of the patch-set: it is
> > > added
> > > > by the last patch of the patch-set.
> > >
> > > And I see this field is added in patch 10/15, rather than the last
> patch
> > > (15/15) as I previously stated.
> >
> > Thanks for the comments!
> > Yes, the setting for rt field should be moved to patch 10/15.
> > Will update in the new version patch set. Thanks!
> 
> Likewise, thanks.
> 
> If you are going to address this you may also
> want to look at what seems to be similar problem with
> both ICE_PARSER_FLG_NUM and ICE_ERR_NOT_IMPL appearing
> in code before they are defined.

Oh, thanks for pointing out this!

Will also check the rest code for similar problem.
Thanks for the carefully review!

> 
> ...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
