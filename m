Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9AE7310B1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 09:31:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A9A7418E6;
	Thu, 15 Jun 2023 07:31:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A9A7418E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686814298;
	bh=vEi19FhpGJwFh2xwJY4jGvhOxrv8OK9qjbptDlWHwOo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gj1Qdqb4utMYv4F11alWmDc/5aTxn5dQqWombnEysj9nQUZNvnNlZPiHPmQkzlviP
	 FElKkW9b84AUZa5/3Msnqt7KPRCDUB9cytkaDtmLMBXd1LiF8kUxR0DQQ6tuhSpeyb
	 uBNyftW920K9oiLPKhfDS1zKKNvyWGE0I4lnR4HFy3PihzD8eH2rgyIDRPVbFHpgdp
	 yo9Ju602fM8HpkdVVmIxn+SySHIUO10rMSHRM1BEz7ZW9GvBLTuW3PMg/X89ZKO7nP
	 0qjzt4QD9W6/WBqjyFeXr1rOSx/YD5oN9XQq+oVQDqsTFa0XCtpLfWTGpfpU4hvrfV
	 NjxExRQXJRuiA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EJZIpVmgeB_w; Thu, 15 Jun 2023 07:31:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 25CC741733;
	Thu, 15 Jun 2023 07:31:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 25CC741733
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 007EA1BF321
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 07:31:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C6A3941EA4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 07:31:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6A3941EA4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W4KMlL6bKwzY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 07:31:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDB6541E96
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2122.outbound.protection.outlook.com [40.107.237.122])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BDB6541E96
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 07:31:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A5HWztDifxersf418yDC7pzNLQsdhPornplF0nWw7uKYGlxmweafduVud7K7jPatnF9X0oH1h//yYHovOAy1jDJyGylqEn9EJb+Jbrk/U3nrGJ+qVfzCtPT0rEnA/VS69FgChbGne9+VPounnbVRQ11UosEjfHU/GSLpufV+DoL6q7A13cuVl4OQAyUdl2XaGX030J1c7qSUL5KP5Osu/rQuDV6rft7h3s4wu3fAlI2Gure3h8TztwXTBJGWv0aTnlITNOwZe6Qei4JhnNvFzXJIUrtTkdKLxsGRCPjf21wCvpaIFVqmhQKq7Eas9fmaCSN50aSxm9n7BI4L3a5eqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y3Vuf/aOLYDptyyiBu82De1OKInr83UAoMNUeDJpQSs=;
 b=Utdkyd1WdxlAk9LTHTAxoVJHUH38ioyfX0vXrFmsEkhEubhkrm+IIEqq3nWGmAk3+8jceE45uPYXstdum3maZ9zZeTIsph+rSz0h5BQyG+SfsTZwPlBvBYAQdXbSzMBTFik+DIbjBOBmJUSOp31FKG/8ksV0DfPgIYOL/geFq6fIaEFbZdEI/kSIB72s9l41XOgxrHpi0KwMqh9zZOx8nFKWKMS4Jzpj3UyaVyXQbuoGEaDLG7wg1UA7kb5wsrhHZYO8uDyvmtizh3hyiv2qxCYevAJsQ6gbi89mKr5pXzx3u3y52GXqAZGPpHQf2rCbQHKR5plfsoX63uP16EWb/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by MW4PR13MB5602.namprd13.prod.outlook.com (2603:10b6:303:182::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.37; Thu, 15 Jun
 2023 07:31:27 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%5]) with mapi id 15.20.6500.025; Thu, 15 Jun 2023
 07:31:27 +0000
Date: Thu, 15 Jun 2023 09:31:20 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Piotr Gardocki <piotrx.gardocki@intel.com>
Message-ID: <ZIq+SMD6fdMU84Dg@corigine.com>
References: <20230614145302.902301-1-piotrx.gardocki@intel.com>
Content-Disposition: inline
In-Reply-To: <20230614145302.902301-1-piotrx.gardocki@intel.com>
X-ClientProxiedBy: AM0PR02CA0183.eurprd02.prod.outlook.com
 (2603:10a6:20b:28e::20) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|MW4PR13MB5602:EE_
