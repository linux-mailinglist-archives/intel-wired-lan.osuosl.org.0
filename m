Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6316AC829C0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 22:57:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AAFC48194A;
	Mon, 24 Nov 2025 21:57:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IHeAz-nA9Q9V; Mon, 24 Nov 2025 21:57:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4EDE81959
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764021434;
	bh=RNX9ra3SObaH8Q9CCSzQ/M27ofindGEZWOn0hK/bcKs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Zt3M7+JZcIGBwCbl4IWhOoBhX2SyDGQRXl3gnvS4PqqwoJN0b5zj7cSgUuWBtghZo
	 Gl9pbxkIswhgcl7Lf0MHBjfbPVc7nBCudFGTHwFPpTmehrisjoBv2C6m9PD9SVu8Lj
	 nDTCGWdsOwFlNErJ2dNrOhfQEpA4Tp+/eZ+3NRzLVyDdJKJT1ZLiKPlHkNLv/reDBH
	 ZQK6ahXoL5zadzd60Ge4qZ+QN5tcekO1d8OiJoHcQ48LC0HrZo2tLDYda3YkHtdiVX
	 iLjm2rj0fqcJnYzt9prLnqkvwVc2sqKFcD9kj3lMVORmASoyPgFqeVgi7AnsfAddFG
	 HdthjsVmX0/uQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4EDE81959;
	Mon, 24 Nov 2025 21:57:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 95B9A35C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 21:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 791A9403CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 21:57:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g1elcZXc3cCO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 21:57:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 989D040165
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 989D040165
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 989D040165
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 21:57:12 +0000 (UTC)
X-CSE-ConnectionGUID: nQY8CpFTRRGN/FYONkxJDw==
X-CSE-MsgGUID: lSNh7hOJS5uYWsTSTCIN/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="66064422"
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; 
 d="asc'?scan'208";a="66064422"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 13:57:12 -0800
X-CSE-ConnectionGUID: 93xKtAYIQ5Kz0s3+Z7jp5w==
X-CSE-MsgGUID: +1wX36wcTfKwlZAXO1S2dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; 
 d="asc'?scan'208";a="192534444"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 13:57:11 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 13:57:10 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 24 Nov 2025 13:57:10 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.18)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 24 Nov 2025 13:57:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CJc6ZLLUuI1SejzIKBdzIfJB9KEr01KN26TgA7kB8XikA2RkbcXyUW8LCR0XXyGsCBHyto/X1Pvc0fTeiOp2paxW4gItAFsKtdMiXIQs/ilO6jZQZdyHXa7+C1NU4lPopC9GfE6nL8ydKB4X4k33/halTOcLlGmKgrXHb7/3DAqLJpvrJewCo1ysuvSOzKAIo2xXkbMfko2rbicbLV81JOW0qgbW4GY61PgtEFo/FukamEqiknmD+nUCJwQftJ7hdvCv67fsOaJ1Aotp/UGE7x8KiCYy0lqoX3Q9sRF0Rp0qGGmi8Y37tNphWISolEsUSFQ2He17k2CBXl0TkIb1wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RNX9ra3SObaH8Q9CCSzQ/M27ofindGEZWOn0hK/bcKs=;
 b=SGgBd4oVyukI84zlGWVEJuevejJeYhKF3grlMIuhleAeIUV9GvJRVJpCOknHmquoGgTFIn4p+4R8nEUjiGkeTdSWCxtDmc2uU85rKGo+0Pjkrt6kTAOILHosMKOqqujgktSyLskTkPXY4a4k0TertHml3AmOsXhjwBkNS4QgqXvz+0EMnWeOSRUqzPQVH0w5swVdvQGS0P5yZmzOpdyWrMQxibvaXG5ls1KPEGj642WnskhzQHUUDLsP0olDhXAbxz0VqA2coK/PGl//Np7+DUccfddUzFdpU/xkrdHHl1Na4bHd0MNBB6lmlBxQExXxz/24kOqXnl1LSLzgJUeZqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA4PR11MB9444.namprd11.prod.outlook.com (2603:10b6:208:563::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Mon, 24 Nov
 2025 21:57:07 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9343.016; Mon, 24 Nov 2025
 21:57:07 +0000
