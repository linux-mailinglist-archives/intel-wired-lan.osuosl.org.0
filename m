Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E231C81662E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 06:54:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 516E6404DD;
	Mon, 18 Dec 2023 05:54:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 516E6404DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702878883;
	bh=ZdRA3x/qb3rhARbR9pAq/Ms6kf7UJQ4P0SI/Plb/Uuk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8f3ESH4SzJ0OaadL+InLIrafIVHvCPyUytgLVTmAL6PDs7o6Us4+YjTsuESfu/JkF
	 SuWf/OXxTBVu2g+PbyfJTTJgiNMgfHaEC38MJxrcer4cBxIAJwP/mUImIzFMmTryOm
	 jJdVUb+MpqIMVXDrHaSY1uEukYyHVDaf9Kj5U4wGV6O7Y3uba8St78ILQCP+eko0oK
	 TDEnjHWLNH3YsrfAcKuxrMeBOpZ0h1TUYimAcJsGP1eEwF5m/c6wEXCvz/fNZ9LKfO
	 HMpRZDFvnFv3qnWZD01di+K/R5YpV98PwI7NuQBsZpfuYdttew1iejXGYVQUVfT4lw
	 BeATXcb/RfLXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2TYNMd9iq7y7; Mon, 18 Dec 2023 05:54:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC496401CC;
	Mon, 18 Dec 2023 05:54:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC496401CC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C74A01BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 05:54:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 92797416FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 05:54:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92797416FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1k7Bt5BtHweG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 05:54:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CAFAF416E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 05:54:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAFAF416E7
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="481645528"
X-IronPort-AV: E=Sophos;i="6.04,284,1695711600"; d="scan'208";a="481645528"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2023 21:54:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="1022644484"
X-IronPort-AV: E=Sophos;i="6.04,284,1695711600"; d="scan'208";a="1022644484"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Dec 2023 21:54:34 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 17 Dec 2023 21:54:33 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 17 Dec 2023 21:54:33 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 17 Dec 2023 21:54:33 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 17 Dec 2023 21:54:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ahGoYNMdXtZ66m1Y/1X7T5gHP+0g7gZDq567OjwIzUdlR2tBWLIhM6BY45aL/Fz32RnxpsNwbtFhj9WwBNiDCqpaXSSkLTli/QB8oxpjker3JaCRSj9i5u0jU6cgAacSC40br61hw2juU9HgsdSwRvbGiVH+CXFXgzCMoBd1i3BpdKJTLsSHpIqMzS8GE0sM4GPXzEhM7n0pIfJReZpPtQONmnsj8F5TE7Ge3NPhjZJnUMJO3vCL76qEl24T+CTaGBuqEmlfIhf1WrTxMjfZ30WZo4XMn7/8OaVF2U7KMqmxdZo38FIXezR68X57tjkKl/Q1f0gAv96qCl2B5EZxgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4KTlQJZaDwlwQHRANR5+5hrrHE7fQXp1itN9nBAwxsk=;
 b=KzNLANKjjKPnthugCq5+8JQAtgnOxj8ICBi1UeJb61Baqk/fOzcMX4AklcfSFbFQeM5I+e7qrIe8kvu8+5g3wy6Y8QNxjmKPVup81cCCPynYjRLdSGo4D6NCD45mEA6DjmW13RZU5mFGd6pNX/chWGvu5gAWbAa+4FepwsV9O9paoKcbhEcBPvMG6HpbjX2Yq5HifGmf2AJehZ9Lck/7faNiY3nm4qcYWpxy83MqLqVH7oNy5GNtZOe1pnvnskLDvtjGWLsolI4gTblw9J0D0aT23U3FgdCLJLN0C5xwbTEf/nsMZ6k+PTGrGf6ea2zG8LcqUBaICPjSuyiRPVG8qQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH8PR11MB7048.namprd11.prod.outlook.com (2603:10b6:510:214::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Mon, 18 Dec
 2023 05:54:31 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 05:54:31 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Kunwu Chan <chentao@kylinos.cn>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>,
 "shannon.nelson@amd.com" <shannon.nelson@amd.com>
Thread-Topic: [Intel-wired-lan] [PATCH v5 iwl-next] i40e: Use correct buffer
 size in i40e_dbg_command_read
Thread-Index: AQHaKYVn1pzglaXc8Ei3mFRSCxY2crCumZAg
Date: Mon, 18 Dec 2023 05:54:30 +0000
Message-ID: <BL0PR11MB31226B042632413AB8C12D63BD90A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231208031950.47410-1-chentao@kylinos.cn>
In-Reply-To: <20231208031950.47410-1-chentao@kylinos.cn>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH8PR11MB7048:EE_
x-ms-office365-filtering-correlation-id: 7b455319-d008-47f2-1220-08dbff8dcdb2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NasxRP8DgeHzvboyqTaiuOGwkvLengyQqSbMg5AveeM93qyHHtJ67SMMaMC7Dxn96+TGm35ULImp3D5ZaFtnNPWSaUgemO7Kk8hoFV4+WrCc1ORQav6xybBbBzWPquAE67xyE9JzXaN6XAAMkdtm9r7pkc4rdARwT2vPby+b/Flw320ThD5Rfi29lL28qNuPYh+2igcO1Fr0vAhkmiZoBW44/akghlV1LUwjoxpLamr3RqmAGWJzNe9JpJgJFTpTNsi4v4sr0VXYZTbLS4nTQXXYxr2AHE3LYQIbi7NPv3eXMuAcudTHMq8Qq+Gf6WsT6UnabNErwvUqwemfYonGRdyDG7QJmwIudH5ddNrAj6GIZD0mhJk2DO1vhYa7dXPZvoYoqJL1WSSdtdbTDu5YprFAI064J1JIAYAU6irNSO6ujMD7NVDJiSJi0RFr2JjPuwQUNFzjdEUwRlDV2mCgYkbZp9IQ5GSnCX+ougWV+lbQqzIu/1aSMyDbodbqvdoDlOd69FaZ+TvtTWR4A80CuSbktgTk8Fz2dbV5xQoj6PNUKJVLF+9UC+5JdAlElHV822YlBOhf8aJEmwAJpGKbERV80arRXBClYQ824D2Ypb+9aobosl+pGwu25qhoRJG7XTw+pYZiiI6dLw5JDlwBSA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(366004)(136003)(376002)(39860400002)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(2906002)(7416002)(5660300002)(38070700009)(921008)(41300700001)(33656002)(86362001)(82960400001)(122000001)(38100700002)(26005)(55016003)(83380400001)(66946007)(66556008)(64756008)(76116006)(110136005)(66446008)(66476007)(54906003)(316002)(478600001)(53546011)(7696005)(6506007)(9686003)(71200400001)(4326008)(8676002)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TuEHseeahj/gbZdnbSO+yegRnWEo9Sfntnh8Im5z660Fzfb6tzds2Ak2YfO6?=
 =?us-ascii?Q?NKXQ3j1jDnYF5FGrTkcDyjP0QmXKSloAmyVQRgWckvpUW5RHwSS1XMlvUmeo?=
 =?us-ascii?Q?rrM2AFzLpqKfxQZDFgdBeE1/1N64sn4BW5mMoOkl0ZvNSUa+jvVqQJrL5xUd?=
 =?us-ascii?Q?97XP+L81Uq77tsQ9J53ntCJPcH9evtYCW5CK5mEQP256FNArN9Y9FufmGrMT?=
 =?us-ascii?Q?7Jh2Ylmp5AeR29e9GxDnwnT0m2NiyddSPmCuS5rJuaKY1xTc/yOUCJZw2gow?=
 =?us-ascii?Q?msnJk+ytisxvF3+Xv/BOvy2m3fhv+AyYIkEXNqf6TABCKPQWQKqNS0dP7+ES?=
 =?us-ascii?Q?EFyhCFt60mxTp1hWhYcQtjqoQE2m8CfLACLJdrcb+hmJX0ng1XOILQDVRcB7?=
 =?us-ascii?Q?KITYmud4B94elGnTyv7Ncz4Lya4FvudGSpFStofTcNhy/KlsZyP/nKAuJGDy?=
 =?us-ascii?Q?+jLM3zfcJKCPMjapkLszNgCqgM0cjen26272ti6PgyDZGE3Ka2myZg1l6Id0?=
 =?us-ascii?Q?GimCVQRRIzuMwMhQlPugsgu7EcchUBYZgqodvowQA9s0f2DOub12zsy0TZpR?=
 =?us-ascii?Q?0X3DYgjuMIlBuInNV9Ls17PdT+aftWI/i6yXzvTlmE/B59ZqJgR8y9rsS9Ol?=
 =?us-ascii?Q?EhIBxilGqlGr+KBz+i4tVrCivRnApN3Htsv6r/LqWwpbLtANpIdeQ4HwH5B0?=
 =?us-ascii?Q?+4A3xZv5xay/vf7VehCZ+2KRgylzczsxIGWqWsLz9fw0MiJmEoYTTVE3SV72?=
 =?us-ascii?Q?ZWhGwYCRmHYtTWej7+fe3ib2LkOeZ3W73hXu27AnJK3sTu+n5xZObnPyWcYV?=
 =?us-ascii?Q?U0CZOz0EBz/bKnnHm2kYXo+oJaStomeHk0KNU/MMbqYmS4McnXIm/gNwGH3s?=
 =?us-ascii?Q?OVjaLUUsBFCKmDRdPUPjkuiNJHGE88hjMfbHzt/bJD84gvgjCrTMm3RCjHK9?=
 =?us-ascii?Q?dE+PlveboI3vsBX5PwmJER4js2EYwP3w+TWxqv8RCXu0qvcXs04aKMW2PPO/?=
 =?us-ascii?Q?FvAy2imlb5MIxxymkI58x0rDf76/D5ZVEx7TH/d7a0gelAZzTE/5rYHDrcIq?=
 =?us-ascii?Q?zOEEJ4qFNWiidNSTgNkv26TZt7FhXRU6cSZJfWKfImUCpUTSHG6xq5ClyYKM?=
 =?us-ascii?Q?KhVlzbvC1wU+X/7wS43w+4qmBKSFfNiEvvmlTn/eRxivL/Oaf5VJVRroKuyY?=
 =?us-ascii?Q?v6aanuCo4FG2TbBnf7yvb2ILpOOchUbypeWONUVpH45mpBezx1adEwsK00VT?=
 =?us-ascii?Q?VEUfju+eFj8061Gmu+13HoBUtQklHX8ot7jBEAbrJcRmIvzX4STdyPJRfPGd?=
 =?us-ascii?Q?oeAzgS3AinxKPQ78JN3CoRY6nGriFYdVBlS6UYR69Zv5cdJaQT59l7sQ8sXZ?=
 =?us-ascii?Q?njAS75bNL6XIcKjBuDhCIaNv5thyRoa1u2WaaZbcLA9sTB0CX9mcF82cnQVu?=
 =?us-ascii?Q?/4I/K2PYmkkLxbEoix+HLBKeYyU1IIg0PtXpePzUhBJjj6M519hXuCo2oWio?=
 =?us-ascii?Q?2f1oPYQV2Z3w7V4LR1kWftlHlqxNkSZYwp5O9opU/n+/cF9+vt8W3wSis6QJ?=
 =?us-ascii?Q?KKzlYVd3wQ9+Mxn2S/LRJsv3xfoEtLcyS69OHR/OX5WYU1gCGyJfzFl/3Pp3?=
 =?us-ascii?Q?/Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b455319-d008-47f2-1220-08dbff8dcdb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2023 05:54:30.9143 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jjgy6fv+ZEsL/D4YygvOrGslXNknEdEHJusF+KXE4f6OlNcL9pXLDVaKYdHt7xh2sQ1zF9GaxnY6lYmOGQiNHUiazwViMERcg/2rBLzfFVWq1bmmXKUIH4wGuq27lg9o
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7048
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702878875; x=1734414875;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AAlBcGeqNutprY5P4PeLjV48rYFj2zCglhdTKb9CMBQ=;
 b=hE6sorUsRT/qDjYNirOPLvZW2CRzjeiYQN8eup9g5cWwjhwijdx1pp6t
 qosnDEb8qBmZ5cn8DslwYMn9r0cVm4ROm//6OW/WWHZTxxKoj7nFqOwc+
 9eXPic9cquAIqgi2ap8ndB0xPr0Tf24V8IcJdRA4V211ZROrEShQEbuUk
 U3Iya9QKbPjv37mGgJFHF77d35vp+tVWnL5I5RNX9Shxr7GGkzjPc9ABD
 h47Co5wsB0n/RlZ/7+glXb+IXVWoSeeW3zzI3m2vGT6eF2OaosugAKy9n
 1bBgyvtD8DxuTaot11z2BIYce4ZARC+1ATqGYmRO4mUW3aa4E8MvXbTV5
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hE6sorUs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next] i40e: Use correct buffer
 size in i40e_dbg_command_read
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
Cc: Kunwu Chan <kunwu.chan@hotmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Simon Horman <horms@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Kunwu Chan
> Sent: Friday, December 8, 2023 8:50 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; davem@davemloft.net; edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; jeffrey.t.kirsher@intel.com; shannon.nelson@amd.com
> Cc: Kunwu Chan <chentao@kylinos.cn>; Kunwu Chan <kunwu.chan@hotmail.com>; netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Lobakin, Aleksander <aleksander.lobakin@intel.com>; intel-wired-lan@lists.osuosl.org; Simon Horman <horms@kernel.org>
> Subject: [Intel-wired-lan] [PATCH v5 iwl-next] i40e: Use correct buffer size in i40e_dbg_command_read
>
> The size of "i40e_dbg_command_buf" is 256, the size of "name"
> depends on "IFNAMSIZ", plus a null character and format size,
> the total size is more than 256.
>
> Improve readability and maintainability by replacing a hardcoded string
> allocation and formatting by the use of the kasprintf() helper.
>
> Fixes: 02e9c290814c ("i40e: debugfs interface")
> Suggested-by: Simon Horman <horms@kernel.org>
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Suggested-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: Kunwu Chan <kunwu.chan@hotmail.com>
> Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
> ---
> v2
>    - Update the size calculation with IFNAMSIZ and sizeof(i40e_dbg_command_buf)
> v3
>    - Use kasprintf to improve readability and maintainability
> v4
>    - Fix memory leak in error path
> v5
>    - Change the order of labels
> ---
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    | 20 ++++++++++---------
>  1 file changed, 11 insertions(+), 9 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
