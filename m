Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1194735FD6A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Apr 2021 23:45:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BC004069D;
	Wed, 14 Apr 2021 21:45:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k159MbbrT7RU; Wed, 14 Apr 2021 21:45:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BC1B40444;
	Wed, 14 Apr 2021 21:45:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1906D1BF94D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 21:45:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 03DE540497
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 21:45:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bf_Zv2F4N6w6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Apr 2021 21:45:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1BB3640444
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 21:45:37 +0000 (UTC)
IronPort-SDR: +jm/NKq+cbJ9Q7kQC7S0wtF4AY+7SZQVkkVHv05JlxtLrLLguLZQrPexiNJV518tf6bQCFi/7m
 yD3MzfVi75Gw==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="192617676"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="192617676"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 14:45:37 -0700
IronPort-SDR: nwe3iDTna6ePycKH+Bnwk/Jzi6W+ZbLuviuo7vouYbpufEJ99OUEG3Jq4ZkU7nkJKO5hSDtbry
 udRR79sIOVPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="424919392"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga008.jf.intel.com with ESMTP; 14 Apr 2021 14:45:37 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 14 Apr 2021 14:45:36 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 14 Apr 2021 14:45:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 14 Apr 2021 14:45:36 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 14 Apr 2021 14:45:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DPlI1sCHN7atGuvnFqYEUoeHTuCuUZP+CwtHAHAT4RUdGWFO/bNqc3xdhaXnzyTRJRAYv/mK1XSA5MoIYr0+QV/Bz95kLBh+hM1ycw56A19sA2rMOhATAO8+U5+2fsDgXpu/+rBdRK7AK+oV1PI7iAkDLx+5Oiizg60rOWWOfIAQA2E0tMnbYPfhV5ygiZZf6IFxAt//c9ubJcxjRtr5gmhdNwNqTd4k4w1IxNsPBQW4KBl7V6v+ZG/PWZKVHwdqNfAZpN8qaw9WBUrskKCb7LLAiO2GbP2gp4+ab/JENVZLJOQnVxaLoRudGfWQpHumICDDJJt+OrX5Gm/1wZQnhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yGkxu9dfkx8hFxyqPpQDzn8NTBa+iJfeD2MgzaEBxDk=;
 b=iKQzVSytzCPjFdHp1HcEQBVXhi6WwbvY7BN5fLPnJ5Xl0/qPllle2DCAfKIk7oEnYOnLAeC+svPAnPDQ4cyhXhjkU/XtJoKm+FFj7w1rgm3VAaF06oN5s7fPkM901LU4AgFC4QWCRUqlGEI7t2+qBKg3EiBIAod85AFYHlU0gwLRAczHVR6os8aWdMc0ejM6H+TPnWhxHnbzZzxzlzKzoFZ1brPVP+NRZD4WJHQS+qKn4MrTWWl6Hgiu+Mz8KNjHgrc8nm5okJUsYzRibPs61TSBGrBwSGd2/cHJmboe0nCkLEwH3rnR8zYIxel+JAM+IIvLZqXR7ZkEPUpUQhLgXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yGkxu9dfkx8hFxyqPpQDzn8NTBa+iJfeD2MgzaEBxDk=;
 b=jOwn9kmF15cK1eJbGCUO/ztrtn2GhLyaOzFikqv0IfK2xk3oypSvHgvU3GDtx5lxNK/pn2qdm6Lnw4uQCW8hvWd9RpBKsXopHn9/4WnvdTcapWk8sh8+kwtBs79k1bFFUpcLiE41ytKfOGolz6F6YtH3igPLNcLtmfEcYO2W6HQ=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4575.namprd11.prod.outlook.com (2603:10b6:806:9b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.16; Wed, 14 Apr
 2021 21:45:34 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c%6]) with mapi id 15.20.4042.016; Wed, 14 Apr 2021
 21:45:34 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] iavf: Fix init and watchdog
 state machines
