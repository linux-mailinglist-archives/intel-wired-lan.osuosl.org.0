Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNLDI7IK/WnsWwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 23:57:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC104EF806
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 23:57:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AB6483D4F;
	Thu,  7 May 2026 21:57:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RydSJBTp8Dxc; Thu,  7 May 2026 21:57:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9867683D51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778191022;
	bh=zeYECvNgrUThim5hiGMNygDWhUU3eqx86Lp2VY61Vd4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EuY5OVzBDBtPg5BdJMWeqXWWgci4CHJQXUGcNsPKS0ICf+j/5jFPF9cw1oYJ9ahrg
	 T01lK2kVKwIVlSlXdw5NjVCRdhV5kdJefib3vMoj1HVzP8bhbQi7mpPBAoI10ZiufX
	 c6kwlTNoxJ9sTr1EoXpesUT3pCvxhEN/wsrLLiuFlVBz8FyQNjz3bmCaRAAJYRQVdS
	 RLN5rj4quP0dwIa/h9XhxO/2j2QBL3PLS1CILqXTd0q0pLWrlhrofg2KqCNa7Fzyf8
	 i+xY3F+fT20Z35TNw20AQiUZB6KEPlZz+jCZ0NXz3wPeYXWZ5LN/TvF+Yt/WjD6aO4
	 dgMRe/567w6xA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9867683D51;
	Thu,  7 May 2026 21:57:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DAF1E2FA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 21:57:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BFD8183CEE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 21:57:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nsru99WQI7MD for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 21:57:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AD61583D25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD61583D25
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AD61583D25
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 21:56:58 +0000 (UTC)
X-CSE-ConnectionGUID: m804br5gRT+3096PBQEYlw==
X-CSE-MsgGUID: nh+PKDjMRMK6LGdx25O7sA==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79199069"
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="79199069"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 14:56:58 -0700
X-CSE-ConnectionGUID: vz0ZsHBLT9Of7BYTif0itg==
X-CSE-MsgGUID: qEUEEZttQEaihT/bcisi+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="235607849"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 14:56:58 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 14:56:57 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 14:56:57 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.41) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 14:56:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hP8E2nSEZLE7wiMhblflF4cKZdoq9mHcM7JkwAua1cP8aiROhrR0lZERLkK3hSdmiFQKNpI/tfUzVbo9TORpnLsCBA5RQs5ynaNjZ1menLqGYNgEf3YZFLYxIGJZ7V7d2FwBK3RQkMz6gn+1Xi8NAtqN3WNg4CjJpg8ojTDML9kdS69d1q4LyGD7NUxao0y6+L8bCwmgCkpKslrXnL0aw3tZRqxuOCewEngtrjd9c1u3G+ntz8PohiCIyQYPwyu7q4cd/aFy5akBXr4JgcqTkzLAqrQZVVQD59VH2Jp9P3dNhsrH7A7H0+rDjnbCOdBSQ6opiqX8A2ipJrsMkyGPSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zeYECvNgrUThim5hiGMNygDWhUU3eqx86Lp2VY61Vd4=;
 b=ftCaywCQvo4ymJ9Qn3OdWz8gRKdrCyShl9OOHOUqcD/d4j/wTkP6wc5WgDtTGa6HWLLMaYzUmS2P4tg0AJMXb341JVGuzsbPvfb2+Xq3GQW4ySki+ci4CVHss3wGBKtcyhmR8mbkG57xxcD4Xpmk6H80swKSzz4/4BXxgA+5ooRP2fGzVV2So8inLvacY7uXA1B/AJRfNsu6LfTJPotOMXScEI02pf4rh9X93J89qX5AFnEvtxM6/NqYkZU0mSzMJwWkS0NQxFtFAX9a1v0b7ADJPK/YlRYl+2e/8iG7k9dtLr0TIQfqTR2O6qCd1WIRypmxW6i0lflAJ3GGf4b/oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by IA1PR11MB6193.namprd11.prod.outlook.com (2603:10b6:208:3eb::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Thu, 7 May
 2026 21:56:53 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9891.008; Thu, 7 May 2026
 21:56:53 +0000
Message-ID: <222cc4aa-eb5b-428b-9312-5f704011a962@intel.com>
Date: Thu, 7 May 2026 14:56:50 -0700
User-Agent: Mozilla Thunderbird
To: Matt Fleming <matt@readmodwrite.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, <kernel-team@cloudflare.com>, Matt Fleming
 <mfleming@cloudflare.com>, <stable@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, "Andrew
 Lunn" <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Eric Joyner <eric.joyner@intel.com>, Paul Greenwalt
 <paul.greenwalt@intel.com>, Alice Michael <alice.michael@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20260501095717.1032151-1-matt@readmodwrite.com>
 <531aec13-c33f-4e77-ab48-de8861f9b6c6@intel.com>
 <afxbZjldi1OC3HmS@matt-Precision-5490>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <afxbZjldi1OC3HmS@matt-Precision-5490>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P221CA0016.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::21) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|IA1PR11MB6193:EE_
