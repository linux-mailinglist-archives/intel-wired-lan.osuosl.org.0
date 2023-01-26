Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 989AC67D121
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 17:17:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 25BF2408ED;
	Thu, 26 Jan 2023 16:17:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 25BF2408ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674749839;
	bh=+1OxQzzsmVmdO52PI1Dy21oRXvhisP45Ih6jD+j3rN0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z8iMzmCMqQYXprdE0l2J0sBQ81rnqUC3xk95oVwIgyMcPHYcSeAfSyL1QTkUQcxFn
	 5IyC862ZXGA5BV7I7PwGs4kFoAuCDR30vgOpnb1h1dLZ3pDlYnPqfG9VEwWgfUufav
	 sRP6v9TGvnlGvDgFH66fKfACmouoPtrRWjc+aO3DiuuWyGMf+dsaGNS7C2Jgv1CwCA
	 56JWj2pbGoRl4YZvVLvynQRKVMOnMc70g74wMwTnFuoF6pDBdQbZ5u+fS7idTfaNBm
	 89ETkwaaB7dz4b+QTcx/XcIKQxGyv0jGADZsP57vNHZTcijkzz4v4U2ypZNL6z+te1
	 f8tA1NRkDf9sw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wDEFQ9cc11Ce; Thu, 26 Jan 2023 16:17:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D10D8404DB;
	Thu, 26 Jan 2023 16:17:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D10D8404DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DEE651BF46A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 16:17:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B53FF822C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 16:17:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B53FF822C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zcicawFEfsG8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 16:17:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68E38822BF
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68E38822BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 16:17:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="325522163"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="325522163"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 08:10:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="726300285"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="726300285"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 26 Jan 2023 08:10:46 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 08:10:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 08:10:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 08:10:45 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 08:10:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hPH32u3L61+V6iokH43/1b13iF7P4UxHNQf4jvQa9n/NOqdT1vFPbpNXtql2E6GFsDV+S1DTxXCLj6gVBDeJVvG1qquKF99ko24+TvJPMkyRXxflmBVpCOlluMfGzLk/CfjakKA/xbMdf4Ps+UFtrqhbw4dB4cUWtcupXNLCRioB7F2wDom+HCDBKHVPnapxSwxRDM/7mVasArc3/+hDU06dWJwyqgDZ2b5Rhp4e9HnbTwHs3FWbxF4OhGLg/nfo2zJkJ/KUPR5ZgTeb961qnXvKUvqq1o6ZqwOKZb7b66W5Mvr5IjZH9T0cCNZx/BzErHce/0WTjMVxGgzYaP2WBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s0bTg7b6Lj3Xn9TjrdoE5cGYeJMNaTkLZAL1/paRe8k=;
 b=LQVF/AstH4QZVMa4RzT3v1TkSMr5BayB1mZKuA5YgDq8cjV9BX4t6N921mA4GnPKWOvmCPhqvQYyAVtsJGNAUElqowCrb4j+eDRRSvWJD7Yoi3uVF0JaXNFzWH80680UNRwx2VtFBv+/dayFwn2eIgxvqzxolKsgFlF0avFSLlFcZaeCtguDiSJDWkDFsSgUa1aUbuQn8LB34U5HlwInXVqWw3Yb4IOatJ5S1O7uxU8BjMhkrva/O9t69YNZkhiFF9VzH7deLug4w4xmfAeIHZd5737TJwPRvFNF9O5a1QLgnNVw+6o02lEfY0ilbz2YYcIgBHi3EVJos893qy3LyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SJ0PR11MB5213.namprd11.prod.outlook.com (2603:10b6:a03:2da::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Thu, 26 Jan
 2023 16:10:43 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::39d8:836d:fe2c:146]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::39d8:836d:fe2c:146%6]) with mapi id 15.20.5986.019; Thu, 26 Jan 2023
 16:10:43 +0000
