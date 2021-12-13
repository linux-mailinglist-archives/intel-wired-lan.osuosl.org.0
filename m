Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C164735A8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 21:14:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4DCB60B2A;
	Mon, 13 Dec 2021 20:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PD4RqUkng0pf; Mon, 13 Dec 2021 20:14:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DEB9660B26;
	Mon, 13 Dec 2021 20:14:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D51FF1BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 20:14:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C1BA560B26
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 20:14:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pny4yFtlFueG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Dec 2021 20:14:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 17F8860B1E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 20:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639426479; x=1670962479;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=b+PnWqBUiy2T+fIg+NucfiMKrjYIhw73VBe0uPSP5j4=;
 b=TZB3v1lvmY7zJxh5H08OwONNL/XoJJpFEzw4FUOitgJ+Q5PInxpqJiil
 Q5/PaHWkiEWCYGaFhLFPnlyK3NeJyBHGxz0tbgdKj5k/QX+5n6/5Kahtr
 x6E/G9e1LuDrYCshAQJ5R1jmzZTZoYoau5n4rzK5F/3QBjMk1aIOwXDGj
 Ufl1B3ZEVRY8i2nA94vpD0tSZjgNmXRmIGEwQkw3MLG9sxQtkhFQ4cnuW
 JYh5YW0uOf1JwczcI5erYAZ0gOSRKeG/9wHPjLrNISGH46rTmVEOveqVt
 dk3VYevQYYNahJajQxX3GPyq0X9zXf9veLh5geo4EuVEpWgM/CkyW6uk7 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="262953486"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="262953486"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 12:14:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="464780347"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 13 Dec 2021 12:14:38 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 12:14:37 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 13 Dec 2021 12:14:37 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 13 Dec 2021 12:14:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mTyAovnjVzXvnRwj6KTUR8orQJwDXfMWOZB4DIimqJzvrAnYq7HXtzyLQrGa8q+0YDbizzhBH/FElE1DbaPV4wPx8qA98MXMzfRrM2PzUj01x9eaJOLfA3CvEjzFWLtSzayz1ezGTZGqfubbNP2qwovkNmVuZ8g94Cmy6wUkKHejIazFcL1K8tx1WmTC3yx6McOlnWbwQumfai4hFUE+NrgM0AdZ1hTh7Yys/+Pgw9q8Z7FONxJ5oj97tvfjt1392HVFTMYuQ2nntxau1cvURLcZQY9J2Har6pxBXD+Sgqw1crjZWRMOjCr0CLrUfrVQhvRykwPcx2myKIc6bE5F3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b+PnWqBUiy2T+fIg+NucfiMKrjYIhw73VBe0uPSP5j4=;
 b=hsNSB0t20GncPnP0Au8jInESQSR3QLdS4Ren2dlnboxh+W7FkicUzCUKSu5Su4vWM3vmUQRRmEleDNIHoBUTyLQCbP2V4GpYaYJAeuLGNzGBTHS1+oj1SAzOBx+no3fdUwBV5Oh5MWYFOUEFduE5CqRylJ6YnD8GmDiz+ghVoWsGgkSBdD9j9wtwUpkhfv6LVdz3gSR0WuXC1i99WMtlqF/V931o1uyLqaAZxtOQPxe0qLis5FWVVINRN3DUFXqFrCsmu4Qjsau6PiTH92QjpwVhxT4xxNNsUxAWAQ1i5iXQg9oUzyup9HsBgSkHWxix4EzU9dbh0NnP/P7p+Mqktg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b+PnWqBUiy2T+fIg+NucfiMKrjYIhw73VBe0uPSP5j4=;
 b=VSgy5V7kFsTdxQ9VrgGZQ/H2beKAqLZgGNNt8FpnttiP6PegLLq7tAGHzyCLi0VfR3aKELwa706nkF2XV84dgEpK8Yc5V4bhS/+RVQeXLqYQp8CItF3cDy5qXOzATOUB0O7m3K9vURn6e8qD1Sr+xkyD577nBnTJeh3pYuL0wao=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4560.namprd11.prod.outlook.com (2603:10b6:806:93::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.15; Mon, 13 Dec
 2021 20:14:34 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::10ca:cadc:48f6:b883]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::10ca:cadc:48f6:b883%4]) with mapi id 15.20.4778.018; Mon, 13 Dec 2021
 20:14:34 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Raczynski, Piotr" <piotr.raczynski@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 intel-next] ice: add TTY for GNSS
 module for E810T device