Thread-Index: AQHXMFpiglRcsRZbs0iE6qerSTMcpaq0jkiA
Date: Wed, 14 Apr 2021 21:45:34 +0000
Message-ID: <84bb456c862e0b3919c4c82f703b90d16a79a8b0.camel@intel.com>
References: <20210413114332.32650-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210413114332.32650-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5887593e-37e6-43d9-4bcc-08d8ff8ea23e
x-ms-traffictypediagnostic: SA0PR11MB4575:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB45751F8391CEA01A56216B56C64E9@SA0PR11MB4575.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0FmfFMtW422BCgKvJbO2jyY3T3RYLeuY1fTC8Z9DPlzQhL1o/lLCuyuD0+dj2NtrvZevDZH0NggxokFtzUX7WqpraPP0mjHSAqYa32UIRgIInEZ92dZ16r2BpQZQ3KMIOk3wHHeHbO/AnXoJsQpa+o3YoDOzMivE0X/pduywj4OFGTauf2/YkS8arTRilghfZD9id9apBTxODTwU1cmKvM2+/G7jfnhSNegxPrvuofo4nAw4id+3mcHHeEjLderM9tVR+No8ybAhuoUXJE6E8x/O0GUCysPfWGo2Oni9DAyGD96QxVrYFIBrTVkfJlcvsLnx02H1OJ8acrQJHJJ0Ijy6fyM2ou8Fwgre0txVzqjlv9WXGUr1PRkRkcCjurfNF207Ym4uPp9CYz9q+BsvFT9UP2ogpyDfA93aRX6mErEcW7WfL2KDj6T83cg/m3rdvby1eNHzqjmYw9dWuLtUCgRt3trdp2fcrDp0iluITjPD6cOmrkyoFwWeh8uKlpIM+aXjlkywA60Q2O7E7EpF9Hdn+rf2YBjjhJ77+CrSFMJHyMFNVmvCWi5v1UN+41sJ7yN7cdMOivip+y4vRy0nEaFMQelSUnIlfU0E+cVOdull8oe61LHQIX36QWbYHuzVgPCI86yMgBOLDMFmZI5SWA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(376002)(39860400002)(346002)(136003)(2906002)(110136005)(71200400001)(6506007)(5660300002)(122000001)(83380400001)(66556008)(107886003)(478600001)(66946007)(36756003)(64756008)(66476007)(66446008)(91956017)(86362001)(6512007)(38100700002)(186003)(316002)(4326008)(2616005)(76116006)(26005)(8676002)(6486002)(8936002)(6636002)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?akpQa0xyc2UxVEV6NUd5UGV2emQ5MVNFcHpRaFhWZHlpOHlidCsyZmk4M3FK?=
 =?utf-8?B?NUNtMXdhUlJ6aC9MQWNkK2NXVFZtWEtEQktiR3dwNUVYRVljTmErZ3BURXRm?=
 =?utf-8?B?VzErbnlyR1dEaGxmMGcxWGFjU3I1ZFNVa0c0WUZ2V0UvbENuWkwzTVNlY3lP?=
 =?utf-8?B?T1V6SmMxeXN1TGRUNFdYbDJtMWtJYVJUNlhXeXgxL05Gcjk2REh3TldqMDFD?=
 =?utf-8?B?WDdvWVhMZVVjRUkydS9rYjdkMTYzZEVJN2hyakZsaHh1OENrU0ZaKzVZMmFM?=
 =?utf-8?B?VXVZZkdHQkh5S3JSSk5CVWc2dXlqYzBtVWo2SU9vRkhLNG1hVUxIVEhnZU5H?=
 =?utf-8?B?UGxnclJ2ZGEwbFdMcTdPV0NGTUx3eFRYTnVzcW15VHExUmhCUVpFcTJJaExk?=
 =?utf-8?B?ZXhqN2c2UzNlVG5ySE9lVGpOR00wdldkdVk0ZFFER2FqVVUwOFVFOUVTM0Jn?=
 =?utf-8?B?azFGNFY1Q1pPNTZJQnU2cDhKNHJhU2EvNDlLTkJmU2dJSUtsbFo3OWlIc0l3?=
 =?utf-8?B?TEdpcnZNaFVlTnpsczRjQzM3SFVvdmlScGp5VWU4MmtZaEJpWnpuL1RuU3d5?=
 =?utf-8?B?eU1YUEErZEV3bEpaeDhla1VhczFMT2xqYlRTejJ1RTErMHoyRDBXNFNuMTlB?=
 =?utf-8?B?d0lnbnptNTgyeXNMWHpIa0lNb1JTT083RExDWWlCUmFGMkNYak5GWUhMN2pj?=
 =?utf-8?B?K2N4SFN3YmdsR2VvVlJDNEEvVFQyMDRjLzVLZXFndjl0UEhYMmZIM3NkQ2xm?=
 =?utf-8?B?RmRENVFVSlVBSStFTDdFMjh2a2loclcrMEE1RElLMUw1NG9HdUFCeG1uaEx0?=
 =?utf-8?B?UmF4QjhaNkoyeHFWWTl4MDMyQWFzUmxvZEoyMkZmYm1lbUkvZlM3SVNHaG9L?=
 =?utf-8?B?NjhubGxDRWlIdThXUjJwbWpGRTBkRkpmNTljVCttUlFLMHRyRWxGUCtjSVFa?=
 =?utf-8?B?d09tK0cxYWhTYXhXcnVsWEUwQjM0eUlDUWxIUWJ4OUJXMk1EZ25vL3JCSUx0?=
 =?utf-8?B?ZzViMTdzSUZRM3VXRHlaRVcwNVZVOFRTL3JGbGRxYTFISFJEbXRVeEJYNmwy?=
 =?utf-8?B?Vzh1TWwrUGozRGFZdktBUFIwWHJGNllDekFrREZHbWdDQzJwYnJCNE13TlJu?=
 =?utf-8?B?eGxtK1p6YXB6KzFyMTcvek1aM3RNWDBxbDNGOHhnejZhSFB4RzdqbVRvOU1u?=
 =?utf-8?B?Z3Z1QVA5NXcwKzdSczlRNVhRU1E2NGdKOFIza3g3dkZhVDdoL2xNNVRCSWIw?=
 =?utf-8?B?dWlHVDlOUDZEVFdXR3hPVHh2WGs1anIwMlNFWFpWRVRBbEdSa0JaQzRjb21F?=
 =?utf-8?B?UXJyN2FoSnp6TzV1YktoQytoWVFyVklaOTlmYW1FeVhrcmt3R1U0bCs5ajg4?=
 =?utf-8?B?L2s3TGtCVHBhbmFGYlZNUVlZUzlXK0cwUks4dGFBdjl0dFBNV3c0VzcxcVhM?=
 =?utf-8?B?eXE1Y2c1Y1lXdFZqbDNWYXQvdWtNSEVoV3ZHZzdxNzlaTTNrdzhablphWUJP?=
 =?utf-8?B?WWlQRnN5MTRheXVLZGFNNFRWVXRRSHF3WW1SRmcwSzh0dDVhekJRWmx0amh6?=
 =?utf-8?B?cWtyWEtWVGlDS3I5QTViWGxwWmhaYkNWZmw0QzBiT2J3OFZrYTlnYVlheDF3?=
 =?utf-8?B?bWU5bzJWZHNYSzY0MDZNV3N3VW1nQTFsU3MveHhGNUJRYVU0aGZXL215bktY?=
 =?utf-8?B?ZjVCNExTR1l6ZGtRM2ZpdGw3aWhzY3FYaHFaWHorRzhDUnRNMmxSUW1Rd05G?=
 =?utf-8?B?N0NHTWQ5NVlhVHM4R3BYZS9HMUMzMHBjRjU0OGhndEhwMVN5eWJmcVJpb21O?=
 =?utf-8?B?R1BmVXdWOEMzRkRhbjA5dz09?=
