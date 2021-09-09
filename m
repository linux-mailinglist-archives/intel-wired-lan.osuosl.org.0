Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08327405E19
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 22:39:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 704C04066D;
	Thu,  9 Sep 2021 20:39:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rH8OTOpw_8dL; Thu,  9 Sep 2021 20:39:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 649F54048E;
	Thu,  9 Sep 2021 20:39:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 143191BF341
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 20:39:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 01FD94048E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 20:39:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PeJRNxXpMAIg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Sep 2021 20:39:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0AB1140391
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 20:39:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="201099432"
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="201099432"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 13:38:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="466686716"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 09 Sep 2021 13:38:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 9 Sep 2021 13:38:58 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 9 Sep 2021 13:38:58 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 9 Sep 2021 13:38:58 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 9 Sep 2021 13:38:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hDrV4LPB5/163wFhkN+Uys4VvKpdI9HeaFQyD4awXLyjDv/cjSAfNoQhln/8YkUJAbLL3dPbFbf/Fn9SjWx/9oy1Vy2J8McbNZSOD/bu0798c1146SJyo7I3uWEM4NmSKsm5CZIVKu3YW0fz1h57ZZLDCeFdzWCUz8eLLdZfGALaN2ChXCRNJDv34UC5tlYFmnTXQFyIH4KMfaY56+944bzgfJbGEAJ5K/1ODOwrmL14pEilKz1v8KMBu6u4lyIlImGoFV1kXPlkzFGAukFyT6zjJAab05a/YMkJwuMAN8YIqd4WvtAUZtet329TGLZhTfX2+DdRBDVi+uqcimacQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=JR040u0NLd8h8ln1LGweBChPsDu6Sic6VkGvimIST5w=;
 b=L1fyIAPQgiqb8ptv7G2TISG8VV7rgHCaAg90/14mLjoD0F4Yik92zCqFTtR07hd2hGHdEc2H8n7+kSVnqfTe5q+srbszgammh0BfOkSR9nE7OHizQDS6MV1/7kBg7x0iQWj/xBAgPxn2MlHf1EjpW019zj40iLFRwpusWZSB6csZ7xL1PmorKA4JOZwTnvV7I7jmRROsu1Q6bw2eKs5NplWQ+1NmgcyAp3HK9bgCkKB+gem4BlafO2LUSG5zYqn64cg9FliW5vKm6PdPk6atMtCKZbJ6+gYCqZ7qw2vmnYfy2GwjPc8NpA//xY+5i6IiPOn5oqYMn/VcF2bhSJjouQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JR040u0NLd8h8ln1LGweBChPsDu6Sic6VkGvimIST5w=;
 b=jJFo5q/TvXXCNrQCtixW7vZl6qSjZPmvqV1kydpmL5zHnnMMIHBvF3SOYbIiJFi29KB5IuW4eXiRqavSuqPJve5iugQEVkT3NF/wUZZZIe2fyNn552OnF3c7DVLAsXYqjj1WyxTfv8HFAf7Qi8Wrpf2mBxIwUJ4LfQO+cNCXMsQ=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3280.namprd11.prod.outlook.com (2603:10b6:805:bb::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Thu, 9 Sep
 2021 20:38:57 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4500.016; Thu, 9 Sep 2021
 20:38:57 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix refreshing iavf
 adapter stats on ethtool request
Thread-Index: AQHXoI/xcQvLpKQVMES5SElNtM28KaucNWWA
Date: Thu, 9 Sep 2021 20:38:57 +0000
Message-ID: <106f6b527e3f1b5098b7fee203b13c992b0e3827.camel@intel.com>
References: <20210903064846.71507-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20210903064846.71507-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1f105588-b3e2-49e9-0130-08d973d1d907
x-ms-traffictypediagnostic: SN6PR11MB3280:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB328052809144ACA377779F9AC6D59@SN6PR11MB3280.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BYz9nKn8Ci+Re516y3JQaWUzJfESEN1OUYc10bPtDjydEqJ9lqPHQCfNeQMw/6KNWaBAJNEOcuS7/Ss5BCpaszswnhB/oygOyy1jdfOHo891HJ9nUuzhud+Jn4rPG1SKwQnMoUHV4u44Yv2E9w0F7Y/wK8pgGLm+j1VSRzpoIBypViGC0+mqTel6j4mt9GCTI3PaheauaAU4JCY1lH0RB8rwhbsYMryNoOuoef41W1cTM/kxK5Tt5z3Lb4NBEd//SpMZXGUpFkK4oz5i7Lxjf3HJiFXB87/PImhwhu4Zv3RkuJmEHjEy3TJulYVsmIvrR3KBXQ6dk2KDvk6U3/1z94a6jYOi58wedvNf/Cqtuw2vm3e0lNkZYuLrWJA4MoWp5Js9Wra0SI2oSaixcLCGZwzJGrYwmf5E2SeUq7yUwBZL/pzeyvg+uUJ8CoG62FGu2h9k077snQRodFEKXdyO9ZxCuB1OihfIkwqERLdw+hsaIyiIewEOKH1Gr5rwq/nnzPFpcBadSS5LepnuYCIPJfgMj9Qz9VB40YG7puKsRTfGiTUEqOWNTstTpiaS8EZgHdDuv1TER6348uPbnwJ9MRIXBOxsi8HumyUA+zt0tddGNbbpkdWbdm2p7+Qvpg78AhtAjLWtS07T/Yu9WsXP0WFbkh3phrLBq3SDctP2bM7X5QzqlKnpQyUu4t+2KByt/vNNQDejv54p3rB8Y5nvBw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(8676002)(26005)(6506007)(5660300002)(122000001)(186003)(8936002)(38100700002)(86362001)(2906002)(38070700005)(6512007)(110136005)(71200400001)(316002)(64756008)(66446008)(66476007)(66556008)(83380400001)(36756003)(6486002)(2616005)(91956017)(66946007)(508600001)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bHpLVkVxK3lramVzemh4a3FTVm1UZXljaTV3UWZIRUpocUJhNXdvKzhrenVk?=
 =?utf-8?B?Z3pRT3BLaUdPNUhpQktVV1FDV2FEekZKZEt5WVFNajROSTBkbFplbnFmNmxK?=
 =?utf-8?B?ZmtZdW1BeWxiOFRQekVVVUYvVndFdlBUQWJFSGRGTlhMVlM5djN0aHo3MlN4?=
 =?utf-8?B?ZTlqcHBTb2VaSGNiQ1FnbTRHaWx1VUM4eEQwcUcyTWlOYzZ6SVp2YUszTXVu?=
 =?utf-8?B?NjJXRTczTDE0YUVoSGRNd0h1YmRaVE43OGNwT3YzUzVVbDBxanBSK0JVWDhp?=
 =?utf-8?B?bTdDejVSYm4rcVJNTHROSnROcSt6d0VRL1B0NFlWdDJiSU9PMjJzdnJ2dVpD?=
 =?utf-8?B?U0V1SHRCNllqZm13cEJ5VmZyRHlBVDBldEEvanBzZGZFNFk2cDFDVzZLZk5x?=
 =?utf-8?B?WkhYZDNtWm9VcktEWmU3R2x6SkY3N0tFaHNQUVA5aWJ6ZG12V2pKeW5PaXBa?=
 =?utf-8?B?Z2w4VitoN1FGLzJ2YjBNMmxQcHVWSWRJdlhTQ0E1dSsxd0hGNlJ5NUVMK2JX?=
 =?utf-8?B?M0tEelpEVG9uMzlJeFpPLzBQY2ptamdFV0xFdTFBZ2dDZGUybnk4NUpuSGZB?=
 =?utf-8?B?Y21WNk15QmpWY090c2hncHUrSnQyaW1acEZoalkvNzVLNzF4ZkZjcWpGdHpn?=
 =?utf-8?B?T1Q4NFNLdEZ5QkgvVWFzbWhmY1FDeFlwYWpMK0JvWjRlZ3BaQVM0bWVVbTl6?=
 =?utf-8?B?V0lLeFUwcFd0dFZLSWlxcVdzbnlNYzZCVFBUbFZjV1hrRHM0OFhBbEZDTUpw?=
 =?utf-8?B?V0dmRU5Ed3Fldk5Eb3lVNkU5YTZWNFRUS2tVQzduRFo1NFRKMnRnWnpuUWNp?=
 =?utf-8?B?aTY2YUJYV0dkaHRsSitweDE3TWVvRktsVHgxRG9XUDVMK1FtOU1GbmFlU1A3?=
 =?utf-8?B?aE1tNy9aYklLZ1FraENhUitVeUpyNHcvckNLOW1JK2pDd0kySCtCK0VZOHpS?=
 =?utf-8?B?am1aSG5IWUFwbXF4cU1oYjdPY1ZEb2cveTk5TkE5M3lYeUVCUm9RYzRxY3BT?=
 =?utf-8?B?aDh5MlRNeGkrMUF4ajFzRWJWY1pGdUcvbWtMODNaRHc5aUpkYi9rR0duUzZz?=
 =?utf-8?B?YldremUvMS9kMlpJbG9QeXdXS1dBOWhWczN3dFYyMEJRS013QXJCd0hQNGFT?=
 =?utf-8?B?MlNqSHlucm5TcTYzM09XcDNNRWJnRmRYbWxiN1dISHJmSDlkMURWeHJxeUVT?=
 =?utf-8?B?TzVyNXNhbDFoQXh6U1BRTXVTclBVMmJ6Z2lLM2dFRVdTTGtKQkxUQlpRbnJT?=
 =?utf-8?B?QzQ3eWtVbnA3bHN1cXhRbHN1djk0SnJ4YWJmaWVQQytuR1dsbTNjazhXc3o4?=
 =?utf-8?B?MThIWEtrN3pzbjhqZHRTbkF2THhuUHNLUVk4cGZFRlNqc3FxczBOZUVCQnhs?=
 =?utf-8?B?VUppbXl2MnE5bzc0dTdzc28rREgzNDVJRDdVZ3ZON3RDaXpGTzN4UjBvZUw0?=
 =?utf-8?B?ODVUKzJKNmYzVGU5SjZXZmRyajY5RTlGL0hQY2NRWmZmdUFMdWZmK3AvUDBM?=
 =?utf-8?B?aEt6WEFmZFJadUpRS2o4R2JqNGIrUThtSHlSVjZVZUwycUFsTkZreFR4eXhK?=
 =?utf-8?B?dHF2T1NvRkxHZ3Jnd0xqSlpPZW9Eek1GWlhQS09yK3J0MjFxZHpQZXNlUHp0?=
 =?utf-8?B?VDhPbGdGT3kzd0pKcGZ2bklsVlpMallBZW9GeTUwRjl5TytuZFNaMEhJTmor?=
 =?utf-8?B?MkI3cjRTVCsvUW5VWDgwS3pIdUxnRnNIdmFtRElFV1FMY0F5d2twNVNsanBZ?=
 =?utf-8?Q?s01COpEZ0xn4AKgdHP/PBNMJnuA0T9IiGClWDtc?=
Content-ID: <34B228122028B948A34E2337857CE866@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f105588-b3e2-49e9-0130-08d973d1d907
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2021 20:38:57.4610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vrSyH0vQPgL3wNZvCZDcouYLq90o0XwvAE4T/F+4zoMeKUaIj585Dwh+j7lXDaMrnzqQXJZe9XApBG+sXrxbK8ldlj+pxV+gZZ/t7IBTgQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3280
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix refreshing iavf
 adapter stats on ethtool request
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

On Fri, 2021-09-03 at 06:48 +0000, Jedrzej Jagielski wrote:
> Currently iavf adapter statistics are refreshed only in a
> watchdog task, triggered approximately every two seconds,
> which causes some ethtool requests to return outdated values.
> 
> Add explicit statistics refresh when requested by ethtool -S.
> 
> Fixes: b476b0030e61 ("iavf: Move commands processing to the separate
> function")
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h         |  2 ++
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c |  3 +++
>  drivers/net/ethernet/intel/iavf/iavf_main.c    | 18
> ++++++++++++++++++
>  3 files changed, 23 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 21c95775509a..afe6b0d24a9a 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -306,6 +306,7 @@ struct iavf_adapter {
>  #define IAVF_FLAG_AQ_DEL_FDIR_FILTER		BIT(26)
>  #define IAVF_FLAG_AQ_ADD_ADV_RSS_CFG		BIT(27)
>  #define IAVF_FLAG_AQ_DEL_ADV_RSS_CFG		BIT(28)
> +#define IAVF_FLAG_AQ_REQUEST_STATS		BIT(29)
>  
>  	/* OS defined structs */
>  	struct net_device *netdev;
> @@ -399,6 +400,7 @@ int iavf_up(struct iavf_adapter *adapter);
>  void iavf_down(struct iavf_adapter *adapter);
>  int iavf_process_config(struct iavf_adapter *adapter);
>  void iavf_schedule_reset(struct iavf_adapter *adapter);
> +void iavf_schedule_request_stats(struct iavf_adapter *adapter);
>  void iavf_reset(struct iavf_adapter *adapter);
>  void iavf_set_ethtool_ops(struct net_device *netdev);
>  void iavf_update_stats(struct iavf_adapter *adapter);
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 7cbe59beeebb..21c4d4180f3e 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -354,6 +354,9 @@ static void iavf_get_ethtool_stats(struct
> net_device *netdev,
>  	struct iavf_adapter *adapter = netdev_priv(netdev);
>  	unsigned int i;
>  
> +	/* Explicitly request stats refresh */
> +	iavf_schedule_request_stats(adapter);
> +
>  	iavf_add_ethtool_stats(&data, adapter, iavf_gstrings_stats);
>  
>  	rcu_read_lock();
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 80437ef26391..e7ac6356772b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -165,6 +165,19 @@ void iavf_schedule_reset(struct iavf_adapter
> *adapter)
>  	}
>  }
>  
> +/**
> + * iavf_schedule_request_stats - Set the flags and schedule
> statistics request
> + * @adapter: board private structure
> + *
> + * Sets IAVF_FLAG_AQ_REQUEST_STATS flag so iavf_watchdog_task() will
> explicitly
> + * request and refresh ethtool stats
> + **/
> +void iavf_schedule_request_stats(struct iavf_adapter *adapter)
> +{
> +	adapter->aq_required |= IAVF_FLAG_AQ_REQUEST_STATS;

This is never being cleared.

> +	queue_work(iavf_wq, &adapter->watchdog_task.work);
> +}
> +
>  /**
>   * iavf_tx_timeout - Respond to a Tx Hang
>   * @netdev: network interface device structure
> @@ -1700,6 +1713,11 @@ static int iavf_process_aq_command(struct
> iavf_adapter *adapter)
>  		iavf_del_adv_rss_cfg(adapter);
>  		return 0;
>  	}
> +	if (adapter->aq_required & IAVF_FLAG_AQ_REQUEST_STATS) {
> +		iavf_request_stats(adapter);
> +		return IAVF_SUCCESS;

This function returns int, not iavf_status. This should be 0

> +	}
> 
>  	return -EAGAIN;
>  }
>  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
