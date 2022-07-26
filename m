Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6065817DB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jul 2022 18:49:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9ADF983126;
	Tue, 26 Jul 2022 16:49:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9ADF983126
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658854155;
	bh=TEhQadv3sPrNBlH7dQ2q/p6cqqPhETn6AtV8gskhHxk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hob0Pfus5Kd6vrYi/y+yID/ESBn8Nb6aSbRt8kz5+cp/nzdXTjIEXCXwWG/LuPS6O
	 KQK6Yl+vhhgiFgM/J1njTCrKolsdfmZnwfMmRpoi8N0me914zMszGMW2m9YSuf8Rfj
	 /VAXoKMnVDOWyXWqVNjh2QTLqzdJ5fvm4WPErSHO2eaacHcYV6EjEK/f+Xez34dtX3
	 NVYZO9WvKm8zkGdYhEkfy4ycwvGGGCzz0ljRyOXw4iQCf3E/GUGFpICPvoI4iCyVLK
	 VWJ7MFf9a7Zf7I7xBusd+YA6TKqbCTwyKW+qUU8powYmogClYo6qdvES2TAD/KAp4d
	 V/AzbYJvI7l7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id alLDGOGkni4Q; Tue, 26 Jul 2022 16:49:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AB4D83224;
	Tue, 26 Jul 2022 16:49:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AB4D83224
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F05401BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 16:49:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C823A60E8A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 16:49:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C823A60E8A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g9NxpfaGJkyK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 16:49:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00BFE610FD
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00BFE610FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 16:49:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="286759685"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="286759685"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 09:49:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="658767254"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 26 Jul 2022 09:48:57 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 09:48:56 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 09:48:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 09:48:56 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 09:48:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FlmWgzZseUuZkFX9ZAZ879ffpPtvAYsPSnT1G/wT71IDOtN8UYRjWgnDnPWsb2NK99dLPb6+SGgdQYMQ3NkmNoFa1sFkPIt/ABIOApuGgCCyB9RFLF/b1g7UzG2PS9AGhus9WSYyDASXU6XzwdzhXHM8m3nzvgEWZTYLg4xhB2nxgIVA1f/f72cOzsN05RCISXIF/WSO4m5w8wwh1AC7KqD4nORYKFAMXWiKD5N859hxjjCcRQmUNfx7TAzxucDpmqwFpj9cC+56Lzx57U9DKFgXzC3LLSj/lykmyVQQ1Z6qbiApsvSieTESswi6uVnO6pIsB8aiKu4GLadfwzCoBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KvxLQtFvUawRMEvJma2OpH3GXkVUT+YdVXpGy4lT7TY=;
 b=KWN7vp/XPNktMpeZnAZXR6QPrGZktKJCStqc+IpHhDKv5ROY7ZrFKRDt+GycBQ0v07VANOw+ynylaefDF9HW9MXjR+7pgUhafLbXG4Rt6jnIM7TMpB1sGsd8/KlX+Onpq0MLNO1JqoNbaOS8gy5X3MT1U44ZFkeB5ZxMr2U9qx5TBSqeOkpW5RyEIDTXvZtkD3yHM5m8VrccOUNeox254hj2liswGDmFDRCXpsy5muEhmSAtlaIB3hbxjNAeaWIvvpKBC3FqcjhoyRBWvUHYvBTYsjsF/1ZjPkci8P6p7bNCgOC7QTt202+zekZq97wDUpI1wgo88OmAncDTPj01Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by MWHPR1101MB2271.namprd11.prod.outlook.com (2603:10b6:301:52::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Tue, 26 Jul
 2022 16:48:53 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6%12]) with mapi id 15.20.5458.024; Tue, 26 Jul
 2022 16:48:52 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 1/3] iavf: Fix adminq error
 handling