Content-ID: <065E0692ECAC6748BA8D6A320AC0FD89@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5887593e-37e6-43d9-4bcc-08d8ff8ea23e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2021 21:45:34.4266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +6Qc5nVygJpzUmkIKmeGy5+FBv4U9q04qhBOnXAzWCqWKjh7ZVnzUT/Eq7EEPaSAByI/eWGU8eTBrwxCRT8GB/30lYCO33f8pDgCA0n/z2E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4575
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Fix init and watchdog
 state machines
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

On Tue, 2021-04-13 at 11:43 +0000, Mateusz Palczewski wrote:
> From: Jan Sokolowski <jan.sokolowski@intel.com>
> 
> Use single state machine for driver initialization
> and for service initialized driver. The init state
> machine implemented in init_task() is merged
> into the watchdog_task(). The init_task() function
> is removed.

It's unclear to me what's being fixed here. This sounds like a
refactor. If so, it should go to -next.

Also, feedback from the previous version has not been addressed. There
is a new state and helper function, but no explanation of it here.

> Testing-Hints: Change is only for VF driver state machine,
>                should be checked load/unload/reset and
>                set/get driver parameters.
> 
> Fixes: bac8486116b0 ("iavf: Refactor the watchdog state machine")
> Signed-off-by: Jakub Pawlak <jakub.pawlak@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>  v2: splitted the patch into smaller pieces
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h      |   2 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 159 ++++++++++------
> ----
>  2 files changed, 77 insertions(+), 84 deletions(-)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
