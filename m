Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A629B555147
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jun 2022 18:25:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9CBA41581;
	Wed, 22 Jun 2022 16:25:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9CBA41581
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655915124;
	bh=Hs3o1eNjEfDBZblJC+tsHzXyYx2dtn8nDLTO7yTH+OE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WiGo1nfUZD5pB5GWNOg/0wMxaspzoPtVGKblLhIUMlMLHgOc7ZhS64ib7wig8ahuH
	 7/5oYGLw25LffM/2iViQBx6199IhQnXO8sIGdmiQMphj7l7TNCA9fD3kVvGjGXfkFw
	 PN5quicVJphz0Eh1tbwTMvJITcAldB7HizltuoMtcYd2XyevPZ3YxMoSWyBiDLdU9t
	 wcn17dwVnWIIcRBeRGf3yMITcmg2kHr6qqT1NY+b6GGRkKwVUk4rrNIegQLUKRgVtJ
	 3RxEKyD6+lz5YRFVkDxM9nfUoQiI7whV36ZZ89nKm3b4s/ZEGs2HsgqxmE0B5legSP
	 zacUyIRtmsGvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AK1WJX1aWUjZ; Wed, 22 Jun 2022 16:25:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5046400C9;
	Wed, 22 Jun 2022 16:25:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5046400C9
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E3A6B1BF5A2
 for <intel-wired-lan@osuosl.org>; Wed, 22 Jun 2022 07:37:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C911761259
 for <intel-wired-lan@osuosl.org>; Wed, 22 Jun 2022 07:37:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C911761259
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y8NOkmPFRbfO for <intel-wired-lan@osuosl.org>;
 Wed, 22 Jun 2022 07:37:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33E166124A
Received: from wd-euc1.prod.hydra.sophos.com (wd-euc1.prod.hydra.sophos.com
 [94.140.18.59])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 33E166124A
 for <intel-wired-lan@osuosl.org>; Wed, 22 Jun 2022 07:37:21 +0000 (UTC)
Received: from ip-172-20-1-129.eu-central-1.compute.internal
 (ip-172-20-1-129.eu-central-1.compute.internal [127.0.0.1])
 by wd-euc1.prod.hydra.sophos.com (Postfix) with ESMTP id 4LSZwG1fbyzWf1f
 for <intel-wired-lan@osuosl.org>; Wed, 22 Jun 2022 07:37:18 +0000 (UTC)
