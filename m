Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BE7595CD4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Aug 2022 15:07:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4573403C4;
	Tue, 16 Aug 2022 13:07:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4573403C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660655254;
	bh=2fv709A3p55nGUthtQCDLibzaqlSe6HRx23tgmcnldQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AxqQM26IFbucFE9OnmZZGijB7Cb1AmTHOqkAgWojVta2/eIEz0Oc/f8zcEiAiC97X
	 6KexradUEXyfoPHWwmj+mB7xN4Yuvxbfipni8ZSuZyJhAyvQDwdjPFxOIUe5dU4uWG
	 s1Nm02XH2r78WOIBERF6eAYZwKkYi8EPPC0SVKyiMSyJ+hwbc/39wA26VG6H5o49C9
	 EHG2AZAOD0I0Ng40L+XpUcm5fNkCw0EYnxy7ja4Xx8z7gg4TjyzpHtHMITlzfvFst6
	 efSFk5uj9uBjTfkTWYgYZfxOLSJjzqAExjhZyS6qO8K/n1nmT2hWztlFfvWNpYdR2w
	 dCz7/LiAfom8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YwsDGrhhJkSg; Tue, 16 Aug 2022 13:07:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D4B340AD9;
	Tue, 16 Aug 2022 13:07:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D4B340AD9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A50091BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 13:07:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7D4F1403CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 13:07:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D4F1403CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JTfeV6wL5VVy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Aug 2022 13:07:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74C93403C4
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 74C93403C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 13:07:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="293485758"
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="293485758"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 06:07:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="675206675"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 16 Aug 2022 06:07:21 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 06:07:21 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 06:07:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 06:07:20 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 06:07:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eTNyNczB9ciy7ESd9MyvMfQNjeKnPCW83T0t4ngmAPjRyQUCKk3uZEcB8GHKDcgW5tgqKPljRM2bYZaVir5tuBrnmEXFcdWTT4vmsHWaLOw7YuJ0Z9ojLuHh2dA6ID0qhAtnhYif/Cm6l9Ur/USLX4dCRdsBTF0WNAckMj7IcZU57Ix/wxNKo8e7xMS0rRefBjpgzA6CmNKp8qSAs73BvfNv7c25zVGvmNZDw9wXMXHIVWLlW5xIIz4VoHrDhqDoxaSKoqbU9EBUnm3Y9/t/Whsd8Um8DrZhQA7DqqQgaANJLgzt0M5GiERVsEToUHlCDHp5wUPNbAlvIWnhkisIkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EPuwZOwDVWTaIgIft9UMQBW753MV0r6//WjyzREOxQc=;
 b=fBnPfJyifXKo/xcJTwjLdOjjYE95s4STfH4MdPtReHeHnKpQ7D5B8rXHZ3SagCPltv8qGouWPCUB5f9Qd/2IculTjEoM1GJp/h+dT0K7qGESUVzWIveHz4azSGsDGw+NVKVkPmARJztELPfvGApXrEYQSnAQow4aab8w/7qJWW2IVn98oybL/xCjXvKo+17C28uNpko3JBVfBFbZjat1IcgyFHhgPkGBYZ37IBtRxTbreAw8ywBL+E0OKMp2bBVghlcEPtpOAQFeCn2/SltFQvYG6EmLRKXXhIsmkEe2ji/NQRJiKr7ZtrS5Q2w+32IPFhpaRC5nMJnIzo3U7dFoYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MN0PR11MB6136.namprd11.prod.outlook.com (2603:10b6:208:3c8::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.28; Tue, 16 Aug
 2022 13:07:18 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 13:07:18 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v5 3/4] ice: Fix clearing of
 promisc mode with bridge over bond
Thread-Index: AQHYrk8p1TYHF9QLKkafqQ+SI+biua2xhXvw
Date: Tue, 16 Aug 2022 13:07:18 +0000
Message-ID: <BYAPR11MB3367B8D1E6513B789FF64027FC6B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <1660310750-290943-1-git-send-email-grzegorz.siwik@intel.com>
 <1660310750-290943-4-git-send-email-grzegorz.siwik@intel.com>
