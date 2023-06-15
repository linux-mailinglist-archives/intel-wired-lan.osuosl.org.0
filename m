Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 999C8731185
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 09:58:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA55C41730;
	Thu, 15 Jun 2023 07:58:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA55C41730
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686815920;
	bh=AVYdXKy1xzaR/R8dWP0OI9XhogpGTh+W11w75JLUD00=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hneOsebw0+jmGhB3LbfHcPY/rfrsAqJGeJEBomseXITi54AepvmXhFdm9JfxgKY+G
	 3Wm65T7bw+hrPB0MdhJ7cHYwLrR1r7wPbJEDnDATVaVWd58Y3ndg7yZaQR584QROAl
	 9gW7rRCNCk1HVOo+ATzYIZdvg4mbtz7wqti1O7BqQW8jJu5NaBHibPd0iKYby7kwRH
	 w0uJKXHyqMS9wN6L8Hg2mlGvgGMCmKOIRs6qgzDGOexPj+Uv355gjxcaWizAZfc5/X
	 nwWwqMilcOJRydaK9XsGb2NJVocVIu8aSx1Ri+eEO9G3fkHlIH1mtz6o42RjLRH/ci
	 oRDxEbX+mc0nA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fXfdezSxQIFA; Thu, 15 Jun 2023 07:58:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E64740360;
	Thu, 15 Jun 2023 07:58:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E64740360
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6DCAF1BF321
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 07:58:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 52C5880EB9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 07:58:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52C5880EB9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8uYDSfAe9YZn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 07:58:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B44680E39
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on2127.outbound.protection.outlook.com [40.107.96.127])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B44680E39
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 07:58:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MGlWu/Tsygs3KbFgVJFxpXvp+FWwP+ONYpcYXSGdeEdMeimA1F1QznyCKcPsjhmo7QyNDJb+Y5G6S6nN/2R3DT5BwRwp7quZeD9RIOZ5FDnmAdPoAlr5shU78v0ZwlwnnujVipT46kuZ/Ni8A0dQzC+bRfX+zCF5Ito6HLidV0wcWOtMZSWooig1THdSD1k1cGsMeNUzEA/0BRih+rgK5waMdcZj5c0IyGh9aeK4TqLnsNnrRF/y1iqikzYQZTyBEY31mWs6AfOSYmDIxyXVUEancHkgFUH7Q9sqO2jDeqZbi6r2YzHTqQYGmUbj2PhRs+LgFpR04y+qttAR3IKHXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/hgqcFAR9oWgfjzXT74uILVy54mUDzESgVGU/sn1sSA=;
 b=F0GxS6x024nIfr+b7zAeMFj1Mnz6BkW/iR/rXSGlyWBqkU4BfZ2+Mc/sRr0/yQc8cntiVkNsqtNFAUPro2B3zaEoHs+d3opiMoMcsEOO+4r5jnPZRt9KhFDq8smisxNfT8oPlmfL24sr4ymdrdvND1AaqrjQaWnCE16FAWl3QhZVqovjjeGnm/Be1CVo8Nf0XdxCvZxTj79jlk/UHVGJZDgr7v47OHnoLYhV0Q/CPGOE59EkDjsPNFmkLzBw6swsRQxAsbHJUmlBOWxnqJ+Hi3fhgx5moVkF8jvGasYJxdmSjoZXjY5d14Tub/uiKfoQLFL0r2LwO7BSeGscSiwrlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by SA1PR13MB6148.namprd13.prod.outlook.com (2603:10b6:806:337::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.38; Thu, 15 Jun
 2023 07:58:30 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%5]) with mapi id 15.20.6500.025; Thu, 15 Jun 2023
 07:58:30 +0000
Date: Thu, 15 Jun 2023 09:58:22 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <ZIrEnitQEJ+P83wg@corigine.com>
References: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
 <20230613215440.2465708-7-vladimir.oltean@nxp.com>
 <ZIm8kK7plae8CLvV@corigine.com>
 <20230614221718.cx6yjiwrpik4iesw@skbuf>
