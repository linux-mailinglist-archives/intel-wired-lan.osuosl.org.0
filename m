Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EBA6E67DC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 17:13:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D150441E35;
	Tue, 18 Apr 2023 15:13:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D150441E35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681830835;
	bh=9YYpQlxk3i2Oo9VNVyWwr+Fc9wkOsk5JyTpnlsVQ2pc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m4/CbozJrV6K4jQQQo8x4kUDMyppznv2BS7uZ4A65okrb0NyazUSaAAP4jyg6d4xe
	 QRaxPHS5H5OCiis+4QI/t83XJLFBSTvaDEheKzl3AGzUADUkqHFEg+YpOswcRBZhPL
	 dj+Xc579j9dVYjP+Fsy4nmPDSIdnm0RPeZm9V4NT1bHkAS6SoVK5+BFQGO1nszjRBx
	 VOFXkHOMUbHa8JQxjngKaakW5b6J7GHLRzQews9WxpDK9dMMZj9P3WMZHSWkKrrTJo
	 XzqLizEMmQIM1iy42Im0GYEfVYFtLOoR9QTbP1OgA57VTFJ8xFoh85nz/pB7yfpI7r
	 qsl519w/ncR0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jUSZC68lJNwu; Tue, 18 Apr 2023 15:13:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BCE3741E26;
	Tue, 18 Apr 2023 15:13:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCE3741E26
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B7AD1C427D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 14:55:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 117CA82178
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 14:55:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 117CA82178
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d1ecCa4OTo7S for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 14:55:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08DEA820A8
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 08DEA820A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 14:55:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="408097074"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="408097074"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 07:53:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="780522640"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="780522640"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Apr 2023 07:53:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 07:53:45 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 18 Apr 2023 07:53:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 18 Apr 2023 07:53:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IqW0Y/485laTQXhINAfsoBvi5WGYyzmfkm04+bPuq7zpUeeV9EDqdfpr0K/8BcsGtjmDOB8Stb591BpZFpqVEJvACnv3yjIJPHZZADH5BhjUWEegSy3ijWvzY+ytyxSNSavZriJqx7lYhIa7RfXBL8WVwtF0BymlFS9Ij3ATAzJkeOveP+TB2p+ZOuB7wv719+jppCkV2ZINkfhT4JR2uu0gsIhYUhGryPH4FLVIux1BO+be87/nHXgwkvGZo9NS6ITeyljpNYL/h09w8pFmbyIn/zV1aJ7ZS9h6/58F346wtct+Lx1LpcSX/lm1gH9pqiXTTVkq79i2IZugB+lxtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dqilThP98GsGzzzSbGhKj2QyhNyDzOGW9K6xICagjNw=;
 b=J9OuX2bcpg85icgY7iEvB8jQ60kh5heOvAyAJ7TtH3e0LYvh7e7OvyTZYaNAQAWt9St6g7c6csxZW+r8WgJ1N1iUALlvLJjBfoBgfMKfUJ9GiwNX0DlDbcc1T6vmcpDmJMjLfNT2tjhqPE/Rm1CRgzirZzf4tP04+5hnXbz9/V3LcY77BNRX9tEjssAWyHJCnaStmrNAHT+aEKjqbmfy0SmTO4unahHzatmNhheuPgHb2xU86k5pO8c3kx5NrA+qSP39bvRc7mxZy9frYxwljnIqfxnnK6wB/moQPai5VH/dN9zIpNQAyrNtgD4WEwxckOdwjtMLJP9bQZ/O60GvFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by BN9PR11MB5244.namprd11.prod.outlook.com (2603:10b6:408:135::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 14:53:40 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee%2]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 14:53:40 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Brouer, Jesper" <brouer@redhat.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Thread-Topic: [PATCH bpf-next V2 0/5] XDP-hints: XDP kfunc metadata for driver
 igc
