Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3389555F169
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 00:36:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC705409F0;
	Tue, 28 Jun 2022 22:36:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC705409F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656455798;
	bh=No0afOg4YZknpSZ4h17idkXiuhCyaOSZk2HHIYqKO2A=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pyJXwsrYpEAXjz+FSaZ+GRxkFTcB4zVhu542YVmaIuRByRSV3gidQwEhMMXX84JKj
	 enY+3dRfQsN16wtc6BrQZI4/1d+OdTJ13vIlk3Q2YyccjiE7d2ytRrfC1yUztKQ8Ei
	 QprMDX3Qy6vVkTJ4WnwRvEqMGJrV8m5qdLPKftk2V013kQAX5nD8h4a7SNuNGO2CVy
	 XFuwLSawtoTHdgisJAM0okQYkUPasROBFjMkPvPAHlkjdgEiQ96QVN0exoxKdpiipw
	 N31dpkmhjF6a+FSqCSUxz3+QQnsIbdI4CzF0kAayXjPIlbwDIfVx9Dg/iqy8Onflhe
	 hHb+Jo1lfddvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pc5s1UdhGzd0; Tue, 28 Jun 2022 22:36:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 406F2409EE;
	Tue, 28 Jun 2022 22:36:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 406F2409EE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 81A221BF95D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:36:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 592A1400F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:36:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 592A1400F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iu7kup4b8FGf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 22:36:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55D26400F3
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 55D26400F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 22:36:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="282599158"
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="282599158"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 15:36:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="647108982"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 28 Jun 2022 15:36:30 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 15:36:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 28 Jun 2022 15:36:30 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 28 Jun 2022 15:36:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yjtq9zLdCoS6NIE4belnZU9+uKPKVCCYkmmbC8GKPMJgTvd4SoPw3GKubIkfh+CV4Yn0LucIN0dMS3xASk3sx61T5lJX7EZRCkEpvRFPPtLaHXBU9QlXHaL1R46Efgyb1Szj9aNv3LxDuz6dIs2nPxu+wDifUjrVcQkg0u3ODuzo6wnk1xonBLDP+094hxruS8wIyEmc17xiNNBmXu+1HQJ5GCWrui5MNToOTdOIapk1vsnmIx8kd/J7yaJdFfUGp7I6AHewp7Xc+ydpcIqQy9yaZwIlpplwrSwrHmPmpOA9lGHHdchQCZUDThn641XR8Ib47vemmV3gEVhULulmmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nxy2/pCKnHfhbnYPmd3HAiJya8yPWlk4uDjdbOduS+U=;
 b=QqV2zAjUsai17+twaAvXt0BQQDI6ExgeHt7Oz9uWts+V9i7WieWZLR7qqnuL5IcNgYLv3v2IYkCvZ+L5v3Exdx//qR7vAJRZi2ADJSG3VDTbm8l6bnYkX/0BWEx7kh9hP5uj4Cri9e2a9SZvFMXAD2KV0nvb+WUnVx/ms1upgJlAD9ej96p4byqHm0M9gF83WQOB17J9QDOhTxumj0P36huVPcwitqS1UTTMmfAXwAKp9SqH/UL8kqzH0lNigwzjyzPl35qn5FPZie8Bm/Tq/EFTxulvEn/nfZejQoKfhCB2/ZYBcXz/XbLJ6ol4XBgwEvtVWnvYJ0tHW8jHRCnkyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CH2PR11MB4325.namprd11.prod.outlook.com (2603:10b6:610:3e::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.18; Tue, 28 Jun
 2022 22:36:28 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef%2]) with mapi id 15.20.5373.018; Tue, 28 Jun 2022
 22:36:28 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: Fix max VLANs available
 for VF
