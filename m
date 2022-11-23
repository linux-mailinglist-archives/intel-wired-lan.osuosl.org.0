Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3A86365DD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Nov 2022 17:32:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71E2B60B12;
	Wed, 23 Nov 2022 16:32:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71E2B60B12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669221140;
	bh=W0MfsNk5YxKsGXbqo+CsTAl6s42YY9PKReZ6QAoOEMI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ru2QpWlzUDMVgSuDGUIG7lWcaewHKgEhMpf9KFuFpB4tqlAhKqKkVopWOgncHk3WD
	 DpquYA4eIC3OhCXlXurIUbN3xIX2JqpM6WZpezq9M0uWAwWZiFGE4gnzrUl3DOFFV0
	 A/rCN2brqF02AUsHPndpn+zLhEhChK6ULxsmuqipvAOBw7O0vJYQgenq8z9y/NylPZ
	 CmiY/1mMBH68QU02F88VWH8eIk3ui/pOI1yANIJ33KHCSX9Z1QUxnxeuCQj84eUu2q
	 bf98ecXcXnuVL4DIZZK6xU+eyDemGeXr6zFcXBpQcOHY3PGXzV5GMygciyX9EL+lrW
	 VVjhf9JsTA23Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cV8iWOlVYugK; Wed, 23 Nov 2022 16:32:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 85B5A60ADB;
	Wed, 23 Nov 2022 16:32:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85B5A60ADB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C9E881BF85D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 10:24:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A1C96419BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 10:24:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1C96419BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TtffTgMyc2Hd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Nov 2022 10:24:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EF4841966
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60105.outbound.protection.outlook.com [40.107.6.105])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3EF4841966
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 10:24:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RqbWHQdSqvh4qp81JwQemo/nkj9+KQPZViTI5nGHrmnVjR/UyaVoIOf89pOPk7n/oyFF+yh8m9dniW4ScXcadgkL/vZqku6HPRmVWd1VizuaaD2qjQKJHPgg/HDTabcdQNGMSxqOwXPGeCeRZM1tFeCWxpSWO4j2G9Jnulb8g/R9ZsW/8aPWOkzmMtP746EqexyMo+SM2WaK8wsZ6Fasg3lbyWSms0hi5wTWUVqn5xdObKQYwy5DuegmXwYvrOR20xByOHqcdpAAI0UQSRvZ+RUR7iu2CGm97NsgX5/19vqf5jggStb569HMm4sIPfibr/ma5pXTD1xD5d9U9l83vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=djzJw/f/PB6DjwElBNA6Hsv0oBoPg3GPBMBohoLIImU=;
 b=WUsSFO37s/388KHfMwzh08/MN2vWjYMDCx1zN6OeaFPGotVViFout40V87Wbfw+XadPyMgtkAekErkLyV/ocG0FiaEuRQy1XXcE1/33oXaoFphkOFWCU/+/A9TkvpC5djb1p5WT38RNyoYXmyeK2cBf6H9O11J2En/bUxyyQxPymL5QGX2LnnoSQAVFlQBc+fY936wU6jTD1U718IxsU41OeDu7JhLWTs2W3wlqnQZpCd9H0U4Ir14HlpaMqQLKw7yfU4Jy8S3C08g6YdC3hnwmcL3BZPPuyb8DLbsswz5cRQ6JWYp1xSlWIPkiTODj630faUZHoucdSdSIV2qLQsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=asocscloud.com; dmarc=pass action=none
 header.from=asocscloud.com; dkim=pass header.d=asocscloud.com; arc=none
Received: from DB8PR10MB3925.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:149::8)
 by GV2PR10MB6282.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:74::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Wed, 23 Nov
 2022 10:24:14 +0000
Received: from DB8PR10MB3925.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::617b:7d03:57bb:6015]) by DB8PR10MB3925.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::617b:7d03:57bb:6015%6]) with mapi id 15.20.5834.015; Wed, 23 Nov 2022
 10:24:13 +0000
