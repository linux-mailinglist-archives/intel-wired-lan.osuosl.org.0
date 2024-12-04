Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE409E35D3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 09:48:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B6AA6074A;
	Wed,  4 Dec 2024 08:48:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xMMRQtQ5wxrv; Wed,  4 Dec 2024 08:48:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 612B46072A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733302108;
	bh=Wv9xwrMSp2zJCc+4PsdKblT2BDJGmHwFSBqUz/pHkEg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=69O9ebdCdnDgn3Y+cLGv6gG/uOZ0Ut9gUIA1gI324ce1xZfF5vUCUUfGPcbsev/4j
	 QchS+ixYz7ZGVEllor+JCvk5fPV4/tvHj5JPdDlMNxcw1DS62ggCUBFc3fwMdEij3r
	 3ys0QNY/QuWWfY8fWNcY8KdCgaetUW4ccU2SCZqRzpxCssoALgwcmazBkl/dl/nZX7
	 ckMBNLe4//9rDL+IbxYazlz6Qc3cqhBwwb90wqjdXqnT2CVSK3E8vfbJwoyQYXcb3v
	 5bgUZlFNlw+RtFknS9COAYFkpDpQjkWW854dZfskDXZDS4AweURotNW1vGP4I5Todi
	 utotZjyMLbgGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 612B46072A;
	Wed,  4 Dec 2024 08:48:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 733E81DD1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 08:48:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 52FCE8472F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 08:48:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DLZRaRDpWgu3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 08:48:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.249.53;
 helo=eur02-db5-obe.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 18F8F8480B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18F8F8480B
Received: from EUR02-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur02on2053.outbound.protection.outlook.com [40.107.249.53])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 18F8F8480B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 08:48:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wThfMfQ/pxBYIn7SR6e9Lbt8zf5ArJhMj6C4vgeQUubIMc40Xw4VOYyGcDcDjnrqfi07hGNIyo0imyMX4q6WswY8e51YD43MtaeJNrWFNGYp6PMNQKPmrMgES2a/MNKS6u5dwS2a2L+zY92w+FwM4QgI7v9b7eypQGeQzInY9MXq5fJIHr/n20A/I+JKMaUZDMsNkgOszGuW9cdQVdOLi4mjHBTpI7FcxmfVYu37QBBY/rxKepRaHyvYXuy4LTqvLZYVGGT2aDS5y/825zhU7gN10UlX6CJP/xlOtIigh8LJRMVidbOsM2idlgKK+zUnCyGdKnBlpHK7+bhQZuXS9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wv9xwrMSp2zJCc+4PsdKblT2BDJGmHwFSBqUz/pHkEg=;
 b=PRB3clwHf481YLf1iM0l3Cvs2pJN68zH5lktNjbWoWGcojZ5pyjrC422Uvx30KmQdffrC/WIDlz4Xe+i4m1VjI7lWjxX//ljZlOc7Dm7kk2dcDq92I3/SLUEbERsWuJFi3AZLy7cCQogjnwD0dkbSmChmaqYEckhrQuSiwBHhrpk9mnacd2D3j8uXr/4nRLUzef86FqfFvYnDa8szzs4ZPqorAnJ5Ka4BqZ9HBRlXl9qb66BTt3240kh4q0IGV+3BpkFmSdEH+NZkqWPMJcKzxbct3UWYKF6+xUeNb5Z/Lm114F6VxO88j3XyOOx1yR+/aKPE565+Gv+UrYvfdoHbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by DU0PR04MB9671.eurprd04.prod.outlook.com (2603:10a6:10:317::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Wed, 4 Dec
 2024 08:48:21 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8207.017; Wed, 4 Dec 2024
 08:48:21 +0000
Date: Wed, 4 Dec 2024 10:48:17 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Andrew Strohman <andrew@andrewstrohman.com>
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Ido Schimmel <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 UNGLinuxDriver@microchip.com, Shahed Shaikh <shshaikh@marvell.com>,
 Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Simon Horman <horms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Roopa Prabhu <roopa@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org, bridge@lists.linux.dev
