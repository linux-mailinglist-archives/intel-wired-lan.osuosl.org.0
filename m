Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3EB71F02E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 19:05:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A39EB408A3;
	Thu,  1 Jun 2023 17:05:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A39EB408A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685639124;
	bh=Na9yhaLLfPd3tyRxYY5gnCFqLierg9MZ6/kFz3n013M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W43MYRVTQcZ0aTQ1xo1U/f5nI2Dr78HbC2e0s7dDz/BgcwYUyZz8FwFjwxFO+jRGK
	 EYVQ6cyY2N4YDg1IwJfktFYIJ4s0AT6eVlbNabBxx17zuDwdF8Loawoq8FGF3I2SaQ
	 HqeBuWVG7xNJs4FYVerGINKW8v4vLlw6upKqFhG91de2IupjMYgi+KWCcfDKPGx4ZU
	 s9i6Nz5DX5Pn8Z1Rc1/J6OijU+MVA0FE2GbWypDiR3aEfsL9vCjO7jNFlZae/ZcEyg
	 1AmMxk5gt12VICg9USct76vuT7YJx7gys2FyZ2COxJJyJ4XxdEX4aoQcyJPmxHXk3i
	 V/V8xVFXeraew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KkAmtOSMeUwk; Thu,  1 Jun 2023 17:05:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 673CD400FC;
	Thu,  1 Jun 2023 17:05:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 673CD400FC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43C511BF311
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 17:05:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E10661518
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 17:05:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E10661518
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vsm10rJO-FNH for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 17:05:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A12B6142C
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3A12B6142C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 17:05:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="354476597"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="354476597"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 10:05:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="710583655"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="710583655"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 01 Jun 2023 10:05:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 10:05:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 1 Jun 2023 10:05:15 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 1 Jun 2023 10:05:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TWqdFHw+GoPu7pWCpwh7Cakh8bDjrYM2KUCbig3KjM/OwVIvy25qghTqO6f8VVY6ft05xA79KOAi+DwravyPZoBZigzWd2ix4AQOi2lFQdWq+bPUGOE2Srfg+TuSSL363gvF0dmlhQ0vFElCYIybS9eEpIJjz8GsbEuv3/4rUqM+RoBnHFxJHP5JHEvOYAKjTJ6sR9JcFsYTJa6KVWxV2ubzbO/w6j4nFUq/WhB6UCrtfzyRSGtfnwMcR/TmDraX92qNPacGOUTekypd2nXfpMjffuYbhyDX49yEsgOCYenwId5dURA2InRojXA94aPD6OtDGFMyXTp9hdvLTdUbkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mUcTNuobnEcn4uLOSr2uHMW58f5eVSJg27F+JbOCxOc=;
 b=mf3VtfEAtAamYpx3cmP5TyNVtxWFqU89zEJpFJqYE6fYEd5uIc5/nh8105nFy4yLd397n3Oi1ZhtxiJlJseQX3n0eOkO7SEHAGRuRT7lEwwuwr8/+YD0u6+T5zLbBIyBVDieI34k3p4uSYrHMuFEndUv5Bji9p8mCIHpEtepDoVU8U8aPBHcvDhocsO/EtkPLN8R1VoXqeid0zGSZpm1ga3SKfu8somZ/mdHNSu2Dqe0rXcubBikCXxShus9CC4hggmBvzELI2mKNRElcBz9v5ShZFMeaH6LVq6E1k32WTMkvnrH4wFAWADPq9gbpxsnV+CbmnOyQS82ApNFj2r7jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB7661.namprd11.prod.outlook.com (2603:10b6:510:27b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.22; Thu, 1 Jun
 2023 17:05:13 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4e5a:e4d6:5676:b0ab]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4e5a:e4d6:5676:b0ab%5]) with mapi id 15.20.6455.020; Thu, 1 Jun 2023
 17:05:13 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Yuezhen Luan <eggcar.luan@gmail.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
Thread-Topic: [PATCH v2] igb: Fix extts capture value format for
 82580/i354/i350
Thread-Index: AQHZlFbnwvMiSHn1HE+RDF8B6BOL0q92LT0Q
Date: Thu, 1 Jun 2023 17:05:13 +0000
Message-ID: <CO1PR11MB5089465F5D37EBA62BB1A123D6499@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20230601070058.2117-1-eggcar.luan@gmail.com>
In-Reply-To: <20230601070058.2117-1-eggcar.luan@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: anthony.l.nguyen@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH7PR11MB7661:EE_
x-ms-office365-filtering-correlation-id: 9b6ede03-137a-4bdf-664a-08db62c25d6b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EKWuvuBmRKYi8VaVBQeZTFdOhjJnWGso/1B09fb2L7ef70JvCA0huLYaiL9jdJ9+galW+ffvpY+Ef4XImoHZJlAUnPf3Bq4Gv3kob9QY9KwYL+9ZyRCMu6M5xNtdP9KgF+iuLG5xFlKkR+zgzml3GsiEedBbqthA9sHVajQjtmvL22hYKGPy1MYbDGsZKv+8ssHbg6RKi6fTOdI4JQ+rcbMx1Ll7LcVhrTtSz5WMRADJ4pl3pFezxUxiqxqI/77Ix/lmCwF3AlaxFoH+NohPgi9z3zu/Bi6n2xCNcxUVh9fAsvD1qGUGN3/0Pa7GjTGux4ceAvhCk1Npr3oLANN44oxQx+2WfGJHdGw/q831kMnrmngJHkY3F4knrqDzZAa4T3HoypIR1r4CKM8uPq1oGCoStw9ULovwlZOUFiCBGfZgsupsW5PBKpVaxa+71J6MJUxi+r/nP+XansttoMakQ7oqVdCLiPYMBNQRLHe1gSb1oH+sd35tbxdl4bOyXsoZegZ7q7WDEnenosRwsXC4GjL5zCTcGgY0E/Wfbqu+JCnH3MxjbJGTlHCUHKP64NU6xNCLyKY/8Z65dENHzIBNEwLfLN2n1eCDsHrwzvrKfEGIpR3K6fjmbnnYJz/jlMDt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(346002)(376002)(396003)(39860400002)(451199021)(82960400001)(38100700002)(122000001)(38070700005)(86362001)(33656002)(8936002)(8676002)(41300700001)(26005)(6506007)(9686003)(52536014)(53546011)(5660300002)(55016003)(186003)(83380400001)(7696005)(66476007)(66946007)(71200400001)(66446008)(66556008)(76116006)(316002)(64756008)(110136005)(54906003)(478600001)(2906002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RYJqrNgXW5UDfYLOKZdNyOzl4HDBgS1yMJONXbT0oIveMgMwkP+bjV7c0MbU?=
 =?us-ascii?Q?IbItjRPhw5RcAtJTGWDD7AB0owdBHFrf2uIwyVl+hTz7BpEIRkQ736P96yPw?=
 =?us-ascii?Q?shggCXas9gfgluNp01St83fFqJKGfwIealkp7vKU6r1RveyYbJvvplI5qEWs?=
 =?us-ascii?Q?Tst7lUcsVIh6hWLyrWfPuxhZyyPl+UEAb4w/ma+L+M2oEBYIfS6IYlJG6H4D?=
 =?us-ascii?Q?BTXeYN9mlT6j1l4BgeZrGhXXyCEHxrGt8h+TLyf/7WX5JctAt4WSKuYJAK0J?=
 =?us-ascii?Q?8a3OI2NEQp4/Zlby7wCsQNXnK3uzlbI6nZp5fOmrLPzJFycGPgVWgTBI3RDZ?=
 =?us-ascii?Q?cP7eBtQEqNPnjaC4glPaSfR7nv7EYGCmcCxGu0PChtgup7e9SbAfsDnbtaax?=
 =?us-ascii?Q?c8kA/XkYHOALWblsWxtRE1OvfiNbxn7smLF/ZkEIijNQZJK0ZoZ/xERRwE0q?=
 =?us-ascii?Q?XeDYlMgl20X2Wh3IyDv6KxKVuea1pZ7SUpzs0YmDsAkcVlYmgHUYeQAkEWM4?=
 =?us-ascii?Q?b4RoO6R5V/nvnb7NoiK4AUwiqWarROOjXEOWgWKf6m+uHfx6qKcRdEMy3ru1?=
 =?us-ascii?Q?257ArICCiw8IjqyQPT+MNSx24jk68E3YkfdbAQ1kBMy8AvXz+QA1ZWMcMoz9?=
 =?us-ascii?Q?aoKQqiKOnQWUbYzcXHe162rhslqfY7BgY6sMdVBsYiyUYjGh7/iZmt9AKdsm?=
 =?us-ascii?Q?Fcm8n1smbmOm4uy/sjMmgUXCx+X8enKL1RZ2TgLfvlMgFHwtXlaMIYfl/G1L?=
 =?us-ascii?Q?Kw3Zdb2z4Q/DOBJOnUJJ9g+QK1an1Qr37YGKwUB29NH05YuWFF0T+Z7T0sBb?=
 =?us-ascii?Q?npUQeA/05Zr2PbwVs2YC7kFWzAKu1KSynekmUHZZgvmOia08Od1XIBGmNCEO?=
 =?us-ascii?Q?mNg1cftxGJipWU+uxf6W/N4UW+pR1d9P1HwUo0KlUVmBWoLEQsHuEFW3q4+R?=
 =?us-ascii?Q?Q/3u4Nnx7MXdwXkNGqlZpTliJ2RX62bfyBJ1NzitVDvprRR3IzYSmZw8oEbp?=
 =?us-ascii?Q?Wv16fdjeplN5KIz1FySfK7Be5NPtIvXMbeMPiN16JDVtBVSbjuhBBHkrbVs/?=
 =?us-ascii?Q?S/W/iaXAdzGJBhkWCpLDYldYPtbTHwOM5kpT4pauDeFDpNAyd0JKvDc1BnR1?=
 =?us-ascii?Q?zvRDku7BbZyyYvmGLdUre5NSZ0urZOY9/0Jz5HqvHzYutBBvJK47S0FvIm5K?=
 =?us-ascii?Q?/LsjbHemIVHpaPpJc0ecn1DM6XWkiAhcCQKsoyjhHpzdVrCyBlmOzlfnhZEC?=
 =?us-ascii?Q?nHcIMdTkpzYDSZALfw/0N3aKzEtII3AhPvNe51YUWDkcCI5TVcWVtpgVorsK?=
 =?us-ascii?Q?49potziLD4dK0PNTjlFn2A2YdD7Wh4JSzQrA2tKuxLkG4CgDkceQj+iVjXA2?=
 =?us-ascii?Q?P1KDpBkr9VHckNsqEw6kZGGraSmKnfFZM9wj06nMPKfSbDt5SAI38vGQ1wjD?=
 =?us-ascii?Q?r5mog5/DapX/29lIEz+zPgF78gLVwB3MYPCoOBgLtEJ2jnufvMz3fdh4ReCT?=
 =?us-ascii?Q?aoXFDCNtOmf3AhmSmoORGTH1KlIqWHrbTZLJciB1BblL0wib5jO50JIX4d6Y?=
 =?us-ascii?Q?5B3cip609qPLISP6gsIy6Zrczy1Byy8MIBn22sUr?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b6ede03-137a-4bdf-664a-08db62c25d6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2023 17:05:13.3091 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P/RWUkXvwF2+2TCwAwF2ADlTrlmuGONKi+RJ+8iLpP8eXd3+VbCyikWp0oSU+YJ8ukJQ2+MEDS25ptnIQyFoHufPX9bFu97g/UX5Dw1O10k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7661
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685639117; x=1717175117;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z2Vb+Ayi+PwAdU73bEKSaOPSroGJbBYC5uaNgIGP1xg=;
 b=n6Xe2HY7L1tQSGKrSDjq1GoxYGnLAfZueYHeQrPMX+rzRG5DcOiD0fRU
 VRrn25OVa0+cQRVwujgkF/wr03nB+YfgYdksiVWGsUAyy6cX9pA1CJyXk
 UK7+DaGX+atrERGXJ6oZ/Mbpr2AG7avJTwEukF9Vz4nB0k/aesZC9rivC
 dzBZvg7CaWFOdbns6j4JH4ECsRlf9NySCgm7BvXHZnHIW57O3LSxA93II
 /vh4N4gsvjEkW9JCXn/oO662jngE6/9eBLUDMB1DuqdTEsosgidzYeDx/
 Lzeg7LTbM/KTfpkrZ6x0A/cOBfPUvyDXRCBlvx4nf2I6627pugyLT5NaT
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n6Xe2HY7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] igb: Fix extts capture value
 format for 82580/i354/i350
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Yuezhen Luan <eggcar.luan@gmail.com>
> Sent: Thursday, June 1, 2023 12:01 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>; Yuezhen
> Luan <eggcar.luan@gmail.com>
> Subject: [PATCH v2] igb: Fix extts capture value format for 82580/i354/i350
> 
> 82580/i354/i350 features circle-counter-like timestamp registers
> that are different with newer i210. The EXTTS capture value in
> AUXTSMPx should be converted from raw circle counter value to
> timestamp value in resolution of 1 nanosec by the driver.
> 
> This issue can be reproduced on i350 nics, connecting an 1PPS
> signal to a SDP pin, and run 'ts2phc' command to read external
> 1PPS timestamp value. On i210 this works fine, but on i350 the
> extts is not correctly converted.
> 
> The i350/i354/82580's SYSTIM and other timestamp registers are
> 40bit counters, presenting time range of 2^40 ns, that means these
> registers overflows every about 1099s. This causes all these regs
> can't be used directly in contrast to the newer i210/i211s.
> 
> The igb driver needs to convert these raw register values to
> valid time stamp format by using kernel timecounter apis for i350s
> families. Here the igb_extts() just forgot to do the convert.
> 
> Signed-off-by: Yuezhen Luan <eggcar.luan@gmail.com>

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>	