Thread-Index: AQHYiutljgnLAL3gOEybSGnTyppgFa1k81IA
Date: Tue, 28 Jun 2022 22:36:28 +0000
Message-ID: <SN6PR11MB322956391345B9432DD12692C6B89@SN6PR11MB3229.namprd11.prod.outlook.com>
References: <20220628123350.677880-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220628123350.677880-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
x-ms-exchange-imapappendstamp: SN6PR11MB3229.namprd11.prod.outlook.com
 (15.20.5373.018)
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5995956f-fbe1-454a-55d2-08da5956a42a
x-ms-traffictypediagnostic: CH2PR11MB4325:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DzM7a4vGxFB4i8k1IAC3ku3qPPKy8plzDUZVplKoHn1Gf7n5FdsXZcZIdGTeA9SZI9NWaiMUocKqnhO7tOs9uy2uY2UazrjkBBfZG8ssIaSHjPaH71/UgIpdeznyh3JjxY23MvvHyV05qjtTYKVen4JQqM549yTQ7Ajt3pxtlpjU2Ykt+whF/ttBkiFm+s8yi7stYQFbiPtP1oDUFBFRXtbXUfjn1/EbqVKLMGcpO/0BJHsR9j6NDjq6PZIRbsoFuTqL9U5imIs+SOM6NQM9sCRHoGFY4xFAhmmQEbmTeb6U9esJ7moEWtKF/a4hMoQzDIvAql+W4UCFcSKBoXTB9nPfms2dWcNCXOz4D9v1Zf389SPsRaJN/2jgoUVAPO5M6wjtmQYLJQ3WTtN5W2DANprTnBwX3I55FWAK4iN3TTxgb3bjvLtmORxU1GUNcNSu+ROfKyhEN0Nxa0nBdzEZCfF+6WnFFENefLW1qZDDajwc7fpNm41yIb4COFbrYeUIlf/2kU1GfRR2kyPXH2J9GoNk2L4fPN50Eq0lKguXMkHtEvRC0B1iO7iXX6YDki/K6u/tItxtjM5dINmxsQ8vRA0l3nVu2jisKLHUtq+7UlXIWHoNXPgl1f3jhTgj060id8Tnh8/UOse1fXrKcdqMaVBTvmf1dv7DOCXz69Iy0EnhXCatMw4v+OYh9M9l/KUPFQY5iSSXKl9VAuMwLD0/4QZkDXqcuL9ubRFAVM4XLDTOG99F4MKAcCH5EIMiCan1me9G+v49l7InJuJ05ku0JepR435K8uwrBIglDGgURVutG+ixWcFsFNQLyHJxS1d5HZZAy5DrDL25pSmx1Dvy7MDyohQf6W9viUMUV89sULPfW+nvYmx/tQeF7UBoRiAvQ3KSj43lUMW7nbkaNErrnZqdwa+Q3IIGubzsSjLDyV4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(396003)(376002)(39860400002)(366004)(136003)(55016003)(2906002)(86362001)(41300700001)(478600001)(76116006)(966005)(6506007)(107886003)(66476007)(66446008)(7696005)(53546011)(4326008)(8676002)(9686003)(26005)(8936002)(64756008)(66556008)(5660300002)(122000001)(316002)(71200400001)(186003)(82960400001)(52536014)(83380400001)(38070700005)(110136005)(38100700002)(33656002)(66946007)(131093003)(65966003)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L0pEQXlWVGdzQVBNT1F1aUdIZCthNEJLSThhUGNWZm8walRLMTUvbG1McC9h?=
 =?utf-8?B?K0ZVZnowa0M5ZzBGakJJWW1uc204bE83aFArZVhjMDhlVHd2aUdvcXhEWGY5?=
 =?utf-8?B?aUx6VUFiUUk2RXJuVHovT01XZFIvUFFjUGZpVlVncElFYzVWdWMrWGQrZVcz?=
 =?utf-8?B?eTBDeTEwcmVHbWNuWTBaWFcyOVh4cDkrT2tYSXJBNjNKdk9aUHlQMU8yU3Bz?=
 =?utf-8?B?blZ4VmhGZDZxZHo2bWR3dmxNK2NaMDJlZUVRand4YmdqR0xZTEY0VFNDMWJY?=
 =?utf-8?B?ajdlRE5YTkQ3TXdmWmNvRzZ4MVJHclh1M05mSkE2UnEzSVJXK0lsTjVsaGhn?=
 =?utf-8?B?bWtKNnQzZ1ZaSVJBUm1rZEVBUTVUTkdXWG1SRWk5L2dZNXZ4WVpJTkRrbkR5?=
 =?utf-8?B?MGtTekdGZDdWQjBvenJjckJ2am8zMGVteUdTOG5QVWlrbGZFdng3dWgwQlBp?=
 =?utf-8?B?OU04K05rL0JUYmNSR3RFMGhCcnIzajFSL09OOVVhUVRnVDVvNUpHc2lpYjA5?=
 =?utf-8?B?b2R3bHdicjBaNVoxeWcwTlpockQ5NjNlc0drYmZJOFJTSWpacmk5emdVdGxp?=
 =?utf-8?B?akkxYnVhcU0rVlNydTR5K25ETnN0VGMwdlJlb1NlWXhCOTREOC8zS2twWklV?=
 =?utf-8?B?cGhOczI1ekNOejZwT3NFYkRuWnYxZ010V0xqVUllTG5vZ3Bob0dHNE9YRldu?=
 =?utf-8?B?MC9jazFOK09wVGJ3NjBtV2h6cnQ2MW9RUGJmOGhGQ3RtTVNWNUZJSEpMK0cx?=
 =?utf-8?B?bUMySURZZEJnZTc0MTJaRjBuNjN3OWUvbTJPK2RUeGh6WXZoOGtVYjVOVHlF?=
 =?utf-8?B?eUNvMnRlZ2xjSG1FVTdrbHNVZjB0MEJjdFZGWFdyQTlHbDRrMFhkYWtWS3k4?=
 =?utf-8?B?RzBoNzlQNEhFa00xcnF0QjhDVjJQSndjcWFmU2NrTjVENFhWWmRFY3pzRUhS?=
 =?utf-8?B?R0V6SHBlakRQME16MDV4ZWc0TnBHYTJwMXJrb20raUwxOFFiY2lzQThNSTJ6?=
 =?utf-8?B?aWc4RVFsd3JBeDBBNFpzRkQ4ZFRveWNaZ1BwQk9ON3ZZZzNnYU1HakhMNEJv?=
 =?utf-8?B?V013a1FWenlZenVkVWk2cFNrK3ByVDBwSzBJaE1ZajlyeUM0NW9SOEZtU2hM?=
 =?utf-8?B?RjhPZW1NeWpTNGR6bVM2K0RyK2F0eUpMNDFZYzFHMUE2eHN6MHA1NzB3Y0NI?=
 =?utf-8?B?elVmS29sUUVHT3FzNStMQWg4RVRrWm1jclZiZktRQlc0WHlqSHV0MlY2Zmly?=
 =?utf-8?B?aGwyMVpTWWR4dndQQUxoQUlYZUlaM3UxcUNmbmxVWkNXcHBqano1VTZXS3k1?=
 =?utf-8?B?UHhDN1AzWHBVRlpzRGFwb1pSSVhrcXFpaXhZUU5tOThFdk83SEVMRXJwMmZ3?=
 =?utf-8?B?MVE1c2ZSeThFc1NPN3hQejdvaU5RSmZuMEFGZWFZUW5vL1JoWEJycUdwWWlt?=
 =?utf-8?B?ZVcrR2RDVWcySDRVbzJ4SzArdGcrNHRGNGpIakNiSnNuSEFZRVhHa1h2ZGds?=
 =?utf-8?B?dThBbnZpbGNuZVo2UzJwUnN0M1d2M2JXL2dEeFQxRzVKbXMwdEZPNzVZbnB3?=
 =?utf-8?B?bGMzRVdMU21SSlJuamNNNGVmU2RPUUp1VlBUaVFrd25tZmtYK2NTSFYvY3FH?=
 =?utf-8?B?TE43c1htQ3JVNWM3VmxrVFVnWGlkY3h4SGtTRzdwTll5a1FmRHlyYS84WjhL?=
 =?utf-8?B?OEpFVDhwcTFKT2NnVkdNYU1XL3ZjTVAveWxEam84UUpjejN3VFJoT3RmSHZB?=
 =?utf-8?B?M0tlb2xVT2hmTGF3M1E2aWRIV1RJa3VRazVEWmROODBVNXg3Qy9aV2VtczRU?=
 =?utf-8?B?ZXRja3FBT3AzYXJqZk1pK0lqYWtWQTJQLzBxa1VmZ0dBVHd0ZGdMdklLdTlR?=
 =?utf-8?B?ZkRzRFJaaGNocVczYkQzZXVId1VDbWVRWG5vUVFJZEV3cUlEbU44SlNNbGc1?=
 =?utf-8?B?S1JzdVd4N3VtbktYdTdjcWp6OWdrbHQ0V2hYbWIrSUtHZlZsNk5udWpqNi9q?=
 =?utf-8?B?SzFKVjBEb2Q2alRYbnU2SzlzOWdtUkVxWmZMRVN4ckFSL2RYWHNuVHdvbm1Q?=
 =?utf-8?B?ZHRrN1ZQaEhKVTgwM0RUOU85OXF1VFFMTGlRdmVuMExSNzRCMXpMUHpCbnZS?=
 =?utf-8?B?WlBLQlhXdW90UHhnUnZrcFlSNHZNdzZJa2Fab3FkZzQrUWl3bGpLMUFodUM0?=
 =?utf-8?B?V2c9PQ==?=
