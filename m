Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71418B26264
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Aug 2025 12:21:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F6C08465D;
	Thu, 14 Aug 2025 10:21:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VcQkT5ewUUe2; Thu, 14 Aug 2025 10:21:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D9F284763
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755166894;
	bh=g66FfNAfdyM/r7sLMHDl0KevB00FRH9DeNz7Zc5iyAY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NLlQmkDPA36FnWPFURRtvOqQTiljyRoW37A3EOz3rmbCh6+9DJA/rrb4ECRDrwoW3
	 Ngr/ixE/oP1X/ivne5kORulfLkcfuaewaVtKpEZyGq+I4t35tay/Dnn0mht7jMCWzP
	 yjcvkFoTn6AlwhDRXQ8TTjAG0cVOAHZcTGgZ7bqCyz+GN+2AeXXMSZOrQPFZt9/77W
	 xNDifgN8Nx/2LWAupVAku37lvBOeYdmm0UK5IOElYAO3h4LDpWr+A3/Iesu9o9V+iF
	 XuPOpMQg9y/hkpQP+7t39w+TmIWCJvsDREBLsEFAgMDBNpb3JOBRHh8Dov6M1quupD
	 EwCcTG6Oh4F0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D9F284763;
	Thu, 14 Aug 2025 10:21:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EE72F1B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 10:21:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D4CF1408BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 10:21:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2b-geaqeLfSm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Aug 2025 10:21:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.127.55;
 helo=tydpr03cu002.outbound.protection.outlook.com;
 envelope-from=rongqianfeng@vivo.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0F40B4093A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F40B4093A
Received: from TYDPR03CU002.outbound.protection.outlook.com
 (mail-japaneastazon11013055.outbound.protection.outlook.com [52.101.127.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F40B4093A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 10:21:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nthomgXxGXIM7ZrZk/xnjYN7rY/4LBb2cfP4EJvGbWQjf6dsXHkxRJIghPkW6jgpC+xhxH2OsmtPuiK6hwZaPw/vgLjwocdgsNkXCTiejEYdqZm9eYRLyLukF5k4Wrsnd1D9uDrOBteqhWKXvnXbQIq4GxpBvzc+O0pBemDNNeFq5bAPYMECyrxtLRGOcM4DVg/A556dBVbAB9pg9P5Kn9y8/K5wa0E4qlmVjDtgSLezso52RSEbTL6lxlrDoxZCHdhQ1bx9arjozDVmPIQp89ucxKPB/rYhOoIKpQOtgVq1xDsrC6Rl5IqiOuT54Y9yP6JgK7NzOmGSg9yiRsvkww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g66FfNAfdyM/r7sLMHDl0KevB00FRH9DeNz7Zc5iyAY=;
 b=MtBKoivIxQ6LKw6frwogEPzg5+pndLmOGU6Ynm/o5kVudmzFJVGYAReHkzJy0dvba+53Qtd6JrC3gZ8YEVzlto0frQsqsHp+92mOPii3/7mbUrK5DaAJwcjYjrhgv5blBQJgDRekJXhWEtb4fCpYSUQDUeC8OP2uqIGqJP3Zt94sBmqHxSt+sUjjIr0xTN79FTk7VRXep8ikSCWpBXgrsyLSR/05VHCrJKC3QAw0c1b0T4x5472ODqFR44y7YEHEWV9j6WfNNFhFlbmWPi4h29+H6kqQiUYmd3ttIziaG6VlYrDToPXJIsSKQxiwpfv1LYgIdBqSh0of6vVuvHSLiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com (2603:1096:4:1af::9) by
 TYZPR06MB6699.apcprd06.prod.outlook.com (2603:1096:400:45b::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9031.15; Thu, 14 Aug 2025 10:21:29 +0000
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::468a:88be:bec:666]) by SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::468a:88be:bec:666%5]) with mapi id 15.20.9031.014; Thu, 14 Aug 2025
 10:21:29 +0000
