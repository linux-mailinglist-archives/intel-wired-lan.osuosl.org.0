Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OyqNGOueWnTyQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 07:36:19 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2609D73E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 07:36:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 523DE40B34;
	Wed, 28 Jan 2026 06:36:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ge_LR0r5fwzP; Wed, 28 Jan 2026 06:36:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 620CD40B3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769582176;
	bh=+MTgtHEXTyzLmGRasyWdfaWvwf2YquA3DyT9cJ/23oQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9ULBslNbVC88wNTKUhzY9F+CcJNDJV7PTgW224RMXJubo8NUGMIrApOTzqWMudOVN
	 Z55N8nOJ+19CXSJk1HGd7gqV/rdk/tTmyVSroR5yWZPpsV/4DaNK3QbePlhvAZ2JSn
	 wCRcmBTozRQVGsW48F4itxOp9i2nqm+EXyJZk6m3osjZT0BX8emnPDxlnBAThMPRL5
	 lIWCfMTgFjZ6zMzYW4M8a2snngseiposT5XhN13ry+kpdOb/zwDK51PpiZt5SbHp1P
	 udoMC3LGTRC+hFdphTFJjmEfu2gsq8PL0BravxUXAelpi/ch+sQo0hTt6n0xys0FcH
	 SqAm0OuwAfsBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 620CD40B3A;
	Wed, 28 Jan 2026 06:36:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AF7DFD3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 06:36:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9166440AC5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 06:36:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QsRU0oMDqH_5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 06:36:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 78F2B40AB0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78F2B40AB0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 78F2B40AB0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 06:36:13 +0000 (UTC)
