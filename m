Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E4E78E589
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Aug 2023 06:52:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20D0260BFC;
	Thu, 31 Aug 2023 04:52:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20D0260BFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693457559;
	bh=BZex6I3VijSJGMhp39kfk2G1rk/VZeqD6hVCAWYcgnk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J21PtKOBejJMl60sKqibKsVmN+glor69VxIBzRXdFuy/uwc9780zc9Zd2VxECD0l2
	 SvBxuqEam9ZSLs5678XKN9lqPIjsnoF9hoHtGh9eAhBFibfR1r9uIG09hMvhKQSoAb
	 v978Q/Tmmo7bn/ilAlAVNjyVBj52XJpkrVAWNzggVyUtzFKYAuYsLgHY9mSXxD6e8Z
	 9juUvy3OX/Qs+3KLYV64jqgqBwcgEUosPt6HwTfoAzc/rURI3ovfxvY701QFnlNPbr
	 ympIdWogdVenUPNdjCD1WpGP8iNJOoPX+Lqi2IM0y/CjHLL8mCsHcM2w3WVFcOVJS9
	 NMDncxAqvuNYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zEQjdN222FMD; Thu, 31 Aug 2023 04:52:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 112A460B8E;
	Thu, 31 Aug 2023 04:52:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 112A460B8E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 75F121BF406
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 04:52:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A10260B8E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 04:52:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A10260B8E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vItSZi5gTDfV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Aug 2023 04:52:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 325A360B3A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 04:52:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 325A360B3A
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="360800158"
X-IronPort-AV: E=Sophos;i="6.02,215,1688454000"; d="scan'208";a="360800158"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 21:52:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="829482066"
X-IronPort-AV: E=Sophos;i="6.02,215,1688454000"; d="scan'208";a="829482066"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Aug 2023 21:52:29 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 21:52:28 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 21:52:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 30 Aug 2023 21:52:28 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 30 Aug 2023 21:52:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NTfFgbHZ76kZRtyu4EGjjyNoeyHzKfiQsSLnidLuWPUCVw6MAbuTXhIIGwTUQlHA9PXi/qZN8f32iEhd1klSM0stpzAe9I3T6Yutev1h/ytZRIkmgcd+3cOHi5d1lCcMbxlHVrAuIzsGL9P9T4i6Cp8OHkKBGbtO/6jOUNc48ZHYmlZM+yflY/EnzLhv92DGe7Aq0XVnixCC1BCass+PZcKERgBzspmwlshoe5ly+gUop3rLP+o2rJlL07O0uL2NHIrHcDOVI0vIM2XNHDP5F4L6yoLLuSm8+dlyk9cjqAYcRQsQFrHvHimZsv94nVgA9agPEfEHjPjGmP3W5SHKcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F7ckKjW/TjZUG9sClxxSrcEzgooRhyckdKL+opYfYpQ=;
 b=cy/ATeCgpjOj9i0xxmqHIQKEg3FYuqWK0wZHFPQkXWI5QA7jyuEpzm8CQbXXmmkbI1RaVmj1K9ePki2LqaW42RerZeffJrBND2auZID+4nhpSssxvySxz2s4NCK2gXqZ1NBRY3P40RjtglAfjeykxF/E1IpNffh4PPsNIw7XiVdVr10/CCxqXUG76bt7WFYCapYuzOWWsf7+97jU3SMzf0BADQs7V/O40IbhMlwXpTPyGoYLu86uunBeDUB2UrtrDetvpvSZ32FFfgF/3S1rAwL7WW5I1ziqqD4DHauHaRbM4GC7IUeY38Kav4K/l2Lv2Ml12p5Gxx5euisHjXdNbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH7PR11MB6545.namprd11.prod.outlook.com (2603:10b6:510:213::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.21; Thu, 31 Aug
 2023 04:52:26 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a6fa:cb0d:5e13:fc2d]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a6fa:cb0d:5e13:fc2d%4]) with mapi id 15.20.6745.020; Thu, 31 Aug 2023
 04:52:26 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Staikov, Andrii" <andrii.staikov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix potential memory
 leaks in i40e_remove()
