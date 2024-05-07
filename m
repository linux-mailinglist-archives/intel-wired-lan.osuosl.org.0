Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5589E8BE6C3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 16:59:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F56E4116E;
	Tue,  7 May 2024 14:59:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VvBzbRuNK-tO; Tue,  7 May 2024 14:59:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6B184149A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715093991;
	bh=ouw92ZMuitPEtDE46x5KnkYoabGRP2AEbwJ6jhFe1t8=;
	h=To:From:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0IvgCE8mgtowHpfyfoeF5XnUh0kpFw7h1NLJdmpxz8VujHb2xwDy9naQkBd77PcFZ
	 dOjkfN9fjACDiZ+t1duyxcLYz6phHJTAeHGy27PTaSv98sYoYVra5iNil5npnGMyrz
	 XDBUD5tpRK3KMtMiBNZ8FrLTr39MKu3NsJKPANldeyBWlzJ5zCfqzn1EYuGpKX7TWb
	 Nie6oUZuMp4LIZHvAhnm2PpG8RNbuAvv1/xjZX2u3fzcYcILSqyDD1RrFpE7aJK7na
	 +8ToI1IZQqULEBlZGm8wu1Uf5eoHOgOMVYBkiknalfhlb+sgICG1K3XYnzdrHKI7Fp
	 /PPu1I+W8xQew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A6B184149A;
	Tue,  7 May 2024 14:59:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B1091BF288
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 01:20:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EA26A60A39
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 01:20:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E7AHymhcdY-1 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 01:20:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=205.220.177.32;
 helo=mx0b-00069f02.pphosted.com; envelope-from=martin.petersen@oracle.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 00E1B60901
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00E1B60901
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00E1B60901
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 01:20:14 +0000 (UTC)
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 446Mmpfc015604; Tue, 7 May 2024 01:19:59 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3xwbt53vf4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 May 2024 01:19:59 +0000
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 446NE4PJ014049; Tue, 7 May 2024 01:19:58 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2101.outbound.protection.outlook.com [104.47.55.101])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3xwbf6rh7k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 May 2024 01:19:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gJpVdewgKb6E1Lz7W0U076DFqKTf0yx3PVWEE73vwvMHSzj5xc687YFmFdBsvPzJz6SXqUR0BcnJZOspN+AZQoQ7ccakyfAqJIHxgfU/DKjh9lCyTTX/pMBCRWn13baPJXx6n2qhR18P2jqUJOb7lKA2BP41+O0QeRzjv8HO7NHcP5ts32u1ndiCr31prExIw58CaVcHxjS0fD+Jbb4mH+X4BSFHsEg4YlN7UZgPW1xxiaMaOYykTfjqQVsBQCflJedR3L+LYPfpnlPxz4EoCfv8lgPcejY5uvCgx6AUDX4L0QCkkX1giwwYROYdzM49v7Bbr3vlLEsLOeZAddrvKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ouw92ZMuitPEtDE46x5KnkYoabGRP2AEbwJ6jhFe1t8=;
 b=k7ehAZgFY4JS1qF66Ywl6REnw3gmmFBtFNd2Gm8i+jg2TyAphJGRrhBgk+UsH6uUByelyxB28hLoDijklZod3aZUSQEi8l3BdMZ+vre3/6LgDC7ZnvV80SQ6SdUAP6mn/fCEEZy/ThFhz1pZCDgYDmO6diAUzASl4f26Ja7H9F/3UVdtGf4FaO8zfkZklHrpmCfYI8j1/atR/lUBI48uDe/KOs6PRWy/2L+5UI0SEP8uhSeKQVpWA1QqYaHgpKBDLAwhZy5FpIoX3v4/4iXGGouTVFxEE2Mo3FJFlWs1bIY5sqopekdFxD0NTx76Rn49UYKLvLD3f3dy9gJ/O0i1kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by CH3PR10MB7612.namprd10.prod.outlook.com (2603:10b6:610:17b::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.41; Tue, 7 May
 2024 01:19:54 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::5c74:6a24:843e:e8f7]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::5c74:6a24:843e:e8f7%4]) with mapi id 15.20.7544.041; Tue, 7 May 2024
 01:19:54 +0000