Content-ID: <7E07DED6F865184EB3D6C2D03665FCB1@intel.onmicrosoft.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5995956f-fbe1-454a-55d2-08da5956a42a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2022 22:36:28.2018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rkNWlKFDaz587hdCrJN6tyOrWnkzbi94M9WWbqsQnfb6IujsRUKha1oQYjl2+4vveiSXPpixm3bybModIzSfj3oMINlgga4v+2Pok1gSAB4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4325
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656455791; x=1687991791;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding:
 mime-version;
 bh=nxy2/pCKnHfhbnYPmd3HAiJya8yPWlk4uDjdbOduS+U=;
 b=lzcq5GYOKP0VoVSA1g7+osyHOiGG7r4+19J3bOPauUxCCi+S0YlBekzQ
 Hw7WmcUUIBjViIYE7It5t9pV1M1N1fMdFbPLughPusLbV2wI6scyFNRB6
 bfIPa9zhjsz2YiSm+erdM7l78TPcHiudRst6yeCwQkFHbPwQECgpXF4qk
 6aKnTwbC+0tqjws49OhmNEKjHe7hlz2PcQkkhbNXHkXoIV4bhxgOrOPyl
 K00C1usHG5h6l1MvwApPIDVi1EXjNDSdkBtSFNIrUGACjuEsfkI7rAe01
 EYTaz/ZY0xZDP/Fuk5K1/ve/mNkrMRVv+90Mo0sG2x1gFm39CAAXV9G+r
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lzcq5GYO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix max VLANs available
 for VF
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



