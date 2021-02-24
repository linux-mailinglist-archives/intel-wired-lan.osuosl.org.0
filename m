Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A87C93234B8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Feb 2021 01:54:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05D4B4EBB2;
	Wed, 24 Feb 2021 00:54:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ut4damxgtJw9; Wed, 24 Feb 2021 00:54:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2B624EBAD;
	Wed, 24 Feb 2021 00:54:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 397F21BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 00:54:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 34D6A43056
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 00:54:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8dlnwK84xuF4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Feb 2021 00:54:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 60B8F43052
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 00:54:05 +0000 (UTC)
IronPort-SDR: Gn/Xc/eAogLc2hlBQavoErZmFeOVSuoxlCyBbZeTS+s06ysK1GqmcRJJ49noq7F8p53pn79g5v
 DdhEN+cit0Wg==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="181568863"
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="181568863"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 16:54:04 -0800
IronPort-SDR: e6aYbIw+7Xd943vf46Yf2Xuky4fU8ETm3atNqifa6DsK1hnbYviKb7HJTLjyd3IHpBUZX9GehE
 /gzGv59M54mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="515399743"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 23 Feb 2021 16:54:03 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 23 Feb 2021 16:54:03 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 23 Feb 2021 16:54:03 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 23 Feb 2021 16:54:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UKlV6ZA4MedvdqtMiGjYYZdezBmilRgDyQhAnzgTa0lrfbOlx48nuVQJFkqDJnNOU+vcRI6XV6AeRKB04399fkZ+s5ii1qshxmeDhm1K/nij0YR2AGlfljnumQA1cC74QgubDcmG6m/00jelHOthIWM6QxGXQFwxF8wxa9UmERTi4EgO1l8VKiCWzbu/+IT6gwUloJQspF+JpV/dBW1LnrWh7YlKPhx4APpe+hehTUBI53szSryGfk89dc7dQ6tRuvY8jQ4YQhaBwjZT8CbTyxzL2FoIVHeElKL1IJOSBPRb2v2MKsHdSUNUOtTthCRDneYTWXYJn9XpaZbdXTJUHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pjTmanTHe5jrmSn6xhzvXk9ffkREBVKrr7efGKtnVF4=;
 b=SppQ6VqLRLqneJPGU507mNkvj168twWMgMVHEL+cUl/lgum4NymvLQLJe330/CQWui+SqAfK+vHpBC4t5lAxrO8tz1CnxbvoodjwSQwC6g51nrXFwDtVVVQvplM+qpxhp4/ChN8LQEf4sCbz2+uAs9w4kxJNNJfeq04Qb2ofp2+hVZ5YtWHokd+DFYs8aGdHmzHeFksVQjODh2fjf2F0+s0E8rMAXnyAG4JtIiwrVRxlNm/tAKJEjxJmEisS7sEcPgsMbSNQ5rTEx3TE0LOcSuHP0fM9siDdIuZ/PQXHOctv2A3jXLNFKiMACfhmbFotxykSNl12yfLthtRxlw/jIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pjTmanTHe5jrmSn6xhzvXk9ffkREBVKrr7efGKtnVF4=;
 b=Sxy4BjWznnyB+LiCfGfUYNDx848gblQst7nZ3Ygv7P4BD2VPsOmGWeq7MTpH5kv5/cWo75P+ilv+csxJ66IQOt3yQcpbM3p1D+WtO7ypvUoumG1t2FZXWN6J/eeGk1FRyOSaDmKPszeAjhXYrUi4dFODXIqL4caJIHI89E+on+M=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3005.namprd11.prod.outlook.com (2603:10b6:805:d3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.32; Wed, 24 Feb
 2021 00:53:57 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e%7]) with mapi id 15.20.3868.033; Wed, 24 Feb 2021
 00:53:57 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Kostyukovsky, Anna" <anna.kostyukovsky@intel.com>, "Neftin, Sasha"
 <sasha.neftin@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "dvorax.fuxbrumer@linux.intel.com"
 <dvorax.fuxbrumer@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove no need includes
 from igc_mac.h