X-Sophos-Product-Type: Gateway
X-Sophos-Email-ID: ae88be158d2f4b4cb72c2a1be92df1f4
Received: from DEU01-FR2-obe.outbound.protection.outlook.com
 (mail-fr2deu01lp2174.outbound.protection.outlook.com [104.47.11.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay-eu-central-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4LSZwB1K3SzCqjZ; Wed, 22 Jun 2022 07:37:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aM+dnOtgL7CFMLC5GTE54NdW8NOUzUB6iX3oyi3DlW+YfBFrDcxlIYuR/9tn9S+SS+LZJLFiSiJopt8Du1dwrLfPAky9gKnTxV5GuwUzj/9cz4ygpi8jJ8wsU7Ir7OiuuyBTm10LYQErkV5i4FOmcDAn9VAVjYN4U9wgDELEk6a9FxuMDUEGWX9K88Xfb6z0pE7Y28tgOaJZlo1+6tyTLXjwKJ6in6jF+5kAKGOlk4s24pzOGu63TcnDx4Zdgfpuu24o9rxMc6MRCFiAfOrC7PInObfQAbITVpjYfkhnykjskL37W5kHWZFX0b8ysjcHU886UPL3iKtt5rpILlw89g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+0ksfsAcac021P1PJilCTJpL99a96RRwTcFMAFfSepw=;
 b=je40WrhxC/DF2xLjIdLSxuo25nmHJzk8mXMdMMhiBpTXmmOJPMKQnu+Rieqt+yDTsYM/dbDfLtubE7dNFI+UKnVPr6y6gguLOmq/0N04KDW8OQ5UZlZy1IAFvlJADJjGOAdmuh7vBLHxzmq4RcTJR9n0m1ANlEgbwmDxtNgMJ3Da/ECAOWdGa7lDomI9gwlFp29m5FMP4cwI4ngPDlG0ZfEwxPzpOiYxZQaW0BusUQz2RfIDhnipF8m9H4oJchaMUZUK5VgT80pwQW6mneCS5g7tI1BH1cKhrQHqG7xn1cgKKFRTnnGWbZgC0GB3jNEEcsV3XGt8LJd5u43WpQZ2wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=anduras.de; dmarc=pass action=none header.from=anduras.de;
 dkim=pass header.d=anduras.de; arc=none
Received: from FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:2e::5) by
 FR3P281MB1455.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:7a::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5373.15; Wed, 22 Jun 2022 07:37:12 +0000
Received: from FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
 ([fe80::2071:8fd3:6071:b25e]) by FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
 ([fe80::2071:8fd3:6071:b25e%7]) with mapi id 15.20.5373.015; Wed, 22 Jun 2022
 07:37:12 +0000
Message-ID: <a0683b2b-e33f-4f58-bd21-2b6a79fd19cf@anduras.de>
Date: Wed, 22 Jun 2022 09:37:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: de-DE
To: "Switzer, David" <david.switzer@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
References: <a94b23d2-57a8-954f-9fae-246cf900be92@intel.com>
 <8d7813a5-c344-6225-dc1a-89a92e5cddb9@anduras.de>
 <eb729924-7c59-23fa-4847-bff376a98d2a@anduras.de>
 <SN6PR11MB35187D9C1432AAB249FF8CCBEBA99@SN6PR11MB3518.namprd11.prod.outlook.com>
 <4cd7ea38-760d-23b9-5925-a9d1a0504286@anduras.de>
 <SN6PR11MB3518CAAC30596FB69490B33DEBAC9@SN6PR11MB3518.namprd11.prod.outlook.com>
 <SN6PR11MB351898837AC265B5F52C88E0EBB39@SN6PR11MB3518.namprd11.prod.outlook.com>
From: Sven Anders <sven.anders@anduras.de>
Organization: ANDURAS AG
In-Reply-To: <SN6PR11MB351898837AC265B5F52C88E0EBB39@SN6PR11MB3518.namprd11.prod.outlook.com>
X-ClientProxiedBy: AM5PR1001CA0018.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:206:2::31) To FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:2e::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0926618b-dfd5-4144-ab06-08da54220576
X-MS-TrafficTypeDiagnostic: FR3P281MB1455:EE_
X-Microsoft-Antispam-PRVS: <FR3P281MB1455601F86BF3412749C71FF84B29@FR3P281MB1455.DEUP281.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aGZ/H4DqdwWy7uuwJjeq9AS5ah+vD50WXDJ2hv2Cd8x2LqdfUnQ6PpWtK8nrciwrxfGfQalaO4E2DH1KGxM2e/wifx08rk3qqhIs6BdvXR27cglnM7kLKLecgDAA3Lak4aIAuRlzncYXTxwjAbCW2dx6iJ78n1ihg1jkIpUNzSj8gol7sXw4SG9WEz8QS3P/0ECsPF/aXwg52RWq0OYI+pwstj6+68amNiv8jPYQzzBgP4Ek4e1LK6e09js4phg/vjesWVc1dtiAKEUhWNODB2Yx9fUwkXrf2jo0n97/rKKd0Fz9vUm9nItLRnqAI54/zyRuy4GSTVMgFLTroG1l2foY7w5fdW0/CZCIENkS88vTmhQMeUpICI0y2IhqKqmlSAfNSJA4r0qoH8WfpeSgJmB2fsrT1rPB5sSiVEQ/c9kCgNGUH80GK0dtLfduQ+LciBN+f/cMdVEFhdTFKmCLLOwtDw5gkJ5DMAZiS5vgKcUiU14uxKrKMehTJt7UGL0VHd2XsCgGJFqO/vd6W//gAPoTx7upUE34KzPi4oxZNSsgs76cJMCWWn5k8MdWNuFOI3EdEaL/uB6ABxL2YfsFYSEOHwWu0/S704J1CR3tl2CUbtUPN24Dm+ira3kYROnKsmpEnTxOzU4LepETDgEjnL5gVPZKYSqZl2dx72s5eVh9P2FMNkbcYoztm55rTac5La3zaREiC1bpIkT2XY3JUil2n8sHI+GOK2RYs/oABVNQbdplJ7oqkpaTgvrBb3VB5rQh7MpbS58/TRO2obHeI2LQv3sH9DNQiv+obXO2jtmdWDpZcvhIYwaXK5Td+zfy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:; 
 IPV:NLI; SFV:NSPM;
 H:FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM; PTR:; CAT:NONE; 
 SFS:(13230016)(366004)(396003)(136003)(376002)(346002)(39830400003)(42606007)(31686004)(83380400001)(6506007)(2616005)(66574015)(15974865002)(44832011)(186003)(2906002)(36756003)(6512007)(53546011)(5660300002)(38100700002)(31696002)(966005)(6486002)(86362001)(66946007)(66556008)(316002)(66476007)(8676002)(8936002)(110136005)(41300700001)(478600001)(36916002)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXZocHRTSnI5cmRjSC9kRGdzR204dVc2Yzlna1B3aFNCNDNEUEl0OXFLSzl1?=
 =?utf-8?B?N0VrUUNtZ2FlanZHUVlGWFZOOG8xMmhOakhBMG9tUHhVMXUwb3d6Z2ltRlF1?=
 =?utf-8?B?bjhsMWdEYnJhRVduTTJHY0YzVDloQnBzbVk3Ly9Bd1krWDVReW8vRWx3SzA5?=
 =?utf-8?B?ZENScno5RjRscWFVdWxPdVd5bjBKclA0OStZWVZla0NNQ2N5RDh6NWhvVlJ1?=
 =?utf-8?B?RisrRHQ4QkRmMmFEbWlUK1dQZzgvT2F2MTArdWFVTDliRnlUSzdFZFBkYlZL?=
 =?utf-8?B?SEpJRzhHR05DeHhaL2JaeFYxVENKNmJsVlkrOG1rNG5lUU9uTGZnNit1WVB2?=
 =?utf-8?B?dnZNdXpiYnJRekM1VVNnQzRCRE1kWjFTN1c4RU1QakVKL2JIbjNzTGVlaEdS?=
 =?utf-8?B?Wng0aklnclRzNEU0VHRQMGNHN0NkNVpVeEJ4R1NZQnNrRkpGcHRPczdoMWE1?=
 =?utf-8?B?TVhKMDVFaUEzdE1JL2lQcUVFcXlPOGQ1VDhBNmM3WkpySlkybmRUdGY3YVJo?=
 =?utf-8?B?TXEwLzFrMDBXNkk3VnRwYks0ZWtEblVTNWhJNXNMYWVac2dHMHl4RjdoYk96?=
 =?utf-8?B?MWh5SnFvdlNmRUVreTZ6NDJVNjJvSmxJZS9neWVwMnFxUmE5RFJTaVpvWU5C?=
 =?utf-8?B?dzdlWEJPeUNIS3psalZBMStmbmRhMnU2cVhvRVhOTHNWOGpLSmNCQTZ0RUlt?=
 =?utf-8?B?SGVYdjFObnJwMmFrUUVDSHJlS0RRUm1ORzliS3lKa1pjdDVsMXR0T0MwSTNP?=
 =?utf-8?B?Z3dCbDNsVWFWM01UMW9yYjRrK2ZnaGpnZ21vS0Y0Y2RNMWVKQmI3NkVzdnZj?=
 =?utf-8?B?L2c2RjFUdUhLUXE4dHZWeVh5Z2ZKWFlYRS8vVW90TXlnSWV2WVFpSVZjSzhR?=
 =?utf-8?B?ME9SdW55YjhBMlUyS2Vpc1BrS0dTc1dRS1pyYW1XT25NcXNydndPUUFBa2Rz?=
 =?utf-8?B?WG9qV1JmQjg3UFlHQWI1UlY3bVcvMnMvOGthTDRTRFBNcWhTWmlnbE90Q3dw?=
 =?utf-8?B?WFJoZUJ3MEQ1Sjh0aWNHcFBTcWs2bnRZeDRTYkpSbzd1RG5FbitTVU4xOHZz?=
 =?utf-8?B?ZDFCSGVoNWlTYzVkU08rZ3pveFNsMis5R3lHYTZNWW5OSjN2SExlaDR4TjlC?=
 =?utf-8?B?NDJuMTV4UGtMbWVGVnZ4eGd2bm9HZzVtaERhcXpRUDlrY1VZNHorZTVBSEdo?=
 =?utf-8?B?LzJVWTFxbVQ5c3NmWXBoWUxBWFo3cWVpalNTRmF2MTRxWlgwV1Q5Z0Y2d0sv?=
 =?utf-8?B?RWlBS1htV256OGlZMVpPbElpOWhWbEpsWU5EcEhvTk9YUlJFKzhuNUxSMEZJ?=
 =?utf-8?B?SmpzY0hJb0hTWkNoUEx6ekNMc2JMQWl1Z3NXUUV6L1FYTEowVktFNnBDRFp2?=
 =?utf-8?B?VW1nTlVnTmhkQmoyMzVORUJzYjcyM0NaZTRTSGtFM2E2NVU1K3ZLd1haTEtP?=
 =?utf-8?B?ZnExT2hqTm5TVWU4eHRKdnZvL2gybjRqaUVlTEpiaWNXTmVTTHBDTzZ6SGx2?=
 =?utf-8?B?UlMwNnVhN1p3WGxES3FtWDFBNm0vMlc1UjBGNEc0UEVvRTg4WlQycGZUcEtu?=
 =?utf-8?B?ZzNYYXd0VWc1dlM5THRpRm1mOFlnak5GYXc3LzVwVC9tVEpocGpaOXA3UmJy?=
 =?utf-8?B?bkE3WndKOFprMDR2a21RVWZvR1pPZW8zSllWSzMzclg5Y1lpeHU3ckRwbFVC?=
 =?utf-8?B?K1ZJRGVuWlVReWxSQnNlVjkyTXZ6VXJuV3JHMWdic1c3bFUrNlVSRER3MGdO?=
 =?utf-8?B?SmV6eHNXN3RMMWk2eEJvMnpJekRvT083N1p3VVBRZmFMVnRqa0tjMUlGenc0?=
 =?utf-8?B?ZStlditoeHFmMysvTFpHS2R5dFdBaC9vam1WYVVkV1ZraWVQbmRIcjI5Y2Fj?=
 =?utf-8?B?alNma0J3Vzg5RVVMc0ltdjFic3Q2REpTR3JzUUhSZWU0WEF0TFIzc3dJY215?=
 =?utf-8?B?MHRBdzV5dkdFNm5CZGtqdjdJU0lYL2NZTmE3WUdjU0xxcDUwU0NNdnRMV0lL?=
 =?utf-8?B?NFpEV2w1MDFyYlRNKzRHMHNldUdGR0ZqQUtwMEM3M3FNejJQUzNwVWxXT1Uw?=
 =?utf-8?B?V3F5ZTF6cmV5Mm9oSHFrTlZGQUZ1Q1M2M1F6RnRUbFNyT2Jva0lsRUcvTUxS?=
 =?utf-8?B?VjljTUltUGtGVEFQSG04VGw2Mmg4OWg3dmxxSGtDamt2VzBMb2tXaWFwdXc2?=
 =?utf-8?B?SHZ5bDRwVUkyMWdWN2ZpVlFQRVVDREhnTy9GTmZiZzEwampPQ1Vzc09tUGJI?=
 =?utf-8?B?Uk1BYXdvUkZqSUkxc0JtMDlLRTk0N1JuOWpmZWxOb3ZLZW5UamRZYzFwZkRn?=
 =?utf-8?B?U25wazlYSENyTEpad2t6OUxXYUJCQWlrOWVWOEx2K25Zd3dydE8rOHNaMGU1?=
 =?utf-8?Q?uaa4IxdopLp1l75E=3D?=
