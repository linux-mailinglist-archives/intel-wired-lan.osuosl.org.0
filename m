Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3C5A41D04
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Feb 2025 12:37:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51F5581298;
	Mon, 24 Feb 2025 11:37:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WA5ivSeOo-iE; Mon, 24 Feb 2025 11:37:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E64B381295
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740397034;
	bh=/D5P6hPPpyX5WuVxszSk74/Ihar23IswPugABfun9Hc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YTnEtw2LKR3XMaPPoHKnaWcGoik0CQAaod+HuxBOTXL1GRTSgaRwD81l0mdQYiECf
	 R1Zq9ZvZmY0pM79l7mmw9CHQNl6/mJBK3/rCzGOtsvkdHsPG4qcFi3A/X515HO+gn+
	 7YNyDHJbagGZ7WJKfjJ2uOACrH2TTMqp0hNLWgGrOO52eAWUEzu4cSk3QjXl/XaSyd
	 I/j2mBqfyEbw7BukySfXn+MM7nGAeFNeLod2dEzhwWKettteE9ZL5LP1p56Z1VWF0P
	 ZQ4C3vtNoaHYlJEiBIFeGZrxzGfT70XXoNEPZigoQfmCqHc+VTdYX61JzysK7u5BhZ
	 xfsVQ7mF1v54Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E64B381295;
	Mon, 24 Feb 2025 11:37:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 819DFB88
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 11:37:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 605B740B9F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 11:37:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N1MOxAmJYq3s for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 11:37:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C73D84016F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C73D84016F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C73D84016F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 11:37:09 +0000 (UTC)
X-CSE-ConnectionGUID: YgbEyPE+SdCdOCwue0ATGw==
X-CSE-MsgGUID: Znubc2DpSNin7sliVlV08w==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="51785674"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="51785674"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 03:37:09 -0800
X-CSE-ConnectionGUID: 9ZFPma/gTNShpzGYHFwg8g==
X-CSE-MsgGUID: zIDsYjQWSw61LnfomjbmXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="153236418"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Feb 2025 03:37:09 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Feb 2025 03:37:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 24 Feb 2025 03:37:08 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Feb 2025 03:37:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cVFhOVMcHN84QELh2Mx6oY770JnMa3LlfP8eYMsB9IjK7GzzcdQtAK+5FaUkK6A5K62OzcOQ5+jMhbZJ79WxH7R0IT02RrU+EsSzn+kLoUFwTBHQ6WwlNcIwJtt8Zrtu8Va9+PHqgWEsF0DOC3za+t6XiJXHqx57FqNMBMqWiCTXhsDdRwQluTXBV1TNLYFyfTquszk02mVA6N9963htin+sAXxtaRjAOb+3qvR4kYfu5l1Ch2i+ZpcEP0uCWCRkCUoH1iH8H/umaIoYJsMuJW+BqvNauHyKJKX+jD+eL+XQTO0XZpPMUBWSU0cRTgQr/7t8E6U79SAACz5yxzRoVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/D5P6hPPpyX5WuVxszSk74/Ihar23IswPugABfun9Hc=;
 b=NTLqfvWmzXtb9vkbJGMvfeSJNTeq8u029VtaXCRwxj8J0alukHQyD86X6XZVWZZiga/5qKsjxgNgCJ6q74sNJFlz58iner9fflYrMMHd0Z2PwNpvvv2b4qct1zNNmvcXpIbpTwCP+gi54bOI8P2dtzV4YiscfnsRpNY6Ms0BGvF6y3D5O0yEFYxd/dN5qDJG9aqrMxfW+894USblD2tsgfdFC8W/JoovsCwNtdnozw1vDxgvhR27sPcwOsC8cKLAwWe21Xnl8/EkYYBFENU9UVXhFxElkrd8fB0DTvoda5yWdTjzlb0WoZHmaOwkGH3NHxZ17Q/q/gJBoDGMbtKrLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA1PR11MB7016.namprd11.prod.outlook.com (2603:10b6:806:2b6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Mon, 24 Feb
 2025 11:36:23 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8466.016; Mon, 24 Feb 2025
 11:36:23 +0000
Message-ID: <eddc733e-2587-45ed-a2b4-a395afc0064b@intel.com>
Date: Mon, 24 Feb 2025 12:36:18 +0100
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>
CC: Karol Kolacinski <karol.kolacinski@intel.com>, netdev
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Simon Horman <horms@kernel.org>
References: <20250212-jk-gnrd-ptp-pin-patches-v1-1-7cbae692ac97@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250212-jk-gnrd-ptp-pin-patches-v1-1-7cbae692ac97@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR06CA0180.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::37) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA1PR11MB7016:EE_
X-MS-Office365-Filtering-Correlation-Id: ad8edd0a-1026-4d91-7a3c-08dd54c7777a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UEVGTXYrS3RZdDBuanRXVy82VXAxSDNNL1ZRQ2V3Y3hrVWs4dmJZMWRYY2JB?=
 =?utf-8?B?VU1rcGxvTUY1VldLUVMvMEdZek45MVJmR0ZUZWlyYjRlTXNGb0dFRDZneUJs?=
 =?utf-8?B?NnAyT3YyTTQ4cmJoT055UndEMUwrTkdtNnpkWXpSYUZuS2JaNG1UdldwUTVh?=
 =?utf-8?B?ZUd0aTZRaHNNbXFRbDRmUEhBM3FWT1NYWGFaRER3aWVzeVd6M3lpN1NiOEdL?=
 =?utf-8?B?OEtHbDBjc05XcVMyRkVUZloxUVc4K1Vwa0s0VS9SQVV6NjJiL2o2QWxSRWVS?=
 =?utf-8?B?aVJmT0Q4eXdVYzhjcHlkbjdQa2xObXZzbWJtZElPQkZlMEMwZFBHRlZ0UGlN?=
 =?utf-8?B?eW96VzBDL0NYT0gyMEVPc0dJdDJiTC9NakhSYmZFRXFadk0yQ3plQ3VMejYz?=
 =?utf-8?B?RDBxSDF6eENUcUJjSk93cytpNjhjL0NXUm9TRmQwMlBNNGhFVUhqdFJpN0ts?=
 =?utf-8?B?R1V3VGpWdE9QT0cxSXd0cVpRVzQzMkhXckJLRDdBM3VLSDU0Nzc3NUNjRHpE?=
 =?utf-8?B?Wkx5T1diendLM0dyekFtVXpObmQ0Zjk3dnJONTR0MmhSRFpkN1FMQ3R6RDho?=
 =?utf-8?B?Si9QZTlYRHhWRklScWVIOHhJR041b1UzZUx0MUFPOEw5ZUFucmFER0FWeElp?=
 =?utf-8?B?bjJYem9tekZGQjZjeG44V2dRdEZpdHZKUUdUZGx3UHRXNjVNL21RaXRhYit6?=
 =?utf-8?B?ZFJQWkh3cDQxR2FGSnVOUkdCanhFM1dYVUJDc3FPYi9VUWR0cG5rRElHSmhN?=
 =?utf-8?B?RTVVTHZzQmI4a2FDVlI3TURDUEwrdWxvSGRaUzFaT213SlZYOE44bGZkZ3BZ?=
 =?utf-8?B?TmtlVUFiMk5UMWxlc0kzRFJaMm5Da2NXd0UyMWsxOCtRb1FhVkcwTkovTG5s?=
 =?utf-8?B?UGFXODU5SEU4UnpVTHhJZHFuSGF5RDhleTBrT1FNNldQNUY2SDZ4QXNpY2dC?=
 =?utf-8?B?TDcvdHFXYTZYTEdUNGZyRzlZS2NBcWF2R2gzNXRteGg4U2dETStHTEx0ODFS?=
 =?utf-8?B?SlMzak9VcDhPN3llZHd0eGxCUjl2V2txUENFOXJDa3A5VHA1ZEZoMGEwMERG?=
 =?utf-8?B?WUYxN2JjNHJoT2o5UVR5RUZVSHdpaEZFWXdwTkh1eU50TWk5VjZUUHF1QjQv?=
 =?utf-8?B?YzgyOFFja0NpYlFheWZpM3JoMjkxM2V5MzR6eXcxc2FPUURla21VSTFjcTg0?=
 =?utf-8?B?cHRzY1RQRENKaUc5UHNtRjRta0hWaGVjNldmK0RtdHZQSlpTaGdObFMzV2ZW?=
 =?utf-8?B?MEdhU3RQTFdGZ3VxSHptZ2pZaitTbnFiWTVrV0svWFh3NlBpdEl0cVhGYmRE?=
 =?utf-8?B?THVPaGZ3VU0zWmFZUE1xTHpFNHFjK01FelVOeWdiOHc4dG5qSHAycCtvZGFI?=
 =?utf-8?B?QmRCZWpuL3VNZjlTbldTZUFBOWJhbDlyYldVQ0VWdTA4SURwOE9Bc29kSnpV?=
 =?utf-8?B?UndnZENGZnZmTld6cWdwQk1MazJOZFZPL201ZklBRzlxK1c3akRoVnFTaEVp?=
 =?utf-8?B?QjJMd0U0Tk40Z2ZYTzhqT0o3Um44Sml6QUFTVm9UZE9hS0J1cTYrWUlKR1FC?=
 =?utf-8?B?Qm5iNmJ4NWgyQnhEcE8xMDB2V01haW1lU2Vpc2lyYThTcDRFMkNjd2l6cFRq?=
 =?utf-8?B?WENCNzF6MDQ0NkZBeE5CTEl5b3J5elFITGUrN1FPVGVQeWJtUGVaTEVnZHFy?=
 =?utf-8?B?NVpIdGNZNkd4UlViNnUyczFpcXpSQnhFY2NxeC9ueDBIbTB3aS9IOHl4RTNC?=
 =?utf-8?B?UEV2MWxaZllHc1psVHd2MmpXTjV1dktyVmFNcW9ZN0hzVEM3dzNSKzFyZ2NC?=
 =?utf-8?B?czZqeU0xWjgvMGFaRmpHWGEyTG9iM3piU0hOTjR3VXNFYnZlc1loeGZHYVlH?=
 =?utf-8?Q?NKvR73t/IAwsO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dzNVak9HQm5JdFJxOWd4NUZCNW1oN1pGVnJZODBLY2dkKytyM0dZM2p4TU9T?=
 =?utf-8?B?WnFVd2RHUlpscU1VSklwNVBuUzhFaytjN2NZT2VickhOd3UrNC9vaGpFeit6?=
 =?utf-8?B?Sk1BdWlrb3hVREx5WUhQUCtwM0pZNlNPWFQxRDVTZ1BsYzlhV3I0M05aa2dp?=
 =?utf-8?B?eGJhVVlhY2taakFBaTZXOEZXUnk3RmpBaHB4UHYwUXM3R3lhMXBnM3MwcXNw?=
 =?utf-8?B?ZzhDbXlsR2dCczlGWlNneHBrSlI1TmhwU2VHRWZVVkdrcEFuMnpOWlZOYWFv?=
 =?utf-8?B?cU0rUDNQS0cvb3pUU0pZZW1iMFFNSE9OUXdwM0lOc0F3RDl1V1JERFBtVlZB?=
 =?utf-8?B?cDVkc1VpS0hHSzlYQWluVGdJcE4wQjhHVkFLU29WTHZuRXpuZlR3dVRiTzI0?=
 =?utf-8?B?ZnZ6dUhXczRQSFhmR2VTMmUwVFhFenhTNnVQOG5mYlJJZHU1RFh0NnVVWkFG?=
 =?utf-8?B?UnNkMEtzWDB5b3Y5TktobmN6RXlqVlAwd2hjcVZvU2g0WjhDRytVWHJrdlpy?=
 =?utf-8?B?aU5OUGZraUtuWGR6aVY3bytMNUE5eDZ6TjRTMUlUS2FZM0k3djhkaFprMklY?=
 =?utf-8?B?QjJlaGRaL3dyMWdKRVJKVDM1R1hnUEsyd1JuU3FHWlJ1aExZS2tTRE9WbURp?=
 =?utf-8?B?TGJGcUJjWWU2WmhqQXFRbG5mckN1dUQvYU53MXVpT1dwTlVieDFqVTJsTyti?=
 =?utf-8?B?dmt4ZVhNREJyaEovYnl6Y3VqRkxER0sraFMxOXcwSGdzbWVuemNxMlFNR1pX?=
 =?utf-8?B?dDF4bCtmWWhKdzRqY2NKbWJZQTdVRFRZMzY2NldJMlVaODdhb0xVdS9mcTRw?=
 =?utf-8?B?MVU0L2dndS92a25aSFZDYnRVTnFyTzF5cmFXbWdIazdMK2FkbEVFN0pnK3ZE?=
 =?utf-8?B?MC9hSVFrQ2RYajQ5dmdxVnFicWFlMExDUFZ1MmhiN2FyU1dLWWdNQjM0NGFN?=
 =?utf-8?B?UkZiQ0ZJUCtxQ0VLdW84cW5GTnlLS3hvUDlXRWMxbjVHdWE0SjJmNDhsaG1v?=
 =?utf-8?B?aXc4Y0R5RGNKLys4T3hXREJHdEl3QzRFMElTWUhkZXc2MGlXbXQ4MllscFJs?=
 =?utf-8?B?aDlIVk05aHo5ejIzR0J0R0pmS0dVNEZqT2dvQndCb0F4dzhYSWZOUTJSU3NW?=
 =?utf-8?B?TGdreW51T1BsaUYzbTVGRmtYS0NqY3hVR05lRjJiV2d2RlE3MlVwTVdsRWVz?=
 =?utf-8?B?OFl4RUluYWhnNGkrb05OUGxRYXhnOEdrb0FIS3dkWnNKL0RSRDM0VnhDNW44?=
 =?utf-8?B?Ym9NYTlrdmgrL1BPS01wY1hmMnZ5S0U0NGxIbHpIcHV2djRNSUJBMDFmVmpW?=
 =?utf-8?B?MFFTRkgzaFd2RVpJaHBZS2dpMVpicUVweVFRRkRZZ1dCczNPcGZReHRwMFNI?=
 =?utf-8?B?c0FJS1M2cHJMZ3R1cjBnM3Z2Zk04ZzRjeWF2RzlZMjhWdlhIMGZFY1R2L0Ey?=
 =?utf-8?B?TVJlK1R4VW1VWEt6dmMxVVArQ3ZhVFZxbitzTXQ5Y2VSL2dDQkVHdlRGZzgx?=
 =?utf-8?B?ekt2NXN0QWNuamtHdVR1L2kwTWFPbXRFZXVYODBmQ2cvQlB1R1c0dkk0U3lC?=
 =?utf-8?B?a1FQamZtT0RzYUQzVzhzcGprK3FEcGFNWXRST1phempEeDJQL3ZlNXcrREt2?=
 =?utf-8?B?a1dEckpBZHBtbTg4WVdlQmpLQ1p4T29qOXpBcXI2R29DV0M0dkRTa01BdE5a?=
 =?utf-8?B?eVZ3eEEyeS9paXhtdWpmVjZ1b0FGS2Z3SmQ3OWtQK0ZLcUxVbW5iTnROdk1r?=
 =?utf-8?B?RjNQWjFkZFU3MHgrL05VeUJLRTEvNmhPeE9YZ2FRWXhPVWNMNWpxRHQ3ZFhO?=
 =?utf-8?B?andnNFZnbjV6VlBmclkrRm5DSktkekJmaDZINXhObDZhU2ZMNFNhd2JPRm5r?=
 =?utf-8?B?QUxNTEFVRXZnZzdsV1Avdk12NDJSbXJtNkZkOGFSeDZTM0dvOWFkeDNZZzht?=
 =?utf-8?B?cWtTV0hvK3NpV1kwQ250Um9UTHhqcmJuaFNtdGJTTXlNTFN6RlY3SFBjWW5M?=
 =?utf-8?B?WDNuZnk5dTNXSk95Ry9NYUUxU3B5bFVBWHJSaW82YVZVZjhzRjlSYnRHSEtO?=
 =?utf-8?B?WWpIelhQSU15NGZCU1RUS0U3bnJXU0dkWWZyZWtXMnJPTG1pYTdBRXh1NVl1?=
 =?utf-8?B?YkEwanRpdmJQbGJiL2tSMjZ2NVRjSkVTSWFxVzRVbHRQSSt4SnBZNEZRR3d1?=
 =?utf-8?B?Ymc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad8edd0a-1026-4d91-7a3c-08dd54c7777a
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2025 11:36:23.7036 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7/kDsgxNouYUPxv0h2MSrNtqT0Nf7c18t5l1huKNMpkIzNNn+fvI3FjIbwqynrOkzOjMCEd2sCkf5SN/RnvBakUcpL7A9t9/kUltZnk2FW8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7016
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740397030; x=1771933030;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bgFq8JNbP3xByHSyzOMUkcVkjn9aZ0kwm3HfgjLhY2g=;
 b=YUB/A82K5MxBWGTZIBtm6xB/6lU72nXzVKDq1XV/nFZWzAo24Bac0q6+
 aZtoDygi/9aEWJLR+GtFXwozA7yLVtITPa8YFMOwniw0QRyg0hSUsdS0E
 Pl2Ik7JUadp4JHiv7Dhk/LCZcVAxUKBuFadkEVO3DUWAWzK9ciRt4TFpe
 W+wv7MXCflT2pRIpUtOaIs2CSaDy3pf71Dg674GjD0oEw7wxHg2y930ue
 gXfCoYQYlXS5ogWUR3OGvZtaXGEnIp553JRYTIcB3R3KnbMMpc8BfQkdp
 0hIs3HCvq5BJaoJ/haybpMHwTJ+0bCmikvua+1T7a6MbyV4L0U9cA8pL9
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YUB/A82K
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: ensure periodic output
 start time is in the future
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/13/25 00:54, Jacob Keller wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> On E800 series hardware, if the start time for a periodic output signal is
> programmed into GLTSYN_TGT_H and GLTSYN_TGT_L registers, the hardware logic
> locks up and the periodic output signal never starts. Any future attempt to
> reprogram the clock function is futile as the hardware will not reset until
> a power on.
> 
> The ice_ptp_cfg_perout function has logic to prevent this, as it checks if
> the requested start time is in the past. If so, a new start time is
> calculated by rounding up.
> 
> Since commit d755a7e129a5 ("ice: Cache perout/extts requests and check
> flags"), the rounding is done to the nearest multiple of the clock period,
> rather than to a full second. This is more accurate, since it ensures the
> signal matches the user request precisely.
> 
> Unfortunately, there is a race condition with this rounding logic. If the
> current time is close to the multiple of the period, we could calculate a
> target time that is extremely soon. It takes time for the software to
> program the registers, during which time this requested start time could
> become a start time in the past. If that happens, the periodic output
> signal will lock up.
> 
> For large enough periods, or for the logic prior to the mentioned commit,
> this is unlikely. However, with the new logic rounding to the period and
> with a small enough period, this becomes inevitable.
> 
> For example, attempting to enable a 10MHz signal requires a period of 100
> nanoseconds. This means in the *best* case, we have 99 nanoseconds to
> program the clock output. This is essentially impossible, and thus such a
> small period practically guarantees that the clock output function will
> lock up.
> 
> To fix this, add some slop to the clock time used to check if the start
> time is in the past. Because it is not critical that output signals start
> immediately, but it *is* critical that we do not brick the function, 0.5
> seconds is selected. This does mean that any requested output will be
> delayed by at least 0.5 seconds.
> 
> This slop is applied before rounding, so that we always round up to the
> nearest multiple of the period that is at least 0.5 seconds in the future,
> ensuring a minimum of 0.5 seconds to program the clock output registers.
> 
> Finally, to ensure that the hardware registers programming the clock output
> complete in a timely manner, add a write flush to the end of
> ice_ptp_write_perout. This ensures we don't risk any issue with PCIe
> transaction batching.
> 
> Strictly speaking, this fixes a race condition all the way back at the
> initial implementation of periodic output programming, as it is
> theoretically possible to trigger this bug even on the old logic when
> always rounding to a full second. However, the window is narrow, and the
> code has been refactored heavily since then, making a direct backport not
> apply cleanly.
> 
> Fixes: d755a7e129a5 ("ice: Cache perout/extts requests and check flags")
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>
https://lore.kernel.org/netdev/20250215145941.GQ1615191@kernel.org/

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index e26320ce52ca17b30a9538b11b754c7cf57c9af9..a99e0fbd0b8b55ad72a2bc7d13851562a6f2f5bd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -1783,6 +1783,7 @@ static int ice_ptp_write_perout(struct ice_hw *hw, unsigned int chan,
>   				  8 + chan + (tmr_idx * 4));
>   
>   	wr32(hw, GLGEN_GPIO_CTL(gpio_pin), val);
> +	ice_flush(hw);
>   
>   	return 0;
>   }
> @@ -1843,9 +1844,10 @@ static int ice_ptp_cfg_perout(struct ice_pf *pf, struct ptp_perout_request *rq,
>   		div64_u64_rem(start, period, &phase);
>   
>   	/* If we have only phase or start time is in the past, start the timer
> -	 * at the next multiple of period, maintaining phase.
> +	 * at the next multiple of period, maintaining phase at least 0.5 second
> +	 * from now, so we have time to write it to HW.
>   	 */
> -	clk = ice_ptp_read_src_clk_reg(pf, NULL);
> +	clk = ice_ptp_read_src_clk_reg(pf, NULL) + NSEC_PER_MSEC * 500;
>   	if (rq->flags & PTP_PEROUT_PHASE || start <= clk - prop_delay_ns)
>   		start = div64_u64(clk + period - 1, period) * period + phase;
>   
> 
> ---
> base-commit: e589adf5b70c07b1ab974d077046fdbf583b2f36
> change-id: 20250212-jk-gnrd-ptp-pin-patches-42561da45ec1
> 
> Best regards,