Content-Disposition: inline
In-Reply-To: <20230614221718.cx6yjiwrpik4iesw@skbuf>
X-ClientProxiedBy: AM0PR10CA0087.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:15::40) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|SA1PR13MB6148:EE_
X-MS-Office365-Filtering-Correlation-Id: f22b4bc7-5dc6-4a67-6a5a-08db6d764f29
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iGvRAQeE7z/LPdaG8mf154luiEtyb28ZCTYdneWlqXFM/CxahYvInX3mziloIYAjqhoc5b9r0+aKBK1kxMFCot91raRHwl/snLsNnyVdEBvqvOZxmgJzXDVXkf+csWb+fNSbM4ITHnXtg7QB/ucw6Ekxma0Ot1hRrWdTiEBx+Zq/offn3lcGfTsSJ+HrrQZ9ZPF02VGetwTZPBiqBSgVHMwvEysVBx3lYxQq/SkF0Pqe9tWlWODAXWANKDkOEVytKRH/8vM+hqXhaJsRDBouOis6KHl763n69jWF3ugcu/3C6CMyYrylFSOmCscWZm/vT7XAoeNrAN4QpNlTZqdkALqaznF5hCnQh8YkvkVdeWzqWE5nU7oeO/1KUKcD4O56NPqGCtYac5PUV9rqWZr6tTAKUqDKNRPa9lAME6kzMdtitqhp6pcn3tSZNbfenWQSEQ7NHWmXlR8iBUfGT73dFq5FnbPJrnsGG8Aux9yisrRHB+ZH+mp2OmoO59135Uhd9+Ryp4A+tPUOYdKvfzxsjzp6khvEDX1wQxaszV6hi7zAgTPkZccSgq/Wv9WBObbO5KoHeck9MUJp12jlMVsTpUAG0cIBB3dAMMsQricfTcqLlr2guZJs6n/cy+/zSy7CJQPrIJjxJrh8iapWgBP89E7w8UwDbjVD76Rh/rloeGc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(39840400004)(396003)(136003)(366004)(376002)(346002)(451199021)(36756003)(86362001)(2906002)(44832011)(7416002)(6666004)(6486002)(186003)(83380400001)(5660300002)(6512007)(6506007)(478600001)(54906003)(6916009)(66476007)(66556008)(2616005)(4326008)(316002)(38100700002)(66946007)(8936002)(8676002)(41300700001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sytrfk3HnIGx+Rr90Fx7aObE3iUr5Ib2DCJT80FOUN6KsPThpxhGhJuUUiUt?=
 =?us-ascii?Q?wftdkno3JJCgMZYjULlqZTo7i9IyMcIJgdCodglezraVLSJl8COdvuhXJkwm?=
 =?us-ascii?Q?fBKSKuAcee4618z0QEK/+wJpf8SEoWGfkxIeZ6x63fOBCO44PXmlw+rYPRhZ?=
 =?us-ascii?Q?xrNT2TdKieWnqmJ+m1nwvEpmRUEvBwmfZA/MCUoHeVLqCS3G1bgSh5txB9Ia?=
 =?us-ascii?Q?m8lYhJNhIwZf0Z8Z/Bj2zH/PPJa3VpkZwK2lcu2kAZdnVEXy7T5UgjZGra/r?=
 =?us-ascii?Q?86BkZzNlVSn9KK5nhvMhKLFFUrF/YuKrvcWmGLUhJVDUM1Haj86mir13fYtw?=
 =?us-ascii?Q?sdwBMf3BovpVeuCaZ50YFMFmxCx4QQSm9lhJHii3h0FuQnN8rS5m7zI+AwxB?=
 =?us-ascii?Q?5uFkvMcZUSRkQ+zJerLqQCueEQktyBi61rmqGSHnWberw6Z8P1sgKt/N4ZZQ?=
 =?us-ascii?Q?PY7gWAxhO5KwWxcYioXKbxg1zBTG9IE/v3cZR7+K+E3vIgdikYeOhZiuRNW4?=
 =?us-ascii?Q?KhIt4ar/WhX8EX7n29dbwNNJPyyvzXxot+fs5e13TbALXxrPPCewnm4mbWcd?=
 =?us-ascii?Q?2NU2ae2o5u28nkafw+c/V1YdppsRT7QFVBbNeZU2wHGio5JV61L68nklGVaK?=
 =?us-ascii?Q?vjErtcSHOhuTeE5xh7tEh6jnskj9TcjifCaLdG+tyiOmqP1+MtcHxN2lvlSo?=
 =?us-ascii?Q?xGrfrhci9CRYmnw54bUt6GfxKbYp3e+IeR770TzNByV87rSf2ayWHJUyKI0A?=
 =?us-ascii?Q?PriEpGvA+4e/DWM28u4E+zUQekqud3GNhgFsX5PKGy/apCbLT4wpZbJLZPQG?=
 =?us-ascii?Q?cQ+qWTifV0ZaXBJSGef8xbpp5wPsGs0u2pBkP1Gt7JhBDmGgzuweSRIxwlDv?=
 =?us-ascii?Q?JLnpp/I/echKxdlwRNrJ0/nmNWwYv5MPzZntG+q/PH67UIPpfzF6F5C4oFQQ?=
 =?us-ascii?Q?IhPFPBxspwz6p5XvqRU4FpwUsn+qRXV7qMp921AE20r86anzjPW35XFFjVAZ?=
 =?us-ascii?Q?9CyjsDftWznMklrkEqCEq/vPNFRYBL3DgdRr8UjeI0Fa1InID/1zc+o6fSab?=
 =?us-ascii?Q?qrQForr5s24Ut1PV31wY4INsIu2t4jkxyR9PSJj29yqCwIqp9lBnloX4/vEj?=
 =?us-ascii?Q?HwSMrN9yRpCVW3kYU9vZyDrFKO9yHklE9G49Yfxq4uR5m5sjwIG28/AE2agL?=
 =?us-ascii?Q?9S9Y3AxQstoHQpPkCC37TdgM/pRJ7+VgljfsA5etzx+UDL2zq7VBRBu5q1aS?=
 =?us-ascii?Q?hgpPwpI16JulJvi9qzKnz3I20Tepo/lrFcNi85ckH+09rqZai8NAes7K68F5?=
 =?us-ascii?Q?Xs6yOZ0JatM7WuQtEqIPfYLZThyknSV1aubnn69ugA/93jlbmE4GCgsvlzX2?=
 =?us-ascii?Q?EenqBj9OoBJQitRb9hVt6pLfGTdsDDUF7RKIREI9Ag5OdA5DMT8HbTSetrlQ?=
 =?us-ascii?Q?RxE7c7MQoU2hK4eImtuag8jlzIV3E/AE54vQgcizK3aXW9NU6mc5z7C09zlP?=
 =?us-ascii?Q?wOX440iGEq8mEd6grypbEyEc85lWPo4z0ucaztIPWtYG319I5TVsxMXOSLUu?=
 =?us-ascii?Q?4WIVkbyvGiH1xx4uoQJxs14WHsmesVjOVhNR7Yoow+tA+pNrvDHI5IGvsJjL?=
 =?us-ascii?Q?4SfVJbbFoRp3V8IvpRbrHI+sj+J0zbrd48xEtO/sAX/YrRhmQLqE2tvuKFof?=
 =?us-ascii?Q?Z+DpDg=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f22b4bc7-5dc6-4a67-6a5a-08db6d764f29
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2023 07:58:30.6194 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qKcwZ8kv2QJWhRRsA8U5EJwBgPfxsuPejnTrv1cUJKkYv9WEiwuchNcH1MIpheHstDNXBWuTThyNAUZgzgvQWz+LVYqQcINMp5W7ogT51EE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR13MB6148
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/hgqcFAR9oWgfjzXT74uILVy54mUDzESgVGU/sn1sSA=;
 b=ATCmfsEX+Fu/R48GFc9N492Cj7W3H+t7bq3kQJQW1qkzqc2u0+PviSnTqy+GjUB9S/IwnIAaUBXjseBHXdM4J+OTn4E8hHH2AUwG/pOKJzafrqL6Y8OS8VchY7QyYeDAJuU2GURFEOHFSZPcQi1ef+KJQ2zVe9POCVh57SkWPN0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=ATCmfsEX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 6/9] net: netdevsim:
 create a mock-up PTP Hardware Clock driver
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
 "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

