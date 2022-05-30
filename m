Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B399D539179
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 15:09:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40F7941C40;
	Tue, 31 May 2022 13:09:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f7P82INvXExU; Tue, 31 May 2022 13:09:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C48AF416F2;
	Tue, 31 May 2022 13:09:16 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 577731BF593
 for <intel-wired-lan@osuosl.org>; Mon, 30 May 2022 16:03:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 52A0C41615
 for <intel-wired-lan@osuosl.org>; Mon, 30 May 2022 16:03:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Sf9H9bilpma for <intel-wired-lan@osuosl.org>;
 Mon, 30 May 2022 16:03:17 +0000 (UTC)
X-Greylist: delayed 00:09:22 by SQLgrey-1.8.0
Received: from mail51.euc1.prod.hydra.sophos.com
 (mail51.euc1.prod.hydra.sophos.com [35.159.27.143])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 61F554157E
 for <intel-wired-lan@osuosl.org>; Mon, 30 May 2022 16:03:17 +0000 (UTC)
Received: from mail.delivery-4-eu-central-1.prod.hydra.sophos.com
 (ip-172-20-0-92.eu-central-1.compute.internal [172.20.0.92])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by mail51.euc1.prod.hydra.sophos.com (Postfix) with ESMTPS id 4LBg1y1L4mzZp
 for <intel-wired-lan@osuosl.org>; Mon, 30 May 2022 15:53:58 +0000 (UTC)
Received: from ip-172-20-1-168.eu-central-1.compute.internal
 (ip-172-20-1-168.eu-central-1.compute.internal [127.0.0.1])
 by mail.delivery-4-eu-central-1.prod.hydra.sophos.com (Postfix) with ESMTP id
 4LBg1q6sCQzYcnF
 for <intel-wired-lan@osuosl.org>; Mon, 30 May 2022 15:53:51 +0000 (UTC)
