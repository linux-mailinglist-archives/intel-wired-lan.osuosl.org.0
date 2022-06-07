Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D913053FF9F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jun 2022 15:01:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E7994248D;
	Tue,  7 Jun 2022 13:01:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ppk_UAou6-Lk; Tue,  7 Jun 2022 13:01:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADBC242491;
	Tue,  7 Jun 2022 13:01:26 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 779DE1BF2EF
 for <intel-wired-lan@osuosl.org>; Tue,  7 Jun 2022 06:13:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 72F8D408BE
 for <intel-wired-lan@osuosl.org>; Tue,  7 Jun 2022 06:13:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tDsPjxCLPvr7 for <intel-wired-lan@osuosl.org>;
 Tue,  7 Jun 2022 06:13:45 +0000 (UTC)
X-Greylist: delayed 00:09:01 by SQLgrey-1.8.0
Received: from wx-euc1.prod.hydra.sophos.com (wx-euc1.prod.hydra.sophos.com
 [94.140.18.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A8354086E
 for <intel-wired-lan@osuosl.org>; Tue,  7 Jun 2022 06:13:44 +0000 (UTC)
Received: from wd-euc1.prod.hydra.sophos.com
 (ip-172-20-0-41.eu-central-1.compute.internal [172.20.0.41])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by wx-euc1.prod.hydra.sophos.com (Postfix) with ESMTPS id 4LHKZR3hX8z8hh
 for <intel-wired-lan@osuosl.org>; Tue,  7 Jun 2022 06:04:47 +0000 (UTC)
Received: from ip-172-20-0-132.eu-central-1.compute.internal
 (ip-172-20-0-132.eu-central-1.compute.internal [127.0.0.1])
 by wd-euc1.prod.hydra.sophos.com (Postfix) with ESMTP id 4LHKZK37sMzlVjT
 for <intel-wired-lan@osuosl.org>; Tue,  7 Jun 2022 06:04:41 +0000 (UTC)
X-Sophos-Product-Type: Gateway
X-Sophos-Email-ID: 9d496d6cfff04cc5831b9fb506b04834
Received: from DEU01-FR2-obe.outbound.protection.outlook.com
 (mail-fr2deu01lp2171.outbound.protection.outlook.com [104.47.11.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay-eu-central-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4LHKZG3l67zgY8G
 for <intel-wired-lan@osuosl.org>; Tue,  7 Jun 2022 06:04:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WSRqYJHGIfKzg/UAyhNRElWftLWTSSPioi4JuzizT58Z7/wy/hCuHsR7I/57VM4U+pkngBFsl9PQ+4vVHokyAzLhdbksXhtBBH3zDAgKAFdzPTlfia6SYi13U4F4s/+PFrP6sv5Xofz+eCEcUAfJtVzhHvXeCLWZ4a9QOoooCL+ytgjxzrc/iCxYEydnY9fSWvYkrG5JUXDABYyGVJKDj4sIlKawUlj98dAHv7PrnIj1ZDdKYmr5F+EHyarpJh7qEijlpBjUJGLvCBSQIGhnvNvWKzDoIePtQIg+iYxoX5zCkl8ZSKUoar6iXM7tABoXK3mvJ34PrkFQDnCzFXf4Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/GlhxCcQ6SQJskJreAvQMEWd6RTxt5RyGIDfLn/QWcY=;
 b=RO9ln8d5Hk0sB50QN+vi4Yy3HJUb5UL2Evo/D1+f29qEoRRePRhsUVJ1mZy6RtriQwOEVpvsdpC/vChjQ2TN6jQLue5VBVKIUSkK+vbnZk2TEMI0ISIcj0cHDp4IF90dtKs5PIaGDejI0Lx+IefDGSQRmPJ7Oi0oz4748qny52CMKdW1d6Z6wPGrA9gb7uBsM6rBg/ZBDQGdY19AwEz4J//C59XatYt4DTpmhC7ggA86KonT14hQBNY3oEPvYweiscn7KkSQRkjnIXM3NdVpT6nVATukk8/c+h/AsF6Zxcdjzv3MKznuoCylBTNaQ18RU6GNfsS42Oe26MeK7I6riw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=anduras.de; dmarc=pass action=none header.from=anduras.de;
 dkim=pass header.d=anduras.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ANDURASAG.onmicrosoft.com; s=selector1-ANDURASAG-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/GlhxCcQ6SQJskJreAvQMEWd6RTxt5RyGIDfLn/QWcY=;
 b=S5+XPUHy3CRZysQjKrIrxU5ZCHdIgkQQnJLSOKoGlgY3MO8OTZXJtjVZEsIMI0IF21N1xcovYxv6TFFvDVpExIsGyHNq3GbQy/6dD/xyTy1mFbVy66zdj9fw0HDMAbUjMgTbR953B5Bg77IRAGMzfp7mB5Wz/bD88qPpBryERjQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1654581875; 
 s=sophosf9aa68d74dee45c58aac945adde58f79; d=anduras.de;
 h=Content-Type:To:From:Subject:Date;
 bh=/GlhxCcQ6SQJskJreAvQMEWd6RTxt5RyGIDfLn/QWcY=;
 b=M2cIoBOkhq4GWCF72DuOaEEyxkhyoxT8DNhZan9GXNGUZp9mH9K5Bmc26Rl7Klhx
 4PeJ2eQ+9DMUJ4/e5QmdNiyO0KptNd+Zhtgo5jSdHHz+fi8qf9e3aQzRZ8vKgxQGwrV
 DA3UWLLkFdS2Cey1r5l8+YnYEs7rDSrIGi/6pRcvse7PQgOEMWP653AumjZJ58h/8O5
 PaNcEjc9WhIcK1qkBtSDoh/qT7Jzz3n9JV9NseCIL5pjAYmKAC68GV7j31D1wLSqxt2
 z8wpWyJn8jqRNzwIeMt3jaLpFlecrg9rubeEbqs1txXRf088CGOkV45w620pNaZIBbY
 ++0GIwWJKQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1654581875; 
 s=v1; d=mail-dkim-eu-central-1.prod.hydra.sophos.com;
 h=Content-Type:To:From:Subject:Date;
 bh=/GlhxCcQ6SQJskJreAvQMEWd6RTxt5RyGIDfLn/QWcY=;
 b=nKYQ7yk0/pZ8d21/LpToDRuaDitrmIpQ+pQY1OyOO2HAFWTb2fjZn7pgHVWWlAXG
 CPKSRKl2g2/XcOE8XfnB3TGUNEU7nSclqH1mkhgLMX9xkmhfdeZG5D5uxz1v0p7TgQ0
 NIXMvUZs/jYuz5znykxogQe3uW+Z8GEn1/BlF02e+OdS4ZjvJd7K91s8jgYh3haJZCw
 dIQo8zl1qfvFD0/SXoQbc+gUS0BubvxSyq3ZFFyOHf/rvC6whin/kmaSx+qgp95K6al
 9ZxehIwE5doCyFzYgZGHvVvSABbldgoqfiytazlNmsABQcTHAa0VzYVir1HG4g3Qou8
 j0UmvYwslg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=anduras.de;
Received: from FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:2e::5) by
 FRYP281MB0703.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:70::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.4; Tue, 7 Jun 2022 06:04:36 +0000
Received: from FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
 ([fe80::2071:8fd3:6071:b25e]) by FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
 ([fe80::2071:8fd3:6071:b25e%7]) with mapi id 15.20.5332.010; Tue, 7 Jun 2022
 06:04:36 +0000
Message-ID: <eb729924-7c59-23fa-4847-bff376a98d2a@anduras.de>
Date: Tue, 7 Jun 2022 08:04:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: de-DE
From: Sven Anders <sven.anders@anduras.de>
To: intel-wired-lan@osuosl.org
References: <a94b23d2-57a8-954f-9fae-246cf900be92@intel.com>
 <8d7813a5-c344-6225-dc1a-89a92e5cddb9@anduras.de>
Organization: ANDURAS AG
In-Reply-To: <8d7813a5-c344-6225-dc1a-89a92e5cddb9@anduras.de>
X-ClientProxiedBy: AM0PR01CA0104.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:10e::45) To FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:2e::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2042a1bd-63cf-466d-09fb-08da484b99e6
X-MS-TrafficTypeDiagnostic: FRYP281MB0703:EE_
X-Microsoft-Antispam-PRVS: <FRYP281MB0703083CCD88A2E47F635EC284A59@FRYP281MB0703.DEUP281.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VeBy3T5W3/f5K0DKbriE8qaIagB3J4Cmah034EG3sJeOuuGM9A1V/ORnTbygT0w0MnlVfyOZIKw3X3GyKdWHEr3uRtj32SN4CcFyznwO+DKPjxfXSWi5D2jTqrA0prW9DTzGp88c/uJVryF4rBLHGQoRUGOEqYU40B5rnGfRBXlcwmAXd7X4bdRb2vHG4OOfL1mbXqvbOVEaqzX8R5+9RkazeP3Y1rN9tIglfQYgO4E3MZ2xzsyYAcEa40i964rCtqoRP6A4k1F4neiltZRixkzNOBA0XzDNcvi8Lc2SwuNPJzND8S03nF/TYtdM2U825k2HUDfYnUiWs1pOsMBj7M5qEx/1Qvta7GoOadCKx3fZZwNS5ed1Gcq84GZEP/gLIwxrnkpzRcP6AMzUEUULx+/0FtpL3CyI1dmPP9kD/xnz7Ugs+vq/ogSzeKBtrvvkBJo9NWsOh7lOoV4hxoyfQYc4hz7iUy/o82YTPrXU0jO+xrissxrz9ekSwwg6ZsZ+XMeGm6o0oqfbgaLYFt5M0oFAldskPpPeG1TAKvZvr91WqY/1WNX02lYYhZZCuFq1kPhfHr3t5Pp+5By2gI+GL53dlgcOr6k33JN6eDC1xlyBC4WLs8/ZIgJr7l3WcC2w6LHsABrYn5SpOKTNwIiMmfWzWO3/3NokXDJOaEfgLlE4jZ9pkem5KmOj1+pbw/Vt/foKpnZmqQWFfNLk01EXcDXig3jDyAHRHC7mgxgrXn24uPyQARRohBM44oASHZzCt8f83yEVRz/3LUcIiwaPXqgUhkm4mttgjDcAlHUrN1Kd9tTqMBEL9bUZIXUYd4aQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:; 
 IPV:NLI; SFV:NSPM;
 H:FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM; PTR:; CAT:NONE; 
 SFS:(13230001)(396003)(42606007)(346002)(39830400003)(366004)(376002)(136003)(86362001)(31696002)(6506007)(26005)(44832011)(6512007)(6486002)(6916009)(36916002)(36756003)(15974865002)(31686004)(508600001)(41300700001)(38100700002)(2616005)(8676002)(66476007)(66556008)(66946007)(5660300002)(8936002)(83380400001)(316002)(2906002)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0ZweUY2bUxyREVqTXBaTzJPMlRvT21YWmROTWlZY0RGc0JRR1BLUThXVjVx?=
 =?utf-8?B?L3R3M2c3SzNjOHlUeGNSQzdNUkhRT0hJcU95RVpMUGNTU2owVjFNZzhKVXZq?=
 =?utf-8?B?bjlHUnFUY3NpejVWR1loYm9vS0FyWHQ0dkp5UUlacFd5ckY4ZHRNaUFKSWNn?=
 =?utf-8?B?ZkNDeTNHdTllTHZtdC9PUDRWL1ZVTWVZVGVJKzhVWXI1b0JvWFJ4czB1S3JU?=
 =?utf-8?B?Q1NOZG91czlWdzVSY1VBVVBEaDltMVJhTUVabHJBdWlIN2RZWU1vVlh5THpM?=
 =?utf-8?B?UTZRZzIyblk3VG8vWFhMK2tGd2hMYUlxVnFlTVJiVjNzSVFVUGRjRUFMUzNC?=
 =?utf-8?B?L2d5OHBjWjdCRm9nM1dwNVlaYWgyZVhMRzZ1a1BsWFdwaUo4UWxiMG1oRXdJ?=
 =?utf-8?B?K3JOUDRPeWg5OXJYSUdDKzNhRjFzWGx2MU9IcUZ6L2dId2hHS3VENXBYTFlZ?=
 =?utf-8?B?TzhZek52RW0zeUllTEIxdGRQb1FCdmF0czlxeTUzaUc5MjduSlcyOGhsVGt1?=
 =?utf-8?B?d1owVVIzNVFReE44V3UvcmdiYWtsYU10SCtmbGZCUTdDamtVNnNiT2xZUzUv?=
 =?utf-8?B?UmhseW9SZ0VGaUZjc05mU1NkUjdGTXY3LzVkcEs1Rmw5THFuazRVbXJMMGZH?=
 =?utf-8?B?bDJOZ2dzMUErc0ZweTZhbnBRVGI3WC9XTkhneU95ZnhkalQ1ZHNaSHIxTVdy?=
 =?utf-8?B?QW1KTERsZ2RkdWpTUi8vVEswUkRmb0FBRXNpcjNpWmZKUFd1bzVRbEJ0UlJW?=
 =?utf-8?B?TTRqNmd6ci95eVE3UVBpVFlnVzUvQ1VzMDllOWlpbjNkTm1jQ3lNZzFRbDFk?=
 =?utf-8?B?YTNBbFN5LzNoQStnZ0dTaUdnWkpTOForOGhPUHNQeGFuUDVhMWFBTXpzemxU?=
 =?utf-8?B?NmhjcXg1bXpmV3d2ajhSeUJCOGVROTZqZyt2bnRVZTFTRUpoeVQxT0RkSitr?=
 =?utf-8?B?Q3ZURjFOYnl6UzZLZHhvSjhlR0dvM09QeHROeCswUE5GWDJnOExjdjlKVCty?=
 =?utf-8?B?RHhoeGY3OHloQTdCMWJKME5xQkZibFZnSWVOVVpBR2hzUWpraGNUZ1Vyek9E?=
 =?utf-8?B?SnIwbGZWZCtrVk5sclJZN1lPbENtd0grZnhDc2UxWlhlN3hXd3dlZkdGOWRC?=
 =?utf-8?B?bGdqajRjb0ZjaWYrNmRsT2UxODI5ZjA5TW9kaG9BSU1pVVhUZDYyMmM2YUpH?=
 =?utf-8?B?ZHRKZ3BuZ1hNY2VzVjZtaTJvMmlWUzQvZVBtZy9IVFB3NXJ6ODdUSWljUDZh?=
 =?utf-8?B?M29oZmZaQ1d1SHE1dkFvcWQ2bzVaVjlIamNjdVF1SnlFdjhQc2x3S2x0TWhr?=
 =?utf-8?B?aFl1SGRwZmFubjFTTTdaa2UxY24rcjVVWFhLeHNBVThXM2p1N05seUw2bFpW?=
 =?utf-8?B?dnJYUjRPamcyakRTTU5YNmhnNmJsaGdpWG04VTF3QVVkQ2wwWjd5dW5vRmJn?=
 =?utf-8?B?bHFDMitJZlRlWk9OV0pWR1RTY0tpWWxtUUFEdXBmNWRuT1N0YWFsWllsYlIr?=
 =?utf-8?B?SEo4NG4xUGpqYys4c0E4Z2hyMWhXNCt4NDg1cGJOSExQdUtIZ2xQOVZaeVdS?=
 =?utf-8?B?MTVVRW96cWxVQTUvN0UxcmMzbGh6aXBoZGNVeHc4bjFYV00raU1VK2FBZE9R?=
 =?utf-8?B?Zk84ZGlrT3ZCMEFGak9kRndyN1UrSGtZUTVoYm9KYmlzWnYzUlIzWUVVd1Mx?=
 =?utf-8?B?akZPS05pTDFIUWVJV2x2eTB2UmxlWW5kdWptRnYvS0had0N0TThzeC9LT1Bp?=
 =?utf-8?B?cmtyVTlobXJKdnlDZHhlWUNwak9SYWxWd09ZL2NXNlBYL3JjMFRDcHVoanZ2?=
 =?utf-8?B?aXRNcFJleFZHMThjRHBRdUYxdVpCeUhjcS9IN1diWERBWXl3YkM5T05tdkZE?=
 =?utf-8?B?QjVwRy9YNWhkb0tIanRsa3gvdXI3MUFYNitWbUcvNmQ3elVpeUdVQ05kV0Zj?=
 =?utf-8?B?TWMrNlJ6RGhRYnpJd2VFbTNYaktqZG5YQmRQeUJXRDNIQ0d4VWZUQ09kOUNQ?=
 =?utf-8?B?Q2t4dm50czdIbVM0ODlwSkxIQ3VWb0dYb0tGVVpwR0xMZEExNUhEeEdtV3p6?=
 =?utf-8?B?SGF3ZStNazhxYVMxWkZua2IyQnptdnlSVXRPNFMrbXpwSjkvU0F6NHNodGlT?=
 =?utf-8?B?YkhTbGJ5N3NtWE94aStCeW1Zay9RTzNzalpyaWo3YlROaE4vVys5WC9UcVZJ?=
 =?utf-8?B?M1ArZWpnalcvekZZL0xkL3lxdXllK2pDZm1UTmY3QWtJZUFYV29rSDk3QUJC?=
 =?utf-8?B?di8xUXAydGVtcUNQRy91NjFCMFBUYXVYeURzbFdGclVQRWtaeVNkaU1MQzEw?=
 =?utf-8?B?Z3JLMnV1V1VCZWxNUFJJRjQvc3F5ZEN0RHJsV0lET05GMmhHWVR6Zz09?=
X-OriginatorOrg: anduras.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 2042a1bd-63cf-466d-09fb-08da484b99e6
X-MS-Exchange-CrossTenant-AuthSource: FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2022 06:04:36.9020 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 639cc95b-aa9f-42bf-b982-a592003fbab3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QqgJX9iHo8pooujWidDdxdtqe37IzOEt3s9gEN6YPxjPnnoJGKZeXiWqlgemZrbelfhaQIJ/jrkd4D7gNpeG+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FRYP281MB0703
X-Sophos-Email: [eu-central-1] Antispam-Engine: 5.0.0,
 AntispamData: 2022.6.7.53619
X-LASED-SpamProbability: 0.079439
X-LASED-Hits: BODYTEXTP_SIZE_3000_LESS 0.000000, BODY_SIZE_2000_2999 0.000000, 
 BODY_SIZE_5000_LESS 0.000000, BODY_SIZE_7000_LESS 0.000000,
 CTE_BASE64 0.000000, DKIM_SIGNATURE 0.000000, HTML_00_01 0.050000,
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
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000,
 __HEADER_ORDER_FROM 0.000000, __IN_REP_TO 0.000000, __MAIL_CHAIN 0.000000,
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
X-Sophos-MH-Mail-Info-Key: NExIS1pSM2hYOHo4aGgtMTcyLjIwLjAuMTM2
X-Mailman-Approved-At: Tue, 07 Jun 2022 13:01:22 +0000
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

SGVsbG8hDQoNCldhcyBhbnlib2R5IGFibGUgdG8gcmVwcm9kdWNlIHRoZSBwcm9ibGVtPw0KRG8g
eW91IG5lZWQgYXNzaXN0YW5jZSBvciBmdXJ0aGVyIGluZm9ybWF0aW9uPw0KDQpSZWdhcmRzDQog
IFN2ZW4NCg0KQW0gMzAuMDUuMjIgdW0gMTc6NTMgc2NocmllYiBTdmVuIEFuZGVyczoNCj4+Pj4g
SGVsbG8hDQo+Pj4+DQo+Pj4+IFRoaXMgaXMgYSBmb2xsb3cgdXAgdG8gbXkgcXVlc3Rpb24uIEkg
ZGlkIG5vdCBoZWFyIGFueXRoaW5nIHNvIGZhciwgYnV0IEkgdHJpZWQNCj4+Pj4gdG8gZmluZCBz
b21lIHNvbWUgaW5mb3JtYXRpb24gbWVhbndoaWxlLg0KPj4+Pg0KPj4+PiBJJ3ZlIGdvdCBhIGd1
ZXNzIGZyb20gc29tZWJvZHksIHRoYXQgdGhlIGVycm9yIG1lc3NhZ2UgIkVycm9yIEk0MEVfQVFf
UkNfRUlOVkFMDQo+Pj4+IGFkZGluZyBSWCBmaWx0ZXJzIG9uIFBGLCBwcm9taXNjdW91cyBtb2Rl
IGZvcmNlZCBvbiIgbWF5YmUgdHJpZ2dlcmVkLCBiZWNhdXNlDQo+Pj4+IEknbSBoaXR0aW5nIGEg
bGltaXQgaGVyZS4NCj4+DQo+PiBZZXMsIHR5cGljYWxseSB0aGlzIGlzIGEgcmVzcG9uc2UgZnJv
bSBvdXIgZmlybXdhcmUgdGhhdCBhIHRhYmxlIGlzIGZ1bGwgaW4gaGFyZHdhcmUsIGFuZCBJJ20g
Z3Vlc3NpbmcgdGhhdCB5b3UgbWlnaHQgYmUgcnVubmluZyBpbnRvIGEgZmlsdGVyIGxpbWl0IA0K
Pj4gZHVlIHRvIHVzaW5nIHZsYW5zPw0KPiANCj4gVGhhdCdzIHdoYXQgSSBzdXNwZWN0LCBidXQg
SSBkaWQga25vdyB0aGUgaGFyZHdhcmUgYW5kIGZpcm13YXJlIGluc3VmZmljaWVudGx5DQo+IHRv
IGJlIHN1cmUuDQo+IFdoYXQgSSdtIHdvbmRlcmluZyBpczogV2h5IHRoaXMgaXMgb25seSB0cmln
Z2VyZWQgaWYgSSB0b2dnbGUgdGhlICJudHVwbGVzIHN1cHBvcnQiDQo+IGFuZCBub3QgZWFybGll
ciB3aGVuIHNldHRpbmcgdXAgdGhlIGludGVyZmFjZT8NCj4gDQo+Pj4+IERhdGEgcGFja2V0cyBh
cmUgb25seSByZWNlaXZlZCBzcG9yYWRpY2FsbHkuIElmIEkgcnVuIHRoZSBzYW1lIHRlc3QNCj4+
Pj4gd2l0aCBvbmx5IG9uZSBzbGF2ZSBwb3J0LCBpdCB3b3JrcyB3aXRob3V0IHByb2JsZW1zLg0K
Pj4NCj4+IEFuZCB0aGVyZSBhcmUgbm8gY291bnRlcnMgZ29pbmcgdXAgaW4gZXRodG9vbCAtUyB3
aGVuIHlvdSByZWNlaXZlL2Ryb3AgcGFja2V0cz8NCj4gDQo+IEknbSBub3Qgc3VyZSBoZXJlLiBJ
IHRyaWVkIHRvIGluc3BlY3QgdGhlIGNvdW50ZXJzIGFuZCBpdCBzZWVtcyB0aGF0IHRoZSBjb3Vu
dGVycw0KPiBhcmUgZ29pbmcgdXAgc2xvd2VyIGluIHRoaXMgY2FzZSwgYnV0IGl0J3MgZGlmZmlj
dWx0IHRvIHNheSwgYmVjYXVzZSB0aGVyZSBpcw0KPiBzb21lICJub2lzZSIgb24gdGhlIGxpbmUg
YW5kIEkgZG8gbm90IGhhdmUgZGlyZWN0IGFjY2VzcyB0byB0aGUgaGFyZHdhcmUgYXQgdGhlDQo+
IG1vbWVudC4NCj4gDQo+IElmIHlvdSBuZWVkIGFueSBmdXJ0aGVyIGluZm9ybWF0aW9uIG9yIHRl
c3RzLCBqdXN0IGNvbnRhY3QgbWUuDQoNClJlZ2FyZHMNCiAgwqAgU3ZlbiBBbmRlcnMNCi0tIA0K
ICBTdmVuIEFuZGVycyAgICAgICAgICAgICAgICAgICgpIFVURi04IFJpYmJvbiBDYW1wYWlnbg0K
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvXCBTdXBw
b3J0IHBsYWluIHRleHQgZS1tYWlsDQogIEFORFVSQVMgaW50cmFuZXQgc2VjdXJpdHkgQUcNCiAg
TWVzc2VzdHJhc3NlIDMgLSA5NDAzNiBQYXNzYXUgLSBHZXJtYW55DQogIFdlYjogd3d3LmFuZHVy
YXMuZGUgLSBUZWw6ICs0OSAoMCk4NTEtNCA5MCA1MC0wIC0gRmF4OiArNDkgKDApODUxLTQgOTAg
NTAtNTUNCg0KVGhvc2Ugd2hvIHdvdWxkIGdpdmUgdXAgZXNzZW50aWFsIExpYmVydHksIHRvIHB1
cmNoYXNlIGEgbGl0dGxlDQp0ZW1wb3JhcnkgU2FmZXR5LCBkZXNlcnZlIG5laXRoZXIgTGliZXJ0
eSBub3IgU2FmZXR5Lg0KICAgLSBCZW5qYW1pbiBGcmFua2xpbg0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