Thanks for fixing this!

@Nguyen, Anthony L
I think this is a worthy net fix.

> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> b/drivers/net/ethernet/intel/igb/igb_main.c
> index 58872a4c2..bb3db387d 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -6947,6 +6947,7 @@ static void igb_extts(struct igb_adapter *adapter, int
> tsintr_tt)
>  	struct e1000_hw *hw = &adapter->hw;
>  	struct ptp_clock_event event;
>  	struct timespec64 ts;
> +	unsigned long flags;
> 
>  	if (pin < 0 || pin >= IGB_N_SDP)
>  		return;
> @@ -6954,9 +6955,12 @@ static void igb_extts(struct igb_adapter *adapter, int
> tsintr_tt)
>  	if (hw->mac.type == e1000_82580 ||
>  	    hw->mac.type == e1000_i354 ||
>  	    hw->mac.type == e1000_i350) {
> -		s64 ns = rd32(auxstmpl);
> +		u64 ns = rd32(auxstmpl);
> 
> -		ns += ((s64)(rd32(auxstmph) & 0xFF)) << 32;
> +		ns += ((u64)(rd32(auxstmph) & 0xFF)) << 32;
> +		spin_lock_irqsave(&adapter->tmreg_lock, flags);
> +		ns = timecounter_cyc2time(&adapter->tc, ns);
> +		spin_unlock_irqrestore(&adapter->tmreg_lock, flags);
>  		ts = ns_to_timespec64(ns);
>  	} else {
>  		ts.tv_nsec = rd32(auxstmpl);
> --
> 2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
