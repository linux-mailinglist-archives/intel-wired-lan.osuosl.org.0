Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DED795470F7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Jun 2022 03:27:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E41BA843D1;
	Sat, 11 Jun 2022 01:27:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id guvHNNtgtPJR; Sat, 11 Jun 2022 01:27:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE60C84100;
	Sat, 11 Jun 2022 01:27:41 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7451A1BF29D
 for <intel-wired-lan@osuosl.org>; Sat, 11 Jun 2022 01:27:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6236484100
 for <intel-wired-lan@osuosl.org>; Sat, 11 Jun 2022 01:27:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jz8S2UmXBTWP for <intel-wired-lan@osuosl.org>;
 Sat, 11 Jun 2022 01:27:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 944AE84010
 for <intel-wired-lan@osuosl.org>; Sat, 11 Jun 2022 01:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654910854; x=1686446854;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dqFUEFb2zw/iNIQFPwbTWzNPKdO7I2BWXrzcD4yA0Nw=;
 b=ACS3PBamX8ShMYb3yDf+cuglXCK76HbyALFTCCXuCwxP6hEs2kw4+Ea8
 EnHmMf8V09Bzoc07pKAuoUdUI9NmP9jeErXdB0XLO3lWI/nELL/9yyw+L
 kxFKaFHHU16smCy/tgZkBmyZc6cnzs/nTvOU2aIloGPiyy9YHBFy2gpHL
 dlysZOhqre+ND7Whi0gxA2gXKEBBBNm8LF9GLkseB0WBPvDFd7zpOy2yG
 GV4ewFtwZgJlkvlSY6I9lXAZRXlkcKuXsaE1vQJl2kLy6ZjHwvLvp2Pqd
 7fdn2xj1VPevbGJNbfxd4pZd/fEIlMMGZElNcLL5UQXuvxkpohbqRRrD6 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10374"; a="275329366"
X-IronPort-AV: E=Sophos;i="5.91,292,1647327600"; d="scan'208";a="275329366"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 18:27:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,292,1647327600"; d="scan'208";a="760764897"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 10 Jun 2022 18:27:33 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 10 Jun 2022 18:27:32 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 10 Jun 2022 18:27:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 10 Jun 2022 18:27:32 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 10 Jun 2022 18:27:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C4XGft+8PA6k/+FVj5nYFVamovCs9FuCokxxBtATOHVuX1AoTlYb23vBl2mI8seAA6e7kly/Bgyw8gsle+W8UimDxuVERn4x9kfNo21cX1m01cTgsYqsU7NkXdNyEeRk3SOQgAzZjdkdJr4fj+kLjtRiEvSVA777XcqRFjUG+f1ZSotR04MWLZF8KE8y+3/i4XWBbP6zTDk4uEl0JqNh+ctXx9F5Y55kCxQ7qFCb9ab4t5pYl+MWxmStsPlWIOvmTGHNEqVbAMOkzZZJYkO8pkSAMgZLGBz8gus30oBW0EBCEX6XwgLezFIrF5nJtQHeg2P09heHVnSwfOAzEMVG6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dqFUEFb2zw/iNIQFPwbTWzNPKdO7I2BWXrzcD4yA0Nw=;
 b=ZPEG9Y89DQNH+1uxbioBGnWEE1iysg+FVRsVjQ+RtP4EQdfDXa43mBwj55C3LAoR5cT5oHas2dlyWU0isNg3xpGsNb6uU5otq1CTvl1BQBDTbKUssyPItD5DUB7aknHXFKSbhjkYHxd54QAdPJ1VZ0d8A35gzV0M3NDGO/4k5lphZ4ksZSHRgSNe4KfHxq3smJqIN11dgzJX3hf+S/BTaF+0FBu4qewsjcF9kQTN5DsUze8ASKgodIM/p1R5xASxga35s1UlQO0YwB6HXR3q0E/wdKUZTana9msQvA47euXUTaK15a9jL+3JdFYFQ3EiVLVt66rpoGxrS90nyHMcOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3518.namprd11.prod.outlook.com (2603:10b6:805:da::16)
 by CH0PR11MB5474.namprd11.prod.outlook.com (2603:10b6:610:d5::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.13; Sat, 11 Jun
 2022 01:27:31 +0000
Received: from SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::8557:61f1:559d:586f]) by SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::8557:61f1:559d:586f%6]) with mapi id 15.20.5332.013; Sat, 11 Jun 2022
 01:27:31 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: Sven Anders <sven.anders@anduras.de>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] Bonding problem on Intel X710 hardware
