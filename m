Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EB2B013DC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jul 2025 08:48:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCC2080F7B;
	Fri, 11 Jul 2025 06:48:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A9EgqGaigiaL; Fri, 11 Jul 2025 06:48:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68B2680F95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752216511;
	bh=V2iauKH92fFZ/He/4llsRSr3yfHXppkKN4dAlE0G0k0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=T1V/rCeC5rLNquNvcf7+bHWat59bbqbnl9g9mI7nmjpB122Jo7CpGBiLj1zghELsJ
	 nxz6hYDB8f76jBhJ9Pb1SuQRUDmk6VMc5IY7VoXtz6GLwATkTeDTa2XALEY7DzZI4I
	 vHliFzPBGcCDWXP2qciBVbZVJ+Dbvtes/zm4ZQZP3kxivuh1OIeRoA4WwF64oLyRkq
	 Lq77M3+ieMMt0ZOmCGCxedAsG1x1DA1NWQl49gOd5ro4y7mxVDqJrNyEYh65l1lFv3
	 OGFVXEO/VjmW2u4ArQ+0CBSx6i4vOJC9TbS7gxW0cQRTKPcJMr6EYLiyOtESbgrOwx
	 GOzlLK8nG+xlg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68B2680F95;
	Fri, 11 Jul 2025 06:48:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A506199
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 06:48:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C22A80F54
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 06:48:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wac-VkbxDksN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jul 2025 06:48:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.66.64;
 helo=duzpr83cu001.outbound.protection.outlook.com;
 envelope-from=malin.jonsson@est.tech; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 91CBD80F49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91CBD80F49
Received: from DUZPR83CU001.outbound.protection.outlook.com
 (mail-northeuropeazon11012064.outbound.protection.outlook.com [52.101.66.64])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 91CBD80F49
 for <intel-wired-lan@osuosl.org>; Fri, 11 Jul 2025 06:48:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xfhr+VoW8gWXyB7EpUAGLLUJcHleP7rTwJ2c7PvOvrGzjN4ogAtoSby1hqtJz6zIBOz3AyD9p+4tZuK4PozVUDA4Yd3hK78uxhoGC2oTpNPgn9WCvT+MnDQhD82VZg4+NmTezxuvQI16HH3x5cBS1yGrLi3CB+0QIb7CY8RbRJnYYSY+d5ZAzFCzHaDVMMLXYSa+u+fgMbcd00WDngMPKz84QkOeGjiWdD7OqF8kKdWS2K9CAZq21NY6C1hwU5Je/VQpD7fJ7k9tbiuccwz845eYJMUAy3daZt4i3ti4aY4LAzkW4tPapqDOfhTCHTFaSttVG5Ij/NhhjdRSN7P8rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V2iauKH92fFZ/He/4llsRSr3yfHXppkKN4dAlE0G0k0=;
 b=sga3ds/BeMf+9v76kOh26c5fFZ0w3p4TSpy9L5ZXaGcS91mG9ViCR1rTPJcwkGDuZDKaXMr5JbKu708c+U8cyQlvL1/4NMY2IXQO2BRbPIrv91hFuXoDzG6nL54l1I83skZUwI0eDhabqnjisj6jg1i9/H0HWBxAwzcAwJpIWqMOolep7OpTgu0U1UZWr7yWRJSgeHohus6ZzWux+n5CofFwALKwva5LsYm0dDEz5Bi3X/ceoO0xVrbSp4Vc2rOhE6q5EN5JbzDgLGlJS4jC2RPVd0EeAWo8NaqeCrLySADmpv7EJmd0uvKd5tGAv42ug/foLI7VQ5IZkHEKSOsG7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=est.tech; dmarc=pass action=none header.from=est.tech;
 dkim=pass header.d=est.tech; arc=none
