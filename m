Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aH5yFT+RhGkh3gMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 13:46:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDD0F2C2B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 13:46:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0395D60F58;
	Thu,  5 Feb 2026 12:46:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PKR4cxATrfvM; Thu,  5 Feb 2026 12:46:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DC1260DCA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770295611;
	bh=HL/KLI9FlEATDsQYpaC8qLWkZTrbyhTT2XaTA2tYbgk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2ogzl4gbvFt2AKdJXppM5uiKYOsGkgDHfm6XbDCfRqR/v7VM7wWa/acKANraEIhu8
	 Uh/IsOTQ5Xandk9fzU5Mb2Zzq0m8neG/C4qxw310uMGmYADmDR2oLE379UP7N0ded/
	 EseHc3778jycsgvm3AI9KYD4QPP38MZ4TGhQMWffDJUdXsqVLX1NNBNVOpvh2rTQ60
	 dfKh/dk+xejYGoBQQ/dqaG6AlXGGCX26XxXyD6hR8YpexcXrMJXgIxzj+jIlTum1MZ
	 O5Q9hORELm+HeIVLe+A8ozRQf7u4nj9bVzcJ9Q8AwMbX0YvaaUQIVlAmMIsqqkbzmb
	 WhFcrpIk/pFlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3DC1260DCA;
	Thu,  5 Feb 2026 12:46:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C36217A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 12:46:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4DB4E40A56
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 12:46:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QIiPRRqxIXUW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 12:46:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.130.64;
 helo=mrwpr03cu001.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3978540815
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3978540815
Received: from MRWPR03CU001.outbound.protection.outlook.com
 (mail-francesouthazon11011064.outbound.protection.outlook.com
 [40.107.130.64])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3978540815
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 12:46:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IZUzqms3FkV9ryRBOw2fvGjRllUg9qk/VQDSNubNcWM/ysTU2qdlT593aBgIKa5RhRylpD++2jhR66KhTz89cR3c782uF3VGDpHni4RJ/e9OY2ZU2lc94/rxp3F5oNPafNnUFbG8CXlK1Yokda3jVqKTUmQpIEACM/r2BMYU510BJoUENkUQf22xHuzAGUXsCKwQZKBD1ZlTFxPW2nkHJa0eLT+4+7Jz/HK88Ducpp4e8pA03p1x41AzE52CbbZdtnvTouggToh+m4v7n+wpSd2urj5gys2X0MLE+kYSQi0MlYbjloSsn1kIQS6M4ak/+jVFL6S1AZIOLIwspYw6nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HL/KLI9FlEATDsQYpaC8qLWkZTrbyhTT2XaTA2tYbgk=;
 b=i2tfNkYuuXYgqMD2rW1kKNV1QEhtSj7qBidX2OQ97J/AbqGePKo61td4/lBzw+VcfsYkm39/jyqzudKTToZl3SGMsdvea8oYxAiTVH0Hd69Ejv+fvyIpi55EumqpEXa8J5Ulf9SYMdWn9p4yJz7uiguQwdjiNulZr8/S9dQ5/nBxLkU4tXEA4r2T6pE+fBZk+uHCEM/Y1eFfJJ8lEVKp7J32SDx7BJ2MTD+2vQ3OVjdx+pf9baBkBgbyDKi4F722Hwo9P6eZoMl97tUG0QB2j/AacDohcleXq+o+hRbUQjsKGkxuEgjRN2XiIJJtvXffzab3OwcvqpFvKs8TvsskZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by AM9PR04MB8841.eurprd04.prod.outlook.com (2603:10a6:20b:408::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.14; Thu, 5 Feb
 2026 12:46:43 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4%4]) with mapi id 15.20.9564.016; Thu, 5 Feb 2026
 12:46:43 +0000
Date: Thu, 5 Feb 2026 14:46:38 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Wei Fang <wei.fang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Simon Horman <horms@kernel.org>,
 Shuah Khan <shuah@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 "Bastien Curutchet (eBPF Foundation)" <bastien.curutchet@bootlin.com>,
 Tushar Vyavahare <tushar.vyavahare@intel.com>,
 Jason Xing <kernelxing@tencent.com>,
 Ricardo =?utf-8?B?Qi4gTWFybGniiJrCrnJl?= <rbm@suse.com>,
 Eelco Chaudron <echaudro@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Toke Hoiland-Jorgensen <toke@redhat.com>, imx@lists.linux.dev,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20260205124638.hxzvjiocephzlrk3@skbuf>
