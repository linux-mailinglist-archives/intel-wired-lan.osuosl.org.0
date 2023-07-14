Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FE8754064
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jul 2023 19:23:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0C7B614A7;
	Fri, 14 Jul 2023 17:23:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0C7B614A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689355430;
	bh=wBCjki/ZED0/cbJe10fp7d+Vuy50zIZuT8vMREPXRFY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=asZHittLSivLCkHDXBpmCojtIr/fvt7LdFzVNUWX3bB7hgeCgJKBF2Z/BknUX7I7D
	 pfFiKSvh1uBinv9tSfkhbkmCmmFMTfXqGGp9ueq55ODwGE2cxv6LC77FHZZGDyr8qZ
	 9vMZrlVjU6BSP17uxRFozTlskE6og71ersq+VAEYBN+kGvoAmRRllIwp8VibKRVwoT
	 cvWUmfoBEQE3vm9EtvC3POn/7txMz7G6aMAuUtK6PMH6Q9OnO0mkADDgQl9X7sm38G
	 oaeI1HoFe6YtCWT4QyFfmSaz/iamCfiyNgu1KqWvCUSs+6kZpnKFWCRv8GGvWRewed
	 jZE19O0Pijsgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d5kZ_Y8sqYJB; Fri, 14 Jul 2023 17:23:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7164F614A1;
	Fri, 14 Jul 2023 17:23:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7164F614A1
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7DD891BF369
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jul 2023 16:37:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42E2141858
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jul 2023 16:37:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42E2141858
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5_5OHCmrh_ME for <intel-wired-lan@osuosl.org>;
 Fri, 14 Jul 2023 16:37:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F39284016B
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2041.outbound.protection.outlook.com [40.107.244.41])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F39284016B
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jul 2023 16:37:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EwYmbpi5zhvqImCTybebhbgzxoxHGNfBbZJKCSck805lMKuk1cmPaAK4sNgiLCEhrGYShfGlhRM3Mcvpb+sjJE8UrpV1wUBCUb9STv/6T5Ig4Qx5hg60ZAGXk54e/Lzgc7Qq3Xts5uJEI3bU0KmCL+dVEXaw8/+xz7RZIxXiu/nY7HNQJI8USas4Xx2QcJN74OQZwHp5qGCJPS9W/EuOcjyK4eEDx1V+5fIJWwRJWYx7RO39o+E0Hnm0IRWmNy27GlILjgmBlBUjoSpDWsWHjNwIlLQolMrO8zHfbzjTgkgyLDFzIX7irtmLCwR0gyoeDJiWgt7X1mWciM7LVRJ6oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ku8Qd1gTA3G5N8gWOEW0F8cp/PNKfT4eKhgCQDrpHtY=;
 b=H65dCWXG9bG5WN+nsqf11URXEPV8PJJ0m41GARaKWhZylusKB2xP+fOTTggKxwT8cPUuMXew2nJcSV9lF8HPLYFrOxqaLXkT/VR42Z4D5HiDbGp9CwljXl3oiWp7xcSI16C4jQAWu4Ho6HN3tXXGxVDBrxBbhtrrtHKtoQL78TqwlIPJW9UgkMx32UKtShPrEJJMjlMk2yiUFZ9JFyI/CoouStoubUKCUe4iR6LiJ/Pxl/VF6WaL0ql073i1GTm5YB1FeMF1T3AbSN0xSU3OPCvdM7xsFSxbqPmjjECJD/1cjfy/OlTd5RqqTfU5ElVNmn6Q5mJLnrzlwUoF8dBZ8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN0PR12MB6101.namprd12.prod.outlook.com (2603:10b6:208:3cb::10)
 by DS7PR12MB5816.namprd12.prod.outlook.com (2603:10b6:8:78::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.27; Fri, 14 Jul
 2023 16:37:34 +0000
Received: from MN0PR12MB6101.namprd12.prod.outlook.com
 ([fe80::bce4:716a:8303:efcf]) by MN0PR12MB6101.namprd12.prod.outlook.com
 ([fe80::bce4:716a:8303:efcf%4]) with mapi id 15.20.6588.027; Fri, 14 Jul 2023
 16:37:34 +0000
Message-ID: <60b2f5fb-8294-d104-16d8-0acfc70426c1@amd.com>
Date: Fri, 14 Jul 2023 11:37:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
References: <20230705200617.GA72825@bhelgaas>
 <9d1095ab-23e5-3df3-58d6-b2974f87ee72@amd.com>
 <CAAd53p7L27dkzwb_Q9vhENhBye-JTcx2AuCG_YXAgb0F6MG-9w@mail.gmail.com>
Content-Language: en-US
From: Mario Limonciello <mario.limonciello@amd.com>
In-Reply-To: <CAAd53p7L27dkzwb_Q9vhENhBye-JTcx2AuCG_YXAgb0F6MG-9w@mail.gmail.com>
X-ClientProxiedBy: SN4PR0501CA0099.namprd05.prod.outlook.com
 (2603:10b6:803:42::16) To MN0PR12MB6101.namprd12.prod.outlook.com
 (2603:10b6:208:3cb::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR12MB6101:EE_|DS7PR12MB5816:EE_
X-MS-Office365-Filtering-Correlation-Id: 64668a2d-687a-45db-b524-08db8488a029
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W1lv7C73ilaVm7hOMtrWuFye3eDW/4oDFSuhAWQzmZAcFkhM5F3MYc4qWatVd3JB+zc9rSKnf6LW3isBKDF8vMcOA9g2AgqWgixS4arxgBws9Rw+L0AlAONPqQrEtdSJUmT0rcBVlSL4sKgTRkywo0cpzpCzFbDGGgKPx5kM0Tk70HUyxWOAYn+YLK+++dcfnFEe9yH0tobvSjljB9TTHOPLEJ1vbHxmoD48EfCWnTGr5f2j0n85jtJzhZtJfJDxu864Fs5vqwmHGVnKpc2wlO7xM5h7GBf+x4epjbisupbOtxOXBbDl1W81eZTo2byhCdUvhjUdfGo60TElTuBwgJpmdnedJnzFm8X0OZwol9aidQWg+SZdIPzNvg/vOn3yxW51i/nDLYOYko2G0Ois4iHKwhlXRXoQcnDoXhlSAuTJynaLRZHX61pO43iWEGv1a53fHYc4HW+r9po1efWRYMFliHdLr0qS+T1OHvmhsoTMHp+/Iuo9HbJy9QB2Wc0Zsh1qRnw8PHMSwlo4U19QcylqR1aaTx11r0xeaVllgrXChNE2xot3LmwZjm10xcszg27eX0v+juE2OqK1g3LUlLitSjZYTB4pUyJ9JbKQR8DmhSpb6WgaP7oPGp/omkgBAjuMxR2TdSeJrUxr1Hr5oA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR12MB6101.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(376002)(396003)(39860400002)(136003)(366004)(451199021)(38100700002)(86362001)(31696002)(36756003)(31686004)(6512007)(8936002)(6506007)(7416002)(6666004)(54906003)(53546011)(8676002)(41300700001)(44832011)(5660300002)(186003)(2906002)(2616005)(4326008)(83380400001)(316002)(66946007)(966005)(66556008)(478600001)(45080400002)(6916009)(6486002)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnZwVjQ3V2JqaWxDUEYwMjhPd3o3YzRmNkNUMTFKeVBBdkl0OU1scXFFa29q?=
 =?utf-8?B?bXpJUXg2YjlUeEJGZUdWVDhoSy9CZlNWblhPSjVPa1ozSmJkZmFRbS9kVGd0?=
 =?utf-8?B?TThpQUtHMWU3MEtQM3BYbXdoZlFIcXQ5b1oyd2duZUFGenBacWc1Q3d0cnBT?=
 =?utf-8?B?enNJMlRkdXNwZ0NZdmhXdHlSTWFDQkY0cmJCSzA1QlRkNktwYldBeHZzVk93?=
 =?utf-8?B?dURweTUwSHpmTlZQNVB6OVJvT3NxbnhZUjRiV3l5SlhENllHQ1pRK3hJb3Ny?=
 =?utf-8?B?NzNGdGs5YWVSVFpBOHM4enRsNkdCMWxTK1MveUIra3hVYm8vZVpuVVVlbk1t?=
 =?utf-8?B?dUNlQzJWN3NpMjY3VXI2d3NMT05hTGFaREp6d2Z1N3Z5d1BDcUhOR0hLV0lB?=
 =?utf-8?B?VlZCMDFmamhCaXpYMzNEVWhlMktXQm5reVBqUTZYTVI5aEhscTRNNmRqVG5l?=
 =?utf-8?B?RmUxdi9NaDVQd0plRXlxWjg4eUVBM3U5UXhoRFhlYzduWGVJS2FKaVdoVklt?=
 =?utf-8?B?UjNTaDkvUDc3S1VFc2VaWG5Kbi9vN2NsYThoM1BYN3FYMC9Pdjd2NnN3VXE1?=
 =?utf-8?B?WXhpSEJXNWJyTll1NW85bVV5ZFUvODlTVjNYYnorMzlzaDF0L1hxYmdnSDhI?=
 =?utf-8?B?SUllc2FNV0VDSkR4akloSlFWQm5RSkdKQ3Faa0V2R2hLUjEwRFBXYW96cWdS?=
 =?utf-8?B?SzNUdmYzUEJ1ekNPajk2NWE1cW03cGE2dXd1L0NkaXh0aW5rMGZPVnRrSFJR?=
 =?utf-8?B?MGVrRnMyR0FSbUVPa1FCUi9jT1NqcGJsTjdXUGZ6cEU0aTJGTmNNTFl5UTFM?=
 =?utf-8?B?K1JFY0NiY3hjVFZpNjdicXlmZzlFQmFVdzV1c0daWDJ3M3JZL2hLN2VJUmts?=
 =?utf-8?B?Sm4vWFVLdDlycktFTEZKL1UzWXVmU2RVbXpPM0k1RnRkUFJkQzZ4eVZVUkww?=
 =?utf-8?B?RW5RdWVkSmpSc2k1VWlORkhkS1ZoWUxLU0RBQzhJNTdGTXovbUNVcEduS2Jw?=
 =?utf-8?B?b1I5Nmg3QXpEWWJhLy8xQVp4dFNyOEJTdUJjSmFic3BwenFiOUUyTjhER1hO?=
 =?utf-8?B?SWJjcUlzdnNhZ3d4VHFmcW0ydTZ2cUQxWVQwS2JGNUNXTER2Rmc0b3VncnhH?=
 =?utf-8?B?cUJBcXFGR0pDS3RmbWttY3VlTXZ0SVA4T0Q1M1J5eXFUakZTQ0JjcWd1VitT?=
 =?utf-8?B?eWU4TkZTK2RFTUdub1pGL1JWK2ZhblNKeENVeHdUOG9nZy9oeUFwZWQwSTY3?=
 =?utf-8?B?YXMweDhhQnFTdHpvY0p2OXdtY01SRXlyYjBkYVlQUUp6ZmsxRVdUMmI4bzE5?=
 =?utf-8?B?Ym1FZW5zRXJFVWdiUWd6bmU0U0h2UHg5RTV4Z1hwd1IxTEJJTytOUyt2NWhl?=
 =?utf-8?B?QTJYUzRLdkNxZmhtbzJ2UnFhNTViMXpzNDVBN1NCMUhJM1hudEgwdTRSd0py?=
 =?utf-8?B?ZWxUeU1oSXhhWFZ4Y2x1ZVpCOEt3NURrTTIwekFWUE82RUIrU1JRWW9IVGZp?=
 =?utf-8?B?dTlFN1JuUHByRmNtbE5zV0ZUQW1hM3hIbU1zdktwR3lWNWkyYTJ1YzVpU05H?=
 =?utf-8?B?NlpPQzNWS3dkMXpWek5DZ2l3akZqQnYvemMrQlg0TVZMTURTZDJNUkNQQitF?=
 =?utf-8?B?ZzZIeGRwNDdxajYvdHcyZ2lheGJ3a09yOStCZlVtZW4xbWlxVytuSUM4dXBm?=
 =?utf-8?B?enVLTmN1VGhZcWVMc0FSSnZkU1gzME00WHNTTjZTbGJ2aVpHTDd4TVMrNVht?=
 =?utf-8?B?eklPQzhVUG9BMU9STzNOdFdtTU4yK2dCU2tBVjF6Q1h5U2Jta0ZqOGtudE55?=
 =?utf-8?B?YWRjMUdKL2syZGNONktjR3ZoMFl6cXhtTzRVbk5rSVRzV2ppUjM1U0wyY0lK?=
 =?utf-8?B?Uk05dVp3MEdtLzBUV2lteWd4OGpKTk54UEZHSXF1WitGUDZwTXJvYndISDNI?=
 =?utf-8?B?WHhGZ0pIU0xSYTR5TWZJZkNUYUJNMkgrRjRvSzRQNk5BaU9SZ1VidXhCU1VE?=
 =?utf-8?B?N09ZdmlOS2prTHIvSmExcTZqZXdOYlh1VjcvVUZWTmZnbHg2RDhmV3MyWGtV?=
 =?utf-8?B?TFBQdEpLQ3lTVTN0REFYdVBmanZpZGZoWmxMZFV3d24zMVpZOGhOSTdid2ZB?=
 =?utf-8?B?dU10WTBLTFhKM0FSZ05GSEt2QUxDNUJtRjFHc3ZjZGFMbDRxMnF6VFp3ckhM?=
 =?utf-8?B?Y2c9PQ==?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64668a2d-687a-45db-b524-08db8488a029
X-MS-Exchange-CrossTenant-AuthSource: MN0PR12MB6101.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2023 16:37:34.2457 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bO0Pf53z73jBPBLAhn5FDc3rlSRGFsCj4eWPhP3FMGZtZzc7ZQYTNS5icqcfp+loh8CsC0v6xwLraM//jtIxfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB5816
X-Mailman-Approved-At: Fri, 14 Jul 2023 17:23:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ku8Qd1gTA3G5N8gWOEW0F8cp/PNKfT4eKhgCQDrpHtY=;
 b=2vyoidM7ZZdHe4LhbPcRjFlYXouFKQs/v1YiR3xlwXPECsSJkoC+58+th33MEKrgU5Iu2obQ7RB55JfjI0FPYaQDDZOvLbPXDb+lcFr3wjhAhdeGh5ix/6TAl6ehDKUOxoEDKoWG6gov+MAT04FwgiXpBa7QYwMI1h2d0KpIM58=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=2vyoidM7
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
 Bjorn Helgaas <helgaas@kernel.org>, intel-wired-lan@osuosl.org,
 bhelgaas@google.com, Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNy8xNC8yMyAwMzoxNywgS2FpLUhlbmcgRmVuZyB3cm90ZToKPiBPbiBUaHUsIEp1bCA2LCAy
MDIzIGF0IDEyOjA34oCvUE0gTWFyaW8gTGltb25jaWVsbG8KPiA8bWFyaW8ubGltb25jaWVsbG9A
YW1kLmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIDcvNS8yMyAxNTowNiwgQmpvcm4gSGVsZ2FhcyB3cm90
ZToKPj4+IE9uIFdlZCwgSnVuIDI4LCAyMDIzIGF0IDAxOjA5OjQ5UE0gKzA4MDAsIEthaS1IZW5n
IEZlbmcgd3JvdGU6Cj4+Pj4gT24gV2VkLCBKdW4gMjgsIDIwMjMgYXQgNDo1NOKAr0FNIEJqb3Ju
IEhlbGdhYXMgPGhlbGdhYXNAa2VybmVsLm9yZz4gd3JvdGU6Cj4+Pj4+IE9uIFR1ZSwgSnVuIDI3
LCAyMDIzIGF0IDA0OjM1OjI1UE0gKzA4MDAsIEthaS1IZW5nIEZlbmcgd3JvdGU6Cj4+Pj4+PiBP
biBGcmksIEp1biAyMywgMjAyMyBhdCA3OjA24oCvQU0gQmpvcm4gSGVsZ2FhcyA8aGVsZ2Fhc0Br
ZXJuZWwub3JnPiB3cm90ZToKPj4+Pj4+PiBPbiBUdWUsIEp1biAyMCwgMjAyMyBhdCAwMTozNjo1
OVBNIC0wNTAwLCBMaW1vbmNpZWxsbywgTWFyaW8gd3JvdGU6Cj4+Pgo+Pj4+PiBJdCdzIHBlcmZl
Y3RseSBmaW5lIGZvciB0aGUgSVAgdG8gc3VwcG9ydCBQQ0kgZmVhdHVyZXMgdGhhdCBhcmUgbm90
Cj4+Pj4+IGFuZCBjYW4gbm90IGJlIGVuYWJsZWQgaW4gYSBzeXN0ZW0gZGVzaWduLiAgQnV0IEkg
ZXhwZWN0IHRoYXQKPj4+Pj4gc3RyYXBwaW5nIG9yIGZpcm13YXJlIHdvdWxkIGRpc2FibGUgdGhv
c2UgZmVhdHVyZXMgc28gdGhleSBhcmUgbm90Cj4+Pj4+IGFkdmVydGlzZWQgaW4gY29uZmlnIHNw
YWNlLgo+Pj4+Pgo+Pj4+PiBJZiBCSU9TIGxlYXZlcyBmZWF0dXJlcyBkaXNhYmxlZCBiZWNhdXNl
IHRoZXkgY2Fubm90IHdvcmssIGJ1dCBhdCB0aGUKPj4+Pj4gc2FtZSB0aW1lIGxlYXZlcyB0aGVt
IGFkdmVydGlzZWQgaW4gY29uZmlnIHNwYWNlLCBJJ2Qgc2F5IHRoYXQncyBhCj4+Pj4+IEJJT1Mg
ZGVmZWN0LiAgSW4gdGhhdCBjYXNlLCB3ZSBzaG91bGQgaGF2ZSBhIERNSSBxdWlyayBvciBzb21l
dGhpbmcgdG8KPj4+Pj4gd29yayBhcm91bmQgdGhlIGRlZmVjdC4KPj4+Pgo+Pj4+IFRoYXQgbWVh
bnMgbW9zdCBpZiBub3QgYWxsIEJJT1MgYXJlIGRlZmVjdGVkLgo+Pj4+IEJJT1MgdmVuZG9ycyBh
bmQgT0RNIG5ldmVyIGJvdGhlcmVkIChhbmQgcHJvYmFibHkgd2lsbCBub3QpIHRvIGNoYW5nZQo+
Pj4+IHRoZSBjYXBhYmlsaXRpZXMgYWR2ZXJ0aXNlZCBieSBjb25maWcgc3BhY2UgYmVjYXVzZSAi
aXQgYWxyZWFkeSB3b3Jrcwo+Pj4+IHVuZGVyIFdpbmRvd3MiLgo+Pj4KPj4+IFRoaXMgaXMgd2hh
dCBzZWVtcyBzdHJhbmdlIHRvIG1lLiAgQXJlIHlvdSBzYXlpbmcgdGhhdCBXaW5kb3dzIG5ldmVy
Cj4+PiBlbmFibGVzIHRoZXNlIHBvd2VyLXNhdmluZyBmZWF0dXJlcz8gIE9yIHRoYXQgV2luZG93
cyBpbmNsdWRlcyBxdWlya3MKPj4+IGZvciBhbGwgdGhlc2UgYnJva2VuIEJJT1Nlcz8gIE5laXRo
ZXIgaWRlYSBzZWVtcyB2ZXJ5IGNvbnZpbmNpbmcuCj4+Pgo+Pgo+PiBJIHNlZSB5b3VyIHBvaW50
LiAgSSB3YXMgbG9va2luZyB0aHJvdWdoIE1pY3Jvc29mdCBkb2N1bWVudGF0aW9uIGZvcgo+PiBo
aW50cyBhbmQgY2FtZSBhY3Jvc3MgdGhpczoKPj4KPj4gaHR0cHM6Ly9sZWFybi5taWNyb3NvZnQu
Y29tL2VuLXVzL3dpbmRvd3MtaGFyZHdhcmUvY3VzdG9taXplL3Bvd2VyLXNldHRpbmdzL3BjaS1l
eHByZXNzLXNldHRpbmdzLWxpbmstc3RhdGUtcG93ZXItbWFuYWdlbWVudAo+Pgo+PiBUaGV5IGhh
dmUgYSBwb2xpY3kga25vYiB0byBnbG9iYWxseSBzZXQgTDAgb3IgTDEgZm9yIFBDSWUgbGlua3Mu
Cj4+Cj4+IFRoZXkgZG9uJ3QgZXhwbGljaXRseSBzYXkgaXQsIGJ1dCBzdXJlbHkgaXQncyBiYXNl
ZCBvbiB3aGF0IHRoZSBkZXZpY2VzCj4+IGFkdmVydGlzZSBpbiB0aGUgY2FwYWJpbGl0aWVzIHJl
Z2lzdGVycy4KPiAKPiBTbyBlc3NlbnRpYWxseSBpdCBjYW4gYmUgYWNoaWV2ZWQgdmlhIGJvb3Qg
dGltZSBrZXJuZWwgcGFyYW1ldGVyCj4gYW5kL29yIHN5c2ZzIGtub2IuCj4gCj4gVGhlIG1haW4g
cG9pbnQgaXMgT1Mgc2hvdWxkIHN0aWNrIHRvIHRoZSBCSU9TIGRlZmF1bHQsIHdoaWNoIGlzIHRo
ZQo+IG9ubHkgQVNQTSBzZXR0aW5nIHRlc3RlZCBiZWZvcmUgcHV0dGluZyBoYXJkd2FyZSB0byB0
aGUgbWFya2V0LgoKVW5mb3J0dW5hdGVseTsgSSBkb24ndCB0aGluayB5b3UgY2FuIGp1bXAgdG8g
dGhpcyBjb25jbHVzaW9uLgoKQSBiaWcgZGlmZmVyZW5jZSBpbiB0aGUgV2luZG93cyB3b3JsZCB0
byBMaW51eCB3b3JsZCBpcyB0aGF0IE9FTXMgc2hpcCAKd2l0aCBhIGZhY3RvcnkgV2luZG93cyBp
bWFnZSB0aGF0IG1heSBzZXQgcG9saWNpZXMgbGlrZSB0aGlzLiAgT0VNIAoicGxhdGZvcm0iIGRy
aXZlcnMgY2FuIHNldCByZWdpc3RyeSBrZXlzIHRvby4KCkkgdGhpbmsgdGhlIG5leHQgQVNQTSBp
c3N1ZSB0aGF0IGNvbWVzIHVwIHdoYXQgd2UgKGNvbGxlY3RpdmVseSkgbmVlZCB0byAKZG8gaXMg
Y29tcGFyZSBBU1BNIHBvbGljeSBhbmQgUENJIHJlZ2lzdGVycyBmb3I6CjEpIEEgImNsZWFuIiBX
aW5kb3dzIGluc3RhbGwgZnJvbSBNaWNyb3NvZnQgbWVkaWEgYmVmb3JlIGFsbCB0aGUgT0VNIApk
cml2ZXJzIGFyZSBpbnN0YWxsZWQuCjIpIEEgV2luZG93cyBpbnN0YWxsIHRoYXQgdGhlIGRyaXZl
cnMgaGF2ZSBiZWVuIGluc3RhbGxlZC4KMykgQSB1cCB0byBkYXRlIG1haW5saW5lIExpbnV4IGtl
cm5lbC4KCkFjdHVhbGx5IGFzIHRoaXMgdGhyZWFkIHN0YXJ0ZWQgZm9yIGRldGVybWluaW5nIHBv
bGljeSBmb3IgZXh0ZXJuYWwgUENJZSAKZGV2aWNlcywgbWF5YmUgdGhhdCB3b3VsZCBiZSBnb29k
IHRvIGNoZWNrIHdpdGggdGhvc2UuCgo+IAo+IEthaS1IZW5nCj4gCj4+Cj4+Pj4+PiBTbyB0aGUg
bG9naWMgaXMgdG8gaWdub3JlIHRoZSBjYXBhYmlsaXR5IGFuZCB0cnVzdCB0aGUgZGVmYXVsdCBz
ZXQKPj4+Pj4+IGJ5IEJJT1MuCj4+Pj4+Cj4+Pj4+IEkgdGhpbmsgbGltaXRpbmcgQVNQTSBzdXBw
b3J0IHRvIHdoYXRldmVyIEJJT1MgY29uZmlndXJlZCBhdCBib290LXRpbWUKPj4+Pj4gaXMgcHJv
YmxlbWF0aWMuICBJIGRvbid0IHRoaW5rIHdlIGNhbiBhc3N1bWUgdGhhdCBhbGwgcGxhdGZvcm1z
IGhhdmUKPj4+Pj4gZmlybXdhcmUgdGhhdCBjb25maWd1cmVzIEFTUE0gYXMgYWdncmVzc2l2ZWx5
IGFzIHBvc3NpYmxlLCBhbmQKPj4+Pj4gb2J2aW91c2x5IGZpcm13YXJlIHdvbid0IGNvbmZpZ3Vy
ZSBob3QtYWRkZWQgZGV2aWNlcyBhdCBhbGwgKGluCj4+Pj4+IGdlbmVyYWw7IEkga25vdyBBQ1BJ
IF9IUFggY2FuIGRvIHNvbWUgb2YgdGhhdCkuCj4+Pj4KPj4+PiBUb3RhbGx5IGFncmVlLiBJIHdh
cyBub3Qgc3VnZ2VzdGluZyB0byBsaW1pdGluZyB0aGUgc2V0dGluZyBhdCBhbGwuCj4+Pj4gQSBi
b290LXRpbWUgcGFyYW1ldGVyIHRvIGZsaXAgQVNQTSBzZXR0aW5nIGlzIHZlcnkgdXNlZnVsLiBJ
ZiBub25lIGhhcwo+Pj4+IGJlZW4gc2V0LCBkZWZhdWx0IHRvIEJJT1Mgc2V0dGluZy4KPj4+Cj4+
PiBBIGJvb3QtdGltZSBwYXJhbWV0ZXIgZm9yIGRlYnVnZ2luZyBhbmQgd29ya2Fyb3VuZHMgaXMg
ZmluZS4gIElNTywKPj4+IG5lZWRpbmcgYSBib290LXRpbWUgcGFyYW1ldGVyIGluIHRoZSBjb3Vy
c2Ugb2Ygbm9ybWFsIG9wZXJhdGlvbiBpcwo+Pj4gbm90IE9LLgo+Pj4KPj4+IEJqb3JuCj4+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
