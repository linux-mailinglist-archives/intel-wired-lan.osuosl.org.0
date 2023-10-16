Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 574E87CA1CC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 10:38:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD14C613B9;
	Mon, 16 Oct 2023 08:38:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD14C613B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697445504;
	bh=Bra7UIi3ArhkadNOkSJS5BqUmk3jlAgxAdA5hff/ISc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qnc/wnOZzkMDT5vReGoG9GbKq9Bh+ub+WAekL0j21NHt90Irrrnn0DbAoCenQx7YN
	 y0NfB/NzTsVKOVNrDULqXnBBTRk6tRH3jCQ3rCaF4xXp+PlJiKpSjdCmjWvRoTqXKZ
	 YUI+1mj3TS8NjsEgCyug4jGRetWORMnV+pInLVLXt0wC4uNIgz3ULYm4xviV6Pc+A7
	 698xCakqICgzDSS88G6QHxhq3HDEDqHO7VWzaTvxkn/Pz/grtG2VoD9lCzsCexEE/O
	 k48lOorZtkB4EX/JOrI03qmKLi53UxLitnINudR/boB+D9aI0D+Wm5Sc/dRXConFEX
	 a/7xD54FZ3Afw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7JgASeg_E4CN; Mon, 16 Oct 2023 08:38:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23D72613B4;
	Mon, 16 Oct 2023 08:38:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23D72613B4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F8FD1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 08:38:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 740EE81F32
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 08:38:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 740EE81F32
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kpt3SGlHmqjo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 08:38:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9672981E7F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 08:38:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9672981E7F
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="385319004"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="385319004"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 01:38:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="899413389"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="899413389"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2023 01:36:14 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 01:38:12 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 01:38:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 16 Oct 2023 01:37:58 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 16 Oct 2023 01:37:52 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 16 Oct 2023 01:37:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hkErPUEMryKPWv9keuKlYIuE/T89W14V34Sc1XeGakgEmu7pOQNaOvWha0YkAYMa9IeHUpaSmLV8UZzFepp1GusQdd7T/Ptt+AS+/phfaaBCfbHyYjwzXcAifiCFHmdtDIvC8jR6rUpsUgn6A0YywhkRxn8IcoNzsufx3xxLDQHJ6VUAAJlg0Mk72WgWVAZ+oNZlqysF2a34CxcJ1IWfII37lqcuI37Z5xejWFWna8ZwRVE1SecfY6arUU5oh2MGmRfS6B8UvvOSu8/RicDdHek6d7vXwxjNCXgu7aLLIz90gbFZQln7NeQGyROMmmJUoUplvyhO+sok8IvbH+n0Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CzUb5YYw/E2+2skN+tSEbLo5H8GYCDs1JjLLqXdYd4o=;
 b=T8bDm/eGkup2Yt79X2wU8Syjyif7OPMFGEs5KqIitFAi/dJ0sPNTXV/sJ1WRlPfU9kSv4H/xWcv/5X8chKJXi6+UkbJSEns3rXra4nCotghnl2v1ftTyC3NURRfiZBDlzggoul54qmwXhiJDsGpvr0abnCxL12xfty5q87TmlacA+pSFZ5WW3uqN8qMvDWztLI3UMHzFxsvKhA8ePO7phH57bm3j1J0PKP2RTeLQmfXFDnLDAQbpZcXHuZmrUVF7hiJzpfVJxD43DA5knJlc0VFeWpYKHOw0qCttV2njHeNu9cb1vFlW95xGbRRUUSVauXkCj3eLzu6XlF2nca0y5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SJ0PR11MB5582.namprd11.prod.outlook.com (2603:10b6:a03:3aa::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Mon, 16 Oct
 2023 08:37:50 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8%7]) with mapi id 15.20.6886.034; Mon, 16 Oct 2023
 08:37:50 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Justin Stitt <justinstitt@google.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH v1 net-next 7/7] igc: replace
 deprecated strncpy with strscpy
Thread-Index: AQHZ/T+jVnib2VOsXUmx3jIDO1iTELBMHQTQ
Date: Mon, 16 Oct 2023 08:37:49 +0000
Message-ID: <BL0PR11MB3122350138D0C03C3EA162C1BDD7A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
 <20231010-netdev-replace-strncpy-resend-as-series-v1-7-caf9f0f2f021@google.com>
