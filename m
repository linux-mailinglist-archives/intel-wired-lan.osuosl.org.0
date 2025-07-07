Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F43AAFBAB0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Jul 2025 20:33:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 97B3780F54;
	Mon,  7 Jul 2025 18:32:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wr65KsRfR2rb; Mon,  7 Jul 2025 18:32:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E09AC80F5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751913177;
	bh=l/inwKq/8oZ30CnPQm78BKwHfXdg09g7q/5z0Z2UojI=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WQhtp97aYZbbT/WV+kO6F6rcgOgZ/iAUVrWBNb3WoFc/+JxzY9ppo0OfV1Q8qDTyy
	 ZpBe6XTsznajDePKFtcyhXvh/IvVHhVqaFgLUg/rdxoNktrS39cVefSZjAW25k1HVe
	 IUiWEBcQd16pO815bqjOm3FZ13sy8pNO0TvP2pC9zC5BRyNCDkdNhYS3zFsZZegYfi
	 lf3IzIJhMiOgF5aSYI5wYTcZgaVSx1qdq3kUjLpfmtgIy1St7LdGYOJvkMDCSGpVfD
	 LRux6srsKmSENcNbxrdW2iOmUz8bxQJAIyn/7D8WIrcBg57v0R9FjSUhhOVKW+BX0N
	 IIBczTdrt+nCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E09AC80F5A;
	Mon,  7 Jul 2025 18:32:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A1C481BF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 18:32:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8857C6077D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 18:32:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f8HMi3CCnxEm for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 18:32:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AE61D606D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE61D606D9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE61D606D9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 18:32:55 +0000 (UTC)
X-CSE-ConnectionGUID: 15a0InX5TeSRp0qFYX+L2A==
X-CSE-MsgGUID: LWlVbCr4RxKz0SNRYGPWGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="76690627"
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; 
 d="asc'?scan'208";a="76690627"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 11:32:55 -0700
