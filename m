Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A41787E1AD6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Nov 2023 08:13:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B01DD41DD5;
	Mon,  6 Nov 2023 07:13:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B01DD41DD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699254803;
	bh=yJ6zUGkKjCn5HMfxUD4EtgKXkVSZvO+l2nfGrHuCmgQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wjn4CQjXmLEYoRdggTQZqEq7mHNcoex437XlGlPtMPWSU+em2xJX6YYPwj3oek2VY
	 ftgwUcTp7uLRXCdrChhr0ix5/TUm9b+y82olaeBcjh4TZih7Jsl24kqp1+w1O/rLhB
	 UsopK8nz6ZVK7HHhjMBldNq9WH0Eyay37fidcjF3fTv/sksuqHYNqPoQm3p7HEc7tg
	 kkYf3LuEB3k45jFOWb6G/rrIBQ+PEgJfc9y5WO3mt5Jk5jrcMqgSZdDsmtZvvbnLxW
	 YN3g+L4pU2lMscSdYLpymBeYiN9ydAWWVi/MlFgo1Dp5ywO5BvsQWOqEOsUgVqvEzF
	 2DdlEBeHIEEmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5d4moFGFguio; Mon,  6 Nov 2023 07:13:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0665A41DCA;
	Mon,  6 Nov 2023 07:13:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0665A41DCA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE5751BF368
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Nov 2023 07:13:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 78A3E41DCA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Nov 2023 07:13:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78A3E41DCA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U83-BGUGXM96 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Nov 2023 07:13:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 39F7C41DC7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Nov 2023 07:13:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39F7C41DC7
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="392089010"
X-IronPort-AV: E=Sophos;i="6.03,280,1694761200"; d="scan'208";a="392089010"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2023 23:13:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="885818188"
X-IronPort-AV: E=Sophos;i="6.03,280,1694761200"; d="scan'208";a="885818188"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2023 23:13:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 5 Nov 2023 23:13:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 5 Nov 2023 23:13:10 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 5 Nov 2023 23:13:10 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sun, 5 Nov 2023 23:13:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JXzCPtuijFU+1ETfn0va8IB41lwfCx4vfdfIs9u6Hc7YMNQ4uXCaj3VEhdBLw3enWpbsYPYJ3AKtHqfYs3QRpeqYTQqGCQsQ7bAz2G+ZgODXXwQQ0RfbN5vDL0SY9mMpfmWvOi1jtDhH5cjX2trhZdlJyhTO9VnP6w3synGeD/4OSf/tb5iQhdvZ57BfG/3mowxFWIp/92nnYoKLqwQkXKtPhcW6+2EiG/1A1/9DSR51LHw8ZrMxOwZCYHIom0+RGCAchJcs9eaETN7r1sR0AXj0aN17gAaYzMD4OSKKovIngrx2DSBE6L7oWGxPoNzol0F03axHCHjUXQMwp7IA8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SGw6O9XWtr0HCdL2MEYNyhXPkmwj5zr8HX+xwI0RZQA=;
 b=lv0BFuwep6wOyLlGgLlhDo7unxS3V/CfvyxerJqq/gQlM4XfkB1qb4AtevOEpBMGs5F4U/BFobuALotB7kOECGpW6+sHQHT0Tj9WFOLAgy/UwvrUGk4Cfp815mf78zddEjQLLzXElFBBSIo+0eBB3yvXda2Z0sAMgx1reGRa8ViLI8grLhzAWe1SLzoABBSXS1g5FchinKo46GPKaiX/WhXbM2GN67jKJ7pM5KpJVm6d/D8eNOdAdAvd1o61z5LM9QvsWJLQRW7zNtIh03BVoBM3c29ihVj+VCMHBmO95AgTc4nrJzd2J8tbPa8CoHDs3mTR3E0JRm09PvmceWBsbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CH3PR11MB8436.namprd11.prod.outlook.com (2603:10b6:610:173::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6954.28; Mon, 6 Nov 2023 07:13:08 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ee54:9452:634e:8c53]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ee54:9452:634e:8c53%6]) with mapi id 15.20.6954.027; Mon, 6 Nov 2023
 07:13:07 +0000
