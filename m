Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFEE49A1D3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jan 2022 01:31:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 005F284BF3;
	Tue, 25 Jan 2022 00:31:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BlZ5y0NW-1qh; Tue, 25 Jan 2022 00:31:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5CA984B69;
	Tue, 25 Jan 2022 00:31:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B25611BF982
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 00:31:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ACACE60FA4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 00:31:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GYZXKAjuXQEz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jan 2022 00:31:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EFB7360FA0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 00:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643070693; x=1674606693;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=7N0Tt2B8dAP5Ud9eiL9HaUgmO8BAuwhfk+7t2nlbnB8=;
 b=DZJcsK3BqJQfIKEEIx6V9r4qljdYA+5GBgFJ0Vf614tutq6blf1T5qWn
 n+wiPuYVxpsL0PIXUNdIkq1zbtLAPTOxl7VIqA1C6rViokkGkcjRmIVgv
 QTsujI66wH7vrmh2d7LXI53274xxoTmMSEwDQzPV/lGQbmhFe7kqjq82a
 5eh5dpP4FTeHWsqtOtXw2MC73B5qj0Ep1k4ewZ5iZxZPTQlCBl+EzIbca
 MH8i5T9AnLjl0opX1YsRj6Wh53c4NMPaIHFquAIIKpsjE6qN3QXipfj0T
 DELw/SLsy5Yhp6ZMHwI0A01AJL5AyNw/tdTFLRAR+DT1avJYzgIzJkFkC g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="243781447"
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="243781447"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 16:31:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,313,1635231600"; d="scan'208";a="768850946"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jan 2022 16:31:31 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 24 Jan 2022 16:31:31 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 24 Jan 2022 16:31:31 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 24 Jan 2022 16:31:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fvyGTzB2/AmGidjR0MmjowGtLdPM9hRqEaD9D0GTy2FmW/4ba5J2E8npj9Jm5b45ww2cm3RFoGYpUyO62ltitwJVPlg0fBWunYsUviUYrY4OmTBTWFhP6lE6DsGEcLwBxqowVr+Fl8LrA27gubyi2SsMdkVZJ5zwkOrhLjxROCfQ4D88iIEzU/8NnmWLbximXdK22dlDP2ErIwBRDIniv3hYaeomVhpkEx7zOQflYGqgIsTpiF99pUsVd9DmkCkEbXoXnv3PlzLPgCQ50fuC9rpvujcTVB8JrhXTKwFC5b7d3DmMJXI7/gH0+hVQDoA7SOCgjY0EMgJr1Ti7owwzkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7N0Tt2B8dAP5Ud9eiL9HaUgmO8BAuwhfk+7t2nlbnB8=;
 b=U/fLSJ7HbLbPAupym0wVToQTkSPyaNI1k+uSAalNZUw3mtUZYa9IaJyKpcW7gjLPRts+ICUGtgAD3Fl/GmsPU8ULR+57QB8DuLCQUKPMT7CBFpHvb/4d0kRCd4nUNxxwXnVNjFd2fFPleCiH2pEcdrJeeBpEisAuBxWd7y8I/48DUchz0WgfjS870EJIsmalD1fBqxUrp8jafj4phcProq3wWt2AyCf6RRku1CdVdmnEUNoB+k/Ps8mdslQN+VSm64/hKSo6BQX0NZvd6hYYmy5LwbO0N12XITF6KBH06A19cFuGYTCexyxOjwiOVv6ULgTTrxd2N1QNugdBI2aR2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MWHPR1101MB2206.namprd11.prod.outlook.com (2603:10b6:301:51::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.10; Tue, 25 Jan
 2022 00:31:29 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1%5]) with mapi id 15.20.4909.017; Tue, 25 Jan 2022
 00:31:28 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v2] iavf: Add reset to watchdog task
