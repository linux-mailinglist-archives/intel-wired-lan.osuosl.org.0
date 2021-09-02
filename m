Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BF83FEC22
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Sep 2021 12:29:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 071DF40482;
	Thu,  2 Sep 2021 10:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BDjoHurY7RFm; Thu,  2 Sep 2021 10:29:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 489F440459;
	Thu,  2 Sep 2021 10:29:00 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C87451BF276
 for <intel-wired-lan@osuosl.org>; Thu,  2 Sep 2021 10:28:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A8AA580C2D
 for <intel-wired-lan@osuosl.org>; Thu,  2 Sep 2021 10:28:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TT-KLjDVq1If for <intel-wired-lan@osuosl.org>;
 Thu,  2 Sep 2021 10:28:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C16680EEB
 for <intel-wired-lan@osuosl.org>; Thu,  2 Sep 2021 10:28:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="219074615"
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="219074615"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 03:28:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="499716845"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 02 Sep 2021 03:28:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 03:28:48 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 03:28:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 2 Sep 2021 03:28:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 2 Sep 2021 03:28:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FJQKHGe+aatPEG8vQHv72fwQ7yrG3vDVv8INvwvBV/TGC8fOJCgY0Ehysm4iy8bwtJPeUcwGJoPZY7Mq3W1PZBBA1eusRplV+YSUerdwRswLDGnaTpbtIQszvl2y+vQYNLmxi4gO6KZqIpeXfXWbLrce32emHSWazJewFZdSeAbXnzAM0MrOVw56UXTOFEcC80jyk7NVOD47Pxi19V0S6YVJTFykI998YwAB1OekFcG0SyNqcQZ4H5SD3zfzVkajA21t3Zo2R35PcQ5/xMiZ1F0lo9bNAkjVcORJ3Abq6zl7dnFBP7PKpowMuOP62Finz/16Mh3+06uBKXqmUGVcBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=cUhPZsrg4hsyVneilZN8nCktzC5Yyhf/rAvIluKUqrw=;
 b=COJIuTUxEantmlp4QvoKtOOxDTzHPU3y6iwtv1vpp/czzuAL6Q60wJG1dpsfCFpTievcmnoQzkO0bc2O9onw9s9Z6/b9KPPfUbdVJN1z0Z6aJ/OUAERP5vds5rUuXhlUOWqFSI3G8VuejLONtYkKDmktc8nhhezKJdmZBc3OzfejunZg26ZbeKuiRyfR1+ZaghjZpkMwAdlAG0zKxmzq9TSo0I1mIGRdbvhktSgKCpDGTAmmVbwKuRX8XecI0gNBYNxtC+EeRDrfSzVtPPhhDQN8lemdoswLxUJjLYjmnw9CzMCvf0+iQoU+WJEk5b+IWnlY0tPcvVxykg3M9bLTFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cUhPZsrg4hsyVneilZN8nCktzC5Yyhf/rAvIluKUqrw=;
 b=g9COFhhuskrI3ltmtii9vfwX1PLfHLYFu5QxL7+QWLxe3dXGJOflqu1z9Fpriz43hxIZtGvbGZ0W7+IgwZ27ZZVu+ln68ZGSXYea0kkChvCMXjwrbjUZywFXQM6Xax27gVhjNG1nB89ND+74AcwRy7PQDh+7JMNbSoVpHuWRS3A=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:6e::10)
 by CO1PR11MB5123.namprd11.prod.outlook.com (2603:10b6:303:94::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19; Thu, 2 Sep
 2021 10:28:43 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::fd4e:d9a2:d2b2:df5f]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::fd4e:d9a2:d2b2:df5f%4]) with mapi id 15.20.4436.029; Thu, 2 Sep 2021
 10:28:43 +0000
To: Marco Witte <m.witte@neusta.de>, <intel-wired-lan@osuosl.org>
References: <0c8eb89c-4a55-d977-312f-6856ea5b59ba@neusta.de>
From: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <f3cc2e12-d717-4de1-160c-062b4de988e3@intel.com>
Date: Thu, 2 Sep 2021 13:28:36 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
In-Reply-To: <0c8eb89c-4a55-d977-312f-6856ea5b59ba@neusta.de>
Content-Language: en-US
X-ClientProxiedBy: PR0P264CA0061.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1d::25) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:6e::10)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.168] (84.108.64.141) by
 PR0P264CA0061.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1d::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.17 via Frontend Transport; Thu, 2 Sep 2021 10:28:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9dfea73e-f359-48a6-439b-08d96dfc706b
