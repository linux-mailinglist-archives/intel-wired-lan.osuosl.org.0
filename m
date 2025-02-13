Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EA7A33A7E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 10:00:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBBDD835C4;
	Thu, 13 Feb 2025 09:00:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DXXoi6LuWTGB; Thu, 13 Feb 2025 09:00:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B73F080DDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739437243;
	bh=QVg9eLyeAd/Wyy2/+6Y/xuTeCCounOtk8gvRfXTZDZs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FQJm2qV6t/aXwUQoCbbo4VV5kJFSYV0GSnbS+7yukpiIxtTyStTT7rrYz8+FGDVmY
	 +IQQenpWA7u5vJBjtVMItArHq2DOsl+zKGZprNEGDFnuhM1kNj6htv2lYQQVOiRXtz
	 HAOst/nMyS+rHyUvdMRCzSYt/f+1uwJayYM9dWVL2nLSDAspbbPrhcSMvqY5DmcehM
	 56+/GDmTp+DQogFkj/rpv9xrHt99Es9Px6upgTCuTdhOo+At5fUzYsx95eCLpk+JAu
	 vjrsis/6MBiXJUP+ELCr7Dt3b6TN5LENMvQHoJP0wDurp9zn2RBpNwoykY3aHl0F89
	 fgtpP3KbCizJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B73F080DDF;
	Thu, 13 Feb 2025 09:00:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 28FFD199
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 09:00:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 16C7261AC7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 09:00:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i4mpdmqJdOdc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 09:00:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.71.51;
 helo=as8pr03cu001.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3D4B461AC5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D4B461AC5