X-OriginatorOrg: anduras.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0926618b-dfd5-4144-ab06-08da54220576
X-MS-Exchange-CrossTenant-AuthSource: FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2022 07:37:12.5505 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 639cc95b-aa9f-42bf-b982-a592003fbab3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8jL+Dpoie6LGk/KYnNcpKltRJiKYhKlCl3/Hq9KcOw3HeYlRuPWuOdbm3KdecCWLODEpzYKsaa+Zwy5m4/hlkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR3P281MB1455
X-Sophos-Email: [eu-central-1] Antispam-Engine: 5.1.0,
 AntispamData: 2022.6.22.70022
X-LASED-SpamProbability: 0.081286
X-LASED-Hits: BODY_SIZE_10000_PLUS 0.000000, CTE_BASE64 0.000000,
 DKIM_SIGNATURE 0.000000, ECARD_WORD 0.000000, HTML_00_01 0.050000,
 HTML_00_10 0.050000, IN_REP_TO 0.000000, LEGITIMATE_SIGNS 0.000000,
 MSG_THREAD 0.000000, NO_FUR_HEADER 0.000000, OUTBOUND 0.000000,
 OUTBOUND_SOPHOS 0.000000, REFERENCES 0.000000, SUPERLONG_LINE 0.050000,
 __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000,
 __ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
 __ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
 __BANNER_TRUSTED_SENDER 0.000000, __BEC_PHRASE 0.000000,
 __BITCOIN_ADDRESS_OBFU 0.000000, __BODY_NO_MAILTO 0.000000,
 __BOUNCE_CHALLENGE_SUBJ 0.000000, __BOUNCE_NDR_SUBJ_EXEMPT 0.000000,
 __BULK_NEGATE 0.000000, __BUSINESS_SIGNATURE 0.000000,
 __CP_URI_IN_BODY 0.000000, __CT 0.000000, __CTE 0.000000,
 __CT_TEXT_PLAIN 0.000000, __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000,
 __DQ_NEG_IP 0.000000, __FORWARDED_MSG 0.000000, __FRAUD_CONTACT_NUM 0.000000, 
 __FRAUD_PARTNERSHIP 0.000000, __FUR_RDNS_SOPHOS 0.000000, __HAS_FROM 0.000000, 
 __HAS_MSGID 0.000000, __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000, __HIGHBITS 0.000000, 
 __HTTPS_URI 0.000000, __IMP_FROM_MY_ORG 0.000000, __IMP_FROM_NOTSELF 0.000000, 
 __INVOICE_MULTILINGUAL 0.000000, __IN_REP_TO 0.000000,
 __JSON_HAS_SCHEMA_VERSION 0.000000, __JSON_HAS_TENANT_DOMAINS 0.000000,
 __JSON_HAS_TENANT_ID 0.000000, __JSON_HAS_TENANT_SCHEMA_VERSION 0.000000,
 __JSON_HAS_TENANT_VIPS 0.000000, __JSON_HAS_TRACKING_ID 0.000000,
 __MAIL_CHAIN 0.000000, __MIME_TEXT_ONLY 0.000000, __MIME_TEXT_P 0.000000,
 __MIME_TEXT_P1 0.000000, __MIME_VERSION 0.000000,
 __MOZILLA_USER_AGENT 0.000000, __MSGID_HEX_844412 0.000000,
 __MULTIPLE_RCPTS_TO_X2 0.000000, __MULTIPLE_URI_TEXT 0.000000,
 __NO_HTML_TAG_RAW 0.000000, __OUTBOUND_SOPHOS 0.000000,
 __OUTBOUND_SOPHOS_FUR 0.000000, __OUTBOUND_SOPHOS_FUR_IP 0.000000,
 __OUTBOUND_SOPHOS_FUR_RDNS 0.000000, __PHISH_SPEAR_SUBJ_ALERT 0.000000,
 __REFERENCES 0.000000, __SANE_MSGID 0.000000, __SUBJ_ALPHA_END 0.000000,
 __SUBJ_ALPHA_NEGATE 0.000000, __SUBJ_REPLY 0.000000, __TO_MALFORMED_2 0.000000,
 __TO_NAME 0.000000, __TO_NAME_DIFF_FROM_ACC 0.000000, __TO_REAL_NAMES 0.000000,
 __URI_IN_BODY 0.000000, __URI_MAILTO 0.000000, __URI_NOT_IMG 0.000000,
 __URI_NO_PATH 0.000000, __URI_NS 0.000000, __URI_WITHOUT_PATH 0.000000,
 __USER_AGENT 0.000000, __X_FF_ASR_SCL_NSP 0.000000,
 __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-MH-Mail-Info-Key: NExTWndHMWZieXpXZjFmLTE3Mi4yMC4xLjEyOQ==