X-MS-TrafficTypeDiagnostic: CO1PR11MB5123:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO1PR11MB51237D3C8220D2DB5A583DCA97CE9@CO1PR11MB5123.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DKo0kJpRfNHwuimgI/V8LQQYOcpzDEAvArUJy37US4ZEkJ8dGIVUiiK/cHJTLCEzUhgCHCDS0VXD/xv0hFVdeNLgIeqUZeTh0pOX76f3gGSRIOLtZQdi5KimhRQUTvhJh22snDgkImCRhF7ReFNbK15SMgOlzTTPThfjByZxfMUY3b9Cly2JpILBO7RXFcgNMmrLZeVEb4JtFv8RZUXZToERM8YEtVbvqNOfHZNU8uoBKsPiiHC3j4p5pS8ua5C6fjZCVW5G31C4K4rx4hdrodYiJ1nHCin1Un0c3nM30Y67kXN7NhEBcNFCOPr3pJHxOVQohacaBHf2KH3NcRcISlFcKGnOGuSCYTJsz6TKz+hV9WszQzC4vTHp2DtctJCOvDFAVilRmt1RVEgUHr3Kj6AeskhK39OWCpCEdgGr+Ki0ZH047gPOvCTPH88p3PKExhLUEYeVlECJPNo+HsAvbyEInTtgH5MX3ZgPMEEBRMZzYHQQH93GsUPPdklpUW1G/BifzDOjmYg4/qVLcA9ANMxBLa8/dJZRSIDefY+FL7GTNvdCe1ZrnKNfLDo4ZEqsoNLu4Dz8KIOB5ujqxjUz65SmUiIp8lVEewLczLKzzz4SjVCMR2g5gbeA+VMD0J4FWGO/GouuN1rQo9AqEM5LF/Uu8jpyXM8B5rUW1WxfS4F4jKvui2qvlTG0jalxmxVzRuVIm5d8ZQ67HxDxKAHY3Pwb6C6VXINF1tO/b9V4nqcj7ZljVE8sasExmtLvzEYFjs0NFMZsAHXx9ZLMsu8w4xrxhsa1Xnswn9OXZ6wgrS4CaDP0+FI6SoLeifCLIJey0sDubR3Na6M5nqaY6mN0+T4rblQd8KbCWXZ38GpdalA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(6486002)(5660300002)(66556008)(66476007)(8676002)(8936002)(66946007)(966005)(4326008)(86362001)(107886003)(31696002)(36756003)(508600001)(2906002)(54906003)(2616005)(956004)(6666004)(38100700002)(16576012)(316002)(44832011)(31686004)(26005)(186003)(53546011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SFh6SCtsQ3o2RXpCRDd3Z2pESHIzL0NkMlhUUWU1V1NRRGlvRFkvK3N2K3I3?=
 =?utf-8?B?WU43eHdxNnkxMzY5RGZLSHlqZXoxUFhKWHEyU0JpcjJxRGlqZWZQNE9Jb3Rr?=
 =?utf-8?B?bkU2d1RYWnI2cFp1UnNjNGpkS3NLRW9ybTZkOFUyeGdWdFArRjIyZ0ZqTzFX?=
 =?utf-8?B?N0E0WVEyRXp2ZHMyY05uMWFVOUc3WG1yaFRKUlE4dGV5emE4VmVSNTUzeW5v?=
 =?utf-8?B?YXVwT2l4WkNzYkZ6ZkZnMXFjNDJaV3phbzVTZ3RmSnNJcEh2RzFaZm92TzZo?=
 =?utf-8?B?RmhRZ2EzYzZMZkZaSEtRbm5ob2lWODU3UzZITmZBNll4L2ZQbjJiR2xsZmhN?=
 =?utf-8?B?SGJKZFF0cXVrYVpiZzJIS0Z6OTNzSWd1SkZsWmVwRWhCbnp4a25sNVpCTnAr?=
 =?utf-8?B?TXgwaFBRVGhJT2E4MXExWnRndG9Rd2pHdU1FVGlQWGswRDFNUU96SWNUclp5?=
 =?utf-8?B?T2g5Z2tUMTVVMGNkSm1SSmdMWjg4YkRXMjQrbmthOHdCTldNMGpJU215Rysy?=
 =?utf-8?B?SXB4eWQwQTVjdkx3N0F2dmZFdHEzTUpXZjdZNUh6SXVWazBqcmFVbFhOaDda?=
 =?utf-8?B?Y0V1Snd5Z3R5Mytxd3BzVnpoOG9pUURTU2pwZzB1SWNsT21pNWcrQVlhckZR?=
 =?utf-8?B?YkxMNW5uODVlMTQwMXhkWXNhbHJ2OGRXZjRIZ0w0MHVaTTRyR0lOTENkbDNi?=
 =?utf-8?B?STZqa2liQWRqKzJyMzVLYzhtWGw1OURrL2Y1QjF4bTg3ZWt3VEYrd3FjU2ZV?=
 =?utf-8?B?dE9hQXN1dnl2QVZaSU9QaUNodlZ0K1V0Q1l2M3Q3UTcwUGdHWFEvcE9lNjlr?=
 =?utf-8?B?TmJoL0N2MzV0R3FJbDdTQXUrWG96L0c3MHRnMGk3ZDlzUEdnOUh5MlVreHlK?=
 =?utf-8?B?Yk1iV2dsZ3lwUEU3a3BLOExpMzNEeGpkdk5tOGx6dkxBMENWTTB5Z0lSYTNW?=
 =?utf-8?B?c3FaZ0ljUmRYU1Faa05OOWVrYTI0MW1VTHdRekNSM2lVa1RNQTN6RzBFdUFI?=
 =?utf-8?B?K2tKa3krLzNUZHVack9PbFkxR3hiTU5FTDNDU1Vxa0FlVjNTOWNpVlB6TGFB?=
 =?utf-8?B?emtFWldrQ2R6bytpclZESkViN3NYN1hkNlFLek9QRi80OHdIdlQvVXpNMmtl?=
 =?utf-8?B?dy83MUdsWW9LRGV0KzB0NFM0bWh1MzMzQXhYaVNzb0pXakYweExkbGVReG5R?=
 =?utf-8?B?SCtDeElZTmxId1ZQSWUwVnNhb2Uwa21YV3RTRlVQMUN0Ulp5blJWVWV0RnRO?=
 =?utf-8?B?ajRMY0RmYzVYaGd3ZHYwN1duMEFIR2ZEcWZSd3ZmZnVnTzQ0VWJCY0VtYXdS?=
 =?utf-8?B?VWpId1FnaFlFbTVIRldibEZsWjczZ2hDQTdhQ1Izd2t2RDBZc1ZSc1QyR0dW?=
 =?utf-8?B?MHZGSG1BUUJaQSs4UWdCQXRFMWc4MG1wYmM3c1FNQTBKVGl1akUzMzdaOWxa?=
 =?utf-8?B?V1dEN3JleG12bDYwSmVDRHlpeVBxbHhQQy9tQjFvdFJyUmNmSUEyTU9td1J1?=
 =?utf-8?B?TStxV2l0OU1XWHpDUi9rVjVPRGptWFlLM3BqWC91SlAzbW03Y3hGcG5pdmZG?=
 =?utf-8?B?Z2RFL2pDcmN2QmYxVDg3amVQZTJnNWkxZmJKUFgrbTJYcHF2ZEczb1ZpMm42?=
 =?utf-8?B?UG9nVUxJTndJcVVpenk0Qlc5SWdpLytpRlltRk5UbDRZR1NOOUYvWTlPd3hw?=
 =?utf-8?B?bi9Fa3E3YkY1ZzJ4bTUwNlB0THgvbGVPZVBmdjlUMDZqWC9pUEZubUlxMG1y?=
 =?utf-8?Q?+vGyHJiAETyjWAdP/m95f69yrxaBu9GWPInPSN9?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dfea73e-f359-48a6-439b-08d96dfc706b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2021 10:28:43.6781 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1xwiMf3vnW5M0etLth0AcJfaXuxHloiSH0o0R01RYy0nBblp+LJ36FmTV7Jj6T/MAY9FJ1R7nGtYWjLKNiYlvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5123
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] Slow e1000e Network Interface with different
 kernel
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
Cc: kai.heng.feng@canonical.com, "Avivi, Amir" <amir.avivi@intel.com>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/2/2021 13:01, Marco Witte wrote:
> Scenario: Plugin into network, establishes link and IP is assigned.
> scp from another machine in the same subnet gives approx. 1kb/sec.
> Cross check with an usb 3 dock with integrated network adapter. Full speed.
> 
> Kai Heng-Feng build a patch for tgp https://lkml.org/lkml/2021/7/12/2927
> His deb kernel packages with that patch based on 5.10.x kernel ran full 
> throttle on this machine.
> However this was the only successfull attempt to get full speed.
> 
> The Kernel Mainline 5.13. contains visual similar patches, but they 
> still have the slow down on the same machine.
> Some people suspect pcie changes at that point.
> 
> Some curious fact I found out while testing: I booted up a manjaro 
> (current) usb stick and had full speed on the e1000e. Then I installed 
> manjaro from that stick to the harddrive. Booted that and it didn't 
> perform well.
> 
> As this is my first rodeo on this mailinglist, I need to reference some 
> information:
> 
> Referencing: https://bugzilla.kernel.org/show_bug.cgi?id=213377
> Here is the launchpad: 
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1927925
> e1000e Sourceforge bugreport(s): https://sourceforge.net/p/e1000/bugs/681/
> This is still an issue with all current mainline kernels. Last test was 
> 5.14 RC7
> 
> I can provide any output you need.
> 
Marco,
Run echo on > /sys/bus/pci/devices/0000\:00\:16.0/power/control command 
on your machine.
Please, let us know the result.

> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
