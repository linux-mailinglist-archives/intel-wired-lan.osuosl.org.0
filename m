Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FF440ED1B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Sep 2021 00:07:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C817741570;
	Thu, 16 Sep 2021 22:07:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JgRcMAkAUnDg; Thu, 16 Sep 2021 22:07:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB7B240833;
	Thu, 16 Sep 2021 22:07:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D4AD21BF870
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Sep 2021 22:07:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BCC1E83F39
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Sep 2021 22:07:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AMUrovqwRcIG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Sep 2021 22:07:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6542983F2E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Sep 2021 22:07:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="220788597"
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; d="scan'208";a="220788597"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 15:07:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; d="scan'208";a="583805398"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 16 Sep 2021 15:07:06 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 16 Sep 2021 15:07:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 16 Sep 2021 15:07:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 16 Sep 2021 15:07:05 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 16 Sep 2021 15:07:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kcfyc0LR/B/pf/MD8trUvhIBdtf1yFYA4Tgu16RBbjCK2oqVkQMi7SC8w22CmBghAySjaUH7lEYF8AI141ig9uNnJM5nVZR84DcoElBYTNBDWh4OMreGR5KybFScwJODUcpsyPPUIkjHVRYJYOLqgQSZdl5G0CuPR6uqgzGZHXj0NZUKgRHsnlWPV20qIvLxBsEgKwQVAK12JKEsuJO4lHXxuhRMlCnK+ZmwHjg8T3x2QrVcVBVNtECcdMPT4SyhyMw5TblENwsNlDXWxHMdIY7fa3xfKCRaRLpFsrpLlbzLaVWyIruLZpgCxtCL8/yf9zsFw6RPAI3a8fvOen88lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=iEoS+2LzT9jPMyBGe8LiUwAme8Zrra3QpNR2j17z/iY=;
 b=Q2RYWFh+UZ/6VODUQYWtNunUmSMu9JAKoBYgB4WCVBvnnTBu0woGiSA9yE/lVVffz6ylZzwX2GIns9bnv9gfuutBDUklx78CUmwf9jf+GE9RxAYQo27vOXYfyz2cZpw9+oTSJJ/1KnQoGCa0rao45FU0VtoELTUtkeH0xADDmRIptdbZPN4YMHslD9jOzXH1FKPQ+90X1ju8Bj1GWHpHAcDoY60wP9G2zo9iD6PwnKX4YrPsA3ikPKWOlvaiaRplsEgQnW3KiRUBjihmNn+xJFA0klwxABzlGyKzesTRoKpRwYvG2VRQlmDy5pdx4RGcqpNLtkFZsS+GeUGlMraWfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iEoS+2LzT9jPMyBGe8LiUwAme8Zrra3QpNR2j17z/iY=;
 b=zzk4XdsMajhzB1hxEFgxZxO9m4U6E3iY3Bjgxn/Swa12hnLbCB2XNXHmG9fzi1rwSJXWKQXzqu3bNNNPWa69G2vk28W+n5Q5b6kp39gNk6f37QVav0ucsWBzy/mz8rQRPG6QC0Arsk2iTR7SMfvONnENX+HR28YKcY4We2cFEYQ=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4768.namprd11.prod.outlook.com (2603:10b6:806:71::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Thu, 16 Sep
 2021 22:07:04 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4523.016; Thu, 16 Sep 2021
 22:07:04 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] iavf: Add support for
 50G/100G in AIM algorithm
