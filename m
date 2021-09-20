Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C31EE4128C4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Sep 2021 00:21:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 158B582B97;
	Mon, 20 Sep 2021 22:21:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ofz_FcTMoFsB; Mon, 20 Sep 2021 22:21:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2446082B3E;
	Mon, 20 Sep 2021 22:21:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 07B841BF31A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 22:21:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0285A82B97
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 22:21:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u8OzaSFCMnlF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Sep 2021 22:21:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9976382B51
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 22:21:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="284256568"
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="284256568"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 15:21:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="652735448"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga005.jf.intel.com with ESMTP; 20 Sep 2021 15:21:05 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 20 Sep 2021 15:21:05 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 20 Sep 2021 15:21:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 20 Sep 2021 15:21:05 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 20 Sep 2021 15:21:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D2iII1PuhC0k43bCEThHjP1Akc5n39MHCSp4gZI6er/pLqyI0tMws4iekF/oGtONc7O1rACMqcb/C6jhL6ppUKaMnPAyadQO2UZIjcAEU9yiaCKTxDPHbgohCIMt4Oxy22bDealCfiKhok8mN3+3zheuwYCQ9QE4gEPjMXc4vqu7bXgKtfMsF9o7qSaSNvMOw3XxcWDBMxQuIvgVDismipxT86nv9+VZEnjXNZ3/Kew91pJ3G3OjOi+0fWE4et6sBKofxxTuFoctqDPwIMsAVojkLQj1JkPlp9LSPr7m9AFfWuUQShGTYAqcaPaBxwdTD0Yn6RUQ9jZhaYUFVu3VVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=oQwvpzB7d3ZrBUbhGo5xXcbmtsNpGu4LNfC4K55bEhY=;
 b=fQv311cCy1I1mrECt4FB5aA7PH7kij8KkeQzNHeNoyc/Hr6edj8BtuEwGkdYV8gXOd27aTFE0zs3UK+CaEQFkdQBbmTNHUeMk/FlaJGjgElp6cUUfQubioUiGfCl0APDRhKTnkFAkZvkmD1a1ydyw+jXPH6dyE0qIZQ7aOrwxKlaucAqUVsFBy1dHuF4Hv0lID7Amrn29Ac+h7Kl9895IQXSHvAJKEVrjclnf3qpYdbCIFUdChiXF2ncJkIi8X3B711MsGLE005Jk1vUKhxEjHHmQM9hxTAvA5WqF3qL61LvOcbT+NTad0mU1CNtw5xqpFQSjZoA1nMXX8vfd93Pzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oQwvpzB7d3ZrBUbhGo5xXcbmtsNpGu4LNfC4K55bEhY=;
 b=nZJxzmUmreisFyta0Df1X+si3JtjPKoOaRZ5lEuj4SBAHm0QMzpXqJBF3IxrDDX9/pN8ECLuPizL0y5bOIyVG+gmnWUPqMSlPpUOk5BNGwKqriqFVPE6hQvU00bBBdAcwQe3DOQPFS4+mklVp54fhPQGW7bzaGzaxZ/aUGsTcV4=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4826.namprd11.prod.outlook.com (2603:10b6:806:11c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Mon, 20 Sep
 2021 22:21:03 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4523.018; Mon, 20 Sep 2021
 22:21:03 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] iavf: Add support for
 50G/100G in AIM algorithm