In-Reply-To: <1660310750-290943-4-git-send-email-grzegorz.siwik@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 308fd671-5485-403f-0165-08da7f883fa7
x-ms-traffictypediagnostic: MN0PR11MB6136:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7j0hw92KZnizC5vc7hktjZRVjbQdEWoqDvWCW0Ew6OSbA+S5ul7FwLi5sldvibTxwVZsAanJkBKPdBuHdc8Gp8PvMu3y6cRae8cORZCSparxDY1bAYtKAMzU2MvG6k65B7Tr+XvW2H5ymDMyAwH2Ut8Mkt4IeiicOvcmOUnWJJcB4k2f0fbwUPbmcG7HiPibYGQ9zgsNsseOl6XcGx+VMVxdErHeCGpmC7U0chvYzqySun7TDpSMm6psENA7VyZeqhGh0a2wDasuy8shpCKyjvOUiWDf0Ff2L3PzssfbJpF19vOZSS2x2LcEeLNldK3SXePjKQ+ICFscCvYOoaXNzSZJultxPLiBtAVtwhF5CBc/s81lKt+04l7CEAs8edk4J3Y3XFr+beMk+l+GacM+4Yv7XhCym/9kpLoEhrvaQSXkxVdkHq9Rvn7YsD5R51PlsmlN7TwldDiahT4h2oSq0UqQjNsPyZeG5uo136qItJ1JQ0Shx6O+X43879scUo90kU/ASt7wfBvbXnWx0esSOOHOETEbnpD/uBPVz0TfLb0VVSRffXk+xgCV/QPAPcbx6rnOPcRuo2Qm+SidKIdcOYi3osvo13lT6mq8lF+3rNrKQ+wqSiM26jZcxKtFR5YNGzoXWljpc3tGsY7FMNzK0/pPV5wCdw/6WkWo5DW4O9ZrxJuDdh7mS6QZCYYnDiCR0l6oMjoCVshaXyw9RSPvPHb5bxT4d+i9Do7QRNMeVtZ124jTjb0SbjIq7myXQmD7YpVojJQBa4hyuE6yVTWeZwAiWwAsO3s/gy/Jt8cgcl/bVOm3VnuXUrm1bSZJt06rk9eaUk78YoLAxSDL6RpwPw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(396003)(136003)(376002)(39860400002)(186003)(8676002)(55016003)(66446008)(41300700001)(66476007)(76116006)(66946007)(83380400001)(66556008)(64756008)(4326008)(2906002)(54906003)(316002)(107886003)(110136005)(122000001)(38100700002)(82960400001)(9686003)(26005)(86362001)(5660300002)(8936002)(6506007)(478600001)(33656002)(38070700005)(71200400001)(7696005)(53546011)(55236004)(966005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pPm+fIyQdETU0Yj+MYQyijLt23WlJtAUu1lrSRuJXi4c8TroLKDoiVidH5c2?=
 =?us-ascii?Q?7ug/2da4s1Dui9fRS/s8d7jXAlVXh90Q4a7hthAOiyLGYsv2Mo5kpqJ46W28?=
 =?us-ascii?Q?6hBYnUYjbf3YqjD7y4eu5aXlZirAS+oykAQqFvQtt5fGETKzzKX3q3IrcDHY?=
 =?us-ascii?Q?3gb5+ZZLKu37okyG3WK0mbqi3t8l1rQZ7h0nDJ8h7S8jlBbreK38Mxaz19CZ?=
 =?us-ascii?Q?YLbSUTCIuLiYVHpTi89qwolcHwCzcSyqQJTg24L56OSKQZel/z9EHAkphMDU?=
 =?us-ascii?Q?mpHq8GFzfJxnq2UuWmgqAI2RUdB+cT9io9W+yvwBc7xDhQSfAERpcFdXgYyE?=
 =?us-ascii?Q?r+DhJA7ZHMSy8YbJEecSbK5RGCxWySyzPCttfKRUgm7ruWeuKZIMrymX93Y/?=
 =?us-ascii?Q?AVMUSCPX/6f0xMhQlQ57OOYCvJnAyw+ENY8kGi1WPSEjkhkzQ1WrM8muAwPl?=
 =?us-ascii?Q?+iJ94uD6qpVSBfFd3QYgaKaQoJZimAreBkbR2zaGdwKy74zityd7kJq3AFNh?=
 =?us-ascii?Q?wKQEyHGE7jwWIJciJVyaO/vFM43e2ZtqabrhXrhjsh0KY3zMaAhYf7XHkFZt?=
 =?us-ascii?Q?CI4021U/JMK65mVY5L6NLVQw07oTwfj7PBnr+et2pavxfMvf3CEtNbs0X8cr?=
 =?us-ascii?Q?X+f6dLgxUImqFvi/GGUcEw3q8vKmCNxE7dNlJ3VhxMNPNwTqXLNQlFlxWZFw?=
 =?us-ascii?Q?IQ6Knq0mczxliA+l7lPKdGQQTPJfRLJ5LHNSX+sUA7/URfKQ8EvQVdms8Afy?=
 =?us-ascii?Q?9ObTCZcr1qOlzBDDgampgcddab5mZb8zOYuIm1bozGhL3UZGeLXFh78jjx5o?=
 =?us-ascii?Q?L9IWgAj9YcBMSYCfUzbbhPxSafknYBqru/1wWL8YdXf6u8no4rN01CtOubeE?=
 =?us-ascii?Q?XBvypMeSuAKiMxv297flutCzpWyY8frpI/9aIQRQqyjVzXHz1AUbZ4tOfgM6?=
 =?us-ascii?Q?LAbUq030o8YQqeeY5N7bKSl6AmAEIPGjHfBsRtqjhkeCCTfZAZsf1gFGy1F1?=
 =?us-ascii?Q?aDDP25ADjYJoM64PMCSeQo/66js7Zz6CrSedtOcty/gQKvRoI+lrD7tj5Bj1?=
 =?us-ascii?Q?nc/9UyQ93HwDX6foz6TnDPZCAymDYXA/Ek2NpFie1rFY71sb4avBzP8MznEm?=
 =?us-ascii?Q?bnniy7eiG0ypGzah6E01CRBOvAjtLUUQIXgSxh8jLRW8VogC0sl7+xLX+p4d?=
 =?us-ascii?Q?2rTwViPWDA6UEKDWsNWROKCxl+gdmk6V/OzP0LnDG7vracTTAH7XR8YCTVvO?=
 =?us-ascii?Q?fHjEcNYNl2ic1+MyRir9cJ3h4NGNuYWATgY9eOtxfOuNYlaF7grYP6yx8Kw5?=
 =?us-ascii?Q?kkgMTm/DU16zxJ4yOVFvI4q2lmXyUImMBso6ceuR8Md0glOciMpFwAiQZpJM?=
 =?us-ascii?Q?sF2DMTngRZu3f0gXRy7fRA8D5Pfd3ekF2aArSilPJaBEoXlds+os/u7HCisw?=
 =?us-ascii?Q?nnW2/ceCpgHEFQ3bKCRJR0OTU9QrtglWnbF9lC3l+c5XvP2uK+MfCw4HCOTQ?=
 =?us-ascii?Q?hlWdn/p2assZYqia9kyv+L/A92RDm2vnzICPfG8BlCpCTPe3WaLRYe8I1oHt?=
 =?us-ascii?Q?VX7MbyCkl1gy6F/45PjL3RUYhbCY75MhejCfZGJi?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 308fd671-5485-403f-0165-08da7f883fa7
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 13:07:18.6067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eN66CEcATRkPMVcv0mexQsYRbPUIvlEpvQRICJHd4SLqIhhQbilEC8I/k0zlDM27LRNKBrZmmTQkxsCKwYIT8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6136
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660655242; x=1692191242;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2ira1BYFeJOLRfZWOh8nchRK5Tj5zDIY60dSRkEpgMY=;
 b=G6uMmQTtunTlWS54j5CtBe/+4mXHEsTXUFe/i8fh7huwru0ntw/vcUK2
 bDNplU1Y8IbBY95oAjB6eCQzZezSZ8KbR3ihkG5NHtwjzPxPsr9kkQOxs
 pl84NdOj1kskku0JIHyAAmjkKDmg1vH2usec9yK4LprUXUa7KYSybZF2R
 OHfacPPvxVXLvAdyoFADvKKHH9QgG35yYvvDR52JYFHbht7SJ+0j0TDwQ
 tZHMEJcTLCHQDukXe8F41DWhjaT/mGvFxAdHxSbSuY1nktR+tLdBYfNQX
 ekjSW4W76WFOkESN9QlhK4H3r/gxxAUCVHpGPhQQ57mw9xXdLDiS1IQYx
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G6uMmQTt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5 3/4] ice: Fix clearing of
 promisc mode with bridge over bond
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
Cc: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Siwik,
 Grzegorz" <grzegorz.siwik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Grzegorz Siwik
