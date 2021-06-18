Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CE93AD48B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jun 2021 23:44:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 515CC84225;
	Fri, 18 Jun 2021 21:44:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eL1ATl7pK7nU; Fri, 18 Jun 2021 21:44:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60204841E1;
	Fri, 18 Jun 2021 21:44:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 96D221BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 21:44:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8516340283
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 21:44:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7BUC7zdqRyFp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jun 2021 21:44:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3C3240138
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 21:44:32 +0000 (UTC)
IronPort-SDR: Xhz3zubBNMHEJFJrH6mVXOqikk23DH220IN/ZVhgoFXOQOkamRv8oD/ubHd9tId2JoYWcggUYd
 lnu00tDx0PxA==
X-IronPort-AV: E=McAfee;i="6200,9189,10019"; a="193755934"
X-IronPort-AV: E=Sophos;i="5.83,284,1616482800"; d="scan'208";a="193755934"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 14:44:32 -0700
IronPort-SDR: iHKYSPWvWzMeL8luK8UBirs7/AwVQVxvn8AgpSweANX7y/sa0T60kto5BIaoO9E08c0EtQtYtJ
 Ak33eas5RRDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,284,1616482800"; d="scan'208";a="451533387"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 18 Jun 2021 14:44:32 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 18 Jun 2021 14:44:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 18 Jun 2021 14:44:31 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 18 Jun 2021 14:44:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ArLkUOuLl/kqA681SE0+kq/s3Dcb3OELd84LybnrNhrabz/u/xYPE5U/ZMvmScWICaXkHZtxEvRjiFB6ubmA7JIREee86taln/Y4o1fGscH8h8GdUlemvu0uB3TbvQIql1jyIJakRAcI1ojQUGjrM7FDHdwKk34DU56iTBry7a32sD+rB5BX85LkJ2qeq0aXftgwrSxg0pxOP2fxvmloMFYeI1OWMM/0HcKhlmc1LrUtGQy/pBDzrQwKHk4QxG0DhyCzg1+BHByg430x284iQ+3oZbcdGTxBpsPBfXD4Y3nl/ELYVUVw6SXzjh9RUK8mfNhImSKv1Fkvj+rBY+HMAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ACUelxHPrOaLSQ23b1zgrCocb9K+SC4H9WiJ4MFFI44=;
 b=QI7MFgxJsRe5sNb1aPxE3R4KrcH+s3NCz+nrC3QFAgD3niQ/9yVbD40q4UPVR8KeeO3xEBlCYIRdDCYBlqDlU27pOmdJyRxfiQq2/80oYhi952OM4/2MeJOwpt6CD4aJkiJFFy3Yw7RntIOYsWqyo4Vi6S5MTsBCZ/ZGJgjHLVAvLIE9y1+FCkazkEVwLb6bPFMbdZEyqGTLJq+sPcKC9BWVbBbQEBvKYkdL1UwUi0CwVyk+eHS8/v9H24r6mxEnHyLYuSxkdoy/d83HHT6Y/uyj9+jTYR5UMP7qbGyP/2fHFbGx1uwB0jbg59l7a9O7gEpaRh7sN9kKj8hXYdgh4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ACUelxHPrOaLSQ23b1zgrCocb9K+SC4H9WiJ4MFFI44=;
 b=BJlBYWIx5CXW84ZK78IriPjpyAf6YD+PLtOGrWwQtartAQSmWHCtN1eibv9gr7Jh75zi668XcdEBbXfKTVNweAYw4Q/S9V5SkbAh8oOGm8TZakSW6jWa2fq8uo4Jz1nCBw/LuxBCTPV+7HquMSwIVcrFvpSygxIC8iXB5u+Kcaw=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4525.namprd11.prod.outlook.com (2603:10b6:806:9d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Fri, 18 Jun
 2021 21:44:30 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4242.021; Fri, 18 Jun 2021
 21:44:30 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3 1/3] iavf: Refactor iavf state
 machine tracking