Message-ID: <20241204084817.g7tort3v3gwdzeic@skbuf>
References: <20241130000802.2822146-1-andrew@andrewstrohman.com>
 <Z0s3pDGGE0zXq0UE@penguin>
 <CAA8ajJmn-jWTweDMO48y7Dtk3XPEhnH0QbFj5J5RH4KgXog4ZQ@mail.gmail.com>
 <20241202100635.hkowskequgsrqqkf@skbuf>
 <CAA8ajJkPzpGRXO6tX5CkgX7DjGwR6bPyT4AXjZ0z8kXBk8Vr_g@mail.gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8ajJkPzpGRXO6tX5CkgX7DjGwR6bPyT4AXjZ0z8kXBk8Vr_g@mail.gmail.com>
X-ClientProxiedBy: VI1PR07CA0282.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::49) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|DU0PR04MB9671:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c27b0c4-0511-4e31-dcf3-08dd144067f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?m3w3IeyjiMd6gu4QkUJPaPBYcumQnjzbL8XmNZCTVjYIGIDSexsYyXYtY6Ku?=
 =?us-ascii?Q?yrjszyEgamO7SUzoCYXZzkNZh5U4kbmY+j+RdC70WGbl2si1HHkSOg2IQA8A?=
 =?us-ascii?Q?WKC2YYqY1RPc13AMDloaF7Ich3DWcu2C7Q6n/Ni3GLbD0RQRArIYc4f7NjAq?=
 =?us-ascii?Q?zZDmUX5RHnvwUFdgIIW5JPYuR4vFYaYrtSxPwH4Qi4ep67Pair510q5Go6g8?=
 =?us-ascii?Q?gHf0pGZPIDiQrKe4BPM/aG/XSBtyXrpQyEAU3H19AvCdzaoHmE6eYHK01krl?=
 =?us-ascii?Q?DCfFpztWk6rD25D4YycwzqnFz3Sk8r/o9b69hSJ+NVlAe8Ie1e67S3S6MgIX?=
 =?us-ascii?Q?D5KbI6cLydukT/7algj2Ina6g6az1zE/AlpkunMD5fXohvTbfwT7kxs9XT+X?=
 =?us-ascii?Q?b55KnF2XncjVfdPDIAwygHYTmTjgY3JhQHXaKDZ1TXyYcbIxH0xBKMQNM6Z+?=
 =?us-ascii?Q?6++gFRelsYvx+eO9N22E6EBGyjirYshCCsrh4YU7V0cVuP8zY8UVd5vD/SfF?=
 =?us-ascii?Q?ti3YLZqEbXg1H5PhJSx5njyNUqknwkRtOjcS3D11Vet0GQRDw1umOdjKgtg5?=
 =?us-ascii?Q?YW+FqIADigClYTFFH1VYSeFqRe+1UJhd3nSufJBePaqJf1FoPrAidq4ObQ54?=
 =?us-ascii?Q?wB6qXgYkbsd158NNIl+LJMdNaHGn4L7pkC6eXXyYG31eokTkBohs6RZGI+PZ?=
 =?us-ascii?Q?wMMUmmnAIHR3/dygn8mugwmngx1SGECyAED++xk+7pDxwhWfmw0bEY14d7Kj?=
 =?us-ascii?Q?P3YojGC8rPvxLFCClLM7mB6tDXUbTdBEqhkDb62IAyxEsNLRYPa0OYybGA56?=
 =?us-ascii?Q?SElrCzICMZCoJ2d6x7/G9+UelP0bQ3ZSoW8d397FJglP5xHsmHdGt7cncWKY?=
 =?us-ascii?Q?VYjlh6BeUAtDK/JkxZDkjTlngi7gqccRWg9tE9EpdSIj5nmzhdtCEBoALzdX?=
 =?us-ascii?Q?JapZvPA6tuwIehCzTK1aT8JXKDqI3+f2hb/17heWnnknRBxl5k0IN/YAeIUR?=
 =?us-ascii?Q?rGEWCIR5tq+2SJJSNbvA7C9qK0/Y0NBSsIgIC97Gt12mCMiJOQCeF/BDKBm/?=
 =?us-ascii?Q?pkpDpPcZ8aKrPUDwoX00iY4X8NI70j50WaRJAEdr4lw3JXk6yGONvPSgZVQW?=
 =?us-ascii?Q?hjUQgs4FXFF66OmVYfQnCT2OMGBKF8GMDRr4DfPSK3UAtLze0bVgdJljTGe1?=
 =?us-ascii?Q?DWA0iEPegxNHmM9Q/KHrhbeb8VDfg6BDVUAV5rbUAzCs0dLvCrq8GSxcMDeA?=
 =?us-ascii?Q?9CuNHmde3JsHu5rtRwryCOp+kLajRbWKgx+33fGa6h9uCnez31i2zgjcw+5s?=
 =?us-ascii?Q?bjk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?n/2yzBt1YksQlisAjzeGgovE0AGGlP4osZUaASmAHvdveaA8nB1sc4KXhqUW?=
 =?us-ascii?Q?ulkTdOCZiMeIr8hYiDDEDD0yMdvlWJUBSjaAgkEsE65UiOKXAV9c0HHQ05lQ?=
 =?us-ascii?Q?dfSADA3BQjFmCBiHDYw7DxwVH3J9q9eHpmHLQdfv/uRkkJFqwrPOkgqF30xl?=
 =?us-ascii?Q?OBcZMrDxaULkiC+ll3kTXE3TWLa8zmysWw4iLhvbQrygj5y5QvoQaj2zLtvS?=
 =?us-ascii?Q?EAIEGGSFSoQ1w2mX0AYm4AoUWCVNINQSZeSIcs54Zk3rctrd5gNSRcKt8ikz?=
 =?us-ascii?Q?ko0DvBbdH7U+4WMtCcEd2Aj9sBvq+2CvJAOfSFML34EYvHkkJNdwoNB8adEv?=
 =?us-ascii?Q?qjmA7yU1M/ByUJrM7zUmQjVUMCqnLWKHCHrbzgOuXVsvK//20Rx+PljDVmal?=
 =?us-ascii?Q?ygUJptIA2liA99nWb8Udw1bIl/uKkXBw/bCaJ9HAOl6HPhWLrWOgrP4viAjl?=
 =?us-ascii?Q?Of56w97/abgsWFfp/vocoEMhsMsr5sYajL4bZAnJOroevsD3s4EEoZk5pS6G?=
 =?us-ascii?Q?I3/EGhZIxdpC1F+ChJKeBIWsZk+WDbMivyLZYHAyfD9AHMCpNy4LoWQD11Ad?=
 =?us-ascii?Q?7kXjA4OhZUOkQB66xKipF7LIvTzL54XFycwvq605DKnbwjnhhWkLzWYECas1?=
 =?us-ascii?Q?3D4z58I/UimWkUq1L07pKWWS9Nr4zfj6CzUuafnecXUbm+bI5t7OwlY9V0xN?=
 =?us-ascii?Q?DE2ZDrPV7roB1/OSMHmz7G7xesVYQvvDvfdH+HEEXZlv1WBD9dj6j0FfQjlv?=
 =?us-ascii?Q?MM8wvx4fLgWoSI8toZEgF4DQKHEYsTdK/msD0o774KGlsx7H2/XEwkx7yjlu?=
 =?us-ascii?Q?cTk/MT/teWiFUADATGvVub04cweOgScrCJ7FUXJxeswpIacR7dVTBnOV/U6E?=
 =?us-ascii?Q?CeFHDsZUzrrXpdK1jqy4soNMAV5JvSojxgPqfJdCTvSCAbaAyib61em2psYt?=
 =?us-ascii?Q?tbcs7qVLbRyBQstFBva2huHLGpXi4UtCDlLOKXy5qKyyHRLLKYu8r6YD4oJ1?=
 =?us-ascii?Q?Vu9nosMUSDQKvfhZMCn2J68j4kzZK27lDMfysB82IJ9EYHYzhxtANiRTznex?=
 =?us-ascii?Q?gYNTRD6EW/ABtkkY+0riLH+pq4/+0vwnZwuAtXSmQ8OgsyMaqqRWmuEBZ/KU?=
 =?us-ascii?Q?gaVE2YaA0kdfhyDI2lTinmlEk21+gVk4nSl0KjSUudZOIzSzWtNJcPh4Sq/S?=
 =?us-ascii?Q?DnuZXMrKgXFSWSFJF8LFHwNkYBYuNEoz9F3z7Z8OmhgN1d9IdqL0FHZjd3gn?=
 =?us-ascii?Q?4Q18svnrwB4Rqk/vhAs07lxNxxZigvwq/SF1JZoZJ8RpUTgGyapecTaj6TNM?=
 =?us-ascii?Q?dendIVCBStoCvnlNfLWtGuse3WvbIJNHoA6+PHuv1sRwIQlTyHkVuRat6gNe?=
 =?us-ascii?Q?wsaXYw3aie1r2oFVCk/bDWl92Iazeyvf7UHdTMZp4IUvju0HX/fLi12M816A?=
 =?us-ascii?Q?REHdPMFdbhz4mXfhGZs3nYNO+h5XkGs4HUXYlvWlT9HcNcoBcTVpnD2p29cH?=
 =?us-ascii?Q?mhyH0Kd3ixs6fcF3Uzgx6LmnzCGWvis22DCIqUE72HBswpC1M2Sn5SDethl7?=
 =?us-ascii?Q?JUOWzFLSNGndtkElz8Fl+pQP3umpaQM7E7vovGSCgjDwYiShcHg7Zdo/YGbu?=
 =?us-ascii?Q?7Q=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c27b0c4-0511-4e31-dcf3-08dd144067f6
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2024 08:48:21.2680 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0/DsUsnn9qOj+rrkYzZTtAxXU77ded0tch+UfuDNpxLLVZKs1GoYuY8SxL0FwnWBBvA/9P1j5GS9qN1xAs1KFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR04MB9671
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wv9xwrMSp2zJCc+4PsdKblT2BDJGmHwFSBqUz/pHkEg=;
 b=PQ/R3OqbOMQyp1CgtIr474mxMAuzNwde0tuTh4Abpu27FJIuCjUW5H8W2v7LE7tyXcPPop0lpAcSsyjYY673KNwyw03rvTHkhV0qS0tsjebXEUhp4+kEG+FbK1k87eY+mT4PEN3ZavC3x0U3V8lYtJ6aDZTdo6VtuH7zfSqb3PBQphJWZwsl8txMS6K/ktH27eHlZ/gt04S7E3sHnGlqSZNKDo/ckNBNqbf6Oa3ZngQbXd4qPZIjh00PyKh82a897RiD3zlKBNheBaVZXyUCRb7E55yiE2XcTcSN7NBJpSHmkaYqDZ0BrwcNZKVzsGCNmoc8ZDn/3BDTwOKdKCYtfg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=PQ/R3Oqb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] bridge: Make the FDB
 consider inner tag for Q-in-Q
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

