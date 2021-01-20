Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 753D92FDC43
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jan 2021 23:17:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DEFDD20447;
	Wed, 20 Jan 2021 22:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KlB2NkekONLd; Wed, 20 Jan 2021 22:17:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 64AD4203FC;
	Wed, 20 Jan 2021 22:17:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8BDFE1BF424
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 22:17:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 806B42038F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 22:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rzsgHOeEBJbd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jan 2021 22:17:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 5A19A20365
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 22:17:14 +0000 (UTC)
IronPort-SDR: 4Msnn+7lGOBdclFA4iANN/h4F2LqqS2C6RlXMcurXo6ghXP5LVIB3snx/hgmnpIQ3lpfdZY9N0
 BsQwOTLLl0Xw==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="179335499"
X-IronPort-AV: E=Sophos;i="5.79,362,1602572400"; d="scan'208";a="179335499"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 14:17:10 -0800
IronPort-SDR: zC1G5BKR4qZeu7hurqY9x95XDJnn/HBsLUzZ2lUkeHQXX0B2xJKu2r6ZQ/EHPaZfQkx4GANCj3
 Os/VfUQeNUlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,362,1602572400"; d="scan'208";a="366533227"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga002.jf.intel.com with ESMTP; 20 Jan 2021 14:17:09 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 Jan 2021 14:17:07 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 20 Jan 2021 14:17:07 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 20 Jan 2021 14:17:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H1/6A244jBfl9Hq/9J+9mgAZEauItzi5nUDQqtn7Ryt6nBmbJW5lDqzjMdGyBXzCvDpHpzszkxbeHM7N18cOQ0XRnu2aVGjAh3sDvkovNHrKsXhHyb5jp0m06KPZ4UqNbv7Aj9AudGKiETEYO/lYMyinVcnvDZePWRYSoabpNSxLblEmwUitiCUqLkk6bCsCKugL2695MxD2IXsfWzN/y3Q9APD9S5JIcZl9PHidijG4hYNAAcoi2DBjtUxLld+ayiZWTRVg+Y4a97OGip/zR3n/nOOM3o27JymowlKBO7J/B6bNrCVC7B2WYa0Tci2P/hNG/a+EfgLXQVfZp8ojgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p5Kt1cKEf+pH1CGCWOl+T4vjU0xnhE8FjQ70fQ5gvDk=;
 b=ek4UhxK2yhyLQsbv0d+ubi+c8AB42/L7/KxgDSq8/FC0k6SrGmTE5t07a2GPDzlzOsdiF+Fs682NXzMOaOZekOGpyA8Qv5CQZb0GUQiw5KY/kiJfwQIPc8b5H0VnB168rHFzAVE8nUf1UcuBCjlPGHVjvPMUoo3jQE/PJL7oo6L5dbQA1O7Ko6GQ9vYId6OxmWHA0cluVlfE38DkWqLJbE8WjdOt1RivZNFe6bsQ32kau1VjIzZkKEFniER7qw1FcIYqjqySCx9fgCiKRQCSO1BMgDJc05n4L8J19p+0yyyDszC3pghovsDuJOFwHDlqctCEGV7kE1q7zcYUX7zJOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p5Kt1cKEf+pH1CGCWOl+T4vjU0xnhE8FjQ70fQ5gvDk=;
 b=CZLAasyFXwjVY/DMhyVeXKg2D8t8dNvhEsdc64dRcUjMyYOsF/zJvuIIFTlLkf8fbttM8aPqS4x9kmixfRAShC7JqzVdjbOgjjlMSgqbfK/hbnAbDEZzN6KzLK5PvpIPkK8EYdC+0NeLYsW79dSPFnWPgWTEfyWFTGrCFLWJZ7s=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3184.namprd11.prod.outlook.com (2603:10b6:805:bd::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9; Wed, 20 Jan
 2021 22:17:05 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::fc53:e004:bade:6bc6]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::fc53:e004:bade:6bc6%6]) with mapi id 15.20.3784.011; Wed, 20 Jan 2021
 22:17:05 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v4 1/2] i40e: Revert "i40e: don't
 report link up for a VF who hasn't enabled queues"
