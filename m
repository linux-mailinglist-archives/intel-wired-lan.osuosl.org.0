Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FCA337E2D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 20:27:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9D194ECEE;
	Thu, 11 Mar 2021 19:27:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GLVqg_1r3IVw; Thu, 11 Mar 2021 19:27:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80AB04ECED;
	Thu, 11 Mar 2021 19:27:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB68A1BF303
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 19:27:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D6467843F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 19:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ic5ONeaPX2o4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 19:27:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 69220843F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 19:27:36 +0000 (UTC)
IronPort-SDR: S9i8n8tB5B//nQzANK+gOcDgDpsGKsPi4NhslmGI7c8suLBNrlPD86dOABMafsTuzoiIjdDSTO
 8Lk9wo8jcyYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="188820847"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="188820847"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 11:27:35 -0800
IronPort-SDR: lzk6pBh4SzjxljcwL+Pzs2SbqvYRxOukwiefdMbewY7jkYygyyVBx2jlySHcD3h4kJ7pFLliWU
 C6EwIvR3e+kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="603655728"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 11 Mar 2021 11:27:35 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Mar 2021 11:27:34 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 11 Mar 2021 11:27:34 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 11 Mar 2021 11:27:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mtLQtkBJgdr36XMTrOJVnc+TVI0MgWtQc3FZIMjitKElVBnCbaBLR1eVFo+i9m8jjj7rB3SPOkZv4DWlV3Sb+henRspQisHELw/g5QoGVlKF4FubA9WVchbyhEqq+ZZQXqpBIpJf2V5PB7whbt2cB30Y17a7g3wNDEAAIRpdv+n8m60fOqPi6jjw1Fqwo56Ik1HX9DsFWrAR+avyIsMvFpO01VtYubf53LNKpPJq+G65/gyUU0i9mD43+16U5fEN3j9LYZAWNFghgn9yCbIaqY9dVflRKQxKgPIOvm4bSDv9UIUEGeXnpEMo8ZMe4sz5oSr4P/bM/My8NPziYwWn6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jFlZDsenQ6Mu/IkEdPhuLVAPe0znY0si8UBJY3Kf3a8=;
 b=lZGED4oCa+m9bcEoC1/V4/pufHFMxn0gTPurlCDtK5KIX6zqpaZpWLld8Xjbm8P72lFUxPCfBsm52Jj0/3OcX4R5pZimf/2b89sOrpXtyTpgKd+WdCNMnJhzIZhMEEn+urtVfUXZo9VEao4MFObeIsRHHeDVcqrptV4bwrFPU4LwbpjED1eHpDh34oTCID91377fIhvVZJzzPmeL1/tQ/4vufGHEfSvwTZEOf/j1Tn5MngpbId02BOFgtW3wsEj+6Cd+DNpNdN0/hCPJM+qHfPYEEy5RTzNBrKYCrnrqloQcSaQ1Z52EqdkzWqpWm3GDw4GaUYrfp7NmiljsGCCY9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jFlZDsenQ6Mu/IkEdPhuLVAPe0znY0si8UBJY3Kf3a8=;
 b=f3U4E0RBqmObpUTMjOugvUEU+jB/Zr/mMnYNgOWmmC9vsEMoD0fDcFe9s03RBRfQuwQvPhknYLoYefXVA3t3UR8sYBXRh7ogYb12sBGCz+u8aDfMkAGyF5oJfVlQKumOr7Coa7C6adzA9aikwvkNcOLvx1HB7O1H8Cuv3OWE4q8=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2928.namprd11.prod.outlook.com (2603:10b6:805:d8::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Thu, 11 Mar
 2021 19:27:31 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e%6]) with mapi id 15.20.3890.039; Thu, 11 Mar 2021
 19:27:31 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix autoneg disabling for
 non-10GBaseT links
