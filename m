Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E72DE996412
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 10:54:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E179440B8D;
	Wed,  9 Oct 2024 08:54:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aXcyRBbGkWB1; Wed,  9 Oct 2024 08:54:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FFEF40B83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728464083;
	bh=W6RFXJcUuN0v3Yhj+Gs1fUbeGjTjF/eGY4G9d2JbcLY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=axcINszYr1ucyQICiwY4O1hJWOHzl1DZCAcshtU7t93cMQl7WVICksl3pUPSu52uV
	 BGIPObUvs+kJIeUDgFSf8z3eRCDEBnUZ2otpmgwusxWdobUn2zzVG1+RzI9vKCZVuI
	 Nrk1XNh4FM6x7ltt4HWfW8n5Mtneo4XrmYRX4z4AcziVNe1tZhClU/aVPq5SzpO3i5
	 6smM9xurfak7SOnL0V6eaIILVuwA+3PE+lCbvRTcQwoQ807ihXtkLqv8Sr6FDm4Jz9
	 RS64K2FsiK2B6ygBnO1hEAHDLQy77Qkjm2hJhuFY3Whblo6Y8BDsTgKVHPan6FgJFQ
	 TRSXm0rLDq1hg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0FFEF40B83;
	Wed,  9 Oct 2024 08:54:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 730561BF406
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:54:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 60C2C6074F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:54:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y4y99tDKN2-w for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 08:54:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 395366059E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 395366059E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 395366059E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:54:38 +0000 (UTC)
X-CSE-ConnectionGUID: 7UOjBeJyQQ6yLfhWPEarew==
X-CSE-MsgGUID: y+XzttGCTyCEdKNy9atHog==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="38400251"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208,217";a="38400251"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 01:54:36 -0700
X-CSE-ConnectionGUID: M9clQLNLQE+L4W90XRUSqQ==
X-CSE-MsgGUID: PFHUDdwvSeqPkEaacvNGuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208,217";a="75848825"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 01:54:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 01:54:36 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 01:54:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 01:54:35 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 01:54:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LQC92+LrAqPDQXcvYC2nkRCsrE6EeQf/5bOj7YG8LSfqXZLe22IqugkdkYeQzjAfY8gBcJgyKyHj+cFm7GNVq3YRj0UD4dtVeRHrvD+51l1EeDSXSQS3HFBi3VOGohPDNXSJ0xh5p8jQvthvsfmQ3D8qD1Zd+OArqj5g3+9JxDlQD/YLobHvkn2hmHBRhkMJcHdqHlMRqXYfAuUrrG7oHdzlT/loRtzhWXL0Y/jzeweA5pdL0o/Eh8l4CDWFDQU1dJg/fUPv07irQVmpGvzIMxceF5yqfgZXUDS8FQ0lDVrXbGD7zMSMS+4Ac48eb707SIrCGsLewrLgpEXxr1d5Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W6RFXJcUuN0v3Yhj+Gs1fUbeGjTjF/eGY4G9d2JbcLY=;
 b=YNrAUnjLneSDqdtMvwoa//l2rYp6tIcsCW4Pa7/0IpPaEuePmnMstAb6gLCgV2eWUf7kvNxILO4s5BFeEW9AirSE2JEsy6oQp3/FJZHGS3B7gFS16E3IW6tiGPecjpFjUg6VEWFAFA5Yg030+JEjfXw1Ws5wG2u3V0yuCTQQuLh2pueq/7LXIGIWKIz4Pe8KMuy4ghfPo8Kx3gK9/Rn6qGMhPynPybgFSyNUEFFcC0S+M59sP19CuEv+AHeS/gwfl2PEsjC8iNzMo/APF3HMJsCaCJvjrBEFDBV7QxsiU92ze/1WP52F7vJBe36Jpft2gJ05+fuyVxgHKz3nivk3Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5880.namprd11.prod.outlook.com (2603:10b6:510:143::14)
 by CY5PR11MB6438.namprd11.prod.outlook.com (2603:10b6:930:35::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 9 Oct
 2024 08:54:32 +0000
Received: from PH0PR11MB5880.namprd11.prod.outlook.com
 ([fe80::8bfb:998c:adbb:d002]) by PH0PR11MB5880.namprd11.prod.outlook.com
 ([fe80::8bfb:998c:adbb:d002%7]) with mapi id 15.20.8026.024; Wed, 9 Oct 2024
 08:54:32 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Wander Lairson Costa
 <wander@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH 1/2] igb: Disable threaded IRQ for
 igb_msix_other
