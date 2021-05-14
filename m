Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47505381444
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 May 2021 01:31:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D04B41885;
	Fri, 14 May 2021 23:31:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NyjpdQ4LrF3M; Fri, 14 May 2021 23:31:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05C4741883;
	Fri, 14 May 2021 23:31:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A72E1BF300
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 23:31:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4FB6C83CC2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 23:31:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=windriversystems.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kw2AVKMniJPi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 May 2021 23:31:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2063.outbound.protection.outlook.com [40.107.93.63])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E41D783CB9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 23:31:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eBikhMniAq2/5rgsY0LWlBRCbEvt160zwI4l+KEzoRRHutpyUVhBQJTWyAPJbo6MTUwj67ClhR5A1BPtHbfpOOnOal3j6HVmZwRCiVR2IGkTzQUhCrrZHyGFI4JqxkoeJ5lc0WEvoomewAIbxn6iFMa/ymqCWb9jZ3o8CMXSkZugR9cjiXdNpwd0sDNQPzGVu+ooRveTf0D+5wCyZIBr/Z87uM+SRuRgS/zdJea1Xg/zWlTGkjGmT0aDOXwdiqz7KeGpIF5XeEv3B7HVoTbhRnk37OmqUTzYKuoQvq+Jvv5bdz95bg471L7wS8cpDrdEtVrcfzyoD4e2uLCzKzU+Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/3FRwVDyPdmp9pRT9eipj9CkGPwhvR/jJAxWWWBYrjA=;
 b=WCTqfRhrDia6mIMnVK5sEZGoDmmueG2iZ++RsKrogQKgHYhUyREgHdZE6K+8xDg38BhlcuC3I3sbiqhKRcQU51e6g2Hbn1OGQ1SwfDvZV39N2a1u+1fG2N1jGOpOphl6JwXxiD+u7g0pCTuk1BvjR14GwY0O4+jlyw4CEuZk2TQyN+kvsFwSaQWmAJBOGFfGg3/k7D2I8sXnCGm50jjYbPF51/MUiVs8cwjGWULNKhGBJPs+nmZwNGXGZ9vi8n2Nvx2ym7548xfcvFvKoqlW2juGcFF1E38uy+ZSjZGF58uFYKl5beeR+hm+awHlKXlFM6eTO87/pi63B3oUY3J7gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/3FRwVDyPdmp9pRT9eipj9CkGPwhvR/jJAxWWWBYrjA=;
 b=DAj5fzZAny3Twn+q5u/U81vtzQm/Yq9y0ERfaM+vCPjr0AE+bNp27wgBYJHQiiM3uFUBV4LbgiqYEb7M+DPKUgiPk2ktxKUayZ+aUr9NIQKffl4wSaL7QEFGnxrUzg/VNYu/TfdDOigAipfQJNbib9NoAsm8A2LNvYnbfhvmqCM=