Thread-Index: AQHXZCESU7850ZI7jkKXI9ri+J0uB6saTsAA
Date: Fri, 18 Jun 2021 21:44:30 +0000
Message-ID: <9567f07de3eb43920b03fe19ff3a2da6c63acb80.camel@intel.com>
References: <20210618090355.12519-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210618090355.12519-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9607f7d8-b5af-4c58-03d4-08d932a240d0
x-ms-traffictypediagnostic: SA0PR11MB4525:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB4525721806C8D8E511E8336DC60D9@SA0PR11MB4525.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Prej8UU/67IC+V5UgxdQYU1DIOTM8SlhPYRAP/uAc25ZjfJNI27doU30EgzTFy9A9y8dUm4rjm+9EfU5YfceE/1S3uDCrvrPcW4eh7FZveFWwQ0sA7QtULXU65WL0RxD6Li08nSfTr19wlJA87Z6uYtE+RuRRm4BxH7M4hCgzTFLIdOABxF3iMoa67j8VFmVq+hwKxdwcg+6aGr3H0T9FSBKxi+73Qml2/H+xLAkLwzGmaXmVJszwqTvg0emF20hxZvzPUE571qupPSHJXHvdyu7klsv8DkVMd6afDewFbqWxzQdWvEhYyNCjFNi8LXaMLFYNuYLSIxbrpYPt69jiovIQZKDajf7JCz3P1ba7C3cqxjOPsVY7yppykDZE6InpbQ1q/onBr1EeLRMhjMcnJF9FJHYr9VgtrXHQjndcpJbS5MekHE2jpAHL4sG+47xfwTxRUYhjJfTEsLAxiyZ5az5WNTT8/m2WX4A+z8UcOzmJ5YE1BgRhzU4qZIZj3bPm3hDSK9FjIHikYDw7XYi5xvCmXN9yh7fWwihfE4ahcrED5VHppZIvIygUfvWlKotTdzqoqaqiBlqk18m4bInQ6wSPGkDpsi/yySfE6wD0wo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(346002)(376002)(366004)(39860400002)(6486002)(71200400001)(36756003)(316002)(76116006)(86362001)(8936002)(6512007)(4326008)(478600001)(66476007)(91956017)(110136005)(107886003)(5660300002)(186003)(66946007)(6506007)(8676002)(66556008)(2906002)(26005)(122000001)(38100700002)(2616005)(66446008)(64756008)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q0I4MEljWFFlRHBtZnE0UlE1RHFvTmNxcXNPQ3BzUDVxWWdQelJnNU55ME1i?=
 =?utf-8?B?OGozNGxOaTg2ZVpySjltTENlMjdnUjMrUFZmMFhXSGhuc0xzYVkvdTVjRzBu?=
 =?utf-8?B?cUdyV1RIblZnRUpzTmVQTXVnb201Nm91dU9tZU9VZkV1bFRIcWIrUmNENE1V?=
 =?utf-8?B?T1ltY3pNSGVnL25RTEZ5em4xT2VCUkc1NGJab0pEcE9FMUJnMmRROU5QVnly?=
 =?utf-8?B?ZzJxKy9WZHFUaDVIeEttRWFIOHJWSjFFUzlOTnpha2llYTEwMGNRRDIzMEgz?=
 =?utf-8?B?ak1nbjFVU1VGNi9JU2g4RlZza0htVDBYK214ZFpYQnM3SVBENDNiYU9DbUpC?=
 =?utf-8?B?NVJRQkhNZ0ZQOVVmWGx0aHlqUjBsZHFDNitIMVdiUVFzakRKYkYvMkxKM2oz?=
 =?utf-8?B?RjJaWXFBMXBRNFBQV0NwLytSUnpQOGVwbllwbWtpZjk2eWlJRXpwUVJtSFd3?=
 =?utf-8?B?QjMzenNjMVFObnkrVnpTUnBQUDZ2anNWVHhpdFg3RStKSkZKeFhVazF6WElH?=
 =?utf-8?B?ZE9iY3NjYktUS3kyV1VvYzJMek1TSWtoVk5oRlYyRkV2WTdIejVVTFduaFZn?=
 =?utf-8?B?aXFXQkNGR0tseW8vb1RIek9KNnZVeXFXVExNOFNpMU1pWmNXVUVZK1RidjVk?=
 =?utf-8?B?cEtxRDRoT2xVS1dwUGxRRXNCZmZaejNuSytBUTRyZERtZDVDZmlkS0VGK0RZ?=
 =?utf-8?B?bU83V2RpQlcxYldTd3BieFR0OUlYMnpMNTNYODZScGtkbjdOajRLZndFN1cz?=
 =?utf-8?B?Z2lHVDM4OVd5a0F5THorZCtTVUtKMkFzRm8vcnI1THdKTXVtZmtFV3JLWGx2?=
 =?utf-8?B?THlVQ21YbmU5cEtYSlhxdE9IMTUyT3pydXlyWUdyV1k0RWxJTUo4MjVPcjJB?=
 =?utf-8?B?ZFVITE9HZGRHQ3hzcEY5TjUycXFLNG9OQkluSUhvMERrWXlMUG9nVklzSjYy?=
 =?utf-8?B?MEg1a1VMSlhPek5CR01wWlRNZFl1bG8yWGwxbmdlbHZDRUYrZGkyL1lrRTZ6?=
 =?utf-8?B?dlQ3NGZlVFNBQ1NDQlB6SkhjSGRUN2h4cUR4aWtPTEpKWHpEMzBOQXJkK0Mx?=
 =?utf-8?B?OVYvc3F4SmVFTy9ycTJkZG1SSi9FT3lqZUZCRVdTQVk3NEFrN0tNY2VKLzU0?=
 =?utf-8?B?THNxMlMvamdXaEEydnhWT2NkbS81MVhqRXp2djdmbDBhYlR6UWJ2N0RJVFJz?=
 =?utf-8?B?TlhPS2ZlL1NNTUIwK0E0TWRZOGZDcmRleSt6NXJuMFl0Nlg5ZnU3aEgxR2N4?=
 =?utf-8?B?bmFBRXdOQ3N6THVjaUNtUTVzNSttTE1hZHhvNnRoWDgyemcvVGxCU01HWXZy?=
 =?utf-8?B?bXBYaXJXWkx3NlUvNE9pelJVTktlUlhmbm4rc1lKYlBvM0Zlenc5MVRLL0do?=
 =?utf-8?B?bmI1TTA0bGFlbXNzTFJybTlPS3JUWk9oRkJ5RFNvTVVwUUtVbG9ZRTRVbDBv?=
 =?utf-8?B?cGpKblA2ckpyMHpLU0FMMEpEdlREMDV1SmhLTTExWDlHQi9OMVhvclltbGZO?=
 =?utf-8?B?dk5xR2d0dzNuOGZXbE80ZUZHM0tFV040UG5jTnduRUlkcGl1MFlnNkpWU1pl?=
 =?utf-8?B?UGZoOXdZcXI1UjJzNElleWZDV0tTbk02alVvT0I0RExKTmcxeTVjWkk3L1I5?=
 =?utf-8?B?aTJucWMxSnMweG1FeW85UEVXYTE2bS94ckNGQzlzdExZQzdNZ0NENmJMemZQ?=
 =?utf-8?B?SDN2YUpKRE9GclJDcEhOVGlPTE5iTnF6T0JVRHVTbHk0Rk40cThpdlFzdlRw?=
 =?utf-8?B?cnhsTlVUTlRjWEdjY283RXk4cHpUMDJNT0dFajB1REZoRmtTL3RVeUIwQWw5?=
 =?utf-8?B?VVRha2FHdzFhZGR4aTVOZz09?=
