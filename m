Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3333D752629
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jul 2023 17:08:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6271613D0;
	Thu, 13 Jul 2023 15:08:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6271613D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689260910;
	bh=xiwzfHJSdRil5eOt67JJWoSoT9440yhwHBUvxJdZCOA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j8TjTcwLloelIuQ8S3Rr3tT1iVoVD+CnJlUXZnk3g23Mvr29hsFxaUGYi7cM9FtNb
	 ofyfDxb9uBvoRMNd+f25qFbeoX48q0tF8I8pAOzneLvy3/jPP6ipvrR8jyruzwwCTG
	 vLbgSOaJATKfe26cgYpJulRPKJyousvNrWEnjacC+PCw2Zd/LHhWroDEAvMhSWoqPt
	 pBnfnQETW21WgBGHn8ajnECyA1x8kykvTTJalJqsfcQ/JucGYFxq8ekk7JdFtkRyx/
	 mek1ctFz36j8ugQgsoFx3OQ3sGFpFtWuX5388UdlR2uaYGWEx/TbCFdk36iZ3/nChS
	 9OyG0d+Vqaueg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6iL7RL8l4c0a; Thu, 13 Jul 2023 15:08:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80F8760AD4;
	Thu, 13 Jul 2023 15:08:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80F8760AD4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 604151BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 01:15:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 331EB611EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 01:15:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 331EB611EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aN8BPDJsEu4o for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jul 2023 01:15:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76844611DE
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-sgaapc01on2101.outbound.protection.outlook.com [40.107.215.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 76844611DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 01:15:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Duq/Gf2o3NgyPWyCND48qAyK/UokjWa7YcFD0VtDszCtYvCg6c9idlGFiaZcK2zp8HOcQjvKFprWwm6231ZSkQXa+o/XtqqodqhBC3yuYbNoxDjqwH00yLbCyH19Jlc8bpd1nfqEIesde3sKklF+VFgFgNmij5VWzopYNfz/f4KEI5Be2tZrt/tmKV1waHsemoRNFQOKRgK7AG9VFD6LqgqVtL/+d3lotnSxnr3Y9/EnBPUCdfVrwTeQBjXzHR4A/TTfQ14RZ4/HBTXpOxB5Y8ZbNbDjWweZ6OSW7iINT3BGpGQLTO8M9QXMyqtzLZSwDiYB34CJu4ta1XYsZOZOWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cS78NJjPV45Zb7BDdk9WFGCQsdTg9xIT04xHKHeNnX4=;
 b=VqrQ+v2GgY8JeMkdoRKrZp9W8VzWBQPRgdnz6Q5+ppKQ2ZxbjgqECY+vhKN8ltSXPMGbBo3bJRgQsPGXmkXgG67W9BB9HN0vq6m8qn5JgB40tFTl+CXrmBLNAixAqF2C431BlaBu3D5aNOuYQcxNboRgG3d7T29gif2rPrUl42F79rP5M0avxkYzhwgQsCPPP61yXR//SDVpP9rjnFPPv+EK7TMaPxPnuWw0xwIiubp9tq1XM7aIsiEQmOiXKV16TCvv/E4fUiv0NZP7AX7fOIW6DpVAHHVkjlLdRJ+9rWEqat0vj1YZkXK4nETLRbvD1rglpflWjQQi5zgDn88C+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
Received: from SG2PR06MB3743.apcprd06.prod.outlook.com (2603:1096:4:d0::18) by
 PUZPR06MB4601.apcprd06.prod.outlook.com (2603:1096:301:a5::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.24; Thu, 13 Jul 2023 01:15:16 +0000
Received: from SG2PR06MB3743.apcprd06.prod.outlook.com
 ([fe80::2a86:a42:b60a:470c]) by SG2PR06MB3743.apcprd06.prod.outlook.com
 ([fe80::2a86:a42:b60a:470c%4]) with mapi id 15.20.6588.024; Thu, 13 Jul 2023
 01:15:16 +0000
From: =?utf-8?B?546L5piOLei9r+S7tuW6leWxguaKgOacr+mDqA==?= <machel@vivo.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH v2] net:Fix an NULL vs IS_ERR() bug for
 debugfs_create_dir() in i40e_dbg_init()
Thread-Index: AQHZtLsr+oGfGkkIJ0yxJe3KFxfYWK+2nXWAgABHcbA=
Date: Thu, 13 Jul 2023 01:15:16 +0000
Message-ID: <SG2PR06MB374386152CEEE13688AF2CBFBD37A@SG2PR06MB3743.apcprd06.prod.outlook.com>
References: <20230712121943.7597-1-machel@vivo.com>
 <bdf08528-1e45-0b7a-e617-63151aa89e0d@intel.com>
In-Reply-To: <bdf08528-1e45-0b7a-e617-63151aa89e0d@intel.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SG2PR06MB3743:EE_|PUZPR06MB4601:EE_
x-ms-office365-filtering-correlation-id: fc255c5f-1250-4606-b361-08db833e9de3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ija9q6TGIX4qoq/xAXV72KCaHr7VAzL2eoHJbMCdRHBs9uGx39UFgb3iq3sR8P845tPq4pU07MBYBbAUq8/hECjZ+MeUJmSc+i4t8EgzVyhaxVPqcoFJAiUsGQ4z0t+uHQY2eRnJ/oEFAS8VQTGWiCE7l66pAnOuBHraVpUSDN8D9n/NnVXfFuXPt5LjrWIbm11Ok3dGJ4KPqnvrAq0swWCKXt0PqlbOLbzpXinOz8zyyS1Ospoc/o6vtMwW23LKqJ+0QAfGMoLCiwBKX6qh4PKkSxzZfDIGRNfkpvWYF7pakuG/42PfI8QOzNgC5DRvzV4lVwA+1hOL4FhkUzngK94JuTKH9RcRbjKCOt4GbOr8jnk6701eYdY4OcS9MPZmPZBkuNsk/Xam7duVkAN63Hj/kVXiMdOUCagxXfh0w0JBvn8Dowx84/WbghJQ82fPYK5bN/gqNXrsdPPgR+spzmOiceWFNWAHAy4b7rDSZOO7LtYEwZH9W1SNfnDnN+jahBydMgiVpl1KzVCXjW++MekRqmpu+Pkf2+OvdtpqH05X1GIyVIAaRMYjF/bKSDFcl0hpCZljN6oz0bETcnAxuDIE1kcACLjnJLZ/RzYRc70=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SG2PR06MB3743.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(346002)(366004)(376002)(396003)(39860400002)(451199021)(38070700005)(33656002)(224303003)(86362001)(38100700002)(122000001)(55016003)(478600001)(71200400001)(54906003)(7696005)(966005)(8936002)(5660300002)(52536014)(316002)(76116006)(66946007)(66476007)(2906002)(66446008)(64756008)(6916009)(4326008)(66556008)(41300700001)(83380400001)(85182001)(53546011)(9686003)(6506007)(26005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WmZwMVVrcXNiN29TVGVoRHY3UVQ5dm1CMkttZENOVXFQVkZHYkFkdUJYeUcr?=
 =?utf-8?B?YjhQenRYQmw4L0QwUW1WdEJpTGs0aVMrTjZ4NWJ3dkUwNGxEdnY1RjNIdG9X?=
 =?utf-8?B?UWFncDExUnljYzVCcFM5WXZBREoxVkovSzFUemFDQ05kNFNabS8zOWJ1MG5v?=
 =?utf-8?B?a2I5Wi96Z1o2cy9LWklxYU9iYnllZHpmenE4SkNBSnZ0UUJNd05OblNOWGM1?=
 =?utf-8?B?ZFdqY29tYWJrYk13TGRzTUpIclNFbG1iTnBWbFIwL2lTb0JGd1NRVWdaclFH?=
 =?utf-8?B?YUdINlRXb3lZdjFucHVjQm5lSm5LSHI1UnhRNXhRNXovelJ4aC9xSkc1N3ho?=
 =?utf-8?B?RDhiQ1U4aEY2MUh4R2pJYUVhVmVnNHR5SUxTY3N2aUdhMWdDeG9QaWFlRWlJ?=
 =?utf-8?B?Tk1hUVdsMzBhcHZ4eG5UcVk2dlFXdFJnZ0VCZDROczNiMkhmb0Q3ZVJLbzB2?=
 =?utf-8?B?VGZ3UDZ1RGI4T1RtMHhzZGFlWXZSMFUxZUNEUkVFejk3ZTFGYm9qTldJMGZr?=
 =?utf-8?B?Mk94cW1EZ1M5SmljbjJMU1o4ZXRtTVZVTElteldiaTJreWtnalo3aFdseWwy?=
 =?utf-8?B?aVJ3OVZxUE9HMTkxUVVqYWR2TkxBL0dkSjRESXdFb0h4Z3VFUlloU1d6aXQ1?=
 =?utf-8?B?b2pNK3NxdUtMRWxEcW1RR3Y1T3IxWjY5Z1UreTlUU2hZNE5wT1NDbGFxSEhT?=
 =?utf-8?B?ZGRERXpOZTQ3Sy95bFd2bHJHamNzNDBudk8xN1FHTjZTemE0bnlKbm8vR3Jr?=
 =?utf-8?B?RGNaQ3B4NVhqUzNvbTRnQnVZV0VCcENhRzFLaGt1UmQ2aERlTjVCM3BNUUpJ?=
 =?utf-8?B?OTlLekZjekI2c3pCQWxaN2VJK1MwTjVkSWVPWXRDWEJhcVlHNnBEN2NJM0Nu?=
 =?utf-8?B?RFNHTCt0VE00bVczdmxtWGw3UWJQeFJOS0N0dVRLckJLUWY4WDBZNmNkVjRo?=
 =?utf-8?B?U05jMytnb1UvZW5IOUppeEUyZUVOUFUzT3FFM1hJTnY4UGtocVdzWmhwTjlY?=
 =?utf-8?B?NTdKOTdxSHdoNUo4UlV3VjJHTTJYbnNsWUwvdGpYNjFPdFgxaFFYNU5vK0dX?=
 =?utf-8?B?QVBoR082RFFDRG0xcFg5bVh2S3hkMlNkNTZvU2lnek1MZjFNcnl4REpTei8x?=
 =?utf-8?B?b2FsMTJOY2I5SDh2MjRWUDRyQXRRNWlNY1dLdDFwUjFhZFAyTDNaMjFpVHpU?=
 =?utf-8?B?Q2dYb3lRc1ZOQW9hTjY5UThFbW1ISEg1N1VIWmpQcnJ0Qy9ZUVN1dGozeUR4?=
 =?utf-8?B?UHBvSFBiSlVQWDQvdERCU3RSVzVrbGJwdVFUMTg0WEpxczIyZVJJTHJkanJ2?=
 =?utf-8?B?MnlpSkFoMll5Qjl2YjZOcVJIbkR4eEVONnh2cHQyeUZrTnV2a2RycFRQc3gr?=
 =?utf-8?B?RkNXRUswMXJNTVl3dEhhOEhWQVRzWVdVaWhUVUJmbC81WDh1eDR6Zk1VYWox?=
 =?utf-8?B?VmdBV3FIN2pqTFd1dlh2S3hWN3BvZmlYKzhHMEVnZ01WV241S3BwQkk2dUZL?=
 =?utf-8?B?OVdvdFdERE5oT08vaDY5b2JZcTYzS2VTTFdTdyt3NVUvMWVzUFFFN3ZFN0My?=
 =?utf-8?B?OW5RY2NlUXNhL0FaSHdlSEpaMFF1MytSSFpYSEdMdXBtdXRjeTA3SUt6NHh2?=
 =?utf-8?B?dnlEMXpXUi9Ya0hYK0RUd2VzaHhJRWlrZHF4VVVqZGxEcUNScjBHREp3QzQr?=
 =?utf-8?B?bnAwSFNuMytFd2lYZStxblBuYjN5b2hveWlFTW9FR0NEN3cyQVEvUjBxWTBx?=
 =?utf-8?B?U212bURjNW5yZVhpNHA1dmVUc2p6aVkrdHo1WHVXcitGaUtXNmJwQnB3MU1o?=
 =?utf-8?B?RkkyZThsd1pxVzkzTlNkVmEwenBHemwyYUdsRXFMcnB3NVFlaFA4blFLWGtz?=
 =?utf-8?B?b1JjSTNGdmt2MGk3L3BYUWdCQ0FKcG9ZM2M1V1pZRStNTFRQbjRWZHJ5RllQ?=
 =?utf-8?B?eHNqSGsyZS9jbXlXVUYreDNxS0ErY2ZRY21EbGhqZVpFcXZZRGhWSUNVb1JC?=
 =?utf-8?B?U0dCaEdJVEEyT2tzNndQTTlCd1F4STZVdHJCbllmZzUyK3E0UzBYWk9xa2xO?=
 =?utf-8?B?cTNnNFZRQmE0cyt4VmJLOUxFU013bzRDeUZXaVUxTVB2eGIyQ1RjcHA1aW5Z?=
 =?utf-8?Q?JpYo=3D?=
MIME-Version: 1.0
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SG2PR06MB3743.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc255c5f-1250-4606-b361-08db833e9de3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2023 01:15:16.3203 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kc3nMF95TB1+OJ+c1pA4X/3hRAntyzFrMhMwsLdktZdRP1ztFmIrVQZt4CkMAtVQm0a9uz7iGA1XfZ4xil4c3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PUZPR06MB4601
X-Mailman-Approved-At: Thu, 13 Jul 2023 15:08:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vivo.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cS78NJjPV45Zb7BDdk9WFGCQsdTg9xIT04xHKHeNnX4=;
 b=SxuXNkGJnFFuCfIv5SV+8cZNrT/EgxUFpTioYM1y9fIzBH/+smUY09yJMzXYxUwgCA7EZ65fPlpP4YSu8r6Qgv7EmRh1XxXA2ck0kCdwd10alnv6tZw2bKVVdurZ4yzwaLZujqhCyVSnpm8pkAjS/OOT0Wd+kQ7v83MR1iZICwRe6jmGoI2JoclG/K55iuaIOQo3nwcLdQjhg01SeSjIPHib7xtOBtgZR8D3HYFF+YpU+eGnzYMC+tPRVMnAh9oPxq+gpkBrf2Wh4CsqYp4tuR1HIGnXorJ2hYUnpJr25QmtTUw7odPFvuZJg9Sb6+RO/xdR8W5mFi7N2y242ikfEg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=vivo.com header.i=@vivo.com header.a=rsa-sha256
 header.s=selector2 header.b=SxuXNkGJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Subject: [Intel-wired-lan] =?utf-8?b?5Zue5aSNOiBbUEFUQ0ggdjJdIG5ldDpGaXgg?=
 =?utf-8?q?an_NULL_vs_IS=5FERR=28=29_bug_for_debugfs=5Fcreate=5Fdir=28=29_?=
 =?utf-8?b?aW4gaTQwZV9kYmdfaW5pdCgp?=
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

b2theSwgSSdtIGZvbGxvd2luZyB5b3VyIGFkdmljZSBhbmQgcmVzdWJtaXR0aW5nDQoNCi0tLS0t
6YKu5Lu25Y6f5Lu2LS0tLS0NCuWPkeS7tuS6ujogVG9ueSBOZ3V5ZW4gPGFudGhvbnkubC5uZ3V5
ZW5AaW50ZWwuY29tPiANCuWPkemAgeaXtumXtDogMjAyM+W5tDfmnIgxM+aXpSA0OjU3DQrmlLbk
u7bkuro6IOeOi+aYji3ova/ku7blupXlsYLmioDmnK/pg6ggPG1hY2hlbEB2aXZvLmNvbT47IEpl
c3NlIEJyYW5kZWJ1cmcgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPjsgRGF2aWQgUy4gTWls
bGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUu
Y29tPjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pIDxwYWJl
bmlAcmVkaGF0LmNvbT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZA
dmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnDQrmioTpgIE6IG9w
ZW5zb3VyY2Uua2VybmVsIDxvcGVuc291cmNlLmtlcm5lbEB2aXZvLmNvbT4NCuS4u+mimDogUmU6
IFtQQVRDSCB2Ml0gbmV0OkZpeCBhbiBOVUxMIHZzIElTX0VSUigpIGJ1ZyBmb3IgZGVidWdmc19j
cmVhdGVfZGlyKCkgaW4gaTQwZV9kYmdfaW5pdCgpDQoNCk9uIDcvMTIvMjAyMyA1OjE5IEFNLCBX
YW5nIE1pbmcgd3JvdGU6DQoNClBsZWFzZSBkZXNpZ25hdGUgYSB0cmVlIGZvciB0aGUgcGF0Y2gg
KG5ldCBvciBuZXQtbmV4dCkgWzFdLg0KDQpJZiB5b3UgY291bGQgaW5jbHVkZSB0aGUgZHJpdmVy
IChpNDBlKSBpbiB0aGUgY29tbWl0IHRpdGxlIGFzIHdlbGwuIA0KQWxzbywgYSBuaXQsIGJ1dCB0
aGUgdGl0bGUgaXMgYSBiaXQgbG9uZywgc2VlbXMgbGlrZSBpdCBjb3VsZCBiZSBhIGJpdCBtb3Jl
IHN1Y2NpbmN0Lg0KDQo+IFRoZSBkZWJ1Z2ZzX2NyZWF0ZV9kaXIoKSBmdW5jdGlvbiByZXR1cm5z
IGVycm9yIHBvaW50ZXJzLg0KPiBJdCBuZXZlciByZXR1cm5zIE5VTEwuIE1vc3QgaW5jb3JyZWN0
IGVycm9yIGNoZWNrcyB3ZXJlIGZpeGVkLCBidXQgdGhlIA0KPiBvbmUgaW4gaTQwZV9kYmdfaW5p
dCgpIHdhcyBmb3Jnb3R0ZW4uDQo+IA0KPiBGaXggdGhlIHJlbWFpbmluZyBlcnJvciBjaGVjay4N
Cg0KQXMgaXQncyBhIGZpeCwgdGhlcmUgc2hvdWxkIGJlIGEgRml4ZXMgdGFnIGFzIHdlbGwuDQoN
Cj4gU2lnbmVkLW9mZi1ieTogV2FuZyBNaW5nIDxtYWNoZWxAdml2by5jb20+DQo+IC0tLQ0KPiAg
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9kZWJ1Z2ZzLmMgfCAyICstDQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2RlYnVnZnMu
YyANCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZGVidWdmcy5jDQo+
IGluZGV4IDk5NTQ0OTNjZDQ0OC4uNjI0OTdmNTU2NWM1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZGVidWdmcy5jDQo+ICsrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9kZWJ1Z2ZzLmMNCj4gQEAgLTE4MzksNyArMTgz
OSw3IEBAIHZvaWQgaTQwZV9kYmdfcGZfZXhpdChzdHJ1Y3QgaTQwZV9wZiAqcGYpDQo+ICAgdm9p
ZCBpNDBlX2RiZ19pbml0KHZvaWQpDQo+ICAgew0KPiAgIAlpNDBlX2RiZ19yb290ID0gZGVidWdm
c19jcmVhdGVfZGlyKGk0MGVfZHJpdmVyX25hbWUsIE5VTEwpOw0KPiAtCWlmICghaTQwZV9kYmdf
cm9vdCkNCj4gKwlpZiAoSVNfRVJSKGk0MGVfZGJnX3Jvb3QpKQ0KPiAgIAkJcHJfaW5mbygiaW5p
dCBvZiBkZWJ1Z2ZzIGZhaWxlZFxuIik7DQo+ICAgfQ0KPiAgIA0KDQpbMV0NCmh0dHBzOi8vd3d3
Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3MvbWFpbnRhaW5lci1uZXRkZXYuaHRt
bCNuZXRkZXYtZmFxDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
