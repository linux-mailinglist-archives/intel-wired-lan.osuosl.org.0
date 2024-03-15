Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4697187D116
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Mar 2024 17:19:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E87168211C;
	Fri, 15 Mar 2024 16:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IlvvxYT9ypKL; Fri, 15 Mar 2024 16:19:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C79780D9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710519580;
	bh=t0ONWWbqSIvr0UJ118UiRTyVMmp5hWTD23bPXGikePE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eg9brvMic/jmIHb+PKetmQ8ov5gj7yCR2QtKi979IvIINUvXyzH2Ego0VRQVz8e+w
	 baq9xCsaK8P6vTb5K97MdzIFKKA7xW6UNyTdFFbIJAFkHsBh0V+YnPQfRG2+AlcJP9
	 +1J3aKohh58hFUvnHF/COEhmO7VO40RjcQhg79/78jaVbQ20oZnwQtZbtcJyXNwaTV
	 t9+iUUw5pP05Nve3wTwIsqrqRUqlv+PcsduyTAq6DK6nq0Cz9q/23hLLwkUElxeXGM
	 Vdfra2G1vRHHA31eTRd3Yk1mk8fj4GVi0332wxh4yOpsVPmptWXY1hr17fHD0nEoCd
	 h0ZDLm+GdMpIA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C79780D9A;
	Fri, 15 Mar 2024 16:19:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 02E431BF345
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 16:19:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E2C7360EE0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 16:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lhc_2InCfs01 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Mar 2024 16:19:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.244.69;
 helo=nam12-mw2-obe.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 296AC60EDC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 296AC60EDC
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2069.outbound.protection.outlook.com [40.107.244.69])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 296AC60EDC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 16:19:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JQ+A/hKUVqM02aKCYt3YzK+7K/Ya5sOzutbEhSB0r/vDT6Lk6YFtTlWk8fOr+iw9uqcrgnKBsIVJH6Ou+V3TKnb6zMw8Yu1rTvntvdywgCojpCdepUFkQWOHKKMJg37NE1jlkwvV6zIZTjxvrz0feFwbSNsmZvArZXoPteHe0c2IR0PjPuSsnPC5WLQNFR5o0s6RIPinaIU3R0FNoP+oz40IGCberetMvN6Du79VE0sXHw29n+Kbdg8tuxGakBiPewNwFi3h5F+9pkpoMHa6sawiSxrNkZYEAdhrzfNh/wBW1TuMIthdBoYddSmzOsEZNof4FmxHzhKaInPiP5sfXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t0ONWWbqSIvr0UJ118UiRTyVMmp5hWTD23bPXGikePE=;
 b=X0eB4WB99+ji/lZzQAIe7DGq7KzT5WYIa3Xa8BsGcyxQOPjGcMKWA4z7tT1lOctGtgZlRzB4vs7azVeUp7TbJyrAycu2s3lClCopOwnBndLRCDzWE3w+W+tk8dIhjMYr/TljO9ZONwpsbu+YKRCjXR7MljgOzAkbIWb9PSGRc0/lDPAsa87clZeMtfi/wXODdC3Htbg2NIHW8d/GS5YB/rcWfkaTiNr41jyjkozoj7+zsPNQ1bSZ/Tl/b0XTYjzo+yNYCkYB4jpk1YYqrWnQtc27PwPE893ffJYwm317Zf1J282gzerMn+QVml2pBOWvJ0mamfdao+kyXlSevhxDwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by DM4PR12MB7693.namprd12.prod.outlook.com (2603:10b6:8:103::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.36; Fri, 15 Mar
 2024 16:19:24 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::c325:df95:6683:b429]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::c325:df95:6683:b429%6]) with mapi id 15.20.7362.035; Fri, 15 Mar 2024
 16:19:24 +0000
Message-ID: <3802fb51-c419-4b8a-95a1-da605493505d@amd.com>
Date: Fri, 15 Mar 2024 09:19:22 -0700
User-Agent: Mozilla Thunderbird
To: Erwan Velu <e.velu@criteo.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Erwan Velu <erwanaliasr1@gmail.com>
References: <20240313090719.33627-2-e.velu@criteo.com>
 <4e203331-62f7-44e7-acd9-f684c30662de@amd.com>
 <c0ccaef6-44eb-4851-b336-cdb06647e1d2@criteo.com>
 <d16ff01c-4a01-4871-93de-a5c26a352301@amd.com>
 <7b612db6-cec6-4873-8a38-fb4c97192aa2@criteo.com>
 <8f4724f8-e831-12f6-d4e1-4700ea47b2a0@intel.com>
 <4cd04119-8a93-4304-b1ce-88110788c8ef@criteo.com>