Thread-Index: AQHXriMV0Y1hQl3ZQUK0zfD+0nFMy6utgHYA
Date: Mon, 20 Sep 2021 22:21:03 +0000
Message-ID: <f6facbbaada21e6e668fd2dd4c04a52f2546b6ec.camel@intel.com>
References: <20210920132539.24114-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210920132539.24114-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e16a13a8-9849-4f95-1a9a-08d97c84eef3
x-ms-traffictypediagnostic: SA2PR11MB4826:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4826F3D422E1AD3E6D77CA2DC6A09@SA2PR11MB4826.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZLA2MmeZfnsdyREn3ZVi5u5nTdwmIqM0c3T4MKOd4l/OFFaawODqEdPkUEfEU6n5z+kIyq6QLTHtk5ZDsv0ZByjo6Ulzf1W2B+jT/TIpHaqjqGOicTfHqUtA+GTAIQU0xoejRb3ynE2qK5TBYhRbgI9tvWpFsWDJJb3DLTY6bhAw1PvEF8u11OZDQgouu+DipOawC4PP63LmxGuJc58ns/ZxnlDv9t09COr4Z3a6Dl0u8EG0dRaURdLd4vN7CrGOQE9/wKmbcrEXLKjmAKZntQyACOkpi/JKrhrYrDgd7+M7StOU/9jHi/D8z6b4QfMqMKPCrtFBF5ogvz8eHqYMtDW0yL2foGwihuqGZeO5ufOiFbV/Uj7+2QwLEV+/bF2UM2ss5LGBRUPlFAs1ppNioKU8De/CZEE3yVWUzjaTlKcHKbLnyd/B0KOQA8P7Tjk8NACQboLNEaaRU9x2IEsf7xrVMZEDqPEKLGO3cMoY+2U75JCKNt7MIcDmAcTCmqvMc4Ui8tlFyj8gldPjs6TBqPSGNSICEaY4tI8STe6ichc+ncwrl96wtm1CWQkm5/PY226wTqwiHMsHLl0cSCqCCbaYjAbW6eoZaMv5lJJ5lC0P8o+oAyFlo0U/1F4ChXlzyRjSAsuJAdizXHY97yP/G0b25XuKAYmyUSTxpS4LrLgrYnyM6ehWG1nBABXOEKNlNLEvKmqG7m0HRw87ShPtjw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(66476007)(64756008)(2616005)(6512007)(26005)(316002)(122000001)(36756003)(66556008)(6506007)(66946007)(76116006)(6486002)(186003)(66446008)(91956017)(8936002)(8676002)(508600001)(71200400001)(38100700002)(2906002)(5660300002)(110136005)(83380400001)(38070700005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dHo0dkt5Q3d3NnB3bVR1Qk0zRlNJVHBDV0VKSzRKQk16RldPKzJLZ2tTSXN6?=
 =?utf-8?B?WEJlK3cvUDBzVGVxa2VqMUJKZzFWZ1JURUY2dTFrSzJqTVMwTFlYOXNwSjM4?=
 =?utf-8?B?UldiRkhYL0FGOWljWDd1dytrN2ZzOXlMNWthbjltTnN2SHlkMkNwaVA0N0VL?=
 =?utf-8?B?aUtHcHUwVy9VUFlPSGJkWGhDc3N5UVVKRkRlSEZkUVlabmNRekk4M1hQSnlE?=
 =?utf-8?B?MWJkY3c0bU1DVEZ4YWp6MVNCNmZFdWZITlRTUjhzcVhldDdZWjVoQlFYSS9O?=
 =?utf-8?B?WjRRMVgrWUFwaEFyNDA1SDVvS2Q4SEVVMW03QnJOTlN0VFFjeU5ieFQrOWVU?=
 =?utf-8?B?eURtalVza0lIemdyQXk1cC9RY3RBcXVkdFNMWjJRcUdRRXFXMkQ3L1BsWlp1?=
 =?utf-8?B?ZDQ3eDlzVzJZbnZwbFVjZ21CUll1ZHpveFlkUXlnL3liS2lmUHVOZVJHVHlj?=
 =?utf-8?B?SGx4YXFvYWlIbGRGZFRhVmxKOE14dU12aEVFL0x6d0Q3ZUxHdVl1QmdjSmhr?=
 =?utf-8?B?VklEVXNpRk5qU3JsWVNNOE5pc3VVaERqaE1sL3lGclM5bEtTdjJHek1aY3hL?=
 =?utf-8?B?UzVjYWVMTEhXNDJHSWVNQ05jYk9KbC8wMzdlU2ltUFI3bWhORjNWTFJxUENV?=
 =?utf-8?B?UGJ1Tyt2Z25Fd0hqZUtZc2dxaitVdzNidUFyR3FNSkVGcmMrYjNTSmhLWVpm?=
 =?utf-8?B?dnhDZm1URkw4RGJLOWZQWkFGZW4yUy9hQWhuSlhid0RXSWJhQUV5dC93QUlU?=
 =?utf-8?B?dFBYWTFjYldETFk3blY4M3N0THI0RlRicDdIVE9WVkVYM0dRWmxMdjJYS21Y?=
 =?utf-8?B?c282Y1YxcWFHOEg2ZFVRL0RGT0hNRVBwZ3pIeFVnc0lTL2FQRnNsL1NUVmhw?=
 =?utf-8?B?NFoyNk90VGdXZUo4eHhOUjUvUVNwSithdU1lWjFZb1JJUnBMZlpyVlM1dmFI?=
 =?utf-8?B?V0RHMXRnMUFKQXg2bkUrT3l1VTl3Tmpta2cwT1VCZDcvcXBiajdwMVZQKzNq?=
 =?utf-8?B?U0hrdFowU1o4M0MvU1lzdzJHTWFwejlkWWFLb00xd3RiOGs4dVlBek0yYU05?=
 =?utf-8?B?NWgwMWVTUG5uU1pjZU1hWk9xUEI0alhoT041dEdqTTZzaWlmdHErSUtscEt2?=
 =?utf-8?B?MzlNbVB2R3llZUZvNXlHeXB1bmw2SkRCRENXV0hNWllpM3B1S2FWWXJ1WjJL?=
 =?utf-8?B?NHlVaGYzUmM1a3I3ZFd3Y0lsZzFpRy9HWmVndEhVOW8zNEZXNzh1b1JOSklU?=
 =?utf-8?B?NTAzcDEyUVNZTkg1SzBtdEZkWU16TUltamVoUHM1WE9YYVg0a0xaSzFmVVkz?=
 =?utf-8?B?OVB0L2NCY2Y5SW9XT2JXSHNocG51eHZwWEpKckh0bWp1K0tVYUlxUDF4SWo2?=
 =?utf-8?B?eWk1OFZxNTRKYjhvQTd1ZHg3ZkNHQUphZHAyNjlDOTRBSk1UYzJqV1VVREVK?=
 =?utf-8?B?Q3lHUVlReTBVdm1DVi93QWNvaytDcWZMcVZYYWRUNzlVOXo0TWNDajFQRWRT?=
 =?utf-8?B?Qi81UVhOUDBVUjQ3TTM0NG1PSDYxYmQ2Q0JBRnNlYXc2eDZ6YVRSWlFxYWM1?=
 =?utf-8?B?V0tkZWhlRkNudVZwa2pwcE04Y2c2MEo0Q2NiNllSZW9Ka0hlVGFIOW5welRL?=
 =?utf-8?B?WHVhUmJzclpFVHhIRm51VTZKUnJtTmlpRE94d0RRMktkU0JURjA3T25yNzFz?=
 =?utf-8?B?cUtCVVBIemNnYXJEZndnNnhwakQrMmFRVkJJaU9zQ01iZ0ZuT0UraVlGVkY5?=
 =?utf-8?Q?mm7SI2O9uGxxLPSJzAkUn0VxDbRhL3VVW5hZpMW?=
Content-ID: <4E964F05AFA1154D9F756F285CC2B975@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e16a13a8-9849-4f95-1a9a-08d97c84eef3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2021 22:21:03.5383 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PAgeTZwt9i3U7TT9IBKijOSostHGuCc1ceoO4mmLp7HlpiP37VSSxe3g/+EjXHSFgfV+M7aLoeAqZl4hqTrt5Yr1At7NwbT4dPdSnN4NAOU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4826
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] iavf: Add support for
 50G/100G in AIM algorithm
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