Thread-Index: AQHbC5gHf016zqOf1Uq4Be0q294KJrJlGMKAgBkg0GU=
Date: Wed, 9 Oct 2024 08:54:32 +0000
Message-ID: <PH0PR11MB5880234182AD534C6DB1821B8F7F2@PH0PR11MB5880.namprd11.prod.outlook.com>
References: <20240920185918.616302-1-wander@redhat.com>
 <20240920185918.616302-2-wander@redhat.com>
 <1b9cc95d-2dfc-4dec-a394-95aab0d71687@intel.com>
In-Reply-To: <1b9cc95d-2dfc-4dec-a394-95aab0d71687@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5880:EE_|CY5PR11MB6438:EE_
x-ms-office365-filtering-correlation-id: a1fade7b-c616-4675-d69b-08dce83ffe30
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?uDcS/gZvbK6/apYgUkK0F80gFflf1LrJ4uN/jy9AhCFeuvGRSLokoFOFS6?=
 =?iso-8859-1?Q?vDOM/fu97DyPszaPSAX6dDVoMTBzYd8fYKHJTw9oYnOMecvDtZgqJjsjUQ?=
 =?iso-8859-1?Q?nrMkdBWIYyUp14ItFkPON7E5Hz9/hmSKtDYGZdhCJPWny5b2Vet72fyUDs?=
 =?iso-8859-1?Q?Jw61RrfBB/B76S8ugzW98OG4syDL4Br4J7rfMNRrjykUEx7kbN/IxvGbFY?=
 =?iso-8859-1?Q?Isp3xAtQ0W5w5MR9y0CccJmV7nP1ZYM+Lgx27k+PSFQt0cffdHi6fF7NiK?=
 =?iso-8859-1?Q?JRdyaQ+ZlYiLp5a49+eMGBHbUPxYRF+60xfbvZh8E3BlxU3PnVK5wP4ctZ?=
 =?iso-8859-1?Q?LUCVHeYThO5PaDf9TNMH8PZGGyz3ICG69evCUS9xRRTvzYo7w/FsUYY87C?=
 =?iso-8859-1?Q?NZbyGAhNlpFyOHDTTLvhuQFTvVdBfg3HzcHal60oDl8kZ7QUni7N6ssarp?=
 =?iso-8859-1?Q?TZcch6K8Z+0pYH5dSWt0NNup/Gr/biYbJzXCY0VdknLUY2u89qGA6hx+v4?=
 =?iso-8859-1?Q?YB5sj5JrNhWd+jIO+RFTXxZZqqr+XXUMuwN3RrEzE65kp221kWaH9socEm?=
 =?iso-8859-1?Q?+n/qvEgsXaWIBKbA1wC+x0Kk0588hPt6OxprYrZzMfH1X2ViZYf1gR1EQa?=
 =?iso-8859-1?Q?gGRVg75CAGw7tnQ4Zzioq6CF2h+I8107wtcVKWB7dLp9l7MxLZtFQ3Rd54?=
 =?iso-8859-1?Q?AfSfM8eUYJ8+I/FMNGwpZZxXFhWXQ8GL0RHvDU0xif4oUZVcA7sWsL++gU?=
 =?iso-8859-1?Q?3ShIMgiptCdP1wVYeBhJpWOoE4dO1H+uprzgiiow4ziE54riaA2VhB2dOi?=
 =?iso-8859-1?Q?x9dZR+ngugghbnzRwcp3ZbULsvjsSE23LaO7JpEfC55rC38+nXLXL+nHuz?=
 =?iso-8859-1?Q?fgoSJ3xHUXChBwnpiioaq0RhX8boCheevWgDdAHNOSYvqoUfrednJmvTGe?=
 =?iso-8859-1?Q?rvFptvFTI2LkbGR98S5bcD7M5jaclKbIK//JvCS3WUtAlUP77awvD9z7/5?=
 =?iso-8859-1?Q?TkQYC0qj3/AHttGDqiCso/zEX8cERvEzJ63RUMOwvH9FE6grxZWtSNBiNB?=
 =?iso-8859-1?Q?ZKn+iJvp1A+I14GJljec7wAywtpFEcc79TQC6aRRLezsXjy3+981Yawbt0?=
 =?iso-8859-1?Q?Lgc03rgr7d7KjOfi3jdvZNUF8AElS7Uhhp07Ays3/349eLPRMKwuX0eD7i?=
 =?iso-8859-1?Q?IYnmu+D92Chof11nBiNHCZnQtV6MK/91dXBsXLOWCEKdWSCGLh7vQUSmJz?=
 =?iso-8859-1?Q?Zz2wNXQ/5WfCDl1jX2hA0BKakSeHDePvgFoKlP+U63+gCGm3tiAwdXGQPv?=
 =?iso-8859-1?Q?c5dAAJe7fB0isqk9A0qvE1bYtt8+Lwf7VbNoHiXbj8XBBV9Krn54Yj3PEX?=
 =?iso-8859-1?Q?+xnsY1WkYGY5aTLbgix5ty7kOSszcw/w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5880.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?4feVEToL1tJJNiKgLOWtZcxOKdZ00veZmELbpQts6E/Cqu/sdSyZfp2CTY?=
 =?iso-8859-1?Q?o5jabMNe8SZVIwsGOmJrcDBLiRqeOUQ5jnBz5Ul8UykYDc25xouPq1BxKA?=
 =?iso-8859-1?Q?tHUKVAgSd9P8RB/nd0d+1SFulDxp8QDKkwgE92PtIK4odvXM8kg2fvIzMC?=
 =?iso-8859-1?Q?BUB1HfLtMBz+FwNCew0qNM9HiBhpt7d8H84+BZcynZC0txJ+kk+dhfJjt7?=
 =?iso-8859-1?Q?numLOEpd4SyFGkLK1NV10STVP6YAVWT89VAi8AA9EjxVWNaxrGYaMj7f2J?=
 =?iso-8859-1?Q?53qIHd/untgHYxNfYePG9QrDH7ljvw5R8IE8i3+euueVGpgZWtVanHF+Jn?=
 =?iso-8859-1?Q?VPDDQO9x2JHAI1nfNhq2QDZhRfcGLo2Bb+z4Q32/PaZV0a2HlvXsZwQGXL?=
 =?iso-8859-1?Q?VB4KLqRge0g72Q+Dh/mQYuBh5r0qW16kNv3eMTNgkN4ZeiU1SI6L8oHi75?=
 =?iso-8859-1?Q?dHLyRWMElPh5ttWekG6sUG5mzCB+NhKZ3e368fRPa4VBXmAAcGPAi+dILh?=
 =?iso-8859-1?Q?ryXkfE7UYbunqWk2diGiXAaxKl2hFiXShSIVcMCD22Gy28vYSVZS2Q+w9A?=
 =?iso-8859-1?Q?rSE+caHvS/pSuWnmRkTSeICWPaS6kdcvWsuhyNaLW9RbS0fglZPJka3ICO?=
 =?iso-8859-1?Q?qRPzvz11QENgHFULvbtq6Wq2Phvo8KKGdTwH34c8o3nQ3FSpLx1XFbxD1T?=
 =?iso-8859-1?Q?vxl3xMUdw9gFD0Qn6h2zjBHopI5/aSDTtMQ4Z/tBDi0pHtXAkLTcZCC2L6?=
 =?iso-8859-1?Q?yDokZary1XbaYluVlFqplnZj+ZyQyNh0NgxfdxynbfT5F65uJSfFwmpRX8?=
 =?iso-8859-1?Q?Jn/cCuaOAkSx9cAiEF66ipE3i8helePuZBi+VFpxT7Ykm+Bt4BYo8ZZDwL?=
 =?iso-8859-1?Q?nxvPVFt9qjmtaWyyKgVXWnYFpoadpzKvyTOqx8t8vXubNE1wsJxyWBjBUi?=
 =?iso-8859-1?Q?+vCV5afTd0Fxks5fmve/GHQcJFbiWdoCiT4UGRqAUevFJ2VgSjHCCW/Zx9?=
 =?iso-8859-1?Q?7PaK+fgQ97Jo5wt6zp1phzqHbBIf9UUghYhIyXzG3PS7W0OpknRDgnSjcH?=
 =?iso-8859-1?Q?R0fkqkYPOaxPHzEsxZLxTnqZy8dZNT+Lm1AApN9gVGwN0p97+sR6KnF5xI?=
 =?iso-8859-1?Q?uv5Zk+U3lZWUbpG7FR+gd/qbuVvZFugVqqGA3HPmX/YNFYuqmNYw4S+ZQl?=
 =?iso-8859-1?Q?ZZjMYAudBjghst/vbDojq/LAaSZs0DQEcV0YkxECFyVjTVAUAKn2hulqJh?=
 =?iso-8859-1?Q?VcMZ0X8+J2n8hg5029EvfQclAu4CF3UNZi+3UcFsXg0HXYb7JBYYQ24H9A?=
 =?iso-8859-1?Q?pM5JoNBc9Apvm/UP99qfFsgmgzliCe3QMmXofIRQEByR46Kw5iu1l9y8ES?=
 =?iso-8859-1?Q?pHOV1fLp+1hHYftvnvTrngDlR7yqsWG89n+HbVuOnMojUv5VO3UP80Xl+V?=
 =?iso-8859-1?Q?7I8Un1FT/Y0X1J7OsbzxDgj5CpE6UfIvpltRvN+TIHc1adPYkGYo71HUd2?=
 =?iso-8859-1?Q?JN5VrYu4kAcXrHq9c4l6mPWJhJ/7e3JokQ982Y3QUW9yy3jewPy4tb2aTZ?=
 =?iso-8859-1?Q?eygKWPO4mLlm/s0goi+s7XB7PThk2SBdTvINabJ9Ki4T0uFU1pSI1oHtIa?=
 =?iso-8859-1?Q?L57U7TYj0KIOZG1axVReN/YTk5niH44iWH8XpDic7x9Jp5h9MPVhqHpw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_PH0PR11MB5880234182AD534C6DB1821B8F7F2PH0PR11MB5880namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5880.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1fade7b-c616-4675-d69b-08dce83ffe30
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 08:54:32.4857 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qnkHjqXd9PtBjFamdqj3edupGrdGYSJcui/8m78w2MjwaUEZZafzC9qQbo+oCZd8RC4mzmG+JXzOGtVJltDcdocgpxIBNa9OuzqIUcJ2pg4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6438
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728464079; x=1760000079;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=eqbUdcBsxZ5CbOIMNJYWdWGUPNRnf6DlQRVmRxSKZWM=;
 b=Tj6rCpilFiEXZxaCK3P5l3W2kU5e9p86IaHUZC8P8I7MPOig7/EqDxrX
 s6xo2R/K20kRfahlsRfl00iluAWCMn9KHf39TbubH7CIA4sKKUyFHDEP0
 TkVSmX3sg0JX1iToWZEpr/46ZBXDvpQT/wlwJuG/HlwPG2K1+IMA+2I7U
 Q9SgvKBqux4mNCbSmZv2lD1olVCmfazqxWLGtVbAQ/4xzSneQ3ENBzkp2
 sEEO42M94OjyouzSKjWqiXvQv97O827vteUVzNSSS5rCUj8JzQ5Uk/RRo
 tmPspNEaiot0EPfwkG2GFbaW7wDJMv5Mtw/8HHPNEjK7gzO4I6xq5sZBP
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Tj6rCpil
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igb: Disable threaded IRQ for
 igb_msix_other
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
Cc: Yuying Ma <yuma@redhat.com>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--_000_PH0PR11MB5880234182AD534C6DB1821B8F7F2PH0PR11MB5880namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> on behalf of Prz=
emek Kitszel <przemyslaw.kitszel@intel.com>
Sent: Monday, September 23, 2024 11:07 AM
To: Wander Lairson Costa <wander@redhat.com>
Cc: Yuying Ma <yuma@redhat.com>; moderated list:INTEL ETHERNET DRIVERS <int=
el-wired-lan@lists.osuosl.org>; open list <linux-kernel@vger.kernel.org>; E=
ric Dumazet <edumazet@google.com>; Nguyen, Anthony L <anthony.l.nguyen@inte=
l.com>; open list:NETWORKING DRIVERS <netdev@vger.kernel.org>; Jakub Kicins=
ki <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller <dav=
em@davemloft.net>
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igb: Disable threaded IRQ for ig=
b_msix_other

