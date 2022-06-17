Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 141DB54F24A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jun 2022 09:58:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92D0060D5A;
	Fri, 17 Jun 2022 07:58:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92D0060D5A
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=bD8/VadZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pezHS924D0vA; Fri, 17 Jun 2022 07:58:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8035760B58;
	Fri, 17 Jun 2022 07:58:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8035760B58
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 93D751BF36B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 07:58:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A0E3812CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 07:58:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A0E3812CB
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bD8/VadZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yh-EecM-9Upw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jun 2022 07:57:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BB76812CA
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7BB76812CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 07:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655452678; x=1686988678;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IrP8OwirGlrODjBOFNieypEowdSwEZeXj/3i7vliSQE=;
 b=bD8/VadZZU/rOKhJJCm6VV80aHkZFh44DAHgLb4xGuF+9i/obAdSgJtP
 Lq/udMU6VZ7kfQEnU65PCW3ltM5mverAfuctw3todp1WTGaevsvUiPO+P
 0hSQ6lmLMRKa6hdFg/TgJtpaJ7CKgSye+qnDrQBYHIf26BCUkIbPheG2E
 /4dX2fkry8JAaYUOC1C7lAzAJZ60yI9t+SYNnmbkipVfWtX2kvQGGCxyi
 4rSbY7s254Sts4WFzuU1bo0Qin+FXCssr9Arm25m34ZlrJu0Ra5ly27uD
 moHlWIDtZo6s0lQSTegtQKlG4gaf3QN4zRzUNlHY1rY85kO9WrwME1woz g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="268137424"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="268137424"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 00:57:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="831939871"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2022 00:57:57 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 17 Jun 2022 00:57:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 17 Jun 2022 00:57:56 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 17 Jun 2022 00:57:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EfJWfSKN43wNZZ32wpr9HG8ErTfVNISareHOTgKvbU/lJbJtOFPHbB2N9Ns6Bekrh6uJswFKxRAr2Dka3NxtLlngc/BJMMJ5SQgAGEFaBb+utwkkTm5A+rwov4HISzbY6BIj1A6M9e8KOWpQ0evSMsyLAlPRIJPCYu4csKuFXXOOj3MRUyeF+vnPyzS5hxcwIqMg1okYca5Kw1htueqgaBftD62cIC/WPC/PBuhlNocsvmsvSGTvsjvN5WeDmcpz2qoe0etLsOEa5Btqvkq8uk0708WxU854KGaeuZaaWMHYsCW4LTkMsFkQGO1RIjzpGqxj/LLnUX5wPfmuU1AMNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IrP8OwirGlrODjBOFNieypEowdSwEZeXj/3i7vliSQE=;
 b=cwcIlqV9zB+fY1C65WvRxUtOpht8fkAwgLbPaThioesAX7QEnSkdkIzeJNSjv2c0zFTQZ+PH6SUnLHAZQYhGQWBpn+zTrYX6V0GZEhyOjP5t1fGz+bjebXIWzIKsDmMIa32BnIu9TRJfR692mZLLkdLO9qkOndet/MF8c11tK5t9l97aP+8pHsvzEQipkujHA5C9dR4QfnotxF5ZQfoEwY3EpKBwzd5MAhTFlV4XS/MoMA4SRac6IsNOJ6roba5IyrcLl0dBREwTtdLyrLXSI/KoUBWb3jK34Ie0M3A0gUqf5m4GaaGB8gL7dLSDTIJ3VBMYV3dGKVNzcBtFP3pzog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by CY5PR11MB6162.namprd11.prod.outlook.com (2603:10b6:930:29::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.19; Fri, 17 Jun
 2022 07:57:55 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::21ae:2153:219e:b4aa]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::21ae:2153:219e:b4aa%5]) with mapi id 15.20.5353.017; Fri, 17 Jun 2022
 07:57:54 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: Fix switchdev rules book
 keeping
