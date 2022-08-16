Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F10595874
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Aug 2022 12:35:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DB16415DB;
	Tue, 16 Aug 2022 10:35:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DB16415DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660646122;
	bh=LYVB8gj9SGgZg6pFdgof6fDld3hmMgEtY8wmgZGMeq8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=33RjE+2291CQJJMH9rsaS4kI/URCa0iQ9HyB3uRbprOmloySqky8W1hseNIbUlF0J
	 5kJtio2jzXzSfW+bQsGspCWSjPtJWINoWpMcesz8km72gtBjw9nBaid2dTtAuuo+oz
	 iKYS13js7FVaunDO1slI/q9YEBAcRzrdFi49qtPP1mPq6mwo7siTRtn/PzqS+/RxbO
	 ETG1O6/YtHrdDgkTbKUnROtsJfy5LuycMu3cM/drax0C6RC4boON5DlplXpAr3A/NP
	 8xuwKtxRqP47Wkgg3V89lhXck6m6qZ0Y/R4+LCv/C/kQgGt+EYOtl6tz4T3Owy6sU0
	 ppMXsYh42WwuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N8D0ExKQEXeb; Tue, 16 Aug 2022 10:35:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC9394088D;
	Tue, 16 Aug 2022 10:35:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC9394088D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 970391BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 10:35:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C307401E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 10:35:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C307401E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9rROApbjfkmH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Aug 2022 10:35:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A7014031D
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1A7014031D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 10:35:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="293456409"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="293456409"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 03:35:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="782977277"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 16 Aug 2022 03:35:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 03:35:12 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 03:35:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 03:35:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 03:35:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KnRbhS5c+nsidjfeUejCqaj0ymjABYLS8i5qN3lcCmuxs2cXb0M7wQj4HV+opeE0rk7kZfY2CUjlnNahYo2QGFq4I+gaHDu5OcTjTzbu4CiLMd/ZGlHU43Y2wSb3CwC322dNqxa6Vm00FRHss9UTy5jULe0XYaX/r4tl7UilKDyp3UuvYMQ3rT6PPIu4uwqz6HYJBWxEv+98EmwrNKxN01adDV6y7hNbyWxPsU5u7sMJuhhZ8ZsERgjVL2nGVPrWrHNTqlxMKSDuKEKHjbpvkDqIl1oOJu3t+2ZfHrlI1vnAFi0Ix1xBBd/IbR+F4o00GH+ManhqMhunpv1n8JZMCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=py73irwEso+pNJt2I5jcj0yCrNSAO81+sQdGfPTTx/s=;
 b=Rw+c5+3c1d2TP6VEYpi6jqxrXN0v7DMCV0Nw2jRam0QbxcQbE+e2GAYtgIpKRI5WlyNHr0DeZmiX2JD2Br73y1NRGY2iQK0n9GELdvKeUnIFB5vziG9/R3LaqxTdymlRv9Z9sLPRHZtIPY785wUghzsftqwyerRR8LEbun+iNnF7mpCrpp6u1jN90PFL7ckxsasM2XeMQ3XD1rhKwt8eaqygrSi4xyM1nTjGZrJzcJsC77p4xoD3QI8i+nfzBz35eDEV2zZazydiUh3CKJiZSwblzU3wrwdKc2Bp1gAK9fN/QWhLDGeORzmqSR3BjmjVT5mo1MAKfgkQKz1Q0mx62w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 BN9PR11MB5545.namprd11.prod.outlook.com (2603:10b6:408:102::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Tue, 16 Aug
 2022 10:35:05 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::d45a:9b13:46a1:8a35]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::d45a:9b13:46a1:8a35%8]) with mapi id 15.20.5504.028; Tue, 16 Aug 2022
 10:35:05 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: Lin Ma <linma@zju.edu.cn>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "ast@kernel.org"
 <ast@kernel.org>, "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "hawk@kernel.org" <hawk@kernel.org>, "john.fastabend@gmail.com"
 <john.fastabend@gmail.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3] igb: Add lock to avoid data race
