Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41078A33D66
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 12:07:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C07B561180;
	Thu, 13 Feb 2025 11:07:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gEvrTHPitw8K; Thu, 13 Feb 2025 11:07:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 107F6611AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739444827;
	bh=RWy5xuTUOJZSCDSdvQGGVxVarmblxdzapTkfTv14mK0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NysMM+O8/W8Alk0WLHnoThZSSE6JOfmxc/vbUWtP6cyLAFAsONSKafm9KOlreG8sl
	 eILd/JPc3cc8jSYaXJsF9UrxPnTeBLH4HVe65+cM9gKBOEENZrny4CYic8jlftglEw
	 lpj9dcR6nv6FKFGFOniT2E1A7fTSYDf+b2QOjMi3nfr9XoNuIqKCSKVJRXX4Nkz+Ug
	 7t7h8NWvfXJXZ9uatdbnvkmlgRnTJWIcFPypGquGUxJnpIZev1Ko3NgcmrHH/k/dR+
	 RAssJcEbNCd7NpkWRBHB30LGi8PNA28WPiZOwB1yPNrxp/F15RxKdI7/GTr1t4Cu3L
	 5Nh+KVsHGKYPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 107F6611AD;
	Thu, 13 Feb 2025 11:07:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EE19812D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 11:07:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D23E940C15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 11:07:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CI5Yx3EoMoj1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 11:07:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.71.58;
 helo=as8pr03cu001.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5A88240C12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A88240C12
Received: from AS8PR03CU001.outbound.protection.outlook.com
 (mail-westeuropeazon11012058.outbound.protection.outlook.com [52.101.71.58])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5A88240C12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 11:07:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J83AxjsJ1oaNtz/zI/02HnWa/zUw/Nf5DCysJdgWWjMMqqLsEQNkEZLMy6uMsWzexm+N7mJsARcbC8ORLlLVDdsGznCNbUIwJe0U0hbqK68R8x7aNOzTASsknMeP2NkaLpJzCPZHvfHNV0SJaVPRMTFdBnkE+6MiZSscYkkxaAPGG5sZTUEGy6O0hpSLMk9uVakrFB9DQUqbWzs99QkDd0jWYDb6c9dNJI9ZPaok/2mYi73xjojyn1TOT871OMJPd39IoTVO+TQNkb5vgm7xKGhntiPpwxSxfoVA4MhTpZwEaiydwy7OyiSjWVsXeIJl3nh/7CkmKfpYkpqvMEVghQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RWy5xuTUOJZSCDSdvQGGVxVarmblxdzapTkfTv14mK0=;
 b=veWBHInWGYjzaY5oHFtK6XigFxm1bFsDnSqLwRfrK0lP4n8UaahkcgaAclzA6ZOoTSnVRRzfcV1AjINyIKhub/F11Mnm1J5CXHkYyDtCjv82n+PTpWr+ElPLV96s3lXIEDlZ7ohselfQ3XkD7niS5KuN7vQSvG+e8lwelh3l/i8HRwORiCRzadtPBbqAVf2kGLGnEmPbREAiRV//piSpyI3grGX5G/dcTF9CciS9huKiC+FlIpFLBa+9HflkZQ9GxedDj5R1KX/mksKroAqdhOVcwXhU+vpnWq8TH0tYKt2o35ffCtxqQshb5uqM0VdFRQDG9kJMm6qypqmDhyUTrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by DB8PR04MB7193.eurprd04.prod.outlook.com (2603:10a6:10:121::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Thu, 13 Feb
 2025 11:06:57 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 11:06:57 +0000
Date: Thu, 13 Feb 2025 13:06:53 +0200
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
Message-ID: <20250213110653.iqy5magn27jyfnwh@skbuf>
References: <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250212220121.ici3qll66pfoov62@skbuf>
 <b19357dc-590d-458c-9646-ee5993916044@linux.intel.com>
 <20250213090032.epvs7rgw5t36ph7i@skbuf>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250213090032.epvs7rgw5t36ph7i@skbuf>
