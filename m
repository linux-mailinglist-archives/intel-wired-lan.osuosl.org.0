Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DEC6D2F24
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Apr 2023 11:02:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6B1D41F5B;
	Sat,  1 Apr 2023 09:02:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6B1D41F5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680339763;
	bh=vRGZh6lrLS7U4QqTCgnL5yHSZIq/7yKRch9XMAlfV6U=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ppG6nOPZqA21nlSE2JGTNch/x49QWCEep9Bjw31+Xv/dLrQgvb6LVBvfqi3gLZNlL
	 ptQ2/ciAs3mF2lxnfJCR77rVHgyBH2Tv2YYyEOfr/zVDZeId6baJIDPbm+HKWe+zhS
	 QIrXA9L8M6LGrakA5FQ+IFNiuTLHGquHmssvgqflI2Vktta7jiMum4AIOErocAYYxg
	 PczWBbB1LxnkIGB1rQJqeMKofOsBJV27wF47TEZd2z/CNYbe+TUy6KVRuBQSPcrb3d
	 b36qqLeOW+qyrJqtCiHD/BRX6gVSPbLr6J2xFKn2eYPbXj6FnjGAwx5wBIGQd3uTJ8
	 h1iTNDjOcgldw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EBMaurQ-rSjg; Sat,  1 Apr 2023 09:02:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2F9441F0C;
	Sat,  1 Apr 2023 09:02:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2F9441F0C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D25AD1BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 09:02:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A9FA160AB1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 09:02:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9FA160AB1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hFGFaFOhMkUE for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Apr 2023 09:02:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C626F60899
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on2125.outbound.protection.outlook.com [40.107.96.125])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C626F60899
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 09:02:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L//yXydErwLG8JhwANAB8FgxDKWm1gnLT28/nA559QpHQm5WqEG20FuJ6gNQU20Z4DKWBr52UYeVR5Z6id4FbAKo/7dj/j8BSRxcIkGP3nhwOei0lTs5V99LC6SQSXZBQVddg8G+dKwboF/oP2dNjcJC8lnWF1vwR7PQxSterKIbdgKBYQc+iJN+x/45Qk1pdy1TOJNm7iaf0C22VshvMMxpM9cBwTMlDs/IgAAoUan8Lx5ECWFcLhtRTjFMyvnZvWha7OjCvoaNJurg/9fS7e778vOlFWRXPeXKYz9B42jcsa8/8nlQCRZPlG0xqTReotWXunYkesej7Oe85Nyi8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yXKd9IdfWs5eRxybgnF2DSL36mzt+blQh2jJJEL0RO4=;
 b=MPREJGUVZ1BWeyQhSqJqSdz4/eK0XUDtXVDRXCYyVpifb2/pCjOHVxxNuQRmcg/qbpV1e0FgT+FyWbDgJRQfQOMANanOyhiDbb/5+B+rAyT8plhAsNcL0vRALi1+EUD5vlw6U/OisGPbaNwm0TXLohvjc5m4d1uhBD0Zwqei0GAUo32gFXI5NMjbG/gU0zqSsk/cv6ue5Eske+iRSIUm+9TSRksKK7dqAC3vYzScjIOqjmQ+vBzuewIH3eASV0k3BPkwnqDNTUcGZTC+BE/DI1PL3kxwU0cAJPBjn+23KMpAOEOehQN1A6RWUjGKD0PQ1+iwg/M/YWu3Fo7uFmbW+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by DM6PR13MB3644.namprd13.prod.outlook.com (2603:10b6:5:1::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6254.22; Sat, 1 Apr 2023 09:02:33 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb%5]) with mapi id 15.20.6254.021; Sat, 1 Apr 2023
 09:02:33 +0000
Date: Sat, 1 Apr 2023 11:02:27 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZCfzIx5fKcDKHoso@corigine.com>
References: <20230331105747.89612-1-michal.swiatkowski@linux.intel.com>
 <20230331105747.89612-2-michal.swiatkowski@linux.intel.com>
Content-Disposition: inline
In-Reply-To: <20230331105747.89612-2-michal.swiatkowski@linux.intel.com>
X-ClientProxiedBy: AM0PR06CA0093.eurprd06.prod.outlook.com
 (2603:10a6:208:fa::34) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|DM6PR13MB3644:EE_
