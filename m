Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFF948BA49
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jan 2022 22:57:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B9D26FB4B;
	Tue, 11 Jan 2022 21:57:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yUdk-GRcDSdH; Tue, 11 Jan 2022 21:57:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A0626FB4A;
	Tue, 11 Jan 2022 21:57:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CAEE01BF989
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jan 2022 21:57:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B74066FB4A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jan 2022 21:57:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kUeVeFFvQzlJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jan 2022 21:57:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7B436FB3C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jan 2022 21:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641938223; x=1673474223;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=n+aSmr4o42m/NRa/EGC0hYnBfo7s9AXGIiWokpb7TQU=;
 b=VLwQQVRR3jgtSMIoGnU/qW3EhxXovDtVewduTXQUterwiKpv7tglqXuD
 iI3qUDMi50SAID1jCCy3w6gghnG/fE1lRVGYtzJYD3HHWjMpHSVKdQHkX
 CiKtPQn20r7IbX8VNZrg3POq2JaelWz0Ih5jeELEO6eYZVC+POkNPLTeo
 qazQUGgX5EsrcNufOO/MYhpzBUCFX0ktfUunsbgg48mc1VKIMLaNZ4RQ2
 b+ZUyjjSVyfjSyuqL/otIdTAWDFw0LOgptK/U2xtdMPtDVvOAXChnBJm5
 VzTZtGO930gjSnmTF4/sk8Bt5Du4nm2mTLkah9L+O4nUliPxzwmxqQtNJ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="306943644"
X-IronPort-AV: E=Sophos;i="5.88,281,1635231600"; d="scan'208";a="306943644"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 13:57:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,281,1635231600"; d="scan'208";a="472602837"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 11 Jan 2022 13:57:01 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 11 Jan 2022 13:56:57 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 11 Jan 2022 13:56:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 11 Jan 2022 13:56:57 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 11 Jan 2022 13:56:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iXlqRrVUoVx5N0LdPZxeZIUvmdHYO7qtT6579Q/A6zVPc+aREvJSM5pU9wP273GEmLL1jbDUSxh6suUW/bQn0YZ3WK77000aOC8ORSHtQLHVw3YuCVmcV4Bts7R19Va0w/zDNsKTwzzQqHuEOFVydyF9rXrUW5Zo3BcsOtipANyUOYqD81vwFEBz+hOEdYdr/dY+0L6zKON/6LTJWIVKI00niQd+6wyFSpnh00zUIZ2z9RqqH3rooZ99c0R1Hk+lutpMVDdbzRu79b+67hET65CKNjAbXO7pUGCDsROaOtPbxvMKFVGMqxNxoFAgL3zTH8/WNy4kKxWbC5VkMujEwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n+aSmr4o42m/NRa/EGC0hYnBfo7s9AXGIiWokpb7TQU=;
 b=N1zmsifA2yZUyxXD0q5L8nxHAe3BUI5ET8WHIT1zzlg1HK6x+IVCw2Le5SDnW+pN7nFqovnjDGBA6FnherAZq6mJSnFjm+hjnsIT9/B901O7UOf9JV0si2rWng2BH1IGoc69gLdAwnNO0oh6/2OmtAEta3/I5yjJnggSqa3SHQdWK+1T15wABWUcE0GkEUhvZIHJkZTNIXqRmioBl+k/DBhN6lPRfcUdgxFO1zMTv1mUdscPFbMAJkGeOTxUU/RmexOiusbai2CjAS7TzdsyBCayxM4HCHhr4HnRE6Nz4v92H7OjesDU6GMoNkeJMx7AThrkfv4p9ITkkqxzipc2RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4557.namprd11.prod.outlook.com (2603:10b6:806:96::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.9; Tue, 11 Jan
 2022 21:56:50 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1%5]) with mapi id 15.20.4867.012; Tue, 11 Jan 2022
 21:56:50 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 2/4] i40e: Add new version
 of i40e_aq_add_macvlan function
Thread-Index: AQHYBiO95f5J1xdEsUGC2JR7XAwPlKxeX9uA
Date: Tue, 11 Jan 2022 21:56:50 +0000
Message-ID: <571acb2a7885338ccde1347a6ee92bad02fa9178.camel@intel.com>
References: <20220110131142.8481-1-jedrzej.jagielski@intel.com>
 <20220110131142.8481-3-jedrzej.jagielski@intel.com>
