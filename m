Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C3954C9DB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jun 2022 15:32:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBB3B41980;
	Wed, 15 Jun 2022 13:32:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RmtKQkgbKqgM; Wed, 15 Jun 2022 13:32:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D38EB41976;
	Wed, 15 Jun 2022 13:32:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4E17C1BF404
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 13:32:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 499E260FA3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 13:32:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ssQ5rMAPJDnV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jun 2022 13:32:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 12B1A60FA1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 13:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655299937; x=1686835937;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sY+4brG/9UApU+/Zn3TQ0hTSxVzC8oSMCYHShsR5M1Y=;
 b=LpVLMsbRPdHDTL4lrXaGISbC7PJ+UJNyMB6qg7wCy+KTeUf9ykScz2Y6
 yqnFu7tdwGrhdxlbaz4ayiQ9MsvzODs+funCpgepsDtrbFFXKyaSzKXId
 RtxQ69/9oHefYI0mMdsa9PyYKy9g9nyNupnkqjt2XYCntmopob/VkWeek
 4Qjryh13rDuP2A3CBxLI8Mt7Q0x3oMMOJdwb9T4exkRVXPkouZIsukk3/
 64Wyj3JZxBVJT9pGHtyCOSc2Ng7w5D8ceK6NcH43TF7ppDPmZ4CJveVHK
 +f2/mg1IsWoLW9lKuOr9hneB3oc63hKQenP8hE4YNerNeHpWZguYbQ5Bb A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="267649297"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="267649297"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 06:32:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="559105313"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 15 Jun 2022 06:32:16 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 15 Jun 2022 06:32:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 15 Jun 2022 06:32:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 15 Jun 2022 06:32:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 15 Jun 2022 06:32:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sp4Dvv8DMo4P2LZzy4RNCaUDKNTjHNcWGiQCq3CjEa8CNoDfOAS4E4S7YnzZtoVYg2sbXAj132Ik0ECaEIrq/ZvRE+GjwjL94xcdMWXxMlGO9JIRWUYJRni0E3YfNzK8NrUwrl/fXzEPiwfqYuwmX12mXKEjbfBBOo3SpBd82wG06Dpz0t8srmS211/LLfuuC3lrN+AV6a7cxNw+e9lA2jiUBDT5Vbmt8Igs8132SD0CybUTV51fVbMfejcBEXbLpuCkORd4jCV4UROt+jOfhX3Mx4eMy4b4EGxVRkm22vIUbrtP0vMYVBhOzADWKdihBqgUA6VW3NQxu+aMSgd40g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sY+4brG/9UApU+/Zn3TQ0hTSxVzC8oSMCYHShsR5M1Y=;
 b=bN7z7UkmBI7/Vu0FntCfL3IRSetsOpM01/TkxxaxyHRTqQQu3DFNM1+z+F898a2t0cQ5BLoQLdnj7hHdwNWwbZvsc4y2LcMRCUEptD2UknqjfN1/ELYxRXK/DTL/oucW7o2C+WB3nznLj2sSnGBpQ9YOZdbIsi4CckYczo9gpwAB9EMnN8uAeCgV6M+JzJeNXhVr2TvguBPf+6oa4G2vWVXMJmyAvXj1VTUt+Ry7HPiaxe1apJXIQxUi9acTTvBTXm3Nn5y1ZckqX5L0+9SGHDkvcuAqbEDOaZF31B2hFJXkJDOozLEOyxAaIHEzUo+srwyFteIJbm7+VIcpLykLxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB2733.namprd11.prod.outlook.com (2603:10b6:805:58::22)
 by DM5PR11MB1372.namprd11.prod.outlook.com (2603:10b6:3:11::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.14; Wed, 15 Jun
 2022 13:32:11 +0000
Received: from SN6PR11MB2733.namprd11.prod.outlook.com
 ([fe80::6d6c:33b5:6380:ac81]) by SN6PR11MB2733.namprd11.prod.outlook.com
 ([fe80::6d6c:33b5:6380:ac81%4]) with mapi id 15.20.5332.022; Wed, 15 Jun 2022
 13:32:10 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "Patynowski, PrzemyslawX"
 <przemyslawx.patynowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix 'tc qdisc show' list
 too many queues
Thread-Index: AQHYgJKlhHnXFA5BSkW/bncbOEIpXK1QMC+AgAABFgCAAEYOgA==
Date: Wed, 15 Jun 2022 13:32:10 +0000
Message-ID: <SN6PR11MB2733E1EF696BEE9BCCA52281F0AD9@SN6PR11MB2733.namprd11.prod.outlook.com>
References: <20220615083354.3181885-1-jedrzej.jagielski@intel.com>
 <6e59c707-ae30-9471-5669-8fce6f58a7a7@molgen.mpg.de>
 <ae964f94-405a-312c-8db2-a742bb6702f3@molgen.mpg.de>
In-Reply-To: <ae964f94-405a-312c-8db2-a742bb6702f3@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d99e3ca-277d-4237-c166-08da4ed3733a
x-ms-traffictypediagnostic: DM5PR11MB1372:EE_
x-microsoft-antispam-prvs: <DM5PR11MB1372B38749D9D3AB6BA94819F0AD9@DM5PR11MB1372.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Z4TD6UYFNGk2RHxGtSvaZaUjidIz+bpWh+rQdsPYfiu6vqI6Vi4KfNK82Sbuqa9HCBJRtJ/eAnjyOwrguKb5NTkp+EH7+LyJ1yA6l3oSddm30IuE8up8hqI7rvY4f8wWyOJA8s9LozcL0aSpzydlTVUeNLQav/H9LoCSsZik4X/dC7nJN4cM63fu5E5lsKAe8xu+ie+7BbTKtqKhVFsxIYC8E8vnTBsePSJwMUQSSod6Lxd7sVliFVomtkVsEar8IcprUJvZQkk8Ut6SdzyZ4iyBfSqig9CBu9Iq5SqtHuhnYcSl0V1DBAKav6Fg4IQ83repNBfZn1gJ9Cubedn4QGzrDd0EjTs/wx99XXq625dejoyQ4j9oFtpdiobujt9MoDhblbng5pnSDy97+N65sDDSCr15ABvZtWh7W3NhIYxDajm4xOx/GFVmDJLzSpWkVs0bhAeQ/YO2fQZl1hvZkKd8NsOtvZ20OFY0nDD8WQ1LS0YDzKK00qKk4THPJbPNJEPsgaHFKzWa08sdMzffWuMcR2z3zzE6O9iE8oyHFp+BahXzaXgzCzMxfBka7XFbdipuBqqEMk4RF3oZkRxaCX26Z6uVR1VZUKMXjiNZcml7/GmsLO8HwLD7rA2N6le/4FgoEKyL0ld4DRZoyYdgzdCI/tg8zKEaoj38hHu2JOeC+aPn5YkGqRmYBodeO0iEbbZeJftuODeBtO+sEKfAfQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2733.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(38100700002)(86362001)(5660300002)(52536014)(508600001)(122000001)(8936002)(82960400001)(6636002)(71200400001)(76116006)(4326008)(66946007)(66446008)(66476007)(8676002)(316002)(66556008)(64756008)(38070700005)(110136005)(33656002)(83380400001)(2906002)(26005)(6506007)(9686003)(186003)(7696005)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d1R0M1JsaHBoYzJOWGVxVzY4eVQxOVVRWk1Fa0x4Ump1M0NZbHNCQXFvaEh5?=
 =?utf-8?B?MVY2S0d6OVdwcDRPcEVWYWhrdVFoK0RRU3BNRTlLQXZTWk5qZ2pGem1pQUt5?=
 =?utf-8?B?VmJpSEZkVi8rZEdMQ2NNamZHVGFYeE8rU3RSQmVRTmRHdGpKdnhaZXpVbzZj?=
 =?utf-8?B?MGp1ci9wWTlOTEZsclIwT0xjZEdlaVB0WGNId29DcjIrSGxtSzFZdUtNQnpz?=
 =?utf-8?B?dlBmSGV4Tnc4MVAzRncraFM0MURRMkJnaWlNazc2cFdOL1NiY2NqOUZsd0Jl?=
 =?utf-8?B?RVBWWkUvNENYS2hGMjFxNEJ5eG9hUVBMSm9IakQ0d3RCMlJpQ3htend3Yk1D?=
 =?utf-8?B?VE5SUDhxVjJabDZacWhXVHR0Z3QvbnFTNUFNYmZLTlZXQml3aXE5NEt6cjRL?=
 =?utf-8?B?L1hvTEFkUmttcnRWQkgza08vQ0ZRL3pzR3Znc01zcW9WVDVGcTNKVzBKU05r?=
 =?utf-8?B?OHJSTytFbWNKV3k2d3ZHMEp3bSs1MGFwVHB0L044SzlkcGZORTlXQzZWUUhp?=
 =?utf-8?B?emtSTFZkUzAzMFdhQllmK0xDOEtvSi82WGFTQjJLM0RNN2NKYVJwbDhWd216?=
 =?utf-8?B?OU9neEpJSHpBYlRKMGFTOWdJMjZ5OGVlTEkxVzNSRlc3a3JJR2dDNmZTbTh2?=
 =?utf-8?B?QzFtNUJnRk9qcnA5Z1hLdW96dGtkV1FDVUxrSGNCMk1FS2dMRjJFK2RtK3Vq?=
 =?utf-8?B?YXdZQ1Z0aFlwTHZtOWZEelpuelFhUlRHYkFralpzVVpqYy9SdTh0cy90S0ow?=
 =?utf-8?B?MjVaYlcxZENRSkxPWFZSYW90U0tLaEE2alJWMzgvalhGOEN1cUlsRzJiVGRj?=
 =?utf-8?B?SHVQdTNYbldiNEdUWXkyRmdLZVhmMjdUNHcxOVQvdXRCZ2RsVnJENDJUMDhF?=
 =?utf-8?B?Q1AzMnJNdFNuVjhoV2tsSWMxcGhEVW5sczc0R1lyZDk5YWJweGVFNm12bkZ5?=
 =?utf-8?B?NG9aLzcycVp6U21yN0cvRzM1NUNjUDhRdXEwbVlNckpXaitZaldjYStlaFh2?=
 =?utf-8?B?aFdFN2FieEswYzFRQ2t1a0NqWS8zRzI3WXhCQ3RBQ3lnSS8vS1V3OTNkc1BT?=
 =?utf-8?B?MEQvUFRvSlFVSlBTcW43ZXcrRnkrY2YxYXBrNmVWS3RQeHUyRTFibGV3bzli?=
 =?utf-8?B?bzBiYnM1ajhXMVpRSmx5WmZKQVoxMVB3a1lmeS9jWFN3VDBoSllSaGdPU1Mz?=
 =?utf-8?B?RFk4eU5laHFSY0lhSXh3QzlYeEthTW4vQ0Z6QUdGNUc0V1F2RFhRZDF2YWFP?=
 =?utf-8?B?UWNHQlpMczZHd3hRV3VTK3VRUzRlOHdYdmMySEd3YnBVZkF6cjBySGtvSVdP?=
 =?utf-8?B?NzZVRDVlamRXQU9PazRYMEtCQndibmdwU1Erc3JTMm5yRFNjcjFhV2VyWUll?=
 =?utf-8?B?d1VYMkVpWXBHdG1xWjB3QlJoV2Rtd2ZsL2ZpTHRaVFY0bWV6eUluMmdTYXpn?=
 =?utf-8?B?SjMrU3hoa2Jab0JGcFhTSlVNYnlObGIydHdMM0hDeWdmNlNzN1FLM2VwYlVG?=
 =?utf-8?B?Z2hkaURQMGtabUtQN1J1Vmd4aFFtcHpuZ2toWVNRcktubUNCQzErMmtNdERZ?=
 =?utf-8?B?V2NqQnNTbjA5b05aWXB2b1dEMnZiUnNoUGViTysyd2c5NWFUWVd3MzkrK1RD?=
 =?utf-8?B?VUsySDdLQUVPdWVkUU5Fa25aTTErbXY5YjVDalhpT2NDa0tuaGxkOEF6S25H?=
 =?utf-8?B?bzZKcXBnYmkvSUtjUThvUXJidDJienVLd2RFMHhadG5wK0wxMUZKaUk3Z1pL?=
 =?utf-8?B?VVFRVVkwTU1jYWk4TzFzNXdKczNhdGVsQW92REpWMlZnZXUzYnhERDJiOXo4?=
 =?utf-8?B?TWhtb0Zidll2Q2U5WUdQL2Z0NmJLd2Y1dG9SRzZxaTRuWGlTYm0zbHRIY3Iw?=
 =?utf-8?B?Uk1KZmtWTU1JTUxLUHhIWkRYOXUrVUQyaXJGVWtFOTJ5WWRmczVMRUY5dWs4?=
 =?utf-8?B?Y0RKb3R2ZHNpWTg3WXB5U0syeVR6bUdzOHdmTk9HYjQ3ZUlPejkzQkhoY2g2?=
 =?utf-8?B?SG16RGRLbE92NElxd2FJL2ppVEhuek1kVG9MYS9idi9zYXBpYjdLbDNabW41?=
 =?utf-8?B?ZkFhR3JiWHpRVU5ESDRzelJjK2pldStRdlZmcnlLZ1hEcERoSEFTNnd5SXl4?=
 =?utf-8?B?NVg5eEJTanprRXYrU0UyVkZjc2F2bC9vK1JUVG02ellOUFlkRG9MU1ZnTXB6?=
 =?utf-8?B?ejVFRW51NFZ6OVpUZkJ6aW9BeTJQbnZPMjZlcWptVGoxVmg1S3IyOXIvOCtK?=
 =?utf-8?B?N0UrVklMd2ptdFJKWnJMZ0NFOW42cG1aTk5RdTI2dnpmTkk4QkJkZUNIaTdo?=
 =?utf-8?B?bEpDWUdUYWZNTVhwalhueitqMDh4ckdNWUcxUUFSKzRwaStwNGdIUT09?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d99e3ca-277d-4237-c166-08da4ed3733a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2022 13:32:10.4486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q3nRE3BilI3gJp7vpb+djWBsO+h05Mmjscn40GEfx4lqK57FGBfwm5nyjBXv80NbATFeh2N8Qwd/BG8KsPYQAs38OB/fwFPPcCBkbsWUnTA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1372
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix 'tc qdisc show' list
 too many queues
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG8gUGF1bCwNCg0KPkFtIDE1LjA2LjIyIHVtIDExOjE2IHNjaHJpZWIgUGF1bCBNZW56ZWw6
DQo+PiBEZWFyIEplZHJ6ZWosIGRlYXIgUHJ6ZW15c2xhdywNCj4+IA0KPj4gDQo+PiBBbSAxNS4w
Ni4yMiB1bSAxMDozMyBzY2hyaWViIEplZHJ6ZWogSmFnaWVsc2tpOg0KPj4+IEZyb206IFByemVt
eXNsYXcgUGF0eW5vd3NraSA8cHJ6ZW15c2xhd3gucGF0eW5vd3NraUBpbnRlbC5jb20+DQo+PiAN
Cj4+IEluIHRoZSBzdW1tYXJ5Og0KPj4gDQo+PiBzL2xpc3QvbGlzdGluZy8NCj4+IA0KPj4+IEZp
eCB0YyBxZGlzYyBzaG93IGRldiA8ZXRoWD4gcm9vdCBkaXNwbGF5aW5nIHRvbyBtYW55IGZxX2Nv
ZGVsDQo+Pj4gcWRpc2NzLg0KPj4+IHRjX21vZGlmeV9xZGlzYywgd2hpY2ggaXMgY2FsbGVyIG9m
IG5kb19zZXR1cF90YywgZXhwZWN0cw0KPj4+IGRyaXZlciB0byBjYWxsIG5ldGlmX3NldF9yZWFs
X251bV90eF9xdWV1ZXMsIHdoaWNoIHByZXBhcmVzDQo+Pj4gcWRpc2NzLg0KPj4+IFdpdGhvdXQg
dGhpcyBwYXRjaCwgZnFfY29kZWwgcWRpc2NzIHdvdWxkIG5vdCBiZSBhZGp1c3RlZCB0bw0KPj4+
IG51bWJlciBvZiBxdWV1ZXMgb24gVkYuDQo+PiANCj4+IFBsZWFzZSByZWZsb3cgZm9yIDc1IGNo
YXJhY3RlcnMgcGVyIGxpbmUuDQoNClN1cmUsIEkgd2lsbC4NCg0KPj4gDQo+Pj4gZS5nLjoNCj4+
PiB0YyBxZGlzYyBzaG93IGRldiA8ZXRoWD4NCj4+PiBxZGlzYyBtcSAwOiByb290DQo+Pj4gcWRp
c2MgZnFfY29kZWwgMDogcGFyZW50IDo0IGxpbWl0IDEwMjQwcCBmbG93cyAxMDI0IHF1YW50dW0g
MTUxNCB0YXJnZXQgNW1zIGludGVydmFsIDEwMG1zIG1lbW9yeV9saW1pdCAzMk1iIGVjbiBkcm9w
X2JhdGNoIDY0DQo+Pj4gcWRpc2MgZnFfY29kZWwgMDogcGFyZW50IDozIGxpbWl0IDEwMjQwcCBm
bG93cyAxMDI0IHF1YW50dW0gMTUxNCB0YXJnZXQgNW1zIGludGVydmFsIDEwMG1zIG1lbW9yeV9s
aW1pdCAzMk1iIGVjbiBkcm9wX2JhdGNoIDY0DQo+Pj4gcWRpc2MgZnFfY29kZWwgMDogcGFyZW50
IDoyIGxpbWl0IDEwMjQwcCBmbG93cyAxMDI0IHF1YW50dW0gMTUxNCB0YXJnZXQgNW1zIGludGVy
dmFsIDEwMG1zIG1lbW9yeV9saW1pdCAzMk1iIGVjbiBkcm9wX2JhdGNoIDY0DQo+Pj4gcWRpc2Mg
ZnFfY29kZWwgMDogcGFyZW50IDoxIGxpbWl0IDEwMjQwcCBmbG93cyAxMDI0IHF1YW50dW0gMTUx
NCB0YXJnZXQgNW1zIGludGVydmFsIDEwMG1zIG1lbW9yeV9saW1pdCAzMk1iIGVjbiBkcm9wX2Jh
dGNoIDY0DQo+Pj4gdGMgcWRpc2MgYWRkIGRldiA8ZXRoWD4gcm9vdCBtcXByaW8gbnVtX3RjIDIg
bWFwIDEgMCAwIDAgMCAwIDAgMCBxdWV1ZXMgMUAwIDFAMSBodyAxIG1vZGUgY2hhbm5lbCBzaGFw
ZXIgYndfcmxpbWl0IG1heF9yYXRlIDUwMDBNYml0IDE1ME1iaXQNCj4+PiB0YyBxZGlzYyBzaG93
IGRldiA8ZXRoWD4NCj4+PiBxZGlzYyBtcXByaW8gODAwMzogcm9vdCB0YyAyIG1hcCAxIDAgMCAw
IDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwDQo+Pj4gICAgICAgICAgICAgICBxdWV1ZXM6KDA6MCkg
KDE6MSkNCj4+PiAgICAgICAgICAgICAgIG1vZGU6Y2hhbm5lbA0KPj4+ICAgICAgICAgICAgICAg
c2hhcGVyOmJ3X3JsaW1pdCAgIG1heF9yYXRlOjVHYml0IDE1ME1iaXQNCj4+PiBxZGlzYyBmcV9j
b2RlbCAwOiBwYXJlbnQgODAwMzo0IGxpbWl0IDEwMjQwcCBmbG93cyAxMDI0IHF1YW50dW0gMTUx
NCB0YXJnZXQgNW1zIGludGVydmFsIDEwMG1zIG1lbW9yeV9saW1pdCAzMk1iIGVjbiBkcm9wX2Jh
dGNoIDY0DQo+Pj4gcWRpc2MgZnFfY29kZWwgMDogcGFyZW50IDgwMDM6MyBsaW1pdCAxMDI0MHAg
Zmxvd3MgMTAyNCBxdWFudHVtIDE1MTQgdGFyZ2V0IDVtcyBpbnRlcnZhbCAxMDBtcyBtZW1vcnlf
bGltaXQgMzJNYiBlY24gZHJvcF9iYXRjaCA2NA0KPj4+IHFkaXNjIGZxX2NvZGVsIDA6IHBhcmVu
dCA4MDAzOjIgbGltaXQgMTAyNDBwIGZsb3dzIDEwMjQgcXVhbnR1bSAxNTE0IHRhcmdldCA1bXMg
aW50ZXJ2YWwgMTAwbXMgbWVtb3J5X2xpbWl0IDMyTWIgZWNuIGRyb3BfYmF0Y2ggNjQNCj4+PiBx
ZGlzYyBmcV9jb2RlbCAwOiBwYXJlbnQgODAwMzoxIGxpbWl0IDEwMjQwcCBmbG93cyAxMDI0IHF1
YW50dW0gMTUxNCB0YXJnZXQgNW1zIGludGVydmFsIDEwMG1zIG1lbW9yeV9saW1pdCAzMk1iIGVj
biBkcm9wX2JhdGNoIDY0DQo+Pj4NCj4+PiBXaGlsZSBhZnRlciBmaXg6DQo+Pj4gdGMgcWRpc2Mg
YWRkIGRldiA8ZXRoWD4gcm9vdCBtcXByaW8gbnVtX3RjIDIgbWFwIDEgMCAwIDAgMCAwIDAgMCAN
Cj4+PiBxdWV1ZXMgMUAwIDFAMSBodyAxIG1vZGUgY2hhbm5lbCBzaGFwZXIgYndfcmxpbWl0IG1h
eF9yYXRlIDUwMDBNYml0IA0KPj4+IDE1ME1iaXQNCj4+PiB0YyBxZGlzYyBzaG93IGRldiA8ZXRo
WD4gI3Nob3VsZCBzaG93IDIsIHNob3dzIDQNCj4+PiBxZGlzYyBtcXByaW8gODAwNDogcm9vdCB0
YyAyIG1hcCAxIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwDQo+Pj4gICAgICAgICAgICAg
ICBxdWV1ZXM6KDA6MCkgKDE6MSkNCj4+PiAgICAgICAgICAgICAgIG1vZGU6Y2hhbm5lbA0KPj4+
ICAgICAgICAgICAgICAgc2hhcGVyOmJ3X3JsaW1pdCAgIG1heF9yYXRlOjVHYml0IDE1ME1iaXQN
Cj4+PiBxZGlzYyBmcV9jb2RlbCAwOiBwYXJlbnQgODAwNDoyIGxpbWl0IDEwMjQwcCBmbG93cyAx
MDI0IHF1YW50dW0gMTUxNCB0YXJnZXQgNW1zIGludGVydmFsIDEwMG1zIG1lbW9yeV9saW1pdCAz
Mk1iIGVjbiBkcm9wX2JhdGNoIDY0DQo+Pj4gcWRpc2MgZnFfY29kZWwgMDogcGFyZW50IDgwMDQ6
MSBsaW1pdCAxMDI0MHAgZmxvd3MgMTAyNCBxdWFudHVtIDE1MTQgdGFyZ2V0IDVtcyBpbnRlcnZh
bCAxMDBtcyBtZW1vcnlfbGltaXQgMzJNYiBlY24gZHJvcF9iYXRjaCA2NA0KPj4+DQo+Pj4gRml4
ZXM6IGQ1YjMzZDAyNDQ5NiAoImk0MGV2ZjogYWRkIG5kb19zZXR1cF90YyBjYWxsYmFjayB0byBp
NDBldmYiKQ0KPj4+IFNpZ25lZC1vZmYtYnk6IFByemVteXNsYXcgUGF0eW5vd3NraSA8cHJ6ZW15
c2xhd3gucGF0eW5vd3NraUBpbnRlbC5jb20+DQo+Pj4gU2lnbmVkLW9mZi1ieTogR3J6ZWdvcnog
U3pjenVyZWsgPGdyemVnb3J6eC5zemN6dXJla0BpbnRlbC5jb20+DQo+Pj4gU2lnbmVkLW9mZi1i
eTogS2lyYW4gUGF0aWwgPGtpcmFuLnBhdGlsQGludGVsLmNvbT4NCj4+PiBTaWduZWQtb2ZmLWJ5
OiBKZWRyemVqIEphZ2llbHNraSA8amVkcnplai5qYWdpZWxza2lAaW50ZWwuY29tPg0KPj4+IC0t
LQ0KPj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmLmggICAgICAgIHwg
IDUgKysrKysNCj4+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWlu
LmMgICB8IDIwICsrKysrKysrKysrKysrKysrKysNCj4+PiAgIC4uLi9uZXQvZXRoZXJuZXQvaW50
ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmMgICB8ICAxICsNCj4+PiAgIDMgZmlsZXMgY2hhbmdlZCwg
MjYgaW5zZXJ0aW9ucygrKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lhdmYvaWF2Zi5oIA0KPj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWF2Zi9pYXZmLmgNCj4+PiBpbmRleCA0OWFlZDNlNTA2YTYuLjA1Y2QyZGQ1YmQzNiAxMDA2NDQN
Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmYuaA0KPj4+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zi5oDQo+Pj4gQEAgLTQyNyw2
ICs0MjcsMTEgQEAgc3RydWN0IGlhdmZfYWRhcHRlciB7DQo+Pj4gICAgICAgLyogbG9jayB0byBw
cm90ZWN0IGFjY2VzcyB0byB0aGUgY2xvdWQgZmlsdGVyIGxpc3QgKi8NCj4+PiAgICAgICBzcGlu
bG9ja190IGNsb3VkX2ZpbHRlcl9saXN0X2xvY2s7DQo+Pj4gICAgICAgdTE2IG51bV9jbG91ZF9m
aWx0ZXJzOw0KPj4+ICsgICAgLyogc25hcHNob3Qgb2YgIm51bV9hY3RpdmVfcXVldWVzIiBiZWZv
cmUgc2V0dXBfdGMgZm9yIHFkaXNjIGFkZA0KPj4+ICsgICAgICogaXMgaW52b2tlZC4gVGhpcyBp
bmZvcm1hdGlvbiBpcyB1c2VmdWwgZHVyaW5nIHFkaXNjIGRlbCBmbG93LA0KPj4+ICsgICAgICog
dG8gcmVzdG9yZSBjb3JyZWN0IG51bWJlciBvZiBxdWV1ZXMNCj4+PiArICAgICAqLw0KPj4+ICsg
ICAgaW50IG9yaWdfbnVtX2FjdGl2ZV9xdWV1ZXM7DQo+Pj4gICAjZGVmaW5lIElBVkZfTUFYX0ZE
SVJfRklMVEVSUyAxMjggICAgLyogbWF4IGFsbG93ZWQgRmxvdyBEaXJlY3RvciANCj4+PiBmaWx0
ZXJzICovDQo+Pj4gICAgICAgdTE2IGZkaXJfYWN0aXZlX2ZsdHI7DQo+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMgDQo+Pj4gYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jDQo+Pj4gaW5kZXggZjNlY2Iz
YmNhMzNkLi5kMjIyMDA0M2ZkNDggMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYw0KPj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMNCj4+PiBAQCAtMzQxMSw2ICszNDExLDcgQEAgc3RhdGlj
IGludCBfX2lhdmZfc2V0dXBfdGMoc3RydWN0IG5ldF9kZXZpY2UgDQo+Pj4gKm5ldGRldiwgdm9p
ZCAqdHlwZV9kYXRhKQ0KPj4+ICAgICAgICAgICAgICAgbmV0aWZfdHhfZGlzYWJsZShuZXRkZXYp
Ow0KPj4+ICAgICAgICAgICAgICAgaWF2Zl9kZWxfYWxsX2Nsb3VkX2ZpbHRlcnMoYWRhcHRlcik7
DQo+Pj4gICAgICAgICAgICAgICBhZGFwdGVyLT5hcV9yZXF1aXJlZCA9IElBVkZfRkxBR19BUV9E
SVNBQkxFX0NIQU5ORUxTOw0KPj4+ICsgICAgICAgICAgICB0b3RhbF9xcHMgPSBhZGFwdGVyLT5v
cmlnX251bV9hY3RpdmVfcXVldWVzOw0KPj4+ICAgICAgICAgICAgICAgZ290byBleGl0Ow0KPj4+
ICAgICAgICAgICB9IGVsc2Ugew0KPj4+ICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+
Pj4gQEAgLTM0NTQsNyArMzQ1NSwyMCBAQCBzdGF0aWMgaW50IF9faWF2Zl9zZXR1cF90YyhzdHJ1
Y3QgbmV0X2RldmljZSAqbmV0ZGV2LCB2b2lkICp0eXBlX2RhdGEpDQo+Pj4gICAgICAgICAgICAg
ICAgICAgYWRhcHRlci0+Y2hfY29uZmlnLmNoX2luZm9baV0ub2Zmc2V0ID0gMDsNCj4+PiAgICAg
ICAgICAgICAgIH0NCj4+PiAgICAgICAgICAgfQ0KPj4+ICsNCj4+PiArICAgICAgICAvKiBUYWtl
IHNuYXBzaG90IG9mIG9yaWdpbmFsIGNvbmZpZyBzdWNoIGFzICJudW1fYWN0aXZlX3F1ZXVlcyIN
Cj4+PiArICAgICAgICAgKiBJdCBpcyB1c2VkIGxhdGVyIHdoZW4gZGVsZXRlIEFEUSBmbG93IGlz
IGV4ZXJjaXNlZCwgc28gdGhhdA0KPj4+ICsgICAgICAgICAqIG9uY2UgZGVsZXRlIEFEUSBmbG93
IGNvbXBsZXRlcywgVkYgc2hhbGwgZ28gYmFjayB0byBpdHMNCj4+PiArICAgICAgICAgKiBvcmln
aW5hbCBxdWV1ZSBjb25maWd1cmF0aW9uDQo+Pj4gKyAgICAgICAgICovDQo+Pj4gKw0KPj4+ICsg
ICAgICAgIGFkYXB0ZXItPm9yaWdfbnVtX2FjdGl2ZV9xdWV1ZXMgPSBhZGFwdGVyLT5udW1fYWN0
aXZlX3F1ZXVlczsNCj4+IA0KPj4gSXTigJlkIG1vdmUgdGhlIGJsYW5rIGxpbmUgYmVsb3cuDQo+
PiANCj4+PiArICAgICAgICAvKiBTdG9yZSBxdWV1ZSBpbmZvIGJhc2VkIG9uIFRDIHNvIHRoYXQs
IFZGIGdldHMgY29uZmlndXJlZA0KPj4gDQo+PiBSZW1vdmUgdGhlIGNvbW1hPw0KDQpTdXJlLg0K
DQo+PiANCj4+PiArICAgICAgICAgKiB3aXRoIGNvcnJlY3QgbnVtYmVyIG9mIHF1ZXVlcyB3aGVu
IFZGIGNvbXBsZXRlcyBBRFEgY29uZmlnDQo+Pj4gKyAgICAgICAgICogZmxvdw0KPj4+ICsgICAg
ICAgICAqLw0KPj4+ICAgICAgICAgICBhZGFwdGVyLT5jaF9jb25maWcudG90YWxfcXBzID0gdG90
YWxfcXBzOw0KPj4+ICsNCj4+PiAgICAgICAgICAgbmV0aWZfdHhfc3RvcF9hbGxfcXVldWVzKG5l
dGRldik7DQo+Pj4gICAgICAgICAgIG5ldGlmX3R4X2Rpc2FibGUobmV0ZGV2KTsNCj4+PiAgICAg
ICAgICAgYWRhcHRlci0+YXFfcmVxdWlyZWQgfD0gSUFWRl9GTEFHX0FRX0VOQUJMRV9DSEFOTkVM
UzsNCj4+PiBAQCAtMzQ3MSw2ICszNDg1LDEyIEBAIHN0YXRpYyBpbnQgX19pYXZmX3NldHVwX3Rj
KHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYsIHZvaWQgKnR5cGVfZGF0YSkNCj4+PiAgICAgICAg
ICAgfQ0KPj4+ICAgICAgIH0NCj4+PiAgIGV4aXQ6DQo+Pj4gKyAgICBpZiAodGVzdF9iaXQoX19J
QVZGX0lOX1JFTU9WRV9UQVNLLCAmYWRhcHRlci0+Y3JpdF9zZWN0aW9uKSkNCj4+PiArICAgICAg
ICByZXR1cm4gMDsNCj4+PiArDQo+Pj4gKyAgICBuZXRpZl9zZXRfcmVhbF9udW1fcnhfcXVldWVz
KG5ldGRldiwgdG90YWxfcXBzKTsNCj4+PiArICAgIG5ldGlmX3NldF9yZWFsX251bV90eF9xdWV1
ZXMobmV0ZGV2LCB0b3RhbF9xcHMpOw0KPj4+ICsNCj4+PiAgICAgICByZXR1cm4gcmV0Ow0KPj4+
ICAgfQ0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lh
dmZfdmlydGNobmwuYyANCj4+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2
Zl92aXJ0Y2hubC5jDQo+Pj4gaW5kZXggNzgyNDUwZDVjMTJmLi44ZDVmMWQ1YjQ5Y2QgMTAwNjQ0
DQo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5s
LmMNCj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNo
bmwuYw0KPj4+IEBAIC0xOTIwLDYgKzE5MjAsNyBAQCB2b2lkIGlhdmZfdmlydGNobmxfY29tcGxl
dGlvbihzdHJ1Y3QgDQo+Pj4gaWF2Zl9hZGFwdGVyICphZGFwdGVyLA0KPj4+ICAgICAgICAgICB9
DQo+Pj4gICAgICAgICAgIHJldHVybjsNCj4+PiAgICAgICB9DQo+Pj4gKw0KPj4gDQo+PiBVbnJl
bGF0ZWQuDQoNCk9oIEkgZGlkbid0IG5vdGljZSB0aGF0LiBUaGFua3MgZm9yIHBvaW50aW5nIGl0
IG91dC4NCg0KPj4gDQo+Pj4gICAgICAgaWYgKHZfcmV0dmFsKSB7DQo+Pj4gICAgICAgICAgIHN3
aXRjaCAodl9vcGNvZGUpIHsNCj4+PiAgICAgICAgICAgY2FzZSBWSVJUQ0hOTF9PUF9BRERfVkxB
TjoNCj4+IA0KPj4gDQo+PiBLaW5kIHJlZ2FyZHMsDQo+PiANCj4+IFBhdWwNCg0KVGhhbmtzIGZv
ciBzdWdnZXN0aW9ucy4NCg0KQmVzdCBSZWdhcmRzLA0KSmVkcnplag0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