Message-ID: <9abb824b-8f93-a5f7-20be-b68f89048c57@asocscloud.com>
Date: Wed, 23 Nov 2022 12:24:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
References: <48e8a46e-2c74-22be-e95b-dd0d67ea2012@asocscloud.com>
 <67a58924-5c39-8d36-cb3a-0c90cf1c48be@intel.com>
From: Leonid Bloch <leonidb@asocscloud.com>
In-Reply-To: <67a58924-5c39-8d36-cb3a-0c90cf1c48be@intel.com>
X-ClientProxiedBy: FR3P281CA0162.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a2::14) To DB8PR10MB3925.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:10:149::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB8PR10MB3925:EE_|GV2PR10MB6282:EE_
X-MS-Office365-Filtering-Correlation-Id: b54c3e97-3157-4ce7-7bb2-08dacd3cde17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fzZsHBFSFOjUT59ZyKMNTeM9lq9i72LQWvh4o1aUVnB4RgrHBeG+DNDlEyONmUSAO07WqfgVd+pAp+GWpHn/n/aBuvXabMNj6woFy+9d/+0pNOK1VnB5N5zMfgiD7exyNw1rhRJEBUKxPwqTuPSE1a+FrqMMHgFKSNx+tPJ+Qa/p8am+mZEoqA2STOg9inMvlOdpiqAZY3TP/binbea1+kORYo3F10x5dy+GvObV6WZOMUmVjwZgFn5n5yX/5xQH2SRp5x6CxIueGxwcNQADlomy5wIrLRDETRDQcMy5Tsmtvp/PoJjRNo+AsftnQdanw6dpbqg1v+kxtO2YS88qkyeV7nxFz18Pc49nMwhLmim7u7s8bGJpqe0in+6ziLt7uvjNNbfmHCcn2wf3GfS0YQq1ZFtfN9p0M4hZ4adq/lElo5+9qCXVq6KGJjQ5dkueW6Wda2tG6gGvhxnJLHLMgq+oJRmu4+MrO6iZnzXaxc0XMHCvCef+zf0A4qws9zHqlE3nHR8rENfukZpz1pi0u77qH7WU0SdwbgyJGSEeRfVQbGy33dJf8cFedJ6cFivKhYYvBNVY5B+A20oVurLCz1sOLeqvgNxCkQukSuNBgt6z4IxUAIGMrJqvVM2FUwWELWUiUeqENQoUQ0ox2LKB4vKpeTdc5946YCWfrFNXCGGM0W0vfbfyPpy46xnHTIEDjpmgT69cCBK20ueqUAcJ71MAix7bRDDFHW9QOLFd6qGGRSaIx2e+t5cWvm2g6XyM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR10MB3925.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(366004)(396003)(346002)(376002)(39840400004)(136003)(451199015)(31686004)(2906002)(4744005)(38100700002)(36756003)(478600001)(31696002)(6506007)(316002)(2616005)(8936002)(6512007)(5660300002)(26005)(53546011)(186003)(4326008)(6486002)(66476007)(8676002)(66556008)(66946007)(41300700001)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V1J4Y2FCYmN6VXBNejNyOTVzbHVoU2dsa28yM2F6ZktCZUJHcGxUSEpqWHkw?=
 =?utf-8?B?MXpHaXVOK0wvdnRVbHZUTy8vdHR3Y0hlamdlZmlvQ2ZXaWVCMUhTTTIraUxK?=
 =?utf-8?B?Tk91eWRlbnVpL1ZmRWQvcjhUakVOQnkvNGZUQjUxRWR4cjZQNjZjTlVjR045?=
 =?utf-8?B?NzQwWXlMMDlVOHBhN2ZtN0ZaMkxQY0IyMSt3MUZQbXh1aUdFL29qc2hKVFQy?=
 =?utf-8?B?Ym5LTGZLTzZmWDg4L1UyRlFDbVFUYnMybzhTYU82MzMvUG95U1hod1A3NUg3?=
 =?utf-8?B?OFI4TlNqQnRQczVLRFF5MWpUT080MURib1JOMUtqZXVXcGxVOENHTkNqK21S?=
 =?utf-8?B?Z3RCbWV3T25CNXhxNW9KUWNBMnpNa1R4MkxpNGNoVExpK3NWOVFQS0RSMDcw?=
 =?utf-8?B?MlJNY1lha0ZMSGQzQmtWMzN6K1ZiZmd6SXM5bFl3eVo3MXBnRnVLMlpFQ2lx?=
 =?utf-8?B?MjlvM3c4eXEvc0ZaRWtXZ2VwcWJEY3p2bzVHNkxySk0zOEkvWFdYdnVrNENn?=
 =?utf-8?B?N0R0eFFxUXZsTjQxa0RCbG1lWmVESTM2MFBVaE1UaERlSm5DT3A3TDBJdVhw?=
 =?utf-8?B?b2FCVlpKNlI1OGJIWHZjeGRYbUlzNlJxMmR0VDg2ZDBMQ1BjS0M0ZU5aUHZD?=
 =?utf-8?B?M1c0OEZyZzBxNmdTamVKaWlWYk1Ud2RGeHhSb2poRGFJOVB2TjErREZJdVNR?=
 =?utf-8?B?em54OFh5ckhmTE5WTWprTU0zVDI1cktJaW5ZM0c0RDNzOEYrUERFYi9vV2J3?=
 =?utf-8?B?QXB2RkxJVDV5QndKMU90WGNaSEJSMkZoYkJpZTJVbWc2Z2tGWXlVZVlabFJj?=
 =?utf-8?B?eHI3MElzL3ZtM05Xb3F2cnBEempZYnlBQklFQVM2bFg2UXpIc1RlUkJPMjJJ?=
 =?utf-8?B?aEp3emN2NlVtYmIzQytVblpVa3pxeUltY09BTHNERVFDblNJeXJOcG4yV2FI?=
 =?utf-8?B?dXlzaXFOS1k1VTlaeEV6MlA1dUJNbFZKYk5CeTAyOEowSmVzcVZtelpZKzdH?=
 =?utf-8?B?emluSEcxKzdFZnZEbVFsRGx0N3RiMDRXaVFJcVVTUytQR2xwejhJc2dRMmVJ?=
 =?utf-8?B?MUFmM2x6T1daMUllenhBM0xJc1pNSGFqeUVDRXJWb2xtZ3N0YXVaY09aL2lB?=
 =?utf-8?B?a2NMeUZycmZ2aGVSWEFVUjhKbFlnWmswVVhYQVhwQVY2MHg4bkU3RjFJbXVJ?=
 =?utf-8?B?ZnMwRFNUVmEvQlpYUWY1b09DODlVRDkzdjVXT054Slo3SkxVTU5lT0QwbG9x?=
 =?utf-8?B?K1VCaFlqQlU5N1l2SzFrc2h2RTlzY2JxSUR2dzFKZWJ6K2RySmZWYlZSMUg2?=
 =?utf-8?B?R3ZzM2JCcFV0R3lmZ01xSnhMbWV3WWFvZ0kzMmhNM0o3TVNNdS9ESjFjN2Jw?=
 =?utf-8?B?KzRtRzFKOGlnalFhVjRMSG1PUEVWSFd6SnpucDZoNHg3c0lxVExDWCtKSEc4?=
 =?utf-8?B?NkNWdVJ3aEJoNkc4ZTlBMFFoRjRZS21MamMrSzM2MEkvL2I1cXJ6MHhXNUNr?=
 =?utf-8?B?VW5Ed3BSQzJ5L1VucisxRWhXTFRUVytKcTk3em5UWEZ4NzJqRDFyVXJmL0Zs?=
 =?utf-8?B?eExxb3ZKOEd0QXFkbVgzUEZzNjd0OTdZM0d2UGl1dmpWNVE4K2dCZWpHR2Jl?=
 =?utf-8?B?NmRyVjRZZzlFYm56NXg1UXF0RDA5U1pkNG04YUthbDFJQjRTcDBXeXdOVUI2?=
 =?utf-8?B?TGljYXY4WEthR3U3RlVMMFI5bnZEVGt2Ym9DOHlld3lvS1VYV1ZLSngybUQ1?=
 =?utf-8?B?a0tySTB4MHNZTittdU01UWg1UTVwWWRRRkgwS0M0aW9qK1B3WEJlOGpkMDBz?=
 =?utf-8?B?RGlJeDVTTlV0bEZWeVcwRlAxRGs2ZzVqWmMxeVB3THNGcmpmNXNaSjdqc1J0?=
 =?utf-8?B?dVR1VEhmZERhMCtTZzRCVE5sTEFzK212QzJqUXVKcFFnU0ZnUGNoS0liTHFp?=
 =?utf-8?B?RU5qSjZzSDY0ZG9CejdZNGxRK1hqaHB5ZEdjRnVGVjdZdiszbFI4VDFSYXpx?=
 =?utf-8?B?YktiT05NWUg4WFZGNVRPZ3FlZjNVanMyMmEyTm41ZlkrNVh5YjZSUkx6UjJ4?=
 =?utf-8?B?ZThQaC9sNlVOLyt1cFhseEdEMnF0TW5ZZktvbG1MV3UzTVUvQjI4VmZDbHF0?=
 =?utf-8?Q?4wZLfdsNpfPJ5kIkH8M1y4h42?=
