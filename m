Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A75B4004EA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Sep 2021 20:32:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3DA583376;
	Fri,  3 Sep 2021 18:32:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zSS2XgKKKkkg; Fri,  3 Sep 2021 18:32:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 299A1833A3;
	Fri,  3 Sep 2021 18:32:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CDE2D1BF321
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 18:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC5B76070C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 18:32:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xXHPIsfRzwOm for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Sep 2021 18:32:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 90AEF60676
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 18:32:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="305052941"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="305052941"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 11:32:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="689869474"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 03 Sep 2021 11:32:36 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 11:32:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 3 Sep 2021 11:32:36 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 3 Sep 2021 11:32:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LlstnkemulEaI8xP9bvonqvL4DG0rEcfWS9TaWw8ZQCm1TYrhyEMrWOUf28GDKwP1btbYas3EE9uVMwWqeojEcxGMSUBpA/99jkwZXhL3EjCwgQGQsdXtecpQC5MaAUG7Ehh7WyxMr6ZUbBTpBENrE1YOZiuuQ1h3kI7YCe+cLsUIwaEsr87LxKvD+fGSI7yyGUEWfGnrh8EQ3UT559g8hnFUgmWm4nju0HK2zWnbcaR4KMVWy566daMX1Rm1yFD8hDLLLAIGtg+uEDxzLUCRg6qJhJio4iz8zpP+4dCYqm0tGaXtAkUi8f1mYNjkUPWE8Y8B4RqRU0eJPDb9fquGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=Riv8jDPXENbL2mABkoqTz4WY0zdbrhsoF0MX38tzjL8=;
 b=ciLDtxI18jPgJ4rQ3Sa2r2sduqutI4maZg9R5vMTCmFJZiGt+OlOF1EdEqsYVL/VX4dIw6p/WBzcaxstZEJ5yaS1Ke6rE5f0kH152ipz4wZqXhldAoFXp2YwWK5ry4T+A0s4gby5rUfXyDZUJ68+7SUr/BL/guKriZAYqO1tw2Sf2O4x/f7riuzOrTI8gUrICBZhVU44/WtVTKLzQgLUIEOC+ijQsMlEF/g7ui1ldx3vUOz/afJgqdgwTGPTQqvxolZicAqyBmFgBol/lqn8y66A+rHPShMAksyCC+zZv9ZqwwlhvPX6f/ViO1pPuvDeAkyDxCXx80AWRrAubFQjKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Riv8jDPXENbL2mABkoqTz4WY0zdbrhsoF0MX38tzjL8=;
 b=A4DcYPgC3MCkxP+wUdgHsHzLbrbOy6SvNiFid9z0S3/4e1hUOrweZu5JrJc0ZBoYeYpRGC/ibnZXhyCynghAiwy2N0s3oT+4K74THJGRPF6WaLH/7kQWskfZ/iblRdwXNIPOZDvxTTkxCVRgE6roCSr9zkX3uwkjtn/wYS7HCGY=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2589.namprd11.prod.outlook.com (2603:10b6:805:53::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19; Fri, 3 Sep
 2021 18:32:34 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42%6]) with mapi id 15.20.4478.021; Fri, 3 Sep 2021
 18:32:34 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix promiscuous mode
 configuration flow messages
