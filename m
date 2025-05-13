Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 398E9AB513D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 12:11:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 631074057E;
	Tue, 13 May 2025 10:11:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AWFjPmG-QuXM; Tue, 13 May 2025 10:11:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D38EC404D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747131115;
	bh=NMWP7qbZ79IMbvMIZd8Tldrdotbt/JnuofIvPy0+Zr4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QiJigpgsgPRnE3++fdQYMC+z+u1hlWlPXe9Ecg48tc+gAOqCCVFLxPSX5C6rphDP+
	 Tg2eu5iDpEDnM9qDWz6fgWetxaAol68qKLtG/bw3w8vQY31Z5a34hcvMM+gnbFzXcR
	 PMQUffZrMHppuEQtRvT7drk3eC0bcKmpmYyklDpVTSXpQkiL/Bi9zbmU5An2AV3rTv
	 +J/iHAdvww6cQ0fRXu5ACMKeGtpIOUG/jWYfsTvyiWTZhjzKjABOm+q/REGYJXypnK
	 kuyQuJkmHN/iHTNgSMNDpwSbIHwm07mCnEpNZ4YsLyCMpB0FuIP560js8nLxu8VtbC
	 kcjhZRsDRDuRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D38EC404D9;
	Tue, 13 May 2025 10:11:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 60D10150
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:11:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 463A4605A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:11:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AFq9kJK3Uuj9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 10:11:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.162.8;
 helo=pa4pr04cu001.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 779A76058B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 779A76058B