X-MS-Office365-Filtering-Correlation-Id: 5547d804-1ee8-4776-9301-08db328fd46d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DLmaqdUbuaHMsISlu0Ljfui2t5ZMhDQfBsqpa/6OHZ/coBOh3CoI48IVcaK5txJbd+aDK0wDmjb/t0JKcsICoejUfgxyiC+Xdl+ZKWiUdJ9+1H/BGuSFbomIbPIrPJE5/T4GQ3wZ+iMtFfHbvjPvu91c0iPWUX3ErIN3m2McKcmSwosFK9Lxd07k9sF8BgT/HlTSBVnizKwc3RpRzKVv4bxRwBlLM/LlwaYAjQvjdFgfUcP6/i8M4UVasDZRoGaoRsyFIc8szL1H4bcwKYu19HrPuIBF6rTc6BcNDdLbEzucMCmbYaTIKQiryhQdr09vXUo4T1jBnd6RA8vsalkvVapxUM73bHu8XvpE0kNN2voYHg3V1W5NstdzDeiS+eUHuJ9Ym8FCVSENAI7E2ybeOBfR+j7tK/Kql0x7qsZBKiZ2e6pcxAMhQ3RCF+UdEoVW5/sgrzHqK4O3tguveM0gg0yGSRz3KbvYR964OwJ7RjKLJJADEqmjy1zBa7OrG35LV1UgmXYXl/wmlUZwe3ow4cdvU/yCiAh1VAWgp0LRP2wtZu6jOdFEHTLUdgxuRdRrJ83/akE67qX4qMxgeDY9VCoF/DaOwPhhGMfGAq9ju5g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(376002)(346002)(39830400003)(366004)(396003)(451199021)(316002)(6506007)(66946007)(8676002)(66476007)(6916009)(4326008)(6512007)(478600001)(8936002)(2616005)(186003)(5660300002)(44832011)(66556008)(41300700001)(2906002)(6486002)(6666004)(83380400001)(38100700002)(36756003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fjK+MbpxFAZPRKtfb8gbVMDf6mxV1p7pkcHxP+0AhEr1WgUBp9LLRmtEuFgA?=
 =?us-ascii?Q?MKGJUDSbvfummWZzGPfao+e07f/qmsvbMhVn8nIzKk9c0DYPHMR09PKGLxkc?=
 =?us-ascii?Q?YJ5ZnT2UeFvDvvazIIbWG1ZIsnY8RS64Q0SiJxEafN+ZjUs/8c3aPgOjp7QJ?=
 =?us-ascii?Q?TF4dBNSz9yJSiVAkZkZCqHlCqUpxilKa4pKn2BDDbXhtbdEpcnkgnSNbk7Ir?=
 =?us-ascii?Q?JrmE9utN9nlyF55tw1s26Oe0hB1l7mXI95/HkJFW1cc34ncy07JuKzXYs5l7?=
 =?us-ascii?Q?Pifn5/6Jx5hkWVucKriD9gJXukdCE9NELSZDCir8CV4RcAOIqQJv1muNortH?=
 =?us-ascii?Q?VnCkKrGcWmbii8OKhsj6MXZv0AAIGZs5DcIee2RCtqJqygdptuVjv9XgNlio?=
 =?us-ascii?Q?MiL3Eu7s4tuwllPvScyKDa6DkBIyO69WG/kvxRhLrJjQkLQ1XPNKlLsA5PV7?=
 =?us-ascii?Q?yHFy6uK9UiDr8ftHbx996kPuxA7I57PJsMuwCFcm1AcvGDVwA7M0dIrmjGr1?=
 =?us-ascii?Q?Xp3MqV5ziRbUxbAcXAjkMYJO4sOUF3nHA0Yz8EwuPRi700vivhHlEmJ7hP3w?=
 =?us-ascii?Q?F+VY23Pli/npFTnVj1vNihJAf78oLuaZG4x+XMdHxwSDv6lIHZHLU0iV9J0x?=
 =?us-ascii?Q?gbG2dGh7QpC8ilAAi+PHmhBA4rAY6cldtnGSVgTBRr5Hwf28VUk2Xyx9mD1d?=
 =?us-ascii?Q?KUAf5x1ipmaUEoOU4jDBaFFJ4wPRAmqCjh7gO8IEiQ4Q/25Dei6i0meRCKN9?=
 =?us-ascii?Q?dFhlJ6p6DM4VvfUuf6B0f5ZNnhp5zBFnVi3qzprlA46O1PUOY7E10nijmY++?=
 =?us-ascii?Q?mkqx6BWjIcErg4gVvQ3cP5nJ/e/e8u8CQzSyaRxmlTXnvIO+HYaOEfckyrEo?=
 =?us-ascii?Q?H76vCoJ4uDogJYBC+zxIauxIuE/I7T9CZCmpb15/e90i/KvDUb4azvRCVuH0?=
 =?us-ascii?Q?9obyVNlaA/cd23PwHC1Ifurg8q/qUH3+IHPDs7TOjGVCTmjSYIXAIsWti71Q?=
 =?us-ascii?Q?RaBjhpXAu50deXHun5NU4PqguQ8gFKOam2mpALcJ+LAYN8ttLotAa35Ut0BJ?=
 =?us-ascii?Q?7fxjC2dxlNOUXgaEJUG4ha0lwKh/iADSOI3bdAzft/R+5d+DqP1sWtSaKW5q?=
 =?us-ascii?Q?dly6cXe2crNppaF+voAbEmJIsD4IQYNRRoRTQmeME9U9n+rj3+N4bgRe1guB?=
 =?us-ascii?Q?V1FtNAketCZ1GEvuMdtjGRYCDRsbWAPh1da4DggO0AedANwtYM/hDSbjUEVs?=
 =?us-ascii?Q?Batg7Ms0lUbkbNju3n9Sqdi1d6cY+rbdSHdLhthCMvsgg5aLauoboL5tm9T2?=
 =?us-ascii?Q?Ts9XryilZzpCfA19+8F1kH91w3JXd9gx7GUayceJFjKR8eblQaVK7VVQt/+Z?=
 =?us-ascii?Q?Eh57tO5UuBynTYE/82V5cM/Yq9wP/0uNvbQoUE7aQuk0thrJ+2CNiHToxXpv?=
 =?us-ascii?Q?RUHNEwJROcwOgalgo8u86Mj/OB73z3Amv+RDPjVJpdVqmBfs54CXCDWiXprd?=
 =?us-ascii?Q?oWjROrxtNEpEPeNUYxP07h3Er8Dj0aYkeuvp4HUx7ZdNUxOVyW/LLIjBeud9?=
 =?us-ascii?Q?X40sz4r+gEsPRymKWG+AX5uVxa5GngJbtW8kx1VDl8SGWet+stdhPNoMwhCO?=
 =?us-ascii?Q?yLyvXJrQsXLeBBgXW2AySnkr0U6RbKWd3n74lutg2+CIVjPfRfC2Gbi0z19E?=
 =?us-ascii?Q?T7jFLg=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5547d804-1ee8-4776-9301-08db328fd46d
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2023 09:02:33.0995 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UoyBbVOZ4VzdE2kYBOMjdTHY4ECeXRlO5udbpsgcLYjGwzMuIr4kywB/5NTrjMe40Sx6R8XaiweimndiC15eEDZJU8BY0n3phepHjDWpZ5A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR13MB3644
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yXKd9IdfWs5eRxybgnF2DSL36mzt+blQh2jJJEL0RO4=;
 b=VZ0Ja159/V1TK9zqNmhtcTUaWbJSg6fy836iAOSa97EutQvRm3gX0D19L/sfMR7JYMAToIFxyXBrzGxoA1fZK14NHTmWmeVBDQFrp8eFqcVnj3yDLIJI9my8B38VnLU3d6BDBfNDKUIBrAd4x7xrOC/dr8X+VlP2wZL2w2toRDU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=VZ0Ja159
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/4] ice: define metadata to
 match in switch
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 31, 2023 at 12:57:44PM +0200, Michal Swiatkowski wrote:
> Add description for each metadata. Redefine tunnel mask to match only
> tunneled MAC and tunneled VLAN. It shouldn't try to match other flags
> (previously it was 0xff, it is redundant).
> 
> VLAN mask was 0xd000, change it to 0xf000. 4 last bits are flags
> depending on the same field in packets (VLAN tag). Because of that,
> It isn't harmful to match also on ITAG.
> 
> Group all MDID and MDID offsets into enums to keep things organized.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

...

> + * MDID 23
> + * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
> + * |A|B|C|D|        R        |E|F|R|
> + * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
> + *
> + * A = MAC error - Produced by MAC according to L2 error conditions
> + * B = PPRS no offload - FIFO overflow in PPRS or any problematic condition in
> + *			 PPRS ANA
> + * C = abort - Set when malicious packet is detected
> + * D = partial analize - ANA's analyzing got cut in the middle

nit: checkpatch.pl --codespell tells me that 'analize' is misspelt
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