Thread-Index: AdgO1rLf9TwJ2Ra9Q0+0UlvkGJ2isgCrCfQA
Date: Tue, 25 Jan 2022 00:31:28 +0000
Message-ID: <fcb47365347a6eea578315cc9c8e6fa218be66b4.camel@intel.com>
References: <CO1PR11MB48811E81C70B27754A77D92F995B9@CO1PR11MB4881.namprd11.prod.outlook.com>
In-Reply-To: <CO1PR11MB48811E81C70B27754A77D92F995B9@CO1PR11MB4881.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83151868-c19b-4faa-7852-08d9df9a073f
x-ms-traffictypediagnostic: MWHPR1101MB2206:EE_
x-microsoft-antispam-prvs: <MWHPR1101MB2206447E600B25A4163ED4E8C65F9@MWHPR1101MB2206.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0DyTo7DxSJ27Mi5uOcbSUuK7rSCmei/CeMr1qq6I4mxhmaCyBGgm8k/fs9lbaVW/Ww1Gf70fqxe7Qcxe4q4HD8zhK4xSWD2vAy8j9h7c7KZeM4H+oMDF/HapH5PBLrh/0QNCB9aFJXac82955A58w2z/WpfeEwpuD77Jtf1Tvy8CjZVq6f/5dQvgCQ5W7LvIxsuJS2Dz22wteYT2VrQJx0jYjqqPn0LMajEZtPHxw9H0aUw3xUxq76Y9dn7f1rgLJHnyLx2W1HCuee2hlzHQJi+SE+oemH8rWxyNeiVTEfgmwRxbt53YuCd3Awimm/MRBJ1y19c+cRK+WQo0lzVh7Dso9McykhdNWuRi1+mUD9C61Z758kXFsShWileixmKDYx8J872Sow92mjcw5arfj1NhtGOS+H8Qn8RwLxwum1fe0r6wuJ1rz5Bw2i7oQgBl0Gw0RBj0nl5mzrp2rfVutTSXIx++CR70FqJoC4Mv6v4Zq+F5gCmlJjvhqBTxfygJCm+xg0vxIg+7uj3V9Biebc56u9a1wt6b7r1OYslc/L8zA9NfR+/K77clRiTay+JaHXAuMLJoxO1tkn03GklVI3QwenhzvjgosGUZS0DI9hYOSRVVY8zlw/f/jTvr3I2gcFLpRT1DKDET//OHkY8+cMlzm0r+O4ODZA9xD95EBhShxkyMkTm5zMFsFTxhvzmJB+DzeA0NzdXx19E6tsvQuw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(508600001)(6486002)(6506007)(2906002)(38070700005)(38100700002)(71200400001)(83380400001)(26005)(107886003)(4326008)(6512007)(316002)(110136005)(66946007)(2616005)(122000001)(76116006)(91956017)(64756008)(66446008)(5660300002)(66556008)(82960400001)(66476007)(8676002)(8936002)(86362001)(36756003)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SlZ2QXJLa3RlM1BEN1A4RHF3YXRnbjRlMmxaRnJvbVphOHhQNFVBcjBvSXg1?=
 =?utf-8?B?ZE9MZE1CR2lweWg3R0JFQS9UcEZlQis3TFpLQzVlZ0xCWGE0VmdWdkRQVXlj?=
 =?utf-8?B?RURWM3k3UElyM0UzZlVKWEc4cTE0NGRGdjJWR1Q4SGFKajJmNUovTW1COTYv?=
 =?utf-8?B?andMdVBSdURZS1hKV0d5Qnk4OGtsQTEyWVJwU2g5cWRrT3E0WlQweTZGR0xL?=
 =?utf-8?B?RDYrWWNQcEc5cyt4WHAwZUhBbzh5SlA4dFU1S2QraG1CS0xpVkpnbGdYalRE?=
 =?utf-8?B?VFJRL3c0SXc5ZkgydXJwSjUvdCtsc0FmMFVSUUhWVFhkaVJpelB3NTl4eGwx?=
 =?utf-8?B?UUE2Y2JKOTF3bzc0OXl4R2RhQThUd1ZjSy9xUm9VV1l2cEk5RXBORVNmWUlY?=
 =?utf-8?B?SWpPdkVoVDNkNXI0R2lweFhBZUQxM3kyNVBDbUZtWk1VeVdqenlYQnk2cnlx?=
 =?utf-8?B?bkduRkF1RnJaNkhkN213N1J3NUFsaTRmWnBxYmdOeVBRNUZGWkFmL1dPNHdW?=
 =?utf-8?B?L3l2WFE3YXBIN1k3MW80dFRpbkZIdTEvM01Pdms1eGFyaGthcWZDNFcwVlY0?=
 =?utf-8?B?SnM0ZWpjL3FORUVvQ2d6QmpVTEExY3REbkNObVhwZWdpbmtVaFE2Y1RTRlFk?=
 =?utf-8?B?NTlvV0NUKy9lVmZWblRkODJrZ1pGMFNDc0hEU3dMREZ0Y3dqcWxXMU56bzhT?=
 =?utf-8?B?ZFJML3ZERlVzL3A0RGxQbEFRYko5RFBSRDBLSkUrVC80eGx3c0hqbXJNTGtK?=
 =?utf-8?B?dHNsa3haaXYxaVczODZScTE1WE95b1ppdytlajVabHM2aVZIamEwK0JaVk5J?=
 =?utf-8?B?cVltSXdIRTl0ZE5PM2gvNGo4UkFzTmxCbCs2bWVSQ0hQYXVNakp1MGdhYyto?=
 =?utf-8?B?UE9aUTk1U0hpMnFJMXh2Tko0bUs0ZkZvQlE2NmduTTgvWDkxVjJNR0Vjem8x?=
 =?utf-8?B?b3VmMU9tc1B3SjNRbzkrSytVUE1SQXFlaURGUEc1OGNSdmROMXN2L3hRVnE0?=
 =?utf-8?B?ZnlXK1BxOHNzMlBTbFVaNjZiZkNIUjhKdmtobzhnL21OSFY1eTFCVGxiZk8y?=
 =?utf-8?B?Qi9BZVZ3T0UxR09jcUd0VVBBVXZVcm1mdmkrWGJTWnVCNlpHclYrdFdlNWJi?=
 =?utf-8?B?bGd3Ni9Bdnkxd1JoU0FreDBrZTBic1BvdjlQeXpGbXFWZDBQMEhRbWdjdDQ5?=
 =?utf-8?B?d01ZakwreTZpVTQvdkFaOXd5S1pxcCtWblJ0WXR4dy9DVmZkb2p1Tmh1TU1p?=
 =?utf-8?B?cjB4OWJxa0M3bldZZGpablBuUm5rZHlScmdpUnM3QVNMeDBVR0xRcHpWWktE?=
 =?utf-8?B?ZzVseVA4SEFJWXg1ZFV0eEN2WnhhcFo5dTRsTEpVRUxNYUx5TW5yV2FiaFBM?=
 =?utf-8?B?Vzg1K2V6ZUdRK0tJaHF5YkpWWTFIa2xldG5aNkxFSDZqbVFZeGdnNnN0VG5v?=
 =?utf-8?B?SHdkWEJYVzNFeG00azJ4N0xNZnJYdHVWaGhrdzZIaVkxcjFZdnJXUlhkSk5j?=
 =?utf-8?B?bGFodUgyb0lVczJYTEl4cGlQL1RZbmR0VUo4cU12KzZrcnVZWDRmRjhyRFpX?=
 =?utf-8?B?cFYybTFUMXhoMmdPRUsyVVFaQU5YTTNGNmZmN0xGQmN6S3dWVHZwZDVOWkNy?=
 =?utf-8?B?UFcxSHN6blVSeDh6OGlnb2owZ1hrdXJnRlp1MDFRY0Ftd3J0UlhMdVNQQ2F5?=
 =?utf-8?B?VURBeXptT1VOZ1BMdnRkUUpyU3M5RnpnTHRObUp6a2tudTZFWnl0ZTFsSzgr?=
 =?utf-8?B?VnpXWENxQW10eWV1Nnl3c21nVkxlSUdtTGZJN2tUd2Q2dExINTN6VnFQeEht?=
 =?utf-8?B?WHJWSUx6SWcxclFLeklRSEhGVTFOL1BManVoMUJBMHV2ZUlNNVVQS1hZeUdQ?=
 =?utf-8?B?czd2ZEpEWFg0aFlROTh2VmlQNnhpUk5ybVY3Ym1OMU1TUzFVRWlsdTRwSS9t?=
 =?utf-8?B?d3NRL1RiWnZuQnFxd2Z6bEY2QXA5TncvZE4xZEozeWtrazVxOTVIVElhdG1B?=
 =?utf-8?B?ZDhDTDdRNzBGUy9jWFhNZms5MUVSTEFMTjVCNXB6RUI1ZFErUDU2ZGc0NVFC?=
 =?utf-8?B?R2J0b0tJNkVYYkxDcmhGeVlONy9ubFVnaHAxT1UzSW9PeFVHd1VsT3dic0tm?=
 =?utf-8?B?VkprRHlueEJFUnhuRVVKR0h5cUhiaU5ieXl4SDAzMkVvanRvTUduWTJmalVJ?=
 =?utf-8?B?bFVpTllHQjZRbjRNK2RqRlN0OVNvU1FqTUU4UzNoSU1DL0lRYmRaR2F4Uk5x?=
 =?utf-8?Q?1BehIo2OqV6ojgC8Md/UG/BZhbWIiW53vuv0/Ne1P4=3D?=