Date: Thu, 26 Jan 2023 17:10:32 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <Y9Kl+OFJRbDWYxoy@boxer>
References: <20230119211608.2105338-1-anthony.l.nguyen@intel.com>
Content-Disposition: inline
In-Reply-To: <20230119211608.2105338-1-anthony.l.nguyen@intel.com>
X-ClientProxiedBy: DUZPR01CA0175.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b3::19) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SJ0PR11MB5213:EE_
X-MS-Office365-Filtering-Correlation-Id: 26db9346-6034-4188-2db2-08daffb7e04e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bUyuVw0juvu+MJv2O7ezzvEmRXnCh9j+sqRpMu70anuRU3yPapU2bk982bUtYTdNTmGx4BaVpiuEJHUBTR1v3JaKpI0fw0pPc3Fw/NUBcwXmw8K5QPEPTCq4IJZWrh+9B+dsiM9gEyUD/lrN/+BHJyfKLNWQa3u2wDFy7xaz1+KpTCeTiqlLS+SPO5A38vQSf7UV0geP/91ts24IDtcE6oDXamnUvgqxF/8knbQ4GdDxXuQTor8JoEcTfuq5euS2MhNIP9xcOO4mml0oc0BA22K0zl+jMyh3t66yYQ4DySaMa3W8CuLyw/pDNzeOX/PONNokLIG5qNAFo/dT4LUe/jvxgaH9eNjW16XKyPZjrwHBArX3MOHbLA9/vzMjzdp1ZPUQeTzRn9ChiHcHVfx1WMqlc54WmDTCQadJCg82QV0xOdLVx/7ruc6nJTymTgBwByS6q+ONkBqMetSq7OCzw2gdChcO1kWqQ23K1lAEXlZkag2uFzRNLO4VIih1nuvh6yec5JjrInsNpA9QIPbxlhDN0VzZWc7ZZn9tIu4M0V0sg7EKrTAiLXpyRWerpeS9xCpZu18EIPipY44G2mnQ9xLoqcRbkm/jObPd7KFhXwSaPywHB5WZPBnYbCDLEinbHDDgFT9R5B3BirWmyejaB7XabchEGDB1+nzU1OfKL+bVrEfzJ/YqSKHNfgv+RkMVqU7skbJa9Dev4AQvGigqFTyC7JtKmVKKCliqiDj3Z1Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(346002)(376002)(39860400002)(136003)(396003)(366004)(451199018)(316002)(6636002)(38100700002)(41300700001)(8676002)(66556008)(66946007)(66476007)(4326008)(5660300002)(86362001)(6862004)(8936002)(44832011)(2906002)(6506007)(82960400001)(9686003)(26005)(6512007)(186003)(33716001)(966005)(478600001)(6486002)(45080400002)(83380400001)(6666004)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?P/dcyP+z12YgO6K3zvYpwOj6z6M3CUQYlg6wFZBbJKnhni7VsDWl/nJ/Ai1B?=
 =?us-ascii?Q?8JXNjzHXiovO0bJ7ERxN2vrhehQdlR3cThnJCPuvbbjnzMeimm5a/6bQN0jB?=
 =?us-ascii?Q?NxxecXVfIRdwkHSfNp7SggRtyBeAc3I0iVqZblFStuAbiON6zgGomeoZ7DES?=
 =?us-ascii?Q?UzsX+4IAeQrh1L7rnNTH/jXzTo8CUl502RInjN0tgpxIU+8/gPPaRTQsSVbY?=
 =?us-ascii?Q?LL1vgTxejam19+nbfg3L2G/vJwuTiRUm0VMlwCVqsk/Ji9u7hr+hNFndorlH?=
 =?us-ascii?Q?wrFtuVyND5h6ba0Ep7U98DZoLAUFTFQ4xHP3yqS2y23fwfpgZnlJWagU2ItX?=
 =?us-ascii?Q?xpFR2wRGwAChQF5gMKHZ0P1CHfSrCUuHyIhhB8sRmLLF8l5VYVHs/5BDp4pN?=
 =?us-ascii?Q?p5kYTexisZoiQMlZBrCXddu+zcjA/FMkoy/saEbH6R64AJtZivJ1qVfhAtgY?=
 =?us-ascii?Q?bvSMmww0fDTVSTfFlWsbfkPGSe6LfDEWgjq87QNo5Jo/j0OwTB5qz8Ln/l7g?=
 =?us-ascii?Q?skyE49oy0jrDUgMSYnj7vXGuPbWdCqx0D9cLSC4Woo/CbnTT4jIsRPbZg7cY?=
 =?us-ascii?Q?JtWdENjzjOtJltuyRe9I62TL3s9jAIVe74p+Jfu2hmLb5zBYyghb4/PVwv7Z?=
 =?us-ascii?Q?khy3VFJeh07zmOwsOnVx/7esCBQQ6G9NvQPGvKzOWTx+QJkFMDRumDyhc68N?=
 =?us-ascii?Q?4DaHkRu83+8nzAVjMvXhQp6VheV5mPz6WHOEffCOFwShr0tARTc7KSTtaGf8?=
 =?us-ascii?Q?xhTG/jauEmH/aiHJOBRfJDeXIudUDkTp2Sak1nCzy8bLRYSzau2RNqm0+19O?=
 =?us-ascii?Q?bDPD2gRZsBz6hX0KMdHrrpeWV1LHgcWMhxQ2LL/GQT7sysSOc7aw8U9AqzV9?=
 =?us-ascii?Q?HuC+BaZuV+hKxto0FoSD5DQVoTOOffwt54WV1CZrYald2p0Bs0vYNFjpTdMw?=
 =?us-ascii?Q?H7xmcN19OzRYTTQ0oQPFrCf1WSN0DxamWQuykP6CTV3SULApgwl6X2y2HGXE?=
 =?us-ascii?Q?kyeUMYH6eEaV2pgzfg/C/t7zNXyRQLtX/jbU7m9miscWyVg3fpAcFq6cbp2F?=
 =?us-ascii?Q?l3XQZeX3ZeUw9Toc/vBLYgi2iUXxsZ9YmxTGTMK1RKw2WCIqkdnQBqYiC1FR?=
 =?us-ascii?Q?TExlp/4REMob7k4I2X51l8zDfSiyU9bzRoWARg1k/I0ii4Ac/BLDiUcGnOpk?=
 =?us-ascii?Q?ZvS3KoYmAFYdZBx+jmiDQMBIolf+MtjWHBBeMU8KsXrUpW/q9QRNVdp7mS6q?=
 =?us-ascii?Q?xuPud9C21Zqz6/e2jukd7LeWfMbjpHnkbo+MGUIuWdkvxCRD5g031dUdSGYS?=
 =?us-ascii?Q?vHVxHDnfHHnLtcfLAlec4t35Ugyx788ta1VPDZd485Oe9k8pDxJoebIJ2h/i?=
 =?us-ascii?Q?Mw1bS2T+76S6DVEl5A2nsGDNS/wQ1Xn57bAskvibDGCDJbuKezNR6Q6Ruwzi?=
 =?us-ascii?Q?WVFD7fomI2jBYoIN9Si6XWQi3c/Bm8zCpAZTlVUfu7F83WMScXclFjychm8C?=
 =?us-ascii?Q?F6/lUGXBvAw+cFj3lpahjQZSN/CCB6AmMTAj3515hqmxecaAkVBRWAMzUMss?=
 =?us-ascii?Q?XNMdBR/2Fh2cu8jAQZdYXJyJGuueQvqOgeIe/77jSSKKk5EquazSjUOpb0Op?=
 =?us-ascii?Q?WQ5qbdNdAvmLOseRQBPURps=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26db9346-6034-4188-2db2-08daffb7e04e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2023 16:10:43.5382 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vKdk1QWu9eJiU2adtgkYNOd8nxi9s40Y7vwB/3ysDWP/keTFGV04SK0cBMYh0hmpbMbqX2/jXkhTl3ooj3jsqav+qx+AVLBo6z0nwjGsa6o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5213
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674749831; x=1706285831;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=foJvDaXeOdhxkoBShVBy7l9VF4Xp4ZwxhX/jQw7UEgU=;
 b=FWQUy9YSc4ut5gyRFtWkVA50uqpVBUAJuX+FOIaatkpUTbCeI4kY1JI0
 qAjF3oG4ANQCzntaseDXHjGx/ffNM8U3SLEyHITZFMBHd0wwqNMbsh8Xq
 53KasccF81gJviurQ8/5yQc7UzqZ/2ptUGyUrdF496hteKemxgqVWC1zJ
 GngQHQgVar6AwbTUX4rR/4asbmFb8Ji5dpAEWXezC7c9WlsxJowELFR/F
 /I1BztblWeFwAsdP59hw+EU3MFwrJDsrNj9iqvyYoOBB7BV5FZv/jkxQC
 rDkRA4aaqfg/Qw3eEE/R3X8ykXCcfrWLADWRQwwDXMhmDiGuenqoTQhWz
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FWQUy9YS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-queue v4 1/1] ice: Do not use
 WQ_MEM_RECLAIM flag for workqueue
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 19, 2023 at 01:16:08PM -0800, Tony Nguyen wrote:
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> When both ice and the irdma driver are loaded, a warning
> in check_flush_dependency is being triggered. This seems
> to be because of the ice driver workqueue is allocated with
> the WQ_MEM_RECLAIM flag, and the irdma one is not.
> 
> Looking at the kernel documentation, it doesn't seem like
> the ice driver needs to use WQ_MEM_RECLAIM. Remove it.