On Wed, Dec 04, 2024 at 12:37:24AM -0800, Andrew Strohman wrote:
> > What stops you from changing the 802.1ad bridge port pvids to unique
> > values, like 3, 4, 5... instead of 3, 3, 3, and making each other
> > j != i bridge port be a non-pvid member of port i's pvid?
> 
> I'm not sure if I understand this suggestion.
> 
> I tried to draw out what you described here:
> https://docs.google.com/drawings/d/1UcOpENFgr-s6p8Ypwo-l4yTvtUZFM6vSLxLiX2FOMLU
> 
> I'm not sure how host A can communicate with B with this configuration.
> 
> Consider host A transmitting towards host B. When the frame leaves
> ".1q bridge 3",
> it will be tagged with .1q tag vid 7. When the frame leaves the .1ad bridge
> heading toward ".1q bridge 2", it will be tagged again with an outer
> .1ad tag vid 3.
> 
> So ".1q bridge 2" will see the frame as having an outer tag of .1ad vid 3 and
> inner tag of .1q vid 7.
> 
> Is that what you are thinking, or something else?

I didn't say "tagged". I just said "not PVID". There are 2 independent
bridge VLAN attributes: "pvid" and [egress-]"untagged". I am suggesting
that packets in VID 3, 4, 5 all exit the 802.1ad bridge untagged, but
every bridge port has a unique PVID from this range.

bridge vlan add dev port1 vid 3 pvid untagged
bridge vlan add dev port1 vid 4 untagged
bridge vlan add dev port1 vid 5 untagged

bridge vlan add dev port1 vid 3 untagged
bridge vlan add dev port1 vid 4 pvid untagged
bridge vlan add dev port1 vid 5 untagged

bridge vlan add dev port1 vid 3 untagged
bridge vlan add dev port1 vid 4 untagged
bridge vlan add dev port1 vid 5 pvid untagged
