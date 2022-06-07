Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EE553F5D3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jun 2022 08:02:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFE746135C;
	Tue,  7 Jun 2022 06:02:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8qOs246sniry; Tue,  7 Jun 2022 06:02:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 044246135B;
	Tue,  7 Jun 2022 06:02:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F3A71BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 06:02:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2D2F460D5A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 06:02:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d4thXC5hgytF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jun 2022 06:02:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EE28D60C0C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jun 2022 06:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654581764; x=1686117764;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=U7mukGaozdNTd2Z2HuocMYSlc/eni7apl/umETr/vCc=;
 b=IFSQ/rPNndlIjBsva1IF5HvrRNysZe23zgm3Bwu+YpbZiW9KwIqpWNPw
 +kregS1eXKmRtcZxECagz7rv4NiH7ewM9Ep1e18XEeoG82RDhebUhXULo
 vhN0I6m5RiO1bxXUa8Aqxed6bfp6gTVn0N1EkKsuOrza37yT/5XXJz0mN
 Fh/FuucS9UNIo2wle2eoKhOxSME41vxTkIYiDqqmcAHXLuqKVpxOkH2iI
 0Yoipxbcj4WUw2yN1aee4FR50xkuzdeZ7VBE07MFbMiTYF89FhyN3iH1/
 R2wruIHnkyLGyvWrfZGD+hATiwprZHXhXdr7XbVV1iDRWtC/OHA7yzdPG Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="302069760"
X-IronPort-AV: E=Sophos;i="5.91,282,1647327600"; d="scan'208";a="302069760"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 23:02:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,282,1647327600"; d="scan'208";a="826210015"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 06 Jun 2022 23:02:43 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 6 Jun 2022 23:02:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 6 Jun 2022 23:02:43 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 6 Jun 2022 23:02:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BLbBFpn5GYR/O5IenmxaswBnOEVUILEkFcZvi57AW3/fibrhBHA9tZd/ooL9pj/rctv6fMgBFMu4WMdAvlL77dxiILmqp1IIw0BJ0tt2IeuD8kztPm8S+xJMOMwbYU9a2Kfz6V++SvNCRdG5OaAg3NyV8/ns2oQG9KaZnNags3lZiruqjT29Xy+fjcSrX2nTE+bjwjX09gsLzRVXDfL1AwdMmzLRdH1TEQFsgL9I2ilLul+Z968QknvpgVFR5qgYfhWTP9ZxLNOVx6uzlb9VkOzOVstVJ0+9FImWvoicFE1Pc4QWb8UrOQmvhjSzThLTE8nox67lN8zgfcQoczzmfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P8q0mihgW5jWZPkviEStZ1IspdFS2uUjY1l+zb0pDBE=;
 b=d/0WSP2wj29oCcvyAlTVDmynwTv3FpOfh5Kfb1f2yCsruz6qC5hoOSY1+ZUSJWAVlEIvwqJcY8qRwdS1W2/LV859VicnZz4fKEIiOp0CGgKNtgcf7y6L05x9jMYxUoKe0V0HYCtm0G2gfNNiGaSdYHTcUoe/UW2kTM+8/3ERhzl4tZoRNyZtqXFVEyFT0GFleHEOZp4xRYkCMQdaaVZaseOKRcvc26ZrYGMb5Grm5LFuHwPyO1TY0l6XCgbcU9Z/0o3uCVI2Mce6kBvpdXIhdjYJS4qYlTfSdsxtS081OO7PG8EeGyDT4uvXCLaFzoU3wSRzt5VvsRM5AWFTuR6BJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3413.namprd11.prod.outlook.com (2603:10b6:a03:8c::29)
 by IA1PR11MB6443.namprd11.prod.outlook.com (2603:10b6:208:3a8::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.19; Tue, 7 Jun
 2022 06:02:36 +0000
Received: from BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::d4ee:f58d:c323:67d8]) by BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::d4ee:f58d:c323:67d8%5]) with mapi id 15.20.5314.017; Tue, 7 Jun 2022
 06:02:36 +0000
