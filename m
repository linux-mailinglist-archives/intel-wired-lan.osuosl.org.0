Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 914CC74A0BB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 17:19:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 348C760FD1;
	Thu,  6 Jul 2023 15:19:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 348C760FD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688656779;
	bh=rDxQtvM6hfT2jPdr/CY8yCjDEbZxjzhn6b2GzHDNudI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KVzAKMMJh+K+z2rzAVvCtgfBgGzojQ2BAJgaQQBUZrmfVGc4XGTsbUiwTEjEDYa1/
	 Dq3kinVWBcmKPdTZN9FJu31fAbnr+7cXMJazuiS1hqRjNKydqE6KAxHyWZEyQCwRgN
	 DKMk3e8KzUNN7AqpSisf1o9+eHN3VvEPTa5QnE5MyJMwtmQ1leJ+5DTr1lnTaQadOX
	 0TcwdIAGLvMEtDnRRw+sgOCSDfoU30lkxkeP6Pz9Tz96SGIH6YofweIBfKQu1Hg53r
	 4E2ssVv4dQ6RMQyC0SCX2RoHh+4Uu/pISQP5yGhA92KU9oFmWmEGttXlYqzhcZx9Ta
	 TujDikzLqNwxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0GEPZUbYrJL5; Thu,  6 Jul 2023 15:19:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0BEF60E71;
	Thu,  6 Jul 2023 15:19:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0BEF60E71
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 21B4E1BF589
 for <intel-wired-lan@osuosl.org>; Thu,  6 Jul 2023 04:07:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B5D01400D7
 for <intel-wired-lan@osuosl.org>; Thu,  6 Jul 2023 04:07:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5D01400D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dWmoQWVDGiM3 for <intel-wired-lan@osuosl.org>;
 Thu,  6 Jul 2023 04:07:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DEB340103
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on2042.outbound.protection.outlook.com [40.107.96.42])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6DEB340103
 for <intel-wired-lan@osuosl.org>; Thu,  6 Jul 2023 04:07:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aGHrWvq8aPGRUzcJFnSXC+G7iNpAYW8lBTrMzTDt/m72arz7U4XkjvHNCp2kGRCxSIFdfBo8kgmA8RF1OsXGuTR9B+WZOYIbAvl/Xy1uZ4Pff2LbaFebQbJfF4z03Xi4ASnBFwG438sq4Jy+aHrWs8Z/jEHgKYd7qlk1rYqTAEmjzGAGaydaP/9cP/JCeY8zbL4jasg2zWThZVES48QgCStF2L7EQud2vv3+GdiB6PkBRrntEzzIrnp9W/ThCLr/wP9gmuTlmeBq8pnXUc74OlwF81N/GuSBa2tVJEnXILWIaGHZHyGzj0HrfntyAejs73aKjcWuRgtxebwDgB9Mtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u0R2E490+xKStoDJwSlE3D4mz3glKGtLmX86yAt7dDI=;
 b=nEuA0m5cAz7ddkL3CG3/7NwrSKJh6HLutQuXb7S7pvp0lohurqInDPh/eHPxhN7uwQoeC3bb1M2mmGLAnv9q5olkxucarEQyerOinRL4fKytsZt8TTTphkqb+XQ86gS6LKzhrB+PkheXzGNe1Te+ENtvCkg/6KNJhSGkb7liwkf+FKugRhUfl4UHi8/m9eZ3aWn71mlQkvhFT/VqMeF2YHrG/UoaFm/KAd7sKSX46k+WCG4XkAdQTqo99usW9QZMjuEsWYUCk5NmgYIpMQ7KAt8VeH17GYzLmgOytdBNYajmRuDTevc72fUHll+NXwhB3vM5WiCJodoDHWI6lvLLGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN0PR12MB6101.namprd12.prod.outlook.com (2603:10b6:208:3cb::10)
 by DS7PR12MB6045.namprd12.prod.outlook.com (2603:10b6:8:86::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.17; Thu, 6 Jul
 2023 04:07:37 +0000
Received: from MN0PR12MB6101.namprd12.prod.outlook.com
 ([fe80::dfcf:f53c:c778:6f70]) by MN0PR12MB6101.namprd12.prod.outlook.com
 ([fe80::dfcf:f53c:c778:6f70%5]) with mapi id 15.20.6565.016; Thu, 6 Jul 2023
 04:07:36 +0000
Message-ID: <9d1095ab-23e5-3df3-58d6-b2974f87ee72@amd.com>
Date: Wed, 5 Jul 2023 23:07:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Bjorn Helgaas <helgaas@kernel.org>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
References: <20230705200617.GA72825@bhelgaas>
From: Mario Limonciello <mario.limonciello@amd.com>
In-Reply-To: <20230705200617.GA72825@bhelgaas>
X-ClientProxiedBy: SA1P222CA0098.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:806:35e::8) To MN0PR12MB6101.namprd12.prod.outlook.com
 (2603:10b6:208:3cb::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR12MB6101:EE_|DS7PR12MB6045:EE_
X-MS-Office365-Filtering-Correlation-Id: 04d3ec36-339e-4267-accc-08db7dd6883d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rutKKdcTxq8eCw9ek2ZochNSjsuVbFUCJrJAmAT+2vmxnSRbHqY0K76xkUQqfCrBO19ZDPxzncwT3VkX0cXdyIz26YdMTLdRxbzeGpT3qro8JivO2groa7qUzgGd9ZjiJS7Z06vM4J3Fl2nNndhkUJCx8+PtL5GFXy4ht/VPl/k6nKpGzNnfzCQJ2XPbmTpCfU6JpfLe5AStpc73qMtdQXhBDSEHZd4lMSca0ipHZaPkEVD2BHD/+udbB/PxitU7uGiRWh5NSuXVUK7LaDdV9Q+71iWjK74uKn6iQgHSFbY83sPAA+vqnttaFqF2gQq5LQfb7Y0JtaDHFbT5O8PwgRug5qxG4UuLJd8oMCWSoysUKunfC10czrXaaEg7z6crz0f1sHVg9VNoC0f5WwUJucomHLZgh+FYkboUfd8HrIMJDfrDIXmCyqtYrMRzUFFb25jKH19KCNRcmRkaxH8PdXiz+/Dd2RaGoKWCEv+k2JK9MvHRhXocDlz9FzeMKmeeWZiC8TELkvhDTAswZTzBNU/x/dE7rkDDcXxjbCOWB/j5t9b1uTodHvFWTOeJ43V6o14bxQ2/6lIF9tAPXOpiL7l/8ic0LUfYzN24FEaA6bQsYoOAQITzfue9nTZi3CD5MZwtOcfvt+V/IUdrex4MJA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR12MB6101.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(136003)(376002)(366004)(396003)(39860400002)(451199021)(41300700001)(2906002)(7416002)(5660300002)(44832011)(8676002)(8936002)(36756003)(31696002)(86362001)(45080400002)(31686004)(2616005)(478600001)(186003)(6506007)(53546011)(6512007)(966005)(6486002)(66476007)(4326008)(66946007)(66556008)(110136005)(316002)(54906003)(38100700002)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cm4xUnVhcExkN0xGZkl0ZTQzSCtzSDR5b1R4dFQ0S1JWZEJlRUtIVzMzeDYw?=
 =?utf-8?B?ZnVUZXU3d2FXMENNRWFIWnlmalJyTm1kdUlaNStGNU9iMnBsZWRZQnVveHJL?=
 =?utf-8?B?L1IyakI3UFJ6UHhEU0sxdUpFK3EwSDk3ZUVlZFpYc1UzTFo4L2t4b2p5VjB1?=
 =?utf-8?B?WEpIMWdia3RZSmlpcDlPVWZ0WXVnZ1RvTlAxYzdSOFBWb0J3M0pyREFDUXA1?=
 =?utf-8?B?WEwxMGJHTDBDcC90bk1YZTRkQlpua0I4dHM3dkZmWGZneDIrZms1T1FWVDk2?=
 =?utf-8?B?Qk5veU1iczhtTCtRRHY2NndaU3dvVXNnWlA0WTRBTFNSb0FDNy8zV3d0aitE?=
 =?utf-8?B?WkZjeUNtK2hTTlJ1SjErai81Q1JQaGJRQ2tLYnZZSDYwN29lZGJnZWhIQURw?=
 =?utf-8?B?UU0xcGE5dDk1WGJqM1NSdmU1WGNLa1Rlemk2bGExeWpJTm8zVTJTbkFRVEZi?=
 =?utf-8?B?dzRmMWdSYkE0a2kxYmNwaENBb2p0eUF3dURybzdyTm1PTjloZEVlK01nRnZp?=
 =?utf-8?B?ZDRIYzRkOHcvYTk1dThGSWZiRGJTaXE4MTcySGdXNE9pMnV6OVphVy9kZHhM?=
 =?utf-8?B?WFVqTWpUbGpDTWV6T0xrWXEza0ZUUWxCNCtvZldsbTFWcitKZ2ZwV1BUVkM1?=
 =?utf-8?B?WjFvTmNwWUUrUjFmbG9sT21VbkluaEVMWDEzTDVUNUNIQjdtcUJkY1YxZy8z?=
 =?utf-8?B?VDd3N0lpVGRza2VxZE1zakZITi9ZRzBleUhiOGpyZjR0M1ZkVzlCOXpsb1RP?=
 =?utf-8?B?czVzYTdFM2R3d09YbW4xcTlOVjAremJNWVYzZTNMcW1jM2RvL25kQkg3SnZw?=
 =?utf-8?B?SnlPRjB1V29mK3N1Rnkwb3MxNmZFSmc4QXBubEkxVGRwY0h2WGM5OU1uNC9n?=
 =?utf-8?B?TnkyQ1lpR0pPR2FtNjhUdTZUaDNDTFlDM3ZVOWtCY01ycjRmb0ZVUUNINExp?=
 =?utf-8?B?ODAxZFhtNjVvZlQzdjNEUXBaaGVYclpqOVhvVlJoVWgvVkEremNld2U5elZK?=
 =?utf-8?B?bEpHV25pbkx1NTF4UDJJcVdYNW4xcTBHZTdkeUY2cnRTemhUamU4cy94dU9k?=
 =?utf-8?B?TnNBdDltYXd2cTB3clE1dHVNbHlZbWhIdXc2Y2hNb0NFaW11L0JyK3BlMGFG?=
 =?utf-8?B?L0h2NlZjaklYV2QrUUNWVW9HV01BbXc0KzloUWZFbzh1a2VNNHdjSS8zWVRy?=
 =?utf-8?B?ZVFyYWNJNVBLTU51QTloN09Oa2d3VWkxcjJ4TGRtNHMvRnJ3OVJ6V0RwdnpO?=
 =?utf-8?B?cHRpUllkcGFZZDVNWFZkaWpuUEZJK2FubVh2MzRmYWxlUUlqQnFEQ1p2blpj?=
 =?utf-8?B?K3R1bHEwWHduakR2ZFI3NUQ5VmtSZFV0NWlDa2RWK0VkRTczUk1kY1RQREpt?=
 =?utf-8?B?VWhzVHo0MDdTVVh2Z3lsSG9CWE5sSk5FMFFadDBKblZYQTFYaWNiT1lKK2hu?=
 =?utf-8?B?UCtwb2NpcHdqdnR4WjIxS3ZmREZPbS9wRTF2c0t0dkFwQmlMTk9SZzlocEww?=
 =?utf-8?B?TXdMUFVTTlFRanFzZEs0RjNhT0IwOEZFQm1WZC8xMHNDT3ZqVUJ1Mnlnb3dh?=
 =?utf-8?B?QThTR1VQang0NWlBODc3QXltS0FDMFhjUkFHZG1zcDhKZjJTUGd0VnIvVFVN?=
 =?utf-8?B?Vy9kdE92ZENuN1Y5cGx3OFAxSGNWbURIMm1xNVhQelZKZVNNdEkvc21zQnZw?=
 =?utf-8?B?TklGRmVOelRTSEZNRTgzbmowTmtmam5yUncrdHFMT0FJVWVjWmZLTThIOXVq?=
 =?utf-8?B?ajRuNzMzQTloMUhqQ1VCUnQwYVZaR2NHbUJTeC96cDlMK1M5SXJjQ1lVekhx?=
 =?utf-8?B?b293Z2VyVjRmWnA4eENva09TUmwxY0VoWGFnZzBtYUVVRk5rdTc0NUUxK21x?=
 =?utf-8?B?L0w5Ym1wY28yQlptMFVaUER6cXUwL2F6TzlGTU5zZnUvR25NYWE2VzdyZjJU?=
 =?utf-8?B?ZVVyd3pjNERvNDg4eVpoZkxZUWxBVnI4WHFSS1A5d2g5S2Z4aWJLbXlZVDdr?=
 =?utf-8?B?NXo0RERVcWpLelJRMDdBVFZpd3JwZmxhZnl3T3RITS9GbXFleVBkWmh0ekFO?=
 =?utf-8?B?enRKMWJXeVJIMkIrWWpuellxMXFjMFhSMy9wNVRHR25XcUlnbVlHcWkvWWNu?=
 =?utf-8?B?YWUzdW9nU2s2ZlhGclRja2NEU3o5UktSTWRrdmZ3QjBhdVlPeUpNS0dQWGZL?=
 =?utf-8?B?TVE9PQ==?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04d3ec36-339e-4267-accc-08db7dd6883d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR12MB6101.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2023 04:07:36.6923 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fWXceW1yqZs3t43jzJtUG6uA0LuCS+zztMP+q6Ex97oALaERmC8mz2w21N2G1Jss4PIf95bYK8qKNzwKpbicbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB6045
X-Mailman-Approved-At: Thu, 06 Jul 2023 15:19:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u0R2E490+xKStoDJwSlE3D4mz3glKGtLmX86yAt7dDI=;
 b=b0krs4+iIKWh5W/ybFONOUH60HdUVkENi4qZ7WTZZtaRatUIAQnS23HvBKYzOt5fcT4z+iotgxIS2DMnxAHw8IYB1i+lRhvYTRoUmgUmCiRWu8ZsxJpMTA2VsENxFS0zO9Nq0Vh0WgvxQmeckQvEg1b9CIWqTPHF8IdOT4/fA70=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=b0krs4+i
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH] PCI/ASPM: Enable ASPM on external
 PCIe devices
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
Cc: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
 linux-pci@vger.kernel.org, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 linux-kernel@vger.kernel.org, Vidya Sagar <vidyas@nvidia.com>,
 Michael Bottini <michael.a.bottini@linux.intel.com>,
 intel-wired-lan@osuosl.org, bhelgaas@google.com,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNy81LzIzIDE1OjA2LCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+IE9uIFdlZCwgSnVuIDI4LCAy