Authentication-Results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none;lists.osuosl.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SJ0PR11MB5120.namprd11.prod.outlook.com (2603:10b6:a03:2d1::13)
 by BYAPR11MB2744.namprd11.prod.outlook.com (2603:10b6:a02:c8::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Fri, 14 May
 2021 23:31:28 +0000
Received: from SJ0PR11MB5120.namprd11.prod.outlook.com
 ([fe80::c7e:f5d1:d21f:ce63]) by SJ0PR11MB5120.namprd11.prod.outlook.com
 ([fe80::c7e:f5d1:d21f:ce63%7]) with mapi id 15.20.4129.028; Fri, 14 May 2021
 23:31:28 +0000
To: intel-wired-lan@lists.osuosl.org
From: Chris Friesen <chris.friesen@windriver.com>
Message-ID: <8dc41fcb-c4ca-e8f4-be66-5d6f08adea59@windriver.com>
Date: Fri, 14 May 2021 17:31:25 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.1
Content-Language: en-US
X-Originating-IP: [70.64.120.181]
X-ClientProxiedBy: BYAPR03CA0031.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::44) To SJ0PR11MB5120.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.39.7] (70.64.120.181) by
 BYAPR03CA0031.namprd03.prod.outlook.com (2603:10b6:a02:a8::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4108.25 via Frontend Transport; Fri, 14 May 2021 23:31:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2a9fc4c5-4258-4d5c-a75f-08d9173065aa
X-MS-TrafficTypeDiagnostic: BYAPR11MB2744:
X-Microsoft-Antispam-PRVS: <BYAPR11MB2744DA6234DBE72B52084356F6509@BYAPR11MB2744.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vRH5AzJiLOSyx/smzCe+V1vmDEDEA0sxstwYr/kBzVV9SdJRn7UDuAOkQKrGdHwQ453be+Ep2A2bqlXiDIU84FUTpxeY2e+2411ixdte/0IZKkcKAlMLnGCrUu6Z45NU95bbsaLovNCx+87C7NU97vaOBhrQSvtScFx6jqrlWvZcn+WvhErHX022p0Nww4MMAecenFpH3xLIcH/esl5P/a0FN6nnfMbXCDQLuVurvXKMovvT8VvpOOBmc8n7tSOxh6h0dy/ZJDsZVJLzbI/U4KIWFUZWAjPirJsCzjgiFH/jlL5vn1YKg0MYGSACt5Jevmdyyaa6QGkgvfhJcQZWEGrtjITYOqULZVll+FDxnva65NHoCDwbmE7kw1XI8OBYmqTAZO/vFGRnqzUHTV7z6AYrMVFbChM1TWA8RlQzO8dKYB+raY+c9gxNzL+mYui//k6uvrEn6ltLHuJxT5sbjHnYt3q91VevjlYB/A0FMAdfuXMIkpm19HXsApz7x3rBgPWlflWCANXLlZo542tmj/Y80eGaaV/geTpEoqnFP6QWbVmBVf/C02ToXy4pgT7cCtauwTwfXYXg29stLGeOhmreBYkWs3OC6uM/Kh+Wp6MFuy4E7Q4Ku73hY4RUL3J4nC4GRevuF0DBA2JZqyIPrCEbvwrCyuQRbzhrcy/NPcazymkhJI0TwTqIqwog6XagrH5VF1xnrvn+fJdTCtynvJGANayH8vACdPKu4IfyswZDSTeL1MpC0QTZ847g/9OA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5120.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(396003)(136003)(376002)(39840400004)(366004)(6916009)(478600001)(2616005)(6486002)(26005)(31686004)(66556008)(8676002)(66946007)(31696002)(16576012)(8936002)(38350700002)(5660300002)(2906002)(44832011)(83380400001)(956004)(66476007)(36756003)(316002)(16526019)(52116002)(3480700007)(38100700002)(186003)(86362001)(21314003)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?eTJWQWVDMlFNUWd1TitIWXlnK1JuZ2EyOGZqWjFHUFdWUXpKclp2QVNQcnRK?=
 =?utf-8?B?QksyS0oyQkY3MU5VRGpQRjYwQ3ovSHdTL1pZSzVjek53bkJtcGY5THMzZlo0?=
 =?utf-8?B?bXMwNytOM0tXT3NlVy9GUGdtNGJSSjVBTUc0MWVBRWlNYkhqemduZkd2Z2ps?=
 =?utf-8?B?cFdDcVRjWU1NNnhyaStFN25Pa0RRaG1FdnBvQVVJMTlrT0hVZno5Ti9wNGEv?=
 =?utf-8?B?TkZjSjBoK3ZQelkxSlhXVEk3QUE3TU9qY0hOTkRVRWJPN2ZYRldwK25DQXRq?=
 =?utf-8?B?OXNQRDRDQkdBbFhhUCt5bGVQS294Rk1Ec2FsOGVLbDJZQ3NOWng5TU8wMnlG?=
 =?utf-8?B?TTRsdVhrY3B4RmVkb2VIY3dNL2s4NUcyQXZrZzZLNFpWZ21RcDhMVnJtdnhx?=
 =?utf-8?B?UDhNUEYwMGY3Rkc0c2hoaGFabWx6a0dscTVvMHhBQU9PNWlEeXhYOXdtM01K?=
 =?utf-8?B?Q2NHOVFTdFB5YlUyOTY3dTJPb1k1WEd1OVlaOElVUTl0SmFkbTZKYUltRDAw?=
 =?utf-8?B?c3p6cERab1R0Wm0vN2d0YjhIeWhQRFRSajlOM0M3S1FzTUFCbXNsWmphRGVB?=
 =?utf-8?B?b2NFWjVwS1JBVjJ6bDlvUkhjYjB4aGp1Z2ZYMldkSFhMdjZWOTFqUmhWTWkx?=
 =?utf-8?B?a2RLZnZGTWlFWE0wMS9aeU5DaEo0WHBXMFBoMU85V2NWd29MdjdJZWpQUEFw?=
 =?utf-8?B?SUNkd0paTEtBaThBbjl6aUhJbVVWdExQZnNZWDQ4bzRYa1p1ZFNCaWlLSFpN?=
 =?utf-8?B?MTNFSVNNS0p5Q1VVQndXN3NOUmp1T2VLdXNXZHBMUXcxYUJDclJVdUU2Rjdz?=
 =?utf-8?B?Z00xMXMrQTV0RWFMKy9LbngzazBLd3NXbEJCcWZ3eDVTVW9aRVd6NkRkNkVM?=
 =?utf-8?B?SWpxM1J2R0hLY2RZVC91dUUrVTBZbGRxOXV2ZDZFYUpwNVd2Z1NUZFFvTGkv?=
 =?utf-8?B?VFZzSkFEbzhUczBaRzl5dTBsR2RMVk1wcVhvemRiV002N3dRN3M3UVFTRDJP?=
 =?utf-8?B?K2pjeGFtSXJZNTVncW1sODYrUG5YaittK1NvMys2ZTlPRHU3bGJzdXY1ZEF1?=
 =?utf-8?B?UCtEdzVBbkxtb21BcUtMblMwUjluWG9EZ0NXeXYrTkpxZWZlNmpNN0Vxbjlr?=
 =?utf-8?B?Mi8rSmo4ZnozQzNibmo5VWVPdHZqSkVsL0ZGK2JrK1VOTUNpUFJDUkZYQmR3?=
 =?utf-8?B?bWVqS0dJT1d1UlQ4MFdsTUZnVHg4cTJJYkJsUSs2NVhKNUE0eExJMXd2VDhR?=
 =?utf-8?B?bklZWXdiVkdUSWsrQWc1WTJvSUZ4VEVpY0djaVZEczZ0UHdVR2hkUG4yUU83?=
 =?utf-8?B?Q1N5MXkwcDNMMkE1ZXdyaUtQTFZWQnpTQ2RRQm4xSXdvbDRjekVEM0lGd29I?=
 =?utf-8?B?WTdCd1M4Y1d2QWZ2UFhoVlFxakY2K3NsbnBPbVRKSk1xY0hNSjhtZnFLTlJP?=
 =?utf-8?B?aXNQSll4MmMvUnlzRDgrdmtLOFNadzBhY1BNRnNGdTlRREVkYXk0NzVSZ3A5?=
 =?utf-8?B?MjcwTGVrbzJQSEdtM3B3UENnZ3YwNmg4UnRjVlFEaEpyQlJRQnV2UkZxeklq?=
 =?utf-8?B?OWZQTERyTXJubThCeW9rWXI2d3E4ZWN4M2l4N21hZFA4R0hHZ1NtaU5EQ1JY?=
 =?utf-8?B?NHRBWFBQYWU0b0tIb1pLT1ZNeWkybjVxUWxFd1JWMUF1WEQvbXU0RytrNW5v?=
 =?utf-8?B?Qy9TOWNhU2xYNTB3SVIzUWN6c1pBQW53WGphQktyVDNocmMwcWU5b2hSa0pF?=
 =?utf-8?Q?N+CYCL4I3F6z9ydfioeEJNxjoWtkDcJE5+RuJFj?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a9fc4c5-4258-4d5c-a75f-08d9173065aa
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5120.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2021 23:31:28.2372 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SvPm9UP3BFgnengz+54BULNvLxgLeXIOjVUdqoS5OncXpXwXSX52OHFvef+/2nkZhxSF7CSXwp57aaSHD2jybb2onVGIRP3KkuhxFxgMwsc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2744
Subject: [Intel-wired-lan] interrupt mitigation on iavf?
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

Hi,

I'm using iavf 4.0.1 and i40e 2.14.13 on a CentOS 7 RT kernel.  I have 
traffic coming in at a total of 150K packets/sec (64-byte packets) over 
two devices, each with multiple VFs.  I have kernel bridging enabled 
between the two VFs, and I'm seeing relatively high CPU consumption in 
the  "irq/XXX-iavf-ne" threads.  ( I assume these are the threads 
corresponding to the "iavf-netX-TxRx-X" interrupts that show up in 
/proc/interrupts.)

This is in the context of a Kubernetes environment, where we're passing 
through the VFs into a container via the SRIOV device plugin for Kubernetes.

By default, we were seeing one iavf interrupt per packet.  Given that 
"adaptive rx" and "adaptive tx" were both on, this seems wrong.

Within the container I see the VFs as "net1" and "net2", and I can use 
"ethtool -C" to set the coalescing parameters.  I can also see them 
outside of Kubernetes if I run the ethtool command using the appropriate 
network namespace.  (ip netns exec <namespace> ethtool -C net1 ....)

Given the above, I have a few questions.

1) Is hardware adaptive interrupt rate limiting working on iavf?  It 
seemed to be ineffective as I originally got one interrupt per packet.

2) Isn't the kernel itself supposed to do interrupt rate limiting via 
iavf_napi_poll()?  Or is that not effective when there are eight 
interrupts in play?

3) Is there any way to set the coalescing parameters on the VFs of the 
original PF in the root namespace?  Or do I need to operate on the linux 
network device corresponding to the VF (via the alternate namespace or 
from the container)?

4) Even with interrupt rates turned way down in ethtool 
(rx-usecs/tx-usecs of 8000), at 150K packets per second I'm still seeing 
about 3% CPU usage in each of 8 "irq/XXX-iavf-ne" threads.  Doubling the 
interrupt rates doesn't really change the CPU usage so I'm wondering if 
this is the actual packet processing cost for the bridging?

Thanks!
Chris
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