Message-ID: <89804208-cc00-4769-9f01-4928544504ab@intel.com>
Date: Mon, 24 Nov 2025 13:57:01 -0800
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Markus_Bl=C3=B6chl?= <markus@blochl.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>
CC: Richard Cochran <richardcochran@gmail.com>, =?UTF-8?Q?Markus_Bl=C3=B6chl?=
 <markus.bloechl@ipetronik.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20251119-i40e_ptp_link_down-v1-1-b351fed254b3@blochl.de>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20251119-i40e_ptp_link_down-v1-1-b351fed254b3@blochl.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5YGCbTs0s0g5oHLB40KXHt4n"
X-ClientProxiedBy: YQBP288CA0026.CANP288.PROD.OUTLOOK.COM
 (2603:10b6:c01:9d::23) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA4PR11MB9444:EE_
X-MS-Office365-Filtering-Correlation-Id: 8fa16fa8-67d8-461e-0be3-08de2ba46810
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aStqbmp1M3lOZXo5RHpZUG5hOGVueVZ0YzRqUGwza091SVR0VEJpVkJCS25l?=
 =?utf-8?B?bzBLNW84aWVCY2djVkp2QjZaQyttdnNWZExnaGJiUUZvSHNxbkhUVXFVQkxQ?=
 =?utf-8?B?dFBRZjNId0YzbFBXdHBvajBCSld3RDlCTEZzZUZUazdtaUN0VERWaVZiWDYv?=
 =?utf-8?B?RlFCVUpzbXBaWDZ2dlZqUmFibEdTOEcyVFlUdkd5SzJVU0syRzRkdnF2ai9k?=
 =?utf-8?B?VGpncjF2RnVtZHh4UlhrMkduMnVjcTFjdUowWTZqL3dGTVpINTBtM2ZVU3Bs?=
 =?utf-8?B?USswcFIwV3lxZytQZU9Da3hNVUpsbHM4MUdrRlNTU1ZRTUdoZldBZDFFZU1W?=
 =?utf-8?B?S3pmS3o2S1BUUGVObmpUNVA5aXVJWktQMGIvczNLSlRPMmQ3UkpxOUF3S3ow?=
 =?utf-8?B?ZFQ1eGVsQTJaQ3NnL05oVmZEQjRtMC9uaWk1bVhHc3lhK0hWL3NJSEdDSjIw?=
 =?utf-8?B?bnRDYmU3WGsrZnVqZXNraVR2ZU0yaW5TckpCVnFLNkhYOHBoR0YxUDZ1VHpl?=
 =?utf-8?B?bDgwWm1FSTE3VWtzSmhJcEhsdHpWdEtDbnpLemRyeXE0VkU3R2VJSXkxVG9F?=
 =?utf-8?B?bWVqYjNPcFlTMmJ0NnBadG50S2ZrT3VHcDZjU2pWU1c2ZE5KdUthcDRoeGs2?=
 =?utf-8?B?NUxaYVJ4K2FSVmJLODNXUmp6b3cvRkR6R2xUeExGcGNYQ3o1OEJmZGNDcDdR?=
 =?utf-8?B?VDVJU0EvazZuNTRXS2Y1Ni8wWHB6UXlySVFyRWVaMmYyWVk5d0hadEhpS3lF?=
 =?utf-8?B?MXpaaUNoUmMyNU0xOFdKYUFUQzJOald0MitrWGRKSWpmZ2Z0TDE0amR3cm1i?=
 =?utf-8?B?ZitOM3FtMW43RzRJVDVtdXgvWE1WMDVVSWZsYzRrdjhyTy9hOVpiSkY2ajla?=
 =?utf-8?B?VytPcGk0bS8wRmJBdTNFNEJpTHlGUmNzbWk3T2FCSkovQTZHQUh3SHJTNEt0?=
 =?utf-8?B?VFFBczAwbmNwRmlRQUxTb3laem9hcDNOTmd5Vm1HZTJNV3pRU2VWT24rZzd4?=
 =?utf-8?B?Z1k2UDlhM1h0b1o4L2xjWlg2V2huQW5MaUJpNWs1cW1UbnZiYWY4K01UTGNS?=
 =?utf-8?B?QnJYRk1DbVZlMXFOZ25XTmhaelhRNmo0bENXU3NmMVgvNjRocENycHVtUnZE?=
 =?utf-8?B?ZEsvMjl5MXhvY3B6ZnErRXIyVEp0YmtqbkdmRWxkenRyak1BdFFKejZnNk52?=
 =?utf-8?B?bCs0eFBqSWJ0c21SeDlNdHlQNGh0dm11Y3drTWpPY04yVmlyK3FmcHRYTkZz?=
 =?utf-8?B?MXZWR3BqQi9EbjhtK0JIcHdXbHJPR1JKaFpybGNvSWVXSHR5RHpnY0Q1QjlP?=
 =?utf-8?B?Z2VqRUtTWVVXMUZnc3Q5bWRuZmhIYTg1WmdYMTJKQVpmVGpsK2c5MkM5MkFX?=
 =?utf-8?B?b1FkV3gvdzRZUzNPdWtBTW5OaDZzb25EbjFvN1pUaG5EN0lrVVNRTGx6dlVv?=
 =?utf-8?B?Z3U0eTUyOWE4Q2Z2djg5a0sxRHNZSTBLbDJwS1A1V2huUWhoeDNkelNHVFMy?=
 =?utf-8?B?aFNBM252QUZqOWN6aHhONzNaUHJ3V1JUSVlwL3AvcUZub1Q0R0VDSVhhMUkx?=
 =?utf-8?B?RFJDRmVWMUh1WUUxVEpQNm1CZFp3Zm12bzUyUTBFUVBJVzZhYVM1bEVuUE9K?=
 =?utf-8?B?WURFazhaTUFNd21aR1Bqb2JrWVVvUU9hNXNIMzRCbXZFU1lwM3FSbzhweTNY?=
 =?utf-8?B?c1RiWjJnNGlDeFhuMllmY3VMU2dtbHI3QXMrbFU5SkNTZy9yY0ZUazFDeEFW?=
 =?utf-8?B?ZkRhSXpIWGxlQVVJOXdJcDVoSmJkdVFtR0dUTXM4YWpLWHA3WkRWQmc2bll2?=
 =?utf-8?B?Z0cxYTJLVGJWQUJMREdZTUJ5TFB3OUF1VVdyV3BEazBZWTVWWXVmeHg2bmJ6?=
 =?utf-8?B?cWs1WnFSZ1hrL3BPUFNLNVhjWEtLQWw3bXBnL2pkOHBlWloram1zMFNQaHRC?=
 =?utf-8?Q?5V/niNVvbnHIO13f2zOH+gc8HhgX6lhy?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L2w2N2paNitWR1RGaGk3NEx4b2dGTXRDL1czMFdiQ3V1aVJ3MVYrY2grQnNB?=
 =?utf-8?B?ZjI1R3l2dWpuZWd2MkMrTzZScS9DMFFwaE5ER2JINSs0cWxOS0dSUUNtNmZH?=
 =?utf-8?B?bndSRlEwM2laN2NVb1ppdG95aUFQVDlldThLNThBYlZiMGZHTWRRYmZwVWlG?=
 =?utf-8?B?Ym9SY2xVc1l3NUJtQ3V3VCtxR1ZBUUN1S3ZvUk83UmszaStuU2MxRTR4TU5o?=
 =?utf-8?B?V2EvVnBCMHlkNzRnZFpiVEZVVjVKTmJIK05KbzdKVThTMjZOb3YraTljQ2dJ?=
 =?utf-8?B?RjNxWHZ0M1JGaEhTdG94Uks4TllxTEN1UWRKaTJUSFRTN04wNmFOWVU1Y2d3?=
 =?utf-8?B?MW5pTGgwK1Q3enFURXAvVjd4aUxrMExYbWFjR2E4WVZLRGZ3aEdsd0o5RlN1?=
 =?utf-8?B?azBRRWFHMHI3OHhzRzliblk5S3R6MDF4dmdhMk02YjR1OSsyblpVSHo0cUNa?=
 =?utf-8?B?cVRMYTk5em5QRzQ5cTVyNGlBMlZjdC9xR3UvV1lPa2lmZHdIRk53U05SS1Ax?=
 =?utf-8?B?YWNzZzhXNzhaK0pURjB6TEM5V3hTMDc4N3BQUTFjWEJmemQ5UWtPUkl5K3JY?=
 =?utf-8?B?N2NiaGpOajU2bGVVemxRUUpWdUtoa0tZMkxmWmtEY2t4NjBlQzJaSXUvd1pz?=
 =?utf-8?B?R2dqUkRZU244dTZ1TE5jSVA5eXMzVlJIRmE4UWo3NE1uRTBJRWYrMWN5cXVH?=
 =?utf-8?B?S3lhRGgrRFI0VTZZNGhsalpxQUYrbWZhRU93WkFRbm8wMUM5R1o1bmFVNy9s?=
 =?utf-8?B?d0hBUC9TaklIbDlIMFo5RzVrZmJ6RzdYMFpIT2NMdHh5ZXk3VWZISGsxaEtM?=
 =?utf-8?B?MG5lUUJLY2d0VHhuME4wSklDNWY1VC8vSlQ4TG1INm4wZEd5cyttSUVyamFa?=
 =?utf-8?B?WEJFTG1GcGVocytwckVYWXErcHU5Nm1QNFZKbXI5dFp0RW5sQ0Q1NnN0S1g2?=
 =?utf-8?B?VW1qYjY4aEhXME84a3dEVVlkRXg5SDJTc3RtellmeFMrZWI0T2EyK21QMkx5?=
 =?utf-8?B?Q0RNblk3M2xSRG9mazQ3YjZoWkd6R2ZyUWV0MGdYTHg5dmF4VzFhTlIxc01x?=
 =?utf-8?B?akFVZVkycE1tUG90Vm1SLzltejRUTWoxZ1N5dEFodkd0NUlNZlUra0t2T1RJ?=
 =?utf-8?B?U2VTNnRQQ1FiT1VPMXoyT050QjhIK0t2VWZZbDZDc000WWVBV05LYWo3Zm01?=
 =?utf-8?B?TFhGT3pwbktjWnBkUTAyQmEwV3JRRVFOaVlocHRSbGVsSCtycXg5Y0hIYnAw?=
 =?utf-8?B?MDRiT2srejAzUTVXTkRlaFQ5N3I3NXpaYlFrcm5JSkkwY3FOd0loQmpPMUhp?=
 =?utf-8?B?L3MxbjNuOXNxU2J0M1pyWWN0WHVzN2NrVEIxNGxmeklNTFAvKy9uVmVqWENq?=
 =?utf-8?B?S0pndEljdXpKWkpGSnZ1Y0l6T1VybVJIamhWQ3ppcytZci93dGdiRkpoNXBT?=
 =?utf-8?B?b2xJT2NIQURpTE1YSnhlV1pjcW9tQjVwSUpGeXRCVzdNdG0yb1NnaWFBaWZp?=
 =?utf-8?B?Q0VqRDhiL2hSUFJHZ3VFeTlad1plc3pDWlF5aGFpZkFUaCt2SURSQ1VHNWJW?=
 =?utf-8?B?ay9ZRVh6a3BiMUQzcnZkS1BwUHB2RkpkNFRHTEp4YmxleFh4d3pXWko3Y2du?=
 =?utf-8?B?U09wZGluZ1NTTlJFalh4dWY0Y3dUdU15dkVaVWVCVXBRYStNMGxZNnM4S3kv?=
 =?utf-8?B?a3k4RHVLTGZQaFpPejJVb2M5d3BLWGtGaWZhWUVRZG5DQjl4azdmV0N2Tzkv?=
 =?utf-8?B?cGRGSTZLazlsN2FacWRlbTZ0RUJSczlDbGhRQ3JueGs4bzUxV3diU01TZWJE?=
 =?utf-8?B?aHRjNmFXU1hJK2oxQzBTWDJEMmlWeGE1M3lHVEp0Nzc2bHR2bHlONjF4TnFG?=
 =?utf-8?B?c254YnhuTWdUaUlmRG1IeWdIc3ppTVgwbUxHbGtxQU1jY0RDS2pwdnpZTjU1?=
 =?utf-8?B?c3pOZHZFUFFKVFNLcWZQbEdnTmpMbUIwV2dycDRMYUg3K2tRR0c4ZFlWcEtV?=
 =?utf-8?B?bHpQcjFxSlZuR3dVa0gza0VnZWQrall4aDdlRi9hakVkQng3aTR5aEJUbkR1?=
 =?utf-8?B?cTh3UTFLY2tDQ2cybUFDb1VNTFo2eGU1SkNqWk9LbC9uQUdlaGttYWlWRnNk?=
 =?utf-8?B?RFZ1eGkvWXhtYnZ0VDRwTGlJcXBLQm5Ed3JKYmpzZnZ5blVkK2xlRnBSMjRT?=
 =?utf-8?B?TFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fa16fa8-67d8-461e-0be3-08de2ba46810
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2025 21:57:07.4947 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: funC096boWCv6uYFWs8nLGwF1lREH0ZalhZGyywAVDYQQg3f/ju0FgtOjmiHQ3OcktnP2Oz5UZXN8ZhDmU96fO7Pk2A9V5IGna9zft2sbxs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9444
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764021433; x=1795557433;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=mtQ5xJE3A8kc4N8HZ0KiXAu3QHlyU7BWrRNqYbk8OTY=;
 b=L0nm2yyLSWR18lB37uWEBbFIoDHYnWSNIOo1xQUP4UD730NgSpxo/cDJ
 SPBiNB46kx8tEoY00r13nfWAdQgXFM4Q33zBhQiT9gUMATDFXGe17zuio
 xPoc8pFlCotvtJTiUZTZ3d7g6w0DGquu8+gjBJhyt03lMaG2K12Z+QVqS
 x+29Tjf5uSsYoIDN5MX+INTEfIEImGHn/sIy1KM7IkIZ/6Y5cSamwqiaN
 5Ci+eDmQioaxNWS6ELpv9OOxQEuWZYvjmAG2gNsNQvRaRVkAPuYrj44Vz
 aN2QFKPt58eblIUuvfcQGurhnRfyWIVu7jc1qz0lMSsnu1ECx+IUcoDse
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=L0nm2yyL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix ptp time increment while
 link is down
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

