Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC24586C3F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Aug 2022 15:49:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B8F882C5E;
	Mon,  1 Aug 2022 13:49:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B8F882C5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659361781;
	bh=dGG0jV6KEy5ibq+0EhKo6G9zWjmhQ0sk+EEcDWRq8/o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iEo2oEQBUg+XDnvywzh7hyuA7ho5iF8hjItiDaDo4svuOP9TiElJnCztMcgPIDhrJ
	 DLyM1Cvbf+cKqXWJj/r+K2qxQ78e2OJ63KZ5y3AdUlDHzsY4RO3QGSNoqMq2/qEAxt
	 If9Wf0obeCUyuXe7q6KS1UgB06wso79WVB3lqTOQxGq4nzSZvkjzNG4riLpv4RhzTh
	 FBkwdW0bEkyM6KUvJsSS8H1yxB4davXYwxWE5GdSQ1BTK2paiuN1FvGD/nfyRyTHiS
	 KuztooAWYqyV8vl6CqY2M7sOgKGHwWhTGmLKjwwU0xI1mADuAdEaoQXd/H8JW6C1JK
	 xEJjDACDRKd9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ggxJBpGSnCFv; Mon,  1 Aug 2022 13:49:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCD1E81B14;
	Mon,  1 Aug 2022 13:49:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCD1E81B14
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A2F201BF29C
 for <intel-wired-lan@osuosl.org>; Mon,  1 Aug 2022 11:49:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7B02381CA0
 for <intel-wired-lan@osuosl.org>; Mon,  1 Aug 2022 11:49:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B02381CA0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y0vCS4M_-Piu for <intel-wired-lan@osuosl.org>;
 Mon,  1 Aug 2022 11:49:20 +0000 (UTC)
X-Greylist: delayed 00:07:23 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67BF981C67
Received: from mail51.euc1.prod.hydra.sophos.com
 (mail51.euc1.prod.hydra.sophos.com [35.159.27.143])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 67BF981C67
 for <intel-wired-lan@osuosl.org>; Mon,  1 Aug 2022 11:49:19 +0000 (UTC)
Received: from mail.delivery-8-eu-central-1.prod.hydra.sophos.com
 (ip-172-20-1-202.eu-central-1.compute.internal [172.20.1.202])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by mail51.euc1.prod.hydra.sophos.com (Postfix) with ESMTPS id 4LxGS64Y3Kz1dP
 for <intel-wired-lan@osuosl.org>; Mon,  1 Aug 2022 11:41:58 +0000 (UTC)
Received: from ip-172-20-0-248.eu-central-1.compute.internal
 (ip-172-20-0-248.eu-central-1.compute.internal [127.0.0.1])
 by mail.delivery-8-eu-central-1.prod.hydra.sophos.com (Postfix) with ESMTP id
 4LxGS046xKz7t8B
 for <intel-wired-lan@osuosl.org>; Mon,  1 Aug 2022 11:41:52 +0000 (UTC)