X-CSE-ConnectionGUID: Qfb6vPWZREGpLqzVHKJ6+g==
X-CSE-MsgGUID: iH5Y8j8yRAqaTFus9pSgqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; 
 d="asc'?scan'208";a="154682796"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 11:32:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 11:32:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 7 Jul 2025 11:32:53 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.70) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 11:32:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V5U47umqdaNdEwK46tJJWW0yQ5U/PMfzClkOwhWTZooFZJu5zxunOYChfQZXSZ1yVmMM5CK8+wC3W04wyPJvKaheJrPnHrQgFo80jlGAvtACSsx615z70zobuItPKpbx+6B87HP5Z9QxMCrWx5euw6Zh33ePi8IwJKnn+nWA1cBYEXg/9t84ns9hD7HXFN+EL1sp0OVuFTTlQ83cLv5PdvFJlz0a0bQf5oczeajDiLjDqu1iC0wM3nAG3d8vzXlxKN3qhHrDhVI9cFFUIa+l3HOaGYt2ZS6OWPnHu4CiDT9EV+GoW0an6BhmKlUHOITyHap7aINuDd6FnofKcNY1rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l/inwKq/8oZ30CnPQm78BKwHfXdg09g7q/5z0Z2UojI=;
 b=kw+ejMWyKYMZgd1074FCr4L3rG5ZLUm7AIbEwZ/W4Vx0ssLRr+53Ti4xHO42VepvGjEzeQ5GGfDZFQNiEgMxwcYUmPYPVpOXOpvSdUfOlHViyrcsHWfEM3zXS0yA1ow40uEC75To8R1UGgPft1kou/2nurhedkjPWTdB7YZNX8f1ea0T9Mu40eTKYjf6ELj7fP6hjauuC44oav6b7nAkW+cFTcO8q0k+86QHEoTlecIcY7GQIO0UOmYvP7i0hMrkQGk5fHC5fFYSH8Wd7uVWOGNATaKgMyhvOp1DkdDaxsIk8AW+JDKGSLkR2qj7AALeFsCQJS/lbYDFyfimUArPCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW5PR11MB5908.namprd11.prod.outlook.com (2603:10b6:303:194::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.24; Mon, 7 Jul
 2025 18:32:23 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8901.021; Mon, 7 Jul 2025
 18:32:22 +0000
Message-ID: <252667f3-47b2-4d1f-86d6-c34ba43a6d47@intel.com>
Date: Mon, 7 Jul 2025 11:32:20 -0700
User-Agent: Mozilla Thunderbird
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
CC: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Jakub Kicinski
 <kuba@kernel.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Dumazet, Eric" <edumazet@google.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Igor
 Raits" <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, "Zdenek
 Pesek" <zdenek.pesek@gooddata.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
 <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
 <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>
 <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
Content-Language: en-US
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Ly3fQya1vHNcWFe9w860S9Zf"
X-ClientProxiedBy: MW4PR03CA0276.namprd03.prod.outlook.com
 (2603:10b6:303:b5::11) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW5PR11MB5908:EE_
X-MS-Office365-Filtering-Correlation-Id: aba64a3f-57fa-4c04-178b-08ddbd849d2b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?elJSd05JdS9BSSsvdWd3ZTlTOEdlSy93YWQ4Wks2U2ZnSXdQd2lGZ1FIWjdn?=
 =?utf-8?B?clQzSnlyR2lkY1ppYVVEdzhxZi95K0g2SVFxako1OXk5U1plRWE3dWcvazFx?=
 =?utf-8?B?RDZCQnZlUXNZOENyVjkwNndSQmExdSsyTU4xdWlNL1pNamxScnZtaWphNndP?=
 =?utf-8?B?d0lsMk51Tm1XVC9qN3FUNk1MNnNmaDRsUVQ2ZEhPc0JmcEthUjgrYWo3ZzFy?=
 =?utf-8?B?UnpVM09EMGJnNyt5Z1l0WEpUR0NmVFgzU3YramxTdkErVWMyQ0VNMzdqNkxB?=
 =?utf-8?B?Q1JRejRSVkNzTFlkbnF5NjVDUk1obkpYaGo4VVdnTDN2Tngvb0NObGRBT2dZ?=
 =?utf-8?B?dFJJcW5HVkJnKzN4YXZsekVJUGJ4ZVB0MVJUWEdjOVpwNzhXRFNRTWFFZm54?=
 =?utf-8?B?Y3FTZDBwZ0NoMWY5M1REeU5HVk1FSTVoMFdxUitiMzlFL0dreUhpWEtHU0gx?=
 =?utf-8?B?dWZvT3BCT1JVSjdPZ3N0cThUWEhBeUtVU2Zoamk3OFRoNk5hOFIyYk91S3lM?=
 =?utf-8?B?N1RkRDdhOTBMeVkwb2tuZEl6dzZENWVzRzdnQnQ0VjVzaHk4YTlKc2NiSlMr?=
 =?utf-8?B?dGtJdGxka1BKcXhwZng5bEUyQlUveDJOZzR1aWpQSWJuYThTRG5XTWRMR2Zh?=
 =?utf-8?B?bk1GMmQ1OHN3TkFGSk5GVGkxQmJCc095ZDRNSkJieXFVd3o4azBxbi9FMkhz?=
 =?utf-8?B?VXphZ2FIeVlESzZPa1JadlBPN2JwNWhxR0paRnJuVzNNMXBQWjd3S01mYWZM?=
 =?utf-8?B?UzAxM2QrUTVhQWtESGtCNDEvK2VMbHVaZTVnb2FWSHFadC9uMnBvczRlc3g5?=
 =?utf-8?B?T1lSbHFxUkhmaUt4czB4SitBNFFIelRZNDE5OHBxa3k5WXNRUjVpWGFpK3B1?=
 =?utf-8?B?SGNBSlB0RTZUQ1BDVVdyNU9mMFRncCtCcjNEMnlOQ04xemlpWTlVaWRyUGVG?=
 =?utf-8?B?UDBVRExjeHdsLzBhVG1IS0JhY01UY05QZVUrdzVmSTVvMER3cjlqZUZkMTdy?=
 =?utf-8?B?UXg2bzF2UkxPZjREdWZtMktCMzJ2WEtPTnUvRmZyck5CNE44anllZU1qNCtK?=
 =?utf-8?B?NDh1SnhwNm1pRE9xNkdDUEEwaUhOeDR4MjJVdW5RaW5RaEZGV2hlYTFqWStT?=
 =?utf-8?B?M1RHNm50cHZCMXlPV1hTZjM1dkxocFlTQUtjY3REWkh2akx3L2RMdUpuUWt3?=
 =?utf-8?B?bU9iLzlLbU50dWtuNTF6NzlJdnJvbEx3eVVqS0N1bGpDVjhOeWQ2Rzd0T3Zy?=
 =?utf-8?B?TUdqUnd5R2lVWWJCMDlyMGcxWityc29nZFBKZ2YrQ0s0ckl6QzU4TUt1UGVq?=
 =?utf-8?B?anAvTDFTOHgyOHFrNWRubUFFVlVRRXJ6b1B4WmFhOCtVd1hudk1ZOXlGSEYz?=
 =?utf-8?B?RUZyaXp6UjRQN2pQVGxFeW1lVWR4VUlZQ3B3dnZxK296QjlQSnZJbmpLRGVO?=
 =?utf-8?B?MGU0eDBLb1Q1Q2hqamVPS0F6SkxwVWhTckdKdkU5WEpSazM3MXNBNG9lcC9X?=
 =?utf-8?B?czlZbzhKM2MrcFFUWk91Mlg4L0VjbHVIWXRDcThaMmdnaUk1N0t3c1RXRWMr?=
 =?utf-8?B?Yk1SakJkeThMWm9FNHh0Y3NwN2NkbWNzOGZyNXBsdnIraWNlVDZ2RDlJQ1BR?=
 =?utf-8?B?SGVmNmRyajBCSE9CcENoMTVEMzJjTFVPNk12eklMbklmRGlMcmkzQkg3REpi?=
 =?utf-8?B?ZzVFdjIvOTlZR0dpbzlXYXJaSWQwWDU1Z3dWcnFwVEVNcmhSUkxqeFBFVWlM?=
 =?utf-8?B?d1hxa050bTBxa3dZakliQ0RKZmNmK1h1UHIyTm5DczR2d0ppMU1oeERCSStC?=
 =?utf-8?B?d0h2QU5WRDNLUnUxUWgyTDhZSlZxNE5jVWw5Um82bzBhejk0bEdla3Q3NlA4?=
 =?utf-8?B?UlF5RU5DdXdGMndETlU5TzZZSm5aK29pTnRHcExFU256ak9JdXdiTTNJRnl5?=
 =?utf-8?Q?G9pcQ/3fAZY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUpWQ2dQMVpmR2hjaG53UFV3ZnoyQnJkVDRpdUFxZm5HbXlEdVhjU3dzOXhy?=
 =?utf-8?B?VGJYV015d3lBQ1o2ZFFqcFZ6c3BNdnZRWEF3UVRzSjNkdStvdzcrd0V2bHNK?=
 =?utf-8?B?am5zZE16S2FVYWhCK0E0bVRQQVM5NHFEemFQdWFKRUlHd3JHdmVBZXIvTmRa?=
 =?utf-8?B?M1lNZFBYd1NOWmY2MVl0ZjBjSGJyK3VtQmlKVDBydTVSR1hGQTdNQkxXMVc3?=
 =?utf-8?B?dkZMT1d0RzdrWGE0Smx5K0JRcE05SzZhTUVEbUZyTzZGYkp3cGJwa2VkNm5r?=
 =?utf-8?B?NkNnaWluVWltUkxnWmhleXl0dXFEcjVNUnBJQXY4US9ZMDY2TWl2bzlhUXM4?=
 =?utf-8?B?azJveVhrZUFJTWZxeG1TTTlPRWxkVkNvUWpLWDhBaEtVUXRVK0tGTTBJeFhh?=
 =?utf-8?B?cThBcnpHRi9Lam1NQjlFOWFrQ1ZoWUxNSGlqK0hCOU9NNVlReHBQWXFJUExZ?=
 =?utf-8?B?bUNIa1hpbHhmUDR0c3N1aWY4ZDZwVC9OMmhiVHlZNjRUV202U0ZYQUNMQ2g3?=
 =?utf-8?B?Z2t1OWV3czUvaG5rUWs2K1pLdEo2M0IrR0VuUHJhdUVLaWc0Nm8zSHZsNWFK?=
 =?utf-8?B?dTkrUm42aFJvN04zSzA2cUVQYkxORGtiSHFjZ2g0c1RXekJYdExrYXlVc0w1?=
 =?utf-8?B?czNmVjNOSWVKU3ljTVMvakJNYVZlUEtUZlZUM081SzByS2JLSHpkVjN1QWxF?=
 =?utf-8?B?b1FXTkl4K00wYjVMcDN1WmRTTld6dUtoKzJlRTNKdWR0aXZHNkhxU20vcnhV?=
 =?utf-8?B?UGpBWDBtSWNjOVBHUFFVQzVkeWJvUmJ5WUZFaW1xZHJMekMxM01RS29iUlVi?=
 =?utf-8?B?TDVNRTMyWnk1bzQ1ZkFwMWthNEN0dDVUZDFTL2JBSDJyZEQ2QjI4MGJYUWcv?=
 =?utf-8?B?RVlmQlJSRlJzVkhBMll4cDdIZmZobWs1ei95SHMvYXFDcGErcjRvWU9HcDYv?=
 =?utf-8?B?L1RRRjlRMDZrZVB6dkZMMlV2SFY2eU5PUkFEQmlhN3o2Y3pFa2d2K0hObDA0?=
 =?utf-8?B?cWI0c1VzVng3MkZreStqa1VScmx3eU1FWHptZjJsVlB4OEVJMENCOWIvWFdr?=
 =?utf-8?B?TUhqWXIwYkJuMzIwWWxrZVlOMGxocHVGOVhJcTVCa2ZHaGZXbmVEM2ZkcWNO?=
 =?utf-8?B?Y2tSaFV4Zjd4cXhGQ1RPN0hSRU9NajhjZ2pRMmdKYkFzaFlPdG1MNzdYQkZ1?=
 =?utf-8?B?TytUVXRrZldSVjgzdjJ6WXRtbVpOdWgvaEd0cTRZdHdrc2VidElwb1hzYVE0?=
 =?utf-8?B?bVZqT0VxcEcxNjJwQ2hFZEgzWG1UZjFRR1VYNHNQaDBLV3BZVVlBbXhoZERL?=
 =?utf-8?B?bHJybjEvckJrbTlNanI1NHRicmxOejl5NmF2UW1LcUxJVFplSEpsUUQvcWda?=
 =?utf-8?B?Mktyd1JoZ2sxdlZsNHRaMGNxdVhVMjh6V0h2Sjg3MUFRZWY5dDhEZW1sdUll?=
 =?utf-8?B?SHBEU0NmMmh6bzQ4WDA5NERIRlVDY2x5aDBnZHVkMkxqbGZjYjRCOCt3OUZU?=
 =?utf-8?B?bEpSZERLWGxObUZFck11VC8wRm1xdmQ1NEU1NndIOGNkNTdJVHNuaHQ5SStY?=
 =?utf-8?B?SDA4UXJjKzVGRGRoeXBlU0xkZnBHcGVJZ3haTENicXVxOHpVdnJkbWNrK2pW?=
 =?utf-8?B?UE1sVjVGUWZZUTRXb3VSVHo5THhjZFBpOGRvRHNJM01IOTYxZjVKS1ZySFIv?=
 =?utf-8?B?ZE9WMXU0UkppaVpSV1ZCY2wwcE5JODJzMXlVRHI2cGpLaytvYjR6eGkzeFY0?=
 =?utf-8?B?VTRpRmlkekRrYjZFVmlpM2xQekU0M1J1Rk9yZ2t4R1JTNmY0Rm5lcEQvVEZF?=
 =?utf-8?B?Y1ZubXlSSGNRQ2cxUXlCMVAyYzVzSXk2dklGWndLdnJaSmN1OUEzV1JMOXh6?=
 =?utf-8?B?TnovRVAzdW5Vd0NIN3VUMzRLd3kvdGpEOXh5SHk3Nm84c0xqM0ZEZTBnQkVy?=
 =?utf-8?B?Y0xLSy9jMDJUMytVaFA0RnZucUs2T1RiZmV5Q3RqVVo0eFNyOHlPM0xuRi9W?=
 =?utf-8?B?b2h0WTgwbTl4ZE45ZVEvVVBSQ2lEekc3aHZEcUtZZTlFM0pGWXZDL1ZYamx5?=
 =?utf-8?B?VmhqQmlKS3huRDlKZDJPZy9Va0FNYUc5NHhYZ2RSTHBXRENmTHVQU2hvbmNW?=
 =?utf-8?B?RUF2RTdQYThEQTJlRVpzcUMrNTkxRlR4ZjJZckZEdWYyRzZtdDdSdldqY01x?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aba64a3f-57fa-4c04-178b-08ddbd849d2b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2025 18:32:22.8692 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gq7XMSv1KLkKI9EhvEDFo5dw18GBQzZ+yvWt4sPY10PAyBX8BlHN9q63dUWAzOChH2oVcWwZt0rwJnB3bR8In2K/LrZzNnEFtTIfKKC+/7w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5908
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751913176; x=1783449176;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:mime-version;
 bh=NIsZD8DWytneT8tZD4DF3co2Oud6CSyKX4C7Hd9yhug=;
 b=ULxltWh3woXJkD9nWT1ptJGRHBPMs1Qs8AHSsLIsUWT56mQ/RZrNpNbm
 gjTJKmuAyRGvZavVqa/n4xjXAasbMXf665LVq16v0tAorLKjgxR3vhT+A
 z4X0yd4bx1RsWLa3aGxkyAxHJx6TCeodqXSWs9HuYRXJMElmjYx45g+lv
 WRqyE5E6GZohI6AN19ynuCGhCrkngm/wDQIWog/3AQDI0Lwc4y1Q+aqrF
 gewQ1zrBS09C0Vjlvp9u7Bsqdv2MfOfsFtgbCH54H2nZJpxk14IPx4iaU
 L1DUccs0NQAvJzO8lG2oH7r3TxTjkanFaszLqf658psH12gKeK5AT+99+
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ULxltWh3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

--------------Ly3fQya1vHNcWFe9w860S9Zf
Content-Type: multipart/mixed; boundary="------------YPgZHly41I1M5GdMMtn5VCdF";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 "Dumazet, Eric" <edumazet@google.com>, "Zaki, Ahmed" <ahmed.zaki@intel.com>,
 Martin Karsten <mkarsten@uwaterloo.ca>, Igor Raits <igor@gooddata.com>,
 Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Message-ID: <252667f3-47b2-4d1f-86d6-c34ba43a6d47@intel.com>
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
 <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
 <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>
 <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
In-Reply-To: <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>

--------------YPgZHly41I1M5GdMMtn5VCdF
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/3/2025 9:16 AM, Jacob Keller wrote:
> On 7/2/2025 11:46 PM, Jaroslav Pulchart wrote:
>>> think iperf doesn't do that, which might be part of whats causing thi=
s
>>> issue. I'm going to try to see if I can generate such fragmentation t=
o
>>> confirm. Is your MTU kept at the default ethernet size?
>>
>> Our MTU size is set to 9000 everywhere.
>>
>=20
> Ok. I am re-trying with MTU 9000 and using some traffic generated by wr=
k
> now. I do see much larger memory use (~2GB) when using MTU 9000, so tha=
t
> tracks with what your system shows. Currently its fluctuating between
> 1.9 and 2G. I'll leave this going for a couple of days while on vacatio=
n
> and see if anything pops up.
>=20
> Thanks,
> Jake

Good news! After several days of running a wrk and iperf3 workload with
9k MTU, I see a significant increase in the memory usage from the page
allocations:

   7.3G   953314 drivers/net/ethernet/intel/ice/ice_txrx.c:682 [ice]
func:ice_alloc_mapped_page

~5GB extra.

At least I can reproduce this now. Its unclear how long it took since I
was out on vacation from Wednesday through until now.

I do have a singular hypothesis regarding the way we're currently
tracking the page count, (just based on differences between ice and
i40e). I'm going to attempt to align with i40e and re-run the test.
Hopefully I'll have some more information in a day or two.

--------------YPgZHly41I1M5GdMMtn5VCdF--

--------------Ly3fQya1vHNcWFe9w860S9Zf
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGwStAUDAAAAAAAKCRBqll0+bw8o6EsV
AQD4+A7411HQK5HcWvbuxKA48OpGKv9DcCazLQ2JnDBUewEAmNV0BgIf84WjgCGDyIdm2aMlmrCu
dKJsqXKz9KGJgw8=
=n1aw
-----END PGP SIGNATURE-----

--------------Ly3fQya1vHNcWFe9w860S9Zf--
