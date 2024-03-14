Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6D987C100
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Mar 2024 17:10:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60C0F60E42;
	Thu, 14 Mar 2024 16:10:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RU5qM_REBk2H; Thu, 14 Mar 2024 16:10:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E91760E4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710432625;
	bh=NmWfAn4Q7l90q+NZxhjjreOqYmBxrRK97JnZDjk8qiU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KNQnBQNqdUH+XVJSeW2qpgI1ZUmn7SufxBZk3Q1vfqapGjvLyqkDTXJ2TNYJqcAXm
	 RGD1zs4qNC8YDeOE4/2ITzC0rdZPQDYwlvmFbrgcRAvMxIr/fYncao7Bg8Pr5fiL8c
	 t2h+6d1FxOdgzQP2+9aDaLXOtZOi1ylsHypnFMOTZbJtKsbLWaeNsNAVVXRdJRbZpU
	 7noyAG6TjmRvOli3LFtxF+tG2IdYSMu89YH/yLDDhTrfTpnc90G0twFrLVGgSh4ztC
	 7rE9yr/VaXpwh2dmza1eyGmL/p88KZrJL/zr6oV0BVA1+vGvRjFfIPI36+unZPvyyE
	 UXwMxk3xWM8xA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E91760E4E;
	Thu, 14 Mar 2024 16:10:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 891CE1BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 16:10:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 730E660E2B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 16:10:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g1RK9IxSJydD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Mar 2024 16:10:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.92.76;
 helo=nam10-bn7-obe.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 420B860E42
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 420B860E42
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2076.outbound.protection.outlook.com [40.107.92.76])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 420B860E42
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 16:10:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dkkObqwr44+14nCiVXlLLA3r6iEme9jNdBLHWBJwF7adxbVOFAvq+S8/6CQBDvvZa7vxSHsruZhfb+vxTSX81KbpEve+Y7IBA5pzE5PWl6i4Bm8H4ZfEU5VolZ0vh+RLnoVyO/9a8vEYhvrKGUZ27eKXuetU8JjH3z6ArMfXDEjx4hbyx/+bJesRls5WNuLT/pZMR2btsjHxqrNwKv/LDmxmH3fg/bd6E1fLminxqFopGPrK+4OXoPy/XjLDou1LGGEGrJKMOCjKCwyWQYwMjMXvcTwZJPG7JKK4ApldJAm5kCdK/wPUO7o39hm7HWGtOZE4eCNYhwNN9SKOxA9FYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NmWfAn4Q7l90q+NZxhjjreOqYmBxrRK97JnZDjk8qiU=;
 b=jX2Tzhc6uof0YPjNP3LbyMoCEpOG5k2tehgeK72Xk8Zoj3D2z588nCWBlQPeBR/KPqRKWj/7XPA/ziS1pCdYYupgPcIQd+IXXFuQMtMZlHhooEveAqKXvNYsOHFkWWNb6OjWqSnKNzMZn7i+c2pswnO1DErECpp9YdnCUWTof+RZTGbquHkbhOTrzA/JHuey5DrckuLWVIzBR05IVIIPVA1qzCcz91uSzpTNhQzCWmXdFXSyiTkWEcRgVvIH7dQwR+z17doBHCaHdRjEuo1/tClw2QR8t8qvrIvEUu4MD00m/N6tz6mp3RGBFo6zOTE6xZooyhVLh2HBpFXqR1zSVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by DS7PR12MB6359.namprd12.prod.outlook.com (2603:10b6:8:94::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.36; Thu, 14 Mar
 2024 16:10:13 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::c325:df95:6683:b429]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::c325:df95:6683:b429%6]) with mapi id 15.20.7362.035; Thu, 14 Mar 2024
 16:10:13 +0000