X-Sophos-Product-Type: Gateway
X-Sophos-Email-ID: 6d6fe727e85e40308d0c42e91e33a7d9
Received: from DEU01-FR2-obe.outbound.protection.outlook.com
 (mail-fr2deu01lp2175.outbound.protection.outlook.com [104.47.11.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay-eu-central-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4LxGRx2kZKzYcn4; Mon,  1 Aug 2022 11:41:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lMSi3brg8rUEeq5+nxG2/GBhPtB69Q2h2r1HRau/me7OvU/6q32qRttx0plcs57aQHLCFooHOop4tq+OMiRPHQDxGuraksJ9LpPhVrTgLvpUOWJKsYSmJCWCixvmqfwSmAEcFeGKna5xFCrIti5Pto4YUWIVdav61rK7JjhfNycx1ctUnJauzpq5CbVIwejuNffoYBE87Qh30y+ci4B2FofpHhuem99ew1+YQHGD+Sg+IhF2xk1Ed4Tz6cHvyHpghEpftIPBZev0NKUXAxcgPGq53Q1fs7CYG7SjBpNaXWSOpWhwQIu8MNreEPOzuUARrqUXy6AOayP0wE9Almrq9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z7XvXZGjwPQInLSRZU9FhXB61I71vjanjp/KphenIPM=;
 b=nc784wPICbTt89VQHCxyFg4wLknEhLKUa/MVmEcV+4AxV4t8lnRJ5kiSuWRg3WD2L4WjnbvUsUM1sbonZQ0IGqM2j9OyrJWIGQGFgeSv3iU6dl/t2u8SVlPe+8UlJitg/RUNQcDptQ53E4CtOOUkfIOFEqSblTpEEvsGv9HAYidHtv97edMEv7fAFx+wckF+bG2wWwy63xSYCGj+PelFQDfUiHWhi2ZK6tsbF8logT+IV9c0o+aW9TzAVO66ItOBQBSFQ03qoEFzq0GysfLPNpNo73RvnGRU30Pov0q21TrcBXnxsLuPYUMeJz0W8UXyA3MwW1SsUfHi4A89IrfPDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=anduras.de; dmarc=pass action=none header.from=anduras.de;
 dkim=pass header.d=anduras.de; arc=none
Received: from FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:2e::5) by
 BEZP281MB2182.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:59::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.12; Mon, 1 Aug 2022 11:41:48 +0000
Received: from FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
 ([fe80::e1ec:f060:ce2b:2b]) by FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
 ([fe80::e1ec:f060:ce2b:2b%8]) with mapi id 15.20.5504.013; Mon, 1 Aug 2022
 11:41:47 +0000
Message-ID: <53364684-9865-ec32-5de8-ca8633d5c8cb@anduras.de>
Date: Mon, 1 Aug 2022 13:41:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
From: Sven Anders <sven.anders@anduras.de>
To: "Switzer, David" <david.switzer@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
References: <a94b23d2-57a8-954f-9fae-246cf900be92@intel.com>
 <8d7813a5-c344-6225-dc1a-89a92e5cddb9@anduras.de>
 <eb729924-7c59-23fa-4847-bff376a98d2a@anduras.de>
 <SN6PR11MB35187D9C1432AAB249FF8CCBEBA99@SN6PR11MB3518.namprd11.prod.outlook.com>
 <4cd7ea38-760d-23b9-5925-a9d1a0504286@anduras.de>
 <SN6PR11MB3518CAAC30596FB69490B33DEBAC9@SN6PR11MB3518.namprd11.prod.outlook.com>
 <SN6PR11MB351898837AC265B5F52C88E0EBB39@SN6PR11MB3518.namprd11.prod.outlook.com>
Content-Language: de-DE
Organization: ANDURAS AG
In-Reply-To: <SN6PR11MB351898837AC265B5F52C88E0EBB39@SN6PR11MB3518.namprd11.prod.outlook.com>
X-ClientProxiedBy: AM4PR05CA0021.eurprd05.prod.outlook.com (2603:10a6:205::34)
 To FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:2e::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eba5697e-dff8-47e4-f7a9-08da73b2d127
X-MS-TrafficTypeDiagnostic: BEZP281MB2182:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: a8BB98RLS/ZZ3pPdKNIi+7sQp+XxK5uYzmnjf/uRGrM/2VAaFvoDOWVoaauKbIc89TKWpOZD5UPoGgUiCaQANhOMhfxYJ3sMHoXJn8swYMfd7/XhpUA06XsS2rDGi4dRVI0+Dw4Fzevewu6lvR1ntsUv2rPeCFao8IsjyMnYtBZcSoEbYdj/zVCqxyOrutIMacsEh6HuKw092IaoKfKs361F6E+732mKQ/T3MMBt2g2D2gbhfQ/KAMHBC3I+5FAlhtiCo/8uu+iccx4i1XsATjJStQpEB802F47f3iNPlSV7qdoLBwl1dXyWeAZx4MPiNAPKRaz2OKh3Qq2LGpkY2MSdhv2UqzCcIOVJJ4/P/XeF5vhJD7ReUhorrcFuY6Yolh0O8DeonVa1ez3QTSQIlpRrahiiSkSkaJkJcD4ya3ZXqxkBYqrTnFvlpo4CQHogdcYtw4RdGvr4jSTJkOhmDCMTyjHTUgui7b5azsbYkC3846C8LtuNMFJkyhUer/SnyfCxrukEIC0elJKIfruah+yXJsEApN1/QotuVGAPvy2xQeCeQNl9Nv38OiV23dzXuM5v+GF7t45oYjl1CkbLdpQCGjzeHowxWacoVlWU4mugqZ+d4Fu4xa6fxjlarJEUHdS0dSSiiKRa4mZLXOgHyxBhWBZMisq1MMoWTYecbPwIc7c0JJv61SZUQaegQc74ol8jxxIhtTQZ5XynJcrpAOsWz8iH3VBnrBnwh94tZXq6enA6DxqZAxGoJrbdPmV0PRUVE23Y+um6JyjZe8IntTMACV7eoqxJPPzHnKiKMIW3PqscYjiM9hjJyzC8GEJmj7r7afk65/hN0QCyEuApVP1hZZhZ9weRxCx/j/OhTFM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:; 
 IPV:NLI; SFV:NSPM;
 H:FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM; PTR:; CAT:NONE; 
 SFS:(13230016)(39830400003)(366004)(376002)(396003)(136003)(346002)(44832011)(6486002)(478600001)(316002)(83380400001)(2906002)(66556008)(41300700001)(110136005)(66946007)(5660300002)(8936002)(36756003)(66476007)(8676002)(31686004)(6512007)(2616005)(86362001)(31696002)(53546011)(36916002)(26005)(6506007)(15974865002)(186003)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHJYSWFGRzNDb2poeUZUUVNXV1dYSXV5YmVBTjRFdVFKT1hyVlR3RzNaNkkx?=
 =?utf-8?B?Q2ZtakJwaXdSSW5VcVpFUHJ5WFNOT1lCK2JvcVV1MlpQM29HM2t2aE4wUDQ0?=
 =?utf-8?B?OFdXNk82aGFqdUZyeHZwcmErdWVWWjNZUFpxbFVKRllvUzJEK2o3UTkwSFBr?=
 =?utf-8?B?OUc2QVhSTU1UWjg0V2VlQkZxZVF6Tm94SUhwQUt0UWpnUUlpSXhRS05Fd1Br?=
 =?utf-8?B?dHl2SjRCeElkTmRNN0ZqT3o4NkQ4U1Q3R2dZWkJOVzV4ekJxdHpBMlhWcFRs?=
 =?utf-8?B?OUIxcUtEMU1zTlVzeXI1RjBNc1dCS0NTbmZ0SnFHbzJIdmRpTDlJNHhNa3NF?=
 =?utf-8?B?cGhRUGQyQnlkMWZVdFF3ajRmVnBqczN0UWFKUE1tZTJyckZPVVJySGZpM0ZP?=
 =?utf-8?B?U2F4MFJVNFlwYzBVZUhBRFJGNWhCMVplREF4OFhwckpVSU12WkdFQ2w1WEJC?=
 =?utf-8?B?b2dNT2xvR0N5QUVmWHk4M2lFSnhyUmhldm8yTEUzT014aTdxdk5WYnZqZDhu?=
 =?utf-8?B?U083ZHpDb05QNzdLZ094eW1JNWppeUR4VkpiYjhLZHhBakl4NUVkVlJDZElL?=
 =?utf-8?B?akd6U3pLYWU4SVRyRVRIZEQyeG11VnBEeU1SSVRrdkpZamJTT0k1ZlJuKzJh?=
 =?utf-8?B?Tm0rUzBab3dCcnFIKzZiYnFmR3JJTFNnUko4TTdpWHpObHEyaTJDZXJGcnRa?=
 =?utf-8?B?T0pVTFNWTFVsNzIva3R6anBheWplMy8yQVFFRjkwQ0w3RTBjN0YzcnBmVGFi?=
 =?utf-8?B?VHU0SHJZVnc1cHZZL3o1NDdSMlphb1oxOUpiVHRILzhjTklhYnZwbE1kdTVW?=
 =?utf-8?B?UEtEU1BXcmhtVmhWZ1JNNG5leWl6bmlYaU1WdXdWNEw4OHhLbWE3dG9xeUZr?=
 =?utf-8?B?anNINW84VmdxYUZ0dzhQUTRnQUZ5V0QwYnBlTHhzK0VLNmowVDEwT1VrdS9C?=
 =?utf-8?B?ZTJNQ3pKeFZYV29Db1FWRk9RRHhZcmlZZUd0bktXQWJPNDlWSVkwUXFYYXBE?=
 =?utf-8?B?NWhEL0NIQmR1UDFNL2VNVmxYQndXRzFFMmRBc2pMN00vY0drQUFrdm9vZjhX?=
 =?utf-8?B?aUdiR0Q2SEMzWTl0RXBlSTJNek9UNDBjTzJUeVhzTm5qMkFVaGdTWjdDYmRT?=
 =?utf-8?B?WXpCSnYwbllrWlpvTlZ1YzF3NFhxSlNMVW9LaU4rMUlHM3JEWjFiekNZNHpC?=
 =?utf-8?B?Qm0zMkxBRlAxeE9uOXAzdExEK2FOeU5Pd3NXYmVCZ2lERjVWeVhyTVYxa2Zi?=
 =?utf-8?B?emo5aTdpVWtFcG1lZlliRGczQmFpam5kaGJsZkRZcmdybzY2Y2ZVMlRyZVho?=
 =?utf-8?B?Wld1WkpRVWdCMFVtNzVDdGo5VnZQdTlsc3pZd0ZqT3BLN3B3U0R6czVjRnc5?=
 =?utf-8?B?OUNBTU1aSmhMclg5TU1TWUpmeFppUTVqSi95bVdtMGFDNU9mUytweXBndVFx?=
 =?utf-8?B?cUxQZTc4VlFacVdMbUxodlBzYmM5dG5KVmdlT1V3S0tCSEZVTEdjRzVoQ0Yz?=
 =?utf-8?B?bHZOL0M4bWJhWW4ybVRzemwrSUp6NytlOHZBNE9xRkU4SnIvNWQ4d05DZlpZ?=
 =?utf-8?B?bnJ4bTRWbHg1Wkc5QlVuRFdoMXVaaVR2eEhkdzVSSHh3RDhta0QrcjdXNkxI?=
 =?utf-8?B?QjQ3OGRKdmFHN1pZMmordlZwSmpkcDJ6ZHlHUmgwYmhUTysyWEZPNzQwUURU?=
 =?utf-8?B?UDNiNWdmS0NYREpsRXRTaUd4d2g1cWV4bkFsbUs3aERoSDZuYVpOSnhpcS9o?=
 =?utf-8?B?d3haK2U5RDBuOVdOaTJCdzErUnd4ZVFEY0J0M2IrOEdhY05Gd0dWRXB5Rjdj?=
 =?utf-8?B?ZUN1MWhhYXl1cGRSSld4bUdTZ0U3V3FvcVhUM2xtaUJoMVZQTHYxdS9XREpG?=
 =?utf-8?B?VFlva3FlUCttNkxVYmQrQVYwWGJhYWtBMmtvRzdGU2ZOcHQyL29SeUhNZEVQ?=
 =?utf-8?B?YnFiTUVnZDRVVlBVOGdOcnVMZVBsV042UUJIOUhvUlI3amxzNm9ZWWZnOVB3?=
 =?utf-8?B?SE10VmdUWWg3N2lnUFlxcTBJZWFNdjQ2eFB0SEl2djQxTnV2R2dvVkhFckNX?=
 =?utf-8?B?ejI1Ny9RSjdnaDZiV2hIQndhemxCWjVudkdlaEwwdUE3RHBWeGk4aWxWY1Fo?=
 =?utf-8?Q?W9aVXf7i4CRlhVkR4NMScsoW5?=
X-OriginatorOrg: anduras.de
X-MS-Exchange-CrossTenant-Network-Message-Id: eba5697e-dff8-47e4-f7a9-08da73b2d127
X-MS-Exchange-CrossTenant-AuthSource: FRYP281MB2107.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2022 11:41:47.8339 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 639cc95b-aa9f-42bf-b982-a592003fbab3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qjNzyGn7rqFMXrkicCL5av3Mkmy+7/ZB6eRf0/1qc+YG2HfcLTteX9Lu4Oi5BapajXoNCrJpVulx+31uq+nO6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BEZP281MB2182
X-Sophos-Email: [eu-central-1] Antispam-Engine: 5.1.1,
 AntispamData: 2022.8.1.111819
X-LASED-SpamProbability: 0.081286
X-LASED-Hits: CTE_BASE64 0.000000, DKIM_SIGNATURE 0.000000, ECARD_WORD 0.000000,
 HTML_00_01 0.050000, HTML_00_10 0.050000, IN_REP_TO 0.000000,
 LEGITIMATE_SIGNS 0.000000, MSG_THREAD 0.000000, NO_FUR_HEADER 0.000000,
 NO_URI_HTTPS 0.000000, OUTBOUND 0.000000, OUTBOUND_SOPHOS 0.000000,
 REFERENCES 0.000000, SINGLE_URI_IN_BODY 0.000000, SUPERLONG_LINE 0.050000,
 __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000,
 __ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
 __ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
 __BANNER_TRUSTED_SENDER 0.000000, __BEC_PHRASE 0.000000,
 __BODY_NO_MAILTO 0.000000, __BOUNCE_CHALLENGE_SUBJ 0.000000,
 __BOUNCE_NDR_SUBJ_EXEMPT 0.000000, __BULK_NEGATE 0.000000,
 __BUSINESS_SIGNATURE 0.000000, __CT 0.000000, __CTE 0.000000,
 __CT_TEXT_PLAIN 0.000000, __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000,
 __DQ_NEG_IP 0.000000, __FORWARDED_MSG 0.000000, __FRAUD_CONTACT_NUM 0.000000, 
 __FRAUD_PARTNERSHIP 0.000000, __FUR_RDNS_SOPHOS 0.000000, __HAS_FROM 0.000000, 
 __HAS_MSGID 0.000000, __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000,
 __IMP_FROM_MY_ORG 0.000000, __IMP_FROM_NOTSELF 0.000000, __IN_REP_TO 0.000000, 
 __JSON_HAS_SCHEMA_VERSION 0.000000, __JSON_HAS_TENANT_DOMAINS 0.000000,
 __JSON_HAS_TENANT_ID 0.000000, __JSON_HAS_TENANT_SCHEMA_VERSION 0.000000,
 __JSON_HAS_TENANT_VIPS 0.000000, __JSON_HAS_TRACKING_ID 0.000000,
 __MAIL_CHAIN 0.000000, __MIME_TEXT_ONLY 0.000000, __MIME_TEXT_P 0.000000,
 __MIME_TEXT_P1 0.000000, __MIME_VERSION 0.000000,
 __MOZILLA_USER_AGENT 0.000000, __MSGID_HEX_844412 0.000000,
 __MULTIPLE_RCPTS_TO_X2 0.000000, __NO_HTML_TAG_RAW 0.000000,
 __OUTBOUND_SOPHOS 0.000000, __OUTBOUND_SOPHOS_FUR 0.000000,
 __OUTBOUND_SOPHOS_FUR_IP 0.000000, __OUTBOUND_SOPHOS_FUR_RDNS 0.000000,
 __PHISH_SPEAR_SUBJ_ALERT 0.000000, __REFERENCES 0.000000,
 __SANE_MSGID 0.000000, __SINGLE_URI_TEXT 0.000000, __SUBJ_ALPHA_END 0.000000, 
 __SUBJ_ALPHA_NEGATE 0.000000, __SUBJ_REPLY 0.000000, __TO_MALFORMED_2 0.000000,
 __TO_NAME 0.000000, __TO_NAME_DIFF_FROM_ACC 0.000000, __TO_REAL_NAMES 0.000000,
 __URI_IN_BODY 0.000000, __URI_MAILTO 0.000000, __URI_NOT_IMG 0.000000,
 __URI_NO_PATH 0.000000, __URI_NS 0.000000, __URI_WITHOUT_PATH 0.000000,
 __USER_AGENT 0.000000, __X_FF_ASR_SCL_NSP 0.000000,
 __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-MH-Mail-Info-Key: NEx4R1M2NFkzS3oxZFAtMTcyLjIwLjEuMzQ=
X-Mailman-Approved-At: Mon, 01 Aug 2022 13:49:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ANDURASAG.onmicrosoft.com; s=selector1-ANDURASAG-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z7XvXZGjwPQInLSRZU9FhXB61I71vjanjp/KphenIPM=;
 b=PfhawEalvSrUGiF2Wl+xzPKh+8nxdNjlAbcYw2OA7pD/uGjZlKSTt935zcACafVybDT67ut09NMuGnst1f3jYdaQAXu6IBIyYn+HHduNWS4Lpe49F/s34UfZwH7yAO74b9jdF394nDEEDVFLrWY9HpfdnTMpX7nstKrIgsywD+c=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1659354106; 
 s=sophosf9aa68d74dee45c58aac945adde58f79; d=anduras.de;
 h=Content-Type:To:Subject:From:Date;
 bh=Z7XvXZGjwPQInLSRZU9FhXB61I71vjanjp/KphenIPM=;
 b=rzNEH1CnYTh9BwdwHHhp6iF/VO488WIfWKBdBxeFpTKUmOAX4qYL4Mi+u4EvPj/w
 aYQdT6zd072wT6GjgTK31W8Gc+EmgQxGy+czvrK4MBZCkHcsgtvRTUgxefGE1WEm98p
 K3UWq1xY/g6qiKFlI64Q0oRyHNZTs24iydryUcbh5QTOVM/a/GPv8HbQeYwB+3/kT5s
 h2jap/oMe6hnMzpZvoyFW07pA0NV5+HFHHcbVh12I3LYfrk3f0rtLqpCGiDFVwoLw9y
 EcEzV8k9jef22Vngl/ayBVGdyEjmYWeEzhyT4ZTE9WfMkazcAWQKJvS4l3j16dntptk
 eEWpyolUeQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1659354106; 
 s=v1; d=mail-dkim-eu-central-1.prod.hydra.sophos.com;
 h=Content-Type:To:Subject:From:Date;
 bh=Z7XvXZGjwPQInLSRZU9FhXB61I71vjanjp/KphenIPM=;
 b=a7T51I2LMwTMCw7jBExxgG1aNVebMvQl+HXqkDJOGfIkKBdJRH9TktAoZmR5c8Sr
 RoHJhu6AwMUTUWqyHGzLOOHClWyzeHfOrR9CzFPdUESDUSUqCVmecnscSNRnGhcPVLW
 ZSXdAKNRN0I83qR+xUvEvQgWkAz86NqwHFRq036r30gWoui2XcD6qptobewO6MdN0KJ
 6vunL0Ts9K0ByVH/ItHwrxq95Xd1P6PdMJRNdl5c4DMvMNXIKoN33Lj25xUTr9WeEvV
 4FInpqzFA1uB6G9M0dGNVjLtHC1IzSAB33Q0WFX23HCFfeJ58qVbcOCajPd7q3ULzU7
 yVkhzvhaAg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=temperror header.d=ANDURASAG.onmicrosoft.com
 header.i=@ANDURASAG.onmicrosoft.com header.a=rsa-sha256
 header.s=selector1-ANDURASAG-onmicrosoft-com header.b=PfhawEal; 
 dkim=pass (2048-bit key) header.d=anduras.de header.i=@anduras.de
 header.a=rsa-sha256 header.s=sophosf9aa68d74dee45c58aac945adde58f79
 header.b=rzNEH1Cn; 
 dkim=pass (2048-bit key) header.d=mail-dkim-eu-central-1.prod.hydra.sophos.com
 header.i=@mail-dkim-eu-central-1.prod.hydra.sophos.com header.a=rsa-sha256
 header.s=v1 header.b=a7T51I2L
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

SGVsbG8gRGF2ZSwNCg0KSSB3YW50IHNvIHJlcG9ydCBiYWNrIHRoYXQgSSBzb2x2ZWQgdGhlIHBy
b2JsZW0uDQpUaGUgcHJvYmxlbSB3YXMgbm90IGluIHRoZSBpNDBlIGRyaXZlci4NCg0KRXhwbGFu
YXRpb246DQpXZSB1cGdyYWRlZCBhIHNlcnZlciB3aXRoIHRoZSBuZXcgMTBHIChxdWFkKSBuZXR3
b3JrIGNhcmQuDQpUaGUgc2VydmVyIHdhcyB3b3JraW5nIHdpdGgga2VybmVsIGluIHZlcnNpb24g
NC4xNC4yMzguDQpEdWUgdG8gdGhlIG5ldyBuZXR3b3JrIGNhcmQsIHdlIHdlcmUgZm9yY2VkIHRv
IHVwZ3JhZGUgdG8gYSBuZXdlciBrZXJuZWwgYW5kIHdlIHVzZWQgNS4xNS4zOC4NClRoZSBuZXR3
b3JrIGNvbmZpZ3VyYXRpb24gc3RheWVkIHRoZSBzYW1lLCBidXQgd2UgaGFkIHRoZSByZXBvcnRl
ZCBwcm9ibGVtLg0KDQpEdWUgdG8gYSBteXN0ZXJpb3VzIGZpeCB3aXRoIGFuIG9sZGVyIHZlcnNp
b24gb2YgdGhlIGtlcm5lbCwgdGhlcmUgd2FzIGEgcGFydCBvZg0KdGhlIG5ldHdvcmsgY29uZmln
dXJhdGlvbiB0aGF0IHNldCB0aGUgbWFjIGFkZHJlc3Mgb24gYWxsIHZsYW5zLg0KVGhpcyB3YXMg
dGhlIGNhdXNlIG9mIHRoZSBwcm9ibGVtLiBUaGUgb2xkZXIga2VybmVsIGlnbm9yZWQgdGhpcyBz
ZXR0aW5ncyBidXQNCnRoZSBuZXdlciBrZXJuZWwgcGVyZm9ybWVkIChjb3JyZWN0bHkpIHNvbWUg
YWN0aW9ucyBvbiBpdCAoYW5kIG1heWJlIHNlbnQgc29tZSBpbnN0cnVjdGlvbnMNCnRvIHRoZSBu
ZXR3b3JrIGNhcmQpLiBGb3JjaW5nIHRoZSBwcm9taXNjb3VzIG1vZGUgYnkgdHJpZ2dlcmluZyB0
aGUgZXJyb3IgbXVzdCBkaXNhYmxlZCBzb21lDQpwcmV2aW91cyBzZXR0aW5ncyBvZiB0aGUgbmV0
d29yayBjYXJkIGFuZCBtYWRlIGl0IHdvcmtpbmcgYWdhaW4uDQoNCk5ldmVydGhlbGVzcywgdGhh
bmtzIGZvciB5b3VyIHRpbWUgdGVzdGluZyBpdC4gSXQgaGVscGVkIG1lIHRvIGVsaW1pbmF0ZSB0
aGUgZHJpdmVyIGFzIHRoZQ0KY2F1c2UgYW5kIGZvcmNlZCBtZSB0byBkaWcgZGVlcGVyIG9uIG15
IHNpZGUuDQpSZW1vdmluZyB0aGUgcGFydCwgd2hpY2ggd2FzIHNldHRpbmcgdGhlIG1hYyBhZGRy
ZXNzLCBlbGltaWF0ZWQgdGhlIGVycm91bm91cyBiZWhhdmlvdXINCmFuZCB0aGUgbmV0d29yayBj
YXJkIGlzIG5vdCB3b3JraW5nLg0KDQpSZWdhcmRzDQogICBTdmVuDQoNCkFtIDIxLjA2LjIyIHVt
IDIzOjE4IHNjaHJpZWIgU3dpdHplciwgRGF2aWQ6DQo+IA0KPj4gLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCj4+IEZyb206IFN3aXR6ZXIsIERhdmlkDQo+PiBTZW50OiBUaHVyc2RheSwgSnVu
ZSAxNiwgMjAyMiAxOjMxIFBNDQo+PiBUbzogU3ZlbiBBbmRlcnMgPHN2ZW4uYW5kZXJzQGFuZHVy
YXMuZGU+OyBpbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZw0KPj4gU3ViamVjdDogUkU6IFtJbnRl
bC13aXJlZC1sYW5dIEJvbmRpbmcgcHJvYmxlbSBvbiBJbnRlbCBYNzEwIGhhcmR3YXJlDQo+Pg0K
Pj4+IEhhbGxvIERhdmUsDQo+PiBIaSBTdmVuLA0KPiANCj4gSGVsbG8gU3ZlbiENCj4+DQo+Pj4N
Cj4+PiB0aGFua3MgZm9yIHlvdXIgYW5zd2VyLg0KPj4gWW91J3JlIHZlcnkgd2VsY29tZSENCj4+
DQo+Pj4NCj4+PiBJIHRyaWVkIHRvIGRpc2FibGUgdGhlIExMRFAgZW5naW5lLCBhcyBzdWdnZXN0
ZWQsIGJ1dCBpdCBkaWQgbm90IGNoYW5nZQ0KPj4+IGFueXRoaW5nLg0KPj4+DQo+Pj4gVG8gcmVt
YXJrOiBJIGRvIG5vdCB1c2UgTEFDUCwgSSdtIHRyeWluZyB0byB1c2UgIkFkYXB0aXZlIExvYWQg
QmFsYW5jaW5nIg0KPj4+IHdoaWNoIHdvcmtzIHdpdGggQVJQIG5lZ290aWF0aW9uLg0KPj4+IElm
IEknbSB1c2luZyB0aGUgImFjdGl2ZS1iYWNrdXAiIGJvbmRpbmcgbW9kZSwgaXQgYWxsIHdvcmtz
IGZpbmUuIEJ1dA0KPj4+IHRoaXMgaXMgbmVhcmx5IHRoZSBzYW1lIGFzIHVzaW5nIG9ubHkgb25l
IGludGVyZmFjZSwgd2hpY2ggd29ya3MgdG9vLg0KPj4+DQo+Pj4gSW4gbXkgdGVzdCBzZXR1cCwg
SSdtIHVzaW5nIHR3byAiSFBFIDI1MzAtNDhHLVBvRSsiIHN3aXRjaGVzDQo+Pj4gKFlBLjE2LjEw
LjAwMDIpLCBlYWNoIGlzIGNvbm5lY3RlZCB3aXRoIG9uZSBjYWJsZSB0byB0aGUgbmV0d29yayBj
YXJkLg0KPj4+IE15IHRlc3QgaXMgdmVyeSBzaW1wbGU6DQo+Pj4gQWZ0ZXIgY29uZmlndXJpbmcg
dGhlIGJvbmQsIEkgdXNlZCBhIGNvbnRpbm91cyBwaW5nIHRvIHRoZSBMaW51eCBzZXJ2ZXINCj4+
PiBhbmQgSSBzZWUgbWFueSBkcm9wcy4gSWYgSSB0b2dnbGUgdGhlICJudHVwbGVzIHN1cHBvcnQi
LCB0aGUgZHJvcHMgZGlzYXBwZWFyLg0KPj4+DQo+Pj4gQ2FuIHdlIGNvbXBhcmUgdGhlIHNldHRp
bmdzIG9mIHlvdXIgc2V0dXAgd2l0aCBtaW5lPyBNYXliZSB5b3UgbWlzc2VkDQo+Pj4gc29tZXRo
aW5nLi4uDQo+PiBKdXN0IHJlYWxpemVkIHdlIG1pc3NlZCB0aGUgMm5kIHN3aXRjaCh3ZSdyZSB3
b3JraW5nIG9uIHNldHRpbmcgdGhhdCB1cCBub3cpDQo+IEkgZ290IG15IDJuZCBzd2l0Y2ggY29u
ZmlndXJlZCB3aXRoIDM2IHZsYW5zIG9uIHRoZSBib25kLCBJIHN0aWxsIGNhbid0IHJlcHJvZHVj
ZSB0aGUgaXNzdWUuDQo+IA0KPiBJJ20gaW4gYSB0ZXN0IGVudmlyb25tZW50IHNvIEkgZG9uJ3Qg
aGF2ZSBtdWNoIG9mIGEgIm5ldHdvcmsiIGJldHdlZW4gdGhlIHR3byBzd2l0Y2hlcy4gIEkgd2Fz
IHdvbmRlcmluZyBob3cgeW91ciBzd2l0Y2hlcyB3ZXJlIGNvbmZpZ3VyZWQgYW5kIGlmIHRoZXJl
IHdhcyBhbnl0aGluZyBlbHNlIGdvaW5nIG9uIHdpdGggIHRoZSBuZXR3b3JrKHBlb3BsZSBzdHJl
YW1pbmcsIGJhY2t1cHMgb2NjdXJyaW5nLCBldGMpLg0KPiANCj4+DQo+Pj4gSG93IGNhbiBJIGFz
c2lzdCBmdXJ0aGVyPw0KPj4gQ2FuIHlvdSBlbmFibGUgc291cmNlIHBydW5pbmcgb24gdGhlIHBv
cnRzIHRoYXQgYXJlIHBhcnQgb2YgeW91ciBib25kPyAgVGhlcmUNCj4+IG1pZ2h0IGJlIHNvbWUg
Y29uZnVzaW9uIGluIHRoZSBmdy9zdyB3aXRoIHRoZSB0d28gaW50ZXJmYWNlcyBhbmQgcGFja2V0
cw0KPj4gYXJlIGdldHRpbmcgaWdub3JlZDoNCj4+IGV0aHRvb2wgLS1zZXQtcHJpdi1mbGFncyA8
aW50ZXJmYWNlIG5hbWU+IGRpc2FibGUtc291cmNlLXBydW5pbmcgb24NCj4+DQo+IEkgd2FzIHJl
YWRpbmcgb3ZlciB0aGlzIGFuZCByZWFsaXplZCBJIGNvbnRyYWRpY3RlZCBteXNlbGYgYWJvdmUu
ICBJIHdvdWxkIGxpa2UgdG8gc2VlIGlmIGRpc2FibGluZyBzb3VyY2UgcHJ1bmluZyB3b3VsZCBo
ZWxwLg0KPiANCj4gSSBob3BlIHlvdSdyZSBoYXZpbmcgYSBnb29kIHdlZWshDQo+IERhdmUNCj4g
DQo+PiBMZXQgbWUga25vdyBpZiB0aGF0IGhlbHBzLiAgSXQgc291bmRzIGxpa2Ugd2UnbGwgYmUg
Z2V0dGluZyBvdXIgdHdvIHN3aXRjaGVzDQo+PiBsYXRlciB0b2RheSBzbyB3ZSBjYW4gbWFrZSBz
dXJlIHdlIGhhdmUgb3VyIGVudmlyb25tZW50IG1hdGNoaW5nIHlvdXJzLg0KPj4NCj4+IEhhdmUg
YSBncmVhdCBkYXkhDQo+PiBEYXZlDQo+Pg0KPj4NCj4+Pg0KPj4+IFJlZ2FyZHMNCj4+PiAgIFN2
ZW4NCj4+Pg0KPj4+IEFtIDExLjA2LjIyIHVtIDAzOjI3IHNjaHJpZWIgU3dpdHplciwgRGF2aWQ6
DQo+Pj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPj4+Pj4gRnJvbTogSW50ZWwtd2ly
ZWQtbGFuIDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4+
Pj4+IE9mIFN2ZW4gQW5kZXJzDQo+Pj4+PiBTZW50OiBNb25kYXksIEp1bmUgNiwgMjAyMiAxMTow
NSBQTQ0KPj4+Pj4gVG86IGludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnDQo+Pj4+PiBTdWJqZWN0
OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gQm9uZGluZyBwcm9ibGVtIG9uIEludGVsIFg3MTANCj4+
Pj4+IGhhcmR3YXJlDQo+Pj4+Pg0KPj4+Pj4gSGVsbG8hDQo+Pj4+IEhpIFN2ZW4hICBNeSBhcG9s
b2dpZXMgb24gdGFraW5nIHNvIGxvbmcgdG8gcmVwbHkuDQo+Pj4+Pg0KPj4+Pj4gV2FzIGFueWJv
ZHkgYWJsZSB0byByZXByb2R1Y2UgdGhlIHByb2JsZW0/DQo+Pj4+IEkgaGF2ZW4ndCBiZWVuIGFi
bGUgdG8gcmVwcm9kdWNlIHlvdXIgaXNzdWUgeWV0LCBidXQgd2l0aCB5b3VyDQo+Pj4+IGRlc2Ny
aXB0aW9uIGl0IHNvdW5kcyB0aGF0IHRoZSBpc3N1ZSBjb3VsZCBiZSByZWxhdGVkIHRvIHRoZSBY
NzEwDQo+Pj4+IGhhcmR3YXJlIExMRFAgZW5naW5lIGNvbnN1bWluZyB0aGUgTExEUCBwYWNrZXRz
LiAgVG8gZGlzYWJsZSB0aGUNCj4+PiBoYXJkd2FyZSBlbmdpbmUsIHVzZXIgdGhlIGZvbGxvd2lu
ZyBjb21tYW5kIG9uIGVhY2ggb2YgdGhlIHBvcnRzIHRoYXQNCj4+PiB5b3UncmUgdXNpbmcgaW4g
dGhlIGJvbmQ6DQo+Pj4+DQo+Pj4+IGV0aHRvb2wgLS1zZXQtcHJpdi1mbGFncyA8aW50ZXJmYWNl
IG5hbWU+IGRpc2FibGUtZnctbGxkcCBvbg0KPj4+Pg0KPj4+PiBUaGVuIHRoZSBMTERQIHBhY2tl
dHMgdGhhdCB0aGUgYm9uZGluZyBtb2R1bGVzIHJlbGllcyBvbiB3aWxsIGJlDQo+Pj4+IGZvcndh
cmRlZA0KPj4+IGJ5IHRoZSBoYXJkd2FyZSB0byB0aGUgT1MgbmV0d29yayBzdGFjay4NCj4+Pj4N
Cj4+Pj4gSSBob3BlIHlvdSBoYXZlIGEgZ3JlYXQgd2Vla2VuZCENCj4+Pj4gRGF2ZQ0KPj4+Pg0K
Pj4+Pj4gRG8geW91IG5lZWQgYXNzaXN0YW5jZSBvciBmdXJ0aGVyIGluZm9ybWF0aW9uPw0KPj4+
Pj4NCj4+Pj4+IFJlZ2FyZHMNCj4+Pj4+ICAgIFN2ZW4NCj4+Pj4+DQo+Pj4+PiBBbSAzMC4wNS4y
MiB1bSAxNzo1MyBzY2hyaWViIFN2ZW4gQW5kZXJzOg0KPj4+Pj4+Pj4+IEhlbGxvIQ0KPj4+Pj4+
Pj4+DQo+Pj4+Pj4+Pj4gVGhpcyBpcyBhIGZvbGxvdyB1cCB0byBteSBxdWVzdGlvbi4gSSBkaWQg
bm90IGhlYXIgYW55dGhpbmcgc28NCj4+Pj4+Pj4+PiBmYXIsIGJ1dCBJIHRyaWVkIHRvIGZpbmQg
c29tZSBzb21lIGluZm9ybWF0aW9uIG1lYW53aGlsZS4NCj4+Pj4+Pj4+Pg0KPj4+Pj4+Pj4+IEkn
dmUgZ290IGEgZ3Vlc3MgZnJvbSBzb21lYm9keSwgdGhhdCB0aGUgZXJyb3IgbWVzc2FnZSAiRXJy
b3INCj4+Pj4+Pj4+PiBJNDBFX0FRX1JDX0VJTlZBTCBhZGRpbmcgUlggZmlsdGVycyBvbiBQRiwg
cHJvbWlzY3VvdXMgbW9kZQ0KPj4+Pj4+Pj4+IGZvcmNlZCBvbiIgbWF5YmUgdHJpZ2dlcmVkLCBi
ZWNhdXNlIEknbSBoaXR0aW5nIGEgbGltaXQgaGVyZS4NCj4+Pj4+Pj4NCj4+Pj4+Pj4gWWVzLCB0
eXBpY2FsbHkgdGhpcyBpcyBhIHJlc3BvbnNlIGZyb20gb3VyIGZpcm13YXJlIHRoYXQgYSB0YWJs
ZQ0KPj4+Pj4+PiBpcyBmdWxsIGluIGhhcmR3YXJlLCBhbmQgSSdtIGd1ZXNzaW5nIHRoYXQgeW91
IG1pZ2h0IGJlIHJ1bm5pbmcNCj4+Pj4+Pj4gaW50byBhIGZpbHRlcg0KPj4+Pj4gbGltaXQgZHVl
IHRvIHVzaW5nIHZsYW5zPw0KPj4+Pj4+DQo+Pj4+Pj4gVGhhdCdzIHdoYXQgSSBzdXNwZWN0LCBi
dXQgSSBkaWQga25vdyB0aGUgaGFyZHdhcmUgYW5kIGZpcm13YXJlDQo+Pj4+Pj4gaW5zdWZmaWNp
ZW50bHkgdG8gYmUgc3VyZS4NCj4+Pj4+PiBXaGF0IEknbSB3b25kZXJpbmcgaXM6IFdoeSB0aGlz
IGlzIG9ubHkgdHJpZ2dlcmVkIGlmIEkgdG9nZ2xlIHRoZQ0KPj4+Pj4+ICJudHVwbGVzDQo+Pj4+
PiBzdXBwb3J0Ig0KPj4+Pj4+IGFuZCBub3QgZWFybGllciB3aGVuIHNldHRpbmcgdXAgdGhlIGlu
dGVyZmFjZT8NCj4+Pj4+Pg0KPj4+Pj4+Pj4+IERhdGEgcGFja2V0cyBhcmUgb25seSByZWNlaXZl
ZCBzcG9yYWRpY2FsbHkuIElmIEkgcnVuIHRoZSBzYW1lDQo+Pj4+Pj4+Pj4gdGVzdCB3aXRoIG9u
bHkgb25lIHNsYXZlIHBvcnQsIGl0IHdvcmtzIHdpdGhvdXQgcHJvYmxlbXMuDQo+Pj4+Pj4+DQo+
Pj4+Pj4+IEFuZCB0aGVyZSBhcmUgbm8gY291bnRlcnMgZ29pbmcgdXAgaW4gZXRodG9vbCAtUyB3
aGVuIHlvdQ0KPj4+Pj4+PiByZWNlaXZlL2Ryb3ANCj4+Pj4+IHBhY2tldHM/DQo+Pj4+Pj4NCj4+
Pj4+PiBJJ20gbm90IHN1cmUgaGVyZS4gSSB0cmllZCB0byBpbnNwZWN0IHRoZSBjb3VudGVycyBh
bmQgaXQgc2VlbXMNCj4+Pj4+PiB0aGF0IHRoZSBjb3VudGVycyBhcmUgZ29pbmcgdXAgc2xvd2Vy
IGluIHRoaXMgY2FzZSwgYnV0IGl0J3MNCj4+Pj4+PiBkaWZmaWN1bHQgdG8gc2F5LCBiZWNhdXNl
IHRoZXJlIGlzIHNvbWUgIm5vaXNlIiBvbiB0aGUgbGluZSBhbmQgSQ0KPj4+Pj4+IGRvIG5vdCBo
YXZlIGRpcmVjdCBhY2Nlc3MgdG8gdGhlIGhhcmR3YXJlIGF0IHRoZSBtb21lbnQuDQo+Pj4+Pj4N
Cj4+Pj4+PiBJZiB5b3UgbmVlZCBhbnkgZnVydGhlciBpbmZvcm1hdGlvbiBvciB0ZXN0cywganVz
dCBjb250YWN0IG1lLg0KPj4+Pj4NCj4+Pj4+IFJlZ2FyZHMNCj4+Pj4+ICAgIMKgIFN2ZW4gQW5k
ZXJzDQoNClJlZ2FyZHMNCiAgIFN2ZW4gQW5kZXJzDQoNCi0tIA0KICAgU3ZlbiBBbmRlcnMgICAg
ICAgICAgICAgICAgICAoKSBVVEYtOCBSaWJib24gQ2FtcGFpZ24NCiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC9cIFN1cHBvcnQgcGxhaW4gdGV4dCBl
LW1haWwNCiAgIEFORFVSQVMgaW50cmFuZXQgc2VjdXJpdHkgQUcNCiAgIE1lc3Nlc3RyYXNzZSAz
IC0gOTQwMzYgUGFzc2F1IC0gR2VybWFueQ0KICAgV2ViOiB3d3cuYW5kdXJhcy5kZSAtIFRlbDog
KzQ5ICgwKTg1MS00IDkwIDUwLTAgLSBGYXg6ICs0OSAoMCk4NTEtNCA5MCA1MC01NQ0KDQpUaG9z
ZSB3aG8gd291bGQgZ2l2ZSB1cCBlc3NlbnRpYWwgTGliZXJ0eSwgdG8gcHVyY2hhc2UgYSBsaXR0
bGUNCnRlbXBvcmFyeSBTYWZldHksIGRlc2VydmUgbmVpdGhlciBMaWJlcnR5IG5vciBTYWZldHku
DQogICAgLSBCZW5qYW1pbiBGcmFua2xpbg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
