Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E493CB22BD4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 17:39:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 879CD41E6D;
	Tue, 12 Aug 2025 15:39:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jveiANqBHX_q; Tue, 12 Aug 2025 15:39:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6668741E9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755013149;
	bh=JE27FQzCDGbZB0bJCvKq6RfApsjCItlUbk08ssyGPU0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0aU6hQTIeaK25BZaakYTj3+exGk7mFZ5pLqHWY1NahP6GBCiW5PraMTB1utj0Sb6o
	 tYEwAXjqfUY+zKGw2yNRcskcH4bgFMvW6vXq/rWFF09NE/h2LE9FSUyDC8SmehcQGg
	 W303jJKcYa815zHvVlMP8btT0g8ami55bc+iJdry4S2AK5JPDWAtwpC+dMca7bm/lX
	 bU3iYoIF7RKsYNJYhrKhdPorwyjOvJNwXyHHB89yffUNfnp/VGxywsE9Y2iMF3jtjj
	 tQeaOEHHfMreHEafm9yGZ1JPKAFXnxtpbgMjtF1O2eFIJenQ4OAgbX3SibRODSSekv
	 +iVjMisWpCvkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6668741E9C;
	Tue, 12 Aug 2025 15:39:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BFC6C158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:32:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B124540145
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:32:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1prnqTNuQfmG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 13:32:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.75.61;
 helo=os8pr02cu002.outbound.protection.outlook.com;
 envelope-from=rongqianfeng@vivo.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D395940102
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D395940102
Received: from OS8PR02CU002.outbound.protection.outlook.com
 (mail-japanwestazon11012061.outbound.protection.outlook.com [40.107.75.61])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D395940102
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:32:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lcTfk/nYDhvDIeXwnIkQujqKcV1F5X/9KyY6XyxYZGAvTAmmFjrlOgNPOeNn8li9P/4ae6EJsYC32DeIIUdVUS+Aq8hr+4q2gVOprXQ0mfx5klbD1WvMostvY+6E3Htqg4WVT3Iw9bIbfHS9tIgdJCCJP0C7zM55mWwcJrupPUh2r9T2k6wh7J7rjS5WEgxCSsXN7sLXGdOv27U+TkkQBhQ16XhszayYXfcNLzmNGWyLT+9I63dzaiMOLkbYdLrmLqPUH+eYSKfzJhUArFzMEUzgBwTj9lbPhZDnbGoK87KXziuuScEGhxnxZ5KbmfaQFdNca62UbLyJrPgSbL66OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JE27FQzCDGbZB0bJCvKq6RfApsjCItlUbk08ssyGPU0=;
 b=YqFOQnx6Qn6Ie3lV/jkXQd4st8wz+LQZK0F7mLdYSxihRUCBRpEduh80tnxrvUy4Wq6rjOMtY1xuFqsvMQY071gZIgV0y0HA3xOMhITMyagFukiHXuDFppotmUfuuTL8udWZO7pwEhFQc3vJRbiL2HaZWy2hf+6HBxi/a6UdqnNvYZ+xggeCvN3gRuussfnzvfqrZExdAl/MYMa0Pa0GI0XiZ9nhrmpjnVtOJNZymZu0pMewzA97VT+4QR254lKNz5mkOlCGOQB46AGz9fyUN5KexnQmhRuANOc2/nwyJP2iq8oSAaqSj24vSfFm4E5KrNOgFiOkTlTb6vIV3Cc4eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com (2603:1096:4:1af::9) by
 SEYPR06MB5040.apcprd06.prod.outlook.com (2603:1096:101:54::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9009.21; Tue, 12 Aug 2025 13:32:41 +0000
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::468a:88be:bec:666]) by SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::468a:88be:bec:666%4]) with mapi id 15.20.9009.018; Tue, 12 Aug 2025
 13:32:41 +0000
From: Qianfeng Rong <rongqianfeng@vivo.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jiri Slaby <jirislaby@kernel.org>, Nick Kossifidis <mickflemm@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>,
 Brian Norris <briannorris@chromium.org>,
 Francesco Dolcini <francesco@dolcini.it>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Qianfeng Rong <rongqianfeng@vivo.com>,
 Johannes Berg <johannes.berg@intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Kalle Valo <kvalo@kernel.org>,
 Aditya Kumar Singh <quic_adisi@quicinc.com>,
 Roopni Devanathan <quic_rdevanat@quicinc.com>,
 Dan Carpenter <dan.carpenter@linaro.org>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list),
 oss-drivers@corigine.com (open list:NETRONOME ETHERNET DRIVERS),
 linux-wireless@vger.kernel.org (open list:ATHEROS ATH5K WIRELESS DRIVER),
 bpf@vger.kernel.org (open list:XDP (eXpress Data
 Path):Keyword:(?:\b|_)xdp(?:\b|_))
