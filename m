Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OItKHw1Wd2nMeAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 12:54:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC10787E00
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 12:54:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58F5E80DC6;
	Mon, 26 Jan 2026 11:54:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jR5F1_3GAl7V; Mon, 26 Jan 2026 11:54:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C420380D99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769428490;
	bh=mpDasbtbC5yhSueUOI00YiKxhtuIhSAS82eSBWsEq5U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uU0aPf1v1sSukDFGy8GjBBP6cnoZ04cFrQ/wmo9hcQwHPowWItOCh0PfraBDGXWeJ
	 n7XqByy20ewBEDJXA4iyti8L+WMj/WFt/JoYDPB+O7LUq1xYiHx6eZlVBpxzj4V34d
	 eHVn3VZjJT++j1Mvk+CTzhG+FJlQB0fY50osU30rBoMkmcqvuYbmtzlmXkJFZEXDEu
	 kBcOLfQ9KkTHDu5rosmH6VOv2qFnmIfGrTQO20R20fQWIyGAoUSCgU3fRiHKGq7aSJ
	 jCNn+W+mkPiwHR3X3G4YpmZhmEInAh8F3/Gcb42lFKXX7hs38oY1++cThcH1Qs5WcE
	 rvVUkBw1iReRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C420380D99;
	Mon, 26 Jan 2026 11:54:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id F21C811B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 11:54:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E0AEA80D93
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 11:54:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m8ytnE_tSliK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 11:54:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 16B0680BA4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16B0680BA4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 16B0680BA4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 11:54:47 +0000 (UTC)
X-CSE-ConnectionGUID: hDx4U6/uT2yVD/nzZ1HWkg==
X-CSE-MsgGUID: QcIIrvLNScWE9g8Uugwl3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11682"; a="70646826"
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; d="scan'208,217";a="70646826"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 03:54:47 -0800
X-CSE-ConnectionGUID: 2+iR+FlmS9WI3UEes3qvSg==
X-CSE-MsgGUID: 4pbCNYqgRiWQi/2ItIQz3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; 
 d="scan'208,217";a="238340848"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 03:54:47 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 03:54:46 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 03:54:46 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.70) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 03:54:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WUoFJy80hYB5RMOVwqGEW3ITzE6cvPsJf5WCoGeQs7FJ7DAMQdmfJpCvKSlL5Yc3CxTJTorhLj0gI09j/r6jYXAjE9t/5k+KlcQLLyNPvXMKj+7+4jBmBMDzJFEID0z6jKP+z9XvwwD1KBjYFD2DfLd6Ex3WCoFTPzWZQNJz9BbUD9KwhkKmSXpjYBOyE9HVCIlkrG68aMlLhO5HjqHzRxdeDbyL2OLZtL5Ckg+PE0IQnSD6ug9sV/TsAjJPCyKLCIdOOOSTHqVMr74erBujwpm+iRCMqOU7RsEfAveWaNQFko+ieWUflGv3b4sepalDGh2b/DHbwc3eHIJqpRi+zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aozMWQsF8zrHs4KTD4+vwjSCDYL/FFHa7VlZduxqj5w=;
 b=bC0vG+O+D/T/nI42PtxWoFRBSdpF+wPvtP3u+dQ13cT6raDiphRMNOV65cAENVmCD1WADxRXGr6n0M2zpyXUtb2puU2ZbtBr4F+ebKELMk9bGDGpbEODDWl7Q2Ma7O5WtD3J4eydrs+CzPuV1MpRZaoQxF/v1R0s60+n6jhuIgzEMHLYz1tt0NvcupJ/2WVRaR/4+hWvzAFJmQdmZgahIO0+uvo+pKkezqHR/pyf6VeJkzY5oTMCi6XFkqd7LBCKFLpblfPw23gQIRcvdz4HKCwyuUXZdjh2YpIL1Zg3UL0YAw7qqg59O7KC+MLArvzk2MSEqsxmOLCtLD4VbDdwaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB8021.namprd11.prod.outlook.com (2603:10b6:806:2fd::21)
 by SA1PR11MB8795.namprd11.prod.outlook.com (2603:10b6:806:468::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.16; Mon, 26 Jan
 2026 11:54:45 +0000
Received: from SA3PR11MB8021.namprd11.prod.outlook.com
 ([fe80::a8b3:7565:9b2d:6789]) by SA3PR11MB8021.namprd11.prod.outlook.com
 ([fe80::a8b3:7565:9b2d:6789%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 11:54:44 +0000
Content-Type: multipart/alternative;
 boundary="------------vMRna9MolovJLv24wkzAu6qp"
Message-ID: <c468fb87-f146-4b34-91d4-0974383419d2@intel.com>
Date: Mon, 26 Jan 2026 13:54:40 +0200
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20260106141420.1585948-1-vitaly.lifshits@intel.com>
 <20260106141420.1585948-2-vitaly.lifshits@intel.com>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20260106141420.1585948-2-vitaly.lifshits@intel.com>
X-ClientProxiedBy: TL2P290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::13) To SA3PR11MB8021.namprd11.prod.outlook.com
 (2603:10b6:806:2fd::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB8021:EE_|SA1PR11MB8795:EE_
X-MS-Office365-Filtering-Correlation-Id: 55912515-db4b-47bd-2a09-08de5cd1b289
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UU5zVXpUZnZJcWgwdlNDRnZxS1pRTnV5THQ4UGZ2M05jdXFDbW1hOHlYVUtq?=
 =?utf-8?B?b0VHblhTand4S3Z6WTZaK3pnK1B3a055YTU3RHdqZ2hJM3NjTFNsUHdVMlpv?=
 =?utf-8?B?dVA1bm92aHEyTlBjTXE3SEVIMThEQjlEbW1VYktxMHU3c0NQQ0phZFFIVXpZ?=
 =?utf-8?B?cURnUHIzTk9SdlNSdlNNR2JxbEhvYzd3Y3VNWEpKcWdtVGhEOGV1WXR2SThn?=
 =?utf-8?B?eDg5L0VwUXpMNlpjSHRLSjIzOW9LOW5kSlBJKys4MnhybHlNS0VBUW5FNkhz?=
 =?utf-8?B?V3NxM0NyUng4ZW45N254TW5YZnk2MFdwL1I0RnRKV2pZRWUyVTYxalFJd2NP?=
 =?utf-8?B?cVQ4VXFpRWswaERDY2NGbU1XVVNCM0dTckx0aHBWcFN3THMvclkzK3FPNmRB?=
 =?utf-8?B?aDYxVjN1VEdlRmVQbUs0Z1ExbGJPMmN6U0Z5cEU1a3ZFeGxiWmM1ZVdEczBx?=
 =?utf-8?B?RWh4SEZ4bnI1TWJ3S2FJM2wyMW9mbERjcXA1WU9PODV4a3FhanpyMjJlQmcv?=
 =?utf-8?B?ODZDemt4ZmtmTDE4OUJwZVpBTHdkT1lLYjVJcFhFK2p3ZVB6Tk1PVjYydjhI?=
 =?utf-8?B?MFJHLy9xNEIxSUwrT1ZzSFpaM0lob1lUa1FmV3BTYUh0YjBOdk50dm1HQytz?=
 =?utf-8?B?Q05Mc1VySktQb0FjUDdiY0NNTll3N05CVmQzdGt2OFlJZjdEdXlMU1Jaalhi?=
 =?utf-8?B?S1FUNGRyUVFsc2Q3bGpQVGNHQnoraHRBWWRXbG1UcVR0MzU3YlNWeVNkK29L?=
 =?utf-8?B?ZXFHd3Q1cjhOak9rVFQ4STI5ODNqQXU0Q25SaHFmZnp4eng1Y1gyS2hLS1lW?=
 =?utf-8?B?RTRZdGpYVGVBTmlkQWpBVWlVY1dBaXZINDk0dU5LTFdLbGNxVmlGOGthenRy?=
 =?utf-8?B?MjBmVFFaZUNZNTJMenNYK0RmS2xFNm14Z1BvanBnTFFsUnZoVk8wL1FQMkNT?=
 =?utf-8?B?aENUTWJJVHZUWTI5Q2pVbmVmTkhrRWNzcGtLRXdhak90bXZWeUdpYmJGcjhn?=
 =?utf-8?B?Yzc0MWNZMEJsbkFuRUlMTUxzTlc1c0JkZWZ0c1E4ZnpxbGwrV2p2S0ZlRmFo?=
 =?utf-8?B?UTVqNVVJWXNpVFN0V1VpZVZFMWFPZXdxUG5TU1F2QzBlVXpMeVJ4TjRqZDU3?=
 =?utf-8?B?Z2FmTFhyaEVlZEZHYTJ6UkpJZGxMN0lEekk1OFd1K0VLQTd0UjV4S01SeEt3?=
 =?utf-8?B?VEp0NXBGbVhTeHhpSFFBVHorTGg2S3BiSjhMTDZiVjM1UDc1eGY5UjB1WFVK?=
 =?utf-8?B?NGdMcmo3WWRkNGVMeDg0RVVVc0xsV3hLamJycUF0cmhBaEcxdWJjMWp6RHVh?=
 =?utf-8?B?WWdDYldMUFhBM2lzUXZORnFqQVJCbGczMkVBcWdLQkdIVmJzU3puQ2NiTG9u?=
 =?utf-8?B?SHN5RkYvTkV2VlRzMXFpeXZBT3hPY1grdWNjUkRzSnVHbUJ0QlZUZjhKTDRv?=
 =?utf-8?B?Q1ZvNVNSN281MHBheWk0TFhVMkgvQUZsRXErZWtva3FZdUo4NWtid1V2Rm13?=
 =?utf-8?B?QVZiMEJtbDZrTllEYjIzLzIxZTE1YXRrQW1JbEtxK2xkT3BqbkQrekFGcVd6?=
 =?utf-8?B?QVcxNFgxSUMxZzgyR0phQVA0bjVJZ1V4eDFUNmMvZ1BiZ1dwWllvdVZqcnl4?=
 =?utf-8?B?NWdZVW5SUmlMV0ZSa1VJWGlVTjlkN2M1T1ljUmlLbThXM1hjOVdRaXBJZnps?=
 =?utf-8?B?NlRkRHhnZjJmeEFLcnhzcW9reFBrQ0tNODZYTURpMk9QVG5Yc2lQNkliS09I?=
 =?utf-8?B?cHFpS3VkeGIwUGFzcHFlZzJSZjl3a1IvT2FGMklKRGtRbGRUalpNZTkwVnlG?=
 =?utf-8?B?ZGRjZUg0MTJjZVBZUmdzbE04blVBS2Q4d0ptaG5VVzZtcWovVVJtZHpZTlRF?=
 =?utf-8?B?czJxdHlYY1Q0N2t1MExvSkdaYlhLVENRSi8xU0RzclFGZGdxdFF4TllEOEpx?=
 =?utf-8?B?VjRkemQ1OEgvd0hNcVJlRElVRzc2b2l5MmVVWFVadSs5VjBDNnY5dUJQWU1h?=
 =?utf-8?B?UVpSTS9HS2lwZ01IdHVjUklHV055TmVWcjZWQ0RsWTBWSHhpSGlianVjeldL?=
 =?utf-8?B?UEtYWlFPeHI1THlBaVY1ZXhMM0FuQVVLTHJwZnBNOWVSTk9VcVU3TG96MFFF?=
 =?utf-8?Q?oLQw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB8021.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0kvU2s1K1hLZDhxTU10RnViMU5wTXFEQjR6VHY2Mm42NnpXM0VTTEJXTFhw?=
 =?utf-8?B?ZTg0bThYK1pqclNsaTNmMmRyMGtzYkNpYkJTdFlDZXBCODVoWWRjZHl3SytK?=
 =?utf-8?B?N2JHOForK1lKWTd6VUJDSm1rREFLQ2VsOFlmTDAvQm83cEVEbi9wL205MEZ5?=
 =?utf-8?B?YmxPdWZIT1hnRXBPV290UFZIWXBsU0hHL1RpbUt2bW9ZcUVob3JxVUhEY08v?=
 =?utf-8?B?VGh1SlRsWTJBV0ZRaGJrQWplb1d0MGhNVVFPdjBWbklpK044K1M1Tk1ibUk2?=
 =?utf-8?B?UjB1TllzdlRvQ0NzRG4zTEhoZ0ErUjU1MlNTbWlmSndhMzA2UHA4UVp6cHQr?=
 =?utf-8?B?aHMxcXRlMDBLaDRYT0FVdnFNQzVKYk0xUm9uRmxXWHNFWHFhL1Z0bHdsUDd4?=
 =?utf-8?B?YkdOR1I3blQ1cVNhM3lQZkVhYzFMejJLbVZTLytwUzJKUGRQOFdpYjhSYS9L?=
 =?utf-8?B?Q2N0NXdEN3ZSUU0zTkpmVlE2MnJwLzlONFB5V0RaQ0lKNXBlRTNRK0VKakl3?=
 =?utf-8?B?eFFYNHhuMEJmRElTSTBuODBFZVRRQ0crcHFuK1ZXOVRnY2wyTjNNU29wNUVF?=
 =?utf-8?B?cTNXTXBxeGJhNkNUM3A4Y3J0ZE5ndVdCVS9IMXVDdmVzL0FpZG5XRER6ZHlq?=
 =?utf-8?B?OHh2eDVyblJBSXNWb205TURSa29LVEpLVTY3NTdubWJSOTBIaTUzYTNCWldI?=
 =?utf-8?B?N3Y3OE9wSXZiYnd3TVZJcjMxUkJ6ckVPbURmenlHRDR2TGViNEtoczFvT29E?=
 =?utf-8?B?aGtLcVpML0cvVEc1Y0FDMHhoYitHRlp3bDhWSFBodU5YcUxHVWdTa09RL3dX?=
 =?utf-8?B?NkZ4VjJtdGY5Q0hoS3JsMnlhYlkzTGRVTk9CTGhMMDk0SGkvcTl0aXVkRDRG?=
 =?utf-8?B?aVVFSllHSDNTU2s5RFR1RStjQUdFeDBQN3BRUDhsaTFBQ0gwT3pEekVNRDRo?=
 =?utf-8?B?akxzZlVUbnNSNEhQUmFHZStnUUJGS2RaajhYZDhVS0NqL2h2cUVWd0dzV1p5?=
 =?utf-8?B?MCsrRUIxNzVvYVlGV0VjZWlncjhkNGNrV2ZlM05wVjhjb3RwTTdGSi94NXJp?=
 =?utf-8?B?V3g3MFJpYlBIV0wvTlZTVzRyR3kvY3YvbERRNzFXUE5jcHN3eWlkMXh0VVFr?=
 =?utf-8?B?WERTZjlrdUQrTHBJQ1hZMWt4NEg1ODNjcFp6NW1ubVRXc2NPc2RRYlVqTlI2?=
 =?utf-8?B?VWh4ZkNNbFRFWnlKb1A0UHZhMGpSYjNNdTcyWkNNeHRtVVpOeGtoTHJPdC9K?=
 =?utf-8?B?RGZiQkt1d20yVlV2NW5wQXlSM2NCSUJuRnF5SXo1cCsxb1crWElvV2dWZVFB?=
 =?utf-8?B?QVV6cTdsbXhVcU1va29FNG1lYVlNVUdMdU9iS3pyK3dQMEJaMmtxbXYreW9q?=
 =?utf-8?B?SVJIclhINk9KK3ZRV1FScmRYUjZvbFMzaEZFYWI1Y3pScndBOGpXV2N4aWcz?=
 =?utf-8?B?eWVqSW9mZDNCNkZ0bDFyQ3dDaUQ5aThVY3NFL0xTcTA5VllMVkJUTndNcGVz?=
 =?utf-8?B?MUgzZXEySW9MZmhXRitSNzhRTkNIR3FIeFZ5bW9WYk9zZ0sxM0JVQVhPRWoy?=
 =?utf-8?B?QkZqSXdPME1WSmZmWXcyMGtkajF6M0w0UzMwc2VtVE14S1VFaDZUSEhwalB4?=
 =?utf-8?B?QWxESStPMmRvMElBZVFKYzVSOHJ3UVppTEk2eHQvUWlNNXJZRGRVWlJJZTR3?=
 =?utf-8?B?OVhPUVp0dFlLbXVaMURIeTNFb0l5Tkl4YkYyTThpWDFRcVIwTFh1OXNGNWpX?=
 =?utf-8?B?cHFOZ3Jha1JPTVN0aDQrVzVxa1RsalNFcnNOZjhzT0lDb1JGd2lpTTB0RnFM?=
 =?utf-8?B?UlJZcEFWaDU0WExoakEzeE1pSWdleDUvWFpUVkN1Y2N6c05nZUtIOTBadmFG?=
 =?utf-8?B?K1JVb3JhUUYwRnhQM2UzelRvVEV2aE8zYng1Nm8zMG84T05XUXNwcG1DZ2xE?=
 =?utf-8?B?UVVRMm0vWDFJbVJCUjlBbGZPM0FsektvWWpqRVdMOUVnazlvZFZpNWFpMTE5?=
 =?utf-8?B?SmtlUW95emZiNzBMajk2SXloU3FrRlRDVXZ0VzdmMnlSZ2w3OHJlMXF3Z0Nk?=
 =?utf-8?B?Y3hrKzFublU2dVRuQUFhMzhaLzJ2aXdvUTF4bVJWVzBaWVY0R1hTR3NGRFlM?=
 =?utf-8?B?a0JtditvZDlLL0xacERGYjBzdEJOUHM0TWtwSzNGdFNzM1RoSXJPLytsTUM1?=
 =?utf-8?B?OW5kVG1IUFZ3ZkNVd1ZJanRxZk1saTJUOGpJNkRWcUxPQ2Rpa2hVa1p3L0dV?=
 =?utf-8?B?b1NlQ1M0bHY1SGZxUHRORlVTeC9hVDNNKys4RTdEdlBSdVI0cEh5RlkyWEtv?=
 =?utf-8?B?TElNc3EzelhRUC92c1pva0srZnJQMWkrbFRSdTh3VXJWODBaRFdwbGIyd0M2?=
 =?utf-8?Q?dzOK0eQFCAjmqVSo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55912515-db4b-47bd-2a09-08de5cd1b289
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB8021.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 11:54:44.8947 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YYa/jqwTJGva/Q2hSK0KO/3XaGiydsBEHxZdCsiTh//nzMLyLwvziRzrb6a7WdPj5uKZQp7qdg3Pz983K6Y2hZCUvfZkcmv+m6eBz/V0nRY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8795
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769428488; x=1800964488;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version;
 bh=rLR2EvQ1+GZN9fHrJi8wkSPgZkCkt0W9iZUAaWKjC/A=;
 b=QDxUfCaSsTWsWgiCjS8ltI+9iyIGB/tT2WMME7v1LTtmcSFsnPVtpkFE
 FjA4PWa8exfGJGzGNJ/xYMSouMcrAP0otgjyeNM8ums7QnaMbLkpw4XFL
 51/P6YW6OJU26cbWhldgTALblkuPMNOuePlAfkB6rA/wix0m3NFMR1OOA
 77+Tduc5Xyx+g2C4HM77NnWRuqjNCvw72MY+RdrWKUDgp9Ik8BoMmUTEn
 WmRa8KPO92BAvxOaxP40sR6kGoqAmMj6E5mQLCX7cNVNZNcWeOoXRnvbp
 51RNEDTNzxUg6ACMjI7aagQQ+gJTjfa0WLfQjZfxSC/HEpu6WsGSDt8Oq
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QDxUfCaS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 1/2] e1000e: introduce new
 board type for Panther Lake PCH
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vitaly.lifshits@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: AC10787E00
X-Rspamd-Action: no action

--------------vMRna9MolovJLv24wkzAu6qp
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 06/01/2026 16:14, Vitaly Lifshits wrote:
> Add new board type for Panther Lake devices for separating device-specific
> features and flows.
> Additionally, remove the deprecated device IDs 0x57B5 and 0x57B6, which
> are not used by any existing devices.
>
> Fixes: 0c9183ce61bc ("e1000e: Add support for the next LOM generation")
> Signed-off-by: Vitaly Lifshits<vitaly.lifshits@intel.com>
> ---
> v4: fix commit message
> v2: edit commit message to clarify the changes
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/e1000.h   |  4 +++-
>   drivers/net/ethernet/intel/e1000e/hw.h      |  2 --
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 20 ++++++++++++++++++++
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 15 +++++++--------
>   4 files changed, 30 insertions(+), 11 deletions(-)
>
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>

--------------vMRna9MolovJLv24wkzAu6qp
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 06/01/2026 16:14, Vitaly Lifshits
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20260106141420.1585948-2-vitaly.lifshits@intel.com">
      <pre wrap="" class="moz-quote-pre">Add new board type for Panther Lake devices for separating device-specific
features and flows.
Additionally, remove the deprecated device IDs 0x57B5 and 0x57B6, which
are not used by any existing devices.

Fixes: 0c9183ce61bc (&quot;e1000e: Add support for the next LOM generation&quot;)
Signed-off-by: Vitaly Lifshits <a class="moz-txt-link-rfc2396E" href="mailto:vitaly.lifshits@intel.com">&lt;vitaly.lifshits@intel.com&gt;</a>
---
v4: fix commit message
v2: edit commit message to clarify the changes
v1: initial version
---
 drivers/net/ethernet/intel/e1000e/e1000.h   |  4 +++-
 drivers/net/ethernet/intel/e1000e/hw.h      |  2 --
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 20 ++++++++++++++++++++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 15 +++++++--------
 4 files changed, 30 insertions(+), 11 deletions(-)

</pre>
    </blockquote>
    <p><span style="white-space: pre-wrap">
</span></p>
    <p><span style="font-size:inherit;">Tested-by: Avigail Dahan
        <a class="moz-txt-link-rfc2396E" href="mailto:avigailx.dahan@intel.com">&lt;avigailx.dahan@intel.com&gt;</a></span><span style="white-space: pre-wrap">
</span></p>
  </body>
</html>

--------------vMRna9MolovJLv24wkzAu6qp--
