Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB15767989
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Jul 2023 02:29:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6CBDE40571;
	Sat, 29 Jul 2023 00:29:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6CBDE40571
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690590574;
	bh=GbkBz6FQUJAzsjB2yA98E/vPpN9vz/APVnqN9t2OL4Y=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3ykl4WvEY/yHlRlw9vLKftmrzyBhUaGz2YpenI4q4+OOZcabSrFPfERLf5NjAH34A
	 ESXEltV7N0Wvu67gyez4v5Ee3sfEbnh0xPMtl4QIWTIXwQx8ey4Z819JjH1aJiOW9w
	 VwI/ZYDljxs6FtXNFaGJdUCF/EFbFF69Ok2PitmeezbJYluOv45ynt/7bjRD+h7HFQ
	 kc3jcemExI/N8JSdmXlC4IP5L31RxmE+nanj0JA6+7kVnyHqhNnsYbhEuSh1YqfmPm
	 FeQLBOMVdCgiYNczx9s0sqM3aMCMF3GTpgz/lkIp+EtDqa2Ft92Hm0Faf6ptHERB7+
	 z1+yeBjj3/huw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bOxeYG1BCdvO; Sat, 29 Jul 2023 00:29:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35D2A40127;
	Sat, 29 Jul 2023 00:29:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35D2A40127
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C0F411BF995
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 00:29:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9514A40503
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 00:29:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9514A40503
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4eojKbiTB5lB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Jul 2023 00:29:27 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
 (mail-am7eur03on2072.outbound.protection.outlook.com [40.107.105.72])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E9E640127
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jul 2023 00:29:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E9E640127
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FTd02HQFeCGh4qbMvVmxPNGfql6Y1kXpHxfWSxmxZldRH2iYWd98K6lK1XTnQFqi5LQfewDNpFYtv28sh2/JpcO9b0Uvl/PM2Pz9UaXmDq267s7RXzxoCNqtzkieyKiv7kwc11bQnbLRtySWSPLxUd8bRFcCqZyqDYG/Ds/8sfDvTms9u3A+GFO03kAPCxFisLxhatysL8nEKTFag3bYJNdxhBP/DNk4A6W9f6YbPzikV19g//maJta3w1LbeNFyl5u7jK9FuIL5hWwxit4dS0O8HWo3MVRZVC6EHNcIn3Ga3kcVDOJgdmbVc2GBfru9/4yhE/DHCyot5KBZnh8U4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3NAdoKUFFc2GwPXhf86nZHVBFKoC1kdKP/rewa7qvW8=;
 b=ZKEfe+1yip26UjWSndcsUIqjMVLh1tq1vOi19cQMT77w3ljObDP1M9eR9i6ikL6GEgYBFCYjEczRbcBcf+bNtYIOwl+P+/ka+G1s4sAKNiD2r9HhedODuwYKxJ95bd03F9/WLgAv60YEf4l1rPODW94KMeE7WgW2Mf0jAQhd9dYSsTN1L12LhVYvvQc/IX/sTdKYryBskbP15J+aNySz5h1UEtn74292OVmtbAjShPA8qrSr4s5zTunmBmzCAL72U/SrIShjKz53oShOdVFIr09b0kjRi21XVyqj7lcqx/5uGHbcySOllTiVCf1OZS2N9Mx6rIVNwLfg0ikDc/Iryw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM9PR04MB8456.eurprd04.prod.outlook.com (2603:10a6:20b:3df::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.39; Sat, 29 Jul
 2023 00:29:24 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194%4]) with mapi id 15.20.6631.039; Sat, 29 Jul 2023
 00:29:24 +0000