To: Bui Quang Minh <minhquangbui99@gmail.com>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
In-Reply-To: <20240424-fix-oob-read-v2-3-f1f1b53a10f4@gmail.com> (Bui Quang
 Minh's message of "Wed, 24 Apr 2024 21:44:20 +0700")
Organization: Oracle Corporation
Message-ID: <yq15xvqzadt.fsf@ca-mkp.ca.oracle.com>
References: <20240424-fix-oob-read-v2-0-f1f1b53a10f4@gmail.com>
 <20240424-fix-oob-read-v2-3-f1f1b53a10f4@gmail.com>
Date: Mon, 06 May 2024 21:19:52 -0400
Content-Type: text/plain
X-ClientProxiedBy: MN2PR04CA0030.namprd04.prod.outlook.com
 (2603:10b6:208:d4::43) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB4759:EE_|CH3PR10MB7612:EE_
X-MS-Office365-Filtering-Correlation-Id: 939d7412-1d7e-429d-9718-08dc6e33ccee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|7416005|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?O4k9DAbD8eraguSeRj3GMtDaYMMsro7qY+XRKQ0jKltWpNS5btagxK9ZBd6a?=
 =?us-ascii?Q?hNy0WASx8a7FxJFxeTI1VkWWS0ma8xeIfpDiUVB56noYpVBsls2q0sy8iyK3?=
 =?us-ascii?Q?oCwGeHVUi0q8V7yauOz6OOTQxTJHpRDUpKF7fiiRrEzL7BDFFPJPOAdtKbv1?=
 =?us-ascii?Q?dyCpSueuaRbfXqyxzBqcgAjHj0Vc46ux9fK78uemFmkb3Qx90HqtsBzxhBRo?=
 =?us-ascii?Q?x0IMrsZ99Zy3SUCptTF16iNGlTi91OFzaG1RQhfNrEufBwzklVW4H2J6drz6?=
 =?us-ascii?Q?4LqHNokiVH9zhvmthU1tIDI5dNbjzCEBUSPFI8QY2R8If3ANXpFw5WeTFt3u?=
 =?us-ascii?Q?CkwqC7noTLD0b19v+IMgCrqrGMFMRcNze/OrpNrO9w5LwZh9+XzvgVlIbo3z?=
 =?us-ascii?Q?WWPyHbLVOLmoJl/RdU1tRyKi1VjhLgfWnPBGpiLWNYSGJ9RbLMsfxf0nWGC+?=
 =?us-ascii?Q?MMeukNTie2ljKz0/pks5VHQEebHhTmouG4Ro6qRqK/X1TZKxF3vZiaqs4Mpj?=
 =?us-ascii?Q?oFzrJYFrLn8rvBfyI/DmOYkQa+NUYrBdFTlVaXeBNzJthiKYBebif0pa8osd?=
 =?us-ascii?Q?WmjDov7UlTwMGLHYvU+x/wTyKSYQrYQu4nUI+WVziWMvJOGmmwUb6zyp2JDE?=
 =?us-ascii?Q?8kxjzu1qGNKk76Z6yj+sTmB1gWKc10pfpdsLXcxCaNjGqXVCZ5k4TPoiSvyp?=
 =?us-ascii?Q?MP5AkVT6CKHBuH73KiAVLnofgqsQM7Sjt0wKOVK16u6EgC04ej8K0kgRrkpG?=
 =?us-ascii?Q?XdFJaWzZvSmXWUCwWp60oWRIH85x/tosKiiAnCBpp12r1WX29S77LYxRUmrN?=
 =?us-ascii?Q?0I/+rUzjois1uVWjycolHI8cOE+tI/L4vnlHl9XQTRdwHrYwtJiXkFFPTjZE?=
 =?us-ascii?Q?I6c3ZYSUHCnC4xQumFgbkvTVcsgfDTnR6Lrj6N5D8liU/3nsCLaYc+8HO8yP?=
 =?us-ascii?Q?TMOM/QmiTBqKh0uwaZjaXCGxoZ+pHQniKDRXKW0aGLWJpaVP2z+3i02WLYJX?=
 =?us-ascii?Q?/tpq3D7puQIk5ZK4dX6XpZNTN765lds3i8WUjUlTcxjweXL457By0xHOia8X?=
 =?us-ascii?Q?Nk3qSsWdl5Cq8PCrtkyE+pwSQ5liNJL54d90L3n9dVomegUNzYgkpPv2ToDH?=
 =?us-ascii?Q?c4Jp2mTtGuJrTYhiEaW9amEuvgDNxLxAE0Xys6xVt4MYL9yGzfSTLzoEC2Bd?=
 =?us-ascii?Q?AzLT+WuZzkIRSjn8AfdLB2wAuABcgyIllbS/sxC9QfQjhCH16Y3cug5xr384?=
 =?us-ascii?Q?r5G8BSNqFZS44hdxCGVYJv57Lwi9gtyuP8KS/AiNTw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR10MB4759.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7416005)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BCBEnPpoeF20A0Kg4RkQYj0XHGmznv5WsePjWtDcC5vfkPdqZxzhFbo79igQ?=
 =?us-ascii?Q?schIAyUQPkC+jd2aI+0WNWzTp7rdJATcuDWeQDqIuD384DQ3qnkD1+AEu3Hx?=
 =?us-ascii?Q?esuW+xL47Xp8CG/xOAIqJ0PpF3UMroWGOFiR3FE7oo9YSvD1qDnFSLP5iNvm?=
 =?us-ascii?Q?t1SlRT4WgifzrOrgiKwElnEKjWeCpdJPAwk4FX1g4cTGkLnDA7oN1F+8DXkM?=
 =?us-ascii?Q?PYZwQ79Jn7ReryVTkyi9eDWs7lttxOyH9xE64VfeaErOoiww4so5o6cUPxYf?=
 =?us-ascii?Q?ZPmw1VGKgd5c17Q9I8IHOpg91m8tLcdHOQN2li4XbWYbzfbJrJaiCv8lLz3h?=
 =?us-ascii?Q?gSJqqGMwK45Z9NVx7Vm2bmAPQC/g21mOepzmvHBN6C5P8CWIY8pCpGRDBs57?=
 =?us-ascii?Q?W9eJ/vSOKTs81a5TsBm3q5l3wdVKJCDglXGcxmrHdbUVosJjMnKhLAlWNQVw?=
 =?us-ascii?Q?K17CwPtK7GRXJkz7anBaanbhmULkRRWkEoFI4iyKH7uP67Z/MeTbJPn7Rt7t?=
 =?us-ascii?Q?Gu1tnViy+JHzeaWEmN3MF7ZPeMPxCNKDiYa27+6xMY3QTwQbSql1jbSZlKMQ?=
 =?us-ascii?Q?GQye7FKyOfqzabDZqMRdx5xkI+aVTcVmUU1Nh8bLQ9WuU+EXcOmdGEe+KLlH?=
 =?us-ascii?Q?CVwNDcs9PPS6aLF/he7gXcN83F7fDFf128M00Y1QKQWzOmkVz92dP6CglTPy?=
 =?us-ascii?Q?xXOgELIViHXrDoDoBmaqGgFk81BKqBYF4PiS7JGCEoab7hZLODNjXoWmEXKu?=
 =?us-ascii?Q?dH6p9Nvl0AiXhnepOpTk27iDYR8wE4E0TJ5+18KYFxUEuI6/CPMtU58x+Uj9?=
 =?us-ascii?Q?x0Og/sLVdrfpK7JbZNPul8C7JaiFOg/xKTcxHWmYsmU+VcLbU3Fo840Z8H1Y?=
 =?us-ascii?Q?iB3gdWxa/QfY+yDVLrtnwZQZxyZhrQen3aaUDIc+YmEA5qnzYgNdtrCsYc0G?=
 =?us-ascii?Q?ZhbupfLoIjhWGgcirthhJSIykc+A2Ps6h7+NffdKmpu4E21ck8Rb0mkdJhty?=
 =?us-ascii?Q?b46CeeYfi3OezbYSN34+kRq/MpfJ+5psrqzxNCbuXTZ15tCmIv+QRnR21DCV?=
 =?us-ascii?Q?s+K+sc41gzqy7PXo94pjE/K1RFiAQ3/MckuANYGzR8Hklt9+EG6xNapili1U?=
 =?us-ascii?Q?MavGUwdiRJ3TYIF7sPkMA7s7eCZRH3zxG2oSNq6S/hnBjpAXBLTkpy2G4kTp?=
 =?us-ascii?Q?eTzdb671RhehqcP4gNuEsQfpq8GQueStwKnLmtlXk3JXJDYpsapQokqXRTn0?=
 =?us-ascii?Q?tXSeRg4PUM9ZM5aEhKucX+QHrYBFbmXL/sFSaZTBVj5CXpETDsFu3sFgc0cx?=
 =?us-ascii?Q?oKFsqEzt1cgjPAYp9QO+dmAabEeNlZu3fP+eAudxS5JGdWSroXNvBFrqur/F?=
 =?us-ascii?Q?wwQ2wv08Byub9ROXUa/S6WMv2wXH+iQs47gWQ9iEwDN8JZFknpJDBTwwtz3Y?=
 =?us-ascii?Q?FwNontRdShOvb+bOMi8LXeoe6tK0lTR0jl+Qn8Tax/7fqz9xEAuGDxmhToUm?=
 =?us-ascii?Q?H76WrXP/prxIE+eul9LtM8jrfUhPCiDHuIKy4tthRf4NYBXpVDjJlvC+HHiH?=
 =?us-ascii?Q?lCdH+bn2SceLZJpFarrzzqhc61bsJPYS8B2sev63uPR+8h+7Gjd+hDK17wZt?=
 =?us-ascii?Q?Lw=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: OWD45tU+yhYi6e5bnymYKs0lY6WAg21Y9JcqKj6D+xRJmW1RShsjj8cniZ7et0QhoahNb+tUlLic1AwOOu+3wUwpWo7Gxv430qz3t3kMwA0rIIFrAWIOhULGDw8NNPC+QyZRKdIHOunRfbty1ZAmafJxOELj5MPt1W9zYfEKyq68YqygOOPWwbQbna0qOmg0r50k9OFy+tNS+Atch0dfZydjfgh1I0y0pYPIMFYdvbREDWUOlnEa/9xh21ngGmGXLVGLMuOlohW43OXunQPa/kt+lsmLeuxBdRrCRJaa4J5axt0652iIuVzOJwD/HhuuUFeyRVGYdgQrsFdMizD099x4XmnAG4wSkBzq8xOxWAZfUAPzh+XMbYhsXIHgHxAaBVx3m9QfCMEQYzmyFbvZ9vxsXm2AK9IEO+Kzw9EMMpSK1Z8V2w+g/g9O7uZi1lngSZry+Fi3/EaeI7GGEENHjRNeeRL6m50l9P+BaMa+sPvJP0rpARYaTl+DZFUcev4MVmn1yfO5TgdNucS7hDr6YuuyEdKfvrTC6wbUbBWMHv+MiJAgcawfEyJrCDevt7PmaL/29OIOstDqXe6BDCv8wEtx/GHdgGOt9vze/GvYzW0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 939d7412-1d7e-429d-9718-08dc6e33ccee
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2024 01:19:54.2125 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3FJDhlDHkx8N+8kxkpykN/1FPc8BzsegdL2940fu1fSIMacRXF9n5dFqKsCNhEDRzu5qlzFawYJza+cwdwHqskPKRGMc3nAew/g48jFvOpI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7612
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-06_19,2024-05-06_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 adultscore=0 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2405070009
X-Proofpoint-GUID: wIwkuZulSmMrACr2azrjBQ2XQbA7wzXp
X-Proofpoint-ORIG-GUID: wIwkuZulSmMrACr2azrjBQ2XQbA7wzXp
X-Mailman-Approved-At: Tue, 07 May 2024 14:59:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.com; h=to : cc : subject :
 from : in-reply-to : message-id : references : date : content-type :
 mime-version; s=corp-2023-11-20;
 bh=ouw92ZMuitPEtDE46x5KnkYoabGRP2AEbwJ6jhFe1t8=;
 b=K9FSH3QykcG0FLBTYjRzonemJNLA6oFdlmPQBvY34GlQ79nFzDQOih/I1hydyWoMevoB
 yNCgON1Bjx6tVDBYX558S8LUUdVsoivjobbzg8lZY42we5FDA/4Z2DHzYvL5CT62jdEh
 e6FKM2LQMmm6IFkW+UQkTxnjEMNN1Z2XG06XaeqTOmXstJJik+1D+0NbVI68l++ptvtM
 DsB9fpuYkKx0hf0nLnl2q3UbP1xsuvWnpL6SN/uJmMxeUzvxmWikmsooioMbha4O304l
 oKDElEaXpDPah2G3nvcbwi+FuVlu/xzaenZxssCY8bd+pjGMPRFFE738OUNw6izdbv6o cQ== 
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ouw92ZMuitPEtDE46x5KnkYoabGRP2AEbwJ6jhFe1t8=;
 b=ntVm5zG5C1hU57ytYE8f62rmyLkwb0apNDa/4JH/Sb+kZq6TKVNMKtgdEuh7i465jW4oNk0ugZnOo5+auHDEHogXm4YBNdOE+zvah2BhjL1ITVB1Bt6miigA1NWBUKOrrAAYTDxcuuwblMr20ULi4egQMD0DpetuHv/LY2EmzH8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=oracle.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com
 header.a=rsa-sha256 header.s=corp-2023-11-20 header.b=K9FSH3Qy; 
 dkim=pass (1024-bit key,
 unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com
 header.b=ntVm5zG5
Subject: Re: [Intel-wired-lan] [PATCH v2 3/6] bfa: ensure the copied buf is
 NUL terminated
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Subbaraya Sundeep <sbhatta@marvell.com>, linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vineeth Vijayan <vneethv@linux.ibm.com>, linux-scsi@vger.kernel.org,
 Saurav Kashyap <saurav.kashyap@cavium.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Linu Cherian <lcherian@marvell.com>, linux-s390@vger.kernel.org,
 Sudarsana Kalluru <sudarsana.kalluru@qlogic.com>,
 intel-wired-lan@lists.osuosl.org,
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sunil Goutham <sgoutham@marvell.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Geetha sowjanya <gakula@marvell.com>,
 Arun Easi <arun.easi@cavium.com>, Heiko Carstens <hca@linux.ibm.com>,
 Fabian Frederick <fabf@skynet.be>,
 Manish Rangankar <manish.rangankar@cavium.com>, Jens Axboe <axboe@kernel.dk>,
 Nilesh Javali <nilesh.javali@cavium.com>, GR-Linux-NIC-Dev@marvell.com,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Saurav Kashyap <skashyap@marvell.com>, Rasesh Mody <rmody@marvell.com>,
 netdev@vger.kernel.org, Anil Gurumurthy <anil.gurumurthy@qlogic.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>,
 GR-QLogic-Storage-Upstream@marvell.com, hariprasad <hkelam@marvell.com>,
 Sven Schnelle <svens@linux.ibm.com>, Jerin Jacob <jerinj@marvell.com>,
 Sudarsana Kalluru <skalluru@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Bui,

> Currently, we allocate a nbytes-sized kernel buffer and copy nbytes from
> userspace to that buffer. Later, we use sscanf on this buffer but we don't
> ensure that the string is terminated inside the buffer, this can lead to
> OOB read when using sscanf. Fix this issue by using memdup_user_nul
> instead of memdup_user.

Applied to 6.10/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering
