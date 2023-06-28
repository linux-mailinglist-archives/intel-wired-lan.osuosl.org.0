Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73778740C7B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 11:15:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DC8382265;
	Wed, 28 Jun 2023 09:15:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DC8382265
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687943743;
	bh=rUODyEMk0F7wkUiCz1a60292sZoy+1vzmbXkQICxsVo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qo5YSDdhuUjRIT7x0KEzMmxBv59O4yGJCJsQZQ4hRvWACNKccNyY2UF9m6GMqaJTO
	 GsiZswMpPBkbyAwbEPbn8v8dl7boJkqjiaOd00WpWyjUdUS+cGgabgbK93euKMhI0V
	 0SlJflBioh2e9QnZrW04fLG9vZKybOp8CF+XOI71fr80pZIDBYw6y5KGcfxSSUiMVZ
	 9CrRJ6zw2OqSiHG4tZxM6ICIONUwCiXbHBmlXI9Knuu22x7/NBgtMks4YM8m3/7pdh
	 K8l46+tIotAC0QDIsVTH6Ze+UuBhyc63yLkDVAkBaHPRFdZxEJcVSnaxMuhGzFVFIi
	 ZOuiVGCXzXreg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XMUL9Lyduact; Wed, 28 Jun 2023 09:15:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB44E81678;
	Wed, 28 Jun 2023 09:15:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB44E81678
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 591211BF408
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 09:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B6AF403D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 09:15:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B6AF403D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GLy7ONl5Fahn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 09:15:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9BF340043
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A9BF340043
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 09:15:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="341379599"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="341379599"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 02:15:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="710971407"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="710971407"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 28 Jun 2023 02:15:23 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 28 Jun 2023 02:15:21 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 28 Jun 2023 02:15:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 28 Jun 2023 02:15:20 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 28 Jun 2023 02:15:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OJiD/q8Fe/XIpMMcz7qkHbAz3fbSCEvcWw/JamETCOB+HXfrWt0wJzmkPU41+mQN6a3joLZZ5/TP09hRbrZJqcbvgs/EJLT9Kw+OU/N3JYAN1R3YAtoEQsVrE807KTe0l5nTQitU1JIx15F72cNU2zG3nyYGWUSz+vVW1rBtVynYrF/BzzERTY45bGUcPzx5HAiGrRGycXeGgmuTt8oSx20F1LVXnOSZUHcyYySxHb2dGwU5UVdDb4yeuzri7a/zVd5p4CADV/GsTH4YQ6pIMBgcxocI82jnUiCU7S4EEnG3OCxI89CJolZ5BsVBD9gf0/kOge4nG0Kqd4tFiKOsVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bgOurj5+aTMeAmDeix1JNt75UujjRu+WygDDB2rbzbE=;
 b=kMCVAzlMyCF/lafXh4O/4IZI2mOL66BSg3p4jroJ7TzpDdqnGRNVWaxtpTrBS3uuU50FvI+QmUVpzjYT1YIT0XrDJSZ07lZdCT6Xk32zGdoscGD/T8+aYI8EH3lJDvdyLI2XY3UtQVkOohMozPeItX6879WPt8zBxtSGE+pLmOBxD+t6RjEu7Sb5PIcpqqC3L+ZropXxMQz2pVWAaFaywZNwjPARU8RubwvxunMptPOJCX8mHMXfd3p2QSIg4yxUaz+wiKVx71EmAO/gqD/IxQulj1vizHgvoTK4qDIYV0CEgcWzPLacLjcz9JLPQmNRk1hlX03Sk4SOX8PzdlvfHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 PH7PR11MB8502.namprd11.prod.outlook.com (2603:10b6:510:30c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.26; Wed, 28 Jun 2023 09:15:12 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6%3]) with mapi id 15.20.6521.026; Wed, 28 Jun 2023
 09:15:12 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [RFC PATCH v9 00/10] Create common DPLL configuration API
Thread-Index: AQHZpc/u2XBvfmJQckCFu+3HjTH4RK+edcOAgAF/xCA=
Date: Wed, 28 Jun 2023 09:15:11 +0000
Message-ID: <DM6PR11MB4657084DDD7554663F86C1C19B24A@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
 <ZJq3a6rl6dnPMV17@nanopsycho>