References: <20260203105417.2302672-1-larysa.zaremba@intel.com>
 <20260203105417.2302672-7-larysa.zaremba@intel.com>
 <20260205005901.gnju3zmqimtgeu2b@skbuf>
 <20260204173401.282899d0@kernel.org>
 <20260205122953.lscemcctayrvszdu@skbuf>
 <aYSP344FT-JlylwY@soc-5CG4396X81.clients.intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYSP344FT-JlylwY@soc-5CG4396X81.clients.intel.com>
X-ClientProxiedBy: VI1PR09CA0155.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::39) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|AM9PR04MB8841:EE_
X-MS-Office365-Filtering-Correlation-Id: 591ce24c-759c-4818-aa3f-08de64b49da7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|19092799006|1800799024|366016|376014|7416014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?evE79FNDBdIYnt3gZSOZbPEFcdSzI49SEkQCo1xNn+ImwZRA4AF5ct5wqOVy?=
 =?us-ascii?Q?MtkNVuuMfy06Ro/gfz/aUXZ2BcxbzfD3FwvXc46zsxG8s8DfYCe2su+7g4CG?=
 =?us-ascii?Q?l9RgLrgf45XfKmJ6U7pOaPOFZITJDyUlRECNJsXWMRP1q1GkTAx9XkL6tHtz?=
 =?us-ascii?Q?VTh4e+fdrep7+nqnCE9yF7tbi5pwDBnR4bAT2rGeeFNYADOPbcBr86QBrvgH?=
 =?us-ascii?Q?VNAdef0gEIU4Wvtvxmtj9LLsuMX34vBZcFPoS84a7QXbylxMwZBPyaTD+SJX?=
 =?us-ascii?Q?bxTAsfGCuyz7nvnZCGe2As8ivP2Rk5fW0Dow30+Vu3O5SbcBF2qQ7kHFxV5Z?=
 =?us-ascii?Q?6mL+l3QsGUnXtHLsJtrBSKQIapBfFx/Xxdu9WUUdL883YbF6pFnKxWfWInSY?=
 =?us-ascii?Q?257cuyFVPKnYB+kh2gZcDhYJj/inG2jbEYEPXRj5jI+C4Gh1dZUwSz0xuNjd?=
 =?us-ascii?Q?f1kPuMt6M6Fn6zxoWgZvS5tVSWpbeIt0CtNmgokEiGuBj2mPhS9FN9zilGNf?=
 =?us-ascii?Q?8W16gRzXaUdoZNYewo/4KX0jxe1N4Vht4TFJgmdEkoGtsLjkVfh/hDK0hJau?=
 =?us-ascii?Q?UhbS5NgBdUWeVV3H0zIpmK5q57TZ6rAg6PbFZs5C/xRzpC9Vw27z7C/BlMAK?=
 =?us-ascii?Q?/mOk/GohzfIx/NiDh7QttInljhAYgD0ThrEK+FPytewO/3lVPu+/qeY57cxx?=
 =?us-ascii?Q?K8lv++296c23/ISRp69EUBmOwUAtGbeQSfF8wNEVXqn6qH/5hSsB506lY9tI?=
 =?us-ascii?Q?j0pOBJGVFTMUMpKP8JABBhGLyMmYbwjMQUuHD9EPEFT70eWLtq9uPP0toIKq?=
 =?us-ascii?Q?oqTxOUNLQxkBrVg3HpBnBhJa6QjfX3O5vp2WcxdNfiC70v/F1FaU4ZjsgXwd?=
 =?us-ascii?Q?LynTlVFeVWrtRh2i5CqdEmO2Ov0SPa+PJuoYKZjzy2xI3QvQ7CLEqcW0yXLx?=
 =?us-ascii?Q?Ghr+MXi6DsuaRJ3c8LnLaG8LjGu2IZVsbhvzhexG2XgRnLUpY4J+Lu7e/Rb0?=
 =?us-ascii?Q?fO1e+8n8FJMEy6qbRAxYOjX/dECMNCsv4ZnWeziCxncIl9d7WLGCnIBDOP1S?=
 =?us-ascii?Q?19lcOJ1IUyB7vyVdKU5OMLoDpVCuKTCrpg3lNxVoWw8xJgxUwBJwjHE8saI3?=
 =?us-ascii?Q?zpzcqEfY1PYZIPzXW4rXt3ION3e2dquo1teVxJkm1zqKqNR8dTfSeB4kdK8e?=
 =?us-ascii?Q?uzYIORk0k81JWVeH0SyA7DL/Kb5nKH+cZgYzibjVo0b2EUxoAU9fOY6j4BvT?=
 =?us-ascii?Q?SGNT4kLQoZnMStjpuAicohsgMM8JSjmJwTF6jIl9s+yAIW87O9ktmt0sYe2T?=
 =?us-ascii?Q?rQwnkx78YvwXLWh6I/zgCTE4oyxdT7b4XS6kLEGQeTrmHHKEoM/7hdJLyeQV?=
 =?us-ascii?Q?kBsANj22uIZ+azDf2qc/1gEvKnbom/k1gVT8xygcNg/LeaAYmQIx0C3+a0l4?=
 =?us-ascii?Q?ef/KcF0i3hignWG7awW6kHH65zj/sBlGz/FKAu7+Nkzv11ApA72VsdYWHCRs?=
 =?us-ascii?Q?fXo6RHLEkDByC+WOcmkQC71SJhmlUnD3smCFYan6rx4WL2ns9iUltQ5X0c96?=
 =?us-ascii?Q?lbPZipohAGGg9gJuvZw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR04MB8585.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(19092799006)(1800799024)(366016)(376014)(7416014);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FQ1z6OntvFS5y6KJHaSBD3DsGxSFDCeEdR34Wlh8uc9jiv4QzZwocHVg24/T?=
 =?us-ascii?Q?FmUT5hhi8BKGqqT5gd5Sz40gUzrxyaX8fdq+KNMFeXbt4cdLzS8LpJpdPoGR?=
 =?us-ascii?Q?rdLYCHo/qy48yNGP+J1OOI8qbDgM++gj+taJvP71DR9GscFLf0FJc97MxtKQ?=
 =?us-ascii?Q?oztU0zjk347lAB62ULlx4QhyhDBCwh8GYWW0NMZKMn1Poxpdd/H8LwAjdtn/?=
 =?us-ascii?Q?dAHCOGjlzjT41OhYLNL4W6Jk3M+C/bWuU6ig8+fVtBHPpTVTAyKsRcpd2jCW?=
 =?us-ascii?Q?wwB5opbKH0Q4YGT8eRg1n+0MiM951o5tbwjUSfRuDyDgDzcWRvsbX8H8C8LL?=
 =?us-ascii?Q?K6xcbf/PxBaxR+Gtt3nbu42TRkkjwdBOpmILrH6E9Vh+uD/UiVmmxBLccEF2?=
 =?us-ascii?Q?TTM9B8ofCJtU7tMMut7c8PoTT6GTWB5V7M90KiWPV8tEJRSesG3Zp6YviTRy?=
 =?us-ascii?Q?eYFoS7xvqvpxeKHNof8vnDSeRupRWHhl6wkClKBAgIoSUrelk7rupV+5kQlM?=
 =?us-ascii?Q?yJ6YXUICIa6K/dVIqUwzgJUsySjcHv7zXVJPFmv59i9+ihcWk5sYPyIxcKs4?=
 =?us-ascii?Q?p898E72gcGze6IBoBr/qDo5IFGEbdSYalBiyaQQigr720lSyMj7dcYsxm1th?=
 =?us-ascii?Q?RDbirfpqOpes5wlpMuC/7e02V+TriC/lIZgdZbe+P0QOThCyyhOoCguPXGTR?=
 =?us-ascii?Q?6HJKAF99Fn+XHwxTEOE/Jb7eaZI2Z317ViMgPf4oYaaenL9Fr1+57Ah0LjyD?=
 =?us-ascii?Q?7yfuWSsUqR0UPjq2pheZMScd8q5BEx3mv3Mivs1HJXd8x+3usYqRTIBVdbqv?=
 =?us-ascii?Q?WTJjpP2V5yOPskkmC6BSQlnZRgMUNAnwKSIVNQBxGwmC9oHmmcNiEZB8xVK9?=
 =?us-ascii?Q?SuoHYLkM27d/Rzr7VhaoKrqwjtBDIxt57++erKnJ2W69oJOyqzsIiKMQMvpC?=
 =?us-ascii?Q?6IPqM4bhsPjAeMopoKfn3e3zozIAQbuo40HsxU+cflf5EZbzh00FZQgQ+867?=
 =?us-ascii?Q?p6qUv7Zv6KQlhLARqcvGTuFKf1Z30iW6Whp1NS/HjYRIUalReRjmr8CPbv8a?=
 =?us-ascii?Q?xEVzCTHsGp8MUIfRAKFWhRmf/B/pHnhhrf/81zOXUmEQKihBQySCRpqm5Bgl?=
 =?us-ascii?Q?AfnaS2Kz6WjSvd+AO96J/8suzyWksTCJFhRZPQuryY3YvgGRZpdKK2js3c8f?=
 =?us-ascii?Q?+HDWz+CwX3dRWvIKrNtiAPJ4qt6KIZMQMPLRecgLtjnHaCm4eu9Sq/CexWOq?=
 =?us-ascii?Q?zaEUcFeQH+2Lc/WgZNCDsLetwdPztE3VTi5Maa02psT/Fp3+bTDZMVDHQxnm?=
 =?us-ascii?Q?ywJiAprGONcZ+FA0AXncxD4pHXyJN4OrIagG/FbDRKYWv1wwTxuCHOwIKVTf?=
 =?us-ascii?Q?LTG77F12nKfiwONgTQp61a+Rmt0YD0gYlapg1REllpV9lJVOu9Rr3SaQGDoQ?=
 =?us-ascii?Q?ADJyl70rBjwSrCgFiDXbfFY4zZyFiJDkuF8OHdQnWaDDLZ0b/jck9oUPOqcq?=
 =?us-ascii?Q?t9ruV8dOx0sZNZWSn6cy84UKTZkUb7x+C2jERstLYC5mxI8F+t5/DCZgwTqk?=
 =?us-ascii?Q?0C67SZ5HukCg6/I1PSwQPBEtVaG1C4gmMoEcG5+4NItiq5e9OAerz3MZxL8l?=
 =?us-ascii?Q?d6ujzoigJIiSe25PVOjq3o6N6tAN1dmPxJGMVj4KD+JqBdOQhwePObtnsW2c?=
 =?us-ascii?Q?YDaKjvmgOZL/ncgHNPp68ziVQ2Oq2VLbFhdeVhd8sBLE6CKFhaKr1J0sZKQj?=
 =?us-ascii?Q?1r9/07DOOEi9G8tXOynwYAvQJmwUKbaD1pJwebEvPpGWBlrfUnLSGNNvkTGI?=