Thread-Index: AQHXqhJdbJRLj/wXpkKMR01yGfQCW6unO1gA
Date: Thu, 16 Sep 2021 22:07:04 +0000
Message-ID: <02f5ca336393cd78b0fe366a85bc4f75c935b226.camel@intel.com>
References: <20210915091559.27096-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210915091559.27096-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3a257aff-273e-4858-35bc-08d9795e5146
x-ms-traffictypediagnostic: SA0PR11MB4768:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB476862F5C89AA598FFADA92CC6DC9@SA0PR11MB4768.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9ES8mkf/7nu4IShrSTvaAzq2Bl2W/5hFt3GBpyIZa94N82BdJdadAajDFxOvDaeXHFGSxHiGzQVWdi6qp1tKKHNaai6Srr7nzqMb1rAvssojtl5ZqulplpLLSzhLs4K9hHnN3/kgVZLjPqqym3LW85L9ehKWzC0dlUm0JmqoZtNivfmy7wZwyqSrwzAX/iy3bQ5IGdlxrWYf2wjbXujxuaambYA56i8lE8pXnC3eRzSz0yI4wOtsedY4l6tkFNac74Z0oPaiV6i9VJZU41XydVLrxwj6xwvZfW5VfQb1dl6rm1ch51mi+r7IvwBBis0/MvMc1qkYX7Sdm+BWBUE9/5xS7cpxH+Vpt+NPA3TmYcnlgYHuIkkFgDqmf1/ER7bItU1LNNpzhapsNr5DcwIF8/2C2rbBnMNksQ+afJn2/y2boTaKfsWU31y4feO9QTMhZwBDRRgK4jhCyJgoYr8o0v2uP1bt9gNGCvwKON9oAzxSTFh1JFJsLOZs97FfMf8+02TddED+ljANvfvdN7WsdNcOMBBNNbT00pCQbSSdEmSK02uTk+3wBMObw6mCc7G8CQkKzmYj15umSwc6ZWcqkNYoyWdPYU+WU7ec8cIUQHiVcz3q8cwaSPExZ1LEhyFn39beQPZJ6s5ealws69Hh8Pl0uwixj0XOeX2wN8MIbonefO7DmOE5/s0mcc6xAmsgwOVKOmt3gOdp9nv4/SLBIg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(6506007)(8676002)(316002)(86362001)(71200400001)(64756008)(186003)(6512007)(8936002)(110136005)(508600001)(83380400001)(36756003)(6486002)(2906002)(38070700005)(66476007)(91956017)(26005)(122000001)(38100700002)(66556008)(5660300002)(2616005)(66946007)(76116006)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZTBGbWNuZlQ0cFhRKytWMHJEc2xFdzh4S095ZWIwNmxSZzVPUEpOSDRPMkk1?=
 =?utf-8?B?VHBIWEdQTDdJRUlGbXZhK2VHT0xtQnlZTWJiNjFxZ3QzdnRHTDM0czR5Tkhy?=
 =?utf-8?B?RTVMM3RKNFYreHJzNHEyV01PTjU1TFJjUGNXdWxNS213RVFBM29vQ1FXK3k2?=
 =?utf-8?B?cWlFRnNudXpoL0wxd0xBdmFPd0lsRW5MdnpDemc3RzlqUU0rcmhsdkdyaS80?=
 =?utf-8?B?ckI3Z1lTNCtiUW9DazJTeVdOb1BQY21iN2hOWTlFY1ErYTZuQTNFQ25VQ20z?=
 =?utf-8?B?UGlyVnpxTW9GclFEN1JuQ3BBaEFGdFQwYWhNU0RPVmN3NnAzOXdJOXM1ZEt0?=
 =?utf-8?B?RThBdXhsUUJ5bDQ2aisxRGkwN0pPSXA3VitzZWpNRXBDT1FSQTdNODJWVy9W?=
 =?utf-8?B?bU44eW9HRFBGUUxrSjVKTlpZRWN2eVZuMktRSTJGbmdudzhFTjJ5Zy9pYUhR?=
 =?utf-8?B?cUxOck1FTUJFdFRueWRjSGs0eXpYdmFFSUVZbnBaV2V0bUMxUjVJVlFwd1pY?=
 =?utf-8?B?c0xSRzFkc0tVN211NGlDSGdhVTdRNmFPTFQvNzU2dGhDTHFScHJaRktDNHJQ?=
 =?utf-8?B?cWJ4UlRsdDI5S1hyNm9YR1hKN090KzlWdHVkY0hoWXY5Y25HWE51d3ljVjJV?=
 =?utf-8?B?ZVQzaXo2WVEvc3plaWMrOUxwbXZhUmJ1NmpxL0pscDVGL2xYaVdBcEU3VWtR?=
 =?utf-8?B?Njk4b1JSR210TzVjMnppamRpck9wT0U4c1lDUG5MeGI0dFZFSENLRCtHL3cr?=
 =?utf-8?B?akR1endXTUhUWjJBT1Zlck5rTTdvV1NmNnE4eS95SnNESUd0aHVscXFCdFJ2?=
 =?utf-8?B?ck1zbkhaTjVlTzZzc01HYnRvWTloaVZEOEtrY0oyRWdOUnViUVNDWXJrWFhi?=
 =?utf-8?B?NWtiMDAxTk91OUxjZ0NrNXpHbFl5RTlRTW03OXdJZmRXRXZ5bnZRSmhjU1VE?=
 =?utf-8?B?cUx5NFZtV09KUEJrZ0lwT2pvdkVVd3kzRWlua0hyZi95dlBPTnJGc21GRm01?=
 =?utf-8?B?YWlBTUpIWDZxREM5Tld5NWllME1tdXFidklLMWRtUmVhRFZ2RTVwd1dUTEVh?=
 =?utf-8?B?ZGJsVkhwMWRqOExJUW03RVc4VmRyeWxCdk1zSGZ0dG9HQ3BDNWcxamNBcEVP?=
 =?utf-8?B?ek1lU1lUMGtNVXlLYUNScnJrdFVvNmhlakxXY3Jhdkk1Z3hOMXNkRDA3YmZP?=
 =?utf-8?B?bGRSeGhhK3h5YWRzM3hZTmcxSzA4d25BSnJ6aTE0aUpFSllsMFVyNWkrSlRG?=
 =?utf-8?B?T0hWT3dUdktWL3IvNjRhd0NpNWNDLzJtZWVTRHlSMFBHZXJxTC9aNDlmYUVz?=
 =?utf-8?B?KzNlMUsyZnVNUFJzSmlaaUtuTFRFRXNoWUxEeGNRQXk2MW0xZmdHeFgra1ZU?=
 =?utf-8?B?QTF1VGpTVTFCa29LT2t5YTdFa0JaNVZIbkhmNGY1dFB2TXdCQ3czakN1Q3RT?=
 =?utf-8?B?NEdOTXdxSEVRSCtjaWduRjRBRk5nMmtTS0RtWTh3QjVaenV0alFYZFBSZWd4?=
 =?utf-8?B?d2V3VDdSdmVzTlNRdE9mTEY1ZFl1Tm5uQ2Juck8zNnlMem5sY3c2c3EyNU1P?=
 =?utf-8?B?SkwrWUZMMUFCL3J5UDNsQVdWQ01ZU0c5RU1DOURGcUFRbGpIYXpBei8zZS8x?=
 =?utf-8?B?ekNCSENIRW1veE5lYnlMZS9LMjVBcW1pWUZvYnZPYjRIcVBFdFBVUWJwQ3NN?=
 =?utf-8?B?dUd0R1pGbFpuNlV2V2ZvanpDWmZuKzREdDJPaGlRaGV5RlF6dGY2MVhxQkpp?=
 =?utf-8?B?akxJWG8xekdkWXhQT3Mya0QwZjNacUVUVXhSYm9kam9rVXdSTHl3elpNTTht?=
 =?utf-8?B?dVk3QmlnQnRwTUdoY2Fldz09?=
