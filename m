Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F20667CAC1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 13:17:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2053419C1;
	Thu, 26 Jan 2023 12:17:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2053419C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674735473;
	bh=aQowEsWSCvclaYoHD++0qinlxI2SICJ6A2jL2kzVJ9E=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L6sX67AaNo0MrtXVmVYXXbU2cO7Fa9uuECBI60JH6WQifL1VWG41aDMoAgi8eht/Y
	 Td1+Vo8ArGT13En7fLLunANBMe4QNRIpb9ceBX5VkyqxPsAjItVoKk3lt1dAvXBLNy
	 gG9D1OIe3HOiS5ceGWJn8Ray7jM42AgB2ifwUFuIOq1qmc6bgXZ7E5yv9UskhW1BHr
	 NmeOF1tRfJtQ95Wcv4ZverSjrqzEQwztZR6UVvHhsV/8Yhnq+soKebdviFKmJHods9
	 5spRFNj79bG6LmGK01HlniioX/xuCvWzefudBYkjJg7MAoafqd5crzPbaF6N536Yxy
	 zIeUejyQQzQNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CCrnIYbjBpTT; Thu, 26 Jan 2023 12:17:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D85041975;
	Thu, 26 Jan 2023 12:17:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D85041975
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18A331BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 12:17:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2B9C40134
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 12:17:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2B9C40134
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OusnQJ4w5deg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 12:17:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD8C6400F1
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CD8C6400F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 12:17:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="314702076"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="314702076"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 04:17:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="771120272"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="771120272"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 26 Jan 2023 04:17:38 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 04:17:38 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 04:17:37 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 04:17:37 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 04:17:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BZ6W7CRKLvtlOBGj8CxWdneqmM08uCKO7kSm8FoFHLb9ovghkXwQbQqyqZF07Q0BnUE2MJZKI9HOfJN6OZHRiODT5Wl8/18Mf8SR6RvFbwj9NVFCY3XjAx0nWay8OIcPVbBlvSSxLdom+rtfUZnoKXpDvcP6vWkW/yoIT1Kx1I4aKUfutl3f0IN24SwT+OWM2OFKNnvzLRjo39uWy/m9HbPBHLDprmNyUgliroIJVotBQRt9i1zWEPiLDEyvFvwjzWD39Sl6bpuQapFzZVfJiqRzPL+hauo46DXuTM0oARuGpgElmIoApdDJ5Uz5MIXklFzvF2wj3e7vJ1ox20cJCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=My1Tkxm2fKeHB+rEbdcgee4flU0z+DEcI5jlmFm7g7Q=;
 b=lddE6FTPRuKCmQ+624fqPLJ1vJo/ZOS2y6A9s87W6FJOjgKjKfaIq2/B+lKX6cohTanD7xdtoU7JlCiC2SHHDSkeBhZApBB9/acQ5bAXMDJLwfYUd9VfXfW03W6ESUK9cIwXTURhhpEE270xs+OKDG1t+Y9KjoHCDvPZkoUr+u4rgcTNyryyw10EXjFt6EtE3P6k71xNJfw/yCCAm6NvqeOJMXtbg8ln/xu9xcJ9ZFLmBBV8wwIeDG/kn8KfwdhVNJ82p9bj7bfRq2inQ0FS1kg9cZJX3GMhbI5GHG0GJyWFCiL+81Tvy/3hfGhqI792JDzuDDwhICi6IscrUjwThQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DS0PR11MB7629.namprd11.prod.outlook.com (2603:10b6:8:146::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6043.21; Thu, 26 Jan 2023 12:17:36 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::39d8:836d:fe2c:146]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::39d8:836d:fe2c:146%6]) with mapi id 15.20.5986.019; Thu, 26 Jan 2023
 12:17:35 +0000