Content-ID: <16A4011D7AC0BC4FB61B6F693E7169D4@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9607f7d8-b5af-4c58-03d4-08d932a240d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2021 21:44:30.1851 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SRRf87AbuZraOqtUDD/10CMUJtF6ZbDCdQsI5mwC3IIix7xPmwBrBFzabw/rHGyvlzrZs45DNItAU6F8UQ8pzV2yABLSAVVmXbJhuA+Zp/c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4525
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/3] iavf: Refactor iavf state
 machine tracking
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
Cc: "Pawlak, Jakub" <jakub.pawlak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2021-06-18 at 11:03 +0200, Mateusz Palczewski wrote:
> From: Jan Sokolowski <jan.sokolowski@intel.com>
> 
> Replace state changes of iavf state machine
> with a method that also tracks the previous
> state the machine was on.
> 
> This change is required for further work with
> refactoring init and watchdog state machines.
> 
> Tracking of previous state would help us
> recover iavf after failure has occured.
> 
> Fixes: bac8486116b0 ("iavf: Refactor the watchdog state machine")
> Signed-off-by: Jakub Pawlak <jakub.pawlak@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>

<snip>

> @@ -2095,6 +2095,7 @@ static void iavf_disable_vf(struct iavf_adapter
> *adapter)
>  	adapter->netdev->flags &= ~IFF_UP;
>  	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
>  	adapter->state = __IAVF_DOWN;

Should the above line be removed?

> +	iavf_change_state(adapter, __IAVF_DOWN);
>  	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
>  	wake_up(&adapter->down_waitqueue);
>  	dev_info(&adapter->pdev->dev, "Reset task did not complete, VF
> disabled\n");

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
