Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C14C54F129
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jun 2022 08:46:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3138A8404C;
	Fri, 17 Jun 2022 06:46:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3138A8404C
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=kyvth9D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P6-udU-MJZcj; Fri, 17 Jun 2022 06:46:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 241D983FB2;
	Fri, 17 Jun 2022 06:46:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 241D983FB2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E4461BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 06:45:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 15C5941B94
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 06:45:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15C5941B94
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kyvth9D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dm5FFq_ZxNJM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jun 2022 06:45:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7418B41B93
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7418B41B93
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655448354; x=1686984354;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0EKVVd/yZB+dVs/az4BRPVwOunXLe/ksFD2ZHw3i1zI=;
 b=kyvth9D8ZVKBVTBy5mmL1Kd8cAZ5dWcCu5u/DfBV9agw/9Bz8cI2Hu50
 8zfj+Ugtmds8P+S8EHMsdW/9N66ocQQyav46MoRwrhrmHdRelYRTvFu44
 aUyVtoLTBQI07OgWatjZl6rEH1mi+H3AVm+dxazv+VkXwaj02bvPR00+R
 zX3hIbT/u/RtIV2cwvd2zQ5b+vtOSadAGVk6ymQB7XCoKk7qa65uVPgI7
 D/z5A2g4+H+8wIVI0dcAfuPzmS716FbGnwuXVM7tFDOkWBslptLHMW5t3
 EUnEXglnzcXXgNPY/aVneNHRaQhO+ReyVM8nQSO+SJe3H/v7AVYHmSPuR w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="277010177"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="277010177"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 23:45:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="536732821"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 16 Jun 2022 23:45:50 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 16 Jun 2022 23:45:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 16 Jun 2022 23:45:49 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 16 Jun 2022 23:45:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qoe2Uq8jKf2nFAhWcK6kMmqYgGpQj1mnOK/js+0TXkW/IxnhFuekJ3AlK7n1Df++f0r/iFmBDWZCr/kDBnVJaxDV1pbdIYis6Fg+bWbHPxHqCttSbgNAWUj1oF6Xj1pMyInlt+aY4N2HFQLStqfaXHv54nqRwlv1XYJNe5ImTtA8/PRLwtvEHwHjV5KRhMTdHBvd1NnV/XHKtG3d54sRHXQGWfWUDodeyQmtS/DjGZ3lgfAfhK+k4uTEEPd4VZ36n+7u5lEfQyFUPNgGywh2FF6FOWjrzP4PaedNqRvjpmuyDjXTnYSEpx/y8sk6w55iXASKNVZ5t6yhluq6YtRvnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jSFYcXd8KKAIPO3hd3e319oeK+qjO2rzzn6cdvGpmFU=;
 b=l8+Bx7Qs6odPA/kjg4ktYhNxXAovM1LopvFZxL165HvLdCrOk573h+o6p6RSbZ93PvDDWsmQhOCw/1aRq0mK410JxsiLMkdi5aw4n3AimcAb2B5VqvTxZ49yzQnJoDs5y5NQmTenPM28vvW+nNhnYkOVmV+20X+Bu4bxfJtTQvO9W0O11V6/ok4Xu9dlMbm98cKLgKaMDbNA+zmjStBuG/aCuD7bRzrI9qMa6YyOQAPTBkPkZam4ODNsrpUm6nev8db4zNHDA0S6cju9l/m4LNi7Qv+ps5z6vv2RaEQ+0Tc+DNuKhLfRFcNjVxPvfw4qcWZLoIvdWKk7MbJ2O15LgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CO1PR11MB4913.namprd11.prod.outlook.com (2603:10b6:303:9f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.13; Fri, 17 Jun
 2022 06:45:44 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7%6]) with mapi id 15.20.5332.022; Fri, 17 Jun 2022
 06:45:43 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH RESEND net-next] ice: use
 eth_broadcast_addr() to set broadcast address
