Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 278EC756C14
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jul 2023 20:29:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C11CB60EC2;
	Mon, 17 Jul 2023 18:29:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C11CB60EC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689618591;
	bh=IMIE6aa6F42FKG79zzx3QKvthyxUl0vO6WusuPwadR8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KRXjHziXNqzmXWJESXUrGQ9bhu83aAxv9Bitg9YGsGm0idwhOhAzgWPAuJaT2AAIb
	 dt6xzf6GT6gFHeZJWg50Itqbvy3FeUwDMEEiwy6o1FCi5s1TwjWp7k/LOTgB0e9BkP
	 1mEMVxvpTtiAgqoDTbctlFgXHK+u1Ug2NRKDp7R7BzU1Px6VTPEKTtJE29RTUAGKWW
	 8AXALCKhVNrOeGlzlJ59GB6EUurB/xcnRrPKn8t8svUcp5HoWVQI7rIVRsU5ULUoK2
	 SYRRL8xgmUeyAvYQFUhL5X1TKUVrTZr3u//2l5pZu7iWE1cl7PJv8AH4C4OMBqrwiK
	 L70bnI9S4YoyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jy1Vy6aZk68u; Mon, 17 Jul 2023 18:29:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67E1760DE5;
	Mon, 17 Jul 2023 18:29:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67E1760DE5
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 70C761BF338
 for <intel-wired-lan@osuosl.org>; Mon, 17 Jul 2023 16:51:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 339BF81461
 for <intel-wired-lan@osuosl.org>; Mon, 17 Jul 2023 16:51:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 339BF81461
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F21rD02PxK9J for <intel-wired-lan@osuosl.org>;
 Mon, 17 Jul 2023 16:51:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D17FA81456
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2053.outbound.protection.outlook.com [40.107.93.53])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D17FA81456
 for <intel-wired-lan@osuosl.org>; Mon, 17 Jul 2023 16:51:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MFg3VWq8aMtS3hzVnG4eL39oAASGHqQ50qgqctNWa9D9NKO5jcEdIDB4KCFaoneprHoH2W+OVZBCKBv1fICMsrvWpCLNiWIF6INB+ACUVGYTynIPuI0SmeIYK8dcYCRgZyDywUTvTbaF50t2FUxRMQIpqF3faf3KXkYMhb0D8LCw3fHzKebr4eKlEZmzaMKjTN6DTmX6JK/awrf8p4iUXu+WEt2spKqkOSPC/gKVDozq5r+6bVLWYRMWnCAuPmWUtGKobiVNSqt81ldFY1sCYI4QbFP6EaYX5Drmr/YaSoDzjYdLicAyc1g1pEzG41L5lkdqfaFH6fScTHerIfouYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lgfErk+9KAkb4ooO7HiJBpbK3jt5ddPbDs7QbnjBJe8=;
 b=Rk4X7VYsV3o41QsE66sbTbLkugEyNmVpXZW1D5U6SBwxgEcEzQuDza3gleP1mwIEOwNHtk90t7CJlbzz4U47xgTQ1ipE/Ox3+l5ngcw7vGT1Y7m+vKiQFSVnNzb/vHdRwFQ5YxNLvwn5PWxkWATIxKuErxE4Yl+IpdIZ6oEBQRlxjAS1FDFs0RiquCXtK/wdFR/q0s9H57ovLMOuy+fz5CMWa/70ffbETpxI0UHAg9eSfcRdvtPKT7+nIiEpqQZGjgJ3SP+csHlz1Y5moR6M4gQZhslEIc4p+An6vBkZ+T5NThrfVPmzVEJmRg4K1ROiRim+Kb5rdi8xQfQ5k4dANg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN0PR12MB6101.namprd12.prod.outlook.com (2603:10b6:208:3cb::10)
 by MW4PR12MB7334.namprd12.prod.outlook.com (2603:10b6:303:219::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Mon, 17 Jul
 2023 16:51:36 +0000
Received: from MN0PR12MB6101.namprd12.prod.outlook.com
 ([fe80::36f9:ffa7:c770:d146]) by MN0PR12MB6101.namprd12.prod.outlook.com
 ([fe80::36f9:ffa7:c770:d146%7]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 16:51:35 +0000
Message-ID: <dc44cb41-b306-f18a-c9fc-3d956777f722@amd.com>
Date: Mon, 17 Jul 2023 11:51:32 -0500
User-Agent: Mozilla Thunderbird
To: Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Bjorn Helgaas <helgaas@kernel.org>
References: <20230705200617.GA72825@bhelgaas>
 <9d1095ab-23e5-3df3-58d6-b2974f87ee72@amd.com>
 <CAAd53p7L27dkzwb_Q9vhENhBye-JTcx2AuCG_YXAgb0F6MG-9w@mail.gmail.com>
 <60b2f5fb-8294-d104-16d8-0acfc70426c1@amd.com>
 <CAAd53p42jiTCOsRZwEY0jtBejMDs1FbTOBNEknijnVNk3ENxuA@mail.gmail.com>
Content-Language: en-US
From: "Limonciello, Mario" <mario.limonciello@amd.com>
In-Reply-To: <CAAd53p42jiTCOsRZwEY0jtBejMDs1FbTOBNEknijnVNk3ENxuA@mail.gmail.com>
X-ClientProxiedBy: SA9PR11CA0013.namprd11.prod.outlook.com
 (2603:10b6:806:6e::18) To MN0PR12MB6101.namprd12.prod.outlook.com
 (2603:10b6:208:3cb::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR12MB6101:EE_|MW4PR12MB7334:EE_
X-MS-Office365-Filtering-Correlation-Id: 53026471-7475-4e40-94cc-08db86e6148a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DB2NZsW6P1iOJ0es5T1n+E8MDWI2XyeR9Z8RjMD3w2axA5l9HIu9PPcSKbXBEyd1ID0JAM3oX8LO/2TobKO0pBnQICltBiQ3lDg3qH+xUT8y0QCXpQ5e5oYday2HyUuMrjCdSOneBbuAUOKLUmILQUN6SiHagyiavgDlR8c7cglpmk9/jOAoeFBP6TeRP6NlUSnINrGs8if/s19ubtvbkl97nwHPkw0w3xPhmWt74z0K4Sa3h9XQ3keD9it7zm/TR2NRYF3sRJYKrdS6f1MZIWMwcZMIF39ob3xKEQPd18a/r+h/mHsfB7cxNoioPBTFI1OCmPmD0C0JhAC8h0Hm8paB/cSgfs4amPQefvVkgRo8wTKNRom1J/Mg9RdCex2wXUIebg9TJe1th995w9UYVJUhO+Nr1YPBa92t1EwbG/OVxxxZ0GQ0MWmIS08xmx0T3uMm4HdFGhBegdWj+ahzqVZNodiGbAz/AFNOjz0vLJVmq0qStfimdSkGVa15b6oj68+b6QjuaNwhhS8VUpXSHTqhHycg2ZtMqnhhfGMhL/TpcH2XQMeXc8CEl9a9sEbIX7u+2gdmjU2lovZ82aDn9POHfQhfYZCsnxOpApYKMa6JWm3dZoLMKzcF6GVCvqCdC7uxW3GvQpz1wE+wTzj+rQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR12MB6101.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(366004)(396003)(39860400002)(346002)(136003)(451199021)(31686004)(478600001)(6486002)(6666004)(45080400002)(110136005)(54906003)(83380400001)(31696002)(86362001)(2906002)(53546011)(186003)(36756003)(6506007)(6512007)(966005)(2616005)(316002)(26005)(66556008)(38100700002)(66476007)(66946007)(41300700001)(4326008)(8676002)(8936002)(5660300002)(7416002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MENiVTZNNTY5UDUvUC9Eb3ZoWGJaQVJxbG43SlkxTG4rVzg5d2tGQUQ0djNm?=
 =?utf-8?B?b0F2bXljYlVabHdkSGJNMGNnMENSQXBGU0JpaG9HdkFqZU9DK1gwNDM1UWZI?=
 =?utf-8?B?alQ1L1IwZ0NsTlJ0ditRVlRJNURVYm1PcXFCT2Y5anZ1eGhSS3NYR01WcVYy?=
 =?utf-8?B?MjVCeklIMXkzbG5walVueUQxNXlQRURJS1JuSzRiUkpwMmJCWWZybWpJWmhV?=
 =?utf-8?B?UGExVnVqOC9yNCttNXloMUxNcmlUOWJyUnBUMVBHMlUxcUMvNDFKR1JPOWMz?=
 =?utf-8?B?ek5oa0NpcllUS0N4Y000Rm9sV29HbVFYMFJyN0NWVFZBd3E0bE5mSXVMWksz?=
 =?utf-8?B?eTBUTndnK3M5WFRjZ1ZJVWNpcGZOSVJzZ05tb2tVMFFOZmxkZ1NNS0N6dVhw?=
 =?utf-8?B?eG5CVFJPWmxpS0kyRFI2WUhSbFBHTnJGbXBOMXVNcndkc1ZZMml2WUdsam5Y?=
 =?utf-8?B?eUtRN24zMUJUanhzWmJPdUxMVUJHWWxpRDFsb2dVSk9TdEQwVVFQZzNKbXRk?=
 =?utf-8?B?NHlmcCs1Zmk5SEJRTWVNUklyRWlpMmRlYSs5YkV0ZTVZUXpsYUNtZGZSUHQx?=
 =?utf-8?B?QVFmMHJ4bVNSMWxlM0tBQmt1SVF0Q2RRNEVKNFQrVS9hcmZiU05FUVJFYXd1?=
 =?utf-8?B?bktoeXVaM2dndVVraHozY3J1dkp1ZzlkbkRXMUh4ZDhzREVZZnhQT1VMeDJU?=
 =?utf-8?B?Yk1WVnd6WEZxbFZWanFmUWFtVmk0enorMmJyd1FPckt3aVhPMUFSbWIrQnU2?=
 =?utf-8?B?aDFLOSswcTZ1OGluVjM0Q2ZDd2x0TzgyQ2JtMlhxbkI1aUcxZHJTVXZDVndE?=
 =?utf-8?B?Z25kSTdCQzBzL2FLcGVPdi9GeVNtTUJSZDBwaXpqa1JMSjFNb0lkK0ZMZ3M4?=
 =?utf-8?B?RHB3azZGeW5xcDAydENiL3p3K2V6SGVaSW5ER3BZc09VZGN6cU5CS3IrUXp1?=
 =?utf-8?B?dmxoZkIxRXVqU0dzaVpNbzBMVk9DOG91YllJM3JwdWpVQmNBWXZaYlNueGFo?=
 =?utf-8?B?M0hWZ1dhUDlyd0h1NjdLcGc4a3AxRjlSNUNxZFA3MHZZSUJXc0IxSzdZRmVO?=
 =?utf-8?B?V3ZSMEpiUmhNTWVNNE9PMGhhZjc5MjVYUStlVHRIUXhqMGwvNEV2VTVpMWhW?=
 =?utf-8?B?THM1Nk1YN3JlSzhvRUFDdFNuNWIyNE1BU28raGZ3UlFVaCtDVTViNjl1aW9U?=
 =?utf-8?B?WC81TnN6Q2U4ek9ZUGlGZGtMNWxzYllqRVUya0tuMmZESWVZTmJLQ3NUZWEv?=
 =?utf-8?B?NGVtc2V3ekw1bkFqVWJqT3RMcERqSkVpQndsWVhwTjM3MzFUTk9ySXpwQ3Zn?=
 =?utf-8?B?TVJRem9wRmV3dXBObGt3RFNhUVVaaGtkb1p4aVFUcGhhU1FHRVhwSXljVjNT?=
 =?utf-8?B?d0RNUk8reGFhbEFMKytLdkZXSENDZUNZYUtFVFVsbFlBYm02VVdmbGN1Wndt?=
 =?utf-8?B?THNzamdHbnliWXJtQU5tNDFmTzRtdWJ1ZmRuRCtCOEIzdnZGZ2g4S2ZMOWgw?=
 =?utf-8?B?WSs3MXlJVk16R3FuejgwODRTcUZSYzJOdkVpSEVpUmxtdVE3WXZyOVVueWNh?=
 =?utf-8?B?YUd3R3VRRjE3clY3QTFsOFZZSkNoSGdRY3VnRkxaL1RWcXdVSXFlYUdtV2Jl?=
 =?utf-8?B?NU50V0h4WG1Kb2pZMGM2d241NEIzdGFPUjE5Tk0wWXdVcFZPaHhOeEJ3Y1ky?=
 =?utf-8?B?MnhRcHV3OERER01jNHRsOUIwWlV3bkNZS3ExVzA4Vzk2WENNbzl6SHhUQTVa?=
 =?utf-8?B?Q0xDUG52V0VsM01rNnhlaGowdVVhOGhyamJUK0FqTW9TMnAxSHdPMXdQemJK?=
 =?utf-8?B?QVNrNFVGbGJMY1VCY0puWjlOU3Zvb3VhQVMrVHJ2M1hHUzRXLzZhOXJvSndr?=
 =?utf-8?B?UXlqK2NwQ0FHT085M2JTc25XZERHcFo2YmVsVUFsUmtuWGNwNE9FL09HdUpr?=
 =?utf-8?B?TXphQU9rZnZNSGVBMUpoSUhUNEhpT3V4Y0FJU1dSZTEzMmtaMk56YzQ4c1hp?=
 =?utf-8?B?M0hlSXFlKys0YVJzQ2EvNzVMTmlhL2pJbVVnQXdLaUpxVEZYMWR1VXc4c1VS?=
 =?utf-8?B?dnRXQ0UzRWpLcTZlUGZRUGt5c1BvYi9MNFQzTFo3WENkTzBQV3NqVU1YOGVX?=
 =?utf-8?Q?jttqk0ibLLhd2894nFHeORSw6?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53026471-7475-4e40-94cc-08db86e6148a
X-MS-Exchange-CrossTenant-AuthSource: MN0PR12MB6101.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 16:51:35.0896 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m1ZQkg4PjP+88hbwaoyXLuEk5zOVtFUTAt4jefRTjPrxuDAL9g7S/dEeX/qgJRUqiMuuze8gN81ttQvsVkgCoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7334
X-Mailman-Approved-At: Mon, 17 Jul 2023 18:29:45 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lgfErk+9KAkb4ooO7HiJBpbK3jt5ddPbDs7QbnjBJe8=;
 b=fH6MpAhltexfXJaQkxqdv6dtIewEhcdOvgp8GgDGvmp8rYFVNPF3L0HB1tCCV21uHffApSEYb8PR2hSHb+DrBGEm8WBVuVQrxtBW96XCXv80MXjODPEwH99ndI4ej7GNSvIHXH2T6Zh7jFaU/+66GjC9QYi79WrcP4lGaT+HpSg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=fH6MpAhl
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

CgpPbiA3LzE2LzIwMjMgMTA6MzQgUE0sIEthaS1IZW5nIEZlbmcgd3JvdGU6Cj4gT24gU2F0LCBK
dWwgMTUsIDIwMjMgYXQgMTI6MzfigK9BTSBNYXJpbyBMaW1vbmNpZWxsbwo+IDxtYXJpby5saW1v
bmNpZWxsb0BhbWQuY29tPiB3cm90ZToKPj4KPj4gT24gNy8xNC8yMyAwMzoxNywgS2FpLUhlbmcg
RmVuZyB3cm90ZToKPj4+IE9uIFRodSwgSnVsIDYsIDIwMjMgYXQgMTI6MDfigK9QTSBNYXJpbyBM
aW1vbmNpZWxsbwo+Pj4gPG1hcmlvLmxpbW9uY2llbGxvQGFtZC5jb20+IHdyb3RlOgo+Pj4+Cj4+
Pj4gT24gNy81LzIzIDE1OjA2LCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+Pj4+PiBPbiBXZWQsIEp1
biAyOCwgMjAyMyBhdCAwMTowOTo0OVBNICswODAwLCBLYWktSGVuZyBGZW5nIHdyb3RlOgo+Pj4+
Pj4gT24gV2VkLCBKdW4gMjgsIDIwMjMgYXQgNDo1NOKAr0FNIEJqb3JuIEhlbGdhYXMgPGhlbGdh
YXNAa2VybmVsLm9yZz4gd3JvdGU6Cj4+Pj4+Pj4gT24gVHVlLCBKdW4gMjcsIDIwMjMgYXQgMDQ6
MzU6MjVQTSArMDgwMCwgS2FpLUhlbmcgRmVuZyB3cm90ZToKPj4+Pj4+Pj4gT24gRnJpLCBKdW4g
MjMsIDIwMjMgYXQgNzowNuKAr0FNIEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNAa2VybmVsLm9yZz4g
d3JvdGU6Cj4+Pj4+Pj4+PiBPbiBUdWUsIEp1biAyMCwgMjAyMyBhdCAwMTozNjo1OVBNIC0wNTAw
LCBMaW1vbmNpZWxsbywgTWFyaW8gd3JvdGU6Cj4+Pj4+Cj4+Pj4+Pj4gSXQncyBwZXJmZWN0bHkg
ZmluZSBmb3IgdGhlIElQIHRvIHN1cHBvcnQgUENJIGZlYXR1cmVzIHRoYXQgYXJlIG5vdAo+Pj4+
Pj4+IGFuZCBjYW4gbm90IGJlIGVuYWJsZWQgaW4gYSBzeXN0ZW0gZGVzaWduLiAgQnV0IEkgZXhw
ZWN0IHRoYXQKPj4+Pj4+PiBzdHJhcHBpbmcgb3IgZmlybXdhcmUgd291bGQgZGlzYWJsZSB0aG9z
ZSBmZWF0dXJlcyBzbyB0aGV5IGFyZSBub3QKPj4+Pj4+PiBhZHZlcnRpc2VkIGluIGNvbmZpZyBz
cGFjZS4KPj4+Pj4+Pgo+Pj4+Pj4+IElmIEJJT1MgbGVhdmVzIGZlYXR1cmVzIGRpc2FibGVkIGJl
Y2F1c2UgdGhleSBjYW5ub3Qgd29yaywgYnV0IGF0IHRoZQo+Pj4+Pj4+IHNhbWUgdGltZSBsZWF2
ZXMgdGhlbSBhZHZlcnRpc2VkIGluIGNvbmZpZyBzcGFjZSwgSSdkIHNheSB0aGF0J3MgYQo+Pj4+
Pj4+IEJJT1MgZGVmZWN0LiAgSW4gdGhhdCBjYXNlLCB3ZSBzaG91bGQgaGF2ZSBhIERNSSBxdWly
ayBvciBzb21ldGhpbmcgdG8KPj4+Pj4+PiB3b3JrIGFyb3VuZCB0aGUgZGVmZWN0Lgo+Pj4+Pj4K
Pj4+Pj4+IFRoYXQgbWVhbnMgbW9zdCBpZiBub3QgYWxsIEJJT1MgYXJlIGRlZmVjdGVkLgo+Pj4+
Pj4gQklPUyB2ZW5kb3JzIGFuZCBPRE0gbmV2ZXIgYm90aGVyZWQgKGFuZCBwcm9iYWJseSB3aWxs
IG5vdCkgdG8gY2hhbmdlCj4+Pj4+PiB0aGUgY2FwYWJpbGl0aWVzIGFkdmVydGlzZWQgYnkgY29u
ZmlnIHNwYWNlIGJlY2F1c2UgIml0IGFscmVhZHkgd29ya3MKPj4+Pj4+IHVuZGVyIFdpbmRvd3Mi
Lgo+Pj4+Pgo+Pj4+PiBUaGlzIGlzIHdoYXQgc2VlbXMgc3RyYW5nZSB0byBtZS4gIEFyZSB5b3Ug
c2F5aW5nIHRoYXQgV2luZG93cyBuZXZlcgo+Pj4+PiBlbmFibGVzIHRoZXNlIHBvd2VyLXNhdmlu
ZyBmZWF0dXJlcz8gIE9yIHRoYXQgV2luZG93cyBpbmNsdWRlcyBxdWlya3MKPj4+Pj4gZm9yIGFs
bCB0aGVzZSBicm9rZW4gQklPU2VzPyAgTmVpdGhlciBpZGVhIHNlZW1zIHZlcnkgY29udmluY2lu
Zy4KPj4+Pj4KPj4+Pgo+Pj4+IEkgc2VlIHlvdXIgcG9pbnQuICBJIHdhcyBsb29raW5nIHRocm91
Z2ggTWljcm9zb2Z0IGRvY3VtZW50YXRpb24gZm9yCj4+Pj4gaGludHMgYW5kIGNhbWUgYWNyb3Nz
IHRoaXM6Cj4+Pj4KPj4+PiBodHRwczovL2xlYXJuLm1pY3Jvc29mdC5jb20vZW4tdXMvd2luZG93
cy1oYXJkd2FyZS9jdXN0b21pemUvcG93ZXItc2V0dGluZ3MvcGNpLWV4cHJlc3Mtc2V0dGluZ3Mt
bGluay1zdGF0ZS1wb3dlci1tYW5hZ2VtZW50Cj4+Pj4KPj4+PiBUaGV5IGhhdmUgYSBwb2xpY3kg
a25vYiB0byBnbG9iYWxseSBzZXQgTDAgb3IgTDEgZm9yIFBDSWUgbGlua3MuCj4+Pj4KPj4+PiBU
aGV5IGRvbid0IGV4cGxpY2l0bHkgc2F5IGl0LCBidXQgc3VyZWx5IGl0J3MgYmFzZWQgb24gd2hh
dCB0aGUgZGV2aWNlcwo+Pj4+IGFkdmVydGlzZSBpbiB0aGUgY2FwYWJpbGl0aWVzIHJlZ2lzdGVy
cy4KPj4+Cj4+PiBTbyBlc3NlbnRpYWxseSBpdCBjYW4gYmUgYWNoaWV2ZWQgdmlhIGJvb3QgdGlt
ZSBrZXJuZWwgcGFyYW1ldGVyCj4+PiBhbmQvb3Igc3lzZnMga25vYi4KPj4+Cj4+PiBUaGUgbWFp
biBwb2ludCBpcyBPUyBzaG91bGQgc3RpY2sgdG8gdGhlIEJJT1MgZGVmYXVsdCwgd2hpY2ggaXMg
dGhlCj4+PiBvbmx5IEFTUE0gc2V0dGluZyB0ZXN0ZWQgYmVmb3JlIHB1dHRpbmcgaGFyZHdhcmUg
dG8gdGhlIG1hcmtldC4KPj4KPj4gVW5mb3J0dW5hdGVseTsgSSBkb24ndCB0aGluayB5b3UgY2Fu
IGp1bXAgdG8gdGhpcyBjb25jbHVzaW9uLgo+Pgo+PiBBIGJpZyBkaWZmZXJlbmNlIGluIHRoZSBX
aW5kb3dzIHdvcmxkIHRvIExpbnV4IHdvcmxkIGlzIHRoYXQgT0VNcyBzaGlwCj4+IHdpdGggYSBm
YWN0b3J5IFdpbmRvd3MgaW1hZ2UgdGhhdCBtYXkgc2V0IHBvbGljaWVzIGxpa2UgdGhpcy4gIE9F
TQo+PiAicGxhdGZvcm0iIGRyaXZlcnMgY2FuIHNldCByZWdpc3RyeSBrZXlzIHRvby4KPiAKPiBU
aGFua3MuIFRoaXMgaXMgbmV3IHRvIG1lLgo+IAo+Pgo+PiBJIHRoaW5rIHRoZSBuZXh0IEFTUE0g
aXNzdWUgdGhhdCBjb21lcyB1cCB3aGF0IHdlIChjb2xsZWN0aXZlbHkpIG5lZWQgdG8KPj4gZG8g
aXMgY29tcGFyZSBBU1BNIHBvbGljeSBhbmQgUENJIHJlZ2lzdGVycyBmb3I6Cj4+IDEpIEEgImNs
ZWFuIiBXaW5kb3dzIGluc3RhbGwgZnJvbSBNaWNyb3NvZnQgbWVkaWEgYmVmb3JlIGFsbCB0aGUg
T0VNCj4+IGRyaXZlcnMgYXJlIGluc3RhbGxlZC4KPj4gMikgQSBXaW5kb3dzIGluc3RhbGwgdGhh
dCB0aGUgZHJpdmVycyBoYXZlIGJlZW4gaW5zdGFsbGVkLgo+PiAzKSBBIHVwIHRvIGRhdGUgbWFp
bmxpbmUgTGludXgga2VybmVsLgo+Pgo+PiBBY3R1YWxseSBhcyB0aGlzIHRocmVhZCBzdGFydGVk
IGZvciBkZXRlcm1pbmluZyBwb2xpY3kgZm9yIGV4dGVybmFsIFBDSWUKPj4gZGV2aWNlcywgbWF5
YmUgdGhhdCB3b3VsZCBiZSBnb29kIHRvIGNoZWNrIHdpdGggdGhvc2UuCj4gCj4gRGlkIHRoYXQg
YmVmb3JlIHN1Ym1pdHRpbmcgdGhlIHBhdGNoLgo+ICBGcm9tIHZlcnkgbGltaXRlZCBkZXZpY2Vz
IEkgdGVzdGVkLCBBU1BNIGlzIGVuYWJsZWQgZm9yIGV4dGVybmFsCj4gY29ubmVjdGVkIFBDSWUg
ZGV2aWNlIHZpYSBUQlQgcG9ydHMuCj4gCj4gSSB3b25kZXIgaWYgdGhlcmUncyBhbnkgcGFydGlj
dWxhciBtb2RpZmljYXRpb24gc2hvdWxkIGJlIGltcHJvdmVkIGZvcgo+IHRoaXMgcGF0Y2g/Cj4g
CgpLbm93aW5nIHRoaXMgaW5mb3JtYXRpb24gSSBwZXJzb25hbGx5IHRoaW5rIHRoZSBvcmlnaW5h
bCBwYXRjaCB0aGF0IApzdGFydGVkIHRoaXMgdGhyZWFkIG1ha2VzIGEgbG90IG9mIHNlbnNlLgoK
Qmpvcm4sIHdoYXQgYXJlIHlvdXIgdGhvdWdodHM/Cgo+IEthaS1IZW5nCj4gCj4+Cj4+Pgo+Pj4g
S2FpLUhlbmcKPj4+Cj4+Pj4KPj4+Pj4+Pj4gU28gdGhlIGxvZ2ljIGlzIHRvIGlnbm9yZSB0aGUg
Y2FwYWJpbGl0eSBhbmQgdHJ1c3QgdGhlIGRlZmF1bHQgc2V0Cj4+Pj4+Pj4+IGJ5IEJJT1MuCj4+
Pj4+Pj4KPj4+Pj4+PiBJIHRoaW5rIGxpbWl0aW5nIEFTUE0gc3VwcG9ydCB0byB3aGF0ZXZlciBC
SU9TIGNvbmZpZ3VyZWQgYXQgYm9vdC10aW1lCj4+Pj4+Pj4gaXMgcHJvYmxlbWF0aWMuICBJIGRv
bid0IHRoaW5rIHdlIGNhbiBhc3N1bWUgdGhhdCBhbGwgcGxhdGZvcm1zIGhhdmUKPj4+Pj4+PiBm
aXJtd2FyZSB0aGF0IGNvbmZpZ3VyZXMgQVNQTSBhcyBhZ2dyZXNzaXZlbHkgYXMgcG9zc2libGUs
IGFuZAo+Pj4+Pj4+IG9idmlvdXNseSBmaXJtd2FyZSB3b24ndCBjb25maWd1cmUgaG90LWFkZGVk
IGRldmljZXMgYXQgYWxsIChpbgo+Pj4+Pj4+IGdlbmVyYWw7IEkga25vdyBBQ1BJIF9IUFggY2Fu
IGRvIHNvbWUgb2YgdGhhdCkuCj4+Pj4+Pgo+Pj4+Pj4gVG90YWxseSBhZ3JlZS4gSSB3YXMgbm90
IHN1Z2dlc3RpbmcgdG8gbGltaXRpbmcgdGhlIHNldHRpbmcgYXQgYWxsLgo+Pj4+Pj4gQSBib290
LXRpbWUgcGFyYW1ldGVyIHRvIGZsaXAgQVNQTSBzZXR0aW5nIGlzIHZlcnkgdXNlZnVsLiBJZiBu
b25lIGhhcwo+Pj4+Pj4gYmVlbiBzZXQsIGRlZmF1bHQgdG8gQklPUyBzZXR0aW5nLgo+Pj4+Pgo+
Pj4+PiBBIGJvb3QtdGltZSBwYXJhbWV0ZXIgZm9yIGRlYnVnZ2luZyBhbmQgd29ya2Fyb3VuZHMg
aXMgZmluZS4gIElNTywKPj4+Pj4gbmVlZGluZyBhIGJvb3QtdGltZSBwYXJhbWV0ZXIgaW4gdGhl
IGNvdXJzZSBvZiBub3JtYWwgb3BlcmF0aW9uIGlzCj4+Pj4+IG5vdCBPSy4KPj4+Pj4KPj4+Pj4g
Qmpvcm4KPj4+Pgo+PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