--------------5YGCbTs0s0g5oHLB40KXHt4n
Content-Type: multipart/mixed; boundary="------------q0RyqSVp1H2tmn8wWy9Oq3kv";
 protected-headers="v1"
Message-ID: <89804208-cc00-4769-9f01-4928544504ab@intel.com>
Date: Mon, 24 Nov 2025 13:57:01 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix ptp time increment while link
 is down
To: =?UTF-8?Q?Markus_Bl=C3=B6chl?= <markus@blochl.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: Richard Cochran <richardcochran@gmail.com>,
 =?UTF-8?Q?Markus_Bl=C3=B6chl?= <markus.bloechl@ipetronik.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251119-i40e_ptp_link_down-v1-1-b351fed254b3@blochl.de>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20251119-i40e_ptp_link_down-v1-1-b351fed254b3@blochl.de>

--------------q0RyqSVp1H2tmn8wWy9Oq3kv
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 11/19/2025 8:09 AM, Markus Bl=C3=B6chl wrote:
> When an X710 ethernet port with an active ptp daemon (like the ptp4l an=
d phc2sys combo)
> suddenly loses its link and regains it after a while, the ptp daemon ha=
s a hard time
> to recover synchronization and sometimes entirely fails to do so.
>=20
> The issue seems to be related to a wrongly configured increment while t=
he link is down.
> This could not be observed with the Intel reference driver. We identifi=
ed the fix to appear in
> Intels official ethernet-linux-i40e release version 2.17.4.
>=20
> Include the relevant changes in the kernel version of this driver.
>=20
> Fixes: beb0dff1251d ("i40e: enable PTP")
> Cc: stable@vger.kernel.org
> Signed-off-by: Markus Bl=C3=B6chl <markus@blochl.de>
> ---

