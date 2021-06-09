Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CDC3A1C89
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 20:09:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9242D401ED;
	Wed,  9 Jun 2021 18:09:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qUFMCR28-kMk; Wed,  9 Jun 2021 18:09:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C4A940166;
	Wed,  9 Jun 2021 18:09:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E4E041BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 18:09:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DFA9260840
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 18:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d5Fe6iJ35Miw for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jun 2021 18:09:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0257D60777
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 18:09:07 +0000 (UTC)
IronPort-SDR: ZzXgz0gF2TgqSd/WjxMHKzcArikclGTij1vyc6mymTIuj/v/53fqGmcMDgRPNCb4NO+96TMonk
 RDcrRFlo9XFA==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="266286127"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="266286127"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 11:09:06 -0700
IronPort-SDR: EtkXxUFT/dU+PBFDRuqVBES08aVEHkU5igA9DEBI2CCt8UVyTiQW/+B+Fj5y6Nk1IxpoKjMLiu
 QAkkT2GuFTHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="448379485"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 09 Jun 2021 11:09:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 9 Jun 2021 11:09:06 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 9 Jun 2021 11:09:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 9 Jun 2021 11:09:05 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 9 Jun 2021 11:09:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iIR0CmaXTVKPJg4t5qP3Yo4GWYvrohg6GV0WnEjpkKJIeIu3LUjM30pvgn3Gj2dj4EIXDQvj5y7kOeXSNcefHSiJvRPTwkyWtQxj4mnmSYceGjunQj+jNjKOGXpbZuwetJqmjdnq5yU5xX1hQsGSDinuVS1FPWPTBv9BkH6lVPr86nGa/8uUqBR0W9FbJve+Kf2qQLqnomhX10cKmYBTeAYcQ6wIfDC3AaB01giFu0ToLYY329VPJW8sA5tTEOZo2yQ89JCTW6TAK2+5bXcsp0b1C2gfkD/RmIY5N45zF2hymQ7ScdxYsjzDYmtqyKjbVVG3+rsl3vR1O5QPRFwvRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f3X7ByXYHbKI7//+GSZUAt9xQL+pmMMdsj23RZQ4ZRk=;
 b=DsvvfXhylldC7LtozXaw5MgIpFmYWaD4uGQa0JeDCkewngP9hyBY+k7MmI9YgBF8BQivqmtE6kIWckmqLgZaDEOi7c3Q2zPHCak/BO9ShaxvNBUC/WEb5IrxnUrJX/icmMk5a3wPprKYrLybI5AUtIOE4JE0wzi1pWXWyYo9rmYz0GACh9N9K8wIxnyj5w+STxGzAedSLES/YFxja9T9SmPb63Fz6tDycXOYf/YxlTWC8o75rEhGX2zEPPSb+9DI+e5lJyUUTtDUpHS7lVm71FMocN4urhmPg44u3AO3XXzutsDgx+tqM4ieWfc04tNyQk0RNkIGqogSLjlKt/RITQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f3X7ByXYHbKI7//+GSZUAt9xQL+pmMMdsj23RZQ4ZRk=;
 b=IE12sIlPZmShW2VU/fcaR1WsDVTkFBqVo9ZGqAvqK+Twx8TD/yFG+PK1UDIIDQpQSpGSFgN6n4xOG3cVtP4AXrT3ktsPyV/fBCscZH8nQbRQILGygFdlurv7WpULHG9RSY/M470AyFLAVKAllb7cmmFVfOSpPJepzodQ6+D686U=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4653.namprd11.prod.outlook.com (2603:10b6:806:94::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Wed, 9 Jun
 2021 18:09:04 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4219.022; Wed, 9 Jun 2021
 18:09:04 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Add placeholder for
 ndo set VLANs
Thread-Index: AQHXW2h4BmhqQIp7o02/XalVDK5OuKsL/vyA
Date: Wed, 9 Jun 2021 18:09:04 +0000
Message-ID: <1f14c5099d28d4f606d1ebfd3a9af4955bb5daa6.camel@intel.com>
References: <20210607064338.252336-1-karen.sornek@intel.com>
In-Reply-To: <20210607064338.252336-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aeaf3d68-2e91-47c2-68f1-08d92b71aa92
x-ms-traffictypediagnostic: SA0PR11MB4653:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB4653CC33AE692DA31BEE2F71C6369@SA0PR11MB4653.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q+gI3L8RZGlSc8TN3rreo6x32DYlgKIoPnBuk/am1aGsqbdiYP398geKJhuUBdBJlKftAenDyp2vp1cbtDNZzBqqmrZoZXOh2g3DwnrgkNvFvNbmMPphq6Wi3T5nMFab5e4p9WkWAEeQ6A6VpRmhzV5m1T9gAvzoWtYV0G3ozzckVH5km81rbSGsHZc3XJexpq+riFx1BpsbU8rpQ7LLC62ZKdF12kubsxmScHI1eNl49sfA6QZhtJXS2o4lkvqp1jDTKdHh8oU2dfm4cJTrVCXZD2ZlZY6CjvWo8ppHEo305I0ISHYrlieXS+5R9ka+ZKuA68jcg4Ff9iF8x9nWQrQZTW+zuPnP9gFJgK/1mt3Z9pBHnOJUfP0WJEngkjiaQycmZ/H/mkThOonSY4IA0HXoXAYXScdAejKsbgK6oh+alhqR5AcagGKHmZe+APSuy60eyOukPbd4kHXqbIoy4MBL+JBbBe8r9+Ta076YJ7ou4kxDkSD+Fe0eRRZ77/fE7XKXC79ZVBvAmi6UaVmMqYMr3kdAXiDlFFdlV37+Z/QY6i/MBAVQJjq73iVCpjsCoJTecqqtOOwnBkLehlMkDVyioedJl5lktMdrHiYvN/c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2616005)(66556008)(26005)(6506007)(5660300002)(2906002)(6486002)(110136005)(86362001)(8936002)(107886003)(66446008)(38100700002)(6512007)(66476007)(83380400001)(76116006)(498600001)(91956017)(122000001)(36756003)(71200400001)(64756008)(8676002)(66946007)(186003)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Sm42ZlpUYjRWc0pQL29adXk5dERCcXVnNnUyUFZOSnZiSVJ0dDRQK0VZVEh3?=
 =?utf-8?B?NWJ2MHVYOXhCYnZHNHJJaGJJSEsybGw4eG9iU3dOTXdqVE9QaElzUytsTXlN?=
 =?utf-8?B?NEluZ29sczVXNGJLS2RYWi92VlhUSTE4U2VGb3EyM3lGZm5qTkdpS2dIQzE5?=
 =?utf-8?B?NUZJVWVnQzNXcFJJSmRTK0Z6ZGpCMnBYYkxmKzgzYVBPNDBEb2Zhc2NYR2NU?=
 =?utf-8?B?eVArcERwZ1lsUVpmRC9vUmZWd204U25UL2ZLWmxzSTdrWlUxQXB6TkpDUHhy?=
 =?utf-8?B?RXpOZEhjOTNYbEd1bzVWb3FPQVk4VVhrcGRkd1o3eWNkOWJBMktLRUxiaE0w?=
 =?utf-8?B?R3k4cmRrQkxxbGVzOHlZZUp2KzBKeG9nMFhPamh4ZWJmbDhIcUFFYmhFZklp?=
 =?utf-8?B?M1VpcDNpanV0R3dyaXB1SGhjb3liWW9PQlRzeEpWNEZLZlNORmdndjcvUEs0?=
 =?utf-8?B?MEdOOEpkNFc3aEJSdFlwU3ZaaWc2TjJ2S2M3SWE5WTFyTm9tMHNpOE5YeHkr?=
 =?utf-8?B?OTFQRUl6QmsvaTN3ckJlYTdIbktReXRHV3drdkFUK2w2dVhScHhYNjJ3emlx?=
 =?utf-8?B?c2lwRFYrVzQ3RkU2NGMzN2pkZFdMU09ENDlSYW94R1VTZGhwckNKQlA0OExk?=
 =?utf-8?B?aFN4aTYyZFhTZ3l2Ny9iN0w2aThsT2ptUDVOZFhIQWhlR0J3L092NjhQTUli?=
 =?utf-8?B?dC9qUkpLeGd5ZmhXUXpidmNpdk1Hb2ZKWWVOVjdjSTRmenFxdFFoaFFWaWt5?=
 =?utf-8?B?WFdJSFh4VUhpR0RFaFkvdjkzc0xtREhYc3Vka2R0ai9zdWNaQ3VOb0F6eHRi?=
 =?utf-8?B?aCtOR1ZISmpDTDl6UEhWM3NwR3FrYUdkM3VGS1RSZU84MUxhWnpIcVBiSHdU?=
 =?utf-8?B?MDVydzB5N3p5N2RHekFycVNVRmVOdTE1czg4bVJnTEtRaGVmQUdwa3BiZHVT?=
 =?utf-8?B?MEc2RStwVU1HeXd3SXY1QURDNGtOWlovWkNhK2ZudDBKV1M4RGlkV2JhaWJq?=
 =?utf-8?B?L2lKQU5ORHR2R0VoOXUyZnNtYmM4REJ3dWU4VkwxNVVSZ3JZTUNyNGJISFFY?=
 =?utf-8?B?b08rTWE2ajIzcEJSZmNQWVM1MU5ydGUvZDl4TmdqRGU2VVNoQXZ3NE1veHRW?=
 =?utf-8?B?VXRseWRWWDNaZEIyLzExMjBMM1BrSzJKVk9YeWtHbGhPQ1ZROU1ybzJmM3N1?=
 =?utf-8?B?NVVyVDd0U2ZLdkt2R1FjSFk2SlNrcXZZQTFMY3hydkFvdkJPYndDZHdJdWVn?=
 =?utf-8?B?MXJqQmQySnNBS2dVVjBPQ0hTWVdwdUxIL2hEZ1p6WThyUXJ0UmdXQzFHNFRF?=
 =?utf-8?B?OEdUdDluU0lJWG5ibEVHbGNDMWNpYktZK3FRZHNlRVFKS01HNXlZWkI5SEdY?=
 =?utf-8?B?SHZCMHNTa0xuenEyUnUzdm84MFlhOFAxaDZhdFRybUt1M0VKazRFSEdqZlBj?=
 =?utf-8?B?UEpvN3htTTM2cHhWOFpJSWdCMzdBNXNNYVdNK3dxb0F3WUpwNGwzTzJqOFJj?=
 =?utf-8?B?QlY2SEY3d2ZkTWs2L2Fwa2lNSjc4aUc1MHFsN3ZJZWN2REo1bFVoNjh1ZmFV?=
 =?utf-8?B?ai85andXeEcrYW4wRWV3WXozQ2RRdC8yaFR5a1BNVmhTYUt5MVlQcUQxSVBi?=
 =?utf-8?B?L0ppdTJJRFR2TWFHbTRWbUp2OTFEdDEwMldiTGtuRDA4aFZmVFhFQ25hVzd5?=
 =?utf-8?B?OVVMUHZ2cnhYUnFGSlp6cWdwbkx4QkhydGtmQS90WU9vZ0JEblEzZU50ZTQ5?=
 =?utf-8?B?WHBmaWMxRDJrNlB5V29GSXpXVUlybUsrbWZEazNJVXIycHpYWlh3TDhMWjh5?=
 =?utf-8?B?dDZxWFJoU2Q5c1JkMXNEUT09?=