MDIzIGF0IDAxOjA5OjQ5UE0gKzA4MDAsIEthaS1IZW5nIEZlbmcgd3JvdGU6Cj4+IE9uIFdlZCwg
SnVuIDI4LCAyMDIzIGF0IDQ6NTTigK9BTSBCam9ybiBIZWxnYWFzIDxoZWxnYWFzQGtlcm5lbC5v
cmc+IHdyb3RlOgo+Pj4gT24gVHVlLCBKdW4gMjcsIDIwMjMgYXQgMDQ6MzU6MjVQTSArMDgwMCwg
S2FpLUhlbmcgRmVuZyB3cm90ZToKPj4+PiBPbiBGcmksIEp1biAyMywgMjAyMyBhdCA3OjA24oCv
QU0gQmpvcm4gSGVsZ2FhcyA8aGVsZ2Fhc0BrZXJuZWwub3JnPiB3cm90ZToKPj4+Pj4gT24gVHVl
LCBKdW4gMjAsIDIwMjMgYXQgMDE6MzY6NTlQTSAtMDUwMCwgTGltb25jaWVsbG8sIE1hcmlvIHdy
b3RlOgo+IAo+Pj4gSXQncyBwZXJmZWN0bHkgZmluZSBmb3IgdGhlIElQIHRvIHN1cHBvcnQgUENJ
IGZlYXR1cmVzIHRoYXQgYXJlIG5vdAo+Pj4gYW5kIGNhbiBub3QgYmUgZW5hYmxlZCBpbiBhIHN5
c3RlbSBkZXNpZ24uICBCdXQgSSBleHBlY3QgdGhhdAo+Pj4gc3RyYXBwaW5nIG9yIGZpcm13YXJl
IHdvdWxkIGRpc2FibGUgdGhvc2UgZmVhdHVyZXMgc28gdGhleSBhcmUgbm90Cj4+PiBhZHZlcnRp
c2VkIGluIGNvbmZpZyBzcGFjZS4KPj4+Cj4+PiBJZiBCSU9TIGxlYXZlcyBmZWF0dXJlcyBkaXNh
YmxlZCBiZWNhdXNlIHRoZXkgY2Fubm90IHdvcmssIGJ1dCBhdCB0aGUKPj4+IHNhbWUgdGltZSBs
ZWF2ZXMgdGhlbSBhZHZlcnRpc2VkIGluIGNvbmZpZyBzcGFjZSwgSSdkIHNheSB0aGF0J3MgYQo+
Pj4gQklPUyBkZWZlY3QuICBJbiB0aGF0IGNhc2UsIHdlIHNob3VsZCBoYXZlIGEgRE1JIHF1aXJr
IG9yIHNvbWV0aGluZyB0bwo+Pj4gd29yayBhcm91bmQgdGhlIGRlZmVjdC4KPj4KPj4gVGhhdCBt
ZWFucyBtb3N0IGlmIG5vdCBhbGwgQklPUyBhcmUgZGVmZWN0ZWQuCj4+IEJJT1MgdmVuZG9ycyBh
bmQgT0RNIG5ldmVyIGJvdGhlcmVkIChhbmQgcHJvYmFibHkgd2lsbCBub3QpIHRvIGNoYW5nZQo+
PiB0aGUgY2FwYWJpbGl0aWVzIGFkdmVydGlzZWQgYnkgY29uZmlnIHNwYWNlIGJlY2F1c2UgIml0
IGFscmVhZHkgd29ya3MKPj4gdW5kZXIgV2luZG93cyIuCj4gCj4gVGhpcyBpcyB3aGF0IHNlZW1z
IHN0cmFuZ2UgdG8gbWUuICBBcmUgeW91IHNheWluZyB0aGF0IFdpbmRvd3MgbmV2ZXIKPiBlbmFi
bGVzIHRoZXNlIHBvd2VyLXNhdmluZyBmZWF0dXJlcz8gIE9yIHRoYXQgV2luZG93cyBpbmNsdWRl
cyBxdWlya3MKPiBmb3IgYWxsIHRoZXNlIGJyb2tlbiBCSU9TZXM/ICBOZWl0aGVyIGlkZWEgc2Vl
bXMgdmVyeSBjb252aW5jaW5nLgo+IAoKSSBzZWUgeW91ciBwb2ludC4gIEkgd2FzIGxvb2tpbmcg
dGhyb3VnaCBNaWNyb3NvZnQgZG9jdW1lbnRhdGlvbiBmb3IgCmhpbnRzIGFuZCBjYW1lIGFjcm9z
cyB0aGlzOgoKaHR0cHM6Ly9sZWFybi5taWNyb3NvZnQuY29tL2VuLXVzL3dpbmRvd3MtaGFyZHdh
cmUvY3VzdG9taXplL3Bvd2VyLXNldHRpbmdzL3BjaS1leHByZXNzLXNldHRpbmdzLWxpbmstc3Rh
dGUtcG93ZXItbWFuYWdlbWVudAoKVGhleSBoYXZlIGEgcG9saWN5IGtub2IgdG8gZ2xvYmFsbHkg
c2V0IEwwIG9yIEwxIGZvciBQQ0llIGxpbmtzLgoKVGhleSBkb24ndCBleHBsaWNpdGx5IHNheSBp
dCwgYnV0IHN1cmVseSBpdCdzIGJhc2VkIG9uIHdoYXQgdGhlIGRldmljZXMgCmFkdmVydGlzZSBp
biB0aGUgY2FwYWJpbGl0aWVzIHJlZ2lzdGVycy4KCj4+Pj4gU28gdGhlIGxvZ2ljIGlzIHRvIGln
bm9yZSB0aGUgY2FwYWJpbGl0eSBhbmQgdHJ1c3QgdGhlIGRlZmF1bHQgc2V0Cj4+Pj4gYnkgQklP
Uy4KPj4+Cj4+PiBJIHRoaW5rIGxpbWl0aW5nIEFTUE0gc3VwcG9ydCB0byB3aGF0ZXZlciBCSU9T
IGNvbmZpZ3VyZWQgYXQgYm9vdC10aW1lCj4+PiBpcyBwcm9ibGVtYXRpYy4gIEkgZG9uJ3QgdGhp
bmsgd2UgY2FuIGFzc3VtZSB0aGF0IGFsbCBwbGF0Zm9ybXMgaGF2ZQo+Pj4gZmlybXdhcmUgdGhh
dCBjb25maWd1cmVzIEFTUE0gYXMgYWdncmVzc2l2ZWx5IGFzIHBvc3NpYmxlLCBhbmQKPj4+IG9i
dmlvdXNseSBmaXJtd2FyZSB3b24ndCBjb25maWd1cmUgaG90LWFkZGVkIGRldmljZXMgYXQgYWxs
IChpbgo+Pj4gZ2VuZXJhbDsgSSBrbm93IEFDUEkgX0hQWCBjYW4gZG8gc29tZSBvZiB0aGF0KS4K
Pj4KPj4gVG90YWxseSBhZ3JlZS4gSSB3YXMgbm90IHN1Z2dlc3RpbmcgdG8gbGltaXRpbmcgdGhl
IHNldHRpbmcgYXQgYWxsLgo+PiBBIGJvb3QtdGltZSBwYXJhbWV0ZXIgdG8gZmxpcCBBU1BNIHNl
dHRpbmcgaXMgdmVyeSB1c2VmdWwuIElmIG5vbmUgaGFzCj4+IGJlZW4gc2V0LCBkZWZhdWx0IHRv
IEJJT1Mgc2V0dGluZy4KPiAKPiBBIGJvb3QtdGltZSBwYXJhbWV0ZXIgZm9yIGRlYnVnZ2luZyBh
bmQgd29ya2Fyb3VuZHMgaXMgZmluZS4gIElNTywKPiBuZWVkaW5nIGEgYm9vdC10aW1lIHBhcmFt
ZXRlciBpbiB0aGUgY291cnNlIG9mIG5vcm1hbCBvcGVyYXRpb24gaXMKPiBub3QgT0suCj4gCj4g
Qmpvcm4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