Thread-Index: AQHX8A+cd0KPS3xKZUWsSKCdQijVFaww27aA
Date: Mon, 13 Dec 2021 20:14:34 +0000
Message-ID: <bce5f2e32aa835d43c9e2deba39df9342dfbaec7.camel@intel.com>
References: <20211213105234.397045-1-karol.kolacinski@intel.com>
In-Reply-To: <20211213105234.397045-1-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 681e01f1-0f8a-447a-1ee7-08d9be752e15
x-ms-traffictypediagnostic: SA0PR11MB4560:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <SA0PR11MB4560D565C6DB246E0CF4A11FC6749@SA0PR11MB4560.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qWJnsR0Q6J0xdpMCuZPlNpR8RTsMWZfDDGNtAVDMKGUQiD1y8xrJPWSfUXPLmwY66WvOHiNLItcE9ApiQKcKS7WU4b84irH4YvmzBdaOzx1s0BTsrV6TFhuhT+G+q4HSyPK3DwMW83/IBg8tkJ0vka47xF1eQVQm+lTr3dbNMOqcuk/J0x5SEi4dBjYZuNXwqzMztsFetIUDSKh2n6eZ4TRh55YRdqMJJMgwYU447GO6np5TqlHbnzlpzXKXCjcmN5t0XqSoWgeyMYH9b5L/Sdmqz3FFjIyy3sHEUwDBkpPwH8679k7HRBq+9suwh/vUZx9jQ++prp48A3jcDFVJ5qS7ysI6yUsy9YMhkLtCoQlEVLjtCz7iB6QCMFIbHySONbD6/gyQx8iz3xYuJsJWqc56JPNbG6F8wZoacYrljY8eVhEDj3xsMU0b11ZXScanDvNu1/R4ALWTyG7r3H25klOLBjVXvY8PF/4oRufIV8eHGbrsCNT+yx0MW9VU0AthqPnS3iEL3U8EnYgFeJGE/BImn8B3K9fah5XA8fL5xatN5OvTD8cm4AJ+KiQH8nLGRAKWKm1AdNy772qAC6lm3c9Z2pZVd+zRJI5HA9c7wNDH7FpZAPn+cuOCTjJRQJT+PauPgwI6ow8BLG1ag1ATwPGxY9erwwKpKcIBSc+nHvWh0LdDJTHc1YTNsxNsNKvESPjJUaKfzXyITczxgoBD2A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(36756003)(26005)(186003)(71200400001)(38070700005)(2616005)(110136005)(82960400001)(316002)(5660300002)(86362001)(38100700002)(6506007)(107886003)(122000001)(6486002)(6512007)(76116006)(66446008)(64756008)(8676002)(508600001)(4326008)(8936002)(4001150100001)(66476007)(66556008)(66946007)(91956017)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Yk5SVGlVWUxJSWVUQ3NPeXFZZWxkbC9mYUE0L2NoaGx0YUJxblpzcDVLNzN4?=
 =?utf-8?B?Sm41SGpIVkVBeCtDMUxwQzNxdUZLaFltNzdrbGI2aGZvb1lIbWlld3lFR3Vt?=
 =?utf-8?B?NEI2ZUJZVHd2ODduYkZaQ0FEc0UrTGI3T2pzazJsU3lZVTVRTk5RTEJ3eVBY?=
 =?utf-8?B?bFMycWlqVWlJVWxWeHJCbHBJYnNRMmQ5OVpjcFRNUTRoRGQxVjBhRTlUVkxZ?=
 =?utf-8?B?ZTVmSEZ1dXR1anhuM1o2WW9WakJGWHpHSUVJUldqL0NKYjJGUFVTU29EbHNJ?=
 =?utf-8?B?aTF4TitucFpybko2b2pXNkZhRE9hemU1UTVMVkVmZ3pxQnd2OVFVUHZ0V21T?=
 =?utf-8?B?M3V2Tm1EbllOajFxK0g4TEQyUFNjRXZkTk5yTUpUWUpNOUxIMjRmMDEwcXhY?=
 =?utf-8?B?THg4Ukl3RnMya3VlQ2dwWWZ1MmxMSG9EMUZLRm9ENEIxTkRiTUpoZmc5SkVs?=
 =?utf-8?B?SVd3N1Nab2t3VkFPVXpGWnVuYUJFZU5BbjdjVnZXYktEcS9WTElmVmRaOE4z?=
 =?utf-8?B?WUlaYmxTcGJSeTZRTk1qZC9BWEhHaGM1MWhyeXoyV3lVdGhOMjFRdklHdUk2?=
 =?utf-8?B?UUdZcys0eDdLQkFTbTlvVnJZVkRKMU1IYjVVMXVLU08wM0RiR29FcXhlZ1RZ?=
 =?utf-8?B?czNVbEFDTFVVcFZzMnNGNFRodXY0d3VmUEFpWHRCMGVlbFpjNTYwVkJBcVJy?=
 =?utf-8?B?MWFTU3NwM0MxK2g4MExJVzIwVk1VNUR3ZHdpdFNiTWlPUFpldFB4c1JZZXJr?=
 =?utf-8?B?QWdOSkNzQVdmQ1VGRjdPMWlFZkNYcmg2NldGSU5TbmhWSjYxWWExVXZaZTdJ?=
 =?utf-8?B?SHBQb2VLc3RncHhUUC84MjQwNFhqSVFPWks3bmhIa01jZDNNd1NSdW0yd0xt?=
 =?utf-8?B?R2l6eTZiVDVRdkF1d21DSFlTa3k1dkY2bW1PanRuOS9lSEdCTjZLNkp2cUVT?=
 =?utf-8?B?eW13Ull2bSsvODNwZk82bEI1MlpOOWc0YUxiNlV6ZGk5SmlOYUlTTngrNGxr?=
 =?utf-8?B?YzFKMEZkem9uZmF6RWpCQlVOdWNUS0lYT1ZqV1JmMFJPQ3lSUlIzT3JJWmx1?=
 =?utf-8?B?TFEzTTFlb2Z0b21wQjVrWlpWSzJ3M0I5R3VMazM5aURMSUJSMko0NFhIMU9W?=
 =?utf-8?B?MitxNW0xNHdXOXZ6d0xmdkpvdk9kYVFJd1NaME5sMlRWdTBxSVZyeEFpRFVl?=
 =?utf-8?B?bnVSMGpvM0pCT1hPN1Qra2pjanRDc1hBY1JFeHNMNWJoUWZobXJWdUpwNjAr?=
 =?utf-8?B?NVZONURYVW9ubGdtUHhUcFc0SldWeVptWHUzRHZIeHZSQjhMRFpCc2QvNXZp?=
 =?utf-8?B?S1JDQWtxeEdhRHRCWXo4T1RhNFAxdm5BeEpGNG44OUJ2ajdVbUVNSDVmeVJ5?=
 =?utf-8?B?bmd0L1ZuampqZW45K1psNlN4eFhmcS9Kb08vZ3E1ekMzYmJyMm1kd3A4eFdq?=
 =?utf-8?B?UVc5VFgyeGtlQUVKU3RCMU9lcXV1V2RMNDM4czczNDdCTFpad01vSThFU2Mw?=
 =?utf-8?B?STJsV1YrSUlObVl6ZFVFNlVhS0t2TGU0M05sSG9WemNwVU9aU1oxaGkrQmts?=
 =?utf-8?B?TUZmWFpZc0k1QXpxR3V3S1kvSHhEZi9YWXFTTUNkZGlUc3JlVDc4NDdGMGhy?=
 =?utf-8?B?YjhCYml1NThtR0hGRlBJY2FYRUdGVk5tZnE1ait1anQ3ZUs2Qm5oUUdDcDFQ?=
 =?utf-8?B?ZENnRGJHZUh0ejBUczM0SkovV1NmQ1IrWWZ0YU5kdWcwVm02b09xTFZTYTA5?=
 =?utf-8?B?aW1Fb0t4NDIrMVFJSG9PcS8rQlhtSDFaamVzYUE5Q3FFU0NMVzcwTWFWQ2Nr?=
 =?utf-8?B?aXBJRW9VZHhWWlR1Q0VGTlFPSmZsRE1uamJieVMweXJCa0NUVkVHNmlLdk9J?=
 =?utf-8?B?OTg4TS84clBIVHFZdFhHOGowRGFURWRaeGJwYWZLYlBnOE0zZlRhRysvTi9P?=
 =?utf-8?B?UXdFZnlUOEMzYmREN1R1UExZbDBjN0tHdFdxNit0QlpwVHhzUWR6d1lxWmRP?=
 =?utf-8?B?cWZZTU5MNUJ6REh1aDlNVVJFZmlMUVNUOXBrWEdrNElqZUNVSFdSNEZpWUFq?=
 =?utf-8?B?akVFR0JkeDRtclFnaWNKclRSWUJQc1YrZWhvRkVIVUJ0ZEwxcERlcEVFbUU4?=
 =?utf-8?B?MkFwWVBGS0ZEbDNqaGRTd0YydmIxY3ljd29VUUtlaWxvUExJWGtXOU96emxM?=
 =?utf-8?B?ZDlBRmlQU1kyaTJ6WXBQMVNTT1Awci8zNCtkRU5Ra2g2bXhTVEhoWUpYcFVW?=
 =?utf-8?Q?tZI2vtFRv2XnqBA14pYhtnl6BouUtr3o4gEFbmPVAU=3D?=