In-Reply-To: <20231010-netdev-replace-strncpy-resend-as-series-v1-7-caf9f0f2f021@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SJ0PR11MB5582:EE_
x-ms-office365-filtering-correlation-id: cf6de5ae-b15c-4dd5-88fa-08dbce232dda
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S+agSbBTBFvuTiZUToFLL6CGJy+RBFBOc5DNLmCGbRKI1jKCgtlm+kmMkN8+Q39GImFuD91QHh9cZf9RD0N/+5a6YrQkQq8l5oD4nNUrdmnkEh+b0N5zHi7zXIP0CDROnjwhdpfy1w3hUXlMXLrfNLe0fHCkISZLMCOGXPjG9BmkS+HT3ZKeP/Wfeo0NN9ryPMbiTlClsF1QAY/9Y3AJh6rZmCjqDCYUXRkXHNtsdI2nKHdKsoUZnqE9vztcmop1q4C0h/ljUb3seRouEGfw6xKLMmQaXYfL64ty549Z0Y/sn4L5a7f4yVxODPWaAZbnKBgAlonCEcDKDEb2N4ZcvFXL3OiUyvWoHZvDd2Ff5iUhPD4D8DV8+Kl56Zo1e/pkd1WPdV+ejYTbHiDWPDdE5KxEkiP2QqmFmvbRxEJQQdna1zPTLCB6rQ9+pHvzClNUe5+CDJ7Ai2BfU1HSHCOjlr3lu0ulu/NQGWffjsZUXzmZoT1MsnnoAO2DE7svEwY1iWxmgHO2uaTWtRQqNCBzkNv72jr49AdQsMp4igh1elwKckh5BxMdt1ACAeS3BQtYIygnWp5b0rckH/ea+DP6MMrtrlpWPp6kY9D25QRxot2mq8oWM4sHImKJA2oru7b67bJqqlWBOYqGfDL8EgQxt6WHkIDn8AHGFphU6lVCHfQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(136003)(39860400002)(346002)(396003)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(966005)(478600001)(316002)(110136005)(66556008)(41300700001)(66446008)(64756008)(8676002)(8936002)(4326008)(76116006)(66946007)(66476007)(54906003)(5660300002)(71200400001)(52536014)(6506007)(7696005)(53546011)(55016003)(122000001)(38100700002)(38070700005)(82960400001)(86362001)(9686003)(26005)(83380400001)(2906002)(33656002)(156123004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AmxnJPUx9a9g1jRynpE581gVLSFPHD1MIpaLXFlh83JQhtPEzlSI0ZBDVg5Z?=
 =?us-ascii?Q?zxj94MV8r3Mu8tdKGeSkH+4TvRVEeFnl6w8C32Wqqcs2wNswXmetOFUBMwOa?=
 =?us-ascii?Q?8a/ytBsyBmqdKUCWePr7G6GwECimkHC/fgTanHPrV3r0GpRiCHS/vbe3p8yD?=
 =?us-ascii?Q?WZysa+cWXQBqfR2EZipvZSqlGc/ObbInSh7prYsBFgwizsu4DvkI87+WxfzG?=
 =?us-ascii?Q?769Lz9dlScMmjub0BBcYbdhCIMNdmICvLg3+sxxsp2YwksjR2DofyboxPRNK?=
 =?us-ascii?Q?Fzmx4yKo0cj8u//B20a1k7170npLeYVPvjctXLoRYGR9Aq5jAks/TBBqNbNb?=
 =?us-ascii?Q?ib3OX+BRFQRKwcJClsAzhrHdCwd+Xzp8rwgFov1/IqDz5ONoYwdP9sroVOSv?=
 =?us-ascii?Q?ygqR8ySLUlRlMKk8ABGngHay41vAbGl4sUjO07eVNcgWfajbnoHtG66e5trM?=
 =?us-ascii?Q?KOhMQHRZ7DbbfqE1ys+96YE8CHPweCNEsJSYIjIEkQSuP87agiw9cRXc9guV?=
 =?us-ascii?Q?gE0Doh/mGFEQtpxHymqoRlhB5oAM4EgugjfKZwYIlAgpgj6cE2OzMZrgE3CN?=
 =?us-ascii?Q?jKLUpemPHRwGqhATGE4w9zOqTQZiLgyewo+VbJu3z6rexwS0Ep2JA9QDedgX?=
 =?us-ascii?Q?P5Q65mbS+ixvKM5YUTMgTUW5vZZs3KuWmS4l1uARDm6YOGk0IiElihV/APc9?=
 =?us-ascii?Q?A0H19q57ucowQYWqGocMcG8UiLOp+1PO5Zdpw2LydXLEWY/PIpTkJlUAhEP+?=
 =?us-ascii?Q?RE/UHqRJBEDIVBxP6gbfFEAtIF78cb/VPjeP5rKYEnQE2ZDV+3puPOayLpP8?=
 =?us-ascii?Q?VjpPH+RuCU0DDSeHNJZeuABPy4zLfdg77qG5ykWpjpgKf1sqUtGNF3jXtnc0?=
 =?us-ascii?Q?RV61bk7mvVV+2j7tiKOUPd+nAkFX72Y1veISesWi5K/Py4W1w+amEIUuuH1g?=
 =?us-ascii?Q?LQ3WsHvTsK2TwZi9r9hC2OBMr6e5wO8qf1qFCxf86JCMCII+IDpX8qkA2f6v?=
 =?us-ascii?Q?S7S7cKe3z70mlUmiLk2hLawkgLK1rLSVgvmG6GuRZ1SfIF4XdxQeEU5RAVZz?=
 =?us-ascii?Q?PlpbPq8DGS6ljwiw4Dj4NwVU1YVQuCQP2E0D1H8XQbf5855f2nBZo527f3UZ?=
 =?us-ascii?Q?oqb+6v4yn+DDDVEbNYnbRuGnV33juipGfJIgf5ksIU3xhC7TRhJRi2o5X8Fh?=
 =?us-ascii?Q?mvTNnFYG593gpUrPJ/feTovmFlU9eZZrmSY3D7ctFqBRC/d//laj2TyJuBJT?=
 =?us-ascii?Q?ZM3t4pkVVBxp9rwmVXif7oFZZcX4wKzpycenTmIQ9+H70Epab7pB/Rt6nUS5?=
 =?us-ascii?Q?ctpo2WiLCV65b8nJ3OJy1+8uJj2tJj9OAiWh/aD5bjrLGHkKvRVCgEFaGBo/?=
 =?us-ascii?Q?DRMpLV9Sh00z0GYci+YZFJRXOSsbVOSg36rmex5OlwlcbXfdYymYqeNdJ53o?=
 =?us-ascii?Q?89Oc11ZyJ32TiGlH5QiZhsSz8gd34tKd8XyFbUKLPRP3iAQfMbvo18wo4Qfd?=
 =?us-ascii?Q?AgD5Th+07v6VN5cT4Ai+qDsxncNQavUnKAft7GwhV9LO9ElhZqo4XWkgJSkJ?=
 =?us-ascii?Q?iWL1hD7fytSOGCsMbAcGro6wi9fobB+/Ag/HV9HCvNtInXSnUfnwv5CfOw9A?=
 =?us-ascii?Q?Lw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf6de5ae-b15c-4dd5-88fa-08dbce232dda
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2023 08:37:49.1484 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6UjLviIXFVkxy+4LLHMcKU3wLeItfHZyozCEIY8JkHSF/bY5q/Pbue98QxK7ufkMmvUA79F5zD53miikjU3zeAY8+mno9UcJKkUGJyHQSrbxN6MF/6v4RbSFMHIxySPZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5582
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697445493; x=1728981493;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iI/5gN2QfySIC9Ze3pZMxK7qC3btkBN5kKcDinBV/tA=;
 b=L3Jb1pVVmQ0gKLHhG+Sbq9FNadL2hX8B03AGfpcDp9FJ7INHpVTYhBHt
 VbemFEztz0wZyL2Sc57CegKCAkzVp8p6+apZjZAUMXsiMloEKNJtyZysD
 6ArwHGlk/1LxLiFDypO5jg2BKPqmDhrdNfGGyF2SbRQDsWjMwpkYs1U8f
 oKm8snk/Miqfuec8BX2Y7wMvQoGDXxi0trro/54hf4zfMMGP7xXPqXWWm
 oLtUFXa3KFsYSDdVkf5IIAUYFvNleLY7iDe2CNIGyecvvuhAKUMmZ2kzU
 tXBvtC2Cr0ARtWZlrf1OJmNcA+A2V33fGWCF34lYC7PNs212NzVdge4vK
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L3Jb1pVV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 net-next 7/7] igc: replace
 deprecated strncpy with strscpy
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Justin Stitt
> Sent: Wednesday, October 11, 2023 3:57 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>
> Cc: netdev@vger.kernel.org; Justin Stitt <justinstitt@google.com>; intel-wired-lan@lists.osuosl.org; linux-hardening@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH v1 net-next 7/7] igc: replace deprecated strncpy with strscpy
>
> `strncpy` is deprecated for use on NUL-terminated destination strings
> [1] and as such we should prefer more robust and less ambiguous string
> interfaces.
>
> We expect netdev->name to be NUL-terminated based on its use with format
> strings:
> |       if (q_vector->rx.ring && q_vector->tx.ring)
> |               sprintf(q_vector->name, "%s-TxRx-%u", netdev->name,
>
> Furthermore, we do not need NUL-padding as netdev is already
> zero-allocated:
> |       netdev = alloc_etherdev_mq(sizeof(struct igc_adapter),
> |                                  IGC_MAX_TX_QUEUES);
> ...
> alloc_etherdev() -> alloc_etherdev_mq() -> alloc_etherdev_mqs() ->
> alloc_netdev_mqs() ...
> |       p = kvzalloc(alloc_size, GFP_KERNEL_ACCOUNT | __GFP_RETRY_MAYFAIL);
>
> Considering the above, a suitable replacement is `strscpy` [2] due to
> the fact that it guarantees NUL-termination on the destination buffer
> without unnecessarily NUL-padding.
>
> Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
> Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
> Link: https://github.com/KSPP/linux/issues/90
> Cc: linux-hardening@vger.kernel.org
> Signed-off-by: Justin Stitt <justinstitt@google.com>
>
> ---
> Note: build-tested only.
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
