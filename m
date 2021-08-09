Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D7B3E406C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Aug 2021 08:46:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A54340275;
	Mon,  9 Aug 2021 06:46:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c2SV4nq0fQqA; Mon,  9 Aug 2021 06:46:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA9E040203;
	Mon,  9 Aug 2021 06:46:03 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2F8601BF3B5
 for <intel-wired-lan@osuosl.org>; Mon,  9 Aug 2021 06:45:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29E01400C8
 for <intel-wired-lan@osuosl.org>; Mon,  9 Aug 2021 06:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gzUqhXAkL_CK for <intel-wired-lan@osuosl.org>;
 Mon,  9 Aug 2021 06:45:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C194400BE
 for <intel-wired-lan@osuosl.org>; Mon,  9 Aug 2021 06:45:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="214363934"
X-IronPort-AV: E=Sophos;i="5.84,305,1620716400"; d="scan'208";a="214363934"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2021 23:45:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,305,1620716400"; d="scan'208";a="421349610"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 08 Aug 2021 23:45:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Sun, 8 Aug 2021 23:45:56 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Sun, 8 Aug 2021 23:45:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Sun, 8 Aug 2021 23:45:56 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Sun, 8 Aug 2021 23:45:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dYrrEMYr8anaH88MlX4/4aBaOuzH5VJ1d6NeM9sg7IB/M5FBOMoKhy3O5j/fv5MNJaIpcKOqcAqqITLZ+82u4wQ45zdnecjdVw2dh+j/mFwOw82BdiIB0mJqBz7NwZtdCdo1FwdtkemsS12CIs+V/5CvgfDtqvJ9Va4k6EXhes8L2go7R4owaEigWltJ3pfrzHceDySrtbuOfd054cuqJvcMKY7+WWPbV7qEn+oBOHJawq+xMHVnB4HBtSICdY+lG2WT9WSNoCldj61QKjLNFoJYp9k0gZBoD1Mo4mH/f01Il1JWbPJ7JU9gW0HfbusOGRdwDJtNhgzIMYAwqHdSzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4eVHwWJO6ozjLuiJqzaXiU7hLwWrHfgi166saJ3SqsY=;
 b=To2+P/UWWZlWYOW4R8MIbWODYG7Zs8Km4qVCTy4qiUgSlfF3scvruJNKuBqoMbV5G8ipeDcGamRJxZ3S0IUnysBKrbxu5vmlHZHMDyTqjsSfVyM2UZtsuUUkGWArYxnGDf8nA0Bvolj/FUaWMRdsO4cDSaCzpBnIWbnty7gIV+eBNPapTxWfEFbGMfMSoqBOXklqtq9ZLX7bJ/Tj9r7HTKYd/4l2GnFk5IZo/EwZCDj1nE3URCP2f1RCbwwdcjl8kM5STgwIsmu9S7gvQOOegD6pgVHbIVAe7+Vu3ba78dx91CoJsmg+icQ+yYQz5q5bMbKmh3fjMMsLbbbqNhscxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4eVHwWJO6ozjLuiJqzaXiU7hLwWrHfgi166saJ3SqsY=;
 b=tFJsL0Ao3BooK90cocBrWEkQKAtsHUvbksFa4QccnarJAp93G8t4YIjU+38wSrSfurjnGhDqZyx8hvM3B39iTSm/T8UGfIvAe/+e6OHX6vNFQz8exeL0Z4gauKtOjQEdda2opJ7Z+7hzZWRNTL9qQvI7Yy8a0K7OAocHfeyPMhM=
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (13.101.96.140) by
 MN2PR11MB3902.namprd11.prod.outlook.com (10.255.180.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4394.15; Mon, 9 Aug 2021 06:45:51 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::e525:2182:4820:4082]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::e525:2182:4820:4082%7]) with mapi id 15.20.4394.022; Mon, 9 Aug 2021
 06:45:51 +0000