X-Sophos-Product-Type: Gateway
X-Sophos-Email-ID: f2e9f01a41eb44e6b83fdf033ec58247
Received: from DEU01-FR2-obe.outbound.protection.outlook.com
 (mail-fr2deu01lp2171.outbound.protection.outlook.com [104.47.11.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay-eu-central-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4LBg1n0CRtzCqjK
 for <intel-wired-lan@osuosl.org>; Mon, 30 May 2022 15:53:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=figpYr1S8cBtHTGnIwx/5dSYSpNrYSiKwkbQHWUf/EOm/WPCZBpml8po1UKored56j7Eja1q3kNVLsYP//kxiJ6PkYvXopWpjDGzS+GPasmmWG1A0PzhFPNbeM1OqzIYW2MnaF9uFsJllN7xB2xqPpUjrE1xaSdbDr9tJ8AP0Q60Qru7b0YrhgcEMzP2h60vp8JAW49Thy5nKqrvWQKVT6ELYA8M8slM9QrVX8rxZHFG9/mTg0uQJs6/cwRXKwDikDuXf6Ynb5WFKtIzBtb6Y6xGKVejkHjKqMHZGRHgblLkYKMsImgweBcXWXaTO+iuuxpnC6imuIQbSiHGknerbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XpqLHsnUbP0OwSeSUYDUJ/NAf1ozELi6+zsLepFPjTI=;
 b=ncxib7C4CMzsNIOBO75NsiMzy1pbNFRbi0GOVt6YRykiqyyAjzGtlQdQrUw6V26skArEJBPHu80TUc4t5bvt3eTdO/HFW888vll1aUgENcKsIWQxrq9rAssaLtVQefL8ZSPmowQfrs98rr5gsqvrS5S9vpumakXnGluE9u5bNpWFSbPNp19niAyygzL8XSSc6nrQWont61fS4tc15PDePP6BprAWvVSPzm95Ng1Ll3iujkyQodoN2O+ze3uT+13eWFR/6nsgu6t9syCwq0pStCDKcBNJJlmZTmTxbNgdLjZJF17QIlY7Tld/AXtkBagdvbpH+sV+V1+eXe3kGn77Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=anduras.de; dmarc=pass action=none header.from=anduras.de;
 dkim=pass header.d=anduras.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ANDURASAG.onmicrosoft.com; s=selector1-ANDURASAG-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XpqLHsnUbP0OwSeSUYDUJ/NAf1ozELi6+zsLepFPjTI=;
 b=GmX3Be93mGzYRnLWX13+RYy5B5ZS7ifMNz4UCywoLPtIvNj8owjwV+woU3EO6kzY30q+jcyI+mjwV/FcjmrdTkCcuRRFO/Gk19AMi5IL1gnRvqMteSfY+k7M9q802FwROfUxFraEjIwQfiBJKxBknyLJsv0c6y0Qi2pgomkGD1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1653926025; 
 s=sophosf9aa68d74dee45c58aac945adde58f79; d=anduras.de;
 h=Content-Type:To:Subject:From:Date;
 bh=XpqLHsnUbP0OwSeSUYDUJ/NAf1ozELi6+zsLepFPjTI=;
 b=ou/LtmXE9vOvE8g0Lami65D0AbXkGb/esaiRKLdNeekRdCLYUJ0J2h3neL/f08No
 ktSop+0qslM5JBsWy1gXROQHP7s8OH/e3TRJ5uIGmWXrO6xnh7X/SZ1FPcZ3DbVKkHe
 MDF31q7QKoO/uwpq7LzBDcGS994RWudKMg0fu3Iwad9Bn90YS8gwrXmI7AYl7yEYRM1
 Hq82j0BO+XjNs/Axv5aqFzUfuJcVEM1fy6OTBlx70HPFf+TYXel1rvVhkmTSd/lvGf5
 z57Hj2BlhwELvkdPTWg/Mbtn0oTofjN6S0V06rSSr3Ugoir/u3OZLv3udadrA5m2dmO
 eSouSBmjNA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1653926025; 
 s=v1; d=mail-dkim-eu-central-1.prod.hydra.sophos.com;
 h=Content-Type:To:Subject:From:Date;
 bh=XpqLHsnUbP0OwSeSUYDUJ/NAf1ozELi6+zsLepFPjTI=;
 b=Cc4Yg0/AfS+KjFMYJWx7Sm/SRQ3x+InxaggBi8k2O6pcDBqo8JLPBr8nqX6cX695
 IfU9uJ4ccg8XbsHU1WudPlrCZt5ViF8R0pIRfxkto6UK5iUOoZ69ZKzy6VtSC/cWo/E
 laOugZrmzTxaixhGz5GII7YhQ+EQLoYEj4B+ISWgakZBSusAEar3d2JMLKbMWMUf29W
 QMq0n6r4Khs5YHiGbWlxr8WZ+VNvMsR4QaESUPL1OAeGDaeFaBC+gfexOmF3HW5XN8+
 G28d5oV6GpU+IegQEVdwTfSYrjA2RCL20kisslK4g4i92FRdcJyKQCbBZMRBQJ6IR6G
 tzc0joszSg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=anduras.de;
Received: from FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:2e::5) by
 FR2P281MB0153.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:e::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.11; Mon, 30 May 2022 15:53:47 +0000
Received: from FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
 ([fe80::95ee:7f8c:c675:8cc]) by FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
 ([fe80::95ee:7f8c:c675:8cc%7]) with mapi id 15.20.5314.011; Mon, 30 May 2022
 15:53:47 +0000
Message-ID: <8d7813a5-c344-6225-dc1a-89a92e5cddb9@anduras.de>
Date: Mon, 30 May 2022 17:53:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
From: Sven Anders <sven.anders@anduras.de>
To: intel-wired-lan@osuosl.org
References: <a94b23d2-57a8-954f-9fae-246cf900be92@intel.com>
Content-Language: de-DE
Organization: ANDURAS AG
In-Reply-To: <a94b23d2-57a8-954f-9fae-246cf900be92@intel.com>
X-ClientProxiedBy: AM0PR02CA0082.eurprd02.prod.outlook.com
 (2603:10a6:208:154::23) To FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:2e::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d0e615b9-59c5-4a46-d69b-08da42549521
X-MS-TrafficTypeDiagnostic: FR2P281MB0153:EE_
X-Microsoft-Antispam-PRVS: <FR2P281MB015305FA0EE9F6B5A7211DE284DD9@FR2P281MB0153.DEUP281.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fhW14cxaJntuRtVmonFQsLoN2Xh2goWsHm/kJyGCTMOI0mHlI806XFiazqBFMEaNWFQCTqxFlU2xXe/2LxKZmtE3ONnxrNUu0PcGwTQhnw7nc/SmR35LvhLllsHOS1R9lOoibnduuaIoA9rE91fUqG3gtz/5EbYoXy9tPdRXSEJQqlnZR4qbB5ljvk10BI6qO5ypAVLyXT0msvAdPp5P0MD/VbxaNwMQ58oiLKNS7hVqx5KHPp15W94xFz0VNrX4lAA+pHct+eEvoUQhxxTYmN6DOnhKoBS4DMxB8qr1+wdbpQstmNPlCh2M89V7P0T39Gp1Mjf2493IP/P4/VzWyHxP2C895aUTZ3+5WiXGNexF3c7Q8ydSSA3C2tg0aLSH6kXTGfP+5Tq1hO3WvCGAvKDgdkLWiiDLQf0XswENJNx50G0s4/lHHDOiHuH+ey/JeMPFWTvZ4XfbmGeAOxixK1cLYgE/HmTicGksx/BjispGnSTfmc8MQqvqvBx/UbRoD6/4t4rFJaPdwkix55oBcCixKwBHi3Q3lLGpwJSn8RHZ46ebFbrmHTFngMJsS55R9a7/PY7BtmwkQa5Ckgkyxxvdkc8oV3xvXtL/sV7cK6Bx68QJigrBb4T+IrK/ANVOLMarBJXiC+psWOnCqb9rh1IbXe78Gh0UeStEGfSo8vXIMV/4lhsI4mLVX9DDNUGWZMLPyNSTcbCb7ZZeStNRy2wGYQaz/3J6aVkhx61a7MoJz+Dgqkxw2S5LUIVXi2GDem7sBMf+c97wH/5X0ixk59QsqeXXwHncJe6SXmocsSUOhK+2CBYdjGC/X77fNsQs
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:; 
 IPV:NLI; SFV:NSPM;
 H:FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM; PTR:; CAT:NONE; 
 SFS:(13230001)(42606007)(366004)(376002)(136003)(346002)(39830400003)(396003)(316002)(6506007)(6512007)(26005)(8676002)(2906002)(2616005)(6916009)(41300700001)(31696002)(44832011)(508600001)(6486002)(86362001)(15974865002)(36916002)(31686004)(186003)(38100700002)(83380400001)(36756003)(8936002)(66946007)(66476007)(5660300002)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWtlUmlZaFEvUWMza24rRTRWRFVXMmJtb0liSnFhdS96dnI1ekNwZWY4SWk5?=
 =?utf-8?B?bFFGTnV6cXRDV29IeXZwUTNrMEU4b0xaWCsvdHpZTDlmcUJBOUVaWDd1cTR2?=
 =?utf-8?B?dG92SW9nRFZYQ2QybHJkZUVMenpGazFrbmIxZjhYUEpBakpJaS9nMnBZQ3hW?=
 =?utf-8?B?bUlPeVZxL3B4azlBVG55K2RVMkk4SXc4T2lTMkZ3OVptWnJsWDdxcm1EUDFy?=
 =?utf-8?B?OWJEWmw5K2RxeEtidndKc3pDZWlURlJXYU1xbFBOUU9pbGhnUXI2Y2tIdWJl?=
 =?utf-8?B?Z1p2Nmh2ZWRKWGQyT2FPV2hPRGxPdzVpLzF4NkJsSE5nMERnNkxoYVRaSit4?=
 =?utf-8?B?eXlzMU9aa2RqNktSbi9JSVJOZkJMUWtoSHFUWXJIUm5DQ0pzblJqdG8wbmQ3?=
 =?utf-8?B?SURWWjAxeUN3Wk1YbDNZdEZqb1h5bDdzbytGNnAvbjl0cnRHVG1MeTFpSi91?=
 =?utf-8?B?czNNTmdycys5ZmMzcldtcFViZm93TzNuSEx3Q0trNTl2d0p0S3FndkFqNVlV?=
 =?utf-8?B?bzRhSCtRMS9jZW1hcnlCOUlpU1ZQb2V3M1gzSTZhTGxCQWU0VzQzTC9lS3Vh?=
 =?utf-8?B?Ynh1cHhyL3JtWHhGRHZGNVJSS0tMbzdEVVNCR0FFb3RiYkdSblpUWHpuU3Fh?=
 =?utf-8?B?S0Y2clRoUEsxUWV2MHhnS3VjOG13SG5sN2hEMUF0OExzTHhTZFF2bzRmUGFl?=
 =?utf-8?B?ZWZ2UWNoN2dMQTQwZ0JieWZxMkphVFZtSXgvdGZEODZZejJLZllyYnZlem1Q?=
 =?utf-8?B?ZENHNDNibXlrL2JCNnRwcGM5Mlc4U29yWFB6NDE2aFhyRkFlOTMvZi94NWwv?=
 =?utf-8?B?T1Z0b05XOW8yb1kzS0FsRGZQUHN4UmpLSFRqUjhOQnJET2twWGNxVXVVMFJv?=
 =?utf-8?B?eTJacTVFZlR4NmpQZXhkT0FYMXhuTUIrVVJkZ1FpUCt3S1VMeXV4QnNSaXlE?=
 =?utf-8?B?VFFRZDd3aWNWL01ZYTRpS1VEZTI4eGdJdG1BcDZ5dzlFNWJQRGtkc3VKMHFD?=
 =?utf-8?B?SnFnN3FXTkk4WXNpc0x2LzRxRG1SSVRpb0JGcm1DMXBTUEdQM3puK0V2RUpl?=
 =?utf-8?B?a2NGQXNQQjRRdUE0Q2Q4K1hXbE5ZTlF2SXRTYXVuNUtqdGw4anNPK3B5SjQ1?=
 =?utf-8?B?T1UyekkyTzhCTkFZZUdCaWdoZFB5aTNpS2ZoRXBJeWZOcDF1Nll4N0Q0N0N0?=
 =?utf-8?B?ei9MNWFWWG9OeWhIdDF3V1NSVGt2WlVoUVVOdHRPeXVJaWlDa3pCNWZmQ2tI?=
 =?utf-8?B?bDBKUW4vSHFkZ0R2djhaWko4aDNaYml4M3VZaUkrN1dXVWY1SEdLNnpXSGxZ?=
 =?utf-8?B?aW8xSmFvZXFJSnZYdSt5cklkeHVWdmZ0akJ4YnFFLzNCYnlIN0ViZlpjQVBY?=
 =?utf-8?B?VXhsOWxtK1dhQmdLQmtSWElIODZXMmJaYXVadUtpeEZPbFV1d1V6SlBtTE9K?=
 =?utf-8?B?bEVGb2VwZC9wSC81dmQ3MUovVkpUVWhLL1p1SmlFMWZsMWZ0cVMwSCs2dTl1?=
 =?utf-8?B?KzU2aitMSnkwZHNBVjN0Z3dXZWlLQ1pqMGRlbGRnM3ZtZ2N2dDJOUWJxN2tl?=
 =?utf-8?B?M0lSVHhicDdXdEJveis5SCtRYWFGNlp4MFZGOTZyb284aVEwaVBPMUJ6UTl1?=
 =?utf-8?B?ZE5VTGZWN3VvR1NYSk5JUisxT2s0U1F3TlpUb3lYTDloV1BkSDl6S1MvMEZS?=
 =?utf-8?B?NVRQbTdybkpQc2hCdlBJWU51YlI0YjlyODM2NGZoc2ppTTNVTnZqLzVZWXFS?=
 =?utf-8?B?LzVqcGxEZFR4eC92V0ZZdm8xaE9qakpGRzVWUXlpZzV3RHg1bkFzZUZXZHNm?=
 =?utf-8?B?NVJJTzJxYmh6OW9HeERHK2l3WlY2Q0tVN3AyNW4rNVFsbXNHZW1JbzdRTUl0?=
 =?utf-8?B?dER1RmJpeTk4UVgxUDJRSHR6ejZyWkEwZ0FrSEtsbDROS2ZoWUxCdG84UElp?=
 =?utf-8?B?M29wek1sbm5XTVRVd0FkVktzcUs0Z2ZtZFJ2bXp3M09oUC9hV2pNWkdnbGd3?=
 =?utf-8?B?UjR5M0JwUjk2Q051ZTV5ckNvTzBSZDNGWkhJczRuTGF4RkNUY2craFdaVmt6?=
 =?utf-8?B?aFJaSkRHR0NuMXQ0Z1IyWE54aGU2MmhQcXZURG1uZlg2b01ZQXpJMkFVWDdm?=
 =?utf-8?B?anRzWFhWbk9CNm8zVENlQTV3bzQyTlY3bUVrbU5MZyswRUpLWmg1NWNQTEpX?=
 =?utf-8?B?aHh4TDhrZkZkV0piMWJmTmpmbGRtMTJKSG0xWWdEMUFIckc4RzV6dmVpdHV0?=
 =?utf-8?B?YnVxY1VuWlBBc3VJN0t3OGJycm56anAxSE5NenlFWTVzaFB0S29DbVMrU3po?=
 =?utf-8?B?amlSMldIbGdDbXlhZStIZVJER1IvQThaK3BEbFVmVHdrQXRERXhkdz09?=
X-OriginatorOrg: anduras.de
X-MS-Exchange-CrossTenant-Network-Message-Id: d0e615b9-59c5-4a46-d69b-08da42549521
X-MS-Exchange-CrossTenant-AuthSource: FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2022 15:53:47.4460 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 639cc95b-aa9f-42bf-b982-a592003fbab3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k8+y85OwtFs02mJGFi1rCFPuknyo/FBC9RMLVHw5ROZc1RWmKbjVxCr20PNCcKv3apWb7a1mXpffG8YjV6mJYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR2P281MB0153
X-Sophos-Email: [eu-central-1] Antispam-Engine: 5.0.0,
 AntispamData: 2022.5.30.152119
X-LASED-SpamProbability: 0.079439
X-LASED-Hits: BODYTEXTP_SIZE_3000_LESS 0.000000, BODY_SIZE_1700_1799 0.000000, 
 BODY_SIZE_2000_LESS 0.000000, BODY_SIZE_5000_LESS 0.000000,
 BODY_SIZE_7000_LESS 0.000000, DKIM_SIGNATURE 0.000000, HTML_00_01 0.050000,
 HTML_00_10 0.050000, IN_REP_TO 0.000000, LEGITIMATE_SIGNS 0.000000,
 MSG_THREAD 0.000000, NO_FUR_HEADER 0.000000, NO_URI_HTTPS 0.000000,
 OUTBOUND 0.000000, OUTBOUND_SOPHOS 0.000000, REFERENCES 0.000000,
 SINGLE_URI_IN_BODY 0.000000, __ANY_URI 0.000000,
 __ARCAUTH_DKIM_PASSED 0.000000, __ARCAUTH_DMARC_PASSED 0.000000,
 __ARCAUTH_PASSED 0.000000, __ARC_SEAL_MICROSOFT 0.000000,
 __ARC_SIGNATURE_MICROSOFT 0.000000, __BANNER_TRUSTED_SENDER 0.000000,
 __BODY_NO_MAILTO 0.000000, __BOUNCE_CHALLENGE_SUBJ 0.000000,
 __BOUNCE_NDR_SUBJ_EXEMPT 0.000000, __BULK_NEGATE 0.000000,
 __BUSINESS_SIGNATURE 0.000000, __CT 0.000000, __CTE 0.000000,
 __CT_TEXT_PLAIN 0.000000, __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000,
 __DQ_NEG_IP 0.000000, __FORWARDED_MSG 0.000000, __FRAUD_CONTACT_NUM 0.000000, 
 __FRAUD_PARTNERSHIP 0.000000, __FUR_RDNS_SOPHOS 0.000000, __HAS_FROM 0.000000, 
 __HAS_MSGID 0.000000, __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000, __IN_REP_TO 0.000000,
 __MIME_TEXT_ONLY 0.000000, __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000,
 __MIME_VERSION 0.000000, __MOZILLA_USER_AGENT 0.000000,
 __NO_HTML_TAG_RAW 0.000000, __OUTBOUND_SOPHOS 0.000000,
 __OUTBOUND_SOPHOS_FUR 0.000000, __OUTBOUND_SOPHOS_FUR_IP 0.000000,
 __OUTBOUND_SOPHOS_FUR_RDNS 0.000000, __PHISH_SPEAR_STORAGE_LIMIT2 0.000000,
 __PHISH_SPEAR_SUBJ_ALERT 0.000000, __REFERENCES 0.000000,
 __SANE_MSGID 0.000000, __SINGLE_URI_TEXT 0.000000, __SUBJ_ALPHA_END 0.000000, 
 __SUBJ_ALPHA_NEGATE 0.000000, __SUBJ_REPLY 0.000000, __TO_MALFORMED_2 0.000000,
 __TO_NO_NAME 0.000000, __URI_IN_BODY 0.000000, __URI_NOT_IMG 0.000000,
 __URI_NO_MAILTO 0.000000, __URI_NO_PATH 0.000000, __URI_NS 0.000000,
 __URI_WITHOUT_PATH 0.000000, __USER_AGENT 0.000000,
 __X_FF_ASR_SCL_NSP 0.000000, __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-MH-Mail-Info-Key: NExCZzF5MUw0bXpacC0xNzIuMjAuMS4xMDI=
X-Mailman-Approved-At: Tue, 31 May 2022 13:08:44 +0000
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>>> Hello!
>>>
>>> This is a follow up to my question. I did not hear anything so far, but I tried
>>> to find some some information meanwhile.
>>>
>>> I've got a guess from somebody, that the error message "Error I40E_AQ_RC_EINVAL
>>> adding RX filters on PF, promiscuous mode forced on" maybe triggered, because
>>> I'm hitting a limit here.
> 
> Yes, typically this is a response from our firmware that a table is full 
> in hardware, and I'm guessing that you might be running into a filter 
> limit due to using vlans?

That's what I suspect, but I did know the hardware and firmware insufficiently
to be sure.
What I'm wondering is: Why this is only triggered if I toggle the "ntuples support"
and not earlier when setting up the interface?

>>> Data packets are only received sporadically. If I run the same test
>>> with only one slave port, it works without problems.
> 
> And there are no counters going up in ethtool -S when you receive/drop 
> packets?

I'm not sure here. I tried to inspect the counters and it seems that the counters
are going up slower in this case, but it's difficult to say, because there is
some "noise" on the line and I do not have direct access to the hardware at the
moment.


If you need any further information or tests, just contact me.

Regards
   Sven Anders

-- 
   Sven Anders                  () UTF-8 Ribbon Campaign
                                                   /\ Support plain text e-mail
   ANDURAS intranet security AG
   Messestrasse 3 - 94036 Passau - Germany
   Web: www.anduras.de - Tel: +49 (0)851-4 90 50-0 - Fax: +49 (0)851-4 90 50-55

Those who would give up essential Liberty, to purchase a little
temporary Safety, deserve neither Liberty nor Safety.
    - Benjamin Franklin
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