Content-Language: en-US
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <4cd04119-8a93-4304-b1ce-88110788c8ef@criteo.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0133.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::18) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|DM4PR12MB7693:EE_
X-MS-Office365-Filtering-Correlation-Id: 8178cede-79a6-4dbb-eed9-08dc450bad69
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JaxK3N7vM5wQahyp1lqXoIyYWzX9bN/+ic3MCYDLzLLD4sStEEv5GYS3EqsaF1ev6PlaPqy4YHZFqmwaJlyspthvZQo/IeP543D7wWj2xSO469dRQiulDPrCX1hIxsHxaOYnpfBX90634DO94z8i/G5sqsGI2BESXmkJ8DSep9t6ukh9vIeNsxyPXk2qxeX0gm0pIxixg+/6JL5/O9l7pnRxHry7/28QfMCC+fI4o2B7/DUDzA9ZrlqXtPGUSrcHytsfz+oWKuvWMFVYsmkyPwRVrSeAMKfVyAw2707L3o4vulYiO5LAMCuyBu5MRlnZ6G7DbrzFllFCwyOf2Kr+pu3Nd0EYh5wJoteOaGF7f3qGPIRLYgev2jm//QJldVbUtYYgibDoFH/zpUrPXj/PZ9aCy/4kq195sx8BTFkffIrG9ccnq1uUGolScfvzf1PSmEPv/IWDvJBXAEs09W1u+8lgGu1X2zJeeJ0k0fIRO9Xp2dZhquYqYebskWJAs/lGMsiNd7NkMaQGxhoqL5liXaxRZYlZKNhe8u7rMCq7H/4Xu2HnzB4kY0LX06ySurJU8eKlr7RxhU+X3KHoFnlEvyjWvMqRhmtk7MZ1Lg+b7s3sD1HgF7gJ6mw4gny68Az+WA71inVm+zGRzjy//TSL4gPXe3XrNFyrpSDUiA5nSL0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(7416005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2hlWWkyZkNzY0ZtaC9UV3o2ZFpNWkpCS3ZkOXNVTnd6eVRHTFkwdkkxZklP?=
 =?utf-8?B?bVFXZ2I3UmU1cVBNbGtwakE3RVlrYzVacUxWQ1FSdmRjVDVXb0RJL2xKTFJr?=
 =?utf-8?B?cms5NDc4QlVibElPVHZxQ2xHUzBYMmZEQTRzY3VBRURlZDZ0TWlLdU1NU0p4?=
 =?utf-8?B?T1Y2a0RZaVpTYjVFK3hDV05MRHdWZWkyQWRxNi9ac3VkbTBBWjZXTFM0NjNK?=
 =?utf-8?B?Ni9Qcmc2dUNUTS9TL2J2YmdPdStkdlVDbC9vWGtaeHlremhZQTFiVVdHVnBI?=
 =?utf-8?B?WXQ1cUxscFV5dC9BSG4yZXN0M0pHbWJuQ3plaW9aM3JiZTAyckg5cWFRVStK?=
 =?utf-8?B?c0wrK1BMN2NsVFlaTThyU2E0aWhQRXNJZjZLSm5WbFFTUXpFQXlld1RGcElH?=
 =?utf-8?B?ZnpJZjljUldxdlhkZGhXY1BRTXdIKzVpQXNERGVIejc3Uy9mTXJDZVNJTGxn?=
 =?utf-8?B?MTBpUXlZRE1ZM0Jib0FjODhxOENxZHdlVkF4U0ZiZk1IQzNsTTA3QUg2MnV3?=
 =?utf-8?B?SlNZU0ZWUXhnV285UDZidzNGdFJGemV6d0ZPMTN6OEYyZEY2b1pSTXhvellO?=
 =?utf-8?B?WTg1QWpOZEo2TjMrUm9RNkJBcU56N3JiY0VQcDcyekNqWFppMXhZRnBqSTJt?=
 =?utf-8?B?ZlYycjBtTVFrMjE3Q054a0VDWk5aZ3JsRXZPY256MTFnOFlRNEFBcE9jYUlV?=
 =?utf-8?B?dnpPL1BDdTJ5YWlBZTVCYm5aKy9LS0tqd0hwN2pqcnpMdm1qT3dnM0ZEd21n?=
 =?utf-8?B?dnVqK2RNRFJvZnBaTCtIcGJqU0VJK1NVc1FqWUNKOWhRa0Z0Mnp0c2grK1JH?=
 =?utf-8?B?U1B3dXlPZDM2Vm8rZEhFcDArOTgxSDBVN0VYblE5NG1wVy9vNDFHVTdydURt?=
 =?utf-8?B?OUNUdVI5Z1FBelBTSHdRWTFEMzhiN3JNQ2xnUHNEWjVVWkUwNjg3eGlLcFMr?=
 =?utf-8?B?dmhYQUw4Y3ZwUzBSRDAyb281dHdDOTFibUtkVFZFR1I5NW13WVl3Sk5FeXZk?=
 =?utf-8?B?TTZhOXYxWXVkRDBVRlI3ZGg2NWt5VktRU25EQXdnKy9NQ2FuWFFOTXY5cUI2?=
 =?utf-8?B?YnpjbHE3YXhmeXMwVkhoVXlqaEtLS1p4UHRSWHRPb1R1OUhkcWd1OHJ3TVNo?=
 =?utf-8?B?c3ZoTHZ2SW95b0x5VmorTklZZVFxRnVTeURUL1IvZ1p1TUJMNHhpM0s2SFNr?=
 =?utf-8?B?cE5YVWlCY2Jyd0gvMUlTaktzZml5V3Z5aSsrTWhhOXFPdFBTZXgyWi9UYW1U?=
 =?utf-8?B?QldmU3Z5ZE5SRTF0eXNJUkROVU9DZHJJZ1N4cFJGWnFVVkNFVURER282dThX?=
 =?utf-8?B?YUNsNllabHJYMUFNNVBWNjhmcUx3YndXcW5yemFDV2MxajE5TWEwSlFHUXo1?=
 =?utf-8?B?akdTQWsyazlWaFpmMGJQQmtOOElKZThTTlpMa2lCd1JMdVVmZkhWM3RWamdo?=
 =?utf-8?B?ZEpPSlBqY0YxZWphNVNpNUlNcUQzVm9yZU9WbmhIVFJybFVDcnd4ZzNEMyt5?=
 =?utf-8?B?NVArMXB6Z1JnYTBmUE5EeTA1bmttRldReEhNdE9hMkR6REEyTHVxa3IxZnB6?=
 =?utf-8?B?dkZXd1AyV0tRZEpOVWNqMzd6enQxbXFNRVp2a1ZMUGEzUkpMVXFPTk43Q3Ex?=
 =?utf-8?B?bW1JdjdlUjJ4SXh1WkxVQ01yUUR3Q08zT1pDeUVzVWU4bEpoWHcwL0E2VVdn?=
 =?utf-8?B?NmFRRktiTUxvbUxMMnFsYlpsT1FDSkNyYm5XTzIvTzZHMm84T0RyMWFscGZx?=
 =?utf-8?B?K0l1U3VxdHRBNmpNbTA5LytJSEIyaDNVKzNwYnZSNGkya3dBZFo1Y2hlekhY?=
 =?utf-8?B?MFU3V2xHekpYamVMOTlmbmo5Rm91SUZya1BQUER5L1lGbVNjcnBkT29qSFgw?=
 =?utf-8?B?NWpOTE4yNnFwWHo2SnRIUk5PQ1hyQWtablJJZTM5VDZkeGhPWFAycXVucGlD?=
 =?utf-8?B?aVdybk0zMlNIby8weGozZS9wUzhVSGpCNHVYNDFYSWczQlA1eTBzRFdlMnN3?=
 =?utf-8?B?V0hodGZLeDY3dFFIUGMwQlhxK1d2QVlaaGZNek9kSGgyMkhZVjN2VmVCbFc2?=
 =?utf-8?B?OStKZndXSmlGa3ltTjZsbXc2Mkk2dHhIaks5Ky93akhOOWhJaEVpRDFGSEhP?=
 =?utf-8?Q?kk1ZR8sEQ1CGI3JXJ113Wv1/a?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8178cede-79a6-4dbb-eed9-08dc450bad69
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2024 16:19:23.7527 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B6Ej2XsGgdzeUt8d9eSeDbnsAI8M9LRdnSjkWTlhiwfAly4tAg1ZHxtJQICQXQJjcGCtKfBVv+EKrjQmRrAqJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB7693
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t0ONWWbqSIvr0UJ118UiRTyVMmp5hWTD23bPXGikePE=;
 b=AwkQfpIi+ps4Kk4DV/NqzGvtyMK91JhWmaK5PS7+DdjlvqM6O2O7tg0PDr7d/9qq2/EyqWzkuxOHY2ZJnxlj2dkcebZXyS2okFkjtDgOcpG0dBARG7WwIEKNNcw5NqVSzxkklfBhIdmWD5SQCrstFEDSi9ha4gaHvwOS8jGgylk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=AwkQfpIi
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/15/2024 2:17 AM, Erwan Velu wrote:
> Caution: This message originated from an External Source. Use proper 
> caution when opening attachments, clicking links, or responding.
> 
> 
> Le 14/03/2024 à 21:31, Tony Nguyen a écrit :
>> [..]
>> Setting the mfs size to max values during init and reset would better;
>> this is what the ice driver does. However, this would take
>> implementing new AdminQ calls. IMO this patch is ok to prevent the
>> issue being reported and allow for ease of backport.
>>
> That was my first intention, ensure that no one else get stuck in the
> same situation.
> 
> It would be nice to backport it to all stable releases once merged.
> 
> Erwan,
> 

I'm okay with this approach. Thanks.

Brett