Content-ID: <E0B0C64A0B6FF7438614A91057F67907@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a257aff-273e-4858-35bc-08d9795e5146
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2021 22:07:04.4589 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WkkB5+hOYs9JX8eKuo6eKL6gRTGZhXIOXlCwntmh1znFED5trUJADtpENLqfHe+VXrYnS9+AlHGbIBe6RXPjv5GpaSPza8s0audYA+A1/q4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4768
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Add support for
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

On Wed, 2021-09-15 at 11:15 +0200, Mateusz Palczewski wrote:
> Advanced link speed support was added long back, but adding AIM
> support
> was missed. Adding AIM support for advanced link speed support
> allows the algorithm to take into account 50G/100G link speeds.
> Also, other previous speeds are taken into consideration when
> advanced
> link speeds are supported.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>

This has build issues:

../drivers/net/ethernet/intel/iavf/iavf_txrx.c:404:1: error: stray \342
in program
 <200b>
 ^
../drivers/net/ethernet/intel/iavf/iavf_txrx.c:404:2: error: stray \200
in program
 <200b>
  ^
../drivers/net/ethernet/intel/iavf/iavf_txrx.c:404:3: error: stray \213
in program
 <200b>
   ^
../drivers/net/ethernet/intel/iavf/iavf_txrx.c:422:1: error: stray \342
in program
 <200b>
 ^
../drivers/net/ethernet/intel/iavf/iavf_txrx.c:422:2: error: stray \200
in program
 <200b>
  ^
../drivers/net/ethernet/intel/iavf/iavf_txrx.c:422:3: error: stray \213
in program
 <200b>
   ^

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