X-OriginatorOrg: asocscloud.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b54c3e97-3157-4ce7-7bb2-08dacd3cde17
X-MS-Exchange-CrossTenant-AuthSource: DB8PR10MB3925.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2022 10:24:13.7908 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 09a71e5b-e130-419f-bde2-1e8422f00aaa
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yzgCKEkrrzCBZaG/n5/Hg/q9ipnnzGHsiMTuNbjrm/0+G2TjVxQKk0rLt8w/MhuA6E5AeyCmkBeskX1sGUj7yA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR10MB6282
X-Mailman-Approved-At: Wed, 23 Nov 2022 16:32:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Asocs.onmicrosoft.com; 
 s=selector2-Asocs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=djzJw/f/PB6DjwElBNA6Hsv0oBoPg3GPBMBohoLIImU=;
 b=qxvfTYLTfih2piDw2NDn/++RK/e3tOEX6aVsxFhsfq8gJIvfahJOcf4dPFMeeQYwT4cvXc6UMTEu/EEX8FwNlG2L7ZHeaNTgZIbWnQC8gLfpczsYPhoOmNxdgXYoQFQoDMsfp9c6LAa+HZtRwQjLYjpsNrqdnegS424qmZna8PE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=Asocs.onmicrosoft.com
 header.i=@Asocs.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-Asocs-onmicrosoft-com header.b=qxvfTYLT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=asocscloud.com;
Subject: Re: [Intel-wired-lan] PTP hardware timestamping on E810 VF
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

On 11/23/22 01:03, Tony Nguyen wrote:
> Hi Leonid,
> 
> On 11/16/2022 6:39 AM, Leonid Bloch wrote:
>> Hi,
>>
>> I wonder how can I enable PTP HW timestamping on E810 *VF*. It is 
>> supported on the PF, but looks like not on the VF. At the same time, 
>> ESXi manual says that it is supported on VFs as well 
>> (https://docs.vmware.com/en/VMware-Telco-Cloud-Automation/2.1.1/com.vmware.tca.userguide/GUID-57C099A3-78E7-4B94-BF54-AD0D6C2EF175.html)
>>
>> Is it supported only on ESXi, but not on Linux? Any ideas?
> That's correct, there's VF support on ESXi but nothing for in-kernel 
> Linux. I did pass this question on to the team though to let them know 
> there is interest in it.

Thanks, Tony. Indeed there is an interest.

Leonid.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