Thread-Index: AQHZcfoI9V6NvnDgXkCLqXnH5km0Xq8xJpLg
Date: Tue, 18 Apr 2023 14:53:40 +0000
Message-ID: <PH0PR11MB583075A0520F8760657FC4BED89D9@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <168182460362.616355.14591423386485175723.stgit@firesoul>
In-Reply-To: <168182460362.616355.14591423386485175723.stgit@firesoul>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|BN9PR11MB5244:EE_
x-ms-office365-filtering-correlation-id: 0d859540-d99c-4399-fcfd-08db401cb27a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EVQh/bg25bYp6uKmzHkCV0FTW2Ah2jjPMwlEXgt1uG3zSFT8/qhUecU/EwCSEJQnpaNutS6ND5oUEZaNAQt4pOQwx72+BzNxBUYdhKrbzYkYAmDD5n3ohZcu/z4wtCnKQ84Dru+GF98Hvf0uyyHA/ZYM2dr1+dXiGbcFby949U10wFfOTEhMrkCBVb5a6I705D3J7c4XxlikgKHKcM0PJKQVxJ8acY1xRqYe+KneuK8ptVClTExRzer3jSHGr9jwnYzYtLl/wGJLKKzDN+haMKE0sgTPoK06yd2xe//bEnOWD/ugNXlVz4CZflwn+R3GDKsJEt1taviKbrYObpisgv4bDQHgmnCO1Aw6ulGWjRluT32OGMfpk30bwm2phEtH5sdUeiStECpDMjgZJA2OeMp4zVlSn0JJPd0EcetLHon39ea+6CKXZpwc+N3MENlcGOt7vbCGMGxxGSdBayd98r9+r5uUDAGqk/hnLLGCoBytigqWt+nTbO96ZjVAKNfppPiDIQL69r45TKWgzOcVb9njMXCBwU+fckOk5a3rYRUKzT/bHAgvzC55LlcJwxbk6hWXCNQLfSTHMNRYazByjQE4ZN8/RiKXFpGLhx93Y5ECKV0hqxx3IrBnpFrwzuJG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(136003)(346002)(376002)(39860400002)(451199021)(7416002)(52536014)(5660300002)(86362001)(83380400001)(55236004)(186003)(9686003)(53546011)(122000001)(82960400001)(26005)(6506007)(38100700002)(8676002)(38070700005)(8936002)(33656002)(478600001)(54906003)(110136005)(7696005)(71200400001)(316002)(55016003)(76116006)(41300700001)(66446008)(66476007)(66556008)(4326008)(64756008)(66946007)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V0ozLzFKMFVYVnQ2UFEwUmJKem9aSWRhbFBCVnhIdXZyeFFBeVB1dko4OU5O?=
 =?utf-8?B?VDFORmxiNTF0QUlvaGhnR0NjU2NVbkZMOVlDSFM3bHQyWHhMYmIrdHNUK05H?=
 =?utf-8?B?VkJPTHFaSGdzMXp3bCsza3QyemdSZTY5ZG1WZlArYUFZL3dKQkR6TitwTi9O?=
 =?utf-8?B?OUxGTUJ2VzBTZE15SXpkbDVZeDJMV2VwZVlXbHd0bGVoSUgrVTBVYXhNTG1D?=
 =?utf-8?B?Y3BoMllnRDFTT0k3SitXV0JtWTYxem9VNC94aU12QURlYk0xaHZZNVFsWEJT?=
 =?utf-8?B?dFh4em5mOGMwNmdSYjhzWm5CaHhJWmhtNU9VUG01ZndrbG4xb2dVamxON1ZV?=
 =?utf-8?B?emlCQUNKWWZwWVRUUWk1dHg4a2tKYVFSbzROT3NHYmRpbm9kWmVYMkw0TXFR?=
 =?utf-8?B?SnQ4T2xFWGJyTDI2V2cvRUhJKzJqMjl5ckEyRnB6bDVpcG1Pd3JNYm93Qi9P?=
 =?utf-8?B?NHNBZ1BBN1pHSDl2aC95L09oTjcwcTlYanB1Y0VsZ1gyREdrRFpTQ251cmdD?=
 =?utf-8?B?Z0h3eE1CS2RvempPZy82MTdUWlp0TzZXdW5sVEhSUUZaUVhFeVN6aE1aZEhQ?=
 =?utf-8?B?S0NTZzRxR0gvNmtNVkRSUUpWS3lQemYwK3B6UWg1SGltc2NLbENURXJDa3Qx?=
 =?utf-8?B?OU5peWx3aEtadktKVEhSNGhBbEY4eThSVDA5ODAvZEpnclNEMjg3YkJLd3dQ?=
 =?utf-8?B?alkwMisyYXMrNG01eHlOdzh1NG1vQ1hDY05ISjhzN2tiSU8rN1NXSEp0Ky9C?=
 =?utf-8?B?aEJUTmQ5NkUwa2tvbEdZTWovYjhKUzBiR0Z1eVZLLy83WDZIM2xJVUhVSlNJ?=
 =?utf-8?B?cTZXeUxOZUxjZDBNNFJoeFo5VnFlMWIwTTZhNTlaaWJTYTB2RWFZS0FrNTU1?=
 =?utf-8?B?ZEREU1JSa045empnaWx0K0tiNTNjcVUrS2k2Y3pGUlo3cFhaalRxL2JBRzRo?=
 =?utf-8?B?OXkwMmxYcVFzOTVYc3BORG51dHVXSXA0cC9WbUVqT0dNMVRmMGk1RTh2cWM3?=
 =?utf-8?B?YkFqelhHU1lOUXBVZU5iRis5dVlSS045QTNvdkN1alM4QWpmdUtobFlsK2Zv?=
 =?utf-8?B?TWVGK0ZzeDVOVHo3THpuc1dSbzhPQmNVQUZlQ2RJanh5d3lXaitHZm4xTW12?=
 =?utf-8?B?MEd5ak5Wc3VFMHB0WERUM3F5VlFQbXJDMlpwMlpnTTYwdUw0eU41TFluYlJN?=
 =?utf-8?B?VXJ0SzJnWG5QVExIbGRtSTI1ZlJYOTJIQTRMQStRUmozUytmWjY0aUhVaDkw?=
 =?utf-8?B?cTE2ejFSRlRkK3JqaE1GWkpXUU4vQnFZOGt4bGZKN1Y4NnhlVTdOWXZOekh0?=
 =?utf-8?B?SUlYektud3lVNHVnMWFZNFhlOG4zSWRRRmpyZlM3WnBpWHBFenB0cjdrZTlR?=
 =?utf-8?B?YUlkbk1jQUNYN29OYlZxVzRnU3AvanF0MXpIUEwzU3hEaTUyYm1yWC84b2NZ?=
 =?utf-8?B?UXJCQ3FZUkkwaWMrRERIZkwybWxqTzFTaWFzM21OUEU5b3poQU1EUVRDWXZu?=
 =?utf-8?B?ejJ1WkZwMEtQR1A5bnI1NldnQWJ5c1d1TTFxbmdFMnNoekNrRVdzeSt2NW0z?=
 =?utf-8?B?czdicnl2Y29GY0pMVERXbEN4WXdXalVrOGlWck5ZVHFlMmpKQVdwQzFQc0pP?=
 =?utf-8?B?WVRCOXVaUG5ST1BvbjZiVWhSS2FpSWtLMjZaQWozZmlWNmg3UndkWk8raEVQ?=
 =?utf-8?B?Rm5EV2hSWjV0TkRMRUZvTFQ4TDgxdXZTSnJuaVB2YjdLYU1jcWp4NTlJOUFy?=
 =?utf-8?B?QytRNTJOWlA3YUExNHhzSUJibGlPS2JPRStkNGp2di8xYUdsN1lHVmlndFFB?=
 =?utf-8?B?WXFTR0NrT2RWRVF2dXBTZmR6WXBzbXRQRStwbHhnMm5sbWpXUERFTlRjbTEv?=
 =?utf-8?B?RUx3TDZGc0Zzd2tHUWp6ZFNZRGhXNHhtejMxc3pSZXpXWURuYWt6WEtSZkZl?=
 =?utf-8?B?RERhWU9vSTdjaHN0aEcwTU4xNU5WNi9TSjJITm9Gbk9yWXVNaDhpZUlrakRr?=
 =?utf-8?B?Lys2OEJHMVR0a3RoT1AvRW91MjA5TzFkOW5hYzZmbGxTWCtVZGZKWnZ4QjFU?=
 =?utf-8?B?cXExVnlDM0NQbDJEbFlPVit2cXBvd2ViQnFUcVM0NmFpdWh4V0hGamczckQ4?=
 =?utf-8?B?RE90cjN4VjdBQVBHY1Z6MWVORGVnYngvZkRSa0FHZ25WOTJXTmgybDdkY3ZJ?=
 =?utf-8?B?QUE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d859540-d99c-4399-fcfd-08db401cb27a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2023 14:53:40.0204 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 07UpyXFS25M4VRmSJ2XX3OqZPo6SPqqO7O/HiQDRSJjvb2EHkIScwxPU6QHa85m99+zq0OFCOls7f9D1ismaR/r1gTT5aHVQSzP7Yf0YrDM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5244
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 18 Apr 2023 15:13:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681829723; x=1713365723;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dqilThP98GsGzzzSbGhKj2QyhNyDzOGW9K6xICagjNw=;
 b=YUwNWEetRL+JZ9904KIiWdtKqmbYKidESxsZHRdSvTIaG0qCVk9nKbmY
 4hHr7g3sfAyOJWt9BYHUFUvrrstFJqTrPWArdVzB9RTrL13N2Lf9+0V/V
 QcaT0HsJtfGzNzVyXj1wAZQonAFIX9el8/3mFk8J8XRl8Pf2gNDxOVwEO
 3u8cWTmp6GXmENjkcJqd52uRyAyYLNjC/vEGwSZ+4GhH/kkdQNyqm0KkI
 xish7FZnGTWdeyUUhQ8fjAyAMJ5S8bciO9S3P3C5R8aC6Y+KgXLft2liq
 HzTace/AtcaLXP+7bak6wHBHgyR77yqBxrNyV73s/Irc4TCr9Mv2Cf7sH
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YUwNWEet
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V2 0/5] XDP-hints: XDP kfunc
 metadata for driver igc
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
Cc: "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "martin.lau@kernel.org" <martin.lau@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "john.fastabend@gmail.com" <john.fastabend@gmail.com>,
 "ast@kernel.org" <ast@kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Brouer,
 Jesper" <brouer@redhat.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "hawk@kernel.org" <hawk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tuesday, April 18, 2023 9:31 PM, Jesper Dangaard Brouer <brouer@redhat.com> wrote:
>Implement both RX hash and RX timestamp XDP hints kfunc metadata for driver
>igc.
>
>First patch fix RX hashing for igc in general.
>
>Last patch change test program xdp_hw_metadata to track more timestamps,
>which helps us correlate the hardware RX timestamp with something.
>
>---
>To maintainers: I'm uncertain which git tree this should be sent against. This is
>primary NIC driver code (net-next), but it's BPF/XDP related (bpf-next) via
>xdp_metadata_ops.
>
>Jesper Dangaard Brouer (5):
>      igc: enable and fix RX hash usage by netstack
>      igc: add igc_xdp_buff wrapper for xdp_buff in driver
>      igc: add XDP hints kfuncs for RX hash
>      igc: add XDP hints kfuncs for RX timestamp
>      selftests/bpf: xdp_hw_metadata track more timestamps
>
>
> drivers/net/ethernet/intel/igc/igc.h          |  35 ++++++
> drivers/net/ethernet/intel/igc/igc_main.c     | 116 ++++++++++++++++--
> .../selftests/bpf/progs/xdp_hw_metadata.c     |   4 +-
> tools/testing/selftests/bpf/xdp_hw_metadata.c |  47 ++++++-
> tools/testing/selftests/bpf/xdp_metadata.h    |   1 +
> 5 files changed, 186 insertions(+), 17 deletions(-)
>
>--

This patchset lgtm.
Thanks for the changes.

Thanks & Regards
Siang
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