X-CSE-ConnectionGUID: jZWj5zwJTSS1jOfDtsWIWQ==
X-CSE-MsgGUID: w3e//Tj/RSO35EzCEbFprg==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="88364234"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="88364234"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 22:36:13 -0800
X-CSE-ConnectionGUID: frzyeV07TKyYnIP+aO/OnQ==
X-CSE-MsgGUID: hmjt/exsR7S75+Rc3jvYKQ==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 22:36:12 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 22:36:12 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 27 Jan 2026 22:36:12 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.13) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 22:35:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bNSDyzkD4eWbJv8sLVzyFysIOnh6N4i27txU+lkfKDi6LAm2KUAfvOZz+BEldqKPEZKyJ9e9kD8J7lpVJ+q6hbCfp3f/hiM09v0+14M7z6w2Or84yqpJATdjR3Dhe8nyXsVw9efLICKfpdSusnJqgoezvMduVKlBOnW5be/W28aEP+gvLpQlBLlu3NYbj98QpNCVWR1jCzX9sQlwILPWYNeqSI7ymsX4y0h6z30uVptXJcIRpfnFe4s4HnzeZka6BGZ+0bExMB2H7lbamHuki22veOZFl6m7it4+WEBy3HXHocjzTXHPDnUvSpsDShrm1uKF9pAlcYOW10U3s/y6iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+MTgtHEXTyzLmGRasyWdfaWvwf2YquA3DyT9cJ/23oQ=;
 b=ZAY+3D7Yb678N2hLC3IPmKDxT56CQK29DUTX8+OTmBGpvEkNpmVmREymkrHgLM2vnCCbo2AyJJLqxCNAYamz/9iDGPg2b176W5XIAsLFejyhd/V9o9fhuxQPwSaPv2XGxphwplQhwp++Uqk8HMlDxu4o+egxdGzSd0zK7JRDw/Gz5z6c4pCoDPHZEwBepVaSJA/bfmV11Lot9ySyfly60e+cJzM0I0qg6tEAuAPZcIcfn0IKJAa+jTiqn3N8hcmn2aJurgD6jB2uiAd4ShUWVfugF9ZQ/CSIsUITUhSU0syhGYuPEWZuEk+8Z76pZHFJtXkX23EiUdHzYV+APThaJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by BN9PR11MB5226.namprd11.prod.outlook.com (2603:10b6:408:133::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.14; Wed, 28 Jan
 2026 06:35:03 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 06:35:03 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "edumazet@google.com"
 <edumazet@google.com>, "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "Brandeburg, Jesse" <jbrandeburg@cloudflare.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "jbrandeb@kernel.org" <jbrandeb@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, IWL <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 4/4] ice: stop counting UDP csum
 mismatch as rx_errors
Thread-Index: AQHcj9ypWjtTV7qpQkyW3MjRXoP4NrVnILIQ
Date: Wed, 28 Jan 2026 06:35:03 +0000
Message-ID: <IA3PR11MB8986B4DB0B102492212901DFE591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260127223047.3979404-1-anthony.l.nguyen@intel.com>
 <20260127223047.3979404-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20260127223047.3979404-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|BN9PR11MB5226:EE_
x-ms-office365-filtering-correlation-id: b1e4e6d3-0f61-461d-d13a-08de5e375e81
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?/0E7DaTv4hli1XGq3crLiaG4+II2VTrE4FzndScUE0p9T0UxnzGI7lMLsrcR?=
 =?us-ascii?Q?+kvADoVBR7HCaDeQU4l88ox+AFAyTtgPVLzplfNaAXgIv7NR6zQB1Z7KkUm0?=
 =?us-ascii?Q?AK72xVaAG3ES5Eixzd+4Y7fMMNnjz5UQmGCkmwGAcI/0BabwK8xbvwXqiRoW?=
 =?us-ascii?Q?aZf4Bbm/6mXmlzTXE4vls4riYt6NeUCxU2AYFYYQEs54gjzDAchMbGUChfvE?=
 =?us-ascii?Q?u7MuWqmvO8oXL6PszOuaqCwypbFl/5JgcLfWckgLzOqw9rddZ4kUeCIf0SFE?=
 =?us-ascii?Q?aJNBk1eRVORud4s7hexUWd5alDlWGiar+RzSDvjWgVSG5MEwAeDE4eo4YvqI?=
 =?us-ascii?Q?TA3FG6YP2LbtcWOTlZtItkFNCRlzWCPGjZWa0FbhuvrlHFofKHZeoPWbmViT?=
 =?us-ascii?Q?pf9/HnVGuXQaI7OQs5ZfuyffWU5ustBanwBHVuTdIGfDKO0ViyU62W3qdyIC?=
 =?us-ascii?Q?io3s7sGkzum6XF1H4ECGXOba3fWrRCKm7VcjpJVFPv8vhuNCjitbHTNeqq/n?=
 =?us-ascii?Q?qlHc4HExcpoSdqb3eqBZw5S0KgpHfBT5Ry/NnmC2yWQzUi3xDdCP6cM+kTUG?=
 =?us-ascii?Q?eFKqSKfQEthKzdsqhxDRbt+Jspl8PilfbGxneDH+PJqoQvKRS/Q/Pwnllh6l?=
 =?us-ascii?Q?qQmQ/R2F6DPI1pY0JwY7KgYs31Yb4fNbqSnSENBWUYir6e8XtchUOf2MhBVy?=
 =?us-ascii?Q?T7977dxegfCZ4zdICNhGWykrHdNZD+zQ0lQmLdusuHucUSc9hhH5iX1lzcb6?=
 =?us-ascii?Q?vGw6M0bYJPXXJ+Vz48Bzw8bUFfvIf9IeLcOwX0nefnYUetqt53QT1sccBzNf?=
 =?us-ascii?Q?rekt1o/dWEg+d6OlM9DeWIT+BkdlXQjScxr7KvcwCL6EQ28oH5P7Tg6uP6mv?=
 =?us-ascii?Q?RHOc7NkGDtaF67BZNni+JwsWxxUoHH/u4CDELEptfk5yC4xIgABTq3HpB/HF?=
 =?us-ascii?Q?5I3ecFybq6A1GmFgy8hfbexrdx6q4lz6/HWzEN5VIp8igNRuiXUxfk8zpGid?=
 =?us-ascii?Q?bsuqT2ylTkoYCBhMoX0qaxA9vpTVbVRoe79XIW25JRo0l/guMAjHXQwU4ti4?=
 =?us-ascii?Q?2kOkojoHEFM6zAt1LDW4NW4L2NYVWDTJylEoLmEVkdUiBfJxCob5zEBnb2zW?=
 =?us-ascii?Q?Dq+5UoNE10DhzbrozRog3mJ9HXkZuY7AhgmZj+EldAddp3VlLh25iwWScQhG?=
 =?us-ascii?Q?va4xza+7ln99qPZEJI7SFx4razU6PlriP/xLcUjR4gG3daK4BMJHXoS0TTOF?=
 =?us-ascii?Q?KUNGHeUdqLNBTWyzdgeKyeXWbZKVmVfacPq4fdyX6Q9+XKDBkKi82hUlp5DV?=
 =?us-ascii?Q?H/BwvUPBvv/VEnqYl8j6cC17Gv5uZZRWotacgPVZEyqkTvjdX3YDXr5vlVAE?=
 =?us-ascii?Q?gCrOYdGdJqj6+ze7B5zFEnP/lDqMOL4z/4N0A1DhkyYvtQ+lm1E2GNExmB9a?=
 =?us-ascii?Q?wfcX6kxqL76vAn1M/BmgcUr7iX5dR/dOLMxKyxbjUp1UacNSeKV6+Tm46wue?=
 =?us-ascii?Q?RokxwvEPUaWeR7VTuIgifGFTvupLnujy2RUlfYCrdxmjniSaH4QRlGerSfHh?=
 =?us-ascii?Q?rwpS21kMFHZ8roacINmvg0I0YEpzZMp+sNwllP7ZVRZnlNh/nFwiYxYUxDgj?=
 =?us-ascii?Q?MxSQaU4sF6OZCeVVoEq92zE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cYjRW/LpeF4cEXeKtj0TjdN2uzPVrVd9Ac5/CYgJChGuZ2BUOAq/DCTQY8fM?=
 =?us-ascii?Q?qNlbPHixdzRirVHa4AymU5hFidi8xbEqYm9xmJcJojfnaRVMkiwDDGETT5AG?=
 =?us-ascii?Q?VMswfg02XLpN6I0d3W+eZVhf3LgWwAvMLtpMhnPUgv07NdTQKPyEoOrxZpBs?=
 =?us-ascii?Q?/bhOiS16J4F4ciF9oNrHxDaAu6jwCD06fwoyjIuwipqOLxVMtMG6AwNRWge6?=
 =?us-ascii?Q?y6kMq6suPs58ECvdUmI7h8w3Ok+CjnqmluoyVYbsWXj1NsWU2SKzxpmg0zZH?=
 =?us-ascii?Q?jPzJOVy4A8oWZ4uCiAwOP5Kb65AtxyMLSz9MiD56OjjWClOZDTk+R64J300X?=
 =?us-ascii?Q?UXSZkit4ex1h0kW/GgVQRKcTsRtsCX4ed5biO8Eg3dPhRiV8HLmauWL9Ivy5?=
 =?us-ascii?Q?ZRUbUPo0/OyqgFpDhuIUzSWzsA4OjWsXlM7QuL0S3UeDVt5j9qK7l7LVq9gc?=
 =?us-ascii?Q?6qdaWzsTpXCDvMX+2lqeXXSo09D2S6/ARmzhY+OjeE6cWMcMBctKWgF5VbkM?=
 =?us-ascii?Q?XGOeR8w/L75YSauUSJ0skZ3w4d9V8S/FE6Wm3pOgm3NiKBQfTEUmpffByZQ5?=
 =?us-ascii?Q?Pdf2N5COhrKZI59wBFteZwhVWBromhruDCczsBNsw/KOicStzhI0Tf5oMNLY?=
 =?us-ascii?Q?HgIV01DclkhaZ/SZqPOYlqS36s8sJrsVkHD7DBLJ6tjAg3lmXXSOF0UYnu/p?=
 =?us-ascii?Q?RTVrBsmAPZBQWuMqguIEQ0sD6OJ2T+fRaEqY7RnC+QO0C6JvdjyEP9or+2u3?=
 =?us-ascii?Q?7VkaQHaECgRMBNJDVHvkcNHThX/4KsWegB8VHoVXZxKboksXRP7zULN3/jPX?=
 =?us-ascii?Q?UUMRWdGi5Qlqw1jMAMxsQpuozrTEj3XGMb+oFkXN/rO6UJ/xoKAGvhtjOII4?=
 =?us-ascii?Q?3xPzGgDKqyoqTuO07fmGGnqD0Ajo6JYJyFa41PXrclB1K2Xc8XS0Yri9XGQi?=
 =?us-ascii?Q?YvRmmIIzjBLcT8wSdKCYobu76o6F313Pr+YCWbQNtG56XTg8qya4LFzhRSae?=
 =?us-ascii?Q?w+BzkqrOdCQfJ28TUb+oKBhNmOqEQGePXd32QbsrM7YDnvLehdT5rK6opkl2?=
 =?us-ascii?Q?jafBEsOpW55Kop6JLbiQZvl0kiKPLQEJUDsCeMqFeGd9I03xrsiqOKtfFKVN?=
 =?us-ascii?Q?j3lNi9ZrtcNm3OtP4n7LHYZU1zrcSyxx1lYkLdqvx5otc4qZ8DBvU5EJKRnA?=
 =?us-ascii?Q?yeFhsIn42RwidZ72jSVML9k7TksTzv5HGBvhR9LBt+GLy6nMy/ZnrpPY+0hy?=
 =?us-ascii?Q?+fLMDQ7pTZfrP0c8fsf+pSYsCzA3j5pX6ma53UdsMrhJG2C+NkPrlCdwOARE?=
 =?us-ascii?Q?xchJw6MlWiwwu8afqOHCVlLVzGVt1TtvwPrXkhq1p/h89ua6ZzknBGP/IGG8?=
 =?us-ascii?Q?9wVwpQkqLuWKJU49m+UxL9FGA2fJCe3nDvthUqYrymPSnznjk8T4u1kikpnj?=
 =?us-ascii?Q?BKBB+HvGvqifGTO441oXD5phKxbr5x38PGBYqdXJyOG8is2+FjuIdPKkoaUG?=
 =?us-ascii?Q?KAnO93UDJoeXHtTmykdcs7ahcPN2uD6lO63Eu/yvt2e3xoKdapXyLaX/7VKj?=
 =?us-ascii?Q?7AUK6G7NN/XbCS17x3tqa2JAl4r4N/nkFajl/nI+cwIMqwwfxLidq8L7zF//?=
 =?us-ascii?Q?lNEIo60JCnrtR/2qzcU3xtAmdvUh6HxerJXnsu2ZKshKe8hvYKhti7JIJ0ec?=
 =?us-ascii?Q?WtJmgtBkIypy3Q/fY/EM7I3sO5kLOp4ZsmVnm46aBoY7Zoyj1JURC/pn+E9A?=
 =?us-ascii?Q?CtCAK1S06Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1e4e6d3-0f61-461d-d13a-08de5e375e81
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 06:35:03.4382 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CiEqTsFeDfyT6p45UjDX/IFFArO4koAFL7ReR7CE6RHq+ns2OWdPedSez42d4ihSShcsUGX62AGup/UQCz5u0q7qHxhdXA6Ar6+lZLbVUtE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5226
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769582173; x=1801118173;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yVyKf53SiuDXmHpAk6Ow/RUWeAOdcxszyn9taIMQCXs=;
 b=ISP3T/223zTFvaZsJOw01RpXWq+iyby4ItraEzSz440LM/N9n0JcToLQ
 dmJAo8kpTjOca3U6Qazs1ZAg5MPymj/q/GLUJhxpHnz2cptRHbnyc5WZR
 7zUnYrIAgZ9AB6z/gewv2YF7mQCBzs+42gRKfdgCv5bGUtaP96AhBzvAP
 /j8E1vjbTsa8XI6d5n7mnNzFLubDvuhQZLAFnXrFKBXYH8itQgf7sygYx
 yvEfaiCWC2JR+TZCGKr24SgkOWAsSjUY451w6AWXp4QxblIv8Wd4Renl0
 +bESvgrPNFSGJlhSxya/coFQ5czdQUdz28DfOsp7uJ1HRc0wQpdpR4wIC
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ISP3T/22
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 4/4] ice: stop counting UDP csum
 mismatch as rx_errors
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:pabeni@redhat.com,m:edumazet@google.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:jbrandeburg@cloudflare.com,m:jbrandeb@kernel.org,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cloudflare.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:url,intel.com:email,osuosl.org:email,osuosl.org:dkim,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 1B2609D73E
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Tony Nguyen
> Sent: Tuesday, January 27, 2026 11:31 PM
> To: davem@davemloft.net; kuba@kernel.org; pabeni@redhat.com;
> edumazet@google.com; andrew+netdev@lunn.ch; netdev@vger.kernel.org
> Cc: Brandeburg, Jesse <jbrandeburg@cloudflare.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; jbrandeb@kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; IWL <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH net 4/4] ice: stop counting UDP csum
> mismatch as rx_errors
>=20
> From: Jesse Brandeburg <jbrandeburg@cloudflare.com>
>=20
> Since the beginning, the Intel ice driver has counted receive checksum
> offload mismatches into the rx_errors member of the rtnl_link_stats64
> struct. In ethtool -S these show up as rx_csum_bad.nic.
>=20
> I believe counting these in rx_errors is fundamentally wrong, as it's
> pretty clear from the comments in if_link.h and from every other
> statistic the driver is summing into rx_errors, that all of them would
> cause a "hardware drop" except for the UDP checksum mismatch, as well
> as the fact that all the other causes for rx_errors are L2 reasons,
> and this L4 UDP "mismatch" is an outlier.
>=20
> A last nail in the coffin is that rx_errors is monitored in production
> and can indicate a bad NIC/cable/Switch port, but instead some random
> series of UDP packets with bad checksums will now trigger this alert.
> This false positive makes the alert useless and affects us as well as
> other companies.
>=20
> This packet with presumably a bad UDP checksum is *already* passed to
> the stack, just not marked as offloaded by the hardware/driver. If it
> is dropped by the stack it will show up as UDP_MIB_CSUMERRORS.
>=20
> And one more thing, none of the other Intel drivers, and at least
> bnxt_en and mlx5 both don't appear to count UDP offload mismatches as
> rx_errors.
>=20
> Here is a related customer complaint:
> https://community.intel.com/t5/Ethernet-Products/ice-rx-errros-is-too-
> sensitive-to-IP-TCP-attack-packets-Intel/td-p/1662125
>=20
> Fixes: 4f1fe43c920b ("ice: Add more Rx errors to netdev's rx_error
> counter")
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: Jake Keller <jacob.e.keller@intel.com>
> Cc: IWL <intel-wired-lan@lists.osuosl.org>
> Signed-off-by: Jesse Brandeburg <jbrandeburg@cloudflare.com>
> Acked-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index de488185cd4a..71c6d53b461e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -6982,7 +6982,6 @@ void ice_update_vsi_stats(struct ice_vsi *vsi)
>  		cur_ns->rx_errors =3D pf->stats.crc_errors +
>  				    pf->stats.illegal_bytes +
>  				    pf->stats.rx_undersize +
> -				    pf->hw_csum_rx_error +
>  				    pf->stats.rx_jabber +
>  				    pf->stats.rx_fragments +
>  				    pf->stats.rx_oversize;
> --
> 2.47.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