X-MS-Office365-Filtering-Correlation-Id: d9b5da42-ad41-4807-4f2c-08db6d72877c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y4VCJ/VkNvfP1mmRow4YWyaCDEiA6qaBa4/T3GXFnnxoJrj+ayU7PcWVA43aWk5gThdAIM0/XNkJpAmc1zbA/G9u/bS2lT4le7VAvTds6FBaP+y8+6JMkZG/Va6k0mRfnJIbiNNYe7fjztH363q6gNYAcSyqTQbQxumciT1NMFklCQ3oCqC6I0msN0JnRPjs7THiXKX2CJ8W85A/CbPpiNlEy79JSKIc1Z6cKrysRcWdkos4lSU6mZanMun1MgbpJmiw/UX5mzmEVj8jdkdrYPYBWEVaSDgmOUD7k2AQ2cLZ2GMTDOS1N86hXOyzJWecY91h8e3oJbTV5HX2khZWBDn5iGnA643gn4clUJ8TwkDUeRWwxUFw7D4fD48b9SrQ3fcdUaD4bba+mYRGOhM6pqIbw4pI07q/SZnC6dzA+s0dRlDSu4IrNhQmKoWbNKo/gZEtIFho2hJVrErP74lYuVvk+AwGHVOnpPWOoukOqSui/7ZwfKTHzioMqWdsZLZReZB5+af4XX1pMeAd9REJJaW6Y7S7f51iUnZOntWQ/IAog2H1f3ghc7Pqg1uIzXpyZqzbVjisivOWcYCmlV+SzA6oY6jG8CGWWmvCXQV2RfUGxXZgJrirNu4QxJ+QU6SQx4q3Q7FLOIgj2mfLn52rBA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(346002)(376002)(396003)(136003)(39840400004)(451199021)(5660300002)(83380400001)(186003)(6506007)(44832011)(2906002)(4744005)(7416002)(2616005)(6512007)(41300700001)(8936002)(8676002)(6486002)(316002)(6666004)(36756003)(478600001)(4326008)(66556008)(66476007)(86362001)(66946007)(6916009)(38100700002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8aPp14+6KPZriIREugmRm7Ps2kWFkBlh5yworR12REbTAPMzOu3KQpEOeMUU?=
 =?us-ascii?Q?McPFd8VGrN1lsPYWNkGHlETtJAFDSbNWaIrkUaU13VMBtsSIxTDf/mEWa+bI?=
 =?us-ascii?Q?tnvnLULENUtegNBe1dAvk08QdlpeE+OKo+UqXvTjDe3U9yQYpJHtz313r3Yv?=
 =?us-ascii?Q?+A60cB9fMjn3abhXMuPpuvyI62+TwDiPIIKke5xb6t2omIbUfnr6DJv7iSE5?=
 =?us-ascii?Q?wfOsmR4ZonORmqOs6DZ7jNSatgfanfd0+C9lbOnfvk8TLZmrhfSCw63EpTQA?=
 =?us-ascii?Q?/GkFzO9KsUkMw3vdyExzsJVz4WtafrxfzsxqSeQOu1lnzPUq+QEf1TIbrkFC?=
 =?us-ascii?Q?hIeP+3YSSDxaPVjpQHhbdOYgSgsdodrBxIrcCp+XjIxJ8O4IqTyYv+MqyAr/?=
 =?us-ascii?Q?R0g7tDCiiwnCR1F2SI5mxZilXXp4aiKj0zX+qOrwYN+86/hR2Q2Lh4kve6vG?=
 =?us-ascii?Q?ZVne4wVuipMS6j3pqSG63QoCMJ6WxSZYV0WKqoG+P63Jy4Vnulc1M5euLUSA?=
 =?us-ascii?Q?VpEVJfIWtd/tUItbtg8DQNpVWdafrmuFV8miIiLYAhaqA9hy9h20nQfMLRJt?=
 =?us-ascii?Q?wgREhvXzALOUQTU4x9NAkJucbGNM/PawOdYiGqVH07UBE7c9iGE1O8gHeBiO?=
 =?us-ascii?Q?tIBSjIHIuvo0/L3I119NDPLFXnl3jT/8pOcmwAK6dx75ePILSLxxiZdhaKIl?=
 =?us-ascii?Q?rRbV0EMqB5GDNc5C/CBStIq3bXQjAtjpd357ju9bReQByYF9InyX837KnWRS?=
 =?us-ascii?Q?jT5EHFN9ZHDfNAq+XCD55EZS9e1xa36Glyuk/Y+mlSWXn/Gnp/yPmJ+fBb7o?=
 =?us-ascii?Q?9IQ86912Io0FMJ32hRVKNA13sIN6aWEHzvCTbp+c/7F9L6fli6vsxxupIZhl?=
 =?us-ascii?Q?dXmp6YJHgTtDPqy+t/uNAiQM3dj2oFlVPZiBPlxQpF8v9fDV5TpEWU7/6ns2?=
 =?us-ascii?Q?TTgpvEKElVWiWIx11xSGif23yvkEEedoxWD0WzkmUyWi1eD/kQVdvMU1Xn5d?=
 =?us-ascii?Q?+1jo9ZqcP5fJQorFVS1Z9oAylrMYATs2s/KWGLxMKiRFwfD0Z3jVDKJ5HtuS?=
 =?us-ascii?Q?wThZ68Yzp4ZFNqVi2/bw9smGl3MjhE3sZlHBEE77xyiS3zX7233cUbgaiLsI?=
 =?us-ascii?Q?UhHzxH/882kOFLDDySqzHSeJXmDas9YIqCODI+MYaLgxFrG7kykDXAO6GCZb?=
 =?us-ascii?Q?XKPhxICjlajSq2KfMrUgnlrlB9ucc6gU9J7TOYzCaTU/RwcUhaupK9Oul0nD?=
 =?us-ascii?Q?AMR38Q5+v6jTxeSdIyqrrqQLAQ6ynF2WkmtL6L67gdsG7IC3xXp+XqGpF2K1?=
 =?us-ascii?Q?S63GpqdbzNxh4FfCqP0vwchcx1+TTjUApW8dg5PhIqNlKqZkDu8KhwJZANLk?=
 =?us-ascii?Q?k/7Da9sUllzksWqWcZKqZFW1HkbDWPcnUDbHZNr9lmZjKKYVJmv7HMadXVAm?=
 =?us-ascii?Q?EXhEgBU3EnKNxGMefn8+AXSrOU3Y8sepKmo/CMj6TTpx06YVIi1WU3SQef+j?=
 =?us-ascii?Q?V0ussslkG9EItBj/ts3fN748PckV20kUSuYGxW0uFr5HgS7CRl7PyeVpBiH0?=
 =?us-ascii?Q?TFkPlTLAw5IOfkeRWlwAUb0Jb3l27xN2sIYzIjrXINpuLmCzB+JW9qOLE0T4?=
 =?us-ascii?Q?4kC5D0zV0OK2/2dM6/37aBp4QDem3O2IjHqQ/dEDRKKx5vT3o10lRL53Bty8?=
 =?us-ascii?Q?PpXvDQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9b5da42-ad41-4807-4f2c-08db6d72877c
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2023 07:31:27.1527 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: onCW0is3SVNBtxTeukVzr8GYe4/b6XjJ5/eS7G/l3lZI/kTe5km67saVpavkNj3O1jxY2U2rjNqGCgmaFe7oFlz6pKe0KP7UzaD70maLlz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR13MB5602
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y3Vuf/aOLYDptyyiBu82De1OKInr83UAoMNUeDJpQSs=;
 b=D7R1uOOfN2v+fhhx9P3tI6c7LSeQSk6+KKS47h86hoQsBmRFxZlFEAFg97KSEzMMXJ2nqP9M4YFPxwaSOwBYVka10x8QaKgObFZO2adFYygBx8YQfUC28Dotp7muo0I7qz9biDNV5J+LYa90excMzwC8lcVZrpqEZJRb/weVI8M=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=D7R1uOOf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 0/3] optimize procedure of
 changing MAC address on interface
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 14, 2023 at 04:52:59PM +0200, Piotr Gardocki wrote:
> The first patch adds an if statement in core to skip early when
> the MAC address is not being changes.
> The remaining patches remove such checks from Intel drivers
> as they're redundant at this point.

Hi Pitor,

I am wondering if you audited other drivers to see if they
could also be updated in a similar way to the Intel changes
in this patch-set.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