X-MS-Office365-Filtering-Correlation-Id: e0285ea8-177e-4348-67fd-08deac838c47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|1800799024|366016|376014|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: JWcrZP9xy3xAKrwSfZd50Y9TTIdRIqOwcshhBX0Qm4OHYYXYD7ckoL+dZoXC5QkNYNY13ej+pVtIJGBaVQxtmrh7zyRPSRpbtZ4fXVGo/IwFySvkSz4vWbYBKFop73F0cjST33FK1U+YxL0+wQjdBzLyIrwDr66Rs4FWlyQJ3zRT94zlunzkkutYLxGwPOa1+IIOU8yiQf06v+9Agns7emlq2RLPMfqLsLnj6GDxAgswhPUCYajv0Z0Tu6V2d8VNmn5nhG6gEnHMjKGsgd063D7kmbvwPl1BHTgHFngZwYOgeGFZGBdGBP43sucdwKfWPhtlwBKilRPRy+f88nkHZ1R/uzY7SuGpGag22Rh7SQAMEfZmNo3/yy49pWKir/248CjxnKOp3I6aSH6R3EGwoDzu9XzIyQqu5ROMJ6oUJdAfdtLagVb09IIwUHRopH8pZOTAGMbHVxkD7/0az7tyWuOHgWYtmfbSEX7o366Zy779Ks47c/9Vg6H4ToB3JE3m361PUMW/28FiI14rczSUBd1XK8NIHq/W84NBpMH0acRj68ERbp37+xdoL7e+MrLYPq6Hh2OODc9pd7brgHnkyTsqG6okXy0Z96d4A4vV1s4RfW6VtAhe7ma09NgSvHBYVvXNDcl7fxK8g0zyd0vWiTogTbJd/Mxh50zsP9ULGdjjDRVKGd0ni36dHCmZloKW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(366016)(376014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U00zWmNrL2x2WjdvWWZJK1h6YW1wZTkzcUxxVWMzYVJ0M0I3WGt3bGVpT2dz?=
 =?utf-8?B?L0VXVHpHQXE4dHF1OG1obkZESlc4b3dJUlQ5bUJCbDNjVjVHbjQ4eHBmNFJQ?=
 =?utf-8?B?NXRJUDBmcmQreGhSU2RwUUNKNmRvc201NkZGdXZxOWxNTTVkeWJXVmNrMUR6?=
 =?utf-8?B?SncwQXpTSjhkTVcxMUsxdzk5WlFPaDZnUHNHRlZHTStVa1RqMXFDaVhJZXJH?=
 =?utf-8?B?WVVONVUzMUNXcTQzTy85QVNhbFh0YndPRFNOM3FscG9NM3JpTDVqY0cvNUF1?=
 =?utf-8?B?TlA2eHlNS0ZOMXFtZnRIKzNNUytxUDdVZGZiQmQ0Q0UwVGppUEFWVS9lRXdq?=
 =?utf-8?B?RjF4WHp1aFZQOXJjc29BRHh6bzhGekxwcm5zVDZvT2N6YXBiUGJxeCtYckFs?=
 =?utf-8?B?VmI2TlQzdWhhU3BYQXJzY2hHSXlBd2NBN25kWjVDYnFqMks2U01zenJzc2Fo?=
 =?utf-8?B?d1VxYVB0VGN3NGhQcUs2UUl0dWVXM2hEdnlHZHQ3bGRQdlpQRlFYMEx4OHF6?=
 =?utf-8?B?cHB1QkhFa1ErYWhSUXIwWmhhcGdoaUgySUIyNlQwa3NEdGR3OUxsVlp3Mity?=
 =?utf-8?B?SFAyYXNENWNHMHB3UTE4Sm0zSG8vL3p3emNhQU1LU2VuUTNNMWNhYkpNVUgw?=
 =?utf-8?B?emU0a3IvUEhXQmNPUjV2YWtqR2JySWx1WGNoekN5d3FobGUxMnRJempQV1RB?=
 =?utf-8?B?STFlOHBEYXdOZDk3cmJFT0xXcmx3SU1rbzB3b3ZsRU1Hc00xcC81S3lpTExC?=
 =?utf-8?B?bTJ1WlFXZ0NzMVd6KzhzZXZrWDc3d2FhcHFDZERNK0NnVDVLYzBlMWNJOStl?=
 =?utf-8?B?Yk00c2ZKR3E4OHd2dnBqaWdmVHFhYXpkZGxhdk1RbzI3OTZzYzJ3MGhLQ2tM?=
 =?utf-8?B?R0dveGlMM3lsQ2RDSUdCUjJzNm5jS1cwWjJWQUtLMHdvRllLS2pQaGFRSnBr?=
 =?utf-8?B?djlwSXBUTFJ3RlIvVzZXM2t5bDVsbndUL1RUaUtPR1lRNHJnMFpudjB6WVBh?=
 =?utf-8?B?Y2wwb2drQ0dNSGN6Q2JPbmVYR0pmd3dyMlZROWFLbytZa1d3bEN2eDUzeWlN?=
 =?utf-8?B?SWZMYW5JQW9CclZtQUljT0ZFNzQyS2E3MjNOSzE2S1plZlg2VW5mOFk2VytM?=
 =?utf-8?B?ek9KeDFDME9PclAzWHlUN25NaTg1dUlJbGhmbjFNcjNLM2dmSWRmQlhDOS92?=
 =?utf-8?B?SDk5YUN3bk1XQlNRK0M3UHJQQjFPMm1iNmlwR3FDVlFGa05DenArVmkyMVd0?=
 =?utf-8?B?bUlkSjZ2UEhYWDJzYjNTN0paQzVmYXV3TkJGQUVFUEpMOGJHZ1Rrb2xGZTZ0?=
 =?utf-8?B?MS81a0MyR3owMDFod2VDcEtDRzhrZ05CeWx6cE53czd3TkZLR295MUJIUzVp?=
 =?utf-8?B?cENQUDM1aTNVaG4zMnIveUxwR3pMTk9IZXoveFlHUktOS0h4RHZjQWg2bUI3?=
 =?utf-8?B?RUxEMWpqZW8vcnVoVThCaVRobmVRTHVodFo3SHZ5SzBkRWhWMzAvK2VNblJG?=
 =?utf-8?B?M0lkcWw2UUdWYkk3VWl4L0RyTFFwUmxnbmg4ZGxUVDI3UE1hWFR6cjExSDdI?=
 =?utf-8?B?dVB4SHdBUG52TFU3UHZoUmd6Z1ZXVDNVWTR1bk8xeUV4SWtxNUFHeWxHbll1?=
 =?utf-8?B?YUFDZGgyUjRBMGdjYVV0bHdnTW1WT01XRm1ZUFpqT1lHcktkNlBxaExXSjZ3?=
 =?utf-8?B?amF2VVBtRDB4c2wvV1RySXYyeG9NRUp2QzY1RGJ4YkpTcVJDczJIY1ROUkNi?=
 =?utf-8?B?SkJxZkVTM2ZubVJZL1hnSHcvTHR2elArYWhwVzIvSGZSbkJCK2JEWk9Bd0lz?=
 =?utf-8?B?Vm5xWk51TkMzV1ZlZnE2SnI2TDdSZUE3OTFOYTZWWWp4emdSRzdBc2FjUWdV?=
 =?utf-8?B?Q1V5RXVRVlQ3aXd3NElLazBETzdDLzRVQ1hVa3g0ZTFLZGNOZzVaRnlIOE00?=
 =?utf-8?B?V2dPNWg3YVA3Rkx6cGZLN01vNGtCd21vL09oZFl5WVhhQkZhTVFoZHB0bGov?=
 =?utf-8?B?WFRZbkwyTEgxZFBmTUlib3dEOVNoUk9keEE4TU9OZlQwZ3R4RTlCcllIRFB6?=
 =?utf-8?B?UmZKbTdpcUdSVkdZVmdMbEI0OEt0eFlmTTZtMktza2hScEpoRUVoM1FFNUdm?=
 =?utf-8?B?Nk1KZ3NiRGtZV0lmeDhUMGxBN0lpZ1FmK3dXS1pJbEkraEhDYzE4c043TGV3?=
 =?utf-8?B?VGFxMzlkWkJDOXJ6WFlNUCtKZzk2TXZ2Ti9KWVlzWitOMW9LYk1YZ3VldFhQ?=
 =?utf-8?B?ZkV5ZWNySElUaWJ5OVJBdjErYURFQzA2MnFmS20zS3JtNitmajZBWHN6bFFZ?=
 =?utf-8?B?RnUzeHh1QnFKRFNWdWFmNWFyR1E5MVpoSUdjaUpOQmgra3VkY3VtZ1pVc1Ju?=
 =?utf-8?Q?+NhMaBknEEZjeNO8=3D?=
X-Exchange-RoutingPolicyChecked: CWmFkcZcBslOSI6ntfZnZIbRt9+OHkRhGWTmUJ560yWZ9NY7TFjR4mr8RF6wP9jrA8SK6DZr13C5MV48hQ5lZMCXjdZRzjUbTuvCPWrwmTebPutuRmSiq4goL3gq6UaXNFp0aK5IdTjXRl0ltJJLyRxJX2H9jNeAuWU+LtnHGWOWzwW2tIzwOH+JkpnQgdB5VP1akIo5Vhg8b+3hh22QiFF5G4xgAnlvGE/Oxzdrkj5devnqQY5zF0l2UZe9A6YEHxDIWytWZa39tV/bjOn9pXkVPJAKHu6V6WHFNRHckXOsEYFUmX1BjCg4obDPX53eIvAIgVOlu/cnzvxcCepi7w==
X-MS-Exchange-CrossTenant-Network-Message-Id: e0285ea8-177e-4348-67fd-08deac838c47
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 21:56:53.0203 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rE2ysD2a8OXnnLGIn8ZuXmAbslnMEEZlHZ+YHDjFAxNbnA+gC4ACJUx3g7quMOuW6NdEkFkzgnJWQLGkLU+i0Li2hunxLnf2wTuL+bvD2VE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6193
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778191020; x=1809727020;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=diVZjLvpsvo7RJZFbPR6W/+qkQ+V/EnAkMqC6orMa5g=;
 b=WENqXmYL36fAuYR376cK6m+RDIrZd8Orxd0hwBFCLmbeYG4Nbf7k53I8
 pqdfrC+siM2+EHFYMO5rfn2b4yLQMSXmrWyaRHVOYxSMOW2Wwty7v7Qm7
 PE25RA+RFrQIRepYj5cjcr4Ls00jbgFbDZbxCIeQ6fUE23OTAno1gPNfl
 DnzJDDPngAYnaub3n4bCOnCuGahIn2t+fXbFZaPUO51tdTAMu0rMcpUBx
 W/4eSb1k9QV+FSG7Dn8wr5ha+vzWbafRJ7NhzjOIxjT531JSzUfKq6VbO
 PQG7pKZRJN0VfAwRWFHuuremQ0YRcKcQVR3ZbP/KymhmEhr4woWrXryUI
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WENqXmYL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix missing 1's
 complement negation in GCS raw checksum
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
X-Rspamd-Queue-Id: 5DC104EF806
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:matt@readmodwrite.com,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:kernel-team@cloudflare.com,m:mfleming@cloudflare.com,m:stable@vger.kernel.org,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:eric.joyner@intel.com,m:paul.greenwalt@intel.com,m:alice.michael@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Action: no action

On 5/7/2026 2:34 AM, Matt Fleming wrote:
> On Mon, May 04, 2026 at 05:10:23PM -0700, Jacob Keller wrote:
>>
>> Hi,
>>
>> Based on your patch description, I assume that you've tested this on
>> real hardware.
>>
>> I dug a little through some of our internal changes history and sawe
>> that it looks like the hardware has a register setting in its
>> GL_RDPU_CNTRL register which determines whether the checksum value
>> reported is inverted or not. In E830 hardware, it is supposed to be off
>> (i.e. the checksum value reported already matches the expected setting.
>>
>> Perhaps your device somehow got the GL_RDPU_CNTRL register set to the
>> wrong mode and that results in the swap being necessary. Hmm.
>>
>> I'll ask the team to see if they can confirm this behavior.
> 
> Hi Jake,
> 
> Thanks for digging into this.
> 

I'm still trying to see if I can get someone on our team with hardware
setup to confirm this behavior.

> I read GL_RDPU_CNTRL on our affected E830 and the value is the same on
> both ports of the NIC:
> 
>   0000:c1:00.0: GL_RDPU_CNTRL = 0x0020a275
>   0000:c1:00.1: GL_RDPU_CNTRL = 0x0020a275
> 

Ok. Makes sense.

> Decoding bit 22 (E830_GL_RDPU_CNTRL_CHECKSUM_COMPLETE_INV) gives 0,
> i.e. the hardware is supposedly in "not inverted" mode, which matches
> the default you described.
> 
I wonder if it would actually work if we set the bit to 1. It could be
that there was miscommunication between us and the hardware folks so
what "inverted" means got.. inverted. (pun intended).

> However, looking at the data on the wire I see:
> 
>   - netdev_rx_csum_fault fires ~65 000 times/sec on this host.
>   - bpftrace at fexit:ice_process_skb_fields shows skb->csum =
>     swab16(raw_csum) directly (no negation), e.g. raw_csum=0xfb4f
>     -> skb->csum=0x4ffb.
>   - At fentry:__skb_checksum_complete the upper 16 bits of skb->csum
>     are 0xFFFF on every TCP/UDP packet -- the signature of nf_ip_checksum
>     adding the pseudo-header to a value that was the un-negated raw_csum.
>   - fold2(skb->csum_at_fentry + skb_checksum(skb,0,len,0)) ≈ 0xFFFF
>     for every packet, which means the two values are ones-complement
>     complements of each other, i.e. the driver stored S where the
>     stack expects ~S.
> 
> Negating the checksum makes the failures go away.
> 

Yea. Clearly we're inverting the checksum relative to what the stack wants.

I'm also curious why our validation folks haven't noticed or
complained.. but I think it may be partially because we have to disable
the GSC support when operating TSO offload, so TCP traffic won't be able
to replicate this. Hmm... Oh....

I wonder if the way we distinguish between these modes isn't per-flow
but instead per-device.. so if you have NETIF_F_ALL_TSO enabled you
won't get NETIF_F_HW_CSUM, which means that we'd go through the old
legacy path... Ugh. That might explain how this escaped testing :(

I've queued your v2 to dev-queue, so at the very least we can get some
validation and confirm the behavior.

> Thanks,
> Matt