In-Reply-To: <ZJq3a6rl6dnPMV17@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|PH7PR11MB8502:EE_
x-ms-office365-filtering-correlation-id: 2f64758c-0008-4d6a-f708-08db77b82d42
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LsrazfpqoYtbsf1IvgTgHKN9cGOhhRqSL0WJBiqZNF/pxenpawVEkRjxH3yOvPUxL6p6G7Xw8oxqvHq83NSOV+zZxxPTh6xkays0aEb8SoyYau9nwHK5eTkjZFy/5nKZclYJWWbgHyEiopiuXVkXpsg95xz84TQkid7AYktuLkmlwwYzKqkaxtj4wmuJGtzH4ROttR6KTkFljU6+H0rjeyHJs5OqUInK93dztPqhNh7XSna6Dijcnvf4d8KKgd/0ejyEbbbRH5fvPI2jO8V2xAUHSs4ps/XgdAYETRdUCT9BS1G1m/7aKVjIF8YYJqGkjqOERAjGH0ayPQr6HZxHKuaGWZwBoZyguMhUtY/+FFahNK6wkAiKfJeCMOEYRd7sKgucUxOL32kcP0T8PywJXDfKMW9f05EB7wf0dEakW0gzohSH+OC8RZi1HTpe7gb5FDsrTUpe9Pv/yOjw+tzPbZsEH/wG09xJS/AQfovBW/7ZZ6Gpk/pRRVXwFcEjcWaoCE2a8/b6tN6ZfGZWUs1hbLsaaNqC44Gq+BbX9Tyi/HKkVIMtzzD59YMxLE/O52mCsUtVv/MTfT0Ye+q0PM4TL71ZYf94/+YurcZ31eRy19U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(376002)(346002)(136003)(39860400002)(451199021)(26005)(33656002)(76116006)(6916009)(5660300002)(7416002)(52536014)(7406005)(64756008)(66446008)(4326008)(86362001)(8936002)(66946007)(66556008)(66476007)(38070700005)(41300700001)(122000001)(38100700002)(82960400001)(316002)(55016003)(9686003)(8676002)(966005)(4744005)(186003)(6506007)(71200400001)(2906002)(54906003)(478600001)(7696005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Q+d9f2eMdKorVZmWcY0vCht/moNEFpGykjyatBm408O7UxP1G2DdMKkRVtIO?=
 =?us-ascii?Q?Qp/bx8ydXErl3fzjMgbuVTQ4Icc6hVwxnpX8rhkV8h+SWUMlOqYZROjrcAU0?=
 =?us-ascii?Q?LPyTcpZXHm0i8TvLwZ4detLBpolcBG6Dy5JseoWizV9xoKJEgAyFG5YX34Fa?=
 =?us-ascii?Q?cQ55+3AuqUVKwa7aKGs4GBqDeRC4/Ll0GfCrEitvbLL7/2lMyCBDvopjrPQD?=
 =?us-ascii?Q?QhkJZUVWMXdGre3uk0x54hCN8EWi/OAG715Bo1QOwpkrSVyEl6R/ih01RNRw?=
 =?us-ascii?Q?tFw0oFH8pCLIXNr7bb8sHpSyQiCx4UlfWmGCKapPZ6zQPgGJnG/gCFn8Qgzn?=
 =?us-ascii?Q?IUS/3XwLoe6Kx6EHE+9y7CunMheDVRMgUEJ3Gw2MrHG8MzrlqK/ADptF970X?=
 =?us-ascii?Q?JUNh8Vho7KjN1Cdugh7T+Uagr6T3XZQ1LxDDpDfI5do1UE1FjkK79PZWi21b?=
 =?us-ascii?Q?pSM7VtHzLMsTsOloU4LTcaVAtukbwfzP3nc4RMbobhTWO6VbS9Rvrcu5ZuX4?=
 =?us-ascii?Q?twYAa1X9JI1u8mvCEJW6Z3iOgpCRs9m3BHJ7kDK0KVeR6uyZZrYMlDVxA3FE?=
 =?us-ascii?Q?PHRRZaIN6EPbdWjfsT+e9J8JRNyH6pjvl2431ByFqUeeVI75lPR5DPgCXdRn?=
 =?us-ascii?Q?OlSJJ05N+mbHbnqncckQn9YweKztyX2l234E57BgZPI3JoXaV8MN4C9FYOPy?=
 =?us-ascii?Q?YWtnoLPLua7wOAoD/7G6xQaF56Z88GPeq4/h6IjpZmyaEVZo0LdDalIwhVlL?=
 =?us-ascii?Q?5rrSrexrYnJy2/KXaXVJtI290mo8FwN+XQom/ImZkjoGGJbyq3dSo4WRHlIF?=
 =?us-ascii?Q?OQvs/haXcixtplZzdnS+fK18tuMyUeiNvxda+LLfH0CnTzj6MI4satmP18Vo?=
 =?us-ascii?Q?/x5TUjoNJX712XEBryRegqhID4yyV9SWpmk2/LO/FO0z1ujs1RQVy6lTIhvw?=
 =?us-ascii?Q?GNN8Oyt67lz3RQmyJ12PU1U/sR2+nTq0eGPow3oXC6ZahfT6FxtmcZuNKZ35?=
 =?us-ascii?Q?CguHF9wYfgRLR9owHe28VrkLMEMw0Kqj+4P7kNKqYxL10OLc6phuwkWBcX++?=
 =?us-ascii?Q?fF2qMr8sOzgXMlUICNm81H+7SoG3LZZz+O4tAoKGeQF1NxcZCHtZz6WxVaPk?=
 =?us-ascii?Q?tFtNxLn5YHmfW+KlqmgAIQ9lnt4koGIzzbiRc3nbLmmfzgTGqYjkJd4NepVu?=
 =?us-ascii?Q?/XoX6aS2yFLBz8GOn/4xQ3Wxq6OLyvkXGp6UiAArNR13oIWIZVrXJzfiH0lk?=
 =?us-ascii?Q?dnNp4lZ51qKtU0Nl9NUnHVlA/oQDqbHa1jHoNtCgh1coXMfclFyYBEGoQTBW?=
 =?us-ascii?Q?tHYx5WPuwb7rn8N6vXI6aPPQ5icOQRMqnWb+UeevO7LR5m2uStemeJEtgg9q?=
 =?us-ascii?Q?tspjVAg7gUAhQ9x3063dq3hXmiXSujqy8oGDL5T5ImVbeYDByCQFnIH7d0Qv?=
 =?us-ascii?Q?zJrKp8wkA1TfBwPbC+5WCm9Bdqwnc3hMah3cKxs0w13ckwDEQxmRXLnnZpei?=
 =?us-ascii?Q?rAmlZgJ1jYu279thK3zFAQO89kbUOsSxqJ+QFvdILE64twBqekVgsOlx6vmB?=
 =?us-ascii?Q?lPzCndKH84nISAVmrDhpOffeioGRl83lPjk9qswy1EOgT+YaS9Kn/Xt6wwbb?=
 =?us-ascii?Q?2Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f64758c-0008-4d6a-f708-08db77b82d42
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2023 09:15:12.0049 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BNuuXf4XohYc2wAOA8ZMD0AA1DitCxba4ux5OIYMhz+nTDElZ5Y0tHrFAcGAvdzmSh0pddrIq2ug3Qputp3DsfdRwxZCfO4K/5ocqQl3uN0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8502
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687943734; x=1719479734;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zGo6j1Zg2/vkHtrbu8uAR8xVSYic7pFmytR6gMagQGM=;
 b=S7T8DH5NbI7ZLobU41qaB/BTnc0xIkd3o/0lNUMUIUubwy1+r0gJ6brl
 8ZuEfvv9SpHX24J9zjxzkPqbRqkLGY6HFrNxfRyPoeJ6yo9t7bISm0P1v
 Qxe8BQKnGvn2bC1tWq3qPO9WJpkFKytjeqI04/L+LcUwZ+KtXDvf5SDb9
 jhYvW02N1W3zaKazlIhxkey9s9LgVZlqM2SG/5kjpcWOlYeqhWPaq2rRR
 CoC5St+AOzwZhnh1c8m7Fj+xLMsdlsjyYKVZwy7N76JvIbisnOY+Ioa2M
 xHqnKqKaJGARsPg87IShAlHeux5eDrLpDK8RPr09szKEcLpWRmqLjKx65
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S7T8DH5N
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v9 00/10] Create common DPLL
 configuration API
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Tuesday, June 27, 2023 12:18 PM
>
>Fri, Jun 23, 2023 at 02:38:10PM CEST, arkadiusz.kubalewski@intel.com wrote:
>
>>v8 -> v9:
>
>Could you please address all the unresolved issues from v8 and send v10?
>I'm not reviewing this one.
>
>Thanks!

Sure, will do, but first missing to-do/discuss list:
1) remove mode_set as not used by any driver
2) remove "no-added-value" static functions descriptions in
   dpll_core/dpll_netlink
3) merge patches [ 03/10, 04/10, 05/10 ] into patches that are compiling
   after each patch apply
4) remove function return values descriptions/lists
5) Fix patch [05/10]:
   - status Supported
   - additional maintainers
   - remove callback:
     int (*source_pin_idx_get)(...) from `struct dpll_device_ops`
6) Fix patch [08/10]: rethink ice mutex locking scheme
7) Fix patch [09/10]: multiple comments on
https://lore.kernel.org/netdev/ZIQu+%2Fo4J0ZBspVg@nanopsycho/#t
8) add PPS DPLL phase offset to the netlink get-device API

Thank you!
Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