From: Qianfeng Rong <rongqianfeng@vivo.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list),
 bpf@vger.kernel.org (open list:XDP (eXpress Data
 Path):Keyword:(?:\b|_)xdp(?:\b|_))
Cc: Qianfeng Rong <rongqianfeng@vivo.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Date: Thu, 14 Aug 2025 18:20:53 +0800
Message-Id: <20250814102100.151942-2-rongqianfeng@vivo.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250814102100.151942-1-rongqianfeng@vivo.com>
References: <20250814102100.151942-1-rongqianfeng@vivo.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TYAPR01CA0149.jpnprd01.prod.outlook.com
 (2603:1096:404:7e::17) To SI2PR06MB5140.apcprd06.prod.outlook.com
 (2603:1096:4:1af::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SI2PR06MB5140:EE_|TYZPR06MB6699:EE_
X-MS-Office365-Filtering-Correlation-Id: 304e1c5b-8e3f-4169-cbf2-08dddb1c5536
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|52116014|376014|7416014|921020|38350700014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6WUWzz+qDQ4cHvQc9qrCzCNFC10IORxvig2WkvPvydUvt5CSLEP9LwhMg6bP?=
 =?us-ascii?Q?4aWolG6q95Ob28ycK9Zpjt6XzCLthFTN2pG1NqQ6RN1Ddb4Cb8I8Y9q49WIO?=
 =?us-ascii?Q?ovMKkdwXQOdhSZIVFO5INqHwmoOh+ydueNhb0lPTRFuYl/5bIx+0zUbMmQiB?=
 =?us-ascii?Q?VSeA/yjb+bZD5XEvuNGGpsMq07TK/KVx1xVNW1tq98LHd082X6oTKFZHMd5I?=
 =?us-ascii?Q?BsDuPKRNolKf+r0kCbdvU3dIFZIgvU86rs9fHz5QXIrea7E4xzZqzvD+KT7K?=
 =?us-ascii?Q?YP9wxu6G1tExg4Ec1AI03Bp+mYhADXPoGj9FNMZsVSLuixVWMKoFeREaLYDD?=
 =?us-ascii?Q?zqFYDWDV7+DDAFqIf+lHsHK37dqLJjJ9Fh1zDeIxImboxCE+HZuzI9/qVY33?=
 =?us-ascii?Q?hS+DuOG5P+UWx2r8i0Y2T78ymyx87NaLbGro0UxKi8z3PcxxJjAWj1ewwD1i?=
 =?us-ascii?Q?+/LfC57F45JqGZIHKNgonv4YphXYFcua+6MBoc6FYkL161UdiR0mpbIBFjDu?=
 =?us-ascii?Q?2zRQRJEB1DOtUdR+laHVBpxnkfv0JNtBiw5BbENyvBa2h8msABnmYPTSZTwp?=
 =?us-ascii?Q?whY+BxPkkLkSzATJhvRv1zgQusQzUEeZlIRbgHMnapdZIeunsPLnIsP+TWga?=
 =?us-ascii?Q?7+ZmTRDxKbzLY6TUjQuC4Gi3roNEG1hIRD5bbRuNSR63Opqcv3aX5Ugyga3z?=
 =?us-ascii?Q?GU80x+EfMv6I3HvxY2RTWUCe90swWsYYL0WrY8fJeKNGAuCkpprP8iKGJU7L?=
 =?us-ascii?Q?ZXQuiijpbiffdMnb3FC3kDrX8NL0l92itNR0VxD5GVNNoWDWnZnaAo8fCkpb?=
 =?us-ascii?Q?XZaEVwGdmkVO/LnhLOCkdNcaONiBMus3PwNh2TpsC3fQn+S1Q4T3+PLdcSND?=
 =?us-ascii?Q?syZuXBBHNtLhR1Ncja8W684xa24+D9wvDDdSSnWSzFW9ipyj8HT++mkdSjnv?=
 =?us-ascii?Q?qmrfv6Fz0VTMVHV/At1bqHSeQzYhu93cySouf5ZwPqJ/xqInHxVwVRGNw0eR?=
 =?us-ascii?Q?nNccf+QoS9B3jD/3f1FKdXbAN7BRRmBXQsJlnmyeavazB1f2G/QpMYfgBNq9?=
 =?us-ascii?Q?w7qTQkEeBc5p2PEL5Dup1Um/aTYblMbXReI6v8HrF3A36mgFbA+N/iYZ8VTf?=
 =?us-ascii?Q?1GTaxbw7sXHOLklv/eFJ6WPwmsVOCeL7N2SBj0Nuk6JUgb1tCEeGS1ItSKOo?=
 =?us-ascii?Q?zMGCTBur16QXyC8ghSUk82nwvJ8b9IVe0MbzrgU5J8IxA9xRP0eVautXXSCM?=
 =?us-ascii?Q?5U/yghgmzInSkypJwJpFu+tRnHPzOe/O0dVFtvoI0tw2FQlzz4om0I4R9Y2v?=
 =?us-ascii?Q?j4keXjSw0zxllPpvVs5twQR+2UhUwhQzuQtJmZX9H3rqYr35nGFXmlg6gPS+?=
 =?us-ascii?Q?gJF0aG9c1PF5s+4CB/N3iqL7dyXChJqXLLEm8tw3qoH4QvGsKcsg3LXDWJXn?=
 =?us-ascii?Q?QAY4tacHyfH7INjxudOH0S7KhIYzrXTw9QX9J0SdI+LP6mQocatRpNPGNOmR?=
 =?us-ascii?Q?lGwS4LDvwt8Z8mU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SI2PR06MB5140.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(52116014)(376014)(7416014)(921020)(38350700014);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DZla3I8oDsu5tLA9Cz3J4cn67cCPI8MtgpIQqivfRtGpokotNooz2OB/eSVu?=
 =?us-ascii?Q?634HN4CxXj3ePaEsy2kiwWb++4feZSz5luX0dHmdb4b9p6qOmOkg6F9hY8FM?=
 =?us-ascii?Q?sQcRM7GVMgn8DHHB2Tuw2s5COWsJQ1n7xt5z2RNEzATRlxox31dljuG0rC3U?=
 =?us-ascii?Q?HpxS0zF9Y0bgcGeyLiXPwCMa7Dc+jEDwfEzq/KRwd1PJThdw20BR38y58wDw?=
 =?us-ascii?Q?GnpYqmNmc8+8rRvHzpZ4nETxl0vz1Scf1++HBg3zfvrl93ckNMAH/YTR1rfg?=
 =?us-ascii?Q?VUvnAgt+q/EGMtfCyU1l+Fli9bDiqTGxuxkgj8sn+/ZQLGV7cGSBjUZV/Kk5?=
 =?us-ascii?Q?d1QL4wqPidpGXss/EkqCtqJUuLhZ/hobthCq4i6zF9o9kzGp0UF2Iqsjmlek?=
 =?us-ascii?Q?8vP6b8BcGsOtmLPqunhkzOl0X2EoFjaisicPQ25fzaUj4h6YRsYgp1Cae1WP?=
 =?us-ascii?Q?HxhkJqvVHX7QQ5eWdSkf9WRZE9FWSsGDJxfkQe9xco2xEggmOPf8NBbCHeBK?=
 =?us-ascii?Q?tN/uQenjI4kilcECJaVMa9am4YMe4LWNtgyz5/qs9Iltql6Inm7Cy8+ErEXy?=
 =?us-ascii?Q?RvM1ELKx6vcf9IEA6V6gABQz0cEgTBS+ZIaEeO8i3Vq29XysCk7U5gZX3o7O?=
 =?us-ascii?Q?7BX/BjIFTgVh4gOUf831lhQoQPMyrZdVUetFh77Slltq6JpKwuOy9MGGOdz0?=
 =?us-ascii?Q?hIfJlERwHrAfFeFwzZXuEwySrM2xeOap79VEttEkIn0AjpRyzQ7tgPSXX+qm?=
 =?us-ascii?Q?5r9wPI0HaXk+biErYGsxTX2uPlfZMjuHnHZmu1a4q8peiAyoVueAxI2dlDNr?=
 =?us-ascii?Q?4Y9eBZARUt5kmH2Gy1aXPt2bJ1WgqjIa3egJNb/yfASijTGJLHhipxFKB4Ey?=
 =?us-ascii?Q?ey905bEdBfeCTzwcdsxlL6BoePnKXI/qN7PAyUHan68JU7+PheXd9uOefvV7?=
 =?us-ascii?Q?Iqzlblh+NfcblKtHOS//dhM/wBckgJX0A6w10PelMUQ57KjKyNna6zkaSNuI?=
 =?us-ascii?Q?+Dqv7a9cCKyvTXlotWEB3lw1k7bffV/tIQPuZlEStrTEFpB3f8W5sXTOzMIY?=
 =?us-ascii?Q?KPN8HJOSwxXUrB2Ve4RX5TyYgf6uqRJ4485Ud0xKCJgeuVKhVrp3b4/4/y/e?=
 =?us-ascii?Q?JHo/zDtxc45uVeuhdMd9We+IZoEMxVhZvqum4bC+mbZycG7UK3S562bsLaL1?=
 =?us-ascii?Q?p96B58nZHUz5X2nvAHGpIsY+HkdWBG8MMM2PfIm5rwNeahrGB80xjIByyomM?=
 =?us-ascii?Q?xkSHfSW+1QyuyXEhVT3Xmnv688CdHWMoFeCGFri+FyWrsnhr1oGxiW/V5qGv?=
 =?us-ascii?Q?Td9WlZ4GB3ZtQuU+6cZ2bzvm5DZjg1PoXwVx6CqSzdOyTgPXEp+uUqqTy0Lj?=
 =?us-ascii?Q?2Cq3KghvaawtuFTcH2JmeySVwhD9Aeabq9955LgNYTMdxL2zklq0nJc+gw4B?=
 =?us-ascii?Q?kzsJOmXbVbio8MP7/N5lA6pdRVS+NQGCHaMMl/+Yso6VZArSCZpeG2ezW//I?=
 =?us-ascii?Q?9Xoojy0rrhwjuzgdGuiGpfbUrdkJFNjMGjc6Je7z+MJ7nadQbAC3ilWy69Nb?=
 =?us-ascii?Q?lvL0IJzV1lMJmbTQJXSucm2qOD9XfOU0L54RfT4I?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 304e1c5b-8e3f-4169-cbf2-08dddb1c5536
X-MS-Exchange-CrossTenant-AuthSource: SI2PR06MB5140.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2025 10:21:29.3976 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oKtYtOuc2vkTHiX16FbgeO0Bxdz/UmBGk7EMfYwVAxPAS+vGGtCOULWWZ4Vg1VyC3W2qQmUKkACOVGk/92fHjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB6699
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vivo.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g66FfNAfdyM/r7sLMHDl0KevB00FRH9DeNz7Zc5iyAY=;
 b=iPBnoonuSMvkkJNFYnRUiG7ZDnAWRXQPz9AU5Y4Ro5/XoFgy1g4OJdpDqezHvdSP16BGBb/eqBIWjYpIwKQP+Fyi65bUPjRQWbqwed8LZKORBmk0avlXRFO9bLCp5nEMXIgPylM8tVxOT87ns9k6Obi9vWP/jtCCmCx94cyNSfIoK9YK5V3hes7IjFxW0If3DjbjRez4hGRETqXJkyTRZYLSCENiAdo+ugIPhNJeka/DVbHS/8jOBNK3pTtm6O3Yre5HXZKmUjX1S6OyeFwYHPnKBRic3cxC7JEZlfIY8/6ReUg53x1x1BpMNiAiFjnlgFfHDmfl+DcEYF7IJw+TRg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=vivo.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=vivo.com header.i=@vivo.com header.a=rsa-sha256
 header.s=selector2 header.b=iPBnoonu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Subject: [Intel-wired-lan] [PATCH v2 1/3] eth: intel: use vmalloc_array() to
 simplify code
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

vmalloc_array() is also optimized better, resulting in less instructions
being used.

Signed-off-by: Qianfeng Rong <rongqianfeng@vivo.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
 drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c | 2 +-
 drivers/net/ethernet/intel/igb/igb_ethtool.c     | 8 ++++----
 drivers/net/ethernet/intel/igc/igc_ethtool.c     | 8 ++++----
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 2 +-
 drivers/net/ethernet/intel/ixgbevf/ethtool.c     | 6 +++---
 5 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
index 1954a04460d1..bf2029144c1d 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
@@ -560,7 +560,7 @@ static int fm10k_set_ringparam(struct net_device *netdev,
 
 	/* allocate temporary buffer to store rings in */
 	i = max_t(int, interface->num_tx_queues, interface->num_rx_queues);
-	temp_ring = vmalloc(array_size(i, sizeof(struct fm10k_ring)));
+	temp_ring = vmalloc_array(i, sizeof(struct fm10k_ring));
 
 	if (!temp_ring) {
 		err = -ENOMEM;
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 92ef33459aec..51d5cb6599ed 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -920,11 +920,11 @@ static int igb_set_ringparam(struct net_device *netdev,
 	}
 
 	if (adapter->num_tx_queues > adapter->num_rx_queues)
-		temp_ring = vmalloc(array_size(sizeof(struct igb_ring),
-					       adapter->num_tx_queues));
+		temp_ring = vmalloc_array(adapter->num_tx_queues,
+					  sizeof(struct igb_ring));
 	else
-		temp_ring = vmalloc(array_size(sizeof(struct igb_ring),
-					       adapter->num_rx_queues));
+		temp_ring = vmalloc_array(adapter->num_rx_queues,
+					  sizeof(struct igb_ring));
 
 	if (!temp_ring) {
 		err = -ENOMEM;
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index ecb35b693ce5..f3e7218ba6f3 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -627,11 +627,11 @@ igc_ethtool_set_ringparam(struct net_device *netdev,
 	}
 
 	if (adapter->num_tx_queues > adapter->num_rx_queues)
-		temp_ring = vmalloc(array_size(sizeof(struct igc_ring),
-					       adapter->num_tx_queues));
+		temp_ring = vmalloc_array(adapter->num_tx_queues,
+					  sizeof(struct igc_ring));
 	else
-		temp_ring = vmalloc(array_size(sizeof(struct igc_ring),
-					       adapter->num_rx_queues));
+		temp_ring = vmalloc_array(adapter->num_rx_queues,
+					  sizeof(struct igc_ring));
 
 	if (!temp_ring) {
 		err = -ENOMEM;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 25c3a09ad7f1..2c5d774f1ec1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -1278,7 +1278,7 @@ static int ixgbe_set_ringparam(struct net_device *netdev,
 	/* allocate temporary buffer to store rings in */
 	i = max_t(int, adapter->num_tx_queues + adapter->num_xdp_queues,
 		  adapter->num_rx_queues);
-	temp_ring = vmalloc(array_size(i, sizeof(struct ixgbe_ring)));
+	temp_ring = vmalloc_array(i, sizeof(struct ixgbe_ring));
 
 	if (!temp_ring) {
 		err = -ENOMEM;
diff --git a/drivers/net/ethernet/intel/ixgbevf/ethtool.c b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
index 7ac53171b041..bebad564188e 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
@@ -276,9 +276,9 @@ static int ixgbevf_set_ringparam(struct net_device *netdev,
 	}
 
 	if (new_tx_count != adapter->tx_ring_count) {
-		tx_ring = vmalloc(array_size(sizeof(*tx_ring),
-					     adapter->num_tx_queues +
-						adapter->num_xdp_queues));
+		tx_ring = vmalloc_array(adapter->num_tx_queues +
+					adapter->num_xdp_queues,
+					sizeof(*tx_ring));
 		if (!tx_ring) {
 			err = -ENOMEM;
 			goto clear_reset;
-- 
2.34.1