Thread-Index: AQHW7dIHwNgKHHYuWkCwQofYIQZ2Xqovu8yAgACTjgCAAMj4AA==
Date: Wed, 20 Jan 2021 22:17:05 +0000
Message-ID: <b7c9cd467a21cd531e3d22c6388c1f95d582bb38.camel@intel.com>
References: <20210118193454.275037-1-arkadiusz.kubalewski@intel.com>
 <20210118193454.275037-2-arkadiusz.kubalewski@intel.com>
 <a1480517830b533099bf5ce90e09a9fd5c00504e.camel@intel.com>
 <DM6PR11MB2876AD6ADFBAB24F8BA8D631E5A29@DM6PR11MB2876.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB2876AD6ADFBAB24F8BA8D631E5A29@DM6PR11MB2876.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bfe1e413-002f-4ab8-87a4-08d8bd911ee0
x-ms-traffictypediagnostic: SN6PR11MB3184:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3184259F9CB5F100FE3B35ADC6A20@SN6PR11MB3184.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:800;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0QDHdkzIAPQITJyVSaHdiO8vUuhNmEhj6IsQnUDORnuP0cPZXBLsIeScQNKi35UMconHAl8Ury3nxRxbwwkhTxrhXMc65VA2lEJWEvMJQhcx5qt2N8Rxao5ZfchzU+6tbut6C3fEpWZXbRJhj3sb094CbI+HALLfnQITzKwX7hgCMjdI3eOKahcTUOAos6xyfgH76PZhwhLjD+zhK79R8Q6DUvcT4VLCIEaLPY10kiVWBPkkUta3J4xDYm5AK4AOmkHIx6cyrn1apDbHY2CuxRehTQrSGxowwzyma0OwbB9mRS0HW3oCqT1NPJ99suhdNKcM4YkliKPcpulE1xQCnrwEMAUEd8gs8Q0IxiWg5gSePktwSjxdrnAsw14JeOSsuMhYA2EbONgl46RG/AFIM72o/aXhMpQpShPB8wUfYWLmtRbvQGtTM7fMBJOJKgicuvYwOQPf0Zxar4jwvOQ3zHoFuqHX+Z/09c6DQeqhVb8AKQ6yR13sXE7SCSaeueBAElsStOhfBSfagwkIXcny+ODlsw1ESU8PNaYJz3LzSLk32NboA8/KyXqKnz8WVt/4sEs3mpWviyWEwsfuk4o68+jN3Vnu0QD+6O57XnZ570zDm9KeZwTsvfrs9+CLMuDKaN09yFd3l328KuesZP7kbw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(366004)(396003)(376002)(39860400002)(71200400001)(6862004)(66476007)(76116006)(86362001)(66946007)(4326008)(26005)(8676002)(66446008)(2616005)(478600001)(66556008)(91956017)(6636002)(64756008)(6506007)(966005)(6486002)(37006003)(5660300002)(36756003)(83380400001)(4744005)(2906002)(186003)(316002)(6512007)(8936002)(54906003)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?ZmZYdXhCWlZHMm1seWVjSUE2ek5Kek9vV2p6OFlWWE5BRDNoN0VZYjVyZ0cz?=
 =?utf-8?B?NUZMUXpkelU2K3l1VEtURmJCMlBUR2VKY3RkSGtrMFEySURmWHkwSWVXUmtM?=
 =?utf-8?B?RVp6TUQwaUl4SnF1UjFoTDRHTXNPM3lVa3QwZ1J5bUhMTlFNVWpxL25IYkZO?=
 =?utf-8?B?bDhOblVoSXdsZWZCMTZ2UUJUU1gzc1cxTnFwTWt0SnN6S0lZenp5RW9UNWRP?=
 =?utf-8?B?QnY4bzYrVXN2a21yQVBsTmpWR1NkQkdSdGFnbllNNkpqS29RbUtLcGJsQ0ph?=
 =?utf-8?B?b0hVOWhZOUM5OTN5cmR2SEdzajNRVnpjRGlMQUJGa2lDOHk3Y1laRklEM2J4?=
 =?utf-8?B?dEJJR3k4cFFBV1pWYmRMUmFPdFNJTythVGxaMkxMYXNmZG5lWnorK0x4S0Fq?=
 =?utf-8?B?VFI3NkFzSGFPSW4xTDREbXZkRGlNQUNidFRoRE1taTlEd3pBZ0RXUFFvMTJY?=
 =?utf-8?B?NEpaZmxwTjd4ek16aXU4TCtveFpUV1d2WVVrbk5yaTRZSTVWZzZmejNseTR1?=
 =?utf-8?B?QlkxY0k5VTZIZFVZQVpBM01hRGhJM2VLT1lSQ3phVUs5cFlrNmtPZzdIaitm?=
 =?utf-8?B?cm1VanBlcTl2dFF5KzN0S3RRRFJ0UERvaGV0czd3eWFaOG0vUWppNW5mTGtr?=
 =?utf-8?B?Q0UwcmVwLy9HSlJ6cWxhR0JUNmxRcHcrdlZnK253cUhHaG5HL1Fyc1hKU0dl?=
 =?utf-8?B?WENVSzhZNDhmckRpMVdLUm95SHBZWU9SeTJHaUJtbTZVeEVyMG9uQmhsWWk4?=
 =?utf-8?B?WllNVFdhNDN6VUtwb0VNa0REbW9SaU91WEpJMkZDUGxvT0NCN0NidkFZRnB0?=
 =?utf-8?B?Y1FQWXJUWlBYSUpvd2pCZTVVeHIwckxWVVhXaFZ4NTlHM0I1bHJ5SkpPeUQ0?=
 =?utf-8?B?U2lyaXBtdTU3WVBJVDlIMVlBa2xEUkl2TGtTQkR6anZDTHhJT3pUcW9FTlJn?=
 =?utf-8?B?VForOC9FSEV5UHFRaHVibFk1WVprZWxGLzlQTERjWFZRV05TcFI4M3JSZkdH?=
 =?utf-8?B?NFY1NGJRaWsyY2NBMzFMOEdhOFBjcnk3aHNvRC91NlJwQ1c3Z0xRSzNnL3FJ?=
 =?utf-8?B?d3JNS3N6aGN1WjA3NjFkeE5QWDZnSGxJb0YyeUtaVDRNR09sMmxyTC84MFZS?=
 =?utf-8?B?Q3J6Q291Sk9iUjl4eEUyRTU4RUVKemc0T2NrTHVwam9YL3RpcjVhWW1RY0JK?=
 =?utf-8?B?ekU0ZWNqR2UvbzFGTTR4bVRvWmxudEFWQVNkUFE5N3hUNjdzWHc0UmlSQW1N?=
 =?utf-8?B?YlpIbVJGaGtLQjBPRUprQUZFanhsdTlIeWRQcm03bk43aVBEYU1nZ0JocVF5?=
 =?utf-8?B?US8rUGFua1YvczZGelFKZGo2bXNJNGFPci9RNXlEbXo3b2VWZWU2S055SFZT?=
 =?utf-8?B?ZXF5NE9VZlpZUGZKemJ2Y2JrdnJ2Mk9CTmQ3MXdlZDlUZXQ5RkhxOGs5azBT?=
 =?utf-8?B?VlNuWU4rRFZDZ3NqVktxbElUTTczQVlXbnJoMHJRPT0=?=
Content-ID: <BE98B9B2AF83E14DB450778572C15708@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfe1e413-002f-4ab8-87a4-08d8bd911ee0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2021 22:17:05.8074 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r8FDPBoyHI6PN7B9Ynddsi9nEy0eLQebuorhtBXv4+Ez/4CbhchXPOJYSeFjpRIsuSS620tW4l4bT9fQ4vVk6cmvE7gBkAe0YR37YXpyWfw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3184
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v4 1/2] i40e: Revert "i40e: don't
 report link up for a VF who hasn't enabled queues"
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2021-01-20 at 10:17 +0000, Loktionov, Aleksandr wrote:
> Good day Anthony
> 
> This is the first time we push a revert commit. /*we thought that CL
> should be enough, and provided standard revert commit message from
> GIT*/
> Can you link us to example of good revert commit message?

Here are a few links to some reverts to Intel drivers:

https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-
queue.git/commit/?id=6cecf02e77ab9bf97e9252f9fcb8f0738a6de12c

https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?id=caff422ea81e144842bc44bab408d85ac449377b

https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?id=0a92892c69bd01b1a9481ef49587f60e97c64042


Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