X-MS-Exchange-AntiSpam-MessageData-1: VyRNnX72SDKUe1EBPiBEbxeEMJbeyBTsj8k=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 591ce24c-759c-4818-aa3f-08de64b49da7
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 12:46:43.6118 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GPTWfJzpejdIWV4uDJ/+lUefnnvu9rpXTTWr+ah+7v2l2kiMNLfZtqtf48EuZ5bLSEA/9oze8fyeBqa0h5zPFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8841
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HL/KLI9FlEATDsQYpaC8qLWkZTrbyhTT2XaTA2tYbgk=;
 b=BltFniUWypU0cEmV/rg4QYXPNZOlQTAlu3u2L8/fjoeiRK7Zzz9ksFeBrrEh52SABbrI3AYINpRbKR3/2HSzU0yJWndZ18m4NKvjQvT770iyoHgg+xdG/eY63D/9ZKbA07G+M+cQJAKBbQR7ug+rA7rdfjr6WKBWlQBxRyPSox+6h2zky0RnQTfEDyXP2g6LXAOml8murA0mSkC/1kBphbVqRvLtklc+vE5qFmg8n684zJi3vFqp3VERqiKq3dkKxOkjG3EMDxwUmts0mcjTPCVzW+rJiQKA8Nbr2NL8LUTSvi563w2QR9uUxopN4AIzHC4KbTpgXKMprF1/efOFfA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=BltFniUW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf 6/6] net: enetc: use truesize as
 XDP RxQ info frag_size
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	FORGED_SENDER(0.00)[vladimir.oltean@nxp.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:kuba@kernel.org,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew@lunn.
 ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[vladimir.oltean@nxp.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2BDD0F2C2B
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 01:41:03PM +0100, Larysa Zaremba wrote:
> On Thu, Feb 05, 2026 at 02:29:53PM +0200, Vladimir Oltean wrote:
> > On Wed, Feb 04, 2026 at 05:34:01PM -0800, Jakub Kicinski wrote:
> > > On Thu, 5 Feb 2026 02:59:01 +0200 Vladimir Oltean wrote:
> > > > Thanks! This is an extremely subtle corner case. I appreciate the patch
> > > > and explanation.
> > > > 
> > > > I did run tests on the blamed commit (which I still have), but to catch
> > > > a real issue in a meaningful way it would have been required to have a
> > > > program which calls bpf_xdp_adjust_tail() with a very large offset.
> > > > I'm noting that I'm seeing the WARN_ON() much easier after your fix, but
> > > > before, it was mostly inconsequential for practical cases.
> > > > 
> > > > Namely, the ENETC truesize is 2048, and XDP_PACKET_HEADROOM is 256.
> > > > First buffers also contain the skb_shared_info (320 bytes), while
> > > > subsequent buffers don't.
> > > 
> > > I can't wrap my head around this series, hope you can tell me where I'm
> > > going wrong. AFAICT enetc splits the page into two halves for small MTU.
> > > 
> > > So we have 
> > > 
> > >  |                 2k          |             2k              |
> > >   ----------------------------- ----------------------------- 
> > >  | hroom | data | troom/shinfo | hroom | data | troom/shinfo |
> > >   ----------------------------- ----------------------------- 
> > > 
> > > If we attach the second chunk as frag well have:
> > >   offset = 2k + hroom
> > >   size = data.len
> > > But we use
> > >   truesize / frag_size = 2k
> > > so
> > >   tailroom = rxq->frag_size - skb_frag_size(frag) - skb_frag_off(frag);
> > >   tailroom = 2k - data.len - 2k
> > >   tailroom = -data.len
> > >   WARN(tailroom < 0) -> yes
> > > 
> > > The frag_size thing is unusable for any driver that doesn't hand out
> > > full pages to frags?
> > 
> > This is an excellent question.
> > 
> > Yes, you're right, bpf_xdp_frags_increase_tail() only has a 50% chance
> > of working - the paged data has to be in the first half of the page,
> > otherwise the tailroom calculations are not correct due to rxq->frag_size,
> > and the WARN_ON() will trigger.
> > 
> > The reason why I didn't notice this during my testing is stupid. I was
> > attaching the BPF program to the interface and then detaching it after
> > each test, and each test was sending less than the RX ring size (2048)
> > worth of packets. So all multi-buffer frames were using buffers which
> > were fresh out of enetc_setup_rxbdr() -> ... -> enetc_new_page() (first
> > halves) and never out of flipped pages (enetc_bulk_flip_buff()).
> > 
> > This seems to be a good reason to convert this driver to use page pool,
> > which I can look into. I'm not sure that there's anything that can be
> > done to make the rxq->frag_size mechanism compatible with the current
> > buffer allocation scheme.
> 
> I was just about to send an answer.
> 
> Seems like my mistake here. I actually think adjusting the tail should work, if 
> we set rxq->frag_size to PAGE_SIZE in enetc and i40e_rx_pg_size() in i40e, and 
> not to (PAGE_SIZE / 2), as I did at first, but in such case naming this 
> frag_size is just utterly wrong. Glad Jakub has pointed this out.

I mean, it should "work" given the caveat that calling bpf_xdp_adjust_tail()
on a first-half page buffer with a large offset risks leaking into the
second half, which may also be in use, and this will go undetected, right?
Although the practical chances of that happening are low, the requested
offset needs to be in the order of hundreds still.

> ice and idpf are fine, since they use libeth for Rx buffers, so mbuf packets
> always reside in 3K+ buffers. But for xsk_buff_pool seems like all drivers 
> should have PAGE_SIZE as frag_size? I will let the discussion go on for at least
> a day and then will send v2 with patches reordered and those sizes corrected, 
> maybe add ZC fixes on top.
