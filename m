Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3147E28E1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Nov 2023 16:40:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2DD74151C;
	Mon,  6 Nov 2023 15:40:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2DD74151C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699285223;
	bh=9SsTnNzXfuVsDmfNcTe7fXxYGajHQVGy1pN/5was/+k=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EAkXWv276dE7j/J9qwr0AA1nziiUnAOss8ahR/e7QBZnDkZilNzIzf2iffKwH8Rs8
	 l6XYNMH/PV5S7nkajzzHQXFdTLub9ocn0PhlykQuSr2VJz3MHb3OfLnmkWU5nPs/1J
	 sGw19CAdu7Qroc71uEKcbGVsXAABG5xla+QxNIwFXaUOjyVGYuJDZy0zXXKve+ERAd
	 xtIejC+IPyVNyAlV2oQ7f/y4Y62Cu6dNpGiW/v746l1bKwwzFc6gx3xIvfFErxYpB9
	 TCvyVPRyKzpYSjzIXWSI5/hQMXaYczqnNrwrH7sdApev2sB66j238VzRvcF8AR8bh+
	 0r1MdkWqukZwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id apOEdDIB7GxN; Mon,  6 Nov 2023 15:40:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D726040B29;
	Mon,  6 Nov 2023 15:40:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D726040B29
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 983F71BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Nov 2023 15:40:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 70D8B4175F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Nov 2023 15:40:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70D8B4175F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D1ACKtNpB5HW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Nov 2023 15:40:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AC98E415B5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Nov 2023 15:40:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC98E415B5
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="379692643"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="379692643"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 07:40:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="797345120"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="797345120"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2023 07:40:14 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 6 Nov 2023 07:40:14 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 6 Nov 2023 07:40:13 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 6 Nov 2023 07:40:13 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 6 Nov 2023 07:40:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T7J48T6U5Q0Zu+OyuLH0MSSxy7NzagTI9HW3CuHU3S2Kg0QsaA1VbUqj+ZXVi1XAkCC4vM2UPGuT/T7B7VSY9n9e2UbeCxSKNDHEyFirgX8STA60epDjo9ROeZqmzFcMW5vIjL2KjBou8T6JFxMvaG/4Ypal/UpamLDokJVWws/nOKGIqk0vySWYFCqcBUKT9rfxlAlr4uyv4Bb96DGTKVTavksEeVHG6/5E7Re9O57Pz/K7o7CszVd1r7Q+ZB60JhAkd6HDMWJdMc/IGn9koWbBdrs7Mw7KWD7K8l9QuO6cS4LpiqrSVP2k9BXTwuYAhrewb6eAm4rGweT67Tnf5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EWtbG2LhiBFPZkvyvfV3rHfkDLL+lXbmvM+NT/rqb7A=;
 b=TI+XKdb89CcfRAUtLqeNCzgJpLr8VczPPHDXKW+XqZFUbpjvX0NwgpNxcmbGqWpDxewAwne/Vy0+XFL8py2tvyQFzHcKc9QzBpbmgT4iZw7vq/85BGdDO0e5DffftGd5w2o/5BvMDTlIcU+GwU6Dlo5fOvqVdvI4zBEpC0FaYXgLRDVPDku17srl/qRBD9aS5LU0xTrllG5ivqEJcaUmTOKO6LAK1xO04oZ3PLLof7ekXs3wr+b8GZqNLlmvlozBZq14YhVLuZQKL7W51CYxA0E/BP0HiR5oDmGK64ptadx3NlIj9gkxX6aGKni4KhJnllvbp8idxzJWPbhaldIG0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SJ1PR11MB6298.namprd11.prod.outlook.com (2603:10b6:a03:457::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.27; Mon, 6 Nov
 2023 15:40:10 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ee54:9452:634e:8c53]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ee54:9452:634e:8c53%6]) with mapi id 15.20.6954.027; Mon, 6 Nov 2023
 15:40:10 +0000
Date: Mon, 6 Nov 2023 16:40:04 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Paul Greenwalt <paul.greenwalt@intel.com>
Message-ID: <ZUkI1Oln+tPMyDD8@boxer>
References: <20231106151808.421280-1-paul.greenwalt@intel.com>
 <20231106151808.421280-2-paul.greenwalt@intel.com>
Content-Disposition: inline
In-Reply-To: <20231106151808.421280-2-paul.greenwalt@intel.com>
X-ClientProxiedBy: DB9PR06CA0018.eurprd06.prod.outlook.com
 (2603:10a6:10:1db::23) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SJ1PR11MB6298:EE_