I checked through our out-of-tree history and can confirm essentially
this exact code was added there back in 2021, but the developer never
managed to get around to upstreaming this fix.

Thanks for discovering and resolving that gap!

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> Tested with an X710 at 10G link speed and kernel version 6.12.42.
> ---
>  drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h |  9 +++
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c        | 68 +++++++++++++++=
++++++--
>  drivers/net/ethernet/intel/i40e/i40e_register.h   |  9 +++
>  drivers/net/ethernet/intel/i40e/i40e_type.h       |  8 +++
>  4 files changed, 89 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/driver=
s/net/ethernet/intel/i40e/i40e_adminq_cmd.h
> index cc02a85ad42b..ec176e9569ad 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
> @@ -1488,6 +1488,15 @@ enum i40e_aq_link_speed {
>  	I40E_LINK_SPEED_25GB	=3D BIT(I40E_LINK_SPEED_25GB_SHIFT),
>  };
> =20
> +enum i40e_prt_mac_pcs_link_speed {
> +	I40E_PRT_MAC_PCS_LINK_SPEED_UNKNOWN =3D 0,
> +	I40E_PRT_MAC_PCS_LINK_SPEED_100MB,
> +	I40E_PRT_MAC_PCS_LINK_SPEED_1GB,
> +	I40E_PRT_MAC_PCS_LINK_SPEED_10GB,
> +	I40E_PRT_MAC_PCS_LINK_SPEED_40GB,
> +	I40E_PRT_MAC_PCS_LINK_SPEED_20GB
> +};
> +
>  struct i40e_aqc_module_desc {
>  	u8 oui[3];
>  	u8 reserved1;
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/e=
thernet/intel/i40e/i40e_ptp.c
> index 33535418178b..ee6927e2c6f8 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> @@ -847,6 +847,65 @@ void i40e_ptp_rx_hwtstamp(struct i40e_pf *pf, stru=
ct sk_buff *skb, u8 index)
>  	i40e_ptp_convert_to_hwtstamp(skb_hwtstamps(skb), ns);
>  }
> =20
> +/**
> + * i40e_ptp_get_link_speed_hw - get the link speed
> + * @pf: Board private structure
> + *
> + * Calculate link speed depending on the link status.
> + * Return the link speed.
> + **/
> +static enum i40e_aq_link_speed i40e_ptp_get_link_speed_hw(struct i40e_=
pf *pf)
> +{
> +	bool link_up =3D pf->hw.phy.link_info.link_info & I40E_AQ_LINK_UP;
> +	enum i40e_aq_link_speed link_speed =3D I40E_LINK_SPEED_UNKNOWN;
> +	struct i40e_hw *hw =3D &pf->hw;
> +
> +	if (link_up) {
> +		struct i40e_link_status *hw_link_info =3D &hw->phy.link_info;
> +
> +		i40e_aq_get_link_info(hw, true, NULL, NULL);
> +		link_speed =3D hw_link_info->link_speed;
> +	} else {
> +		enum i40e_prt_mac_link_speed prtmac_linksta;
> +		u64 prtmac_pcs_linksta;
> +
> +		prtmac_linksta =3D (rd32(hw, I40E_PRTMAC_LINKSTA(0))
> +			& I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_MASK)
> +			>> I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_SHIFT;
> +		if (prtmac_linksta =3D=3D I40E_PRT_MAC_LINK_SPEED_40GB) {
> +			link_speed =3D I40E_LINK_SPEED_40GB;
> +		} else {
> +			i40e_aq_debug_read_register(hw,
> +						    I40E_PRTMAC_PCS_LINK_STATUS1(0),
> +						    &prtmac_pcs_linksta,
> +						    NULL);
> +
> +			prtmac_pcs_linksta =3D (prtmac_pcs_linksta
> +			& I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_MASK)
> +			>> I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_SHIFT;
> +
> +			switch (prtmac_pcs_linksta) {
> +			case I40E_PRT_MAC_PCS_LINK_SPEED_100MB:
> +				link_speed =3D I40E_LINK_SPEED_100MB;
> +				break;
> +			case I40E_PRT_MAC_PCS_LINK_SPEED_1GB:
> +				link_speed =3D I40E_LINK_SPEED_1GB;
> +				break;
> +			case I40E_PRT_MAC_PCS_LINK_SPEED_10GB:
> +				link_speed =3D I40E_LINK_SPEED_10GB;
> +				break;
> +			case I40E_PRT_MAC_PCS_LINK_SPEED_20GB:
> +				link_speed =3D I40E_LINK_SPEED_20GB;
> +				break;
> +			default:
> +				link_speed =3D I40E_LINK_SPEED_UNKNOWN;
> +			}
> +		}
> +	}
> +
> +	return link_speed;
> +}
> +
>  /**
>   * i40e_ptp_set_increment - Utility function to update clock increment=
 rate
>   * @pf: Board private structure
> @@ -857,16 +916,14 @@ void i40e_ptp_rx_hwtstamp(struct i40e_pf *pf, str=
uct sk_buff *skb, u8 index)
>   **/
>  void i40e_ptp_set_increment(struct i40e_pf *pf)
>  {
> -	struct i40e_link_status *hw_link_info;
> +	enum i40e_aq_link_speed link_speed;
>  	struct i40e_hw *hw =3D &pf->hw;
>  	u64 incval;
>  	u32 mult;
> =20
> -	hw_link_info =3D &hw->phy.link_info;
> +	link_speed =3D i40e_ptp_get_link_speed_hw(pf);
> =20
> -	i40e_aq_get_link_info(&pf->hw, true, NULL, NULL);
> -
> -	switch (hw_link_info->link_speed) {
> +	switch (link_speed) {
>  	case I40E_LINK_SPEED_10GB:
>  		mult =3D I40E_PTP_10GB_INCVAL_MULT;
>  		break;
> @@ -909,6 +966,7 @@ void i40e_ptp_set_increment(struct i40e_pf *pf)
>  	/* Update the base adjustement value. */
>  	WRITE_ONCE(pf->ptp_adj_mult, mult);
>  	smp_mb(); /* Force the above update. */
> +	i40e_ptp_set_1pps_signal_hw(pf);
>  }
> =20
>  /**
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/=
net/ethernet/intel/i40e/i40e_register.h
> index 432afbb64201..c4051dbcc297 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_register.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
> @@ -530,6 +530,15 @@
>  #define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_SHIFT 0
>  #define I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_MASK I40E_MASK(0xF=
FFF, \
>  	I40E_PRTMAC_HSEC_CTL_TX_PAUSE_REFRESH_TIMER_SHIFT)
> +/* _i=3D0...3 */ /* Reset: GLOBR */
> +#define I40E_PRTMAC_PCS_LINK_STATUS1(_i) (0x0008C200 + ((_i) * 4))
> +#define I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_SHIFT 24
> +#define I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_MASK I40E_MASK(0x7, I4=
0E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_SHIFT)
> +#define I40E_PRTMAC_PCS_LINK_STATUS2 0x0008C220
> +/* _i=3D0...3 */ /* Reset: GLOBR */
> +#define I40E_PRTMAC_LINKSTA(_i) (0x001E2420 + ((_i) * 4))
> +#define I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_SHIFT 27
> +#define I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_MASK I40E_MASK(0x7, I40E_PR=
TMAC_LINKSTA_MAC_LINK_SPEED_SHIFT)
>  #define I40E_GLNVM_FLA 0x000B6108 /* Reset: POR */
>  #define I40E_GLNVM_FLA_LOCKED_SHIFT 6
>  #define I40E_GLNVM_FLA_LOCKED_MASK I40E_MASK(0x1, I40E_GLNVM_FLA_LOCKE=
D_SHIFT)
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/=
ethernet/intel/i40e/i40e_type.h
> index ed8bbdb586da..98c8c5709e5f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_type.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
> @@ -115,6 +115,14 @@ enum i40e_queue_type {
>  	I40E_QUEUE_TYPE_UNKNOWN
>  };
> =20
> +enum i40e_prt_mac_link_speed {
> +	I40E_PRT_MAC_LINK_SPEED_100MB =3D 0,
> +	I40E_PRT_MAC_LINK_SPEED_1GB,
> +	I40E_PRT_MAC_LINK_SPEED_10GB,
> +	I40E_PRT_MAC_LINK_SPEED_40GB,
> +	I40E_PRT_MAC_LINK_SPEED_20GB
> +};
> +
>  struct i40e_link_status {
>  	enum i40e_aq_phy_type phy_type;
>  	enum i40e_aq_link_speed link_speed;
>=20
> ---
> base-commit: 8b690556d8fe074b4f9835075050fba3fb180e93
> change-id: 20251119-i40e_ptp_link_down-47934f9e155d
>=20
> Best regards,


--------------q0RyqSVp1H2tmn8wWy9Oq3kv--

--------------5YGCbTs0s0g5oHLB40KXHt4n
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaSTUrQUDAAAAAAAKCRBqll0+bw8o6CN2
AP4yemQ+q9G7CEdQHwS9H7S4C0nMUtUsmZBnY6UiAto9/wEAsyGs/Nr56LQURKQz+/cAgy5tDSvL
aMCgbkJLYry9DQs=
=Ax30
-----END PGP SIGNATURE-----

--------------5YGCbTs0s0g5oHLB40KXHt4n--