Content-ID: <4A0BDA07368F344DBABF93FCD959A52D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aeaf3d68-2e91-47c2-68f1-08d92b71aa92
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2021 18:09:04.1367 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ypVygZ0mZYqgE3otZQCQPEK6wyGH4RcGXikoMLA+e+/VzhwZTObFX4FDHpdvmpu3jKtShA/v/qg7g+2Tz8yZzD5nYOhSA+Pl3G7MBHAoYTk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4653
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Add placeholder for
 ndo set VLANs
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2021-06-07 at 08:43 +0200, Karen Sornek wrote:
> VLANs set by ndo, were not accounted.
> Implement placeholder, by which driver can account VLANs set by
> ndo. Ensure that once PF changes trunk, every guest filter
> is removed from the list 'vm_vlan_list'.
> Implement logic for deletion/addition of guest(from VM) filters.
> 
> Signed-off-by: Przemyslaw Patynowski <
> przemyslawx.patynowski@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 131
> ++++++++++++++++--
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |   9 ++
>  2 files changed, 130 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index edfdce5f6..0fba4f1b4 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -986,6 +986,81 @@ static void i40e_disable_vf_mappings(struct
> i40e_vf *vf)
>  	i40e_flush(hw);
>  }
>  
> +/**
> + * i40e_add_vmvlan_to_list
> + * @vf: pointer to the VF info
> + * @vfl:  pointer to the VF VLAN tag filters list
> + * @vlan_idx: vlan_id index in VLAN tag filters list
> + *
> + * add VLAN tag into the VLAN list for VM
> + **/
> +static i40e_status
> +i40e_add_vmvlan_to_list(struct i40e_vf *vf,
> +			struct virtchnl_vlan_filter_list *vfl,
> +			int vlan_idx)
> +{
> +	struct i40e_vm_vlan *vlan_elem;
> +
> +	vlan_elem = kzalloc(sizeof(*vlan_elem), GFP_KERNEL);
> +	if (!vlan_elem)
> +		return I40E_ERR_NO_MEMORY;
> +	vlan_elem->vlan = vfl->vlan_id[vlan_idx];
> +	vlan_elem->vsi_id = vfl->vsi_id;
> +	INIT_LIST_HEAD(&vlan_elem->list);
> +	vf->num_vlan++;
> +	list_add(&vlan_elem->list, &vf->vm_vlan_list);
> +	return I40E_SUCCESS;

Why are you returning i40e_status values here? I'm not see anything
preventing the use of the kernel error codes.

> +}
> +
> +/**
> + * i40e_del_vmvlan_from_list
> + * @vsi: pointer to the VSI structure
> + * @vf: pointer to the VF info
> + * @vlan: VLAN tag to be removed from the list
> + *
> + * delete VLAN tag from the VLAN list for VM
> + **/
> +static void i40e_del_vmvlan_from_list(struct i40e_vsi *vsi,
> +				      struct i40e_vf *vf, u16 vlan)
> +{
> +	struct i40e_vm_vlan *entry, *tmp;
> +
> +	list_for_each_entry_safe(entry, tmp,
> +				 &vf->vm_vlan_list, list) {
> +		if (vlan == entry->vlan) {
> +			i40e_vsi_kill_vlan(vsi, vlan);
> +			vf->num_vlan--;
> +			list_del(&entry->list);
> +			kfree(entry);
> +			break;
> +		}
> +	}
> +}
> +
> +/**
> + * i40e_free_vmvlan_list
> + * @vsi: pointer to the VSI structure
> + * @vf: pointer to the VF info
> + *
> + * remove whole list of VLAN tags for VM
> + **/
> +static void i40e_free_vmvlan_list(struct i40e_vsi *vsi, struct
> i40e_vf *vf)
> +{
> +	struct i40e_vm_vlan *entry, *tmp;
> +
> +	if (list_empty(&vf->vm_vlan_list))
> +		return;
> +
> +	list_for_each_entry_safe(entry, tmp,
> +				 &vf->vm_vlan_list, list) {
> +		if (vsi)
> +			i40e_vsi_kill_vlan(vsi, entry->vlan);
> +		list_del(&entry->list);
> +		kfree(entry);
> +	}
> +	vf->num_vlan = 0;
> +}
> +
>  /**
>   * i40e_free_vf_res
>   * @vf: pointer to the VF info
> @@ -1061,6 +1136,10 @@ static void i40e_free_vf_res(struct i40e_vf
> *vf)
>  		wr32(hw, reg_idx, reg);
>  		i40e_flush(hw);
>  	}
> +
> +	i40e_free_vmvlan_list(NULL, vf);
> +
> +

extra newline

>  	/* reset some of the state variables keeping track of the
> resources */
>  	vf->num_queue_pairs = 0;
>  	clear_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states);
> @@ -1766,6 +1845,7 @@ int i40e_alloc_vfs(struct i40e_pf *pf, u16
> num_alloc_vfs)
>  
>  		set_bit(I40E_VF_STATE_PRE_ENABLE, &vfs[i].vf_states);
>  
> +		INIT_LIST_HEAD(&vfs[i].vm_vlan_list);
>  	}
>  	pf->num_alloc_vfs = num_alloc_vfs;
>  
> @@ -2787,6 +2867,28 @@ static inline int
> i40e_check_vf_permission(struct i40e_vf *vf,
>  	return 0;
>  }
>  
> +/**
> + * i40e_check_vf_vlan_cap
> + * @vf: pointer to the VF info
> + *
> + * Check if VF can add another VLAN filter.
> + */
> +static i40e_status
> +i40e_check_vf_vlan_cap(struct i40e_vf *vf)
> +{
> +        struct i40e_pf *pf = vf->pf;
> +
> +        if ((vf->num_vlan + 1 > I40E_VC_MAX_VLAN_PER_VF) &&
> +            !test_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps)) 
> {
> +                dev_err(&pf->pdev->dev,
> +                        "VF is not trusted, switch the VF to trusted
> to add more VLAN addresses\n");
> +
> +                return I40E_ERR_CONFIG;
> +        }
> +
> +        return I40E_SUCCESS;

Same question as above. Why i40e_status?

> +}
> +
>  /**
>   * i40e_vc_add_mac_addr_msg
>   * @vf: pointer to the VF info
> @@ -2944,10 +3046,11 @@ static int i40e_vc_add_vlan_msg(struct
> i40e_vf *vf, u8 *msg)
>  {
>  	struct virtchnl_vlan_filter_list *vfl =
>  	    (struct virtchnl_vlan_filter_list *)msg;
> +	i40e_status aq_ret = I40E_SUCCESS;
>  	struct i40e_pf *pf = vf->pf;
>  	struct i40e_vsi *vsi = NULL;
> -	i40e_status aq_ret = 0;

The convention has been to use 0 instead of I40E_SUCCESS. Is there a
reason for going away from this?

> -	int i;
> +	int ret;
> +	u16 i;
>  
>  	if ((vf->num_vlan >= I40E_VC_MAX_VLAN_PER_VF) &&
>  	    !test_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps)) {
> @@ -2976,12 +3079,19 @@ static int i40e_vc_add_vlan_msg(struct
> i40e_vf *vf, u8 *msg)
>  	}
>  
>  	i40e_vlan_stripping_enable(vsi);
> +
>  	for (i = 0; i < vfl->num_elements; i++) {
> -		/* add new VLAN filter */
> -		int ret = i40e_vsi_add_vlan(vsi, vfl->vlan_id[i]);
> -		if (!ret)
> -			vf->num_vlan++;
> +		aq_ret = i40e_check_vf_vlan_cap(vf);
> +		if (aq_ret)
> +			goto error_param;
> +
> +		ret = i40e_vsi_add_vlan(vsi, vfl->vlan_id[i]);
>  
> +		if (!ret && vfl->vlan_id[i]) {
> +			aq_ret = i40e_add_vmvlan_to_list(vf, vfl, i);
> +			if (aq_ret)
> +				goto error_param;
> +		}
>  		if (test_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states))
>  			i40e_aq_set_vsi_uc_promisc_on_vlan(&pf->hw,
> vsi->seid,
>  							   true,
> @@ -3015,10 +3125,10 @@ static int i40e_vc_remove_vlan_msg(struct
> i40e_vf *vf, u8 *msg)
>  {
>  	struct virtchnl_vlan_filter_list *vfl =
>  	    (struct virtchnl_vlan_filter_list *)msg;
> +	i40e_status aq_ret = I40E_SUCCESS;
>  	struct i40e_pf *pf = vf->pf;
>  	struct i40e_vsi *vsi = NULL;
> -	i40e_status aq_ret = 0;
> -	int i;
> +	u16 i;
>  
>  	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
>  	    !i40e_vc_isvalid_vsi_id(vf, vfl->vsi_id)) {
> @@ -3041,8 +3151,7 @@ static int i40e_vc_remove_vlan_msg(struct
> i40e_vf *vf, u8 *msg)
>  	}
>  
>  	for (i = 0; i < vfl->num_elements; i++) {
> -		i40e_vsi_kill_vlan(vsi, vfl->vlan_id[i]);
> -		vf->num_vlan--;
> +		i40e_del_vmvlan_from_list(vsi, vf, vfl->vlan_id[i]);
>  
>  		if (test_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states))
>  			i40e_aq_set_vsi_uc_promisc_on_vlan(&pf->hw,
> vsi->seid,
> @@ -4200,6 +4309,8 @@ int i40e_ndo_set_vf_mac(struct net_device
> *netdev, int vf_id, u8 *mac)
>  	}
>  	ether_addr_copy(vf->default_lan_addr.addr, mac);
>  
> +	i40e_free_vmvlan_list(NULL, vf);
> +
>  	if (is_zero_ether_addr(mac)) {
>  		vf->pf_set_mac = false;
>  		dev_info(&pf->pdev->dev, "Removing MAC on VF %d\n",
> vf_id);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> index 49575a640..6ba48b398 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> @@ -62,6 +62,13 @@ struct i40evf_channel {
>  	u64 max_tx_rate; /* bandwidth rate allocation for VSIs */
>  };
>  
> +/* used for VLAN list 'vm_vlan_list' by VM for trusted and untrusted
> VF */
> +struct i40e_vm_vlan {
> +	struct list_head list;
> +	s16 vlan;

Why signed? Can this have a negative value?

> +	u16 vsi_id;
> +};
> +
>  /* VF information structure */
>  struct i40e_vf {
>  	struct i40e_pf *pf;
> @@ -103,6 +110,8 @@ struct i40e_vf {
>  	bool spoofchk;
>  	u16 num_vlan;
>  
> +	/* VLAN list created by VM for trusted and untrusted VF */
> +	struct list_head vm_vlan_list;
>  	/* ADq related variables */
>  	bool adq_enabled; /* flag to enable adq */
>  	u8 num_tc;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