+ Dan Carpenter

On Thu, Jun 15, 2023 at 01:17:18AM +0300, Vladimir Oltean wrote:
> Hi Simon,
> 
> On Wed, Jun 14, 2023 at 03:11:44PM +0200, Simon Horman wrote:
> > > +#define MOCK_PHC_CC_SHIFT		31
> > > +#define MOCK_PHC_CC_MULT		(1 << MOCK_PHC_CC_SHIFT)
> > 
> > Maybe BIT()?
> 
> Sorry, not everything that is 1 << something has BIT() semantics.
> This in particular is quite clearly just a multiplier factor
> expressed as a power of 2.

Yes, sorry about that.

> > > +struct mock_phc *mock_phc_create(struct device *dev)
> > > +{
> > > +	struct mock_phc *phc;
> > > +	int err;
> > > +
> > > +	phc = kzalloc(sizeof(*phc), GFP_KERNEL);
> > > +	if (!phc) {
> > > +		err = -ENOMEM;
> > > +		goto out;
> > > +	}
> > > +
> > > +	phc->info = (struct ptp_clock_info) {
> > > +		.owner		= THIS_MODULE,
> > > +		.name		= "Mock-up PTP clock",
> > > +		.max_adj	= MOCK_PHC_MAX_ADJ_PPB,
> > > +		.adjfine	= mock_phc_adjfine,
> > > +		.adjtime	= mock_phc_adjtime,
> > > +		.gettime64	= mock_phc_gettime64,
> > > +		.settime64	= mock_phc_settime64,
> > > +		.do_aux_work	= mock_phc_refresh,
> > > +	};
> > > +
> > > +	phc->cc = (struct cyclecounter) {
> > > +		.read	= mock_phc_cc_read,
> > > +		.mask	= CYCLECOUNTER_MASK(64),
> > > +		.mult	= MOCK_PHC_CC_MULT,
> > > +		.shift	= MOCK_PHC_CC_SHIFT,
> > > +	};
> > > +
> > > +	spin_lock_init(&phc->lock);
> > > +	timecounter_init(&phc->tc, &phc->cc, 0);
> > > +
> > > +	phc->clock = ptp_clock_register(&phc->info, dev);
> > > +	if (IS_ERR_OR_NULL(phc->clock)) {
> > > +		err = PTR_ERR_OR_ZERO(phc->clock);
> > > +		goto out_free_phc;
> > > +	}
> > > +
> > > +	ptp_schedule_worker(phc->clock, MOCK_PHC_REFRESH_INTERVAL);
> > > +
> > > +	return phc;
> > > +
> > > +out_free_phc:
> > > +	kfree(phc);
> > > +out:
> > > +	return ERR_PTR(err);
> > > +}
> > 
> > Smatch complains that ERR_PTR may be passed zero.
> > Looking at the IS_ERR_OR_NULL block above, this does indeed seem to be the
> > case.
> 
> The intention here had something to do with PTP being optional for the
> caller (netdevsim). Not sure whether the implementation is the best -
> and in particular whether ERR_PTR(0) is NULL or not. I guess this is
> what the smatch warning (which I haven't looked at) is saying.

Thanks. It's unclear to me if ERR_PTR(0) is actually valid or not.
By itself it does seem harmless to me. But, OTOH, it is sometimes
indicative of some other problem. Fortunately that seems not to
be the case here.

> 
> > Keeping Smatch happy is one thing - your call - but I do wonder if the
> > caller of mock_phc_create() handles the NULL case correctly.
> 
> mock_phc_create() returns a pointer to an opaque data structure -
> struct mock_phc - and the caller just carries that pointer around to the
> other API calls exported by the mock_phc module. It doesn't need to care
> whether the pointer is NULL or not, just the mock_phc module does (and
> it does handle that part well, at least assuming that the pointer is NULL).

Thanks, got it.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