X-MS-Office365-Filtering-Correlation-Id: 9887fc00-231a-4ada-9ef2-08dbdedea895
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Sp6Yiuyg989x7tFxHIFG/SHNy2PrAsUCn8oAqt7GV0UBAWwVw9rZfKqunMlMwUa+0AJ/Aj8ahyLve2y8TWczXzgI2gnwHCGCewlrZTjEA/hZjTCaT6nq8f45T2rJa91/IfPg5Ll0GzdNHVoTA0WUGo3dtumgbEjAQYDNtD9nZRfj0PykSeID2u/18F9/D/o6FQWc2leTp+eg/6A/KHUd7lDtVPAE2USflkrjZwZZQxz5BlBP846F8roJOYch7Ysii3gjNWcZzGjsEIM8ADAV+pqmm93cZLQpYGobqd74N5xRlWmAEshwXX5ziW8kP8X+ClM8JUkO3pwivQJJC2Pu6RqVOWNmk6wp6rLO/wP6PAFnOhmFBunaSDwm+QZWeO0kcjcOw5y6TNW/9N9O6BCX64cNg4c9NikFHNZFszX44+KghfD0pwqYpcZ5qVBy5JFwQeE/Wqof8YALfSyjMBafuX2iV3E5Gwz0kokHvaKu/eYzt6Wxbd+r9KT7VLSRnnGPFMylWMMtT66twGo8u5Rk4Hnhsmyqp/+MsqF4V8gb0/m+tpdsa4YcyDhdtrl9lKS3xax1J0XeKiqvnGKq0j/p60HgHjynYq2BoPg0OlOHwhU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(39860400002)(366004)(396003)(376002)(136003)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(4326008)(6862004)(8676002)(8936002)(9686003)(6512007)(66946007)(6486002)(478600001)(66556008)(6636002)(316002)(66476007)(44832011)(41300700001)(6506007)(6666004)(5660300002)(82960400001)(86362001)(33716001)(83380400001)(107886003)(26005)(38100700002)(2906002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ydBpppap5yohN1KtzqyTPQEQX3GvcNMItV7jjdI7Xdl85ml3dXfgQIg/RtXe?=
 =?us-ascii?Q?mikgKvUgXOkgs2Idca1wLbW6SY1jX/UNayHGLHWgL+Zu2cPcw3Agq3TuCT1m?=
 =?us-ascii?Q?81Nws5OWtD837DL6YPWUTsVEecPtSbcbUUFAZgBaD4/1kOZKYyMtxEW1Sthb?=
 =?us-ascii?Q?ud/YLfvOslEEbs1CW0CwPx31+Be4yKqFb9P/0KpUOHWJk66pjH4yfMa0tJ7v?=
 =?us-ascii?Q?qt3auBg9XMqcjjMd+gD14cVxqCdCPrpn0dDf7MaJDs+itEOalvZ2uD6dXE0b?=
 =?us-ascii?Q?4HhOidj+f/IdSMXoZSmKknCdawgss/oFKmBg/PT/ugDGr8jVdvnV1cyI4hIi?=
 =?us-ascii?Q?EOCEld+s0l2Gl8DV0C6+EguE8iEYwED4+ziYQarZmIjvCOhQe11VsnSsNgsF?=
 =?us-ascii?Q?kDZpjsRJsNaHK3b2LDh2JRAyiJQ99r+Pr0jfoeBuJNT5LJW/cD1w9x5xyS0w?=
 =?us-ascii?Q?RULLY57gJtZmIi/JpwSjWPxOmijjbBV5G8XlvH+K3saDhhI4y6zyZxjC8xD3?=
 =?us-ascii?Q?RfKXh4vdFHUEDTMccik5X52c18cAydcGrqvnhpxPjpSIUEzYvKeIRdGFgaTY?=
 =?us-ascii?Q?b5IPIwqmdx5DBnrR+upnqsii2Nm6vkaAGDY08UauiABMya1aJ/UpH+9x5l0P?=
 =?us-ascii?Q?oHvxpbPZfgsLKsgHg4iM1URhCWnYaFeVn+J/Y4IRRlXeV4DDb4coON1EuvMs?=
 =?us-ascii?Q?JamekjmY4rYv/wZq46uLi+FxILacxB1pU6kNWM22HWwcwUMZpGa1Q1Z0ojp4?=
 =?us-ascii?Q?aPfmmQtNqUhd07MFktmeEpVQbFyNYH8+7zVkmf5uXEa3hQg763Tp+fbg4pHq?=
 =?us-ascii?Q?tEajLrGFM2H3dM/EuZmcED7mJmZpgTwPULsXtF7NdIXvgwzRva/OJ7D0+3LH?=
 =?us-ascii?Q?Uk7SNkFkYtHwbeff12zFk5W9y/DFGAlmUM5LDJn68xA5etbEW6L1h2JkpII+?=
 =?us-ascii?Q?eF70dLwfQGI6nS8cIYXqg47fgIMh6rPVsDoHR93ykP3sw1G5b/RmyDw/d0qV?=
 =?us-ascii?Q?ExcfSQLD/zLQ4Veymk9le5QeltParQyYAFMi6C2pBn1j491CS6JQpNdYLZue?=
 =?us-ascii?Q?KC7bWXVHzaa5nMMexffUIre0i2PyXLtoEHTA0s3uFDhT98zQr4aoVcdECs3H?=
 =?us-ascii?Q?mi+lRTxOwNVh4kcMjwkI2WM2eD7H8oZ3g6+fFy2HTna1ztd0HjRIZfiaa8K9?=
 =?us-ascii?Q?DuE0mgof2cjR99JclL0VBCsiTCKeOdyEhpEcFQsJTsbr8PAUL+y0Jwud8dPB?=
 =?us-ascii?Q?FEVRvtEWMpebWekrBGZO6BGx6jgUoofA0Dq5ogQbG/aID5KfHfyPIuv5nfiF?=
 =?us-ascii?Q?RmyImmdTzqhSfv+51xRbRDfl26loEvsW68OGim8kUSCCKBNDap5RRUGEFtAM?=
 =?us-ascii?Q?WA9CYcBj1uT8uWxLYjsicNsx0D64EX15ldFHSZuPXQ15H7KB3LZk69+qcM/b?=
 =?us-ascii?Q?Z7ps0qRuzYd6xftrS7NEGnYti6Ukuo/EMzFLZaXurCT2uujSAHypYLFj9Pn4?=
 =?us-ascii?Q?soaGZ9mLhwA3itCq+r8WlNcDR1QYS3NVqhQBM5U6VcsVxzJAdVnzWf+SpGPS?=
 =?us-ascii?Q?z1Fj56UNIwtRqSAuNmnmLEYkzc/Er391vioP8ebqeXQcYztKp9wYKoREkS7O?=
 =?us-ascii?Q?tA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9887fc00-231a-4ada-9ef2-08dbdedea895
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2023 15:40:09.7570 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pfGlCCT3PX+ZPcajZmhQsolJVyLq0mrp1R2XrL27InCJ3ZXfsoNzMZNCRsK4T0C/HAh3kL5OEV3uZABpwaYwnhC44bzZxtb7b4DBrtmzlzA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6298
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699285215; x=1730821215;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=YcMUNiYNNYh9rYrP3c6EPRbR2P9+IVTWbmrWV46LfKI=;
 b=e5zDvLOU8gF+zMU4lGFCuzxKZLbP/Ns9UGfiD4tyqiQtMipxn8yT/j1V
 BuVWj4xC7QtBsjSOK3J+82un8AlNKMP7quwaxA49iR41OJoRYV0iF/LPw
 Tvtpc5IKvAm697luO4OqiqcAg/IVA0y/HCbrMAAE1nTkNgk2U9txAMdKV
 iM2qUo311ougIZdlcI0GMKAyh6kb+4swC0506cfhB8OE7U4GnMlA9Hz2H
 49xFEuS2JiWCF/MkrpxFhOyNRip94evyhs+1IkxSFcTb0c16OnscWowrV
 1e7f2F6GSYH9cjKMXKxySyIx8Ta56tz20hwMryAPssVkXhlJaNCvsGfRh
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e5zDvLOU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix DDP package
 download for packages without signature segment
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

On Mon, Nov 06, 2023 at 10:18:08AM -0500, Paul Greenwalt wrote:
> From: Dan Nowlin <dan.nowlin@intel.com>
> 
> Commit 3cbdb0343022 ("ice: Add support for E830 DDP package segment")
> incorrectly removed support for package download for packages without a
> signature segment. These packages include the signature buffer inline
> in the configurations buffers, and not in a signature segment.
> 
> Fix package download by providing download support for both packages
> with (ice_download_pkg_with_sig_seg()) and without signature segment
> (ice_download_pkg_without_sig_seg()).
> 
> Fixes: 3cbdb0343022 ("ice: Add support for E830 DDP package segment")
> Reported-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> Changelog
> v2->v3:

so is that a v3 or v2? subject says v2.

You should include tested-by and reviewed-by tags provided by me and
Wojciech.

> - correct Reported-by email address.
> ___
> 
>  drivers/net/ethernet/intel/ice/ice_ddp.c | 106 ++++++++++++++++++++++-
>  1 file changed, 103 insertions(+), 3 deletions(-)
> 

[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
