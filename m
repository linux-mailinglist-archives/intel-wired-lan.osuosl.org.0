Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B0076B9DF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 18:46:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FFCA60B42;
	Tue,  1 Aug 2023 16:46:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FFCA60B42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690908362;
	bh=Uo6GwdHpL1e7AopYAycPyQidF/MONbXZ3B+qfadKUs4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TVgBKa6T6G3VgDLMyn5qJj7iWy0VM3mCksQ7BrLEtSSxJKMdJUydTj4c1bTGoRozH
	 T+wiclDJL9UvmfKPKX8NHKxeOiW/rYkRnCLTAX9ehslIVrn388pyvdBZhDlE4Sk84h
	 qVjD0FtrrkiZUMfLhHpZE+h3+R5jvPAXK+Mt8pTL+HTscNhJc6xfyt5iRurmIOzG2n
	 QvJjLPl+S0kxArccTLzFarFfZbQSQbuTLxBhLh/AKpMpw7fkPh3WWrzwkgxsRHdq/M
	 5SNM2VGahoMdgNaJ+yGK6Jec2jhq0VZsa4BVwInBksez+fOk5ElyHRMKjWmHCD4KYP
	 DwIYRlH4qd3Nw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VUpKEHUEOnjQ; Tue,  1 Aug 2023 16:46:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFFFE61166;
	Tue,  1 Aug 2023 16:46:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFFFE61166
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 487C01BF27C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 16:45:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4303260743
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 16:45:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4303260743
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IUKEwFU4wdiA for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 16:45:45 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04on2045.outbound.protection.outlook.com [40.107.7.45])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C5D62600C9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 16:45:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5D62600C9
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T+4viUedJThsFzYfiPcPbiBUDgI1/TH6m0Qbyc8ElTE2jLlwqvtcshjwBjJeb/lbL/JTj8yKhJ16ZGZQa80YB3nFmYOUTaXa1HCTAcJAxJYXnURdlmmT9xI6EKIg2u9+DlnPsBgEQ84xjM1v9E1ULjYk2UFE+hBwCmxHHgVw9YpVy/wImrjwp0ODrG7+i20LZ/di4SYMs2BD7xSmDJsDBsQyRLEWimddMaUsFLFpu6OIezJN86zn7iUTjfdSPKi5CVsfK3UqGQhpFqbSqqrDWXhtm4Sf58BbYtQQC0/k2tM1fO7XstCk4k/QOtPOjKKPRSlq5zUj9F0gEeQvBdfb7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cvdKIfuI4N7Grf/btDkJ3o8FIqFeOCv82B9s2O71Auw=;
 b=aUcGur0m4n7wHdFuHbdIT5UxypwWQjzwKgquW98VwZSh5NdriW5tdOGalYKfnLzdfidbl0U7OU/YDokECpX1j+yZnoN+n+LzeLIGj6qsVFQyFeoPr+xJ/dZ8LReN8dNF/glatJMQ689/T1rhoX49v92ht4LE2fgiq4I2NzZARSsBy49wt/zn30oFzZvjEU6/aPX3B9B/Od5GbUoFLMkNuSR0QItsjGZsrez/dNZkzeLibHDRP2oapKzfUfqf/h28bKX+wMhYO1tA+XZaFCwWqPPYUnANrf1zY13aE5ljeZF++mmMBnSTSjTjuvGnvmHNM8jp780eyDwqWGmknsZ9CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from DB8PR04MB6459.eurprd04.prod.outlook.com (2603:10a6:10:103::19)
 by AS8PR04MB8929.eurprd04.prod.outlook.com (2603:10a6:20b:42c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.44; Tue, 1 Aug
 2023 16:45:39 +0000
Received: from DB8PR04MB6459.eurprd04.prod.outlook.com
 ([fe80::ceae:2c83:659e:a891]) by DB8PR04MB6459.eurprd04.prod.outlook.com
 ([fe80::ceae:2c83:659e:a891%5]) with mapi id 15.20.6631.043; Tue, 1 Aug 2023
 16:45:39 +0000
Date: Tue, 1 Aug 2023 19:45:34 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20230801164534.2nklcql2nh6x6p7y@skbuf>
References: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
 <20230613215440.2465708-8-vladimir.oltean@nxp.com>
 <877cs5twqn.fsf@intel.com>
Content-Disposition: inline
In-Reply-To: <877cs5twqn.fsf@intel.com>
X-ClientProxiedBy: AS4P190CA0035.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d1::11) To DB8PR04MB6459.eurprd04.prod.outlook.com
 (2603:10a6:10:103::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB8PR04MB6459:EE_|AS8PR04MB8929:EE_
X-MS-Office365-Filtering-Correlation-Id: cb358dff-7c0a-4b2c-70fb-08db92aebc8d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QxumKrTcW//ndwtDmjHH+dd1SajHhGkDrBn00XZuAmYLw7hOHew4kPxYTY0NTmAx44P33HkmGwuYtAdQCrsMAV33bvLjBInc7g2KbrDQGzMzQjAMuF9uL9YKTJNCrpFy4EVdvL27kBBmV3Wzr1GFz5Fyk4nxsv1WxKIWjqbxgBllUbItrAao1Sf0V/bTVf1mCYj3d3/5BV2k3a4XBzANMJfCKsC2wcUGi7yKfro+mV8PqvQLu/7WYvb+q0GI6N5CXzTE+nUdUyFV88nXgGCK1PqiQMQxXVbjOVd9YYMHjWWC3seMt7GDOXjJGAXLmYivfOSSu8BsuzHJzMvcJ7Kt6Rm/wyAptQWOH8VhEleKl5qmcAtdXoH14dRQ5Bs+HWBCuQG6aXSFB0t3PPACVOpx+YCEG8y5XZNTPPabqU4PAZlt//KoMughMnX01j1blUyyiQUml9Iv3MQtEXmaNe280ffMgIKF8ohHSu6D02ucNEmKUqoN7CuY5Tepym7eT00fltXu/ro+KBZDDeBLW281Cdw+DWEFg14259zywQ2mFNWj4qgRzKDXrLWxuzya/O80HmvWtmzq2soKl4kFs2pbWIeXLZggs82K9eXkJkXxHAM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6459.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(376002)(136003)(366004)(346002)(39860400002)(396003)(451199021)(8936002)(8676002)(6486002)(41300700001)(33716001)(478600001)(2906002)(6666004)(83380400001)(44832011)(26005)(316002)(186003)(86362001)(1076003)(6506007)(5660300002)(7416002)(38100700002)(966005)(6512007)(54906003)(9686003)(4326008)(6916009)(66556008)(66476007)(66946007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUE5WmNYakJTNFlpOHk3azl1REdja0syaEVYZjRpTHVkWk1qUkFMNWhZWGti?=
 =?utf-8?B?SnVEZ2tROHJ5TTk0RU9YQ3dQNTNVUE5oVm8wOXJCS1YxWmNHY1hpem93R3F1?=
 =?utf-8?B?WGhndkVYbWxpRkU4SDRMcU1lRGZocGlGOUlra3JlSHpLOGc5S29HYlRJNzNa?=
 =?utf-8?B?SUZSUWlOWnJYT2d3amVMUnRDTmZXbWxJQk5zYlk4V0NtVUtIQTYvS2x0b2xK?=
 =?utf-8?B?aUhQK3ZxbUh0N0JqQTU0WmpKZktNaGhsS2ZuWUc0cE0vbEJidjhHd2V2KzJE?=
 =?utf-8?B?a200emk2Vkh2aTNLaC8waVUvOUd6Z2VRaEJsWU1SZVpQZTVadXI0emNmb2FW?=
 =?utf-8?B?cUk2R2NoWExDajQ1ZzlvdllHUHZCZksrOXpwbU5IWDd3aGxCVDJWTytVeC9u?=
 =?utf-8?B?a0k2ektDU3N3TlY5ck5oRGpHTVlsNXBzZitmVUVwTHZzWGM1ODBDRWRWTCtB?=
 =?utf-8?B?OHYvc2Y4YW1HK2NsSEVzNTlGNm55bkw3WE1sQnVvaDhGYUFub011REZLWXd0?=
 =?utf-8?B?UU5XYnp1Y1AxcDFrUXgzMjhxUFZMNlZYZ1VXUUJ5TWpUcmNRelJwTERIa1FB?=
 =?utf-8?B?c3lPNTByaGFMY2l2SHA0RHR1ckc1VE9zWGhaMk1OMG8zU0pjZWhkNjNQWXNt?=
 =?utf-8?B?dFZPcVVBc2tKQ2pyTXk2OUxrMjYrWDBzbFVCMnN0QjFEQk1BZFZXb0pDaEJD?=
 =?utf-8?B?WGxqaFNBTXYxM2FEMUVkZGthdU94VWVleFVDcDlnUTR3N3pNWlR3L0EzS2Zv?=
 =?utf-8?B?OER0d2MvVVZLckZRSXFGUklCanpVb0IyOGwyUDRaUHlMb29NYWdRSzVVZzVO?=
 =?utf-8?B?aWNHR0wwMUdKMnNEZXozQ0FUM1VyaStUWFVFUWVDK3ZDM0wrSGRTZG5aTUp1?=
 =?utf-8?B?QTNpR3I2VElqUUxsbUE0VlhLVjRUOUxka2VWTzZZeCtHZ2FJVnFzRzJDSHJB?=
 =?utf-8?B?Vlorb0VJTThMVjgzV1pVNktQWjl0eVdnTGNUQzR1N2dyTkpFeldFR01IU2ZP?=
 =?utf-8?B?TGovemFKRFd3SE5pNi9pbUh4RmxINGNIYmVZUE4ybG5WSlJNUjlabHdJOHhF?=
 =?utf-8?B?cnluVDBpREFlQnhhQnVaVHF4cXRVZURJUGVuM1c1ZGY1QjBRZ0QrZ1R5OUt0?=
 =?utf-8?B?dG9obzJYNEVSMFZHOERCbjFxSFZDeWhHVjRKUTRENi81Z0NocEtDY2t0VXFX?=
 =?utf-8?B?VjdCMXd1VHowdEplb0tLbFQ0ZHNXSnBVYjFXY2hHWC9rN0dSQ01VSTNuamxL?=
 =?utf-8?B?bHZrZ1VsaUNhNEtQMXUySStJbUpYSDNHT2EzcTNGb3p5aVYyVjZuRHRUL0xO?=
 =?utf-8?B?dlVvZlF6emhrK3FxYWs5RklGUnk1UndPQzlqdUVvR20rZEt2Q1dOSjZVT244?=
 =?utf-8?B?NTJYellVK3J4a0xhakFVVjd5ZjEyUnU3TjJnaXB1Q0lPRXhwMDFpRXRhTXRo?=
 =?utf-8?B?NXg1dGhuaU5Od0ltTGQxUmcrUS9ZK0lCL1VXWlM1ZzJJUHhiSEoyTm1scmVk?=
 =?utf-8?B?Sjd0WnNsMCsyblNFZjgvb2Fzd1dmWUk2L0xFOWtHamg0OXdlQU9FSDRNYVND?=
 =?utf-8?B?bmpYMTRVd0dPOTlmanJwTVdYKyszMWsxa29Gay8vc3lJRUhYTmwzVkUyS0pJ?=
 =?utf-8?B?aVNMOXY1bEc4dUk5MEtmR2JTUGhZSVhvYm1FWDh5c3NDRGwrNEZPMjIyNDdy?=
 =?utf-8?B?S0IrUi9ZYUFKSUl6SXBvVE1OeVJmUTB2YUJKYTZIY05lTEFNWXZ1QzQ0bXZS?=
 =?utf-8?B?b3czRDQvZldBQ3JBQ1JyMmdZR2tuSHYvd2JkcFc0ejFxdnVyUnl1Qi9paFps?=
 =?utf-8?B?Tm13ZXBhMkFQbCtTU3VRYmhQaEhQcVg2R0pJaFdiZUZKN0ZzV0plWXpBbXpo?=
 =?utf-8?B?SEZleTlaSVNJNksrckN0SFNZRlRmQk9WOEI3N2FPN0RRVy9zZnR3eWZOdGlT?=
 =?utf-8?B?KzhsdUgwb09XLzlhSlFVTC82cjgwcjNqTk8vdHpuZlRGanlxK0t6NW5DWERI?=
 =?utf-8?B?dno3WUhkVXZ3NCtXQUp2TGhnRlM2cXI2MTlNbVNUblllMWZBYjk3MXlvWEk4?=
 =?utf-8?B?THl5dFFvcTgyblNFOVAxSjVKMi9UWWxrcm5DSGVtaElVbzhyTzdsRlpFVzdo?=
 =?utf-8?B?VDhrMDdaQWI3OExuY1kzTWdsUUliMU1mWWFHN0o2VW5GM1ZIY0Y0V1VjMS9y?=
 =?utf-8?B?bEE9PQ==?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb358dff-7c0a-4b2c-70fb-08db92aebc8d
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 16:45:39.4675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2d/kBmsp8kAbjIkeuZcHw/OvImAn9gUmRrZIoWDiqRpWckoj6EtidcUkRZmFkSYEMAuoDVUtUeDgYi3bZI1sTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8929
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cvdKIfuI4N7Grf/btDkJ3o8FIqFeOCv82B9s2O71Auw=;
 b=ErHpiQHJlZiyGJ11al+i1345eRwnR4agPuPhjgkpbE/nyiU3ARUVv1qf6aljUju/7xCVRpfNavDRtlugNZEBgRKzBqARIoYfCU7i7cIku5u8Wu82wd+tna0PvqJmNk1i3D4BZ/0gzYhy6gosxs2VJUt7ATxw0OK1y0Q4qMFJsZg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=ErHpiQHJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 7/9] net: netdevsim: mimic
 tc-taprio offload
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Maxim Georgiev <glipus@gmail.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Zhengchao Shao <shaozhengchao@huawei.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBKdW4gMTQsIDIwMjMgYXQgMDU6MDY6MjRQTSAtMDcwMCwgVmluaWNpdXMgQ29zdGEg
R29tZXMgd3JvdGU6Cj4gPiArc3RhdGljIGludCBuc2ltX3NldHVwX3RjX3RhcHJpbyhzdHJ1Y3Qg
bmV0X2RldmljZSAqZGV2LAo+ID4gKwkJCQlzdHJ1Y3QgdGNfdGFwcmlvX3FvcHRfb2ZmbG9hZCAq
b2ZmbG9hZCkKPiA+ICt7Cj4gPiArCWludCBlcnIgPSAwOwo+ID4gKwo+ID4gKwlzd2l0Y2ggKG9m
ZmxvYWQtPmNtZCkgewo+ID4gKwljYXNlIFRBUFJJT19DTURfUkVQTEFDRToKPiA+ICsJY2FzZSBU
QVBSSU9fQ01EX0RFU1RST1k6Cj4gPiArCQlicmVhazsKPiAKPiBJIHdhcyB0aGlua2luZyBhYm91
dCBob3cgdXNlZnVsIHdvdWxkIHByb3BlciB2YWxpZGF0aW9uIG9mIHRoZQo+IHBhcmFtZXRlcnMg
YmU/IFRoaW5raW5nIHRoYXQgd2UgY291bGQgZGV0ZWN0ICJkcml2ZXIgQVBJIiBicmVha2FnZXMK
PiBlYXJsaWVyLCBhbmQgd2Ugd2FudCBpdCBkb2N1bWVudGVkIHRoYXQgdGhlIGRyaXZlcnMgc2hv
dWxkIGNoZWNrIGZvciB0aGUKPiB0aGluZ3MgdGhhdCBpdCBzdXBwb3J0cy4KPiAKPiBNYWtlcyBz
ZW5zZT8KClNvcnJ5LCBJIGxhY2sgaW1hZ2luYXRpb24gYXMgdG8gd2hhdCB0aGUgbmV0ZGV2c2lt
IGRyaXZlciBtYXkgY2hlY2sgZm9yLgpUaGUgdGFwcmlvIG9mZmxvYWQgcGFyYW1ldGVycyBzaG91
bGQgYWx3YXlzIGJlIHZhbGlkLCBwcm9wZXJseSBzcGVha2luZywKb3RoZXJ3aXNlIHRoZSBRZGlz
YyB3b3VsZG4ndCBiZSBwYXNzaW5nIHRoZW0gb24gdG8gdGhlIGRyaXZlci4gQXQgbGVhc3QKdGhh
dCB3b3VsZCBiZSB0aGUgaW50ZW50aW9uLiBUaGUgcmVzdCBhcmUgaGFyZHdhcmUgc3BlY2lmaWMg
Y2hlY2tzIGZvcgpoYXJkd2FyZSBzcGVjaWZpYyBsaW1pdGF0aW9ucy4gSGVyZSB0aGVyZSBpcyBu
byBoYXJkd2FyZS4KClRoZSBwYXJhbWV0ZXJzIHBhc3NlZCB0byBUQVBSSU9fQ01EX1JFUExBQ0Ug
YXJlOgoKc3RydWN0IHRjX21xcHJpb19xb3B0X29mZmxvYWQgbXFwcmlvOgoJc3RydWN0IHRjX21x
cHJpb19xb3B0IHFvcHQ6IHZhbGlkYXRlZCBieSB0YXByaW9fcGFyc2VfbXFwcmlvX29wdCgpIGZv
ciBmbGFncyAweDIKCXUxNiBtb2RlOiBhbHdheXMgc2V0IHRvIFRDX01RUFJJT19NT0RFX0RDQgoJ
dTE2IHNoYXBlcjogYWx3YXlzIHNldCB0byBUQ19NUVBSSU9fU0hBUEVSX0RDQgoJdTMyIGZsYWdz
OiBhbHdheXMgc2V0IHRvIDAKCXU2NCBtaW5fcmF0ZVtUQ19RT1BUX01BWF9RVUVVRV06IGFsd2F5
cyBzZXQgdG8gWzAsXQoJdTY0IG1heF9yYXRlW1RDX1FPUFRfTUFYX1FVRVVFXTogYWx3YXlzIHNl
dCB0byBbMCxdCgl1bnNpZ25lZCBsb25nIHByZWVtcHRpYmxlX3RjczogYWx3YXlzIHNldCB0byAw
LCBiZWNhdXNlIGV0aHRvb2xfZGV2X21tX3N1cHBvcnRlZCgpIHJldHVybnMgZmFsc2UKCmt0aW1l
X3QgYmFzZV90aW1lOiBhbnkgdmFsdWUgaXMgdmFsaWQKCnU2NCBjeWNsZV90aW1lOiBhbnkgdmFs
dWUgaXMgdmFsaWQKCnU2NCBjeWNsZV90aW1lX2V4dGVuc2lvbjogYW55IHZhbHVlIDw9IGN5Y2xl
X3RpbWUgaXMgdmFsaWQuIEFjY29yZGluZyB0byA4MDIuMVEKCQkJICAiUS41IEN5Y2xlVGltZUV4
dGVuc2lvbiB2YXJpYWJsZXMiLCBpdCdzIHRoZSBtYXhpbXVtCgkJCSAgYW1vdW50IGJ5IHdoaWNo
IHRoZSBwZW51bHRpbWF0ZSBjeWNsZSBjYW4gYmUgZXh0ZW5kZWQKCQkJICB0byBhdm9pZCBhIHZl
cnkgc2hvcnQgY3ljbGUgdXBvbiBhIENvbmZpZ0NoYW5nZSBldmVudC4KCQkJICBCdXQgaWYgQ3lj
bGVUaW1lRXh0ZW5zaW9uIGlzIGxhcmdlciB0aGFuIG9uZSBDeWNsZVRpbWUsCgkJCSAgdGhlbiB3
ZSdyZSBub3QgZXZlbiB0YWxraW5nIGFib3V0IHRoZSBwZW51bHRpbWF0ZSBjeWNsZQoJCQkgIGFu
eW1vcmUsIGJ1dCBhYm91dCBvbmVzIHByZXZpb3VzIHRvIHRoYXQ/ISBNYXliZSB0aGlzCgkJCSAg
c2hvdWxkIGJlIGxpbWl0ZWQgdG8gMCA8PSBjeWNsZV90aW1lX2V4dGVuc2lvbiA8PSBjeWNsZV90
aW1lCgkJCSAgYnkgdGFwcmlvLCBjZXJ0YWlubHkgbm90IGJ5IG9mZmxvYWRpbmcgZHJpdmVycy4K
CnUzMiBtYXhfc2R1W1RDX01BWF9RVUVVRV06IGxpbWl0ZWQgdG8gYSB2YWx1ZSA8PSBkZXYtPm1h
eF9tdHUgYnkgdGFwcmlvCgpzaXplX3QgbnVtX2VudHJpZXM6IGFueSB2YWx1ZSBpcyB2YWxpZAoK
c3RydWN0IHRjX3RhcHJpb19zY2hlZF9lbnRyeSBlbnRyaWVzW106Cgl1OCBjb21tYW5kOiB3aWxs
IGJlIGVpdGhlciBvbmUgb2Y6IFRDX1RBUFJJT19DTURfU0VUX0dBVEVTLCBUQ19UQVBSSU9fQ01E
X1NFVF9BTkRfSE9MRAoJCSAgICBvciBUQ19UQVBSSU9fQ01EX1NFVF9BTkRfUkVMRUFTRS4gSG93
ZXZlciA4MDIuMVEgIlRhYmxlIDgtN+KAlEdhdGUgb3BlcmF0aW9ucyIKCQkgICAgc2F5cyAiSWYg
ZnJhbWUgcHJlZW1wdGlvbiBpcyBub3Qgc3VwcG9ydGVkIG9yIG5vdCBlbmFibGVkIChwcmVlbXB0
aW9uQWN0aXZlIGlzCgkJICAgIEZBTFNFKSwgdGhpcyBvcGVyYXRpb24gYmVoYXZlcyB0aGUgc2Ft
ZSBhcyBTZXRHYXRlU3RhdGVzLiIuIFNvIEkKCQkgICAgc2VlIG5vIHJlYXNvbiB0byBlbmZvcmNl
IGFueSByZXN0cmljdGlvbiBoZXJlIGVpdGhlcj8KCgl1MzIgZ2F0ZV9tYXNrOiB0ZWNobmljYWxs
eSBjYW4gaGF2ZSBiaXRzIHNldCwgd2hpY2ggY29ycmVzcG9uZAoJCSAgICAgICB0byB0cmFmZmlj
IGNsYXNzZXMgbGFyZ2VyIHRoYW4gZGV2LT5udW1fdGMuCgkJICAgICAgIFRhcHJpbyBjYW4gZW5m
b3JjZSB0aGlzLCBzbyBJIHdvdWxkbid0IHNlZQoJCSAgICAgICBkcml2ZXJzIGJlZ2lubmluZyB0
byBmZWVsIHBhcmFub2lkIGFib3V0IGl0LgoJCSAgICAgICBBY3R1YWxseSBJIGhhZCBhIHBhdGNo
IGFib3V0IHRoaXM6CgkJICAgICAgIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVj
dC9uZXRkZXZicGYvcGF0Y2gvMjAyMzAxMzAxNzMxNDUuNDc1OTQzLTE1LXZsYWRpbWlyLm9sdGVh
bkBueHAuY29tLwoJCSAgICAgICBidXQgSSBkZWNpZGVkIHRvIGRyb3AgaXQgYmVjYXVzZSBJIGRp
ZG4ndCBoYXZlCgkJICAgICAgIGFueSBzdHJvbmcgY2FzZSBmb3IgaXQuCgl1MzIgaW50ZXJ2YWw6
IGFueSB2YWx1ZSBpcyB2YWxpZC4gSWYgdGhlIHN1bSBvZiBlbnRyeSBpbnRlcnZhbHMKCQkgICAg
ICBpcyBsZXNzIHRoYW4gdGhlIGN5Y2xlX3RpbWUsIGFnYWluIHRoYXQncyB0YXByaW8ncwoJCSAg
ICAgIHByb2JsZW0gdG8gY2hlY2sgZm9yLCBpbiBpdHMgbmV0bGluayBhdHRyaWJ1dGUKCQkgICAg
ICB2YWxpZGF0aW9uIG1ldGhvZCByYXRoZXIgdGhhbiBvZmZsb2FkaW5nIGRyaXZlcnMuCgpUaGVy
ZSBhcmUgbm8gcGFyYW1ldGVycyBnaXZlbiB0byBUQVBSSU9fQ01EX0RFU1RST1kuCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBt
YWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
