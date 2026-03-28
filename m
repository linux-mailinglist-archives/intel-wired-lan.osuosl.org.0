Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEq+L/hOyGnYjwUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Mar 2026 22:58:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BFF350170
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Mar 2026 22:58:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADBAC41146;
	Sat, 28 Mar 2026 21:58:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jV2BDMId0cUm; Sat, 28 Mar 2026 21:58:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3069141144
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774735091;
	bh=xtydYvEK59MlGb51P2ltZkQeWMYcEahga4IJbBb0RA8=;
	h=Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=9pbXXhVWXZdtsazVsgDJI5RoaGgA7EE5/sjTjiNHsg7dGgFISFpp9B/+sCLtpbK5p
	 WbWAaWSALDp/uKMyhMJ+yuREVpOc9k97K36heVKzXW4KWO6lEI6aB9y3eMJ7HpGlg6
	 VsaB866L/3f1KyaYekzP33pqd58xbTfu6MnpiUZ/z1JXnXq1BpnJUWkPIk0uC/GcMb
	 L5npB9zCIAfzxak5rQlRc8hOnjUUQCL5BzYhMNGvGcuHMuuJmPnZdVac+WH6+ddjyR
	 1/eM/IKDgaUOFv23H16a1aZXc4jh00wbmGaSYIi7/BNjN50OelAbJbHZbYyZ65RZhf
	 2FGTTRsT0LysA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3069141144;
	Sat, 28 Mar 2026 21:58:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 97C901D3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Mar 2026 21:58:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D43260847
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Mar 2026 21:58:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zvIGlbORgpst for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Mar 2026 21:58:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.48.12;
 helo=mw6pr02cu001.outbound.protection.outlook.com;
 envelope-from=ynorov@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8418360846
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8418360846
Received: from MW6PR02CU001.outbound.protection.outlook.com
 (mail-westus2azon11012012.outbound.protection.outlook.com [52.101.48.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8418360846
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Mar 2026 21:58:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oos0+bCaKLCu32KfSn1t4GiP+X8KB0ZXBYfEHcu3nQnWRpsBY3Gugi4YAjfTJy4yQyl6vpIvMzk8N6vzFg//YPOsuaNvvBG9/sk4qWj80lAB2KexSCsIoBpnY40vtjnu7uZXmBtRzc4UawqhZDizAksbHYBscAS1a3F+W6Gzf5O04C07WzE8kkjWuDMliGL6EpBdfV5q+0T+cQvNiFxU99wWwue5LHnvDl4yj1ApKTCTlnAxxMejjqFYq+r+vBGi6Vkg6xQmGRlBctTpm2pzexSMhPDlkqS/lUlk+qlw6uoKoarrIShLrNEOhAfNAHPK/hlbyLH+ARmFn8q4JHnIRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xtydYvEK59MlGb51P2ltZkQeWMYcEahga4IJbBb0RA8=;
 b=SQybveQCBOT2hZ98MO25zyILujVPCm0Dio0MMXat1vvCwuj2CutUO4rGIyXh8/q2W7xHeF83b642xdNQL+Z8T8BerQ3L8CZ+5OmQLyutCg+NZA3L4OZnyxHosAp6E3rK5d8tHSu4rebptaox4EYYftNNyX6tEjlBIf7FhFz53ecPJflIslo+HXCygsfV2C2c0XmSQfDoP7FCIoEsQjTVHyFXg4G6MzwodvJheoAulzjrrbnH+WnmfP1tmeJDXbfw8t7XBV3A8m87cRMbNLQc8cE7cRue3DklSGH7s9guMA0hq1uk5mO6x8dK8P366PU1fbPSlMtx6Id5JQLYG4vJjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from CY8PR12MB7171.namprd12.prod.outlook.com (2603:10b6:930:5c::20)
 by MW4PR12MB6922.namprd12.prod.outlook.com (2603:10b6:303:207::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.12; Sat, 28 Mar
 2026 21:57:57 +0000
Received: from CY8PR12MB7171.namprd12.prod.outlook.com
 ([fe80::4487:395f:3abf:ad9]) by CY8PR12MB7171.namprd12.prod.outlook.com
 ([fe80::4487:395f:3abf:ad9%4]) with mapi id 15.20.9769.011; Sat, 28 Mar 2026
 21:57:57 +0000
Date: Sat, 28 Mar 2026 17:57:55 -0400
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Simon Horman <horms@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Airlie <airlied@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Simona Vetter <simona@ffwll.ch>, Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 David Laight <david.laight.linux@gmail.com>
Message-ID: <achO43f7IA22uD19@yury>
References: <20260302011159.61778-1-ynorov@nvidia.com>
 <20260302011159.61778-5-ynorov@nvidia.com>
 <20260304114319.GI71509@kernel.org>
 <51b0f779-4070-44f1-b136-77737da6dbaf@intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <51b0f779-4070-44f1-b136-77737da6dbaf@intel.com>
X-ClientProxiedBy: BN1PR12CA0019.namprd12.prod.outlook.com
 (2603:10b6:408:e1::24) To CY8PR12MB7171.namprd12.prod.outlook.com
 (2603:10b6:930:5c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR12MB7171:EE_|MW4PR12MB6922:EE_
X-MS-Office365-Filtering-Correlation-Id: a17c37cc-8ee7-4ffb-da35-08de8d151255
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|10070799003|366016|1800799024|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: fw4MpfooHwVuwj+3QQ0eAsgJ9EvPAW77raT4ilchDf9sc95VVFLQhTpq4JB3d0wf6scZCUt3QlYNyfMpY6OX2yMSN1Gmfa0KTnJmSROvSbv9UsF4o48eSyhcInf7j3Xuv/47BGNb+1lGfGA6gNg4b676g0f+JWK55LWZqGpcBgYn1wBHiYr0osv9VMM2pIkB7dYAByUKqLQ4niqk8wncp80S5eL24wFD0iJ8fKQnORgpEOH2Z8iC7DL33GsihagSVFegtElrSOViA8ctXgIBAgG69YVyxlralmhHg4wgLK8hsTa5hvGlK+8BKInu18tnzjT4QDXemb615DEHbI7echh7GVZVWoXYAMHK9mjqXIOC4Syzg0SslVdqzaqiGtIWdlIrh0d6fo53V5qnfKLHzBbD79b43wo42jJe5eySryFv3hkhe/J9SMImwhxu9QpY+i3PlCaEZ6sNkU81UolmLlTEhSf/iDgNpf4YS0jvkfdV/1272A5BlxvYlw4PNrjTpvphLVaczvkD94RfxQs2MPEoI0FYmbg2V6xqvwvA+kLn0Ut0BTRPtZQAKk9tyM3HcZDINmQSvi9UIPpc4ICJpoKWKL4qV7BBvE6MD2RzQJK7lv19Pb/JrBiDDw0CmSwRbDvJ0lkE0mqQWDheZvyr9qPhwq3q8Nk83tldAttwR3v9XIfQQP8DljxyPaRmlFQ5h7FjQujsgcFUqN5qPYA7qJcpzqgSejqyYq15wfjg938=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR12MB7171.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(10070799003)(366016)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sIKJda4tGlvwb6Ug9RdyMGjyk3wchQoYJbj6u4td8+feeVCatSxfekgXNYKf?=
 =?us-ascii?Q?FvXbmVC+TgO3xiClR879ktdJhoGRLVmaktJuhup8d4fvOzGhq2Uq9FOPdncF?=
 =?us-ascii?Q?iYolEskbCXuBN5Um9qZZ53N/kr4l37p8OPiI8+AjI6MxTVXkMqxtVO/msuqN?=
 =?us-ascii?Q?aRNbgnAOcmARKU8W8nTBdLkjnaP58coQgsxO92AeichlwccAqFK7w5FQfgVA?=
 =?us-ascii?Q?MkIHMUKV5CTOV+bpeLr2vLZ3ShGZGhTOoXeywBJQOltHn0N22Qm8YdE86S0N?=
 =?us-ascii?Q?Yk9dmMDiIjw0HRS6w4ApmE8FOGzNT6tZCqkX0XdHjOVZyEkis7m0x41hLrse?=
 =?us-ascii?Q?kYCwurulsY7fNpWSdwOVLhZHAVD/ICoJnNyzUuGUpp7FYFL7U0fkf83ZZFG2?=
 =?us-ascii?Q?3hhNxHeN8AH1knTPRfePTePe/KtXv1gWDqs/wkphE3YQBlgRlSYn7NozKAgA?=
 =?us-ascii?Q?qL+6O8xRsmWQtCqLEWD8mzYWdRVLka8SgwNV6hjkAHq2Vh51DNroe1sbTCbk?=
 =?us-ascii?Q?O8R25NM77oC7No8A7Z1aPT7f9rWcy9C8KIsS3LWPJAMD3QyGfrFq+ZhQpLrO?=
 =?us-ascii?Q?rHyJ57DDH7SggFaRFDSApKSv/sTInDYMOViBvOGIYJWPti7RvHmxvjOnKJlD?=
 =?us-ascii?Q?kAWY2w8/afgLcdm+ASWOXPdgoKabLzpQKXVHg1ySdvx36AQ56y6+MKuiABgL?=
 =?us-ascii?Q?9Duc7r+ibvpOzy4+A/DzKqNpCWI5AzANLwp/ldc3QFDZUYNjFoZQt/aOwps9?=
 =?us-ascii?Q?mVIhnX8ygeoJCwL4VVjtjrXVSML6QuzRz2BqJwkpft8M0ThPKY798OySrc1T?=
 =?us-ascii?Q?zzTrzFSN7tXJX0QlBWY5A4BFlXEWKPKHDmKsg/RjbQhCG8l9s3UV0cQCaS4s?=
 =?us-ascii?Q?kqWBBfUVqqO1l1NgBj0IfyDkU77eWEph9+kXV7f5BR85KLRce8KOXM+cJ/O+?=
 =?us-ascii?Q?k32J60ViXjACTsl3FAAELh6N2tmEZ9+ZcjdC4FRIhBo4jQQEeZuSBcLBHSES?=
 =?us-ascii?Q?hNzqdisvfUqj/OKUmHx7ZE7IYeiPGw+XEE7Sf2A0IFFC6tzaWpcqhpImcJc/?=
 =?us-ascii?Q?7y0tmidMuPtKmaBMcEqWdJevZZmRPa9KyF3+tNrVrDIFWTokUY0wVKNhT3gq?=
 =?us-ascii?Q?lK4w8Ccnh/5m8CUh+G3k+3RBLflqYJyQbxaZm3kXNpiW9ZqvkW3pHE/ochH8?=
 =?us-ascii?Q?8TidP4qq5uoFnLk/lSBGJWHArPIzl0gYCW0xT+xYM4PszSxv0RhZMQ6RaNzc?=
 =?us-ascii?Q?MyhqD93SmnF3TihNqpgSYLuErPcVd2XQvAUZLb3HC6ZVD+gZRdASoS6IWUVF?=
 =?us-ascii?Q?kRC8qE/3qOy/crPRaNB3lpNfHScCPmhnkEN/FqCMdQYxa7xUFlHqeW5sfAhC?=
 =?us-ascii?Q?Bt2aYFRfAdUXxONPUARZGPcXG9wLQeNpp3ilJKn1DOQKqSTfoAI0GRwDWQ8b?=
 =?us-ascii?Q?tk/ASPxQtW6OaSLX3+vXob/bwyHaqMjykZFtEr+8w3Sj8dCGMZgwF8OZGFql?=
 =?us-ascii?Q?wNcKegX8ahdGsXdvjc3U3Xsnq/a7SDlL9sNoV6XsdJ0WqlHfAsWlyEf/T8RK?=
 =?us-ascii?Q?dqKmwgzjL1bmoLaP8iR/DOOgHGp75ePLnJ5UXnRAenNphZUvL7u9NoomnbI5?=
 =?us-ascii?Q?kfvWr70ybg+1RsbnI4pwUHMtnnYuX4WAKRJcic2IjdXqagwvxsM811tkcTqR?=
 =?us-ascii?Q?ilUaYkxKnZbp9iOpBqIYVI8Afm38wAL7s+ThPbrPAMQLcikzPuj9fliaFZzu?=
 =?us-ascii?Q?1tk/OWl83IsadadzDrgTEahj6eKAbBjMczGw7w171CVwj1vEx7l6?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a17c37cc-8ee7-4ffb-da35-08de8d151255
X-MS-Exchange-CrossTenant-AuthSource: CY8PR12MB7171.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2026 21:57:57.6229 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OLeoLEvCHMErQtouq823TaAhoAN3xQ9etib8vH3aOP++qPXcsr9XMr7z9RechfmNjL10g5n6ZS209E30ljiGAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB6922
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xtydYvEK59MlGb51P2ltZkQeWMYcEahga4IJbBb0RA8=;
 b=igUCcHe7GWPqD1wvessNGGLk2em9FknKqlhWz104dbquuHDAGvGKiPsxD3qGQITd8lCNbqj6C86XX3bMDNFZ5hXgGqoephaRWCtH9qgY8U9mA38P1ZPaRGUZwNTxjNIkZtUEESHMqJAyBj/Gm9BKta1aVZUn5eDYA7v+pHYmhzwSKZDTnB+rMUd3U88XAJYduovTOROfPDVUJgpLVDMQUGbXxDULq1k0UQwW21DaAChLv0CNHsV0le+vSMpBFqpjdNZdB18502fKayfk6T9uECCSqD+aUqWqkAWywXrOGONaZvFwQzXi+2BKBL9S3gmSmPvE3bZgwZZ5ZmchNhykHw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=igUCcHe7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 4/4] drm/xe: switch
 xe_pagefault_queue_init() to using bitmap_weighted_or()
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
From: Yury Norov via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Yury Norov <ynorov@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:davem@davemloft.net,m:thomas.hellstrom@linux.intel.com,m:andrew+netdev@lunn.ch,m:akpm@linux-foundation.org,m:airlied@gmail.com,m:edumazet@google.com,m:kuba@kernel.org,m:matthew.brost@intel.com,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:rodrigo.vivi@intel.com,m:simona@ffwll.ch,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:david.laight.linux@gmail.com,m:andrew@lunn.ch,m:yurynorov@gmail.com,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[ynorov@nvidia.com];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,davemloft.net,linux.intel.com,lunn.ch,linux-foundation.org,gmail.com,google.com,intel.com,redhat.com,ffwll.ch,rasmusvillemoes.dk,lists.freedesktop.org,vger.kernel.org,lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 52BFF350170
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 05, 2026 at 02:40:53PM -0800, Tony Nguyen wrote:
> 
> 
> On 3/4/2026 3:43 AM, Simon Horman wrote:
> > On Sun, Mar 01, 2026 at 08:11:58PM -0500, Yury Norov wrote:
> > > The function calls bitmap_or() immediately followed by bitmap_weight().
> > > Switch to using the dedicated bitmap_weighted_or() and save one bitmap
> > > traverse.
> > > 
> > > Signed-off-by: Yury Norov <ynorov@nvidia.com>
> > 
> > It's not entirely clear to me why this patch is included in a patchset
> > for the ice driver.
> > 
> > And it's also not clear to me why, but allmodconfigs - fo4 at least x86_32
> > and x86_64 - fail with this patch applied to net-next [1].
> > 
> > ERROR: modpost: "__bitmap_weighted_or" [drivers/gpu/drm/xe/xe.ko] undefined!
> > 
> > [1] 2b12ffb66955 ("net: mana: Trigger VF reset/recovery on health check failure due to HWC timeout")
> 
> I'm also seeing the same error and no apparent reason. Since this doesn't
> seem dependent on the others, I'll take the other 3 and this can get
> sent/resolved separately.

That's because the symbol is not exported, and the driver is build as
module.

It's already fixed in -next: 95d324fb1b484 ("bitmap: add test_zero_nbits()").
Let me know if you want me to send the fix as a separate patch in your
tree. Or I can take this patch in my branch, if you give me your tags.

Thanks,
Yury