Message-ID: <4e203331-62f7-44e7-acd9-f684c30662de@amd.com>
Date: Thu, 14 Mar 2024 09:10:10 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Erwan Velu <erwanaliasr1@gmail.com>
References: <20240313090719.33627-2-e.velu@criteo.com>
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20240313090719.33627-2-e.velu@criteo.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0011.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::24) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|DS7PR12MB6359:EE_
X-MS-Office365-Filtering-Correlation-Id: b7918db6-425a-44a6-2997-08dc44413afb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zl8s3uPhCnpK6WxEPSLqXS/nEZNoVndbmrMvia7KtNY46ghMc/RsADLd8sADBV/yWKbgYFziSVCBzOnlofmxpR+y3Zns26KSPNMuF4UtYP23teQDo64D4GR7fIcS83Gd1iZz8f7DcRDn7BtiqhV/PBrDg6cNrXIvtjfDCZ2/RiCuArVpKEtUAJNhtqfAOJVyZCclIV121ePDfG6JzdF/2jqgMkgls3yR/3kBs3r5kuP0th1+k1cXWn7B2CxoT9os5vKSmpn7iu/9/rXHbl7nNXe2Y9zy+axbvhusF3cQy0j2g24lZ4/2M3X5dtnEsxoZqey8gWMQQ6+rvQRq1Yho4y/FP7udJl9ZNbgFlVliAfBSOIeRJ4n3G9XIdJxP/9ES8lPBye5F7jv6bnI3J8cs6mYKFPoIfaLCz9kP2EV0y6LiPOlIM0W5v62qaoZSXJoqQ0le25Pa1QUU/fzkUXcrzDYBTgX3xtBCPaDjkEWj8woEAhv+rnx7Ha56IGJ6fpMbShhHEZ1EmTAX/JGMWvfKZsbCD8obItBTWNhJrMZnOAgYyuU1ty85C3JxQI6qjKuqJFAGXw5m2fO5C7dMJExsTfNhq+jxBDHjn+9YYouIs+Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(7416005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V1VxLzBpZXZlc0FzQ1RxU3hDYi9PRzZxemRETUtPcFJURnA0c3NCQllkQ25k?=
 =?utf-8?B?OFZISkxoMnQwVVZBcloyNEFmZXZ1cUxaWlFkWUJTQXZkZkNBRXdJUGlKeXM5?=
 =?utf-8?B?UTlhc1F2QW9NSGNGaVVxcS9RTjFVTU1MenNjc1EwOS9WL01keXR0OHNEZmRK?=
 =?utf-8?B?dXczekNXVElNTHhHTnA5ZmJKTEd0alFDd21QZDI5SXlKbkxGR1FPWHRiUndJ?=
 =?utf-8?B?TXIwZkw1Zlo5czRwMW1pKzJ3TjRuZ25oL2RPY25QYkszWWN6eFpHdlhxdlJI?=
 =?utf-8?B?R0N5WlpGZlJITEtXWDFxUHJVaWR2RTYxZytPSDNnWHRyV3pobkh4YkxpWXgv?=
 =?utf-8?B?WUFXTWlHcTU3aWRmWEtaTXIwUE5iRXJRNHdrM1JIV296Z0pFTmtvU1BJcENL?=
 =?utf-8?B?Q3JkZnRPSjN4M3FHL2paUjBncDJtcVF4M0kxRGtIU09QTkZRMm1OYzlyVTNI?=
 =?utf-8?B?SHBZTThTNzNreS92dFI1bUlla3U5QnMxcnBsM1pmc2dZV3RHaE1TVWxIOVpp?=
 =?utf-8?B?MVhmZjZBTHVJV3lJMG5MaGZQUHV1azZYY05OUjhyaGxlc2UvQjQ5OENXUzRJ?=
 =?utf-8?B?WFpJQlNoYU9XZllCRU1nVDNCdXVQbmlCYzBmTit1Q0cvNVFYYURnblpOT1V4?=
 =?utf-8?B?bzZlc2hqSzZrYzNRUklmQUdtS3FhNTFSa3RpUmljSDJIYVdDYXkzTVE5cDZl?=
 =?utf-8?B?Z0dJNCtuUHBBOUZEN0dhL2IwZDZCVWJhZ2YxRlhJcHowaGh4YW0yYnB5bnhu?=
 =?utf-8?B?TE1pcjlVMHd6VGF5TU9vdTVPVS9ZNWZMMkRURnJCaTVBbHZDa0EzSW05NklK?=
 =?utf-8?B?T01rMWcvdDdza0pZRThZNjBydEpqYzEwckE5akx6S2pDQ1RLa2xlckJDVmp0?=
 =?utf-8?B?aXNRRXBYL3FIOWpvVEVTQUFmWXBla3IybDFtaEhLSEtjNis2K1lXY214Tjkr?=
 =?utf-8?B?VWM2WGRkMk1PY21Gazd1ZXpkcnBubzRjcXl0M2tiVlVIVUozV0sreFY3NGhK?=
 =?utf-8?B?SjkrU1N4SFk5bVlURGFoQllEaHM4Wk4wYkdibVVTQ2FxeWxXZWlqS2dXM0tT?=
 =?utf-8?B?NHkrdlZnSlZEem5UMXZEaHV1ZGZCSjZrOUZLQjZUYm1jZlc3MlZnbzZBdkZ0?=
 =?utf-8?B?SUlSc2tNS2tIRXVqVU4reC9LRUkvSXh4UUpGTnpLVmg5ZGZrRXU0TzkwcmZn?=
 =?utf-8?B?dHZzTzE4SWJtQS9uMjJrTy9MblFRcGdMWTRJM0paaXNPZVJCcEswS05tRmpv?=
 =?utf-8?B?eW8vanl2TWdjZGxMZGNkYlJHbncyK2w3OVFQd0NpNWQyRFZJOEdVTUhaejF0?=
 =?utf-8?B?VEhHNkxxZWttVW9WdVpxUHlEZm1wemkydFpqZW9XVEUzR3ZweWdHOWd3bHhK?=
 =?utf-8?B?WHBBS2pwakpZRllVU2FSeUhTR3ZTTSs0UnNFTFZJSzRUVlNMUUEyNHpJS0w0?=
 =?utf-8?B?eDVZZGFMTEVvSFNKY3ZSRG9QeXhyOVFMZ2hhZWhTclFLZU84YzFjejBIOU1q?=
 =?utf-8?B?OExWZkJkWk1nRU4yNStDYTlyYWZrNEtwdXN0NHgrYTRrRVlVeFBvSjA2bVFh?=
 =?utf-8?B?bkRGNGlhWTNTcWVkMERGcXdna0lhMnRpb0Y0RGJDS1V3MC90WnBTeEYraVk5?=
 =?utf-8?B?dDh3c01adWllNktQdzhpVjVhNXdKazFJbmZnTXZVMTF2anBDQkxCclNwM0Q3?=
 =?utf-8?B?MW9tZytRQVBHRjArTVVIMm1NZnR5Y3p6WmVoTGFnYTZyVEhLVDRyNUZuM0ww?=
 =?utf-8?B?SUdKMGh1ejljVEhDVDhjNCtVaFQzSmlRREs0a1dLcTk0OE9FaGJLblZkOXIw?=
 =?utf-8?B?YklnSHhSaG1xckx5M0hScXhDWGV1QlI4OVV1aW1lSTRVRjlpRXJEWEJDN0V5?=
 =?utf-8?B?d1JBK3RJYkt6dVBoTURQMlBkR2kwNHFRMkJCRThhM094SHBQbFh6SHkzdWVi?=
 =?utf-8?B?TnR6eXVqMDkyem9ESWxTYkNyK3l2MGJGbTM5TGY0MU8vTDVyS3V1SWlwc0tE?=
 =?utf-8?B?QnI0RHhFM05ueHVhZFRLTzkwWit0dEtSbERGT1NQaHRjZU1JZ2p0Mk9qNGxq?=
 =?utf-8?B?L1hYaTRPdDV0NHZOT28vTWM1T0ZDaG51cHhvRllxLzZvTGVHczV3c3dDWTB0?=
 =?utf-8?Q?E5i3Vmy1/4FAbjc9HYTPwkHdd?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7918db6-425a-44a6-2997-08dc44413afb
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 16:10:13.4218 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xu7cSPcqT107BRC7IOppSFhpYciNdx5wRFdVr8eUwOCkbrCI1me1ksRYbDIQIJtAoEqdnID2iz6OYOE+aJw86w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB6359
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NmWfAn4Q7l90q+NZxhjjreOqYmBxrRK97JnZDjk8qiU=;
 b=uJJdD+PLlTDF/QuLVJdNQ9DmQKA3tuJ1yB5RqNhP+W69iNm67oUCf7faHk8FLTeMfZtZ7hxx8B0vhG+NcJxGyzH5QnzqKVHtPBvFydUYvypc/8pN3K/92eRgUO5j4iFpXBhYBYamFkKd34042QeGYOjhK/rI9zelGREu2XjS5mU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=uJJdD+PL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-net] i40e: Prevent setting MTU
 if greater than MFS
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
Cc: Erwan Velu <e.velu@criteo.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/13/2024 2:07 AM, Erwan Velu wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> Commit 6871a7de705 ("[intelxl] Use admin queue to set port MAC address
> and maximum frame size") from iPXE project set the MFS to 0x600 = 1536.
> See https://github.com/ipxe/ipxe/commit/6871a7de705
> 
> At boot time the i40e driver complains about it with
> the following message but continues.
> 
>          MFS for port 1 has been set below the default: 600
> 
> If the MTU size is increased, the driver accepts it but large packets will
> not be processed by the firmware generating tx_errors. The issue is pretty
> silent for users. i.e doing TCP in such context will generates lots of
> retransmissions until the proper window size (below 1500) will be used.
> 
> To fix this case, it would have been ideal to increase the MFS,
> via i40e_aqc_opc_set_mac_config, incoming patch will take care of it.
> 
> At least, commit prevents setting up an MTU greater than the current MFS.
> It will avoid being in the position of having an MTU set to 9000 on the
> netdev with a firmware refusing packets larger than 1536.
> 
> A typical trace looks like:
> [  377.548696] i40e 0000:5d:00.0 eno5: Error changing mtu to 9000, Max is 1500. MFS is too small.
> 
> Signed-off-by: Erwan Velu <e.velu@criteo.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 10 +++++++++-
>   1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index f86578857e8a..85ecf2f3de18 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -2946,7 +2946,7 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
>          struct i40e_netdev_priv *np = netdev_priv(netdev);
>          struct i40e_vsi *vsi = np->vsi;
>          struct i40e_pf *pf = vsi->back;
> -       int frame_size;
> +       int frame_size, mfs, max_mtu;
> 
>          frame_size = i40e_max_vsi_frame_size(vsi, vsi->xdp_prog);
>          if (new_mtu > frame_size - I40E_PACKET_HDR_PAD) {
> @@ -2955,6 +2955,14 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
>                  return -EINVAL;
>          }
> 
> +       mfs = pf->hw.phy.link_info.max_frame_size;
> +       max_mtu = mfs - I40E_PACKET_HDR_PAD;

If this is how the max_mtu is determined, does it make sense to set this 
before registering the netdev, i.e. netdev->max_mtu in i40e_config_netdev()?

Thanks,

Brett

> +       if (new_mtu > max_mtu) {
> +               netdev_err(netdev, "Error changing mtu to %d, Max is %d. MFS is too small.\n",
> +                          new_mtu, max_mtu);
> +               return -EINVAL;
> +       }
> +
>          netdev_dbg(netdev, "changing MTU from %d to %d\n",
>                     netdev->mtu, new_mtu);
>          netdev->mtu = new_mtu;
> --
> 2.44.0
> 
> 