X-ClientProxiedBy: VI1P191CA0003.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:800:1ba::7) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|DB8PR04MB7193:EE_
X-MS-Office365-Filtering-Correlation-Id: f926b6cc-666b-46d7-01f9-08dd4c1e8823
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXdtNitMMzQ5Qzk0MDIxYXJPZUJnMkJJU0V1aTl3QzNjNkUyYU9TbGpidk1J?=
 =?utf-8?B?dDduVTk3dmtKMkl6RXJFT3VpK0QvbC9xNGhsTW5sSG1JQTZpT1NPQ3h4OVlw?=
 =?utf-8?B?SWYxNUhpUjZjUDM1UUprSXJGSGtjM3FuMEtHV2xyaVZmR2lETTZRMnY4WUdS?=
 =?utf-8?B?ZHEwRGJLR2RUUmkrMHA1YUtqNjZBQVJFeENmSVk5MXZWNDZFeU5xclJFNjFD?=
 =?utf-8?B?SzBrdTByTDdmNVF0NVQrYnpQSjNoZ0N4RXpJNTNtN3BXNUtkbUo0VHd2SmpB?=
 =?utf-8?B?WThONFkzYTRnWlM3OTIrbnN2d2dSUE1jRFhBRDU1UC9zY3FyN3Z3L0FIL0w4?=
 =?utf-8?B?L1JjVlBxL1JnbGtiUWxPTGt6MWJoVG9tdk56c296emJMUWhLTUZkU2kwV3VW?=
 =?utf-8?B?VGlHYlA4WHI5SEtpRWRiYVZOTkdOMU50RXE2VDRzYVhyeFVsdXdhbDcvTUhx?=
 =?utf-8?B?d2cyTFBRU2VrQlhLQy9MRk9jNktaVndST1BXQ1d2ZmxrWFlHUUh4ZGUvOER6?=
 =?utf-8?B?Q3RpeENtK1Y0RkZoc3dvZ3FVYU15OEgrMXU5MjRKV0dTaHFrdmtoTTFRS2V0?=
 =?utf-8?B?cnRwdHh4bDB0M003TTdEMW50aWpsNGsxekw1ZzFmdC9JNDNVb1J5OWVmNkkr?=
 =?utf-8?B?RWt0VTVxN2Rkb28wMUJDK2RENm5JYmpsbjBZTlhwZkEyRG9seUpERGhnR0lr?=
 =?utf-8?B?RkVzL1NYcmtFZndTdm42b0hHQks1MGxocUZiM0MyTklMZTNWdlNYK2Y4eGtF?=
 =?utf-8?B?ZjQ1bmx1WjN0Tmg4Qi9SL3JOejlKMHVvbUdoT2ZLekpzYTZmMDFhaVRpNG9s?=
 =?utf-8?B?TTZGR0NBSnNqeVNpUGgwRWxORjJUYlM4WmNtWU5rcDdDRDRZK2hWUWMwL1ZB?=
 =?utf-8?B?Q0RkYkY5VmgwSHZBL01tUkdUYUttUG94WXYxaExWai92NU1pQkwyQVlPR1VX?=
 =?utf-8?B?Sk9ka242THdUMndRT3A4NjhtVkxWdlN5UmYyTEtVTUtWSDFObFJsVnpNMVNF?=
 =?utf-8?B?ZStzeFEyeVRnaGoyVDA2UmVZaFdSOHdGUnVROUkrcHh4VkV2NXZUS01zODY4?=
 =?utf-8?B?eFQxVFlydDNwNktwM1RVL3ZaRVZDVG55c0V3ZW8ySGpxdjhCcS85R3BiSDJz?=
 =?utf-8?B?SEduYUFFTDhYSmZOTnNyR0U1ZkE2Y1Z2Uzd5RXBJYUxPMW11OXh3NVF0cXl3?=
 =?utf-8?B?dUxUakNXOGRaMUxVUXVFTXA4Y2YweVdmaFhyNU9PeHQ3bGExTTd2NnBZUmlp?=
 =?utf-8?B?UDJnSTJlL2VvaE11cmdNQm4wR01GdzNyKys5TTBucjI2T0JXUER4MVhvRFhp?=
 =?utf-8?B?S2QrMy91Q0VVZmZJdnc0aXJrMitpWVFZUW03MXpWUXRkV05MSE5FakI4ZE9E?=
 =?utf-8?B?djNzUVlmWGo5MGJTVjZkZ1crT2kxZDJ1VlFDZ29PWjNiTUFJcXE2WGI0bzlW?=
 =?utf-8?B?NkcrSXJNN0NFUHh5Q1FUR2xDOTRSTGNkQmF0UTF5SnVHVlg4cWpSUmREaENS?=
 =?utf-8?B?aDk4M3pXdUxWbzEvRWVVc2pNdDc4cTlVcC9KbWcvWnFHT3FLM0ZqdG9hamFF?=
 =?utf-8?B?TmI2SGx6MzBzWGNGK0MrK3BsVWMxY2l1YnFqaXUwdytxYlR3aFJHTG14WWhp?=
 =?utf-8?B?UFNZVU5VclExL0QvNkZlVy8vOWJmTyttcWQ0ZEJWY3dZTE5QanQ5Sko1Y1V5?=
 =?utf-8?B?cGQxOFhpVmtMZDZucDVDOHdxZktyU3JVUEtFak5WSzc5ZWgyZ0JMcWJOS1lE?=
 =?utf-8?B?UnFZSkFPMkNXOUVWWVpmYjVwUWZMUk5FN1lZcFFrajIyZ0RkL1FWSzJFOUkr?=
 =?utf-8?B?RUJlNENzUmI0aWFpM2hSK05MWDdNcHgvYnpOZ3NVS256cUhLcXVEclZ6d0Ft?=
 =?utf-8?Q?LbIZ0b7ol12he?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SHlDdEpyOW5TWE5leWtGbTRDSnIzZVhOaDV2WHdYN2d1VVd5elpSTkRFdkRl?=
 =?utf-8?B?N25vMXJZOHNtNi93RTUvWVFoVVJaZGM5ZTNSRlVEU1NZU05qaGRoZGg3WXhH?=
 =?utf-8?B?UFg5cG9HaktHM1hGMGh5Y3hlOTNEbjFmbVFXT3lhcmo2TXNkMnYyYnVsNTN1?=
 =?utf-8?B?eEUzVFE0aSsvSGRnM1J0Q3BpT2hoMkY3QXRXNEo0eDdCYVhPL3AybWlFR1lR?=
 =?utf-8?B?Ylg5cHFKZ0RqNnI2UW8vMHFQVVFmV2d5UG8vdkZDaWtPZkFVakg1VFpoczY0?=
 =?utf-8?B?Qk5YeW9ob2MxTEdqOFMrSW5rWjFCMlNRTDVQc2c0azJBdlRkRm9jYjFMNDJR?=
 =?utf-8?B?Y3BuMFFRdjNzZDRJbFFWN01zSUI4RjljOGdsYThIN1Z1c2VDYnQ1YjUzNHFh?=
 =?utf-8?B?UFJIVTBFb21SWkNuSFovNTZubmlQNk1VaUltdGsrYXVidERUbUpNVlFQeHNH?=
 =?utf-8?B?Wkt5YzY2ZE0yWTFuVDU3WGFGZ2x5Smtkd0ZKUkZvVEVpTmJNTEVqQmt0alJs?=
 =?utf-8?B?R1VqK1d4VkdIaTNUWnFERHI1aWFzNGpCa2pRenZKd29iNlNxKzJZOTdCVnNh?=
 =?utf-8?B?K21kWEVSRURmaThraVZNR2NCSUwvQnp4UDVJVHQyNVM4MElCMmZYYlMrS0pv?=
 =?utf-8?B?d2d1RERVaHhGZHBaTG9ROHNLUUxROHdacHpibUdqKzhOTG5XaGlyQ0pPWnVD?=
 =?utf-8?B?QnlidmV1bjBzc1ZXK2RNSDRhZTdUN2NnYWRYWG9wd2o3eFVOaDRKb2NQYmcv?=
 =?utf-8?B?K3U5QTB6NXNoT3dQbHJ5bi9GWkFMV2E3Y3psYlpUSTFUYXpMVkl2SnNlNmZj?=
 =?utf-8?B?eXVZL1ZKMzgxVTQrYXBGTnA2d0JiOGhTdVZDb0F0MVVXMFpDaHJWYlJSNXpC?=
 =?utf-8?B?QnREWTRoTlllRHRXanBuTEJLeGtIWE0vMDYyNVpQdjVxOU9YNmVIY1ZYZ1VQ?=
 =?utf-8?B?TmtjMyt0OUFLNnROK1FmblArRytva2lqdmRDL1QrRG51dlF2NXRMZ2lHb0Vy?=
 =?utf-8?B?eTRPektVLzlsZEw0NWlCTXBId1Z3TThhcWhoc25EVThRTXY0QS9ZSnhJYm0x?=
 =?utf-8?B?V2RsT1UrTG5tWW9zWDR0djFvYmVjL3AvS3VFTlpRNWJhbC8zbjBZN2h1SXMv?=
 =?utf-8?B?S0t2WWplc3hDdkRvU3J6a3ViOFlGYnh1M2NXOWs4KzBESStQa1QrMFdUOWRD?=
 =?utf-8?B?cnl2dVU3amFVd0UwRUVPOXpKdmNyTnZZNG80VWJTb2xvWDQ2TXdUZTN0Zzcy?=
 =?utf-8?B?aWlHNWh1YklTY05qK00rUmM4QmY3eERqcXZrb0RWY05CMEJhVVBsN1VVSTB1?=
 =?utf-8?B?MzJRejhCcXh0Z0J1ckFNNnF2cDVjY2s1c0l2dG1kT0dwaHd1QzlRbXVJM3Js?=
 =?utf-8?B?WlYrcEZKUTFqL252aTFmQXZpVExvM09mb09iZDRVcWtQKzZ3dXZvK3h0QWZV?=
 =?utf-8?B?T3JuVzYvWlRvakdYbHVTanQ3d2J4eUtzNVlhdjJoSnBqSlErejNma2lUYS9t?=
 =?utf-8?B?OEt6N0FKTDRmTlJwaGtieFRRR1kxSkhmSnBiYzQ3YmlOOExXTzhwUFI1bUVL?=
 =?utf-8?B?OC9YamYwREtuVGtlbklBRTREWHlkemxFak9KUzhFa1Q4clJTblVwRS95Q2pi?=
 =?utf-8?B?ZGZ0ZTF3d0E2M2IzbWh5SlBvWXlEN2VXL251MkxnYnpMemhtVTRXejYyR3pZ?=
 =?utf-8?B?dXdKRDg2WmhibmxpaU9MZ25VOURPZjgzVXBQMXRtQ0U5QlUzOW0xRjJCNFVw?=
 =?utf-8?B?VnRtKy84eGpXL2lQd2s2VG1FM0lhd1BHd1JGTmgxd1dpNnNMZGxhanZXZXpw?=
 =?utf-8?B?a2U1NDFvYWIrU3pKaHMyamhhUXVrVEMxWm5kTnEwTkEwbWxFS0t2ZTJ3blFB?=
 =?utf-8?B?Nm5pVEVTMi94d3hOREFOTGVmbk9vcW82VXRSd2lIbkJEVW1UcXZZSDJudC94?=
 =?utf-8?B?U3VLdXlVMHBXakpxR05DQkMwa3RualozN0NCdDR3djhUb1JXUHJ0YWNwVkJa?=
 =?utf-8?B?cEpVc0FGYmh0NUlwdGhkb0FNVHN5K1dlc291bi84N1htSVZ2MlFrUk5uWGNm?=
 =?utf-8?B?OHp0Q2FDcU1RTEY1M1ZuUC9heE5LbUxXUWlmM2hmYUU5ZE5HSW9lZEdSTnl0?=
 =?utf-8?B?R01sbUZnalZ1cG5EaXFhLzNGOXFUTlFubzg1SnIxT3Q2Y3ROem41REl6VUU2?=
 =?utf-8?B?ekE9PQ==?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f926b6cc-666b-46d7-01f9-08dd4c1e8823
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2025 11:06:57.5165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0/3pfRys8CDCpMeyJblx5I1yJU+lDxy0LAJEt+58t5WFfQQCkn10XRii5x9oiPZZD8oj4ez8Pl5MNGvx9T6vNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7193
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RWy5xuTUOJZSCDSdvQGGVxVarmblxdzapTkfTv14mK0=;
 b=XnlXL0Z3W9aHnKCk8ycZXja7fTpEamS3E5pBDNjMMAorHTZFZmw3HafCLk+LlKc+Sw4a09SNsrLCPIKHzoV8jWmowFqhfq5hetV3djhni3ab475yOwbyhMqUShYBaac/Vr3PAQh0a5zVNlN4TFCbQdlkXzDKlUZcHb+CN/87n0lv0o3Eeia+kCsNK/PzFGm1jREOHFYxGQVW3LrSnHAqSECL7I6OzYTRg/IhCkQxajRN0YaIatI31H4/bMA7vd64a1sTbToYV7Eso6zc9Ita8qpb17y017dr6XGFAhGn44hza6CBVMG52dzYzIBkSIG1PN4b+p8PY4gPGfQHMQ+47Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=XnlXL0Z3
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

On Thu, Feb 13, 2025 at 11:00:32AM +0200, Vladimir Oltean wrote:
> On Thu, Feb 13, 2025 at 02:12:47PM +0800, Abdul Rahim, Faizal wrote:
> > I was planning to enable fpe + mqprio separately since it requires extra
> > effort to explore mqprio with preemptible rings, ring priorities, and
> > testing to ensure it works properly and there are no regressions.
> > 
> > I’m really hoping that fpe + mqprio doesn’t have to be enabled together in
> > this series to keep things simple. It could be added later—adding it now
> > would introduce additional complexity and delay this series further, which
> > is focused on enabling basic, working fpe on i226.
> > 
> > Would that be okay with you?
> 
> But why would the mqprio params of taprio be handled differently than
> the dedicated mqprio qdisc? Why isn't the additional complexity you
> mention also needed for taprio? When I got convinced to expose
> preemptible TCs through separate UAPI in mqprio in taprio, it wasn't my
> understanding that drivers would be reacting differently depending on
> which Qdisc the configuration comes from.

If you want to reduce the complexity of individual patch sets, I guess
you can keep this one for just the MAC Merge layer (ethtool), and then
group common handling of preemptible traffic classes (both mqprio and
taprio) in the next one.