Received: from AS8PR03CU001.outbound.protection.outlook.com
 (mail-westeuropeazon11012051.outbound.protection.outlook.com [52.101.71.51])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3D4B461AC5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 09:00:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BHi4zaumWa5PDIbw+1VPsG47Ekk/w6nM7R2KwY1c/YUfR3i1FgP0kBNodFqRec+6j657KTpWaHwEOJkLHUkfG7bYUvbbceigpooJX/TDMeY3uQgHDDpvI1XyTgnN+hIyB4SFwBaOiImxQQ0n8TB6x/LDmVtTQnwje+hqVirm1ZBtHWpjPjhf/WfubtYKFnZAK10MlhufRzwbwOW1VzBV86bvY98VCFZH3CUEAzXQeMn7TwXGH6kuk6iPBpzGG9YeBYzMwLI8CbKBcE8EdN4lSDjj8uXGSFvmPDW+oAsd2fzqU/y8yv0Ca1ObHgtInp5JF0RUuk001kqVvOAII1JHUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QVg9eLyeAd/Wyy2/+6Y/xuTeCCounOtk8gvRfXTZDZs=;
 b=bn8VgeFt7DIYJxJCxkevacr+vhLbwyfNAzbGGRJw/PKfYGT5Mg22MjZGBCYw0daTkMJTC7SQ10xlowNzGxJKP/74MScRx0CMOrdF+fo4/9dFwLf5WeUoAXBhbOYFQBk4wp0/tfnjEjEp9kPV5G1JGhsUfvc5IyI12uKIMEn4W0CsNHmf/xb+c/cPkXkICDp4qnzrpzAFpzOhY/Xi4t+eFt0GAC3cBvVrS/E2Q7fkyg0gtTL+fEQxAF7hRHv/YJoLSp9yCk81+eqGGboh+87Hcr5tLHUhOk6YEvaSuhUHz8esZk+uQYr0zyLdUaZvGbGkKaIuCStB8aNJR+rea9Zjjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by PAWPR04MB10005.eurprd04.prod.outlook.com (2603:10a6:102:385::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.16; Thu, 13 Feb
 2025 09:00:36 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 09:00:36 +0000
Date: Thu, 13 Feb 2025 11:00:32 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Message-ID: <20250213090032.epvs7rgw5t36ph7i@skbuf>
References: <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250212220121.ici3qll66pfoov62@skbuf>
 <b19357dc-590d-458c-9646-ee5993916044@linux.intel.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b19357dc-590d-458c-9646-ee5993916044@linux.intel.com>
X-ClientProxiedBy: VE1PR08CA0032.eurprd08.prod.outlook.com
 (2603:10a6:803:104::45) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|PAWPR04MB10005:EE_
X-MS-Office365-Filtering-Correlation-Id: c9397a47-f44a-4222-30ae-08dd4c0ce192
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eTRLcHpTL1FNenZ2dVZBUE9CODBCckF6RktTRXh4OFVzajdvQUhwL0ZEdVZK?=
 =?utf-8?B?UVlZd0pDYjVnMFpmSkNNY0h5cFlwMkVMMUZpbDlFbWRTVHhFMTZVRXIzSWxm?=
 =?utf-8?B?MWlnRW1oNWZsZm55bVlhc3ZqeS94VkQyaXNYUnp0cklHRHhZaUlOR1dWWGFz?=
 =?utf-8?B?SXN5eTZLRnpDaUJsWWFiOGg1eC9WNXpzWGFKaHV6Q1JlaVduUWlNYVhCU1pB?=
 =?utf-8?B?UU1IUnhhMXNxM1NLNE5scVFES0tEUjdQV01zaTlkY3BWUmxOb0E5TzQyamZk?=
 =?utf-8?B?Y3JSOXlYWGx3elFFVmtwWkI0R0RXS2VWdDJXQTVYTy9BM2JWN3A0dE9VNkVp?=
 =?utf-8?B?VXJMNUl5N2lWb2JWaVl3bUhEa3VFc1d6NEJrOVZqNGlhU1E1eVp2TytsT1VX?=
 =?utf-8?B?ODdYdy9COUt0cjFRYzNOdDNURjY0RGVQcjNSdEtoVzcxR05Rd09CdjBTUmNQ?=
 =?utf-8?B?VnJDcUJGUndvMzkwenVYK0FqQ0IvdWF4MDh4ZmJlcHA4NXV6eTJOUDhTVGpU?=
 =?utf-8?B?TXFWY1lrMXgvVlJqS1BuUU9OekxBUWYya2FhR1cxSjlFM0F0NVZpQUVyaC9U?=
 =?utf-8?B?Z1pjYnZKSWVFUXhHRDAxVEEzU1ZDeFRjNE9uUm1zeHdpY3lBbURrRVRGNUhN?=
 =?utf-8?B?NGwyWTJTMDlETHdLQUw4TEQ5RXRlU09lSHZJUlBsL1ppdGY0dGh1YkNnUitD?=
 =?utf-8?B?WkN4Y1pjZXVZQTN0dGo1RkptclFlcVFmMWdsUDl2bEV2WTErckdLcEg3SUkx?=
 =?utf-8?B?YWJqazVMSi94VUxkdWtCZTNxbnVTZmNvV25ZNHc4U3Rvb0xBV2NybFlSclBw?=
 =?utf-8?B?QWpjU0pUWThndENLZWZPREdoNmF6R0JOdDZEcXlIMmNmT3VCdVJTaVhwMFhZ?=
 =?utf-8?B?SnhnMFA2dENqOGVYeWNreVZkUElUa0RHSVJtSUp3aU9FVnp4SE94S014VFFl?=
 =?utf-8?B?Mk1POUVvNGRkd2xKT1lEQ3c1TkZyWUhjNEhFNDJKd0ZwL0djeVU4TmlNWWNT?=
 =?utf-8?B?US9YRWkyYUtPUHliV3hmbVRZbGp0VEVyZTF4TktMcjRNQzNnaG1TTGUwSG51?=
 =?utf-8?B?c085bmwvczVCR0FUVm5ITFNreTZzL1NDeUhaVVdnR05EZzJwcXNxWStXK0JQ?=
 =?utf-8?B?S1lJb0NKWjdJSjBzVTBxTzhQTG9qK3hKdmFnODk0Nk1hWWxCdHJWUGYxeXVO?=
 =?utf-8?B?VnZrdktGNm1BRDBtOUNoaGxSa1V4Q0h0YkswTGoyK2hmSHJmcmpKMFB2bXpz?=
 =?utf-8?B?bFlpVjNBYlhLWUY3czA2YUUyNzVpdnZlVEZ4bDJHdDl5dWpxMGF6Smc5TGEr?=
 =?utf-8?B?elhESytHbzRrSFZxVzVtUzZDU0o2YlVCYU14dnhYNVY4c2p0REJzTHRJcVlL?=
 =?utf-8?B?cGZwcGZTOVI1c2gzOFU5N1F6QVhLOXA5UnQzQkxnQllISTRGc25WeUtSOFB2?=
 =?utf-8?B?ejFmVkNPN0Npc3hlb0Z5SDNwZUQyREFZSnlOZjkzdmhkS3NBanliOGxicloz?=
 =?utf-8?B?NzhwVHFWVjgva3pXdFBtYU02QXpjUWhTNkdjS21YSEpCbnF1QmZZbC91cGlJ?=
 =?utf-8?B?Rkwwektyd0U0Yjd1ZXFvUGE0OEFvSDkvMC96bW5CczA3Rlkza3pCYjZUTE5W?=
 =?utf-8?B?cUNDQlc4MCt1YkZ1dUJEdkQ0bVR2NzUyVnprVENEdnA4b3hDK2doYVowODM3?=
 =?utf-8?B?QXluWVY3OURTVEJvSGhCN0JGemxZb3c3NmFEcXBBL2s2cjZOK3VWQzNONzdQ?=
 =?utf-8?B?cG01NTFMK3I5eCtGWndkdlJ2a0xjOGNXMTBKNGFqT0M4MHMwdVZ2eW9Vb0pT?=
 =?utf-8?B?MU5ES2pSL203WW9XRHRPNThZOUlvYlMrci9kdFFDTWtmak5vUmplZlBwWVk3?=
 =?utf-8?Q?A6XH/eQKK9FjL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NVQ0cW0veU53OWFTNU9qVzh4OGtTcFFta1ViNkV1Q3gvK2xaQitzcVQ5bnNP?=
 =?utf-8?B?NTV4ZkJ2eWlDTVoxVkFVRG1TSmtvYXV5K1Y0TkcwQmlxcU43Um5IZTZITkZi?=
 =?utf-8?B?aUpVaWtrS21sMm1oZ3BYVE9OWW00cFVjVkFVbUFjYXQrRXdKM1piYjVxZnk3?=
 =?utf-8?B?UzQ5OEx6NXFHc09tQ2RtbmwwaytoVFZRbFlCcjR3a1hUejNjaVpzZ2VjaEhZ?=
 =?utf-8?B?ZG92clVIVUcvRXFmZ0NobXlBejVYVTRucG9Zby9mVnZFRmlXYmt5bVlMTnNM?=
 =?utf-8?B?YS9qaUkwWVplalErMURtK2x5d1JsbkVnbHZSbjIzT0tSdFdVdm1pdHFQV3lw?=
 =?utf-8?B?RVdFSWN3UmJqalRGSXIweUpoYS82WWc3bWhQK2lLWHNNa3dRMFVOcHhpN1hy?=
 =?utf-8?B?THcrT0hNQnFtMXdLTm9vYlFTQ21zME0zcFNiYnFzanNPZzNvcFdSR250M1NB?=
 =?utf-8?B?M2FOSGJYTURpWlFoZjhNRE0zcnpyZUNsRXBlU3BtYUFhaVg1SWlyVUN6eXkz?=
 =?utf-8?B?WDcyQStWTUw1OHdseEtwUDhDZkE0OEduNnh1NlRtU2dzRVRCT2pPTEQzck5r?=
 =?utf-8?B?WCt1SkF1OXhpWHN5N1g0dm05b2pMajMrc1k0NWdEZ0RDa3hQYWhDeFBwR1do?=
 =?utf-8?B?c285SU9GaStYUzZjRGduMG83UGk1NnRNQnY3N29ZVzlFejFqdWcvTFl2N200?=
 =?utf-8?B?UlBpM1M3UWVRcGt2ZkhtemZmRUhGRCtlSEhISENnZEY2NldrbEtyOVp4S085?=
 =?utf-8?B?cTd5cXEwaWdmRVVrV0dvM2liOUU0T3p3d0pDUkhGWGcyZXNwZy9rY3YvbGo4?=
 =?utf-8?B?dUVYMU5LU3V3RmY4MTk1bkcyOGU0eDlxcy9icFJieHlyYXViL2V5RnYrWm4r?=
 =?utf-8?B?SzFBdDZoZHg2MktVZVZOeS9qOW5WWWVEdW9IVHFwOXpaWGgrQlRJME9yYmUw?=
 =?utf-8?B?Ym5LdGdzOEw0M1JhZHR6WlhRN1VTdVVQQmRmcmo3by9mYXB1QnR2QkFiNG1G?=
 =?utf-8?B?MjFITkdmMlQ1ZC9SdFFpOVlJb0JNVGVub0JxUGFHaVdxUE1NT3F1bVJRaTRC?=
 =?utf-8?B?WUNVK2hubXBnSG1TTXlDN3F1SFFKU1lEWE9YZE5xSEtpZ3dKWTVyamt4dlkw?=
 =?utf-8?B?Qjh3NG1QbFVhT0M4MXgvL3hUTEFaRmZNV3dqN0VSM05KNFA4c0FJWkpRMWJV?=
 =?utf-8?B?dnBnSlpNVjhBaVIxa2lTcnFqcldENmhqc3BnVjNSQ3pFalJ2TXVwTU5DQU9T?=
 =?utf-8?B?Ujg0d2taeUMxaDVUOUFjdDhNRGUzTllnQ3JXbEcyZDN2N3YvL3U5MEJPcTd0?=
 =?utf-8?B?anczWWx5dy9kWldEb0IwNWtPbWVWZGtDdHQ3MkF3OWMyV3FxMTk3SnJleHE4?=
 =?utf-8?B?aTJ4L1BRRTIxWVl4VEZHYzg2azlnMTRodEFublFRdXM0YUNUN0oxbTRCT1Vq?=
 =?utf-8?B?MnkxallwU3J4OURVclBtU3RvQ1pGVy92RjVCK0o3eFA1aEJITFNjK0ZLYWJR?=
 =?utf-8?B?dzRjM04rMERxeVFBR093SDNPbzJyaUxja3AvMlNHYnNEWE9LRXM2WGVMZFlO?=
 =?utf-8?B?cEpIb0Fpa3FyemlZQUdIdmcwSEZ2ZWJGT1UrYVdPWjBBWG9EdnpBdnVvU0g4?=
 =?utf-8?B?VUtSWTlqb2EwMnFCZHBuZGxZNXVIRXBVV200RGlFY1dzbXpidGg0M0VndXJi?=
 =?utf-8?B?ZmhSVmJhSEwzUHFaTjM2U3Y4SDl2K1RkMEVvakRqZ05nek94TFhIM3NqbVR4?=
 =?utf-8?B?NnoyZGE0NG9lcUJqdUhjNU4yY3J5b054K3MxUzNWcHloREZvTThzeFN3QTJZ?=
 =?utf-8?B?NWN3S1kwWFgrbmxTVWJKcFlWaEZXU3VMOTZjOEFqRVY3bkJNOVRHZ1NrYXFl?=
 =?utf-8?B?NlN1MSsyTnlKek50bmJXb1dmelJQWDZsdDBWdGI0UW5ENkhPS2syMXVxMGR4?=
 =?utf-8?B?djBwaERHWFc0aGFuemNSU1p0OWNiMDNXM1Q2VnlpV2txazJYeVpQWTh0dTZN?=
 =?utf-8?B?a3Z3WUtxNDhPZnErU2diczJBd1pVMTlvbVFaRE1YZ0hLWklXSWkxdHJKWXJK?=
 =?utf-8?B?aUFiSzhHcVNaV1RZN2lQTzZkclUza0FSNUlmZE1RSlgza3lVdHZoK3FVcE1u?=
 =?utf-8?B?RW8yMSsvdDlDUEpOLzFXaEcwcytMMnF5Wjh4alVySGNuSDRTeWFoeFBOR1dP?=
 =?utf-8?B?YWc9PQ==?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9397a47-f44a-4222-30ae-08dd4c0ce192
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2025 09:00:36.5920 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wa66ksbOGu3UjAXRfqtHLlz4LSVB8V46FC2S1A79rW/JbeFDu1rmsJIZMXj9hunJ8opApokqnc375qIPw9ag3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR04MB10005
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QVg9eLyeAd/Wyy2/+6Y/xuTeCCounOtk8gvRfXTZDZs=;
 b=U6hfXUrwd3cIW9rwrwTq6HLleUp2RgyrE9RDeViBwn71e4+dN66fGNm8Js+vnqOiP2z0qnIqqT/PrBzQ2IMFbsloiBSsGjtKSH3ckEdaxXd9RwSu9RYharN3/HgOEruuZHrWsAqr9LeTar0uVopVS3fpwf87b9ih13ZsXCSn3MY5HNEpFhCd57JMggfUy+F7M0WR6Q/IGYMdr4kt3OC4gFRx8NwKXV8XCQ4dDOjQgp81iFAWyvwhK9SKXN+I8DwiVme7RpnmvfoSxEubnhuVTgkQ8MBojwjmrLWE4/uEAR26Qb41FBC4NCyVTmAwzRyyPmoZAbwr2cM9XbWVfRhfSg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=U6hfXUrw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/9] igc: Add support for
 Frame Preemption feature in IGC
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

On Thu, Feb 13, 2025 at 02:12:47PM +0800, Abdul Rahim, Faizal wrote:
> I was planning to enable fpe + mqprio separately since it requires extra
> effort to explore mqprio with preemptible rings, ring priorities, and
> testing to ensure it works properly and there are no regressions.
> 
> I’m really hoping that fpe + mqprio doesn’t have to be enabled together in
> this series to keep things simple. It could be added later—adding it now
> would introduce additional complexity and delay this series further, which
> is focused on enabling basic, working fpe on i226.
> 
> Would that be okay with you?

But why would the mqprio params of taprio be handled differently than
the dedicated mqprio qdisc? Why isn't the additional complexity you
mention also needed for taprio? When I got convinced to expose
preemptible TCs through separate UAPI in mqprio in taprio, it wasn't my
understanding that drivers would be reacting differently depending on
which Qdisc the configuration comes from.