On 9/20/24 20:59, Wander Lairson Costa wrote:
> During testing of SR-IOV, Red Hat QE encountered an issue where the
> ip link up command intermittently fails for the igbvf interfaces when
> using the PREEMPT_RT variant. Investigation revealed that
> e1000_write_posted_mbx returns an error due to the lack of an ACK
> from e1000_poll_for_ack.
>
> The underlying issue arises from the fact that IRQs are threaded by
> default under PREEMPT_RT. While the exact hardware details are not
> available, it appears that the IRQ handled by igb_msix_other must
> be processed before e1000_poll_for_ack times out. However,
> e1000_write_posted_mbx is called with preemption disabled, leading
> to a scenario where the IRQ is serviced only after the failure of
> e1000_write_posted_mbx.
>
> To resolve this, we set IRQF_NO_THREAD for the affected interrupt,
> ensuring that the kernel handles it immediately, thereby preventing
> the aforementioned error.
>
> Reproducer:
>
>      #!/bin/bash
>
>      # echo 2 > /sys/class/net/ens14f0/device/sriov_numvfs
>      ipaddr_vlan=3D3
>      nic_test=3Dens14f0
>      vf=3D${nic_test}v0
>
>      while true; do
>            ip link set ${nic_test} mtu 1500
>            ip link set ${vf} mtu 1500
>            ip link set $vf up
>            ip link set ${nic_test} vf 0 vlan ${ipaddr_vlan}
>            ip addr add 172.30.${ipaddr_vlan}.1/24 dev ${vf}
>            ip addr add 2021:db8:${ipaddr_vlan}::1/64 dev ${vf}
>            if ! ip link show $vf | grep 'state UP'; then
>                    echo 'Error found'
>                    break
>            fi
>            ip link set $vf down
>      done
>
> Signed-off-by: Wander Lairson Costa <wander@redhat.com>
> Reported-by: Yuying Ma <yuma@redhat.com>
> ---
>   drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethe=
rnet/intel/igb/igb_main.c
> index 1ef4cb871452..8a1696d7289f 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -907,7 +907,7 @@ static int igb_request_msix(struct igb_adapter *adapt=
er)
>        int i, err =3D 0, vector =3D 0, free_vector =3D 0;
>
>        err =3D request_irq(adapter->msix_entries[vector].vector,
> -                       igb_msix_other, 0, netdev->name, adapter);
> +                       igb_msix_other, IRQF_NO_THREAD, netdev->name, ada=
pter);
>        if (err)
>                goto err_out;
>

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com<mailto:rafal.romano=
wski@intel.com>>