From: "Gunasekaran, Aravindhan" <aravindhan.gunasekaran@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support for
 CBS offloading
Thread-Index: AQHXjOox9IbgNESd3Eq1vH2s/IX51Q==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 1
X-FaxNumberOfPages: 0
Date: Mon, 9 Aug 2021 06:45:51 +0000
Message-ID: <BL1PR11MB53994C11A7D14C51ADE772909DF69@BL1PR11MB5399.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0a713c02-21ef-42f1-704c-08d95b01545c
x-ms-traffictypediagnostic: MN2PR11MB3902:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB390243B45C0DD5991E6ADA0E9DF69@MN2PR11MB3902.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XGoZbjyTNzM3G0ZI6X8g/d7hu44gClJInJWM5DmNxTHFTyWaZT+U6VzQANqyABOxB2wVRq10vfGPmubwBbeFy8uV5Ue+wqqls59YGtjE7+CPL6hO4xDi3pONAF9PeUrT5IT9R3lcnsSn0iI7mw+pLAcp0Ij6VMgq9RAYvPm2Ns5F6i66aY6N+9EutfRlBi12hmYfQcmMHMhzfclbcebpJQH/LeGBO6vsl76yCFf92e43RcfqAbRgLI/s+Y7HFhkOm/dTrfcFeORL1v1RHUdXs0fjx3NhCW/etuqilg//Q1QMdQZXbUTZK8okUzrWLJNLROdxqtJsLy0O/cPIvlIPkPFhQx3W0VFaLW3QVnO/YKiFltTb7sOD3z4LnDv/RqKVWvCFO9fFEV/oQJ86xi8AVObU6x4UQjuNtN5ku4StfqHy+ojD9xyn3f7QUy1rbLO2V7Vq3hfh9MujHokxGs1EajbI10lgNzGscqq6O766+4YFod9uecLTrKuFw1mBDm+oA2BUkJ70o8CwADtpRphRjL1aMibGmZGJgv5UEMP0WSYR2JcOfj81cytgjJUjtoqUdXyVncijN3cCxaThFt47AehWWFxA6GdeNG4wWRyd8yLukPBuSxUzVhyycVDuwO5QQOBkYlBHCXvvG29nAvi1EBZN7MOOPta4zxAsZ++KV9HigFJjaAtEpYMeaKj0IgE2vTshXn3/+iCukBiQhCkV7Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(396003)(346002)(366004)(39860400002)(136003)(83380400001)(6506007)(6916009)(86362001)(316002)(33656002)(52536014)(9686003)(5660300002)(38100700002)(71200400001)(38070700005)(186003)(8676002)(55016002)(122000001)(8936002)(478600001)(4326008)(66946007)(66476007)(66556008)(66446008)(64756008)(76116006)(7696005)(558084003)(26005)(54906003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5Je+Unu0aQJwYK52534s0njR7n6q/d6PvgjB+NIVAfaqY2PW4fAFQXMxKW8l?=
 =?us-ascii?Q?A5whS+1lP0TT7AglXfVhUxw2pfo+FvXT/nubjPbCnmdoNBwkWND5AuhJa2Rk?=
 =?us-ascii?Q?1o8o5pf6BI0rKKjZSC9RTFxd1q4RFQJt0v8U0xoGxhQnXYKbUytCEBkemkqn?=
 =?us-ascii?Q?yVwRrzcXO5zaqqGJdSnUYAi+w11w9rahom63UgfydbB4gXE4aCMeF5xQyw8N?=
 =?us-ascii?Q?pgSoClySpro/tA0xtVmUQq36MOjBSlBOwviNCWXVBf1wzLnZKTpQJt77+ZRE?=
 =?us-ascii?Q?b1dy6dkeFAOQjZ1Hcy5+6DdOZSt2OyEDwjvRHfCCRcDq7PLRKJWv8ijqAFZm?=
 =?us-ascii?Q?lrXSNk2yCKyjvi0Uz8b9v2N9OpVR0OWovZcwB/ELyBV3nI7sST8JwyOuGzVB?=
 =?us-ascii?Q?yIMd7UNRghS/8uVYXsViF94jcfLT2LAPSh3dkC6yKEbNRv7dA0kHfmMj/Vqd?=
 =?us-ascii?Q?7IrcLY4QOZgwOqLqJ2UEkiT94JAMe6PlrP/UxKDaqopPDJcP096/mI6xsoB3?=
 =?us-ascii?Q?ksowX8HYVYx61G43RZtwq1kkl1DL/Lvx1PC1hUBxb2+GE5g69jaaPXz45kWO?=
 =?us-ascii?Q?cU4OVSLtf6f+rvHEIcQkUhxwF7cSIJG3coA6g8QG1NSDzAeDd3pHszUdZkZR?=
 =?us-ascii?Q?nXjqmxCQVx3mP29xazeY6DvtgFu7y6bzxBxGmhA7of+ey6ioMAPJ+ZIcg+K/?=
 =?us-ascii?Q?d1uLuMHqZJFARRuTy5CbkfcxLOMj0Y3evXF89zleOLV8bpVXA/q2KdiXAwfj?=
 =?us-ascii?Q?/RsrqB0lg0DvEYNTVNaAF48IqJ+wpWLLrIzUI0VIPCQQEwplS2Au/80f+6l3?=
 =?us-ascii?Q?vHSfqTIcxCHUvQNFEwAIMTKj6MAHnz3W6oEK8LRrRqnSlDK+HWIuzYkVw5ui?=
 =?us-ascii?Q?4wpLC6pSzZUJGjGZfMsl+4u/1k5P+BXcXahyEW7YPERnciklm1ifLMv6NR9O?=
 =?us-ascii?Q?k7IIrnUjiz2asFiIKUHONXBVn9A/ITq9UmfPyPaOiu5l1Eb8h7aUNK9x5MZn?=
 =?us-ascii?Q?MPz6oh/hDRrvbcvoqFeFMiZxqDj0nX3V2wjfzRssglVxYEe08kXYC0zweAn9?=
 =?us-ascii?Q?uQigANJ1dT+MNttafYII2Ui3b6R5gfHT5Q64Hi8KcN/+7YDmJUB+h4rEKtaD?=
 =?us-ascii?Q?g+IfRVb53MOdpyd1IHIJxpl/hLLPny4oduA/JmRH4L6GgsgsRcGpk0v/DeOH?=
 =?us-ascii?Q?b5+PX7940CqM8U9honi7eL/vpVBaVzpNh5t83xKkQnM0WUIpq64y2MLFEk7g?=
 =?us-ascii?Q?9BZovOoEEWVkvb4K+6NMiei4ornTsa1qvQgeSo5jXU29mbvp6vY4mZs0f9lE?=
 =?us-ascii?Q?+M1yP+HpYCBJyPZ1+YGqNxtY?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a713c02-21ef-42f1-704c-08d95b01545c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2021 06:45:51.7427 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: inE7Fp+N80JINZJFc49Zl/GeI0UipdE3TYT6LQn6qLSRhhCWlL4danqxeh2mkiUHvzxfYH0d/VnqtOcajPxg/57YUXeVY5EUSTr2fd35/8t8gc7n6SK459LuvREyT8no
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3902
X-OriginatorOrg: intel.com
Subject: [Intel-wired-lan] Recall: [PATCH next-queue v2 3/3] igc: Add
 support for CBS offloading
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Chenniyappan,
 Velmurugan" <velmurugan.chenniyappan@intel.com>, "Chilakala,
 Mallikarjuna" <mallikarjuna.chilakala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Gunasekaran, Aravindhan would like to recall the message, "[Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support for CBS offloading".
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