Date: Tue, 12 Aug 2025 21:32:13 +0800
Message-Id: <20250812133226.258318-1-rongqianfeng@vivo.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TY2PR02CA0005.apcprd02.prod.outlook.com
 (2603:1096:404:56::17) To SI2PR06MB5140.apcprd06.prod.outlook.com
 (2603:1096:4:1af::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SI2PR06MB5140:EE_|SEYPR06MB5040:EE_
X-MS-Office365-Filtering-Correlation-Id: d33a8903-1529-4046-584b-08ddd9a4b654
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|52116014|7416014|376014|366016|1800799024|921020|38350700014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?DETS4z8onVebwtq0fE8/O34DBnuICvJo8n0lUXazBNfE9rjc0kIZrMiTEeL3?=
 =?us-ascii?Q?9WijZm1AM+zZI4VN1GQNnmZ/l2aUbL/PWQOxQDHBE8S2gBLyyqQytVTOrkHg?=
 =?us-ascii?Q?wHSM6QiIVAZURVUQ8Ivqsf2RrX916nUuK2MZz93Awq/2hUo2AqW6G2/pFBlZ?=
 =?us-ascii?Q?+10xMPLjSMT9N+DjiN6mMaZw4f0xCUKGeGPPWTgbyizao4Z933fBWd5uq2yu?=
 =?us-ascii?Q?chwPHxPcVqlwE6kxR2UEpLRNXqtynSIA6PvmdZK5/5V7gU7vVnqKcfx/HXyo?=
 =?us-ascii?Q?piVlHyHBf/SW7ctVZ7OihASkDw5kacn5V2SPZp0Lzp7J9uWn2eLsIsl2n22S?=
 =?us-ascii?Q?lSK1l31vnPKyQrvJeNhuv/oGB/NRmudIUeT6t2zqIS4h5C2VUQKvUh+Xf6eO?=
 =?us-ascii?Q?hkO4gUBXMjg4NRTvmhvlWYRxrdrJ29v7XZsNOSXx+FhHs+FF8CrlEe5dHWfy?=
 =?us-ascii?Q?J0Z0BlGTWA9DRmyAPn8QbNMEV3ex2DyhUdAmgug7bLd/9A2IJNXgcwUCD4Eh?=
 =?us-ascii?Q?nTBJyUQtwcbye6pdMh4Aouam0g8GTFKASUNHBnU0BQ5SYagMOBxftDtWfsVT?=
 =?us-ascii?Q?731WQxOZGrVnfA1SeJmLGfJ0AWcDPLBD4W0h80jYZ7BWrRpac+qVv5C7pCa6?=
 =?us-ascii?Q?wSMVD3mFwPE/KdX7XAhNN4G3ZedrLJF1QzODSTZwp5YsicIC5B69RiRWb5Gm?=
 =?us-ascii?Q?gHmFCvki0uhOyZWhmQzrTf60vhPXurd8LCEggYQn22TfTcBiVxcU9E2I8vPI?=
 =?us-ascii?Q?dQhnuD/QngItP7wg51xT8+qh3/Kr42PQpAK2NLzw/PgVtzQwAWXX7gmPDLfy?=
 =?us-ascii?Q?jtpDaY457/ouVGB8JJ/ie0KfsyvArWtWsv9j09l/pfY+o9igZTynkk+6x6vH?=
 =?us-ascii?Q?Aq2ZOIsUxFigyz6gXMcsAgZQDSCOb9wS5Zxyk69DHPRlZQHqIA19D1dEgiCb?=
 =?us-ascii?Q?8iO4WkGrojQYbK+1/SNxurHVvCjNVM1cmyHpOMhI4TFehtOQQaPVCNY/CWLC?=
 =?us-ascii?Q?fdVjTE8XSWrMC4X4ZId9oPsqV0fXIKs18/fhy9n76mVGw43aEWX/SYXRw6ls?=
 =?us-ascii?Q?WmJEy73xlcM+UlLyj5Km+kU8yeA7l1t6sZaWoWeQJwl3lY3Dwp/xWvbHPT44?=
 =?us-ascii?Q?DKjr00WlDVl1VoZRLORn5pv/twRrclJ9+tiqsxDfYW1XnJw5YnzgzCBjKWbr?=
 =?us-ascii?Q?9ue/v7vYgv8gmYHlgaUWv4zxq73jQTV9Tq55GVkEizsnnndO8j8/N7RCHyON?=
 =?us-ascii?Q?n+Rke/g4Ix2QEivZ+yucQs8w2px2tNmCAkgPLkGj/ccOyILhm7FeZYR/PQpI?=
 =?us-ascii?Q?CsnVtpTWMysBtsovQX68OZdLP/XxNGpGXqhioJotmqKC9Jivi9V2z7CaFID7?=
 =?us-ascii?Q?KN38Qt2gxz/vzO12+t/iAg0YPJLPn8Oh6SjChkb9vvhIExDRm27hEDW8c4fu?=
 =?us-ascii?Q?aSsdRIarrLOJ/qyh5bVzW6oguadSjUmJOffTOOriP1yKcBy6PQZG8h6R+MXG?=
 =?us-ascii?Q?l/0dCxkVFYOCeqc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SI2PR06MB5140.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(52116014)(7416014)(376014)(366016)(1800799024)(921020)(38350700014);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/ET1FYx+ze2hyd1XwjrQjC01cKGjtx7v0GvsuI/bSULuIGwZFk05sJ48NvG7?=
 =?us-ascii?Q?MtPO8a/tCb8ph57u5Oa1UbTdJvRLB9lndpE/wgEcrQ22uQqOjDPYCJunL0UT?=
 =?us-ascii?Q?rzwK4KOZP6/YA/JqsOj3WpCrOvlyyyyPZ5eQ1qlMUSjsGf7xoy6gZr59B6Ic?=
 =?us-ascii?Q?X/tjnZi9kt7BhjM4VTCF+iGMs75xtNu3R+DptBe5dkwH/aYhgi4KFX/qnqi6?=
 =?us-ascii?Q?I0W5Zsc0lG5T7DMDFNc6mj8fkhqERNHFkoaG1FEKiLuRlGFIkEsvAe6k2KCm?=
 =?us-ascii?Q?4+KrQZTt8753Eqc9U/pJX+LqShBNHukBVVVsdHDKHFYr5bGm8D//gzlgE+l4?=
 =?us-ascii?Q?8U4bmgG7CwLK1h/C9yjihUhHUxKDixcWY2uUVV1i80W9OGW2wJwfUZzZ46I2?=
 =?us-ascii?Q?GU/pzEnW+46VquY9k2YEGSkT4DxvVRDFtdroiCYTwxk/L15K/2qJZriiYwr6?=
 =?us-ascii?Q?QTwoA2JgSWMut4Na0zcv7PipZg5dZbAxmL6TZYuHQS+2XESWF90t2OAtaDuH?=
 =?us-ascii?Q?vmetuxldms/peRJZwwj0l2YUkwTkRFEktzxVGSJux7mYqKJQ5y94vtZAkB0T?=
 =?us-ascii?Q?GzABBpQhCptdIrCr4Ine//qYla2fbQjWaP2VBGLFqwChOnt9cCoe5o80ZoV7?=
 =?us-ascii?Q?IgH7v31tJaSwDK4FyqgUIMWM5r7IXNdbrHEPfC5a2n/Hsp6dsfPzVLa4EJSV?=
 =?us-ascii?Q?vlucD/APPaGusGsrFOhVdnrlTmcB8ev3QUGYQUuakB3ZJmWMe7VIPbqhKSTQ?=
 =?us-ascii?Q?Wn+ryVNUqW/85W5rESc3jLx4iy+JFXVgZGnxoGOiikgnKIBc62VPuz9jpkeo?=
 =?us-ascii?Q?gbT2476bhZi8HlITSjvFNOoNUqrk6PmedlPINMCN04bqtkolgFOxFlITt7y0?=
 =?us-ascii?Q?Qgieq46tKnvqL7NrZUCJjLKeCyvZ5cyt/DwPpx2Alg2mi4ffbxF+RFaqtW93?=
 =?us-ascii?Q?wIkHK1YbgNqA9ztnGZc+iJS7tcvGkBukes7OY5dSsBUofDtXpsqizhFXt5F0?=
 =?us-ascii?Q?CvQilGrsh9tb9EPWomXYi9OSm7uxKVyX48Y8Dovcy8HmfNH7SoBMAqEFciKA?=
 =?us-ascii?Q?l1hEakxhQeFQHvFIYb2i1cppN9EXxEF8A8CPzICuDVdIHekAQYJ5GHnKwsnx?=
 =?us-ascii?Q?hvlV0U+0aPw0QL3JKt04F+btfBA6ku7uBwTebnmihgKTJHSNDTlE9o2iZ05H?=
 =?us-ascii?Q?KA5jwWhyggQdjNAWATG4WG9+kSf8En5u2qpw6qXToYZzPkC16XmIrg2zEXuQ?=
 =?us-ascii?Q?Blm36XSa8VqVrBLjLSJ5ifxc3DWll0eyYCyyOVsI3cOLMazqIA9jgn40lGox?=
 =?us-ascii?Q?TkCETAbTF9/apVMb3IvZ01t85mdcOV7R4PrPm3+hMoLkRygHn63Ux5spTisG?=
 =?us-ascii?Q?hc2XTi8kCBmXCQGB5ASUzBUqS6Mqxq5/pIaQNT8nU4pPIvK4tYiYufQD2XDy?=
 =?us-ascii?Q?Dn7b9ZNodEASKjEk0YwexuHdnP0+WjpHPkTB/dczomWcFPaY2sStkzyI9ZEo?=
 =?us-ascii?Q?mP8ho2wXt4DYbX+6jmKMsnu1xPIxbK2/vj8UkNbSA77/OJ1+lTyqAlteg/5Y?=
 =?us-ascii?Q?BhMadFTGHy3tUz57dzdOHW1Bnjd7ntxEWdMnD3+L?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d33a8903-1529-4046-584b-08ddd9a4b654
X-MS-Exchange-CrossTenant-AuthSource: SI2PR06MB5140.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2025 13:32:41.6038 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7ZMkNqWZda5MWLUJAZLRdiov8/yl7nQ5LFJWziBGVed3io5cymrkIAIDwapdfpp1jpFTFasq61l8D0xyKMm11A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR06MB5040
X-Mailman-Approved-At: Tue, 12 Aug 2025 15:39:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vivo.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JE27FQzCDGbZB0bJCvKq6RfApsjCItlUbk08ssyGPU0=;
 b=FzSdYRUR0+99urMy39lSq4W8JTPgtgB9Ad+pNyvv1IYtprVGknWKA/TNa2dw2KzKA+V+I8qMLs8hytMGPLKMhDADwjQgguPAXt/h8JvUr1HroU30KsmscZxQNNAemmxCTA6KXNblP5fPvMuKuRqDqpUHdNSp53V7Orr3MDaDtQDH88oqxiGyjU6/LX8TnDRIOvlO6SAEqns13csk1FMI+2JrPYgRyJ1aKwZYdyREZZT6TR7TX6SVhXMVRxTPYcYG308gJpXrse4pXf5N4v6X7Bs30xOOhFn9t/rpvdhzYX06L89Yksz3qobM8utUQysBuTgYitwrmMaCHezsjIf4OQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=vivo.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=vivo.com header.i=@vivo.com header.a=rsa-sha256
 header.s=selector2 header.b=FzSdYRUR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Subject: [Intel-wired-lan] [PATCH 0/5] net: use vmalloc_array() to simplify
 code
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

Remove array_size() calls and replace vmalloc() with vmalloc_array() to
simplify the code and maintain consistency with existing kmalloc_array()
usage.

Compile-tested only.

Qianfeng Rong (5):
  ethtool: use vmalloc_array() to simplify code
  nfp: flower: use vmalloc_array() to simplify code
  ppp: use vmalloc_array() to simplify
  wifi: ath5k: use vmalloc_array() to simplify code
  wifi: mwifiex: use vmalloc_array() to simplify code

 drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c     | 2 +-
 drivers/net/ethernet/intel/igb/igb_ethtool.c         | 8 ++++----
 drivers/net/ethernet/intel/igc/igc_ethtool.c         | 8 ++++----
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c     | 2 +-
 drivers/net/ethernet/intel/ixgbevf/ethtool.c         | 6 +++---
 drivers/net/ethernet/netronome/nfp/flower/metadata.c | 4 ++--
 drivers/net/ppp/bsd_comp.c                           | 4 ++--
 drivers/net/wireless/ath/ath5k/debug.c               | 2 +-
 drivers/net/wireless/marvell/mwifiex/cfg80211.c      | 4 ++--
 9 files changed, 20 insertions(+), 20 deletions(-)

-- 
2.34.1

