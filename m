Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6880740BC5C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Sep 2021 01:52:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8B6460642;
	Tue, 14 Sep 2021 23:52:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sB3GqgxFWe1Y; Tue, 14 Sep 2021 23:52:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED241605F6;
	Tue, 14 Sep 2021 23:52:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A20431BF588
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:52:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8E935404DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:52:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0abFjPL0dhKe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Sep 2021 23:52:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3BAC5400B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:52:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="220284967"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="220284967"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 16:52:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="470512625"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 14 Sep 2021 16:52:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 16:52:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 16:52:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 14 Sep 2021 16:52:38 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 14 Sep 2021 16:52:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D9+VgC/Em0vdTQBAWj97tMjQqIkWC6i8W6vPVp14w+UVRD+jYFlKsAYYO5cgoK3UcgiHP8f3iVGB6cRIztp+bbXSG5gzLczQdOOtncladOPfOoYpfRKWt+fUJMDhNounTnrOr/JkkBEhIjKOVIj51uZMCGE3UO7a7fcbGzIRgJLUkcskfdZRGH352T3fHOHluURsyK6zTWfdquWxI0ocTFrSQCvwkSgz3mBpjd7VadSl7ABnOeNVUhx7/DDOKLAUX8wO593XT2Svc4jCp4jfEcEhAYm1i7d6NUNsuOFVZX9f1Z7mJFkFaALZ+VDZ0Mox1Oxz6mzD55qcnglqRI/yGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=rF8u4MQ4cGCM/Dc64DIG8LRO0lNwRXqhitDmV88Po4Y=;
 b=bL/VJH3kypHEtojri7flF1CsC05rZz7YYgryb52apXLMHlqRexUZkUOALpMyUUX+9/VXnp0a2RI+M/DyLxTDtKOOB6VrpI+QcfIlv7zMWUqBXliaYzG6oVniQNTO+U3SOfnfnI74AOLG2dZYU0j2rK++ztzA1HBOaK+FQaWEutFQUZ2+1KDPZHqRRpN7/RqU+YVNdfo/HX/yS+CEjedUymk1veZcS508zXsF5eNWJh4ntC2rX8EwuRIRASRf4axxnET7GiGj6rwPKwTp0ZFLqgsxHy8rDsvAtkmcHLJpDOgr3icxyQkEGl9/ls0W538CKyOuEf/6H2nu5eZ9OSBAKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rF8u4MQ4cGCM/Dc64DIG8LRO0lNwRXqhitDmV88Po4Y=;
 b=JA2mxGJwP1ebr5au6FUfzXneqVuGECAAt47v3Z1cWcBjNk2k/lk5Yb5PkeBCeSJKKSt/D0KAmzZf9LZXc0WxC0Dzm4Y6EKfT9AI4YoRhz6hktSlIU4FHBa82+3pKWIQrjUsxupTbXXvpgqiSudKIVS8Yg6hLzNCqdTuiJmwLEQM=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB5082.namprd11.prod.outlook.com (2603:10b6:806:115::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Tue, 14 Sep
 2021 23:52:36 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4500.019; Tue, 14 Sep 2021
 23:52:36 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] iavf: Fix displaying queue
 statistics shown by ethtool