Thread-Index: AQHXCd4tFu1Y1M06FkedrLGTQMHHT6pme1IA
Date: Wed, 24 Feb 2021 00:53:57 +0000
Message-ID: <8fd63311fdf508b9a7cdcd468a18cbdda6332682.camel@intel.com>
References: <20210223121923.1503421-1-sasha.neftin@intel.com>
In-Reply-To: <20210223121923.1503421-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c138dfd-1015-4b26-d6bc-08d8d85eaabe
x-ms-traffictypediagnostic: SN6PR11MB3005:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3005717FCBB2E8DE79B94E71C69F9@SN6PR11MB3005.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4KV7qyIAFyxY0ya65J8pQLKH3eTxhX9slR8FnQEYoFBC3fmrTL7U4ifwTIkX4TruEG1KmmdZo9uwgYkgcy7wSn2Ck9SnkcAC6XilGL6hkQrvB9En/CCTDGcArWgZYCTVhS+b9y08bW/8Nk2Oa/CDeuj4ZUnNpJ1tDD5u78I3m96Jl5rDEUR0xtpNsAYD1uBMKxDQus2M2wp5ZFVK53kw/Hn5OrrciWJmSLGzfvV85ogrXOFcODj7Dt9QP7S7imfR3YGklKEMtXYYNOg+jH9hwK2kg68Zc4KkjiW942XcLWryakTEMelBhXn7Q6JzsWROnesN3ivDngmOUhrQl6Ld6n7m1eF7f/AMCQcm83OIYZOXOfUrreLl1wcXGBJr19IFU5LdfeuX+hqklqVIEEeOyx6y5ajK71nucprBdCYWrfhC71wmPaaWNhIOq7xR+X35pOuZ3KiVDtKLEeK+vMLGVfIWZ1SAoK2Q5mlSJP/tXEzibTxdxnVp3rMEZfeG5GiuRle18mRqiFI5jaOjwLJtcneyTCjKChW/CKJx/Zj1P2sLkfIhx8d/tFkn48HPpzJ6bokyIGp+glSU/o/95P38R/rO2eqtUsVvJdBxsynNXw8fYzSZbtLWnUJmt4ngNW4RljClyc/rZQX9hupa3+A3ZA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(366004)(136003)(346002)(396003)(376002)(6486002)(71200400001)(5660300002)(64756008)(8676002)(2906002)(26005)(6512007)(6506007)(8936002)(478600001)(66446008)(4744005)(36756003)(186003)(2616005)(66946007)(66556008)(86362001)(91956017)(66476007)(76116006)(316002)(966005)(110136005)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?UnV0TG5HRkFZenZqbHduK2ZXSDVpWVFHN2V0UjFQcGc0azBCSy9XMnM5aXk2?=
 =?utf-8?B?TUV3dnhvTXpwWWxoSXl6bm5IMGd5U01jd3VYbDZ0Q0FzZmpaUmM3cXJEd1dy?=
 =?utf-8?B?aVkxa1cvM04yV2NnVnRpTEZtL1J6VVhJbktnUEdYRExZbUkvRnNOTGp2K3JN?=
 =?utf-8?B?blVGaSt2UmlDUjJtM0prcXh3SlIyM2YrZnlkVkJkVStTeTZvcTdDTDAzTE1u?=
 =?utf-8?B?QXFUalVHbG9TcHhjMmlCcjBCSWd5amtUa0F2SUtrVmJiMENHbW9EV0ZPNjkv?=
 =?utf-8?B?b09OSVJGTys1NUtZeXI2MHFFSTVaWXhXcWlvaUZtcFNEYmdaNmhGSGpGWGlv?=
 =?utf-8?B?NmVLUThLalRYLy90Wm1uWlZUcFlremkxKzFsNnZleTcxMEd6aXhEaGE4RlJ5?=
 =?utf-8?B?dUFQRVczb2MvV0NhTkZWdkNwZGZMYXlzVkxSd0FBSmN0dVlQVjBYOWNsNVFM?=
 =?utf-8?B?U016UW12cTcwb20yRE1TbzRteWV2TEwvNEFSU1N3dlNVTExyaFZUWlB2N2pR?=
 =?utf-8?B?MHJjeW93VmVaVHZaejZubDRHSjR1SmRlcitQdmhTSnhRODhaMk9DSWlMSTdO?=
 =?utf-8?B?bXNBdkVYT2Qvc1dXdVZmQWwvemRqWGVvSi9WajZFbG5PV1FpdXBvb3NVTGJl?=
 =?utf-8?B?Ny9QN3NMQTdobXlrMXZMWG1ScDlHYVNaRGVJcVdLVi9weUlOWGtZS1hlUGxL?=
 =?utf-8?B?eEx0ekVsSzl1K0t0WG5nc081QzBDai9JVERaNWNtaDEwdXpMcW50OXRrYU8z?=
 =?utf-8?B?M2JFWHBhVisvK1pRZTFweVlueFlhOHlVdTYyOUFnNGtrTWRJZmRsWVQ5aVlo?=
 =?utf-8?B?QU9EOHNKT3hNdy9EblVEYzRjSlI3ckFSa2FvYjUvZ1ZuWjVkcjJzOXZLTnJC?=
 =?utf-8?B?anpFRUIzSUZzUExpSU9FdlQzcmZDWU9iUVJtak91S0ZQU1pNUkdZaDV4ajg4?=
 =?utf-8?B?Ykc0TjAwV3ZvdmlFWnMrckNjeGhOREtVZEpyZ3Y1TStEbm9jKzBFWDBnaXU0?=
 =?utf-8?B?dVJyOGF5RTdncXNCcExPN0dZUi9oUmdxSDJJSVZGWGwrbWVIYlBLMUV6Mk1s?=
 =?utf-8?B?VHVMbEtJRE9CNy85RVhLU2hqMzY0czRTVG11V0NOMW9ieEh3VHNTWjlpc0ha?=
 =?utf-8?B?SzhyUmJVR055TkFNUnNwRlNHSDR4SmNpWE1LRjRWOFJrOTVyZlpjUmpKM1NV?=
 =?utf-8?B?VzdML2Q1a3RiTkV1K0MvYys2NWJMTk1jNnduRnB6UUNlbXdCSlBsL1IzcnJU?=
 =?utf-8?B?L01jT0RGTVU1NFY5c2ljRENHOHhUamJ0ZGVweEVzNmRmU1RVZmtjK2R4ZFNS?=
 =?utf-8?B?eHYycHloNUJsbm9qMGtVYVZ3Q2U2a0Nzc216aUtlT2lqR2RxbUI3U2ZsSmhs?=
 =?utf-8?B?VFZoSHJZMTF6T1RqQlVqVDdsbFBiR1FncnM0a0QyTnBZeVlXK09lR25PaXBp?=
 =?utf-8?B?NitiOXRlMnlKY3g4akdkYnBtNkY5VmMvL25XTEN1eUplb3VWcU03OTVQY3lo?=
 =?utf-8?B?SWM3dUs4UFl1T2RGUFU4OC9VaWxWQjgvS1EyK2ExOFhPQVVhemltUGx6eFEw?=
 =?utf-8?B?VlkybEJsZW1IVFVTK0hnVmlhWi85WktaVDZmckJkN1A2bEl5Y051YTRiQWEr?=
 =?utf-8?B?VmwvZmxtMU1PMXVmNzZaQVZqNUZsZlgwSE1JNERlZW4rOGYzUzlyVWlYKzZY?=
 =?utf-8?B?UGpvUHdlSzRvTFBXdUpuNm5EWlFIODhjenY4eVZ6bDRCdGtTTkVOV2JaaUN0?=
 =?utf-8?B?NEtpaXVwZ1ZZS0lGVzMxY2ZMRm9FTnN5TUNNUmRzK1Nna2pTK2NZaWpSNjR6?=
 =?utf-8?B?S2dPUFdUOCtlQVlrRnhwdz09?=
Content-ID: <A80B118C4EEBFD45878ADA8CA677139F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c138dfd-1015-4b26-d6bc-08d8d85eaabe
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2021 00:53:57.5594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +GfyrYWMN8UzG5EaICtJ+LeAiyZUSuleusJ0Ig2XlfSDVsF6I6rYkvQIn8yWLj/ChEtfOSyFKoHlq0qSJLvmMaDCPPXN1b7LmRSQvPSVcro=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3005
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove no need includes
 from igc_mac.h
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

On Tue, 2021-02-23 at 14:19 +0200, Sasha Neftin wrote:
> igc_defines.h and igc_phy.h included in igc_hw.h
> Therefore no need to include these headers in igc_mac.h
> where is include igc_hw.h

From the submit-checklist, we don't want to be relying on other files'
includes.

	If you use a facility then #include the file that
defines/declares
	that facility.  Don't depend on other header files pulling in
ones
	that you use.
	
https://www.kernel.org/doc/Documentation/process/submit-checklist.rst

Though we aren't perfect in this, we shouldn't be removing this as it's
desired.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