Thread-Index: AQHYb0UdYdr2Hc3NqEG2QM/hswtJCa0zQnKAgARZ5oCAC+4KgIAD7uxg
Date: Sat, 11 Jun 2022 01:27:31 +0000
Message-ID: <SN6PR11MB35187D9C1432AAB249FF8CCBEBA99@SN6PR11MB3518.namprd11.prod.outlook.com>
References: <a94b23d2-57a8-954f-9fae-246cf900be92@intel.com>
 <8d7813a5-c344-6225-dc1a-89a92e5cddb9@anduras.de>
 <eb729924-7c59-23fa-4847-bff376a98d2a@anduras.de>
In-Reply-To: <eb729924-7c59-23fa-4847-bff376a98d2a@anduras.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 81f921fe-c460-46e0-7a02-08da4b498de1
x-ms-traffictypediagnostic: CH0PR11MB5474:EE_
x-microsoft-antispam-prvs: <CH0PR11MB547420C5EC484E034FA9F40BEBA99@CH0PR11MB5474.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VnQK6ZeKHgRTB3FkaHYcsoi0h26OO08kKmezajnt9m0Q3E8EIo0ux7fYQGDcFs9ct47+wp0vTIrTyIg2dKsaTTM67PD3nDCr8llXDBUUi2Cz83Rwoj/MAmT9S4mF4lflB7nyjuzyGaprRwe6/k8amWD6ufRlEqtGuCheDAJen6zILzPwvo7NvjndOJj+vXkhBRlHiqyTbYf2dAagWTc9wRRaiw8S2SC68hx/cvN7n+a8ya1deCYbDc3rOZdnDwzmZaUhengBWpMansz3uI+xu+s2290wie6fMNg/dRlsgrUs3302/0fJHwZoJNxGh8l7dl8XlRq2F4PNYcSC19RMohNDLrC2a4KAnQ18n8fMYEhgHhBm63CVtisKa3V7aO3aKmonKAHuT72n6I24BOFBsbR4PAU0yB71MD54inyxhsMXVXwJsRNL9LIFEdpio6t1MDxKuvoTc909gTpCu+XuXABdNsqiu9a+F3lolJ3OFm5ZRuPKlisTn3Kg+cTdFH0hkPmGSYSUUDylmq2DcRbWs/sdiIB92MOGIf3RZM6Pw7u4hNJd/DjAW7vGSPeesz+jzgRy4u2GQRECIxbfIpiEhTd4cRYcbdX8EesKOflOo1IUBuph3TypNrAdSgXbEyyR9T5y9P6sY+8+T0aTh514dMG2NQ4F72nVTN/SojArGjqNwL/+zUamH744/K2HTUx9ni2MdextrLD+vuOiPV5hgHMq32PuOrSH5xu3jD0JQHKqBnZ7tlEHBa6r/ApZfh74c2qJWcfBTlg2fToy1rNDbAGGGDF0lpyCEIOlWcwPKiA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3518.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(2906002)(33656002)(82960400001)(9686003)(508600001)(26005)(38070700005)(122000001)(316002)(66446008)(66476007)(66556008)(110136005)(15974865002)(83380400001)(6506007)(76116006)(66946007)(71200400001)(64756008)(5660300002)(8676002)(8936002)(52536014)(186003)(38100700002)(86362001)(55016003)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q1FwZGg0SkxhbmdSbXozUVAwNjJVZ1BFQUFqSklXOFZJckE3Y3FMOVRBR1JU?=
 =?utf-8?B?anZ3QW8zSThjRlJmcnNwZG1hR1RqcVZTa0FjRjZ4enB3TnRROGtFNzYxVklN?=
 =?utf-8?B?OHgzOGhsd25UQjg1Q2tWdlovMVo1bjFLcW5uY0ZrQjZVdE8rRzJjRHFKYUdZ?=
 =?utf-8?B?Zjhka0RPWEtHYmJValRLRjVYNzlOZU1qcGxKTDJyM3J3MGlPWGZaRkFSNUxv?=
 =?utf-8?B?dEtnME9mN3V6Mkp2aU5FdzE3b1I1c2MrRWJYakphTFh6eU1wUUl5SERzSmEw?=
 =?utf-8?B?SEY0TjVRRHl5WDBkbGpxam1Td0lpNmFuWEgyVGlxMXNWcXFFR1JrQmlva3dz?=
 =?utf-8?B?dTVwMzBGZFI2VVVtSG94VnJVNXVHbTJEWVRqNkFqZ3YxejlxV3hKWEpQY3hs?=
 =?utf-8?B?dmNmVXFRa0hkbTRGdm51aVRxM0tJOE5ySVVlK3RoMkRYZlphTTAyc2kxNjc1?=
 =?utf-8?B?Qmdsamx4SzdUVXNpUjNSTkt5QWphamdIYnVYZEoyRlUxMGJQYkx0cStLc2F0?=
 =?utf-8?B?cnhJM0N5aGwzRVgveEprRjUvTFR2WUxteGYvQWhiNDQzcTZici82Tytvclpr?=
 =?utf-8?B?M3dhc1pXWWVFVDdoZU1pL3BJaVNxUExqUzBIdThOa3VIcEZxYTVTakxPdjNr?=
 =?utf-8?B?Q1ZoYUVrcnllL2YwRGJrRE1scnRCMStnUTlnckpET25GYVdrd1c4NlZmZUhQ?=
 =?utf-8?B?SThjaUdGb2phMGpzdzQ3Y1k2VXpNQXFIUXNmUDRnaXV5ZFFMMWgxK0VzcHRi?=
 =?utf-8?B?blJ1SEhmaGJEN0hoWHVUcllsbG1BZFAwaGVKelo2aU9za0oyM0xWb0hwWnlI?=
 =?utf-8?B?UVJGelBCcSt3TlkrOVl0QklhL3ZMWTFXanpsYUt2cHBEcW82OWRjMHNtT1dn?=
 =?utf-8?B?M3Z1WU5WYis2bkZyejVaMFRDbzQ0WFdiUEZIQzN0VlpyamdqN292TFQxcFl3?=
 =?utf-8?B?MFA3RlVnSTdzNnZEc2xFRHIyT3dWcE9uQ2xUcWZjMTlKazI3aEVVanVWcExE?=
 =?utf-8?B?WC9CaEFrcnJ6dEZvaTZCYlNQQ1BEdUdPTEh6LzBNUW5GYW9GT3JtSm9GbWc0?=
 =?utf-8?B?Z29QOVBTbEp0Tkc4Z2RIZUcvVXh0U0FkcVNhdkx4WnRZTVo0MENiTE9sS0VP?=
 =?utf-8?B?a3VXVzE1MStnelRrQVF1aWNNTVhNdHg1Tm9QTTBxTTJDTVJjRDhyRFJleEdz?=
 =?utf-8?B?YXh0dHVmMXBKckhYWVNMVWRrcnFudjZjanRrVFdBRS9QM1hKcEhrNGdIT0U2?=
 =?utf-8?B?M01sMU1vRFI3YWpXa3l5dWg2N2pzK2xzNHg1M1JIU3ZWYkFoTHYwbW5DVk9q?=
 =?utf-8?B?S2NzQ1pLdzJ5NnoweEZlS2ZYK3dYSVJyOHNRcVM1M2xKV1dtUkE4RzVGNmRt?=
 =?utf-8?B?T1NUN2h4QWtRTWIvdnplbzloUTNEUlkvV0JFbmRlWnZtb0dIalZjSG5jL3Bx?=
 =?utf-8?B?aVZsaWVmdlF1RFIwaGNSVFpZOE5RT3NPczhyVjhYbmRVMXBqbkJjckRkL1Uw?=
 =?utf-8?B?WE8wWmkwM3RGRnRaY3RVOWNkb0dDdDR1bXMyK3ZIaWFOUjlwUUFPTGcybGZn?=
 =?utf-8?B?MG96KzVNZ3grOTdEenc0d0syS2xBbUY3Qm03ZjN0em8zalZDM3o3NGpySzFk?=
 =?utf-8?B?eTZLbnpXcXV6ejZVT3pvQWI2T1B3WnF5aTUzRlEySjFOa0orcHdMYUo4Y0Mx?=
 =?utf-8?B?b29iU3Y1ZVkvdTU4UHVxQ0hJYkNTbVVNcmI4aEFPcWU4WXl6dThHOE1UYkdm?=
 =?utf-8?B?VWJQbVFaa3JCR3g5dk1HejM5a2VzeTd2b1RSNW93WThYL3dpbFRhRERiYXlj?=
 =?utf-8?B?MndUV3FMVk5kVEtSYkRMdGpXWXl3MXYveWtkUk5aeEZ3Z1pIZ2pydjltTjA2?=
 =?utf-8?B?MVNqVlFHblU5NStISThPeGVNa0FySTIrS2pyMUZqWm1UUXpRQkJZUjQ5enVv?=
 =?utf-8?B?a1RvU015Z0lSR0JaODFyWS93RmJxMDJxNklkVUVXd296ZjZQL2phTW05TDJ3?=
 =?utf-8?B?S01pemhNeG1xZ2JQVVZNVytSL29GZS9iODJqbHdoZjhPam8zMmxBNlpEQTlD?=
 =?utf-8?B?V2RYeHJ5ekpHTU85ejVtMCtUSWM3TmV4S0pETitxZ3NWT21QcDk1clZPRVdm?=
 =?utf-8?B?Ri9MTlJrTHFUaFpDK3VRZmp1M3VyOHREQzRVaDVjU1BBK0dPUDJaVUp5Yi9i?=
 =?utf-8?B?REVWWnc5OFl5RUNZYlA5a1ExK2pQQkFOdFQ1dTZsa0ZvV2lESDVXV0xVN2lW?=
 =?utf-8?B?TjhFTWVWVjJnd1BnVzdkRFhkZTh3MTIzTlh2MzVwdXpiQ1c0L2NYRHVlMmcx?=
 =?utf-8?B?akkvTUxhSFhmTVl1QmdHWk50YUtBRDNmSzRFVFdWZ2ZKVzVpYXkyUT09?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3518.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81f921fe-c460-46e0-7a02-08da4b498de1
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2022 01:27:31.1250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MX5StoeoTodPN+JCDh8iCdiGRweQnJMTPoaM2Va+hXNz//VvEWcMX5dqPcPZZjcZdTAq8p+22hDIvjqKLq5fzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5474
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] Bonding problem on Intel X710 hardware
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRl
bC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj5TdmVuIEFuZGVy
cw0KPlNlbnQ6IE1vbmRheSwgSnVuZSA2LCAyMDIyIDExOjA1IFBNDQo+VG86IGludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnDQo+U3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIEJvbmRpbmcg
cHJvYmxlbSBvbiBJbnRlbCBYNzEwIGhhcmR3YXJlDQo+DQo+SGVsbG8hDQpIaSBTdmVuISAgTXkg
YXBvbG9naWVzIG9uIHRha2luZyBzbyBsb25nIHRvIHJlcGx5Lg0KPg0KPldhcyBhbnlib2R5IGFi
bGUgdG8gcmVwcm9kdWNlIHRoZSBwcm9ibGVtPw0KSSBoYXZlbid0IGJlZW4gYWJsZSB0byByZXBy
b2R1Y2UgeW91ciBpc3N1ZSB5ZXQsIGJ1dCB3aXRoIHlvdXIgZGVzY3JpcHRpb24gaXQgc291bmRz
IHRoYXQgdGhlIGlzc3VlIGNvdWxkIGJlIHJlbGF0ZWQgdG8gdGhlIFg3MTAgaGFyZHdhcmUgTExE
UCBlbmdpbmUgY29uc3VtaW5nIHRoZSBMTERQIHBhY2tldHMuICBUbyBkaXNhYmxlIHRoZSBoYXJk
d2FyZSBlbmdpbmUsIHVzZXIgdGhlIGZvbGxvd2luZyBjb21tYW5kIG9uIGVhY2ggb2YgdGhlIHBv
cnRzIHRoYXQgeW91J3JlIHVzaW5nIGluIHRoZSBib25kOg0KZXRodG9vbCAtLXNldC1wcml2LWZs
YWdzIDxpbnRlcmZhY2UgbmFtZT4gZGlzYWJsZS1mdy1sbGRwIG9uDQoNClRoZW4gdGhlIExMRFAg
cGFja2V0cyB0aGF0IHRoZSBib25kaW5nIG1vZHVsZXMgcmVsaWVzIG9uIHdpbGwgYmUgZm9yd2Fy
ZGVkIGJ5IHRoZSBoYXJkd2FyZSB0byB0aGUgT1MgbmV0d29yayBzdGFjay4NCg0KSSBob3BlIHlv
dSBoYXZlIGEgZ3JlYXQgd2Vla2VuZCENCkRhdmUNCg0KPkRvIHlvdSBuZWVkIGFzc2lzdGFuY2Ug
b3IgZnVydGhlciBpbmZvcm1hdGlvbj8NCj4NCj5SZWdhcmRzDQo+ICBTdmVuDQo+DQo+QW0gMzAu
MDUuMjIgdW0gMTc6NTMgc2NocmllYiBTdmVuIEFuZGVyczoNCj4+Pj4+IEhlbGxvIQ0KPj4+Pj4N
Cj4+Pj4+IFRoaXMgaXMgYSBmb2xsb3cgdXAgdG8gbXkgcXVlc3Rpb24uIEkgZGlkIG5vdCBoZWFy
IGFueXRoaW5nIHNvIGZhciwNCj4+Pj4+IGJ1dCBJIHRyaWVkIHRvIGZpbmQgc29tZSBzb21lIGlu
Zm9ybWF0aW9uIG1lYW53aGlsZS4NCj4+Pj4+DQo+Pj4+PiBJJ3ZlIGdvdCBhIGd1ZXNzIGZyb20g
c29tZWJvZHksIHRoYXQgdGhlIGVycm9yIG1lc3NhZ2UgIkVycm9yDQo+Pj4+PiBJNDBFX0FRX1JD
X0VJTlZBTCBhZGRpbmcgUlggZmlsdGVycyBvbiBQRiwgcHJvbWlzY3VvdXMgbW9kZSBmb3JjZWQN
Cj4+Pj4+IG9uIiBtYXliZSB0cmlnZ2VyZWQsIGJlY2F1c2UgSSdtIGhpdHRpbmcgYSBsaW1pdCBo
ZXJlLg0KPj4+DQo+Pj4gWWVzLCB0eXBpY2FsbHkgdGhpcyBpcyBhIHJlc3BvbnNlIGZyb20gb3Vy
IGZpcm13YXJlIHRoYXQgYSB0YWJsZSBpcw0KPj4+IGZ1bGwgaW4gaGFyZHdhcmUsIGFuZCBJJ20g
Z3Vlc3NpbmcgdGhhdCB5b3UgbWlnaHQgYmUgcnVubmluZyBpbnRvIGEgZmlsdGVyDQo+bGltaXQg
ZHVlIHRvIHVzaW5nIHZsYW5zPw0KPj4NCj4+IFRoYXQncyB3aGF0IEkgc3VzcGVjdCwgYnV0IEkg
ZGlkIGtub3cgdGhlIGhhcmR3YXJlIGFuZCBmaXJtd2FyZQ0KPj4gaW5zdWZmaWNpZW50bHkgdG8g
YmUgc3VyZS4NCj4+IFdoYXQgSSdtIHdvbmRlcmluZyBpczogV2h5IHRoaXMgaXMgb25seSB0cmln
Z2VyZWQgaWYgSSB0b2dnbGUgdGhlICJudHVwbGVzDQo+c3VwcG9ydCINCj4+IGFuZCBub3QgZWFy
bGllciB3aGVuIHNldHRpbmcgdXAgdGhlIGludGVyZmFjZT8NCj4+DQo+Pj4+PiBEYXRhIHBhY2tl
dHMgYXJlIG9ubHkgcmVjZWl2ZWQgc3BvcmFkaWNhbGx5LiBJZiBJIHJ1biB0aGUgc2FtZSB0ZXN0
DQo+Pj4+PiB3aXRoIG9ubHkgb25lIHNsYXZlIHBvcnQsIGl0IHdvcmtzIHdpdGhvdXQgcHJvYmxl
bXMuDQo+Pj4NCj4+PiBBbmQgdGhlcmUgYXJlIG5vIGNvdW50ZXJzIGdvaW5nIHVwIGluIGV0aHRv
b2wgLVMgd2hlbiB5b3UgcmVjZWl2ZS9kcm9wDQo+cGFja2V0cz8NCj4+DQo+PiBJJ20gbm90IHN1
cmUgaGVyZS4gSSB0cmllZCB0byBpbnNwZWN0IHRoZSBjb3VudGVycyBhbmQgaXQgc2VlbXMgdGhh
dA0KPj4gdGhlIGNvdW50ZXJzIGFyZSBnb2luZyB1cCBzbG93ZXIgaW4gdGhpcyBjYXNlLCBidXQg
aXQncyBkaWZmaWN1bHQgdG8NCj4+IHNheSwgYmVjYXVzZSB0aGVyZSBpcyBzb21lICJub2lzZSIg
b24gdGhlIGxpbmUgYW5kIEkgZG8gbm90IGhhdmUNCj4+IGRpcmVjdCBhY2Nlc3MgdG8gdGhlIGhh
cmR3YXJlIGF0IHRoZSBtb21lbnQuDQo+Pg0KPj4gSWYgeW91IG5lZWQgYW55IGZ1cnRoZXIgaW5m
b3JtYXRpb24gb3IgdGVzdHMsIGp1c3QgY29udGFjdCBtZS4NCj4NCj5SZWdhcmRzDQo+ICDCoCBT
dmVuIEFuZGVycw0KPi0tDQo+ICBTdmVuIEFuZGVycyAgICAgICAgICAgICAgICAgICgpIFVURi04
IFJpYmJvbiBDYW1wYWlnbg0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgL1wgU3VwcG9ydCBwbGFpbiB0ZXh0IGUtbWFpbA0KPiAgQU5EVVJBUyBpbnRy
YW5ldCBzZWN1cml0eSBBRw0KPiAgTWVzc2VzdHJhc3NlIDMgLSA5NDAzNiBQYXNzYXUgLSBHZXJt
YW55DQo+ICBXZWI6IHd3dy5hbmR1cmFzLmRlIC0gVGVsOiArNDkgKDApODUxLTQgOTAgNTAtMCAt
IEZheDogKzQ5ICgwKTg1MS00IDkwIDUwLTU1DQo+DQo+VGhvc2Ugd2hvIHdvdWxkIGdpdmUgdXAg
ZXNzZW50aWFsIExpYmVydHksIHRvIHB1cmNoYXNlIGEgbGl0dGxlIHRlbXBvcmFyeQ0KPlNhZmV0
eSwgZGVzZXJ2ZSBuZWl0aGVyIExpYmVydHkgbm9yIFNhZmV0eS4NCj4gICAtIEJlbmphbWluIEZy
YW5rbGluDQo+DQo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCj5JbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0DQo+SW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcNCj5odHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
