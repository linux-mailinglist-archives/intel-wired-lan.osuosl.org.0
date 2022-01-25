Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B81349A1D8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jan 2022 01:42:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 332E884C0B;
	Tue, 25 Jan 2022 00:42:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4zgtRwqgUgg4; Tue, 25 Jan 2022 00:42:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0755484C0A;
	Tue, 25 Jan 2022 00:42:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A05C1BF982
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 00:42:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5646F4022B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 00:42:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Px79S3_tqdqn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jan 2022 00:42:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A556B40183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 00:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643071371; x=1674607371;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=W+HObPvvAn2m1ziJVmBv8gDN0QP4/MnMUinZRQsTVc8=;
 b=NSlqGy0Iixqqm0atzRdo7HyB7n4WOcGc2rQO5/tqoExIz+e+H+ePwKX5
 4fXpQINToL0jz5e9/tS52Myrp2Nysc7Ug1xDzeEnLVIsLagMJBSXFSTlT
 xcLmA9qXdJ5CfCC+cunkApIdhn3cITORzl41gSgATLpf6oUHCTfErr2AI
 nyjU42kot2ASKKGpUEbTrIbPmy7DmQ50Czf3/67nty2KFyHMPh0QDmAKN
 F4QoIBKFNyVpM14yN4t5We5wJvmdNhBMlz+CFWqV8/aAYhBlywkolXA2l
 oovX1dbLvcDhDR87rO+3LGx1q1KJCYkXeCx0+1U04i8nyEqhHK8gnN/ve Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="226163225"
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="226163225"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 16:42:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="494812584"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 24 Jan 2022 16:42:50 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 24 Jan 2022 16:42:50 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 24 Jan 2022 16:42:50 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 24 Jan 2022 16:42:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E6uHXI/3D7WK0jgHL7O+3Z8zKpsE+wP9E9pDDNyJzQluxO13ZquTVImm37hNJPIeOt7imO4exgKkhWcbt/OEW0EOz+u+NUNoK3+IYSu4wKNp0+n5GzvK2Qv+zlvKrtFq6qPupMlA8HgFCIeQ4OpHWFXSQy7J//s4B4N47nZACJui0xhK1zY72wF68KcDGcKyym+sWjRTLCCXLdlzNqHv6xOvwVgmh2sjTCg3kAPr2AkLMIudam4v1yWurERCAhY9txnB8bIV6fdk6cl9Gb7+tbHjFYzsgmF8+4QdZ6Q8Qm01H5nnVfAcRIpiL7hH+Aa3tjurAqvdmr+neu/Obn9wHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W+HObPvvAn2m1ziJVmBv8gDN0QP4/MnMUinZRQsTVc8=;
 b=JvsGPfY7Ej+No3tRpkZrCqDKLKNDSjWRYQskfbTfIrSj5gCtEbJTGxdiYh7aJ0IcYCtUWahzhLFuNoCyIfvkKJlm9JaYKMK1Qe79AU7m4yjIY4QQxIHwdOk4u6ZCJWo+eptShfYrrP/80R8Dp1oa3kzh/W2+38J44LE7K8wl05I+CoI36iy31OhO5W5E3bYYgymwP30EA+XjG0QzW9D7fvhgjmd833pprQjZH/ZKRAaG9w4y0c0ngNjvrjyqj/HP216as1Z4ZgmxxQWqFoVNuD4xTMvxStvgEOlRObE+BiE/bkWJO75Wf5awBCuuBffjQ3CF/NfsdHlLEB4zKsl6WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH0PR11MB5016.namprd11.prod.outlook.com (2603:10b6:510:32::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.7; Tue, 25 Jan
 2022 00:42:47 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1%5]) with mapi id 15.20.4909.017; Tue, 25 Jan 2022
 00:42:47 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] iavf: Fix incorrect use of
 assigning iavf_status to int
Thread-Index: AQHYDq0y9DmkZeHCQUKmQ316kcgH86xy64SA
Date: Tue, 25 Jan 2022 00:42:47 +0000
Message-ID: <5332e7b8df740820a9b16af9bcee94e8d92ec4b4.camel@intel.com>
References: <20220121095512.20266-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220121095512.20266-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b9ae81a5-f1c2-4d05-7b28-08d9df9b9bf7
x-ms-traffictypediagnostic: PH0PR11MB5016:EE_
x-microsoft-antispam-prvs: <PH0PR11MB5016A127F6400E8E450D2B33C65F9@PH0PR11MB5016.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WIkYVyX/TEt+yvO2NFFtcOmR6oHirmGIcL7lIDnRmQUuCRp57/R3sDLOG6q5qSNQf2G1RsdY8BMmk2fkoK/l7hSI33bTPpeI605YZu9zIdrkX/ZF5lff4CmhDb0fvSfLLDyMtcmyy/wY6keOw1/pMIY4PzSFX/JMOFC9fklLd0gt09E/+5cCEEtpl6XelOOoOyF4ibYIZAoGGxWyiTH+bwT+8utYr69zq4rxGEeTij+AwjjdK12rWOZ8TDbGBXPDAdVMicue5V++wu6h8uCsH1mp28c5lLgxn4ufjY7UoLUMOp1Fm2vSna56nmSi5Ki/DzBcMrjTH1AklnE97NOD4ZnrWHjEKhkgx8ly1EdQWv/Jalkb5np1F3wwk+kiR+JdJXmBUttQtQ2s9MMe+Z5fveGEO0C27F5/wZTJKoBLsOQJwojPsIPaM5Lg+5ERvaoYgV+0HP120PBUuItsQLYE5OfFFGwbMRb/v5XJUutJw5wFvOUuMgAD4IbnImdp9VMjKhrgguNCIcCyh/LfkLHUWdLERglHdLE8eR5ORMgUmOA6oQ0G6FutoDIX9rZ2H+an5QBdUotT1YXYIY1nn76uQsRynJHNf0rxjbQwRMIyv4LUXugpeog7SByRfngDZmP32JN7wiK9S4cs/TvR/AOAjVNMdAD5AA6aukhy19eQ/gaoM5SKOy4O4EzFLPb07Y8h6Fo7PGM4Bberppt4S/rKlA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(66476007)(38070700005)(508600001)(36756003)(4326008)(8676002)(38100700002)(122000001)(2616005)(186003)(2906002)(110136005)(66556008)(71200400001)(66946007)(5660300002)(6506007)(26005)(86362001)(107886003)(8936002)(6486002)(76116006)(91956017)(82960400001)(64756008)(316002)(66446008)(6512007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Tzc2SXVKejhLcmxUUmR1d2Fzd1pFWkxsWXJQcnVxa1R3U2wwZVZYUjJIZUtj?=
 =?utf-8?B?eXVwbHlQQjR2bzF3UW5zTW9GcTNTUmJZam5RTWNDdVdDL3Vockh2RnN0TFVs?=
 =?utf-8?B?K0t3ajQ3OURZVHRsTFhHZnNJUEdGRkNvWVhWQkE4a3UxVWE3YVM4RDZMcmps?=
 =?utf-8?B?b3MwdEc1ck1FMWlnRGU3NGNZTUw5cTFSNzBwUW42RnBMc3FjZE1meFBmZ1Vx?=
 =?utf-8?B?aFFwSU9YaUZKQ25hNDdGcXlKUHM4SVdQbUUvQzQ5MnA0Zmt6ZkQ1RmlqN3pk?=
 =?utf-8?B?c0xMeVdWbUNOUXhwVWpRTXJ0SGZlNWo3N1dUdzVwNUM5M2JWZHpvaXpveWwv?=
 =?utf-8?B?MzJtVktSM1AySitnMldHVkNtSUdQY3Irb0FhWDBwTUFFeGJMakJsWjVUS0Rh?=
 =?utf-8?B?dDBJeHBCTXpWNmZNaEZaL1NvYU1Bd0ZyejVhTjNtSHhPaVowY1BJUWtCdGY3?=
 =?utf-8?B?ZWVtNFk5VUxrajJyWmZaNjRrMjc0TXM3cjhjKzJtNm8yZHl3L3ltUlYrQzE4?=
 =?utf-8?B?Ylc5bW1OOEphSmJwNVkrVUhXYy95aUxHNThQTFp0YTUvZFZkTmh4Y0R0dnBo?=
 =?utf-8?B?ZHBxZnFrMktEYmdwNDA0T3p5QmgxL2dpbXdoMTVQbzkwdFJJL3lXaVlIbWFG?=
 =?utf-8?B?bzR1NzNWSkpMM0RPRWROOURoWWwxSmFMdXJEYnVtVTloWUY4aEVoWktXU29i?=
 =?utf-8?B?cFdZazB2QmZ0M0k1ckRyZkZvZjNZSFA3MTlVR2ZuT0Z4Uk1xOUlGb0VwQjVv?=
 =?utf-8?B?RDZ6L3A3d1RuZVVGWUZaR3YrSzdCTThRbXVxOGlIVDgxeCtUV081UWlkbngw?=
 =?utf-8?B?dUMxQ3BiSmxvOVVjNUZhelBnbVg2V2ppV1F2N2V6cU9iL3M4MG9RU1ErU2sx?=
 =?utf-8?B?Q1FZejArNWNMb01NQ2lwQWxFV1BJd1R5OEE2WERCN2xVWURUL1VhcHBRS1M0?=
 =?utf-8?B?UXhLQ2tucDZURXNXZm0wSjFXSnQyR3N4b1k4MVJqS0RiUGtVM1k4VHkrZjNk?=
 =?utf-8?B?ZzBKV2p3LzRRZHVxTU56amE4a0JTd2NyVlJpSWtjU0l6MThoaDg2dGMxanNr?=
 =?utf-8?B?cndjbmsxREVQa1JCTzFVcUkwTFpreWlYY2YzU0lwTkZCb2lOQS9WdUhaWmIr?=
 =?utf-8?B?bVJzZEVSRVlZZ2hxNTVjR1VXV2lGdXUvczRQZ2EzcXJOWnozbUcxaUdPSDRK?=
 =?utf-8?B?dmxISXhtOC9xSDAyWmRUUlIxRnNRQ3lsc1hlblB2MS9FQjZXL3dpTllPMHVO?=
 =?utf-8?B?bk9PSFhIeENoT3VyTzZOUkVwVFBQY004cXdNZ3hlaWlIT2N5cG82dC8yWUxT?=
 =?utf-8?B?RWpmSjc5SWdyNDU2VTZwM2w1ZU9tNDV3NEVHMlROdlE4YWtrWUNJUXg3SVJ3?=
 =?utf-8?B?Y00vYUF3MEdsNU9KQUlGQnFFd0FHaTk5ak14b2FpMmVtaEU2K0tsL253TzJx?=
 =?utf-8?B?OC9SZmZzMzNXSytUeXl3TzYreXdzemhIOTUzNGJkeG1sZEN4cVcyNy85Qlcr?=
 =?utf-8?B?ZVVka3ZFYm9NMUhnT29Tdy9Wc25BRzJEb3d3MlBtcVlZNE5YV1FSQnd4UUIx?=
 =?utf-8?B?ZzVHQmdZZUxDMFQ3cHBxVjYyVjFKazh4Um5NMnljNGJ2aVQxdS8vMlh0dmc0?=
 =?utf-8?B?Y1U1RHJEbHNxM0hPMEhYcFdSSlBkZkdGQ1dYV2c2M3dQQU9VUUZSa0U4TWFD?=
 =?utf-8?B?V2dYVjFSWVN0MFVsRGpvSU5HdW4xbU9DVmprNkNGSE82bDQ4RkZHYllFWnlm?=
 =?utf-8?B?czVFYTAvTWExc2gvUDFzcFRpNDhlZGhYbUdjcGp3Mmk1T0xBUjdmQXUyRktI?=
 =?utf-8?B?eTJ5endFUmMyUFQ0QW5qUGwzUVIvYUpGMWdpTVFIb3UxM3AyMmxrREkyZEZz?=
 =?utf-8?B?UEs1OHRNL2lzZ3U1NDh4Skl1V2FZOU12MTVvc0N6cU5mQTlqU21PeGcwRTdC?=
 =?utf-8?B?TGs5TUNlREZIaXA4YkVuTDlJUnFhbnR5RmFmdi9zdVJ4emczTTNEaklUMzli?=
 =?utf-8?B?K2lISWhwTHhNanZtZE1aaHc2dFBwQXNLY0EwOFhhbEY3SmhsUUkvTy9pd1pH?=
 =?utf-8?B?d3FrNWVJNlA3SmRnNEZSdnlOOVdZMHBMbEJYUzU1b0lxZFQ3dVYwUDlraG1z?=
 =?utf-8?B?ZEpZRkxoZldpWUFoUGtIODlVcld4bS80c3ZOTzBwMkxya2pVbjRmSExKeTdR?=
 =?utf-8?B?dzR4U01aRFFtTDVFeDdEME5wWjRzL1pMRlRaRHdoUVFKR1E0cHB0STRTNWds?=
 =?utf-8?Q?qkLcji0TBazVwua67a/MCbrhkJd1znKtlz+thBWHqU=3D?=
Content-ID: <D0E929A89226E140BAF9D8DD867B1589@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9ae81a5-f1c2-4d05-7b28-08d9df9b9bf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2022 00:42:47.8466 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nDghb6RedZobsUeED7Xy0QxaD/1G/Zwzv4Lgo63YvhAxw0boMy5bJ+CEhDn1EbLHu7Z9ko2ddCVo2shF0BovcrFfY2aQqKqMbdF+LwLDOEk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5016
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Fix incorrect use
 of assigning iavf_status to int
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
Cc: "brett.creeley@intel.com" <brett.creeley@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAyMDIyLTAxLTIxIGF0IDEwOjU1ICswMTAwLCBNYXRldXN6IFBhbGN6ZXdza2kgd3Jv
dGU6Cgo+IEBAIC02NSw1NSArOTgsMjggQEAgaW50IGlhdmZfc2VuZF9hcGlfdmVyKHN0cnVjdCBp
YXZmX2FkYXB0ZXIKPiAqYWRhcHRlcikKPiDCoCAqKi8KPiDCoGludCBpYXZmX3ZlcmlmeV9hcGlf
dmVyKHN0cnVjdCBpYXZmX2FkYXB0ZXIgKmFkYXB0ZXIpCj4gwqB7Cj4gLcKgwqDCoMKgwqDCoMKg
c3RydWN0IHZpcnRjaG5sX3ZlcnNpb25faW5mbyAqcGZfdnZpOwo+IC3CoMKgwqDCoMKgwqDCoHN0
cnVjdCBpYXZmX2h3ICpodyA9ICZhZGFwdGVyLT5odzsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0
IGlhdmZfYXJxX2V2ZW50X2luZm8gZXZlbnQ7Cj4gLcKgwqDCoMKgwqDCoMKgZW51bSB2aXJ0Y2hu
bF9vcHMgb3A7Cj4gLcKgwqDCoMKgwqDCoMKgZW51bSBpYXZmX3N0YXR1cyBlcnI7Cj4gK8KgwqDC
oMKgwqDCoMKgaW50IGVycjsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqBldmVudC5idWZfbGVuID0g
SUFWRl9NQVhfQVFfQlVGX1NJWkU7Cj4gLcKgwqDCoMKgwqDCoMKgZXZlbnQubXNnX2J1ZiA9IGt6
YWxsb2MoZXZlbnQuYnVmX2xlbiwgR0ZQX0tFUk5FTCk7Cj4gLcKgwqDCoMKgwqDCoMKgaWYgKCFl
dmVudC5tc2dfYnVmKSB7Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGVyciA9IC1F
Tk9NRU07Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gb3V0Owo+IC3CoMKg
wqDCoMKgwqDCoH0KPiAtCj4gLcKgwqDCoMKgwqDCoMKgd2hpbGUgKDEpIHsKPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgZXJyID0gaWF2Zl9jbGVhbl9hcnFfZWxlbWVudChodywgJmV2
ZW50LCBOVUxMKTsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogV2hlbiB0aGUg
QVEgaXMgZW1wdHksIGlhdmZfY2xlYW5fYXJxX2VsZW1lbnQgd2lsbAo+IHJldHVybgo+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBub256ZXJvIGFuZCB0aGlzIGxvb3Agd2lsbCB0
ZXJtaW5hdGUuCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoZXJyKQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ290byBvdXRfYWxsb2M7Cj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoG9wID0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIChlbnVtCj4gdmlydGNobmxfb3BzKWxlMzJfdG9fY3B1KGV2ZW50LmRlc2MuY29va2llX2hp
Z2gpOwo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAob3AgPT0gVklSVENITkxf
T1BfVkVSU0lPTikKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGJyZWFrOwo+IC3CoMKgwqDCoMKgwqDCoH0KPiArwqDCoMKgwqDCoMKgwqBldmVudC5tc2df
YnVmID0ga3phbGxvYyhJQVZGX01BWF9BUV9CVUZfU0laRSwgR0ZQX0tFUk5FTCk7Cj4gK8KgwqDC
oMKgwqDCoMKgaWYgKCFldmVudC5tc2dfYnVmKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqByZXR1cm4gLUVOT01FTTsKPiDCoAo+ICvCoMKgwqDCoMKgwqDCoGVyciA9IGlhdmZfcG9s
bF92aXJ0Y2hubF9tc2coJmFkYXB0ZXItPmh3LCAmZXZlbnQsCj4gVklSVENITkxfT1BfVkVSU0lP
Tik7CgpZb3UncmUgbWl4aW5nIGVycm9yIHR5cGVzLiBUaGlzIGVycm9yIGlzIHByb3BhZ2F0ZWQg
YXMgaWF2Zl9zdGF0dXMsCmhvd2V2ZXIsIG90aGVyIGZhaWx1ZXJzIGluIHRoaXMgZnVuY3Rpb24g
YXJlIHJldHVybmluZyBMaW51eCBlcnJvcgpjb2Rlcy4KClRoZSBmdW5jdGlvbnMgZm9sbG93aW5n
IHRoaXMgZG8gdGhpcyBhcyB3ZWxsLgoKPiArwqDCoMKgwqDCoMKgwqBpZiAoIWVycikgewo+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgdmlydGNobmxfdmVyc2lvbl9pbmZv
ICpwZl92dmkgPQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgKHN0cnVjdCB2aXJ0Y2hubF92ZXJzaW9uX2luZm8KPiAqKWV2ZW50Lm1zZ19idWY7Cj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFkYXB0ZXItPnBmX3ZlcnNpb24gPSAqcGZfdnZp
Owo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgZXJyID0gKGVudW0gaWF2Zl9zdGF0dXMpbGUzMl90b19j
cHUoZXZlbnQuZGVzYy5jb29raWVfbG93KTsKPiAtwqDCoMKgwqDCoMKgwqBpZiAoZXJyKQo+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIG91dF9hbGxvYzsKPiAtCj4gLcKgwqDC
oMKgwqDCoMKgaWYgKG9wICE9IFZJUlRDSE5MX09QX1ZFUlNJT04pIHsKPiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgZGV2X2luZm8oJmFkYXB0ZXItPnBkZXYtPmRldiwgIkludmFsaWQg
cmVwbHkgdHlwZSAlZAo+IGZyb20gUEZcbiIsCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBvcCk7Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGVyciA9IC1FSU87Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gb3V0X2Fs
bG9jOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAocGZfdnZpLT5tYWpvciA+
IFZJUlRDSE5MX1ZFUlNJT05fTUFKT1IgfHwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIChwZl92dmktPm1ham9yID09IFZJUlRDSE5MX1ZFUlNJT05fTUFKT1IgJiYKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGZfdnZpLT5taW5vciA+IFZJ
UlRDSE5MX1ZFUlNJT05fTUlOT1IpKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgZXJyID0gLUVJTzsKPiDCoMKgwqDCoMKgwqDCoMKgfQo+IMKgCj4gLcKg
wqDCoMKgwqDCoMKgcGZfdnZpID0gKHN0cnVjdCB2aXJ0Y2hubF92ZXJzaW9uX2luZm8gKilldmVu
dC5tc2dfYnVmOwo+IC3CoMKgwqDCoMKgwqDCoGFkYXB0ZXItPnBmX3ZlcnNpb24gPSAqcGZfdnZp
Owo+IC0KPiAtwqDCoMKgwqDCoMKgwqBpZiAoKHBmX3Z2aS0+bWFqb3IgPiBWSVJUQ0hOTF9WRVJT
SU9OX01BSk9SKSB8fAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoCAoKHBmX3Z2aS0+bWFqb3IgPT0g
VklSVENITkxfVkVSU0lPTl9NQUpPUikgJiYKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAocGZf
dnZpLT5taW5vciA+IFZJUlRDSE5MX1ZFUlNJT05fTUlOT1IpKSkKPiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgZXJyID0gLUVJTzsKPiAtCj4gLW91dF9hbGxvYzoKPiDCoMKgwqDCoMKg
wqDCoMKga2ZyZWUoZXZlbnQubXNnX2J1Zik7Cj4gLW91dDoKPiArCj4gwqDCoMKgwqDCoMKgwqDC
oHJldHVybiBlcnI7Cj4gwqB9Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