Received: from VI1P189MB2600.EURP189.PROD.OUTLOOK.COM (2603:10a6:800:1cc::20)
 by VI0P189MB2824.EURP189.PROD.OUTLOOK.COM (2603:10a6:800:254::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.25; Fri, 11 Jul
 2025 06:48:18 +0000
Received: from VI1P189MB2600.EURP189.PROD.OUTLOOK.COM
 ([fe80::98aa:f3d1:82ee:22c2]) by VI1P189MB2600.EURP189.PROD.OUTLOOK.COM
 ([fe80::98aa:f3d1:82ee:22c2%3]) with mapi id 15.20.8901.028; Fri, 11 Jul 2025
 06:48:18 +0000
From: Malin Jonsson <malin.jonsson@est.tech>
To: intel-wired-lan@osuosl.org
Cc: yong.g.gu@ericsson.com,
	roland.kovacs@est.tech
Date: Fri, 11 Jul 2025 08:47:04 +0200
Message-ID: <20250711064746.649332-1-malin.jonsson@est.tech>
X-Mailer: git-send-email 2.50.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DB3PR08CA0032.eurprd08.prod.outlook.com (2603:10a6:8::45)
 To VI1P189MB2600.EURP189.PROD.OUTLOOK.COM (2603:10a6:800:1cc::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1P189MB2600:EE_|VI0P189MB2824:EE_
X-MS-Office365-Filtering-Correlation-Id: 93079542-b2a0-4574-f7e6-08ddc046e9e5
X-LD-Processed: d2585e63-66b9-44b6-a76e-4f4b217d97fd,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Ll4A9Cb5NJBkJxVNwNbF6YvPEhC5r2S9o0pyw7jTkzgJE3UbGpUVyprsV9Sw?=
 =?us-ascii?Q?h4dAeN3kHy2yoArwU9MVfIEZ6NlbKHZFxKlb2vxuTGA6oH710IsH1Sx8OK1j?=
 =?us-ascii?Q?X9HOFIRsl/7LuXHL0RfEhpIUFu8YeK0uY6XQNbNNPhyJdAJrW181+xjJn2jg?=
 =?us-ascii?Q?a095uLcTuZ/OEuZD59Bpl5MVadtg+3R1f4VE9wxL7hmwNfQjQYaoP+KnbuuE?=
 =?us-ascii?Q?veCgsnqcUP2RrgzYinB6CEXD7lahgbTqyXUKMgHMMUsBKfSx7rdK7nspOBi7?=
 =?us-ascii?Q?gfjhL/VGUfJb5FHZNWP+bv5vRJ0+ljzqTtHaW64HUyIJ19RpozLYJhLqDGbJ?=
 =?us-ascii?Q?vQ2T0spt52VAsHYyFdn5RxnDq7vygAkcM/ZjE38TuNchLFjtdguBmSx33tQS?=
 =?us-ascii?Q?m2n+VprJQBEd15TeaVlGvLslicGHLGoitQvMAJj2+apERL96AU9oh0Vqt5a5?=
 =?us-ascii?Q?DsLDPH0YUJRzeBVCA5rjmJRPHPyiWNb1p+/u3vjpmCOTpWICxTH4T23cu+dt?=
 =?us-ascii?Q?g9RpwDae6BpLu9zpvh7QCKdfj2e3lGrqjt9DbRq3zfPHKLMwG7rxHhSnFlv1?=
 =?us-ascii?Q?W9G5kHGHrvAxjG0Mvg2hxZIDSrNGd1yyu1YvWCpyeCyKOvCBar99eNMkJV+B?=
 =?us-ascii?Q?50cK40a4oUJQmn5eehggj+zUyp8RXJd8b3HqtuPCJq9WyuI9kbM+QAy37sZg?=
 =?us-ascii?Q?haa4zqiVe70kPoCOCMovVW3RS2ec3vvxtFmIx0rWIez2ElWTvroMCIHPp4uT?=
 =?us-ascii?Q?D74JTkaHdiw2g/VJoAdl8YfkJ4oufLOE36C8F1V56j/+Iy4W1IGykFF+MaB9?=
 =?us-ascii?Q?FGpxhuADZYA9wYvEJm4/rWIwucqzrxYOm7WVBIUgQpDac/+NQpCkzJk+JXcu?=
 =?us-ascii?Q?BtDZAoXS3gbvIFl1IlkrZ6k30OTBEk2ElFKC3aGpaOGyR7hLhEnkuAv725xl?=
 =?us-ascii?Q?k2mn9HJJ9Z/hV+If1JOg1bzxy6YMV5dZVEwKR0I/ekMvWoC4EeyRXavRHU1H?=
 =?us-ascii?Q?6kQVhlO6ZEr7Px3CK0kwkmBNV3oy87ltK2WaIL+cYSA1RZVJkDw4vUEjEDw0?=
 =?us-ascii?Q?k3XDELudzCQvxEdWosmZDfCwFFJE1mgns8l44yxKKRohbYGqUo2jJJ1dUzi8?=
 =?us-ascii?Q?NTjY24VucTlvelxcws6ULXEawihuMryO3flzHW9HeX4LTdrsdDQFgleNzTag?=
 =?us-ascii?Q?VTpYxLeeSYyI2diOJTh95NUna8gxCuBcggJM24jmQ8jAmM54YkTqC4fLAZ0c?=
 =?us-ascii?Q?PxaDZf/8Np5JUDWUweVNyZFOJsYCRtBg7ufEwiM28DIq5HtjgjpMAOvoeTmH?=
 =?us-ascii?Q?fQIHISw8FrGpenN5tmdGvX3O1xcwQUuFI9zpImhNoT4pyRenbpnKOid5sZkN?=
 =?us-ascii?Q?VdiwI0TrQ9yfImPIbEeGLUfHIzv7LDWz5nWpVrxNyjt/V0N5dtAWw6f1/LiG?=
 =?us-ascii?Q?ZMM6s9UTSmc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1P189MB2600.EURP189.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5eCIhz27PzxdmAnqVofT0LZPpJAcFyabjZo4/N57t02s/UetG7PWb41Fy6dw?=
 =?us-ascii?Q?XpUEtm+GUiaN2vItMpN7Tb11d26v+WZDh7c7CsArN1u8GnyfiHPKnf5dwlyd?=
 =?us-ascii?Q?UVdrTtwGXCSSBtTvR522tXUSozRIT35/ulfDLA1DZg50n3POgVy5zZXgRPO6?=
 =?us-ascii?Q?f1kkg4+ivAxrw5RMxR4HPgyAiwVCG1OIX/vakTrZUbM7u/f0Vm7zxt/it+xb?=
 =?us-ascii?Q?DYXaLAZmxpCSpYuyBhXQslPd2aZ0RhbtykLMs4fO2ttaIkHoDTquJJZuUq9g?=
 =?us-ascii?Q?mQ7fVg3Jx61IH9GbmVUfFdpi+6njGqKdluGI4owYyIWzG9qoJSLNZ+ckweWx?=
 =?us-ascii?Q?KS7eMvGbOZKqYvwow2C111X+E0lKQatV85rFzHyruxEvuiBYGFSTb9D8nBoj?=
 =?us-ascii?Q?pX3saeROPrgy2ISHr/LmKKku4Y2vM4k/IQxzyqlEaAPhxvmypAh3YjXbcph0?=
 =?us-ascii?Q?Pr2nf83JwYMnBYQIVfbG3eMDSLRCI+pkyP0HcUKt5NEyNyoWR+6yWMFeWBAn?=
 =?us-ascii?Q?hzXD1kshxn270+9WjHbxCseRdtQFBBiKHw0cX7/BRBXrVYycbtoOEvWGJ5Px?=
 =?us-ascii?Q?Q7DOgwkGOZiqvEcOEdlDazuUdYhbZ2LAXtxsf0wXvUYfV+xlc6ebcN4nbCMH?=
 =?us-ascii?Q?zjejpYKsLwO1CsZeoTkM7Rg0fciXzwyIr2FqLZ8yMoADFJIcBl+UmKTgaoBv?=
 =?us-ascii?Q?D6PcAXDvRiPk/YHDk2ykdotCK3ZM/V4rwrLRv9bxSzSuvnouvGi6WWfIDBIe?=
 =?us-ascii?Q?NkmtSj+fkpJhMdDyfZDpW0HnZw0K8/FBmikG6GBW3UOZXN5yaE6pmeF9cjO3?=
 =?us-ascii?Q?iPCBj/i3cxN1HtZjec1XeWwDHjFg6ae2GUd6WCU3FpXJLT3XfQRi9igIYKpC?=
 =?us-ascii?Q?PEKijdQtyYKtdGpMT83DJVQV6BODASMtpt3tpQPAVZcmwJ4tI5UgSFHLgVjc?=
 =?us-ascii?Q?17h2mEbJ6AaZlRg7GtJUAnkL0xFkrwCn5UFlodw0OHkar8VrH9XMioaFy5eT?=
 =?us-ascii?Q?Kg5rUTGT/fL/oP1lYfH2nHTT253MWbPAwQ0gHr6B8OxKJdvogCNol7LkFCFO?=
 =?us-ascii?Q?jDpQAwDmQSo2i5fv/M5x5XiWaqMlke8gt265zARFblzIe4qk3zWSOwonTaJv?=
 =?us-ascii?Q?qr/Wo8GQ2tSwol7LFSqpnm3hT0ZDV0uqRGKHjXqKr+yMWXM5CZymJbiH/fbQ?=
 =?us-ascii?Q?tbH4LgQD4z79j/RXiR54MIWNl9bqoNxOvAnWLQnN2spsZupcpgzENEHH+7Cv?=
 =?us-ascii?Q?1pp4Yy64lc7tp2B4WWgsigyKyKaokjd7F6C2hZLB62oVWLtSxorRJCXGZyQk?=
 =?us-ascii?Q?NUJs9iUqOj5hTN5VZryDF8F16Tw+LFfnQCmnDvss5GZoTw4mgDSnZh+PLTAy?=
 =?us-ascii?Q?krY20vZX7wK/qu7nj/O0Y31oBnX6FYneQ81XVLDiVosLm1/y8UqROoAuQYiY?=
 =?us-ascii?Q?Q9HS4YYuaa/VsZTPUUo09hO02DNV6wUBTsjScJBBoVrsBmwB5khaJTRVqrjt?=
 =?us-ascii?Q?ZeDTB3NbtQCIJAKA27sgs1ldn4M6bNCP9h5hYI0Jijk3cR8igNxtdVZEkVsF?=
 =?us-ascii?Q?uDZZwHEQe2v1vWaRR2ugeCkad91Zkf6zJt+UDGaC44c1BiCimELFPhGHeIFW?=
 =?us-ascii?Q?nwxVzHL6DbvifJMADg7M9Bmt5J9RAPxjWXWpoXIjy+gHTRhjRY1SlkyPaYvc?=
 =?us-ascii?Q?dEXUMw=3D=3D?=
X-OriginatorOrg: est.tech
X-MS-Exchange-CrossTenant-Network-Message-Id: 93079542-b2a0-4574-f7e6-08ddc046e9e5
X-MS-Exchange-CrossTenant-AuthSource: VI1P189MB2600.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 06:48:18.5060 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d2585e63-66b9-44b6-a76e-4f4b217d97fd
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +o1nLq13P1s4CUQ3XGpgzr2CK2jKZj21gsvufSCZeRUj0XEtAOb2ssNNyKwFEY+21eOWjxABp4VvHOihFj3pzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0P189MB2824
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=est.tech; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V2iauKH92fFZ/He/4llsRSr3yfHXppkKN4dAlE0G0k0=;
 b=DOkDtPlTWy8peWh6Zst9fzSNU/1SCMPk1ySvSI4oznQV4vpglG+vGrOnYyb291BSDf/1fHdsDsa+CXm3zXZuP+yA7adPNFI04QfeEE+j1vpXquIi2aaymteS9u7XoGVogVspL+PZ/C+1GtK2BJSlDaQLG1cjTgGeAtO3+CFAtpy0jbJcpMelF2PuZt3gdfQmm1h+fE7TTN+iIXQm90PEpbPmWhggM6BLH2UI0D5yjt/dj5Sc2gic+OT5HO+54AqlKXuzfSqZdMNv0O42d41AF+zXrAt5HEFAiLJaIaPmKqVdv5OSZ2vC4bDPc42Lrf1f47eKdN1UNu6H9Ns3olKfKQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=est.tech
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=est.tech header.i=@est.tech header.a=rsa-sha256
 header.s=selector1 header.b=DOkDtPlT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=est.tech;
Subject: [Intel-wired-lan] [PATCH 1/1] idpf: Add missing dependencies
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

The idpf driver depends on both AUXILIARY_BUS and NET_DEVLINK, but
they're not selected by the Kconfig. Let's fix this so idpf builds even
with a stripped config.

Reported-by: Yong Gu <yong.g.gu@ericsson.com>
Signed-off-by: Malin Jonsson <malin.jonsson@est.tech>
---
 drivers/net/ethernet/intel/idpf/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/Kconfig b/drivers/net/ethernet/intel/idpf/Kconfig
index 1f893221e2c99..5c7ce626aae16 100644
--- a/drivers/net/ethernet/intel/idpf/Kconfig
+++ b/drivers/net/ethernet/intel/idpf/Kconfig
@@ -8,6 +8,8 @@ config IDPF
 	select LIBETH
 	select LIBETH_CP
 	select LIBETH_IRQ
+	select AUXILIARY_BUS
+	select NET_DEVLINK
 	help
 	  This driver supports Intel(R) Infrastructure Data Path Function
 	  devices.
-- 
2.34.1