Thread-Index: AQHXqHIML7NGY+Yzl0mahOFqGAJdBqukN2kA
Date: Tue, 14 Sep 2021 23:52:35 +0000
Message-ID: <b4e1e8002f22d8b8dd9437841274a7e2d3c9ee49.camel@intel.com>
References: <20210913073434.77748-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20210913073434.77748-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83d583fa-3728-4cf2-e048-08d977daba3b
x-ms-traffictypediagnostic: SA2PR11MB5082:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB50823D239B0EEDE7DC103C7AC6DA9@SA2PR11MB5082.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R2ti0C3slC9BpZRfOJA1gtWt6YIqTNnyUNOTqJiVpsNfXb+XioNLDuCFA/P/+qIj2zlaA10aWnJ5IuN8Stccm0AtlwaiMNwY0z3mRyHbu9p9nse3ae9cvH97Cl3LN6WwkbJ+ij9PH/9hxfxrDs26zTrIE++oahFCgu6ttj+3iNvnkuWQr9Z3ztdcey9AuPrT7wEG40FoHCwnCZXDaZLuaudjgjwH1a4VZAQ4PwcdTz8vL7OQ4ClDXw1bxUdJgq1R4JdKU/rj4CLawC0z7moZOiGJqJ6eBdbiLM5Czb9PlD3ejJjGHYJFCkRHUNbSFVJnSHhC4P6EWVKgplKh9I/DeK0/V3NHxJro5rJFEthsTGjiCR2vzx4S03Yex8eFoqytwv+PVZXNHD4ogwk64246VI3EKPfSHM1aiCokqUO2UwGsjK7SLWT2cAVb4hQ+MX9KMk7TBLTy/sYjTl53vaOmJ4ELghRBOV/PRbZn5/FilbTRSW82RBN897JCyTUz7l5z3vvtIdNYg9LbhsVsMYbFcCV8var2HX+985NNhpf95U8Q5pcUtZvj8dsD0QUMQdad4L9hHsyBXUDhf/jLFtEePWc9kRDxsW6CGFOGpmJs3SqGMlePD0XJR6dZMfKwKr0CedLaeIMxch7lKp8TYpbq+iLwE1u5WWfyOAQYzo+RB+qhiTiLAUNqLuVAp9rD9H/4MW/ZirzyEzrx6z/OoKCO0w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(346002)(136003)(396003)(366004)(316002)(86362001)(91956017)(110136005)(66946007)(2906002)(122000001)(107886003)(6512007)(6486002)(76116006)(8936002)(64756008)(66556008)(66476007)(83380400001)(478600001)(8676002)(38100700002)(4744005)(26005)(66446008)(4326008)(186003)(38070700005)(5660300002)(71200400001)(54906003)(36756003)(6506007)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K01nMGxMSnFXQWJ1TGlycTVqRmpzWlhzaWx0WXVzVkZQcmEvNkFadWY3Q29q?=
 =?utf-8?B?M1QxWWZ1YkRGL2tTV3FUcUVQUStjVjZwV0l2R2hrRzdYZTJVUjdrOENrdEsr?=
 =?utf-8?B?Wm5yTU1JKzVVZWpka1Fnai9uNzVteU9uZUlVeWQ5VElUQTUvTG1NalF2WWZo?=
 =?utf-8?B?R0VZYlNaak9PRG1hd1A1eGJIb2tNcFBjU1k5dHlxYm90QnlOMmxPVWwxcU1s?=
 =?utf-8?B?a1Nab2c3S2V0OTlHVUtmak5HVmREaFNDWXZUMTNrTSt0dUZGczZvcUtrT1h2?=
 =?utf-8?B?UUwzYnNQOHFnNjh1K3JXSVZmL05hckQ4eGVVU25kRkJqYkxvUGJZNGsrMHJa?=
 =?utf-8?B?cjRVcG9tUklhbWxzSHY1RXhIVnp1SXpiaWkxY2MxQ0lxL215OXVsRVdYSFJC?=
 =?utf-8?B?Unh0M0RPRCsxTGVrQk5XRldFc3l6bXRXWVBuTjVadERMWjY3UVZxTDZqTVZG?=
 =?utf-8?B?MTBUclhVc2VHUmNKMTd5WWZKeDFZVytWLzVDa1FrVUo3MTQwWThUMWxMc1Qy?=
 =?utf-8?B?RndFbThOVkFCMnBlcDlFaUtKLzBUYUNXb1Z2S0tOc25HL2NteSszM1RlUDRJ?=
 =?utf-8?B?bmF0UW8xbzlYZFh1ekxRYXBUbFVhN0dsMFdsbFBCVnFZNDRlZVJuQmpGTklo?=
 =?utf-8?B?aGVrcGlabnRwS2RpUll5ZnoyWUxYZGNCd2tVS2RaaEUyNUxiNmVlNExwTXBF?=
 =?utf-8?B?elY3Ukxod0UrUm9peGdHSWlEYlBiR3B4cEtVVXNneGhGUmlsR0ZIMU04QU9k?=
 =?utf-8?B?akdjWkgwWlZ0UVB0NHMrOFlIYUZRS1JwdXpBZG1MZXlHVVpmNmhuZXlTZm84?=
 =?utf-8?B?bktZSURUblRZRE53ZVRHWkhNVU8xazBDSHp5bEh0NkxNODgwM2R1MldPRFda?=
 =?utf-8?B?eml0ZExOSnpiOFdXSWtUVjArSHhqS0RydXMwNDBkajhlSHk2N0NPamE0UzJv?=
 =?utf-8?B?Sjdkc2pNRGV2UHppNlNDVzRTbzBhdUdvbVphVTNQNzR0VEdvdVJIY2k4eUcy?=
 =?utf-8?B?YWZiSG5xVTl6MHlqOWowQm9mY0doOXZydG1adCtCR3NteHkvQXhMQ2VQanZT?=
 =?utf-8?B?bVhreDhXZGZ2d0prbXI3NzB3L2R5d0psR1d0ckdMSE0rSTFTSS9kaDR0dFBY?=
 =?utf-8?B?T2VwNlgvUEl6VUw1OTdRd3Y1Q1REVk5vdWRMMkY2a2ozd0JZUDdvYVNaZEt3?=
 =?utf-8?B?eENyNkxSdFVod3ZPSFFZWFlQOHp0NEFyU05zd0FmYWxBTTZBSUgrWEVRZU1E?=
 =?utf-8?B?MWVNbU5KVlBUaFNscm43a2xsSENKZCt1ZDJMSXNQWEZyVU9URDZyczNoblhJ?=
 =?utf-8?B?aCtyQXYxM0xrbC9qMStjYkNVeDJVOEMweEltR0FaaVhpZmxPd21BU2RRMEht?=
 =?utf-8?B?N1diak1rdURGWERlbFV1SEI5VEZJWXdib243Ny82Um5mYVA0cXdVRm1lT1FV?=
 =?utf-8?B?K0hvT1hrakxIUkN5V3BydGVHTTNNRmNHd20rejVXNHRnRXdKQldqQWRNTjQv?=
 =?utf-8?B?ZS8xRVFyZlh5YU1CMlZKUmJKazNITlhZWlZMbXNHb1pkVXZsY3N4c1hueDlY?=
 =?utf-8?B?RHlsUlo5clJ1LzNqNndKQnpFYXJ2N3A0cldTYnkxVFc2SnZObzROTEM4eUh4?=
 =?utf-8?B?R3p2alUvVkpmZXI4ZHNFa0NMclBkMUE2Vm8wM2ZIaUhWTGM0WnA1a21HT0l3?=
 =?utf-8?B?RkxiUURLc3NncUxiaHJ1YXB2VEsvMnRVK0x2RjZ5WkdQb3o0WXFOOFVrdUpS?=
 =?utf-8?B?Z3QyZ051RHlJSm5HMGZFVEd0bTVsSnA0R2pYR2RzNXdtR2dpUlRTbGdSQjRZ?=
 =?utf-8?B?QVRJc21KcFd3NWhYbUlPUT09?=