Content-ID: <742D179B70248D459EECA66A0F324517@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 681e01f1-0f8a-447a-1ee7-08d9be752e15
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2021 20:14:34.2754 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v6/Yjqv9/gFYYRrtrFHPeOQUSy9gY8wck4PlUKF5fmqkEcrkuLfKscdWjvwEgwqYoUt/FxMilqhGA8066j75YB0CMDhJIf2/jN/Q0NjrdqQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4560
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v3 intel-next] ice: add TTY for GNSS
 module for E810T device
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
Cc: "Mishra, Sudhansu Sekhar" <sudhansu.mishra@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyMDIxLTEyLTEzIGF0IDExOjUyICswMTAwLCBLYXJvbCBLb2xhY2luc2tpIHdyb3Rl
Og0KPiBBZGQgYSBuZXcgaWNlX2duc3MuYyBmaWxlIGZvciBob2xkaW5nIHRoZSBiYXNpYyBHTlNT
IG1vZHVsZQ0KPiBmdW5jdGlvbnMuDQo+IElmIHRoZSBkZXZpY2Ugc3VwcG9ydHMgR05TUyBtb2R1
bGUsIGNhbGwgdGhlIG5ldyBpY2VfZ25zc19pbml0IGFuZA0KPiBpY2VfZ25zc19yZWxlYXNlIGZ1
bmN0aW9ucyB3aGVyZSBhcHByb3ByaWF0ZS4NCj4gDQo+IEltcGxlbWVudCBiYXNpYyBmdW5jdGlv
bmFsaXR5IGZvciByZWFkaW5nIHRoZSBkYXRhIGZyb20gR05TUyBtb2R1bGUNCj4gdXNpbmcgVFRZ
IGRldmljZS4NCj4gDQo+IEFkZCBJMkMgcmVhZCBBUSBjb21tYW5kLiBJdCBpcyBub3cgcmVxdWly
ZWQgZm9yIGNvbnRyb2xsaW5nIHRoZQ0KPiBleHRlcm5hbA0KPiBwaHlzaWNhbCBjb25uZWN0b3Jz
IHZpYSBleHRlcm5hbCBJMkMgcG9ydCBleHBhbmRlciBvbiBFODEwLVQNCj4gYWRhcHRlcnMuDQo+
IA0KPiBGdXR1cmUgY2hhbmdlcyB3aWxsIGludHJvZHVjZSB3cml0ZSBmdW5jdGlvbmFsaXR5Lg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogS2Fyb2wgS29sYWNpbnNraSA8a2Fyb2wua29sYWNpbnNraUBp
bnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFN1ZGhhbnN1IFNla2hhciBNaXNocmEgPHN1ZGhh
bnN1Lm1pc2hyYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiBWMSAtPiBWMjogQWRkZWQgQ09ORklHX1RU
WSBkZXBlbmRlbmN5DQo+IFYyIC0+IFYzOiBSZW1vdmVkIHVubmVjZXNzYXJ5ICYgb24gcGYtPmh3
IHBvaW50ZXIgY2hlY2sNCg0KPHNuaXA+DQoNCj4gK8KgwqDCoMKgwqDCoMKgcGYgPSBnbnNzLT5i
YWNrOw0KPiArwqDCoMKgwqDCoMKgwqBpZiAoIXBmIHx8ICFwZi0+aHcgfHwgIWduc3MtPnR0eSB8
fCAhZ25zcy0+dHR5LT5wb3J0KSB7DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBl
cnIgPSAtRUZBVUxUOw0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ290byBleGl0
Ow0KPiArwqDCoMKgwqDCoMKgwqB9DQoNCi4uL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfZ25zcy5jOiBJbiBmdW5jdGlvbg0KaWNlX2duc3NfcmVhZDoNCi4uL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZ25zcy5jOjMwOjEzOiBlcnJvcjogd3JvbmcgdHlwZQ0K
YXJndW1lbnQgdG8gdW5hcnkgZXhjbGFtYXRpb24gbWFyaw0KICBpZiAoIXBmIHx8ICFwZi0+aHcg
fHwgIWduc3MtPnR0eSB8fCAhZ25zcy0+dHR5LT5wb3J0KSB7DQogICAgICAgICAgICAgXg0KDQpJ
IGJlbGlldmUgUGlvdHIncyBjb21tZW50IG1lYW50IHRoZSAmcGYtPmh3IGNoZWNrIGlzIG5vdCBu
ZWVkZWQgYXQgYWxsLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