Received: from PA4PR04CU001.outbound.protection.outlook.com
 (mail-francecentralazon11013008.outbound.protection.outlook.com
 [40.107.162.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 779A76058B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:11:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TCj2cC12IEcLkiddBpO03Cgo+kbkL6tpjLzkoszzcJqV4BeZsZ/oyAiLJ/l7LNGBseIzM0KXuBDupyqzNpXwhjAYg9cWwATzj0OOLrR8mHgg0gUs05UZhiwFkfGRqJBF44cE1b1Ov6R/jGID1bNGYUhTbwT1Gs9OPUKP9ldVnTbQX4NIo0eNvDcSpUPogO4RCLpU67cxbSt8oirM0XIZyegouYZpAHGV7EeqDH5x/IA7Yaf5W5eQbnkshzgJ07V+TvonmJcFWD1miuWSP1u+DqvJH2erQjckc0UZqBG+8XkocUaIVUEGKfgYEC+D+8+WVScp5qR5Q7JvFOPAzzTViQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NMWP7qbZ79IMbvMIZd8Tldrdotbt/JnuofIvPy0+Zr4=;
 b=ts3TafcpoYmv1IhQiq9IUm4CsBH7xQ1IGv2hpKTeAq4gf7BoH7mB+wM05u4mjZoqz6TNvM+M7xIoWjeANYHolSvsgJb6cTbi2xyTZ6DMyNLtOucw+YmfhTuTTqssTL4w/2nNctAaT5niGGFhMVrYp7kgRuOQXpWYKd3UF5SC/HQH3At/5IrKDQD0HAhWMezh0IbajDFUZ7uR6pzyECtSwAF9jfqwCYo0xmNUaQBcSTJBctbCzs4ogFv3duEu6b6+J+1Y2XqH9WXXsRP1AgYZ9gOA3iXePQ3PSy+yMkK0f60K+6ibmdN6bRRH0wsHqu9MtdkoDnBrrFsGX25FZubslQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by AM0PR04MB7105.eurprd04.prod.outlook.com (2603:10a6:208:19b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Tue, 13 May
 2025 10:11:50 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%4]) with mapi id 15.20.8722.027; Tue, 13 May 2025
 10:11:50 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
Date: Tue, 13 May 2025 13:11:27 +0300
Message-ID: <20250513101132.328235-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.43.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR0502CA0019.eurprd05.prod.outlook.com
 (2603:10a6:803:1::32) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|AM0PR04MB7105:EE_
X-MS-Office365-Filtering-Correlation-Id: ed87849d-ccfb-4b0c-f8a0-08dd920693bc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|52116014|38350700014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?IsfmQuzCB1H0SwSFeiWGiZv7kHnwSGKhXukSQeSlPTWE0ylb4OuvjlAJXHu/?=
 =?us-ascii?Q?5D/vaJEWdiP3aSidyJO/HNLXV0KIIZBAMrkaMqubn4+NcP7WlA6bUfKxgUeB?=
 =?us-ascii?Q?KYvntCYs8+Qama5dNhZoUY43uSaDEEHHcFNlQDvKXIT3ankpJKDYJsDfwQQH?=
 =?us-ascii?Q?PO6NRhXrx3TMgfSWfDAskPrjETcXcvroB5XEZLwnhoFzc/LWcNPgwDcDPYoN?=
 =?us-ascii?Q?Bzwkn9JVs7COj1A7LqAdfWWpwBS3c2igJEHVpU0Lqnhp2WGjjlw/DAsXpFf8?=
 =?us-ascii?Q?63geMAc3szhnb+RVqQzbeIiRSsdGt8Gh7gdWcUDo2FIJn0anDc1kRyXwy/s9?=
 =?us-ascii?Q?E3izRj5VFNYXV2X8fH3X9vaXag/vjuy2t/cb1ZmBVdNyRPV/7IKvlz0Doywh?=
 =?us-ascii?Q?Vs8S2Zzv24dEfkCJOcEXt7vcamKjyRvdQVbAmOvWWw8lsscc6S8xb9aRGi/t?=
 =?us-ascii?Q?LD337RqpjDHxtVbkeuvfrg/xGHAupc5DduS8OMPpysdFfpsJLn9DfCDJdvuZ?=
 =?us-ascii?Q?jfIK4zLasXUs4aIyWYW2GHx5q4DY7yw1+BLEk4NO+aIgekQxFeS9YdbdL8Em?=
 =?us-ascii?Q?60z3TPkG0r17tfGydrDBm1Zc6TCa7bPDh/kVqxHB+qtWVQPOJcEFgzhx3ZS2?=
 =?us-ascii?Q?1iNyN1CCMpsiO7gjdkBNZUmQmhpQng0gXVS+Lql1BU+puJoykkEvzVnRXlnF?=
 =?us-ascii?Q?RYUn94/hDpp0LnK1G3KDVVujpdcXIKLcjrTCcAZ2BTOu9VPyHC/7NkaQIB15?=
 =?us-ascii?Q?dXEauLx9+g4qU72q7dGJThC2wXSpiuDJuKDIG6Ptt9VeB0iausNPdIgL/Akh?=
 =?us-ascii?Q?Mti/P8xgOkWvs79YxGQqZY4BaMcJRgM8bFxP+sL78chHqZpwqaozYpWLf2T5?=
 =?us-ascii?Q?VplW0U6Trc4Minw2XniFgTATqxxL2QBpekGjHSVHCNjF5Y8umHrOQu9gPCMK?=
 =?us-ascii?Q?Ak/v2JHaPoA84H7azZUf8gU5xNJIpoKABxEb4S7s4qv+Yu6e1LErIPPmGXew?=
 =?us-ascii?Q?ZdbpyhVTGeuJ3yRQW8v35DmNwp5/L1eeF6DYYEn9o8cwqnnqXNJiTCyGqRPf?=
 =?us-ascii?Q?GccIGkSLYDJvf3y7Dqs65aSKkt1Ch4GxxtaYcbxJlKolu7Ong2Nv5itinf/Z?=
 =?us-ascii?Q?GjfpPVddUTNRCGZcLYEvfOS8L2YBaV4lEr0Ig99ooMm0cMIrUnq2Z4AQA5vC?=
 =?us-ascii?Q?TXned4KzLcOUgXxqyqQiO3wELmiMCGmO97wELiF3IxkPbQeZdWkCLXb5KZ3M?=
 =?us-ascii?Q?3Tpo29v4+gXfEMSzeBmNnvNQd4Qa1LmMRD0Vh3QEpqQuhVKjjaj/CkjYV61C?=
 =?us-ascii?Q?W3fXXTD5ob+qAODoeDFfmJp2KXH00KuV/WAJ5h9OAL/sQskCi2TTNaEbuJPS?=
 =?us-ascii?Q?ngQU3h4h0HIBCxvF2J8KXV34T92ydmsvlomuVkOa6ieEdUV02miyNHpWoTNX?=
 =?us-ascii?Q?eoODTF2uv0/GENy51UI+db2fuOyoVs6fCVP+ui7Lr2AAagBqsJSe+A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(52116014)(38350700014); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ed895CskqvyCeJDf+LumwTyR1CwS9OYdu3BhkMNfIJtgHhZaOzMuvE1f0FhX?=
 =?us-ascii?Q?dzHzI0yLBbn8zkUw21Xh3PRDJA16v8IXmzXgZeJxY8EAysCL6bAlIWQqjU6x?=
 =?us-ascii?Q?q3Ygb0MsBF8T/hEc4hR5xv4ftp5zPQR7+NXqqUGj21/AHXh0vJpq8ULlcuke?=
 =?us-ascii?Q?znuc4YXp4I9mCgESh618/iroLYFsmrGEffUXdF70EneCDFqDzsHeZQW8mrFd?=
 =?us-ascii?Q?5ObWNiIUB9PNz/c3lHKRUcPQY0yCjQEiQIN4lQTmXPBkmLTNLZA7aq/U1Q/U?=
 =?us-ascii?Q?KXaH25i6jTOplOc1CpBJjrThIa0cQiHjK669+S4r4PoAhNIZHqRSsXqV2lqO?=
 =?us-ascii?Q?3yj/z1kK3l2oh+VX4tXgnKH42yRiwSrx22siArrvFzIzCYC/0zGq560UTQeE?=
 =?us-ascii?Q?pVA+R0Zuby/u01Kpgp/WUBmS/rYWNM7MdUzf4KucJdUwAl/v41pYSrsM4coU?=
 =?us-ascii?Q?/XZg2J3DEFRjIxoRLe/79ZTcK3JYUEONcR5IcYSQro7iS//Sdi7E2y/UG0Rx?=
 =?us-ascii?Q?UtJ23S0Tm+eBs8ylHKmvnYdVazmK+vdusnLPTvbHmT2SRrPIfnMFcpJ4e5hr?=
 =?us-ascii?Q?GkwUKiPcT88HPs+mEhkNodph6mD33ewSEF62nHufBxRelol28YcI0dkd5GW+?=
 =?us-ascii?Q?5Z69JEOzDU7SYJd8KGCwkYMbxT1CIT8XAb74laNdpWkf7grQ3cKmTsnwgt46?=
 =?us-ascii?Q?TSQOfsIiJ6RH6vpb8YKfgbXt9ygeiHDnzYSEAFu+cKFOYgEGjDptmCCuWDHT?=
 =?us-ascii?Q?ETrMYSNUjI6771AZhs3FRai+6o815jwCnQ6i8v1I2jte/X0A1woAB9rmIbLe?=
 =?us-ascii?Q?zsEc1UPm3qW5wl6aVDQL23daPXsn7Zy4HHR5VcNdiXniT4FckyVe2nmXdsHS?=
 =?us-ascii?Q?UVvFFuJhVxqSAlTiPxZPUTtrBa7zVpoT81LOJ4vGA48SBdN07TDO1elSzU5H?=
 =?us-ascii?Q?CJ2LBjdL2dh9h+XNp5Lkm8sf/m3LZwyPqMaTIXqEhCO5iLHvd4C0dlNXKIA7?=
 =?us-ascii?Q?xm9gEeQriWKCzV7QDgcgheG78G04vVDQTDNMEENvVwAUqQg3TF2inz5GzLjx?=
 =?us-ascii?Q?uz4xvFwDISC+UhDjQx3VPLo8tta1tcOGMzSxXVELKuLD6YSmcH8WL96uq6Zh?=
 =?us-ascii?Q?FAiaBL9PeJd+ybGCHHTRuN6ZlZFpgZPUwKBXp+FV1xDX/MYVSK6vRqFUNANI?=
 =?us-ascii?Q?gNjZM5WI6vRp9TdVTpiV1O/H8SvcygOXcwE7IKBOawnI+sJpR0MnBit0RxMt?=
 =?us-ascii?Q?KdrQNWmsmi+5CrZXEQycBzJBFuJ8d6R0AHIfn/syh9c3gmZffVm4QPCIOb/J?=
 =?us-ascii?Q?a9CdIrfUzBb78iRPHHMqTWOb1hv+vLF2k3ILXUoHKsza0a5xJx5wW0dDbs6v?=
 =?us-ascii?Q?dYR0ytEuorUgsnmoOHFSF7ykdxrH8wkJvyZfRFfdywNxSlUvCMnDUHxk09hj?=
 =?us-ascii?Q?lbA7VwHm0hNDbA3ztfqsbzo/pluWVxbxTyukmsmvBouZAbZgFs816k6OO5fx?=
 =?us-ascii?Q?mKQnP+jVxCQnFVlsXeurguA9BNzTDOW2sZZo2dDbShB0zd9Iu2lDfXTKMz0U?=
 =?us-ascii?Q?HNUFTOG8zfBpdeU05qvRQ3VQdWvXwBdB+O1Ohs7ELtgwFGa0QMmfaktPRdST?=
 =?us-ascii?Q?bw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed87849d-ccfb-4b0c-f8a0-08dd920693bc
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2025 10:11:50.3918 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cd0Q4DQJvCR5sSqVRAxUUdpS5RQ17f/0ZbG0lgi4MU+sqCu8YfYn8wlIMAuhd1DCJAnjxfgp4mcThQdmUhaCmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7105
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NMWP7qbZ79IMbvMIZd8Tldrdotbt/JnuofIvPy0+Zr4=;
 b=NtFeV+PybSlh0pQ0rRpJ+TXVi/JV1h156XbprTT0RVAGKr385iRwTsUULwnu4iQWiOwMPcIBR0yjanpxOFAr4GjDTprRCdrdh7NaKB4wMb7H3y4RmazFZ4hQ1Lvu8xaVdHCfOg9iai2+A6u28sRBToTZ1z/MLzrzo4jNJcRrjNCivGGjrkY4xuxtO5WLHEmbXC8OyYuPC4Za0X6Udoqydw7JuFiPjv0/Mbvon39zoKjUjfK40TB3aamUtyDGyHNGjpWMQCSmxvpvgkLXGO5a2RKvGMdq+L1u/Gyoceb95+Kv1QRwr+XTsqhI1xOt4XsLpuSMG6ePCPpWjvYMmJuDwQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=NtFeV+Py
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH iwl-next 0/5] Intel driver conversion to
 new hardware timestamping API
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