Message-ID: <0a666275-0fb3-4b35-4063-8bfcf6c73d7e@intel.com>
Date: Tue, 7 Jun 2022 08:02:31 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220606070613.3087827-1-anatolii.gerasymenko@intel.com>
 <883538a1-9048-ba0d-69a5-3670ebc3477d@intel.com>
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
In-Reply-To: <883538a1-9048-ba0d-69a5-3670ebc3477d@intel.com>
X-ClientProxiedBy: AS9PR04CA0180.eurprd04.prod.outlook.com
 (2603:10a6:20b:530::12) To BYAPR11MB3413.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 04ec5373-160c-4be6-c6d1-08da484b520c
X-MS-TrafficTypeDiagnostic: IA1PR11MB6443:EE_
X-Microsoft-Antispam-PRVS: <IA1PR11MB644304CBFEF23E32E806566281A59@IA1PR11MB6443.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TjLZuHjBPT+953HEvWr72JQazbOohrlZtL4nSVgMBuSFzDAmcRktPcXY6HOBSQPESbQSmOC9M4Ti+pl88PMomweI3Jobe477AYHqeVK2I+/DUNZNi2qS6pd9Ej7XZebhqsAbXcDVbLmvFpDbvxa4ffFL0pVNU+Q9B0GwF2uVlSZcNKasw0Zf8NtigcKyzb9zEIjBFcW5SlbjSfGzfJsZlRuw82TUzZqvAqWL8TY3dB8fpPOAh9c+tPgHgmGU7+nvFbr7t4Uj2jZ2WGTHCJsQDaPOKd8WhsTiT9wbvjvkaBvJv8IOaBAm6wkH8Iz7uosu/gESy4hLRas6GP0qfsTvV2jbsFakiaU9zuLNlVgDhs0lbc2s5pppAuBdX0Y5NvfMevjnm8lYO9eR/61EoFC7BnIy6veoOTbu7BkJBAOX3hlH++gKTi0KkmrhiWD14YBEtipAIgJgxZU62zYcr4Advq6KcR1L1iucqw9u+L+H/cZ2vD6sHyWAG3acz1PZ3W0puyG22AjKIONcQd0o/J/GtzTNh6USkDncgvQg+FOGPyIQlBoQm+RnHDbpC7qdT2N7NJ8Lr6O3M8vkGVNfZPsDnRgW93x4W7+lk2jyQxQE+UJioY4dkVdA3gvlKgkoRMKCYjfgO8qj44KOhGMp2i4tE/ccEX3e963bdOUYgRIvp/xwloT/okU6jgevVQSzMMdEXQQWOpgQ02UwM+5W9Sv/a0nApegA85nAuSl8KyDdKLk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3413.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(186003)(82960400001)(38100700002)(6506007)(6666004)(6512007)(53546011)(26005)(508600001)(6486002)(316002)(44832011)(2906002)(2616005)(66946007)(66556008)(66476007)(8676002)(4744005)(5660300002)(8936002)(86362001)(31686004)(36756003)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UE1sa0h0aTFXZU9lZUlBaU4ybGlzWHc0L2Rmc3N0V3VTbENWUkFJSGREdTBS?=
 =?utf-8?B?eVJRSXRBdXVJV25rdWwwNXZiMjc1U0t4ZmJQbUU1NEphd0kxakgzaVlXbDlV?=
 =?utf-8?B?S1FiTk5vSlBiclZoZlhZd1REOVdiYzlJU3ptVURCM2V5NVhCdkZFUzZTK1Zm?=
 =?utf-8?B?MjZyYUhmMWdyK0lmb2xPSVhPOHo5ZG5ySEF6bGlWdGlYZVJCaFF3cUdYZ0pj?=
 =?utf-8?B?T0lNZklyUmc3SkM1VFhCSzEyeTZ3M3EyNzZhRXMwc2VyRUZ5OWVYa09OUDZW?=
 =?utf-8?B?UWlCWnZNWDJOVG5rWG1QQ0hiL3lzTFBMMTB1N1dGV0xST1Y1bFZzeVlJb1dt?=
 =?utf-8?B?SldEaTYvaWxJc29jak5CakJpcXhIaGV1Qzl4VkRqWnEyQW9OcVVoSXVvVGRn?=
 =?utf-8?B?TkhSamd6MGdoOVpNbXZnWUZCY1FhbW9yMWdsNk5Ub1dxYm1DZHdJcFNPUVo0?=
 =?utf-8?B?MWxWVzBLSk1XTmIrMHlNb2RWaDltbC9ZSHhyMWFDTFdjSVJkZVNXMnRtcGto?=
 =?utf-8?B?N3NJS2wvbXVCUm1zS0xhMnNCQzNiY290Y3BpOUx3cEwvUXNyUVo3Y2pEOEZP?=
 =?utf-8?B?L2c4OUZWK1dIb1VWNThYK2NsODB6ZTc0U0xiNkJIMzhrbmlvRkpQd0NqdWF0?=
 =?utf-8?B?VGlxdUk2Nld1MWY0UmVGMVZ6MHJ0dFlEOG5uc2IwdW1PWVJFNWtzM1Zaa3Nv?=
 =?utf-8?B?NGkvb2NKRWxCTWRBeTcvWGJiMVNGcXhaaVljc08wSndPZHk3MDFvVTZ4SmtH?=
 =?utf-8?B?ODdhSWg2OFpBUlhjSHdSSEtpdGI4NldUVXJSOXlIbnhjcmNaenZLU3NRcC9j?=
 =?utf-8?B?WXdTWHNRTTBnL1dyeDZTZ0ZyUUs5NVV2SURzNGtUQ2hxN3lDdm5COVdENHp4?=
 =?utf-8?B?dWx3UzJzMmZIR3ZGT1BiYVJ6bmhNdjg4QTJkYTVZQkZJcTJqSUFQd3k4Znpi?=
 =?utf-8?B?dGJ0UEJWYkswL3BtNU9ZTkw2T3RkckIwMXZ3anFvRUlKTFZST2QzSWhaS2dI?=
 =?utf-8?B?b1BLdjZHdTBKSEh1WEJScVhEVkZKcnlHZlNUTlpqaGNGRllCclJlR3dCeWxP?=
 =?utf-8?B?cUpLVkFYcDFmVnFnNHY5Y2dFOUFmdnpoMnlqMWVxMk1ZQTB5QVZSem43TjA3?=
 =?utf-8?B?K1pwLzJxSDJXVHFmRzZ1WDdyUXpvMHB0YTVueUJxK1pWRU9OSnhsTU05ZEhM?=
 =?utf-8?B?SXV4bUMvV1oyYTF4amJXK0E2SGh1Z2VvNXQ4T1FGWW9mZDlsR1NwQ3czaXp3?=
 =?utf-8?B?Q2o4c3p5QWJ6U2tIQ3VCSGpQS1pvbjNvZm5pNUU2Nkc3R1NndnR2elhHdGpz?=
 =?utf-8?B?eG5jM25NcnRCbUxOdDZxckhuTHYrbUN6VHlYcXUvWVhNckI0V3ZkMGZCZVQ4?=
 =?utf-8?B?Q0I4Um90dktWOXJKOW5aSDZNYm0wdmZqd2VKZm5oZFpHSlorem9udDlUTlBQ?=
 =?utf-8?B?MllTNFJpN3NEdkJoc2IrblQ1NEltanVrZWZPMjkzU0U4MlFUejU4cEZDcU9o?=
 =?utf-8?B?SEZ2SWpIVEFtK0hTN3pIdko4d1pBV1hSaGZZL2Q0Y3ViM0JGTmJwZnB4UjZ6?=
 =?utf-8?B?UE5ldjVNamJOMVJZQjNVV2hTZnFvSmRYODZRZzkxSkM1L2xyZmNsT1NzUDk3?=
 =?utf-8?B?eVV6NzBWaEdVVUlGY2hoUWk0Q1RtZWwwMnVIRE5aVXhKekRXQVlhN2ZncXQz?=
 =?utf-8?B?RGdJZC9Nak05UFVQU2hDdWZsTDRFUzBLQ2ovZ1BZTjJXSml4ck45U0hSMVFw?=
 =?utf-8?B?Rnl3ZUhDRzlYTVJFcVhnU3Qybnh5STJ6KzlPY2dGU2k1bzYrSzhxc0ZXL0VK?=
 =?utf-8?B?SkxGb3ZjSUZqcmZuTVFtLzBHdHFYQnVGZjNOcS9ZK0Z3L3hTT3E3UzRkRTRN?=
 =?utf-8?B?Kzk0a09oWGlCM2NJdGtMMEFnQXZJMlQ4cSt3QmNBMUhnck1MQWVxMzhuOHBn?=
 =?utf-8?B?R2xUcnNrY0J4TUo3dmhwZnJlMEJvek12d2lKWWtTdWd1NnBKaXNKRkkxLzVB?=
 =?utf-8?B?cndVZUVvZ04rWjlwYkVuOWFRZi9aODl1Lzh4a0lCZ0hvQTl4K0RlMjNyMDdL?=
 =?utf-8?B?R2N4MDNJVkRPSnFzUDFBOFNUdS90QjhQR0U5MHFZNHhrdkJPZzIvUllPcFpJ?=
 =?utf-8?B?eE5sT1R1S1dudVJVSlg2N1cxbTVzZGo0UWNOV2hrOWU4SlNyU0hCQUVVdEwv?=
 =?utf-8?B?c0NhcVg5MlZ6aXhFcVk5cUN5M21IaUF4ZlZzMVd4YThuNzlkYSs2eHo5clM2?=
 =?utf-8?B?WHR2eWhZNjM0T2Jlc25aY3ZDKzZzVk84ZE4wVi9EZFlSc25ram5XQUQwbENi?=
 =?utf-8?B?b2REMnhNQlRTQ2FmWTNCUmtxNnhWOWpqdUswNGMva0dWWStvU3VLcW92TGor?=
 =?utf-8?Q?XFA6Lbu5Q/PPNdvQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 04ec5373-160c-4be6-c6d1-08da484b520c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3413.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2022 06:02:36.5631 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vlTHUCIh/Dy9pEdHrw88DdvnhnBLGJtwzsDowZ+jhjgMmRXtuasqEpwq1ScXrSziDvI+pfvbaEPZYX30PxIVcZ2/WrBkHJxCV4ub5YbVVqs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6443
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: Sync VLAN filtering
 features for DVM
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 06.06.2022 20:26, Tony Nguyen wrote:
> 
> 
> On 6/6/2022 12:06 AM, Anatolii Gerasymenko wrote:
>> From: Roman Storozhenko <roman.storozhenko@intel.com>
>>
>> VLAN filtering features, that is C-Tag and S-Tag, in DVM mode must be
>> both enabled or disabled.
>> In case of turning off/on only one of the features, another feature must
>> be turned off/on automatically with issuing an appropriate message to
>> the kernel log.
> 
> This sounds like a bug fix, why not to "net" (with a Fixes)?
> 

You are right. I'll prepare a new patch for "net" with Fixes tag.

>> Signed-off-by: Roman Storozhenko <roman.storozhenko@intel.com>
>> Co-developed-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
>> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> 

Thank you,
Anatolii Gerasymenko
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