--_000_PH0PR11MB5880234182AD534C6DB1821B8F7F2PH0PR11MB5880namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Calibri, sans-serif; fo=
nt-size: 11pt; color: rgb(0, 0, 0);">
<b>From:</b>&nbsp;Intel-wired-lan &lt;intel-wired-lan-bounces@osuosl.org&gt=
; on behalf of Przemek Kitszel &lt;przemyslaw.kitszel@intel.com&gt;<br>
<b>Sent:</b>&nbsp;Monday, September 23, 2024 11:07 AM<br>
<b>To:</b>&nbsp;Wander Lairson Costa &lt;wander@redhat.com&gt;<br>
<b>Cc:</b>&nbsp;Yuying Ma &lt;yuma@redhat.com&gt;; moderated list:INTEL ETH=
ERNET DRIVERS &lt;intel-wired-lan@lists.osuosl.org&gt;; open list &lt;linux=
-kernel@vger.kernel.org&gt;; Eric Dumazet &lt;edumazet@google.com&gt;; Nguy=
en, Anthony L &lt;anthony.l.nguyen@intel.com&gt;; open list:NETWORKING
 DRIVERS &lt;netdev@vger.kernel.org&gt;; Jakub Kicinski &lt;kuba@kernel.org=
&gt;; Paolo Abeni &lt;pabeni@redhat.com&gt;; David S. Miller &lt;davem@dave=
mloft.net&gt;<br>
<b>Subject:</b>&nbsp;Re: [Intel-wired-lan] [PATCH 1/2] igb: Disable threade=
d IRQ for igb_msix_other</div>
<div id=3D"divRplyFwdMsg" dir=3D"ltr" class=3D"elementToProof">
<div>&nbsp;</div>
</div>
<div id=3D"Signature"></div>
<div class=3D"elementToProof" style=3D"font-size: 11pt;">On 9/20/24 20:59, =
Wander Lairson Costa wrote:<br>
&gt; During testing of SR-IOV, Red Hat QE encountered an issue where the<br=
>
&gt; ip link up command intermittently fails for the igbvf interfaces when<=
br>
&gt; using the PREEMPT_RT variant. Investigation revealed that<br>
&gt; e1000_write_posted_mbx returns an error due to the lack of an ACK<br>
&gt; from e1000_poll_for_ack.<br>
&gt;<br>
&gt; The underlying issue arises from the fact that IRQs are threaded by<br=
>
&gt; default under PREEMPT_RT. While the exact hardware details are not<br>
&gt; available, it appears that the IRQ handled by igb_msix_other must<br>
&gt; be processed before e1000_poll_for_ack times out. However,<br>
&gt; e1000_write_posted_mbx is called with preemption disabled, leading<br>
&gt; to a scenario where the IRQ is serviced only after the failure of<br>
&gt; e1000_write_posted_mbx.<br>
&gt;<br>
&gt; To resolve this, we set IRQF_NO_THREAD for the affected interrupt,<br>
&gt; ensuring that the kernel handles it immediately, thereby preventing<br=
>
&gt; the aforementioned error.<br>
&gt;<br>
&gt; Reproducer:<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #!/bin/bash<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # echo 2 &gt; /sys/class/net/ens14f0/dev=
ice/sriov_numvfs<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ipaddr_vlan=3D3<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nic_test=3Dens14f0<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; vf=3D${nic_test}v0<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while true; do<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ip l=
ink set ${nic_test} mtu 1500<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ip l=
ink set ${vf} mtu 1500<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ip l=
ink set $vf up<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ip l=
ink set ${nic_test} vf 0 vlan ${ipaddr_vlan}<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ip a=
ddr add 172.30.${ipaddr_vlan}.1/24 dev ${vf}<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ip a=
ddr add 2021:db8:${ipaddr_vlan}::1/64 dev ${vf}<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if !=
 ip link show $vf | grep 'state UP'; then<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo 'Error found'<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fi<b=