Content-ID: <713CA0EDD539644298A89E6B049315C4@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83151868-c19b-4faa-7852-08d9df9a073f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2022 00:31:28.8724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v5gx2HNa+l3b264CdL3s/sNBelrTWEqu2pIePwawPiHvL6CZLpooxoZZJt+BVyXHg6ZeGmyU4Ymeb2Hg+UmLSd3hJdYBSFjuqxa7hLa9uOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2206
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] iavf: Add reset to
 watchdog task
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Pawlak,
 Jakub" <jakub.pawlak@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAyMDIyLTAxLTIxIGF0IDE0OjU4ICswMDAwLCBTb2tvbG93c2tpLCBKYW4gd3JvdGU6
Cj4gUmVtb3ZlIHRoZSByZXNldCBhcyBzZXBhcmF0ZSB0YXNrIGFuZCBpbXBsZW1lbnQKPiB0aGUg
cmVzZXQgcHJvY2VkdXJlIGluc2lkZSB0aGUgd2F0Y2hkb2cgc3RhdGUgbWFjaGluZS4KPiBUaGlz
IGFsbG93cyB0byBhdm9pZCBhZGRpdGlvbmFsIG92ZXJoZWFkIGZvciBwcm9jZXNzZXMKPiBzeW5j
aHJvbml6YXRpb24uIFRoZSByZXNldCBmbGFncyBhcmUgc3RpbGwgdXNlZCB0byBtYXJrCj4gcmVz
ZXQgcHJvZ3Jlc3MgZm9yIGFzeW5jaG9ub3VzIGludm9rZWQgY2FsbGJhY2sgZnVuY3Rpb25zLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IEpha3ViIFBhd2xhayA8amFrdWIucGF3bGFrQGludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBKYW4gU29rb2xvd3NraSA8amFuLnNva29sb3dza2lAaW50ZWwuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IEFya2FkaXVzeiBLdWJhbGV3c2tpIDxhcmthZGl1c3oua3ViYWxl
d3NraUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxl
a3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+Cj4gLS0tCgpBIGNoYW5nZWxvZyB3b3VsZCBiZSBu
aWNlLgoKQWxzbzoKV0FSTklORzogRnJvbTovU2lnbmVkLW9mZi1ieTogZW1haWwgbmFtZSBtaXNt
YXRjaDogJ0Zyb206ICJTb2tvbG93c2tpLApKYW4iIDxqYW4uc29rb2xvd3NraUBpbnRlbC5jb20+
JyAhPSAnU2lnbmVkLW9mZi1ieTogSmFuIFNva29sb3dza2kKPGphbi5zb2tvbG93c2tpQGludGVs
LmNvbT4nCgoKPiDCoGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zi5owqDCoMKg
wqDCoMKgwqAgfMKgIDEgLQo+IMKgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfZXRo
dG9vbC5jwqDCoMKgIHwgMTIgKystLQo+IMKgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2
Zi9pYXZmX21haW4uY8KgwqAgfCA2NyArKysrKysrLS0tLS0tLS0tLQo+IC0tCj4gwqAuLi4vbmV0
L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jwqDCoCB8wqAgNCArLQo+IMKgNCBm
aWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCA1NCBkZWxldGlvbnMoLSkKCjxzbmlwPgoK
Cj4gLXN0YXRpYyB2b2lkIGlhdmZfcmVzZXRfdGFzayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmsp
Cj4gK3N0YXRpYyB2b2lkIGlhdmZfaGFuZGxlX2h3X3Jlc2V0KHN0cnVjdCBpYXZmX2FkYXB0ZXIg
KmFkYXB0ZXIpCj4gwqB7Cj4gLcKgwqDCoMKgwqDCoMKgc3RydWN0IGlhdmZfYWRhcHRlciAqYWRh
cHRlciA9IGNvbnRhaW5lcl9vZih3b3JrLAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QKPiBpYXZmX2FkYXB0ZXIsCj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlc2V0X3Rhc2spOwo+IMKgwqDC
oMKgwqDCoMKgwqBzdHJ1Y3QgdmlydGNobmxfdmZfcmVzb3VyY2UgKnZmcmVzID0gYWRhcHRlci0+
dmZfcmVzOwo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2ID0gYWRh
cHRlci0+bmV0ZGV2Owo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaWF2Zl9odyAqaHcgPSAmYWRh
cHRlci0+aHc7Cj4gQEAgLTI2NTEsMTIgKzI2NDcsOSBAQCBzdGF0aWMgdm9pZCBpYXZmX3Jlc2V0
X3Rhc2soc3RydWN0IHdvcmtfc3RydWN0Cj4gKndvcmspCj4gwqDCoMKgwqDCoMKgwqDCoGlmICht
dXRleF9pc19sb2NrZWQoJmFkYXB0ZXItPnJlbW92ZV9sb2NrKSkKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldHVybjsKPiDCoAo+IC3CoMKgwqDCoMKgwqDCoGlmIChpYXZmX2xv
Y2tfdGltZW91dCgmYWRhcHRlci0+Y3JpdF9sb2NrLCAyMDApKSB7Cj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHNjaGVkdWxlX3dvcmsoJmFkYXB0ZXItPnJlc2V0X3Rhc2spOwo+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47Cj4gLcKgwqDCoMKgwqDCoMKgfQo+
IC3CoMKgwqDCoMKgwqDCoHdoaWxlICghbXV0ZXhfdHJ5bG9jaygmYWRhcHRlci0+Y2xpZW50X2xv
Y2spKQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1c2xlZXBfcmFuZ2UoNTAwLCAx
MDAwKTsKCkkgbWlzc2VkIHRoaXMgb24gdjEsIGJ1dCBkb2Vzbid0IHRoaXMgdW5iYWxhbmNlIHRo
ZSBjbGllbnRfbG9jaz8KCj4gK8KgwqDCoMKgwqDCoMKgYWRhcHRlci0+ZmxhZ3MgfD0gSUFWRl9G
TEFHX1JFU0VUX1BFTkRJTkc7Cj4gK8KgwqDCoMKgwqDCoMKgYWRhcHRlci0+ZmxhZ3MgJj0gfklB
VkZfRkxBR19SRVNFVF9ORUVERUQ7Cj4gKwo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoQ0xJRU5UX0VO
QUJMRUQoYWRhcHRlcikpIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFkYXB0
ZXItPmZsYWdzICY9IH4oSUFWRl9GTEFHX0NMSUVOVF9ORUVEU19PUEVOIHwKPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIElBVkZfRkxBR19DTElFTlRfTkVFRFNfQ0xPU0UgfAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