Content-ID: <30EFDE2437C68746A2C4E03388ECA93B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83d583fa-3728-4cf2-e048-08d977daba3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2021 23:52:35.9478 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sx4YctcCdcXwRnEEenNqUY/zLTSrVK6fmEZIgpmOcZW5IiiV28H3aBsxkvBKQ9fMqfZB4fwKkR0QVz7cZ4WUCRT7qSZmvgqzMarS1pp8WCI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5082
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] iavf: Fix displaying queue
 statistics shown by ethtool
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>, "Patynowski,
 PrzemyslawX" <przemyslawx.patynowski@intel.com>,
 "witoldx.fijalkowski@intel.com" <witoldx.fijalkowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2021-09-13 at 07:34 +0000, Jedrzej Jagielski wrote:
> Driver provided too many lines as an output to ethtool -S command.
> Return actual length of string set of ethtool stats. Instead of
> predefined
> maximal value use the actual value on netdev, iterate over active
> queues.
> Without this patch, ethtool -S report would produce additional
> erroneous lines.
> 
> Without this change in statistics after showing them by ethtool -S
> will be displayed queues that are not configured.
> 
> Fixes: 6dba41cd02fc ("i40evf: update ethtool stats code and use
> helper functions")
> Signed-off-by: Witold Fijalkowski <witoldx.fijalkowski@intel.com>
> Signed-off-by: Przemyslaw Patynowski <
> przemyslawx.patynowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---

Please include a changelog

>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 31 ++++++++++++-----
> --
>  1 file changed, 20 insertions(+), 11 deletions(-)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
