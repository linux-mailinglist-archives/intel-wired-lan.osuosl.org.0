Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29349548591
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jun 2022 15:52:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B690C60DED;
	Mon, 13 Jun 2022 13:52:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z5kamV1iFAu5; Mon, 13 Jun 2022 13:52:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62D7860BD0;
	Mon, 13 Jun 2022 13:52:04 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D47471BF281
 for <intel-wired-lan@osuosl.org>; Mon, 13 Jun 2022 07:44:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C0E22409EA
 for <intel-wired-lan@osuosl.org>; Mon, 13 Jun 2022 07:44:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new); dkim=neutral
 reason="invalid (public key: not available)"
 header.d=andurasag.onmicrosoft.com header.b="ETjxCMeR";
 dkim=pass (2048-bit key) header.d=anduras.de header.b="RWXc5yqb";
 dkim=pass (2048-bit key)
 header.d=mail-dkim-eu-central-1.prod.hydra.sophos.com
 header.b="g66xoVAD"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E31p4abBbchW for <intel-wired-lan@osuosl.org>;
 Mon, 13 Jun 2022 07:44:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wd-euc1.prod.hydra.sophos.com (wd-euc1.prod.hydra.sophos.com
 [94.140.18.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11D79409E8
 for <intel-wired-lan@osuosl.org>; Mon, 13 Jun 2022 07:44:05 +0000 (UTC)
Received: from ip-172-20-1-254.eu-central-1.compute.internal
 (ip-172-20-1-254.eu-central-1.compute.internal [127.0.0.1])
 by wd-euc1.prod.hydra.sophos.com (Postfix) with ESMTP id 4LM3VB1DMFzdZMg
 for <intel-wired-lan@osuosl.org>; Mon, 13 Jun 2022 07:44:02 +0000 (UTC)
X-Sophos-Product-Type: Gateway
X-Sophos-Email-ID: d56a3215e0524e3e94a1e51cbb14b0aa
Received: from DEU01-FR2-obe.outbound.protection.outlook.com
 (mail-fr2deu01lp2171.outbound.protection.outlook.com [104.47.11.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay-eu-central-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4LM3V11rfXzPjdl; Mon, 13 Jun 2022 07:43:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EPj3FlX9eKtbY3AI7swuKIweCkSj0wUPpCLkjUrIuzUUpS0I8dxx3FLJ+uLGwqFGiOAqTe99Oql2CA5jnTVSOcJdPfGWoLXiBOhxTqh+oDc9EcvPEdiREBEeqJQJJinFRTxh9vRZlqawWpoV0346F9gv4lvKWs8OOQ64g8AYjVyZiqZwR+bvqIMIDAQeVDsLsxN+zOBZoMTIneltbFqWCe4sn4Pl5sBIhXijRS8JbF7lrLTDMjGuF+awu68xFX+ekJ0FV0qsHAiB4x8dsqweUyMCXeIcx7X/NfZU/tajxEnmKEoeJuHZrlWbnNi9Du7topICZeJaZeyu7ClgxGYLlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c/MkXUDKSqEmj0bg4pi7FRZDxvjS8g83ItqViQRmO9g=;
 b=ImYYRtps2sbOFmTjkTih51ZLzNyMp31buqRMmWpmI4eVBRuB3HBP6FMLKfppE+a5H8nW4GkRRSzE7dCs8xfxMTD4mB1v+xnZajrtVqBUywcRbtIwlfhLn2gItJxMq+67s5h7Sw3UjOY9HqWZX5f/ddzVRy4nIsx/QSwEF871VGiaSOOHBAi30KWJvUaGyTc1YMi7Bo9AFcMbQMIDQCiiXAKZd02E81rU409PC6vocqJ9cPIu0n7ua6CiX8DHpflBh36gRzLQr5e5yoRGOmrABamOmGDPMV7V6dWqs9NwdLeHdtCHT4POX0O1czTK8ndvpxqBE6pHnmkAzfgjsHrhXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=anduras.de; dmarc=pass action=none header.from=anduras.de;
 dkim=pass header.d=anduras.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ANDURASAG.onmicrosoft.com; s=selector1-ANDURASAG-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c/MkXUDKSqEmj0bg4pi7FRZDxvjS8g83ItqViQRmO9g=;
 b=ETjxCMeR0o0rDkJ3bEXqytX0Q4LW5i5GjcEW3maquBhpJO3RSM7FYRUQNWKwPFqjzS0tUVvONhC/rRjfUM4A4aPa78pPGuq1YP9vEQ1eVE/sR9hKPq3kTfBGNm8d911M6S+h6C+FoMn661uHpjy2qmvSFMlqMFKkQVtwRTO9yoI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1655106229; 
 s=sophosf9aa68d74dee45c58aac945adde58f79; d=anduras.de;
 h=Content-Type:From:To:Subject:Date;
 bh=c/MkXUDKSqEmj0bg4pi7FRZDxvjS8g83ItqViQRmO9g=;
 b=RWXc5yqbsKp76XLF6yHykjsMWXhOu1j6mhS6xuVOFAgICzMQs89Xij3i4JDQglK7
 rdpUK2HEipvgrS9SlxqUYDGyoQZml/XJfnvSc9kWn9eh1eeB7I2fAtQiJ2iSD2uX8GL
 nV49vj8Ec8B74+eErsbPYhMPdzvV0c+i+qPTBZjNV/gEmAIjM624j3M3YjPbvhPU9wC
 GeaYz6AfdUxKgtHcXwPdZNjupp6LAk0W2oUuLAFPBcmVN5vxAWVRjtQuMz7AxoKsXT/
 AHa2HP4HFKz1fyhDX7ikkwXBHavDy9Ntup+j1FEk626BUd17/lXssi82bW1GEtSbSVn
 IF7IQ95+Ng==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1655106229; 
 s=v1; d=mail-dkim-eu-central-1.prod.hydra.sophos.com;
 h=Content-Type:From:To:Subject:Date;
 bh=c/MkXUDKSqEmj0bg4pi7FRZDxvjS8g83ItqViQRmO9g=;
 b=g66xoVAD6n1JnqMrFL0d2qAu/otD3ZguWGeOPEC7Irk/E6hQUxIBafLrpqk4DfuJ
 lw/StvJFdgdrth3rUmREE0F9V29d23jChzqVl6OFb85+fZA3JsZUMY+4KEdRPi9a5rL
 6+3CDh4+CRwF/qmckbA9yny4ckwvExRBctRaWyHkg7vzGJl3Uvel7rhpRZQQ1A/pBVz
 ziyGbpvyikxS0NN/jh01FQMbUrLG7bamqHvMxPZOPGX5R9PnZ/iD06+YzqoFxzQswNf
 FyIHaR8XroXowJz19qEpxzt5RpCGNDiN+r/RnYVsYwGT2jNLEQ8QoNebtX3qUsu3lWG
 9Jt9jC9+sA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=anduras.de;
Received: from FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:2e::5) by
 BE1P281MB2402.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:42::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.6; Mon, 13 Jun 2022 07:43:51 +0000
Received: from FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
 ([fe80::2071:8fd3:6071:b25e]) by FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
 ([fe80::2071:8fd3:6071:b25e%7]) with mapi id 15.20.5353.011; Mon, 13 Jun 2022
 07:43:51 +0000
Message-ID: <4cd7ea38-760d-23b9-5925-a9d1a0504286@anduras.de>
Date: Mon, 13 Jun 2022 09:43:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: de-DE
To: "Switzer, David" <david.switzer@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
References: <a94b23d2-57a8-954f-9fae-246cf900be92@intel.com>
 <8d7813a5-c344-6225-dc1a-89a92e5cddb9@anduras.de>
 <eb729924-7c59-23fa-4847-bff376a98d2a@anduras.de>
 <SN6PR11MB35187D9C1432AAB249FF8CCBEBA99@SN6PR11MB3518.namprd11.prod.outlook.com>
From: Sven Anders <sven.anders@anduras.de>
Organization: ANDURAS AG
In-Reply-To: <SN6PR11MB35187D9C1432AAB249FF8CCBEBA99@SN6PR11MB3518.namprd11.prod.outlook.com>
X-ClientProxiedBy: AM0PR10CA0069.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:15::22) To FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:2e::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 00107182-a307-4b4b-7a46-08da4d1075b7
X-MS-TrafficTypeDiagnostic: BE1P281MB2402:EE_
X-Microsoft-Antispam-PRVS: <BE1P281MB2402F6CA837BF1306D56DE8484AB9@BE1P281MB2402.DEUP281.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dYiJypV9kMSh/m7iSM9s0NH8rXgXnqpkO5gfpolGDAW7iuOR8i5yM2lkqJ+gJ8cPEVzPx5ySSubWTA2w8012oVzLbEYHrxZvS9FwvsMGAKDLqqXNj78J2GZmdy7Twe1hmjyD7Qbf4otIRVysbQyLLU04giPOdcT0D+sUMq7PFyRcHhZ3fzkiIGzExssEozHkQ8Ha6omurrBprYWwHh2hPb/b2AlwXUQZYGdAt+H7QtHsaggmsYD3RViCPrYH/Pv+W6HKlKsxcbgPBk0ZMeVkzj+/kNze/Df/8grTl7Gf/RTU5tYj1whfQoChYcC8K56tb3D1HSmmrX+D0U23F8HwNXYVc96T5WjhT2vtfkgEUzbi7Dga7xThmEjaQCmLdtmQnFfY1HjY7q0V4ihee0IeT6pIo8prw+g1oEQod9X5EuAN+z2p7HrR83aSuZG7EgpZ1XPCxtXLt6O98G/tHOJti6an7rS6j2HzdEHnOEHJ3lJ8F0sr8c+guGyHGcdJMrLXSOrxGy80YuVk3kwY4wkHL0pYW5C1H7Z79loZSbbvlsUKxvVN2fs1+JphQRgTLxYx7kec38CP1soP6lnhPdsLfJIz2q+OC5FL0LgJDiK+HiwSKou3/iOJ2n6VuORak4g2eWFmOz2jQramTQmDclAW0kU5sHPgWolcJrmPJE/YO7U+wctmtE+HpuoR70DCoBWPKhf/4hb+K5QqhgN0/o2NEQUWA/hbXbn90nlOHd7zIDRktqUqr2BFUbzOjiFRxP4BPsJQSW8j5zU5uYEYOh5nauqNTaodbe2ACTd5T/PEsJOet8o/9cLOsfW1ld4qd4DT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:; 
 IPV:NLI; SFV:NSPM;
 H:FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM; PTR:; CAT:NONE; 
 SFS:(13230016)(366004)(42606007)(39830400003)(136003)(346002)(396003)(41300700001)(6512007)(2616005)(83380400001)(186003)(66574015)(36756003)(8936002)(66476007)(44832011)(31686004)(5660300002)(8676002)(66556008)(2906002)(66946007)(36916002)(966005)(6506007)(6486002)(53546011)(38100700002)(508600001)(86362001)(31696002)(316002)(26005)(110136005)(15974865002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TU5Ga0E0TlJNSWNWVjJja1p4eW1rRUJ6UnI3UmUwWnZSZU5DaWhLelJPQS9V?=
 =?utf-8?B?UUgvcDlCalRhNXhSTUl1ZEJNQTBSd0tyQWR6dVkwWmRBVld4c0wzTGoraTFM?=
 =?utf-8?B?Y09EcjcybU1lZ2hybUJ1OWY3WEloR2JGMTJ3VStENVMzVkVrbm9xcnZYdmNK?=
 =?utf-8?B?OVl3QlZFaHJDR3NZRWM2UERydG50T1hYb0x4eURHVjgrVGpIOGNIU2lHR3lR?=
 =?utf-8?B?V0dzR0ZUMTVuaUlKSWkxS2k5ZXNmWXhLRWRQNXBUS0ZzQzJUbjl2VTdLMVEw?=
 =?utf-8?B?Rm9GZW43RDBnTHl1dTlNQzFSempGcmVmZkdWYy85Q1EvNHBzSUF4Q0pPK091?=
 =?utf-8?B?YlBEZDl0bVl0eTRqd2ZnRm9FWmdXY2FYbG41MkJXVDFBemZSaUphL3NwWitK?=
 =?utf-8?B?TW85bjU4TVpEZkZwS2JjczhNaDFKOXpKWFZZVHU0U1kwVlZFRVRTbG9oREN0?=
 =?utf-8?B?d0NydTNsM3kycG5MUEtRbDlxay9taUhFc1hUaCtGOVdRWnhFN3l1L0JSSXFS?=
 =?utf-8?B?alEzdDlXZFl2WFphQ0V0c1NJbDVicnNNbktGajc5NXlFZHJySm11bFBOcWY1?=
 =?utf-8?B?dEpxMjF0YWxkbHFHZW9kb3YwWXc2OVpicUxaNll5bFdwVHlyV0UvY0tFdURX?=
 =?utf-8?B?cytxaG5wM0VZMWZ5cjdSTlVNb1pkV3pRNHlzelB0djE0RGNGZWVFK3h6YzBY?=
 =?utf-8?B?a1ZXRzFmeUhXbFNJRVB6YXllck1HdjZBU1I0QmU1SXVFaVovNUQzdVVyd1kw?=
 =?utf-8?B?dDdsNm5hMHNDWW42WHVyUjJsWFlhWjZYSUNUTGJoellPTkFPQ3BpQmVxV085?=
 =?utf-8?B?L2FBRFNNQnk4Qno2QzNuUlBvOVZNanUwVzdPK0ZuL211eXlkUVNYVnFYalVZ?=
 =?utf-8?B?OEV4M0p5YVBpelkzaE5EcllQZHFCV1ZRRFdNcHFvY0ljNm53TXVqTTNWUmw0?=
 =?utf-8?B?clRhQWQxRFhtVDBpVFhpcnhVNnpxYjhybE12VUFybDhWMU81UXZaTmVSa2Zj?=
 =?utf-8?B?eUt0RlFCakpreG1EUm1FOWtUcFdpYi85RVMrU0dJekdGNlpwaG9SUUFZT1Vy?=
 =?utf-8?B?S0p2UkhIUVQxeFVPRVY3QVlKYWt1UFB1ZGIyR3V2T1dRdGRDUG1hSTQ4NkZB?=
 =?utf-8?B?ODcwQkxjYWhZbWNVZTRHd0hVVmpnZlFaNVJEN3dPUzdSem5Va0h0TUQ5eDNH?=
 =?utf-8?B?dkVJZnRpSFVUSmIvUUlHUlpqVTgydDIvSEhSSm95elVVYitxSUNtM2cvK2Nl?=
 =?utf-8?B?eU11RWRGdVBsdVJoMFl2bFdqdXZmMWdHdkRvVnBqYXhkazgxc0ZudzNabHFs?=
 =?utf-8?B?NXBYL3pwZ3lDYmZDVE02MTJvL3FtdlQ2UGZYVTRZTzlkVW1ZaEFNTndOQW9G?=
 =?utf-8?B?aTNYSUcya0JJZDhsMG8ySUY1MkNFVDNjL3h2YXVwVDg2VWY0K3NDTEZkclFQ?=
 =?utf-8?B?YWlTMU15NUlWVE9VRk9pYnlVTGtvOFVPakQ5dkZyUGcydHhRd0lLZXRsR3ZC?=
 =?utf-8?B?MGtIUUp4aG1TOUpJK29TU3pWRnFZN0RWNlpUZXQ1d0pQVG9tRFRVaFFUd1pC?=
 =?utf-8?B?cFFrNFRVZEl2UTQxcHVUTVBYc05aOUlURnNDM1hyeU4vVXVTMStxKzZDYmY0?=
 =?utf-8?B?djFlZ2ZVUzlybDYwOHlwdTJTRkk1bW4wSk1PT1lQYTNCZ0J4ZElra1lrdmdr?=
 =?utf-8?B?UWZQQlRXK2FtUm1WTUkzNnlXeWF5TXU4NXowNFQyZy9jU0x5Y21PT1ZNNlJK?=
 =?utf-8?B?RFF4aVNCZU81NDg5WjFYN3YzejJ1ZFNNNWpaYzNVMjhtdm5ILzhYazczcFJR?=
 =?utf-8?B?bHJaNzRleVFhUng3djBTdWZiQTJ1U3dXMFBkM1hjZitQWVdsREgzMjZUOG51?=
 =?utf-8?B?Nk83ams0MUZxdlJBQkVJOEVqSFFCM21aZG83SE9CWHBBa2JTbTI0TzBJYmdY?=
 =?utf-8?B?UVIySExoLzlYVFhBZWpjT0xBeW15Vk9xbjY5dUpLbzljODFEQ3NOVTVTbnhi?=
 =?utf-8?B?S0J2TFpZNjQ4SmNXOGJ4SlJmYnNubkJ2RVVoejEyNzFiZ255b0JkdGdoQTVh?=
 =?utf-8?B?cVFKaFFMUm91MnRaV005dGdZMW5lL2JMbVVmWi9va3FpNW5YdCtoNkhJUTRK?=
 =?utf-8?B?WkhWSFBRR1VvQjN6K3k2K0FDTTZTSDkwYi93V0pyNzVHZ09TRk5xQUQyWmdx?=
 =?utf-8?B?a3FmdXRlWnBqWmpSZFJoUGw1elNNeUhwNEYydTliYTNMZ29ESXFZY1hMbEIw?=
 =?utf-8?B?cWRScTNmdCt6VnFEMzlNRmw0cWZUVzZtLzE1QzBDVStTSjU5NzFONHRXMXpR?=
 =?utf-8?B?K09XbW00YWNPM3h4ZUs4RkZNOEFKV0JUV3pTNXNiQ1JUb2dOUnNUUT09?=
X-OriginatorOrg: anduras.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 00107182-a307-4b4b-7a46-08da4d1075b7
X-MS-Exchange-CrossTenant-AuthSource: FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2022 07:43:51.7370 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 639cc95b-aa9f-42bf-b982-a592003fbab3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FQC7DgSVnJcF1/avHj2GdzxXlbh+pN89mAalc38qqBJs0YIrITw4img+lI7LbpgArxaPkjjTVeM9eiZI069UKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BE1P281MB2402
X-Sophos-Email: [eu-central-1] Antispam-Engine: 5.0.0,
 AntispamData: 2022.6.13.70021
X-LASED-SpamProbability: 0.079439
X-LASED-Hits: BODY_SIZE_6000_6999 0.000000, BODY_SIZE_7000_LESS 0.000000,
 CTE_BASE64 0.000000, DKIM_SIGNATURE 0.000000, ECARD_WORD 0.000000,
 HTML_00_01 0.050000, HTML_00_10 0.050000, IN_REP_TO 0.000000,
 LEGITIMATE_SIGNS 0.000000, MSG_THREAD 0.000000, NO_FUR_HEADER 0.000000,
 OUTBOUND 0.000000, OUTBOUND_SOPHOS 0.000000, REFERENCES 0.000000,
 __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000,
 __ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
 __ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
 __BANNER_TRUSTED_SENDER 0.000000, __BITCOIN_ADDRESS_OBFU 0.000000,
 __BODY_NO_MAILTO 0.000000, __BOUNCE_CHALLENGE_SUBJ 0.000000,
 __BOUNCE_NDR_SUBJ_EXEMPT 0.000000, __BULK_NEGATE 0.000000,
 __BUSINESS_SIGNATURE 0.000000, __CP_URI_IN_BODY 0.000000, __CT 0.000000,
 __CTE 0.000000, __CT_TEXT_PLAIN 0.000000, __DQ_NEG_DOMAIN 0.000000,
 __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000, __FORWARDED_MSG 0.000000,
 __FRAUD_CONTACT_NUM 0.000000, __FRAUD_PARTNERSHIP 0.000000,
 __FUR_RDNS_SOPHOS 0.000000, __HAS_FROM 0.000000, __HAS_MSGID 0.000000,
 __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000,
 __HEADER_ORDER_FROM 0.000000, __HIGHBITS 0.000000, __HTTPS_URI 0.000000,
 __IN_REP_TO 0.000000, __MAIL_CHAIN 0.000000, __MIME_TEXT_ONLY 0.000000,
 __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000, __MIME_VERSION 0.000000,
 __MOZILLA_USER_AGENT 0.000000, __MULTIPLE_RCPTS_TO_X2 0.000000,
 __MULTIPLE_URI_TEXT 0.000000, __NO_HTML_TAG_RAW 0.000000,
 __OUTBOUND_SOPHOS 0.000000, __OUTBOUND_SOPHOS_FUR 0.000000,
 __OUTBOUND_SOPHOS_FUR_IP 0.000000, __OUTBOUND_SOPHOS_FUR_RDNS 0.000000,
 __PHISH_SPEAR_SUBJ_ALERT 0.000000, __REFERENCES 0.000000,
 __SANE_MSGID 0.000000, __SUBJ_ALPHA_END 0.000000, __SUBJ_ALPHA_NEGATE 0.000000,
 __SUBJ_REPLY 0.000000, __TO_MALFORMED_2 0.000000, __TO_NAME 0.000000,
 __TO_NAME_DIFF_FROM_ACC 0.000000, __TO_REAL_NAMES 0.000000,
 __URI_IN_BODY 0.000000, __URI_MAILTO 0.000000, __URI_NOT_IMG 0.000000,
 __URI_NO_PATH 0.000000, __URI_NS 0.000000, __URI_WITHOUT_PATH 0.000000,
 __USER_AGENT 0.000000, __X_FF_ASR_SCL_NSP 0.000000,
 __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-MH-Mail-Info-Key: NExNM1ZCMURNRnpkWk1nLTE3Mi4yMC4xLjI1NA==
X-Mailman-Approved-At: Mon, 13 Jun 2022 13:52:00 +0000
Subject: Re: [Intel-wired-lan] Bonding problem on Intel X710 hardware
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGFsbG8gRGF2ZSwNCg0KdGhhbmtzIGZvciB5b3VyIGFuc3dlci4NCg0KSSB0cmllZCB0byBkaXNh
YmxlIHRoZSBMTERQIGVuZ2luZSwgYXMgc3VnZ2VzdGVkLCBidXQgaXQgZGlkIG5vdCBjaGFuZ2Ug
YW55dGhpbmcuDQoNClRvIHJlbWFyazogSSBkbyBub3QgdXNlIExBQ1AsIEknbSB0cnlpbmcgdG8g
dXNlICJBZGFwdGl2ZSBMb2FkIEJhbGFuY2luZyINCndoaWNoIHdvcmtzIHdpdGggQVJQIG5lZ290
aWF0aW9uLg0KSWYgSSdtIHVzaW5nIHRoZSAiYWN0aXZlLWJhY2t1cCIgYm9uZGluZyBtb2RlLCBp
dCBhbGwgd29ya3MgZmluZS4gQnV0IHRoaXMNCmlzIG5lYXJseSB0aGUgc2FtZSBhcyB1c2luZyBv
bmx5IG9uZSBpbnRlcmZhY2UsIHdoaWNoIHdvcmtzIHRvby4NCg0KSW4gbXkgdGVzdCBzZXR1cCwg
SSdtIHVzaW5nIHR3byAiSFBFIDI1MzAtNDhHLVBvRSsiIHN3aXRjaGVzIChZQS4xNi4xMC4wMDAy
KSwNCmVhY2ggaXMgY29ubmVjdGVkIHdpdGggb25lIGNhYmxlIHRvIHRoZSBuZXR3b3JrIGNhcmQu
DQpNeSB0ZXN0IGlzIHZlcnkgc2ltcGxlOg0KQWZ0ZXIgY29uZmlndXJpbmcgdGhlIGJvbmQsIEkg
dXNlZCBhIGNvbnRpbm91cyBwaW5nIHRvIHRoZSBMaW51eCBzZXJ2ZXIgYW5kDQpJIHNlZSBtYW55
IGRyb3BzLiBJZiBJIHRvZ2dsZSB0aGUgIm50dXBsZXMgc3VwcG9ydCIsIHRoZSBkcm9wcyBkaXNh
cHBlYXIuDQoNCkNhbiB3ZSBjb21wYXJlIHRoZSBzZXR0aW5ncyBvZiB5b3VyIHNldHVwIHdpdGgg
bWluZT8gTWF5YmUgeW91IG1pc3NlZA0Kc29tZXRoaW5nLi4uDQpIb3cgY2FuIEkgYXNzaXN0IGZ1
cnRoZXI/DQoNClJlZ2FyZHMNCiAgU3Zlbg0KDQpBbSAxMS4wNi4yMiB1bSAwMzoyNyBzY2hyaWVi
IFN3aXR6ZXIsIERhdmlkOg0KPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4+IEZyb206
IEludGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24g
QmVoYWxmIE9mDQo+PiBTdmVuIEFuZGVycw0KPj4gU2VudDogTW9uZGF5LCBKdW5lIDYsIDIwMjIg
MTE6MDUgUE0NCj4+IFRvOiBpbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZw0KPj4gU3ViamVjdDog
UmU6IFtJbnRlbC13aXJlZC1sYW5dIEJvbmRpbmcgcHJvYmxlbSBvbiBJbnRlbCBYNzEwIGhhcmR3
YXJlDQo+Pg0KPj4gSGVsbG8hDQo+IEhpIFN2ZW4hICBNeSBhcG9sb2dpZXMgb24gdGFraW5nIHNv
IGxvbmcgdG8gcmVwbHkuDQo+Pg0KPj4gV2FzIGFueWJvZHkgYWJsZSB0byByZXByb2R1Y2UgdGhl
IHByb2JsZW0/DQo+IEkgaGF2ZW4ndCBiZWVuIGFibGUgdG8gcmVwcm9kdWNlIHlvdXIgaXNzdWUg
eWV0LCBidXQgd2l0aCB5b3VyIGRlc2NyaXB0aW9uIGl0IHNvdW5kcyB0aGF0IHRoZSBpc3N1ZSBj
b3VsZCBiZSByZWxhdGVkIHRvIHRoZSBYNzEwIGhhcmR3YXJlDQo+IExMRFAgZW5naW5lIGNvbnN1
bWluZyB0aGUgTExEUCBwYWNrZXRzLiAgVG8gZGlzYWJsZSB0aGUgaGFyZHdhcmUgZW5naW5lLCB1
c2VyIHRoZSBmb2xsb3dpbmcgY29tbWFuZCBvbiBlYWNoIG9mIHRoZSBwb3J0cyB0aGF0IHlvdSdy
ZSB1c2luZw0KPiBpbiB0aGUgYm9uZDoNCiA+DQo+IGV0aHRvb2wgLS1zZXQtcHJpdi1mbGFncyA8
aW50ZXJmYWNlIG5hbWU+IGRpc2FibGUtZnctbGxkcCBvbg0KPiANCj4gVGhlbiB0aGUgTExEUCBw
YWNrZXRzIHRoYXQgdGhlIGJvbmRpbmcgbW9kdWxlcyByZWxpZXMgb24gd2lsbCBiZSBmb3J3YXJk
ZWQgYnkgdGhlIGhhcmR3YXJlIHRvIHRoZSBPUyBuZXR3b3JrIHN0YWNrLg0KPiANCj4gSSBob3Bl
IHlvdSBoYXZlIGEgZ3JlYXQgd2Vla2VuZCENCj4gRGF2ZQ0KPiANCj4+IERvIHlvdSBuZWVkIGFz
c2lzdGFuY2Ugb3IgZnVydGhlciBpbmZvcm1hdGlvbj8NCj4+DQo+PiBSZWdhcmRzDQo+PiAgIFN2
ZW4NCj4+DQo+PiBBbSAzMC4wNS4yMiB1bSAxNzo1MyBzY2hyaWViIFN2ZW4gQW5kZXJzOg0KPj4+
Pj4+IEhlbGxvIQ0KPj4+Pj4+DQo+Pj4+Pj4gVGhpcyBpcyBhIGZvbGxvdyB1cCB0byBteSBxdWVz
dGlvbi4gSSBkaWQgbm90IGhlYXIgYW55dGhpbmcgc28gZmFyLA0KPj4+Pj4+IGJ1dCBJIHRyaWVk
IHRvIGZpbmQgc29tZSBzb21lIGluZm9ybWF0aW9uIG1lYW53aGlsZS4NCj4+Pj4+Pg0KPj4+Pj4+
IEkndmUgZ290IGEgZ3Vlc3MgZnJvbSBzb21lYm9keSwgdGhhdCB0aGUgZXJyb3IgbWVzc2FnZSAi
RXJyb3INCj4+Pj4+PiBJNDBFX0FRX1JDX0VJTlZBTCBhZGRpbmcgUlggZmlsdGVycyBvbiBQRiwg
cHJvbWlzY3VvdXMgbW9kZSBmb3JjZWQNCj4+Pj4+PiBvbiIgbWF5YmUgdHJpZ2dlcmVkLCBiZWNh
dXNlIEknbSBoaXR0aW5nIGEgbGltaXQgaGVyZS4NCj4+Pj4NCj4+Pj4gWWVzLCB0eXBpY2FsbHkg
dGhpcyBpcyBhIHJlc3BvbnNlIGZyb20gb3VyIGZpcm13YXJlIHRoYXQgYSB0YWJsZSBpcw0KPj4+
PiBmdWxsIGluIGhhcmR3YXJlLCBhbmQgSSdtIGd1ZXNzaW5nIHRoYXQgeW91IG1pZ2h0IGJlIHJ1
bm5pbmcgaW50byBhIGZpbHRlcg0KPj4gbGltaXQgZHVlIHRvIHVzaW5nIHZsYW5zPw0KPj4+DQo+
Pj4gVGhhdCdzIHdoYXQgSSBzdXNwZWN0LCBidXQgSSBkaWQga25vdyB0aGUgaGFyZHdhcmUgYW5k
IGZpcm13YXJlDQo+Pj4gaW5zdWZmaWNpZW50bHkgdG8gYmUgc3VyZS4NCj4+PiBXaGF0IEknbSB3
b25kZXJpbmcgaXM6IFdoeSB0aGlzIGlzIG9ubHkgdHJpZ2dlcmVkIGlmIEkgdG9nZ2xlIHRoZSAi
bnR1cGxlcw0KPj4gc3VwcG9ydCINCj4+PiBhbmQgbm90IGVhcmxpZXIgd2hlbiBzZXR0aW5nIHVw
IHRoZSBpbnRlcmZhY2U/DQo+Pj4NCj4+Pj4+PiBEYXRhIHBhY2tldHMgYXJlIG9ubHkgcmVjZWl2
ZWQgc3BvcmFkaWNhbGx5LiBJZiBJIHJ1biB0aGUgc2FtZSB0ZXN0DQo+Pj4+Pj4gd2l0aCBvbmx5
IG9uZSBzbGF2ZSBwb3J0LCBpdCB3b3JrcyB3aXRob3V0IHByb2JsZW1zLg0KPj4+Pg0KPj4+PiBB
bmQgdGhlcmUgYXJlIG5vIGNvdW50ZXJzIGdvaW5nIHVwIGluIGV0aHRvb2wgLVMgd2hlbiB5b3Ug
cmVjZWl2ZS9kcm9wDQo+PiBwYWNrZXRzPw0KPj4+DQo+Pj4gSSdtIG5vdCBzdXJlIGhlcmUuIEkg
dHJpZWQgdG8gaW5zcGVjdCB0aGUgY291bnRlcnMgYW5kIGl0IHNlZW1zIHRoYXQNCj4+PiB0aGUg
Y291bnRlcnMgYXJlIGdvaW5nIHVwIHNsb3dlciBpbiB0aGlzIGNhc2UsIGJ1dCBpdCdzIGRpZmZp
Y3VsdCB0bw0KPj4+IHNheSwgYmVjYXVzZSB0aGVyZSBpcyBzb21lICJub2lzZSIgb24gdGhlIGxp
bmUgYW5kIEkgZG8gbm90IGhhdmUNCj4+PiBkaXJlY3QgYWNjZXNzIHRvIHRoZSBoYXJkd2FyZSBh
dCB0aGUgbW9tZW50Lg0KPj4+DQo+Pj4gSWYgeW91IG5lZWQgYW55IGZ1cnRoZXIgaW5mb3JtYXRp
b24gb3IgdGVzdHMsIGp1c3QgY29udGFjdCBtZS4NCj4+DQo+PiBSZWdhcmRzDQo+PiAgIMKgIFN2
ZW4gQW5kZXJzDQo+PiAtLQ0KPj4gICBTdmVuIEFuZGVycyAgICAgICAgICAgICAgICAgICgpIFVU
Ri04IFJpYmJvbiBDYW1wYWlnbg0KPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAvXCBTdXBwb3J0IHBsYWluIHRleHQgZS1tYWlsDQo+PiAgIEFORFVS
QVMgaW50cmFuZXQgc2VjdXJpdHkgQUcNCj4+ICAgTWVzc2VzdHJhc3NlIDMgLSA5NDAzNiBQYXNz
YXUgLSBHZXJtYW55DQo+PiAgIFdlYjogd3d3LmFuZHVyYXMuZGUgLSBUZWw6ICs0OSAoMCk4NTEt
NCA5MCA1MC0wIC0gRmF4OiArNDkgKDApODUxLTQgOTAgNTAtNTUNCj4+DQo+PiBUaG9zZSB3aG8g
d291bGQgZ2l2ZSB1cCBlc3NlbnRpYWwgTGliZXJ0eSwgdG8gcHVyY2hhc2UgYSBsaXR0bGUgdGVt
cG9yYXJ5DQo+PiBTYWZldHksIGRlc2VydmUgbmVpdGhlciBMaWJlcnR5IG5vciBTYWZldHkuDQo+
PiAgICAtIEJlbmphbWluIEZyYW5rbGluDQo+Pg0KPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QN
Cj4+IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnDQo+PiBodHRwczovL2V1LWNlbnRyYWwtMS5w
cm90ZWN0aW9uLnNvcGhvcy5jb20/ZD1vc3Vvc2wub3JnJnU9YUhSMGNITTZMeTlzYVhOMGN5NXZj
M1Z2YzJ3dWIzSm5MMjFoYVd4dFlXNHZiR2x6ZEdsdVptOHZhVzUwWld3dGQybHlaV1F0YkdGdSZp
PU5XUmtaVGM1TWpRek1qTTJZekV4TmpnMFpUSTRNak00JnQ9V0haVVRVZGpOVmt5U1RWVmNXVmpV
RXBWVEdsa2FYVjNOa3hWUW0xTFNHZFVPWE14ZVZWRVExcHlPRDA9Jmg9NGVkNWNhNDNiMTQxNDdl
YjhhZTQ4OTFjZjJhNTRmNzANCg0KDQpNaXQgZnJldW5kbGljaGVuIEdyw7zDn2VuDQogIFN2ZW4g
QW5kZXJzDQoNCi0tIA0KICBTdmVuIEFuZGVycyA8YW5kZXJzQGFuZHVyYXMuZGU+ICAgICAgICAg
ICAgICAgICAoKSBVVEYtOCBSaWJib24gQ2FtcGFpZ24NCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgL1wgU3VwcG9ydCBwbGFpbiB0ZXh0IGUtbWFpbA0K
ICBBTkRVUkFTIGludHJhbmV0IHNlY3VyaXR5IEFHDQogIE1lc3Nlc3RyYcOfZSAzIC0gOTQwMzYg
UGFzc2F1IC0gR2VybWFueQ0KICBXZWI6IHd3dy5hbmR1cmFzLmRlIC0gVGVsOiArNDkgKDApODUx
LTQgOTAgNTAtMA0KDQpSZWNodHNmb3JtOiBBa3RpZW5nZXNlbGxzY2hhZnQgLSBTaXR6OiBQYXNz
YXUgLSBBbXRzZ2VyaWNodDogUGFzc2F1IEhSQiA2MDMyDQpWb3JzdGFuZDogTWFyY3VzIEp1bmtl
cg0KVm9yc2l0emVuZGVyIGRlcyBBdWZzaWNodHNyYXRzOiBBbmRyZWFzIFdhZ25lcg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