Thread-Index: AQHXn/hbZjzqZAX0CECkx62yxkOQzauSpUKA
Date: Fri, 3 Sep 2021 18:32:34 +0000
Message-ID: <1057e48f9230a54880dbf54fc92cff32666d2203.camel@intel.com>
References: <20210902124436.162039-1-karen.sornek@intel.com>
In-Reply-To: <20210902124436.162039-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d4c8ee34-3a76-4a2b-a1df-08d96f0932c7
x-ms-traffictypediagnostic: SN6PR11MB2589:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB25895A89E0315DB6B1DAE05EC6CF9@SN6PR11MB2589.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XQgf61bfCzEXDGgrWvZGlmkD0bc4U7wdJwYZXO7zcNLXnGrW5OQSbHQ5Me84jQDW3WctfN8MILCbfeWOsMZDqtmwAL4TJFBEFnrUz2d2BN+t9WtbYJC7QktUGbCEQ3oZra4Df3BVYQBznewMu9Qo76WLnWKLIcFoD+tYacJWHlGV9yEZHQy7DG61mxmGtfOPBBWvcIHu5YQvegNuO/Qf2ZVoNxP4rIBjGqA9z4v8vudnbVipGLB9UVlsFm7X4HRiXfwGrj3ML32QTpOFovbtDElgEDcoWARioQncrLdTriO7Rp7ZjMvR1INhp5ywrK1F9feCfzD6PdRQs01bPKH0toW0TS6twPdsE6BFtqOuAMGMmUwyEW7Ch0dLBU0rrIKVWRdYyT/yMumyu9lRLlFURxkx22HO7DKVVr26F94MbXQ4MiCI9cafZDuq9TYgxgIx1shcsBUlK/dRe8L1KM7FJiC9jLy/tZdZUKe3C72+qhYZnNSy4Ot4z7+/64So0PqjXKTuUmvf8MwCZEuET4ROwI94D8nfblSNPh+pK48Yw5gsG+WbRQvlyP6DTAU8QLYPuBEVurg9ZVW+13UDA3W5CQbg41Xije1MB5hwchLD+3aNC/c7UWAcz7LeeloEY6kvyQpPqiBhHD6ppwH9sZ1dF5DxI+PK+8xrN2qLiE+PWAZ8qNp9VLFqQkEiiyROTsb2puu7dmwRQ9v682IG8OXGnw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(366004)(376002)(346002)(396003)(8936002)(30864003)(2906002)(38070700005)(8676002)(186003)(91956017)(6506007)(76116006)(83380400001)(38100700002)(66556008)(6486002)(122000001)(64756008)(66446008)(86362001)(5660300002)(66476007)(36756003)(26005)(66946007)(71200400001)(316002)(6512007)(2616005)(478600001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UkNiclRDOFJvMmhzajFxTEo1b2FGd1RSd1drQ0V0RXphSTlKTG1vdENKK01s?=
 =?utf-8?B?R01lNW5DVUhDWDEyU2JGU1dJSkFXZkk4YzNNL1owd256NE10UmwrdTZ3RkZ0?=
 =?utf-8?B?UC9VWnExa3Q5bGZGUUI0SEpSSjA4MWxaUmVIL3E1OEw0UkZZYUtvV3JxRWVL?=
 =?utf-8?B?TnlvSkp3clphODRPWWhLTnUrTGR4c1ZQREFPV0dEUTY4OFdmRlZIcjd5NFR1?=
 =?utf-8?B?ejBGSlg2TWRjRUxPamUzMmo3dXJJdk9WZXpPdG4xSTdXZmx4QWxrMkYzQU5u?=
 =?utf-8?B?SSs3eHpsZUNrMGpPa3lDQVp0QnBMbmtqTmI3TnJXNHBhYnZnSmExaXVLRXlq?=
 =?utf-8?B?dFRZWUhTQXJhcFdBUk1TMGVTQVF4dVJneEQ3ZjF4ZEkxSjFhTHlZdHJLMVVW?=
 =?utf-8?B?T1UzM3kyUnh4TUs4RkRJd0NGZXc4VFgwUFhjREQwZ1liWUNUQXA2clZiakVF?=
 =?utf-8?B?Q1BPSXYxMTZHd2creTMvWUV4REJ0WjQ3emlwbEJTZTcwbTNpRTBsNGFLbm5n?=
 =?utf-8?B?azVrZnB3L2ZUekhjUE9UQ0pKcEhDc2EwSWNKSzc0aXJTdjlIU2wyTXlrVVFB?=
 =?utf-8?B?Umd0M0wyd0d5eHFlanU5MWtwcTlhL2c2NU9TckJvSjkxZHMxdkNjVkdMNDNs?=
 =?utf-8?B?S2xzaTdaSVo4Yzh6QUlTK2o2elphU3h6K3BmZWl2eTY1d0JOU2owWTRwTmVV?=
 =?utf-8?B?OFlmemdQZTUzNHd2WldpeC9Ka2R5T1J5ZUk2TFp0blNlQm1oYlFyVEFiSG91?=
 =?utf-8?B?cVpOL29SWUYwQU9JTmx3Qm93VlN0ZUJ1bG5QdTl2c3RRcnRDTTBJQ2g1Zyt0?=
 =?utf-8?B?K1JDdTQvaW9zMmN5VWVWVFlDeU5kMUp2QXpJR0FLK1RML3M1Y2RWSzZrcFFL?=
 =?utf-8?B?TElQQk5EOUpjdTAvM2M1Q0dKOFo4dWJNWUlHZTlwRXpRQUVPck9ldTVqK3BC?=
 =?utf-8?B?eGlRaEhvWUZNamdlVllkb1czYlVqamZMODkzWm5SL2JINWI4SndQZEVWSm9T?=
 =?utf-8?B?a0xkWXl6ME5yUlE3a3FuR09DR2J2KzFwVGhyZHZhUjVWMWl0bStXV3RRb3Vk?=
 =?utf-8?B?VGhOeEM0SVhiNXFML3BIN2pYOG93ZW1qNGlQVGh3TStla1FQQVFrdFduT0xy?=
 =?utf-8?B?MHVaV3UvN1dJSTcvMzRyc0RzZWwrZVFweUY3ZTFNNlhlZGVNR3pGL2ZpakU3?=
 =?utf-8?B?MlhEU1FtaUQzM2tGSWlhUjlSQnp6cnRkamJZWnBNbUNJRWVuUWc1SGQvbjd6?=
 =?utf-8?B?V3BNc3o0S08xK1BOYmp5WEZjdGRsQnF0SlhTNmNtZ2JETE53SCtpSVZ6V3RM?=
 =?utf-8?B?VGtTSndzeUU5VEJjK0JVMDkwbHpxUVpUMi94OStkY0FnTXRiMmRQbGo3NXVR?=
 =?utf-8?B?NExaU3dXM29VSWorT21HNmdSLzlVYm1vdU9ZcGZIaXh3bVpMN0orTmd4Vksv?=
 =?utf-8?B?RXl4eVFWSi9LU1RITEVNejA3QWtlTDZuK2RYb2libXJjVGRzZHdmMlEwMEtk?=
 =?utf-8?B?eVNKYmc5KzdxaGFLQk0yZVdEbnR4MVVHdE9rOWt3MTZwNVppZ05LdFZXNWpT?=
 =?utf-8?B?WGpidXB0WTRWNVZnWkcxdDFlOWpTM1RSWEIvMkFoQi9iRjJkT2dNeU80Y2kx?=
 =?utf-8?B?bzhuVHNTWi9DVjh3Q2hVVGtlVjdjMUlkQ2xMcXF0QTdvaFU3TWRHdDhSQVNR?=
 =?utf-8?B?ejJDSnFvM1VkQm5qYnhqNDJBVGh2b1lGOHlxZ1l1NmpOcWlWdWlVMHRDYk51?=
 =?utf-8?B?dHJqQk5FQ2w4T1hMSnZaVDM3NUZnRUZYRkVnbUpTMlRQRXREa3ppTGdQWTYv?=
 =?utf-8?B?eUZkMFBMZXVoUHVGVFg5QT09?=
Content-ID: <46D91694ADCF8840B107F2B4CBEC2574@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4c8ee34-3a76-4a2b-a1df-08d96f0932c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2021 18:32:34.6119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EBOV06+qx98dLwOCBXY7oQC+DUL3umKQgA3Uy4BjBTpBIB4sF5kaC+6ZlrUvkbSo7a3GRMjb6yhpCkYxvBzEteCSdxIaJfkTt2SWbBI9ZyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2589
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix promiscuous mode
 configuration flow messages
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

On Thu, 2021-09-02 at 14:44 +0200, Karen Sornek wrote:
> Currently when configuring promiscuous mode on the AVF we detect a
> change in the netdev->flags. We use IFF_PROMISC and IFF_ALLMULTI to
> determine whether or not we need to request/release promiscuous mode
> and/or multicast promiscuous mode. The problem is that the AQ calls
> for
> setting/clearing promiscuous/multicast mode are treated separately.
> This
> leads to a case where we can trigger two promiscuous mode AQ calls in
> a row with the incorrect state. To fix this make a few changes.
> 
> Use IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE instead of the previous
> IAVF_FLAG_AQ_[REQUEST|RELEASE]_[PROMISC|ALLMULTI] flags.
> 
> In iavf_set_rx_mode() detect if there is a change in the
> netdev->flags in comparison with adapter->flags and set the
> IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE aq_required bit. Then in
> iavf_process_aq_command() only check for
> IAVF_FLAG_CONFIGURE_PROMISC_MODE
> and call iavf_set_promiscuous() if it's set.
> 
> In iavf_set_promiscuous() check again to see which (if any)
> promiscuous mode bits have changed when comparing the netdev->flags
> with
> the adapter->flags. Use this to set the flags which get sent to the
> PF
> driver.
> 
> Add a spinlock that is used for updating current_netdev_promisc_flags
> and only allows one promiscuous mode AQ at a time.
> 
> [1] Fixes the fact that we will only have one AQ call in the
> aq_required
> queue at any one time.
> 
> [2] Streamlines the change in promiscuous mode to only set one AQ
> required bit.
> 
> [3] This allows us to keep track of the current state of the flags
> and
> also makes it so we can take the most recent netdev->flags
> promiscuous
> mode state.
> 
> [4] This fixes the problem where a change in the netdev->flags can
> cause
> IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE to be set in iavf_set_rx_mode(),
> but cleared in iavf_set_promiscuous() before the change is ever made
> via
> AQ call.
> 
> Also, break up long line print statements in iavf_set_promiscuous().

Strings are not exempt from long line, no need to break them up.

Also, this patch does not apply.

> Fixes: 129cf89e5856 ("iavf: rename functions and structs to new
> name")
> Signed-off-by: Brett Creeley brett.creeley@intel.com
> Signed-off-by: Karen Sornek karen.sornek@intel.com
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        | 20 +++--
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 46 +++++------
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 77 ++++++++++++-----
> --
>  3 files changed, 82 insertions(+), 61 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 21c957755..b3e145ebf 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -267,8 +267,6 @@ struct iavf_adapter {
>  #define IAVF_FLAG_CLIENT_NEEDS_OPEN		BIT(10)
>  #define IAVF_FLAG_CLIENT_NEEDS_CLOSE		BIT(11)
>  #define IAVF_FLAG_CLIENT_NEEDS_L2_PARAMS	BIT(12)
> -#define IAVF_FLAG_PROMISC_ON			BIT(13)
> -#define IAVF_FLAG_ALLMULTI_ON			BIT(14)
>  #define IAVF_FLAG_LEGACY_RX			BIT(15)
>  #define IAVF_FLAG_REINIT_ITR_NEEDED		BIT(16)
>  #define IAVF_FLAG_QUEUES_DISABLED		BIT(17)
> @@ -292,10 +290,7 @@ struct iavf_adapter {
>  #define IAVF_FLAG_AQ_SET_HENA			BIT(12)
>  #define IAVF_FLAG_AQ_SET_RSS_KEY		BIT(13)
>  #define IAVF_FLAG_AQ_SET_RSS_LUT		BIT(14)
> -#define IAVF_FLAG_AQ_REQUEST_PROMISC		BIT(15)
> -#define IAVF_FLAG_AQ_RELEASE_PROMISC		BIT(16)
> -#define IAVF_FLAG_AQ_REQUEST_ALLMULTI		BIT(17)
> -#define IAVF_FLAG_AQ_RELEASE_ALLMULTI		BIT(18)
> +#define IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE	BIT(15)
>  #define IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING	BIT(19)
>  #define IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING	BIT(20)
>  #define IAVF_FLAG_AQ_ENABLE_CHANNELS		BIT(21)
> @@ -307,6 +302,16 @@ struct iavf_adapter {
>  #define IAVF_FLAG_AQ_ADD_ADV_RSS_CFG		BIT(27)
>  #define IAVF_FLAG_AQ_DEL_ADV_RSS_CFG		BIT(28)
>  
> +	/* Lock to prevent possible clobbering of
> +	 * current_netdev_promisc_flags
> +	 */
> +	spinlock_t current_netdev_promisc_flags_lock;
> +#ifdef HAVE_RHEL6_NET_DEVICE_OPS_EXT
> +	u32 current_netdev_promisc_flags;
> +#else
> +	netdev_features_t current_netdev_promisc_flags;
> +#endif /* HAVE_RHEL6_NET_DEVICE_OPS_EXT */

What is this HAVE*?

> +
>  	/* OS defined structs */
>  	struct net_device *netdev;
>  	struct pci_dev *pdev;
> @@ -426,7 +431,8 @@ void iavf_add_ether_addrs(struct iavf_adapter
> *adapter);
>  void iavf_del_ether_addrs(struct iavf_adapter *adapter);
>  void iavf_add_vlans(struct iavf_adapter *adapter);
>  void iavf_del_vlans(struct iavf_adapter *adapter);
> -void iavf_set_promiscuous(struct iavf_adapter *adapter, int flags);
> +void iavf_set_promiscuous(struct iavf_adapter *adapter);
> +bool iavf_promiscuous_mode_changed(struct iavf_adapter *adapter);
>  void iavf_request_stats(struct iavf_adapter *adapter);
>  void iavf_request_reset(struct iavf_adapter *adapter);
>  void iavf_get_hena(struct iavf_adapter *adapter);
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 80437ef26..edd448bfb 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -889,6 +889,16 @@ static int iavf_addr_unsync(struct net_device
> *netdev, const u8 *addr)
>  	return 0;
>  }
>  
> +/**
> + * iavf_promiscuous_mode_changed - check if promiscuous mode bits
> changed
> + * @adapter: device specific adapter
> + */
> +bool iavf_promiscuous_mode_changed(struct iavf_adapter *adapter)
> +{
> +        return (adapter->current_netdev_promisc_flags ^ adapter-
> >netdev->flags)
> +                & (IFF_PROMISC | IFF_ALLMULTI);
> +}
> +
>  /**
>   * iavf_set_rx_mode - NDO callback to set the netdev filters
>   * @netdev: network interface device structure
> @@ -902,19 +912,11 @@ static void iavf_set_rx_mode(struct net_device
> *netdev)
>  	__dev_mc_sync(netdev, iavf_addr_sync, iavf_addr_unsync);
>  	spin_unlock_bh(&adapter->mac_vlan_list_lock);
>  
> -	if (netdev->flags & IFF_PROMISC &&
> -	    !(adapter->flags & IAVF_FLAG_PROMISC_ON))
> -		adapter->aq_required |= IAVF_FLAG_AQ_REQUEST_PROMISC;
> -	else if (!(netdev->flags & IFF_PROMISC) &&
> -		 adapter->flags & IAVF_FLAG_PROMISC_ON)
> -		adapter->aq_required |= IAVF_FLAG_AQ_RELEASE_PROMISC;
> -
> -	if (netdev->flags & IFF_ALLMULTI &&
> -	    !(adapter->flags & IAVF_FLAG_ALLMULTI_ON))
> -		adapter->aq_required |= IAVF_FLAG_AQ_REQUEST_ALLMULTI;
> -	else if (!(netdev->flags & IFF_ALLMULTI) &&
> -		 adapter->flags & IAVF_FLAG_ALLMULTI_ON)
> -		adapter->aq_required |= IAVF_FLAG_AQ_RELEASE_ALLMULTI;
> +	spin_lock_bh(&adapter->current_netdev_promisc_flags_lock);
> +
> +	if (iavf_promiscuous_mode_changed(adapter))
> +		adapter->aq_required |=
> IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE;
> +	spin_unlock_bh(&adapter->current_netdev_promisc_flags_lock);
>  }
>  
>  /**
> @@ -1642,20 +1644,9 @@ static int iavf_process_aq_command(struct
> iavf_adapter *adapter)
>  		return 0;
>  	}
>  
> -	if (adapter->aq_required & IAVF_FLAG_AQ_REQUEST_PROMISC) {
> -		iavf_set_promiscuous(adapter, FLAG_VF_UNICAST_PROMISC |
> -				       FLAG_VF_MULTICAST_PROMISC);
> -		return 0;
> -	}
> -
> -	if (adapter->aq_required & IAVF_FLAG_AQ_REQUEST_ALLMULTI) {
> -		iavf_set_promiscuous(adapter,
> FLAG_VF_MULTICAST_PROMISC);
> -		return 0;
> -	}
> -	if ((adapter->aq_required & IAVF_FLAG_AQ_RELEASE_PROMISC) ||
> -	    (adapter->aq_required & IAVF_FLAG_AQ_RELEASE_ALLMULTI)) {
> -		iavf_set_promiscuous(adapter, 0);
> -		return 0;
> +	if (adapter->aq_required & IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE)
> {
> +		iavf_set_promiscuous(adapter);
> +		return IAVF_SUCCESS;

Why change from previous return 0 to IAVF_SUCCESS? This function
returns int, not iavf_status.

>  	}
>  
>  	if (adapter->aq_required & IAVF_FLAG_AQ_ENABLE_CHANNELS) {
> @@ -3840,6 +3831,7 @@ static int iavf_probe(struct pci_dev *pdev,
> const struct pci_device_id *ent)
>  
>  	spin_lock_init(&adapter->mac_vlan_list_lock);
>  	spin_lock_init(&adapter->cloud_filter_list_lock);
> +	spin_lock_init(&adapter->current_netdev_promisc_flags_lock);
>  	spin_lock_init(&adapter->fdir_fltr_lock);
>  	spin_lock_init(&adapter->adv_rss_lock);
>  
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 9c128462e..401af605a 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -729,47 +729,70 @@ void iavf_del_vlans(struct iavf_adapter
> *adapter)
>   *
>   * Request that the PF enable promiscuous mode for our VSI.
>   **/
> -void iavf_set_promiscuous(struct iavf_adapter *adapter, int flags)
> +void iavf_set_promiscuous(struct iavf_adapter *adapter)
>  {
> +	struct net_device *netdev = adapter->netdev;
>  	struct virtchnl_promisc_info vpi;
> -	int promisc_all;
> +	unsigned int flags;
>  
>  	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
>  		/* bail because we already have a command pending */
> -		dev_err(&adapter->pdev->dev, "Cannot set promiscuous
> mode, command %d pending\n",
> +		dev_err(&adapter->pdev->dev,
> +			"Cannot set promiscuous mode, command %d
> pending\n",
>  			adapter->current_op);
>  		return;
>  	}
>  
> -	promisc_all = FLAG_VF_UNICAST_PROMISC |
> -		      FLAG_VF_MULTICAST_PROMISC;
> -	if ((flags & promisc_all) == promisc_all) {
> -		adapter->flags |= IAVF_FLAG_PROMISC_ON;
> -		adapter->aq_required &= ~IAVF_FLAG_AQ_REQUEST_PROMISC;
> -		dev_info(&adapter->pdev->dev, "Entering promiscuous
> mode\n");
> -	}
> +	/* prevent changes to promiscuous flags */
> +	spin_lock_bh(&adapter->current_netdev_promisc_flags_lock);
>  
> -	if (flags & FLAG_VF_MULTICAST_PROMISC) {
> -		adapter->flags |= IAVF_FLAG_ALLMULTI_ON;
> -		adapter->aq_required &= ~IAVF_FLAG_AQ_REQUEST_ALLMULTI;
> -		dev_info(&adapter->pdev->dev, "%s is entering multicast
> promiscuous mode\n",
> -			 adapter->netdev->name);
> +	/* sanity check to prevent duplicate AQ calls */
> +	if (!iavf_promiscuous_mode_changed(adapter)) {
> +		adapter->aq_required &=
> ~IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE;
> +		dev_dbg(&adapter->pdev->dev, "No change in promiscuous
> mode\n");
> +		/* allow changes to promiscuous flags */
> +		spin_unlock_bh(&adapter-
> >current_netdev_promisc_flags_lock);
> +		return;
>  	}
>  
> -	if (!flags) {
> -		if (adapter->flags & IAVF_FLAG_PROMISC_ON) {
> -			adapter->flags &= ~IAVF_FLAG_PROMISC_ON;
> -			adapter->aq_required &=
> ~IAVF_FLAG_AQ_RELEASE_PROMISC;
> -			dev_info(&adapter->pdev->dev, "Leaving
> promiscuous mode\n");
> +	/* there are 2 bits, but only 3 states */
> +	if (!(netdev->flags & IFF_PROMISC) &&
> +	    netdev->flags & IFF_ALLMULTI) {
> +		/* State 1  - only multicast promiscuous mode enabled
> +		 * - !IFF_PROMISC && IFF_ALLMULTI
> +		 */
> +		flags = FLAG_VF_MULTICAST_PROMISC;
> +		adapter->current_netdev_promisc_flags |= IFF_ALLMULTI;
> +		adapter->current_netdev_promisc_flags &= ~IFF_PROMISC;
> +		dev_info(&adapter->pdev->dev,
> +			 "Entering multicast promiscuous mode\n");
> +		} else if (!(netdev->flags & IFF_PROMISC) &&
> +		   !(netdev->flags & IFF_ALLMULTI)) {

This indent looks off

> +		/* State 2 - unicast/multicast promiscuous mode
> disabled
> +		 * - !IFF_PROMISC && !IFF_ALLMULTI
> +		 */
> +		flags = 0;
> +		adapter->current_netdev_promisc_flags &=
> +			~(IFF_PROMISC | IFF_ALLMULTI);
> +		dev_info(&adapter->pdev->dev, "Leaving promiscuous
> mode\n");
> +	} else {
> +		/* State 3 - unicast/multicast promiscuous mode enabled
> +		 * - IFF_PROMISC && IFF_ALLMULTI
> +		 * - IFF_PROMISC && !IFF_ALLMULTI
> +		 */
> +		flags = FLAG_VF_UNICAST_PROMISC |
> FLAG_VF_MULTICAST_PROMISC;
> +		adapter->current_netdev_promisc_flags |= IFF_PROMISC;
> +		if (netdev->flags & IFF_ALLMULTI)
> +			adapter->current_netdev_promisc_flags |=
> IFF_ALLMULTI;
> +		else
> +			adapter->current_netdev_promisc_flags &=
> ~IFF_ALLMULTI;
>  		}
> +		dev_info(&adapter->pdev->dev, "Entering promiscuous
> mode\n");
>  
> -		if (adapter->flags & IAVF_FLAG_ALLMULTI_ON) {
> -			adapter->flags &= ~IAVF_FLAG_ALLMULTI_ON;
> -			adapter->aq_required &=
> ~IAVF_FLAG_AQ_RELEASE_ALLMULTI;
> -			dev_info(&adapter->pdev->dev, "%s is leaving
> multicast promiscuous mode\n",
> -				 adapter->netdev->name);
> -		}
> -	}
> +	adapter->aq_required &= ~IAVF_FLAG_AQ_CONFIGURE_PROMISC_MODE;
> +
> +	/* allow changes to promiscuous flags */
> +	spin_unlock_bh(&adapter->current_netdev_promisc_flags_lock);
>  
>  	adapter->current_op = VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE;
>  	vpi.vsi_id = adapter->vsi_res->vsi_id;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