Thread-Index: AQHYbol+Zyyey8TppEmf7eIj0PVxtK1TYnEA
Date: Fri, 17 Jun 2022 07:57:54 +0000
Message-ID: <MW3PR11MB45547B42121DAD3D8C4652559CAF9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220523094155.388032-1-wojciech.drewek@intel.com>
In-Reply-To: <20220523094155.388032-1-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 69613cd0-23c8-4de6-fe85-08da503715e1
x-ms-traffictypediagnostic: CY5PR11MB6162:EE_
x-microsoft-antispam-prvs: <CY5PR11MB6162425AEF945B4AB3CE2FA79CAF9@CY5PR11MB6162.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qYHoNk8ZfXF3EBoy+7dGFPu8rQIdp4aUFYbTZPqBhiQpF7iayWp67nDlUuMwv/weJdl7iMcxNVNm1r4UE7YQuc8d1NgQCZn3Lfr7nUTNxjWK5HwTjP+MWcAK2Iezxtn1NuDzULDFYyw02TLiDGxWu+pQBQmJn4k1B/LD+az9FQ9lDyqZiP8ITNGMF0iPW1u3f4K6/N0wbKtUDC+0UAXMIGCnX5PLme89OC8mRM+kuMaHsKfEEDxysHntmltuWYtWk+ZImzNLdX2uazhXpM4dCnhNUYUKi17xpn9yYB5unXssZ34/5m240Gaqlv+roROzD0HHon9hDYbExGj5QJLZsmnvZDj++qt+uCTz4tWgIOGkcME4bStOtLjRKuwz5kSGmA9EsB+MJ6kUM3QpKJbbdOjFQBz0/1Xmx9jCpwkssbaNIEymZXUyawClqILICFeC3eax6mwgzYiuTASDNrZa8tG8/T00jDlSJ0C/qkjejd2Iy9rNJd/OXWb3vw8646Wnsbn5fdVOaPESPJGI39IUVTkEQrikAKbpBjdCk81Zys1feS8oXJOtNbIpUbryhe/Yv24sVsafZXyJQl2/aLrLc1aCauCYzvNtRMqboBMP525bmn0z4FVrepVxymL6Jbs5RbAia/3geUOVcmwJVVKukT1T20pVY8AQSGLjgYnTSLSp0ooev6qapweYZoLVcHJQtLvaSAN5jnT5YRZzaiA3+Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(86362001)(76116006)(8936002)(82960400001)(52536014)(33656002)(66446008)(9686003)(66476007)(7696005)(4744005)(5660300002)(8676002)(2906002)(186003)(316002)(498600001)(66556008)(38100700002)(71200400001)(66946007)(26005)(6506007)(64756008)(122000001)(55016003)(110136005)(38070700005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mafzv9hKz7V47FIULwRtTAr4mtcpGuoO1t5R5+Kqz3dWP0/5ZQf96snzXPJ0?=
 =?us-ascii?Q?9mmiY9t9P+af1zXwyxS3zHwdRBiUPdt/h1mk4XHmHIanZHpWAosZ9TfxyaJo?=
 =?us-ascii?Q?e+PM9HBRMl9yks15+ND62Ntr+GOOHShuvEa62zCH1BaSpZuwwFg8+T6gsMXU?=
 =?us-ascii?Q?jf8Zikm5sUKw76ahuz+bmjxRMMEhBONRIRJcERf45TmN5piXdC8XPuZcUYpt?=
 =?us-ascii?Q?Tp4fzizsdlresMMBKunlny2qAmtgVjE9V6tQyykMHeqOjoqpNdnDgM30Ao6C?=
 =?us-ascii?Q?2KmrIuBC6VgUvCjUqsiP9DVdPnuyycyaqVzOyDJYdVqszCrmz0ytn77ci0Ca?=
 =?us-ascii?Q?TaEocza21enxu/AfHjNAOyiZRvEbJ0QXj/KWjS75scVpYL8FpuREiYYg+Obr?=
 =?us-ascii?Q?d1Uj4hOQY8BmjyjmEuPHRU/9vwV0BNfjDTuwvN7rU/VNw2L+Cyo6ef+/B4wi?=
 =?us-ascii?Q?e8k0foati9iBbO6RdOJ5MdPpPWpBqEgvY/4fKCDfrCFf84+P4/yMXhRc15+1?=
 =?us-ascii?Q?fZH59edKdpQrB3LgFHiNRS0p8iTap5Hzb49Z3nz6GF1Jpce1fhZOtWMUgmqi?=
 =?us-ascii?Q?4XMNW/LKpmMcZeTRC/FNeYmmOXL/1E66n2SSI+VjiqQPUB1aIcZOy8nOLXSb?=
 =?us-ascii?Q?OX93xBwnW0TS2z5Wm4A94vEVeXu2T80d/3S5aVSDNMZY0udfjZZDo2Qm/AuL?=
 =?us-ascii?Q?otLLfXgJUgQj0S2n8xas9CAXEf428WepgWtR1TkCwBYHxL0xHFrKtTxDNWr0?=
 =?us-ascii?Q?rJ4cpDOuwnK4l0vcegE86l16hSgtce1jASF1YnMCex/XuL9faXOltq0I1IyF?=
 =?us-ascii?Q?BPDwS6BFztaC7bXCRabK2iGPuqYhOf/ouKPXkc/vXY8FyEBYHlin9UUlLJjy?=
 =?us-ascii?Q?snMZGafUscLSv2NH9fbvX/IAmYeZNIH5xNFc6LbrUnEWVnBTR2Y6J4Eylmsw?=
 =?us-ascii?Q?P0VPttaXJM56hXODVYq27hIIg7mz4BMY8DEasIYVIXCy0VZ/wsYBsxkaHnZV?=
 =?us-ascii?Q?mROzkK2KwDEEM9AiwLnAipH1U4Pf6UDgVgyPLTcQLt/s9Dfs/Z6uhSp7sNz7?=
 =?us-ascii?Q?5AUJMLuI7rKmynDmamynMesqjciLSmnasXedJpRdraWRFqisNGzAkbRgP1K0?=
 =?us-ascii?Q?PDWofxCGYYA3br9atXQ3xXBVjutZhbRqpGmu1U4WsVzSMF3KIvMeKwQhwv43?=
 =?us-ascii?Q?GfuJB8SoRXSRUw9VMsYu94ZBab6BRWiYiDOhUz83C7he+2FuNr9AeTpgy/PC?=
 =?us-ascii?Q?1TtXh1ZNeqmB59CqpYU4AOKj+eo/tRQ7D36xBxjHq00acb13nVuW8NxeO0+Y?=
 =?us-ascii?Q?3Z1MLw0j4TIOdY3g+hCq4l+WGj6iTYTWwriUgbQb8Z8vroCx/ohwc48bvKeB?=
 =?us-ascii?Q?S8olHai9dzVp+D13YvFfAfH8zSrDX2V3ASkW6BydOrlmI6LCFssLb7+9QlUG?=
 =?us-ascii?Q?ZdBOvwFF+3XvH3D6AxTwgUB/lITIqhEBUSewoUN7aPNqQqYonJnMA/7gJ5Jw?=
 =?us-ascii?Q?R66CnYxp2qSiMjqSLRpmibWU5q2yVG/dbzOD+w6dnBpjie9IgHW2nPp93h2V?=
 =?us-ascii?Q?HcxVhnKYmQxGopwicFCu/oy6JWnWw0s2R51dlqU+dLdCleWJd7q3bpo9NtNO?=
 =?us-ascii?Q?Hgb0kl26RxC1wT7qy8AK07HkvxucBclpIWLP35cqFUmi/eSykzTuUm+QMdZP?=
 =?us-ascii?Q?FfEX7uN5s14/PEACIrP7gBARAEojL3nactBWfmlV3rDy5jhL0NQIGeh3yc8C?=
 =?us-ascii?Q?a3FWhVrh1zWoRyL/ZfaM0A1jiSALQso=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69613cd0-23c8-4de6-fe85-08da503715e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2022 07:57:54.6589 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FSO5oGNlIHjZy0WrBWCv1O9l8QTZ9haScjYfSLgKppKmUUwEKm2IG+GuM43GN+BrXBwWbGGLDhEfT5hgChRm8fGXVhmzXcDbb+gEpSqlHQ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6162
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix switchdev rules book
 keeping
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Wojciech Drewek
>Sent: Monday, May 23, 2022 3:12 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix switchdev rules book keeping
>
>Adding two filters with same matching criteria ends up with one rule in
>hardware with act = ICE_FWD_TO_VSI_LIST.
>In order to remove them properly we have to keep the information about vsi
>handle which is used in VSI bitmap
>(ice_adv_fltr_mgmt_list_entry::vsi_list_info::vsi_map).
>
>Fixes: 0d08a441fb1a ("ice: ndo_setup_tc implementation for PF")
>Reported-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
>v2: compile issue fixed
>---
> drivers/net/ethernet/intel/ice/ice_tc_lib.c | 1 +
> 1 file changed, 1 insertion(+)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
