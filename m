Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBE672F763
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 10:06:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D19F182C3E;
	Wed, 14 Jun 2023 08:06:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D19F182C3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686729988;
	bh=ApfdcAf5w4SDboLlLDX2ZJ3zFE6nDMlOSdn0Er2ki58=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AKZBCMLcaZNRjB+RnzzPeRhs0W2gSRA7Oir12I31B8UmFiqzbKPA2NwZvKcHPUrU8
	 01O1PhKN6S4Qx3iM386ASYKpJynpVfGZCpobkDNWzZCqj8yVQgJl6/Du/ptE6D5OZx
	 vqQKe/TMD4WAxEMPTqQncvWjGY40PjVC2IcyNlUTTJFpk5z3oPNbYLr3NnR9J9MqUv
	 YX2HofhJD6PK42xIgyDneCg/dgxv8kAbD6HNsEZONbxq9TU1bhK3/DSALKVhLeZSkV
	 EzQUgiwCCLoExoCA4uNvJzrlXbNZ9CeeZ337O/jr1p+EOFYdvAfpDSN1z7CqmA1QUI
	 H2HR/Lyj674CQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8gi-KIqbLjQo; Wed, 14 Jun 2023 08:06:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D94A182BC4;
	Wed, 14 Jun 2023 08:06:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D94A182BC4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E2C7E1BF349
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 08:06:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C5A28408EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 08:06:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5A28408EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q5vVQAZRUx3v for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 08:06:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE51F408D0
Received: from NAM02-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam02on2114.outbound.protection.outlook.com [40.107.95.114])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE51F408D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 08:06:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YrkmEbk6Kc4mOfeyosCOGeTidlbmVzqjxMbhE1aUBczhPykyUly3gABdI1mk9C0O25f7QB4fEdz8epTpAElrK6WDCkP9F69Es3f+eSnMipB+5dC32UsCsi0Mhuj3pEz517JJlNX2c04i9RAyAzuoGSCRrFRALuu+M9I+1/s+Xi8pZi6KiAUlkO2nt0QKT3v18lWG/9a+HoZZQNzTtIXR4Bx8dx1WMEgCC0JNcIqB/01svyWXA8gO3UDYhIAp6akBRUGmieJf37kHkPXCYqo3OKa8inRZ3Gsv0Pn4KK5olFYkLAZZ/KhBzyQjbSMh8+5R587m/OJpesVZmiGSX2Q3zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kNJZEkAGLwPSNINnD8BliCI1k110PDyquSDyqUi0jdA=;
 b=C6bxnAVaFLyizKToMBA2AS0cc/lDqGGEkFO46cqJnCY2Up/y9cj3E66N6ojmiahBB6wwoO2fmI/OCyCH6yJVMR/eoZQD7ZbnbVDLE/2XgJWv7LoSKohQXlI9GQSjxM7vAM1UOfb7CpOVKBWoPROKNnyNe9m5Dmwp/0SFWvdEO6Jvov97ZCksjCON9+tqsqPMGw+fGawpYgw0ucd2guibpDFfWB9txEzt1+4KQF+Tv01snUTacJQAmkqgImPuIIp0X2XKoRIci2OyKoirQKI5sQea5qftf6DkgoaAMhA0ThXzuZp9brYxvJJqz8ooo/tvykaBj8k2/9me9slBT80Q6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by SJ2PR13MB6451.namprd13.prod.outlook.com (2603:10b6:a03:559::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.22; Wed, 14 Jun
 2023 08:06:17 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%4]) with mapi id 15.20.6477.028; Wed, 14 Jun 2023
 08:06:16 +0000
Date: Wed, 14 Jun 2023 10:06:10 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <ZIl08oBdRZa3RG10@corigine.com>
References: <20230613113552.336520-1-maciej.fijalkowski@intel.com>
Content-Disposition: inline
In-Reply-To: <20230613113552.336520-1-maciej.fijalkowski@intel.com>
X-ClientProxiedBy: AM3PR04CA0149.eurprd04.prod.outlook.com (2603:10a6:207::33)
 To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|SJ2PR13MB6451:EE_