> Sent: Friday, August 12, 2022 6:56 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Siwik, Grzegorz
> <grzegorz.siwik@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v5 3/4] ice: Fix clearing of promisc
> mode with bridge over bond
> 
> When at least two interfaces are bonded and a bridge is enabled on the
> bond, an error can occur when the bridge is removed and re-added. The
> reason for the error is because promiscuous mode was not fully cleared from
> the VLAN VSI in the hardware. With this change, promiscuous mode is
> properly removed when the bridge disconnects from bonding.
> 
> [ 1033.676359] bond1: link status definitely down for interface enp95s0f0,
> disabling it [ 1033.676366] bond1: making interface enp175s0f0 the new
> active one [ 1033.676369] device enp95s0f0 left promiscuous mode [
> 1033.676522] device enp175s0f0 entered promiscuous mode [ 1033.676901]
> ice 0000:af:00.0 enp175s0f0: Error setting Multicast promiscuous mode on VSI
> 6 [ 1041.795662] ice 0000:af:00.0 enp175s0f0: Error setting Multicast
> promiscuous mode on VSI 6 [ 1041.944826] bond1: link status definitely down
> for interface enp175s0f0, disabling it [ 1041.944874] device enp175s0f0 left
> promiscuous mode [ 1041.944918] bond1: now running without any active
> interface!
> 
> Fixes: c31af68a1b94 ("ice: Add outer_vlan_ops and VSI specific VLAN ops
> implementations")
> Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
> Co-developed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Link: https://lore.kernel.org/all/CAK8fFZ7m-
> KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
> ---
>  v2: Fixed error message when setting same promiscuous mode
> ---
>  v3: Fixed style issues, changed to return directly.
> ---
>  v4: Fixed problem with patch applying
> ---
>  v5: Fixed incorrect title patch issue
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  |  6 +++++-
> drivers/net/ethernet/intel/ice/ice_main.c | 13 ++++++++++++-
>  2 files changed, 17 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