X-Mailman-Approved-At: Wed, 22 Jun 2022 16:25:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ANDURASAG.onmicrosoft.com; s=selector1-ANDURASAG-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+0ksfsAcac021P1PJilCTJpL99a96RRwTcFMAFfSepw=;
 b=L4E04eY6Utff40rKM7zT7Q4GbAGEUWOGVpW2L07Bl54MjAainnZbsSeciTV60QLwmMCt3s07b5UXj1zdVlAcpbHzEirV0WgGjhwHVXj1pY5LkGdT65L3K2gzF/+YSms6q7xcfBANB7EJC39W5qS9abuRikPWWbV7pqWQ8H8VlPE=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1655883431; 
 s=sophosf9aa68d74dee45c58aac945adde58f79; d=anduras.de;
 h=Content-Type:From:To:Subject:Date;
 bh=+0ksfsAcac021P1PJilCTJpL99a96RRwTcFMAFfSepw=;
 b=BMM7aFnAoa8zhkxOI2+Ym2gWgUCfLzKCCKDyNblNVB5u9TVX1p4G+bjKsNi4Tgh6
 8WafFBi17zfksmami4CwgS1HL0thHRG6iJMYecdOu9Fek1flnfhdMirIko7lTy8p033
 1Ea1cjeL+Y/1vSFDFtZIje6I+YdsAixxgzW2E02ja5O8jA3VEDrypMjCOwHCV5Y9mAS
 qTxeIpDecIB/ijKJqls9wvhuqP03RGkm9F6GifwFnHnqqz9vPHK56bOj8msrYyi9z67
 ZwajvIWvpvD1iJv5T/fG8NfhDDX7IckTsegoDKv2cKXfBfW9D9BO4KEzm2oKG69BwmK
 ZWg861JJYA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1655883431; 
 s=v1; d=mail-dkim-eu-central-1.prod.hydra.sophos.com;
 h=Content-Type:From:To:Subject:Date;
 bh=+0ksfsAcac021P1PJilCTJpL99a96RRwTcFMAFfSepw=;
 b=Q7BROiKdU5jT6KtPiU/nnpd3F8B7AokRsMRoapgumI6JNg6F3cSLyFAUQGjliP0O
 J5GRW9DuVtAslaqDvQjbmW4DUztcqaHJfXyfbDIfuQZ2XD+xohnlfuc7acW68I5fX+B
 LwWOd+2HynctBVcL8S/xtq5LnCUblW2cxiO9R9IugzRp+It0oqvdMiuoPGs3ZCZ3Suc
 /xh2lQi0RxeG48yaQEnhDlDwWJjcak1o1MCFEtIrZdsdc6gn9P9ZYuTotSwofo1RI4o
 NAJiYt4cvmW5wZNrHDXVz1YPfgcxUwBpcYjyZuB3z8F+pu+gJN/vn4Q0uGjFS9hXEhq
 AAxzomnT9g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=temperror header.d=ANDURASAG.onmicrosoft.com
 header.i=@ANDURASAG.onmicrosoft.com header.a=rsa-sha256
 header.s=selector1-ANDURASAG-onmicrosoft-com header.b=L4E04eY6; 
 dkim=pass (2048-bit key) header.d=anduras.de header.i=@anduras.de
 header.a=rsa-sha256 header.s=sophosf9aa68d74dee45c58aac945adde58f79
 header.b=BMM7aFnA; 
 dkim=pass (2048-bit key) header.d=mail-dkim-eu-central-1.prod.hydra.sophos.com
 header.i=@mail-dkim-eu-central-1.prod.hydra.sophos.com header.a=rsa-sha256
 header.s=v1 header.b=Q7BROiKd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=anduras.de;
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