Thread-Index: AQHYm1CvNxuswgZ8kUOkSS/fynZtW62Q4P4w
Date: Tue, 26 Jul 2022 16:48:52 +0000
Message-ID: <CY4PR11MB16242DA0C994B6DBEDAC512BE6949@CY4PR11MB1624.namprd11.prod.outlook.com>
References: <20220719091654.329774-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20220719091654.329774-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e7688009-6b1a-4bf8-0e70-08da6f26b8d5
x-ms-traffictypediagnostic: MWHPR1101MB2271:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kKHfhpzs2aPkPZobQIRJUnShobNIumt/7Dr7gtOJUWHWNueyrW5stJOIN1VAOSQmcqAxE2+yKFs5/DGrY6gBrrjDxl1hhCIXrrmpG3nU/cCuSU7RS3PD1jAKAs+PXTrGjlIEb58sEPRSdFjjdJ2fzX08DtpB+xgBbmZgjgs8CJQ/ie+Y3ai2p7a5mhr4FeOMO38WGqdF8qmDztE6T71p4rgNK40VbJyohGFtRRHbqwlnDJKLsqDMVq+VOfnoLhHlnzky2pNZUeDQFVcnGwik4Iff9Okhi2/VIhlkWXch3UbpUp2oZ3RLFwcbkibFotq2RYrb8DyF/+tac/g/7F+qk2AY85OHt7dUH/ZrvfVFxHb8c6sqM2fJ1tvL3hYk3twAj22dfPQ88+xrsyG+hcRn0IMo4KhfqXAot1pbq1Ul+bLo2GwuVMraWyrRD3y5VG1U73NeoImHR/2rRmXSXW+dn3ckc4/2VaqKslDc5iMiL58W2z6YW42+FmzORrU1gFZ+LED7rnoJ0gI6zgUkuCJiKTVQRXrSJKvMiVz3M5OCV0WNFwzqPinZ1yZ2t7ezBcgkOwtJVqALzaiBYk/cmtkwjR6a8/Qx4kS9KQJrLwBq4BRVD81tN8t7zKi1al0EXIIzv/cJ+aBNbSko8JZf6xj7NbHmibRI5bRWqIFxviSLHjp5u53qLpxDa8D7gpcjs2pXMLswMT6/Gs1iqFx/DPuALHSL2Zh27zQiUKSB4ssX7rAcV6G4+VaJOmQPc4xJJoRe7j9th7/gBU19a5zzc2CCOojUouyz5IDoY4TtH1o2/ue61ipFabNzEW4UrSq7gocc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(136003)(366004)(39860400002)(396003)(107886003)(55016003)(6506007)(122000001)(41300700001)(38100700002)(316002)(54906003)(186003)(38070700005)(110136005)(82960400001)(83380400001)(86362001)(2906002)(7696005)(4326008)(8676002)(66556008)(53546011)(66446008)(64756008)(76116006)(66476007)(66946007)(71200400001)(52536014)(5660300002)(8936002)(478600001)(33656002)(26005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VG928Fk7PvKhOw9E8GytzJvwXzPY8yUc8WGppYqCXya1kvNyL0nav9GYD9c3?=
 =?us-ascii?Q?hnCTY/XnkjHb2Qca8yXusiTP78k+hRut/8fcwBGBGllUcYVbTsnDtMyASlN2?=
 =?us-ascii?Q?dDi0kYhc/YmHybf2id7WMgsPgOOKcoZU/HD0TmBFA/lVR/TuhYb24hWBivFg?=
 =?us-ascii?Q?Hl4NA+sTvC3DSyp5mkCqavkFLV/e7KVKrNuxo0wKu/KX9TYAdwlGPwbHjY6v?=
 =?us-ascii?Q?YMNvgE1dsothkiO9tlK9hh9X2kSxkPtmT+2TIhX3GT6/rzuWhemjjpwWwsBB?=
 =?us-ascii?Q?4Ca11OsSAvSj3f6HPkTgd3LEJcl6R7pX8lClTEsOgM8/gP133y8Ngffq4twp?=
 =?us-ascii?Q?xrtcxXEOYJhUeayS2lzynKCT0FVeUSxIoeUZFFaVmm+S5FDvpIZcKdBa0Szb?=
 =?us-ascii?Q?fqFbyCF0F8fZJpcEqp1qZMTNc9AVIMek+Zp/uG9hzJeJ7KdHzcd9l9YxEjLk?=
 =?us-ascii?Q?JfV+09jWaj18fFgnnD8S0Mz8Xpj0UMebgHbOBJ2BH90UhwBh+2bQcyTiLK+c?=
 =?us-ascii?Q?VXP8N89Huv7lAP7ndvUJMQpAq5DBAy4iZXMGabfhYo2RxHOaBCeSzlVAcOeB?=
 =?us-ascii?Q?XAy5QHHx6W1srGf17ao+feASa0Qgq/DhF9En6S75sd4kv4aG53I182rQ+jCh?=
 =?us-ascii?Q?2tPbyiFTsaVzE7ecpm0lEBOCDuVJzdkaAoaDRaY7vyj2JE0dAB/o48sB0RCk?=
 =?us-ascii?Q?0aPx/+pmqAOOAUGpPYM6udgI4XzjWvJV8d72Xy8B2xIi0p8NIBBY7iruTtud?=
 =?us-ascii?Q?3tIYv7j4mDd8W+MW5ba/eFKukZJp7Vh64yP3g9655AmHGH9mPq9by0wAWc/4?=
 =?us-ascii?Q?9VXex4qdc9DdTJJUz7tAM+Wd5LzQc0QLp42l4X+Z9EcryYYIQI/ItwEp2wzN?=
 =?us-ascii?Q?F4BdH3TS7//3Ju1Vry4aewwR26QViyA6UgTzjoFhQmMjA9CZy6gAhPZ0HUjv?=
 =?us-ascii?Q?C+K3nPZCLLuoc+RI3Gz7Z9zsajJIdM44lkZo2+WExQ65RMm2sI587PmRU4NG?=
 =?us-ascii?Q?fwmhHACFW/vAeFkohcjqdhGYvNQnSGniYo9JQ2UBwa2JpwS2SuCUsAYkG6gT?=
 =?us-ascii?Q?kxawzIHGeTjLONQkNhyaD04eOU6JGFuwVjeWi70en3LWNOlQQQfR+8//uMf5?=
 =?us-ascii?Q?2ePKk8AkwerSGOqW0KYz+0m9lMhztdvebQm9Jwrr1+u8NQXvLqAjSuP8hROS?=
 =?us-ascii?Q?q9iNnc0h5WPozWmill3HlD00rmDyE39fhqQDoYfa4Oya+Kc53aTzfekJ6rAW?=
 =?us-ascii?Q?i0tvQNwUGFMgMCvA0tbSLAbp0YhhQC7TOnHkfFL0WXpYJBVpu0jld6uo/YYh?=
 =?us-ascii?Q?ZXqXWW1NQefJdHiz3S/EL6IU29QOW7N+/gyXeyXyfIlQCr68cYxKBbrkgD9z?=
 =?us-ascii?Q?9hCieqbEV5C+dyJ6tIt5WGjI+tXJCfln3nNwer93/CzQdPCENDBXavJHfhq3?=
 =?us-ascii?Q?Q9q1oq0baNTvF6DHgRj64LXLIyngRy9x06NEH3AiFt1YnHoz/4FLWpiqXrMB?=
 =?us-ascii?Q?CD5oru+pLk35e3YIvYgBx8AKDJZCNtuVgL4Tydh9s1igdttwibHZaNJMeX0o?=
 =?us-ascii?Q?1ps4RaHep3Qy2LYpXGEX/HkC//kGSRB1/m/2Q2CE?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7688009-6b1a-4bf8-0e70-08da6f26b8d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2022 16:48:52.6288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xur0uLD50qjGkDgFLUFcpOdpOC1gMOkrs6lJQV17TCI7dKlM8CW8v3RCUaEX6kBmFOL0VKBQADgptpaJ6im9Tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2271
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658854148; x=1690390148;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NZiN4fQHTmo9X3RAC3YtD59D7GM5mZjJN5xPPdrefiQ=;
 b=StsAtsNZD33a/WXFaLV9r9H0wvsbSKOFF3u84uhulySeT/useIgtUyX4
 b+FA2jIm59DlihcUe2vOJxJ2k1SASuR3tXVlsjbYCdLPxMjGqF1QQrC5d
 GWo90U6zcA7cxG5laJnB8J+H3JDi5zUxOAe3hxBl+Bpc5EKmQkirtC1pI
 8ozrclqLnhLMGQkMqQVM7pabWEwdDj+5rbgSveDYvVhb1CMpnjp2Ilpmz
 58kXUygJVCCHE+xNZMuHnRCji9dWnEcE0eWmFBC5zBTpabsqwBscYq67c
 SjuH55OVKVlLI6QR0EQDADjF86YV5u0sFUSMcVrZF5tmXzK790KYyBh+H
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=StsAtsNZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/3] iavf: Fix adminq error
 handling
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>, "Jagielski, 
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: wtorek, 19 lipca 2022 11:17
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>;
> Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1 1/3] iavf: Fix adminq error handling
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> iavf_alloc_asq_bufs/iavf_alloc_arq_bufs allocates with dma_alloc_coherent
> memory for VF mailbox.
> Free DMA regions for both ASQ and ARQ in case error happens during
> configuration of ASQ/ARQ registers.
> Without this change it is possible to see when unloading interface:
> 74626.583369: dma_debug_device_change: device driver has pending DMA
> allocations while released from device [count=32] One of leaked entries
> details: [device address=0x0000000b27ff9000] [size=4096 bytes] [mapped
> with DMA_BIDIRECTIONAL] [mapped as coherent]
> 
> Fixes: d358aa9a7a2d ("i40evf: init code and hardware support")
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_adminq.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.c
> b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
> index cd4e6a22d0f9..9ffbd24d83cb 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_adminq.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