On Mon, 2021-09-20 at 15:25 +0200, Mateusz Palczewski wrote:
> Advanced link speed support was added long back, but adding AIM
> support
> was missed. Adding AIM support for advanced link speed support
> allows the algorithm to take into account 50G/100G link speeds.
> Also, other previous speeds are taken into consideration when
> advanced
> link speeds are supported.
> 
> Signed-off-by: Brett Creeley brett.creeley@intel.com
> Signed-off-by: Mateusz Palczewski mateusz.palczewski@intel.com

Please run checkpatch before sending:

ERROR: Unrecognized email address: 'Brett Creeley 
brett.creeley@intel.com'
#12:
Signed-off-by: Brett Creeley brett.creeley@intel.com

ERROR: Unrecognized email address: 'Mateusz Palczewski 
mateusz.palczewski@intel.com'
#13:
Signed-off-by: Mateusz Palczewski mateusz.palczewski@intel.com

WARNING: please, no space before tabs
#39: FILE: drivers/net/ethernet/intel/iavf/iavf_txrx.c:378:
+#define IAVF_AIM_MULTIPLIER_50G ^I1280$

WARNING: please, no space before tabs
#40: FILE: drivers/net/ethernet/intel/iavf/iavf_txrx.c:379:
+#define IAVF_AIM_MULTIPLIER_40G ^I1024$

WARNING: please, no space before tabs
#41: FILE: drivers/net/ethernet/intel/iavf/iavf_txrx.c:380:
+#define IAVF_AIM_MULTIPLIER_20G ^I512$

WARNING: please, no space before tabs
#42: FILE: drivers/net/ethernet/intel/iavf/iavf_txrx.c:381:
+#define IAVF_AIM_MULTIPLIER_10G ^I256$

WARNING: please, no space before tabs
#43: FILE: drivers/net/ethernet/intel/iavf/iavf_txrx.c:382:
+#define IAVF_AIM_MULTIPLIER_1G  ^I32$

CHECK: Please use a blank line after function/struct/union/enum
declarations
#66: FILE: drivers/net/ethernet/intel/iavf/iavf_txrx.c:404:
+}
+<200b>

CHECK: Please use a blank line after function/struct/union/enum
declarations
#95: FILE: drivers/net/ethernet/intel/iavf/iavf_txrx.c:422:
+}
+<200b>


> ---
>  v2: Removed build issues

Are you building these patches? Issues still exist:

drivers/net/ethernet/intel/iavf/iavf_txrx.c:404:1: error: stray \342 in
program
 
 ^
drivers/net/ethernet/intel/iavf/iavf_txrx.c:404:2: error: stray \200 in
program
 
  ^
drivers/net/ethernet/intel/iavf/iavf_txrx.c:404:3: error: stray \213 in
program
 
   ^
drivers/net/ethernet/intel/iavf/iavf_txrx.c:422:1: error: stray \342 in
program
 
 ^
drivers/net/ethernet/intel/iavf/iavf_txrx.c:422:2: error: stray \200 in
program
 
  ^
drivers/net/ethernet/intel/iavf/iavf_txrx.c:422:3: error: stray \213 in
program


> ---
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c | 70 +++++++++++++++--
> ----
>  1 file changed, 51 insertions(+), 19 deletions(-)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