SGFsbG8gRGF2ZSwNCg0KSSB3aWxsIHNldHVwIGEgbmV3IHRlc3QgZW52aXJvbm1lbnQgdGhlc2Ug
ZGF5cyB0byBnbyBkZWVwZXIgaW4gdGhlDQphbmFseXNpcy4gVGhlbiBJIGNhbiBjb21wYXJlIGRp
ZmZlcmVudCBrZXJuZWwgdmVyc2lvbnMgYW5kIEkgd2lsbA0KdHJ5IHRvIHJlcHJvZHVjZSB0aGlz
IGlzc3VlIHdpdGggYW4gc21hbGwgc2NyaXB0LiBJIHdpbGwgY2hlY2ssIGlmDQpJIGNhbiByZXBy
b2R1Y2UgdGhpcyBldmVuIHdpdGggYSBtYWpvciBsaW51eCBkaXN0cmkgKFVidW50dT8pLg0KDQpJ
ZiBJIGhhdmUgYW55IHJlc3VsdCwgSSB3aWxsIGdldCBiYWNrIHRvIHlvdS4uLg0KDQpSZWdhcmRz
DQogIFN2ZW4NCg0KQW0gMjEuMDYuMjIgdW0gMjM6MTggc2NocmllYiBTd2l0emVyLCBEYXZpZDoN
Cj4gDQo+IA0KPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4+IEZyb206IFN3aXR6ZXIs
IERhdmlkDQo+PiBTZW50OiBUaHVyc2RheSwgSnVuZSAxNiwgMjAyMiAxOjMxIFBNDQo+PiBUbzog
U3ZlbiBBbmRlcnMgPHN2ZW4uYW5kZXJzQGFuZHVyYXMuZGU+OyBpbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZw0KPj4gU3ViamVjdDogUkU6IFtJbnRlbC13aXJlZC1sYW5dIEJvbmRpbmcgcHJvYmxl
bSBvbiBJbnRlbCBYNzEwIGhhcmR3YXJlDQo+Pg0KPj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQo+Pj4gRnJvbTogU3ZlbiBBbmRlcnMgPHN2ZW4uYW5kZXJzQGFuZHVyYXMuZGU+DQo+Pj4g
U2VudDogTW9uZGF5LCBKdW5lIDEzLCAyMDIyIDEyOjQ0IEFNDQo+Pj4gVG86IFN3aXR6ZXIsIERh
dmlkIDxkYXZpZC5zd2l0emVyQGludGVsLmNvbT47DQo+Pj4gaW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcNCj4+PiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gQm9uZGluZyBwcm9ibGVt
IG9uIEludGVsIFg3MTAgaGFyZHdhcmUNCj4+Pg0KPj4+IEhhbGxvIERhdmUsDQo+PiBIaSBTdmVu
LA0KPiANCj4gSGVsbG8gU3ZlbiENCj4+DQo+Pj4NCj4+PiB0aGFua3MgZm9yIHlvdXIgYW5zd2Vy
Lg0KPj4gWW91J3JlIHZlcnkgd2VsY29tZSENCj4+DQo+Pj4NCj4+PiBJIHRyaWVkIHRvIGRpc2Fi
bGUgdGhlIExMRFAgZW5naW5lLCBhcyBzdWdnZXN0ZWQsIGJ1dCBpdCBkaWQgbm90IGNoYW5nZQ0K
Pj4+IGFueXRoaW5nLg0KPj4+DQo+Pj4gVG8gcmVtYXJrOiBJIGRvIG5vdCB1c2UgTEFDUCwgSSdt
IHRyeWluZyB0byB1c2UgIkFkYXB0aXZlIExvYWQgQmFsYW5jaW5nIg0KPj4+IHdoaWNoIHdvcmtz
IHdpdGggQVJQIG5lZ290aWF0aW9uLg0KPj4+IElmIEknbSB1c2luZyB0aGUgImFjdGl2ZS1iYWNr
dXAiIGJvbmRpbmcgbW9kZSwgaXQgYWxsIHdvcmtzIGZpbmUuIEJ1dA0KPj4+IHRoaXMgaXMgbmVh
cmx5IHRoZSBzYW1lIGFzIHVzaW5nIG9ubHkgb25lIGludGVyZmFjZSwgd2hpY2ggd29ya3MgdG9v
Lg0KPj4+DQo+Pj4gSW4gbXkgdGVzdCBzZXR1cCwgSSdtIHVzaW5nIHR3byAiSFBFIDI1MzAtNDhH
LVBvRSsiIHN3aXRjaGVzDQo+Pj4gKFlBLjE2LjEwLjAwMDIpLCBlYWNoIGlzIGNvbm5lY3RlZCB3
aXRoIG9uZSBjYWJsZSB0byB0aGUgbmV0d29yayBjYXJkLg0KPj4+IE15IHRlc3QgaXMgdmVyeSBz
aW1wbGU6DQo+Pj4gQWZ0ZXIgY29uZmlndXJpbmcgdGhlIGJvbmQsIEkgdXNlZCBhIGNvbnRpbm91
cyBwaW5nIHRvIHRoZSBMaW51eCBzZXJ2ZXINCj4+PiBhbmQgSSBzZWUgbWFueSBkcm9wcy4gSWYg
SSB0b2dnbGUgdGhlICJudHVwbGVzIHN1cHBvcnQiLCB0aGUgZHJvcHMgZGlzYXBwZWFyLg0KPj4+
DQo+Pj4gQ2FuIHdlIGNvbXBhcmUgdGhlIHNldHRpbmdzIG9mIHlvdXIgc2V0dXAgd2l0aCBtaW5l
PyBNYXliZSB5b3UgbWlzc2VkDQo+Pj4gc29tZXRoaW5nLi4uDQo+PiBKdXN0IHJlYWxpemVkIHdl
IG1pc3NlZCB0aGUgMm5kIHN3aXRjaCh3ZSdyZSB3b3JraW5nIG9uIHNldHRpbmcgdGhhdCB1cCBu
b3cpDQo+IEkgZ290IG15IDJuZCBzd2l0Y2ggY29uZmlndXJlZCB3aXRoIDM2IHZsYW5zIG9uIHRo
ZSBib25kLCBJIHN0aWxsIGNhbid0IHJlcHJvZHVjZSB0aGUgaXNzdWUuDQo+IA0KPiBJJ20gaW4g
YSB0ZXN0IGVudmlyb25tZW50IHNvIEkgZG9uJ3QgaGF2ZSBtdWNoIG9mIGEgIm5ldHdvcmsiIGJl
dHdlZW4gdGhlIHR3byBzd2l0Y2hlcy4gIEkgd2FzIHdvbmRlcmluZyBob3cgeW91ciBzd2l0Y2hl
cyB3ZXJlIGNvbmZpZ3VyZWQgYW5kIGlmIHRoZXJlIHdhcyBhbnl0aGluZyBlbHNlIGdvaW5nIG9u
IHdpdGggIHRoZSBuZXR3b3JrKHBlb3BsZSBzdHJlYW1pbmcsIGJhY2t1cHMgb2NjdXJyaW5nLCBl
dGMpLg0KPiANCj4+DQo+Pj4gSG93IGNhbiBJIGFzc2lzdCBmdXJ0aGVyPw0KPj4gQ2FuIHlvdSBl
bmFibGUgc291cmNlIHBydW5pbmcgb24gdGhlIHBvcnRzIHRoYXQgYXJlIHBhcnQgb2YgeW91ciBi
b25kPyAgVGhlcmUNCj4+IG1pZ2h0IGJlIHNvbWUgY29uZnVzaW9uIGluIHRoZSBmdy9zdyB3aXRo
IHRoZSB0d28gaW50ZXJmYWNlcyBhbmQgcGFja2V0cw0KPj4gYXJlIGdldHRpbmcgaWdub3JlZDoN
Cj4+IGV0aHRvb2wgLS1zZXQtcHJpdi1mbGFncyA8aW50ZXJmYWNlIG5hbWU+IGRpc2FibGUtc291
cmNlLXBydW5pbmcgb24NCj4+DQo+IEkgd2FzIHJlYWRpbmcgb3ZlciB0aGlzIGFuZCByZWFsaXpl
ZCBJIGNvbnRyYWRpY3RlZCBteXNlbGYgYWJvdmUuICBJIHdvdWxkIGxpa2UgdG8gc2VlIGlmIGRp
c2FibGluZyBzb3VyY2UgcHJ1bmluZyB3b3VsZCBoZWxwLg0KPiANCj4gSSBob3BlIHlvdSdyZSBo
YXZpbmcgYSBnb29kIHdlZWshDQo+IERhdmUNCj4gDQo+PiBMZXQgbWUga25vdyBpZiB0aGF0IGhl
bHBzLiAgSXQgc291bmRzIGxpa2Ugd2UnbGwgYmUgZ2V0dGluZyBvdXIgdHdvIHN3aXRjaGVzDQo+
PiBsYXRlciB0b2RheSBzbyB3ZSBjYW4gbWFrZSBzdXJlIHdlIGhhdmUgb3VyIGVudmlyb25tZW50
IG1hdGNoaW5nIHlvdXJzLg0KPj4NCj4+IEhhdmUgYSBncmVhdCBkYXkhDQo+PiBEYXZlDQo+Pg0K
Pj4NCj4+Pg0KPj4+IFJlZ2FyZHMNCj4+PiAgIFN2ZW4NCj4+Pg0KPj4+IEFtIDExLjA2LjIyIHVt
IDAzOjI3IHNjaHJpZWIgU3dpdHplciwgRGF2aWQ6DQo+Pj4+PiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KPj4+Pj4gRnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRlbC13aXJlZC1sYW4tYm91
bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4+Pj4+IE9mIFN2ZW4gQW5kZXJzDQo+Pj4+PiBT
ZW50OiBNb25kYXksIEp1bmUgNiwgMjAyMiAxMTowNSBQTQ0KPj4+Pj4gVG86IGludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnDQo+Pj4+PiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gQm9u
ZGluZyBwcm9ibGVtIG9uIEludGVsIFg3MTANCj4+Pj4+IGhhcmR3YXJlDQo+Pj4+Pg0KPj4+Pj4g
SGVsbG8hDQo+Pj4+IEhpIFN2ZW4hICBNeSBhcG9sb2dpZXMgb24gdGFraW5nIHNvIGxvbmcgdG8g
cmVwbHkuDQo+Pj4+Pg0KPj4+Pj4gV2FzIGFueWJvZHkgYWJsZSB0byByZXByb2R1Y2UgdGhlIHBy
b2JsZW0/DQo+Pj4+IEkgaGF2ZW4ndCBiZWVuIGFibGUgdG8gcmVwcm9kdWNlIHlvdXIgaXNzdWUg
eWV0LCBidXQgd2l0aCB5b3VyDQo+Pj4+IGRlc2NyaXB0aW9uIGl0IHNvdW5kcyB0aGF0IHRoZSBp
c3N1ZSBjb3VsZCBiZSByZWxhdGVkIHRvIHRoZSBYNzEwDQo+Pj4+IGhhcmR3YXJlIExMRFAgZW5n
aW5lIGNvbnN1bWluZyB0aGUgTExEUCBwYWNrZXRzLiAgVG8gZGlzYWJsZSB0aGUNCj4+PiBoYXJk
d2FyZSBlbmdpbmUsIHVzZXIgdGhlIGZvbGxvd2luZyBjb21tYW5kIG9uIGVhY2ggb2YgdGhlIHBv
cnRzIHRoYXQNCj4+PiB5b3UncmUgdXNpbmcgaW4gdGhlIGJvbmQ6DQo+Pj4+DQo+Pj4+IGV0aHRv
b2wgLS1zZXQtcHJpdi1mbGFncyA8aW50ZXJmYWNlIG5hbWU+IGRpc2FibGUtZnctbGxkcCBvbg0K
Pj4+Pg0KPj4+PiBUaGVuIHRoZSBMTERQIHBhY2tldHMgdGhhdCB0aGUgYm9uZGluZyBtb2R1bGVz
IHJlbGllcyBvbiB3aWxsIGJlDQo+Pj4+IGZvcndhcmRlZA0KPj4+IGJ5IHRoZSBoYXJkd2FyZSB0
byB0aGUgT1MgbmV0d29yayBzdGFjay4NCj4+Pj4NCj4+Pj4gSSBob3BlIHlvdSBoYXZlIGEgZ3Jl
YXQgd2Vla2VuZCENCj4+Pj4gRGF2ZQ0KPj4+Pg0KPj4+Pj4gRG8geW91IG5lZWQgYXNzaXN0YW5j
ZSBvciBmdXJ0aGVyIGluZm9ybWF0aW9uPw0KPj4+Pj4NCj4+Pj4+IFJlZ2FyZHMNCj4+Pj4+ICAg
IFN2ZW4NCj4+Pj4+DQo+Pj4+PiBBbSAzMC4wNS4yMiB1bSAxNzo1MyBzY2hyaWViIFN2ZW4gQW5k
ZXJzOg0KPj4+Pj4+Pj4+IEhlbGxvIQ0KPj4+Pj4+Pj4+DQo+Pj4+Pj4+Pj4gVGhpcyBpcyBhIGZv
bGxvdyB1cCB0byBteSBxdWVzdGlvbi4gSSBkaWQgbm90IGhlYXIgYW55dGhpbmcgc28NCj4+Pj4+
Pj4+PiBmYXIsIGJ1dCBJIHRyaWVkIHRvIGZpbmQgc29tZSBzb21lIGluZm9ybWF0aW9uIG1lYW53
aGlsZS4NCj4+Pj4+Pj4+Pg0KPj4+Pj4+Pj4+IEkndmUgZ290IGEgZ3Vlc3MgZnJvbSBzb21lYm9k
eSwgdGhhdCB0aGUgZXJyb3IgbWVzc2FnZSAiRXJyb3INCj4+Pj4+Pj4+PiBJNDBFX0FRX1JDX0VJ
TlZBTCBhZGRpbmcgUlggZmlsdGVycyBvbiBQRiwgcHJvbWlzY3VvdXMgbW9kZQ0KPj4+Pj4+Pj4+
IGZvcmNlZCBvbiIgbWF5YmUgdHJpZ2dlcmVkLCBiZWNhdXNlIEknbSBoaXR0aW5nIGEgbGltaXQg
aGVyZS4NCj4+Pj4+Pj4NCj4+Pj4+Pj4gWWVzLCB0eXBpY2FsbHkgdGhpcyBpcyBhIHJlc3BvbnNl
IGZyb20gb3VyIGZpcm13YXJlIHRoYXQgYSB0YWJsZQ0KPj4+Pj4+PiBpcyBmdWxsIGluIGhhcmR3
YXJlLCBhbmQgSSdtIGd1ZXNzaW5nIHRoYXQgeW91IG1pZ2h0IGJlIHJ1bm5pbmcNCj4+Pj4+Pj4g
aW50byBhIGZpbHRlcg0KPj4+Pj4gbGltaXQgZHVlIHRvIHVzaW5nIHZsYW5zPw0KPj4+Pj4+DQo+
Pj4+Pj4gVGhhdCdzIHdoYXQgSSBzdXNwZWN0LCBidXQgSSBkaWQga25vdyB0aGUgaGFyZHdhcmUg
YW5kIGZpcm13YXJlDQo+Pj4+Pj4gaW5zdWZmaWNpZW50bHkgdG8gYmUgc3VyZS4NCj4+Pj4+PiBX
aGF0IEknbSB3b25kZXJpbmcgaXM6IFdoeSB0aGlzIGlzIG9ubHkgdHJpZ2dlcmVkIGlmIEkgdG9n
Z2xlIHRoZQ0KPj4+Pj4+ICJudHVwbGVzDQo+Pj4+PiBzdXBwb3J0Ig0KPj4+Pj4+IGFuZCBub3Qg
ZWFybGllciB3aGVuIHNldHRpbmcgdXAgdGhlIGludGVyZmFjZT8NCj4+Pj4+Pg0KPj4+Pj4+Pj4+
IERhdGEgcGFja2V0cyBhcmUgb25seSByZWNlaXZlZCBzcG9yYWRpY2FsbHkuIElmIEkgcnVuIHRo
ZSBzYW1lDQo+Pj4+Pj4+Pj4gdGVzdCB3aXRoIG9ubHkgb25lIHNsYXZlIHBvcnQsIGl0IHdvcmtz
IHdpdGhvdXQgcHJvYmxlbXMuDQo+Pj4+Pj4+DQo+Pj4+Pj4+IEFuZCB0aGVyZSBhcmUgbm8gY291
bnRlcnMgZ29pbmcgdXAgaW4gZXRodG9vbCAtUyB3aGVuIHlvdQ0KPj4+Pj4+PiByZWNlaXZlL2Ry
b3ANCj4+Pj4+IHBhY2tldHM/DQo+Pj4+Pj4NCj4+Pj4+PiBJJ20gbm90IHN1cmUgaGVyZS4gSSB0
cmllZCB0byBpbnNwZWN0IHRoZSBjb3VudGVycyBhbmQgaXQgc2VlbXMNCj4+Pj4+PiB0aGF0IHRo
ZSBjb3VudGVycyBhcmUgZ29pbmcgdXAgc2xvd2VyIGluIHRoaXMgY2FzZSwgYnV0IGl0J3MNCj4+
Pj4+PiBkaWZmaWN1bHQgdG8gc2F5LCBiZWNhdXNlIHRoZXJlIGlzIHNvbWUgIm5vaXNlIiBvbiB0
aGUgbGluZSBhbmQgSQ0KPj4+Pj4+IGRvIG5vdCBoYXZlIGRpcmVjdCBhY2Nlc3MgdG8gdGhlIGhh
cmR3YXJlIGF0IHRoZSBtb21lbnQuDQo+Pj4+Pj4NCj4+Pj4+PiBJZiB5b3UgbmVlZCBhbnkgZnVy
dGhlciBpbmZvcm1hdGlvbiBvciB0ZXN0cywganVzdCBjb250YWN0IG1lLg0KPj4+Pj4NCj4+Pj4+
IFJlZ2FyZHMNCj4+Pj4+ICAgIMKgIFN2ZW4gQW5kZXJzDQo+Pj4+PiAtLQ0KPj4+Pj4gICAgU3Zl
biBBbmRlcnMgICAgICAgICAgICAgICAgICAoKSBVVEYtOCBSaWJib24gQ2FtcGFpZ24NCj4+Pj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC9cIFN1
cHBvcnQgcGxhaW4gdGV4dCBlLW1haWwNCj4+Pj4+ICAgIEFORFVSQVMgaW50cmFuZXQgc2VjdXJp
dHkgQUcNCj4+Pj4+ICAgIE1lc3Nlc3RyYXNzZSAzIC0gOTQwMzYgUGFzc2F1IC0gR2VybWFueQ0K
Pj4+Pj4gICAgV2ViOiB3d3cuYW5kdXJhcy5kZSAtIFRlbDogKzQ5ICgwKTg1MS00IDkwIDUwLTAg
LSBGYXg6ICs0OQ0KPj4+Pj4gKDApODUxLTQNCj4+Pj4+IDkwIDUwLTU1DQo+Pj4+Pg0KPj4+Pj4g
VGhvc2Ugd2hvIHdvdWxkIGdpdmUgdXAgZXNzZW50aWFsIExpYmVydHksIHRvIHB1cmNoYXNlIGEg
bGl0dGxlDQo+Pj4+PiB0ZW1wb3JhcnkgU2FmZXR5LCBkZXNlcnZlIG5laXRoZXIgTGliZXJ0eSBu
b3IgU2FmZXR5Lg0KPj4+Pj4gICAgIC0gQmVuamFtaW4gRnJhbmtsaW4NCj4+Pj4+DQo+Pj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4+Pj4gSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdA0KPj4+Pj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcNCj4+Pj4+IGh0dHBzOi8vZXUtY2VudHJhbC0NCj4+PiAxLnByb3RlY3Rpb24uc29waG9zLmNv
bT9kPW9zdW9zbC5vcmcmdT1hSFIwY0hNNkx5OQ0KPj4+Pj4NCj4+PiBzYVhOMGN5NXZjM1Z2YzJ3
dWIzSm5MMjFoYVd4dFlXNHZiR2x6ZEdsdVptOHZhVzUwWld3dGQybHlaV1F0DQo+PiBiDQo+Pj4g
R0Z1Jmk9Tg0KPj4+Pj4NCj4+PiBXUmtaVGM1TWpRek1qTTJZekV4TmpnMFpUSTRNak00JnQ9V0ha
VVRVZGpOVmt5U1RWVmNXVmpVRXBWDQo+PiBUDQo+Pj4gR2xrYVhWM05reA0KPj4+Pj4NCj4+PiBW
UW0xTFNHZFVPWE14ZVZWRVExcHlPRDA9Jmg9NGVkNWNhNDNiMTQxNDdlYjhhZTQ4OTFjZjJhNTRm
NzANCj4+Pg0KPj4+DQo+Pj4gTWl0IGZyZXVuZGxpY2hlbiBHcsO8w59lbg0KPj4+ICAgU3ZlbiBB
bmRlcnMNCj4+Pg0KPj4+IC0tDQo+Pj4gICBTdmVuIEFuZGVycyA8YW5kZXJzQGFuZHVyYXMuZGU+
ICAgICAgICAgICAgICAgICAoKSBVVEYtOCBSaWJib24gQ2FtcGFpZ24NCj4+PiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC9cIFN1cHBvcnQgcGxhaW4g
dGV4dA0KPj4+IGUtbWFpbA0KPj4+ICAgQU5EVVJBUyBpbnRyYW5ldCBzZWN1cml0eSBBRw0KPj4+
ICAgTWVzc2VzdHJhw59lIDMgLSA5NDAzNiBQYXNzYXUgLSBHZXJtYW55DQo+Pj4gICBXZWI6IHd3
dy5hbmR1cmFzLmRlIC0gVGVsOiArNDkgKDApODUxLTQgOTAgNTAtMA0KPj4+DQo+Pj4gUmVjaHRz
Zm9ybTogQWt0aWVuZ2VzZWxsc2NoYWZ0IC0gU2l0ejogUGFzc2F1IC0gQW10c2dlcmljaHQ6IFBh
c3NhdSBIUkINCj4+PiA2MDMyDQo+Pj4gVm9yc3RhbmQ6IE1hcmN1cyBKdW5rZXINCj4+PiBWb3Jz
aXR6ZW5kZXIgZGVzIEF1ZnNpY2h0c3JhdHM6IEFuZHJlYXMgV2FnbmVyDQoNCg0KTWl0IGZyZXVu
ZGxpY2hlbiBHcsO8w59lbg0KICBTdmVuIEFuZGVycw0KDQotLSANCiAgU3ZlbiBBbmRlcnMgPGFu
ZGVyc0BhbmR1cmFzLmRlPiAgICAgICAgICAgICAgICAgKCkgVVRGLTggUmliYm9uIENhbXBhaWdu
DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC9cIFN1
cHBvcnQgcGxhaW4gdGV4dCBlLW1haWwNCiAgQU5EVVJBUyBpbnRyYW5ldCBzZWN1cml0eSBBRw0K
ICBNZXNzZXN0cmHDn2UgMyAtIDk0MDM2IFBhc3NhdSAtIEdlcm1hbnkNCiAgV2ViOiB3d3cuYW5k
dXJhcy5kZSAtIFRlbDogKzQ5ICgwKTg1MS00IDkwIDUwLTANCg0KUmVjaHRzZm9ybTogQWt0aWVu
Z2VzZWxsc2NoYWZ0IC0gU2l0ejogUGFzc2F1IC0gQW10c2dlcmljaHQ6IFBhc3NhdSBIUkIgNjAz
Mg0KVm9yc3RhbmQ6IE1hcmN1cyBKdW5rZXINClZvcnNpdHplbmRlciBkZXMgQXVmc2ljaHRzcmF0
czogQW5kcmVhcyBXYWduZXINCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