Since the introduction of the new ndo_hwtstamp_get() and
ndo_hwtstamp_set() operations in v6.6, only e1000e and iavf have
been converted.

There is a push to get rid of the old code path for configuring hardware
timestamping, so the reset of the drivers are converted in this patch
set.

Vladimir Oltean (5):
  ice: convert to ndo_hwtstamp_get() and ndo_hwtstamp_set()
  igc: convert to ndo_hwtstamp_get() and ndo_hwtstamp_set()
  igb: convert to ndo_hwtstamp_get() and ndo_hwtstamp_set()
  ixgbe: convert to ndo_hwtstamp_get() and ndo_hwtstamp_set()
  i40e: convert to ndo_hwtstamp_get() and ndo_hwtstamp_set()

 drivers/net/ethernet/intel/i40e/i40e.h        |  9 ++--
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 24 +---------
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    | 43 +++++++++---------
 drivers/net/ethernet/intel/ice/ice_main.c     | 24 +---------
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 45 ++++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp.h      | 17 ++++---
 drivers/net/ethernet/intel/igb/igb.h          |  9 ++--
 drivers/net/ethernet/intel/igb/igb_main.c     |  6 +--
 drivers/net/ethernet/intel/igb/igb_ptp.c      | 37 +++++++--------
 drivers/net/ethernet/intel/igc/igc.h          |  9 ++--
 drivers/net/ethernet/intel/igc/igc_main.c     | 21 +--------
 drivers/net/ethernet/intel/igc/igc_ptp.c      | 36 +++++++--------
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  9 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  6 +--
 drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c  | 42 ++++++++---------
 15 files changed, 147 insertions(+), 190 deletions(-)

-- 
2.43.0