Thread-Index: AQHYav6vHVP+rXzh00eQLCYbBCSe2a1TVZ7g
Date: Fri, 17 Jun 2022 06:45:43 +0000
Message-ID: <BYAPR11MB3367080E73E99EDAE1FB84F1FCAF9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220518212759.2444376-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20220518212759.2444376-1-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a63edba7-b7e1-4112-ba53-08da502d0088
x-ms-traffictypediagnostic: CO1PR11MB4913:EE_
x-microsoft-antispam-prvs: <CO1PR11MB4913FCC2BD36E69D8AF54ABAFCAF9@CO1PR11MB4913.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jHuRPJmEnzZHkjd0W2IG+ucbVuaWIl23X1LIhPqvCtVsnwOnqZjJlw+g2MyHWAfnLbe6/JokHgZhW7qgR5wv2QjgCxRXzMfNtEMnOHrw8B2iINHjVYJn/IpwnnP2u9RaFIN14vosPmP7pVYPrCeAiwE5Uz3sooZs/SYORDum40DUEnGbX+dk/YXHPGwWsbFGVwcxKgCNCwHyEsulrEvnXEf7HcV+8Bl+jmuJUM3jFfRqwHvBHtRMqqgRo5QaLpNFo0jFHN0bsq4Ym0AnwZFwKsUkKcnxmHHkGtNkJt2VEoZJx8FkKqf+DdzKHemdtwygWdbFpaJVVH9FhxdkNd2xXkKnc8uOOTv8CCprvzjU5A/LmM1Ij3M5nkgM35ffaXzw0Z95ptUrea+Mtv57DoYC/Bsg9UcMAmgvZEZoE1Uxml933t5FHYfpm4fUzmgoHLGFgwIUvY0+DhFzQcWDuwKWm/7cf9z0D4WeXtFWpmAo4bFvcfR7eKB/pl26333ROumsQb/7wNxhXuUewl5ZRFmZKdntWRAdCmmOURZlwTbKWKXt6dZwQsxyBhfA7j5IC5BHZIZegbaoAIyCSQQeOXjoSJD4h+KJz969Cst6t9OW5LTS6PrND3koPBJc3uCArJbCuTfXj2udWpqewxfBXAoFl8hyCqSgOU0X/hgvI1L6iNIO9FRwWRk8wO5n8iWzhodk/22+S7MviX5gMD4H62FoNQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(186003)(82960400001)(83380400001)(66946007)(122000001)(66476007)(76116006)(8676002)(66556008)(64756008)(71200400001)(55016003)(316002)(4326008)(66446008)(110136005)(53546011)(6506007)(38100700002)(26005)(498600001)(52536014)(9686003)(33656002)(4744005)(5660300002)(8936002)(86362001)(7696005)(38070700005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?z1HyIHu/nzkMFlRGqKDdIogvwhKDa+/dclkme51cORhQqYSTFpADAwHqBgcq?=
 =?us-ascii?Q?gtuQ9c4h4zZfhj/NOFCdLNl1VFC1RE/6jwEWxo3Kvv5unSdR//TaHSS5H+bb?=
 =?us-ascii?Q?VFsikbxkUEekHP5uiaHVVFxBqT3FiAoAIB6kHTnqBXhSP/1WdYzzDvRl9/a6?=
 =?us-ascii?Q?3mE8wNDDiVg2+Ry9o56pkbSmt6XmWgnQH0T1pQdxK2SZfllixWwh13oJth9I?=
 =?us-ascii?Q?5uUtJliprO9j4aGQTnKSA03+VuxHtAp44ydI95TiAWPqZzORj26E7kkQH3gs?=
 =?us-ascii?Q?LgrYxmilJh3wW8QU5TGWbRLc3qS56gA7j4CmXvyz7DrcTPDeOVYj42zHPTRv?=
 =?us-ascii?Q?KR7+y5IDs1CAJS88pHHWDaL3PZLAjJWebSqR18TeDcVyhkGAABRC1przGUgP?=
 =?us-ascii?Q?SKEV1rJ/k5qZtIj/R/BSsG4n2cHeI3UdtGFXt5pwSZ/ww50msuaLHIw+0/bO?=
 =?us-ascii?Q?ROccfa2EHdl/gWLW6rRBZAcZLc8xwpjrs5GWpmw63svNsq+kNJU8xQLJ8DeH?=
 =?us-ascii?Q?2WWcgWe0E0bRtmguOuj8vdB0Wj70Mr3yogOi8eVJF7oYQEVMP0RWjd4AChPm?=
 =?us-ascii?Q?Ix24ZKaxqf9lDkgYHMXmcTsiDOb9XDJ3CVZc92YGR48mwjLUJr667Fy2Xr2R?=
 =?us-ascii?Q?AD2++MPkspuiq9piV6XwYTo1qYQOTEv8mKQvzXQbeqP7hjl0xO0RaNvk0qc3?=
 =?us-ascii?Q?DvYOpkzK4AfKBHkoDvBTL2xsF44+yrEYKB/41d4BToIZSuwFFedvR8AjHHjc?=
 =?us-ascii?Q?BwMxNUy5ZvOyEbNqDql6bsWsK1qwkHcMdnLO1bYHkE5VQQVvf0vdxx2f3v8z?=
 =?us-ascii?Q?4Rwe7AMwqCvBTgfU3PZy7LM+9Hp9kea6uzHBsO6VT9K4a4bPe3nIS8LikO63?=
 =?us-ascii?Q?37qP4ESEbmgQX1z/ejrFWIhcerx4dw+HQFWQHF9xHKMnMulZ9Umg/zL2pRf5?=
 =?us-ascii?Q?Qjz3QgvreerR2HmWi3ReoM/njwkptg9pUN7tYnj5NixACxUvVagDwuTPO52r?=
 =?us-ascii?Q?Z+dnbG9IPkcgptJlFBH8uQY6FSBBUOA9PiGTPypHXUfgkzYh2jRhfTgEGb22?=
 =?us-ascii?Q?7Hnwy+VPBvBt70jRqj0MH2bBlRtmSvyB/2ShMQC5wi9RdsBR1ifQkz6HaIsW?=
 =?us-ascii?Q?6jZX6WSB6MnK+/jliZueJqE5Hh5hwkekhR6mlnvacUVcTJtY4fKR4K89HsLW?=
 =?us-ascii?Q?0L3UdvX6ITMMFMoKvA6cI6ePhYeYizfGjK4HNQiXy54ORgspcxHSPQj6udG/?=
 =?us-ascii?Q?UotOY2OO+IjvXMrFKbTRcMFF1NeZBgQSZiF4M+Yo/EqhXH2R0g35gLC3mv6T?=
 =?us-ascii?Q?RY/0X4wtcDICMWeVfJsIZ3QFy+mlSiAc97RnyzZ/2LFsTOsP/nTxriI6Htqi?=
 =?us-ascii?Q?1qYBqhyGPJ1xouaONQ4KZwDjkf7qb1Dnmhh1/qVCx0QgMe/RiA/zGqKCNBTe?=
 =?us-ascii?Q?J1v5/fVlQMP7M39IZPUXPZySyPbB0FOS1nA0gr6kkQ1xmpdCBJQBg3PpXe3G?=
 =?us-ascii?Q?b57MJnq6WXzwZGBLpfEvGNXLzrLS7HfwrXqbfr60o48lNJ5zQRIabCr2qyFY?=
 =?us-ascii?Q?slUvVdmv4OILyxMIB4FmsrhRYC0UBbtG01pdbYZQEO9eXQXDMPBa2COms4qb?=
 =?us-ascii?Q?rRh/rclLPSHs0TR0w/iOUBuU9n5ZssDr7Gb+7pLW4rONiSJLpzZ981F9fY59?=
 =?us-ascii?Q?8Yh1G2acjYfGsIllp2nlbQTxlr9xIVJWf0aUEw/M3bOkOno9QqqNVBoBRez9?=
 =?us-ascii?Q?oMr/V+ka9Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a63edba7-b7e1-4112-ba53-08da502d0088
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2022 06:45:43.8588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YvLmd46OVhGWxy/Cwm+xD8lM1WwIGdw+/5oK394TQlpdXpkxfT9ba9PQCwWHfoz3GYFgRoI5pNQ74keaKzQBFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4913
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH RESEND net-next] ice: use
 eth_broadcast_addr() to set broadcast address
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
Cc: Lu Wei <luwei32@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Thursday, May 19, 2022 2:58 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lu Wei <luwei32@huawei.com>
> Subject: [Intel-wired-lan] [PATCH RESEND net-next] ice: use
> eth_broadcast_addr() to set broadcast address
> 
> From: Lu Wei <luwei32@huawei.com>
> 
> Use eth_broadcast_addr() to set broadcast address instead of memset().
> 
> Signed-off-by: Lu Wei <luwei32@huawei.com>
> ---
> Resending due to mail issues with Intel Wired LAN
> 
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