On 6/28/2022 5:33 AM, Palczewski, Mateusz wrote:
> Legacy VLAN implementation allows for untrusted VF to have 8 VLAN
> filters, not counting VLAN 0 filters. Current VLAN_V2 implementation
> lowers available filters for VF, by counting in  VLAN 0 filter for both
> TPIDs.
> Fix this by counting only non zero VLAN filters.
> Without this patch, untrusted VF would not be able to access 8 VLAN
> filters.
> 
> Fixes: cc71de8fa133 ("ice: Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2")
> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>

As Olek pointed out, please fix your email settings [1].

From:/Signed-off-by: email name mismatch: 'From: "Palczewski, Mateusz" 
<mateusz.palczewski@intel.com>' != 'Signed-off-by: Mateusz Palczewski 
<mateusz.palczewski@intel.com>'


However, based on ordering, shouldn't the author be Przemyslaw?

[1] 
https://lore.kernel.org/intel-wired-lan/20220628141911.1403944-1-alexandr.lobakin@intel.com/T/#m20c8d8eb342f31bdbf88f1976a484a04bf049554

> ---
>   v2: Changed fixes tag
> ---
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index 4547bc1f7cee..24188ec594d5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -2948,7 +2948,8 @@ ice_vc_validate_add_vlan_filter_list(struct ice_vsi *vsi,
>   				     struct virtchnl_vlan_filtering_caps *vfc,
>   				     struct virtchnl_vlan_filter_list_v2 *vfl)
>   {
> -	u16 num_requested_filters = vsi->num_vlan + vfl->num_elements;
> +	u16 num_requested_filters = ice_vsi_num_non_zero_vlans(vsi) +
> +		vfl->num_elements;
>   
>   	if (num_requested_filters > vfc->max_filters)
>   		return false;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