Date: Thu, 26 Jan 2023 13:17:20 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jason Xing <kerneljasonxing@gmail.com>
Message-ID: <Y9JvUKBgBifiosOa@boxer>
References: <20230121085521.9566-1-kerneljasonxing@gmail.com>
Content-Disposition: inline
In-Reply-To: <20230121085521.9566-1-kerneljasonxing@gmail.com>
X-ClientProxiedBy: DUZPR01CA0008.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::17) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DS0PR11MB7629:EE_
X-MS-Office365-Filtering-Correlation-Id: b71a773a-6dc8-48f4-0b2a-08daff974ec1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g4gy+WFk8xHe1UUvd/n4uPTurwBtmpRT5PP9S4epVpb5e2JagaMNcHYfNd57Vfrh9cBrvXHzCKZe5zJt8jcxTlTU0Po9uG2U0E1lbJ5wystjrMLFlathbXhRHirPX7zNy5zq0a2p/VDBIAvGDkhEBbQ2vBZRuXbRApqOMlvTZ3F+QTnZCMuaol0kCQT+ftyUDGMZPCfrIsLn+WKkRLrWzk0RJ1zeUwvGWDkqCgeFYziGB/t5CwY8ORRVhdRpMkyaCqE6mvEbfi+MpbViZ21+2/eL2VItKd4iuGzvKUfOiGBlGKiihiwAeHJMKjfc+xMI/XoKa8bq2uayoOP+CuLC9K36TjmUK0JbRhAuYetF0mDYJTohLsfkLHuMwH7VglOWnq+y9RZAw7M/q4fNfFktLnKCrljuO5Mn1f4FLALxiFDmWDG3KKR+6GcFTs+u1BcAPRwyTh+lfET5zDYVjvBaRUlGwI2m8pSCfUL0jMJS4XZf3tSp8wsHjjrEx0x+A0OswetU1t4Ji2aC05cMbgX4fJ+Q8RNFYVQI6nL87FM3gZfbnF/mim0eAIbcUJsFKjvO+2DabFYSs6VLMLulOcBv2LlFj3xlOzC3Y0bFyNqxqg5BYhZja7Z7vlYSJibIMWg/lutCDarRf018dHlDeW/2dw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(376002)(136003)(366004)(396003)(39860400002)(346002)(451199018)(41300700001)(44832011)(8936002)(38100700002)(5660300002)(2906002)(7416002)(82960400001)(83380400001)(6506007)(6486002)(86362001)(6512007)(186003)(26005)(478600001)(107886003)(9686003)(6666004)(66476007)(66946007)(66556008)(4326008)(6916009)(8676002)(316002)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fc8ln7dpovWR7Aej1VJqx2dKvtsLKKcXeTJANoNbPixcGPya1OdejXYZpD7u?=
 =?us-ascii?Q?l8l3F1oejGzP1tED+xX+UGN9X4mwA4NMaAV1n/8Ho1Um4J4lwaiD/QqVzIfs?=
 =?us-ascii?Q?JfPb/Zl42nwAePz35trKkjd3Q2A8G+dM6WD9AhIJxxe39m3lSoPXwZHipuaC?=
 =?us-ascii?Q?Wcn/BoIhFoEOSP4SEb48ZBzx2uprc92mWzjIAJKQKt/Npp4GSZz4CGQyplsI?=
 =?us-ascii?Q?+OcwnSZgXqzwPpXE0OU8UH5XLbiznkTgG701eXY1SZsYIoStTaum/GBHJTIv?=
 =?us-ascii?Q?Fqrx8NJklejqXwsmqYbCSfdZppZbNrKbncRzix/WfVcFWS5Gao6Ke5Bq8xqW?=
 =?us-ascii?Q?VD5Y/CYHQ1LxxuE0JL8fuJRNNmBWCCSRn1qhFGB0fT5duiw0WfwrOziHgKYg?=
 =?us-ascii?Q?PU4yHcxP4oY+hdXo/4bUREKGrrehwZLznzc/4i1CWCW6PJ913xVYuhfGa3Bi?=
 =?us-ascii?Q?fZiZIlpsKAJbCzpJwkw5x72PkfIqC13AE2j9zq6fJqvnK8oDaPSUIyeGyVzz?=
 =?us-ascii?Q?s2+3BSkViiJwAsi8Te9qtMUQICqZlwYwkDu/Y8gN1lKRkfCqKseMvV2gIqA3?=
 =?us-ascii?Q?TSfJvWbQ+/gX5lgZBvVhDRoDLcmJWDwFpnUTlH1tNDKqerMs/4lw0JriG60D?=
 =?us-ascii?Q?edeYjkWlw6nWsLA3af8rwroqewCbGVTRbhSUNBceQxBHRKpV647L4OIwsW46?=
 =?us-ascii?Q?h8+Lv/opvKKFBePyzj/P/z5zRjaPaP1S+j9k9W11+WVyRyzwl/7G3wwjgLYd?=
 =?us-ascii?Q?bKgQCVblk8O39Oe+06xMHIGkOtUmJPTYmVbIEKhQqA+8kPRmLpIDKqDKB59V?=
 =?us-ascii?Q?9Os1NMj8S291HGLa30qyoELjFQIo3rJVBZ99HwC6Rt/HGUYiMt/0KkyP93+F?=
 =?us-ascii?Q?F9msy6/nJmTt+XTL2iGksZZkNvXk6di4uWOBRbiwwbQskeu07YoUUdXPcFci?=
 =?us-ascii?Q?CMvx7IwbjO19b13Rrf2etyf9gDTKH4DRcBuLrDned557jPyMz4YcRhk3GfUT?=
 =?us-ascii?Q?F+jlgwUKpIEQDURe+3jikL8vLisPnuvMynEvTZPObS2wbWPj4tY9ybb3vjAn?=
 =?us-ascii?Q?SkiPHUCSfm4klxzC3c3KinxxwXJD3Cx9CpFNuOIgxwjLiF7xq0rDCcRsbRg4?=
 =?us-ascii?Q?RnMoh+8wTx6E/ckRF/CCHbKjxPaOEl4AlZIdc72mYaYtd+M6VKpQKZOUgByU?=
 =?us-ascii?Q?BLA42TY4s3tMN88trv1qbSE2P804C7LtG7ifx6+jI9TJCZIdwBvFhcqiSiN/?=
 =?us-ascii?Q?ltL/vigIJNdNNOblKASb9n383CmRLG75JLtXTY9mL5rV9hyHAaa4YYNKkTPD?=
 =?us-ascii?Q?7UbcLkWNFLKv9fHutg8dnQx3dylYm/gFTFEoNE7VO2oFi4eefdNi8b+z8lw7?=
 =?us-ascii?Q?BWWJucol62pD4uqL4ZQWps0TUPolZ8lsKIwFJMWJSBszNvM2OAWun2hksZe1?=
 =?us-ascii?Q?BkzRxYNzeRZ9kevFx0dVbSQZrpszcNiyjpiKNo3yUu5nFJ/MwqLsdPjR3d+n?=
 =?us-ascii?Q?CRYPvb3p1OE17xUcsIjPctFvrNvLm3WYP5NIgCPqfP6aLMZPVrre3n7khAIJ?=
 =?us-ascii?Q?vr90lR3rkwRJQKLsQfuSaVy1KHaw2PGyvXi0YMZbOrrNYf7whS/3vbYvycFe?=
 =?us-ascii?Q?S3BXHBr14puzOkMdDKaRjak=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b71a773a-6dc8-48f4-0b2a-08daff974ec1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2023 12:17:35.4327 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4W/nCHeIXM9J46uQ1vYYocivowhF84CURCOwWH2K3/rngIwCkduup68ZcPvOCHJfWjH1kqyOlQPbNi6Myzd4Yk1jL+n4+seN/T1/PCuoCO4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7629
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674735466; x=1706271466;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2q9GOKHV3A2PUayFofIMcpobWbje9Uk7b0NSh8ujw2E=;
 b=iiOGQRwhbiaECSRGNagKU260afO7PVdCp8jIFjUSB2gUqelkP7PFP/6o
 DIaPXKW7YuwDrhNeIBhAgV0oArKSBP11XOcfA6hRSZVIy0V85KmWQ7WVu
 MFYBIt+7h1yEYKDU3ozOycDTJ+uDMvJYNnCyQ0JBp3UmkXali41HKK2Nv
 OyKdeex3o818iE/g8yPGg5fIekvQMi+4AMQoo6C7x8RYfyIhNcmdSpFCB
 vUZOSwmad1BBGyP55lFUv6PmfpMJvwJ0HUdTi/1xIjOCdfsTg2dNltgkD
 FnWkaykaIwMTz2Q0U1UoqPa31q6rLU+rWpT1utbVa5HuCNvK/ldIXZ1P6
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iiOGQRwh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: allow to increase MTU to
 some extent with XDP enalbed
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
Cc: john.fastabend@gmail.co, hawk@kernel.org, daniel@iogearbox.net,
 tirthendu.sarkar@intel.com, intel-wired-lan@lists.osuosl.org,
 richardcochran@gmail.com, jesse.brandeburg@intel.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, magnus.karlsson@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-kernel@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Jan 21, 2023 at 04:55:21PM +0800, Jason Xing wrote:
> From: Jason Xing <kernelxing@tencent.com>
> 
> I encountered one case where I cannot increase the MTU size with XDP
> enabled if the server is equipped with IXGBE card, which happened on
> thousands of servers. I noticed it was prohibited from 2017[1] and
> added size checks[2] if allowed soon after the previous patch.
> 
> Interesting part goes like this:
> 1) Changing MTU directly from 1500 (default value) to 2000 doesn't
> work because the driver finds out that 'new_frame_size >
> ixgbe_rx_bufsz(ring)' in ixgbe_change_mtu() function.
> 2) However, if we change MTU to 1501 then change from 1501 to 2000, it
> does work, because the driver sets __IXGBE_RX_3K_BUFFER when MTU size
> is converted to 1501, which later size check policy allows.
> 
> The default MTU value for most servers is 1500 which cannot be adjusted
> directly to the value larger than IXGBE_MAX_2K_FRAME_BUILD_SKB (1534 or
> 1536) if it loads XDP.
> 
> After I do a quick study on the manner of i40E driver allowing two kinds
> of buffer size (one is 2048 while another is 3072) to support XDP mode in
> i40e_max_xdp_frame_size(), I believe the default MTU size is possibly not
> satisfied in XDP mode when IXGBE driver is in use, we sometimes need to
> insert a new header, say, vxlan header. So setting the 3K-buffer flag
> could solve the issue.
> 
> [1] commit 38b7e7f8ae82 ("ixgbe: Do not allow LRO or MTU change with XDP")
> [2] commit fabf1bce103a ("ixgbe: Prevent unsupported configurations with
> XDP")
> 
> Signed-off-by: Jason Xing <kernelxing@tencent.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index ab8370c413f3..dc016582f91e 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -4313,6 +4313,9 @@ static void ixgbe_set_rx_buffer_len(struct ixgbe_adapter *adapter)
>  		if (IXGBE_2K_TOO_SMALL_WITH_PADDING ||
>  		    (max_frame > (ETH_FRAME_LEN + ETH_FCS_LEN)))
>  			set_bit(__IXGBE_RX_3K_BUFFER, &rx_ring->state);
> +
> +		if (ixgbe_enabled_xdp_adapter(adapter))
> +			set_bit(__IXGBE_RX_3K_BUFFER, &rx_ring->state);

This will result with unnecessary overhead for 1500 MTU because you will
be working on order-1 pages. Instead I would focus on fixing
ixgbe_change_mtu() and stop relying on ixgbe_rx_bufsz() in there. You can
check what we do on ice/i40e sides.

I'm not looking actively into ixgbe internals but I don't think that there
is anything that stops us from using 3k buffers with XDP.

>  #endif
>  	}
>  }
> -- 
> 2.37.3
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