Thread-Index: AQHZzDZqnpqZgc9LOUm3blaLSVb3lrAD9P2g
Date: Thu, 31 Aug 2023 04:52:25 +0000
Message-ID: <BL0PR11MB31226CCD6AA135C17B7430D8BDE5A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230811092836.1707101-1-andrii.staikov@intel.com>
In-Reply-To: <20230811092836.1707101-1-andrii.staikov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH7PR11MB6545:EE_
x-ms-office365-filtering-correlation-id: 26ac51ad-d2c5-4d84-8933-08dba9de1234
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jSLfK02dPuRDWU1FJUMVC7bMSobtK0gn7Tvjn/6becOfViGxz26OtZdXtXN1V80zVqzMyJRb3bcGM/j0mn/IyCOh3285WvEdj7ol0v6sS59iJX4Q1yditEGFGvsPyBQBqEWsAC2G9TeCI7Byv4yN6/ZlYvYxcPQWrdX4yxD0AcRQ/MX61+AaVebSoS5Xla2BYsgLr7Xb7ng0qA1M3RsI4xUJ3ghqle6tRWbgGsIQA7aUxxupem8PtrVzemk4G1iL4JlCNp8q+dU+zg8RIrS5MkgHmrMCpjqySI/nrWGtkqZSrWciKVcg82BlvpYxIO6yNJyW10Ja3oBYeCSMMKQE18Hab255Z51k+9rH9zku9vcEEdY5QqOocgbwsa5yvLtaLWV8zK9rr/Fa+8Jh789ViYDaabexVHNyEg8t+ShAu3iEOFYt8lxfgnElVgXyDyp/DwcJv482/V+oY1f7RsQHS5CXHX3E0Ca0V9jnmhizgvCuUbvxn7xmUm8gpGrtQaLJArSwTuy9m8ORssaIL+tOuxVFJz98fAOFvJ0Nb/y7Tvgu2vRncueMsGFSoBW1NB6VVMTLo+Vy5Ni5TWg3AWrS25ym3VOBZ8t7OFj8+BTHw3lzKDbQHFVMXe/Mt6qRY5FK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(39860400002)(376002)(346002)(136003)(451199024)(1800799009)(186009)(7696005)(6506007)(71200400001)(9686003)(53546011)(478600001)(83380400001)(107886003)(26005)(4744005)(2906002)(54906003)(64756008)(66446008)(66476007)(66556008)(316002)(41300700001)(66946007)(76116006)(110136005)(52536014)(5660300002)(4326008)(8676002)(8936002)(55016003)(82960400001)(33656002)(86362001)(38100700002)(38070700005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HPjjM002W6pE+zmsHbVCzLf3YzUfZazf2aawkTmBpEoQvPD2Njqclc2uWbw5?=
 =?us-ascii?Q?vfjj3JgOEXxMYUcr15a3ofzL0M+c9yXnjdQJrkXoBFrpjRjHkb9fbqJt+zBR?=
 =?us-ascii?Q?iwjgAOypLGK2hP0GUcfcT7+d+LtbQLm5kHValp7X/JtbTm05EM+kzj2nSyEf?=
 =?us-ascii?Q?/c3Wzt0iaQKQYdCAEFkfJ8U93IS0c/w9vf2lDaE9fSkq5Np+4QtFI54cbFW/?=
 =?us-ascii?Q?iyj8Re0SOMNb7wPskQwArA/kfDQGPeStNJsyMDNE2ZuRZb5/MguXWTLa88Z2?=
 =?us-ascii?Q?eIaK7qlbaqrbJNvCgaArzbFMJe8uLNjlgTrBUL3p5lwwwmaI5KZfUuDTWYa5?=
 =?us-ascii?Q?DyQWM8UXELGYc5p4N384nf9bexoa368xhQ73I1cQOtJDDRkeNRSjEkHur92q?=
 =?us-ascii?Q?tQnRl9h4vsqZ3hYzY0MiDrxEhsothDexldpZL5jhhp+x00LwSXgxGJkzo5Nf?=
 =?us-ascii?Q?gLf/jSLdGZ7vvI+EVe6NTlKO2EUWPOXhwgoZY8Se9jano4eEXpIWCNfDnMuL?=
 =?us-ascii?Q?6XLWW4T+zwAIk/52PpqMBCyB7s1AiuKo5rC7EvgQ4DhMoVu4fKB/2/KMID3O?=
 =?us-ascii?Q?aRSvDBcb2PdO2E0G0GI6mCwzrn7khDqs+c/BF0YN/9rAhTXB10RbYHNATTCU?=
 =?us-ascii?Q?AC/xknE1dT3wYLWDptSYOktkL/7pMtiht+jEFsUPm7L168b6FDdUpN170pak?=
 =?us-ascii?Q?ftwVPZ9ah9TYuCr1AtawRLCbce26NAX5Vm7EBCWutBzK226g19iJ0xaZXNrk?=
 =?us-ascii?Q?zl+Sqapd7FYgRkiuRM8zRkeDUgwb4tIyb82rCxiAFKzTwd1jbYQElyWlV+dZ?=
 =?us-ascii?Q?ZJP4ldh6QfYQmtFpP5YjlUsXfiNay1qGM6ok3Pkst5T+HHQLV3YrOU1ptzoS?=
 =?us-ascii?Q?lhp5hCuu1476ujOJMz2e7jr/SvhKzBjNcYtH37RBKSIaU0sMZQeNkz03Gr9f?=
 =?us-ascii?Q?1CXq1l46PbDtUCqM24ZTOSNy2/C43Gm6lB70vmcsMItApFIKIW9LuUb3W3U4?=
 =?us-ascii?Q?KyZj40lUi789/q8cMr9Zz7GdxvTg8kdSBRyGBGsdLP5pvHQKcsua3OmblCWi?=
 =?us-ascii?Q?iJG5aUtH9MM35pGRcnDVr+3id7V6xbx8zYYDqUFnIDHDE8sRIx2szlvyZYuV?=
 =?us-ascii?Q?0llwtBwJDLZyAwzOhJphhinzSUexCojvsUEag0IFb+bPRRCN8QE6MXdXW1f7?=
 =?us-ascii?Q?SNb7S2RDn0GUQlO8AVkvdMOL13/ehL/Ln4g+1bU+YCzvQf5isjsheasBhdoP?=
 =?us-ascii?Q?edFLMQ07ngMcZn4NwIGrxuxAhyvPMAIunhrhTAT/mHtoVMaPqcdL2e1ioNiV?=
 =?us-ascii?Q?5jySb78HAPuDqMLCJfFDWTgF1Lg6w5HN9KgbH2m0M/+zq98Di57ERL/epct2?=
 =?us-ascii?Q?ZEA6+l1j38ud4Npk2JsXAHel5H7stzug/V2QHqMpEyP0ZVAmbL6WQXyyANqh?=
 =?us-ascii?Q?7KUjgztukk51mdowwkbjhSfwZI04vc1cdk+0iiuvojMjpfD99fvseC4xdg38?=
 =?us-ascii?Q?dsxjOq4MPE/y49x9dlD50DkGBDYpdQkAFtG2EOhHS04N3HAmubp1mlDtqTBw?=
 =?us-ascii?Q?X7+xYB92lodM2GTL/ibV2eMpJl/j0asOeJOMkGhF1wFk9zCOOAa3T9ZXrenD?=
 =?us-ascii?Q?Zw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26ac51ad-d2c5-4d84-8933-08dba9de1234
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2023 04:52:25.5705 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OpCO0DtB2CpYmkpcNTB8wFkV1aUd1RPD9CX9DBOO8dDq81+9rmmhgZEvVUPeRCYf1CF6h52epYwyEpKZcr3CcEp/33f0Facz+ChYA6AEI8zGT3AJ+44H07sIsqDpEZsr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6545
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693457551; x=1724993551;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+u8TT7bQL+2YBztFAI0getR+wqlU66LAk2SsTyYaIM4=;
 b=mjTCeMYqME27ZPeZ340rJvCHhayjti4iN+tKKS7yi8tk70IiWyaT037+
 /XlevFfFdLqY4IUCeZLnYp8EZ+iQPMO56K5+uQ7BDr8RclAVaXvgx3LE7
 OSAQE/rxrqBBI/M3DYur9SYYi7TSg1N6XHpv5IpQIcM+koVpUnzV8Z/5z
 Obs7HgI0qWsDrbgQuTvuaXo61koqeqaVLhA1OV7ZZeAudJovJ7lhAVWzM
 cmrQiYo49CeizzqVSIQPXJkiT0rKqBe6/zE2EDib87Cn/xSGSTzIwqrwh
 YfxGgojz0cCM8y7qorX2pIn15LzNRld+sKFeJSAkExAhveVbM47fRadlK
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mjTCeMYq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix potential memory
 leaks in i40e_remove()
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Staikov,
 Andrii" <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Andrii Staikov
> Sent: Friday, August 11, 2023 2:59 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Staikov, Andrii <andrii.staikov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix potential memory leaks in i40e_remove()
>
> Instead of freeing memory of a single VSI, make sure
> the memory for all VSIs is cleared before releasing VSIs.
> Add releasing of their resources in a loop with the iteration
> number equal to the number of allocated VSIs.
>
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1 -> v2: Changed commit message.
> v2 -> v3: Fixed mistakes in the commit message.
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