X-MS-Office365-Filtering-Correlation-Id: b4229877-70a3-43d5-3bb2-08db6cae3a9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8v07DZz3oEtc4a9t/67hA7HMT+Bto0gu/ppnpF31lDo6M99avqHTgPQboJhReqpsBKEaIZ7G/Knl2+sz+XvNPnkutny34Xzq/aCYXb28rXiJEpctAhiXyXjwE83VkNC6Z1dnWN9r8jtGK128IXiwjfStuo0KTSSSeqhZVa9JhhlGqyvR07JOURh+mNVOk8ernZ9+SY1CoyMeWQ2vjqlLvozaC209+wh4shldv9aWDFbcjgsreTcBD0/r3dAtgvNOyFXIi699xlJhENb2EtMKFVoFI3aSxBg+KiT0+IzvwHSplh8m5jOI918jHb+Fsv+8S0HPnhq19Wku930x7iF3R2dMp8iDqD9Ol+Owv3/SkI23Yuimi9MuYH06B7BHisvk4pthgQSCKH+i+NbzC/u26wTKWVqhIxNaJMlaAKrm2+JwLM0jk/iRpVEUEQJpu0ipIZG6UMgE5iZa02meOF8fCwwcbgjt5aRs3OLEPKAAWDztitx150q8DXw4B9YQneYLPQoRRloIhDl1ix4JVZXX+pUtdQ8UbNQ5shc2QnuQbCBXZnNuBxFW38lE7ny+Uuxg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(376002)(39840400004)(346002)(136003)(366004)(451199021)(5660300002)(8676002)(8936002)(2906002)(4744005)(66946007)(66476007)(66556008)(44832011)(6666004)(6486002)(4326008)(186003)(6506007)(41300700001)(6512007)(6916009)(316002)(2616005)(478600001)(36756003)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dVoNJkTNb1LYlSnYWt/sUNkkXxNV4FPUX29bf7s+LhHgXrqrcf4FncZPi31F?=
 =?us-ascii?Q?58K6e4RAaeDr7Svq62e3MLF2XfH2gMdkZOxWMInKpFlB2OupxvEyOR8+LFhU?=
 =?us-ascii?Q?4cdCb7gl3ncdzCJSEa1nZ55QmVTSbaNfRlkwODHN3ofZ7+SfPaKBUVPLCx4T?=
 =?us-ascii?Q?DvwrFW83ebGlfy2EFaWlohOu5WBNlITU+p7JpA0BqiFKo22FLQDTP37yNRxu?=
 =?us-ascii?Q?mC++O/ZhRCDKP0WxOoRA0MlFzteSVkGy5RaXJuqsOB+JfHm3qTn6pGbcHhgv?=
 =?us-ascii?Q?wXM0Oy7dgMmGt7Vteg5HukJd4uH3RkNvhleED1j//hFMIc0CTxurx24Vbq9d?=
 =?us-ascii?Q?LFqM/1fSvkHifHkzSxrlvzShkx23ORILsqTSoJ2UFgSDrVO68jy7JhTziwXT?=
 =?us-ascii?Q?yYv8mcv6x91PhvoEAW3LUJZYLLaSb9enpgblmeN1NSA0B+oTv8+TXER85pLB?=
 =?us-ascii?Q?GjLCXQkEviIgaBCbivtIs5b5LdnOxruUBSWJ5tyysh8tCdmhXKiM5RnS0bNF?=
 =?us-ascii?Q?JHNg0RRFRF3CJ7Vg3H9WLL2ppa74mWGQIfRUPbBdaO23BXc/b/aHYMP6oK97?=
 =?us-ascii?Q?khm92dkCUU75wwoeF7iLiVLvQCYgFGdMefXFsaA0kuaYVwD3k4EGk5OhCp3N?=
 =?us-ascii?Q?IJtluVW3V/uRkcvfJsMfztlQjKV8BtMZb0VBr1BUZWreU2r8BlxM5CC6QTtd?=
 =?us-ascii?Q?PTLvpwxMLCpwDr133gGVbMsL5vA2cYpXZzA01ciNdVXvg7Y5/HBfKAHQ3pzy?=
 =?us-ascii?Q?PpY89HXRfy/0XAVopu9T1wPKVv4lsYc8sz9f41AmYvK+Dw89ObX9xrA96A7Q?=
 =?us-ascii?Q?UFEEpxrRJ14HkWecL4GesN8nrRIylmEUBgMXHFkZMiASHpMaxjaO3Zk11Wks?=
 =?us-ascii?Q?FhHa2viE7wZIr6IsV548vJ7t7tyT3ITRlpgsoPauNkZcB1GBtcE5SjXXj5H2?=
 =?us-ascii?Q?xVfwovCoJ74NKfwl877xST3LXfPSsQbCP+9olY3mi1ahSffBQa8NbylcBVk7?=
 =?us-ascii?Q?590s8dRfqrIf91DyjTglmD/3LyxYSWzP6DLAswbYiBdE7qagF3ZYFiGPaM/S?=
 =?us-ascii?Q?1qq9frDXJHDaMYYvSJk2h5DR+pNs+anSEEMy3KCm/q3oK+I9oDREs+VmZ6ZA?=
 =?us-ascii?Q?gizVceW8a4Z+liJ61s5kXc0u9euJzIil72k0j4LxotKEHKQQn9g44tnLoTEF?=
 =?us-ascii?Q?2M4evDH1Erb6CUxasgmkVZEAd21f35X1OCVFVN1MffY6PP31IrKe3zUGWpUy?=
 =?us-ascii?Q?qgPk1teTNtivJQGhNEJ3V9Dwwl8rGXjUiyj4sHSVY3mv5UgVYMyDSwcNmKOO?=
 =?us-ascii?Q?xuQJaKz/NuNbLVGkRM+xnftaz1sWP49l0aBywHJ7qscOgzB4nFuZwey9Sok4?=
 =?us-ascii?Q?vy54v7/xOtA7aehsot8RtYoaN8tT0yP3p/YbK22vrvrhDMEFwYvpeiFkt0sS?=
 =?us-ascii?Q?kTBd1ljst6Ba1zmgtfeGnR7Ee2XQFgeBfB2FoBTdmx8Z4sHlsQlSy76IS59i?=
 =?us-ascii?Q?pHvlMi0Ua4mmJ7wePvCrz3hTNTfOppOLokNQgKoD6mVfn5+oYZZJ5HblYZea?=
 =?us-ascii?Q?Al9XnSRwjUKSgeKs5bFFzfboozNMexmoEVxwcf1X2ujoXaAfYY4Am28tZHvk?=
 =?us-ascii?Q?A8wcbxKrgL0vDzgkPSs3pe++VNCcEDu6LvYWV3JGtAhXEoFRes6y6BCoc588?=
 =?us-ascii?Q?NlziJQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4229877-70a3-43d5-3bb2-08db6cae3a9a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 08:06:16.7310 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ThuV+AsHN7+db51kKYNzoJ8YMIUyBIojLxt0npyOXDvCx0tyED6t6nT1lu+jWraPrqCZFrktzXS7YNrzpWVu+rdlRnOXSc72TOxWfFlHKbU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR13MB6451
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kNJZEkAGLwPSNINnD8BliCI1k110PDyquSDyqUi0jdA=;
 b=YpmN1oAkmGeSjOtnAfmTTXmO1tmQ1Ll5XoSyuZ8ZURcaRIXpuTnW/isx8U/V1jE7Dq2diIxK9UnkjMruJ0NURhrgrs44nMuNtAcYFgMOB+FtBfheNWzGBGFF9+fKGgdZD3nW50rvAWna39L4FYhJ+sDxWyNPogSPdr20pc078AI=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=YpmN1oAk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next] ice: use ice_down_up()
 where applicable
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com,
 przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 13, 2023 at 01:35:52PM +0200, Maciej Fijalkowski wrote:
> ice_change_mtu() is currently using a separate ice_down() and ice_up()
> calls to reflect changed MTU. ice_down_up() serves this purpose, so do
> the refactoring here.
> 
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