r>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ip l=
ink set $vf down<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; done<br>
&gt;<br>
&gt; Signed-off-by: Wander Lairson Costa &lt;wander@redhat.com&gt;<br>
&gt; Reported-by: Yuying Ma &lt;yuma@redhat.com&gt;<br>
&gt; ---<br>
&gt;&nbsp;&nbsp; drivers/net/ethernet/intel/igb/igb_main.c | 2 +-<br>
&gt;&nbsp;&nbsp; 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/e=
thernet/intel/igb/igb_main.c<br>
&gt; index 1ef4cb871452..8a1696d7289f 100644<br>
&gt; --- a/drivers/net/ethernet/intel/igb/igb_main.c<br>
&gt; +++ b/drivers/net/ethernet/intel/igb/igb_main.c<br>
&gt; @@ -907,7 +907,7 @@ static int igb_request_msix(struct igb_adapter *ad=
apter)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int i, err =3D 0, vector =3D=
 0, free_vector =3D 0;<br>
&gt;&nbsp;&nbsp;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; err =3D request_irq(adapter-=
&gt;msix_entries[vector].vector,<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; igb_msix_ot=
her, 0, netdev-&gt;name, adapter);<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; igb_msix_ot=
her, IRQF_NO_THREAD, netdev-&gt;name, adapter);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (err)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; goto err_out;<br>
&gt;&nbsp;&nbsp;<br>
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, sans-serif; fo=
nt-size: 11pt;">
<span style=3D"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">=
Tested-by: Rafal Romanowski &lt;</span><span style=3D"color: rgb(70, 120, 1=
34); background-color: rgb(255, 255, 255);"><u><a href=3D"mailto:rafal.roma=
nowski@intel.com" id=3D"OWA8b454d80-d2b0-ca08-b1b6-5a831687a3e8" class=3D"O=
WAAutoLink" style=3D"color: rgb(70, 120, 134); margin: 0px;">rafal.romanows=
ki@intel.com</a></u></span><span style=3D"color: rgb(0, 0, 0); background-c=
olor: rgb(255, 255, 255);">&gt;</span></div>
<div class=3D"elementToProof" style=3D"font-size: 11pt;"><br>
</div>
</body>
</html>

--_000_PH0PR11MB5880234182AD534C6DB1821B8F7F2PH0PR11MB5880namp_--