Date: Sat, 29 Jul 2023 03:29:20 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20230729002920.37h6y7mar5qlpgrl@skbuf>
References: <20230729001800.227269-1-vinicius.gomes@intel.com>
Content-Disposition: inline
In-Reply-To: <20230729001800.227269-1-vinicius.gomes@intel.com>
X-ClientProxiedBy: FR2P281CA0115.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9d::17) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM9PR04MB8456:EE_
X-MS-Office365-Filtering-Correlation-Id: 3572edd1-f0f7-4eb3-1149-08db8fcadbf7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KSOUQDy7eXb0KtcWEUT0NcV0Q+jONtbt1RN+ORZsY3CYi81drPDByyVZMagFx2y5vNuMNzJtPHHFrCI16EyBq5tIPcUvlIX0r67UjRVsElJdcimstnYH1donpeTbZBwq0Ok92BDajcrdzRl87cDlrDOuQmXLvrcP3rBuly4IOxJ0y+bWPVKOhd7vBmWzvFF6Zw5bFJw4eMe+KDBKUDYtgbi4RNt8bvjKbMap++CQsfoU+vSyZBHRdbiXlAzrvHhzaG83mxw7/ZKz093irDWgM6P4yhWEJc/vTcyL7MEmJxw4Nwekh6Sw0wlVOUd6kjDOj01C48Rd6OMYIM/VEeTcZuCYFL31rWXUqpv6Cj2+CFDNEyGRrT9s1DmSwIgNZZ3cWbG7cqBLi32Mx21NHVBSi15lQMLX0O0zzySVi8C2yyHFq7Q5RHhNyDuDH8xm3uPzAWf4Zq1kYXXgkX2wcVx00w5rbn56ob5z70Lev/1rzLjenzgVvamV2nSvsHNQAn9dYkyGj4bKrXHtQJM6E5G4uOudxmWBe+A5nZgdzNzQy6iOc8xNBv1XKWDZNxTV7XpC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(376002)(136003)(396003)(366004)(346002)(39860400002)(451199021)(6512007)(9686003)(6666004)(6486002)(186003)(83380400001)(86362001)(38100700002)(33716001)(26005)(6506007)(1076003)(5660300002)(41300700001)(8936002)(8676002)(6916009)(66946007)(66556008)(66476007)(2906002)(316002)(478600001)(4326008)(44832011);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OTWENb8jXCXDNh+3+qfk+djQqo0euIT2NGm+742B2XBs/WSPH1lvdfoCq88L?=
 =?us-ascii?Q?/LaNL5j+kUyvQeVh6jbLMIiW6zRJegLXZD3jiSlfdf91JNghYvGeKyOBzg+z?=
 =?us-ascii?Q?WMjo4tzXOhV/OwLjMva2aOMvjTNWbqzGUw1GoQiExddbE9oSxi0FyKz9McPE?=
 =?us-ascii?Q?FSS7ex3gJ9lpE4MbOxTYrhDjz2EW7v9e4qbnaOHZWoYmrWdor+pd5epvg9Kj?=
 =?us-ascii?Q?AWjqUB3FWKA8j3Ozaule2U1tV7CV5SMeLhZ6Njdko3Fxjhv/fNFozWKqK6VD?=
 =?us-ascii?Q?iy5k4w18Jwy88HyF2E6gwwzZCU7nii/KsNhzm9QmfpgffftRW5wODfkf2WQU?=
 =?us-ascii?Q?mjmkCNG67Sgu4YaVUFEa/ZsPs5Lhp67+uQt7U0ZPsJ8kzp4a6fiRTtT3LY/K?=
 =?us-ascii?Q?UJ6eLtE/hAR4k9QjVHKPWd+my533iVIoRFJZzSV0T4DxpAR8l2I/T0Qol+/p?=
 =?us-ascii?Q?PHMEusOgKg39+b8FVS0VH+/fzqbymS+h8t+YA0gL3tn/5hn8G1MxaIHwhxXs?=
 =?us-ascii?Q?LxRHb4trH7Vut+6KzTJqXPt5lS3tXZjv/6gPP5taGjbb6d/jTCn1PHKPsQ1W?=
 =?us-ascii?Q?pEDIwJazw2ZIdvKOexkD1Lg+eCxyg5fK++n7YYqQtz3Zqa7aQ2Q72ET0DXpU?=
 =?us-ascii?Q?Edp5aWTr+AodRA3rdp/2ID0WNkai2s7tKS5b9b29tXXRmKK3G13NGTXUcjyI?=
 =?us-ascii?Q?HDQ9UuavAyhqyHnPBNtM+1q+MyDxmOKTLejuhqKcVQzTe0HygaTpHPjjlTmH?=
 =?us-ascii?Q?MjDHkIItFrGsMfh7DeOtpimD2HXFFlNPrJA2jJMNCqUXIPzdgmfwNQAHclz9?=
 =?us-ascii?Q?Ujb6oETKREqWT9datdpquQ/+CUUMtekrLhoR737AFEyKuRUI8Zr+iEIUgpGg?=
 =?us-ascii?Q?U/s4tkSs1B/x1my1KgJOeQJogZu58d5s/FgB8RFMjqDr2q8CmSOkPwGyO7GY?=
 =?us-ascii?Q?JhG+AXaBMFGmWxtIWWkyD9FOasYYc2Zzp4OblyDzNIzNqZsPRm0aHLoc1rp4?=
 =?us-ascii?Q?ssOGEEBAHgfUincOfjg6mprK5qjnaGS/r8ADMvqsOExE5NWrmnawF5pFEN19?=
 =?us-ascii?Q?VYAJo2718Y9OAdioicPhUApgyRKnD2nuvJyw/+9agO6x9AIrTPjmth2rPuVJ?=
 =?us-ascii?Q?ZSE+5LyzSZGpvBJRvpaWa3QDiguhfDEDI4pYcWVhKnYCQ94+DzLNn7aUKj0o?=
 =?us-ascii?Q?a/sozFCh+ndxwzJvALb5B/uPDhkLKO5JCFtVqVJGmPXSCfF+91N4nD4ISK6K?=
 =?us-ascii?Q?gdLfy+GhMz7dF3VFMq2paDELtOiQsGV55kdfsXnodwj0G29B21JBmPc5JyvZ?=
 =?us-ascii?Q?vy7c2dZsKrJhr56ACz5Mj0B0mGyrjNNDRhjMpvI+LP2wErxkn9cy1Nk7JlNJ?=
 =?us-ascii?Q?VlXX63cr4koij1K2tsELenMkXWejcQi5clQy6sp6C+vhLR1b8QamnH0iK8Na?=
 =?us-ascii?Q?rY5YYAnkzbgAj3KJRudEMQyLwDgNpTFV1oLUuX32iyXNlac3BgYdmDMrLgh2?=
 =?us-ascii?Q?ubExgslFEWWs00fmpfnrFX/Okx7oAVYgvLeq0E7lhK6yfOGcz37pVcleWr+z?=
 =?us-ascii?Q?32u1X5W3E2Gr49pZ/S3zGKRkntFF6iaqHai6CNejnS+ql8cqbXP9ZZJEONP/?=
 =?us-ascii?Q?UQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3572edd1-f0f7-4eb3-1149-08db8fcadbf7
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2023 00:29:24.1080 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J1LNP8h4RTyWMSzWOP6dO39nr+c5CPSTMFhc1lFOzkLidyZGZr5vVBh5IWkkXM1qzrju7RuHqum925xddfkWMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8456
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3NAdoKUFFc2GwPXhf86nZHVBFKoC1kdKP/rewa7qvW8=;
 b=O8eqp/iYWtbl5XoyxwZ8tWddnRHC1LQZaXf9oC8KZomQdrPMtR7BBCVf0vri52+oPjBh3yyqXZ4RZ2IJ9swahxCPRlQob9VOsB0MX/K12jR2hvfxSxcDohQj1Vd9450wzLeBm13THqetaeA1Y5b4srU41iB0NhRbvFAK95WZPZg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=O8eqp/iY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igc: Add support for
 multiple in-flight TX timestamps
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
Cc: richardcochran@gmail.com, kurt@linutronix.de, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 28, 2023 at 05:17:59PM -0700, Vinicius Costa Gomes wrote:
> Add support for using the four sets of timestamping registers that
> i225/i226 have available for TX.
> 
> In some workloads, where multiple applications request hardware
> transmission timestamps, it was possible that some of those requests
> were denied because the only in use register was already occupied.
> 
> This is also in preparation to future support for hardware
> timestamping wwith multiple PTP domains. With multiple domains chances
> of multiple TX timestamps being requested at the same time increase.
> 
> Before:
> $ sudo ./ntpperf -i enp3s0 -m 10:22:22:22:22:21 -d 192.168.1.3 -s 172.18.0.0/16 -I -H -o 37
>                |          responses            |     TX timestamp offset (ns)
> rate   clients |  lost invalid   basic  xleave |    min    mean     max stddev
> 1000       100   0.00%   0.00%   0.00% 100.00%       +1     +41     +73     13
> 1500       150   0.00%   0.00%   0.00% 100.00%       +9     +49     +87     15
> 2250       225   0.00%   0.00%   0.00% 100.00%       +9     +42     +79     13
> 3375       337   0.00%   0.00%   0.00% 100.00%      +11     +46     +81     13
> 5062       506   0.00%   0.00%   0.00% 100.00%       +7     +44     +80     13
> 7593       759   0.00%   0.00%   0.00% 100.00%       +9     +44     +79     12
> 11389     1138   0.00%   0.00%   0.00% 100.00%      +14     +51     +87     13
> 17083     1708   0.00%   0.00%   0.00% 100.00%       +1     +41     +80     14
> 25624     2562   0.00%   0.00%   0.00% 100.00%      +11     +50   +5107     51
> 38436     3843   0.00%   0.00%   0.00% 100.00%       -2     +36   +7843     38
> 57654     5765   0.00%   0.00%   0.00% 100.00%       +4     +42  +10503     69
> 86481     8648   0.00%   0.00%   0.00% 100.00%      +11     +54   +5492     65
> 129721   12972   0.00%   0.00%   0.00% 100.00%      +31   +2680   +6942   2606
> 194581   16384  16.79%   0.00%   0.87%  82.34%      +73   +4444  +15879   3116
> 291871   16384  35.05%   0.00%   1.53%  63.42%     +188   +5381  +17019   3035
> 437806   16384  54.95%   0.00%   2.55%  42.50%     +233   +6302  +13885   2846
> 
> After:
> $ sudo ./ntpperf -i enp3s0 -m 10:22:22:22:22:21 -d 192.168.1.3 -s 172.18.0.0/16 -I -H -o 37
>                |          responses            |     TX timestamp offset (ns)
> rate   clients |  lost invalid   basic  xleave |    min    mean     max stddev
> 1000       100   0.00%   0.00%   0.00% 100.00%      -20     +12     +43     13
> 1500       150   0.00%   0.00%   0.00% 100.00%      -23     +18     +57     14
> 2250       225   0.00%   0.00%   0.00% 100.00%       -2     +33     +67     13
> 3375       337   0.00%   0.00%   0.00% 100.00%       +1     +38     +76     13
> 5062       506   0.00%   0.00%   0.00% 100.00%       +9     +52     +93     14
> 7593       759   0.00%   0.00%   0.00% 100.00%      +11     +47     +82     13
> 11389     1138   0.00%   0.00%   0.00% 100.00%       -9     +27     +74     13
> 17083     1708   0.00%   0.00%   0.00% 100.00%      -13     +25     +66     14
> 25624     2562   0.00%   0.00%   0.00% 100.00%       -8     +28     +65     13
> 38436     3843   0.00%   0.00%   0.00% 100.00%      -13     +28     +69     13
> 57654     5765   0.00%   0.00%   0.00% 100.00%      -11     +32     +71     14
> 86481     8648   0.00%   0.00%   0.00% 100.00%       +2     +44     +83     14
> 129721   12972  15.36%   0.00%   0.35%  84.29%       -2   +2248  +22907   4252
> 194581   16384  42.98%   0.00%   1.98%  55.04%       -4   +5278  +65039   5856
> 291871   16384  54.33%   0.00%   2.21%  43.46%       -3   +6306  +22608   5665
> 
> We can see that with 4 registers, as expected, we are able to handle a
> increasing number of requests more consistently, but as soon as all
> registers are in use, the decrease in quality of service happens in a
> sharp step.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---

I couldn't apply this to net-next to view it in a git tree, but from the
email client it looks fine.

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Can the same kind of work be replicated on igb, or are there not enough
TX timestamping registers there?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
