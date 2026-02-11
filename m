Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cORRE6CSjGlQrAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 15:30:56 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9447F1253CB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 15:30:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E2E0811AB;
	Wed, 11 Feb 2026 14:30:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O0RSnNYdvU8I; Wed, 11 Feb 2026 14:30:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5AF2A82083
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770820253;
	bh=fVOAHFGke8aS4/0/wt7Ie1vvhhFH8kthZbQhpQRdNSw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cuUG1f0AjR/3X4n//L4jirJgv4goHRuuSxnjKdhsd9NJG01xQ2NIzom/iHjRBNQWS
	 dAG02JfTbxWaJljIwiFqM94KPoA59YAf1Nq4RjWu3bgwxsgLEQVOrbEc/6jo4XFGb1
	 jzWHG7jsWMRBdO/PJV0h6dOwondo2MINITrAU/2tP0PYtlBCJlsN9hbCTdOrE3Pl77
	 qmZSqOUqQbDdKKwviC+FSvTiN6VwKI4L36xyJJgnlG5tGjrd6T7w6Hh1BGLM+79Xu8
	 IoSJ8EO15kX5VZyldbjMFknqbo+Ew4wkE1mQ9nTxo2rthaRcJhBlsVDt2ttQUalEaL
	 mh0/J/S2ZL/SA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5AF2A82083;
	Wed, 11 Feb 2026 14:30:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 83774BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 14:30:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 714E440954
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 14:30:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mfZu14NfmGDW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Feb 2026 14:30:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 60D7E406B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60D7E406B1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 60D7E406B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 14:30:50 +0000 (UTC)
X-CSE-ConnectionGUID: aA+jgGRSTKSwupkL4pB8eQ==
X-CSE-MsgGUID: 3XYT3ovgTrO9qo8xDc0ZQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="75592096"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="75592096"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 06:30:41 -0800
X-CSE-ConnectionGUID: mX0qrWu7TLixZHEHk2Cclw==
X-CSE-MsgGUID: 9X1X7vCGQcqzMTCvoGcViQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="216768971"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 06:30:38 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 06:30:37 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 11 Feb 2026 06:30:37 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.16)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 06:30:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AkhmfckByzBDYitU1Cj02K9aslHPspy55UsthWlg4csqr3quzxJbcXR3G+MtL6riqVVBGfxL+2yLu2SewWbHuaKibj39Is3B5Ke/FCvLgbjwNd2bJbsqtkXK/DnoqQpkwdCEWi3OECviPC4cx5XD8jWIdEeeQ4WJsMDSiMlCaxlDUgCBcUDbxs5E62L504/MgL9WI4fdvUCh/X2owjQPQXGcXKXHBT3ks1SwR7k7DOUJerRFs7cC8fmoR1BTMKBkJk5Z6C1dFUEACWG6wAWgOBlpUTmo003p0DnJNUXo1ncJPji3HH8hCpyNudWA9TW18BouaZSeGqO/TF/yBdJMRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fVOAHFGke8aS4/0/wt7Ie1vvhhFH8kthZbQhpQRdNSw=;
 b=KHKWyL3KdvaeHNvC6iwsTiV1zhcDqVqtgcp6L2kmm4OFhh3szIB0vB5chGuSaUb2GhrpnHuStdi8dVflAjWQLMlTyvKwwWQA5uYL3YV3ParcBXfX/SxuH9zoY44b9Qma3EsQM3HEoly9R27WbMs8sCQQLnvIP1IVJfVxNxWrjVm5UlNQ22uZaGu8U3jxJUGX5QNCeyRPlsiFU4mLjRMrEt+ZONezyw9fmmGGd83iPhWFhjOaFw/FpnRx6P+OP3VfrppXBl8ICXZTWDZ/V90o0fL3wTRtGKjX/28L2Gwe6/Iex4XOmghIOU9I/nIWpCqs7PSxxFrgOq3/XyycVPCgCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB6051.namprd11.prod.outlook.com (2603:10b6:208:393::12)
 by SA1PR11MB6823.namprd11.prod.outlook.com (2603:10b6:806:2b0::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Wed, 11 Feb
 2026 14:30:31 +0000
Received: from BL1PR11MB6051.namprd11.prod.outlook.com
 ([fe80::6291:3487:3e68:2af3]) by BL1PR11MB6051.namprd11.prod.outlook.com
 ([fe80::6291:3487:3e68:2af3%7]) with mapi id 15.20.9611.008; Wed, 11 Feb 2026
 14:30:30 +0000
Message-ID: <d27218b5-3f15-4763-b7e0-0f387ae7b2cc@intel.com>
Date: Wed, 11 Feb 2026 16:30:25 +0200
User-Agent: Mozilla Thunderbird
To: Harshank Matkar <harshankmatkar1304@outlook.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "tony.nguyen@intel.com" <tony.nguyen@intel.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "edumazet@google.com"
 <edumazet@google.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Mika Westerberg
 <mika.westerberg@linux.intel.com>
References: <20260210203332.23200-1-harshankmatkar1304@outlook.com>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <20260210203332.23200-1-harshankmatkar1304@outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::19) To BL1PR11MB6051.namprd11.prod.outlook.com
 (2603:10b6:208:393::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB6051:EE_|SA1PR11MB6823:EE_
X-MS-Office365-Filtering-Correlation-Id: cbb13281-4e21-46f5-d3cf-08de697a1b98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NEVSY3crVE45UzNaVU9wakRQc0F1bTJuczRRVWJBNTZFdE1KYjdxTVJOTDN4?=
 =?utf-8?B?YVdIY2VsYUY2Sk9SYTc5b0QxZVNtSGRnbFJtVEwvMHd1cGpZRjhXdEsveGdF?=
 =?utf-8?B?MUlKMEN5empLY3hLa3VlMjF4MkVOaElTdXUzcHZwVkt0SzEyMGpmU0FvamlT?=
 =?utf-8?B?dWFNRDZQZi9mQ2R3ZEZXSUh1a2orN3dEajRDWE9KbGhKMElUd2FkTGQ1NVRL?=
 =?utf-8?B?UUZ6UTVxbHJ2ekpXTjZ2K2NKRzVDZzExZFZuNlpVYU1PMmlOeHFYWkZzOStk?=
 =?utf-8?B?MlVLZ0RpbG1STWNoUWdHU0U0Tmh5bjV0K1YrUGV0NkwrK1FKTzNyaDN1VjRP?=
 =?utf-8?B?N2lIMkEzRHZ4MFpnZ3c0eTZYTnlrZFJKV1dYVWxyZFJJbk1wTWdYN3ZSbEd6?=
 =?utf-8?B?Qks2SnJ3bzVWZm5qdVh0TDVkcmt1cXZFNkEvamR0ck9Rc3FKenVmWTE5U2VN?=
 =?utf-8?B?SUZ6Nk5Yd3hxV2w1R055SnI3RWxkNDdmTGFSOVZHcVkxeEkyTXlORE42WnBn?=
 =?utf-8?B?N0hYWnhmM2k0Sy9vVHB2bGVxV2ozTjJpVHVOcVJoZFlncjBkdTNtT2lGbXo3?=
 =?utf-8?B?eTk5bW14OVltTC9xTDNlTlp3NTZuM1FkM2ZLTU55Tnp4ejhwUnE0bGlHanQx?=
 =?utf-8?B?b09UZ2FhaEx5c2ZHb3JuNy91c1h5T2huU1JGRW1Zci81aDl0cEM1K0cwT1dL?=
 =?utf-8?B?cjRZajBuUDQrYjVmeStEZllqME8wczV2QWRNMXJKMStmd0dCZGFmS1ZiKzdY?=
 =?utf-8?B?L3RJS2JYNXlkQ3hxdkpmMjd6S3RvUFhQVDRzby9tWDdQTHJZNE9DaFI5L3dn?=
 =?utf-8?B?KzJkckV2ZHhDMjI0Q3AweFJBdDd4T2RlUlVKdTJocklLbVR4dEljVEQ4UFFY?=
 =?utf-8?B?SkttZ1B5SlVLZlhnQ0cweGxnZUhVcEhnajRGa0pWeWVaRmkreUFrcHBLbXgz?=
 =?utf-8?B?ZVhWTEl3VXVoaTFlVjZ6Zmw2aFpBRTYxVURHT3Zqa01ocGxUN25TSmQyTWlC?=
 =?utf-8?B?OEEweGtMQkpzc2dUaUZrQzgyT1QxL2JLL3Q4L1Y4akxHM1h3dHliVHY2VHEw?=
 =?utf-8?B?emtNYk5KS0tjMFpzbHVwSkh4VWtLMDhPcytRemRodjlibk9Wb1p6TjVJODNH?=
 =?utf-8?B?NXNNVnNJWjhDT0p0eWVOZ3E1dkJyZjRVdkRzQ09DZEwyWkM1YVV2SzlLL3VG?=
 =?utf-8?B?Y3lvbnNBc2NkVkRsWWc0UEowK0RTaFFOT2pTRlUwU0JQbnJkLytQR2tycGN1?=
 =?utf-8?B?a2V3VHRzUE0zUWI2MTl1OTFwMzhlMEpQcXV5Vi81M0QxTDUzMmtmNW4zQ0Nu?=
 =?utf-8?B?bEgvR0ZMOFRTVVgvck1QOVdaeFV4ck1TUnhlOUNVS1JUdGg1cEw1d1lWU2Fv?=
 =?utf-8?B?SkFnSTdScGZ0QzgvV2J6bjEwUitjSzhGeGRDOFJGZUtpak5SYnAvVXNTb3RT?=
 =?utf-8?B?czFiQlJkQTNsQUFVVGZLbGxjTy8zTElvK1dPWVUrMWc0VnZSaG1XcUV1a1ZO?=
 =?utf-8?B?WmlQcXhiemhoOXVlTnowRmhTd0NlYTBweExWNGZieENEVmhFaXVSYS8rVUp3?=
 =?utf-8?B?YUMxWU5UWTIvNGZmNldzeDA3cHVXUzg5Nk9xbFlXQUZ0THYzSUZwWWptcjdK?=
 =?utf-8?B?eEJHanZSVUE5SWp5bktOdVp2d3FRY2lUWFhDc055WmxLenhPUUFLS3FwY3FQ?=
 =?utf-8?B?NVJoSDFjUFhldHdhamlSUjgxYUd0OUJJY0g5TEFVanozcUhHZm5DNWFhUXNi?=
 =?utf-8?B?bm84L1ZFSHR0NCtsRlZ2UmtjZ1d3Qm9EVklYNDVhdCtESlNaQVlKVFRMNms4?=
 =?utf-8?B?RDBVOVpmTUNiVC9iZHpQaGQwbW5qQkw0UENQSXhzakMxcjZCWTBEMS9UK1BG?=
 =?utf-8?B?UWJqWGhJUm9VZ2Nhc2Vtc21lTDhJY3R4azIxaitUTGY4K2J4bGVrbnNoejVR?=
 =?utf-8?B?eDN6QWtEUlA2THE0MnBLMUhFT0ZYOGJjeENoRnY1RHhyQ2VMc2Y3a2JZbmF6?=
 =?utf-8?B?a3pTVWZxZW1lS1JTZDI5WUUzcC8ydzVjSVViNTd4ZXJiQ3pTZUFJeWFuYklR?=
 =?utf-8?B?clNVVDE1SS9hS3RNWmF4Z0lMVmwzS2R2VklEclFTS2hHWnk1cnBxU3prMUNy?=
 =?utf-8?Q?eOmc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB6051.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y3pKSmZQbnNndldvSGhDZDZTUEJKN3B5T2NOWDRJR2ZtV2FBZHdnbGdPMUE4?=
 =?utf-8?B?bUNFM3dHRGY5SlBGQXNuWGN3SVhlQUhhY3VKUXp0Q1duVXF1ODloVHdCUDJ4?=
 =?utf-8?B?MTlLZ0lmclFSa2Q2YVJiQk9VQ0ZJZ2lYUkN4VkFVM2tTbmh1TWdpMU9DbmF4?=
 =?utf-8?B?dnJHMmZkVzhQSXJKQ2RodGs5VEVKRWJRb3IwM1BNRUhuOXhDbGVPSFdoOGhh?=
 =?utf-8?B?blg2b2J0SU5kUlM3VHB2bFNPdVBvMURzQ2hvNll4V2NzU0I1cENSVEJPbU4x?=
 =?utf-8?B?Q0YzdGk3bzM4MlFRbDM4bGNCYTRBbDFCaE41SUZ2cGs5SmI2ZGZwS3JRUmxu?=
 =?utf-8?B?SE1XU01SWEp2bnU4S24zWVRFbVJIL2UxYWphZU1ZU200UmRvQStZSFZxRmtN?=
 =?utf-8?B?L2ZMZE9yNWpWbVY3b2o1RThQTXlxV1ptV3pWMUNLOENyVEF4RHROM3Z0VzVo?=
 =?utf-8?B?TUFDWUZaUWRCdzBJZDJTMExSYm80MW0yZzQzTXJMcXhEd2xXbkVFZ3NjSjQ5?=
 =?utf-8?B?dDRUWEJjV2ZRWmhUR2VpM09wOFBjSVpJcXJJaXJ6bjZ6NVRwZXByTW1YSGlQ?=
 =?utf-8?B?ZWNmQ0VpVG5lZU5scXorMmIveUQwWGkrNlVmL2MrdURTMnFqbWljcTA3Q21k?=
 =?utf-8?B?UWZEVzI2d0FjUEZoRzBrcUxySElodDUzK25MT0JQeXR4ekRXcGgyeWpCbHBu?=
 =?utf-8?B?VW9GeEg0R0xaYk5LcTdvNExvNWhLWVR2eUx2M3hkbTVieEx5SWduZjVIajB2?=
 =?utf-8?B?amRQekxVa3BKVXlud3hReXEzWnZjRmlQUUpZWkx3MkpyYU9STGF6eHFvRzlu?=
 =?utf-8?B?U21MVTYxVXNLT0d2SHVlbDA1R1ZCeVRvTzhWVHNXallkNEdHeS8zOWZLUUta?=
 =?utf-8?B?b1JUMElkWGRTQU5pQ1M5OUVUNGwrbDUxK2UzNFV1VjZZbmRWSFF6NGN0Ym92?=
 =?utf-8?B?TXJQbHVZS2k2NWlxVmdUamhaYVVGU09uR3FBV1RYM3pINlpyRnBvR1RLUTEx?=
 =?utf-8?B?SlhGQ3c3K3g3MEVmalVXWlRSd1MyMnFmaVF4MnhiTEdCZzlRRzdEdjVSV2h4?=
 =?utf-8?B?ckZwV2tpL0ZSNnVROEZ1Y0pESFlhZmRTMXY2UDJLemxvWk9ZWXpVSkhkL1hK?=
 =?utf-8?B?TFE5REdMUXkxL1FUMkw1bVBLUGlWV3FobndzZjMzNkx0bmE0cGJwRzZpbTZJ?=
 =?utf-8?B?ZmdaVTNWNzloZjNMM2NvcHFneHJoTGtYZjN3QjlVYkdyNDlJM3pzYnE4K3FN?=
 =?utf-8?B?ZlRQM1llR1NFbVdiRSthMUxjaE4wZU5wVUk1c3hYQWJwcWQ3VUJIWEM4dUZU?=
 =?utf-8?B?cW82SFoxSXdlTEpER2gzMHd0UkpPY2ZrYWE2ZGtsR0NYRGZHUWNiZlRRVnZk?=
 =?utf-8?B?YWV1bXZhTzQ3WWtNUFJvNUpFRlU2aUZxWEw0ZzZLYWJVTE5FbGJaaURCd3FH?=
 =?utf-8?B?QlpSUGtycnJXNUJPT3FGQ05pb0xCVTJ0Q3lSb0dxaUxzVThrS0Q0KytVK2cz?=
 =?utf-8?B?OUNsQ0dDQjdPc0NNT0RIazd4cVpXRXlWM2MvVnpFamd4NGJEcUM1SHdMZGg5?=
 =?utf-8?B?TmZtRTE3Ti9paUZqSHFMMmY0YmJFUDRBQzgzdytheThHMmUxNFV1aW5lQ2lU?=
 =?utf-8?B?N3BFM1FNaE0xMGdpQlY2WWRJaFdiUG5XYTRDT2NEcE0zWThaSkJIeFFvSENL?=
 =?utf-8?B?YjRlUXRZaXJOVWYwcm5EK3dIczY4NmFtb2p5eHRqRXkreWVOcFpWemRZb09q?=
 =?utf-8?B?NUdUL01EYnFteGVjTDFBdDV3dTlvdFJwMVo1TGk1bzJSb3RkcVRzR0lCM3hr?=
 =?utf-8?B?bkNuTDR4MU1vMzFrT0dIZ1lZSzBNRkVETXpvYjl0T0RJYWVjbEJURXNXSkNm?=
 =?utf-8?B?OWF6RUJ6MFVhaDN1YlhORVBka2tPMGR3Mi9EZlVkTmdvUjJ5ME1TbGFnS2or?=
 =?utf-8?B?bHZ4cEdCbXZFYVUvTkt0U1lSTjY2OHRrWXZ0WkViSDN5dEFJMEpKc0t0aFRy?=
 =?utf-8?B?VVhSN01jOWlzWE0vWXhhckttQTFRVUg0WWFVZ2hVUXl3cE1YZENRTEpGbzYr?=
 =?utf-8?B?SlhvdWJLblVKYnc1a0RrUjA5VHpQV29LNE1oWHJ3NHBCK3JPRGRNVi83ekFu?=
 =?utf-8?B?TnhWN21zQ1ZvdmswMUV5Ynk0ZHpFek5xZzFVTTVRSkRYNkFQTG9uNFFvOXhp?=
 =?utf-8?B?bmlzbVEzNm5XMEp3MG9UVjFzb3daNjZLOVdKZjkzR05nMkhlUXVTYmJadk1T?=
 =?utf-8?B?SUFaTnZVSGM5TG5KQ3Zac003SGhlcE5VN2RRWUZTbUI5dERGTncyZkx0cnFR?=
 =?utf-8?B?SkZnUi9UT1BUZG9zZHo0V2l1d2puaTdUVzYvOGt3UGFHZkhJMldWT29yb2pl?=
 =?utf-8?Q?RPRGS8Te+DWG8aA0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cbb13281-4e21-46f5-d3cf-08de697a1b98
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB6051.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2026 14:30:30.8270 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PPT1mr3UOB7MVt0gPAfUDDs5tOWW5ApO28krt2W3dxn/+t7FOeJ58PZRZqOs2LemqpbCGg/ZQ4/ywr4iVBIi0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6823
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770820251; x=1802356251;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hPsp4aCEjyOqP1r235m5aFb6r86fglPaDeXaEjfPvUg=;
 b=gMc4aSaXACNCkmEYnaEeXbnXgT61+GeRNndA94vUpXnTIMEUTJa1Opu5
 ugFt/PFKblImArQVUfkpkyLVO+UHNjarHe0iGf3mhTKngx79QHmNgGSsH
 pV4T7BEDoSzMPzQB+a1zGRS3hcZnfgpJK6kibpImwmQ+byzIYGgNLi+cr
 djOEPzNdsz9ugbM/izGQY7Eq4xxarW9fSLiyJwgv/wyhwknls0gm70trc
 IveCpQjt6h3lWhNe8ulqi9O7qN5sJVqne7OZCdmeEa+TLx2W1sUVCA6iE
 g7EN+Lxk0qG/9APYTpwzM3vH8WYSXQtaVFPtW9Gwp0I6futncbTvLjJkA
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gMc4aSaX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: Add PCIe link recovery for
 I225/I226
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:harshankmatkar1304@outlook.com,m:netdev@vger.kernel.org,m:tony.nguyen@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:pabeni@redhat.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:mika.westerberg@linux.intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[outlook.com,lists.osuosl.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[outlook.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 9447F1253CB
X-Rspamd-Action: no action

On 10/02/2026 22:34, Harshank Matkar wrote:
> From: Harshank Matkar <harshankmatkar1304@outlook.com>
> 
> When ASPM L0s transitions occur on Intel I225/I226 controllers,
> transient PCIe link instability can cause register read failures
> (0xFFFFFFFF responses). Implement a multi-layer recovery strategy:
> 
> 1. Immediate retries: 3 attempts with 100-200μs delays
> 2. Link retraining: Trigger PCIe link retraining via capabilities
> 3. Device detachment: Only as last resort after max attempts
> 
> The recovery mechanism includes rate limiting, maximum attempt
> tracking, and device presence validation to prevent false detaches
> on transient ASPM glitches while maintaining safety through
> bounded retry limits.
> 
> Signed-off-by: Harshank Matkar <harshankmatkar1304@outlook.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |   6 +-
>   drivers/net/ethernet/intel/igc/igc_main.c | 155 ++++++++++++++++++++--
>   2 files changed, 149 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index a427f05814c1..2ef488b279b9 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -346,6 +346,10 @@ struct igc_adapter {
>   	struct mutex led_mutex;
>   	struct igc_led_classdev *leds;
>   	bool leds_available;
> +
> +	/* PCIe recovery tracking */
> +	unsigned int pcie_recovery_attempts;
> +	unsigned long last_recovery_time;
>   };
>   
>   void igc_up(struct igc_adapter *adapter);
> @@ -422,7 +426,7 @@ enum igc_rss_type_num {
>   	IGC_RSS_TYPE_MAX		= 10,
>   };
>   #define IGC_RSS_TYPE_MAX_TABLE		16
> -#define IGC_RSS_TYPE_MASK		GENMASK(3,0) /* 4-bits (3:0) = mask 0x0F */
> +#define IGC_RSS_TYPE_MASK		GENMASK(3, 0) /* 4-bits (3:0) = mask 0x0F */
>   
>   /* igc_rss_type - Rx descriptor RSS type field */
>   static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 89a321a344d2..f0daa3edbb79 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1411,9 +1411,8 @@ static int igc_tx_map(struct igc_ring *tx_ring,
>   	/* Make sure there is space in the ring for the next send. */
>   	igc_maybe_stop_tx(tx_ring, DESC_NEEDED);
>   
> -	if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more()) {
> +	if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more())
>   		writel(i, tx_ring->tail);
> -	}
>   
>   	return 0;
>   dma_error:
> @@ -1613,8 +1612,7 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>   	 * otherwise try next time
>   	 */
>   	for (f = 0; f < skb_shinfo(skb)->nr_frags; f++)
> -		count += TXD_USE_COUNT(skb_frag_size(
> -						&skb_shinfo(skb)->frags[f]));
> +		count += TXD_USE_COUNT(skb_frag_size(&skb_shinfo(skb)->frags[f]));
>   
>   	if (igc_maybe_stop_tx(tx_ring, count + 5)) {
>   		/* this is a hard error */
> @@ -2524,7 +2522,6 @@ static int __igc_xdp_run_prog(struct igc_adapter *adapter,
>   		if (xdp_do_redirect(adapter->netdev, xdp, prog) < 0)
>   			goto out_failure;
>   		return IGC_XDP_REDIRECT;
> -		break;
>   	default:
>   		bpf_warn_invalid_xdp_action(adapter->netdev, prog, act);
>   		fallthrough;
> @@ -2791,7 +2788,7 @@ static struct igc_xdp_buff *xsk_buff_to_igc_ctx(struct xdp_buff *xdp)
>   	 * igc_xdp_buff shares its layout with xdp_buff_xsk and private
>   	 * igc_xdp_buff fields fall into xdp_buff_xsk->cb
>   	 */
> -       return (struct igc_xdp_buff *)xdp;
> +	return (struct igc_xdp_buff *)xdp;
>   }
>   
>   static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int budget)
> @@ -3895,9 +3892,8 @@ static int igc_enable_nfc_rule(struct igc_adapter *adapter,
>   {
>   	int err;
>   
> -	if (rule->flex) {
> +	if (rule->flex)
>   		return igc_add_flex_filter(adapter, rule);
> -	}
>   
>   	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
>   		err = igc_add_etype_filter(adapter, rule->filter.etype,
> @@ -6984,11 +6980,112 @@ static const struct net_device_ops igc_netdev_ops = {
>   	.ndo_hwtstamp_set	= igc_ptp_hwtstamp_set,
>   };
>   
> +#define IGC_REGISTER_READ_RETRIES	3
> +#define IGC_PCIE_RECOVERY_MAX_ATTEMPTS	10
> +#define IGC_PCIE_RECOVERY_INTERVAL_MS	1000
> +
> +/**
> + * igc_pcie_link_recover - Attempt PCIe link recovery
> + * @adapter: board private structure
> + *
> + * Attempts to recover a failed PCIe link by triggering a link retrain.
> + * Rate-limited to 1 attempt per second, maximum 10 attempts.
> + *
> + * Returns true if recovery was successful, false otherwise.
> + */
> +static bool igc_pcie_link_recover(struct igc_adapter *adapter)
> +{
> +	struct pci_dev *pdev = adapter->pdev;
> +	unsigned long now = jiffies;
> +	u16 lnksta, lnkctl;
> +	int ret;
> +	int i;
> +
> +	/* Rate limiting: no more than 1 attempt per second */
> +	if (time_before(now, adapter->last_recovery_time +
> +			msecs_to_jiffies(IGC_PCIE_RECOVERY_INTERVAL_MS)))
> +		return false;
> +
> +	/* Maximum attempt limit */
> +	if (adapter->pcie_recovery_attempts >= IGC_PCIE_RECOVERY_MAX_ATTEMPTS) {
> +		netdev_err(adapter->netdev,
> +			   "Exceeded maximum PCIe recovery attempts (%d)\n",
> +			   IGC_PCIE_RECOVERY_MAX_ATTEMPTS);
> +		return false;
> +	}
> +
> +	adapter->last_recovery_time = now;
> +	adapter->pcie_recovery_attempts++;
> +
> +	netdev_warn(adapter->netdev,
> +		    "Attempting PCIe link recovery (attempt %d/%d)\n",
> +		    adapter->pcie_recovery_attempts,
> +		    IGC_PCIE_RECOVERY_MAX_ATTEMPTS);
> +
> +	/* Check if device is still present on the bus */
> +	if (!pci_device_is_present(pdev)) {
> +		netdev_err(adapter->netdev, "Device not present on PCIe bus\n");
> +		return false;
> +	}
> +
> +	/* Check link status */
> +	ret = pcie_capability_read_word(pdev, PCI_EXP_LNKSTA, &lnksta);
> +	if (ret) {
> +		netdev_err(adapter->netdev, "Failed to read link status\n");
> +		return false;
> +	}
> +
> +	/* Trigger link retrain if link appears down */
> +	if (!(lnksta & PCI_EXP_LNKSTA_DLLLA)) {
> +		netdev_info(adapter->netdev,
> +			    "Link down, attempting retrain\n");
> +
> +		/* Read link control register */
> +		ret = pcie_capability_read_word(pdev, PCI_EXP_LNKCTL, &lnkctl);
> +		if (ret == 0) {
> +			/* Trigger retrain by setting RL bit */
> +			pcie_capability_write_word(pdev, PCI_EXP_LNKCTL,
> +						   lnkctl | PCI_EXP_LNKCTL_RL);
> +
> +			/* Wait for retrain to complete (up to 1 second) */
> +			for (i = 0; i < 100; i++) {
> +				usleep_range(10000, 20000);
> +				ret = pcie_capability_read_word(pdev, PCI_EXP_LNKSTA,
> +								&lnksta);
> +				if (ret == 0 && (lnksta & PCI_EXP_LNKSTA_DLLLA) &&
> +				    !(lnksta & PCI_EXP_LNKSTA_LT)) {
> +					netdev_info(adapter->netdev,
> +						    "PCIe link recovery successful\n");
> +					return true;
> +				}
> +			}
> +		}
> +	}
> +
> +	/* Give the link some additional time to recover on its own */
> +	msleep(100);
> +
> +	/* Check if device is responding now */
> +	if (pci_device_is_present(pdev)) {
> +		ret = pcie_capability_read_word(pdev, PCI_EXP_LNKSTA, &lnksta);
> +		if (ret == 0 && (lnksta & PCI_EXP_LNKSTA_DLLLA)) {
> +			netdev_info(adapter->netdev,
> +				    "PCIe link recovered after delay\n");
> +			return true;
> +		}
> +	}
> +
> +	netdev_warn(adapter->netdev, "PCIe link recovery failed\n");
> +	return false;
> +}
> +
>   u32 igc_rd32(struct igc_hw *hw, u32 reg)
>   {
>   	struct igc_adapter *igc = container_of(hw, struct igc_adapter, hw);
>   	u8 __iomem *hw_addr = READ_ONCE(hw->hw_addr);
> +	struct net_device *netdev = igc->netdev;
>   	u32 value = 0;
> +	int retry;
>   
>   	if (IGC_REMOVED(hw_addr))
>   		return ~value;
> @@ -6997,13 +7094,49 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
>   
>   	/* reads should not return all F's */
>   	if (!(~value) && (!reg || !(~readl(hw_addr)))) {
> -		struct net_device *netdev = igc->netdev;
> +		/* Layer 1: Immediate retries with short delays (100-200μs) */
> +		for (retry = 0; retry < IGC_REGISTER_READ_RETRIES; retry++) {
> +			usleep_range(100, 200);
> +			value = readl(&hw_addr[reg]);
> +
> +			/* If we got a valid read, return immediately */
> +			if (~value || (reg && ~readl(hw_addr))) {
> +				netdev_dbg(netdev,
> +					   "Register read recovered after %d retries\n",
> +					   retry + 1);
> +				return value;
> +			}
> +		}
> +
> +		/* Layer 2: Attempt full PCIe link recovery */
> +		netdev_warn(netdev,
> +			    "All immediate retries failed, attempting PCIe link recovery\n");
> +
> +		if (igc_pcie_link_recover(igc)) {
> +			/* Recovery succeeded, re-read the register */
> +			hw_addr = READ_ONCE(hw->hw_addr);
> +			if (hw_addr && !IGC_REMOVED(hw_addr)) {
> +				value = readl(&hw_addr[reg]);
> +
> +				/* Verify the read is valid */
> +				if (~value || (reg && ~readl(hw_addr))) {
> +					netdev_info(netdev,
> +						    "Register read successful after link recovery\n");
> +					return value;
> +				}
> +			}
> +		}
> +
> +		/* Layer 3: All recovery attempts failed, detach device */
> +		netdev_err(netdev,
> +			   "PCIe link lost after %d retries and recovery attempts, device now detached\n",
> +			   IGC_REGISTER_READ_RETRIES);
>   
>   		hw->hw_addr = NULL;
>   		netif_device_detach(netdev);
> -		netdev_err(netdev, "PCIe link lost, device now detached\n");
> +
>   		WARN(pci_device_is_present(igc->pdev),
> -		     "igc: Failed to read reg 0x%x!\n", reg);
> +		     "igc: Failed to read reg 0x%x after all recovery attempts!\n", reg);
>   	}
>   
>   	return value;

I see a few issues with this patch:

1. It mixes a few minor formatting changes together with the functional 
change, this is generally discouraged.

2. The use of usleep_range() means you will get a "scheduling while 
atomic" bug each time a register is read in an atomic context.

3. I can understand the read-retry mechanism as a way to cope with 
transient failures. We've implemented something similar for PHY accesses 
in the e1000e driver. However, full PCIe link retraining feels like too 
heavy a tool inside a register read routine. Granted, 99.999% of the 
time you won't reach that code, but I suspect that if you do reach it, 
it won't save you. That is, it may help you once, but if this link 
instability is so bad to cause repeated failures, you will just hit it 
again shortly after, during the next L0s transition.

Maybe we should first understand the scope of the problem we're dealing 
with here - does the issue with L0s transitions on I225/I226 affect 
specific units/systems? Is it due to some custom changes to the PCIe 
configuration of the device or the platform? I cannot imagine it being 
widespread, or we would have been hearing left and right about I225/I226 
failing reads and become "detached" while idle.

--Dima