Can we have a better reasoning rather than 'it doesn't seem like ice
driver needs...' ?

Also, why was reclaim flag added in the first place?

> 
> Example trace:
> 
> [  +0.000004] workqueue: WQ_MEM_RECLAIM ice:ice_service_task [ice] is flushing !WQ_MEM_RECLAIM infiniband:0x0
> [  +0.000139] WARNING: CPU: 0 PID: 728 at kernel/workqueue.c:2632 check_flush_dependency+0x178/0x1a0
> [  +0.000011] Modules linked in: bonding tls xt_CHECKSUM xt_MASQUERADE xt_conntrack ipt_REJECT nf_reject_ipv4 nft_compat nft_cha
> in_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 nf_tables nfnetlink bridge stp llc rfkill vfat fat intel_rapl_msr intel
> _rapl_common isst_if_common skx_edac nfit libnvdimm x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel kvm irqbypass crct1
> 0dif_pclmul crc32_pclmul ghash_clmulni_intel rapl intel_cstate rpcrdma sunrpc rdma_ucm ib_srpt ib_isert iscsi_target_mod target_
> core_mod ib_iser libiscsi scsi_transport_iscsi rdma_cm ib_cm iw_cm iTCO_wdt iTCO_vendor_support ipmi_ssif irdma mei_me ib_uverbs
> ib_core intel_uncore joydev pcspkr i2c_i801 acpi_ipmi mei lpc_ich i2c_smbus intel_pch_thermal ioatdma ipmi_si acpi_power_meter
> acpi_pad xfs libcrc32c sd_mod t10_pi crc64_rocksoft crc64 sg ahci ixgbe libahci ice i40e igb crc32c_intel mdio i2c_algo_bit liba
> ta dca wmi dm_mirror dm_region_hash dm_log dm_mod ipmi_devintf ipmi_msghandler fuse
> [  +0.000161]  [last unloaded: bonding]
> [  +0.000006] CPU: 0 PID: 728 Comm: kworker/0:2 Tainted: G S                 6.2.0-rc2_next-queue-13jan-00458-gc20aabd57164 #1
> [  +0.000006] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0010.010620200716 01/06/2020
> [  +0.000003] Workqueue: ice ice_service_task [ice]
> [  +0.000127] RIP: 0010:check_flush_dependency+0x178/0x1a0
> [  +0.000005] Code: 89 8e 02 01 e8 49 3d 40 00 49 8b 55 18 48 8d 8d d0 00 00 00 48 8d b3 d0 00 00 00 4d 89 e0 48 c7 c7 e0 3b 08
> 9f e8 bb d3 07 01 <0f> 0b e9 be fe ff ff 80 3d 24 89 8e 02 00 0f 85 6b ff ff ff e9 06
> [  +0.000004] RSP: 0018:ffff88810a39f990 EFLAGS: 00010282
> [  +0.000005] RAX: 0000000000000000 RBX: ffff888141bc2400 RCX: 0000000000000000
> [  +0.000004] RDX: 0000000000000001 RSI: dffffc0000000000 RDI: ffffffffa1213a80
> [  +0.000003] RBP: ffff888194bf3400 R08: ffffed117b306112 R09: ffffed117b306112
> [  +0.000003] R10: ffff888bd983088b R11: ffffed117b306111 R12: 0000000000000000
> [  +0.000003] R13: ffff888111f84d00 R14: ffff88810a3943ac R15: ffff888194bf3400
> [  +0.000004] FS:  0000000000000000(0000) GS:ffff888bd9800000(0000) knlGS:0000000000000000
> [  +0.000003] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  +0.000003] CR2: 000056035b208b60 CR3: 000000017795e005 CR4: 00000000007706f0
> [  +0.000003] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [  +0.000003] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [  +0.000002] PKRU: 55555554
> [  +0.000003] Call Trace:
> [  +0.000002]  <TASK>
> [  +0.000003]  __flush_workqueue+0x203/0x840
> [  +0.000006]  ? mutex_unlock+0x84/0xd0
> [  +0.000008]  ? __pfx_mutex_unlock+0x10/0x10
> [  +0.000004]  ? __pfx___flush_workqueue+0x10/0x10
> [  +0.000006]  ? mutex_lock+0xa3/0xf0
> [  +0.000005]  ib_cache_cleanup_one+0x39/0x190 [ib_core]
> [  +0.000174]  __ib_unregister_device+0x84/0xf0 [ib_core]
> [  +0.000094]  ib_unregister_device+0x25/0x30 [ib_core]
> [  +0.000093]  irdma_ib_unregister_device+0x97/0xc0 [irdma]
> [  +0.000064]  ? __pfx_irdma_ib_unregister_device+0x10/0x10 [irdma]
> [  +0.000059]  ? up_write+0x5c/0x90
> [  +0.000005]  irdma_remove+0x36/0x90 [irdma]
> [  +0.000062]  auxiliary_bus_remove+0x32/0x50
> [  +0.000007]  device_release_driver_internal+0xfa/0x1c0
> [  +0.000005]  bus_remove_device+0x18a/0x260
> [  +0.000007]  device_del+0x2e5/0x650
> [  +0.000005]  ? __pfx_device_del+0x10/0x10
> [  +0.000003]  ? mutex_unlock+0x84/0xd0
> [  +0.000004]  ? __pfx_mutex_unlock+0x10/0x10
> [  +0.000004]  ? _raw_spin_unlock+0x18/0x40
> [  +0.000005]  ice_unplug_aux_dev+0x52/0x70 [ice]
> [  +0.000160]  ice_service_task+0x1309/0x14f0 [ice]
> [  +0.000134]  ? __pfx___schedule+0x10/0x10
> [  +0.000006]  process_one_work+0x3b1/0x6c0
> [  +0.000008]  worker_thread+0x69/0x670
> [  +0.000005]  ? __kthread_parkme+0xec/0x110
> [  +0.000007]  ? __pfx_worker_thread+0x10/0x10
> [  +0.000005]  kthread+0x17f/0x1b0
> [  +0.000005]  ? __pfx_kthread+0x10/0x10
> [  +0.000004]  ret_from_fork+0x29/0x50
> [  +0.000009]  </TASK>
> 
> Fixes: 940b61af02f4 ("ice: Initialize PF and setup miscellaneous interrupt")
> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> v4:
> Change target to net
> Update kernel splat
> v3: added example trace
> v2: fixed From tag
> 
> 
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 031668698655..96c71bfec29d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5537,7 +5537,7 @@ static int __init ice_module_init(void)
>  	pr_info("%s\n", ice_driver_string);
>  	pr_info("%s\n", ice_copyright);
>  
> -	ice_wq = alloc_workqueue("%s", WQ_MEM_RECLAIM, 0, KBUILD_MODNAME);
> +	ice_wq = alloc_workqueue("%s", 0, 0, KBUILD_MODNAME);
>  	if (!ice_wq) {
>  		pr_err("Failed to create workqueue\n");
>  		return -ENOMEM;
> -- 
> 2.38.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