In-Reply-To: <20220110131142.8481-3-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8801c80b-ccc0-4dd7-8a75-08d9d54d457f
x-ms-traffictypediagnostic: SA0PR11MB4557:EE_
x-microsoft-antispam-prvs: <SA0PR11MB4557ECAD724DD714D30DE38FC6519@SA0PR11MB4557.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jMzeg9uiQqB3HlVBPHgNyHkKnbAjWARZosS54mlQ4Z7ucnvD5XBmB/86FcuKD6FzdWhhpEp78IGYPlVbfY77ON98rDTKba9hmK9mRimGK8rNE2sRy9Iw5Zr+9NGUIvKO6B3XIHzOAdBLiW5ve1YpawqToKAWuoe2DdiFYyRe2QFE5DYg7OL+2lsgiLUzMsG4iAx3djLyEGNoP8nn05d6wKbcOCqCAiZEdOTyKCd0odSEschbVH5vMTGdyFwEG9NvUdiA3h2ljNzSOkSPw4no7u9k5imMWXQRtL9nOUUqiPocc2nKl5ZRLyyHB1df3UthqqN4VXGoaiPSz54LcdIsnGzJEvc6sz8gPXkYUXKeWia0WMdqdVf2rK9qh6teBCk4IprwGqoa1jqSxnOfi0tYUnr67uQziBJQpDQ5MdvKm8jaZLGJPigngGtaXP6NSbk68OkbwmWHkiSlTyy8H9JPoXXqlNB4maPsBjS5CjVum25VAt20L15tXhvzM1i1zcvPSDNiJIHUZJTrx/HKjevEKso7gNY7jrPiGtPRCFxgb5GCrBdYl68ZvMqCOnPXomHjizuwSgQRAGx1bGXWYkLkIhPilBKyej46kCylfGHcg2mdHQD3+JR+/noCWuvRHqJEf1qWjHf7rb3nsh/EL5YO0FF5IWXclHqjDxPhpxGoLk+rvW5oZUs/yyP7sviyW7fGiFcg0Ozo57Vtvu7ov5SgEw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(107886003)(2616005)(2906002)(6512007)(122000001)(38100700002)(36756003)(86362001)(71200400001)(6486002)(64756008)(508600001)(76116006)(4326008)(6506007)(66446008)(26005)(186003)(5660300002)(66556008)(8936002)(110136005)(83380400001)(82960400001)(8676002)(91956017)(66476007)(66946007)(316002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R2VFdFZUb0NldTVqTnZrbGxNR2gwK3JYSHo2ZGlMTndIbmdHcXE3a3JUdjlp?=
 =?utf-8?B?SjlJN1FHMDJWVWJpMktWM3lFcjV1ZHdkNlA4MnQ4UkNKNW9DKzZtRW8zZVov?=
 =?utf-8?B?bVN2WGE1NHVzTXp1SU5zaGpSWGwrNHJOanBUTCt6d2E5Tjd2Nk1uWUMwYlFs?=
 =?utf-8?B?dDJtMHp2QlZWTnBiME9HS1pWVytqTHp3bzNIMDlLeTNwWFVwQ0p4VXB5cUZU?=
 =?utf-8?B?eWgxS0xYRVBBUHpPc29wcys5MHVDOEI4VXN5K0ZqclpVckcvUEFoMVc2bzhE?=
 =?utf-8?B?LzQ5cnJhb2R3MW9ENzlxRDFVS2hwbzBWT3g2ckxUNnMwWmxMeDQxUmhqaVk3?=
 =?utf-8?B?dzhrUHRoSEpyTFp1STdmNkxPNnhYVzgzRjMvbHJQalluSXIyNzBMQ2RLT1dh?=
 =?utf-8?B?LzVaaXRYYmw0SHJWbi8rbzJydEFuUHNNTVhUa2lRWFpxZDVVVWw3ZEZCN3hK?=
 =?utf-8?B?emZKWDFzZE5PU3V3d1Y0OUNUaVVkeTM1bkNuUmltK091akdJUHk3Y2svTzNT?=
 =?utf-8?B?V3h6TDIxRjdJeVhvb3E4K09sUnNNd0k0bjRDYUJRT1FmWkFwZFdZcHJUM3Ja?=
 =?utf-8?B?TWZOY3EvNWdZTHgyWFFDMmNRVThSbXZoRTVmVGs4VUZHSnl4SG56V0JjL2Nl?=
 =?utf-8?B?aitlQ0VsYU9NdjV0QStrNzNDbHRDYVNBYzhqWjRJa1pQVjFjU29OZlRJR0p1?=
 =?utf-8?B?R0I1VEdGQkxGUWhxVVk3a2lBcDZLNDNQZHRBUVZ3bENVblBQemRoQWtYUjNq?=
 =?utf-8?B?Skg3ZzR3MDlnZWdCYnpPOXJWbDZOK0l6Q1JWd2pjVnZkNUx4YVVTdFoxN25o?=
 =?utf-8?B?NktLaDl3N2R2TUxNTnFVN1crQjVuYXl1SjUzdzRXbDFlTU9XdGFDeDU0L1pT?=
 =?utf-8?B?TlZ2MzlVTWRHQmFQVTFtQzNnQnU0SWVQSC9NZkVYMDBpbzhuOXNYZHZUWXNJ?=
 =?utf-8?B?VktZSkZIa3kxRXBiNU1DQkI0RW9XeGtSREdjRURLU0hSQUx4ZUVBZXpJTmZo?=
 =?utf-8?B?SUhpckxXeHNUR1grbXdEanF5cnFJUTFlWUpnb2VYTXVScE1qYmxPajZLM042?=
 =?utf-8?B?SGQxVlhDSndSTVlhaU1laWFRVCsxdG9GRjh5MXYyd3RYWjBqSG9LdDRKQ1hF?=
 =?utf-8?B?cTJORVdlN0FCdDBLS0RhY0F6ek1iL29NZ1lGcnZZQTl6dUcxaUNXS2l6Rzdv?=
 =?utf-8?B?elE2M3l1QlNabURMdWtVM0UvMTlNdk8xdnI0NmxXRmNVRDc3WUJ2K1ppRFB1?=
 =?utf-8?B?TTFVd2g0T2FHc01hK3cwRVBmWCtRcDRVaklVM0VvczlYbmRBdmxPR3BWY0d2?=
 =?utf-8?B?cCtZbnBud2dQZUdxcldQY3hya2NReWJCRGIyVVdUSEF4VkdpdUxiSm9DNWsv?=
 =?utf-8?B?cE1jemNhYkQ0clhSbVdCTDVmaG1OcUcxYWFJSktBMVJqeDdYUjlmSjZzeWF0?=
 =?utf-8?B?eUI5R3BBZEJQMk5uWEJDUHBsQmJ4dWNjUWh1UWhVWGtxaWJ3LzNIWWVPT3hX?=
 =?utf-8?B?a3lSRWtLVEdlUHhUOG5FMkZTdkt1aWlYb1NDWjZNWWVSaDZWYjV2MnZYN3BQ?=
 =?utf-8?B?WFFCUnZma3U0U3JrQWJWcnhvOVVIOGM1bGJlNkUyNXRxL3pibFlPRlBvc0Vv?=
 =?utf-8?B?WVVuUFNYQXZYR0JvTzNsNlFjdUlGTHlsRkxwL2xidk1DRTU4ZVpzd2VmcTlQ?=
 =?utf-8?B?clNrREpiL0Q3TVRkR3F3V0Znc3JNYVUwczNva3ZzYVJ5eHNTcndtblRXbHho?=
 =?utf-8?B?S0Z1czZ2TW5aK2h1Y1ZCODF0c3owUXp1VnVBc1ovdENLWkNCTThhOVB2Q2Zs?=
 =?utf-8?B?WXBjenVnWTBUUlpXNERrRXJUNXlnam5lUW1OZDBiSWlDS3BDYitUbFQwTXVy?=
 =?utf-8?B?SUp5QkJ1VnZZS1N3YThjWFp2VytyZG9jTmVCSC9TcEttOWsrTGZvT3YrVi90?=
 =?utf-8?B?UDJrSkVkcmFka0JvamlCV3VxbDlEd3FuZU50cUVGaWh6RjVaaGpib1Q0eUJL?=
 =?utf-8?B?ZWpPMVRnV29Wd0R5UTB3WE1uMFNURkRlR3J4bE1WN1BUazN0OHNqUXVLbUN4?=
 =?utf-8?B?MTQyVTVkQ2UxRk0rK25PbVNVMnhEcmNzYWVPV0ZYeGtuVTFrTFpPaENMSkNv?=
 =?utf-8?B?MlQ3aEk1eFY1YS9IeGx5VDlNUlFmTDNGVzdTdnJtSkd4L2hkWkovTjVFK3Ar?=
 =?utf-8?B?ZUdxNytrTG9rYS9sMmxWY0V4dXdEZy9NZEFzSWcxczJySXprM1VSN0EyeUhu?=
 =?utf-8?Q?+66Z4OrAXOCXUOMuTa50RME1vo7gi5vDoKWEv1mSc0=3D?=
Content-ID: <0287B76C5CD54E4DA09C748559132770@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8801c80b-ccc0-4dd7-8a75-08d9d54d457f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2022 21:56:50.3882 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0p8NLlDYLit+FSy5ZnMny23WGc0UuhVMUnHm/tPJc4Xa2U5zVN2DVbQzK4kFUI31YgYTH5Q5CZajhGGWQoBxI24bRGHzZusRGTGx4QPu7nY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4557
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 2/4] i40e: Add new version
 of i40e_aq_add_macvlan function
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
Cc: "sylwesterx.dziedziuch@intel.com" <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyMDIyLTAxLTEwIGF0IDEzOjExICswMDAwLCBKZWRyemVqIEphZ2llbHNraSB3cm90
ZToKCjxzbmlwPgoKPiArLyoqCj4gKyAqIGk0MGVfYXFfYWRkX21hY3ZsYW4KPiArICogQGh3OiBw
b2ludGVyIHRvIHRoZSBodyBzdHJ1Y3QKPiArICogQHNlaWQ6IFZTSSBmb3IgdGhlIG1hYyBhZGRy
ZXNzCj4gKyAqIEBtdl9saXN0OiBsaXN0IG9mIG1hY3ZsYW5zIHRvIGJlIGFkZGVkCj4gKyAqIEBj
b3VudDogbGVuZ3RoIG9mIHRoZSBsaXN0Cj4gKyAqIEBjbWRfZGV0YWlsczogcG9pbnRlciB0byBj
b21tYW5kIGRldGFpbHMgc3RydWN0dXJlIG9yIE5VTEwKPiArICoKPiArICogQWRkIE1BQy9WTEFO
IGFkZHJlc3NlcyB0byB0aGUgSFcgZmlsdGVyaW5nCj4gKyAqKi8KPiAraTQwZV9zdGF0dXMKPiAr
aTQwZV9hcV9hZGRfbWFjdmxhbihzdHJ1Y3QgaTQwZV9odyAqaHcsIHUxNiBzZWlkLAo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGk0MGVfYXFjX2FkZF9tYWN2
bGFuX2VsZW1lbnRfZGF0YQo+ICptdl9saXN0LAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgdTE2IGNvdW50LCBzdHJ1Y3QgaTQwZV9hc3FfY21kX2RldGFpbHMKPiAqY21k
X2RldGFpbHMpCj4gK3sKPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaTQwZV9hcV9kZXNjIGRlc2M7
Cj4gK8KgwqDCoMKgwqDCoMKgaTQwZV9zdGF0dXMgc3RhdHVzOwo+ICvCoMKgwqDCoMKgwqDCoHUx
NiBidWZfc2l6ZTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgaWYgKGNvdW50ID09IDAgfHwgIW12X2xp
c3QgfHwgIWh3KQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gSTQwRV9F
UlJfUEFSQU07Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGJ1Zl9zaXplID0gaTQwZV9wcmVwYXJlX2Fk
ZF9tYWN2bGFuKG12X2xpc3QsICZkZXNjLCBjb3VudCwKPiBzZWlkKTsKPiDCoAo+IMKgwqDCoMKg
wqDCoMKgwqBzdGF0dXMgPSBpNDBlX2FzcV9zZW5kX2NvbW1hbmQoaHcsICZkZXNjLCBtdl9saXN0
LCBidWZfc2l6ZSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNtZF9kZXRhaWxzKTsKCk5vdCBkaXJl
Y3RseSBwYXJ0IG9mIHRoaXMgcGF0Y2gsIGJ1dCBpZiB5b3UgYXJlIHRvdWNoaW5nIHRoaXMgZnVu
Y3Rpb24uClRoaXMgZnVuY3Rpb24gY291bGQgYWxzbyBiZSByZXR1cm5lZCBkaXJlY3RseSBzaW5j
ZSB0aGUgbGluZSBkaXJlY3RseQpmb2xsb3dpbmcgdGhpcyBpcyBhICdyZXR1cm4gc3RhdHVzJy4K
Cj4gQEAgLTI2NzksNiArMjcwMSw0MiBAQCBpNDBlX3N0YXR1cyBpNDBlX2FxX2FkZF9tYWN2bGFu
KHN0cnVjdCBpNDBlX2h3Cj4gKmh3LCB1MTYgc2VpZCwKPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJu
IHN0YXR1czsKPiDCoH0KPiDCoAo+ICsvKioKPiArICogaTQwZV9hcV9hZGRfbWFjdmxhbl92Mgo+
ICsgKiBAaHc6IHBvaW50ZXIgdG8gdGhlIGh3IHN0cnVjdAo+ICsgKiBAc2VpZDogVlNJIGZvciB0
aGUgbWFjIGFkZHJlc3MKPiArICogQG12X2xpc3Q6IGxpc3Qgb2YgbWFjdmxhbnMgdG8gYmUgYWRk
ZWQKPiArICogQGNvdW50OiBsZW5ndGggb2YgdGhlIGxpc3QKPiArICogQGNtZF9kZXRhaWxzOiBw
b2ludGVyIHRvIGNvbW1hbmQgZGV0YWlscyBzdHJ1Y3R1cmUgb3IgTlVMTAo+ICsgKiBAYXFfc3Rh
dHVzOiBwb2ludGVyIHRvIEFkbWluIFF1ZXVlIHN0YXR1cyByZXR1cm4gdmFsdWUKPiArICoKPiAr
ICogQWRkIE1BQy9WTEFOIGFkZHJlc3NlcyB0byB0aGUgSFcgZmlsdGVyaW5nLgo+ICsgKiBUaGUg
X3YyIHZlcnNpb24gcmV0dXJucyB0aGUgbGFzdCBBZG1pbiBRdWV1ZSBzdGF0dXMgaW4gYXFfc3Rh
dHVzCj4gKyAqIHRvIGF2b2lkIHJhY2UgY29uZGl0aW9ucyBpbiBhY2Nlc3MgdG8gaHctPmFxLmFz
cV9sYXN0X3N0YXR1cy4KPiArICogSXQgYWxzbyBjYWxscyBfdjIgdmVyc2lvbnMgb2YgYXNxX3Nl
bmRfY29tbWFuZCBmdW5jdGlvbnMgdG8KPiArICogZ2V0IHRoZSBhcV9zdGF0dXMgb24gdGhlIHN0
YWNrLgo+ICsgKiovCj4gK2k0MGVfc3RhdHVzCj4gK2k0MGVfYXFfYWRkX21hY3ZsYW5fdjIoc3Ry
dWN0IGk0MGVfaHcgKmh3LCB1MTYgc2VpZCwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpNDBlX2FxY19hZGRfbWFjdmxhbl9lbGVtZW50X2RhdGEK
PiAqbXZfbGlzdCwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHUxNiBjb3VudCwgc3RydWN0IGk0MGVfYXNxX2NtZF9kZXRhaWxzCj4gKmNtZF9kZXRhaWxzLAo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bSBpNDBlX2Fk
bWluX3F1ZXVlX2VyciAqYXFfc3RhdHVzKQo+ICt7Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGk0
MGVfYXFfZGVzYyBkZXNjOwo+ICvCoMKgwqDCoMKgwqDCoGk0MGVfc3RhdHVzIHN0YXR1czsKPiAr
wqDCoMKgwqDCoMKgwqB1MTYgYnVmX3NpemU7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGlmIChjb3Vu
dCA9PSAwIHx8ICFtdl9saXN0IHx8ICFodykKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIEk0MEVfRVJSX1BBUkFNOwo+ICsKPiArwqDCoMKgwqDCoMKgwqBidWZfc2l6ZSA9
IGk0MGVfcHJlcGFyZV9hZGRfbWFjdmxhbihtdl9saXN0LCAmZGVzYywgY291bnQsCj4gc2VpZCk7
Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoHN0YXR1cyA9IGk0MGVfYXNxX3NlbmRfY29tbWFuZF9hdG9t
aWNfdjIoaHcsICZkZXNjLCBtdl9saXN0LAo+IGJ1Zl9zaXplLAo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNtZF9kZXRhaWxzLCB0cnVlLAo+IGFxX3N0YXR1cyk7Cj4g
Kwo+ICvCoMKgwqDCoMKgwqDCoHJldHVybiBzdGF0dXM7CgpTYW1lIGhlcmUuIFRoaXMgZnVuY3Rp
b24gY2FuIGJlIHJldHVybmVkIGRpcmVjbHR5IGFuZCBzdGF0dXMgcmVtb3ZlZC4KCj4gK30KPiAr
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