Date: Mon, 6 Nov 2023 08:13:02 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Paul Greenwalt <paul.greenwalt@intel.com>
Message-ID: <ZUiRucN+jbq92wJ4@boxer>
References: <20231104182908.15389-1-paul.greenwalt@intel.com>
Content-Disposition: inline
In-Reply-To: <20231104182908.15389-1-paul.greenwalt@intel.com>
X-ClientProxiedBy: DB9PR05CA0001.eurprd05.prod.outlook.com
 (2603:10a6:10:1da::6) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CH3PR11MB8436:EE_
X-MS-Office365-Filtering-Correlation-Id: d9ce8c86-85fa-44c5-c601-08dbde97d3ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: msFHhsY/C+VeIFqOaKjBW0w1ldNUyv2imcyw03Qponp46W5KVsnPxUUe9lzWKnvfeL2B83iso+Dw3IxRzPE8Hz9Cgs66vMvymidILWUNXtzYZsPR1k+9pTSCeDAusnEHhwoow5knUhno0JAUbd61lWUbI6HZlBB6yqG0ZU8qTmv/wQQMA/zQi7DGa0FkkCI3hMjehIReN0ijRudjCkfo+ch0Zt8uTb7Qrs5nr3du1tm5A9BKIBkEw4P2GXCB5VsA0h5EqXB4dsx0FuUWrKsur4iPjF6qLvL+OOpy0x/J7SPKWUq5Zpz8MVZ1EgjPpDLAp3irPutQ7iS8PX4ShZkFj+ae21nA90e9cENIqgIYW21xEX8RsF0N3X+W7nha8RdWoOMI22vKkZur1Z+Xwrq7UcRWSSN40frjMfz66XHdr89NIwXPDOMfSeJEgdstF+smtvYGOotSdaF17OO2uhRvusAnVBDnfnNaboHqnhf9lbyZq05YXbMP6apZJtdTBHi0T6JhxTkd5VpO7oDTbQRVvhDAWMmTdRY7BGtTO3gpUDmF6u6und60yHubgqvdq3hxENdh0DagCmrg+4+G5zKV4RmzmXYnadeyBf6CnzgEXv8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(136003)(366004)(346002)(376002)(39860400002)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(83380400001)(6666004)(6506007)(9686003)(6512007)(82960400001)(107886003)(26005)(6486002)(478600001)(38100700002)(6862004)(8676002)(66476007)(6636002)(8936002)(316002)(66946007)(66556008)(44832011)(4326008)(5660300002)(86362001)(2906002)(41300700001)(33716001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5hyc9OV3Ezq70rom8eJjpFORIO78GqXCcBuVC/jVDPu//J2aVTRUQbwf5pmb?=
 =?us-ascii?Q?NZCDF6deIYdRmtxFefpCA0CoULMEYt++B/7DBpmSgEgWq8kxYEkcCzs6CC14?=
 =?us-ascii?Q?9NfgMAN8bn5QdWLxEBR+O17H2sflUpMH+59eRjRQOedd7hrfo1iG0Ic9zPJm?=
 =?us-ascii?Q?feSRS/XzxXP5ducU/Dt+YWJq1Jnqr7Ear8uwFD46olIBKfG5abrVefOPlNWz?=
 =?us-ascii?Q?CXpRm5wcQH5EJzOzZckdPDPlQDpsIWpIRgkXu2C6Fut22UGPNvOPNqjDSybC?=
 =?us-ascii?Q?W+V8+fd+7zSlTG1fKW6wBs2Gll7oFEWxLVm3WjnwUFmMf2IR8BLkLocG9CFf?=
 =?us-ascii?Q?RkViAnWAPsCH0ALRLHqmIbSU8Je/84vxPdvhiMjyvYmrD4Ki3XXLCm8Qx+q3?=
 =?us-ascii?Q?a73ytIee73v78ZaxykhstGCLGytbZNg0nfPlgmuW/O+MJy0lg8g9zRfvCo57?=
 =?us-ascii?Q?9ZcaMIIOEZSvLrCc6oNI/QkQ0Ha9swldHiHQJliwSfoHDMYDotiyW18Xsitc?=
 =?us-ascii?Q?sVeHScf/3EYZyhPoXCOQvJy7KIgvlESNTt2nPs+tNNmtWHyQdNTvw7BsLGLt?=
 =?us-ascii?Q?cLQ5Fcg7SZjfznK7AI8N4OciHkd/vgxHFQqutaEEnsY39bsOCXj3gPc/49kS?=
 =?us-ascii?Q?LgUVtupE5uq0wK/morJra5GxOILt/oSTF4MOFH4s3bKtd7HKshFmxaKiTgY3?=
 =?us-ascii?Q?jfzvofN805WeAfSkwqqYRlVsZeayQnXnsql7ZwmE3v9bFKvXsHYbHMedNZzV?=
 =?us-ascii?Q?Yat9DAS2e4GG01K9bsrXRRV0MINAYEJ3CIXqqj8EAQd9H6UDr+XW4zBWix/m?=
 =?us-ascii?Q?f1KpL9Oy6S9bJGr4uwG2E4zqjOsKCaUv9xwbNhkoC6CfRXhg5YIHgU7O8vO6?=
 =?us-ascii?Q?hiTNRHS6sJ6UZpyuh3npYi6V3da9WzFXd/mbEledCny41JASAkD2+Dc+MjYC?=
 =?us-ascii?Q?022A8Holwp3vfqLX2Rrc4eTy3/ArmNuU2IjAwO2YTaQMrt7uDAmVtJxdY7jt?=
 =?us-ascii?Q?sczVm9Pbahlbn2bXQf93ZhjzEcP2lUmwil4ErRhpEGnSGvQfS7N5Y8sT+JsM?=
 =?us-ascii?Q?9v6uAC+3SV7gEEvAvnVAMQcuk9l2+CJDGSHW9p202AgyYaxbVqH784pTgGC7?=
 =?us-ascii?Q?NYj/dnfDZLHzJN53woYTYuZslNHYKr6o/Wno+mbeePotD/v0EjxcWnRRlsCp?=
 =?us-ascii?Q?UuRrj9YBVUBeikNd3sZ+RNcPIhVKF6Om5wubatV1hG7flQ20zSFyTqSYXynq?=
 =?us-ascii?Q?THradB9rqXoh4fy7a2AefrSITRfQJfojoFjWvCdv/dm5UUWFV1GuoAn5snwW?=
 =?us-ascii?Q?pK5jOo98sNDEvp0q7/OMdphWPvvVgOqQckWAPM+U//KVtPwLK+sMSjrRzSgw?=
 =?us-ascii?Q?EeKHnpr9eIgrhsOcHBNfFKXFBRzQR8JUSNPND61fItkpTWBnwe9C34DSNzFi?=
 =?us-ascii?Q?deRi39fheAten9QUgy917/UweLbyBzVa8H2LSCZ1nOYvXyYYQ2d+M2xGQrN2?=
 =?us-ascii?Q?fvDlliiClorQyBXGPS0F7wrgyk19NrD8yJ3fLrVe3dOQJvoQ68bvf9FFQyLi?=
 =?us-ascii?Q?linUbkRZcC+dpL2OX8wDY7dgo47e55Bb+52417A2mxI79rBMUckOEE2oGGgt?=
 =?us-ascii?Q?EQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d9ce8c86-85fa-44c5-c601-08dbde97d3ad
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2023 07:13:07.6928 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z44747dLnczrS1AzEUigs+EYHVP0QNKa2g6uWzhFhhDGJjDMHdQYcqS/B6QnCKGfQkwfnrIJTQnIWkADVGiF16xu9649Eq3JB9KeccrihGU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8436
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699254793; x=1730790793;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9L3WaNpZgRfx2YEX1OrhfjxHbLYjb3jSl7c8N9U1tUE=;
 b=A+mUiANPExvsb9C8fUhmeiH+Stw6zIa9PirLZP/MF61w4LHLLnSx5I3X
 hAHanw13yGeRXcwlK6cblbxn/DTKomEqi/Ew5TK3M0lPqw9U3ET8fLwva
 WmxgFNzODnJpWy9keszuQJv5dO/VIh81qX8VJD9F0sr1S6jbeXQMzjFI2
 s4/XwH5it3lXJpSMuULTr1ubejarjltfdYP2Eto0K0A2Cv1gygcCfAeH8
 v3R+cPdllLPp8hDd6sCcId82LFpaYiWkY5CabUKp9d2UoQf4uBnKUVODU
 FPpQqDsFt4WP+yIIVUPWav3S/z/+jh6vqPgzmoCc6z58WWXcjz6bNaE9F
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A+mUiANP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix DDP package download
 for packages without signature segment
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
Cc: Dan Nowlin <dan.nowlin@intel.com>, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Nov 04, 2023 at 02:29:08PM -0400, Paul Greenwalt wrote:
> From: Dan Nowlin <dan.nowlin@intel.com>
> 
> Commit 3cbdb0343022 ("ice: Add support for E830 DDP package segment")
> incorrectly removed support for package download for packages without a
> signature segment. These packages include the signature buffer inline
> in the configurations buffers, and do not in a signature segment.
> 
> Fix package download by providing download support for both packages
> with (ice_download_pkg_with_sig_seg()) and without signature segment
> (ice_download_pkg_without_sig_seg()).
> 
> Fixes: 3cbdb0343022 ("ice: Add support for E830 DDP package segment")
> Reported-by: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>

s/Fijalkowski, Maciej/Maciej Fijalkowski

> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>

Tested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Thanks a lot for the quick fix!

> ---
>  drivers/net/ethernet/intel/ice/ice_ddp.c | 106 ++++++++++++++++++++++-
>  1 file changed, 103 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
> index cfb1580f5850..3f1a11d0252c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
> @@ -1479,14 +1479,14 @@ ice_post_dwnld_pkg_actions(struct ice_hw *hw)
>  }
>  
>  /**
> - * ice_download_pkg
> + * ice_download_pkg_with_sig_seg
>   * @hw: pointer to the hardware structure
>   * @pkg_hdr: pointer to package header
>   *
>   * Handles the download of a complete package.
>   */
>  static enum ice_ddp_state
> -ice_download_pkg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
> +ice_download_pkg_with_sig_seg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
>  {
>  	enum ice_aq_err aq_err = hw->adminq.sq_last_status;
>  	enum ice_ddp_state state = ICE_DDP_PKG_ERR;
> @@ -1519,6 +1519,106 @@ ice_download_pkg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr)
>  		state = ice_post_dwnld_pkg_actions(hw);
>  
>  	ice_release_global_cfg_lock(hw);
> +
> +	return state;
> +}
> +
> +/**
> + * ice_dwnld_cfg_bufs
> + * @hw: pointer to the hardware structure
> + * @bufs: pointer to an array of buffers
> + * @count: the number of buffers in the array
> + *
> + * Obtains global config lock and downloads the package configuration buffers
> + * to the firmware.
> + */
> +static enum ice_ddp_state
> +ice_dwnld_cfg_bufs(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
> +{
> +	enum ice_ddp_state state = ICE_DDP_PKG_SUCCESS;
> +	struct ice_buf_hdr *bh;
> +	int status;
> +
> +	if (!bufs || !count)
> +		return ICE_DDP_PKG_ERR;
> +
> +	/* If the first buffer's first section has its metadata bit set
> +	 * then there are no buffers to be downloaded, and the operation is
> +	 * considered a success.
> +	 */
> +	bh = (struct ice_buf_hdr *)bufs;
> +	if (le32_to_cpu(bh->section_entry[0].type) & ICE_METADATA_BUF)
> +		return ICE_DDP_PKG_SUCCESS;
> +
> +	status = ice_acquire_global_cfg_lock(hw, ICE_RES_WRITE);
> +	if (status) {
> +		if (status == -EALREADY)
> +			return ICE_DDP_PKG_ALREADY_LOADED;
> +		return ice_map_aq_err_to_ddp_state(hw->adminq.sq_last_status);
> +	}
> +
> +	state = ice_dwnld_cfg_bufs_no_lock(hw, bufs, 0, count, true);
> +	if (!state)
> +		state = ice_post_dwnld_pkg_actions(hw);
> +
> +	ice_release_global_cfg_lock(hw);
> +
> +	return state;
> +}
> +
> +/**
> + * ice_download_pkg_without_sig_seg
> + * @hw: pointer to the hardware structure
> + * @ice_seg: pointer to the segment of the package to be downloaded
> + *
> + * Handles the download of a complete package without signature segment.
> + */
> +static enum ice_ddp_state
> +ice_download_pkg_without_sig_seg(struct ice_hw *hw, struct ice_seg *ice_seg)
> +{
> +	struct ice_buf_table *ice_buf_tbl;
> +	enum ice_ddp_state state;
> +
> +	ice_debug(hw, ICE_DBG_PKG, "Segment format version: %d.%d.%d.%d\n",
> +		  ice_seg->hdr.seg_format_ver.major,
> +		  ice_seg->hdr.seg_format_ver.minor,
> +		  ice_seg->hdr.seg_format_ver.update,
> +		  ice_seg->hdr.seg_format_ver.draft);
> +
> +	ice_debug(hw, ICE_DBG_PKG, "Seg: type 0x%X, size %d, name %s\n",
> +		  le32_to_cpu(ice_seg->hdr.seg_type),
> +		  le32_to_cpu(ice_seg->hdr.seg_size), ice_seg->hdr.seg_id);
> +
> +	ice_buf_tbl = ice_find_buf_table(ice_seg);
> +
> +	ice_debug(hw, ICE_DBG_PKG, "Seg buf count: %d\n",
> +		  le32_to_cpu(ice_buf_tbl->buf_count));
> +
> +	state = ice_dwnld_cfg_bufs(hw, ice_buf_tbl->buf_array,
> +				   le32_to_cpu(ice_buf_tbl->buf_count));
> +
> +	return state;
> +}
> +
> +/**
> + * ice_download_pkg
> + * @hw: pointer to the hardware structure
> + * @pkg_hdr: pointer to package header
> + * @ice_seg: pointer to the segment of the package to be downloaded
> + *
> + * Handles the download of a complete package.
> + */
> +static enum ice_ddp_state
> +ice_download_pkg(struct ice_hw *hw, struct ice_pkg_hdr *pkg_hdr,
> +		 struct ice_seg *ice_seg)
> +{
> +	enum ice_ddp_state state;
> +
> +	if (hw->pkg_has_signing_seg)
> +		state = ice_download_pkg_with_sig_seg(hw, pkg_hdr);
> +	else
> +		state = ice_download_pkg_without_sig_seg(hw, ice_seg);
> +
>  	ice_post_pkg_dwnld_vlan_mode_cfg(hw);
>  
>  	return state;
> @@ -2083,7 +2183,7 @@ enum ice_ddp_state ice_init_pkg(struct ice_hw *hw, u8 *buf, u32 len)
>  
>  	/* initialize package hints and then download package */
>  	ice_init_pkg_hints(hw, seg);
> -	state = ice_download_pkg(hw, pkg);
> +	state = ice_download_pkg(hw, pkg, seg);
>  	if (state == ICE_DDP_PKG_ALREADY_LOADED) {
>  		ice_debug(hw, ICE_DBG_INIT,
>  			  "package previously loaded - no work.\n");
> 
> base-commit: 016b9332a3346e97a6cacffea0f9dc10e1235a75
> -- 
> 2.41.0
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