Thread-Index: AQHYq8LJ/nnQsBEYNUqoCgAWEQWOLa2xX9pg
Date: Tue, 16 Aug 2022 10:35:05 +0000
Message-ID: <DM8PR11MB5621A0C7FD7E20ABE4187137AB6B9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220809073542.3390-1-linma@zju.edu.cn>
In-Reply-To: <20220809073542.3390-1-linma@zju.edu.cn>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 845c022c-64dc-4aa7-38fa-08da7f72fbb9
x-ms-traffictypediagnostic: BN9PR11MB5545:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ij09asE0+XroMDXzU3ZOZJdjGbDZpCiqpIMDbpS5tmGobZ9goLe35I2WcIXWePN0W0t9XnRO+x1bP2+jIGF0AStu9IEuev1dhGx6GGSLvWAK/enxjB1uZxCQX6W/9Byf6qPT2sZ34HK1MF5csnMRlpjrNhYY0s94wX8eil4ilO6AYV5x1JbY5It4mWvy7YvG6rTwLX6Ah4qVTX+3hx9olHK9llM1lt6iU7ZGZt6Edhp5CbY7h0RZSBiNXs9+6BaLwzX2czTMt48CGeH13mbNPc1VPOAcc9p5KhhH0BsfBpK0EYxYSQ38QaMAHpsGmquRQ/pigoTuUpkOQKUeY72dL7ED8HFKSuES2b2xECCdL3zn/HJK3l6p1mCv7c2+1NbKH9WTAh2nBuwY+Hxb8PQFWYevsVjOiEYoWbxg8CSZv/md8Sg6YuW01H0uX+GhrqyfgBD1JH+EZhxZ0OylTV5LHuyxZm0vXnUPd1owbOfS7ACV6CRDM3RFlIvePSXSQrVMegf2lY3KxXlviJfdpPREbZkJ3UycWF7yGf28lCz6xph486AAd1SOzpGPsLe4e7vf0lDUwyTzHVlme1uiW4Bugc3HwusWPKNSz+WIMSfST0G6p320hZM6ZjTV8VC7FK9jaFAivCQuG4yK4f7sPxK2VWvFg02icI7JCoMBwEkM5lOYE5hkc2rEMKGGBiPBFuAzZmquYHesvGhOUmgqisL5SfvetEz/OXdfKeHaVfvjR4i6lSYtJuJAGNvcqQcMpbpPgZYRNh6yMx7mPP1YoMUTL/hE3bmBsUNXyXyFLggAGZpUr1vbJYvFBgV06SNha4MJez+/G9imcilOrfYFanu3hA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(376002)(136003)(366004)(346002)(26005)(122000001)(71200400001)(38070700005)(316002)(41300700001)(7416002)(921005)(33656002)(82960400001)(66446008)(2906002)(53546011)(66476007)(66946007)(7696005)(9686003)(8676002)(76116006)(38100700002)(66556008)(5660300002)(64756008)(186003)(478600001)(83380400001)(8936002)(86362001)(110136005)(52536014)(6506007)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jwCsWB7ZA7ASu54f3XZ8UHwAIWGATtebGROWiDYrKBcfenvnO0mV/WMLdSDj?=
 =?us-ascii?Q?ixxXOs4zMi6QAyrVd6HIFVvfdWZlcAhjNS4V43maJiqfzXb08Sev6j0GbePk?=
 =?us-ascii?Q?7rQyxYzoZvYN+gmkvGb5wQJBLIqX5fR0DTv10jVkQS4nv6b3OjJQTWLNknhz?=
 =?us-ascii?Q?WcHv2Xx5fLu7rLFV0l3qGrWYPcrlFtTHGLb4V/Bi61Rg/C2jxntmW8OLvODX?=
 =?us-ascii?Q?uWM3ZZbisXVx0LzSYQunRSdBOzc9NfimsGM93CiPhyKdOFdP37fc5QUgeaSz?=
 =?us-ascii?Q?COZhZizy+ffr5qqg8hYQRmOAHeIMbtXDIMX2DnTPZ1OO207f7lJ2B2PcyKnK?=
 =?us-ascii?Q?pxYW6A2o6f9OI8zy6bhhnw/NSLa/HcoK0q7T8PYBrC2hihkvyJnt15sfy2pf?=
 =?us-ascii?Q?xmaHoFixZjAPbi6AJ+/d6x/6aiMnxZQMROudgYZnsYm7zXqxbk2cbNWhO0sy?=
 =?us-ascii?Q?SFhYISJ0pjahzEnJ1b87lIt5httbGwMVap33RzA+pSjti0FnR++RaZYXiqzo?=
 =?us-ascii?Q?lWVDcUm1NaeHDpKgZRQPdj2AofderaB0R4iR6axu3nZWaLHpoFVzEBbcmOH+?=
 =?us-ascii?Q?24JmwAJbrlIHk5L2bYXingApCcjbaGHey1fIeejVS8LvkTG62rD8pgwVJRQk?=
 =?us-ascii?Q?Y7oHd6e9LpmPI3t5CwID+j6AUhGNZ/DtE+zoNA18BC/c3X1nUpfItJrG51z/?=
 =?us-ascii?Q?Zv+UoMUARMHRSI3yF0MNubCqs58mExXw2JHbPbkGbGDCpyyf2LJraflzmPL4?=
 =?us-ascii?Q?Atu+ewXADir6AhLYZbTwYSG2vaVxfQvdY/95zLS8dmYIYt22L6GRvygADdqE?=
 =?us-ascii?Q?xh0UFozXJUMYAGsGdecuFV3e8MSLwZ/wzH/n1dpyq4iFILAztxEg0ZyMGFdh?=
 =?us-ascii?Q?zMpgggYtXhWVlD8LGux2TqfZjkArLTX6cfvIKoak8xYiGB6z/NlN2tRd+sPE?=
 =?us-ascii?Q?wATt1UOVF7RCrposob478wshZOkf9jMF/vjM/6aGl3h6hp76VKmtOw3zJ+nL?=
 =?us-ascii?Q?vmRRySJAuGY4Fl39nXOHKRyvoepyINchDiz9NDNEj1Lv4w0qxAGY8GP3W9vL?=
 =?us-ascii?Q?rxbo79wgJOF9HQhBVDsK7AEsQYrNCIZvBlV+Mrba1hfkMTZXfJZwPIoA+x1D?=
 =?us-ascii?Q?VH0K0aETVfcCH8L+Wf73RFbN9FJ/hzBNlCWDF8Ah4lvykPZQx/aglXQbTG8+?=
 =?us-ascii?Q?rsPciVi/Vlj6UvOlQlJrh6bpNI+nJFHrJohQu5i0o7Vb2nan/J7/mQAQyNSi?=
 =?us-ascii?Q?Psn4TWkWZLfAbKiA+e0PgaOE5/hdp0I1iKSRdgUF4e797D6l7vRiRtp8vtFV?=
 =?us-ascii?Q?n/KpaaYwYkAuAWkc+7jGL+ET/E1hBsx7ajBJvtc/KZTxj68cioztJHuKEeE1?=
 =?us-ascii?Q?hT6tTVobig8fHAZnuJuCQoOXw80BLbQgs+4xC/ZaCfM3bL9l/yM3wkOSdZcr?=
 =?us-ascii?Q?ZAzmps3wgHbcggTsa8yOZfmEhSAsGuMm+ZHq5rDXsY/DA60OsETlKM2wG5m3?=
 =?us-ascii?Q?bhH8yg+Uzy5BYmE4SdU1FRmr1TGdJsHJUtlrYvLhAWmurX/hrzzsMDVjB0hn?=
 =?us-ascii?Q?rpDiG/Sbaw+PMD8W7SzjhuWvpRxoQCivCCeYxnvwuO1oWIz5qOY0h6fxtjHH?=
 =?us-ascii?Q?xg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 845c022c-64dc-4aa7-38fa-08da7f72fbb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 10:35:05.1940 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QgGR+iVvekl7JkGx4U8QvgbNNQxi65WQqYo8qhVf8Ld4m4pc0s5ZKlBQWQG4MA5j7hVyqunXMcWP9BBPBRX5Q/m7s5PwWTOdmu7Ju3WdhMY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5545
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660646114; x=1692182114;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=koB2q+FAdgFuFrunXG66bbY2MOJBXt9IuQx+eyyl5jE=;
 b=k+gm6a7O97R/fZYWrQxKaIhTqfH+PHjb09wz1DS4dVQbEmjPLRTr02Wm
 GVlR4+BwFUGUvpoxN11ng6sdLyEWMB+fPiyam+fuk6T7SKxh183YWUcjP
 ZQJ86mVP/vHMVX76YSrru4PsO26u6ovtCJyWuFCDFhm8UV0r3rwK0kNwx
 Kjhopd9M9e2333j0nRIhdyGhigvH627ZPhPwWZdA5eV3oOynvxYQyVp5o
 1WOPpT73IxmAvcLeyhOJ462fNpM30hjuI0X7MtJV0dt7HWfyQ3eX4Cb7G
 EUOuJCWNtIaw12P+YgAWGJyqhATqQvVYdV2jMiZKjoy7epRCxO6O+LVpx
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k+gm6a7O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3] igb: Add lock to avoid data race
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
> Lin Ma
> Sent: Tuesday, August 9, 2022 9:36 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com;
> ast@kernel.org; daniel@iogearbox.net; hawk@kernel.org;
> john.fastabend@gmail.com; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org;
> bpf@vger.kernel.org
> Cc: Lin Ma <linma@zju.edu.cn>
> Subject: [Intel-wired-lan] [PATCH v3] igb: Add lock to avoid data race
> 
> The commit c23d92b80e0b ("igb: Teardown SR-IOV before
> unregister_netdev()") places the unregister_netdev() call after the
> igb_disable_sriov() call to avoid functionality issue.
> 
> However, it introduces several race conditions when detaching a device.
> For example, when .remove() is called, the below interleaving leads to use-
> after-free.
> 
>  (FREE from device detaching)      |   (USE from netdev core)
> igb_remove                         |  igb_ndo_get_vf_config
>  igb_disable_sriov                 |  vf >= adapter->vfs_allocated_count?
>   kfree(adapter->vf_data)          |
>   adapter->vfs_allocated_count = 0 |
>                                    |    memcpy(... adapter->vf_data[vf]
> 
> Moreover, the igb_disable_sriov() also suffers from data race with the
> requests from VF driver.
> 
>  (FREE from device detaching)      |   (USE from requests)
> igb_remove                         |  igb_msix_other
>  igb_disable_sriov                 |   igb_msg_task
>   kfree(adapter->vf_data)          |    vf < adapter->vfs_allocated_count
>   adapter->vfs_allocated_count = 0 |
> 
> To this end, this commit first eliminates the data races from netdev core by
> using rtnl_lock (similar to commit 719479230893 ("dpaa2-eth: add MAC/PHY
> support through phylink")). And then adds a spinlock to eliminate races from
> driver requests. (similar to commit 1e53834ce541
> ("ixgbe: Add locking to prevent panic when setting sriov_numvfs to zero")
> 
> 
> Fixes: c23d92b80e0b ("igb: Teardown SR-IOV before unregister_netdev()")
> Signed-off-by: Lin Ma <linma@zju.edu.cn>
> ---
> V2 -> V3:  make the commit message much clear
> V1 -> V2:  fix typo in title idb -> igb
> V0 -> V1:  change title from "Add rtnl_lock" to "Add lock"
>            add additional spinlock as suggested by Jakub, according to
>            1e53834ce541 ("ixgbe: Add locking to prevent panic when setting
>            sriov_numvfs to zero")
> 
>  drivers/net/ethernet/intel/igb/igb.h      |  2 ++
>  drivers/net/ethernet/intel/igb/igb_main.c | 12 +++++++++++-
>  2 files changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb.h
> b/drivers/net/ethernet/intel/igb/igb.h
> index 2d3daf022651..015b78144114 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -664,6 +664,8 @@ struct igb_adapter {

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