Thread-Index: AQHXFZ5pI3YT7xVxp0GNbXi1NCp0LKp/LemA
Date: Thu, 11 Mar 2021 19:27:30 +0000
Message-ID: <678fa0dee1a3fb7d276905165ac186212571ef37.camel@intel.com>
References: <20210310111254.7610-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210310111254.7610-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 109d10cc-d8a1-4a89-2047-08d8e4c3b724
x-ms-traffictypediagnostic: SN6PR11MB2928:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2928B996D7A58878028ACB53C6909@SN6PR11MB2928.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5czGZQbM86NDyi3KiBHLGYFsDRpM0hzEpJnFBR7oo5MgUZF8OXaE/5iQbtft583II+Q8A5qSOYpSz3Pa2yeqPFSkVb3LTYqJzLsM17lFFWK2yuIA+U5oR1u+2uLQ6jYb5Alw1XlLiRImlEd8GO4XqieK3MLkyZaWvD5ZbfcE8+Ka3B5rB5Gk/2QlqmpMLx5wm0+0FVjZuNLpLwfGJk8OfUb64fKji0WKHp/xCJjkXmgCUq+XDS9KBZFKs6h9ANDAtrl6Pwzt73nmvkIUrP2L5SPjndzHEBeeaNl05wcIy5J8Uek8eM9R/o1j+bUPoV5ggSVluPxqB5ws5uEEuF4m/ykeLn9onVtIbUAEMipE9O8fbf0RzBF9dvV8co/HTx3UZw26f9oKBhuVAfc8dQXsvgLMlTOipLm+ADrm3qWRz9OgzLI58hrkUgpr8qLw76mUjfsPe22AxWb67mlnmVeiNjZmZS5nT9WOf2RE56E4XPTx2v7J18JaVtCEMsgVDMTw3XRJesYL1fbZkGMixABzfR9G5k/y/mV8fQRQzWTJOajaQ0wobzUiBdd5I2C1Zz+0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(366004)(136003)(376002)(396003)(346002)(71200400001)(6636002)(6486002)(2616005)(8676002)(4744005)(86362001)(110136005)(5660300002)(91956017)(66476007)(186003)(478600001)(6506007)(26005)(36756003)(2906002)(6512007)(66946007)(66556008)(316002)(66446008)(76116006)(107886003)(83380400001)(8936002)(64756008)(4326008)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?YzdUMnphR1hyY0toRkNicndZcVdDTTVoRFdySFZkYjI0aXdYcjZxVGdVbTQ1?=
 =?utf-8?B?Vzl2eTlJYlJwYy9QcHRPV09oY1dLR0hqUVBxSE8rblRieGtwd1FWN1NhRDBJ?=
 =?utf-8?B?ZXBKZVNOWmlNSk0vQzA0TjRNaSt6RVVZaEplTWhjdXZCL01uTWpjcWdkVzJI?=
 =?utf-8?B?djVMaTd0WTVJWWc4b1p3cHpQQkVoTXBDVkdYVXJZeVhGQmZjWUw4c05UWVZV?=
 =?utf-8?B?QW1oNHliVUJxbEdOYTNWdWVwL0xNTEU2TjEvanFQYlMxQ3BNMG96Q3RlVkJw?=
 =?utf-8?B?UHBscURGYzdpUVA2Nk5iZEtYblpHZjM1cUx5YmNVK0ZBbGJ5QUx3dXlJQURX?=
 =?utf-8?B?dGVQdUJDRk0zZWpBVk5pV0tKcXhOeVkrYW5QbG92aEZEOXJ2Wnl5K24zUEsz?=
 =?utf-8?B?a0V3bncwZkMxVzY2TEptdytBVy9Jdk4wcDdqcnJIOCtSZ2czc1VUZ1VDM3Fl?=
 =?utf-8?B?ZnFXaWQ3VjAzaXBGQWlmYmxLVWNCWFN2cVg0dWM0T2J3WU1VMzlpZjBRckhw?=
 =?utf-8?B?QVpJTHBJaXR1dzR2a1lweGI4bXJKc2ZFUFBkNW5BWW0yRnJWSTVrNkkrOTVj?=
 =?utf-8?B?RXVZM1FIa1BpUmxYRUdWU1JnbklUQTh0SWE0TGduTVhKOHJ3WXRFcjN4dk9a?=
 =?utf-8?B?dTVHNnlrQzZvRkpYQ2Y1K0lSTlI0czRtQW9SK3FRbGFYaElLT1ZGVER1WnNU?=
 =?utf-8?B?L2RsNGppUWNxd3F4YzNJRVFLK2ZHd0lBUnJod01xNDJvNzhXZDBTMEpaWjRs?=
 =?utf-8?B?dlYzK2dHanVqQ2FacW9WcjV4UFpMUDZKVnZSZCtUMUlkckdYeEtYYjJwaVNH?=
 =?utf-8?B?RDYvUmU5YTFyMHdwaXZBNnN0dU5JRDE1MUJLNnhsdmtpSU5tQWRxMHN3a3FL?=
 =?utf-8?B?amtSM0hZTmdOOCs0YTNycG5aRmpodkY3TzV4V0NVaVBsVFNGUU1HMGpvOVBk?=
 =?utf-8?B?dGVQSmlsRjFnSW1PYS9XNEIvTEZwTHNEaGdNVDR3a3dDanNZSnVsVWplU2RN?=
 =?utf-8?B?WFlCcTlPc1FqNnV0eUFZa3d6Q1IxSlk0S0sya25YWFN1M0xvMHBPSnZEdnh2?=
 =?utf-8?B?RWZkZjZwRUhwR2Fmdk9IeDdXNG5sSlpNcWROeUtYcXJiKzFjOTB4OGsvVm5k?=
 =?utf-8?B?eTllL3JDY3lvcE10VFpFR2N2K01vK1RXeDNyWnAzRkMySURsTG1VdmlkVmdj?=
 =?utf-8?B?RVZybDlScVZua2hveStldTRYSERBb1VJTVQ0Um0xN05xa3ZpSnlmMmdKbkg5?=
 =?utf-8?B?VzNHclA1YzN5RWgxM1I1bElFdUQ4aVNCVStDQWl1NXRDUFYvT2ZRSkJyd3F5?=
 =?utf-8?B?QzVwL2E0emh5dmllVWExcElwYzJTMDRLb0U5RGk2UGxVVXc5MlBCT01HOWVN?=
 =?utf-8?B?Tmc2TUIxRTdlMWtJZ242Zml5LzBpaVEwS2JDSHdKVm4vMjhWb1RLSmFkTm55?=
 =?utf-8?B?bFdjZzNPY3Axc1A2TmpOcmJYVWsxWEZORnJUVlJVNXN1c2VBTGFkSlRzUk1H?=
 =?utf-8?B?RmVDbGFNNWorQlpkWGxMMVladEE1UmhXS2QraVRUQUdZelNBczdUbVVqbDJn?=
 =?utf-8?B?LytrclloMUZkeG5ZQkhkOGZnMHM3Q0t5MXRkVWcvdzFYT2tjTXRnaitGY2FU?=
 =?utf-8?B?SXYwdHpTWHlNbGQ3cmR5S0YweGxXbStXVkM1L3h6TmxpV0F4UmFPTHZCdmI3?=
 =?utf-8?B?WFpRSVdtbzh1MTBBNzUxVW5DMXlVam5SbldCeUlheUkrOSsvQURsaWpIL2dW?=
 =?utf-8?Q?TLMu9AOOi9S0PuXY9kQ3VMbLETl0DtI2GsnoFuK?=
Content-ID: <45EC99F926881642B9B575FA002E53AC@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 109d10cc-d8a1-4a89-2047-08d8e4c3b724
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2021 19:27:31.4359 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1jycEC2h9B3dFS5lEhPxxg9z0jUj2oWVIKcfNLbXXjJaJG5m/Rc4Zd6b6ojBENOnEdk84ydoLDoy+AAS2vNT9Gf/R99L/w28L4rYrkpefGU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2928
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix autoneg disabling
 for non-10GBaseT links
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
Cc: "Lukwinski, Dawid" <dawid.lukwinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2021-03-10 at 11:12 +0000, Mateusz Palczewski wrote:
> Disabling autonegotiation was allowed only for 10GBaseT PHY.
> The condition was changed to check if link media type is BaseT.
> 
> Fixes: 3ce12ee9d8f9("i40e: Fix order of checks when
> enabling/disabling autoneg in ethtool")

This is missing a space after the hash

> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Karen Sornek <karen.sornek@intel.com>
> Signed-off-by: Dawid Lukwinski <dawid.lukwinski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
